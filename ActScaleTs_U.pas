unit ActScaleTs_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrlsEh,DB;

type
  TActScaleTs_F1 = class(TForm)
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
  ActScaleTs_F1: TActScaleTs_F1;

implementation

uses ScalingTP_U,DM_U,main;

{$R *.dfm}

procedure TActScaleTs_F1.Bt_SaveClick(Sender: TObject);
var
 Code,id_ts,id_tp,id_ticket,new_rec:Integer;
 f:Double;
 n_act:String;
 TempBookmark:TBookMark;
 x:word;
begin
try
 try
    DM.Qry.Close;
    DM.Qry.SQL.Clear;
    DM.Qry.SQL.Add(' select gen_id(gen_id_act_of_scales,1) from rdb$database ');
    DM.Qry.Open;
    new_rec:=DM.Qry.Fields[0].AsInteger;
    DM.Qry.Close;
    id_tp:=ScalingTP_F.Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('ID').AsInteger;
    id_ts:=ScalingTP_F.Grid_TS.DataSource.DataSet.FieldByName('ID').AsInteger;
    id_ticket:=ScalingTP_F.Grid_TS.DataSource.DataSet.FieldByName('ID_TICKET').AsInteger;
    n_act:=ScalingTP_F.Grid_TS.DataSource.DataSet.FieldByName('N_TICKET').AsString;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into act_of_scales (id_ts,n_act,brutto,places,username,id,packing) values ');
    DM.Sql.SQL.Add(' (:p0,:p1,:p2,:p3,:p4,:p5,:p6) ');
    DM.Sql.Params[0].AsInteger:=id_ts;
    DM.Sql.Params[1].asString:=n_act;
    DM.Sql.Params[2].AsVariant:=E_Weight.Value;
    DM.Sql.Params[3].AsInteger:=1;
    DM.Sql.Params[4].AsString :=User;
    DM.Sql.Params[5].AsInteger:=new_rec;
    DM.Sql.Params[6].AsString :='ря';
    DM.Sql.ExecQuery;
    TempBookmark :=ScalingTP_F.Grid_Tp_ToCBX.Datasource.Dataset.GetBookmark;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add(' update parties set tp_move_cbx_code =:p0,id_scale =:p1 where id=:p2 ');
     with ScalingTP_F.Grid_Tp_ToCBX.SelectedRows do
      begin
       for x := 0 to Count-1 do
        begin
          if IndexOf(Items[x]) > -1 then
            begin
              ScalingTP_F.Grid_Tp_ToCBX.Datasource.Dataset.Bookmark := Items[x];
              DM.Sql.Params[0].AsInteger:=TP_SCALED;
              DM.Sql.Params[1].AsInteger:=new_rec;
              DM.Sql.Params[2].AsInteger:=ScalingTP_F.Grid_Tp_ToCBX.Datasource.Dataset.FieldByName('ID').AsInteger;
              DM.SQL.ExecQuery;
            end;  //end if
        end;   //end for
     end;  //end with
    DM.Sql.Transaction.Commit;
    ModalResult:=mrOk;
    DM.Qry_TpToCbx.Close;
    DM.Qry_TpToCbx.Open;
    DM.Qry_TpToCbx.Locate('ID',id_tp,[]);
    DM.Qry_ActOfScalesTs.Close;
    DM.Qry_ActOfScalesTs.Open;
  except
    on E: EdatabaseError do
      begin
       DM.Sql.Transaction.Rollback;
       ShowMessage(E.Message);
      end;
  end;
finally
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
  if TempBookmark <> Nil then
    begin
      ScalingTP_F.Grid_Tp_ToCBX.DataSource.DataSet.GotoBookmark(TempBookmark);
      ScalingTP_F.Grid_Tp_ToCBX.DataSource.DataSet.FreeBookmark(TempBookmark);
      ScalingTP_F.Grid_Tp_ToCBX.SelectedRows.Clear;
    end;
end;
end;

procedure TActScaleTs_F1.FormShow(Sender: TObject);
begin
    E_Ticket.Text:= ScalingTP_F.Grid_ts.DataSource.DataSet.FieldByName('N_TICKET').AsString;
    E_NTs.Text:=ScalingTP_F.Grid_ts.DataSource.DataSet.FieldByName('N_TS').AsString;
    E_NTrailer.Text:=ScalingTP_F.Grid_ts.DataSource.DataSet.FieldByName('N_TRAILER').AsString;
    E_Weight.Clear;
    E_Weight.SetFocus;
end;

end.
