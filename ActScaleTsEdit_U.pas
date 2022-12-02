unit ActScaleTsEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrlsEh,DB;

type
  TActScaleTsEdit_F = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    E_Ticket: TEdit;
    E_NTs: TEdit;
    E_NTrailer: TEdit;
    Bt_Save: TBitBtn;
    Bt_Cancel: TBitBtn;
    E_Weight: TDBNumberEditEh;
    procedure FormShow(Sender: TObject);
    procedure Bt_SaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ActScaleTsEdit_F: TActScaleTsEdit_F;

implementation

uses ScalingTP_U,DM_U,main;

{$R *.dfm}

procedure TActScaleTsEdit_F.Bt_SaveClick(Sender: TObject);
var
 id_rec:Integer;
begin
try
 try
    id_rec:=ScalingTP_F.Grid_Act.DataSource.DataSet.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update act_of_scales set brutto=:p0 where id=:p1 ');
    DM.Sql.Params[0].AsVariant:=E_Weight.Value;
    DM.Sql.Params[1].AsInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    ModalResult:=mrOk;
    DM.Qry_ActScales.Close;
    DM.Qry_ActScales.Open;
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

procedure TActScaleTsEdit_F.FormShow(Sender: TObject);
begin
    E_Ticket.Text:= ScalingTP_F.Grid_ts.DataSource.DataSet.FieldByName('N_TICKET').AsString;
    E_NTs.Text:=ScalingTP_F.Grid_ts.DataSource.DataSet.FieldByName('N_TS').AsString;
    E_NTrailer.Text:=ScalingTP_F.Grid_ts.DataSource.DataSet.FieldByName('N_TRAILER').AsString;
    E_Weight.Text:=ScalingTP_F.Grid_Act.DataSource.DataSet.FieldByName('BRUTTO').AsString;
    E_Weight.SetFocus;
end;

end.
