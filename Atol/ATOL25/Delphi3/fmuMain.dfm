�
 TFRMMAIN 0�  TPF0TfrmMainfrmMainLeft�TopBorderIconsbiSystemMenu BorderStylebsDialogCaptionfrmMainClientHeightSClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterScaledOnClose	FormCloseOnShowFormShowPixelsPerInch`
TextHeight TLabelLabel1LeftTopPWidth!HeightCaptionfactura  TButtonbtnStartLeftTopWidth� HeightCaption   !B0@BTabOrder OnClickbtnStartClick  TButtonbtnShowPropertiesLeft� TopWidth� HeightCaption!   Настройка свойствTabOrderOnClickbtnShowPropertiesClick  TFprnM45FprnM451LeftTop� Width Height ControlData
6   TPF0TSmCustomControl Left Top Width@Height@    TButtonButton1Left,TopWidth� HeightCaption   >4:;NG5=85TabOrderOnClickButton1Click  TMemoMemo1LeftTop,WidthIHeightLines.StringsMemo1 TabOrder  TButton
SellButtonLeft�TopWidth� HeightCaption   @>4060TabOrderOnClickSellButtonClick  TButtonAboutBtnLeftLTopWidth� HeightCaption	   О ККМTabOrderOnClickAboutBtnClick  TButtonXRepBtnLeft�TopWidth� HeightCaptionX-reportTabOrderOnClickXRepBtnClick  TButtonOpenSessionBtnLeft�TopWidth� HeightCaption   Открыть сменуTabOrderOnClickOpenSessionBtnClick  TButton
ZReportBtnLeftTop'Width� HeightCaption$   Закрыть смену + Z-reportTabOrder	OnClickZReportBtnClick  TButtonRep42BtnLeft� Top'Width� HeightCaption1   Отчет о состоянии расчетовTabOrder
OnClickRep42BtnClick  TButton
RepConnectLeft,Top(Width� HeightCaption+   Отчет о состоянии связиTabOrderOnClickRepConnectClick  TButtonNoSenDocRepbtnLeft�Top(Width� HeightCaption%   Отчет о неотпр. док-хTabOrderOnClickNoSenDocRepbtnClick  TEditEdit1Left TopGWidth�Height	MaxLength@TabOrderTexty   Возмещение понесенного ущерба Складом в результате умышленных/не  TEditEdit2LeftTopbWidth�HeightTabOrderText�   Возмещение понесенного ущерба Складом в результате умышленных/неумышленных действий Клиентом или его представителем  TButton	CancelBtnLeftlTopWidth� HeightCaption   Отмена чекаTabOrderOnClickCancelBtnClick  TButtonButton2LeftNTop(Width� HeightCaptionButton2TabOrder  TEditEdit3Left6TopMWidthyHeightNumbersOnly	TabOrder  TButtonButton3Left� TopKWidthKHeightCaptionFindTabOrderOnClickButton3Click  	TDBGridEh	DBGridEh1LeftTop}Width�Heightd
DataSourceDataSource1DynProps IndicatorOptionsgioShowRowIndicatorEh TabOrder TRowDetailPanelControlEhRowDetailData   TIBTransactionIBTRDefaultDatabaseDBParams.Stringsreadread_committedrec_version LeftTop�   TIBDatabaseDB	Connected	DatabaseName&db-server:e:\db_2013\tmp\SIRIUS_25.FDBParams.Stringsuser_name=sysdbapassword=mkeylc_ctype=UTF8 LoginPromptDefaultTransactionIBTR
TraceFlags
tfQExecutetfErrortfStmt
tfTransact	tfServicetfMisc AllowStreamedConnectedLeft6Top�   TIBQueryQryDatabaseDBTransactionIBTRSQL.StringsBselect USLUGA, STOIM, KOL from FAKTURA_ITEMS where id_f_head = :p0 LefthTop� 	ParamDataDataType	ftUnknownNamep0	ParamType	ptUnknown    TDataSourceDataSource1DataSetQryLeft� Top�    