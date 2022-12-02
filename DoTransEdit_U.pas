unit DoTransEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, Buttons, ExtCtrls,DB;

type
  TDoTransEdit_F = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    E_Ntrans: TEdit;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    E_Vtrans: TButtonedEdit;
    procedure E_VidtransKeyPress(Sender: TObject; var Key: Char);
    procedure E_NtransKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure E_VtransRightButtonClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure GetValues;
  public
    { Public declarations }
  end;

var
  DoTransEdit_F: TDoTransEdit_F;

implementation

{$R *.dfm}
uses dm_u, VidTrans_U;

procedure TDoTransEdit_F.GetValues;
begin
    E_Vtrans.Text:=DM.Qry_DoTrans.FieldByname('VIDTRANS').AsString;
    E_Ntrans.Text:=DM.Qry_DoTrans.FieldByname('NTRANS').AsString;
end;
procedure TDoTransEdit_F.E_VidtransKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTransEdit_F.E_VtransRightButtonClick(Sender: TObject);
begin
 if VidTrans_F.ShowModal = mrOk then E_Vtrans.Text:=VidTrans_F.DBGridEh1.DataSource.DataSet.FieldByName('KOD').AsString;
end;

procedure TDoTransEdit_F.E_NtransKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTransEdit_F.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if  not(Key in ['0'..'9','A'..'Z','a'..'z','/',#8]) then Key:=#0;
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TDoTransEdit_F.FormShow(Sender: TObject);
begin
GetValues;
E_Vtrans.SetFocus;
end;

procedure TDoTransEdit_F.SaveBtnClick(Sender: TObject);
var
 N_Rec:Integer;
 s:String;
begin
try
 N_Rec:=DM.Qry_DoTrans.FieldByName('Id').AsInteger;
 s:='update do_trans set vidtrans=:p0,ntrans=:p1 ';
 s:=s+' where id=:p2 ';
 Dm.sql.Close;
 DM.sql.SQL.Clear;
 DM.sql.SQL.Add(s);
try
 if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction; //start tran
  DM.SQL.Params[0].AsString:=E_Vtrans.Text;
  DM.SQL.Params[1].AsString:=E_Ntrans.Text;
  DM.SQL.Params[2].AsInteger:=N_rec;
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
