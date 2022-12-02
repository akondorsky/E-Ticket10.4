unit ScalingTP_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBGridEhGrouping, GridsEh, DBGridEh, StdCtrls, Mask,
  DBCtrlsEh, ComCtrls, ToolWin, Buttons, ActnList,
  PlatformDefaultStyleActnCtrls, ActnMan, CategoryButtons, Menus,myutils,DB,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh, PropFilerEh,
  PropStorageEh;

type
  TScalingTP_F = class(TForm)
    CategoryPanelGroup1: TCategoryPanelGroup;
    CP_TS: TCategoryPanel;
    CP_Acts: TCategoryPanel;
    Grid_ts: TDBGridEh;
    ToolBar1: TToolBar;
    Grid_Act: TDBGridEh;
    ToolBt_Add: TToolButton;
    ToolBt_Edit: TToolButton;
    ToolBt_Del: TToolButton;
    AM_ScalingTP: TActionManager;
    AddActScale_A: TAction;
    EditActTP_A: TAction;
    DelActTs_A: TAction;
    CP_TP: TCategoryPanel;
    Grid_Tp_ToCBX: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    E_Find: TButtonedEdit;
    TB_Main: TToolBar;
    ToolButton2: TToolButton;
    AllRec_A: TAction;
    Refresh_A: TAction;
    PopMn_Act: TPopupMenu;
    N111111: TMenuItem;
    N2222221: TMenuItem;
    AddActTS_A: TAction;
    AddActTP_A: TAction;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    PopMn_TP: TPopupMenu;
    LockAtOpenCbx_A: TAction;
    LockAtClosedCbx_A: TAction;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    A_ActPrint: TAction;
    A_EditActTs: TAction;
    A_DelActTP: TAction;
    A_TpAddActTs: TAction;
    N1: TMenuItem;
    BtnHelp: TBitBtn;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AddActScale_AExecute(Sender: TObject);
    procedure EditActTP_AExecute(Sender: TObject);
    procedure AddActScale_AUpdate(Sender: TObject);
    procedure EditActTP_AUpdate(Sender: TObject);
    procedure DelActTs_AUpdate(Sender: TObject);
    procedure E_FindRightButtonClick(Sender: TObject);
    procedure AllRec_AExecute(Sender: TObject);
    procedure Refresh_AExecute(Sender: TObject);
    procedure N111111Click(Sender: TObject);
    procedure N2222221Click(Sender: TObject);
    procedure AddActTS_AExecute(Sender: TObject);
    procedure AddActTP_AExecute(Sender: TObject);
    procedure AddActTS_AUpdate(Sender: TObject);
    procedure AddActTP_AUpdate(Sender: TObject);
    procedure E_FindKeyPress(Sender: TObject; var Key: Char);
    procedure Grid_Tp_ToCBXDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure LockTP_AExecute(Sender: TObject);
    procedure LockTP_AUpdate(Sender: TObject);
    procedure LockAtOpenCbx_AExecute(Sender: TObject);
    procedure LockAtClosedCbx_AExecute(Sender: TObject);
    procedure LockAtOpenCbx_AUpdate(Sender: TObject);
    procedure LockAtClosedCbx_AUpdate(Sender: TObject);
    procedure A_ActPrintExecute(Sender: TObject);
    procedure DelActTs_AExecute(Sender: TObject);
    procedure A_EditActTsExecute(Sender: TObject);
    procedure A_EditActTsUpdate(Sender: TObject);
    procedure A_DelActTPExecute(Sender: TObject);
    procedure A_DelActTPUpdate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure A_TpAddActTsExecute(Sender: TObject);
    procedure A_TpAddActTsUpdate(Sender: TObject);
    procedure BtnHelpClick(Sender: TObject);
  private
    { Private declarations }
    procedure Find_TP(S:String);
    procedure AllRec;
  public
    { Public declarations }
    procedure Refresh_TpToCbx;
    procedure Refresh_ActTP;
    procedure Refresh_ActTs;
    procedure Refresh_ts;
  end;

