unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, DBGridEhGrouping, GridsEh, DBGridEh,
   StdCtrls,  ComCtrls,  ToolWin,
   ActnMan,  ActnCtrls,  ImgList,  ActnList,  StdActns,
   ActnMenus,    ExtCtrls,     ButtonGroup,  CategoryButtons,  Buttons,DB,  Menus,
   PlatformDefaultStyleActnCtrls,MyUtils, IBX.IBQuery, ToolCtrlsEh,
   DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh, PropFilerEh, PropStorageEh, Mask,
  System.ImageList, System.Actions, EhLibVCL, IBX.IBCustomDataSet,atol;

type


  TMain_F = class(TForm)
    AM_Main: TActionManager;
    ImL_16: TImageList;
    ImL_32: TImageList;
    A_ShowTickets: TAction;
    A_AddTicket: TAction;
    A_EditTS: TAction;
    A_AddTS: TAction;
    ImL_Buttons16: TImageList;
    A_AddTrailer: TAction;
    A_DelTrailer: TAction;
    A_EditTicket: TAction;
    A_AddPart: TAction;
    A_AddTP: TAction;
    A_EditKTFull: TAction;
    Mn1: TMainMenu;
    ToolBar1: TToolBar;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    KT_PopMn: TPopupMenu;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    E_Find: TButtonedEdit;
    Label1: TLabel;
    Label2: TLabel;
    WorkDate2: TDateTimePicker;
    WorkDate1: TDateTimePicker;
    SetWorkInterval_Btn: TSpeedButton;
    Label3: TLabel;
    CPGr1: TCategoryPanelGroup;
    CP_KT: TCategoryPanel;
    Grid_Ticket: TDBGridEh;
    CP_TS: TCategoryPanel;
    Grid_TS: TDBGridEh;
    CP_Parts: TCategoryPanel;
    Grid_TicketParts: TDBGridEh;
    CP_TP: TCategoryPanel;
    Grid_TP: TDBGridEh;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    TS_PopMn: TPopupMenu;
    AddTS_Item: TMenuItem;
    EditTs_Item: TMenuItem;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    N2: TMenuItem;
    AddTrailer_Item: TMenuItem;
    DelTrailer_Item: TMenuItem;
    A_RefKT: TAction;
    A_EditPart: TAction;
    A_EditTP: TAction;
    A_RefTS: TAction;
    A_RefParts: TAction;
    A_RefTP: TAction;
    Parts_PopMn: TPopupMenu;
    AddPart_Item: TMenuItem;
    EditPart_Item: TMenuItem;
    TP_PopMn: TPopupMenu;
    AddTP_Item: TMenuItem;
    EditTp_Item: TMenuItem;
    A_Step1: TAction;
    A_Step2: TAction;
    ToolButton5: TToolButton;
    Step_PopMn: TPopupMenu;
    N5: TMenuItem;
    N6: TMenuItem;
    A_Steps: TAction;
    A_TpToClosedCbx: TAction;
    N7: TMenuItem;
    ImL_TP_Action: TImageList;
    A_TpToOpenCbx: TAction;
    A_TS_ON_CBX: TAction;
    KPP_MainItem: TMenuItem;
    Park_MainItem: TMenuItem;
    Operator_MainItem: TMenuItem;
    It_21: TMenuItem;
    Step1_Item: TMenuItem;
    It_31: TMenuItem;
    Step2_Item: TMenuItem;
    Keeper_MainItem: TMenuItem;
    It_41: TMenuItem;
    ImL_Button32: TImageList;
    Iml_Button24: TImageList;
    It_42: TMenuItem;
    ImL_Check: TImageList;
    A_TPToCbx: TAction;
    N3: TMenuItem;
    It_32: TMenuItem;
    WorkWithDo12_A: TAction;
    Accounter_MainItem: TMenuItem;
    Sprav_MainItem: TMenuItem;
    Reports_MainItem: TMenuItem;
    Set_MainItem: TMenuItem;
    About_MainItem: TMenuItem;
    It_Val: TMenuItem;
    It_Oksmt: TMenuItem;
    It_Carrier: TMenuItem;
    It_VidTrans: TMenuItem;
    It_CustDoc: TMenuItem;
    It_TransDoc: TMenuItem;
    It_Tnved: TMenuItem;
    It_Prices: TMenuItem;
    It_PriceList: TMenuItem;
    It_RegTi: TMenuItem;
    N4: TMenuItem;
    ToolButton6: TToolButton;
    A_OperatorPartyControl: TAction;
    Iml_Parts_PayControl: TImageList;
    N10: TMenuItem;
    N9: TMenuItem;
    N11: TMenuItem;
    A_TsOut: TAction;
    N12: TMenuItem;
    N13: TMenuItem;
    ImL_TsOut: TImageList;
    A_TsFinished: TAction;
    N14: TMenuItem;
    N16: TMenuItem;
    A_PrnTicketPart: TAction;
    N18: TMenuItem;
    N17: TMenuItem;
    A_ParkZTK: TAction;
    N20: TMenuItem;
    A_Step2Cancel: TAction;
    N21: TMenuItem;
    It_43: TMenuItem;
    It_44: TMenuItem;
    A_CancelPayControl: TAction;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    N22: TMenuItem;
    N24: TMenuItem;
    A_TP_Partial_Write_Off: TAction;
    A_TP_Full_Write_Off: TAction;
    N1: TMenuItem;
    N8: TMenuItem;
    N19: TMenuItem;
    ImL_ZTK: TImageList;
    Iml_reg: TImageList;
    A_ZTK_TP_Full_Write_Off: TAction;
    A_ZTK_TP_Partial_Write_Off: TAction;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    BtnHelp: TBitBtn;
    ToolButton7: TToolButton;
    A_TicketLog: TAction;
    A_PrintTicket: TAction;
    Mn_PrintKT: TMenuItem;
    A_Reports: TAction;
    A_PrintPayList: TAction;
    N29: TMenuItem;
    A_Tp_CBX_to_Cbx: TAction;
    N30: TMenuItem;
    A_PassOutAdd: TAction;
    APassOutAdd1: TMenuItem;
    A_ZtkOutDocs: TAction;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    AdminItems: TMenuItem;
    N38: TMenuItem;
    A_SysTpToCBX: TAction;
    A_SysTpScaled: TAction;
    A_SysTpLocked: TAction;
    N39: TMenuItem;
    N40: TMenuItem;
    N23: TMenuItem;
    A_DelPart: TAction;
    N41: TMenuItem;
    A_DelTp: TAction;
    A_SysTpReg: TAction;
    N43: TMenuItem;
    E_Pop: TButtonedEdit;
    Label4: TLabel;
    ImL_Electricty: TImageList;
    N49: TMenuItem;
    N50: TMenuItem;
    N51: TMenuItem;
    Label5: TLabel;
    E_Td: TButtonedEdit;
    Lbl_tp: TLabel;
    N52: TMenuItem;
    A_Holdings: TAction;
    N53: TMenuItem;
    mnErrorEnter: TMenuItem;
    mnSetErrorEnter: TMenuItem;
    mnDeleteErrorEnter: TMenuItem;
    N54: TMenuItem;
    N15: TMenuItem;
    N55: TMenuItem;
    A_PrintVesCheque: TAction;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N56: TMenuItem;
    N57: TMenuItem;
    N58: TMenuItem;
    A_PrintVesTrailer: TAction;
    N59: TMenuItem;
    Iml_DNG: TImageList;
    N60: TMenuItem;
    A_DngCheck: TAction;
    A_DngUncheck: TAction;
    N61: TMenuItem;
    N62: TMenuItem;
    N37: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure A_ShowTicketsExecute(Sender: TObject);
    procedure A_AddTicketExecute(Sender: TObject);
    procedure A_EditTSExecute(Sender: TObject);
    procedure A_AddTSExecute(Sender: TObject);
    procedure A_AddTrailerExecute(Sender: TObject);
    procedure A_DelTrailerExecute(Sender: TObject);
    procedure A_EditTicketExecute(Sender: TObject);
    procedure A_AddPartExecute(Sender: TObject);
    procedure A_AddTPExecute(Sender: TObject);
    procedure A_EditKTFullUpdate(Sender: TObject);
    procedure E_FindRightButtonClick(Sender: TObject);
    procedure E_FindKeyPress(Sender: TObject; var Key: Char);
    procedure SetWorkInterval_BtnClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure A_EditKTFullExecute(Sender: TObject);
    procedure A_RefKTExecute(Sender: TObject);
    procedure A_EditPartExecute(Sender: TObject);
    procedure A_EditTPExecute(Sender: TObject);
    procedure A_RefTSExecute(Sender: TObject);
    procedure A_RefPartsExecute(Sender: TObject);
    procedure A_RefTPExecute(Sender: TObject);
    procedure A_EditTicketUpdate(Sender: TObject);
    procedure A_AddTSUpdate(Sender: TObject);
    procedure A_EditTSUpdate(Sender: TObject);
    procedure A_AddTrailerUpdate(Sender: TObject);
    procedure A_DelTrailerUpdate(Sender: TObject);
    procedure A_AddPartUpdate(Sender: TObject);
    procedure A_EditPartUpdate(Sender: TObject);
    procedure A_AddTPUpdate(Sender: TObject);
    procedure A_EditTPUpdate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure A_Step1Execute(Sender: TObject);
    procedure A_Step2Execute(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure A_StepsExecute(Sender: TObject);
    procedure A_Step1Update(Sender: TObject);
    procedure A_Step2Update(Sender: TObject);
    procedure A_TpToClosedCbxExecute(Sender: TObject);
    procedure A_TpToClosedCbxUpdate(Sender: TObject);
    procedure A_TpToOpenCbxExecute(Sender: TObject);
    procedure A_TS_SCALINGExecute(Sender: TObject);
    procedure A_TS_ON_CBXExecute(Sender: TObject);
    procedure A_Goods_ScalingExecute(Sender: TObject);
    procedure A_TpToOpenCbxUpdate(Sender: TObject);
    procedure It_41Click(Sender: TObject);
    procedure It_42Click(Sender: TObject);
    procedure A_TPToCbxExecute(Sender: TObject);
    procedure A_TPToCbxUpdate(Sender: TObject);
    procedure WorkWithDo12_AExecute(Sender: TObject);
    procedure It_ValClick(Sender: TObject);
    procedure It_OksmtClick(Sender: TObject);
    procedure It_CarrierClick(Sender: TObject);
    procedure It_VidTransClick(Sender: TObject);
    procedure It_CustDocClick(Sender: TObject);
    procedure It_TransDocClick(Sender: TObject);
    procedure It_TnvedClick(Sender: TObject);
    procedure It_PricesClick(Sender: TObject);
    procedure It_PriceListClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Grid_TicketPartsDblClick(Sender: TObject);
    procedure It_RegTiClick(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure A_OperatorPartyControlExecute(Sender: TObject);
    procedure A_OperatorPartyControlUpdate(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure Grid_TSDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure N9Click(Sender: TObject);
    procedure A_TsOutExecute(Sender: TObject);
    procedure A_TsOutUpdate(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure A_TsFinishedExecute(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure A_PrnTicketPartExecute(Sender: TObject);
    procedure E_FindEnter(Sender: TObject);
    procedure A_ParkZTKExecute(Sender: TObject);
    procedure A_Step2CancelExecute(Sender: TObject);
    procedure A_Step2CancelUpdate(Sender: TObject);
    procedure Grid_TPDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure It_43Click(Sender: TObject);
    procedure It_44Click(Sender: TObject);
    procedure A_CancelPayControlExecute(Sender: TObject);
    procedure A_CancelPayControlUpdate(Sender: TObject);
    procedure A_TP_Partial_Write_OffExecute(Sender: TObject);
    procedure A_TP_Full_Write_OffExecute(Sender: TObject);
    procedure A_TP_Partial_Write_OffUpdate(Sender: TObject);
    procedure A_TP_Full_Write_OffUpdate(Sender: TObject);
    procedure A_ZTK_TP_Full_Write_OffExecute(Sender: TObject);
    procedure A_ZTK_TP_Partial_Write_OffExecute(Sender: TObject);
    procedure A_ZTK_TP_Partial_Write_OffUpdate(Sender: TObject);
    procedure A_ZTK_TP_Full_Write_OffUpdate(Sender: TObject);
    procedure A_PrnTicketPartUpdate(Sender: TObject);
    procedure About_MainItemClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtnHelpClick(Sender: TObject);
    procedure A_TicketLogExecute(Sender: TObject);
    procedure Set_MainItemClick(Sender: TObject);
    procedure A_PrintTicketExecute(Sender: TObject);
    procedure Mn_PrintKTClick(Sender: TObject);
    procedure A_ReportsExecute(Sender: TObject);
    procedure A_PrintPayListExecute(Sender: TObject);
    procedure A_Tp_CBX_to_CbxExecute(Sender: TObject);
    procedure A_Tp_CBX_to_CbxUpdate(Sender: TObject);
    procedure A_PassOutAddExecute(Sender: TObject);
    procedure A_ZtkOutDocsExecute(Sender: TObject);
    procedure A_PassOutAddUpdate(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure A_SysTpToCBXExecute(Sender: TObject);
    procedure A_SysTpScaledExecute(Sender: TObject);
    procedure A_SysTpLockedExecute(Sender: TObject);
    procedure A_SysTpToCBXUpdate(Sender: TObject);
    procedure A_SysTpScaledUpdate(Sender: TObject);
    procedure A_SysTpLockedUpdate(Sender: TObject);
    procedure A_DelPartExecute(Sender: TObject);
    procedure A_DelTpExecute(Sender: TObject);
    procedure A_DelPartUpdate(Sender: TObject);
    procedure A_DelTpUpdate(Sender: TObject);
    procedure A_SysTpRegExecute(Sender: TObject);
    procedure A_SysTpRegUpdate(Sender: TObject);
    procedure E_PopRightButtonClick(Sender: TObject);
    procedure E_PopKeyPress(Sender: TObject; var Key: Char);
    procedure N46Click(Sender: TObject);
    procedure N47Click(Sender: TObject);
    procedure Grid_TicketDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure N50Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure E_TdKeyPress(Sender: TObject; var Key: Char);
    procedure A_HoldingsExecute(Sender: TObject);
    procedure mnSetErrorEnterClick(Sender: TObject);
    procedure mnDeleteErrorEnterClick(Sender: TObject);
    procedure N54Click(Sender: TObject);
    procedure Grid_TicketPartsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure N55Click(Sender: TObject);
    procedure E_FindLeftButtonClick(Sender: TObject);
    procedure E_PopLeftButtonClick(Sender: TObject);
    procedure A_PrintVesChequeExecute(Sender: TObject);
    procedure A_PrintVesTrailerExecute(Sender: TObject);
    procedure A_DngCheckExecute(Sender: TObject);
    procedure A_DngUncheckExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IdTicket:Integer;
    IdPart:Integer;
    IdTS:Integer;
    IdTP:Integer;
    TamSklad_Flag:Integer;
    MyList:TList;
    procedure Find_KT(S:String);
    procedure Find_Pop(S:String);
    procedure Find_Vtt(S:String);
    function  GetTsNumber(Id_ticket:Integer):String;
    function  GetActWeight (Id_scale:Integer):Double;
    procedure PrintKT(IdTicket:Integer);
    procedure PrintKT_Ves(IdTs:Integer);
    procedure PrintKT_VesTrailer(IdTicket:Integer);
    function  GetTsEnter(IdTicket:Integer):String;
    function GetTsDriverFio(Id_ticket:Integer): string;
    function GetTicketId(N_Ticket:Integer):Integer;
    function CbxToCbx(Rec:Integer;GridName:TDBGridEh):Integer;
    function GetTypeNumering(N:Integer):String;
    function GetFakturaVat(Id:Integer):Double;
    function GetFakturaSum(Id:Integer):Double;
    procedure CreatePassWODocs(id_ts,n_ticket,id_ticket:Integer;n_ts,n_trailer:String);
    function GetCBXContract(Id:Integer):String;
  end;
const
//глобальные константы
// описание этапов контроля
 STEP_0:String='КТ Создан';
 STEP_1:String='ТС размещено в ЗТК';
 STEP_2:String='Документы зарегистрированы';
 STEP_3:String='Груз помещен на СВХ';
 STEP_3_1:String='Опасный груз';
 STEP_4:String='Услуги ксерокопирования';
 STEP_5:String='Направление в кассу';
 STEP_5_1:String='Отмена направления в кассу ';
 STEP_6:String='Услуги оплачены';
 STEP_7:String='Выдача груза разрешена';
 STEP_7_1:String='Груз выдан';
 STEP_8:String='Груз покинул территорию';
// коды этапов контроля
 STEP_CODE_0:Integer=0;
 STEP_CODE_1:Integer=1;
 STEP_CODE_2:Integer=2;
 STEP_CODE_3:Integer=3;
 STEP_CODE_3_1:Integer=31;
 STEP_CODE_4:Integer=4;
 STEP_CODE_5:Integer=5;
 STEP_CODE_5_1:Integer=51;
 STEP_CODE_6:Integer=6;
 STEP_CODE_7:Integer=7;
 STEP_CODE_7_1:Integer=71;
 STEP_CODE_8:Integer=8;
// описание статусов контрольного талоны
 STATUS_W:String='Рабочий документ';
 STATUS_A:String='Архивный документ';
 STATUS_B:String='Заблокирован';
 STATUS_D:String='Помечен на удаление';
// описание действий с ТС
 ACTION_MOVE_IN:String='ТС размещено';
 ACTION_MOVE_OUT:String='ТС убыло';
// коды действий с ТС
 ACTION_MOVE_IN_CODE:Integer=1;
 ACTION_MOVE_OUT_CODE:Integer=2;
 // типы парковок
 PARK_TYPE_ZTK:String='ЗТК';
 PARK_TYPE_CBX:String='СВХ';
 //коды состояний ТП при регистрации поле REG of table parties
 TP_CREATED:Integer=0; // ТП создана и не зарегистрировна
 TP_REGISTERED:Integer=1; // ТП зарегистрирована
 //коды состояний ТП при регистрации поле TP_MOVE_CBX_CODE of table parties
 TP_TO_CBX:Integer=2; // ТП направлена на хранение
 TP_SCALED:Integer=3; // ТП взвешена, есть акт взвешивания
 TP_LOCKED:Integer=4; // ТП размещена на хранение
 TP_OUT_CBX:integer=5;//  ТП частично выдана
 TP_WROTED_OFF:Integer=6;// ТП списана
 TP_FROM_CBX_TO_CBX:Integer=7; // ТП перемещается между складами
//коды направления на списание ТП с CBX   поле ZTK_CONDITION of table parties
 PARTIAL_WRITE_OFF:Integer = 1; // Разрешено частичное списание ТП с СВХ
 FULL_WRITE_OFF:Integer = 2; // Разрешено полное списание ТП с СВХ
 //коды направления на списание ТП с ZTK
 ZTK_PARTIAL_WRITE_OFF:Integer = 1; // Разрешено частичное списание ТП с ZTK
 ZTK_FULL_WRITE_OFF:Integer = 2; // Разрешено полное списание ТП с ZTK
 // описание действий с ТП
 ACTION_TP_LOCKED:String='ТП принята на хранение';
 ACTION_TP_WROTE_OFF:String='ТП выдана со склада';
 //типы складов
 ZTK:String='ЗТК';
 OCBX:String='Откр.СВХ';
 CCBX:String='Закр.СВХ';
 //состояние парковочных мест
 PLACE_FREE:Integer=0; // место свободно
 PLACE_OCCUPIED:Integer=1; // место занято
 PLACE_MOVE_TO_CBX:Integer=2; // ТС направлено на СВХ
 PLACE_MOVE_TO_ZTK:Integer=3; // ТС направлено на ЗТК
 PLACE_DISABLE:Integer=4; // место не используется
 //действия с заказчиками
 ACTION_ENABLE_ZAYV:String='Разрешить обслуживание'; // заказчик обслуживается
 ACTION_DISABLE_ZAYV:String='Остановить обслуживание'; // заказчик не обслуживается
 //e-mail рассылка коды событий
 MAIL_CODE_IN_ZTK:Integer=1;
 MAIL_CODE_IN_CBX:Integer=11;
 MAIL_CODE_OUT_CBX:Integer=12;
 MAIL_CODE_FINISHED:Integer=2;

 SQL_KT:String='select first 50 a.*, b.owner,b.id, b.phone from ticket a left join carrier b on a.id_carrier = b.id order by a.n_ticket desc ' ;
 MAIN_GRID_COLOR:TColor=clYellow; //$4080FF;
var
  Main_F: TMain_F;
 // переменные глобального контекста
  IdUser:Integer;//ид. пользователя
  User:String;//имя пользователя
  Role:String; // роль пользователя
  Dolj:String;// должность пользователя
  Rights:String;//доп.права пользователя
  TaxIndex:Integer;//  //TaxIndex - индекс фискальной группы для кассового аппарата
  PlatNum:Integer; // Id плательщика
  PlatName:String;// наименование плательщика
  IdFHead,IdFItems,DiscPlat:Integer;
  FItemDataset:TIbQuery;
  CurDecSep:Char;
  OutDoc_Sender:Word; // 0 - Wh;    1 - Do ,
  RemoteFlag:String;
  FakturaTypeNumering:String;
  IdAccount:Integer; // ид записи таблицы cl_accounts
  N_Bill:Integer;  // № фискального чека
  DynArrayInt: array of Integer; // Дин. массив общего назначения
implementation

{$R *.dfm}

uses Splash_U, Login_U, DM_U, Tickets_U, TicketAdd_U, EditTs_U, TrailerAdd_U,
  TicketEdit_U, PartAdd_U, TpAdd_U, PartEdit_U, TpEdit_U,
  PartFullEdit_U, Reports_U, AddTs_U,ParkZtk_U,
  ScalingTP_U, Warehouse_U, Do1_U, Val_U, Oksmt_U, Carrier_U, VidTrans_U,
  Tdoc_U, Docg44_U, Tnved4_U, Prices_U, PriceList_U, Regti_U, Buh_U,
  FakturaLog_U, TsIn_U, TsOut_U,  PZTKLog_U, mercury, WhClosedCondition_U,
  WhOpenCondition_U, About_U, Legend_U, TicketLog_U, Setting_U, Outdoc_U,
  ZTKDocOut_U, ReportSelect_U, Pass_U, Ztkoutdocs_U, Shipper_U,
  FindRegTi_U, ExpInv_U, Hold_U,atol25,SelectParts_U, TsVes_U, CountryCode_U;


function TMain_F.GetFakturaSum(Id: Integer): Double;
var
 QryTmp:TIBquery;
begin
 try
  Result:=0;
  QryTmp:=TIbQuery.Create(Self);
  QryTmp.Database:=DM.DB;
  QryTmp.SQL.Add(' select sum(total_sum) from faktura_items where id_f_head=:p0 ');
  QryTmp.Params[0].AsInteger:=Id;
  QryTmp.Open;
  Result:=QryTmp.Fields[0].AsFloat;
 finally
  QryTmp.Free;
 end;
end;

function TMain_F.GetFakturaVat(Id: Integer): Double;
var
 QryTmp:TIBquery;
begin
 try
  Result:=0;
  QryTmp:=TIbQuery.Create(Self);
  QryTmp.Database:=DM.DB;
  QryTmp.SQL.Add(' select sum(sum_vat) from faktura_items where id_f_head=:p0 ');
  QryTmp.Params[0].AsInteger:=Id;
  QryTmp.Open;
  Result:=QryTmp.Fields[0].AsFloat;
 finally
  QryTmp.Free;
 end;
end;

procedure TMain_F.A_EditTicketExecute(Sender: TObject);
begin
//  Редактировать КТ
 if Grid_Ticket.DataSource.DataSet.FieldByName('ID').IsNull then Exit;
 TicketEdit_F.ShowModal;
end;

procedure TMain_F.A_EditTicketUpdate(Sender: TObject);
begin
  if Grid_Ticket.DataSource.DataSet.Active then
     if Grid_Ticket.DataSource.DataSet.FieldByName('ID').IsNull then
        (Sender as TAction).Enabled:=False
       else
        (Sender as TAction).Enabled:=True;
end;

procedure TMain_F.A_EditTPExecute(Sender: TObject);
// редактировать ТП
 var
  Id_Rec,Answer:Integer;
  Mes,S:String;
begin
 if Main_F.Grid_TP.DataSource.DataSet.FieldByName('ID').IsNull then Exit
   else
      Id_Rec:=Main_F.Grid_TP.DataSource.DataSet.FieldByName('ID').AsInteger;
 // попытаемся стартануть транзакцию и заблокировать текущую запись
 if DM.Sql.Open then DM.Sql.Close;
 DM.Sql.SQL.Clear;
 DM.Sql.SQL.Add('update parties set tran = 1 where id =:p0 ');
 Repeat
   try
     if not DM.Sql.Transaction.InTransaction then Dm.Sql.Transaction.StartTransaction;
     DM.Sql.Params[0].AsInteger:=Id_Rec;
     Dm.Sql.ExecQuery;
     Answer:=IdOk;
   except
    on E: EdatabaseError do
      begin
       DM.Sql.Transaction.Rollback;
       ShowMessage(E.Message);
       Answer:=idNo;
      end;
   {     Mes:='Сервер не может обработать данный запрос.'+#10#13;
     Mes:=Mes+'Возможно данную запись редактирует другой пользователь.'+#10#13+'Повторите попытку позднее.';
     Application.MessageBox(Pchar(Mes),'Внимание!',Mb_IconWarning+Mb_Ok);
     Answer:=idNo;}
   end;
 Until (Answer=idOK) Or (Answer=idNo) ;
 if Answer=idNo then
   begin
    IF DM.Sql.Transaction.InTransaction  then DM.Sql.Transaction.Rollback;
    Exit;
   end;
 TpEdit_F.ShowModal;
end;

procedure TMain_F.A_EditTPUpdate(Sender: TObject);
begin
  if Grid_TP.DataSource.DataSet.Active then
     if Grid_TP.DataSource.DataSet.FieldByName('ID').IsNull then
        (Sender as TAction).Enabled:=False
       else
        (Sender as TAction).Enabled:=True;
end;

procedure TMain_F.A_EditTSExecute(Sender: TObject);
begin
// Редактировать ТС
 if Grid_TS.DataSource.DataSet.FieldByName('ID').IsNull then Exit;
 EditTS_F.ShowModal;
end;

procedure TMain_F.A_EditTSUpdate(Sender: TObject);
begin
  if Grid_TS.DataSource.DataSet.Active then
     if Grid_TS.DataSource.DataSet.FieldByName('ID').IsNull then
        (Sender as TAction).Enabled:=False
       else
        (Sender as TAction).Enabled:=True;
end;

procedure TMain_F.A_Goods_ScalingExecute(Sender: TObject);
begin
//
end;

procedure TMain_F.A_HoldingsExecute(Sender: TObject);
begin
  Hold_F.ShowModal;
end;

procedure TMain_F.A_OperatorPartyControlExecute(Sender: TObject);
var
 Mes:String;
begin
try
 try
    Mes:='Направить в кассу на оплату КТ № ' + DM.Qry_Parts.FieldByName('PART_NOMER').AsString +'?';
    if Application.MessageBox(Pchar(Mes),'Подтверждение',MB_ICONQUESTION+MB_YESNO)<> ID_YES then Exit;
    //добавим запись в журнал
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into parties_log (id_ticket,action_name,username,action_code,id_part) ');
    DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4) ');
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Params[0].Value:=DM.Qry_Parts.FieldByName('ID_TICKET').AsInteger;
    DM.Sql.Params[1].AsString:=STEP_5;
    DM.Sql.Params[2].AsString:=User;
    DM.Sql.Params[3].AsInteger:=STEP_CODE_5;
    DM.Sql.Params[4].AsInteger:=DM.Qry_TP.FieldByName('ID_PART').AsInteger;
    DM.Sql.ExecQuery;
    //поставим флаг контроля перед списанием в часть талона для кассира
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update ticket_parts set pay_control=1 where id=:p0 ');
    DM.Sql.Params[0].AsInteger:=DM.Qry_Parts.FieldByName('ID').AsInteger;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    DM.Refresh_Parts;
    Application.MessageBox('Выполнено','Подтверждение',MB_ICONINFORMATION+MB_OK);
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

procedure TMain_F.A_OperatorPartyControlUpdate(Sender: TObject);
begin
 if Grid_Ticket.DataSource.DataSet.Active and DM.Qry_TP.Active then
        if (Grid_Ticket.DataSource.DataSet.FieldByName('STEP_CTRL').AsInteger = STEP_CODE_2)
           and
            (DM.Qry_Parts.FieldByName('PAY_CONTROL').AsInteger =0  )
        then
          (Sender as TAction).Enabled:=True
          else
          (Sender as TAction).Enabled:=False;
end;

procedure TMain_F.A_ParkZTKExecute(Sender: TObject);
begin
  FormParkZtk.ShowModal;
end;

procedure TMain_F.A_PassOutAddExecute(Sender: TObject);
var
  s,n_ts,n_trailer:string;
  i,id_ts,n_ticket,id_ticket:integer;
  cust_flag:Boolean;

begin
  if Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('ID').IsNull then Exit;
  if Main_F.Grid_TS.DataSource.DataSet.FieldByName('OUT_FLAG').AsInteger > 1 then
     begin
       Application.MessageBox('Для данного ТС невозможно создать пропуск. ТС присутствует в журнале выезда.','Внимание',MB_ICONWARNING+mb_ok);
       Exit;
     end;
  if (Main_F.Grid_TicketParts.DataSource.DataSet.FieldByName('ID').IsNull)
     and
     (Main_f.Grid_TS.DataSource.DataSet.FieldByName('TARGET').AsInteger > 5)
     then  cust_flag:=True else cust_flag:=false;
  if cust_flag then
       begin
         n_ts:=Grid_Ts.DataSource.DataSet.FieldByName('N_TS').asString;
         n_trailer:=Grid_Ts.DataSource.DataSet.FieldByName('N_TRAILER').asString;
         id_ts:=Grid_Ts.DataSource.DataSet.FieldByName('ID').asInteger;
         n_ticket:=Grid_Ticket.DataSource.DataSet.FieldByName('N_TICKET').asInteger;
         id_ticket:=Grid_Ts.DataSource.DataSet.FieldByName('ID_TICKET').asInteger;
         CreatePassWODocs(id_ts,n_ticket,id_ticket,n_ts,n_trailer);
       end
      else
        if (SelectParts_F.ShowModal = mrOK) then
          begin
            Pass_F.ShowModal;
          end;
//         else
//          //SetLength(DynArrayInt,0);
//          Main_F.MyList.Clear;

end;

procedure TMain_F.A_PassOutAddUpdate(Sender: TObject);
begin
// (Sender as TAction).Enabled:=False;
//  if DM.Qry_Parts.Active then
//    if NOT DM.Qry_Parts.FieldByName('ID').IsNull then
//       if DM.Qry_Parts.FieldByName('PAY_CONTROL').AsInteger = 2 then
//          if DM.Qry_TS.Active then
//              if NOT DM.Qry_TS.FieldByName('ID').IsNull then
//                 (Sender as TAction).Enabled:=True
(Sender as TAction).Enabled:=False;
if DM.Qry_TS.Active then
  if DM.Qry_TS.FieldByName('OUT_FLAG').AsInteger <> 2 then (Sender as TAction).Enabled:=true;

end;

procedure TMain_F.A_PrintPayListExecute(Sender: TObject);
var
 Id_ticket:Integer;
begin
  IdTicket:=DM.Qry_Ticket.FieldByName('ID').AsInteger;
 try
  DM.Qry_PayList.Close;
  DM.Qry_PayList.Params[0].AsInteger:=IdTicket;
  DM.Qry_PayList.Open;
  Reports_F.Rep2.LoadFromFile('pay_list.fr3');
  Reports_F.Rep2.ShowReport(TRue);
 finally
  DM.Qry_PayList.Close;
 end;end;

procedure TMain_F.A_PrintTicketExecute(Sender: TObject);
begin
//
end;

procedure TMain_F.A_PrnTicketPartExecute(Sender: TObject);
begin
// Печатать чек по  части КТ
 Main_F.IdPart:=Grid_TicketParts.DataSource.DataSet.FieldByName('ID').AsInteger;
 Main_F.IdTicket:=Grid_Ticket.DataSource.DataSet.FieldByName('ID').AsInteger;
 DM.Refresh_Full_Ticket_Qry_Rep;
 if Reports_F.Rep2.LoadFromFile('cheque_kt_80mm.fr3') then
   if Reports_F.Rep2.PrepareReport(True) then  Reports_F.Rep2.ShowPreparedReport;
end;

procedure TMain_F.A_PrnTicketPartUpdate(Sender: TObject);
begin
 if DM.Qry_Ticket.Active then
   if DM.Qry_TicketSTEP_CTRL.AsInteger = STEP_CODE_2 then
      (Sender as TAction).Enabled:=True
     else
      (Sender as TAction).Enabled:=False;
end;

procedure TMain_F.A_RefKTExecute(Sender: TObject);
//обновить КТ
begin
    try
      DM.Qry_Ticket.DisableControls;
      DM.Refresh_Ticket;
      DM.Refresh_TS;
      DM.Refresh_Parts;
      DM.Refresh_TP;
    finally
      DM.Qry_Ticket.EnableControls;
    end;
end;

procedure TMain_F.A_RefTPExecute(Sender: TObject);
//обновить TP
begin
    try
      DM.Qry_TP.DisableControls;
      DM.Refresh_TP;
    finally
      DM.Qry_TP.EnableControls;
    end;
end;

procedure TMain_F.A_RefTSExecute(Sender: TObject);
//обновить TS
begin
    try
      DM.Qry_TS.DisableControls;
      DM.Refresh_TS;
    finally
      DM.Qry_TS.EnableControls;
    end;
end;

procedure TMain_F.A_ReportsExecute(Sender: TObject);
begin
  ReportSelect_F.ShowModal;
end;

procedure TMain_F.A_EditKTFullExecute(Sender: TObject);
begin
// Открыть и редактировать часть КТ
 Main_F.IdTicket:=Grid_TicketParts.DataSource.DataSet.FieldByName('ID_TICKET').AsInteger;
 Main_F.IdPart:=Grid_TicketParts.DataSource.DataSet.FieldByName('ID').AsInteger;
 Main_F.TamSklad_Flag:= Grid_TicketParts.DataSource.DataSet.FieldByName('TS_FLAG').AsInteger;
 PartFullEdit_F.ShowModal;
end;

procedure TMain_F.A_EditKTFullUpdate(Sender: TObject);
begin
  if DM.Qry_Parts.Active then
   if DM.Qry_Parts.FieldByName('ID').IsNull  then
      (Sender as TAction).Enabled:=False
    else
      (Sender as TAction).Enabled:=True;
end;

procedure TMain_F.A_EditPartExecute(Sender: TObject);
// редактировать частьКТ
begin
if Main_F.Grid_TicketParts.DataSource.DataSet.FieldByName('ID').isNull then Exit;
PartEdit_F.ShowModal;
end;

procedure TMain_F.A_EditPartUpdate(Sender: TObject);
begin
 if Grid_TicketParts.DataSource.DataSet.Active then
   if Grid_TicketParts.DataSource.DataSet.FieldByName('ID').IsNull then
      (Sender as TAction).Enabled:=False
     else
      (Sender as TAction).Enabled:=True;
end;

procedure TMain_F.About_MainItemClick(Sender: TObject);
begin
 About_F.showModal;
end;

procedure TMain_F.A_PrintVesChequeExecute(Sender: TObject);
var
 id_ts:Integer;
begin
  id_ts:=DM.Qry_TS.FieldByName('ID').AsInteger;
  PrintKT_Ves(id_ts);
end;

procedure TMain_F.A_PrintVesTrailerExecute(Sender: TObject);
var
 id_ticket:Integer;
begin
  id_ticket:=DM.Qry_Ticket.FieldByName('ID').AsInteger;
  PrintKT_VesTrailer(id_ticket);
end;

procedure TMain_F.A_AddPartExecute(Sender: TObject);
begin
// Добавить часть КТ
 PartAdd_F.ShowModal;
end;

procedure TMain_F.A_AddPartUpdate(Sender: TObject);
begin
   if Grid_Ticket.DataSource.DataSet.Active then
     if (not Grid_Ticket.DataSource.DataSet.FieldByName('ID').IsNull) and
        (Grid_Ticket.DataSource.DataSet.FieldByName('STEP_CTRL').asInteger = STEP_CODE_1) then
        (Sender as TAction).Enabled:=True
       else
        (Sender as TAction).Enabled:=False;
end;

procedure TMain_F.A_AddTPExecute(Sender: TObject);
begin
// Добавить ТП
 TPAdd_F.ShowModal;
end;

procedure TMain_F.A_AddTPUpdate(Sender: TObject);
begin
 if Grid_Ticket.DataSource.DataSet.Active and Grid_TicketParts.DataSource.DataSet.Active then
   if (not Grid_TicketParts.DataSource.DataSet.FieldByName('ID').IsNull) and
      (Grid_Ticket.DataSource.DataSet.FieldByName('STEP_CTRL').asInteger = STEP_CODE_1) then
      (Sender as TAction).Enabled:=True
     else
      (Sender as TAction).Enabled:=False;
end;

procedure TMain_F.A_RefPartsExecute(Sender: TObject);
//обновить parts
begin
    try
      DM.Qry_Parts.DisableControls;
      DM.Refresh_Parts;
    finally
      DM.Qry_Parts.EnableControls;
    end;
end;

procedure TMain_F.A_AddTicketExecute(Sender: TObject);
begin
// добавляет новый КТ+ТС+прицеп
 AddTicket_F.ShowModal;
end;

procedure TMain_F.A_AddTrailerExecute(Sender: TObject);
// Добавить прицеп
var
 id_ts:integer;
begin
 if Grid_TS.DataSource.DataSet.FieldByName('ID').IsNull then Exit;
 id_ts:=Grid_TS.DataSource.DataSet.FieldByName('ID').AsInteger;
 if DM.Has_Trailer(id_ts) then
    begin
      Application.MessageBox('Невозможно добавить еще один прицеп','Внимание',MB_ICONERROR+MB_OK);
       Exit;
    end
   else
    begin
      TrailerAdd_F.ShowModal;
    end;
end;

procedure TMain_F.A_AddTrailerUpdate(Sender: TObject);
begin
  if Grid_TS.DataSource.DataSet.Active then
     if Grid_TS.DataSource.DataSet.FieldByName('ID').IsNull then
        (Sender as TAction).Enabled:=False
       else
        (Sender as TAction).Enabled:=True;
end;

procedure TMain_F.A_AddTSExecute(Sender: TObject);
begin
  AddTs_F.ShowModal;
end;

procedure TMain_F.A_AddTSUpdate(Sender: TObject);
begin
  if Grid_Ticket.DataSource.DataSet.Active then
     if Grid_Ticket.DataSource.DataSet.FieldByName('ID').IsNull then
        (Sender as TAction).Enabled:=False
       else
        (Sender as TAction).Enabled:=True;
end;

procedure TMain_F.A_CancelPayControlExecute(Sender: TObject);
var
 Mes:String;
begin

try
 try
    Mes:='Отменить направление на оплату КТ № ' + DM.Qry_Parts.FieldByName('PART_NOMER').AsString +'?';
    if Application.MessageBox(Pchar(Mes),'Подтверждение',MB_ICONQUESTION+MB_YESNO)<> ID_YES then Exit;
    //добавим запись в журнал
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into parties_log (id_ticket,action_name,username,action_code,id_part) ');
    DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4) ');
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Params[0].Value:=DM.Qry_Parts.FieldByName('ID_TICKET').AsInteger;
    DM.Sql.Params[1].AsString:=STEP_5_1;
    DM.Sql.Params[2].AsString:=User;
    DM.Sql.Params[3].AsInteger:=STEP_CODE_5_1;
    DM.Sql.Params[4].AsInteger:=DM.Qry_TP.FieldByName('ID_PART').AsInteger;
    DM.Sql.ExecQuery;
    //поставим флаг контроля перед списанием в часть талона для кассира
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update ticket_parts set pay_control=0 where id=:p0 ');
    DM.Sql.Params[0].Value:=DM.Qry_Parts.FieldByName('ID').AsInteger;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    DM.Refresh_Parts;
    Application.MessageBox('Выполнено','Подтверждение',MB_ICONINFORMATION+MB_OK);
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

procedure TMain_F.A_CancelPayControlUpdate(Sender: TObject);
begin
 if Grid_TicketParts.DataSource.DataSet.Active then
    if Grid_TicketParts.DataSource.DataSet.FieldByName('PAY_CONTROL').AsInteger = 1
        then
          (Sender as TAction).Enabled:=True
          else
          (Sender as TAction).Enabled:=False;

end;

procedure TMain_F.A_DelPartExecute(Sender: TObject);
var
 Mes:String;
 id_rec:Integer;
 qry:TIBQuery;
begin
    Mes:= 'Удалить часть КТ ? ' ;
    if Application.MessageBox(PChar(Mes),'Внимание',MB_YESNO+MB_ICONASTERISK) <> IDYES then Exit;
    id_rec:=DM.Qry_Parts.FieldByName('ID').AsInteger;
try
 try
    qry:=TIbquery.Create(self);
    qry.Database:=Dm.DB;
    qry.SQL.Add(' select count(*) from parties where id_part =:p0 ');
    qry.Params[0].AsInteger:=id_rec;
    qry.Open;
    if qry.Fields[0].AsInteger > 0  then
        begin
          Application.MessageBox('У текущего получателя есть товарные партии. Удаление невозможно.','Внимание',
                                  MB_ICONSTOP+MB_OK);
          Exit;
        end;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    //добавим запись в журнал талона
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('delete from ticket_parts where id=:p0 ');
    DM.Sql.Params[0].asInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    Dm.Qry_Parts.Close;
    Dm.Qry_Parts.Open;
 except
    on E: EdatabaseError do
      begin
       DM.Sql.Transaction.Rollback;
       ShowMessage(E.Message);
      end;
  end;
finally
    qry.Free;
    if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;

end;

procedure TMain_F.A_DelPartUpdate(Sender: TObject);
begin
 if ((Role = 'SYSADMIN') or (role='DISPETCHER')) then  (Sender as TAction).Enabled:=True
       else
         (Sender as TAction).Enabled:=False;
end;

procedure TMain_F.A_DelTpExecute(Sender: TObject);
var
 Mes:String;
 id_rec:Integer;
begin
    if DM.Qry_TP.FieldByName('TP_MOVE_CBX_CODE').AsInteger > TP_TO_CBX  then
        begin
          Application.MessageBox('Данная ТП обработана на следующем этапе. Удаление невозможно.','Внимание',
                                  MB_ICONSTOP+MB_OK);
          Exit;
        end;

    Mes:= 'Удалить ТP ? ' ;
    if Application.MessageBox(PChar(Mes),'Внимание',MB_YESNO+MB_ICONASTERISK) <> IDYES then Exit;
try
 try
    id_rec:=DM.Qry_TP.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    //добавим запись в журнал талона
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('delete from parties where id=:p0 ');
    DM.Sql.Params[0].asInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    Dm.Qry_Tp.Close;
    Dm.Qry_Tp.Open;
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

procedure TMain_F.A_DelTpUpdate(Sender: TObject);
begin
 if  ((Role = 'SYSADMIN') or (role='DISPETCHER')) then  (Sender as TAction).Enabled:=True
       else
         (Sender as TAction).Enabled:=False;

end;

procedure TMain_F.A_DelTrailerExecute(Sender: TObject);
//удалить прицеп
var
 id_ts:integer;
begin
 if Grid_TS.DataSource.DataSet.FieldByName('ID').IsNull then Exit;
 id_ts:=Grid_TS.DataSource.DataSet.FieldByName('ID').AsInteger;
 if not DM.Has_Trailer(id_ts) then
    begin
      Application.MessageBox('Прицепа нет - удаление невозможно','Внимание',MB_ICONERROR+MB_OK);
      Exit;
    end
   else
    begin
        try
         try
            if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
            DM.Sql.Close;
            DM.Sql.SQL.Clear;
            DM.Sql.SQL.Add('delete from trailers where id_truck=:p0 ');
            DM.Sql.Params[0].AsInteger:=id_ts;
            DM.Sql.ExecQuery;
            DM.Sql.Transaction.Commit;
            DM.Refresh_TS;
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
end;

procedure TMain_F.A_DelTrailerUpdate(Sender: TObject);
begin
  if Grid_TS.DataSource.DataSet.Active then
     if Grid_TS.DataSource.DataSet.FieldByName('ID').IsNull then
        (Sender as TAction).Enabled:=False
       else
        (Sender as TAction).Enabled:=True;
end;

procedure TMain_F.A_DngCheckExecute(Sender: TObject);
var
 Mes:String;
 id_rec:Integer;
begin
    if DM.Qry_TP.FieldByName('DANGER').AsInteger = 1 then exit;

    Mes:='Поставить признак опасного груза? ' ;
    if Application.MessageBox(PChar(Mes),'Внимание',MB_YESNO+MB_ICONASTERISK) <> IDYES then Exit;
  try
   try
      id_rec:=DM.Qry_TP.FieldByName('ID').AsInteger;
      if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
      //добавим запись в журнал талона
      DM.Sql.Close;
      DM.Sql.SQL.Clear;
      DM.Sql.SQL.Add('update parties set danger =:p0 where id=:p1 ');
      DM.Sql.Params[0].asInteger:=1;
      DM.Sql.Params[1].asInteger:=id_rec;
      DM.Sql.ExecQuery;
      DM.Sql.Close;
      DM.Sql.SQL.Clear;
      DM.Sql.SQL.Add('insert into parties_log (id_ticket,id_part,id_tp,npp_tp,action_name,username,action_code) ');
      DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6) ');
      DM.Sql.Params[0].Value:=DM.Qry_Ticket.FieldByName('ID').AsInteger;
      DM.Sql.Params[1].Value:=DM.Qry_Parts.FieldByName('ID').AsInteger;
      DM.Sql.Params[2].Value:=id_rec;
      DM.Sql.Params[3].AsString:=DM.Qry_TP.FieldByName('N_PART').AsString;
      DM.Sql.Params[4].AsString:=STEP_3_1 ;
      DM.Sql.Params[5].AsString:=User;
      DM.Sql.Params[6].AsInteger:=STEP_CODE_3_1;
      DM.Sql.ExecQuery;
      DM.Sql.Transaction.Commit;
      if Grid_TP.SelectedRows.Count > 0  then Grid_TP.SelectedRows.Clear;
      DM.Refresh_TP;
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

procedure TMain_F.A_DngUncheckExecute(Sender: TObject);
var
 Mes:String;
 id_rec:Integer;
begin
    if DM.Qry_TP.FieldByName('DANGER').AsInteger = 0 then exit;
    Mes:='Снять признак опасного груза? ' ;
    if Application.MessageBox(PChar(Mes),'Внимание',MB_YESNO+MB_ICONASTERISK) <> IDYES then Exit;
  try
   try
      id_rec:=DM.Qry_TP.FieldByName('ID').AsInteger;
      if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
      //добавим запись в журнал талона
      DM.Sql.Close;
      DM.Sql.SQL.Clear;
      DM.Sql.SQL.Add('update parties set danger =:p0 where id=:p1 ');
      DM.Sql.Params[0].asInteger:=0;
      DM.Sql.Params[1].asInteger:=id_rec;
      DM.Sql.ExecQuery;
      DM.Sql.Transaction.Commit;
      if Grid_TP.SelectedRows.Count > 0  then Grid_TP.SelectedRows.Clear;
      DM.Refresh_TP;
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

procedure TMain_F.A_ShowTicketsExecute(Sender: TObject);
begin
{// создать или открыть MDIChaild окно
if not Assigned(Tickets_F)then
  begin
    Tickets_F:=TTickets_F.Create(nil);
  end
 else
  if Tickets_F.WindowState = wsMinimized	then
      ShowWindow(Tickets_F.Handle, SW_RESTORE)
     else
      Tickets_F.Show;}
end;

procedure TMain_F.A_Step1Execute(Sender: TObject);
var
 id_ticket,id_ts,n:Integer;
begin
try
 try
    id_ticket:=Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('ID').AsInteger;
    if DM.Qry.Active then DM.Qry.Close;
    DM.Qry.SQL.Clear;
    DM.Qry.SQL.Add('select count(*) from ts where id_ticket=:p0 ');
    DM.Qry.Params[0].AsInteger:=id_ticket;
    Dm.Qry.Open;
    n:=DM.Qry.Fields[0].AsInteger;
    DM.Qry.Close;
    if n=0 then
      begin
       Application.MessageBox('Транспортные средства отсутствуют.','Внимание!',MB_OK+MB_ICONSTOP);
       Exit;
      end;
    if Grid_TS.DataSource.DataSet.FieldByName('NUM_PARK').IsNull then
      begin
       Application.MessageBox('Не указан номер места ТС. Действие отменено.','Внимание!',MB_OK+MB_ICONSTOP);
       Exit;
      end;
    id_ts:=Grid_TS.DataSource.DataSet.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update ticket set step_ctrl=1 where id=:p0  ');
    DM.Sql.Params[0].AsInteger:=id_ticket;
    DM.Sql.ExecQuery;
    //добавим запись в журнал талона
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into parties_log (id_ticket,action_name,username,action_code) ');
    DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3) ');
    DM.Sql.Params[0].Value:=id_ticket;
    DM.Sql.Params[1].AsString:=STEP_1;
    DM.Sql.Params[2].AsString:=User;
    DM.Sql.Params[3].AsInteger:=STEP_CODE_1;
    DM.Sql.ExecQuery;
    //добавим запись в журнал парковки
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into park_log (id_ts,id_ticket,username,place,action_code,park_type,action_name) ');
    DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6) ');
    DM.Sql.Params[0].AsInteger:=id_ts;
    DM.Sql.Params[1].AsInteger:=id_ticket;
    DM.Sql.Params[2].AsString:=User;
    DM.Sql.Params[3].AsString:=Grid_TS.DataSource.DataSet.FieldByName('NUM_PARK').AsString;
    DM.Sql.Params[4].AsInteger:=ACTION_MOVE_IN_CODE;
    DM.Sql.Params[5].AsString:=PARK_TYPE_ZTK;
    DM.Sql.Params[6].AsString:=ACTION_MOVE_IN;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    DM.Refresh_Ticket;
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

procedure TMain_F.A_Step1Update(Sender: TObject);
begin
  if Grid_Ticket.DataSource.DataSet.Active then
    if (Grid_Ticket.DataSource.DataSet.FieldByName('STEP_CTRL').AsInteger <> 0) then
       (Sender as TAction).Enabled:=False
      else
       (Sender as TAction).Enabled:=True;
end;

procedure TMain_F.A_Step2CancelExecute(Sender: TObject);
var
 id_ticket:Integer;
 Q1:TIBQuery;
begin
try
 try
    id_ticket:=Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('ID').AsInteger;
    Q1:=TIBQuery.Create(nil);
    Q1.Database:=DM.DB;
    Q1.Transaction:=DM.IBTR;
    Q1.SQL.Add('select count(*) from parties where id_ticket=:p0 and ((tp_move_cbx_code > :p1) or (ztk_condition > :p2)) ');
    Q1.Params[0].AsInteger:=id_ticket;
    Q1.Params[1].AsInteger:=TP_REGISTERED;
    Q1.Params[2].AsInteger:=TP_CREATED;
    Q1.Open;
    if Q1.Fields[0].AsInteger > 0 then
      begin
       Application.MessageBox('В данном КТ присутствуют ТП, обработанные на следующем этапе! .','Внимание!',MB_OK+MB_ICONSTOP);
       Exit;
      end;
    Q1.Close;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    // ставим отметку в талоне
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update ticket set step_ctrl=:p0 where id=:p1  ');
    DM.Sql.Params[0].AsInteger:=STEP_CODE_1;
    DM.Sql.Params[1].AsInteger:=id_ticket;
    DM.Sql.ExecQuery;
    // ставим признаки в ТП
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update parties set reg =:p0 where id_ticket=:p1  ');
    DM.Sql.Params[0].AsInteger:=TP_CREATED;
    DM.Sql.Params[1].AsInteger:=id_ticket;
    DM.Sql.ExecQuery;
    //добавим запись в журнал
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into parties_log (id_ticket,action_name,username,action_code) ');
    DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3) ');
    DM.Sql.Params[0].Value:=id_ticket;
    DM.Sql.Params[1].AsString:='Отмена регистрации';
    DM.Sql.Params[2].AsString:=User;
    DM.Sql.Params[3].AsInteger:=STEP_CODE_2;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    DM.Refresh_Ticket;
  except
    on E: EdatabaseError do
      begin
         DM.Sql.Transaction.Rollback;
         ShowMessage(E.Message);
      end;
  end;
