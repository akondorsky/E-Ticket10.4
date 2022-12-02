unit TicketEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,  Graphics,
   Controls,  Forms,  Dialogs,  StdCtrls,  Buttons,DB,
   DBCtrls,  ExtCtrls, ComCtrls, Mask, DBCtrlsEh;

type
  TTicketEdit_F = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    E_Nomer: TEdit;
    Bt_Cancel: TBitBtn;
    Bt_Save: TBitBtn;
    E_CustProc: TButtonedEdit;
    Label13: TLabel;
    E_Carrier: TButtonedEdit;
    Label3: TLabel;
    E_Vidtrans: TComboBox;
    Label4: TLabel;
    DT1: TDBDateTimeEditEh;
    Label5: TLabel;
    E_Phone: TEdit;
    procedure FormShow(Sender: TObject);
    procedure Bt_SaveClick(Sender: TObject);
    procedure E_CustProcRightButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure E_CarrierRightButtonClick(Sender: TObject);
    procedure E_PhoneChange(Sender: TObject);
    procedure E_PhoneExit(Sender: TObject);
  private
    { Private declarations }
    var
       Carrier:Variant;
       ChangePhoneFlag:Boolean;
  public
    { Public declarations }
  end;

var
  TicketEdit_F: TTicketEdit_F;


implementation

{$R *.dfm}

uses Main, DM_U, CustProc_U,Carrier_U;

procedure TTicketEdit_F.Bt_SaveClick(Sender: TObject);
var
 id_ticket:Integer;
begin
if (Length(E_CustProc.Text)=0)  or (Length(E_Carrier.Text)=0) then
   begin
     Application.MessageBox('Не заполнено одно из обязательных полей','Внимание!',MB_ICONWARNING+MB_OK);
     ModalResult:=mrNone;
     Exit;
   end;
try
 try
    id_ticket:=Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update ticket set cust_proc=:p0, id_carrier=:p1, vidtrans=:p2, dt_is=:p3 where id=:p4  ');
    DM.Sql.Params[0].AsString:=E_Custproc.text;
    DM.Sql.Params[1].Value:=Carrier;
    DM.Sql.Params[2].AsString:=E_Vidtrans.text;
    DM.Sql.Params[3].Value:=Dt1.Value;
    DM.Sql.Params[4].AsInteger:=id_ticket;
    DM.Sql.ExecQuery;
    if ChangePhoneFlag then
       begin
          if Application.MessageBox('Номер телефона перевозчика изменен.Сохранить изменения?','Внимание',MB_ICONWARNING+MB_YESNO) = mrYes then
             begin
                DM.Sql.Close;
                DM.Sql.SQL.Clear;
                DM.Sql.SQL.Add('update carrier set phone=:p0 where id=:p1');
                DM.Sql.Params[0].AsString:=Trim(E_Phone.text);
                DM.Sql.Params[1].Value:=Carrier;
                DM.Sql.ExecQuery;
             end;
       end;
    DM.Sql.Transaction.Commit;
    ModalResult:=mrOk;
    DM.Refresh_Ticket;
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

procedure TTicketEdit_F.E_CarrierRightButtonClick(Sender: TObject);
begin
 if Carrier_F.ShowModal = mrOk then
   begin
     E_Carrier.Text:=Carrier_F.DBGridEh1.DataSource.DataSet.FieldByName('OWNER').AsString;
     E_Phone.Text:=Carrier_F.DBGridEh1.DataSource.DataSet.FieldByName('PHONE').AsString;
     Carrier:=Carrier_F.DBGridEh1.DataSource.DataSet.FieldByName('ID').Value;
     SelectNext(Sender as TWinControl, True, True);
   end;

end;

procedure TTicketEdit_F.E_CustProcRightButtonClick(Sender: TObject);
begin
  if CustProc_F.ShowModal = mrOk then E_CustProc.Text:=Custproc_F.DBGridEh1.DataSource.DataSet.FieldByName('NAME').AsString;
end;

procedure TTicketEdit_F.E_PhoneChange(Sender: TObject);
begin
  ChangePhoneFlag:=True;
end;

procedure TTicketEdit_F.E_PhoneExit(Sender: TObject);
begin
  if ChangePhoneFlag = True then
end;

procedure TTicketEdit_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
  DT1.Enabled:=False;
end;

procedure TTicketEdit_F.FormShow(Sender: TObject);
begin
  E_Nomer.Text:=Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('N_TICKET').AsString;
  E_Custproc.Text:=Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('CUST_PROC').AsString;
  E_Carrier.Text:=Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('OWNER').AsString;
  Carrier:=Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('ID1').Value;
  E_Vidtrans.Text:=Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('VIDTRANS').AsString;
  E_Phone.Text:=Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('PHONE').AsString;
  if Role='SYSADMIN' then DT1.Enabled:=true;
  Dt1.Value:=Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('DT_IS').Value;
  ChangePhoneFlag:=False;
end;

end.
