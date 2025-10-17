unit EditVes_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, DBCtrlsEh, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TEditVes_F = class(TForm)
    Label1: TLabel;
    Label4: TLabel;
    E_Nomer: TEdit;
    Bt_Cancel: TBitBtn;
    Bt_Save: TBitBtn;
    DT1: TDBDateTimeEditEh;
    procedure FormShow(Sender: TObject);
    procedure Bt_SaveClick(Sender: TObject);
    procedure Bt_CancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EditVes_F: TEditVes_F;

implementation

{$R *.dfm}

uses Main,DM_U,DB;

procedure TEditVes_F.Bt_CancelClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TEditVes_F.Bt_SaveClick(Sender: TObject);
var
 id_ticket:Integer;
begin
try
 try
    id_ticket:=Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update ts_ves set dt_control=:p0 where ts_in=:p1   ');
    DM.Sql.Params[0].Value:=Dt1.Value;
    DM.Sql.Params[1].AsInteger:=Main_F.Grid_TS.DataSource.DataSet.FieldByName('ID').AsInteger;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    ModalResult:=mrOk;
    DM.Refresh_TS;
  except
    on E: EdatabaseError do
      begin
       DM.Sql.Transaction.Rollback;
       ShowMessage(E.Message);
      end;
  end;
finally
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

procedure TEditVes_F.FormShow(Sender: TObject);
begin
  E_Nomer.Text:=Main_F.Grid_Ts.DataSource.DataSet.FieldByName('N_TS').AsString + '/'+Main_F.Grid_Ts.DataSource.DataSet.FieldByName('N_Trailer').AsString;
  if Role='SYSADMIN' then DT1.Enabled:=true;
  Dt1.Value:=Main_F.Grid_Ts.DataSource.DataSet.FieldByName('DT_CONTROL').Value;
  Dt1.SetFocus;
end;

end.