finally
  Q1.Free;
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;

end;

procedure TMain_F.A_Step2CancelUpdate(Sender: TObject);
begin
  if Grid_Ticket.DataSource.DataSet.Active then
    if (Grid_Ticket.DataSource.DataSet.FieldByName('STEP_CTRL').AsInteger = STEP_CODE_2) then
       (Sender as TAction).Enabled:=True
       else
       (Sender as TAction).Enabled:=False;
end;

procedure TMain_F.A_Step2Execute(Sender: TObject);
var
 id_ticket,id_part:Integer;
 n_ts:String;
 Q1,Q2:TIBQuery;
 Mes:String;
begin
try
 try
    if Trim(Grid_Ticket.DataSource.DataSet.FieldByName('delete_flag').AsString) = 'Y' then
        begin
          Application.MessageBox('КТ помечен на удаление.Зарегистрировать документы невозможно.',
                                  'Внимание',MB_ICONWARNING+MB_OK);
          Exit;
        end;
    id_ticket:=Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('ID').AsInteger;
    n_ts:=GetTsNumber(id_ticket);
    Q1:=TIBQuery.Create(nil);
    Q1.Database:=DM.DB;
    Q1.Transaction:=DM.IBTR;
    Q2:=TIBQuery.Create(nil);
    Q2.Database:=DM.DB;
    Q2.Transaction:=DM.IBTR;
    Q1.SQL.Add('select count(*) from ticket_parts where id_ticket=:p0');
    Q1.Params[0].AsInteger:=id_ticket;
    Q1.Open;
    if Q1.Fields[0].AsInteger= 0 then
      begin
       Application.MessageBox('Части контрольного талона отсутствуют.','Внимание!',MB_OK+MB_ICONSTOP);
       Exit;
      end;
    Q1.Close;
    Q1.SQL.Clear;
    Q1.SQL.Add('select a.id, a.npp, b.n_ticket from ticket_parts a ');
    Q1.SQL.Add('left join ticket b on a.id_ticket=b.id where id_ticket=:p0');
    Q1.Params[0].AsInteger:=id_ticket;
    Q1.Open;
    Q2.SQL.Add('select count(*) from parties where id_part=:p0');
    while not Q1.Eof do
       begin
         if Q2.Active then Q2.Close;
         id_part:=Q1.FieldByName('ID').asInteger;
         Q2.Params[0].AsInteger:=id_part;
         Q2.Open;
         if Q2.Fields[0].AsInteger = 0  then
              begin
                Mes:='Отсутствуют ТП у части КТ № '+Q1.FieldByName('N_TICKET').AsString+
                     '/'+Q1.FieldByName('NPP').AsString;
                Application.MessageBox(Pchar(Mes),'Внимание',MB_OK+MB_ICONSTOP);
                Exit;
              end;
         Q1.Next;
       end;
    if DM.Qry_Ticket.FieldByname('ID_CARRIER').IsNull then
      begin
       Application.MessageBox('Не указан перевозчик.','Внимание!',MB_OK+MB_ICONSTOP);
       Exit;
      end;

    if Application.MessageBox('После регистрации документов добавить ТП будет невозможно.Продолжить?',
                             'Внимание!',MB_ICONQUESTION+MB_YESNO) <> ID_YES  then Exit;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    // ставим отметку в талоне
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update ticket set step_ctrl=:p0 where id=:p1  ');
    DM.Sql.Params[0].AsInteger:=STEP_CODE_2;
    DM.Sql.Params[1].AsInteger:=id_ticket;
    DM.Sql.ExecQuery;
    // ставим признаки в ТП
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update parties set reg =:p0 where id_ticket=:p1  ');
    DM.Sql.Params[0].AsInteger:=TP_REGISTERED;
    DM.Sql.Params[1].AsInteger:=id_ticket;
    DM.Sql.ExecQuery;
    //добавим запись в журнал
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into parties_log (id_ticket,action_name,username,action_code) ');
    DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3) ');
    DM.Sql.Params[0].Value:=id_ticket;
    DM.Sql.Params[1].AsString:=STEP_2;
    DM.Sql.Params[2].AsString:=User;
    DM.Sql.Params[3].AsInteger:=STEP_CODE_2;
    DM.Sql.ExecQuery;
    //проверка подписки на СМС и добавление в таблицу

    Dm.Sql.Close;
    DM.Sql.SQL.Clear;
    Dm.Sql.SQL.Add(' insert into sms_sending (phone_number,event_code,n_ts,firm_name) values (:p0,:p1,:p2,:p3) ');
    Q2.Close;
    Q2.SQL.Clear;
    Q2.SQL.Add('select s.id_zayv, s.phone_number, r.zayv from sms_subscription s ');
    Q2.SQL.Add(' left join reg_ti r on s.id_zayv = r.id where id_zayv=:p0 ');
    Q1.Close;
    Q1.SQL.Clear;
    Q1.SQL.Add('select id_owner from ticket_parts where id_ticket=:p0');
    Q1.Params[0].AsInteger := id_ticket;
    Q1.Open;
    while not Q1.Eof do
      begin
        if Q2.Active then Q2.Close;
        Q2.Params[0].AsInteger := Q1.Fields[0].AsInteger;
        Q2.Open;
        while not Q2.Eof do
          begin
            DM.Sql.Close;
            DM.Sql.Params[0].AsString := Q2.Fields[1].AsString;
            DM.Sql.Params[1].AsInteger := 1; //1 - въезд
            DM.Sql.Params[2].AsString :=n_ts;
            DM.Sql.Params[3].AsString := Q2.Fields[2].AsString;
            DM.Sql.ExecQuery;
            Q2.Next;
          end;
        Q1.Next;
      end;
