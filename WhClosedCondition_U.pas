unit WhClosedCondition_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, StdCtrls, Buttons,DB,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh, ComCtrls, ToolWin,
  PropFilerEh, PropStorageEh, Menus;

type
  TWhClosedCondition_F= class(TForm)
    Grid_Place: TDBGridEh;
    DBGridEh1: TDBGridEh;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    TlBtnAllTp: TToolButton;
    ToolBar2: TToolBar;
    ToolButton10: TToolButton;
    Btn_Refresh: TToolButton;
    Sb1: TStatusBar;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    PopupMenu2: TPopupMenu;
    N2: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Grid_PlaceDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Btn_RefreshClick(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    Total_Cells,Occupied_Cells,Free_Cells:Integer;
    procedure GetConditionClosedCbx;


  end;

var
  WhClosedCondition_F: TWhClosedCondition_F;

implementation

{$R *.dfm}
uses dm_u,main, Reports_U;
procedure TWhClosedCondition_F.Btn_RefreshClick(Sender: TObject);
begin
  DM.RefreshClosedCBX;
  GetConditionClosedCbx;
end;

procedure TWhClosedCondition_F.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.Qry_ClosedCbx.Active then DM.Qry_ClosedCbx.Close;
  if DM.Qry_WhClosedDetailed.Active then DM.Qry_WhClosedDetailed.Close;
end;

procedure TWhClosedCondition_F.FormShow(Sender: TObject);
begin
  if not DM.Qry_ClosedCbx.Active then DM.Qry_ClosedCbx.Open;
  if not DM.Qry_WhClosedDetailed.Active then DM.Qry_WhClosedDetailed.Open;
  GetConditionClosedCbx;
  Btn_RefreshClick(Btn_Refresh);
end;

procedure TWhClosedCondition_F.GetConditionClosedCbx;
begin
  Dm.Qry.Close;
  Dm.Qry.SQL.Clear;
  Dm.Qry.SQL.Add(' select count(*) from closed_cbx ');
  Dm.Qry.Open;
  Total_Cells:=DM.Qry.Fields[0].AsInteger;
  Dm.Qry.Close;
  Dm.Qry.SQL.Clear;
  Dm.Qry.SQL.Add(' select count(*) from closed_cbx where state_place = :p0 ');
  Dm.Qry.Params[0].AsInteger:= PLACE_OCCUPIED;
  Dm.Qry.Open;
  Occupied_Cells:=DM.Qry.Fields[0].AsInteger;
  Dm.Qry.Close;
  Dm.Qry.SQL.Clear;
  Dm.Qry.SQL.Add(' select count(*) from closed_cbx where state_place = :p0 ');
  Dm.Qry.Params[0].AsInteger:= PLACE_FREE;
  Dm.Qry.Open;
  Free_Cells:=DM.Qry.Fields[0].AsInteger;
  Sb1.Panels[0].Text:=format('Всего ячеек: %s; Свободно: %s; Занято: %s',
                  [IntToStr(Total_Cells),IntToStr(Free_Cells),IntTostr(Occupied_Cells)]);
end;

procedure TWhClosedCondition_F.Grid_PlaceDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if (Sender as TDbGridEh).DataSource.DataSet.FieldByName('STATE_PLACE').AsInteger  = PLACE_OCCUPIED then
 begin
 (Sender as TDbGridEh).Canvas.Font.Color := clBlack; // Font color
 (Sender as TDbGridEh).Canvas.Brush.Color := clRed; // Background color
 (Sender as TDbGridEh).Canvas.FillRect(Rect);
 end;
 (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TWhClosedCondition_F.N1Click(Sender: TObject);
var
  id_wh:Integer;
  mes:String;
begin
if DM.Qry_ClosedCbx.FieldByName('STATE_PLACE').AsInteger  <>  PLACE_OCCUPIED then Exit;
mes:='Освободить место №'+ DM.Qry_ClosedCbx.FieldByName('NUM_PLACE').AsString + ' ?';
if Application.MessageBox(PChar(mes),'Подтверждение',MB_ICONQUESTION+MB_YESNO) <> ID_YES then Exit;
try
 try
   id_wh:=DM.Qry_ClosedCbx.FieldByName('ID').AsInteger;
   if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction;
   Dm.SQL.Close;
   DM.SQL.SQL.Clear;
   DM.SQL.SQL.Add(' update closed_cbx set state_place = :p0 where id=:p1 ');
   DM.Sql.Params[0].AsInteger:=PLACE_FREE;
   DM.Sql.Params[1].AsInteger:=id_wh;
   DM.sql.ExecQuery;

   Dm.SQL.Close;
   DM.SQL.SQL.Clear;
   DM.SQL.SQL.Add(' delete from rel_tp_wh where id_wh=:p0 ');
   DM.Sql.Params[0].AsInteger:=id_wh;
   DM.sql.ExecQuery;
   DM.sql.Transaction.Commit;
   Dm.Qry_ClosedCbx.Close;
   Dm.Qry_ClosedCbx.Open;
   Dm.Qry_ClosedCbx.Locate('ID',id_wh,[]);
    except
      on E: EdatabaseError do
        begin
         DM.Sql.Transaction.Rollback;
         ShowMessage(E.Message);
        end;
   end;
 finally
   if DM.sql.Transaction.InTransaction then DM.sql.Transaction.Rollback;
 end;
end;

procedure TWhClosedCondition_F.N2Click(Sender: TObject);
var
  id:Integer;
begin
  if DBGridEh1.DataSource.DataSet.FieldByName('ID1').IsNull then Exit;
  id:=DBGridEh1.DataSource.DataSet.FieldByName('ID1').AsInteger;
        try
         try
            if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
            DM.Sql.Close;
            DM.Sql.SQL.Clear;
            DM.Sql.SQL.Add('delete from rel_tp_wh where id=:p0 ');
            DM.Sql.Params[0].AsInteger:=id;
            DM.Sql.ExecQuery;
            DM.Sql.Transaction.Commit;
            Btn_RefreshClick(Btn_Refresh);
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

procedure TWhClosedCondition_F.ToolButton8Click(Sender: TObject);
begin
 if Reports_F.Rep2.LoadFromFile('whclosedcondition.fr3') then Reports_F.Rep2.ShowReport(True);
end;

end.
