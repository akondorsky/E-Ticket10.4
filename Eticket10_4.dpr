program Eticket10_4;

uses
  Vcl.Forms,
  Windows,
  Main in 'Main.pas' {Main_F},
  DM_U in 'DM_U.pas' {DM: TDataModule},
  myutils in 'myutils.pas',
  Splash_U in 'Splash_U.pas' {SplashForm},
  Login_U in 'Login_U.pas' {Login_F},
  Tickets_U in 'Tickets_U.pas' {Tickets_F},
  TicketAdd_U in 'TicketAdd_U.pas' {AddTicket_F},
  EditTs_U in 'EditTs_U.pas' {EditTs_F},
  TsType_U in 'TsType_U.pas' {TsType_F},
  Targets_U in 'Targets_U.pas' {Targets_F},
  TrailerAdd_U in 'TrailerAdd_U.pas' {TrailerAdd_F},
  TicketEdit_U in 'TicketEdit_U.pas' {TicketEdit_F},
  CustProc_U in 'CustProc_U.pas' {CustProc_F},
  RegtiDisp_U in 'RegtiDisp_U.pas' {RegtiDisp_F},
  PartAdd_U in 'PartAdd_U.pas' {PartAdd_F},
  Val_U in 'Val_U.pas' {Val_F},
  ParkZtk_U in 'ParkZtk_U.pas' {FormParkZTK},
  Broker_U in 'Broker_U.pas' {Broker_F},
  TpAdd_U in 'TpAdd_U.pas' {TPAdd_F},
  Goods_U in 'Goods_U.pas' {Goods_F},
  TpEdit_U in 'TpEdit_U.pas' {TpEdit_F},
  Step0_U in 'Step0_U.pas' {Step0_F},
  PartFullEdit_U in 'PartFullEdit_U.pas' {PartFullEdit_F},
  Reports_U in 'Reports_U.pas' {Reports_F},
  ReportSelect_U in 'ReportSelect_U.pas' {ReportSelect_F},
  Buh_U in 'Buh_U.pas' {Buh_F},
  AddTs_U in 'AddTs_U.pas' {AddTs_F},
  Shipper_U in 'Shipper_U.pas' {Shipper_F},
  ScalingTP_U in 'ScalingTP_U.pas' {ScalingTP_F},
  AddActScaleTP_U in 'AddActScaleTP_U.pas' {AddActScaleTP_F},
  EditActScaleTP_U in 'EditActScaleTP_U.pas' {EditActScaleTP_F},
  ClosedCbx_U in 'ClosedCbx_U.pas' {FormClosedCbx},
  ParkCbx_U in 'ParkCbx_U.pas' {FormParkCbx},
  Warehouse_U in 'Warehouse_U.pas' {Warehouse_F},
  ActWhIn_U in 'ActWhIn_U.pas' {ActWhIn_F},
  PrevActWhIn_U in 'PrevActWhIn_U.pas' {PrevActWhIn_F},
  Do1_U in 'Do1_U.pas' {Do1_F},
  Setting_U in 'Setting_U.pas' {FormSet},
  Oksmt_U in 'Oksmt_U.pas' {Oksmt_F},
  EditDo_U in 'EditDo_U.pas' {EditDo_F},
  Carrier_U in 'Carrier_U.pas' {Carrier_F},
  CarrierAdd_U in 'CarrierAdd_U.pas' {CarrierAdd_F},
  DoTransAdd_U in 'DoTransAdd_U.pas' {DoTransAdd_F},
  VidTrans_U in 'VidTrans_U.pas' {VidTrans_F},
  DoTransEdit_U in 'DoTransEdit_U.pas' {DoTransEdit_F},
  Docg44_U in 'Docg44_U.pas' {Docg44_F},
  Tdoc_U in 'Tdoc_U.pas' {TDoc_F},
  DocustAdd_U in 'DocustAdd_U.pas' {DocustAdd_F},
  DocustEdit_U in 'DocustEdit_U.pas' {DocustEdit_F},
  DotrandAdd_U in 'DotrandAdd_U.pas' {DotrandAdd_F},
  DotrandEdit_U in 'DotrandEdit_U.pas' {DotrandEdit_F},
  DoTovarAdd_U in 'DoTovarAdd_U.pas' {DoTovarAdd_F},
  Tnved4_U in 'Tnved4_U.pas' {Tnved4_F},
  DoTovarEdit_U in 'DoTovarEdit_U.pas' {DoTovarEdit_F},
  Do2Edit1_U in 'Do2Edit1_U.pas' {Do2Edit1_F},
  Do2tovAdd_U in 'Do2tovAdd_U.pas' {Do2tovAdd_F},
  Do2tovEdit_U in 'Do2tovEdit_U.pas' {Do2TovEdit_F},
  Do2Outdoc_U in 'Do2Outdoc_U.pas' {Do2Outdoc_F},
  Do2OutdocEdit_U in 'Do2OutdocEdit_U.pas' {Do2OutdocEdit_F},
  SelGtd_U in 'SelGtd_U.pas' {SelGtd_F},
  ExportDo_U in 'ExportDo_U.pas' {ExportDo_F},
  Prices_U in 'Prices_U.pas' {Prices_F},
  PriceList_U in 'PriceList_U.pas' {PriceList_F},
  PriceListAdd_U in 'PriceListAdd_U.pas' {PriceListAdd_F},
  PriceListEdit_U in 'PriceListEdit_U.pas' {PriceListEdit_F},
  Edizm_U in 'Edizm_U.pas' {Edizm_F},
  Usl_U in 'Usl_U.pas' {Usl_F},
  UslAdd_U in 'UslAdd_U.pas' {UslAdd_F},
  UslEdit_U in 'UslEdit_U.pas' {UslEdit_F},
  Regti_U in 'Regti_U.pas' {Regti_F},
  RegTiEdit_U in 'RegTiEdit_U.pas' {RegTiEdit_F},
  Hold_U in 'Hold_U.pas' {Hold_F},
  DogovorAdd_U in 'DogovorAdd_U.pas' {DogovorAdd_F},
  RegTiAdd_U in 'RegTiAdd_U.pas' {RegTiAdd_F},
  DogovorEdit_U in 'DogovorEdit_U.pas' {DogovorEdit_F},
  ReasonsDog_U in 'ReasonsDog_U.pas' {ReasonsDog_F},
  VidPlDoc_U in 'VidPlDoc_U.pas' {VidPlDoc_F},
  PlDocAdd_U in 'PlDocAdd_U.pas' {PlDocAdd_F},
  VidOp_U in 'VidOp_U.pas' {VidOp_F},
  PlDocEdit_U in 'PlDocEdit_U.pas' {PlDocEdit_F},
  ClosedCbxPlaces_U in 'ClosedCbxPlaces_U.pas' {ClosedCbxPlaces_F},
  ActWhOut_U in 'ActWhOut_U.pas' {ActWhOut_F},
  PartEdit_U in 'PartEdit_U.pas' {PartEdit_F},
  ReasonDiscount_U in 'ReasonDiscount_U.pas' {ReasonDiscount_F},
  FItemsEdit_U in 'FItemsEdit_U.pas' {FItemsEdit_F},
  FItemsAdd_U in 'FItemsAdd_U.pas' {FItemsAdd_F},
  DiscChange_U in 'DiscChange_U.pas' {DiscChange_F},
  sumprops in 'sumprops.pas',
  FakturaLog_U in 'FakturaLog_U.pas' {FakturaLog_F},
  TsIn_U in 'TsIn_U.pas' {TsIn_F},
  TsOut_U in 'TsOut_U.pas' {TsOut_F},
  PZTKLog_U in 'PZTKLog_U.pas' {PZTKLog_F},
  AddTtn_U in 'AddTtn_U.pas' {AddTtn_F},
  EditTtn_U in 'EditTtn_U.pas' {EditTtn_F},
  AddPop_U in 'AddPop_U.pas' {AddPop_F},
  Outdoc_U in 'Outdoc_U.pas' {Outdoc_F},
  OutdocEdit_U in 'OutdocEdit_U.pas' {OutdocEdit_F},
  MercFPrtX_TLB in 'Mercury\MercFPrtX_TLB.pas',
  PricesEdit_U in 'PricesEdit_U.pas' {PricesEdit_F},
  ActScaleTs_U in 'ActScaleTs_U.pas' {ActScaleTs_F1},
  ActScaleTsEdit_U in 'ActScaleTsEdit_U.pas' {ActScaleTsEdit_F},
  OpenCbxPlaces_U in 'OpenCbxPlaces_U.pas' {OpenCbxPlaces_F},
  WhClosedCondition_U in 'WhClosedCondition_U.pas' {WhClosedCondition_F},
  WhOpenCondition_U in 'WhOpenCondition_U.pas' {WhOpenCondition_F},
  About_U in 'About_U.pas' {About_F},
  Legend_U in 'Legend_U.pas' {Legend_F},
  TicketLog_U in 'TicketLog_U.pas' {TicketLog_F},
  AddActCom_U in 'AddActCom_U.pas' {AddActCom_F},
  EditActCom_U in 'EditActCom_U.pas' {EditActCom_F},
  MismTovEdit_U in 'MismTovEdit_U.pas' {MismTovEdit_F},
  MismTovSel_U in 'MismTovSel_U.pas' {MismTovSel_F},
  ZTKDocOut_U in 'ZTKDocOut_U.pas' {ZtkOutDoc_F},
  ShipperAdd_U in 'ShipperAdd_U.pas' {ShipperAdd_F},
  ShipperEdit_U in 'ShipperEdit_U.pas' {ShipperEdit_F},
  Pass_U in 'Pass_U.pas' {Pass_F},
  Ztkoutdocs_U in 'Ztkoutdocs_U.pas' {ZTKOutDocs_F},
  DelUsl_U in 'DelUsl_U.pas' {DelUsl_F},
  FindRegTi_U in 'FindRegTi_U.pas' {FindRegTi_F},
  ExpInv_U in 'ExpInv_U.pas' {ExpInv_F},
  MSXML2_TLB in 'XML\MSXML2_TLB.pas',
  Unit_select_date in 'Unit_select_date.pas' {FormSelDate},
  Unit_Rep_Usl_sel in 'Unit_Rep_Usl_sel.pas' {FormRepUslSort},
  InputNumber_U in 'InputNumber_U.pas' {InputNumber_F},
  PrimBuhAdd_U in 'PrimBuhAdd_U.pas' {PrimBuhAdd_F},
  RepSortGoods_U in 'RepSortGoods_U.pas' {RepSortGoods_F},
  RepZakSort_U in 'RepZakSort_U.pas' {RepZakSort_F},
  DoHeaderEdit_U in 'DoHeaderEdit_U.pas' {DoHeaderEdit_F},
  TnvedUpdate_U in 'TnvedUpdate_U.pas' {TnvedUpdate_F},
  ucodestr in 'ucodestr.pas',
  PassEdit_U in 'PassEdit_U.pas' {PassEdit_F},
  SmsPhoneAdd_U in 'SmsPhoneAdd_U.pas' {SmsPhoneAdd_F},
  EmailAdd_U in 'EmailAdd_U.pas' {EmailAdd_F},
  DateSingle_U in 'DateSingle_U.pas' {DateSingle_F},
  UslNote_U in 'UslNote_U.pas' {UslNote_F},
  SlideWindow in 'SlideWindow.pas' {SlideWind_F},
  FakturaType_U in 'FakturaType_U.pas' {FakturaType_F},
  HoldAdd_U in 'HoldAdd_U.pas' {HoldAdd_F},
  HoldEdit_U in 'HoldEdit_U.pas' {HoldEdit_F},
  CountryCode_U in 'CountryCode_U.pas' {CountryCode_F},
  ActComWhAdd_U in 'ActComWhAdd_U.pas' {ActComWhAdd_F},
  VypuskDolg_U in 'VypuskDolg_U.pas' {VypuskDolg_F},
  RegtiPlat_U in 'RegtiPlat_U.pas' {RegtiPlat_F},
  atol25 in 'Atol\atol25.pas' {Formatol25f},
  BillItemEdit_U in 'BillItemEdit_U.pas' {BillItemEdit_F},
  SelectParts_U in 'SelectParts_U.pas' {SelectParts_F},
  DogovorsList_U in 'DogovorsList_U.pas' {DogovorsList_F},
  FitemsEdited_U in 'FitemsEdited_U.pas' {FitemsEdited_F},
  TsVes_U in 'TsVes_U.pas' {TSVes_F},
  CountryAdd_U in 'CountryAdd_U.pas' {CountryAdd_F},
  CarrierEdit_U in 'CarrierEdit_U.pas' {CarrierEdit_F},
  CountryEdit_U in 'CountryEdit_U.pas' {CountryEdit_F},
  atol in 'Atol\atol.pas' {Formatol},
  FprnM1C_TLB in 'Atol\FprnM1C_TLB.pas',
  Vcl.Themes,
  Vcl.Styles,
  InspLog_U in 'InspLog_U.pas' {InspLog_F},
  EditVes_U in 'EditVes_U.pas' {EditVes_F},
  Atolv10_U in 'Atol\Atolv10_U.pas' {FAtol_v10},
  Fptr10Lib_TLB in 'Atol\Fptr10Lib_TLB.pas';