//проверка подписки e-mail
    Dm.Sql.Close;
    DM.Sql.SQL.Clear;
    Dm.Sql.SQL.Add(' insert into mail_sending (email,event_code,n_ts,firm_name) values (:p0,:p1,:p2,:p3) ');
    Q2.Close;
    Q2.SQL.Clear;
    Q2.SQL.Add('select s.id_zayv, s.email, r.zayv from mail_subscription s ');
    Q2.SQL.Add(' left join reg_ti r on s.id_zayv = r.id where id_zayv=:p0 ');
    Q1.Close;
    Q1.SQL.Clear;
    Q1.SQL.Add('select id_owner from ticket_parts where id_ticket=:p0');
    Q1.Params[0].AsInteger := id_ticket;
    Q1.Open;
    while not Q1.Eof do
      begin
        if Q2.Active then Q2.Close;
        Q2.Params[0].AsInteger := Q1.Fields[0].AsInteger;
        Q2.Open;
        while not Q2.Eof do
          begin
            DM.Sql.Close;
            DM.Sql.Params[0].AsString := Q2.Fields[1].AsString;
            DM.Sql.Params[1].AsInteger := MAIL_CODE_IN_ZTK; //1 - въезд
            DM.Sql.Params[2].AsString :=n_ts;
            DM.Sql.Params[3].AsString := Q2.Fields[2].AsString;
            DM.Sql.ExecQuery;
            Q2.Next;
          end;
        Q1.Next;
      end;
