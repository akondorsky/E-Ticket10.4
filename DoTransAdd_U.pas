unit DoTransAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, DB, Buttons, ExtCtrls;

type
  TDoTransAdd_F = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    E_Ntrans: TEdit;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    E_Vtrans: TButtonedEdit;
    procedure E_NtransKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure E_VtransKeyPress(Sender: TObject; var Key: Char);
    procedure E_VtransRightButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DoTransAdd_F: TDoTransAdd_F;

implementation

{$R *.dfm}
uses dm_u, do1_u, VidTrans_U;

procedure TDoTransAdd_F.E_VtransKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TDoTransAdd_F.E_VtransRightButtonClick(Sender: TObject);
begin
 if VidTrans_F.ShowModal = mrOk then E_Vtrans.Text:=VidTrans_F.DBGridEh1.DataSource.DataSet.FieldByName('KOD').AsString;

end;

procedure TDoTransAdd_F.E_NtransKeyPress(Sender: TObject; var Key: Char);
begin
   if  not(Key in ['0'..'9','A'..'Z','a'..'z','/',#8]) then Key:=#0;
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;


end;

procedure TDoTransAdd_F.FormShow(Sender: TObject);
begin
E_Vtrans.Clear;
E_Ntrans.Clear;
E_Vtrans.SetFocus;
end;

procedure TDoTransAdd_F.CancBtnClick(Sender: TObject);
begin
Modalresult:=mrcancel;
end;

procedure TDoTransAdd_F.SaveBtnClick(Sender: TObject);
var
 New_Ts:Integer;
 s:String;
begin
try
 s:='insert into do_trans (vidtrans,ntrans,id_do1) ';
 s:=s+'values (:p0,:p1,:p2) ';
 DM.SQL.Close;
 DM.SQL.SQL.Clear;
 DM.SQL.SQL.Add(s);
try
 if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction; //start tran
//  DM.SQL.Params[0].AsInteger:=New_rec;
  DM.SQL.Params[0].AsString:=E_Vtrans.Text;
  DM.SQL.Params[1].AsString:=E_Ntrans.Text;
  DM.SQL.Params[2].AsInteger:=Do1_F.GridDo1.DataSource.DataSet.FieldByName('ID').AsInteger;
  DM.SQL.ExecQuery;
  DM.SQL.Transaction.Commit;
  ModalResult:=mrOk;
  DM.Qry_DoTrans.Close;
  DM.Qry_DoTrans.Open;
 except
      on E: EdatabaseError do
        begin
         DM.Sql.Transaction.Rollback;
         ShowMessage(E.Message);
        end;
 end;
finally
 IF DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;

end;

end.