var
  ScalingTP_F: TScalingTP_F;

implementation

{$R *.dfm}
uses main,dm_u, AddActScaleTP_U,  EditActScaleTP_U, ParkCbx_U, ActScaleTs_U,
  ActScaleTsEdit_U;

procedure TScalingTP_F.AddActScale_AExecute(Sender: TObject);
begin
//
end;

procedure TScalingTP_F.AddActScale_AUpdate(Sender: TObject);
begin
if Grid_Tp_ToCBX.DataSource.DataSet.Active then
   begin
     if Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('ID').IsNull then
       (Sender as TAction).Enabled:=False
      else
      (Sender as TAction).Enabled:=True;
   end;

end;

procedure TScalingTP_F.AddActTP_AExecute(Sender: TObject);
begin
// AddActScaleTP_F.CallingAction:=(Sender as TAction);
 AddActScaleTP_F.ShowModal;
end;

procedure TScalingTP_F.AddActTP_AUpdate(Sender: TObject);
begin
if Grid_Tp_ToCBX.DataSource.DataSet.Active and Grid_Act.DataSource.DataSet.Active then
   begin

     if
        ( Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('ID').IsNull) or
        ( Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').asInteger <> TP_TO_CBX)         then
       (Sender as TAction).Enabled:=False
      else
      (Sender as TAction).Enabled:=True;
    end;
// (not Grid_Act.DataSource.DataSet.FieldByName('ID').IsNull) or
end;

procedure TScalingTP_F.AddActTS_AExecute(Sender: TObject);
var
 i,i1:Integer;
 Mes:String;
 x:Word;
 all_rec_ready:Boolean;
begin
{ //  данный блок пока не используем
 // проверим сколько получателей в КТ.
 // взвешивание ТС возможно лишь в случае 1Получатель -> 1 ТП
 DM.Qry.Close;
 DM.Qry.SQL.Clear;
 DM.Qry.SQL.Add('select count(*) from ticket_parts where id_ticket=:p0');
 DM.Qry.Params[0].AsInteger:=ScalingTP_F.Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('ID_TICKET').AsInteger;
 DM.Qry.Open;
 i:=DM.Qry.Fields[0].AsInteger;
 if i > 1  then
   begin
    Mes:='В КТ № '+
         IntToStr(ScalingTP_F.Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('N_TICKET').AsInteger)+
         ' существует '+IntToStr(i)+ ' части(ей). Составить Акт взвешивания ТС невозможно.';
    Application.MessageBox(PChar(Mes), 'Внимание!',MB_ICONSTOP+MB_OK );
    Exit;
   end;
 // проверим сколько партий в КТ.
 // взвешивание ТС возможно лишь в случае 1Получатель -> 1 ТП
 DM.Qry.Close;
 DM.Qry.SQL.Clear;
 DM.Qry.SQL.Add('select count(*) from parties where id_part=:p0');
 DM.Qry.Params[0].AsInteger:=ScalingTP_F.Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('ID_PART').AsInteger;
 DM.Qry.Open;
 i:=DM.Qry.Fields[0].AsInteger;
 if i > 1  then
   begin
     Mes:='В КТ № '+
         IntToStr(ScalingTP_F.Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('N_TICKET').AsInteger)+
         ' существует '+IntToStr(i)+ ' товарные(х) партии(й). Составить Акт взвешивания ТС невозможно.';
    Application.MessageBox(PChar(Mes), 'Внимание!',MB_ICONSTOP+MB_OK );
    Exit;
   end;}

 //данный блок пока не используем
 // проверим, все ли партии КТ направлены на взвешивание
{ DM.Qry.Close;
 DM.Qry.SQL.Clear;
 DM.Qry.SQL.Add('select count(*) from parties where tp_move_cbx_code =:p0 and id_ticket =:p1  ');
 DM.Qry.Params[0].AsInteger := TP_TO_CBX;
 DM.Qry.Params[1].AsInteger:=ScalingTP_F.Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('ID_TICKET').AsInteger;
 DM.Qry.Open;
 i:=DM.Qry.Fields[0].AsInteger;
 DM.Qry.Close;
 DM.Qry.SQL.Clear;
 DM.Qry.SQL.Add('select count(*) from parties where id_ticket =:p1  ');
 DM.Qry.Params[0].AsInteger:=ScalingTP_F.Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('ID_TICKET').AsInteger;
 DM.Qry.Open;
 i1:=DM.Qry.Fields[0].AsInteger;
 if i1 <> i  then
   begin
    Application.MessageBox('В данном КТ не все партии направлены на хранение. Составить Акт взвешивания ТС невозможно.', 'Внимание!',MB_ICONSTOP+MB_OK );
    Exit;
   end;
 // проверим, если хоть одна взвешенная партия в КТ
 DM.Qry.Close;
 DM.Qry.SQL.Clear;
 DM.Qry.SQL.Add('select count(*) from parties where tp_move_cbx_code >= :p0 and id_ticket =:p1 ');
 DM.Qry.Params[0].AsInteger := TP_SCALED;
 DM.Qry.Params[1].AsInteger:=ScalingTP_F.Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('ID_TICKET').AsInteger;
 DM.Qry.Open;
 i:=DM.Qry.Fields[0].AsInteger;
 if i > 0  then
   begin
    Application.MessageBox('В данном КТ уже есть взвешенные партии. Составить Акт взвешивания ТС невозможно.', 'Внимание!',MB_ICONSTOP+MB_OK );
    Exit;
   end; }
 //конец блока

 //создаем акты взвешивания ТС для выбранных партий
 // проверим, выделены ли партии
try
  Grid_Tp_ToCBX.DataSource.DataSet.DisableControls;
  with Grid_Tp_ToCBX.SelectedRows do
     if Count = 0 then
         begin
            Application.MessageBox('Не выбрано ни одной ТП.','Внимание!',mb_iconwarning+mb_ok );
            Exit;
          end;   //end with
    all_rec_ready:=True;
    with ScalingTP_F.Grid_Tp_ToCBX.SelectedRows do
      begin
       for x := 0 to Count-1 do
        begin
          if IndexOf(Items[x]) > -1 then
            begin
              ScalingTP_F.Grid_Tp_ToCBX.Datasource.Dataset.Bookmark := Items[x];
              if ScalingTP_F.Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger <> TP_TO_CBX then
                  all_rec_ready:=False;
            end;  //end if
        end;   //end for
    end;  //end with
    if not all_rec_ready  then
      begin
        Application.MessageBox('Не все выделенные партии направлены на СВХ.','Внимание',MB_ICONSTOP+mb_Ok);
        Exit;
      end;
//конец обработки партий
  ActScaleTs_F1.ShowModal;
finally
  Grid_Tp_ToCBX.DataSource.DataSet.EnableControls;
end;
end;

procedure TScalingTP_F.AddActTS_AUpdate(Sender: TObject);
begin
if Grid_Tp_ToCBX.DataSource.DataSet.Active and Grid_Act.DataSource.DataSet.Active then
   begin

     if
        ( Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('ID').IsNull) or
        ( Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').asInteger <> TP_TO_CBX)         then
       (Sender as TAction).Enabled:=False
      else
      (Sender as TAction).Enabled:=True;
    end;
//(not Grid_Act.DataSource.DataSet.FieldByName('ID').IsNull) or
{if Grid_Tp_ToCBX.DataSource.DataSet.Active and Grid_ActTs.DataSource.DataSet.Active then
   begin
     if (not Grid_ActTs.DataSource.DataSet.FieldByName('ID').IsNull) or
        (Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('ID').IsNull) or
        ( Grid_ts.DataSource.DataSet.FieldByName('ID').IsNull)   then
       (Sender as TAction).Enabled:=False
      else
      (Sender as TAction).Enabled:=True;
   end;}
end;

procedure TScalingTP_F.AllRec;
const
SQL_TP_TRAILER:String =
'order by a.id_part,a.npp ';
var
 SQL_TP_BODY:String ;
 r:Integer;
begin
 r:=Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('ID').AsInteger;
 SQL_TP_BODY:=
'select a.*,b.name as goods, d.firm_name as shipper,e.n_ticket, '       +
format('e.n_ticket||%s/%s||f.npp||%s/%s||a.npp as n_part,g.zayv ',[#39,#39,#39,#39]) +
'from PARTIES A left join goods_cat b on a.goods_cat =b.id ' +
'left join f_otprav d  on a.id_shipper=d.id '                +
'left join ticket e on a.id_ticket = e.id '                  +
'left join ticket_parts f on a.id_part = f.id '              +
'left join reg_ti g on f.id_owner=g.id '                     +
'where a.tp_move_cbx_code is not null '                      ;
 if DM.Qry_TpToCbx.Active then DM.Qry_TpToCbx.Close;
 DM.Qry_TpToCbx.SQL.Clear;
 DM.Qry_TpToCbx.SQL.Add(SQl_TP_BODY+SQL_TP_TRAILER) ;
 DM.Qry_TpToCbx.Open;
 DM.Qry_TpToCbx.Locate('ID',r,[]);
end;

procedure TScalingTP_F.AllRec_AExecute(Sender: TObject);
begin
  AllRec;
end;

procedure TScalingTP_F.A_ActPrintExecute(Sender: TObject);
begin
//
end;

procedure TScalingTP_F.A_DelActTPExecute(Sender: TObject);
var
  id_rec:Integer;
begin
  if Application.MessageBox('Удалить Акт взвешивания?','Удаление',MB_ICONQUESTION+MB_YESNO) <>  ID_YES then Exit;
  id_rec:=Grid_Act.DataSource.DataSet.FieldByName('ID').AsInteger;
try
 try
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('delete from act_of_scales where id=:p0 ');
    DM.Sql.Params[0].AsInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update parties set tp_move_cbx_code=:p0 where id_scale=:p1 ');
    DM.Sql.Params[0].AsInteger:=TP_TO_CBX;
    DM.Sql.Params[1].AsInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    Refresh_A.Execute;
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

procedure TScalingTP_F.A_DelActTPUpdate(Sender: TObject);
begin
 if (Grid_Tp_ToCBX.DataSource.DataSet.Active) and (Grid_Act.DataSource.DataSet.Active) then
   begin
     if (Grid_Act.DataSource.DataSet.FieldByName('ID').IsNull) or
        (Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger <> TP_SCALED )  then
      (sender as TAction).Enabled:=False
      else
      (sender as TAction).Enabled:=True;
   end;

end;

procedure TScalingTP_F.A_EditActTsExecute(Sender: TObject);
begin
 ActScaleTsEdit_F.ShowModal;
end;

procedure TScalingTP_F.A_EditActTsUpdate(Sender: TObject);
begin
 if Grid_Tp_ToCBX.DataSource.DataSet.Active and Grid_Act.DataSource.DataSet.Active then
   begin
     if (Grid_Act.DataSource.DataSet.FieldByName('ID').IsNull) or
        (Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger <> TP_SCALED ) then
      (sender as TAction).Enabled:=False
      else
      (sender as TAction).Enabled:=True;
   end;

end;

procedure TScalingTP_F.A_TpAddActTsExecute(Sender: TObject);
var
  id_rec,id_scale:Integer;
  Mes:String;
begin
  Mes:=format('Включить текущую ТП № %s в Акт взвешивания ТС?',
        [Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('N_PART').AsString]);
  if Application.MessageBox(PChar(Mes),'Внимание',MB_ICONQUESTION+MB_YESNO) <>  ID_YES then Exit;
  id_rec:=Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('ID').AsInteger;
  id_scale:=Grid_Act.DataSource.DataSet.FieldByName('ID').AsInteger;
try
 try
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update parties set tp_move_cbx_code=:p0,id_scale=:p1 where id=:p2 ');
    DM.Sql.Params[0].AsInteger:=TP_SCALED;
    DM.Sql.Params[1].AsInteger:=id_scale;
    DM.Sql.Params[2].AsInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    Refresh_A.Execute;
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

procedure TScalingTP_F.A_TpAddActTsUpdate(Sender: TObject);
begin
 if (Grid_Tp_ToCBX.DataSource.DataSet.Active) and (Grid_Act.DataSource.DataSet.Active) then
   begin
     if (Grid_Act.DataSource.DataSet.FieldByName('ID').IsNull) or
        (Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger <> TP_TO_CBX )  then
      (sender as TAction).Enabled:=False
      else
      (sender as TAction).Enabled:=True;
   end;
end;

procedure TScalingTP_F.BtnHelpClick(Sender: TObject);
begin
  Main_F.BtnHelpClick(Main_F.BtnHelp);
end;

procedure TScalingTP_F.DelActTs_AExecute(Sender: TObject);
var
  id_rec,id_ticket:Integer;
begin
  if Application.MessageBox('Удалить Акт взвешивания?','Удаление',MB_ICONQUESTION+MB_YESNO) <>  ID_YES then Exit;
  id_rec:=Grid_Act.DataSource.DataSet.FieldByName('ID').AsInteger;
  id_ticket:=Grid_ts.DataSource.DataSet.FieldByName('ID_TICKET').AsInteger;
try
 try
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('delete from act_of_scales_ts where id=:p0 ');
    DM.Sql.Params[0].AsInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update parties set tp_move_cbx_code=:p0 where id_scale=:p1 ');
    DM.Sql.Params[0].AsInteger:=TP_TO_CBX;
    DM.Sql.Params[1].AsInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    Refresh_A.Execute;
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

procedure TScalingTP_F.DelActTs_AUpdate(Sender: TObject);
begin
 if (Grid_Tp_ToCBX.DataSource.DataSet.Active) and (Grid_Act.DataSource.DataSet.Active) then
   begin
     if (Grid_Act.DataSource.DataSet.FieldByName('ID').IsNull) or
        (Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger <> TP_SCALED )  then
      (sender as TAction).Enabled:=False
      else
      (sender as TAction).Enabled:=True;
   end;
end;

procedure TScalingTP_F.EditActTP_AExecute(Sender: TObject);
begin
 if Grid_Act.DataSource.DataSet.FieldByName('ID_TS').IsNull then
    EditActScaleTP_F.ShowModal
  else
    ActScaleTsEdit_F.ShowModal;
end;

procedure TScalingTP_F.EditActTP_AUpdate(Sender: TObject);
begin
 if Grid_Tp_ToCBX.DataSource.DataSet.Active and Grid_Act.DataSource.DataSet.Active then
   begin
     if (Grid_Act.DataSource.DataSet.FieldByName('ID').IsNull) or
        (Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger <> TP_SCALED ) then
      (sender as TAction).Enabled:=False
      else
      (sender as TAction).Enabled:=True;
   end;
end;

procedure TScalingTP_F.E_FindKeyPress(Sender: TObject; var Key: Char);
begin
 if Length(Trim(E_Find.Text)) = 0 then Exit;
 if key = #13  then     Find_TP(E_Find.Text);
end;

procedure TScalingTP_F.E_FindRightButtonClick(Sender: TObject);
begin
  if Length(Trim(E_Find.Text)) = 0 then Exit;
  Find_TP(E_Find.Text);
end;

procedure TScalingTP_F.Find_TP(S: String);
//найти ТP
const
SQL_TP_TRAILER:String =
'order by a.id_part,a.npp ';
var
 SQL_TP_BODY:String ;
 SQL_TP_SEARCH:String ;
begin
 SQL_TP_BODY:=
'select a.*,b.name as goods, d.firm_name as shipper,e.n_ticket, '       +
format('e.n_ticket||%s/%s||f.npp||%s/%s||a.npp as n_part,g.zayv ',[#39,#39,#39,#39]) +
'from PARTIES A left join goods_cat b on a.goods_cat =b.id ' +
'left join f_otprav d  on a.id_shipper=d.id '                +
'left join ticket e on a.id_ticket = e.id '                  +
'left join ticket_parts f on a.id_part = f.id '              +
'left join reg_ti g on f.id_owner=g.id '                     +
'where a.tp_move_cbx_code is not null '                      ;
SQL_TP_SEARCH:=' and e.n_ticket =:p0 ';
 if DM.Qry_TpToCbx.Active then DM.Qry_TpToCbx.Close;
 DM.Qry_TpToCbx.SQL.Clear;
 DM.Qry_TpToCbx.SQL.Add(SQl_TP_BODY+SQl_TP_SEARCH + SQL_TP_TRAILER) ;
 DM.Qry_TpToCbx.Params[0].AsInteger:=StrToInt(S);
 DM.Qry_TpToCbx.Open;
end;

procedure TScalingTP_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{ if not DM.Qry_TpToCbx.Active then DM.Qry_TpToCbx.Open;
 if not DM.Qry_ScaleTS.Active then DM.Qry_ScaleTS.Open;
 if not DM.Qry_ActScales.Active then DM.Qry_ActScales.Open;
 if not DM.Qry_ActOfScalesTs.Active then DM.Qry_ActOfScalesTs.Open;}
end;

procedure TScalingTP_F.FormPaint(Sender: TObject);
begin
  CP_TP.Height:=Panel1.Height - CP_TS.Height - CP_Acts.Height - 5;
end;

procedure TScalingTP_F.FormShow(Sender: TObject);
begin
 if not DM.Qry_TpToCbx.Active then DM.Qry_TpToCbx.Open;
 if not DM.Qry_ScaleTS.Active then DM.Qry_ScaleTS.Open;
 if not DM.Qry_ActScales.Active then DM.Qry_ActScales.Open;
 //if not DM.Qry_ActOfScalesTs.Active then DM.Qry_ActOfScalesTs.Open;
 E_Find.SetFocus;
end;

procedure TScalingTP_F.Grid_Tp_ToCBXDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if (Sender as TDBgridEh).SelectedRows.CurrentRowSelected then
 begin
 (Sender as TDBgridEh).Canvas.Font.Color := clYellow; // Font color
 (Sender as TDBgridEh).Canvas.Brush.Color := clBlue; // Background color
 (Sender as TDBgridEh).Canvas.FillRect(Rect);
 end;
 (Sender as TDBgridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);end;

procedure TScalingTP_F.LockAtClosedCbx_AExecute(Sender: TObject);
begin
//
end;

procedure TScalingTP_F.LockAtClosedCbx_AUpdate(Sender: TObject);
begin
if Grid_Tp_ToCBX.DataSource.DataSet.Active then
   begin
     if Grid_Tp_ToCBX .DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').asInteger=TP_TO_CBX then
      (Sender as TAction).Enabled:=True
      else
      (Sender as TAction).Enabled:=False;
   end;

end;

procedure TScalingTP_F.LockAtOpenCbx_AExecute(Sender: TObject);
var
 id_ts,id_tp,id_ticket,id_part:Integer;
 s:String;
begin
 if FormParkCBX.ShowModal <> mrOk then Exit;
 try
    id_ts:=Grid_ts.DataSource.DataSet.FieldByName('ID').AsInteger;
    id_ticket:=Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('ID_TICKET').AsInteger;
    id_tp:=Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('ID').AsInteger;
    id_part:=Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('ID_PART').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    //обновляем TП cставим код размещения на складе
    DM.Sql.SQL.Add('update parties set tp_move_cbx_code=:p0  ');
    DM.Sql.SQL.Add(' where id=:p1 ');
    DM.Sql.Params[0].AsInteger:=TP_LOCKED;
    DM.Sql.Params[1].asInteger:=id_tp;
    DM.Sql.ExecQuery;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    //обновляем состояние парковки СВХ
    DM.Sql.SQL.Add('update park_cbx set cond_park=:p0,id_ts=:p1,id_ticket=:p2 ');
    DM.Sql.SQL.Add(' where id=:p3 ');
    DM.Sql.Params[0].AsInteger:=PLACE_OCCUPIED;
    DM.Sql.Params[1].asInteger:=id_ts;
    DM.Sql.Params[2].AsInteger:=id_ticket;
    DM.Sql.Params[3].asInteger:=FormParkCbx.PARKID;
    DM.Sql.ExecQuery;
    //вставляем запись о хранении ТП складе
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into warehouse (id_tp,id_part,id_ticket,num_place,wh_type) ');
    DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4) ');
    DM.Sql.Params[0].asInteger:=id_tp;
    DM.Sql.Params[1].AsInteger:=id_part;
    DM.Sql.Params[2].AsInteger:=id_ticket;
    DM.Sql.Params[3].AsString:=FormParkCbx.PARKNUMBER ;
    DM.Sql.Params[4].AsString:=OCBX;
    DM.Sql.ExecQuery;
    //добавим запись в журнал о помещении на склад
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into wh_log (action,username,id_tp,wh_type,n_place) ');
    DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4) ');
    DM.Sql.Params[0].AsString:=ACTION_TP_LOCKED;
    DM.Sql.Params[1].AsString:=User;
    DM.Sql.Params[2].AsInteger:=id_tp;
    DM.Sql.Params[3].AsString:=OCBX;
    DM.Sql.Params[4].AsString:=FormParkCbx.PARKNUMBER;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    s:='ТП № '+Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('N_PART').AsString+ ' размещена на хранение.';
    Application.MessageBox(PChar(s),'Подтверждение',MB_OK+MB_ICONINFORMATION);
    Refresh_A.Execute;
  except
    on E: EdatabaseError do
      begin
       DM.Sql.Transaction.Rollback;
       ShowMessage(E.Message);
      end;
  end;
end;

procedure TScalingTP_F.LockAtOpenCbx_AUpdate(Sender: TObject);
begin
if Grid_Tp_ToCBX.DataSource.DataSet.Active then
   begin
     if Grid_Tp_ToCBX .DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').asInteger=TP_TO_CBX then
      (Sender as TAction).Enabled:=True
      else
      (Sender as TAction).Enabled:=False;
   end;

end;

procedure TScalingTP_F.LockTP_AExecute(Sender: TObject);
begin
//
end;

procedure TScalingTP_F.LockTP_AUpdate(Sender: TObject);
begin
if Grid_Tp_ToCBX.DataSource.DataSet.Active then
   begin
     if (Grid_Tp_ToCBX .DataSource.DataSet.FieldByName('ID_SCALE').IsNull) or
        (Grid_Tp_ToCBX .DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger = TP_LOCKED)
      then
      (Sender as TAction).Enabled:=False
      else
      (Sender as TAction).Enabled:=True;
   end;

end;

procedure TScalingTP_F.N111111Click(Sender: TObject);
begin
//
end;

procedure TScalingTP_F.N2222221Click(Sender: TObject);
begin
//
end;

procedure TScalingTP_F.Refresh_ActTP;
begin
  DM.Refresh_ActTp;
end;

procedure TScalingTP_F.Refresh_ActTs;
var
 r:Integer;
begin
{  try
    r:=Grid_ActTs.DataSource.DataSet.FieldByName('ID').AsInteger;
    Grid_ActTs.DataSource.DataSet.DisableControls;
    Grid_ActTs.DataSource.DataSet.Close;
    Grid_ActTs.DataSource.DataSet.Open;
    Grid_ActTs.DataSource.DataSet.Locate('ID',r,[]);
  finally
    Grid_ActTs.DataSource.DataSet.EnableControls;
  end;}
end;

procedure TScalingTP_F.Refresh_AExecute(Sender: TObject);
begin
 Refresh_TpToCbx;
 Refresh_ActTP;
// Refresh_ActTs;
 Refresh_Ts;
end;

procedure TScalingTP_F.Refresh_TpToCbx;
begin
  DM.Refresh_TpToCbx;;
end;

procedure TScalingTP_F.Refresh_ts;
begin
  DM.Refresh_ScalingTs;
end;

end.