//////////////////
    DM.Sql.Transaction.Commit;
    DM.Refresh_Ticket;
  except
    on E: EdatabaseError do
      begin
         DM.Sql.Transaction.Rollback;
         ShowMessage(E.Message);
      end;
  end;
finally
  Q1.Free;
  Q2.Free;
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

procedure TMain_F.A_Step2Update(Sender: TObject);
begin
  if Grid_Ticket.DataSource.DataSet.Active then
    if (Grid_Ticket.DataSource.DataSet.FieldByName('STEP_CTRL').AsInteger <> 1) then
       (Sender as TAction).Enabled:=False
       else
       (Sender as TAction).Enabled:=True;

end;

procedure TMain_F.A_StepsExecute(Sender: TObject);
begin
//
end;

procedure TMain_F.A_SysTpLockedExecute(Sender: TObject);
var
 Mes:String;
 id_rec:Integer;
begin
    Mes:=format( 'Поставить отметку ТП №%s  размещена в СВХ? ',[DM.Qry_TP.FieldByName('N_PART').AsString]) ;
    if Application.MessageBox(PChar(Mes),'Внимание',MB_YESNO+MB_ICONASTERISK) <> IDYES then Exit;
try
 try
    id_rec:=DM.Qry_TP.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    //добавим запись в журнал талона
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update parties set tp_move_cbx_code =:p0 where id=:p1 ');
    DM.Sql.Params[0].asInteger:=TP_LOCKED;
    DM.Sql.Params[1].asInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    if Grid_TP.SelectedRows.Count > 0  then Grid_TP.SelectedRows.Clear;

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

procedure TMain_F.A_SysTpLockedUpdate(Sender: TObject);
begin
 if Role = 'SYSADMIN' then  (Sender as TAction).Enabled:=True
       else
         (Sender as TAction).Enabled:=False;
end;

procedure TMain_F.A_SysTpRegExecute(Sender: TObject);
var
 Mes:String;
 id_rec:Integer;
begin
    Mes:='Поставить отметку ТП зарегистрирована? ' ;
    if Application.MessageBox(PChar(Mes),'Внимание',MB_YESNO+MB_ICONASTERISK) <> IDYES then Exit;
try
 try
    id_rec:=DM.Qry_TP.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    //добавим запись в журнал талона
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update parties set tp_move_cbx_code =:p0 where id=:p1 ');
    DM.Sql.Params[0].asInteger:=TP_REGISTERED;
    DM.Sql.Params[1].asInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    if Grid_TP.SelectedRows.Count > 0  then Grid_TP.SelectedRows.Clear;

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

procedure TMain_F.A_SysTpRegUpdate(Sender: TObject);
begin
 if Role = 'SYSADMIN' then  (Sender as TAction).Enabled:=True
       else
         (Sender as TAction).Enabled:=False;
end;

procedure TMain_F.A_SysTpScaledExecute(Sender: TObject);
var
 Mes:String;
 id_rec:Integer;
begin
    Mes:=format( 'Поставить отметку ТП №%s  взвешена? ',[DM.Qry_TP.FieldByName('N_PART').AsString]) ;
    if Application.MessageBox(PChar(Mes),'Внимание',MB_YESNO+MB_ICONASTERISK) <> IDYES then Exit;
try
 try
    id_rec:=DM.Qry_TP.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    //добавим запись в журнал талона
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update parties set tp_move_cbx_code =:p0 where id=:p1 ');
    DM.Sql.Params[0].asInteger:=TP_SCALED;
    DM.Sql.Params[1].asInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    if Grid_TP.SelectedRows.Count > 0  then Grid_TP.SelectedRows.Clear;

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

procedure TMain_F.A_SysTpScaledUpdate(Sender: TObject);
begin
 if Role = 'SYSADMIN' then  (Sender as TAction).Enabled:=True
       else
         (Sender as TAction).Enabled:=False;
end;

procedure TMain_F.A_SysTpToCBXExecute(Sender: TObject);
var
 Mes:String;
 id_rec:Integer;
begin
    Mes:=format( 'Поставить отметку ТП №%s  направлена на СВХ? ',[DM.Qry_TP.FieldByName('N_PART').AsString]) ;
    if Application.MessageBox(PChar(Mes),'Внимание',MB_YESNO+MB_ICONASTERISK) <> IDYES then Exit;
try
 try
    id_rec:=DM.Qry_TP.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    //добавим запись в журнал талона
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update parties set tp_move_cbx_code =:p0 where id=:p1 ');
    DM.Sql.Params[0].asInteger:=TP_TO_CBX;
    DM.Sql.Params[1].asInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    if Grid_TP.SelectedRows.Count > 0  then Grid_TP.SelectedRows.Clear;

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

procedure TMain_F.A_SysTpToCBXUpdate(Sender: TObject);
begin
 if Role = 'SYSADMIN' then  (Sender as TAction).Enabled:=True
       else
         (Sender as TAction).Enabled:=False;
end;

procedure TMain_F.A_TicketLogExecute(Sender: TObject);
begin
  if DM.Qry_TicketLog.Active then DM.Qry_TicketLog.Close;
  DM.Qry_TicketLog.Params[0].AsInteger:=DM.Qry_Ticket.FieldByName('ID').AsInteger;
  DM.Qry_TicketLog.Open;
  TicketLog_F.showModal;
end;

procedure TMain_F.A_TPToCbxExecute(Sender: TObject);
var
 i,n,id_ticket,id_ts,id_tp:Integer;
 Mes:String;
 TempBookmark:TBookMark;
 x:word;
 ts_to_cbx,all_parties_on_cbx:Boolean;
begin
try
 ts_to_cbx:=False;
 all_parties_on_cbx:=False;
 id_ts:=Grid_TS.DataSource.DataSet.FieldByName('ID').AsInteger;
 id_ticket:=Grid_Ticket.DataSource.DataSet.FieldByName('ID').AsInteger;
 Mes:='Транспортное средство будет помещаться на открытый СВХ ? ';
 if  Application.MessageBox(PChar(Mes),'Внимание !',MB_ICONQUESTION+MB_YESNO) = ID_YES then ts_to_cbx:=True else ts_to_cbx:=False ;
 // проверим, есть ли одна партия, имеющая статус > TP_REGISTERED
 DM.Qry.Close;
 DM.Qry.SQL.Clear;
 DM.Qry.SQL.Add('select count(*) from parties where tp_move_cbx_code > :p0 and id_ticket =:p1  ');
 DM.Qry.Params[0].AsInteger := TP_REGISTERED;
 DM.Qry.Params[1].AsInteger:=id_ticket;
 DM.Qry.Open;
 i:=DM.Qry.Fields[0].AsInteger;
 if i = 0  then
    begin
         Mes:=format(' Все партии КТ № %s будут помещаться на хранение?',
                    [Grid_Ticket.DataSource.Dataset.FieldByName('N_TICKET').AsString]);
         if  Application.MessageBox(PChar(Mes),'Внимание !',MB_ICONQUESTION+MB_YESNO) = ID_YES
             then all_parties_on_cbx :=True else all_parties_on_cbx:=False ;
    end;
{ if ts_to_cbx then
    begin
       Mes:='При помещении ТП на открытый СВХ водитель '+#10#13+
            'обязан сдать место парковщику ЗТК. '+#10#13 +
            'Без отметки парковщика помещение ТП на СВХ невозможно!' +#10+#13+
            'Выбранные партии будут направлены '+#10#13+
            'на хранение на СВХ. Продолжить?';
       if  Application.MessageBox(PChar(Mes),'Внимание !',MB_ICONQUESTION+MB_YESNO)  <> ID_YES then Exit;
    end;}

 if all_parties_on_cbx then
    begin
         Mes:=format('Все партии КТ № %s будут направлены '+#10#13+
              'на хранение на СВХ. Продолжить?',[Grid_Ticket.DataSource.Dataset.FieldByName('N_TICKET').AsString]);
          if  Application.MessageBox(PChar(Mes),'Внимание !',MB_ICONQUESTION+MB_YESNO) <> ID_YES then Exit;
    end
  else
    begin
         Mes:='Выбранные партии будут направлены '+#10#13+
              'на хранение на СВХ. Продолжить?';
         if  Application.MessageBox(PChar(Mes),'Внимание !',MB_ICONQUESTION+MB_YESNO) <> ID_YES then Exit;
    end;

 try
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    //Изменяем парковку ставим признак о том что ТС направляется на CВХ
    if ts_to_cbx then
      begin
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('update park_ztk set cond_park=:p0 where id_ts=:p1 ');
        DM.Sql.Params[0].asInteger:=PLACE_MOVE_TO_CBX;
        DM.Sql.Params[1].asInteger:=id_ts;
        DM.Sql.ExecQuery;
      end;
    //Изменяем статус ТП
    if all_parties_on_cbx then
      begin
          DM.Sql.Close;
          DM.Sql.SQL.Clear;
          DM.Sql.SQL.Add('update parties set tp_move_cbx_code=:p0 where id_ticket=:p1 ');
          DM.Sql.Params[0].asInteger:=TP_TO_CBX;
          DM.Sql.Params[1].asInteger:=Grid_Ticket.DataSource.DataSet.FieldByName('ID').AsInteger;
          DM.Sql.ExecQuery;
      end
     else
      begin
          //проверим выбраны ли записи
          Grid_TP.DataSource.DataSet.DisableControls;
          with Grid_TP.SelectedRows do
             if Count = 0 then
                 begin
                    Application.MessageBox('Не выбрано ни одной ТП.','Внимание!',mb_iconwarning+mb_ok );
                    Exit;
                  end;   //end with
          TempBookmark := Grid_TP.Datasource.Dataset.GetBookmark;
          DM.Sql.Close;
          DM.Sql.SQL.Clear;
          DM.Sql.SQL.Add('update parties set tp_move_cbx_code=:p0 where id=:p1 ');
           with Grid_TP.SelectedRows do
            begin
             for x := 0 to Count-1 do
              begin
                if IndexOf(Items[x]) > -1 then
                  begin
                    Grid_TP.Datasource.Dataset.Bookmark := Items[x];
                    DM.SQL.params[0].AsInteger:=TP_TO_CBX;
                    id_tp:=Grid_TP.DataSource.DataSet.FieldByName('ID').asInteger;
                    DM.SQL.params[1].AsInteger:=id_tp;
                    DM.SQL.ExecQuery;
                  end;  //end if
              end;   //end for
           end;  //end with
      end; // endif
    DM.Sql.Transaction.Commit;
    DM.Refresh_TP;
  except
    on E: EdatabaseError do
      begin
        DM.Sql.Transaction.Rollback;
        ShowMessage(E.Message);
      end;
  end;
