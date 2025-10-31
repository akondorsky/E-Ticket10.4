unit Buh_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DBGridEhGrouping, ToolWin, GridsEh, DBGridEh, StdCtrls,
  ExtCtrls,DB, ActnList, PlatformDefaultStyleActnCtrls, ActnMan, ImgList,IBX.IbQuery,myutils,
  Menus, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh,dateUtils,
  IBX.IBCustomDataSet, PrnDbgeh, PropFilerEh, PropStorageEh, System.ImageList,
  System.Actions, EhLibVCL;

type
  TBuh_F = class(TForm)
    StatusBar1: TStatusBar;
    ActionManager1: TActionManager;
    A_AddDoc: TAction;
    A_EditDoc: TAction;
    A_DelDoc: TAction;
    A_RefrDoc: TAction;
    Panel2: TPanel;
    Label1: TLabel;
    E_Find: TButtonedEdit;
    Panel1: TPanel;
    PageControl1: TPageControl;
    Tab_Invoice: TTabSheet;
    Tab_Accounts: TTabSheet;
    Panel4: TPanel;
    DBGridEh3: TDBGridEh;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    Grid_firm: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Grid_log: TDBGridEh;
    ImageList3: TImageList;
    ToolBar2: TToolBar;
    ToolButton5: TToolButton;
    Panel3: TPanel;
    Grid_Parts: TDBGridEh;
    Panel5: TPanel;
    Grid_FHead: TDBGridEh;
    Grid_FItems: TDBGridEh;
    ToolBar3: TToolBar;
    ToolButton7: TToolButton;
    A_FakturaPass: TAction;
    ToolButton10: TToolButton;
    A_FakturaCancel: TAction;
    A_FItemNew: TAction;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    A_SingleFaktura: TAction;
    A_TicketFaktura: TAction;
    PopMn_KT: TPopupMenu;
    N1: TMenuItem;
    A_FHeadDel: TAction;
    ToolButton3: TToolButton;
    RG_KT: TRadioGroup;
    ToolButton9: TToolButton;
    ToolButton11: TToolButton;
    A_FItemEdit: TAction;
    A_FItemDel: TAction;
    ToolButton14: TToolButton;
    A_PlatChange: TAction;
    A_DiscChange: TAction;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    A_FakturaPrint: TAction;
    A_KassirMark: TAction;
    ToolBtn_NewFiskalBill: TToolButton;
    A_NewFiscalBill: TAction;
    Tab_DirectToCash: TTabSheet;
    Grid_KTForPay: TDBGridEh;
    PopMn_AllKT: TPopupMenu;
    A_RefreshAllKT: TAction;
    N3: TMenuItem;
    ToolBar4: TToolBar;
    ToolButton21: TToolButton;
    ToolButton25: TToolButton;
    ToolButton22: TToolButton;
    ToolButton19: TToolButton;
    ToolButton23: TToolButton;
    PopMn_Firm: TPopupMenu;
    N2: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Qry_RepClRegTi: TIBQuery;
    Qry_RepClDetail: TIBQuery;
    Ds_RepClRegTi: TDataSource;
    A_BuhPrim: TAction;
    N7: TMenuItem;
    Ghb1: TMenuItem;
    ToolButton24: TToolButton;
    A_Negativesaldo: TAction;
    N8: TMenuItem;
    N9: TMenuItem;
    Tab_Reports: TTabSheet;
    Panel6: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Dt1: TDateTimePicker;
    Dt2: TDateTimePicker;
    Panel10: TPanel;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    ScrollBox1: TScrollBox;
    Grid_Reports: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    A_SingleActWorks: TAction;
    A_NegativeSaldoDate: TAction;
    N10: TMenuItem;
    A_OpenTicketPart: TAction;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    Panel_SumFaktura: TPanel;
    Label4: TLabel;
    Label_Summa: TLabel;
    ToolButton26: TToolButton;
    ToolButton27: TToolButton;
    N14: TMenuItem;
    A_RepPositiveSaldo: TAction;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    A_RepPositiveSaldoDate: TAction;
    N15: TMenuItem;
    procedure E_FindKeyPress(Sender: TObject; var Key: Char);
    procedure E_FindRightButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure A_AddDocExecute(Sender: TObject);
    procedure A_EditDocExecute(Sender: TObject);
    procedure A_DelDocExecute(Sender: TObject);
    procedure A_RefrDocExecute(Sender: TObject);
    procedure A_FakturaPassExecute(Sender: TObject);
    procedure A_FakturaPassUpdate(Sender: TObject);
    procedure Grid_FItemsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure A_FakturaCancelUpdate(Sender: TObject);
    procedure A_FakturaCancelExecute(Sender: TObject);
    procedure A_FItemNewExecute(Sender: TObject);
    procedure A_TicketFakturaExecute(Sender: TObject);
    procedure A_FHeadDelExecute(Sender: TObject);
    procedure A_FHeadDelUpdate(Sender: TObject);
    procedure RG_KTClick(Sender: TObject);
    procedure A_TicketFakturaUpdate(Sender: TObject);
    procedure A_SingleFakturaUpdate(Sender: TObject);
    procedure A_FItemEditExecute(Sender: TObject);
    procedure A_FItemDelExecute(Sender: TObject);
    procedure A_FItemNewUpdate(Sender: TObject);
    procedure A_FItemEditUpdate(Sender: TObject);
    procedure A_FItemDelUpdate(Sender: TObject);
    procedure A_PlatChangeExecute(Sender: TObject);
    procedure A_DiscChangeExecute(Sender: TObject);
    procedure A_PlatChangeUpdate(Sender: TObject);
    procedure A_DiscChangeUpdate(Sender: TObject);
    procedure A_FakturaPrintUpdate(Sender: TObject);
    procedure A_FakturaPrintExecute(Sender: TObject);
    procedure A_KassirMarkExecute(Sender: TObject);
    procedure A_KassirMarkUpdate(Sender: TObject);
    procedure A_NewFiscalBillExecute(Sender: TObject);
    procedure A_NewFiscalBillUpdate(Sender: TObject);
    procedure A_RefreshAllKTExecute(Sender: TObject);
    procedure Grid_KTForPayDblClick(Sender: TObject);
    procedure ToolButton25Click(Sender: TObject);
    procedure ToolButton22Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure A_BuhPrimExecute(Sender: TObject);
    procedure A_NegativesaldoExecute(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure A_SingleFakturaExecute(Sender: TObject);
    procedure A_SingleActWorksExecute(Sender: TObject);
    procedure A_SingleActWorksUpdate(Sender: TObject);
    procedure A_NegativeSaldoDateExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure ToolButton26Click(Sender: TObject);
    procedure Grid_PartsDblClick(Sender: TObject);
    procedure A_OpenTicketPartExecute(Sender: TObject);
    procedure Regti1Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure ToolButton27Click(Sender: TObject);
    procedure A_RepPositiveSaldoExecute(Sender: TObject);
    procedure A_RepPositiveSaldoDateExecute(Sender: TObject);

  private
    { Private declarations }
    procedure Find_Records(F_Str:String);
    procedure AllRecShow;
    procedure ChangeDiscount;
    procedure Get_InSaldo_For_Interval(Id_client: Integer; Date1: TDateTime);
    procedure Get_OutSaldo_For_Interval(Id_client: Integer; Date1,Date2: TDateTime);
    procedure Get_ResultSaldo_For_Interval;
    procedure CreateSingleFaktura(IsActWorks:Char);
    procedure ShowUslNote;


  public
    { Public declarations }
    In_Saldo:Currency;
    Out_Saldo:Currency;
    Result_Saldo:Currency;
    Dt_NegativeSaldo :String;
    ContinuePassFlag:Boolean;

    function  GetSaldo(Zayv:Integer):Double;

    procedure PassFaktura(Cl,Rec_F:Integer;Sm:Extended;Dt_Is:TdateTime;NDoc:String;
              Osnovanie:Integer; Ruk:string; Srok : TDateTime; Id_doc:Integer;Saldo:Double;
              Holding:Integer;Credit:Double;Balance_Before:Double;Saldo_Plat:Double;Flag:Boolean);
    procedure CancelFaktura(Rec_F:Integer);
    procedure CalcSumFaktura(Nomer:Integer);


  end;

var
  Buh_F: TBuh_F;

implementation

{$R *.dfm}
uses
 dm_u,main, Regti_U, PlDocAdd_U, PlDocEdit_U, FItemsEdit_U, FItemsAdd_U,
  RegtiDisp_U, DiscChange_U, Reports_U, PartFullEdit_U,Unit_select_date,
  PrimBuhAdd_U, DateSingle_U, SlideWindow, VypuskDolg_U,RegtiPlat_U;

procedure TBuh_F.AllRecShow;
var
 s:String;
 R:Integer;
begin
 if DM.Qry_Regti_Buh.Active then R:=DM.Qry_Regti_Buh.FieldByName('ID').asInteger else R:=0;
 s:=' SELECT A.*,  iif(c.saldo is null,0,c.saldo ) as SALDO ,  ';
 s:=s+ ' a.credit, iif((a.credit > 0) , (a.credit + c.saldo), null) as CREDIT_REST, ';
 s:=s+'  B.NAME, B.DISCOUNT AS DISC_HOLD ';
 s:=s+' FROM REG_TI A  LEFT JOIN HOLDINGS B ON A.ID_HOLD=B.ID ';
 s:=s+'  left join registr_saldo c on a.id = c.id_zayv ' ;
 s:=s+'  WHERE A.DEL_FLAG = 0 ORDER BY A.ZAYV desc ';
 DM.Qry_Regti_Buh.Close;
 DM.Qry_Regti_Buh.SQL.Clear;
 DM.Qry_Regti_Buh.SQL.Add(s);
try
  DM.Qry_Regti_Buh.Open;
  if (R > 0) then DM.Qry_Regti_Buh.Locate('ID',R,[]);
 except
      on E: EdatabaseError do
        begin
         //DM.Sql.Transaction.Rollback;
         ShowMessage(E.Message);
        end;
end;
end;

procedure TBuh_F.A_AddDocExecute(Sender: TObject);
var
 rec:Integer;
begin
  if PlDocAdd_F.ShowModal = mrOk then
  begin
    rec:= Grid_firm.DataSource.DataSet.FieldByName('ID').AsInteger;
    Grid_firm.DataSource.DataSet.Close;
    Grid_firm.DataSource.DataSet.Open;
    Grid_firm.DataSource.DataSet.Locate('ID',rec,[]);
    DM.Refresh_Fhead;
  end;

end;

procedure TBuh_F.A_BuhPrimExecute(Sender: TObject);
begin
  PrimBuhAdd_F.ShowModal;
end;

procedure TBuh_F.A_DelDocExecute(Sender: TObject);
var
 Id_rec, rec_zayv:Integer;
 s:String;
begin
  Id_rec:=DM.Qry_ClAc.FieldByName('ID').AsInteger;

 if Application.MessageBox(
      'Данные будут безвозвратно удалены.Продолжить?','Внимание',MB_ICONWARNING+MB_YESNO) <> ID_YES then Exit ;
 s:=' update cl_accounts set del_flag = :p0,date_del = :p1,user_del = :p2 where id = :p3 ' ;
 DM.Sql.Close;
 DM.Sql.SQL.Clear;
 DM.Sql.SQL.Add(s);
try
 try
 if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction; //start tran
     DM.Sql.Params[0].AsInteger:=1;
     DM.Sql.Params[1].AsDateTime:=Now;
     DM.Sql.Params[2].AsString:=User ;
     DM.Sql.Params[3].AsInteger:=Id_rec;
     DM.Sql.ExecQuery;
     DM.Sql.Transaction.Commit;
     rec_zayv:= Grid_firm.DataSource.DataSet.FieldByName('ID').AsInteger;
     Grid_firm.DataSource.DataSet.Close;
     Grid_firm.DataSource.DataSet.Open;
     Grid_firm.DataSource.DataSet.Locate('ID',rec_zayv,[]);
     DM.Qry_ClAc.Close;
     DM.Qry_ClAc.Open;
     DM.Refresh_Fhead;
  except
    on E: EdatabaseError do
      begin
       ShowMessage(E.Message);
      end;
 end;
finally
 if  DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

procedure TBuh_F.A_DiscChangeExecute(Sender: TObject);
begin
 if DiscChange_F.ShowModal <> mrOk then Exit;
 ChangeDiscount;
end;

procedure TBuh_F.A_DiscChangeUpdate(Sender: TObject);
begin
 if (DM.Qry_FHead.FieldByName('ID1').IsNull) or
    (DM.Qry_FHead.FieldByName('PASS_FLAG').AsInteger = 1) then
        (Sender as TAction).Enabled:=False
       else
        (Sender as TAction).Enabled:=True;

end;

procedure TBuh_F.A_EditDocExecute(Sender: TObject);
var
  rec:Integer;
begin
 if PlDocEdit_F.ShowModal = mrOk then
  begin
    rec:= Grid_firm.DataSource.DataSet.FieldByName('ID').AsInteger;
    Grid_firm.DataSource.DataSet.Close;
    Grid_firm.DataSource.DataSet.Open;
    Grid_firm.DataSource.DataSet.Locate('ID',rec,[]);
    DM.Refresh_Fhead;
  end;

end;

procedure TBuh_F.A_FakturaCancelExecute(Sender: TObject);
var
 id_zayv:Integer;
begin
 if Application.MessageBox('Данная операция влияет на счет клиента.Продолжить?',
                            'Отмена счет-фактуры',MB_ICONWARNING+MB_YESNO) <> ID_YES then Exit;
 CancelFaktura(DM.Qry_FHead.FieldByName('ID1').AsInteger);
id_zayv:= DM.Qry_Regti_Buh.FieldByName('ID').AsInteger;
DM.Qry_Regti_Buh.Close;
DM.Qry_Regti_Buh.Open;
Dm.Qry_Regti_Buh.Locate('ID',id_zayv,[]);
DM.Refresh_Fhead;
DM.Qry_ClAc.Close;
DM.Qry_ClAc.Open;
end;

procedure TBuh_F.A_FakturaCancelUpdate(Sender: TObject);
begin
 if (DM.Qry_FHead.FieldByName('ID1').IsNull) or
    (DM.Qry_FHead.FieldByName('PASS_FLAG').AsInteger=0) then
        (Sender as TAction).Enabled:=False
       else
        (Sender as TAction).Enabled:=True;
end;

procedure TBuh_F.A_FItemDelExecute(Sender: TObject);
var
  id_ticketmoney:Integer;
  tempbookmark:TBookmark;
  x:word;
  flag:Boolean;
begin
  flag := false;
//  if Dm.Qry_FItems.FieldByName('ID1').IsNull then Exit;
  if DM.Qry_FHead.FieldByName('PASS_FLAG').AsInteger = 1  then
    begin
      Application.MessageBox('Счет-фактура проведена.Требуется отмена проведения.','Внимание',MB_ICONSTOP+mb_ok);
      Exit;
    end;
   if (Grid_FItems.SelectedRows.Count = 0) then
    begin
      Application.MessageBox('Не выделено ни одной записи','Внимание',MB_ICONSTOP+MB_OK);
      Exit;
    end;

   if  Application.MessageBox('Данные будут удалены.Продолжить?','Подтверждение',MB_ICONWARNING+MB_YESNO) <> ID_YES
     then  Exit;
try
   Grid_FItems.DataSource.DataSet.DisableControls;
   tempbookmark := Grid_FItems.Datasource.Dataset.GetBookmark;
    with Grid_FItems.SelectedRows do
    begin
     for x := 0 to Count-1 do
      begin
       if IndexOf(Items[x]) > -1 then
          begin
              Grid_FItems.Datasource.Dataset.Bookmark := Items[x];
              try
                if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction; //start tran
                 id_ticketmoney:=Grid_FItems.DataSource.DataSet.FieldByName('ID_TICKETMONEY').AsInteger;
                 DM.Sql.Close;
                 DM.Sql.SQL.Clear;
                 DM.Sql.sql.Add(' delete from faktura_items where id=:p0  ');
                 DM.Sql.Params[0].AsInteger:=DM.Qry_FItems.FieldByName('ID').AsInteger;
                 DM.Sql.ExecQuery;
                 DM.Sql.Close;
                 DM.Sql.SQL.Clear;
                 DM.Sql.SQL.Add('update ticket_money set del_flag = 1 where id=:p0 ');
                 DM.Sql.Params[0].asInteger:=id_ticketmoney;
                 DM.Sql.ExecQuery;
                 DM.Sql.Close;
                 DM.Sql.SQL.Clear;
                 DM.Sql.SQL.Add('insert into ticket_money_deleted (id_usl_money,username,userrole) ');
                 DM.Sql.SQl.Add(' values(:p0,:p1,:p2)   ');
                 DM.Sql.Params[0].asInteger:=id_ticketmoney;
                 DM.Sql.Params[1].AsString:=User;
                 DM.Sql.Params[2].AsString:=Role;
                 DM.Sql.ExecQuery;
                 DM.Sql.Transaction.Commit;
                 flag:=true;
                 DM.Qry_FItems.Close;
                 Dm.Qry_FItems.Open;
              except
                on E: EdatabaseError do
                  begin
                   ShowMessage(E.Message);
                  end;
              end;
          end;  //end if
      end;   //end for
    end;  //end with
finally
    if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
    Grid_FItems.Datasource.Dataset.GotoBookmark(TempBookmark);
    Grid_FItems.Datasource.Dataset.FreeBookmark(TempBookmark);
    Grid_FItems.SelectedRows.Clear;
    Grid_FItems.DataSource.DataSet.EnableControls;
end;
if flag then ToolButton27Click(Self);

end;

procedure TBuh_F.A_FItemDelUpdate(Sender: TObject);
begin
 if (DM.Qry_FItems.FieldByName('ID').IsNull)
    or (DM.Qry_FHead.FieldByName('PASS_FLAG').AsInteger=1) then
        (Sender as TAction).Enabled:=False
       else
        (Sender as TAction).Enabled:=True;
end;

procedure TBuh_F.A_FItemEditExecute(Sender: TObject);
begin
 IdFItems:=DM.Qry_FItems.FieldByName('ID').AsInteger;
 FItemDataset:=DM.Qry_FItems;
 if FItemsEdit_F.ShowModal = mrOk then
   begin
     DM.Qry_FItems.Close;
     DM.Qry_FItems.Open;
     DM.Qry_FItems.Locate('ID',IdFItems,[]);
     ToolButton27Click(Self);
   end;
end;

procedure TBuh_F.A_FItemEditUpdate(Sender: TObject);
begin
 if (DM.Qry_FItems.FieldByName('ID').IsNull)
    or (DM.Qry_FHead.FieldByName('PASS_FLAG').AsInteger=1) then
        (Sender as TAction).Enabled:=False
       else
        (Sender as TAction).Enabled:=True;
end;

procedure TBuh_F.A_FItemNewExecute(Sender: TObject);
var
  id_price,plat:Integer;
  qry : TIbquery;
begin
   plat:=DM.Qry_FHead.FieldByName('PLAT_NAME').AsInteger;
   qry:=TIbQuery.Create(Self);
   try
     qry.Database:=DM.Db;
     qry.SQL.Add(' select id_price from reg_ti where id = :p0' );
     qry.Params[0].AsInteger:=plat;
     qry.Open;
   id_price:=qry.Fields[0].AsInteger;
   finally
     qry.Free;
   end;
   DM.MT_PriceList.Close;
   DM.Qry_PriceList.Close;
   DM.Qry_PriceList.Params[0].AsInteger:=id_price;
   DM.Qry_PriceList.Open;
   DM.MT_PriceList.Open;

  IdFHead:=DM.Qry_FHead.FieldByName('ID1').AsInteger;
  DiscPlat:=DM.Qry_FHead.FieldByName('DISC_PLAT').AsInteger;
  FakturaTypeNumering:=Main_F.GetTypeNumering(DM.Qry_FHead.FieldByName('NOMER').AsInteger);
  if FItemsAdd_F.ShowModal = mrOk then
     begin
       DM.Qry_FItems.Close;
       DM.Qry_FItems.Open;
       DM.Qry_FItems.Last;
       ToolButton27Click(Self);
     end;
end;

procedure TBuh_F.A_FItemNewUpdate(Sender: TObject);
begin
 if (DM.Qry_FHead.FieldByName('ID1').IsNull)
    or (DM.Qry_FHead.FieldByName('PASS_FLAG').AsInteger=1) then
        (Sender as TAction).Enabled:=False
       else
        (Sender as TAction).Enabled:=True;
end;

procedure TBuh_F.A_KassirMarkExecute(Sender: TObject);
 var
  Mes,s:String;
  id_kt,id_ticket:Integer;
begin
 if DM.Qry_FHead.FieldByName('ID').IsNull then
   begin
     Application.MessageBox('Отстутствуют счета-фактуры.','Внимание',MB_ICONSTOP+mb_ok);
     Exit;
   end;
 if DM.Qry_FHead.FieldByName('PASS_FLAG').AsInteger <> 1 then
   begin
     Application.MessageBox('Cчет-фактура не проведена.','Внимание',MB_ICONSTOP+mb_ok);
     Exit;
   end;

 Mes:='Будет проставлена отметка об оплате в талон № '+
      DM.Qry_PartForPay.FieldByName('PART_NOMER').AsString +
      '. Продолжить?';
 if Application.MessageBox(Pchar(Mes),'Внимание',mb_iconquestion+mb_yesno)=id_No then exit;
 id_kt:= DM.Qry_PartForPay.FieldByName('ID').AsInteger;
 id_ticket:= DM.Qry_PartForPay.FieldByName('ID_TICKET').AsInteger;
 s:=DM.GetFHeadList(id_kt);
try
 try
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    //добавим запись в журнал талона
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into parties_log (id_ticket,id_part,action_name,username,action_code,id_faktura) ');
    DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5) ');
    DM.Sql.Params[0].Value:=DM.Qry_PartForPay.FieldByName('ID_TICKET').AsInteger;
    DM.Sql.Params[1].Value:=id_kt;
    DM.Sql.Params[2].AsString:=STEP_6+'.Счет-фактура(ы) № '+s;
    DM.Sql.Params[3].AsString:=User;
    DM.Sql.Params[4].AsInteger:=STEP_CODE_6;
    DM.Sql.Params[5].AsInteger:=DM.Qry_FHead.FieldByName('ID_INV').AsInteger;
    DM.Sql.ExecQuery;
    //поставим флаг контроля перед списанием в часть талона для кассира
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update ticket_parts set pay_control=2 where id=:p0 ');
    DM.Sql.Params[0].Value:=id_kt;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    DM.Qry_PartForPay.Close;
    DM.Qry_PartForPay.Open;
    DM.Qry_PartForPay.Locate('ID',id_kt,[]);
    // Открыть и редактировать часть КТ
     Main_F.IdTicket:=id_ticket;
     Main_F.IdPart:=id_kt;
     PartFullEdit_F.ShowModal;
 except
    on E: EdatabaseError do
      begin
       //DM.Sql.Transaction.Rollback;
       ShowMessage(E.Message);
      end;
  end;
