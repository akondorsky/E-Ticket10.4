unit ReasonsDog_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,DB;

type
  TReasonsDog_F = class(TForm)
    E_dt: TLabeledEdit;
    E_User: TLabeledEdit;
    E_reason: TLabeledEdit;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReasonsDog_F: TReasonsDog_F;

implementation

{$R *.dfm}
uses
 dm_u,main,myutils, Regti_U;

procedure TReasonsDog_F.BitBtn1Click(Sender: TObject);
var
 id_zayv:Integer;
begin
if Length(Trim(E_reason.Text))=0  then
   begin
     Application.MessageBox('Не заполнено обязательное поле - причина.','Внимание',MB_ICONWARNING+MB_OK);
     ModalResult:=mrNone;
     Exit;
   end;
try
 try
    id_zayv:=DM.Qry_RegTi.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    // изменяем статус заказчика
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update reg_ti set valid = :p0 where id = :p1 ');

    if RegTi_F.Reason then
        DM.Sql.Params[0].AsString:='T'
       else
        DM.Sql.Params[0].AsString:='F';
    DM.Sql.Params[1].asInteger:=id_zayv;
    DM.Sql.ExecQuery;
    // внесем запись в журнал заказчиков о причине
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into reg_ti_log (id_zayv,action, dt_action, username,reasons) ');
    DM.Sql.SQL.Add(' values ( :p0,:p1,:p2,:p3,:p4 ) ');
    DM.Sql.Params[0].AsInteger:=id_zayv;
    if RegTi_F.Reason then
        DM.Sql.Params[1].AsString:=ACTION_ENABLE_ZAYV
      else
        DM.Sql.Params[1].AsString:=ACTION_DISABLE_ZAYV;
    DM.Sql.Params[2].AsDateTime:=Now;
    DM.Sql.Params[3].AsString:=E_User.Text;
    DM.Sql.Params[4].AsString:=E_reason.Text;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    ModalResult:=mrOk;
    DM.Qry_RegTi.Close;
    DM.Qry_RegTi.Open;
    DM.Qry_RegTi.Locate('ID',id_zayv,[]);
    DM.Qry_ReasDog.Close;
    DM.Qry_ReasDog.Open;
    DM.Qry_ReasDog.Last;
  except
    on E: EdatabaseError do
      begin
       ShowMessage(E.Message);
      end;
  end;
finally

  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

procedure TReasonsDog_F.FormShow(Sender: TObject);
begin
  E_dt.Text:=DateTimeToStr(Now);
  E_User.Text:=User;
  E_reason.Clear;
  E_reason.Color:=LighterColor(clRed,30);
  E_reason.SetFocus;
end;

end.