finally
  Grid_TP.DataSource.DataSet.GotoBookmark(TempBookmark);
  Grid_TP.DataSource.DataSet.FreeBookmark(TempBookmark);
  Grid_TP.SelectedRows.Clear;
  Grid_TP.DataSource.DataSet.EnableControls;
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

procedure TMain_F.A_TPToCbxUpdate(Sender: TObject);
begin
 if Grid_TP.DataSource.DataSet.Active and Grid_Ticket.DataSource.DataSet.Active then
  if (Grid_TP.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger < TP_TO_CBX) and
     (Grid_TP.DataSource.DataSet.FieldByName('REG').AsInteger = TP_REGISTERED) and
     (Grid_Ticket.DataSource.DataSet.FieldByName('STEP_CTRL').AsInteger=STEP_CODE_2) and
     (Grid_TP.DataSource.DataSet.FieldByName('ZTK_CONDITION').AsInteger < ZTK_PARTIAL_WRITE_OFF)
    then
     (Sender as TAction).Enabled:=True
     else
     (Sender as TAction).Enabled:=False;

end;

procedure TMain_F.A_TpToClosedCbxExecute(Sender: TObject);
var
 n,id_ticket,id_ts,id_tp:Integer;
 Mes:String;
 TempBookmark:TBookMark;
 x:word;
begin
try
//проверим выбраны ли записи
     Grid_TP.DataSource.DataSet.DisableControls;
     with Grid_TP.SelectedRows do
      if Count = 0 then
        begin
          Application.MessageBox('Не выбрано ни одной ТП.','Внимание!',mb_iconwarning+mb_ok );
          Exit;
        end;   //end with
 id_ts:=Grid_TS.DataSource.DataSet.FieldByName('ID').AsInteger;
 id_ticket:=Grid_Ticket.DataSource.DataSet.FieldByName('ID').AsInteger;
 Mes:='Выбранные партии будут размещены '+#10#13+
      'на хранение в крытом СВХ. '+#10#13 +
      'Продолжить?';
 if  Application.MessageBox(PChar(Mes),'Внимание !',MB_ICONWARNING+MB_YESNO) <> ID_YES then Exit;
 try
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    //Изменяем статус ТП
    TempBookmark := Grid_TP.Datasource.Dataset.GetBookmark;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update parties set tp_move_cbx_code=:p0 where id=:p1 ');
     with Grid_TP.SelectedRows do
      begin
       for x := 0 to Count-1 do
        begin
          if IndexOf(Items[x]) > -1 then
            begin
              Grid_TP.Datasource.Dataset.Bookmark := Items[x];
              DM.SQL.params[0].AsInteger:=TP_TO_CBX;
              id_tp:=Grid_TP.DataSource.DataSet.FieldByName('ID').asInteger;
              DM.SQL.params[1].AsInteger:=id_tp;
              DM.SQL.ExecQuery;
            end;  //end if
        end;   //end for
     end;  //end with
    DM.Sql.Transaction.Commit;
    DM.Refresh_TP;
  except
    on E: EdatabaseError do
      begin
       DM.Sql.Transaction.Rollback;
       ShowMessage(E.Message);
      end;
  end;
finally
  Grid_TP.DataSource.DataSet.GotoBookmark(TempBookmark);
  Grid_TP.DataSource.DataSet.FreeBookmark(TempBookmark);
  Grid_TP.SelectedRows.Clear;
  Grid_TP.DataSource.DataSet.EnableControls;
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

procedure TMain_F.A_TpToClosedCbxUpdate(Sender: TObject);
begin
  if Grid_TP.DataSource.DataSet.Active and Grid_Ticket.DataSource.DataSet.Active then
    if (Grid_Ticket.DataSource.DataSet.FieldByName('STEP_CTRL').AsInteger <> 2) or
       (not Grid_TP.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').isNull)  then
       (Sender as TAction).Enabled:=False
       else
       (Sender as TAction).Enabled:=True;
end;

procedure TMain_F.A_TpToOpenCbxExecute(Sender: TObject);
var
 n,id_ticket,id_ts,id_tp:Integer;
 Mes:String;
 TempBookmark:TBookMark;
 x:word;
begin
try
//проверим выбраны ли записи
     Grid_TP.DataSource.DataSet.DisableControls;
     with Grid_TP.SelectedRows do
      if Count = 0 then
        begin
          Application.MessageBox('Не выбрано ни одной ТП.','Внимание!',mb_iconwarning+mb_ok );
          Exit;
        end;   //end with
 id_ts:=Grid_TS.DataSource.DataSet.FieldByName('ID').AsInteger;
 id_ticket:=Grid_Ticket.DataSource.DataSet.FieldByName('ID').AsInteger;
 Mes:='При помещении ТП на открытый СВХ водитель '+#10#13+
      'обязан сдать место парковщику ЗТК. '+#10#13 +
      'Без отметки помещение ТП на открытый СВХ' +#10+#13+
      'невозможно.Продолжить?';
 if  Application.MessageBox(PChar(Mes),'Внимание !',MB_ICONWARNING+MB_YESNO) <> ID_YES then Exit;
 try
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    //Изменяем парковку ставим признак о том что ТС направляется на ВХ
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update park_ztk set cond_park=:p0 where id_ts=:p1 ');
    DM.Sql.Params[0].asInteger:=PLACE_MOVE_TO_CBX;
    DM.Sql.Params[1].asInteger:=id_ts;
    DM.Sql.ExecQuery;
    //Изменяем статус ТП
    TempBookmark := Grid_TP.Datasource.Dataset.GetBookmark;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update parties set tp_move_cbx_code=:p0 where id=:p1 ');
     with Grid_TP.SelectedRows do
      begin
       for x := 0 to Count-1 do
        begin
          if IndexOf(Items[x]) > -1 then
            begin
              Grid_TP.Datasource.Dataset.Bookmark := Items[x];
              DM.SQL.params[0].AsInteger:=TP_TO_CBX;
              id_tp:=Grid_TP.DataSource.DataSet.FieldByName('ID').asInteger;
              DM.SQL.params[1].AsInteger:=id_tp;
              DM.SQL.ExecQuery;
            end;  //end if
        end;   //end for
     end;  //end with
    DM.Sql.Transaction.Commit;
    DM.Refresh_TP;
  except
    on E: EdatabaseError do
      begin
       DM.Sql.Transaction.Rollback;
       ShowMessage(E.Message);
      end;
  end;
finally
  Grid_TP.DataSource.DataSet.GotoBookmark(TempBookmark);
  Grid_TP.DataSource.DataSet.FreeBookmark(TempBookmark);
  Grid_TP.SelectedRows.Clear;
  Grid_TP.DataSource.DataSet.EnableControls;
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

procedure TMain_F.A_TpToOpenCbxUpdate(Sender: TObject);
begin
//
end;

procedure TMain_F.A_Tp_CBX_to_CbxExecute(Sender: TObject);
var
 Mes:String;
 id_rec:Integer;
begin
    Mes:=format( 'Разрешить перемещение ТП №%s между СВХ? ',[DM.Qry_TP.FieldByName('N_PART').AsString]) ;
    if Application.MessageBox(PChar(Mes),'Внимание',MB_YESNO+MB_ICONASTERISK) <> IDYES then Exit;
    if CbxToCbx(DM.Qry_TP.FieldByName('ID').AsInteger,Grid_TP)= 0 then DM.Refresh_TP;
end;

procedure TMain_F.A_Tp_CBX_to_CbxUpdate(Sender: TObject);
begin
{ if Role = 'SYSADMIN' then  (Sender as TAction).Enabled:=True
       else
         (Sender as TAction).Enabled:=False;}

{ if Grid_TP.DataSource.DataSet.Active and Grid_Ticket.DataSource.DataSet.Active then
    if  (Grid_TP.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').asInteger = TP_LOCKED) or
        (Grid_TP.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').asInteger = TP_OUT_CBX)  then
       (Sender as TAction).Enabled:=True
       else
       (Sender as TAction).Enabled:=False;}
 if Grid_TP.DataSource.DataSet.Active and Grid_Ticket.DataSource.DataSet.Active then
    if  (Grid_TP.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').asInteger >= TP_LOCKED) then
       (Sender as TAction).Enabled:=True
       else
       (Sender as TAction).Enabled:=False;

end;

procedure TMain_F.A_TP_Full_Write_OffExecute(Sender: TObject);
var
 Mes:String;
 id_rec:Integer;
begin
    Mes:=format( 'Разрешить полное списание ТП №%s с СВХ? ',[DM.Qry_TP.FieldByName('N_PART').AsString]) ;
    if Application.MessageBox(PChar(Mes),'Внимание',MB_YESNO+MB_ICONASTERISK) <> IDYES then Exit;
try
 try
    id_rec:=DM.Qry_TP.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    //добавим запись в журнал талона
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into parties_log (id_ticket,id_part,id_tp,npp_tp,action_name,username,action_code) ');
    DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6) ');
    DM.Sql.Params[0].Value:=DM.Qry_Ticket.FieldByName('ID').AsInteger;
    DM.Sql.Params[1].Value:=DM.Qry_Parts.FieldByName('ID').AsInteger;
    DM.Sql.Params[2].Value:=DM.Qry_TP.FieldByName('ID').AsInteger;
    DM.Sql.Params[3].AsString:=DM.Qry_TP.FieldByName('N_PART').AsString;
    DM.Sql.Params[4].AsString:=STEP_7+ ':Разрешено полное списание с СВХ' ;
    DM.Sql.Params[5].AsString:=User;
    DM.Sql.Params[6].AsInteger:=STEP_CODE_7;
    DM.Sql.ExecQuery;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update parties set send_write_off=:p0 where id=:p1 ');
    DM.Sql.Params[0].asInteger:=FULL_WRITE_OFF;
    DM.Sql.Params[1].asInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    if Grid_TP.SelectedRows.Count > 0  then Grid_TP.SelectedRows.Clear;
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

procedure TMain_F.A_TP_Full_Write_OffUpdate(Sender: TObject);
begin
 if Grid_TP.DataSource.DataSet.Active then
  if not Grid_TP.DataSource.DataSet.FieldByName('ID').IsNull and
      (Grid_TP.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger >= TP_LOCKED )  and
      (Grid_TP.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger < TP_WROTED_OFF )
          then
           (Sender as TAction).Enabled:=True
           else
           (Sender as TAction).Enabled:=False;
end;

procedure TMain_F.A_TP_Partial_Write_OffExecute(Sender: TObject);
var
 Mes:String;
 id_rec:Integer;
begin
    Mes:=format( 'Разрешить частичное списание ТП №%s с СВХ? ',[DM.Qry_TP.FieldByName('N_PART').AsString]) ;
    if Application.MessageBox(PChar(Mes),'Внимание',MB_YESNO+MB_ICONASTERISK) <> IDYES then Exit;
try
 try
    id_rec:=DM.Qry_TP.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    //добавим запись в журнал талона
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into parties_log (id_ticket,id_part,id_tp,npp_tp,action_name,username,action_code) ');
    DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6) ');
    DM.Sql.Params[0].Value:=DM.Qry_Ticket.FieldByName('ID').AsInteger;
    DM.Sql.Params[1].Value:=DM.Qry_Parts.FieldByName('ID').AsInteger;
    DM.Sql.Params[2].Value:=DM.Qry_TP.FieldByName('ID').AsInteger;
    DM.Sql.Params[3].AsString:=DM.Qry_TP.FieldByName('N_PART').AsString;
    DM.Sql.Params[4].AsString:=STEP_7+ ':Разрешено частичное списание с СВХ' ;
    DM.Sql.Params[5].AsString:=User;
    DM.Sql.Params[6].AsInteger:=STEP_CODE_7;
    DM.Sql.ExecQuery;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update parties set send_write_off=:p0 where id=:p1 ');
    DM.Sql.Params[0].asInteger:=PARTIAL_WRITE_OFF;
    DM.Sql.Params[1].asInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    if Grid_TP.SelectedRows.Count > 0  then Grid_TP.SelectedRows.Clear;

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

procedure TMain_F.A_TP_Partial_Write_OffUpdate(Sender: TObject);
begin
 if Grid_TP.DataSource.DataSet.Active then
  if not Grid_TP.DataSource.DataSet.FieldByName('ID').IsNull and
     (Grid_TP.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger >= TP_LOCKED ) and
     (Grid_TP.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger <= TP_OUT_CBX )
          then
           (Sender as TAction).Enabled:=True
           else
           (Sender as TAction).Enabled:=False;
end;

procedure TMain_F.A_TsFinishedExecute(Sender: TObject);
var
 Mes:String;
 rec,idts,id_ticket:Integer;
 Q1,Q2:TIbQuery;
 n_ts:String;
 dt:TDateTime;
begin
   if not DM.Qry_GurTsOut.FieldByName('DT_FINISHED').isNull then Exit;
   rec:=DM.Qry_GurTsOut.FieldByName('ID').AsInteger;
   idts:=DM.Qry_GurTsOut.FieldByName('ID_TS').AsInteger;
   id_ticket:=Main_F.GetTicketId(DM.Qry_GurTsOut.FieldByName('N_TICKET').AsInteger);
   if Length(Trim(DM.Qry_GurTsOut.FieldByName('N_TRAILER').AsString)) > 0 then
      begin
        n_ts:=DM.Qry_GurTsOut.FieldByName('N_TS').AsString+' / '+DM.Qry_GurTsOut.FieldByName('N_TRAILER').AsString;
      end
     else
        n_ts:=DM.Qry_GurTsOut.FieldByName('N_TS').AsString;
   Mes:='Поставить отметку о выезде ТС № ' + DM.Qry_GurTsOut.FieldByName('N_TS').AsString ;
   if  Application.MessageBox(PChar(Mes),'Подтверждение',MB_ICONQUESTION+MB_YESNO) <> ID_YES
       then  Exit;
    Q1:=TIBQuery.Create(nil);
    Q1.Database:=DM.DB;
    Q1.Transaction:=DM.IBTR;
    Q2:=TIBQuery.Create(nil);
    Q2.Database:=DM.DB;
    Q2.Transaction:=DM.IBTR;

try
  try
    dt:=Now;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction; //start tran
     DM.Sql.Close;
     DM.Sql.SQL.Clear;
     DM.Sql.sql.Add(' update ts_out set dt_finished=:p0, user_finished=:p1 where id=:p2  ');
     DM.Sql.Params[0].AsDateTime:=dt;
     DM.Sql.Params[1].AsString:=User;
     DM.Sql.Params[2].AsInteger:=rec;
     DM.Sql.ExecQuery;
     //ставим признак выезда ТС в таблицу ТС
     DM.Sql.Close;
     DM.Sql.SQL.Clear;
     DM.Sql.sql.Add(' update ts set out_flag = :p0,out_pztk_flag=:p1 where id=:p2  ');
     DM.Sql.Params[0].AsInteger:=2;
     DM.Sql.Params[1].AsInteger:=1;
     DM.Sql.Params[2].AsInteger:=idts;
     DM.Sql.ExecQuery;
    //проверка подписки на СМС  e-mail и добавление в таблицу
    Dm.Sql.Close;
    DM.Sql.SQL.Clear;
    Dm.Sql.SQL.Add(' insert into sms_sending (phone_number,event_code,n_ts,firm_name) values (:p0,:p1,:p2,:p3) ');
    Q2.Close;
    Q2.SQL.Clear;
    Q2.SQL.Add('select s.id_zayv, s.phone_number, r.zayv from sms_subscription s ');
    Q2.SQL.Add(' left join reg_ti r on s.id_zayv = r.id where id_zayv=:p0 ');
    Q1.Close;
    Q1.SQL.Clear;
    Q1.SQL.Add('select id_owner from ticket_parts where id_ticket=:p0');
    Q1.Params[0].AsInteger := id_ticket;
    Q1.Open;
    while not Q1.Eof do
      begin
        if Q2.Active then Q2.Close;
        Q2.Params[0].AsInteger := Q1.Fields[0].AsInteger;
        Q2.Open;
        while not Q2.Eof do
          begin
            DM.Sql.Close;
            DM.Sql.Params[0].AsString := Q2.Fields[1].AsString;
            DM.Sql.Params[1].AsInteger := 2; //2 - выезд
            DM.Sql.Params[2].AsString :=n_ts;
            DM.Sql.Params[3].AsString := Q2.Fields[2].AsString;
            DM.Sql.ExecQuery;
            Q2.Next;
          end;
        Q1.Next;
      end;
///e-mail
    Dm.Sql.Close;
    DM.Sql.SQL.Clear;
    Dm.Sql.SQL.Add(' insert into mail_sending (email,event_code,n_ts,firm_name,dt_fact) values (:p0,:p1,:p2,:p3,:p4) ');
    Q2.Close;
    Q2.SQL.Clear;
    Q2.SQL.Add('select s.id_zayv, s.email, r.zayv from mail_subscription s ');
    Q2.SQL.Add(' left join reg_ti r on s.id_zayv = r.id where id_zayv=:p0 ');
    Q1.Close;
    Q1.SQL.Clear;
    Q1.SQL.Add('select id_owner from ticket_parts where id_ticket=:p0');
    Q1.Params[0].AsInteger := id_ticket;
    Q1.Open;
    while not Q1.Eof do
      begin
        if Q2.Active then Q2.Close;
        Q2.Params[0].AsInteger := Q1.Fields[0].AsInteger;
        Q2.Open;
        while not Q2.Eof do
          begin
            DM.Sql.Close;
            DM.Sql.Params[0].AsString := Q2.Fields[1].AsString;
            DM.Sql.Params[1].AsInteger := MAIL_CODE_FINISHED; //2 - выезд
            DM.Sql.Params[2].AsString :=n_ts;
            DM.Sql.Params[3].AsString := Q2.Fields[2].AsString;
            DM.Sql.Params[4].AsDateTime := dt;
            DM.Sql.ExecQuery;
            Q2.Next;
          end;
        Q1.Next;
      end;
      //

     DM.Sql.Transaction.Commit;
     DM.Qry_GurTsOut.Close;
     DM.Qry_GurTsOut.Open;
     DM.Qry_GurTsOut.Locate('ID',rec,[]);
  except
    on E: EdatabaseError do
      begin
       ShowMessage(E.Message);
      end;
  end;
finally
    if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

procedure TMain_F.A_TsOutExecute(Sender: TObject);
var
 Mes:String;
 rec,id_ticket:Integer;
 type_doc,name,ndoc:String;
 ddoc:TDate;
begin
   if DM.Qry_TS.FieldByName('ID').IsNull then Exit;
   Mes:='Разрешить выезд ТС № ' + DM.Qry_TS.FieldByName('N_TS').AsString ;
   if  Application.MessageBox(PChar(Mes),'Подтверждение',MB_ICONQUESTION+MB_YESNO) <> ID_YES
       then  Exit;
try
  try
    rec:=DM.Qry_TS.FieldByName('ID').AsInteger;
    id_ticket:=DM.Qry_TS.FieldByName('ID_TICKET').AsInteger;
    // проверим есть ли такое тс в журнале выезда
    DM.Qry.Close;
    Dm.Qry.SQL.Clear;
    Dm.Qry.SQL.Add(' select count(*) from ts_out where id_ts =:p0 ');
    DM.Qry.Params[0].AsInteger:=rec;
    Dm.Qry.Open;
    if DM.Qry.Fields[0].AsInteger > 0 then
      begin
        Application.MessageBox('Данное ТС уже есть в журнале выезда ','Внимание',MB_ICONSTOP+MB_OK);
        Exit;
      end;
    // проверим есть ли документы выпуска
    DM.Qry.Close;
    Dm.Qry.SQL.Clear;
    Dm.Qry.SQL.Add(' select count(*) from out_docs where id_ticket =:p0 ');
    DM.Qry.Params[0].AsInteger:=id_ticket;
    Dm.Qry.Open;
    if DM.Qry.Fields[0].AsInteger = 0 then
      begin
        Application.MessageBox('Отсутствуют документы выпуска. ','Внимание',MB_ICONWARNING+MB_OK);
        if ZtkOutDoc_F.ShowModal <> mrOK then Exit;
        type_doc:=OutDoc_F.E_Type.Text;
        name:=OutDoc_F.E_Name.Text;
        ndoc:=OutDoc_F.E_Ngtd.Text;
        ddoc:=Outdoc_f.E_Dgtd.Date;
      end;

    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction; //start tran
     DM.Sql.Close;
     DM.Sql.SQL.Clear;
     DM.Sql.sql.Add(' insert into ts_out (id_ts,user_out) values (:p0,:p1)  ');
     DM.Sql.Params[0].AsInteger:=rec;
     DM.Sql.Params[1].AsString:=User;
     DM.Sql.ExecQuery;
     // установим флаг помещения в журнал выезда
     DM.Sql.Close;
     DM.Sql.SQL.Clear;
     DM.Sql.sql.Add(' update ts set out_flag=:p0 where id=:p1  ');
     DM.Sql.Params[0].AsInteger:=1;
     DM.Sql.Params[1].AsInteger:=rec;
     DM.Sql.ExecQuery;
     //добавим запись в документ выпуска
     DM.SQL.Close;
     Dm.SQL.SQL.Clear;
     DM.SQL.SQL.Add('insert into out_docs (name,ndoc,ddoc,id_ticket) ');
     DM.SQL.SQL.Add('values (:p0,:p1,:p2,:p3)');
     ZtkOutDoc_F.Mt_out.First;
     while not ZtkOutDoc_F.Mt_out.Eof do
      begin
         DM.SQL.params[0].AsString:=ZtkOutDoc_F.Mt_out.FieldByName('NAME').AsString;
         DM.SQL.params[1].AsString:=ZtkOutDoc_F.Mt_out.FieldByName('NDOC').AsString;
         DM.SQL.params[2].AsDate:=ZtkOutDoc_F.Mt_out.FieldByName('DDOC').AsDateTime;
         DM.SQL.params[3].Value:=id_ticket;
         DM.Sql.ExecQuery;
         DM.Sql.Close;
         ZtkOutDoc_F.Mt_out.Next;
      end;
     DM.Sql.Transaction.Commit;
     DM.Refresh_TS;
     DM.Qry_PztkOutDocs.Close;
     DM.Qry_PztkOutDocs.Open;
  except
    on E: EdatabaseError do
      begin
       ShowMessage(E.Message);
      end;
  end;
finally
    if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

procedure TMain_F.A_TsOutUpdate(Sender: TObject);
begin
{  if Grid_TS.DataSource.DataSet.Active then
    if (Grid_TS.DataSource.DataSet.FieldByName('OUT_FLAG').AsInteger = 2) or
       (Grid_TS.DataSource.DataSet.FieldByName('ID').IsNull)  then
       (Sender as TAction).Enabled:=False
       else
       (Sender as TAction).Enabled:=True;}
end;

procedure TMain_F.A_TS_ON_CBXExecute(Sender: TObject);
begin
//
end;

procedure TMain_F.A_TS_SCALINGExecute(Sender: TObject);
begin
//
end;

procedure TMain_F.A_ZtkOutDocsExecute(Sender: TObject);
begin
  ZtkOutDocs_F.ShowModal;
end;

procedure TMain_F.A_ZTK_TP_Full_Write_OffExecute(Sender: TObject);
var
 Mes:String;
 id_rec:Integer;
begin
    DM.Qry.Close;
    DM.Qry.SQL.Clear;
    Dm.Qry.SQL.Add(' select count(id) from out_docs where id_tp = :p0');
    Dm.Qry.Params[0].AsInteger:=Dm.Qry_TP.FieldByName('ID').AsInteger;
    Dm.qry.Open;
    if Dm.Qry.Fields[0].AsInteger = 0  then
      begin
        if Application.MessageBox('Для данной ТП отсутствуют документы выпуска.Продолжить?',
                                  'Предупреждение',MB_YESNO+MB_ICONWARNING) <> IDYES then Exit;
      end;
    Mes:=format( 'Выполнить полное списание ТП №%s с ЗТК? ',[DM.Qry_TP.FieldByName('N_PART').AsString]) ;
    if Application.MessageBox(PChar(Mes),'Внимание',MB_YESNO+MB_ICONASTERISK) <> IDYES then Exit;
    try
     try
        id_rec:=DM.Qry_TP.FieldByName('ID').AsInteger;
        if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
        //добавим запись в журнал талона
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('insert into parties_log (id_ticket,id_part,id_tp,npp_tp,action_name,username,action_code) ');
        DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6) ');
        DM.Sql.Params[0].Value:=DM.Qry_Ticket.FieldByName('ID').AsInteger;
        DM.Sql.Params[1].Value:=DM.Qry_Parts.FieldByName('ID').AsInteger;
        DM.Sql.Params[2].Value:=DM.Qry_TP.FieldByName('ID').AsInteger;
        DM.Sql.Params[3].AsString:=DM.Qry_TP.FieldByName('N_PART').AsString;
        DM.Sql.Params[4].AsString:=STEP_7+ ':Полное списание с ЗТК' ;
        DM.Sql.Params[5].AsString:=User;
        DM.Sql.Params[6].AsInteger:=STEP_CODE_7;
        DM.Sql.ExecQuery;
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('update parties set ztk_condition =:p0 where id=:p1 ');
        DM.Sql.Params[0].asInteger:=ZTK_FULL_WRITE_OFF;
        DM.Sql.Params[1].asInteger:=id_rec;
        DM.Sql.ExecQuery;
        DM.Sql.Transaction.Commit;
        if Grid_TP.SelectedRows.Count > 0  then Grid_TP.SelectedRows.Clear;
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

procedure TMain_F.A_ZTK_TP_Full_Write_OffUpdate(Sender: TObject);
begin
 if Grid_TP.DataSource.DataSet.Active then
  if not Grid_TP.DataSource.DataSet.FieldByName('ID').IsNull and
     (Grid_TP.DataSource.DataSet.FieldByName('REG').AsInteger >= TP_REGISTERED ) and
     (Grid_TP.DataSource.DataSet.FieldByName('ZTK_CONDITION').AsInteger < ZTK_FULL_WRITE_OFF )  and
     (Grid_TP.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger < TP_TO_CBX)
          then
           (Sender as TAction).Enabled:=True
           else
           (Sender as TAction).Enabled:=False;

end;

procedure TMain_F.A_ZTK_TP_Partial_Write_OffExecute(Sender: TObject);
var
 Mes:String;
 id_rec:Integer;
begin
    DM.Qry.Close;
    DM.Qry.SQL.Clear;
    Dm.Qry.SQL.Add(' select count(id) from out_docs where id_tp = :p0');
    Dm.Qry.Params[0].AsInteger:=Dm.Qry_TP.FieldByName('ID').AsInteger;
    Dm.qry.Open;
    if Dm.Qry.Fields[0].AsInteger = 0  then
      begin
        if Application.MessageBox('Для данной ТП отсутствуют документы выпуска.Продолжить?',
                                  'Предупреждение',MB_YESNO+MB_ICONWARNING) <> IDYES then Exit;
      end;
    Mes:=format( 'Выполнить частичное списание ТП №%s с ЗТК? ',[DM.Qry_TP.FieldByName('N_PART').AsString]) ;
    if Application.MessageBox(PChar(Mes),'Внимание',MB_YESNO+MB_ICONASTERISK) <> IDYES then Exit;
    try
     try
        id_rec:=DM.Qry_TP.FieldByName('ID').AsInteger;
        if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
        //добавим запись в журнал талона
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('insert into parties_log (id_ticket,id_part,id_tp,npp_tp,action_name,username,action_code) ');
        DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6) ');
        DM.Sql.Params[0].Value:=DM.Qry_Ticket.FieldByName('ID').AsInteger;
        DM.Sql.Params[1].Value:=DM.Qry_Parts.FieldByName('ID').AsInteger;
        DM.Sql.Params[2].Value:=DM.Qry_TP.FieldByName('ID').AsInteger;
        DM.Sql.Params[3].AsString:=DM.Qry_TP.FieldByName('N_PART').AsString;
        DM.Sql.Params[4].AsString:=STEP_7+ ': Частичное списание с ЗТК' ;
        DM.Sql.Params[5].AsString:=User;
        DM.Sql.Params[6].AsInteger:=STEP_CODE_7;
        DM.Sql.ExecQuery;
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('update parties set ztk_condition =:p0 where id=:p1 ');
        DM.Sql.Params[0].asInteger:=ZTK_PARTIAL_WRITE_OFF;
        DM.Sql.Params[1].asInteger:=id_rec;
        DM.Sql.ExecQuery;
        DM.Sql.Transaction.Commit;
        if Grid_TP.SelectedRows.Count > 0  then Grid_TP.SelectedRows.Clear;
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

