unit myutils;

interface
uses Graphics, SysUtils, inifiles,Variants,strUtils,Windows,Classes;

type
  TCharSet = TSysCharSet;

function DateCorrect(D: string): Boolean;
function GetValFloatToStr(F:Variant):String;
function GetValIntToStr(I:Variant):String;
function GetValStrToStr(S:Variant):String;
function SetValStrToFloat(S:String):Double;
function SetValStrToInt(S:String):Integer;
function SetValStrToDate(S:String):Variant;
function GetValDateToStr(D:Variant):String;
function DarkerColor(const Color: TColor; Percent: Integer): TColor;
function LighterColor(const Color: TColor; Percent: Integer): TColor;
function MixColors(const Colors: array of TColor): TColor;
function GrayColor(Color: TColor): TColor;
function DelNotLetter(Source:String):String;
function CountSubstrExt(sub,text: String): Integer;
function DateToIso(Adate:TDateTime):String;
function XMLCorrect(Source:String):String;
function GetMyVersion:string;
function CalledMethName(Obj: TObject): string;
function PersonName(FullName:String):String;
function PersonLastName(FullName:String):String;
function TimeStringtoIso(FTime:String):String;
function DateFromCustDoc(NDoc:String):String;
function GtdDateToIso(ADate:String):String;
function ArrayHasRepeat(Arr:Array of Integer;N:Integer):Integer;
function GtdDateToDate(AString:string):String;
//function ReplaceComma(ANumber:Extended):String;
//RxStrUtils
function WordPosition(const N: Integer; const S: string;  const WordDelims: TCharSet): Integer;
function ExtractWord(N: Integer; const S: string; const WordDelims: TCharSet): string;
function WordCount(const S: string; const WordDelims: TCharSet): Integer;
function NPos(const C: string; S: string; N: Integer): Integer;

implementation

function GtdDateToIso(ADate:String):String;
var
  s1,s2,s3:String;
begin
  Result:='';
  s1:=Copy(Adate,1,2);
  s2:=Copy(ADate,3,2);
  s3:='20'+Copy(ADate,5,2);
  Result:=s3+'-'+s2+'-'+s1;
end;

function ArrayHasRepeat(Arr:Array of Integer;N:Integer):Integer;
var
 i,k,l:Integer;
begin
 Result:=0;
    for i:=0 to N-1 do
       begin
            for k:= i+1 to N-1 do
            if Arr[i] <> arr[k] then
            begin
                Result:=1;
                exit;
            end;
       end;

end;


function DateFromCustDoc(NDoc:String):String;
var
 s,s1:String;
begin
 Result:='';
 s1:=Copy(DateToStr(Date),7,2);
 s:=Copy(NDoc,10,6);
 Insert(s1,s,5);
 Insert(FormatSettings.DateSeparator,s,3);
 Insert(FormatSettings.DateSeparator,s,6);
 Result:=s;
end;

function WordPosition(const N: Integer; const S: string;
  const WordDelims: TCharSet): Integer;
var
  Count, I: Integer;
begin
  Count := 0;
  I := 1;
  Result := 0;
  while (I <= Length(S)) and (Count <> N) do
  begin
    { skip over delimiters }
    while (I <= Length(S)) and CharInSet(S[I], WordDelims) do
      Inc(I);
    { if we're not beyond end of S, we're at the start of a word }
    if I <= Length(S) then
      Inc(Count);
    { if not finished, find the end of the current word }
    if Count <> N then
      while (I <= Length(S)) and not CharInSet(S[I], WordDelims) do
        Inc(I)
    else
      Result := I;
  end;
end;
function ExtractWord(N: Integer; const S: string;
  const WordDelims: TCharSet): string;
var
  I: Integer;
  Len: Integer;
