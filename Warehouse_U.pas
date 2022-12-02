unit Warehouse_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ToolWin,
  ComCtrls,DB, ActnList, PlatformDefaultStyleActnCtrls, ActnMan,MyUtils, Menus,
  Mask, Buttons, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh,
  ImgList, PropFilerEh, PropStorageEh,IBX.IbSql,frxClass,IBX.IbQuery,
  System.ImageList, System.Actions, EhLibVCL;

type
  TNewThread = class(TThread)
private
{ Private declarations }
protected
  procedure Execute; override;
end;

type
  TWarehouse_F = class(TForm)
    ToolBar1: TToolBar;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Grid_WH: TDBGridEh;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Grid_ActIn: TDBGridEh;
    AM_Wh: TActionManager;
    PrintActWhIn_A: TAction;
    NewWhInActTP_A: TAction;
    DelWhInAct_A: TAction;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    LockTp_A: TAction;
    ToolButton5: TToolButton;
    Grid_ActOut: TDBGridEh;
    NewDo1_A: TAction;
    PopMn_TP: TPopupMenu;
    N11: TMenuItem;
    ToolButton6: TToolButton;
    A_ActOutAdd: TAction;
    PopMn_ActOut: TPopupMenu;
    N1: TMenuItem;
    A_WhOutEdit: TAction;
    N2: TMenuItem;
    A_WhOutDel: TAction;
    N3: TMenuItem;
    N4: TMenuItem;
    E_Nomer: TMaskEdit;
    FindBtn: TSpeedButton;
    PopMn_DutyMarks: TPopupMenu;
    N5: TMenuItem;
    A_GoodsOut: TAction;
    N6: TMenuItem;
    TlBtnAllTp: TToolButton;
    A_WhTpAllRec: TAction;
    Rg_F: TRadioGroup;
    Label4: TLabel;
    NewWhInActTS_A: TAction;
    PopMn_WhActIn: TPopupMenu;
    N7: TMenuItem;
    N8: TMenuItem;
    ImageList1: TImageList;
    Shape1: TShape;
    ImageList2: TImageList;
    RegPropStorageManEh1: TRegPropStorageManEh;
    PropStorageEh1: TPropStorageEh;
    Splitter2: TSplitter;
    A_PrintActOut: TAction;
    A_Tp_Partial_Write_Off: TAction;
    A_TP_Full_Write_Off: TAction;
    N9: TMenuItem;
    N10: TMenuItem;
    N12: TMenuItem;
    BtnHelp: TBitBtn;
    ToolButton7: TToolButton;
    A_ParkZtkShow: TAction;
    SpeedButton1: TSpeedButton;
    A_ToCbxSet: TAction;
    A_ToCbxClear: TAction;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    ImageList3: TImageList;
    PopMn_Svid: TPopupMenu;
    N17: TMenuItem;
    Timer1: TTimer;
    N18: TMenuItem;
    A_InspectionOut: TAction;
    A_Inspection_Stop: TAction;
    Item_InspOut: TMenuItem;
    Item_InspStop: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    A_InspLog_Svid: TAction;
    A_InspLog_All: TAction;
    ImageList4: TImageList;
    A_EditWhActIn: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrintActWhIn_AExecute(Sender: TObject);
    procedure NewWhInActTP_AExecute(Sender: TObject);
    procedure DelWhInAct_AExecute(Sender: TObject);
    procedure Grid_ActInDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure LockTp_AExecute(Sender: TObject);
    procedure LockTp_AUpdate(Sender: TObject);
    procedure NewWhInActTP_AUpdate(Sender: TObject);
    procedure DelWhInAct_AUpdate(Sender: TObject);
    procedure PrintActWhIn_AUpdate(Sender: TObject);
    procedure NewDo1_AExecute(Sender: TObject);
    procedure NewDo1_AUpdate(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure A_ActOutAddExecute(Sender: TObject);
    procedure A_ActOutAddUpdate(Sender: TObject);
    procedure A_WhOutEditExecute(Sender: TObject);
    procedure A_WhOutEditUpdate(Sender: TObject);
    procedure A_WhOutDelExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FindBtnClick(Sender: TObject);
    procedure A_GoodsOutExecute(Sender: TObject);
    procedure A_GoodsOutUpdate(Sender: TObject);
    procedure A_WhTpAllRecExecute(Sender: TObject);
    procedure E_NomerKeyPress(Sender: TObject; var Key: Char);
    procedure Rg_FClick(Sender: TObject);
    procedure Grid_WHDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure NewWhInActTS_AExecute(Sender: TObject);
    procedure NewWhInActTS_AUpdate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure Splitter2Moved(Sender: TObject);
    procedure Grid_ActInDblClick(Sender: TObject);
    procedure A_PrintActOutExecute(Sender: TObject);
    procedure A_PrintActOutUpdate(Sender: TObject);
    procedure A_WhOutDelUpdate(Sender: TObject);
    procedure A_Tp_Partial_Write_OffExecute(Sender: TObject);
    procedure A_TP_Full_Write_OffExecute(Sender: TObject);
    procedure BtnHelpClick(Sender: TObject);
    procedure A_ParkZtkShowExecute(Sender: TObject);
    procedure A_ToCbxSetExecute(Sender: TObject);
    procedure A_ToCbxClearExecute(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure A_InspectionOutExecute(Sender: TObject);
    procedure A_Inspection_StopExecute(Sender: TObject);
    procedure A_InspectionOutUpdate(Sender: TObject);
    procedure A_Inspection_StopUpdate(Sender: TObject);
    procedure A_InspLog_AllExecute(Sender: TObject);
    procedure A_InspLog_SvidExecute(Sender: TObject);
    procedure A_EditWhActInExecute(Sender: TObject);
  private
    { Private declarations }
    Id_NewActOut:Integer;
    procedure NewActOut;
    procedure FindTicket(FStr:String);
    procedure Del_WhActOut;
    function  WHOutToCbxChange(rec,cbxflag:Integer): Integer;

  public
    { Public declarations }
    SenderForActIn:String; // ACT_TP,ACT_TS
    CbxToCbx:Boolean;
    Prev_TP_Move_CBX_CODE:Integer;
    Prev_Send_Write_Off:Integer;
    procedure New_Do_FromParty(id_tp,id_part,id_ticket:Integer);
    function  New_Do_Num(N:String;Increment:Integer):String;
  end;

const
 sel_body:String=
           ' select a.*,b.name as goods, c.kr_name as val, d.firm_name as shipper,             '+
           ' f.num_tp as n_part, f.num_part,g.brutto as brutto_fact,g.places as places_fact,   '+
           ' j.zayv, k.g073,k.g072,l.cond_park,l.num_park,f.num_ticket,                        '+
           ' iif(m.id_ts is not null, 1,0) as IN_TS,m.id_ts                                    '+
           ' from PARTIES A                                                                    '+
           ' left join goods_cat b on a.goods_cat =b.id                                        '+
           ' left join valname c on a.valuta = c.id                                            '+
           ' left join f_otprav d  on a.id_shipper=d.id                                        '+
           ' left join v_num_docs f on a.id = f.id_tp                                          '+
           ' left join act_of_scales g on a.id=g.id_tp                                         '+
           ' left join ticket_parts h on a.id_part=h.id                                        '+
           ' left join reg_ti j on h.id_owner = j.id                                           '+
           ' left join do_head k on a.id=k.id_tp                                               '+
           ' left join park_ztk l on a.id_ticket = l.id_ticket                                 '+
           ' left join act_of_scales m on a.id_scale = m.id '                                  ;
 sel_trailer:String= ' order by a.tp_move_cbx_code, f.num_tp ';
var
  Warehouse_F: TWarehouse_F;

implementation

{$R *.dfm}
uses dm_u, ActWhIn_U, ActWhInEdit_U, Reports_U,main, PrevActWhIn_U,setting_u,
  ActWhOut_U, PartFullEdit_U, Do1_U, ParkZtk_U,OpenCbxPlaces_U,ClosedCBXPlaces_U,InspLog_U;


function CheckTsInCbx(Ticket: Integer): Boolean;
var
  qry:TIBQuery;
begin
  Result:=false;
  qry := TIBQuery.Create(Nil);
  qry.Database:=Dm.DB;
  try
    qry.SQL.Add('select count(a.id) from wh_act_in a left join parties b on a.id_tp = b.id ');
    qry.SQL.Add('where (a.wh_type=:p0) and (b.id_ticket = :p1) and (b.tp_move_cbx_code=:p2) ');
    qry.Params[0].AsString:='Откр.СВХ';
    qry.Params[1].AsInteger:=Ticket;
    qry.Params[2].AsInteger:=TP_LOCKED;
    qry.Open;
    if qry.RecordCount > 0 then Result:=True;
  finally
    qry.Free;
  end;

end;

procedure SetPztkOutFlag(Ts:Integer);
begin
 try
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update ts set out_pztk_flag = :p0 where id = :p1');
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    try
      DM.Sql.Params[0].AsInteger:=1;
      DM.Sql.Params[1].AsInteger:=Ts;
      Dm.Sql.ExecQuery;
      DM.Sql.Transaction.Commit;
    except on E: EDatabaseError do
      begin
       DM.Sql.Transaction.Rollback;
       ShowMessage(E.Message);
      end;
    end;
 finally
    if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
 end;

 end;


procedure TNewThread.Execute;
var
 id_ticket,id_ts:Integer;
 qry,qry1:TIBquery;
begin
  qry := TIBQuery.Create(Nil);
  qry.Database:=DM.DB;
  qry.SQL.Add('select c.id, a.id from  ts a left join ticket c on a.id_ticket = c.id ');
  qry.SQL.Add('where (a.target=1) and (a.out_pztk_flag is null) and (c.cust_proc=:p0) and (c.delete_flag <> :p1) ');
  qry.Params[0].AsString:='Импорт';
  qry.Params[1].AsString:='Y';
  qry.Open;
  try
    while not qry.Eof do
      begin
        id_ticket:=qry.Fields[0].AsInteger;
        id_ts:=qry.Fields[1].AsInteger;
        if CheckTsInCbx(id_ticket) then SetPztkOutFlag(id_ts);
        qry.Next;
      end;
  finally
    qry.Free;
  end;
end;


procedure TWarehouse_F.A_ActOutAddExecute(Sender: TObject);
var
 Mes:String;
 tmp_reply:Integer;
begin
  if DM.Qry_WhActIn.FieldByName('ID').IsNull then exit;
  if DM.Qry_WhActIn.FieldByName('INSPECTION_FLAG').AsInteger = 1 then
    begin
      Application.MessageBox('Данная товарная партия направлена на таможенный досмотр.Создать Акт выдачи невозможно.','Внимание',MB_ICONWARNING+MB_OK);
      Exit;
    end;

  CbxToCbx:=False;
  Warehouse_F.Prev_TP_Move_CBX_CODE:=DM.Qry_Warehouse.FieldByName('TP_MOVE_CBX_CODE').AsInteger;
  Warehouse_F.Prev_Send_Write_Off:=DM.Qry_Warehouse.FieldByName('SEND_WRITE_OFF').AsInteger;
  if Application.MessageBox('ТП списывается или перемещается между складами','Подтверждение',MB_ICONQUESTION+MB_YESNO) = ID_NO then
     CbxToCbx:=True;
  NewActOut;
  if not DM.Qry_WhActOutID.IsNull then  ActWhOut_F.ShowModal;

  if ActWhOut_F.ModalResult = mrCancel then
      begin
        Del_WhActOut;
//        ActWhOut_F.Close;
      end;
   if ActWhOut_F.ModalResult = mrOk then
            begin
               if not CbxToCbx then
                begin
                   Mes:='После создания Акта выдачи груза необходимо поставить отметку '+
                   ' о частичном или полном списании текущей ТП.  ТП списана полностью ? ';

                   tmp_reply:=Application.MessageBox(Pchar(Mes),'Внимание',MB_ICONWARNING+MB_YESNO);
                   case tmp_reply of
                    2: ShowMessage(' id_cancel');
                    6: A_TP_Full_Write_Off.Execute; //     ShowMessage(' id_yes');
                    7: A_Tp_Partial_Write_Off.Execute;  //ShowMessage(' id_no');
                   end;
    //               A_GoodsOut.Execute;
                end
               else
                begin
                if Main_F.CbxToCbx(Grid_ActOut.DataSource.DataSet.FieldByName('ID_TP').AsInteger,
                                  Grid_WH) = 0 then ToolButton6Click(ToolButton6);
                end;
            end;
end;

procedure TWarehouse_F.A_ActOutAddUpdate(Sender: TObject);
begin
if (Role ='SYSADMIN') or (Role ='DISPETCHER') then
  (Sender as TAction).Enabled:=True
  else
   (Sender as TAction).Enabled:=False;

{ if DM.Qry_Warehouse.Active then
  if ((DM.Qry_Warehouse.FieldByName('TP_MOVE_CBX_CODE').AsInteger >= TP_LOCKED)
      and (DM.Qry_Warehouse.FieldByName('TP_MOVE_CBX_CODE').AsInteger < TP_WROTED_OFF))
//  кусок кода если акт выдачи делает оператор в главном окне
{       and
    (( DM.Qry_Warehouse.FieldByName('SEND_WRITE_OFF').AsInteger = PARTIAL_WRITE_OFF) or
     (DM.Qry_Warehouse.FieldByName('SEND_WRITE_OFF').AsInteger= FULL_WRITE_OFF))
       then
          (Sender as TAction).Enabled:=True
       else
          (Sender as TAction).Enabled:=False;                                   }
end;

procedure TWarehouse_F.A_EditWhActInExecute(Sender: TObject);
begin
//
end;

procedure TWarehouse_F.A_GoodsOutExecute(Sender: TObject);
var
  id_rec:Integer;
  Mes:String;

begin
    if DM.Qry_WhActOut.FieldByName('ID').IsNull then Exit;
    id_rec:=DM.Qry_WhActOut.FieldByName('ID').AsInteger;
    Mes:='В контрольный талон №'+ Grid_WH.DataSource.Dataset.FieldByName('NUM_PART').AsString +  ' будет поставлена '+#10#13+
         'отметка о выдаче груза с СВХ.Продолжить ?';
    if Application.MessageBox(PChar(Mes),'Внимание',MB_YESNO+MB_ICONASTERISK) <> IDYES then Exit;
try
 try
    //найдем текущий Акт выдачи
    DM.Qry_WhActOut.Locate('ID',Id_NewActOut,[]);
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    //добавим запись в журнал талона
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into parties_log (id_ticket,id_part,id_tp,npp_tp,action_name,username,action_code) ');
    DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6) ');
    DM.Sql.Params[0].Value:=DM.Qry_Warehouse.FieldByName('ID_TICKET').AsInteger;
    DM.Sql.Params[1].Value:=DM.Qry_Warehouse.FieldByName('ID_PART').AsInteger;
    DM.Sql.Params[2].Value:=DM.Qry_Warehouse.FieldByName('ID').AsInteger;
    DM.Sql.Params[3].AsString:=DM.Qry_Warehouse.FieldByName('N_PART').AsString;
    DM.Sql.Params[4].AsString:=STEP_7_1+ ' Акт выдачи № '+DM.Qry_WhActOutNPP.AsString;
    DM.Sql.Params[5].AsString:=User;
    case DM.Qry_Warehouse.FieldByName('TP_MOVE_CBX_CODE').AsInteger of
      //TP_OUT_CBX
       7: DM.Sql.Params[6].AsInteger:=STEP_CODE_7;
      //TP_WROTED_OFF
       71 : DM.Sql.Params[6].AsInteger:=STEP_CODE_7_1;
    end;
    DM.Sql.ExecQuery;
    //Если груз выдается полностью, то убираем связи мест хранения и ТП на складах
    if DM.Qry_Warehouse.FieldByName('TP_MOVE_CBX_CODE').AsInteger = TP_WROTED_OFF then
      begin
         if Trim(Grid_ActIn.DataSource.DataSet.FieldByName('WH_TYPE').AsString) = 'Закр.СВХ' then
            begin
               Dm.SQL.Close;
               DM.SQL.SQL.Clear;
               DM.SQL.SQL.Add(' delete from rel_tp_wh where id_tp=:p0 ');
               DM.Sql.Params[0].asInteger:=DM.Qry_Warehouse.FieldByName('ID').AsInteger;
               DM.sql.ExecQuery;
            end;
         if Trim(Grid_ActIn.DataSource.DataSet.FieldByName('WH_TYPE').AsString) = 'Откр.СВХ' then
            begin
               Dm.SQL.Close;
               DM.SQL.SQL.Clear;
               DM.SQL.SQL.Add(' delete from rel_tp_wh_open where id_tp=:p0 ');
               DM.Sql.Params[0].AsInteger:=DM.Qry_Warehouse.FieldByName('ID').AsInteger;
               DM.sql.ExecQuery;
            end;
      end;

      //спраашиваем у кладовщика о том освобождать ли места, занятые грузом

      //ставим время печати акта
         Dm.SQL.Close;
         DM.SQL.SQL.Clear;
         DM.SQL.SQL.Add(' update wh_act_out a set a.dt_print = current_timestamp where a.id = :p0 ');
         DM.Sql.Params[0].AsInteger:=id_rec;
         DM.sql.ExecQuery;

    DM.Sql.Transaction.Commit;
    // Открыть и редактировать часть КТ
{     Main_F.IdPart:=DM.Qry_Warehouse.FieldByName('ID_PART').AsInteger;
     PartFullEdit_F.ShowModal;}
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

procedure TWarehouse_F.A_GoodsOutUpdate(Sender: TObject);
begin
   if DM.Qry_WhActOut.Active then
    if DM.Qry_WhActOut.FieldByName('ID').IsNull then
        (Sender as TAction).Enabled:=False
     else
        (Sender as TAction).Enabled:=True;
end;

procedure TWarehouse_F.A_InspectionOutExecute(Sender: TObject);
var
 id_actin:Integer;
begin
if DM.Qry_WhActIn.FieldByName('INSPECTION_FLAG').AsInteger = 1 then Exit;

try
 try
   id_actin:=DM.Qry_WhActIn.FieldByName('ID').AsInteger;
   Dm.SQL.Close;
   DM.SQL.SQL.Clear;
   DM.SQL.SQL.Add('update wh_act_in set inspection_flag = :p0 where id=:p1');
   if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
   DM.sql.Params[0].AsInteger:=1;
   DM.sql.Params[1].AsInteger:=id_actin;
   DM.sql.ExecQuery;

   Dm.SQL.Close;
   DM.SQL.SQL.Clear;
   DM.SQL.SQL.Add('insert into inspection_log (id_act,dt, username, action) values (:p0,:p1,:p2,:p3) ');
   if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
   DM.sql.Params[0].AsInteger:=id_actin;
   DM.sql.Params[1].AsDateTime:=now;
   DM.Sql.Params[2].AsString:=User;
   DM.sql.Params[3].AsInteger:=1;
   DM.sql.ExecQuery;
   DM.sql.Transaction.Commit;
   DM.Qry_WhActIn.Close;
   DM.Qry_WhActIn.Open;
   DM.Qry_WhActIn.Locate('ID',id_actin,[]);
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

procedure TWarehouse_F.A_InspectionOutUpdate(Sender: TObject);
begin
 if Grid_WH.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger = TP_LOCKED then
     (Sender as TAction).Enabled:=True
   else
     (Sender as TAction).Enabled:=False;
end;

procedure TWarehouse_F.A_Inspection_StopExecute(Sender: TObject);
var
 id_actin:Integer;
begin
if DM.Qry_WhActIn.FieldByName('INSPECTION_FLAG').AsInteger = 0 then Exit;

try
 try
   id_actin:=DM.Qry_WhActIn.FieldByName('ID').AsInteger;
   Dm.SQL.Close;
   DM.SQL.SQL.Clear;
   DM.SQL.SQL.Add('update wh_act_in set inspection_flag = :p0 where id=:p1');
   if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
   DM.sql.Params[0].AsInteger:=0;
   DM.sql.Params[1].AsInteger:=id_actin;
   DM.sql.ExecQuery;

   Dm.SQL.Close;
   DM.SQL.SQL.Clear;
   DM.SQL.SQL.Add('insert into inspection_log (id_act,dt, username, action) values (:p0,:p1,:p2,:p3) ');
   if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
   DM.sql.Params[0].AsInteger:=id_actin;
   DM.sql.Params[1].AsDateTime:=now;
   DM.Sql.Params[2].AsString:=User;
   DM.sql.Params[3].AsInteger:=0;
   DM.sql.ExecQuery;
   DM.sql.Transaction.Commit;
   DM.Qry_WhActIn.Close;
   DM.Qry_WhActIn.Open;
   DM.Qry_WhActIn.Locate('ID',id_actin,[]);
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

procedure TWarehouse_F.A_Inspection_StopUpdate(Sender: TObject);
begin
 if Grid_WH.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger = TP_LOCKED then
     (Sender as TAction).Enabled:=True
   else
     (Sender as TAction).Enabled:=False;
end;

procedure TWarehouse_F.A_InspLog_AllExecute(Sender: TObject);
var
 sql_text:String;
begin
  DM.Qry_InspLog.Close;
  DM.Qry_InspLog.SQL.Clear;
  sql_text:=format(' select a.dt,a.username,b.nomer_tp,b.id, ' +
                   ' iif(a.action = 0,%sПрибыл с досмотра%s,%sУбыл на досмотр%s) as human_action '+
                   ' from inspection_log a left join wh_act_in b on a.id_act = b.id ' +
                   ' order by a.id desc',[#39,#39,#39,#39] );
  DM.Qry_InspLog.SQL.Add(sql_text);
  DM.Qry_InspLog.Open;
  InspLog_F.ShowModal;
end;

procedure TWarehouse_F.A_InspLog_SvidExecute(Sender: TObject);
var
 sql_text:String;
begin
  if Grid_ActIn.DataSource.DataSet.FieldByName('ID').IsNull then Exit;
  DM.Qry_InspLog.Close;
  DM.Qry_InspLog.SQL.Clear;
  sql_text:=format(' select a.dt,a.username,b.nomer_tp,b.id, ' +
                   ' iif(a.action = 0,%sПрибыл с досмотра%s,%sУбыл на досмотр%s) as human_action '+
                   ' from inspection_log a left join wh_act_in b on a.id_act = b.id ' +
                   ' where b.id = :p0 order by a.id desc',[#39,#39,#39,#39] );
  DM.Qry_InspLog.SQL.Add(sql_text);
  DM.Qry_InspLog.Params[0].AsInteger := Grid_ActIn.DataSource.DataSet.FieldByName('ID').AsInteger;
  DM.Qry_InspLog.Open;
  InspLog_F.ShowModal;
end;

procedure TWarehouse_F.A_ParkZtkShowExecute(Sender: TObject);
begin
    FormParkZTK.ShowModal;
end;

procedure TWarehouse_F.A_PrintActOutExecute(Sender: TObject);
var
 rec:Integer;
begin
 rec:=Grid_ActOut.DataSource.DataSet.FieldByName('ID').AsInteger;
 DM.Qry_RepWhOut.Close;
 DM.Qry_RepWhOut.Params[0].AsInteger:=rec;
 DM.Qry_RepWhOut.Open;
 if Reports_F.Rep2.LoadFromFile('act_out.fr3')then
    begin
// закоментированы строки для печати 2-х экз. на одном листе.
//    (Reports_F.Rep2.Pages[2] as TfrxReportPage).Visible:=True;
    if Reports_F.Rep2.PrepareReport(True) then
      begin
//         (Reports_F.Rep2.Pages[2] as TfrxReportPage).Visible:=False;
//          Reports_F.Rep2.PrepareReport(False);
         Reports_F.Rep2.ShowPreparedReport;


         if (Role = 'SYSADMIN') or (Role = 'WHOPERATOR')  then
         if Grid_ActOut.DataSource.DataSet.FieldByName('DT_PRINT').IsNull then
            A_GoodsOut.Execute;
      end;
    end;
end;


procedure TWarehouse_F.A_PrintActOutUpdate(Sender: TObject);
begin
   if DM.Qry_WhActOut.Active then
     if not DM.Qry_WhActOut.FieldByName('ID').IsNull then
        (Sender as TAction).Enabled:=True
       else
        (Sender as TAction).Enabled:=False;
end;

procedure TWarehouse_F.A_ToCbxClearExecute(Sender: TObject);
begin
  if WHOutToCbxChange(DM.Qry_WhActOut.FieldByName('ID').AsInteger,0) = 0 then ToolButton6Click(ToolButton6);
end;

procedure TWarehouse_F.A_ToCbxSetExecute(Sender: TObject);
begin
  if WHOutToCbxChange(DM.Qry_WhActOut.FieldByName('ID').AsInteger,1) = 0 then ToolButton6Click(ToolButton6);
end;

procedure TWarehouse_F.A_TP_Full_Write_OffExecute(Sender: TObject);
var
  id_tp,id_act_in,id_act_out:Integer;
begin
try
 try
   id_tp:=DM.Qry_Warehouse.FieldByName('ID').AsInteger;
   id_act_in:=DM.Qry_WhActIn.FieldByName('ID').AsInteger;
   id_act_out:=DM.Qry_WhActOut.FieldByName('ID').AsInteger;
   if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction;
   Dm.SQL.Close;
   DM.SQL.SQL.Clear;
   DM.SQL.SQL.Add(' update parties set send_write_off=:p0, tp_move_cbx_code = :p1 where id=:p2 ');
   DM.sql.Params[0].AsVariant:=Null;
   DM.Sql.Params[1].AsInteger:=TP_WROTED_OFF;
   DM.Sql.Params[2].AsInteger:=id_tp;
   DM.sql.ExecQuery;

   //
    DM.Sql.Close;
    Dm.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into parties_log (id_ticket,id_part,id_tp,npp_tp,action_name,username,action_code) ');
    DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6) ');
    DM.Sql.Params[0].Value:=DM.Qry_Warehouse.FieldByName('ID_TICKET').AsInteger;
    DM.Sql.Params[1].Value:=DM.Qry_Warehouse.FieldByName('ID_PART').AsInteger;
    DM.Sql.Params[2].Value:=DM.Qry_Warehouse.FieldByName('ID').AsInteger;
    DM.Sql.Params[3].AsString:=DM.Qry_Warehouse.FieldByName('N_PART').AsString;
    DM.Sql.Params[4].AsString:='Полное списание с СВХ ';
    DM.Sql.Params[5].AsString:=User;
    DM.Sql.Params[6].AsInteger:=STEP_CODE_7;
    DM.Sql.ExecQuery;

   DM.sql.Transaction.Commit;
   DM.Refresh_Warehouse;
   DM.Refresh_WhActIn;
   DM.Refresh_WhActOut;
   Dm.Qry_WhActIn.Locate('ID',id_act_in,[]);
   Dm.Qry_WhActOut.Locate('ID',id_act_out,[]);
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

procedure TWarehouse_F.A_Tp_Partial_Write_OffExecute(Sender: TObject);
var
  id_tp,id_act_in,id_act_out:Integer;
begin
try
 try
   id_tp:=DM.Qry_Warehouse.FieldByName('ID').AsInteger;
   id_act_in:=DM.Qry_WhActIn.FieldByName('ID').AsInteger;
   id_act_out:=DM.Qry_WhActOut.FieldByName('ID').AsInteger;
   if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction;
   Dm.SQL.Close;
   DM.SQL.SQL.Clear;
   DM.SQL.SQL.Add(' update parties set send_write_off=:p0, tp_move_cbx_code = :p1 where id=:p2 ');
   DM.sql.Params[0].AsVariant:=Null;
   DM.Sql.Params[1].AsInteger:=TP_OUT_CBX;
   DM.Sql.Params[2].AsInteger:=id_tp;
   DM.sql.ExecQuery;
   //
    DM.Sql.Close;
    Dm.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into parties_log (id_ticket,id_part,id_tp,npp_tp,action_name,username,action_code) ');
    DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6) ');
    DM.Sql.Params[0].Value:=DM.Qry_Warehouse.FieldByName('ID_TICKET').AsInteger;
    DM.Sql.Params[1].Value:=DM.Qry_Warehouse.FieldByName('ID_PART').AsInteger;
    DM.Sql.Params[2].Value:=DM.Qry_Warehouse.FieldByName('ID').AsInteger;
    DM.Sql.Params[3].AsString:=DM.Qry_Warehouse.FieldByName('N_PART').AsString;
    DM.Sql.Params[4].AsString:='Частичное списание с СВХ ';
    DM.Sql.Params[5].AsString:=User;
    DM.Sql.Params[6].AsInteger:=STEP_CODE_7;
    DM.Sql.ExecQuery;

   DM.sql.Transaction.Commit;
   DM.Refresh_Warehouse;
   DM.Qry_WhActIn.Close;
   DM.Qry_WhActIn.Open;
   Dm.Qry_WhActIn.Locate('ID',id_act_in,[]);
   DM.Qry_WhActOut.Close;
   DM.Qry_WhActOut.Open;
   Dm.Qry_WhActOut.Locate('ID',id_act_out,[]);
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

procedure TWarehouse_F.A_WhOutDelExecute(Sender: TObject);
 var
 id_rec:Integer;
begin
try
 try
   if not DM.Qry_WhActOutID_DO2.IsNull then
     begin
       Application.MessageBox('Удаление невозможно.По акту выдачи создан ДО2','Внимание',MB_ICONSTOP+MB_OK);
       Exit;
     end;

   if DM.Qry_WhActOut.FieldByName('ID').isNull then Exit;
   if Application.MessageBox('Данные будут безвозвратно удалены. Продолжить?','Внимание',MB_ICONQUESTION+mb_YesNo)= id_NO then Exit;
   id_rec:=DM.Qry_WhActOut.FieldByName('ID').AsInteger;
   Dm.SQL.Close;
   DM.SQL.SQL.Clear;
   DM.SQL.SQL.Add('delete from wh_act_out where id=:p0 ');
   if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
   DM.sql.Params[0].AsInteger:=id_rec;
   DM.sql.ExecQuery;
   // удалим связанные таможенные документы
   Dm.SQL.Close;
   DM.SQL.SQL.Clear;
   DM.SQL.SQL.Add('delete from do_outdocs where id_actwh=:p0 ');
   if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
   DM.sql.Params[0].AsInteger:=id_rec;
   DM.sql.ExecQuery;
   DM.sql.Transaction.Commit;
   DM.Qry_WhActOut.Close;
   DM.Qry_WhActOut.Open;
    except
      on E: EdatabaseError do
        begin
        // DM.Sql.Transaction.Rollback;
         ShowMessage(E.Message);
        end;
   end;
 finally
   if DM.sql.Transaction.InTransaction then DM.sql.Transaction.Rollback;
 end;

end;

procedure TWarehouse_F.A_WhOutDelUpdate(Sender: TObject);
begin
   if DM.Qry_WhActOut.Active then
      if (not DM.Qry_WhActOut.FieldByName('ID').isnull) and  (DM.Qry_WhActOut.FieldByName('DO2_STATN').isnull) then
              (Sender as TAction).Enabled:=True
           else
              (Sender as TAction).Enabled:=False;
end;

procedure TWarehouse_F.A_WhOutEditExecute(Sender: TObject);
begin
  if Grid_ActOut.DataSource.DataSet.FieldByName('ID').IsNull then Exit;
  ActWhOut_F.ShowModal;
end;

procedure TWarehouse_F.A_WhOutEditUpdate(Sender: TObject);
begin
if ((role = 'SYSADMIN') or (role='DISPETCHER'))  then  (Sender as TAction).Enabled:=True
 else
  begin
   if DM.Qry_WhActOut.Active then
      if (not DM.Qry_WhActOut.FieldByName('ID').isnull) and  (DM.Qry_WhActOut.FieldByName('DO2_STATN').isnull) then
              (Sender as TAction).Enabled:=True
           else
              (Sender as TAction).Enabled:=False;
  end;
end;

procedure TWarehouse_F.A_WhTpAllRecExecute(Sender: TObject);
const sql:String = 'select a.*,b.name as goods, c.kr_name as val, d.firm_name as shipper, '+
                   ' f.num_tp as n_part, f.num_part ,g.brutto as brutto_fact,g.places as places_fact, '+
                   ' j.zayv, k.g073,k.g072,l.cond_park,l.num_park,iif(m.id_ts is not null, 1,0) as IN_TS,m.id_ts '+
                   ' from PARTIES A left join goods_cat b on a.goods_cat =b.id '+
                   ' left join valname c on a.valuta = c.id '+
                   ' left join f_otprav d  on a.id_shipper=d.id '+
                   ' left join v_num_docs f on a.id = f.id_tp '+
                   ' left join act_of_scales g on a.id=g.id_tp ' +
                   ' left join ticket_parts h on a.id_part=h.id '+
                   ' left join reg_ti j on h.id_owner = j.id '+
                   ' left join do_head_vw k on a.id=k.id_tp  '+
                   ' left join park_ztk l on a.id_ticket = l.id_ticket' +
                   ' left join act_of_scales m on a.id_scale = m.id '   +
                   ' where tp_move_cbx_code >=3 and  tp_move_cbx_code <=5 '+
                   ' order by a.tp_move_cbx_code, f.num_tp ';

var
 current_sql:String;
begin
 E_Nomer.Clear;
 if DM.Qry_Warehouse.Active then current_sql:=DM.Qry_Warehouse.SQL.Text;
    try
     DM.Qry_Warehouse.Close;
     DM.Qry_Warehouse.SQL.Clear;
     DM.Qry_Warehouse.SQL.Add(sql);
     DM.Qry_Warehouse.Open;
    except
        on E:Exception do
        begin
           MessageBox(Application.Handle, PChar(E.Message + #13#10 + Dm.Qry_Warehouse.SQL.Text),
             PChar(Application.Name), MB_ICONERROR);
           if Length(current_sql) <> 0 then
             begin
               DM.Qry_Warehouse.SQL.Clear;
               DM.Qry_Warehouse.SQL.Add(current_sql);
               DM.Qry_Warehouse.Open;
             end;
        end;
end;
end;

procedure TWarehouse_F.BtnHelpClick(Sender: TObject);
begin
  Main_F.BtnHelpClick(Main_F.BtnHelp);
end;

procedure TWarehouse_F.Button1Click(Sender: TObject);
var
  NewThread: TNewThread;
begin
   NewThread:=TNewThread.Create(true);
   NewThread.FreeOnTerminate:=true;
   NewThread.Priority:=tpLower;
   NewThread.Resume;
end;

procedure TWarehouse_F.DelWhInAct_AExecute(Sender: TObject);
var
  id_rec:Integer;
begin
if Application.MessageBox('Текущее свидетельство будет удалено.Продолжить?','Внимание',MB_ICONQUESTION+MB_YESNO) <> ID_YES
   then Exit;
try
  try
    id_rec:=Grid_ActIn.DataSource.Dataset.FieldByName('id').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
      DM.Sql.Close;
      DM.Sql.SQL.Clear;
      DM.Sql.SQL.Add('delete from wh_act_in where id = :p0  ');
      DM.Sql.Params[0].AsInteger:=id_rec;
      DM.Sql.ExecQuery;
      DM.Sql.Transaction.Commit;
      DM.Qry_WhActIn.Close;
      DM.Qry_WhActIn.Open;
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

procedure TWarehouse_F.DelWhInAct_AUpdate(Sender: TObject);
begin
  if Grid_ActIn.DataSource.DataSet.Active then
    if (Grid_ActIn.DataSource.DataSet.FieldByName('SIGN_NUMBER').asInteger > 0) or
       (Grid_ActIn.DataSource.DataSet.FieldByName('ID').isNull )
       then (Sender as TAction).Enabled:=False else (Sender as TAction).Enabled:=True;
end;

procedure TWarehouse_F.Del_WhActOut;
var
 id_tp:Integer;
begin
try
 try
   id_tp:=DM.Qry_Warehouse.FieldByName('ID').AsInteger;
   Dm.SQL.Close;
   DM.SQL.SQL.Clear;
   DM.SQL.SQL.Add(' delete from wh_act_out where id = :p0 ');
   if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
   DM.sql.Params[0].AsInteger:=Warehouse_F.Id_NewActOut;
   DM.sql.ExecQuery;
   Dm.SQL.Close;
   DM.SQL.SQL.Clear;
   DM.SQL.SQL.Add(' update parties set tp_move_cbx_code=:p0,send_write_off=:p2 where id = :p3 ');
   DM.sql.Params[0].AsInteger:=Warehouse_F.Prev_TP_Move_CBX_CODE;
   DM.sql.Params[1].AsInteger:=Warehouse_F.Prev_Send_Write_Off;
   DM.sql.Params[2].AsInteger:=id_tp;
   DM.Sql.ExecQuery;
   DM.sql.Transaction.Commit;
   DM.Qry_WhActOut.Close;
   DM.Qry_WhActOut.Open;
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

procedure TWarehouse_F.E_NomerKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then FindBtnClick(E_Nomer);

end;

procedure TWarehouse_F.FindTicket(FStr: String);
var
 sel_cond:string;
begin
  if Length(Trim(Fstr)) = 0  then Exit;
  case Rg_F.ItemIndex of
     0: sel_cond:=' where f.num_ticket = :p0 ';
     1: sel_cond:=' where f.num_part =:p0 ';
  end;
  DM.Qry_Warehouse.Close;
  DM.Qry_Warehouse.SQL.Clear;
  Dm.Qry_Warehouse.SQL.Add(sel_body+sel_cond+sel_trailer);
  case Rg_F.ItemIndex of
     0: DM.Qry_Warehouse.Params[0].asInteger:=StrToInt(FStr);
     1: DM.Qry_Warehouse.Params[0].asString:=FStr;
  end;
  DM.Qry_Warehouse.Open;
end;

procedure TWarehouse_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{ if  DM.Qry_Warehouse.Active then Dm.Qry_Warehouse.Close;
 if  DM.Qry_RelTpActIn.Active then Dm.Qry_RelTpActIn.Close;
 if  DM.Qry_WhActIn.Active then Dm.Qry_WhActIn.Close;
 if  DM.Qry_WhActOut.Active then Dm.Qry_WhActOut.Close;
 if  DM.Qry_WhDocOut.Active then Dm.Qry_WhDocOut.Close;}

end;

procedure TWarehouse_F.FormCreate(Sender: TObject);
begin
 Shape1.Brush.Color:=LighterColor(clRed,30);
end;

procedure TWarehouse_F.FormPaint(Sender: TObject);
begin
//ShowMessage('Paint');
end;

procedure TWarehouse_F.FormResize(Sender: TObject);
begin
  Grid_wh.Height:=Round(Panel1.Height*0.7 - Panel3.Height - Panel4.Height );
end;

procedure TWarehouse_F.FormShow(Sender: TObject);
begin
 if not DM.Qry_Warehouse.Active then DM.Qry_Warehouse.Open;
// if not DM.Qry_RelTpActIn.Active then Dm.Qry_RelTpActIn.Open;
 if NOT DM.Qry_WhActIn.Active then Dm.Qry_WhActIn.Open;
 if NOT DM.Qry_WhActOut.Active then Dm.Qry_WhActOut.Open;
 if NOT DM.Qry_WhDocOut.Active then Dm.Qry_WhDocOut.Open;
 if not DM.Qry_CountryCodes.Active then DM.Qry_CountryCodes.Open;
 if (Role = 'SYSADMIN') or (Role = 'WHOPERATOR')  then
     begin
       Item_InspOut.Enabled:=True;
       Item_InspStop.Enabled:=True;
     end;
 
 //A_WhTpAllRec.Execute;
end;

procedure TWarehouse_F.Grid_ActInDblClick(Sender: TObject);
begin
 PrintActWhIn_A.Execute;
end;

procedure TWarehouse_F.Grid_ActInDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if not (Sender as TDBGridEh).Datasource.dataset.FieldByName('SIGN_NUMBER').isNull then
     begin
        (Sender as TDBGridEh).Canvas.Brush.Color := LighterColor(clBlack,30);
        (Sender as TDBGridEh).Canvas.Font.Color :=clWhite;
     end;
 (Sender as TDBGridEh).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TWarehouse_F.Grid_WHDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
if (Sender as TDbGridEh).DataSource.DataSet.FieldByName('SEND_WRITE_OFF').AsInteger = PARTIAL_WRITE_OFF  then
 begin
 (Sender as TDbGridEh).Canvas.Font.Color := clBlack; // Font color
 (Sender as TDbGridEh).Canvas.Brush.Color :=LighterColor(clRed,20); // Background color
 (Sender as TDbGridEh).Canvas.FillRect(Rect);
 end;
if (Sender as TDbGridEh).DataSource.DataSet.FieldByName('SEND_WRITE_OFF').AsInteger = FULL_WRITE_OFF  then
 begin
 (Sender as TDbGridEh).Canvas.Font.Color := clBlack; // Font color
 (Sender as TDbGridEh).Canvas.Brush.Color :=LighterColor(clGreen,20); // Background color
 (Sender as TDbGridEh).Canvas.FillRect(Rect);
 end;
if (Sender as TDbGridEh).SelectedRows.CurrentRowSelected then
 begin
 (Sender as TDbGridEh).Canvas.Font.Color := clYellow; // Font color
 (Sender as TDbGridEh).Canvas.Brush.Color := clBlue; // Background color
 (Sender as TDbGridEh).Canvas.FillRect(Rect);
 end;
 (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TWarehouse_F.LockTp_AExecute(Sender: TObject);
var
  id_rec:Integer;
  Mes:String;
  ztk_occupied:Boolean;
begin
    if DM.Qry_Warehouse.FieldByName('ID').IsNull then Exit;

    Mes:='В ТП №'+ Grid_WH.DataSource.Dataset.FieldByName('N_PART').AsString +  ' будет поставлена '+#10#13+
         'отметка о размещении на хранение на СВХ.Продолжить ?';
    if Application.MessageBox(PChar(Mes),'Внимание',MB_YESNO+MB_ICONASTERISK) <> IDYES then Exit;
try
 try
    ztk_occupied:=false;
    if (DM.Qry_WhActIn.FieldByName('WH_TYPE').AsString = OCBX) and
       ( (DM.Qry_Warehouse.FieldByName('COND_PARK').AsInteger = 1) or
         (DM.Qry_Warehouse.FieldByName('COND_PARK').AsInteger = 2) )
      then ztk_occupied:=True;

    id_rec:=Warehouse_F.Grid_Wh.DataSource.Dataset.FieldByName('id').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
     // ставим отметку о размещении ТП на ВХ .Далее можно составлять До1
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update parties set tp_move_cbx_code=:p0 where id = :p1  ');
    DM.Sql.Params[0].AsInteger:=TP_LOCKED;
    DM.Sql.Params[1].AsInteger:=id_rec;
    DM.Sql.ExecQuery;
    // если занято ЗТК освобождаем место
    if ztk_occupied then
      begin
        Dm.Sql.Close;
        DM.Sql.sql.Clear;
        DM.sql.sql.Add(' update park_ztk set cond_park=:p0, id_ts=:p1,id_ticket=:p2 where num_park=:p3 ');
        DM.sql.Params[0].AsInteger:=PLACE_FREE;
        DM.sql.Params[1].AsVariant:=null;
        DM.sql.Params[2].AsVariant:=null;
        DM.sql.Params[3].AsString:=DM.Qry_Warehouse.FieldByName('NUM_PARK').asString;
        DM.sql.ExecQuery;
      end;
    //добавим запись в журнал талона
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into parties_log (id_ticket,id_part,id_tp,npp_tp,action_name,username,action_code) ');
    DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6) ');
    DM.Sql.Params[0].Value:=DM.Qry_Warehouse.FieldByName('ID_TICKET').AsInteger;
    DM.Sql.Params[1].Value:=DM.Qry_Warehouse.FieldByName('ID_PART').AsInteger;
    DM.Sql.Params[2].Value:=DM.Qry_Warehouse.FieldByName('ID').AsInteger;
    DM.Sql.Params[3].AsString:=DM.Qry_Warehouse.FieldByName('N_PART').AsString;
    DM.Sql.Params[4].AsString:=STEP_3;
    DM.Sql.Params[5].AsString:=User;
    DM.Sql.Params[6].AsInteger:=STEP_CODE_3;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    DM.Refresh_Warehouse;
    DM.Refresh_WhActIn;
    DM.Refresh_WhActOut;
{    // Открыть и редактировать часть КТ
     Main_F.IdPart:=DM.Qry_Warehouse.FieldByName('ID_PART').AsInteger;
     PartFullEdit_F.ShowModal;}
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

procedure TWarehouse_F.LockTp_AUpdate(Sender: TObject);
begin
  if Grid_Wh.DataSource.DataSet.Active and Grid_ActIn.DataSource.DataSet.Active then
    if ((Grid_Wh.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger = TP_SCALED) or
        (Grid_Wh.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger = TP_TO_CBX) or
       (Grid_Wh.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger = TP_FROM_CBX_TO_CBX))
     and
       (not Grid_ActIn.DataSource.DataSet.FieldByName('ID').isNull)
     and
       (not Grid_ActIn.DataSource.DataSet.FieldByName('SIGN_NUMBER').isNull)
      then (Sender as TAction).Enabled:=True else (Sender as TAction).Enabled:=False;
end;

procedure TWarehouse_F.N17Click(Sender: TObject);
var
  id_act,id_tp,wh_type,id_wh:Integer;
  TempBookmark:TBookMark;
  x:word;
  sql_tmp:TIbSql;
begin
  if Grid_ActIn.DataSource.DataSet.FieldByName('ID').IsNull then Exit;
  id_act:=Grid_ActIn.DataSource.DataSet.FieldByName('ID').AsInteger;
  id_tp:=Grid_ActIn.DataSource.DataSet.FieldByName('ID_TP').AsInteger;
  if  Copy(LowerCase(Grid_ActIn.DataSource.DataSet.FieldByName('WH_TYPE').AsString),1,2) = 'от' then
      wh_type:=0
     else
      wh_type:=1;
  Case wh_type of
   0:if not OpenCbxPlaces_F.ShowModal = mrOk then
      begin
        Exit;
      end;
   1:if not ClosedCbxPlaces_F.ShowModal=mrOk then
      begin
        Exit;
      end;
  End;

try
 try
    sql_tmp:=TIBSQL.Create(Self);
    sql_tmp.Database:=Dm.DB;
    sql_tmp.Transaction:=DM.IBTW;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;

    //создадим запись в таблице связей товарных партий и мест хранения
    case wh_type of
       0: begin // если О.СВХ
            //добавим записи по количеству мест в таблицу rel_tp_wh_open
            DM.Sql.Close;
            DM.Sql.SQL.Clear;
            DM.Sql.SQL.Add('insert into rel_tp_wh_open (id_wh,id_act_in,id_tp) ');
            DM.Sql.SQL.Add(' values ( :p0,:p1,:p2) ');
            TempBookMark:=OpenCbxPlaces_F.Grid_Place.DataSource.DataSet.GetBookmark;
                 with OpenCbxPlaces_F.Grid_Place.SelectedRows do
                  begin
                   for x := 0 to Count-1 do
                    begin
                      if IndexOf(Items[x]) > -1 then
                        begin
                          OpenCbxPlaces_F.Grid_Place.Datasource.Dataset.Bookmark := Items[x];
                          id_wh:=OpenCbxPlaces_F.Grid_Place.Datasource.Dataset.FieldByName('id').AsInteger;
                          DM.Sql.Params[0].AsInteger:=id_wh;
                          DM.Sql.Params[1].AsInteger:=id_act;
                          DM.Sql.Params[2].AsInteger:=id_tp;
                          DM.Sql.ExecQuery;
                          sql_tmp.Close;
                          sql_tmp.SQL.Clear;
                          sql_tmp.SQL.Add('update park_cbx set cond_park = :p0 where id = :p1 ');
                          sql_tmp.Params[0].AsInteger:=PLACE_OCCUPIED;
                          sql_tmp.Params[1].AsInteger:=id_wh;
                          sql_tmp.ExecQuery;
                        end;  //end if
                    end;   //end for
                 end;  //end with
          end;
       1: begin // если З.СВХ
            //добавим записи по количеству мест в таблицу rel_tp_wh
            DM.Sql.Close;
            DM.Sql.SQL.Clear;
            DM.Sql.SQL.Add('insert into rel_tp_wh (id_wh,id_act_in,id_tp) ');
            DM.Sql.SQL.Add(' values ( :p0,:p1,:p2) ');
            TempBookMark:=ClosedCbxPlaces_F.Grid_Place.DataSource.DataSet.GetBookmark;
                 with ClosedCbxPlaces_F.Grid_Place.SelectedRows do
                  begin
                   for x := 0 to Count-1 do
                    begin
                      if IndexOf(Items[x]) > -1 then
                        begin
                          ClosedCbxPlaces_F.Grid_Place.Datasource.Dataset.Bookmark := Items[x];
                          id_wh:=ClosedCbxPlaces_F.Grid_Place.Datasource.Dataset.FieldByName('id').AsInteger;
                          DM.Sql.Params[0].AsInteger:=id_wh;
                          DM.Sql.Params[1].AsInteger:=id_act;
                          DM.Sql.Params[2].AsInteger:=id_tp;
                          DM.Sql.ExecQuery;
                          sql_tmp.Close;
                          sql_tmp.SQL.Clear;
                          sql_tmp.SQL.Add('update closed_cbx set state_place = :p0 where id = :p1 ');
                          sql_tmp.Params[0].AsInteger:=PLACE_OCCUPIED;
                          sql_tmp.Params[1].AsInteger:=id_wh;
                          sql_tmp.ExecQuery;
                        end;  //end if
                    end;   //end for
                 end;  //end with
          end;
    end; //case
    DM.Sql.Transaction.Commit;
    ModalResult:=mrOk;
    Warehouse_F.Grid_ActIn.DataSource.DataSet.Close;
    Warehouse_F.Grid_ActIn.DataSource.DataSet.Open;
    Warehouse_F.Grid_ActIn.DataSource.DataSet.Locate('ID',id_act,[]);
    Application.MessageBox('Все операции выполнены удачно.','Внимание',MB_ICONINFORMATION+MB_OK);
  except
    on E: EdatabaseError do
      begin
       DM.Sql.Transaction.Rollback;
       ShowMessage(E.Message);
      end;
  end;
finally
   sql_tmp.Free;
   if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
   if TempBookmark <> Nil then
      begin
        case wh_type of
           0: begin // если О.СВХ
               OpenCbxPlaces_F.Grid_Place.DataSource.DataSet.GotoBookmark(TempBookmark);
               OpenCbxPlaces_F.Grid_Place.DataSource.DataSet.FreeBookmark(TempBookmark);
               OpenCbxPlaces_F.Grid_Place.SelectedRows.Clear;
           end;
           1: begin
               ClosedCbxPlaces_F.Grid_Place.DataSource.DataSet.GotoBookmark(TempBookmark);
               ClosedCbxPlaces_F.Grid_Place.DataSource.DataSet.FreeBookmark(TempBookmark);
               ClosedCbxPlaces_F.Grid_Place.SelectedRows.Clear;
           end;
        end;
      end;
end;


end;

procedure TWarehouse_F.NewActOut;
var
 id_actin, npp,id,id_tp:Integer;
 S:String;
 wr_off:Integer;
begin
try
 try
   DM.Qry.Close;
   Dm.Qry.SQL.Clear;
   DM.Qry.SQL.Add('select gen_id(GEN_ID_WH_ACT_OUT,1) from rdb$database ' );
   Dm.Qry.Open;
   // new id
   Warehouse_F.Id_NewActOut:=DM.Qry.Fields[0].AsInteger;
   id_actin:=DM.Qry_WhActIn.FieldByName('ID').AsInteger;
   DM.Qry.Close;
   Dm.Qry.SQL.Clear;
   DM.Qry.SQL.Add('select count(*) from wh_act_out where id_actin=:p0 ' );
   Dm.Qry.Params[0].AsInteger:=id_actin;
   Dm.Qry.Open;
   // Порядковый номер товара
   npp:=DM.Qry.Fields[0].AsInteger+1;
   s:='insert into wh_act_out ';
   s:=s+'( id,id_tp,npp,id_actin )';
   s:=s+'  values(:p0,:p1,:p2,:p3) ';
   Dm.SQL.Close;
   DM.SQL.SQL.Clear;
   DM.SQL.SQL.Add(s);
   if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
   DM.sql.Params[0].AsInteger:=Warehouse_F.Id_NewActOut;
   DM.sql.Params[1].AsInteger:=DM.Qry_Warehouse.FieldByName('ID').AsInteger;
   DM.sql.Params[2].AsInteger:=npp;
   DM.sql.Params[3].AsInteger:=id_actin;
   DM.sql.ExecQuery;
   {wr_off:=DM.Qry_Warehouse.FieldByName('SEND_WRITE_OFF').AsInteger;
   id_tp:=DM.Qry_Warehouse.FieldByName('ID').AsInteger;
   Dm.SQL.Close;
   DM.SQL.SQL.Clear;
   DM.SQL.SQL.Add(' update parties set send_write_off = :p0,tp_move_cbx_code = :p1 where id = :p2')  ;
   DM.sql.Params[0].AsVariant:=null;
   if wr_off = FULL_WRITE_OFF then
      DM.sql.Params[1].AsInteger:=TP_WROTED_OFF
     else
      DM.sql.Params[1].AsInteger:=TP_OUT_CBX;
   DM.sql.Params[2].AsInteger:=id_tp;
   DM.Sql.ExecQuery;}
   DM.sql.Transaction.Commit;
   DM.Qry_WhActOut.Close;
   DM.Qry_WhActOut.Open;
   DM.Qry_WhActOut.Locate('ID',Warehouse_F.Id_NewActOut,[]);
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

procedure TWarehouse_F.NewDo1_AExecute(Sender: TObject);
begin
 New_Do_FromParty(Grid_WH.DataSource.DataSet.FieldByName('ID').AsInteger,
                  Grid_WH.DataSource.DataSet.FieldByName('ID_PART').AsInteger,
                  Grid_WH.DataSource.DataSet.FieldByName('ID_TICKET').AsInteger
                  );
end;

procedure TWarehouse_F.NewDo1_AUpdate(Sender: TObject);
begin
  if (Grid_Wh.DataSource.DataSet.Active) then
    if (Grid_Wh.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger = TP_LOCKED) and
       (Grid_Wh.DataSource.DataSet.FieldByName('G073').IsNull)
      then (Sender as TAction).Enabled:=True else (Sender as TAction).Enabled:=False;
end;

procedure TWarehouse_F.NewWhInActTP_AExecute(Sender: TObject);
begin
if DM.Qry_Warehouse.FieldByName('TP_MOVE_CBX_CODE').AsInteger <> TP_FROM_CBX_TO_CBX then
  if not Grid_ActIn.DataSource.DataSet.FieldByName('ID').IsNull then
    begin
      Application.MessageBox('На данную ТП простое складское свидетельство уже создано.','Внимание.',MB_ICONWARNING+MB_OK);
      Exit;
    end;
 Warehouse_F.SenderForActIn:='ACT_TP';
 ActWhIn_F.ShowModal;
end;

procedure TWarehouse_F.NewWhInActTP_AUpdate(Sender: TObject);
begin
  if (Grid_Wh.DataSource.DataSet.Active) then
    if ((Grid_Wh.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger = TP_TO_CBX) OR
       (Grid_Wh.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger = TP_FROM_CBX_TO_CBX))
       then (Sender as TAction).Enabled:=True else (Sender as TAction).Enabled:=False;
//       (Grid_Wh.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger = TP_LOCKED) OR
end;

procedure TWarehouse_F.NewWhInActTS_AExecute(Sender: TObject);
begin
if DM.Qry_Warehouse.FieldByName('TP_MOVE_CBX_CODE').AsInteger <> TP_FROM_CBX_TO_CBX then
  if not Grid_ActIn.DataSource.DataSet.FieldByName('ID').IsNull then
    begin
      Application.MessageBox('На данную ТП простое складское свидетельство уже создано.','Внимание.',MB_ICONWARNING+MB_OK);
      Exit;
    end;

  Warehouse_F.SenderForActIn:='ACT_TS';
  ActWhIn_F.ShowModal;
end;

procedure TWarehouse_F.NewWhInActTS_AUpdate(Sender: TObject);
begin
  if (Grid_Wh.DataSource.DataSet.Active) then
    if ((Grid_Wh.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger = TP_TO_CBX) OR
       (Grid_Wh.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger = TP_FROM_CBX_TO_CBX))
{        and
       (Grid_Wh.DataSource.DataSet.FieldByName('COND_PARK').AsInteger = PLACE_FREE)}
      then (Sender as TAction).Enabled:=True else (Sender as TAction).Enabled:=False;
//        (Grid_Wh.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger = TP_LOCKED) OR
end;

procedure TWarehouse_F.New_Do_FromParty(id_tp,id_part,id_ticket:Integer);
const
  Type_doc:String='02015';
  name_doc:String='ТТН';
  //V_trans:String='30';
  Type_CustDoc:String='09013';
  Name_CustDoc:String='Транзит.деклар.';
var
  Nts,Driver,R_name,R_address,Inn,Kpp,Ogrn,G073,g144e:String;
  F_name,F_address,F_country:String;
  C_name,C_addr,C_inn,C_Country:String;
  New_NDo:String;
  V_trans:String;
  s:String;
  Id_rec:Integer;
  n_td:String;
  d_td:TDateTime;
begin
  DM.Qry.Close;
  DM.Qry.SQL.Clear;
  DM.Qry.SQL.Add(' select count(id) from wh_act_in where id_tp = :p0 ');
  DM.Qry.Params[0].AsInteger:=id_tp;
  Dm.Qry.Open;
  if DM.Qry.Fields[0].AsInteger = 0 then
    begin
      Application.MessageBox('Отсутствует складское свидетельство.','Ошибка',MB_ICONERROR+MB_OK );
      Exit;
    end;
  DM.Qry.Close;
  DM.Qry.SQL.Clear;
  DM.Qry.SQL.Add(' select count(id) from do_head_vw where id_tp = :p0 ');
  DM.Qry.Params[0].AsInteger:=id_tp;
  Dm.Qry.Open;
  if DM.Qry.Fields[0].AsInteger >1  then
    begin
      Application.MessageBox('На данную ТП ДО1 уже создано.','Ошибка',MB_ICONERROR+MB_OK );
      Exit;
    end;

  FormSet.Refresh_Settings.Execute;
  V_trans:='';
  New_NDO:=DM.Qry_Settings.FieldByName('NEXT_DO1').AsString; //DM.SP_NEW_DoNumber.Params[0].AsInteger;
 // получим номерa транспортных средств
  if DM.Qry.Active then Dm.Qry.Close;
  DM.Qry.Sql.Clear;
  DM.Qry.SQL.Add('select first 1 n_ts,n_trailer,driver from first_ts  where id_ticket = :p0 order by id');
  DM.Qry.Params[0].AsInteger:=id_ticket;
  DM.Qry.Open;
  if DM.Qry.Fields[1].isNull then
      Nts:=DM.Qry.Fields[0].AsString
    else
      Nts:=DM.Qry.Fields[0].AsString+' / '+DM.Qry.Fields[1].AsString;
  Driver:=DM.Qry.Fields[2].AsString;
  //////////////////////////// получили реквизиты получателя  и номер ТД

  if DM.Qry.Active then DM.Qry.Close;
  DM.Qry.SQL.Clear;
  DM.Qry.SQL.Add('select a.vtt,c.zayv,c.adress,c.inn,c.kpp,c.ogrn ,');
  //DM.Qry.SQL.Add(format('(C.POSTCODE||%s %s||C.REGION||%s %s||C.CITY||%s %s||C.STREET||%s %s||C.HOUSE) AS FULL_ADRESS ',[#39,#39,#39,#39,#39,#39,#39,#39]));
  DM.Qry.SQL.Add(format(' (iif (c.POSTCODE is not null, c.postcode, %s%s))||%s %s|| ',[#39,#39,#39,#39]));
  DM.Qry.SQL.Add(format(' (iif (c.REGION is not null, c.REGION, %s%s))||%s %s|| ',[#39,#39,#39,#39]));
  DM.Qry.SQL.Add(format(' (iif (c.CITY is not null, c.CITY, %s%s))||%s %s|| ',[#39,#39,#39,#39]));
  DM.Qry.SQL.Add(format(' (iif (c.STREET is not null, c.STREET, %s%s))||%s %s|| ',[#39,#39,#39,#39]));
  DM.Qry.SQL.Add(format(' (iif (c.HOUSE is not null, c.HOUSE, %s%s)) AS FULL_ADRESS ',[#39,#39]));
  DM.Qry.SQL.Add(' from parties a ');
  DM.Qry.SQL.Add('left join ticket_parts b on a.id_part = b.id left join reg_ti c on b.id_owner=c.id ');
  DM.Qry.Sql.Add(' where a.id = :p0 ');
  DM.Qry.Params[0].AsInteger:=id_tp;
  DM.Qry.Open;
  R_name:=DM.Qry.FieldByName('ZAYV').AsString;
  R_address:=DM.Qry.FieldByName('FULL_ADRESS').AsString;
  Inn:=DM.Qry.FieldByName('INN').AsString;
  Kpp:=DM.Qry.FieldByName('KPP').AsString;
  Ogrn:=DM.Qry.FieldByName('OGRN').AsString;
  n_td:=DM.Qry.FieldByName('VTT').AsString;
  //////////////////////////// получили реквизиты отправителя
  if DM.Qry.Active then DM.Qry.Close;
  DM.Qry.SQL.Clear;
  DM.Qry.SQL.Add('select c.firm_name,c.address,c.country from parties a ');
  DM.Qry.SQL.Add('left join f_otprav c on a.id_shipper = c.id ');
  DM.Qry.Sql.Add(' where a.id = :p0 ');
  DM.Qry.Params[0].AsInteger:=id_tp;
  DM.Qry.Open;
  F_name:=DM.Qry.FieldByName('FIRM_NAME').AsString;
  F_address:=DM.Qry.FieldByName('ADDRESS').AsString;
  F_country:=DM.Qry.FieldByName('COUNTRY').AsString;;
  G144e:=DM.Qry_SVH.FieldByName('LIC_NUM').AsString;
  //Получим реквизиты перевозчика
  if DM.Qry.Active then DM.Qry.Close;
  DM.Qry.SQL.Clear;
  DM.Qry.SQL.Add('select a.id,a.vidtrans,b.* from ticket a ');
  DM.Qry.SQL.Add('left join carrier b on a.id_carrier = b.id ');
  DM.Qry.Sql.Add(' where a.id = :p0 ');
  DM.Qry.Params[0].AsInteger:=id_ticket;
  DM.Qry.Open;
  C_name:=DM.Qry.FieldByName('OWNER').AsString;
  C_addr:=DM.Qry.FieldByName('ADDROWN').AsString;
  C_country:=DM.Qry.FieldByName('COUNTRY_CODE').AsString;;
  C_inn:=DM.Qry.FieldByName('INN').AsString;
  V_trans:=Dm.Qry.FieldByName('VIDTRANS').AsString;
  {  DecodeTime(Now, Hour, Min, Sec, MSec);
  if Hour<10 then St_Hour:='0'+IntToStr(Hour) else St_Hour:=IntToStr(Hour);
  if Min<10 then St_min:='0'+IntToStr(Min) else St_Min:=IntToStr(Min);}
  /// найдем новый id Do1
  DM.Qry.Close;
  Dm.Qry.SQL.Clear;
  Dm.Qry.SQL.Add(' select gen_id(GEN_ID_DO_HEAD,1) from rdb$database ');
  Dm.Qry.Open;
  id_rec:=Dm.Qry.Fields[0].AsInteger;
 //// создаем новый документ Do_head
 s:='insert into do_head (id,id_tp,g073,id_svh,';
 s:=s+'g14fam,g14dolj,f_name,r_name,c_fam,f_address,f_country,r_address,r_inn,r_kpp,r_ogrn,c_name,c_addr,c_inn,c_country  )';
 s:=s+' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14,:p15,:p16,:p17,:p18) ';
 DM.SQL.Close;
 DM.SQL.SQL.Clear;
 DM.SQL.SQL.Add(s);
try
  try
   if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction; //start tran
    DM.SQL.Params[0].AsInteger:=id_rec;
    DM.SQL.Params[1].AsInteger:=id_tp;
    DM.SQL.Params[2].AsString:=New_Do_Num(New_NDo,0);
    DM.SQL.Params[3].AsInteger:=DM.Qry_SVH.FieldByName('ID').asInteger;
    DM.SQL.Params[4].AsString:=User;
    DM.SQL.Params[5].AsString:=Dolj;
    DM.SQL.Params[6].AsString:=F_name;
    DM.SQL.Params[7].AsString:=R_name;
    DM.SQL.Params[8].AsString:=Driver;
    DM.SQL.Params[9].AsString:=F_address;
    DM.SQL.Params[10].AsString:=F_country;
    DM.SQL.Params[11].AsString:=R_address;
    DM.SQL.Params[12].AsString:=Inn;
    DM.SQL.Params[13].AsString:=Kpp;
    DM.SQL.Params[14].AsString:=Ogrn;
    DM.SQL.Params[15].AsString:=C_name;
    DM.SQL.Params[16].AsString:=C_addr;
    DM.SQL.Params[17].AsString:=C_inn;
    DM.SQL.Params[18].AsString:=C_Country;
    DM.SQL.ExecQuery;
{  //// создаем новый документ Do_trand
    s:='insert into do_trand (id_do1,n_td,type_doc,name,';
    s:=s+'f_name,f_address,f_country,r_name,r_address,r_country,r_inn,r_kpp,r_ogrn )';
    s:=s+' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12) ';
    DM.SQL.Close;
    DM.SQL.SQL.Clear;
    DM.SQL.SQL.Add(s);
    DM.SQL.Params[0].AsInteger:=id_rec;
    DM.SQL.Params[1].AsInteger:=1;
    DM.SQL.Params[2].AsString:=Type_doc;
    DM.SQL.Params[3].AsString:=name_doc;
    DM.SQL.Params[4].AsString:=F_Name;
    DM.SQL.Params[5].AsString:=F_address;
    DM.SQL.Params[6].asString:=F_country;
    DM.SQL.Params[7].AsString:=R_name;
    DM.SQL.Params[8].AsString:=R_Address;
    DM.SQL.Params[9].AsString:=R_country;
    DM.SQL.Params[10].AsString:=Inn;
    DM.SQL.Params[11].AsString:=Kpp;
    DM.SQL.Params[12].AsString:=Ogrn;
    DM.SQL.ExecQuery;}
    // Создадим DoTrans
    s:='insert into do_trans (id_do1,n_ts,vidtrans,ntrans ) ';
    s:=s+' values (:p0,:p1,:p2,:p3) ';
    DM.SQL.Close;
    DM.SQL.SQL.Clear;
    DM.SQL.SQL.Add(s);
    DM.SQL.Params[0].AsInteger:=id_rec;
    DM.SQL.Params[1].AsInteger:=1;
    DM.SQL.Params[2].AsString:=V_trans;
    DM.SQL.Params[3].AsString:=Nts;
    DM.SQL.ExecQuery;
    // Создадим DoTrand
    dm.Qry.Close;
    dm.Qry.SQL.Clear;
    dm.Qry.SQL.Add('select * from ttn_in where id_ticket=:p0 and id_tp = :p1 ');
    dm.Qry.Params[0].AsInteger:=id_ticket;
    dm.Qry.Params[1].AsInteger:=id_tp;
    dm.Qry.Open;
    s:='insert into do_trand (id_do1,n_td,name,ndoc,ddoc,type_doc ) ';
    s:=s+' values (:p0,:p1,:p2,:p3,:p4,:p5) ';
    DM.SQL.Close;
    DM.SQL.SQL.Clear;
    DM.SQL.SQL.Add(s);
    DM.SQL.Params[0].AsInteger:=id_rec;
    DM.SQL.Params[1].AsInteger:=1;
    DM.SQL.Params[2].AsString:=dm.Qry.FieldByName('NAME').AsString;
    DM.SQL.Params[3].AsString:=dm.Qry.FieldByName('NDOC').AsString;
    DM.SQL.Params[4].AsDate:=dm.Qry.FieldByName('DDOC').AsDateTime;
    DM.SQL.Params[5].AsString:=dm.Qry.FieldByName('TYPE_DOC').AsString;
    DM.SQL.ExecQuery;
    // Do_Cust
    if Length(n_td) = 23  then
      begin
        s:='insert into do_cust (id_do1,name,n_doc,d_doc,type_doc ) ';
        s:=s+' values (:p0,:p1,:p2,:p3,:p4) ';
        DM.SQL.Close;
        DM.SQL.SQL.Clear;
        DM.SQL.SQL.Add(s);
        DM.SQL.Params[0].AsInteger:=id_rec;
        DM.SQL.Params[1].AsString:=Name_CustDoc;
        DM.SQL.Params[2].AsString:=n_td;
        DM.SQL.Params[3].AsDate:=StrToDate(MyUtils.DateFromCustDoc(n_td));
        DM.SQL.Params[4].AsString:=Type_CustDoc;
        DM.SQL.ExecQuery;
      end;
    //вставим запись в документы выпуска из ЗТК
    s:='insert into out_docs (id_tp,name,ndoc,ddoc,type_doc ) ';
    s:=s+' values (:p0,:p1,:p2,:p3,:p4) ';
    DM.SQL.Close;
    DM.SQL.SQL.Clear;
    DM.SQL.SQL.Add(s);
    DM.SQL.Params[0].AsInteger:=id_tp;
    DM.SQL.Params[1].AsString:='ДО-1';
    DM.SQL.Params[2].AsString:=New_Do_Num(New_NDo,0);
    DM.SQL.Params[3].AsDateTime:=Now;
    DM.SQL.Params[4].AsString:='09';
    DM.SQL.ExecQuery;
  ///////////Меняем следующий номер ДО1
    s:='update settings set next_do1=:p0 ';
    DM.SQL.Close;
    DM.SQL.SQL.Clear;
    DM.SQL.SQL.Add(s);
    DM.SQL.Params[0].AsInteger:= StrToInt(New_Do_Num(New_Ndo,1));
    DM.SQL.ExecQuery;
    DM.SQL.Transaction.Commit;
    FormSet.Refresh_settings.Execute;
    DM.Refresh_Warehouse;
    DM.Refresh_WhActIn;
    DM.Refresh_WhActOut;
    Do1_F.Find_Do(New_Do_Num(New_NDo,0),0);
    Do1_F.PageControl1.ActivePageIndex:=0;
   {    DM.Qry_DoHead.Close;
    DM.Qry_DoHead.Open;}

    {     DM.ReOpen_Do1_Detail;
     DM.IBDT_Dohead.DisableControls;
     DM.IBDT_Dohead.Close;
     DM.IBDT_Dohead.Open;
     DM.IBDT_Dohead.EnableControls;
     DM.IBDT_Dohead.Locate('G073',New_NDo,[]);
     FormEditDo.ShowModal;}
    except
      on E: Exception do
        begin
         //DM.Sql.Transaction.Rollback;
          ShowMessage(E.Message + #13#10 + Dm.SQL.SQL.Text);
        end;
   end;

 finally
   if DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.RollBack;
end;

end;

function TWarehouse_F.New_Do_Num(N: String;Increment:Integer): String;
Const
 Do_Len:Integer=6;
var
 i,j:Word;
 nomer:Integer;
 S:String;
begin
S:=N;
nomer:=StrToInt(S);
nomer:=Nomer+Increment;
S:=IntToStr(nomer);
i:=Do_Len-Length(S);
for j:=1 to i do  Insert('0',S,0);
Result:=S;
end;


procedure TWarehouse_F.PrintActWhIn_AExecute(Sender: TObject);
begin
if PrevActWhIn_F.ShowModal = mrOk then
   if (DM.Qry_Warehouse.FieldByName('TP_MOVE_CBX_CODE').AsInteger = TP_SCALED) or
      (DM.Qry_Warehouse.FieldByName('TP_MOVE_CBX_CODE').AsInteger = TP_TO_CBX) or
      (DM.Qry_Warehouse.FieldByName('TP_MOVE_CBX_CODE').AsInteger = TP_FROM_CBX_TO_CBX) then
       LockTp_A.Execute;
end;

procedure TWarehouse_F.PrintActWhIn_AUpdate(Sender: TObject);
begin
  if (Grid_ActIn.DataSource.DataSet.Active) then
    if (not Grid_ActIn.DataSource.DataSet.FieldByName('ID').isNull)
     then (Sender as TAction).Enabled:=True else (Sender as TAction).Enabled:=False;
end;

procedure TWarehouse_F.Rg_FClick(Sender: TObject);
begin
  case Rg_F.ItemIndex of
    0:  E_Nomer.EditMask:='0000000;1;_';
    1:  E_Nomer.EditMask:='0000000\/0;1;_';
  end;
  E_Nomer.Clear;
  E_Nomer.SetFocus;

end;

procedure TWarehouse_F.Splitter2Moved(Sender: TObject);
begin
  Label3.Left:=Grid_ActIn.Width;
end;

procedure TWarehouse_F.FindBtnClick(Sender: TObject);
begin
  FindTicket(E_Nomer.Text);
end;

procedure TWarehouse_F.Timer1Timer(Sender: TObject);
var
  NewThread: TNewThread;
begin
   //ShowMessage('Start');
   NewThread:=TNewThread.Create(true);
   NewThread.FreeOnTerminate:=true;
   NewThread.Priority:=tpLower;
   NewThread.Resume;
end;

procedure TWarehouse_F.ToolButton6Click(Sender: TObject);
begin
  Dm.Refresh_Warehouse;
  DM.Refresh_WhActIn;
  DM.Refresh_WhActOut;
//  Dm.Refresh_Rel_Tp_ActIn;
end;

function TWarehouse_F.WHOutToCbxChange(rec,cbxflag: Integer): Integer;
begin
Result:=1;
try
 try
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    //добавим запись в журнал талона
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update wh_act_out set cbxtocbx =:p0 where id=:p1 ');
    DM.Sql.Params[0].asInteger:=cbxflag;
    DM.Sql.Params[1].asInteger:=rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    Result:=0;
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

end.