finally
    if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

procedure TBuh_F.A_KassirMarkUpdate(Sender: TObject);
begin
 if (not DM.Qry_PartForPay.FieldByName('ID').isNull) and
     (DM.Qry_PartForPay.FieldByName('PAY_CONTROL').AsInteger =1) then
        (Sender as TAction).Enabled:=True
       else
        (Sender as TAction).Enabled:=False;
end;

procedure TBuh_F.A_NegativeSaldoDateExecute(Sender: TObject);
begin
 if DateSingle_F.ShowModal <> mrOk then Exit;
 Dt_NegativeSaldo:=DateToStr(DateSingle_F.D1.Date);
 if DM.Qry_RepNegSaldo.Active then DM.Qry_RepNegSaldo.Close;
 DM.Qry_RepNegSaldo.SQL.Clear;
 DM.Qry_RepNegSaldo.SQL.Add(
      //' select a.zayv, sum(a.money) as saldo ,b.zayv,b.buh_note '   +
      'select a.zayv as id_zayv, sum(a.money) as saldo ,b.zayv,b.buh_note  '+
      ' from cl_accounts_vw a  left join reg_ti b on a.zayv = b.id '+
      ' where cast( a.dt as date) <= :p0 '                       +
      ' group by a.zayv ,b.zayv,b.buh_note having sum(a.money) < 0 '+
      ' order by sum(a.money) ');
 DM.Qry_RepNegSaldo.Params[0].AsDate := DateOf(DateSingle_F.D1.Date);
 DM.Qry_RepNegSaldo.Open;
 Reports_F.Rep_buh.LoadFromFile('rep_negativesaldo.fr3');
 Reports_F.Rep_buh.PrepareReport(True);
 Reports_F.Rep_buh.ShowPreparedReport;