begin
  Len := 0;
  I := WordPosition(N, S, WordDelims);
  if I <> 0 then
    { find the end of the current word }
    while (I <= Length(S)) and not CharInSet(S[I], WordDelims) do
    begin
      { add the I'th character to result }
      Inc(Len);
      SetLength(Result, Len);
      Result[Len] := S[I];
      Inc(I);
    end;
  SetLength(Result, Len);
end;

function WordCount(const S: string; const WordDelims: TCharSet): Integer;
var
  SLen, I: Cardinal;
begin
  Result := 0;
  I := 1;
  SLen := Length(S);
  while I <= SLen do
  begin
    while (I <= SLen) and CharInSet(S[I], WordDelims) do
      Inc(I);
    if I <= SLen then
      Inc(Result);
    while (I <= SLen) and not CharInSet(S[I], WordDelims) do
      Inc(I);
  end;
end;

function NPos(const C: string; S: string; N: Integer): Integer;
var
  I, P, K: Integer;
begin
  Result := 0;
  K := 0;
  for I := 1 to N do
  begin
    P := Pos(C, S);
    Inc(K, P);
    if (I = N) and (P > 0) then
    begin
      Result := K;
      Exit;
    end;
    if P > 0 then
      Delete(S, 1, P)
    else
      Exit;
  end;
end;


function TimeStringtoIso(FTime:String):String;
var
 l:Integer;
begin
 Result:=Ftime;
 l:=Length(Ftime);
 case l of
   5: begin
        Result:=FTime+':00';
      end;
 end;
end;

function PersonLastName(FullName:String):String;
var
 p,l:Integer;
begin
 Result:=FullName;
 p:=Pos(' ',FullName);
 if p = 0 then Exit;
 l:=Length(FullName);
 Result:=Copy(FullName,1,p-1);
end;

function PersonName(FullName:String):String;
var
 p,l:Integer;
begin
 Result:=Copy(trim(FullName),1,1);
 p:=Pos(' ',FullName);
 if p = 0 then Exit;
 l:=Length(FullName);
 Result:=Copy(FullName,p+1,l-p);
end;
function  XMLCorrect(Source:String):String;
var
 d,Dest:String;
 i:Integer;
begin
 for i:=1 to Length(Source) do
  begin
    case Source[i] of
     '<' : d:= '&lt;';
     '>' : d:= '&gt;';
     '&' : d:= '&amp;';
     #39 : d:= '&apos;';
     #34 : d:= '&quot;';
     else
      d:=Source[i];
    end;
   Dest:=Dest+d;
  end;
Result:=Dest;
end;


function CalledMethName(Obj: TObject): string;
var
  CallAddr, MethAddr, MaxAddr: Cardinal;
  pb, methEnd: PAnsiChar;
  i, Count: Integer;
begin
   asm
     mov CallAddr, ebp;
     add CallAddr, 4;
   end;
   MaxAddr := 0;
   CallAddr := PCardinal(CallAddr)^;
   pb := PAnsiChar(Obj.ClassType) + vmtMethodTable;
   pb := PPointer(pb)^;
   if Assigned(pb) then
   begin
     Count := PWord(pb)^;
     inc(pb, SizeOf(Word));
     for i := 1 to Count do
     begin
       methEnd := pb + PWord(pb)^; //Len
       Inc(pb, SizeOf(Word));
       MethAddr := PCardinal(pb)^; //CodeAddress
       if (MethAddr < CallAddr) and (MethAddr > MaxAddr) then
       begin
         MaxAddr := MethAddr;
         if MaxAddr <= MethAddr then
           Result := Obj.MethodName(Pointer(MethAddr));
       end;
       pb := methEnd;
     end;
   end;
end;

function GetMyVersion:string;
type
  TVerInfo=packed record
    Nevazhno: array[0..47] of byte; // ненужные нам 48 байт
    Minor,Major,Build,Release: word; // а тут верси€
  end;
var
  s:TResourceStream;
  v:TVerInfo;
begin
  result:='';
  try
    s:=TResourceStream.Create(HInstance,'#1',RT_VERSION); // достаЄм ресурс
    if s.Size>0 then begin
      s.Read(v,SizeOf(v)); // читаем нужные нам байты
      result:=IntToStr(v.Major)+'.'+IntToStr(v.Minor)+'.'+ // вот и верси€...
              IntToStr(v.Release)+'.'+IntToStr(v.Build);
    end;
  s.Free;
  except; end;
end;


function DelNotLetter(Source:String):String;
var
 Dest:String;
 i:integer;
begin
  Result:='';
  for i := 1 to Length(Source) do
   begin
    if Source[i] in ['A'..'Z', 'a'..'z', 'ј'..'я', 'а'..'€','0'..'9'] then
     Dest := Dest + Source[i];
  end;
  Result:=Dest;
end;

function DateCorrect(D: string): Boolean;
var
   ddd:tdatetime;
begin
 result:=false;
   try
    ddd:=strtodate(d);
    result:=true;
   except
   end;
 
end;

function GetValFloatToStr(F:Variant):String;
begin
 if (F = Null) or (F = 0) then
    Result:='0'
 else
    Result:=FloatToStr(F);
end;

function GetValIntToStr(I:Variant):String;
begin
 if (I = Null) or (I = 0) then
    Result:='0'
 else
    Result:=IntToStr(I);
end;

function GetValStrToStr(S:Variant):String;
begin
 if (S = Null)  then
    Result:=''
 else
    Result:=S;
end;

function SetValStrToFloat(S:String):Double;
begin
 if Length(Trim(S)) =0 then
    Result:=0
   else
    Result:=StrToFloat(S);

end;

function SetValStrToInt(S:String):Integer;
begin
 if Length(Trim(S)) =0 then
    Result:=0
   else
    Result:=StrToInt(S);

end;

function SetValStrToDate(S:String):Variant;
begin
 if  DateCorrect(S) then
    Result:=StrToDate(S)
   else
    Result:=null;
end;
function GetValDateToStr(D:Variant):String;
begin
 if (D = Null) or (D = 0) then
    Result:='  .  .    '
 else
    Result:=DateToStr(D);
end;

function DarkerColor(const Color: TColor; Percent: Integer): TColor;
var
  R, G, B: Byte;
begin
  Result := Color;
  if Percent <= 0 then
    Exit;
  if Percent > 100 then
    Percent := 100;
  Result := ColorToRGB(Color);
  R := GetRValue(Result);
  G := GetGValue(Result);
  B := GetBValue(Result);
  R := R - R * Percent div 100;
  G := G - G * Percent div 100;
  B := B - B * Percent div 100;
  Result := RGB(R, G, B);
end;

function LighterColor(const Color: TColor; Percent: Integer): TColor;
var
  R, G, B: Byte;
begin
  Result := Color;
  if Percent <= 0 then
    Exit;
  if Percent > 100 then
    Percent := 100;
  Result := ColorToRGB(Result);
  R := GetRValue(Result);
  G := GetGValue(Result);
  B := GetBValue(Result);
  R := R + (255 - R) * Percent div 100;
  G := G + (255 - G) * Percent div 100;
  B := B + (255 - B) * Percent div 100;
  Result := RGB(R, G, B);
end;

function MixColors(const Colors: array of TColor): TColor;
var
  R, G, B: Integer;
  i: Integer;
  L: Integer;
begin
  R := 0;
  G := 0;
  B := 0;
  for i := Low(Colors) to High(Colors) do
  begin
    Result := ColorToRGB(Colors[i]);
    R := R + GetRValue(Result);
    G := G + GetGValue(Result);
    B := B + GetBValue(Result);
  end;
  L := Length(Colors);
  Result := RGB(R div L, G div L, B div L);
end;

function GrayColor(Color: TColor): TColor;
var
  Gray: Byte;
begin
  Result := ColorToRGB(Color);
  Gray := (GetRValue(Result) + GetGValue(Result) + GetBValue(Result)) div 3;
  Result := RGB(Gray, Gray, Gray);
end;

{ѕример использовани€:
var
  i, j: Integer;
begin
  ...
  with Bitmap1 do
    for i := 0 to Width - 1 do
      for j := 0 to Height - 1 do
        Canvas.Pixels[i, j] := GrayColor(Canvas.Pixels[i, j]);
  ...
end;}

function CountSubstrExt(sub,text: String): Integer;
var
 nPos:Integer;
begin
  Result:=0;
  nPos:=PosEx(sub,text,1);
  while nPos > 0 do
   begin
     Inc(Result);
     nPos:=PosEx(sub,text,nPos+Length(sub));
   end;
end;

function DateToIso(Adate:TDateTime):String;
var
  Year,Month,Day:Word;
  m,d:string;
begin
 Result:='';
 DecodeDate(Adate,Year,Month,Day);
 if Month < 10 then m:='0'+IntToStr(Month) else m:=IntToStr(Month);
 if Day < 10 then d:='0'+IntToStr(Day) else d:=IntToStr(Day);
 Result:=IntTostr(Year)+'-'+m+'-'+d; // получили дату в формате YYYY-MM-DD
end;

function GtdDateToDate(AString:string):String;
var
 s,s1,s2,s3:string;
begin
Result:='';
  if Length(AString) = 0 then exit;
  s1:=Copy(AString,1,2);
  s2:=Copy(AString,3,2);
  s3:='20'+Copy(AString,5,2);
  s:=s1+FormatSettings.DateSeparator+s2+FormatSettings.DateSeparator+s3;
  Result:=s;
end;

{
function ReplaceComma(ANumber:Extended):String;
var
 x:Extended;
begin
 AString[Pos(',',AString)] := '.';
 Result:=AString;
end;
 }
end.
