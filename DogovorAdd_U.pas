unit DogovorAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls,DB,IBX.IBquery;

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
    procedure GetLasNumDogogvor;
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
 GetLasNumDogogvor;
 E_Note.Lines.Clear;
end;

procedure TDogovorAdd_F.GetLasNumDogogvor;
var
  qry:TIBQuery;

begin
  qry := TIBQuery.Create(Self);
  try
    qry.Database := DM.DB;
    qry.SQL.Add(' select first 1 num_dog from dogovors order by id desc ');
    qry.Open;
    if not qry.Fields[0].IsNull then
      E_Numdog.Text :=   IntTostr(StrToInt(qry.Fields[0].AsString)+1);
  finally
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
{ if Length (Trim(E_Numdog.Text)) = 0 then
   begin
    Mes:='№ договора не может быть пустым.Данные не могут быть сохранены !';
    Application.MessageBox(PChar(Mes),'Внимание',mb_IconWarning+mb_Ok);
    Exit;
   end;}


{  if Ch1.Checked  then
     DM.Sql.Params[12].AsString:='T'
   else
     DM.Sql.Params[12].AsString:='F';}
}