end;

procedure TBuh_F.A_NegativesaldoExecute(Sender: TObject);
begin
 Dt_NegativeSaldo:=DateToStr(Date);
 if DM.Qry_RepNegSaldo.Active then DM.Qry_RepNegSaldo.Close;
 DM.Qry_RepNegSaldo.SQL.Clear;
 DM.Qry_RepNegSaldo.SQL.Add('select a.saldo, b.zayv,b.buh_note '+
                            ' from registr_saldo a left join reg_ti b on a.id_zayv = b.id '+
                            ' where a.saldo < 0 order by a.saldo ' );


 DM.Qry_RepNegSaldo.Open;
 Reports_F.Rep_buh.LoadFromFile('rep_negativesaldo.fr3');
 Reports_F.Rep_buh.PrepareReport(True);
 Reports_F.Rep_buh.ShowPreparedReport;
end;

procedure TBuh_F.A_NewFiscalBillExecute(Sender: TObject);
var
 idrec:Integer;
 qrytmp:TIbQuery;
begin
  if DM.Qry_FItems.FieldByName('VAT').Value > 0 then
     TaxIndex:=1
    else
     TaxIndex:=0;
  PlatNum:=DM.Qry_FHead.FieldByName('PLAT_NAME').asInteger;
  PlatName:=DM.Qry_FHead.FieldByName('PLAT').asString;
  idrec:=DM.Qry_FHead.FieldByName('ID1').AsInteger;
    ////////создадим ид,номер нового чека - bills и ид таблицы счетов cl_accounts
try
    ToolBtn_NewFiskalBill.Enabled:=False;
    qrytmp:=TIBQuery.Create(Self);
    qrytmp.Database:=Dm.DB;
    QryTmp.SQL.Add(' select gen_id(GEN_ID_CL_ACCOUNTS,1) from rdb$database ');
    QryTmp.Open;
    IdAccount:=QryTmp.Fields[0].AsInteger;
    /////
    QryTmp.Close;
    QryTmp.SQL.Clear;
    QryTmp.SQL.Add(' select a.usluga,b.krname,a.total_sum,a.kol, iif( a.kol <> 0, a.total_sum/a.kol,1) as stoim  ,a.discount');
    qrytmp.SQL.Add(' from faktura_items a left join price_lists b on a.id_usl = b.id where a.id_f_head = :p0 ');
    QryTmp.Params[0].AsInteger:=idrec;
    qrytmp.Open;
    if qryTmp.IsEmpty then
      begin
        AppliCation.MessageBox('Нет услуг для формирования чека продажи. ','Внимание',MB_ICONSTOP+MB_OK);
        Exit;
      end;

  if  Application.MessageBox(Pchar('Будет создан чек на оплату на ' + PlatName + '. Продолжить?'),'Внимание',MB_ICONQUESTION+MB_YESNO) <> ID_YES then
    begin
      Exit;
    end;


           //создаем записи в фискальном чеке
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.sql.Add(' insert into bills (id_account,name,stoim,kol,n_part,krname,id_plat) ');
    DM.Sql.sql.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6) ');
     try
        if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
        while not qrytmp.Eof do
          begin
    //
           DM.Sql.Params[0].AsInteger:=IdAccount;
           DM.Sql.Params[1].AsString:=QryTmp.FieldByName('USLUGA').AsString;
           DM.Sql.Params[2].AsDouble:=QryTmp.FieldByName('STOIM').AsFloat;
           DM.Sql.Params[3].AsDouble:=QryTmp.FieldByName('KOL').AsFloat;
           DM.Sql.Params[4].AsString:=Grid_Parts.DataSource.DataSet.FieldByName('PART_NOMER').AsString;
           DM.Sql.Params[5].AsString:=QryTmp.FieldByName('KRNAME').AsString;
           DM.Sql.Params[6].AsInteger:=PlatNum;
           DM.Sql.ExecQuery;
           qrytmp.Next;
          end;
         DM.Sql.Transaction.Commit;
     finally
        if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
     end;

  DM.Refresh_BillItems;
  Self.Close;
  Main_F.Item_AtolV10Click(Main_F.Item_AtolV10);
finally
  ToolBtn_NewFiskalBill.Enabled:=True;
  qrytmp.Free;
end;
end;

procedure TBuh_F.A_NewFiscalBillUpdate(Sender: TObject);
begin
 if (DM.Qry_FItems.FieldByName('ID').isNull) then
        (Sender as TAction).Enabled:=False
       else
        (Sender as TAction).Enabled:=True;
end;

procedure TBuh_F.A_OpenTicketPartExecute(Sender: TObject);
begin
   Main_F.IdTicket:=Grid_Parts.DataSource.DataSet.FieldByName('ID_TICKET').AsInteger;
   Main_F.IdPart:=Grid_Parts.DataSource.DataSet.FieldByName('ID').AsInteger;
   PartFullEdit_F.ShowModal;
   Grid_Parts.DataSource.DataSet.Locate('ID',Main_F.IdPart,[]);
end;

procedure TBuh_F.A_PlatChangeExecute(Sender: TObject);
 var
  s,Mes:String;
  rec_fhead,plat,Vat:Integer;
  old_disc,new_disc:Integer;
  Stoim,Kol,TotalSum,SumWithoutVat,SumVat:Double;
begin
try
 try
  old_disc:=DM.Qry_FHead.FieldByName('DISC_PLAT').AsInteger;
  if RegtiPlat_F.ShowModal <> mrOk then Exit;
  new_disc:=RegtiPlat_F.Qry_RegtiPlat.FieldByName('DISCOUNT').AsInteger;
  Mes:='Вы действительно хотите сменить плательщика на '+RegtiPlat_F.Qry_RegtiPlat.FieldByName('ZAYV').AsString+' ?';
  if Application.MessageBox(Pchar(mes),'Внимание',mb_iconquestion+mb_yesno)=id_No then exit;
  plat:=RegtiPlat_F.Qry_RegtiPlat.FieldByName('ID').AsInteger;
  rec_fhead:=DM.Qry_FHead.FieldByName('ID1').AsInteger;
  s:='update faktura_head set plat_name = :p0 where id= :p1';
  DM.Sql.Close;
  DM.Sql.SQL.Clear;
  DM.Sql.SQL.Add(s);
  if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Params[0].AsInteger :=Plat;
    DM.Sql.Params[1].AsInteger :=rec_fhead;
    DM.Sql.ExecQuery;
    if old_disc <> new_disc then
      begin
         DM.Qry.Close;
         Dm.Qry.SQL.Clear;
         DM.Qry.SQL.Add(' select id,stoim,kol,vat from faktura_items where id_f_head=:p0');
         DM.Qry.Params[0].AsInteger:=rec_fhead;
         DM.Qry.Open;
         DM.Sql.Close;
         DM.Sql.Sql.Clear;
         DM.Sql.Sql.Add (' update faktura_items set total_sum=:p0,summa=:p1,discount=:p2, ');
         DM.Sql.Sql.Add (' sum_vat=:p3, dt=:p4, username=:p5, userdolj=:p6 where id= :p7 ');
         DM.Qry.First;
         while not DM.Qry.Eof do
           begin
             Stoim:=DM.Qry.FieldByName('STOIM').AsFloat;
             Kol:=DM.Qry.FieldByName('KOL').AsFloat;
             Vat:=DM.Qry.FieldByName('VAT').AsInteger;
             TotalSum:=(Stoim*Kol)-(Stoim*Kol*new_disc/100);
             SumWithOutVat:=TotalSum - (TotalSum*Vat/105);
             SumVat:=TotalSum-SumWithoutVat;

             Dm.Sql.Params[0].AsDouble:=TotalSum;
             Dm.Sql.Params[1].AsDouble:=SumWithoutVat;
             Dm.Sql.Params[2].AsInteger:=new_disc;
             Dm.Sql.Params[3].AsDouble:=SumVat ;
             Dm.Sql.Params[4].AsDateTime:=Now;
             Dm.Sql.Params[5].AsString:=User;
             Dm.Sql.Params[6].AsString:=User;
             Dm.Sql.Params[7].AsInteger:=Dm.Qry.FieldByName('ID').asinteger;
             DM.Sql.ExecQuery;
             Dm.Qry.Next;
           end;
      end;
    DM.Sql.Transaction.Commit;
    DM.Refresh_Fhead;
    DM.Refresh_FItems;
    PlatNum:=plat;
    DM.Qry.Close;
    Dm.Qry.SQL.Clear;
    DM.qry.SQL.Add('select show_discount_note from reg_ti where id=:p0 ');
    DM.qry.Params[0].AsInteger:=PlatNum;
    DM.qry.Open;
    if DM.Qry.Fields[0].AsInteger = 1 then ShowUslNote;
  except
    on E: EdatabaseError do
      begin
       //DM.Sql.Transaction.Rollback;
       ShowMessage(E.Message);
      end;
  end;