procedure TMain_F.A_ZTK_TP_Partial_Write_OffUpdate(Sender: TObject);
begin
 if Grid_TP.DataSource.DataSet.Active then
  if not Grid_TP.DataSource.DataSet.FieldByName('ID').IsNull and
     (Grid_TP.DataSource.DataSet.FieldByName('REG').AsInteger >= TP_REGISTERED ) and
     (Grid_TP.DataSource.DataSet.FieldByName('ZTK_CONDITION').AsInteger < ZTK_FULL_WRITE_OFF ) and
     (Grid_TP.DataSource.DataSet.FieldByName('TP_MOVE_CBX_CODE').AsInteger < TP_TO_CBX)
          then
           (Sender as TAction).Enabled:=True
           else
           (Sender as TAction).Enabled:=False;
end;

procedure TMain_F.BtnHelpClick(Sender: TObject);
var
 dir,helpfile:String;
begin
 dir:=ExtractFilePath(Application.ExeName);
 helpfile:=dir+'\Help\armcbxhelp.chm';
 HtmlHelp(handle,helpfile,HH_DISPLAY_TOPIC,0);
end;

procedure TMain_F.Button1Click(Sender: TObject);
var S1, S2: TStringStream;
begin
  S1.LoadFromStream(S2)
end;

function TMain_F.CbxToCbx(Rec: Integer; GridName: TDBGridEh):Integer;
begin
Result:=1;
try
 try
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    //добавим запись в журнал талона
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into parties_log (id_ticket,id_part,id_tp,npp_tp,action_name,username,action_code) ');
    DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6) ');
    DM.Sql.Params[0].Value:=DM.Qry_Ticket.FieldByName('ID').AsInteger;
    DM.Sql.Params[1].Value:=DM.Qry_Parts.FieldByName('ID').AsInteger;
    DM.Sql.Params[2].Value:=DM.Qry_TP.FieldByName('ID').AsInteger;
    DM.Sql.Params[3].AsString:=DM.Qry_TP.FieldByName('N_PART').AsString;
    DM.Sql.Params[4].AsString:=STEP_7+ ':Разрешено перемещение между СВХ' ;
    DM.Sql.Params[5].AsString:=User;
    DM.Sql.Params[6].AsInteger:=STEP_CODE_7;
    DM.Sql.ExecQuery;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update parties set tp_move_cbx_code=:p0 where id=:p1 ');
    DM.Sql.Params[0].asInteger:=TP_FROM_CBX_TO_CBX;
    DM.Sql.Params[1].asInteger:=Rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    if GridName.SelectedRows.Count > 0  then GridName.SelectedRows.Clear;
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

procedure TMain_F.CreatePassWODocs(id_ts, n_ticket,id_ticket: Integer; n_ts,
  n_trailer: String);
var
 qry:TIbquery;
 new_out:Integer;
begin
   //добавим запись в журнал выезда
   try
     qry:=TIBQuery.Create(Self);
     qry.Database:=DM.DB;
     qry.SQL.Add(' select count(*) from ts_out where id_ts =:p0 ');
     qry.Params[0].AsInteger:=id_ts;
     qry.Open;
     if qry.Fields[0].AsInteger > 0 then
       begin
         Application.MessageBox('Данное ТС уже есть в журнале выезда ','Внимание',MB_ICONSTOP+MB_OK);
         Exit;
       end ;
     if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
     qry.close;
     qry.SQL.Clear;
     qry.SQL.Add('select gen_id(newid_ts_out,1) from rdb$database');
     qry.Open;
     new_out:=qry.Fields[0].AsInteger;
     qry.Close;
     DM.Sql.Close;
     DM.Sql.SQL.Clear;
     DM.Sql.sql.Add(' insert into ts_out (id_ts,user_out,id,type_pass,n_pass,n_ts,n_trailer,n_ticket,n_ztk,dt_checkout,dover,date_dover,fio) ');
     DM.Sql.sql.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12)  ');

     DM.Refresh_Settings;

     DM.Sql.Params[0].AsInteger:=id_ts;
     DM.Sql.Params[1].AsString:=User;
     DM.Sql.Params[2].AsInteger:=new_out;
     DM.Sql.Params[3].AsInteger:=2; // тип пропуска - для машин без оформления
     DM.Sql.Params[4].AsInteger:=DM.Qry_Settings.FieldByName('NEXT_PASS').AsInteger;
     DM.Sql.Params[5].AsString:=n_ts;
     DM.Sql.Params[6].AsString:=Copy(n_trailer,1,15);
     DM.Sql.Params[7].AsInteger:=n_ticket;
     DM.Sql.Params[8].AsString:='';
     DM.Sql.Params[9].AsDateTime:= Pass_F.SetDeadLineTime(Now);
     DM.Sql.Params[10].AsVariant:=null;
     DM.Sql.Params[11].AsVariant:=null;
     DM.Sql.Params[12].AsVariant:=null;
     DM.Sql.ExecQuery;

     DM.Sql.Close;
     DM.Sql.SQL.Clear;
     DM.Sql.sql.Add(' update ts set out_flag=:p0 where id=:p1  ');
     DM.Sql.Params[0].AsInteger:=1;
     DM.Sql.Params[1].AsInteger:=id_ts;
     DM.Sql.ExecQuery;

     ////////////////////

     DM.Sql.Close;
     DM.Sql.Sql.clear;
     DM.Sql.Sql.Add('update settings set next_pass = next_pass+1');
     DM.Sql.ExecQuery;
     try
           DM.SQL.Transaction.Commit;
     except
        on E: EdatabaseError do
          begin
           DM.SQL.Transaction.Rollback;
           ShowMessage(E.Message);
          end;
     end;
     DM.Qry_GurTsOut.Close;
     DM.Qry_GurTsOut.Open;
     DM.Qry_GurTsOut.Locate('ID',new_out,[]);
     DM.Qry_RepPassOut.Close;
     DM.Qry_RepPassOut.Params[0].AsInteger:=new_out;
     DM.Qry_RepPassOut.Open;
     DM.Qry_RepPassOutTs.Close;
     DM.Qry_RepPassOutTs.Params[0].AsInteger:=id_ticket;
     DM.Qry_RepPassOutTs.Open;
     if Reports_F.Rep2.LoadFromFile('cheque_pass_out_customs.fr3') then Reports_F.Rep2.ShowReport(True);
     DM.Qry_RepPassOutTs.Close;
     A_RefTS.Execute;
    finally
     begin
       qry.Free;
       if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
     end;
   end;

