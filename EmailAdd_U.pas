unit EmailAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,Db,RegularExpressions;

type
  TEmailAdd_F = class(TForm)
    Label1: TLabel;
    E_phone: TEdit;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    procedure SaveBtnClick(Sender: TObject);
    procedure E_phoneKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function CheckEmailAddress(S:String):Boolean;
  public
    { Public declarations }
  end;

var
  EmailAdd_F: TEmailAdd_F;

implementation

{$R *.dfm}
uses dm_u;

function TEmailAdd_F.CheckEmailAddress(S: String): Boolean;
var RegEx: TRegEx;
begin
  Result:=False;
  RegEx:=TRegEx.Create('^[a-zA-Z0-9-_.]+@+\w+[a-zа-я0-9].[a-zа-я]{2,3}$');
  if RegEx.IsMatch(S)then
   Result:=True;
end;

procedure TEmailAdd_F.E_phoneKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0'..'9','a'..'z','_','-','.','@',#8,#127]) then Key:=#0;
end;

procedure TEmailAdd_F.SaveBtnClick(Sender: TObject);
var
  Id_zayv:Integer;
  s:String;
begin
//if (not CheckEmailAddress(E_phone.Text)) then
//  begin
//    Application.MessageBox('Неверный формат e-mail!','Внимание',MB_OK+MB_ICONERROR);
//    ModalResult:=mrNone;
//    Exit;
//  end;

try
 try
  s:='insert into MAIL_SUBSCRIPTION (ID_ZAYV,EMAIL)' ;
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
