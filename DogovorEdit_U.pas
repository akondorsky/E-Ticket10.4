unit DogovorEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls,DB;

type
  TDogovorEdit_F = class(TForm)
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
  public
    { Public declarations }
  end;

var
  DogovorEdit_F: TDogovorEdit_F;

implementation

{$R *.dfm}
uses dm_u;

procedure TDogovorEdit_F.E_NumdogExit(Sender: TObject);
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

procedure TDogovorEdit_F.E_NumdogKeyPress(Sender: TObject; var Key: Char);
begin ;
 if not(Key in ['0'..'9','T','C','-',#8]) then Key:=#0;
end;

procedure TDogovorEdit_F.FormShow(Sender: TObject);
begin
   E_Datedog.Date:=DM.Qry_Dogovors.FieldByName('START_DOG').AsDateTime;
   E_Numdog.Text:=DM.Qry_Dogovors.FieldByName('NUM_DOG').AsString;
   E_Note.Lines.Assign(DM.Qry_Dogovors.FieldByName('NOTE'));
end;

{var
  MS : TMemoryStream;
  RichEdit : TRichEdit;
  PlainText : string;
begin
  RichEdit := TRichEdit.Create(Self);
  MS := TMemoryStream.Create;
  try
    RichEdit.Parent := Self;
    RichEdit.Visible := False;
    TBlobField(data.FieldByName('CallData')).SaveToStream(MS);
    MS.Position := 0;
    RichEdit.Lines.LoadFromStream(MS);
    PlainText := RichEdit.Lines.Text;
  finally
    MS.Free;
    RichEdit.Free;
  end;
end;}

procedure TDogovorEdit_F.SaveBtnClick(Sender: TObject);
var
 pms:TMemoryStream;
 id_rec:Integer;
begin
try
 try
    // изменяем запись ТС
    pms:=TMemoryStream.Create;
    id_rec:=DM.Qry_Dogovors.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update dogovors set num_dog=:p0,start_dog=:p1,note=:p2 where id=:p3 ');
    DM.Sql.Params[0].AsString:=E_Numdog.Text;
    DM.Sql.Params[1].AsDate:=E_Datedog.Date;
    E_Note.Lines.SaveToStream(pms);
    DM.Sql.Params[2].LoadFromStream(pms);
    DM.Sql.Params[3].AsInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    ModalResult:=mrOk;
    DM.Qry_Dogovors.Close;
    DM.Qry_Dogovors.Open;
    DM.Qry_Dogovors.Locate('ID',id_rec,[]);
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