{$R *.res}
 var
   Start:Cardinal;

begin
  Application.Initialize;
  Start:=GetTickCount;
  SplashForm := TSplashForm.Create( Application );
  SplashForm.Show;
  SplashForm.Update;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMain_F, Main_F);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TLogin_F, Login_F);
  Application.CreateForm(TAddTicket_F, AddTicket_F);
  Application.CreateForm(TEditTs_F, EditTs_F);
  Application.CreateForm(TTsType_F, TsType_F);
  Application.CreateForm(TTargets_F, Targets_F);
  Application.CreateForm(TTrailerAdd_F, TrailerAdd_F);
  Application.CreateForm(TTicketEdit_F, TicketEdit_F);
  Application.CreateForm(TCustProc_F, CustProc_F);
  Application.CreateForm(TRegtiDisp_F, RegtiDisp_F);
  Application.CreateForm(TPartAdd_F, PartAdd_F);
  Application.CreateForm(TVal_F, Val_F);
  Application.CreateForm(TFormParkZTK, FormParkZTK);
  Application.CreateForm(TBroker_F, Broker_F);
  Application.CreateForm(TTPAdd_F, TPAdd_F);
  Application.CreateForm(TGoods_F, Goods_F);
  Application.CreateForm(TTpEdit_F, TpEdit_F);
  Application.CreateForm(TStep0_F, Step0_F);
  Application.CreateForm(TPartFullEdit_F, PartFullEdit_F);
  Application.CreateForm(TReports_F, Reports_F);
  Application.CreateForm(TReportSelect_F, ReportSelect_F);
  Application.CreateForm(TAddTs_F, AddTs_F);
  Application.CreateForm(TShipper_F, Shipper_F);
  Application.CreateForm(TScalingTP_F, ScalingTP_F);
  Application.CreateForm(TAddActScaleTP_F, AddActScaleTP_F);
  Application.CreateForm(TEditActScaleTP_F, EditActScaleTP_F);
  Application.CreateForm(TFormClosedCbx, FormClosedCbx);
  Application.CreateForm(TFormParkCbx, FormParkCbx);
  Application.CreateForm(TActWhIn_F, ActWhIn_F);
  Application.CreateForm(TPrevActWhIn_F, PrevActWhIn_F);
  Application.CreateForm(TFormSet, FormSet);
  Application.CreateForm(TOksmt_F, Oksmt_F);
  Application.CreateForm(TEditDo_F, EditDo_F);
  Application.CreateForm(TCarrier_F, Carrier_F);
  Application.CreateForm(TCarrierAdd_F, CarrierAdd_F);
  Application.CreateForm(TDoTransAdd_F, DoTransAdd_F);
  Application.CreateForm(TVidTrans_F, VidTrans_F);
  Application.CreateForm(TDoTransEdit_F, DoTransEdit_F);
  Application.CreateForm(TDocg44_F, Docg44_F);
  Application.CreateForm(TTDoc_F, TDoc_F);
  Application.CreateForm(TDocustAdd_F, DocustAdd_F);
  Application.CreateForm(TDocustEdit_F, DocustEdit_F);
  Application.CreateForm(TDotrandAdd_F, DotrandAdd_F);
  Application.CreateForm(TDotrandEdit_F, DotrandEdit_F);
  Application.CreateForm(TDoTovarAdd_F, DoTovarAdd_F);
  Application.CreateForm(TTnved4_F, Tnved4_F);
  Application.CreateForm(TDoTovarEdit_F, DoTovarEdit_F);
  Application.CreateForm(TDo2Edit1_F, Do2Edit1_F);
  Application.CreateForm(TDo2tovAdd_F, Do2tovAdd_F);
  Application.CreateForm(TDo2TovEdit_F, Do2TovEdit_F);
  Application.CreateForm(TDo2Outdoc_F, Do2Outdoc_F);
  Application.CreateForm(TDo2OutdocEdit_F, Do2OutdocEdit_F);
  Application.CreateForm(TSelGtd_F, SelGtd_F);
  Application.CreateForm(TExportDo_F, ExportDo_F);
  Application.CreateForm(TPrices_F, Prices_F);
  Application.CreateForm(TPriceList_F, PriceList_F);
  Application.CreateForm(TPriceListAdd_F, PriceListAdd_F);
  Application.CreateForm(TPriceListEdit_F, PriceListEdit_F);
  Application.CreateForm(TEdizm_F, Edizm_F);
  Application.CreateForm(TUsl_F, Usl_F);
  Application.CreateForm(TUslAdd_F, UslAdd_F);
  Application.CreateForm(TUslEdit_F, UslEdit_F);
  Application.CreateForm(TRegti_F, Regti_F);
  Application.CreateForm(TRegTiEdit_F, RegTiEdit_F);
  Application.CreateForm(TDogovorAdd_F, DogovorAdd_F);
  Application.CreateForm(THold_F, Hold_F);
  Application.CreateForm(TRegTiAdd_F, RegTiAdd_F);
  Application.CreateForm(TDogovorEdit_F, DogovorEdit_F);
  Application.CreateForm(TReasonsDog_F, ReasonsDog_F);
  Application.CreateForm(TVidPlDoc_F, VidPlDoc_F);
  Application.CreateForm(TPlDocAdd_F, PlDocAdd_F);
  Application.CreateForm(TVidOp_F, VidOp_F);
  Application.CreateForm(TPlDocEdit_F, PlDocEdit_F);
  Application.CreateForm(TClosedCbxPlaces_F, ClosedCbxPlaces_F);
  Application.CreateForm(TActWhOut_F, ActWhOut_F);
  Application.CreateForm(TPartEdit_F, PartEdit_F);
  Application.CreateForm(TReasonDiscount_F, ReasonDiscount_F);
  Application.CreateForm(TFItemsEdit_F, FItemsEdit_F);
  Application.CreateForm(TFItemsAdd_F, FItemsAdd_F);
  Application.CreateForm(TDiscChange_F, DiscChange_F);
  Application.CreateForm(TAddTtn_F, AddTtn_F);
  Application.CreateForm(TEditTtn_F, EditTtn_F);
  Application.CreateForm(TAddPop_F, AddPop_F);
  Application.CreateForm(TOutdoc_F, Outdoc_F);
  Application.CreateForm(TOutdocEdit_F, OutdocEdit_F);
  Application.CreateForm(TPricesEdit_F, PricesEdit_F);
  Application.CreateForm(TActScaleTs_F1, ActScaleTs_F1);
  Application.CreateForm(TActScaleTsEdit_F, ActScaleTsEdit_F);
  Application.CreateForm(TOpenCbxPlaces_F, OpenCbxPlaces_F);
  Application.CreateForm(TWhClosedCondition_F, WhClosedCondition_F);
  Application.CreateForm(TWhOpenCondition_F, WhOpenCondition_F);
  Application.CreateForm(TAbout_F, About_F);
  Application.CreateForm(TLegend_F, Legend_F);
  Application.CreateForm(TTicketLog_F, TicketLog_F);
  Application.CreateForm(TAddActCom_F, AddActCom_F);
  Application.CreateForm(TEditActCom_F, EditActCom_F);
  Application.CreateForm(TMismTovEdit_F, MismTovEdit_F);
  Application.CreateForm(TMismTovSel_F, MismTovSel_F);
  Application.CreateForm(TZtkOutDoc_F, ZtkOutDoc_F);
  Application.CreateForm(TShipperAdd_F, ShipperAdd_F);
  Application.CreateForm(TShipperEdit_F, ShipperEdit_F);
  Application.CreateForm(TPass_F, Pass_F);
  Application.CreateForm(TZTKOutDocs_F, ZTKOutDocs_F);
  Application.CreateForm(TDelUsl_F, DelUsl_F);
  Application.CreateForm(TFindRegTi_F, FindRegTi_F);
  Application.CreateForm(TExpInv_F, ExpInv_F);
  Application.CreateForm(TFormSelDate, FormSelDate);
  Application.CreateForm(TFormRepUslSort, FormRepUslSort);
  Application.CreateForm(TInputNumber_F, InputNumber_F);
  Application.CreateForm(TPrimBuhAdd_F, PrimBuhAdd_F);
  Application.CreateForm(TRepSortGoods_F, RepSortGoods_F);
  Application.CreateForm(TRepZakSort_F, RepZakSort_F);
  Application.CreateForm(TDoHeaderEdit_F, DoHeaderEdit_F);
  Application.CreateForm(TTnvedUpdate_F, TnvedUpdate_F);
  Application.CreateForm(TPassEdit_F, PassEdit_F);
  Application.CreateForm(TSmsPhoneAdd_F, SmsPhoneAdd_F);
  Application.CreateForm(TEmailAdd_F, EmailAdd_F);
  Application.CreateForm(TDateSingle_F, DateSingle_F);
  Application.CreateForm(TUslNote_F, UslNote_F);
  Application.CreateForm(THoldAdd_F, HoldAdd_F);
  Application.CreateForm(THoldEdit_F, HoldEdit_F);
  Application.CreateForm(TCountryCode_F, CountryCode_F);
  Application.CreateForm(TActComWhAdd_F, ActComWhAdd_F);
  Application.CreateForm(TVypuskDolg_F, VypuskDolg_F);
  Application.CreateForm(TRegtiPlat_F, RegtiPlat_F);
  Application.CreateForm(TBillItemEdit_F, BillItemEdit_F);
  Application.CreateForm(TSelectParts_F, SelectParts_F);
  Application.CreateForm(TDogovorsList_F, DogovorsList_F);
  Application.CreateForm(TFitemsEdited_F, FitemsEdited_F);
  Application.CreateForm(TTSVes_F, TSVes_F);
  Application.CreateForm(TCountryAdd_F, CountryAdd_F);
  Application.CreateForm(TCarrierEdit_F, CarrierEdit_F);
  Application.CreateForm(TCountryEdit_F, CountryEdit_F);
  Application.CreateForm(TInspLog_F, InspLog_F);
  Application.CreateForm(TEditVes_F, EditVes_F);
  SplashForm.Label1.Caption:='Запуск приложения...';
  SplashForm.Update;
  while (GetTickCount - Start) < 2500 do
    begin
     SplashForm.Update;
    end;
  SplashForm.Hide;
  SplashForm.Free;
  Application.Run;
end.

