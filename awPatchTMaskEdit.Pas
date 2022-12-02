(************************************************************************
* Project awLib - library for Delphi from Astrasoft company             *
* Copyright (c) AstraSoft                                               *
*************************************************************************
  Модуль:   awPatchTMaskEdit.Pas
  Описание: "Патчит" модуль MaskUtils для исправления ошибки приводящей
            к невозможности отмены специального назначения символов '/'
            и ':' в маске.
  Автор:    Сысоев А.П.
  Версия:   aw_History.txt
26.07.05 SAP 002 - модуль сделан независимым от awLib и проверен под D7 и D9.
28.07.04 SAP 001 - день рождения (только под D6).
************************************************************************)
unit awPatchTMaskEdit;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// В стандартном компоненте tMaskEdit в Delphi, имеется ошибка, из-за         //
// которой в шаблоне невозможно использование литералов '/' и ':' - они       //
// ВСЕГДА заменяются на TimeSeparator и DateSeparator соответственно.         //
//                                                                            //
// Это вызванно отсутствием разницы обработки mcLiteral, mcIntlLiteral в      //
// процедурах MaskDoFormatText и PadInputLiterals модуля MaskUtils.           //
//                                                                            //
// Для исправления этой ошибки, этот модуль, при инициализации подменяет      //
// процедуры MaskDoFormatText и PadInputLiterals в модуле MaskUtils на        //
// собственные, полученные копированием исходных, с внесением необходимых     //
// исправлений.                                                               //
//                                                                            //
// Подмена корректно выполняется как при компиляции проекта с использованием  //
// пакетов, так и без их использования.                                       //
//                                                                            //
// Для использования, достаточно в любом из модулей проекта, или в самом      //
// проекте (.dpr), добавить в список используемых модулей (uses) этот модуль. //
//                                                                            //
// Однако, на поведение tMaskEdit во время дизайна этот модуль повлиять не    //
// может. Разве что подкомпоновать его в какой нибудь design-time пакет.      //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////


