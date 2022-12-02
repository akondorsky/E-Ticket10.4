unit AddActScaleTP_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,DB,ActnList, Mask, DBCtrlsEh;

type
  TAddActScaleTP_F = class(TForm)
    Label1: TLabel;
    E_Ticket: TEdit;
    Bt_Save: TBitBtn;
    Bt_Cancel: TBitBtn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    E_NTs: TEdit;
    Label3: TLabel;
    E_Driver: TEdit;
    Label5: TLabel;
    E_Places: TEdit;
    Label6: TLabel;
    E_Packing: TComboBox;
    Label7: TLabel;
    E_User: TEdit;
    E_Weight: TDBNumberEditEh;
    procedure FormShow(Sender: TObject);
    procedure Bt_SaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CallingAction:TAction;
  end;

var
  AddActScaleTP_F: TAddActScaleTP_F;

implementation

uses dm_u, ScalingTP_U,main;

{$R *.dfm}

procedure TAddActScaleTP_F.Bt_SaveClick(Sender: TObject);
var
 Code,id_ts,id_tp,id_scale:Integer;
 f:Double;
begin
try
 try
    id_tp:=ScalingTP_F.Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('ID').AsInteger;
    id_ts:=ScalingTP_F.Grid_TS.DataSource.DataSet.FieldByName('ID').AsInteger;
    if DM.Qry.Active then DM.Qry.Close;
    DM.Qry.SQL.Clear;
    DM.Qry.SQL.Add(' select gen_id(gen_id_act_of_scales,1) from rdb$database ' );
    DM.Qry.Open;
    id_scale:=DM.Qry.Fields[0].AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into act_of_scales (id,n_act,brutto,places,packing,username) values ');
    DM.Sql.SQL.Add(' (:p0,:p1,:p2,:p3,:p4,:p5) ');
    DM.Sql.Params[0].AsInteger:=id_scale;
    DM.Sql.Params[1].asString:=E_Ticket.Text;
    DM.Sql.Params[2].AsVariant:=E_Weight.Value;
    DM.Sql.Params[3].AsInteger:=StrToInt(E_Places.Text);
    DM.Sql.Params[4].AsString :=E_Packing.Text;
    DM.Sql.Params[5].AsString :=E_User.Text;
    DM.Sql.ExecQuery;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add(' update parties set tp_move_cbx_code =:p0, id_scale=:p1 where id=:p2 ');
    DM.Sql.Params[0].AsInteger:=TP_SCALED;
    DM.Sql.Params[1].AsInteger:=id_scale;
    DM.Sql.Params[2].AsInteger:=id_tp;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    ModalResult:=mrOK;
    DM.Qry_TpToCbx.Close;
    DM.Qry_TpToCbx.Open;
    DM.Qry_TpToCbx.Locate('ID',id_tp,[]);
    DM.Qry_ActScales.Close;
    DM.Qry_ActScales.Open;
    DM.Qry_ActScales.Locate('ID',id_scale,[]);
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

procedure TAddActScaleTP_F.FormShow(Sender: TObject);
begin
    E_Ticket.Text:= ScalingTP_F.Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('N_PART').AsString;
    E_NTs.Text:=ScalingTP_F.Grid_TS.DataSource.DataSet.FieldByName('N_TS').AsString;
    E_NTS.ReadOnly:=True;
    E_Driver.Text:=ScalingTP_F.Grid_TS.DataSource.DataSet.FieldByName('FIO_DRIVER').AsString;
    E_Driver.ReadOnly:=True;
    E_User.Text:=User;
    E_User.ReadOnly:=True;
    E_Weight.Clear;
    E_Places.Clear;
    E_Weight.SetFocus;
end;

end.
