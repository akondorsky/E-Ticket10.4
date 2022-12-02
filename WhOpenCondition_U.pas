unit WhOpenCondition_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, StdCtrls, Buttons,DB,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh, ComCtrls, ToolWin,
  PropFilerEh, PropStorageEh, ActnList, PlatformDefaultStyleActnCtrls, ActnMan,
  Menus;

type
  TWhOpenCondition_F= class(TForm)
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
    ActionManager1: TActionManager;
    A_PlaceFree: TAction;
    N1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Grid_PlaceDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Btn_RefreshClick(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure A_PlaceFreeExecute(Sender: TObject);
    procedure A_PlaceFreeUpdate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    Total_Cells,Occupied_Cells,Free_Cells:Integer;
    procedure GetConditionOpenCbx;
  end;

var
  WhOpenCondition_F: TWhOpenCondition_F;

implementation

{$R *.dfm}
uses dm_u,main, Reports_U;

procedure TWhOpenCondition_F.GetConditionOpenCbx;
begin
  Dm.Qry.Close;
  Dm.Qry.SQL.Clear;
  Dm.Qry.SQL.Add(' select count(*) from park_cbx ');
  Dm.Qry.Open;
  Total_Cells:=DM.Qry.Fields[0].AsInteger;
  Dm.Qry.Close;
  Dm.Qry.SQL.Clear;
  Dm.Qry.SQL.Add(' select count(*) from park_cbx where cond_park = :p0 ');
  Dm.Qry.Params[0].AsInteger:= PLACE_OCCUPIED;
  Dm.Qry.Open;
  Occupied_Cells:=DM.Qry.Fields[0].AsInteger;
  Dm.Qry.Close;
  Dm.Qry.SQL.Clear;
  Dm.Qry.SQL.Add(' select count(*) from park_cbx where cond_park = :p0 ');
  Dm.Qry.Params[0].AsInteger:= PLACE_FREE;
  Dm.Qry.Open;
  Free_Cells:=DM.Qry.Fields[0].AsInteger;
  Sb1.Panels[0].Text:=format('Всего парковочных мест: %s; Свободно: %s; Занято: %s',
                  [IntToStr(Total_Cells),IntToStr(Free_Cells),IntTostr(Occupied_Cells)]);
end;

procedure TWhOpenCondition_F.A_PlaceFreeExecute(Sender: TObject);
var
  id_wh:Integer;
  mes:String;
begin
if DM.Qry_OpenCbx.FieldByName('COND_PARK').AsInteger  <>  PLACE_OCCUPIED then Exit;
mes:='Освободить место №'+ DM.Qry_OpenCbx.FieldByName('NUM_PARK').AsString + ' ?';
if Application.MessageBox(PChar(mes),'Подтверждение',MB_ICONQUESTION+MB_YESNO) <> ID_YES then Exit;
try
 try
   id_wh:=DM.Qry_OpenCbx.FieldByName('ID').AsInteger;
   if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction;
   Dm.SQL.Close;
   DM.SQL.SQL.Clear;
   DM.SQL.SQL.Add(' update park_cbx set cond_park = :p0 where id=:p1 ');
   DM.Sql.Params[0].AsInteger:=PLACE_FREE;
   DM.Sql.Params[1].AsInteger:=id_wh;
   DM.sql.ExecQuery;

   Dm.SQL.Close;
   DM.SQL.SQL.Clear;
   DM.SQL.SQL.Add(' delete from rel_tp_wh_open where id_wh=:p0 ');
   DM.Sql.Params[0].AsInteger:=id_wh;
   DM.sql.ExecQuery;
   DM.sql.Transaction.Commit;
   Dm.Qry_OpenCbx.Close;
   Dm.Qry_OpenCbx.Open;
   Dm.Qry_OpenCbx.Locate('ID',id_wh,[]);
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

procedure TWhOpenCondition_F.A_PlaceFreeUpdate(Sender: TObject);
begin
 if  ((Role = 'SYSADMIN') or (role='WHOPERATOR')) then  (Sender as TAction).Enabled:=True
       else
         (Sender as TAction).Enabled:=False;
end;

procedure TWhOpenCondition_F.Btn_RefreshClick(Sender: TObject);
begin
  DM.RefreshOpenCBX;
  GetConditionOpenCbx
end;

procedure TWhOpenCondition_F.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.Qry_OpenCbx.Active then DM.Qry_OpenCbx.Close;
  if DM.Qry_WhOpenDetailed.Active then DM.Qry_WhOpenDetailed.Close;
end;

procedure TWhOpenCondition_F.FormShow(Sender: TObject);
begin
  if not DM.Qry_OpenCbx.Active then DM.Qry_OpenCbx.Open;
  if not DM.Qry_WhOpenDetailed.Active then DM.Qry_WhOpenDetailed.Open;
  GetConditionOpenCbx  ;
  Btn_RefreshClick(Btn_Refresh);
end;

procedure TWhOpenCondition_F.Grid_PlaceDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if (Sender as TDbGridEh).DataSource.DataSet.FieldByName('COND_PARK').AsInteger  = PLACE_OCCUPIED then
 begin
 (Sender as TDbGridEh).Canvas.Font.Color := clBlack; // Font color
 (Sender as TDbGridEh).Canvas.Brush.Color := clRed; // Background color
 (Sender as TDbGridEh).Canvas.FillRect(Rect);
 end;
 (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TWhOpenCondition_F.ToolButton8Click(Sender: TObject);
begin
  if Reports_F.Rep2.LoadFromFile('whopencondition.fr3') then Reports_F.Rep2.ShowReport(True);
end;

end.