end;

procedure TMain_F.E_FindEnter(Sender: TObject);
begin
// if Length(Trim(E_Find.Text)) > 0 then E_Find.Clear;

end;

procedure TMain_F.E_FindKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then E_FindLeftButtonClick(E_Find);
end;

procedure TMain_F.E_FindLeftButtonClick(Sender: TObject);
begin
  if Length((Sender as TButtonedEdit).Text)=0 then Exit
    else
     Find_KT((Sender as TButtonedEdit).Text);
end;

procedure TMain_F.E_FindRightButtonClick(Sender: TObject);
begin
//  if Length((Sender as TButtonedEdit).Text)=0 then Exit
//    else
//     Find_KT((Sender as TButtonedEdit).Text);
end;

procedure TMain_F.E_PopKeyPress(Sender: TObject; var Key: Char);
begin
 if Key =#13  then E_PopLeftButtonClick(E_Pop);
end;

procedure TMain_F.E_PopLeftButtonClick(Sender: TObject);
begin
  if Length((Sender as TButtonedEdit).Text)=0 then Exit
    else
     Find_Pop((Sender as TButtonedEdit).Text);
end;

procedure TMain_F.E_PopRightButtonClick(Sender: TObject);
begin
//  if Length((Sender as TButtonedEdit).Text)=0 then Exit
//    else
//     Find_Pop((Sender as TButtonedEdit).Text);
end;

