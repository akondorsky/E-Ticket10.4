unit SmsPhoneAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,Db;

type
  TSmsPhoneAdd_F = class(TForm)
    Label1: TLabel;
    E_phone: TEdit;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    procedure SaveBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SmsPhoneAdd_F: TSmsPhoneAdd_F;

implementation

{$R *.dfm}
uses dm_u;

procedure TSmsPhoneAdd_F.SaveBtnClick(Sender: TObject);
var
  Id_zayv:Integer;
  s:String;
begin
  if Length(Trim(E_phone.Text)) <> 11 then
    begin
      Application.MessageBox('Номер телефона должен иметь длину 11 цифр .','Внимание',MB_ICONWARNING+MB_OK);
      ModalResult := mrNone;
      exit;
    end;

try
 try
  s:='insert into SMS_SUBSCRIPTION (ID_ZAYV,PHONE_NUMBER)' ;
  s:=s+' values (:p0,:p1) ';
  DM.Sql.Close;
  DM.Sql.SQL.Clear;
  DM.Sql.SQL.Add(s);
  Id_zayv:= DM.Qry_Regti.FieldValues['ID'];
  if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction; //start tran
  DM.Sql.Params[0].AsInteger:=Id_zayv;
  DM.Sql.Params[1].AsString:=E_phone.Text;
  DM.Sql.ExecQuery;
  DM.Sql.Transaction.Commit;
  ModalResult:=mrOk;
  except
        on E: EdatabaseError do
          begin
           DM.Sql.Transaction.Rollback;
           ShowMessage(E.Message);
           Exit;
          end;
 end;
finally
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

end.