finally
   if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

procedure TBuh_F.A_PlatChangeUpdate(Sender: TObject);
begin
 if (DM.Qry_FHead.FieldByName('ID1').IsNull) or
    (DM.Qry_FHead.FieldByName('PASS_FLAG').AsInteger = 1) then
        (Sender as TAction).Enabled:=False
       else
        (Sender as TAction).Enabled:=True;
end;

procedure TBuh_F.A_FakturaPassExecute(Sender: TObject);
 var
   Sm,Saldo,SaldoPlat:Double;
   osnovanie:Integer;
   ruk:String;
   balance,credit:Double;
   srok:TDate;
   holding:Integer;
   id_zayv:Integer;
   flag:boolean;
begin
//   if Application.MessageBox('Данная операция влияет на счет клиента.Продолжить?',
//                            'Проведение счет-фактуры',MB_ICONQUESTION+MB_YESNO) <> ID_YES then Exit;
   Sm:=Main_F.GetFakturaSum(DM.Qry_FHead.FieldByName('ID1').AsInteger);
   //SaldoPlat:=GetSaldo(DM.Qry_FHead.FieldByName('PLAT_NAME').AsInteger);
   SaldoPlat:=Grid_FHead.DataSource.DataSet.FieldByName('SALDO').AsFloat;
   Saldo := SaldoPlat;
   holding:= Grid_FHead.DataSource.DataSet.FieldByName('ID_HOLD').AsInteger;
   credit:= Grid_FHead.DataSource.DataSet.FieldByName('CREDIT_REST').AsFloat;
   if (Saldo-Sm) < 0 then
     begin
       flag:=true;
       if Application.MessageBox('У плательщика недостаточно средств для проведения счет-фактуры.Продолжить?','Внимание',MB_ICONQUESTION+MB_YESNO) <> ID_YES then Exit;
        //обработка выпуска в долг
         if VypuskDolg_F.ShowModal = mrCancel then Exit;
         //Проверка выпуска в кредит
         osnovanie := VypuskDolg_F.Osnovanie;
         ruk := VypuskDolg_F.Rukovoditel;
         srok:= VypuskDolg_F.Srok;
         if osnovanie = 0  then
          begin
             if Credit <= 0 then
               begin
                    Application.MessageBox
                    ('Выпуск в кредит невозможен.',
                        'Внимание',MB_ICONWARNING+MB_OK);
                    Exit;
               end
              else
                 if (credit - Sm)  < 0 then
                  begin
                      Application.MessageBox
                      (PChar( 'Выпуск в кредит невозможен. ' +
                          'Не хватает ' +FloatToStr(-( credit - Sm)) +' руб.' ),
                          'Внимание',MB_ICONWARNING+MB_OK);
                      Exit;
                  end;
          end;
     end;

   PassFaktura( DM.Qry_FHead.FieldByName('PLAT_NAME').AsInteger  ,
               DM.Qry_FHead.FieldByName('ID1').AsInteger ,
               Sm,
               DM.Qry_FHead.FieldByName('DATE_IS').AsDateTime ,
               IntToStr(DM.Qry_FHead.FieldByName('NOMER').AsInteger),
               osnovanie,
               ruk,
               srok,
               Grid_FHead.DataSource.DataSet.FieldByName('ID').AsInteger,
               Saldo,
               holding,
               credit,
               balance,
               SaldoPlat,
               flag
             );
   id_zayv:= DM.Qry_Regti_Buh.FieldByName('ID').AsInteger;
   DM.Qry_Regti_Buh.Close;
   DM.Qry_Regti_Buh.Open;
   Dm.Qry_Regti_Buh.Locate('ID',id_zayv,[]);
   DM.Refresh_Fhead;
   DM.Qry_ClAc.Close;
   DM.Qry_ClAc.Open;
end;

procedure TBuh_F.A_FakturaPassUpdate(Sender: TObject);
begin
 if (DM.Qry_FHead.FieldByName('ID1').IsNull) or
    (DM.Qry_FHead.FieldByName('PASS_FLAG').AsInteger=1) then
        (Sender as TAction).Enabled:=False
       else
        (Sender as TAction).Enabled:=True;
end;

procedure TBuh_F.A_FakturaPrintExecute(Sender: TObject);
begin
 IdFHead:=DM.Qry_FHead.FieldByName('ID1').AsInteger;
 DM.Qry_RepInFaktura.Close;
 DM.Qry_RepInFaktura.Params[0].AsInteger:=IdFHead;
 DM.Qry_RepInFaktura.Open;
 DM.Refresh_Settings;
 case DM.Qry_Settings.FieldByName('BUH_DOC').AsInteger of
  0:begin
     Reports_F.Rep_buh.LoadFromFile('in_faktura.fr3');
     Reports_F.Rep_buh.PrepareReport(True);
     Reports_F.Rep_buh.ShowPreparedReport;
     Reports_F.Rep_buh.LoadFromFile('act_works.fr3');
     Reports_F.Rep_buh.PrepareReport(True);
     Reports_F.Rep_buh.ShowPreparedReport;
  end;
  1:begin
//     if Trim(DM.Qry_FHead.FieldByName('IS_ACTWORK').AsString) ='Y' then
//        Reports_F.Rep_buh.LoadFromFile('act_works.fr3')
//      else
     Reports_F.Rep_buh.LoadFromFile('upd.fr3');
     Reports_F.Rep_buh.PrepareReport(True);
     Reports_F.Rep_buh.ShowPreparedReport;
  end;
 end;

end;

procedure TBuh_F.A_FakturaPrintUpdate(Sender: TObject);
begin
 if (DM.Qry_FHead.FieldByName('ID1').IsNull) then
        (Sender as TAction).Enabled:=False
       else
        (Sender as TAction).Enabled:=True;
end;

procedure TBuh_F.A_FHeadDelExecute(Sender: TObject);
var
 flag:Boolean;
 id_inv:Integer;
 qry: TIBQuery;
begin
  if Dm.Qry_FHead.FieldByName('ID1').IsNull then Exit;
  flag:=false;
  if DM.Qry_FHead.FieldByName('PASS_FLAG').AsInteger = 1  then
    begin
      Application.MessageBox('Счет-фактура проведена.Требуется отмена проведения.','Внимание',MB_ICONSTOP+mb_ok);
      Exit;
    end;
   if  Application.MessageBox('Данные будут удалены.Продолжить?','Подтверждение',MB_ICONWARNING+MB_YESNO) <> ID_YES
       then  Exit;
  id_inv:= Dm.Qry_FHead.FieldByName('ID1_INV').AsInteger;
  qry := TIBQuery.Create(Self);
  try
    qry.Database := DM.DB;
    qry.SQL.Add(' select count(id) from parties_log where id_faktura = :p0 ');
    qry.Params[0].AsInteger := id_inv;
    qry.Open;
    if qry.Fields[0].AsInteger >= 1 then
      begin
        Application.MessageBox('Счет-фактура проведена в контрольном талоне.Удаление невозможно.','Внимание',MB_ICONSTOP+mb_ok);
        Exit;
      end;
  finally
    qry.Free;
  end;

try
  try

     if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction; //start tran
     DM.Sql.Close;
     DM.Sql.SQL.Clear;
     DM.Sql.sql.Add(' delete from faktura_head where id=:p0  ');
     DM.Sql.Params[0].AsInteger:=DM.Qry_FHead.FieldByName('ID1').AsInteger;
     DM.Sql.ExecQuery;
     DM.Sql.Transaction.Commit;
     flag:=true;
     DM.Qry_FHead.Close;
     Dm.Qry_FHead.Open;
  except
    on E: EdatabaseError do
      begin
       ShowMessage(E.Message);
      end;
  end;
finally
    if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
if flag then ToolButton27Click(Self) ;
end;

procedure TBuh_F.A_FHeadDelUpdate(Sender: TObject);
begin
 if (DM.Qry_FHead.FieldByName('ID1').IsNull) then
        (Sender as TAction).Enabled:=False
       else
        (Sender as TAction).Enabled:=True;
end;

procedure TBuh_F.A_RefrDocExecute(Sender: TObject);
 var
  Id_Rec:Integer;
begin
  Id_rec:=DM.Qry_ClAc.FieldByName('ID').AsInteger;
  DM.Qry_ClAc.Close;
  DM.Qry_ClAc.Open;
  DM.Qry_ClAc.Locate('ID',Id_Rec,[]);
end;

procedure TBuh_F.A_RefreshAllKTExecute(Sender: TObject);
var
 r:Integer;
begin
  if DM.Qry_AllPartsForPay.Active then
     begin
       r:=DM.Qry_AllPartsForPay.FieldByName('ID').AsInteger;
       DM.Qry_AllPartsForPay.Close;
       DM.Qry_AllPartsForPay.Open;
       DM.Qry_AllPartsForPay.Locate('ID',r,[]);
     end;
end;