{$IfNDef VER170}{$IfNDef VER150}{$IfNDef VER140}
{################################################################################
#               Работа модуля проверена только с Delphi 6, 7, и 9              #
################################################################################
#                                                                              #
#  Для проверки работы с другими версиями, необходимо:                         #
#                                                                              #
#    1. Убедиться что данная ошибка существует;                                #
#    2. Проверить идентичность описания процедур MaskDoFormatText              #
#       и PadInputLiterals в этом модуле, и в модуле MaskUtils;                #
#    3. Проверить функцианальную (семантическую) идентичность                  #
#       процедур MaskDoFormatText и PadInputLiterals в этом модуле,            #
#       и в модуле MaskUtils;                                                  #
#                                                                              #
################################################################################}
{$EndIf}{$EndIf}{$EndIf}


interface

implementation

uses
  Windows
 ,SysUtils
 ,MaskUtils
 ;

//////////////////////////////////////////////  Служебные функции для "патчинга"

function IsCompiledWithPackages: Boolean;
begin
  Result := FindClassHInstance(System.tObject) <> HInstance;
end;


function ResolvePackageThunk(Address: Pointer): Pointer;
const
  JmpInstructionCode = $25FF;
type
  PPackageThunk = ^TPackageThunk;
  TPackageThunk = packed record
    JmpInstruction: Word;
    JmpAddress: PPointer;
  end;
begin
  if      not IsCompiledWithPackages then
    Result := Address
  else if not IsBadReadPtr(Address, SizeOf(TPackageThunk)) and
      (PPackageThunk(Address)^.JmpInstruction = JmpInstructionCode) then
    Result := PPackageThunk(Address)^.JmpAddress^
  else
    Result := nil;
end;


function ReplaceProc (OldProc, NewProc :Pointer) :Boolean;
const
  JMPCode = $E9;
type
  PJMPInstruction = ^TJMPInstruction;
  TJMPInstruction = packed record
    JMP     :Byte;
    Address :Integer;
  end;
var
  JMPInstruction :TJMPInstruction;
  NW :DWORD;
begin
  OldProc := ResolvePackageThunk(OldProc);

  JMPInstruction.JMP     := JMPCode;
  JMPInstruction.Address := Integer(NewProc) - Integer(OldProc) - SizeOf(JMPInstruction);

  Result := WriteProcessMemory(GetCurrentProcess, OldProc, @JMPInstruction, SizeOf(JMPInstruction), NW);
  if Result then  FlushInstructionCache(GetCurrentProcess, OldProc, SizeOf(JMPInstruction));
end;


///////////////////////////////////////////////////////////  Подменяющие функции


function MaskIntlLiteralToChar(IChar: Char; CType: TMaskCharType): Char;
begin
  Result := IChar;
  if  CType = mcIntlLiteral  then
    case IChar of
      mMskTimeSeparator: Result := TimeSeparator;
      mMskDateSeparator: Result := DateSeparator;
    end;
end;

function MaskDoFormatText(const EditMask: string; const Value: string;
  Blank: Char): string;
var
  I: Integer;
  Offset, MaskOffset: Integer;
  CType: TMaskCharType;
  Dir: TMaskDirectives;
begin
  Result := Value;
  Dir := MaskGetCurrentDirectives(EditMask, 1);

  if not (mdReverseDir in Dir) then
  begin
      { starting at the beginning, insert literal chars in the string
        and add spaces on the end }
    Offset := 1;
    for MaskOffset := 1 to Length(EditMask) do
    begin
      CType := MaskGetCharType(EditMask, MaskOffset);

      if CType in [mcLiteral, mcIntlLiteral] then
      begin
        Result := Copy(Result, 1, Offset - 1) +
          MaskIntlLiteralToChar(EditMask[MaskOffset],CType) +
          Copy(Result, Offset, Length(Result) - Offset + 1);
        Inc(Offset);
      end
      else if CType in [mcMask, mcMaskOpt] then
      begin
        if Offset > Length(Result) then
          Result := Result + Blank;
        Inc(Offset);
      end;
    end;
  end
  else
  begin
      { starting at the end, insert literal chars in the string
        and add spaces at the beginning }
    Offset := Length(Result);
    for I := 0 to(Length(EditMask) - 1) do
    begin
      MaskOffset := Length(EditMask) - I;
      CType := MaskGetCharType(EditMask, MaskOffset);
      if CType in [mcLiteral, mcIntlLiteral] then
      begin
        Result := Copy(Result, 1, Offset) +
               MaskIntlLiteralToChar(EditMask[MaskOffset],CType) +
               Copy(Result, Offset + 1, Length(Result) - Offset);
      end
      else if CType in [mcMask, mcMaskOpt] then
      begin
        if Offset < 1 then
          Result := Blank + Result
        else
          Dec(Offset);
      end;
    end;
  end;
end;


function PadSubField(const EditMask: String; const Value: string;
  StartFld, StopFld, Len: Integer; Blank: Char): string;
var
  Dir: TMaskDirectives;
  StartPad: Integer;
  K: Integer;
begin
  if (StopFld - StartFld) < Len then
  begin
     { found literal at position J, now pad it }
    Dir := MaskGetCurrentDirectives(EditMask, 1);
    StartPad := StopFld - 1;
    if mdReverseDir in Dir then
      StartPad := StartFld - 1;
    Result := Copy(Value, 1, StartPad);
    for K := 1 to (Len - (StopFld - StartFld)) do
      Result := Result + Blank;
    Result := Result + Copy(Value, StartPad + 1, Length(Value));
  end
  else if (StopFld - StartFld) > Len then
  begin
    Dir := MaskGetCurrentDirectives(EditMask, 1);
    if mdReverseDir in Dir then
      Result := Copy(Value, 1, StartFld - 1) +
        Copy(Value, StopFld - Len, Length(Value))
    else
      Result := Copy(Value, 1, StartFld + Len - 1) +
        Copy(Value, StopFld, Length(Value));
  end
  else
    Result := Value;
end;

function PadInputLiterals(const EditMask: String; const Value: string;
  Blank: Char): string;
var
  J: Integer;
  LastLiteral, EndSubFld: Integer;
  Offset, MaskOffset: Integer;
  CType: TMaskCharType;
  MaxChars: Integer;
begin
  LastLiteral := 0;

  Result := Value;
  for MaskOffset := 1 to Length(EditMask) do
  begin
    CType := MaskGetCharType(EditMask, MaskOffset);
    if CType in [mcLiteral, mcIntlLiteral] then
    begin
      Offset := MaskOffsetToOffset(EditMask, MaskOffset);
      EndSubFld := Length(Result) + 1;
      for J := LastLiteral + 1 to Length(Result) do
      begin
        if Result[J] = MaskIntlLiteralToChar(EditMask[MaskOffset],CType) then
        begin
          EndSubFld := J;
          Break;
        end;
      end;
       { we have found a subfield, ensure that it complies }
      if EndSubFld > Length(Result) then
        Result := Result + MaskIntlLiteralToChar(EditMask[MaskOffset],CType);
      Result := PadSubField(EditMask, Result, LastLiteral + 1, EndSubFld,
        Offset - (LastLiteral + 1), Blank);
      LastLiteral := Offset;
    end;
  end;

    {ensure that the remainder complies, too }
  MaxChars  := MaskOffsetToOffset(EditMask, Length(EditMask));
  if Length (Result) <> MaxChars then
    Result := PadSubField(EditMask, Result, LastLiteral + 1, Length (Result) + 1,
      MaxChars - LastLiteral, Blank);

    { replace non-literal blanks with blank char }
  for Offset := 1 to Length (Result) do
  begin
    if Result[Offset] = ' ' then
    begin
      if not IsLiteralChar(EditMask, Offset - 1) then
        Result[Offset] := Blank;
    end;
  end;
end;


initialization
  ReplaceProc(@MaskUtils.MaskDoFormatText,@MaskDoFormatText);
  ReplaceProc(@MaskUtils.PadInputLiterals,@PadInputLiterals);
end.