procedure TMain_F.E_TdKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13  then
       begin
         if Length(E_Td.Text) <> 23 then
            begin
               Application.MessageBox('Неверная длина номера ТД.Поиск невозможен.','Внимание',MB_ICONERROR+MB_OK);
               Exit;
            end
           else
            Find_Vtt(E_td.Text);
       end
     else
       if not( Key in ['0'..'9','/',#8]) then Key:=#0;
end;

procedure TMain_F.Find_KT(S: String);
//найти КТ
begin
 if DM.Qry_Ticket.Active then DM.Qry_Ticket.Close;
 DM.Qry_Ticket.SQL.Clear;
 DM.Qry_Ticket.SQL.Add('select a.*, b.owner, b.id, b.phone from ticket a left join carrier b on a.id_carrier = b.id where a.n_ticket=:p0') ;
 DM.Qry_Ticket.Params[0].AsInteger:=StrToInt(S);
 DM.Qry_Ticket.Open;
end;

procedure TMain_F.Find_Pop(S: String);
begin
 if DM.Qry_Ticket.Active then DM.Qry_Ticket.Close;
 DM.Qry_Ticket.SQL.Clear;
 DM.Qry_Ticket.SQL.Add('select a.*, b.owner, b.id, b.phone from ticket a left join carrier b on a.id_carrier = b.id where a.pop containing :p0') ;
 DM.Qry_Ticket.Params[0].AsString:=S;
 DM.Qry_Ticket.Open;
end;

procedure TMain_F.Find_Vtt(S: String);
var
  qry:TIBQuery;
  id_tp:Integer;
  n_tp,n_ticket:String;
begin
  qry := TIBQuery.Create(Self);
  try
    qry.Database:=DM.DB;
    qry.sql.Add('select id from parties where vtt = :p0 ');
    qry.Params[0].AsString:=E_Td.Text;
    qry.Open;
    if qry.IsEmpty then
      begin
          Application.MessageBox('Данные не найдены.','Поиск',MB_ICONSTOP+MB_OK);
          Lbl_tp.Caption:='Данных не найдено';
          Exit;
      end;
    id_tp:=qry.Fields[0].AsInteger;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add('select num_ticket,num_tp from v_num_docs where id_tp = :p0');
    qry.Params[0].AsInteger:=id_tp;
    qry.Open;
    n_ticket:=qry.Fields[0].AsString;
    n_tp:=qry.Fields[1].AsString;
    Find_KT(n_ticket);
    Lbl_tp.Caption:='№ ТП: '+n_tp;
    Application.ProcessMessages;
  finally
    qry.Free;
  end;
end;

procedure TMain_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MyList.Free;
  if Assigned(Buh_F) then Buh_F.Free;
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;

procedure TMain_F.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Application.MessageBox('Выйти из программы?','Внимание',MB_ICONQUESTION+MB_YESNO) <> IDYES then CanClose:=False;
end;

procedure TMain_F.FormCreate(Sender: TObject);
begin
 Self.MyList:=TList.Create;
 CurDecSep:=FormatSettings.DecimalSeparator;
 Grid_TicketParts.Color:=LighterColor(clYellow,60);
 //Shape1.Brush.Color:=LighterColor(clRed,40);
 //Shape2.Brush.Color:=LighterColor(clGreen,40);
end;

procedure TMain_F.FormPaint(Sender: TObject);
begin
//Подгоняем высоту панелей под размер окна
//CP_KT.Height:=(CPGr1.Height-(CP_TP.Height+CP_TS.Height+CP_Parts.Height))+60;
CP_KT.Height:=Round(CPGr1.Height*0.21);
CP_TS.Height:=Round(CPGr1.Height*0.22);
CP_Parts.Height:=Round(CPGr1.Height*0.27);
CP_TP.Height:=Round(CPGr1.Height*0.3)-8;
end;

procedure TMain_F.FormShow(Sender: TObject);
var
 x:Word;
 accounter_flag:Boolean;
begin
 if RemoteFlag = 'remote' then
  begin
    for x:=0 to Mn1.Items.Count-1 do
      begin
        Mn1.Items[x].Enabled:=False;
      end;
    Reports_MainItem.Enabled:=True;
    ToolBar1.Enabled:=False;
    Panel2.Enabled:=False;
    Panel3.Enabled:=False;
    Panel4.Enabled:=false;
  end;
 if Login_F.ShowModal <> mrOK then
   begin
      Application.MessageBox('Выбрано завершение работы.Приложение будет закрыто.',
                              'Внимание',MB_ICONSTOP+MB_OK);
      Application.Terminate;
   end;
 accounter_flag := (Role = 'ACCOUNTER') or (Role = 'SYSADMIN') or ((Pos('ACCOUNTER_VIEW',Rights) > 0));
 if accounter_flag then Accounter_MainItem.Enabled := True
    else Accounter_MainItem.Enabled := False;
 if (accounter_flag) and ((Pos('ACCOUNTER_VIEW',Rights) > 0)) then
  begin
    Accounter_MainItem.Enabled := True;
    N4.Enabled := True;
    N10.Enabled := True;
    N54.Enabled := False;
    N35.Enabled := False;
  end;
  //if (Role='SYSADMIN') then N45.Enabled:=True else N45.Enabled:=False;
  if ((Role='SYSADMIN') or (Role='KPP')) then mnSetErrorEnter.Enabled:=True else mnSetErrorEnter.Enabled:=False;
  if (Role='SYSADMIN') then mnDeleteErrorEnter.Enabled:=True else mnDeleteErrorEnter.Enabled:=False;
  if (Role='SYSADMIN') then AdminItems.Enabled:=True else AdminItems.Enabled:=False;

//показываем инф. на стаутс баре
statusbar1.Panels[0].Text := 'Пользователь: '+User+' Должность: '+Dolj +'  ';
statusbar1.Panels[1].Text :='Сегодня '+dateToStr(date);
statusbar1.Panels[2].Text :='БД '+DM.DB.DatabaseName;
//открыаем справочники
DM.OpenSprav;
//открываем рабочие таблицы
DM.OpenDB;
// устанавливаем даты
WorkDate1.Date:=Date-1;
WorkDate2.Date:=Date;
//SetWorkInterval_BtnClick(SetWorkInterval_Btn);
//обрабатываем права пользователя
//if ROLE <> 'SYSADMIN' then RibGr_KT.Enabled:=False;
//Grid_Ticket.SetFocus;
end;

function TMain_F.GetActWeight(Id_scale: Integer): Double;
var
 qry:TIbquery;
begin
  try
   Result:=0;
   qry:=TIbQuery.Create(self);
   qry.Database:=DM.DB;
   qry.Transaction:=dm.IBTR;
   qry.SQL.Add(' select brutto from act_of_scales where ID = :p0 ');
   qry.Params[0].AsInteger:=Id_scale;
   qry.Open;
   Result:=qry.Fields[0].AsFloat;
  finally
   qry.Free;
  end;
end;

function TMain_F.GetCBXContract(Id: Integer): String;
var
  qry:TIBQuery;
  s:String;
begin
   Result:='';
   try
     qry:=TIbQuery.Create(Nil);
     qry.Database:=Dm.DB;
     qry.Transaction:=Dm.IBTR;
     s:=format('select first 1 num_dog,start_dog from dogovors where id_zayv=:p0  and num_dog not containing %s%s%s order by id desc ',[#39,#45,#39]);
     qry.SQL.Add(s);
     qry.params[0].AsInteger:=Id;
     qry.Open;
     if qry.RecordCount > 0 then
        Result:='№ '+ qry.FieldByName('NUM_DOG').asString+
                ' от ' +  qry.FieldByName('START_DOG').asString;
   finally
     qry.Free;
   end;
end;

function TMain_F.GetTicketId(N_Ticket: Integer): Integer;
var
 qry:TIbquery;
begin
  try
   Result:=0;
   qry:=TIbQuery.Create(self);
   qry.Database:=DM.DB;
   qry.Transaction:=dm.IBTR;
   qry.SQL.Add(' select first 1 id from ticket where N_TICKET = :p0 ');
   qry.Params[0].AsInteger:=N_ticket;
   qry.Open;
   Result:=qry.Fields[0].AsInteger;
  finally
   qry.Free;
  end;
end;

function TMain_F.GetTsDriverFio(Id_ticket: Integer): string;
var
 qry:TIbquery;
begin
  try
   Result:='';
   qry:=TIbQuery.Create(self);
   qry.Database:=DM.DB;
   qry.Transaction:=dm.IBTR;
   qry.SQL.Add(' select first 1 driver from first_ts where ID_TICKET = :p0 ');
   qry.Params[0].AsInteger:=Id_ticket;
   qry.Open;
   Result:=qry.Fields[0].AsString;
  finally
   qry.Free;
  end;
end;

function TMain_F.GetTsEnter(IdTicket: Integer): String;
var
 qry:TIbquery;
begin
  try
   Result:='';
   qry:=TIbQuery.Create(self);
   qry.Database:=DM.DB;
   qry.Transaction:=dm.IBTR;
   qry.SQL.Add(' select first 1 N_TS,N_TRAILER_HUMAN from first_ts where ID_TICKET = :p0 order by id ');
   qry.Params[0].AsInteger:=IdTicket;
   qry.Open;
   Result:=qry.Fields[0].AsString+' / '+qry.Fields[1].AsString;
  finally
   qry.Free;
  end;
end;

function TMain_F.GetTsNumber(Id_ticket: Integer): String;
var
 qry:TIbquery;
begin
  try
   Result:='';
   qry:=TIbQuery.Create(self);
   qry.Database:=DM.DB;
   qry.Transaction:=dm.IBTR;
   qry.SQL.Add(' select first 1  N_TS,N_TRAILER_HUMAN from first_ts where ID_TICKET = :p0 ');
   qry.Params[0].AsInteger:=Id_ticket;
   qry.Open;
   Result:=qry.Fields[0].AsString+' / '+qry.Fields[1].AsString;
  finally
   qry.Free;
  end;
end;

function TMain_F.GetTypeNumering(N: Integer): String;
var l:Integer;
begin
  Result:='';
  l:=Length(IntToStr(N));
  case l of
  7: Result:='A';
  8: result:='B';
  end;

end;


procedure TMain_F.Grid_TicketDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
    if  Trim(DM.Qry_Ticket.FieldByName('DELETE_FLAG').AsString) = 'Y'  then
     begin
      Grid_Ticket.Canvas.Font.Color := clBlack; // Font color
      Grid_Ticket.Canvas.Font.Style := [fsStrikeOut]; // Font color
      Grid_Ticket.Canvas.Brush.Color := LighterColor(clSilver,30); // Background color
      Grid_Ticket.Canvas.FillRect(Rect);
     end;
Grid_Ticket.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TMain_F.Grid_TicketPartsDblClick(Sender: TObject);
begin
A_EditKTFull.Execute;
end;

procedure TMain_F.Grid_TicketPartsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if (Sender as TDbGridEh).SelectedRows.CurrentRowSelected then
 begin
 (Sender as TDbGridEh).Canvas.Font.Color := clYellow; // Font color
 (Sender as TDbGridEh).Canvas.Brush.Color := clBlue; // Background color
 (Sender as TDbGridEh).Canvas.FillRect(Rect);
 end;

 (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TMain_F.Grid_TPDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin

{if (Sender as TDbGridEh).DataSource.DataSet.FieldByName('SEND_WRITE_OFF').AsInteger = PARTIAL_WRITE_OFF  then
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
 end;}


if (Sender as TDbGridEh).SelectedRows.CurrentRowSelected then
 begin
 (Sender as TDbGridEh).Canvas.Font.Color := clYellow; // Font color
 (Sender as TDbGridEh).Canvas.Brush.Color := clBlue; // Background color
 (Sender as TDbGridEh).Canvas.FillRect(Rect);
 end;

 if (Sender as TDbGridEh).DataSource.DataSet.FieldByName('STOIMOST_RUB').AsCurrency > 50000000  then
 begin
 (Sender as TDbGridEh).Canvas.Font.Color := clBlack; // Font color
 (Sender as TDbGridEh).Canvas.Brush.Color :=LighterColor(clRed,20); // Background color
 (Sender as TDbGridEh).Canvas.FillRect(Rect);
 end;

 (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TMain_F.Grid_TSDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
if  DM.Qry_TS.FieldByName('OUT_FLAG').AsInteger = 2  then
 begin
  Grid_TS.Canvas.Font.Color := clBlack; // Font color
  Grid_TS.Canvas.Font.Style := [fsStrikeOut]; // Font color
  Grid_TS.Canvas.Brush.Color := LighterColor(clSilver,30); // Background color
  Grid_TS.Canvas.FillRect(Rect);
 end;
Grid_TS.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TMain_F.It_41Click(Sender: TObject);
begin
  ScalingTP_F.ShowModal;
end;

procedure TMain_F.It_ValClick(Sender: TObject);
begin
  Val_F.ShowModal;
end;

procedure TMain_F.It_OksmtClick(Sender: TObject);
begin
 CountryCode_F.ShowModal;
end;

procedure TMain_F.It_CarrierClick(Sender: TObject);
begin
 Carrier_F.ShowModal;
end;

procedure TMain_F.It_VidTransClick(Sender: TObject);
begin
 VidTrans_F.ShowModal;
end;

procedure TMain_F.mnDeleteErrorEnterClick(Sender: TObject);
var
 Mes:String;
 id_rec,id_ticket,new_id_tsout:Integer;
begin
    if DM.Qry_TS.FieldByName('ID').IsNull then Exit;
    if DM.Qry_TS.FieldByName('OUT_FLAG').AsInteger <> 2 then
      begin
        Application.MessageBox('Невозможно снять отметку на ТС','Внимание',
                    MB_ICONSTOP+MB_OK);
        Exit;
      end;
    if (Trim(DM.Qry_TICKET.FieldByName('DELETE_FLAG').AsString) <> 'Y') then
      begin
        Application.MessageBox('Невозможно поставить отметку на данный КТ','Внимание',
                    MB_ICONSTOP+MB_OK);
        Exit;
      end;

    Mes:=format( 'Снять отметку об ошибочном въезде? ',[DM.Qry_TicketN_TICKET.AsString]) ;
    if Application.MessageBox(PChar(Mes),'Внимание',MB_YESNO+MB_ICONASTERISK) <> IDYES then Exit;
try
 try
    id_rec:=DM.Qry_TS.FieldByName('ID').AsInteger;
    id_ticket:=DM.Qry_TS.FieldByName('ID_TICKET').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    //ставим пометку на удаление в талон
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update ticket set delete_flag =:p0 where id=:p1 ');
    DM.Sql.Params[0].AsString:='N';
    DM.Sql.Params[1].asInteger:=id_ticket;
    DM.Sql.ExecQuery;
    //ставим признак выезда ТС в таблицу ТС
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.sql.Add(' update ts set out_flag = :p0 where id=:p1  ');
    DM.Sql.Params[0].AsVariant:=Null;
    DM.Sql.Params[1].AsInteger:=id_rec;
    DM.Sql.ExecQuery;
    //создаем запись в журнале выезда на данное ТС
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.sql.Add(' delete from ts_out where id_ts = :p0 ');
    DM.Sql.Params[0].AsInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    DM.Refresh_Ticket;
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

procedure TMain_F.mnSetErrorEnterClick(Sender: TObject);
var
 Mes:String;
 id_rec,id_ticket,new_id_tsout:Integer;
begin
    if DM.Qry_TS.FieldByName('ID').IsNull then Exit;
    if DM.Qry_TS.FieldByName('OUT_FLAG').AsInteger = 2 then
      begin
        Application.MessageBox('Невозможно поставить отметку.Данное ТС числится выехавшим.','Внимание',
                    MB_ICONSTOP+MB_OK);
        Exit;
      end;
    if (not DM.Qry_TP.FieldByName('ID').IsNull) then
      begin
        Application.MessageBox('Невозможно поставить отметку.На данный КТ уже оформлены товарные партии.','Внимание',
                    MB_ICONSTOP+MB_OK);
        Exit;
      end;

    Mes:=format( 'Поставить отметку об ошибочном въезде? ',[DM.Qry_TicketN_TICKET.AsString]) ;
    if Application.MessageBox(PChar(Mes),'Внимание',MB_YESNO+MB_ICONASTERISK) <> IDYES then Exit;
try
 try
    id_rec:=DM.Qry_TS.FieldByName('ID').AsInteger;
    id_ticket:=DM.Qry_TS.FieldByName('ID_TICKET').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    //ставим пометку на удаление в талон
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update ticket set delete_flag =:p0 where id=:p1 ');
    DM.Sql.Params[0].AsString:='Y';
    DM.Sql.Params[1].asInteger:=id_ticket;
    DM.Sql.ExecQuery;
    //ставим признак выезда ТС в таблицу ТС
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.sql.Add(' update ts set out_flag = :p0 where id=:p1  ');
    DM.Sql.Params[0].AsInteger:=2;
    DM.Sql.Params[1].AsInteger:=id_rec;
    DM.Sql.ExecQuery;
    //создаем запись в журнале выезда на данное ТС
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.sql.Add(' insert into ts_out (id_ts,user_out,type_pass,n_pass,n_ts,n_trailer,n_ticket,dt_finished,user_finished) ');
    DM.Sql.sql.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8)  ');
    DM.Sql.Params[0].AsInteger:=id_rec;
    DM.Sql.Params[1].AsString:=User;
    DM.Sql.Params[2].AsInteger:=0;
    DM.Sql.Params[3].AsInteger:=-1;
    DM.Sql.Params[4].AsString:=DM.Qry_TS.FieldByName('N_TS').AsString;
    DM.Sql.Params[5].AsString:=DM.Qry_TS.FieldByName('N_TRAILER1').AsString;
    DM.Sql.Params[6].AsInteger:=DM.Qry_Ticket.FieldByName('N_TICKET').AsInteger;
    DM.Sql.Params[7].AsDateTime:=Now;
    DM.Sql.Params[8].AsString:=User;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    DM.Refresh_Ticket;
    DM.Refresh_TS;
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

procedure TMain_F.Mn_PrintKTClick(Sender: TObject);
var
 id_ticket:Integer;
begin
  id_ticket:=DM.Qry_Ticket.FieldByName('ID').AsInteger;
  PrintKT(id_ticket);
end;

procedure TMain_F.It_CustDocClick(Sender: TObject);
begin
 TDoc_F.ShowModal;
end;

procedure TMain_F.It_TransDocClick(Sender: TObject);
begin
 Docg44_F.ShowModal;
end;

procedure TMain_F.It_TnvedClick(Sender: TObject);
begin
Tnved4_F.ShowModal;
end;

procedure TMain_F.It_PricesClick(Sender: TObject);
begin
  Prices_F.ShowModal;
end;

procedure TMain_F.It_RegTiClick(Sender: TObject);
begin
 RegTi_F.ShowModal;
end;

procedure TMain_F.It_PriceListClick(Sender: TObject);
begin
 PriceList_F.ShowModal;
end;

procedure TMain_F.N10Click(Sender: TObject);
begin
//FakturaLog_F.ShowModal;
if not Assigned(FakturaLog_F)then
 begin
   Application.CreateForm(TFakturaLog_F, FakturaLog_F);
   FakturaLog_F.Show;
 end
 else
   if FakturaLog_F.WindowState = wsMinimized	then  ShowWindow(FakturaLog_F.Handle, SW_RESTORE)
     else FakturaLog_F.Show;
end;

procedure TMain_F.N11Click(Sender: TObject);
begin
if not Assigned(TsOut_F)then
 begin
   Application.CreateForm(TTsOut_F, TsOut_F);
   TsOut_F.Show;
 end
 else
   if TsOut_F.WindowState = wsMinimized	then  ShowWindow(TsOut_F.Handle, SW_RESTORE)
     else TsOut_F.Show;
end;

procedure TMain_F.N14Click(Sender: TObject);
begin
if not Assigned(PZTKLog_F)then
 begin
   Application.CreateForm(TPZTKLog_F, PZTKLog_F);
   PZTKLog_F.Show;
 end
 else
   if PZTKLog_F.WindowState = wsMinimized	then  ShowWindow(PZTKLog_F.Handle, SW_RESTORE)
     else PZTKLog_F.Show;
end;

procedure TMain_F.N15Click(Sender: TObject);
begin
if not Assigned(FormAtol)then
 begin
   Application.CreateForm(TFormAtol, FormAtol);
   FormAtol.Show;
 end
 else
   if FormAtol.WindowState = wsMinimized	then  ShowWindow(FormAtol.Handle, SW_RESTORE)
     else FormAtol.Show;

end;

procedure TMain_F.N18Click(Sender: TObject);
begin
 Main_F.IdPart:=DM.Qry_parts.FieldByName('ID').AsInteger;
 Main_F.IdTicket:=DM.Qry_Ticket.FieldByName('ID').AsInteger;
 DM.Refresh_Full_Ticket_Qry_Rep;
 if Reports_F.Rep1.LoadFromFile('kt_full.fr3') then
    if Reports_F.Rep1.PrepareReport(True) then
        Reports_F.Rep1.ShowPreparedReport;
end;

procedure TMain_F.N19Click(Sender: TObject);
begin
// Печатать чек по  части КТ
 Main_F.IdPart:=Grid_TicketParts.DataSource.DataSet.FieldByName('ID').AsInteger;
 if DM.Qry_Rep_Part.Active then DM.Qry_Rep_Part.Close;
 DM.Qry_Rep_Part.Params[0].AsInteger:=Main_F.IdPart;
 DM.Qry_Rep_Part.Open;
 DM.Qry_RepCheck.Close;
 DM.Qry_RepCheck.Params[0].AsInteger:=Grid_TP.DataSource.DataSet.FieldByName('ID').AsInteger;
 DM.Qry_RepCheck.Open;
 DM.Qry_Rep_Step2.Close;
 DM.Qry_Rep_Step2.Open;
 if Reports_F.Rep2.LoadFromFile('cheque_tp.fr3') then
   if Reports_F.Rep2.PrepareReport(True) then  Reports_F.Rep2.ShowPreparedReport;
end;

procedure TMain_F.N32Click(Sender: TObject);
begin
  Shipper_F.ShowModal;
end;

procedure TMain_F.N34Click(Sender: TObject);
begin
  FindRegTi_F.ShowModal;
end;

procedure TMain_F.N35Click(Sender: TObject);
begin
ExpInv_F.ShowModal;
end;

procedure TMain_F.It_42Click(Sender: TObject);
begin
// Warehouse_F.ShowModal;
 if not Assigned(Warehouse_F)then
 begin
   Application.CreateForm(TWarehouse_F, Warehouse_F);
   Warehouse_F.Show;
 end
 else
   if Warehouse_F.WindowState = wsMinimized	then  ShowWindow(Warehouse_F.Handle, SW_RESTORE)
     else Warehouse_F.Show;
end;

procedure TMain_F.It_43Click(Sender: TObject);
begin
  WhClosedCondition_f.ShowModal;
end;

procedure TMain_F.It_44Click(Sender: TObject);
begin
  WhOpenCondition_F.ShowModal;
end;

procedure TMain_F.N46Click(Sender: TObject);
var
 Mes:String;
 id_rec:Integer;
begin
    Mes:=format( 'Поставить отметку об удалении КТ? ',[DM.Qry_TicketN_TICKET.AsString]) ;
    if Application.MessageBox(PChar(Mes),'Внимание',MB_YESNO+MB_ICONASTERISK) <> IDYES then Exit;
try
 try
    id_rec:=DM.Qry_Ticket.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    //добавим запись в журнал талона
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update ticket set delete_flag =:p0 where id=:p1 ');
    DM.Sql.Params[0].AsString:='Y';
    DM.Sql.Params[1].asInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    DM.Refresh_Ticket;
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

procedure TMain_F.N47Click(Sender: TObject);
var
 Mes:String;
 id_rec:Integer;
begin
    Mes:=format( 'Снять отметку об удалении КТ? ',[DM.Qry_TicketN_TICKET.AsString]) ;
    if Application.MessageBox(PChar(Mes),'Внимание',MB_YESNO+MB_ICONASTERISK) <> IDYES then Exit;
try
 try
    id_rec:=DM.Qry_Ticket.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    //добавим запись в журнал талона
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update ticket set delete_flag =:p0 where id=:p1 ');
    DM.Sql.Params[0].AsString:='N';
    DM.Sql.Params[1].asInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    DM.Refresh_Ticket;
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

procedure TMain_F.N4Click(Sender: TObject);
begin
// Buh_F.ShowModal;
if not Assigned(Buh_F)then
 begin
   Application.CreateForm(TBuh_F, Buh_F);
   Buh_F.Show;
 end
 else
   if Buh_F.WindowState = wsMinimized	then  ShowWindow(Buh_F.Handle, SW_RESTORE)
     else Buh_F.Show;
end;

procedure TMain_F.N50Click(Sender: TObject);
var
 Mes:String;
 id_rec:Integer;
 qry:TIbquery;
begin
    if DM.Qry_TicketELECTRICITY.AsInteger = 1 then Exit;

    Mes:=format( 'В КТ № %s будет поставлена отметка о подключеннии к электросети. Продолжить?',[DM.Qry_TicketN_TICKET.AsString]) ;
    if Application.MessageBox(PChar(Mes),'Внимание',MB_YESNO+MB_ICONASTERISK) <> IDYES then Exit;
    if DM.Qry_TicketSTEP_CTRL.AsInteger >= STEP_CODE_2 then
      begin
        Mes:=format( 'КТ № %s зарегистрированы документы. У всех получателей будет добавлена услуга подключения к электрической сети. ',
                    [DM.Qry_TicketN_TICKET.AsString]);
        Application.MessageBox(PChar(Mes),'Внимание',MB_OK+MB_ICONINFORMATION) ;
      end;
    qry:=TIBQuery.Create(Self);
    qry.Database:=DM.DB;
try
 try
    id_rec:=DM.Qry_Ticket.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    //добавим запись в журнал талона
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update ticket set electricity =:p0 where id=:p1 ');
    DM.Sql.Params[0].AsInteger:=1;
    DM.Sql.Params[1].asInteger:=id_rec;
    DM.Sql.ExecQuery;
    //добавление услуг
    if DM.Qry_TicketSTEP_CTRL.AsInteger >= STEP_CODE_2 then
      begin
        qry.SQL.Add('select id from ticket_parts where id_ticket=:p0');
        qry.Params[0].AsInteger:= DM.Qry_TicketID.AsInteger;
        qry.Open;
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('insert into ticket_money (id_ticket,id_part,id_usl,kol_uslug,days,username) ');
        DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5)    ');
        while not qry.Eof do
          begin
            DM.Sql.Params[0].asInteger:=DM.Qry_TicketID.AsInteger;
            DM.Sql.Params[1].asInteger:=qry.Fields[0].AsInteger;
            DM.Sql.Params[2].asInteger:=411 ;//услуга № 2.2
            DM.SQL.Params[3].AsDouble:=1;
            DM.SQL.Params[4].AsInteger:=1;
            DM.SQL.Params[5].AsString:=User;
            DM.Sql.ExecQuery;
            qry.Next;
          end;
      end;

    DM.Sql.Transaction.Commit;
    DM.IBQueryRefresh(DM.Qry_Ticket,DM.DB);
 except
    on E: EdatabaseError do
      begin
       DM.Sql.Transaction.Rollback;
       ShowMessage(E.Message);
      end;
  end;
finally
    qry.Free;
    if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

procedure TMain_F.N51Click(Sender: TObject);
var
 Mes:String;
 id_rec:Integer;
begin
    if DM.Qry_TicketELECTRICITY.AsInteger <> 1 then Exit;
    Mes:=format( 'В КТ № %s будет снята отметка о подключеннии к электросети. Продолжить?',[DM.Qry_TicketN_TICKET.AsString]) ;
    if Application.MessageBox(PChar(Mes),'Внимание',MB_YESNO+MB_ICONASTERISK) <> IDYES then Exit;
    Mes:=format( 'После удаления отметки проверьте правильность начисления услуг.',[DM.Qry_TicketN_TICKET.AsString]) ;
    Application.MessageBox(PChar(Mes),'Внимание',MB_OK+MB_ICONWARNING);

try
 try
    id_rec:=DM.Qry_Ticket.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    //добавим запись в журнал талона
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update ticket set electricity =:p0 where id=:p1 ');
    DM.Sql.Params[0].AsVariant:=null;
    DM.Sql.Params[1].asInteger:=id_rec;
    DM.Sql.ExecQuery;
    //
    if DM.Qry_TicketSTEP_CTRL.AsInteger >= STEP_CODE_2 then
      begin
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('delete from ticket_money where id_ticket=:p0 and checked = :p1 ');
        DM.Sql.Params[0].asInteger:=DM.Qry_TicketID.AsInteger;
        DM.Sql.Params[1].AsString:='F';
        DM.Sql.ExecQuery;
      end;
    DM.Sql.Transaction.Commit;
    DM.IBQueryRefresh(DM.Qry_Ticket,DM.DB);
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

procedure TMain_F.N54Click(Sender: TObject);
begin
if not Assigned(FormAtol25f)then
 begin
   Application.CreateForm(TFormAtol25f, FormAtol25f);
   FormAtol25f.Show;
 end
 else
   if FormAtol25f.WindowState = wsMinimized	then  ShowWindow(FormAtol25f.Handle, SW_RESTORE)
     else FormAtol25f.Show;
end;

procedure TMain_F.N55Click(Sender: TObject);
begin
  TSVes_f.ShowModal;
end;


procedure TMain_F.N9Click(Sender: TObject);
begin
if not Assigned(TsIn_F)then
 begin
   Application.CreateForm(TTsIn_F, TsIn_F);
   TsIn_F.Show;
 end
 else
   if TsIn_F.WindowState = wsMinimized	then  ShowWindow(TsIn_F.Handle, SW_RESTORE)
     else TsIn_F.Show;
end;

procedure TMain_F.PrintKT(IdTicket:Integer);
begin

 DM.Qry_RepCheckKpp.Close;
 Dm.Qry_RepCheckKpp.Params[0].AsInteger:=IdTicket;
 DM.Qry_RepCheckKpp.Open;
 if Reports_F.Rep2.LoadFromFile('cheque_ktkpp_80mm.fr3') then
//    Reports_F.Rep2.ShowReport(True);
   if Reports_F.Rep2.PrepareReport(True) then  Reports_F.Rep2.ShowPreparedReport;
end;

procedure TMain_F.PrintKT_Ves(IdTs: Integer);
begin
 DM.Qry_VesCheque.Close;
 Dm.Qry_VesCheque.Params[0].AsInteger:=IdTs;
 DM.Qry_VesCheque.Open;
 if Reports_F.Rep2.LoadFromFile('cheque_ktkpp_ves_80mm.fr3') then
//    Reports_F.Rep2.ShowReport(True);
   if Reports_F.Rep2.PrepareReport(True) then  Reports_F.Rep2.ShowPreparedReport;
end;

procedure TMain_F.PrintKT_VesTrailer(IdTicket: Integer);
begin
 DM.Qry_RepCheckKpp.Close;
 Dm.Qry_RepCheckKpp.Params[0].AsInteger:=IdTicket;
 DM.Qry_RepCheckKpp.Open;
 if Reports_F.Rep2.LoadFromFile('cheque_ktkpp_ves_trailer_80mm.fr3') then
//    Reports_F.Rep2.ShowReport(True);
   if Reports_F.Rep2.PrepareReport(True) then  Reports_F.Rep2.ShowPreparedReport;
end;

procedure TMain_F.SetWorkInterval_BtnClick(Sender: TObject);
// установить диапазон дат
begin
 if DM.Qry_Ticket.Active then DM.Qry_Ticket.Close;
 DM.Qry_Ticket.SQL.Clear;
 DM.Qry_Ticket.SQL.Add('select a.*, b.owner, b.id, b.phone from ticket a left join carrier b on a.id_carrier = b.id ');
 DM.Qry_Ticket.SQL.Add(' where cast(a.dt_is as date) between :p0 and :p1 order by a.n_ticket desc ') ;
 DM.Qry_Ticket.Params[0].AsDate:=WorkDate1.Date;
 DM.Qry_Ticket.Params[1].AsDate:=WorkDate2.Date;
 DM.Qry_Ticket.Open;
end;

procedure TMain_F.Set_MainItemClick(Sender: TObject);
begin
  FormSet.ShowModal;
end;

procedure TMain_F.ToolButton6Click(Sender: TObject);
begin
(Sender as TToolButton).Down:=True;
(Sender as TToolButton).CheckMenuDropdown;
end;

procedure TMain_F.ToolButton7Click(Sender: TObject);
begin
 //Form3.ShowModal;
end;


procedure TMain_F.WorkWithDo12_AExecute(Sender: TObject);
begin
//   Do1_F.ShowModal;
if not Assigned(Do1_F)then
 begin
   Application.CreateForm(TDo1_F, Do1_F);
   Do1_F.Show;
 end
 else
   if Do1_F.WindowState = wsMinimized	then  ShowWindow(Do1_F.Handle, SW_RESTORE)
     else Do1_F.Show;
end;

end.