procedure TBuh_F.A_RepPositiveSaldoDateExecute(Sender: TObject);
begin
 if DateSingle_F.ShowModal <> mrOk then Exit;
 Dt_NegativeSaldo:=DateToStr(DateSingle_F.D1.Date);
 if DM.Qry_RepNegSaldo.Active then DM.Qry_RepNegSaldo.Close;
 DM.Qry_RepNegSaldo.SQL.Clear;
 DM.Qry_RepNegSaldo.SQL.Add(
      //' select a.zayv, sum(a.money) as saldo ,b.zayv,b.buh_note '   +
      'select a.zayv as id_zayv, sum(a.money) as saldo ,b.zayv,b.buh_note  '+
      ' from cl_accounts_vw a  left join reg_ti b on a.zayv = b.id '+
      ' where cast( a.dt as date) <= :p0 '                       +
      ' group by a.zayv ,b.zayv,b.buh_note having sum(a.money) > 0 '+
      ' order by b.zayv ');
 DM.Qry_RepNegSaldo.Params[0].AsDate := DateOf(DateSingle_F.D1.Date);
 DM.Qry_RepNegSaldo.Open;
 Reports_F.Rep_buh.LoadFromFile('rep_negativesaldo.fr3');
 Reports_F.Rep_buh.PrepareReport(True);
 Reports_F.Rep_buh.ShowPreparedReport;
end;

procedure TBuh_F.A_RepPositiveSaldoExecute(Sender: TObject);
begin
 Dt_NegativeSaldo:=DateToStr(Date);
 if DM.Qry_RepNegSaldo.Active then DM.Qry_RepNegSaldo.Close;
 DM.Qry_RepNegSaldo.SQL.Clear;
 DM.Qry_RepNegSaldo.SQL.Add('select a.saldo, b.zayv,b.buh_note '+
                            ' from registr_saldo a left join reg_ti b on a.id_zayv = b.id '+
                            ' where a.saldo > 0 order by b.zayv ' );


 DM.Qry_RepNegSaldo.Open;
 Reports_F.Rep_buh.LoadFromFile('rep_negativesaldo.fr3');
 Reports_F.Rep_buh.PrepareReport(True);
 Reports_F.Rep_buh.ShowPreparedReport;
end;

procedure TBuh_F.A_SingleActWorksExecute(Sender: TObject);
begin
  CreateSingleFaktura('Y');
end;

procedure TBuh_F.A_SingleActWorksUpdate(Sender: TObject);
begin
 if (DM.Qry_Regti_Buh.FieldByName('ID').IsNull) then
        (Sender as TAction).Enabled:=False
       else
        (Sender as TAction).Enabled:=True;
end;

procedure TBuh_F.A_SingleFakturaExecute(Sender: TObject);
begin
  CreateSingleFaktura('N');
end;

procedure TBuh_F.A_SingleFakturaUpdate(Sender: TObject);
begin
 if (DM.Qry_Regti_Buh.FieldByName('ID').IsNull) then
        (Sender as TAction).Enabled:=False
       else
        (Sender as TAction).Enabled:=True;

end;

procedure TBuh_F.A_TicketFakturaExecute(Sender: TObject);
var
 id_part:Integer;
 A:array of integer;
 x,y,LenArray:word;
 new_rec,i,NextFactura,NextActWorks:Integer;
 TempBookMark:TBookmark;
 mes:String;
 TotalSum,VatSum,WithoutVatSum:Double;
 QryTmp:TIbQuery;
 change_plat:Boolean;
begin
 if DM.Qry_Regti_Buh.FieldByName('VALID').AsString = 'F' then
   begin
      mes:='Для данной организации операции запрещены.';
      Application.MessageBox(PChar(mes),'Внимание',MB_ICONSTOP+MB_OK);
      Exit ;
   end;
 try
     id_part:=Grid_Parts.DataSource.DataSet.FieldByName('ID').AsInteger;
     QryTmp:=TIBQuery.Create(Self);
     QryTmp.Database:=DM.DB;
     QryTmp.SQL.Add('select count(id) from parties_log where id_part = :p0 and action_code = :p1');
     QryTmp.Params[0].AsInteger:=id_part;
     QryTmp.Params[1].AsInteger:=STEP_CODE_4;
     QryTmp.Open;
     if QryTmp.Fields[0].AsInteger = 0  then
        begin
          if Application.MessageBox('В контрольном талоне нет отметок техника.Продолжить?',
                  'Внимание',MB_ICONWARNING+MB_YESNO) = mrNo then Exit;
        end;

     mes:='Будет создана с-ф для '+DM.Qry_Regti_Buh.FieldByName('ZAYV').AsString+'. Продолжить?';
     if Application.MessageBox(PChar(mes),
          'Подтверждение',MB_ICONQUESTION+MB_YESNO) <> ID_YES then Exit ;

    PlatNum:=DM.Qry_Regti_Buh.FieldByName('ID').AsInteger;

    Grid_Parts.DataSource.DataSet.DisableControls;
  //проверим, есть ли в списке услуги с услугами, не включенными в с-ф
    DM.Qry.Close;
    DM.Qry.SQL.Clear;
    Dm.Qry.SQL.Add(' select count(*) from ticket_money_v ');
    Dm.Qry.SQL.Add(' where id_part = :p0 and checked = :p1 ');
    DM.Qry.Params[0].AsInteger:=id_part;
    DM.Qry.Params[1].AsString:='F';
    Dm.Qry.Open;
    if DM.Qry.Fields[0].AsInteger = 0 then
      begin
        Application.MessageBox('В текущем талоне нет услуг, подлежащих оплате','Внимание',MB_ICONSTOP+mb_ok);
        Exit;
      end;

  //проверим, есть ли в списке услуги без НДС и установим количество счетов-фактур для формирования
    QryTmp.Close;
    QryTmp.SQL.Clear;
//  данный блок использовалсЯ, когда надо было посчитать услуги с НДС и без НДС
//    QryTmp.SQL.Add(' select count(*),b.vat from ticket_money_v a left join price_lists b on a.id_usl=b.id ');
//    QryTmp.SQL.Add(' where a.id_part =:p0 and a.checked=:p1  group by b.vat  ');
//  данный блок используется  для подсчета услуг с разным типом нумераций(см. описание таблицы price_lists field type_numbering
    QryTmp.SQL.Add(' select count(*),b.type_numering from ticket_money_v a left join price_lists b on a.id_usl=b.id ');
    QryTmp.SQL.Add(' where a.id_part =:p0 and a.checked=:p1  group by b.type_numering  ');
    QryTmp.Params[0].AsInteger:=id_part;
    QryTmp.Params[1].AsString:='F';
    QryTmp.Open;
    DM.Refresh_Settings;
    NextFactura:=DM.Qry_Settings.FieldByName('NEXT_FAKTURA').AsInteger;
    NextActWorks:=DM.Qry_Settings.FieldByName('NEXT_ACTWORKS').AsInteger;



  try
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction; //start tran
   while not QryTmp.Eof do
    begin
    DM.Qry.Close;
    DM.Qry.SQL.Clear;
    Dm.Qry.SQL.Add('select gen_id(GEN_ID_FAKTURA_HEAD,1) from rdb$database');
    Dm.Qry.Open;
    new_rec:=DM.Qry.Fields[0].AsInteger;

       //создаем заголовок с/ф

       DM.Sql.Close;
       DM.Sql.SQL.Clear;
       DM.Sql.sql.Add(' insert into faktura_head (id,nomer,user_name,r_name,plat_name,type_f,user_dolj,is_actwork) ');
       DM.Sql.sql.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7) ');
       DM.Sql.Params[0].AsInteger:=new_rec;
       if Trim(QryTmp.Fields[1].AsString) = 'A'  then
          DM.Sql.Params[1].AsInteger:=NextFactura;
       if Trim(QryTmp.Fields[1].AsString) = 'B' then
          DM.Sql.Params[1].AsInteger:=NextActWorks;
       //DM.Sql.Params[2].AsDateTime:=Now;
       DM.Sql.Params[2].AsString:=User;
       DM.Sql.Params[3].AsInteger:=DM.Qry_Regti_Buh.FieldByName('ID').AsInteger;
       DM.Sql.Params[4].AsInteger:=PlatNum;
       DM.Sql.Params[5].AsString:='T'; // см. описание соответствующей таблицы в БД
       DM.Sql.Params[6].AsString:=Dolj;
//       if QryTmp.Fields[1].AsInteger = 0 then
//          DM.Sql.Params[8].AsString:='Y'
//         else
//          DM.Sql.Params[8].AsString:='N';
       DM.Sql.Params[7].AsString:='Y';
       DM.Sql.ExecQuery;
       // создадим  связку с/ф с КТ
       DM.Sql.Close;
       DM.Sql.SQL.Clear;
       DM.Sql.sql.Add(' insert into rel_kt_inv (id_kt,id_inv) ');
       DM.Sql.sql.Add(' values (:p0,:p1) ');
       DM.Sql.Params[0].AsInteger:=id_part;
       DM.Sql.Params[1].AsInteger:=new_rec;
       DM.Sql.ExecQuery;

       DM.Qry.Close;
       DM.Qry.SQL.Clear;
       Dm.Qry.SQL.Add('select a.*,iif (a.days is null, a.kol_uslug, a.days*a.kol_uslug) as kol,b.name,b.krname,b.npp_str,b.stoim,b.vat,b.edizm from ticket_money_v a  ');
       Dm.Qry.SQL.Add(' left join price_lists b on a.id_usl=b.id where a.id_part = :p0  ');
       //DM.Qry.SQL.Add(' and a.checked=:p1 and b.vat = :p2  order by a.id_usl ' );
       DM.Qry.SQL.Add(' and a.checked=:p1 and b.type_numering = :p2  order by a.id_usl ' );
       DM.Qry.Params[0].AsInteger:=id_part;
       DM.Qry.Params[1].AsString:='F';
       DM.Qry.Params[2].AsString:=Trim(QryTmp.FieldByName('TYPE_NUMERING').AsString);
       Dm.Qry.Open;
      //подготовим начисленные в талоне усдуги к переносу в счет-фактуру

       while not DM.Qry.Eof do
        begin
           DM.Sql.Close;
           DM.Sql.SQL.Clear;
           DM.Sql.sql.Add(' insert into faktura_items (id_f_head,usluga,stoim,kol,edizm,id_usl,total_sum,vat,discount,npp_str,summa,sum_vat,id_ticketmoney,username,userdolj,ts_flag) ');
           DM.Sql.sql.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14,:p15) ');
           DM.Sql.Params[0].AsInteger:=new_rec;
           DM.Sql.Params[1].AsString:=DM.Qry.FieldByName('NAME').AsString;
           DM.Sql.Params[2].AsDouble:=DM.Qry.FieldByName('STOIM').AsFloat;
           DM.Sql.Params[3].AsDouble:=DM.Qry.FieldByName('KOL').AsFloat;
           DM.Sql.Params[4].AsString:=DM.Qry.FieldByName('EDIZM').AsString;
           DM.Sql.Params[5].AsInteger:=DM.Qry.FieldByName('ID_USL').AsInteger;
           TotalSum:=DM.Qry.FieldByName('KOL').AsFloat*DM.Qry.FieldByName('STOIM').AsFloat;
           if DM.Qry_Regti_Buh.FieldByName('DISCOUNT').AsInteger > 0 then
             TotalSum:=TotalSum-(TotalSum * DM.Qry_Regti_Buh.FieldByName('DISCOUNT').AsInteger / 100);
           DM.Sql.Params[6].AsDouble:=TotalSum;
           DM.Sql.Params[7].AsInteger:=VatRate;
           DM.Sql.Params[8].AsInteger:=DM.Qry_Regti_Buh.FieldByName('DISCOUNT').AsInteger;
           DM.Sql.Params[9].AsString:=DM.Qry.FieldByName('NPP_STR').AsString;
           WithoutVatSum:=TotalSum - (TotalSum*VatRate/105 );
           DM.Sql.Params[10].AsDouble:=WithoutVatSum;
           DM.Sql.Params[11].AsDouble:=TotalSum-WithoutVatSum  ;
           DM.Sql.Params[12].AsInteger:=DM.Qry.FieldByName('ID').AsInteger;
           DM.Sql.Params[13].AsString:=User;
           DM.Sql.Params[14].AsString:=Dolj;
           DM.Sql.Params[15].AsInteger:=DM.Qry.FieldByName('TS_FLAG').AsInteger;
           DM.Sql.ExecQuery;

         // во всех еще не взятых услугах услугах установим флаг checked
           DM.Sql.Close;
           DM.Sql.SQL.Clear;
           DM.Sql.sql.Add(' update ticket_money set checked=:p0  ');
           DM.Sql.sql.Add( 'where id = :p1 ');
           DM.Sql.Params[0].AsString:='T';
           DM.Sql.Params[1].AsInteger:=DM.Qry.FieldByName('ID').AsInteger;
           DM.Sql.ExecQuery;
           DM.Qry.Next;
        end;
     //увеличим счетчик номера с-ф
       DM.Sql.Close;
       DM.Sql.SQL.Clear;
       if Trim(QryTmp.Fields[1].AsString) = 'A'  then
          begin
             DM.Sql.sql.Add(' update settings set next_faktura=:p0  ');
             DM.Sql.Params[0].AsInteger:=NextFactura+1;
             DM.Sql.ExecQuery;
             NextFactura:=NextFactura+1;
          end;
       if Trim(QryTmp.Fields[1].AsString) = 'B' then
          begin
             DM.Sql.sql.Add(' update settings set next_actworks=:p0  ');
             DM.Sql.Params[0].AsInteger:=NextActWorks+1;
             DM.Sql.ExecQuery;
             NextActWorks:=NextActWorks+1;
          end;
      QryTmp.Next;
     end; // конец цикла перебора сгрупированных усуг
       DM.Sql.Transaction.Commit;
       DM.Refresh_Fhead;
       DM.Refresh_FItems;

    QryTmp.Close;
    QryTmp.SQL.Clear;
    QryTmp.SQL.Add('select show_discount_note from reg_ti where id =:p0');
    QryTmp.Params[0].AsInteger:=PlatNum;
    QryTmp.Open;
    if QryTmp.Fields[0].asInteger  = 1 then
      begin
        ShowUslNote;
      end;

    except
      on E: EdatabaseError do
        begin
         ShowMessage(E.Message);
        end;
   end;

