unit DogovorAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls,DB,IBX.IBquery,System.Generics.Collections;

type
  TDogovorAdd_F = class(TForm)
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    E_Numdog: TEdit;
    E_Datedog: TDateTimePicker;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    E_Note: TMemo;
    procedure FormShow(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure E_NumdogExit(Sender: TObject);
    procedure E_NumdogKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure GetLasNumDogogvor(AValue:Integer);
  public
    { Public declarations }
  end;

var
  DogovorAdd_F: TDogovorAdd_F;

implementation

{$R *.dfm}
uses dm_u;

procedure TDogovorAdd_F.E_NumdogExit(Sender: TObject);
var
 Mes:String;
begin
 if Length (Trim(E_Numdog.Text)) = 0 then
   begin
    Mes:='№ договора не может быть пустым.Данные не могут быть сохранены !';
    Application.MessageBox(PChar(Mes),'Внимание',mb_IconWarning+mb_Ok);
    Exit;
   end;
end;

procedure TDogovorAdd_F.E_NumdogKeyPress(Sender: TObject; var Key: Char);
begin
 if not(Key in ['0'..'9','T','C','-',#8]) then Key:=#0;
end;

procedure TDogovorAdd_F.FormShow(Sender: TObject);
begin
 E_Datedog.Date:=Date;
 E_Numdog.Clear;
 GetLasNumDogogvor(Self.Tag);
 E_Note.Lines.Clear;
end;

procedure TDogovorAdd_F.GetLasNumDogogvor(AValue:Integer);
var
  s:string;
  List:TList<Integer>;
  i:Integer;
  qry:TIbQuery;
begin
qry := TIbQuery.Create(Nil);
qry.Database:=DM.DB;
List := TList<Integer>.Create;
try
  case AValue of
  1: //CBX
    begin
      qry.sql.Add('select num_dog from dogovors where num_dog not containing :p0');
      qry.Params[0].AsString:='-';
      qry.Open();
      while not qry.eof  do
        begin
          s:=qry.Fields[0].AsString;
          List.Add(strtoint(s));
          qry.Next;
        end;
      List.Sort;
      E_Numdog.Text:=IntToStr(List[List.Count-1]+1);
    end;
  2: //TC
    begin
      qry.sql.Add('select num_dog from dogovors where num_dog containing :p0');
      qry.Params[0].AsString:='-';
      qry.Open();
      while not qry.eof  do
        begin
          s:=qry.Fields[0].AsString;
          i:=Pos('-',s);
          Delete(s,i,1);
          i:=Pos('TC',s);
          Delete(s,i,2);
          List.Add(StrToInt(s));
          qry.Next;
        end;
      List.Sort;
      E_Numdog.Text:='TC-'+ IntToStr(List[List.Count-1]+1);
    end;
  end;
finally
  List.Free;
  qry.Free;
end;
end;

procedure TDogovorAdd_F.SaveBtnClick(Sender: TObject);
var
 pms:TMemoryStream;
 id_zayv:Integer;
begin
try
 try
    // изменяем запись ТС
    pms:=TMemoryStream.Create;
    id_zayv:=DM.Qry_RegTi.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into dogovors (id_zayv,num_dog,start_dog,note) ');
    DM.Sql.SQL.Add(' values ( :p0,:p1,:p2,:p3 ) ');
    DM.Sql.Params[0].AsInteger:=id_zayv;
    DM.Sql.Params[1].AsString:=E_Numdog.Text;
    DM.Sql.Params[2].AsDate:=E_Datedog.Date;
    E_Note.Lines.SaveToStream(pms);
    DM.Sql.Params[3].LoadFromStream(pms);
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    ModalResult:=mrOk;
    DM.Qry_Dogovors.Close;
    DM.Qry_Dogovors.Open;
    DM.Qry_Dogovors.Last;
  except
    on E: EdatabaseError do
      begin
       ShowMessage(E.Message);
      end;
  end;
finally
  pms.Free;
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;

end;

end.

{
procedure TForm1.Button1Click(Sender: TObject);
var
  s:String;
  i:Integer;
  List:TList<Integer>;
begin
List := TList<Integer>.Create;
try
  qry.Close;
  qry.sql.Clear;
  qry.sql.Add('select num_dog from dogovors where num_dog containing :p0');
  qry.Params[0].AsString:='-';
  qry.Open();
  while not qry.eof  do
    begin
      s:=qry.Fields[0].AsString;
      i:=Pos('-',s);
      Delete(s,i,1);
      i:=Pos('TC',s);
      Delete(s,i,2);
      List.Add(StrToInt(s));
      qry.Next;
    end;
  List.Sort;
  for i:=0 to List.Count-1 do
    begin
      ListBox1.Items.Add(IntToStr(List[i]));
    end;
finally
  List.Free;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  s:string;
  List:TList<Integer>;
  i:Integer;
begin
List := TList<Integer>.Create;
try
  qry.Close;
  qry.sql.Clear;
  qry.sql.Add('select num_dog from dogovors where num_dog not containing :p0');
  qry.Params[0].AsString:='-';
  qry.Open();
  while not qry.eof  do
    begin
      s:=qry.Fields[0].AsString;
      List.Add(strtoint(s));
      qry.Next;
    end;
  List.Sort;
  for i:=0 to List.Count-1 do
    begin
      ListBox2.Items.Add(IntToStr(List[i]));
    end;
finally
  List.Free;
end;
end;





}