finally
 if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback; //start tran
 Grid_Parts.DataSource.DataSet.EnableControls;
 QryTmp.Free;
end;
  if(not Grid_Parts.DataSource.DataSet.Fields[0].IsNull) then
    if (not Grid_FHead.DataSource.DataSet.Fields[0].IsNull) then CalcSumFaktura(Grid_Parts.DataSource.DataSet.FieldByName('ID').AsInteger);
end;

procedure TBuh_F.A_TicketFakturaUpdate(Sender: TObject);
begin
 if DM.Qry_Regti_Buh.Active then
   if not (DM.Qry_Regti_Buh.FieldByName('ID').IsNull) and
      not (Grid_Parts.DataSource.DataSet.FieldByName('ID').isNull) then
          (Sender as TAction).Enabled:=True
         else
          (Sender as TAction).Enabled:=False;
end;

procedure TBuh_F.Button1Click(Sender: TObject);
begin
try
 Button1.Enabled:=False;
 Application.ProcessMessages;
 Dm.Qry_BuhRep_FakturaSumma.Close;
 Dm.Qry_BuhRep_FakturaSumma.Params[0].AsDate:=dateOf(dt1.Date);
 Dm.Qry_BuhRep_FakturaSumma.Params[1].AsDate:=dateOf(dt2.Date);
 try
   Dm.Qry_BuhRep_FakturaSumma.Open;
 except
   Exit;
 end;
finally
  Button1.Enabled:=True;
end;
end;

procedure TBuh_F.Button2Click(Sender: TObject);
begin
 PrintDBGridEh1.Preview;
end;




procedure TBuh_F.CalcSumFaktura(Nomer: Integer);
var
  qry:TIBQuery;
  qry1:Tibquery;
  summa:Double;
begin
  summa:=0;
  qry := TIBQuery.Create(Self);
  qry1 := TIBQuery.Create(Self);
  try
    qry.Database:=DM.DB;
    qry1.Database:=DM.DB ;
    qry.SQL.Add(' select id_inv from rel_kt_inv where id_kt =:p0 ');
    qry.Params[0].AsInteger:=Nomer;
    qry.Open;
    qry1.SQL.Add(' select sum(total_sum) from faktura_items where id_f_head = :p0');
    while not qry.Eof do
      begin
        if qry1.Active then qry1.Close;
        qry1.Params[0].AsInteger:=qry.Fields[0].AsInteger;
        qry1.Open;
        summa:=summa + qry1.Fields[0].AsFloat;
        qry.Next;
      end;
  finally
    qry.Free;
    qry1.Free;
    Label_Summa.Caption := FloatToStr(summa);
  end;


end;

procedure TBuh_F.CancelFaktura(Rec_F: Integer);
  var
   s1:String;
begin
try

  s1:=' update cl_accounts set del_flag = :p0,date_del = :p1,user_del = :p2 where id_doc = :p3 ' ;
  DM.Sql.Close;
  DM.Sql.SQL.Clear;
  DM.Sql.SQL.Add(s1);
  if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction;
  try
    DM.Sql.Params[0].AsInteger:=1;
    DM.Sql.Params[1].AsDateTime:=Now;
    DM.Sql.Params[2].AsString:=User ;
    DM.Sql.Params[3].AsInteger:=Rec_F;
    DM.Sql.ExecQuery;

    s1:='update faktura_head set pass_flag=0 where id = :p0';
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add(s1);
    DM.Sql.Params[0].AsInteger:=Rec_F;
    DM.Sql.ExecQuery;

    s1:='update reasondolg set delete_flag=:p0,date_del=:p1, iddoc_del=:p2 where id_doc = :p3';
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add(s1);
    DM.Sql.Params[0].AsInteger:=1;
    DM.Sql.Params[1].AsDateTime:= Now;
    DM.Sql.Params[2].AsInteger:=Rec_F;
    DM.Sql.Params[3].AsInteger:=Rec_F;
    DM.Sql.ExecQuery;


    DM.Sql.Transaction.Commit;

   except
      on E: EdatabaseError do
        begin
         //DM.Sql.Transaction.Rollback;
         ShowMessage(E.Message);
        end;

  end; //try
 finally
  if DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.Rollback;
end;
end;

procedure TBuh_F.ChangeDiscount;
 var
  NewDisc,RecFHead,RecFItems,Vat:Integer;
  Stoim,Kol,TotalSum,SumWithoutVat,SumVat:Double;
begin
  NewDisc:=StrToInt(DiscChange_F.E_Disc.Text);
  RecFHead:=DM.Qry_FHead.FieldByName('ID1').AsInteger;
  DM.Qry.Close;
  Dm.Qry.SQL.Clear;
  DM.Qry.SQL.Add(' select id,stoim,kol,vat from faktura_items where id_f_head=:p0');
  DM.Qry.Params[0].AsInteger:=RecFHead;
  DM.Qry.Open;
  try
     try
       if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction;
       DM.Sql.Close;
       DM.Sql.Sql.Clear;
       DM.Sql.Sql.Add (' update faktura_items set total_sum=:p0,summa=:p1,discount=:p2, ');
       DM.Sql.Sql.Add (' sum_vat=:p3, dt=:p4, username=:p5, userdolj=:p6 where id= :p7 ');
       DM.Qry.First;
       while not DM.Qry.Eof do
         begin
           Stoim:=DM.Qry.FieldByName('STOIM').AsFloat;
           Kol:=DM.Qry.FieldByName('KOL').AsFloat;
           Vat:=DM.Qry.FieldByName('VAT').AsInteger;
           TotalSum:=(Stoim*Kol)-(Stoim*Kol*NewDisc/100);
           SumWithOutVat:=TotalSum - (TotalSum*Vat/105);
           SumVat:=TotalSum-SumWithoutVat;
           Dm.Sql.Params[0].AsDouble:=TotalSum;
           Dm.Sql.Params[1].AsDouble:=SumWithoutVat;
           Dm.Sql.Params[2].AsInteger:=NewDisc;
           Dm.Sql.Params[3].AsDouble:=SumVat ;
           Dm.Sql.Params[4].AsDateTime:=Now;
           Dm.Sql.Params[5].AsString:=User;
           Dm.Sql.Params[6].AsString:=User;
           Dm.Sql.Params[7].AsInteger:=Dm.Qry.FieldByName('ID').asinteger;
           DM.Sql.ExecQuery;
           Dm.Qry.Next;
         end;
       DM.Sql.Transaction.Commit;
       DM.Refresh_FItems;
     except
      on E: EdatabaseError do
        begin
         //DM.Sql.Transaction.Rollback;
         ShowMessage(E.Message);
        end;

     end; //try
 finally
  if DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.Rollback;
end
end;

procedure TBuh_F.CreateSingleFaktura(IsActWorks: Char);
var
 Id_rec,NextNomerDoc:Integer;
 s,mes:String;
begin
 if DM.Qry_Regti_Buh.FieldByName('VALID').AsString = 'F' then
   begin
      mes:='Для данной организации операции запрещены.';
      Application.MessageBox(PChar(mes),'Внимание',MB_ICONSTOP+MB_OK);
      Exit ;
   end;

 mes:='Будет создана с-ф для '+DM.Qry_Regti_Buh.FieldByName('ZAYV').AsString+'. Продолжить?';
 if Application.MessageBox(PChar(mes),
      'Подтверждение',MB_ICONQUESTION+MB_YESNO) <> ID_YES then Exit ;
  DM.Qry.Close;
  DM.Qry.SQL.Clear;
  Dm.Qry.SQL.Add('select gen_id(GEN_ID_FAKTURA_HEAD,1) from rdb$database');
  Dm.Qry.Open;
  id_rec:=DM.Qry.Fields[0].AsInteger;
  DM.Refresh_Settings;
  if IsActWorks='Y' then
      NextNomerDoc:= DM.Qry_Settings.FieldByName('NEXT_ACTWORKS').AsInteger
    else
      NextNomerDoc:= DM.Qry_Settings.FieldByName('NEXT_FAKTURA').AsInteger;

try
 try
   if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction; //start tran
   //создаем заголовок с/ф
   DM.Sql.Close;
   DM.Sql.SQL.Clear;
   DM.Sql.sql.Add(' insert into faktura_head (id,nomer,user_name,r_name,plat_name,type_f,user_dolj,is_actwork) ');
   DM.Sql.sql.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7) ');
   DM.Sql.Params[0].AsInteger:=id_rec;
   DM.Sql.Params[1].AsInteger:=NextNomerDoc;
   //DM.Sql.Params[2].AsDateTime:=Now;
   DM.Sql.Params[2].AsString:=User;
   DM.Sql.Params[3].AsInteger:=DM.Qry_Regti_Buh.FieldByName('ID').AsInteger;
   DM.Sql.Params[4].AsInteger:=DM.Qry_Regti_Buh.FieldByName('ID').AsInteger;
   DM.Sql.Params[5].AsString:='S'; // см. описание соответствующей таблицы в БД
   DM.Sql.Params[6].AsString:=Dolj;
   if IsActWorks = 'Y' then
      DM.Sql.Params[7].AsString:='Y' //act works
     else
      DM.Sql.Params[7].AsString:='N'; // faktura

   DM.Sql.ExecQuery;
   //увеличим счетчик номера документов
   DM.Sql.Close;
   DM.Sql.SQL.Clear;
   if IsActWorks = 'Y' then
      DM.Sql.sql.Add(' update settings set next_actworks=:p0  ')
     else
      DM.Sql.sql.Add(' update settings set next_faktura=:p0  ');
   DM.Sql.Params[0].AsInteger:=NextNomerDoc+1;
   DM.Sql.ExecQuery;

   DM.Sql.Transaction.Commit;
   DM.Qry_FHead.Close;
   DM.Qry_FHead.Open;
   DM.Qry_FHead.Locate('ID1',id_rec,[]);
  except
    on E: EdatabaseError do
      begin
       ShowMessage(E.Message);
      end;
 end;
finally
 if  DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

procedure TBuh_F.E_FindKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then Find_Records(E_Find.Text);
end;

procedure TBuh_F.E_FindRightButtonClick(Sender: TObject);
begin
 Find_Records(E_Find.Text)
end;

procedure TBuh_F.Find_Records(F_Str: String);
var
 s:String;
begin
 if Length(Trim(F_Str)) = 0 then
   begin
     AllRecShow;
     Exit;
   end;
 s:=' SELECT A.*,  iif(c.saldo is null,0,c.saldo ) as SALDO , ';
 s:=s+ ' a.credit, iif((a.credit > 0) , (a.credit + c.saldo), null) as CREDIT_REST, ';
 s:=s+'  B.NAME, B.DISCOUNT AS DISC_HOLD ';
 s:=s+' FROM REG_TI A  LEFT JOIN HOLDINGS B ON A.ID_HOLD=B.ID ';
 s:=s+'  left join registr_saldo c on a.id = c.id_zayv ' ;
 s:=s+ format(' where A.ZAYV containing %s%s%s AND A.DEL_FLAG = 0 ',[#39,Trim(F_Str),#39]);
 s:=s+ '  order by A.ZAYV ';
DM.Qry_Regti_Buh.Close;
DM.Qry_Regti_Buh.SQL.Clear;
DM.Qry_Regti_Buh.SQL.Add(s);
try
  DM.Qry_Regti_Buh.Open;
 except
      on E: EdatabaseError do
        begin
         //DM.Sql.Transaction.Rollback;
         ShowMessage(E.Message);
        end;
end;
end;

procedure TBuh_F.FormActivate(Sender: TObject);
begin
  DM.Qry_PartForPay.DataSource:=DM.DS_Regti_Buh;
  DM.Qry_ClAc.DataSource:=DM.DS_Regti_Buh;
end;

procedure TBuh_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin

{ if DM.Qry_ClAc.Active then DM.Qry_ClAc.Close;
 if DM.Qry_VidPlDoc.Active then DM.Qry_VidPlDoc.Close;
 if DM.Qry_VidOp.Active then DM.Qry_VidOp.Close;
 if DM.Qry_ReasDog.Active then DM.Qry_ReasDog.Close;
 if DM.Qry_PartForPay.Active then DM.Qry_PartForPay.Close;
 if DM.Qry_FHead.Active then DM.Qry_FHead.Close;
 if DM.Qry_FItems.Active then DM.Qry_FItems.Close;}
end;

procedure TBuh_F.FormDeactivate(Sender: TObject);
begin
   DM.Qry_PartForPay.DataSource:=Nil;
   DM.Qry_ClAc.DataSource:=Nil;
end;

procedure TBuh_F.FormShow(Sender: TObject);
begin
  Dt1.Date:=Date;
  Dt2.Date:=Date;
  if ((Pos('ACCOUNTER_VIEW',Rights) > 0)) then
    begin
      PageControl1.Pages[1].Enabled := False;
      PageControl1.Pages[3].Enabled := False;
      ToolButton2.Enabled := False;
      ToolButton4.Enabled := False;
      ToolButton6.Enabled := False;
    end;
 AllRecShow;
end;



function TBuh_F.GetSaldo(Zayv: Integer): Double;
var
 QryTmp:TIBquery;
begin
 try
  QryTmp:=TIbQuery.Create(Self);
  QryTmp.Database:=DM.DB;
  QryTmp.SQL.Add(' select saldo  from registr_saldo where id_zayv=:p0 ');
  QryTmp.Params[0].AsInteger:=Zayv;
  QryTmp.Open;
  Result:=QryTmp.Fields[0].AsFloat;
 finally
  QryTmp.Free;
 end;
end;



procedure TBuh_F.Get_InSaldo_For_Interval(Id_client: Integer; Date1: TDateTime);
begin
  DM.Qry.Close;
  Dm.Qry.SQL.Clear;
  Dm.Qry.SQL.Add('select sum(money) from cl_accounts_vw where zayv=:p0 and cast(dt as date) < :p1 ');
  DM.Qry.Params[0].AsInteger:=Id_Client;
  DM.Qry.Params[1].Asdate:=Date1;
  Dm.Qry.Open;
  Buh_F.In_Saldo:=Dm.Qry.Fields[0].AsCurrency;
  DM.Qry.Close;
end;

procedure TBuh_F.Get_OutSaldo_For_Interval(Id_client: Integer; Date1,
  Date2: TDateTime);
begin
  DM.Qry.Close;
  Dm.Qry.SQL.Clear;
  Dm.Qry.SQL.Add('select sum(money) from cl_accounts_vw where zayv=:p0 and cast(dt as date) between :p1 and :p2 ');
  DM.Qry.Params[0].AsInteger:=Id_Client;
  DM.Qry.Params[1].Asdate:=Date1;
  DM.Qry.Params[2].Asdate:=Date2;
  Dm.Qry.Open;
  Buh_F.Out_Saldo:=Dm.Qry.Fields[0].AsCurrency;
  DM.Qry.Close
end;

procedure TBuh_F.Get_ResultSaldo_For_Interval;
begin
   Buh_F.Result_Saldo:=Buh_F.In_saldo+Buh_F.Out_saldo;
end;

procedure TBuh_F.Grid_FItemsDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
if  DM.Qry_FHead.FieldByName('PASS_FLAG').AsInteger = 1  then
 begin
  Grid_FItems.Canvas.Font.Color := clBlack; // Font color
  Grid_FItems.Canvas.Brush.Color := LighterColor(clSilver,30); // Background color
  Grid_FItems.Canvas.FillRect(Rect);
 end;

if Grid_FItems.SelectedRows.CurrentRowSelected   then
 begin
  Grid_FItems.Canvas.Font.Color := clYellow; // Font color
  Grid_FItems.Canvas.Brush.Color := clBlue; // Background color
  Grid_FItems.Canvas.FillRect(Rect);
 end;


Grid_FItems.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TBuh_F.Grid_KTForPayDblClick(Sender: TObject);
begin
  E_Find.Text:=Grid_KTForPay.DataSource.DataSet.FieldByName('ZAYV').AsString;
  Find_Records(E_Find.Text);
end;

procedure TBuh_F.Grid_PartsDblClick(Sender: TObject);
begin
  A_OpenTicketPart.Execute;
end;

procedure TBuh_F.N13Click(Sender: TObject);
begin
 if DM.Qry_ReasonDolgMaster.Active then Dm.Qry_ReasonDolgMaster.Close;
 if DM.Qry_ReasonDolgDetail.Active then Dm.Qry_ReasonDolgDetail.Close;
 DM.Qry_ReasonDolgMaster.Open;
 DM.Qry_ReasonDolgDetail.Open;
 try
    Reports_F.Rep_buh.LoadFromFile('rep_debt1.fr3');
    Reports_F.Rep_buh.ShowReport(True);
 finally
    DM.Qry_ReasonDolgMaster.Close;
    DM.Qry_ReasonDolgDetail.Close;
 end;
end;

procedure TBuh_F.N4Click(Sender: TObject);
begin

 if FormSeldate.ShowModal <> MrOk then exit;
 if Dm.Qry_Bank.Active then DM.Qry_Bank.Close;
 try
    DM.Qry_Bank.Params[0].AsDate:=DateOf(FormSelDate.D1.Date);
    DM.Qry_Bank.Params[1].AsDate:=DateOf(FormSelDate.D2.Date);
    DM.Qry_Bank.Open;
    Reports_F.Rep_buh.LoadFromFile('bank.fr3');
    Reports_F.Rep_buh.ShowReport(True);
 finally
    if Dm.Qry_Bank.Active then DM.Qry_Bank.Close;
 end;
end;

procedure TBuh_F.N5Click(Sender: TObject);
var
  N_Rec:Integer;
begin
  if FormSeldate.ShowModal <> MrOk then exit;
  N_Rec:=Grid_Firm.DataSource.DataSet.FieldByName('ID').asInteger;
  Get_InSaldo_For_Interval(N_Rec,DateOf(FormSelDate.D1.Date));
  Get_OutSaldo_For_Interval(N_Rec,DateOf(FormSelDate.D1.Date),DateOf(FormSelDate.D2.Date));
  Get_ResultSaldo_For_Interval;
  Qry_RepClRegTi.Close;
  Qry_RepClRegTi.SQL.Clear;
  Qry_RepClRegTi.SQL.Add(format(' select id, zayv from reg_ti where id = %s ',[IntToStr(N_Rec)]));
  Qry_RepClRegTi.Open;
 try
  Qry_RepClDetail.Close;
  Qry_RepClDetail.DataSource:=Ds_RepClRegTi;
  Qry_RepClDetail.SQL.Clear;
  Qry_RepClDetail.SQL.Add('select B.ZAYV, B.dt, B.MONEY, B.N_DOC, C.NAME as DOC, D.NAME as ACTION ' );
  Qry_RepClDetail.SQL.Add('FROM CL_ACCOUNTS_VW B LEFT JOIN VID_PL_DOC C ON B.KOD_DOC=C.ID ' );
  Qry_RepClDetail.SQL.Add('LEFT JOIN vid_oper D ON B.kod_vid=D.ID  where   ');
  Qry_RepClDetail.SQL.Add(' (CAST(B.DT AS DATE) BETWEEN :p0 and :p1) and B.ZAYV =:ID ');
  Qry_RepClDetail.Params[0].AsDate:=DateOf(FormSelDate.D1.Date);
  Qry_RepClDetail.Params[1].AsDate:=DateOf(FormSelDate.D2.Date);
  Qry_RepClDetail.Open;
  Reports_F.Rep_buh.LoadFromFile('rep_clientdetail.fr3');
  Reports_F.Rep_buh.ShowReport(True);
  Reports_F.frxCl_Ac_detail.Close;
 finally
  Qry_RepClDetail.DataSource:=Nil;
 end;

end;

procedure TBuh_F.N9Click(Sender: TObject);
var
  s1,s2,s3,s4,s5:String;
//  Ds_Tmp:TdataSource;
begin
{  if FormSeldate.ShowModal <> MrOk then exit;
  s5:='select id_num, zayv from reg_ti order by zayv ';
  DM.Qry_Rep.Close;
  DM.Qry_Rep.SQL.Clear;
  DM.Qry_Rep.SQL.Add(s5);
  DM.Qry_Rep.Open;
//  ShowMessage(DM.Qry_Rep.FieldByName('ZAYV').AsString);
  DM.Qry_Rep_Cl_Ac.DataSource:=DM.DSQry_rep;
 try
  s1:='select B.ZAYV, B.dt, B.MONEY, B.N_DOC, C.NAME as DOC, D.NAME as ACTION ';
  s2:='FROM CL_ACCOUNTS B LEFT JOIN VID_PL_DOC C ON B.KOD_DOC=C.ID_NUM ';
  s3:='LEFT JOIN VID_OP D ON B.KOD_VID=D.ID_NUM  where  ';
  s4:=' (CAST(B.DT AS DATE) BETWEEN :p0 and :p1) and B.ZAYV =:ID_NUM ';
//  s4:=' B.ZAYV =:ID_NUM ';
  DM.Qry_Rep_Cl_Ac.Close;
  DM.Qry_Rep_Cl_Ac.SQL.Clear;
  DM.Qry_Rep_Cl_Ac.SQL.Add(s1+s2+s3+s4);
  DM.Qry_Rep_Cl_Ac.Params[0].AsDate:=DateOf(FormSelDate.D1.Date);
  DM.Qry_Rep_Cl_Ac.Params[1].AsDate:=DateOf(FormSelDate.D2.Date);
  DM.Qry_Rep_Cl_Ac.Open;
  FormRep.fR2.LoadFromFile('Rep_cl_ac_detail.fr3');
  FormRep.fR2.ShowReport(True);
  FormRep.frxCl_Ac_detail.Close;
//  DBGridEh1.DataSource.DataSet.EnableControls;
 finally
//  DM.Qry_Rep_Cl_Ac.DataSource:=Nil;
//  DBGridEh3.DataSource.DataSet.EnableControls;
 end;}
end;

procedure TBuh_F.PassFaktura(Cl, Rec_F: Integer; Sm: Extended;
  Dt_Is: TdateTime; NDoc:String; Osnovanie:Integer; Ruk:string; Srok : TDateTime;
  Id_doc:Integer;Saldo:Double;Holding:Integer;Credit:Double;Balance_Before:Double;Saldo_Plat:Double;Flag:Boolean );
  var
   s1,s2:String;
begin
try
  s1:='insert into cl_accounts (DT,N_DOC,MONEY,KOD_VID,KOD_DOC,ZAYV,FISCAL_FLAG,ID_DOC )' ;
  s2:=' values (:p0, :p1,:p2,:p3,:p4,:p5,:p6,:p7 )';
  DM.Sql.Close;
  DM.Sql.SQL.Clear;
  DM.Sql.SQL.Add(s1+s2);
  if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction;
  try
    DM.Sql.Params[0].AsDateTime:=Dt_Is;
    DM.Sql.Params[1].AsString:=NDoc;
    DM.Sql.Params[2].AsCurrency:=-Sm;
    DM.Sql.Params[3].AsInteger:=2; //списание
    DM.Sql.Params[4].AsInteger:=4; //счет-фактура
    DM.Sql.Params[5].AsInteger:=Cl;
    DM.Sql.Params[6].AsString:='Y'; //фискальный документ
    DM.Sql.Params[7].AsInteger:=Rec_F;
    DM.Sql.ExecQuery;

    s1:='update faktura_head set pass_flag=1 where id = :p0';  //1 - проведена, не подлежит изменению
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add(s1);
    DM.Sql.Params[0].AsInteger:=Rec_F;
    DM.Sql.ExecQuery;

    if flag then //выпуск в долг
      begin
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        case Osnovanie of
          0:begin
              s1:='insert into reasondolg (dt_is,id_doc,id_plat,id_hold,saldo_before,credit_before, username,summa, ' +
                   ' saldo_after,credit_after,dolg_rest) ' +
                   ' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7, :p8, :p9,:p10) ';
              DM.Sql.SQL.Add(s1);
              DM.Sql.Params[0].AsDateTime:=now;
              DM.Sql.Params[1].AsInteger:=Rec_F;
              DM.Sql.Params[2].AsInteger:= Cl;
              DM.Sql.Params[3].AsInteger:= Holding;
              DM.Sql.Params[4].AsFloat:= Saldo;
              DM.Sql.Params[5].AsFloat:= Credit;
              DM.Sql.Params[6].AsString:=User;
              DM.Sql.Params[7].AsFloat:= Sm;
              DM.Sql.Params[8].AsFloat:= Saldo - Sm;
              DM.Sql.Params[9].AsFloat:= Credit - Sm;
              DM.Sql.Params[10].AsFloat:= Sm;
              DM.Sql.ExecQuery;
          end;
          1:begin
              s1:='insert into reasondolg (dt_is,id_doc,id_plat,id_hold,saldo_before,chief, username, ' +
                  ' srok,summa,saldo_after,dolg_rest) ' +
                   ' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8, :p9,:p10) ';
              DM.Sql.SQL.Add(s1);
              DM.Sql.Params[0].AsDateTime:=now;
              DM.Sql.Params[1].AsInteger:=Rec_F;
              DM.Sql.Params[2].AsInteger:= Cl;
              DM.Sql.Params[3].AsInteger:= Holding;
              DM.Sql.Params[4].AsFloat:= Saldo ;
              DM.Sql.Params[5].AsString:= Ruk;
              DM.Sql.Params[6].AsString:=User;
              DM.Sql.Params[7].AsDateTime:=Srok;
              DM.Sql.Params[8].AsFloat:= Sm;
              DM.Sql.Params[9].AsFloat:= Saldo - Sm;
              DM.Sql.Params[10].AsFloat:= Sm;
              DM.Sql.ExecQuery;
          end;
        end;
      end;



//    if Osnovanie = 0  then
//      begin
//        s1:='insert into holdingcredit (id_hold, dt_is,id_doc,balance_before,balance_after) ' +
//             ' values ( :p0, :p1, :p2, :p3, :p4 ) ';
//        DM.Sql.Close;
//        DM.Sql.SQL.Clear;
//        DM.Sql.SQL.Add(s1);
//        DM.Sql.Params[0].AsInteger:= Grid_firm.DataSource.DataSet.FieldByName('ID_HOLD').AsInteger;
//        DM.Sql.Params[1].AsDateTime:= Dt_Is;
//        DM.Sql.Params[2].AsInteger:= Grid_FHead.DataSource.DataSet.FieldByName('ID').AsInteger;
//        DM.Sql.Params[3].AsFloat:= Grid_firm.DataSource.DataSet.FieldByName('BALANCE').AsFloat;
//        DM.Sql.Params[4].AsFloat:= Grid_firm.DataSource.DataSet.FieldByName('BALANCE').AsFloat - Sm;
//        DM.Sql.ExecQuery;
//      end;


    DM.Sql.Transaction.Commit;
   except
      on E: EdatabaseError do
        begin
         //DM.Sql.Transaction.Rollback;
         ShowMessage(E.Message);
        end;

  end; //try
 finally
  if DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.Rollback;

end;
end;

procedure TBuh_F.Regti1Click(Sender: TObject);
begin
  RegtiPlat_F.ShowModal;
end;

procedure TBuh_F.RG_KTClick(Sender: TObject);
var
 s_body,s_cond,s_trailer:String;
 rec:Integer;
begin
rec:=DM.Qry_PartForPay.FieldByName('ID').AsInteger;
s_body:=format('select a.*,b.n_ticket || %s/%s || a.npp as PART_NOMER from TICKET_PARTS A left join TICKET b on a.id_ticket=b.id ',[#39,#39]);
case RG_KT.ItemIndex of
  0: s_cond:=format( ' where a.pay_control =1 and a.id_owner=:id  ',
             [Main_F.Grid_TicketParts.DataSource.DataSet.FieldByName('ID_OWNER').asString]);
  1: s_cond:=format( ' where a.id_owner=:id  ',
             [Main_F.Grid_TicketParts.DataSource.DataSet.FieldByName('ID_OWNER').asString]);
end;
s_trailer:=' order by part_nomer desc';
DM.Qry_PartForPay.Close;
DM.Qry_PartForPay.SQl.Clear;
DM.Qry_PartForPay.SQl.Add(s_body+s_cond+s_trailer);
DM.Qry_PartForPay.Open;
DM.Qry_PartForPay.Locate('ID',rec,[]);
end;

procedure TBuh_F.ShowUslNote;
begin

 if not Assigned(SlideWind_F) then
     begin
        SlideWind_F:=TSlideWind_F.Create(Application);
     end;
 SlideWind_F.ShowModal;

end;

procedure TBuh_F.ToolButton22Click(Sender: TObject);
begin
  DM.Refresh_Fhead;
  DM.Refresh_FItems;
  DM.Refresh_Qry_PartForPay;
end;

procedure TBuh_F.ToolButton25Click(Sender: TObject);
begin
  DM.Refresh_Qry_AllPartsForPay;
end;

procedure TBuh_F.ToolButton26Click(Sender: TObject);
begin
//
end;

procedure TBuh_F.ToolButton27Click(Sender: TObject);
begin
  if(not Grid_Parts.DataSource.DataSet.Fields[0].IsNull) then
    if (not Grid_FHead.DataSource.DataSet.Fields[0].IsNull) then CalcSumFaktura(Grid_Parts.DataSource.DataSet.FieldByName('ID').AsInteger)
end;

end.




