unit ATOL.Driver;

interface

uses Windows, Classes, SysUtils, ComObj, ActiveX, Variants;

const
  // �������� ���
  // �������� ���������
  kvKKMNumber = 0;
  kvPaymentType1_KREDIT_Enabled = 2;
  kvPaymentType2_TARA_Enabled = 3;
  kvPaymentType3_PAYCARD_Enabled = 41;
  kvPrintSectionName = 39;
  kvSlipDocsEnabled = 40;
  kvPrintReclama = 45;
  kvAutoOpenDrawer = 46;
  kvPrintKassirNames = 56;
  kvClisheLinesCount = 66;
  kvPrintSectionNumbers = 72;
  kvPrintOpenSessionDoc = 73;
  kvQuantityPrintType = 80;
  kvWinterTimeType = 82;
  kvHeaderPrintType = 196;
  kvCheckPrintType = 198;
  kvExtendedZXReports = 207;
  kvCheckLiftValue = 233;

  // ��������� ���������
  ksSeparatorChar = 201;
  ksHeaderStr1 = 0;
  ksHeaderStr2 = 1;
  ksHeaderStr3 = 2;
  ksHeaderStr4 = 3;
  ksHeaderStr5 = 4;
  ksHeaderStr6 = 5;

  ksClisheStr1 = 69;
  ksClisheStr2 = 70;
  ksClisheStr3 = 71;
  ksClisheStr4 = 72;
  ksClisheStr5 = 73;
  ksClisheStr6 = 74;
  ksClisheStr7 = 75;
  ksClisheStr8 = 76;
  ksClisheStr9 = 77;
  ksClisheStr10 = 78;
  ksClisheStr11 = 79;
  ksClisheStr12 = 80;
  ksClisheStr13 = 81;
  ksClisheStr14 = 82;
  ksClisheStr15 = 83;
  ksClisheStr16 = 84;
  ksClisheStr17 = 85;
  ksClisheStr18 = 86;
  ksClisheStr19 = 87;
  ksClisheStr20 = 88;

  ksPaymentType1Name = 66;
  ksPaymentType2Name = 67;
  ksPaymentType3Name = 68;

type
  TUnitCodePage = (ucpRU = 0, ucpARM = 1, ucpMOL = 2, ucpUA = 3, ucpLIT = 4,
    ucpTURKM = 5, ucpMON = 6, ucpBEL = 7, ucpLATV = 8, ucpGEOR = 9, ucpKAZ = 10,
    ucpEST = 11, ucpAZER = 12, ucpKIRG = 13, ucpTAG = 14, ucpUZ = 15,
    ucpPOL = 16, ucpROM = 17, ucpBOLG = 18, ucpENG = 19);

  TUnitType = (utCPU = 1, utFM = 2, utBoot = 3, utPrnSoft);
  // 1 � �� ��������� ���������� ���;
  // 2 � �� ���������� ����������� ������ ���;
  // 3 � �� ������������ ����� ��������� ���������� ���;
  // 4 � �� ��������

  // ���������� � ������
  TUnitInfo = record
    UnitType: TUnitType;
    UmajorVersion: integer;
    UminorVersion: integer;
    Ubuild: integer;
    UcodePage: TUnitCodePage;
  end;

  // ��������� ��������� 69..88
  // TFRClisheFooter = TArray<String>;

  // ������������ ����� �����
  // ������ 66..68 ����������

  TDeviceType = (dtNotDefined = 0, dtKKM = 1, dtScales = 2, dtMemoPlus = 3);
  // ��� ������������:
  // 0 � �� ���������;
  // 1 � ���;
  // 2 � ���� �����������;
  // 3 � Memo Plus�;

  TTextWrapMode = (wNotWrap = 0, wByWords = 1, wByStrings = 2);

  TDeviceMode = (dmOffLine = 32768, dmOnline = 16384, dmPassiveOnline = 8192,
    dmFR = 4096, dmFP = 2048);
  // �������������� ������������� ������:
  // 32768 � ����� OffLine;
  // 16384 � ����� OnLine;
  // 8192 � ��������� OnLine (������� �����);
  // 4096 � ���������� �����������;
  // 2048 � ���������� �����

  // ��������� ����������
  TDeviceMetrics = record
    UprotocolVersion: integer;
    Utype: TDeviceType;
    Umodel: integer;
    Umode: TDeviceMode;
    UmajorVersion: integer;
    UminorVersion: integer;
    Ubuild: integer;
    UcodePage: TUnitCodePage;
    Udescription: string;
  end;

  TKKMFont = record
    Italic: boolean;
    Bold: boolean;
    Negative: boolean; // ��� �������� RW
    Underline: boolean; // ������������ ����� RW
    DblHeight: boolean; // ����� ������� ������ RW
    DblWidth: boolean; // ����� ������� ������� RW
  end;

  TKKMReportType = (rtKLGash = 0, rtZReport = 1, rtXReport = 2,
    rtFPDateRange = 3, rtFPSessRange = 4, rtFPDateRangeFull = 5,
    rtFPSessRangeFull = 6, rtSections = 7, rtKassir = 8, rtGoods = 9,
    rtHours = 10, rtQuantity = 11, rtEKLZActItogs = 22, rtEKLZSessItogs = 23,
    rtEKLZSessionKL = 24, rtEKLZKPK = 25, rtEKLZDatesShortByOtdel = 26,
    rtEKLZDatesFullByOtdel = 27);
  // 0 ������� ����������� �����
  // 1  �������� ����� � ��������
  // 2  �������� ����� ��� �������
  // 3  ������� ���������� ����� �� ��������� ���.
  // ������� �������� � Day, Month, Year, EndDay, EndMonth, EndYear
  // 4  ������� ���������� ����� �� ��������� ����.
  // ������� �������� � Session, EndSession
  // 5  ������ ���������� ����� �� ��������� ���.
  // ������� �������� � Day, Month, Year, EndDay, EndMonth, EndYear
  // 6  ������ ���������� ����� �� ��������� ����.
  // ������� �������� � Session, EndSession
  // 7  ����� �� �������
  // 8  ����� �� ��������
  // 9  ����� �� �������
  // 10 ����� �� �����
  // 11 ����� �� ����������
  // 22 ���� ����� �����������
  // 23 ���� ����� �����.
  // ������� �������� � Session
  // 24 ���� ����������� ����� �����.
  // ������� �������� � Session
  // 25 ���� �������� �� ������ ���.
  // ������� �������� � EKLZKPKNumber
  // 26 ���� �� ����� ������� �� �������.
  // ������� �������� � Day, Month, Year, EndDay, EndMonth, EndYear
  // 27 ���� �� ����� ������ �� �������.
  // ������� �������� � Day, Month, Year, EndDay, EndMonth, EndYear
  // 28 ���� �� ����� ������� �� ������ ����.
  // ������� �������� � Day, Month, Year, EndDay, EndMonth, EndYear
  // 29 ���� �� ����� ������ �� ������ ����.
  // ������� �������� � Day, Month, Year, EndDay, EndMonth, EndYear
  // 30 ���� �� ������ ������� �� �������.
  // ������� �������� � Session, EndSession
  // 31 ���� �� ������ ������ �� �������.
  // ������� �������� � Session, EndSession
  // 32 ���� �� ������ ������� �� ������ ����.
  // ������� �������� � Session, EndSession
  // 33 ���� �� ������ ������ �� ������ ����.
  // ������� �������� � Session, EndSession
  // 34 ������ ��������� �� �� �� ������.
  // ������� �������� � DocNumber
  // 35 ������ �� (������ ��).
  // ������� �������� � ClearJrn
  // 36 ������ �� (������� ��).
  // ������� �������� � ClearJrn
  // 37 ������ ���������� ������� � ��������
  // 38 ��������� �����
  // 39 ������ ������ �� SD-�����
  // 40 ��������� ����� ���������

  TCheckType = (ctSale = 1, ctReturn = 2, ctAnnulate = 3, ctBuy = 4,
    ctBuyReturn = 5, ctBuyAnnulate = 6);
  // ��� ����:
  // 1 � �������;
  // 2 � ������� �������;
  // 3 � ������������� �������;
  // 4 � �������;
  // 5 � ������� �������;
  // 6 � ������������� �������

  TTypeClose = (tcCash = 0, tcType1 = 1, tcType2 = 2, tcType3 = 3, tcType4 = 4,
    tcType5 = 5);
  // ���� ������
  // 0 - ���������, 1 - ��� ������ 1..

  // ������ ������ ���
  TKKMMode = (kmSelect = 0, kmRegistration = 1, kmXReport = 2, kmZReport = 3,
    kmProgram = 4);

  TKKMCheckState = (csClosed = 0, csSaleOpened = 1, csSaleReturnOpened = 2,
    csSaleAnnulateOpened = 3, csBuyOpened = 4, csBuyReturnOpened = 5);
  // 0 � ������;
  // 1 � ������ ��� �������;
  // 2 � ������ ��� �������� �������;
  // 3 � ������ ��� ������������� �������;
  // 4 � ������ ��� �������;
  // 5 � ������ ��� �������� �������

  TKKMDriver = class
  protected
    FDevice: Variant; // ������ ��������
  private
    FReportType: TKKMReportType;

    function GetInboundStream: string;
    procedure SetInboundStream(const Value: string);
    function GetDisablePasswordSettings: boolean;
    procedure SetAccessPassword(const Value: string);
    procedure SetAdvancedMode(const Value: integer);
    procedure SetAdvancedRegistration(const Value: boolean);
    procedure SetAlignment(const Value: integer);
    procedure SetApplicationHandle(const Value: THandle);
    procedure SetAutoSize(const Value: boolean);
    procedure SetBarcode(const Value: string);
    procedure SetBarcodeControlCode(const Value: boolean);
    procedure SetBarcodeType(const Value: integer);
    procedure SetBaudRate(const Value: integer);
    procedure SetBufferingMode(const Value: boolean);
    procedure SetCheckNumber(const Value: integer);
    procedure SetCheckType(const Value: TCheckType);
    procedure SetCount(const Value: integer);
    procedure SetCounterType(const Value: integer);
    procedure SetCurrentDeviceIndex(const Value: integer);
    procedure SetCurrentDeviceName(const Value: string);
    procedure SetCurrentDeviceNumber(const Value: integer);
    procedure SetDay(const Value: word);
    procedure SetDefaultPassword(const Value: string);
    procedure SetDepartment(const Value: integer);
    procedure SetDestination(const Value: integer);
    procedure SetDeviceEnabled(const Value: boolean);
    procedure SetDeviceSettings(const Value: string);
    procedure SetDevicesSettings(const Value: string);
    procedure SetDiscountType(const Value: integer);
    procedure SetDiscountTypeNumber(const Value: integer);
    procedure SetDiscountValue(const Value: Double);
    procedure SetDrawerOffTimeout(const Value: integer);
    procedure SetDrawerOnQuantity(const Value: integer);
    procedure SetDrawerOnTimeout(const Value: integer);
    procedure SetDuration(const Value: integer);
    procedure SetEnableCheckSumm(const Value: boolean);
    procedure SetEndDay(const Value: word);
    procedure SetEndMonth(const Value: word);
    procedure SetEndSession(const Value: integer);
    procedure SetEndYear(const Value: word);
    procedure SetEntryNum(const Value: integer);
    procedure SetFileName(const Value: string);
    procedure SetFontBold(const Value: boolean);
    procedure SetFontDblHeight(const Value: boolean);
    procedure SetFontDblWidth(const Value: boolean);
    procedure SetFontItalic(const Value: boolean);
    procedure SetFontNegative(const Value: boolean);
    procedure SetFontUnderline(const Value: boolean);
    procedure SetFrequency(const Value: integer);
    procedure SetHeight(const Value: integer);
    procedure SetHour(const Value: word);
    procedure SetJrnBrightness(const Value: integer);
    procedure SetJrnFont(const Value: integer);
    procedure SetJrnFontHeight(const Value: integer);
    procedure SetJrnLineSpacing(const Value: integer);
    procedure SetLineNumber(const Value: integer);
    procedure SetMachineName(const Value: string);
    procedure SetMachineNumber(const Value: string);
    procedure SetMinute(const Value: word);
    procedure SetModel(const Value: integer);
    procedure SetModelCheck(const Value: boolean);
    procedure SetMonth(const Value: word);
    procedure Setname(const Value: string);
    procedure SetOperationType(const Value: integer);
    procedure SetOperatorNo(const Value: integer);
    procedure SetOutBoundStream(const Value: string);
    procedure SetPercents(const Value: Double);
    procedure SetPictureNumber(const Value: integer);
    procedure SetPortNumber(const Value: integer);
    procedure SetPrice(const Value: Double);
    procedure SetPrintBarcodeText(const Value: integer);
    procedure SetPrintPurpose(const Value: integer);
    procedure SetQuantity(const Value: Double);
    procedure SetRecBrightness(const Value: integer);
    procedure SetRecFont(const Value: integer);
    procedure SetRecFontHeight(const Value: integer);
    procedure SetRecLineSpacing(const Value: integer);
    procedure SetRegisterNumber(const Value: integer);
    procedure SetScale(const Value: Double);
    procedure SetScaleVB(const Value: Double);
    procedure SetSecond(const Value: word);
    procedure SetSlipDocCopyCountHorz(const Value: integer);
    procedure SetSlipDocCopyCountVert(const Value: integer);
    procedure SetSlipDocCopyShiftHorz(const Value: integer);
    procedure SetSlipDocCopyShiftVert(const Value: integer);
    procedure SetSlipDocLeftMargin(const Value: integer);
    procedure SetSlipDocOrientation(const Value: integer);
    procedure SetSlipDocTopMargin(const Value: integer);
    procedure SetSlotNumber(const Value: integer);
    procedure SetStreamFormat(const Value: integer);
    procedure SetKKMSumm(const Value: Double);
    function GetKKMSumm: Double;
    procedure SetTaxTypeNumber(const Value: integer);
    // procedure SetTestMode(const Value: boolean);
    procedure SetTextWrap(const Value: integer);
    procedure SetTypeClose(const Value: TTypeClose);
    procedure SetUmode(const Value: TDeviceMode);
    procedure SetUmodel(const Value: integer);
    procedure SetUseAccessPassword(const Value: boolean);
    procedure SetWidth(const Value: integer);
    procedure SetWriteLogFile(const Value: word);
    procedure SetYear(const Value: word);
    procedure SetDisableParamWindow(const Value: boolean);
    procedure SetDisablePasswordSettings(const Value: boolean);
    procedure SetLockDevices(const Value: boolean);
    procedure SetShowProgress(const Value: boolean);
    procedure SetKKMMode(Value: TKKMMode);
    function GetKKMMode: TKKMMode;
    function GetAccessPassword: string;
    function GetAdvancedMode: integer;
    function GetAdvancedRegistration: boolean;
    function GetAlignment: integer;
    function GetApplicationHandle: THandle;
    function GetAutoSize: boolean;
    function GetBadParam: integer;
    function GetBadParamDescription: string;
    function GetBarcode: string;
    function GetBarcodeType: integer;
    function GetBatteryLow: boolean;
    function GetBaudRate: integer;
    function GetBufferingMode: boolean;
    function GetChange: Double;
    function GetCharLineLength: integer;
    function GetCheckNumber: integer;
    function GetCheckPaperPresent: boolean;
    function GetCheckState: TKKMCheckState;
    function GetCheckType: TCheckType;
    function GetControlPaperPresent: boolean;
    function GetCount: integer;
    function GetCounterType: integer;
    function GetCoverOpened: boolean;
    function GetCurrentDeviceIndex: integer;
    function GetCurrentDeviceName: string;
    function GetCurrentDeviceNumber: integer;
    function GetDay: word;
    function GetDefaultPassword: string;
    function GetDepartment: integer;
    function GetDestination: integer;
    function GetDeviceCount: integer;
    function GetDeviceDescription: string;
    function GetDeviceEnabled: boolean;
    function GetDeviceSettings: string;
    function GetDevicesSettings: string;
    function GetDisableParamWindow: boolean;
    function GetDiscountType: integer;
    function GetDiscountTypeNumber: integer;
    function GetDiscountValue: Double;
    function GetDocNumber: integer;
    function GetDrawerOffTimeout: integer;
    function GetDrawerOnQuantity: integer;
    function GetDrawerOnTimeout: integer;
    function GetDrawerOpened: boolean;
    function GetDuration: integer;
    function GetECRError: integer;
    function GetECRErrorDescription: string;
    function GetEnableCheckSumm: boolean;
    function GetEndDay: word;
    function GetEndMonth: word;
    function GetEndSession: integer;
    function GetEndYear: word;
    function GetEntryNum: integer;
    function GetBarcodeControlCode: boolean;
    function GetFileName: string;
    function GetFiscal: boolean;
    function GetFontBold: boolean;
    function GetFontDblHeight: boolean;
    function GetFontDblWidth: boolean;
    function GetFontItalic: boolean;
    function GetFontNegative: boolean;
    function GetFontUnderline: boolean;
    function GetFrequency: integer;
    function GetHeight: integer;
    function GetHour: word;
    function GetINN: string;
    function GetIsDemo: boolean;
    function GetJrnBrightness: integer;
    function GetJrnCharLineLength: integer;
    function GetJrnFont: integer;
    function GetJrnFontHeight: integer;
    function GetJrnLineSpacing: integer;
    function GetJrnPixelLineLength: integer;
    function GetLineNumber: integer;
    function GetLockDevices: boolean;
    function GetMachineName: string;
    function GetMachineNumber: string;
    function GetMinute: word;
    function GetModel: integer;
    function GetModelCheck: boolean;
    function GetMonth: word;
    function GetName: string;
    function GetOperationType: integer;
    function GetOperatorNo: integer;
    function GetOutBoundStream: string;
    function GetOutOfPaper: boolean;
    function GetPasswordEntered: boolean;
    function GetPercents: Double;
    function GetPictureNumber: integer;
    function GetPictureState: integer;
    function GetPixelLineLength: integer;
    function GetKKMPointPosition: word;
    procedure SetKKMPointPosition(Value: word);
    function GetPortNumber: integer;
    function GetPrice: Double;
    function GetPrintBarcodeText: integer;
    function GetPrinterConnectionFailed: boolean;
    function GetPrinterCutMechanismError: boolean;
    function GetPrinterMechanismError: boolean;
    function GetPrinterOverheatError: boolean;
    function GetPrintPurpose: integer;
    function GetQuantity: Double;
    function GetRcpCharLineLength: integer;
    function GetRcpPixelLineLength: integer;
    function GetRecBrightness: integer;
    function GetRecFont: integer;
    function GetRecFontHeight: integer;
    function GetRecLineSpacing: integer;
    function GetRegisterNumber: integer;
    function GetRemainder: Double;
    function GetResultCode: integer;
    function GetResultDescription: string;
    function GetROMVersion: string;
    function GetScale: Double;
    function GetScaleVB: Double;
    function GetSecond: word;
    function GetSerialNumber: string;
    function GetServerVersion: string;
    function GetSession: integer;
    function GetSessionOpened: boolean;
    function GetShowProgress: boolean;
    function GetSlipCharLineLength: integer;
    function GetSlipDocCharLineLength: integer;
    function GetSlipDocCopyCountHorz: integer;
    function GetSlipDocCopyCountVert: integer;
    function GetSlipDocCopyShiftHorz: integer;
    function GetSlipDocCopyShiftVert: integer;
    function GetSlipDocLeftMargin: integer;
    function GetSlipDocOrientation: integer;
    function GetSlipDocTopMargin: integer;
    function GetSlipPixelLineLength: integer;
    function GetSlotNumber: integer;
    function GetStreamFormat: integer;
    function GetTaxTypeNumber: integer;
    // function GetTestMode: boolean;
    function GetTextWrap: integer;
    function GetTypeClose: TTypeClose;
    function GetUmode: TDeviceMode;
    function GetUmodel: integer;
    function GetUseAccessPassword: boolean;
    function GetVersion: string;
    function GetWidth: integer;
    function GetWriteLogFile: word;
    function GetYear: word;
    procedure SetSession(const Value: integer);
    function GetKKMPassword: string;
    procedure SetKKMPassword(Value: string);
    function GetKKMCaption: string;
    procedure SetKKMCaption(Value: string);
    procedure SetKKMValue(Value: integer);
    function GetKKMValue: integer;
    procedure SetReportType(const Value: TKKMReportType);
    function GetReportType: TKKMReportType;
    function GetKKMValuePurpose: integer;
    procedure SetKKMValuePurpose(const Value: integer);
    function GetKKMCaptionPurpose: integer;
    procedure SetKKMCaptionPurpose(const Value: integer);
    function GetOperatorName: string;
    function GetOperatorPassword: string;
    procedure SetOperatorName(const Value: string);
    procedure SetOperatorPassword(const Value: string);
    function GetDeviceEnableTimeout: integer;
    procedure SetDeviceEnableTimeout(const Value: integer);
    function GetBarcodeColumns: integer;
    function GetBarcodeOptions: integer;
    function GetBarcodeRows: integer;
    function GetCorrectionLevel: integer;
    procedure SetBarcodeColumns(const Value: integer);
    procedure SetBarcodeOptions(const Value: integer);
    procedure SetBarcodeRows(const Value: integer);
    procedure SetCorrectionLevel(const Value: integer);
    function GetTransactionType: integer;
    procedure SetTransactionType(const Value: integer);
    function GetMaxCaptionLength: integer;
    procedure SetMaxCaptionLength(const Value: integer);
    function GetFRLicense: integer;
    procedure SetFRLicense(const Value: integer);
    function GetEKLZFlags: integer;
    procedure SetEKLZFlags(const Value: integer);
    procedure SetAttrNumber(const Value: integer);
    procedure SetAttrValue(const Value: string);
    function GetAttrNumber: integer;
    function GetAttrValue: string;
  public
    constructor Create;
    destructor Destroy;
    function ShowProperties(): integer; // �������� �������� �������
    function SetMode(): integer; // ���������� �����
    function ResetMode(): integer; // ����� �� ������
    function LockKeyboard(): integer;
    function UnLockKeyboard(): integer;
    function Beep(): integer;
    function Sound(): integer; // ����� ������ Duration � Frequency
    function DisplayDraw: integer;
    // ����� ������ Caption. ����� ���������� (�����������) �� ������� ���
    function AdvancedDisplayWrite(): integer;
    // ������� �� ������� ��� ������������ ����������
    function RunCommand(): integer;
    function OpenDrawer(): integer; // ������� �������� ����
    function AdvancedOpenDrawer(): integer;
    // ���������� �������� ��������� �����
    function FullCut(): integer;
    function PartialCut(): integer;
    function GetStatus(): integer;
    function GetLastError(): integer;
    function GetCurrentMode(): integer;
    function GetRegister(): integer;
    function GetSumm(): integer; // �������� � ��. PointPosition �� / Summ ���
    function GetUnitVersion(): integer; // �������� ������
    function GetDeviceMetrics(): integer;
    function GetSupportedMode(): integer;
    function GetRange(): integer; // �������� ��������� ���������� �������
    function GetLastSummary(): integer;
    // ��� ���������� ������ � �������� Summ ������������ ������� ����.
    function OpenSession(): integer;
    // ����� ��������� ����� �� ��� (in TestMode, Caption)
    function CashIncome(): integer;
    // ����� ������������ �������� �������� ����� � ����� (in TestMode, Summ)
    function CashOutcome(): integer;
    // ����� ������������ ������� �������� ����� �� ����� (in TestMode, Summ)
    function Report(): integer; // ReportType: 0 � 11 � 22 � 37,
    function NewDocument(): integer;
    // ������ ����� �������� ��������� � ������������ ����� ����������
    // ��������� ���������� �������� �������� (GetStatus(), SetMode(), CancelCheck() � �.�.).
    function OpenCheck(): integer;
    // ����� ��������� ��� ���������������� ���� (�������� CheckType)
    function Registration(): integer; // ����� ���������� ����������� �������
    function Annulate(): integer; // ������������� �������
    function Return(): integer;
    // ����� ���������� ����������� �������� �������
    function Buy(): integer; // ����� ���������� ����������� �������
    function BuyReturn(): integer;
    // ����� ���������� ����������� �������� �������
    function BuyAnnulate(): integer;
    // ����� ���������� ����������� ������������� �������
    function Storno(): integer; // ����� ���������� ������������� �����������
    // (�������, �������� �������, ������������� �������, �������, �������� �������)
    function PercentsCharge(): integer;
    // ����� ���������� ����������� ���������� �������� �� ���� ��� ��� ��������� ��������
    function PercentsDiscount(): integer;
    // ����� ���������� ����������� ���������� ������ �� ���� ��� ��� ��������� ��������
    function SummCharge(): integer;
    // ����� ���������� ����������� �������� ������ �� ���� ��� ��� ��������� ��������
    function SummDiscount(): integer;
    // ����� ���������� ����������� ������ ������ �� ���� ��� ��� ��������� ��������
    function ResetChargeDiscount(): integer;
    // ����� �������� ��������� ����������� �������� ���������� ������ ��� �������� ������ ����
    function Payment(): integer;
    // ����� ���������� ����������� ������� �� ���� ��������
    // ����� ������ � ��������� ����� ����� � ������������� ������� ����
    function StornoPayment(): integer;
    // ������������� ������� �� �����, �������� ����� ������
    function CancelCheck(): integer;
    // ����� ���������� ������������� (������) ����� ����.
    // ��� ���� �� ���� ���������� ���� ����������ͻ
    function CloseCheck(): integer; // �������� ���� ��� �������� ����� �����

    function GetLicense(): integer;
    function SetLicense(): integer;

    function Delivery(): integer;
    // �������� ���� ������� � ������� ��������� � ��������� ����� �����
    function SummTax(): integer;
    // ����������� ������, �������������� ������������ � ���
    function ResetTax(): integer; // ������ ������ ���������� ����
    function PrintString(): integer;
    // ����� ������ ��� ������ ������ ��������
    // �� ������� ����� �/��� ����������� �����

    function WriteAttribute: integer;

    function PowerOff(): integer;
    // ����������� ���������� ���
    function AddField(): integer; // ����� ������ ��� ������������ ������
    // ������ �� ���������� ������ �������� � �������������� ����������
    // ������� ��������� ��������, ��� ����������� ������ �� ��� ��� ������ ������ PrintField
    function PrintField(): integer;
    // ��� ������ ������ �� ������� �/��� �����������,
    // � ����������� �� �������� �������� PrintPurpose, ����� ����� ��������� �����, �������� � �������� Caption
    function PrintHeader(): integer;
    // ����� �������� �� ���� �����, ������������������� � ���
    function PrintFooter(): integer;
    // ����� �������� �� ���� ���� ��������� ����, ���������� ����, ������� ���������� � ������� ��� �������
    function BeginDocument(): integer;
    // ������ ������������� ��������� �� �������� ��.
    // ����� ��������� ������� � ��������� ����������� ������, ����������� �������� ������ ������ � ����
    function EndDocument(): integer; // ������ �� �������� ��.
    // ����� �������� ������ �� ����������� ������ �������� �� ������ � ���, ����������� ���������� ��� ����������� ������ ������ � ������� ������� �� ��������� ����������� �������
    function BeginFiscDocument(): integer;
    // ���������� �������� ��� ������ �� ��� ������� �� ��������� � ���������� ��������� � ��� �����
    function EndFiscDocument(): integer;
    // ��� ��� ������-3�� ����� ������� ������� �� ������ ������ ���������� ����������.
    // ��� ��� ����-07� ����� ������� �� ������ ���������� �������� � ���������� ��������� � ��������� ��� �����.
    function PrintBarcode(): integer;
    // ����� �������� ��������, ����������� � ��������� Barcode � BarcodeType,
    // � �������� �� ������ ����, ������ LeftMargin � �������������, ��������� � �������� Alignment.
    // ������� ����������� ��������� �������� ���������� Height (� ������������ �������),
    // Scale (� ��������� �� ��������� �������) � AutoSize
    function PrintBitmap(): integer;
    // ��� ���������� ����� �������� ������� ������. ������ ������� ������ ����������� � �������� StreamFormat, � �� �������� � �������� OutboundStream. ����� ����� ���������� � �������� �� ������ ����, ������ LeftMargin � �������������, ��������� � �������� Alignment.
    // ������� ���������� ������� ������ �������� ���������� Scale (� ��������� �� ��������� �������) � AutoSize.
    // ������� (������� / ����������� �����), �� ������� ����� ����������, �������� ��������� PrintPurpose
    function PrintBitmapFromFile(): integer;
    // ��� ���������� ����� �������� �������� �� ������������ ����� � �������� ��������
    function GetStatusPictureArray(): integer;
    // ��� ���������� ����� �������� ��������� ������� �������� � ������ ���. ��� ���� ������������ � ���������� ��������� ���� � ������� (�������� Count), ���������� ��������
    // � ������� (PictureNumber) � ��������� ��������� ����������� �������� � ������� (������� / �������) � �������� PictureState
    function GetStatusPicture(): integer;
    // ����� �� ������ �������� � ������ ��� ����������� ��������� ���� ��������: ��������� ��������, �� ������ � ������
    function PrintPicture(): integer;
    // ����� �������� �������� �� ������ PictureNumber, ���������� � ������ ���, � �������� ������������� � �������� �� ������ ����
    function ClearOutput(): integer;
    // ����� ����������� ���������� ��� ����������� ������ ������ � ������� ������� �� ��������� ����������� �������, �� ��������� ������ �� ����������� ������ �������� � ���.
    // ������������� ������ ��������� ���������� ������� �������� BeginAdd � BeginDocument ���������� ������ � ���.
    { ���������������� ��� }
    function SetPassword(): integer;
    // ����� ������������� ������ ������� � ���. ������ ������� � ��� �������� ��������� Password.
    // ����� ��������� ���������� ������ �������� �������� AccessPassword �������� �� �������������
    function GetPassword(): integer;
    // ����� ���������� � �������� Password ������ ������� � ��� �� ������� �������� ���
    function SetCaption(): integer; // ��������� ��������� ��� (���������� 9)
    // ����� ������������ ��� ���������������� ��������� ��������� ���������� ���. ��������������� �������� �������� � �������� Caption, ����� ��������� � � �������� CaptionPurpose,
    // ����������� ��������� ����� ������ � � �������� MaxCaptionLength (���� � ������, ���� ��� ���������� ������ ��������� ������)
    function GetCaption(): integer;
    // ����� ������������ ��� ��������� �������� ��������� ��������� ���������� ���, ����� ��������� �������� � �������� CaptionPurpose.
    function SetValue(): integer; // �������� ��������� ��� (���������� 10)
    // ����� ������������ ��� ���������������� �������� (�� ���������) ��������� �������� ���. �������� �������� � �������� Value, ����� ��������� � � �������� ValuePurpose
    function GetValue(): integer;
    // ����� ������������ ��� ��������� �������� �������� (�� ���������) ��������� �������� ���. ����� ��������� �������� � �������� ValuePurpose.
    // � ������ ��������� ���������� ������ �������� ��������� ����������� � �������� Value
    function SetSettings(): integer;
    // ����� ������������ ��� ������ ������ � ��������� ������ ����� ��������� ������� ���.
    // ��������� ������ ������� � ����������� ��������� � � ��������� ������ ���, ��������� � �������� �������� ���
    function GetSettings(): integer;
    // ����� ������������ ��� ��������� ����������� ��������� ������ �� ����� ��������� ������� ���.
    // ��������� ������ ������� � ����������� ��������� � � ��������� ������ ���, ��������� � �������� �������� ���
    function SetDate(): integer;
    // ����� ������������� ��������� ���� � ���. ���� �������� ���� ������, ��� �� ���� ����, ������� ����,
    // �� ��� ������� ������������� ����� ���� � ���������� ������ ��� ������� �����.
    function SetTime(): integer; // ����� ������������� ��������� ����� � ���
    function SetPointPosition(): integer;
    // ����� ������������� ��������� ���������� ����� � ���. ����� ��������� ����� (���������� �������� ����� (������ ��) ���������� �����) �������� � �������� PointPosition.
    // ���������� ������ ��������� ������ ����� ���������� ������ ������� ���
    function DeviceEnableEx(): integer;
    // ����� ��������� ������������ ������� ������ �� ���.
    // ��������� �������� ��� ������ ������ ������������ ������������ ��������� DeviceEnableTimeout.

    function EKLZGetStatus: integer;

  published
    // �������� �������� ����� RW
    property ValuePurpose: integer read GetKKMValuePurpose
      write SetKKMValuePurpose;

    // �������� �������� ����� RW
    property CaptionPurpose: integer read GetKKMCaptionPurpose
      write SetKKMCaptionPurpose;

    property EKLZFlags: integer read GetEKLZFlags write SetEKLZFlags;
    // �0 � 1
    // 0 � �������
    // 2 � ������� �������

    // 2
    // 0 � ����� ������
    // 1 � ����� ������

    // 3
    // 0 � ���� �� ��������������
    // 1 � ���� ��������������

    // 4
    // 0 � ��� ������
    // 1 � ����� ���������

    // 5
    // 0 � �������� ������
    // 1 � �������� ������

    // 6
    // 0 � ����� �������
    // 1 � ����� �������

    // 7
    // 0 � ��� ������������ ������ ����������
    // 1 � ���� ������������ ������ ����������

    // ���� ������� ��������
    property DisablePasswordSettings: boolean read GetDisablePasswordSettings
      write SetDisablePasswordSettings; // ��������������������� RW
    property LockDevices: boolean read GetLockDevices write SetLockDevices;
    // ��������������������� RW
    property DisableParamWindow: boolean read GetDisableParamWindow
      write SetDisableParamWindow; // �������������������� RW

    property ShowProgress: boolean read GetShowProgress write SetShowProgress;
    // ������� ������ ��������� RW
    property Mode: TKKMMode read GetKKMMode write SetKKMMode;
    // ����� ������ RW
    property Password: string read GetKKMPassword write SetKKMPassword;
    // ������ ����� � ����� RW
    property Barcode: string read GetBarcode write SetBarcode;
    // ���������� ���������� ��������� RW

    property License: integer read GetFRLicense write SetFRLicense;
    // ����� ��������

    property ReportType: TKKMReportType read FReportType write SetReportType;
    // ��� ������ AddField
    property FontBold: boolean read GetFontBold write SetFontBold;
    // ����� ������� ������� RW
    property FontItalic: boolean read GetFontItalic write SetFontItalic;
    // ����� �������� RW
    property FontNegative: boolean read GetFontNegative write SetFontNegative;
    // ��� �������� RW
    property FontUnderline: boolean read GetFontUnderline
      write SetFontUnderline; // ������������ ����� RW
    property FontDblHeight: boolean read GetFontDblHeight
      write SetFontDblHeight; // ����� ������� ������ RW
    property FontDblWidth: boolean read GetFontDblWidth write SetFontDblWidth;
    // ����� ������� ������ RW

    property MaxCaptionLength: integer read GetMaxCaptionLength
      write SetMaxCaptionLength;

    property PrintPurpose: integer read GetPrintPurpose write SetPrintPurpose;
    // ���������� ������: RW
    // 1 � ������ �� ��;
    // 2 � ������ �� ��;
    // 3 � ������ �� �� � ��

    property PictureState: integer read GetPictureState;
    // ��������� ��������� �������� � ������ ���: R
    // 0 � �������;
    // 1 � �������

    // ����� ��������
    property AttrNumber: integer read GetAttrNumber write SetAttrNumber;
    property AttrValue: string read GetAttrValue write SetAttrValue;

    property PictureNumber: integer read GetPictureNumber
      write SetPictureNumber;
    // ���������� �������� � ������ ���: 1 ... 255 RW

    property FileName: string read GetFileName write SetFileName;
    // ��� ����� �������� RW

    property Width: integer read GetWidth write SetWidth;
    // ������ ��������: 1 ... 65535 RW
    property Height: integer read GetHeight write SetHeight;
    // ������ �����������: 1 � 65535 RW
    property PrintBarcodeText: integer read GetPrintBarcodeText
      write SetPrintBarcodeText;
    // �������� ���������� ���������� ���������:
    // 0 � �� ��������;
    // 1 � �������� ��� ��;
    // 2 � �������� ��� ��;
    // 3 � �������� ���/��� ��

    property BarcodeControlCode: boolean read GetBarcodeControlCode
      write SetBarcodeControlCode;
    // ������� ������������� ������������ ������� RW

    property BarcodeType: integer read GetBarcodeType write SetBarcodeType;
    // ��� ���������: RW
    // 0 � UPC-A;
    // 1 � CODE39;
    // 2 � (E/J)AN13;
    // 3 � (E/J)AN8;
    // 4 � UPC-E;
    // 5 �ITF;
    // 6 � CODEBAR;
    // 7 �CODE93;
    // 8 � CODE128;
    // 10 � PDF 417;
    // 20 � CODE32;
    // 82 � EAN 128 CC-A/B;
    // 83 � EAN 128 CC-C
    // 84 - QR

    property CorrectionLevel: integer read GetCorrectionLevel
      write SetCorrectionLevel;
    // ������� ��������� ������ ��
    property BarcodeOptions: integer read GetBarcodeOptions
      write SetBarcodeOptions;
    // ��������� ��
    property BarcodeColumns: integer read GetBarcodeColumns
      write SetBarcodeColumns;

    property BarcodeRows: integer read GetBarcodeRows write SetBarcodeRows;

    property Scale: Double read GetScale write SetScale;
    // ������� ����������� RW
    property ScaleVB: Double read GetScaleVB write SetScaleVB;
    // ������� ����������� RW
    property AutoSize: boolean read GetAutoSize write SetAutoSize;
    // ���������� RW

    property Frequency: integer read GetFrequency write SetFrequency;
    // ������� � �� 100..2500 RW
    property Duration: integer read GetDuration write SetDuration;
    // ������������ �� 10..2550 ������� 10 RW

    property Alignment: integer read GetAlignment write SetAlignment;
    // ������������: 0 � �� ������ ����; 1 � �� ������; 2 � �� ������� ���� RW
    property EntryNum: integer read GetEntryNum write SetEntryNum;
    // ����� ��������� RW
    property Caption: string read GetKKMCaption write SetKKMCaption;
    // ������ 24 ���� ���� RW
    property LineNumber: integer read GetLineNumber write SetLineNumber;
    // ����� ������ 1..2
    property Percents: Double read GetPercents write SetPercents;
    // ������� ��������: 0,01 � 100,00 RW
    property Destination: integer read GetDestination write SetDestination;
    // ������� �������� ��������: 0 � �� ���; 1 � �� ������� RW

    property StreamFormat: integer read GetStreamFormat write SetStreamFormat;
    property OutboundStream: string read GetOutBoundStream
      write SetOutBoundStream;
    // �������� ����� ������
    property InboundStream: string read GetInboundStream write SetInboundStream;
    // ������� ����� ������

    property DeviceEnableTimeout: integer read GetDeviceEnableTimeout
      write SetDeviceEnableTimeout;
    // ����� �������� � ������� (����)
    // ���� DeviceEnableTimeout=0, �� ����� �������� DeviceEnabled.
    // ���� DeviceEnableTimeout>0, �� ������� ������� ��������� �����. ���� �� ��������� ���������� ������� ��� �� ������������, ��� ���������� �� �����, � ������� �������, ��� ���������� ����������.
    // ���� DeviceEnableTimeout=-1, �� ������� ������� ������������ ��� ��� ����������� �������.

    property Umode:           TDeviceMode read GetUmode write SetUmode;
    property EnableCheckSumm: boolean read GetEnableCheckSumm
      write SetEnableCheckSumm; // ��������� ���������� RW

    property SlipDocCopyCountHorz: integer read GetSlipDocCopyCountHorz
      write SetSlipDocCopyCountHorz;
    // ���������� ����� �� ����������� ����������� ���������: 0�9 RW
    property SlipDocCopyCountVert: integer read GetSlipDocCopyCountVert
      write SetSlipDocCopyCountVert;
    // ���������� ����� �� ��������� ����������� ���������: 0�9 RW
    property SlipDocCopyShiftHorz: integer read GetSlipDocCopyShiftHorz
      write SetSlipDocCopyShiftHorz;
    // �������� ����� �� ����������� ����������� ���������: 0�99 RW
    property SlipDocCopyShiftVert: integer read GetSlipDocCopyShiftVert
      write SetSlipDocCopyShiftVert;
    // �������� ����� �� ��������� ����������� ���������: 0�99 RW

    property RegisterNumber: integer read GetRegisterNumber
      write SetRegisterNumber;
    // ����� ��������: 1 � 36 RW   (��� 64-66) RW
    property CheckType: TCheckType read GetCheckType write SetCheckType;
    // ��� ����: RW
    // 1 � �������;
    // 2 � ������� �������;
    // 3 � ������������� �������;
    // 4 � �������;
    // 5 � ������� �������;
    // 6 � ������������� �������
    property TypeClose: TTypeClose read GetTypeClose write SetTypeClose;
    // ��� �������� ����: RW
    // 0 - ���������;
    // 1 - ��� ������ 1;
    // 2 - ��� ������ 2;
    // 3 - ��� ������ 3;
    // 4 - ��� ������ 4;
    // 5 - ��� ������ 5
    property OperationType: integer read GetOperationType
      write SetOperationType;
    // ��� ��������: 0 � �������; 1 � ������� RW
    property CounterType: integer read GetCounterType write SetCounterType;
    // ��� ��������: 1 � ��������������; 2 � ������������ RW
    property TaxTypeNumber: integer read GetTaxTypeNumber
      write SetTaxTypeNumber; // ����� ��������� ������: 1 ... 5 RW
    property DiscountTypeNumber: integer read GetDiscountTypeNumber
      write SetDiscountTypeNumber; // ����� ������: 0 ... 16 RW

    property OutOfPaper: boolean read GetOutOfPaper;
    // ������� ���������� ������ R
    property PrinterConnectionFailed: boolean read GetPrinterConnectionFailed;
    // ������� ���������� ����� � ��������� ����� R
    property PrinterMechanismError: boolean read GetPrinterMechanismError;
    // ������� ������ ����������� ���������� R
    property PrinterCutMechanismError: boolean read GetPrinterCutMechanismError;
    // ������ ��������� R
    property PrinterOverheatError: boolean read GetPrinterOverheatError;
    // �������� ���������� ������� R

    property DrawerOnTimeout: integer read GetDrawerOnTimeout
      write SetDrawerOnTimeout;
    // ��������� ��������� �����, � 10 ����: 0 � 9999 RW
    property DrawerOffTimeout: integer read GetDrawerOffTimeout
      write SetDrawerOffTimeout;
    // ���������� ��������� �����, � 10 ����: 0 � 9999 RW
    property DrawerOnQuantity: integer read GetDrawerOnQuantity
      write SetDrawerOnQuantity;
    // ���������� ��������� ��� �������� ��������� �����: 0 � 99 RW
    property OperatorName: string read GetOperatorName write SetOperatorName;
    // ��� ������� RW
    property OperatorPassword: string read GetOperatorPassword
      write SetOperatorPassword;
    // ������ ������� RW
    property OperatorNo: integer read GetOperatorNo write SetOperatorNo;
    // ����� ������� RW
    property Fiscal: boolean read GetFiscal;
    // ������� ������������������� ��� R
    property Hour: word read GetHour write SetHour; // ������� ��� RW 0..23 RW
    property Minute: word read GetMinute write SetMinute;
    // ������� ������ 1..59 RW
    property Second: word read GetSecond write SetSecond;
    // ������� ������� 1..59 RW
    property Day:   word read GetDay write SetDay; // ������� ���� 1..31 RW
    property Month: word read GetMonth write SetMonth;
    // ������� ����� 1..12 RW
    property Year: word read GetYear write SetYear;
    // ������� ��� 1998..2089 RW
    property EndDay: word read GetEndDay write SetEndDay;
    // ���� ��������� ������ ��: 1 � 31 RW
    property EndMonth: word read GetEndMonth write SetEndMonth;
    // ����� ��������� ������ ��: 1 � 12 RW
    property EndYear: word read GetEndYear write SetEndYear;
    // ��� ��������� ������ ��: 1998 � 2089 RW
    property EndSession: integer read GetEndSession write SetEndSession;
    // ����� ����� ��������� ������ ��: 0000�2000 RW

    property SerialNumber: string read GetSerialNumber;
    // �������� ����� ���: ������ �� 8 �������� RW
    property INN: string read GetINN;
    // ����������������� ����� �����������������: 000000000000 � 999999999999 RW
    property ROMVersion: string read GetROMVersion;
    // ������ �� ��� R
    property AdvancedMode: integer read GetAdvancedMode write SetAdvancedMode;
    // �������� ��� RW
    property SlotNumber: integer read GetSlotNumber write SetSlotNumber;
    // ����� ����� 1..3 RW
    property DrawerOpened: boolean read GetDrawerOpened;
    // ������� ���������� ��������� ����� R
    property SessionOpened: boolean read GetSessionOpened;
    // ������� ���������� ����� R
    property CheckPaperPresent: boolean read GetCheckPaperPresent;
    // ������� ������� ������ � �������� ����� R
    property ControlPaperPresent: boolean read GetControlPaperPresent;
    // ������� ������� ������ � �������� ����������� ����� R
    property CoverOpened: boolean read GetCoverOpened;
    // ������� ���������� ������ R
    property PasswordEntered: boolean read GetPasswordEntered;
    // ������� ������������ ������ R
    property Umodel: integer read GetUmodel write SetUmodel; // ������ ��� RW
    property CheckNumber: integer read GetCheckNumber write SetCheckNumber;
    // ����� �������� ����: 0000�9999 RW
    property Session: integer read GetSession write SetSession;
    // ����� �����: 0000�2000 R
    property CheckState: TKKMCheckState read GetCheckState;
    // ������� ��������� ���� R
    // 0 � ������;
    // 1 � ������ ��� �������;
    // 2 � ������ ��� �������� �������;
    // 3 � ������ ��� ������������� �������;
    // 4 � ������ ��� �������;
    // 5 � ������ ��� �������� �������
    property Summ: Double read GetKKMSumm write SetKKMSumm;
    // ����� ����: 0.00 � 99999999.99 RW
    property TextWrap: integer read GetTextWrap write SetTextWrap;
    // ������� ������: 0 - ��� ��������. 1 - �� ������. 2 - �� ������ RW
    property Count: integer read GetCount write SetCount;
    // ���������� �����: 1 ... 65535 R
    property TransactionType: integer read GetTransactionType
      write SetTransactionType;
    // �������������
    // �������� �������� ����� ����������, ��������������� ������, ���������� ������� GetRecord.
    // 1
    // ������� �� ��������� ����
    // Summ � ����� �������;
    // Department � ������, � ������� ���������������� ��������
    // 2
    // ������ �� ��������� ����
    // Summ � ����� ������;
    // Department � ������, � ������� ���������������� ��������
    // 3
    // ������������� �� ��������� ����.
    // Summ � ����� ��������������
    // 4
    // ������� �� ��������� ����.
    // Summ � ����� ��������
    // 5
    // ���������� ������ �� ��������.
    // Summ � ����� ������
    // 6
    // ���������� �������� �� ��������.
    // Summ � ����� ��������
    // 7
    // ���������� ������ �� ��������.
    // Percents � ������ ������ � ���������
    // 8
    // ���������� �������� �� ��������
    // Percents � ������ �������� � ���������
    // 11
    // ������� �� ����������� ���� ������.
    // PLUNumber � ��� ������;
    // Quantity � ��������� ����������
    // 12
    // ������ �� ����������� ����.
    // PLUNumber � ��� ������;
    // Quantity � �������������� ����������
    // 13
    // ������������� �� ����������� ����.
    // PLUNumber � ��� ������;
    // Quantity � �������������� ����������
    // 14
    // ������� �� ����������� ����.
    // PLUNumber � ��� ������;
    // Quantity � ������������ ����������
    // 21
    // ������� �� �������� ���� ������.
    // Summ � ����� �������;
    // Department � ������, � ������� ���������������� ��������
    // 22
    // ������ �� �������� ���� ������.
    // Summ � ����� �������;
    // Department � ������, � ������� ���������������� ��������
    // 23
    // ������������� �� �������� ���� ������.
    // Summ � ����� ��������������
    // 24
    // ������� �� �������� ���� ������.
    // Summ � ����� ��������
    // 35
    // ���������� ������ �� ���� ���.
    // Summ � ����� ������
    // 36
    // ���������� �������� �� ���� ���.
    // Summ � ����� ��������
    // 37
    // ���������� ������ �� ���� ���.
    // Percents � ������ ������ � ���������
    // 38
    // ���������� �������� �� ���� ���.
    // Percents � ������ �������� � ���������
    // 42
    // ������ ���������
    // 44
    // ������ ����� 1 (��������)
    // 47
    // ������ ����� 2 (�����)
    // 48
    // ������ ����� 3 (��. ������)
    // 50
    // �������� ����� � �����.
    // Summ � ��������� �����
    // 51
    // ������� ����� �� �����.
    // Summ � ����������� �����
    //
    // 55
    // ����� ����.
    // Day, Month, Year, Hour, Minute � ���� � ����� �������� ����;
    // Operator � ����� �������, ���������� ���

    property ECRError: integer read GetECRError;
    // ��� ��������� ������ R
    property ECRErrorDescription: string read GetECRErrorDescription;
    // �������� ��������� ������ R
    property BatteryLow: boolean read GetBatteryLow;
    // ������� ������������� ������������ ��� R
    property BufferingMode: boolean read GetBufferingMode
      write SetBufferingMode;
    // ������� ���������� � ������ ����������� ��������� RW
    property Value: integer read GetKKMValue write SetKKMValue;
    // �������� ��������� 33-35 RW
    property DocNumber: integer read GetDocNumber;
    // ����� ���������: 0 � 99999999 R
    property Remainder: Double read GetRemainder;
    // ������� � ����: 0.00 � 99999999.99 R
    property Change: Double read GetChange;
    // ����� �����: 0.00 � 99999999.99 R
    property MachineNumber: string read GetMachineNumber write SetMachineNumber;
    // ��������������� ����� ������: ������ ���� ������ �� ����� 10 �������� RW
    property name:     string read GetName write Setname; // �������� ������ RW
    property Quantity: Double read GetQuantity write SetQuantity;
    // ���������� ������: 0.000 ... 9999999.999 RW
    property Price: Double read GetPrice write SetPrice;
    // ���� ������: 0.00 ... 99999999.99 RW
    property Department: integer read GetDepartment write SetDepartment;
    // ������ RW
    property AdvancedRegistration: boolean read GetAdvancedRegistration
      write SetAdvancedRegistration; // ����������� ����������� RW
    property RecFont: integer read GetRecFont write SetRecFont;
    // ����� �� ��: RW
    // 0 - ����������� � ���;
    // 1 - 8�6;
    // 2 - 7�6;
    // 3 - 6�6;
    // 4 - 5�6
    property RecFontHeight: integer read GetRecFontHeight
      write SetRecFontHeight; // ������ ������ �� ��:
    // 0 - ����������� � ���;
    // 1 - ���������� �� ������ �����;
    // 2 - �� ������������;
    // 3 - ����� ��������� ������
    property RecBrightness: integer read GetRecBrightness
      write SetRecBrightness; // ������� ������ �� ��: 0 � 15 RW
    property RecLineSpacing: integer read GetRecLineSpacing
      write SetRecLineSpacing;
    // ����������� �������� �� ��: -19 ... 255 RW
    property JrnFont: integer read GetJrnFont write SetJrnFont;
    // ����� �� ��:  RW
    // 0 - ����������� � ���;
    // 1 - 8�6;
    // 2 - 7�6;
    // 3 - 6�6;
    // 4 - 5�6
    property JrnFontHeight: integer read GetJrnFontHeight
      write SetJrnFontHeight; // ������ ������ �� ��: RW
    // 0 - ����������� � ���;
    // 1 - ���������� �� ������ �����;
    // 2 - �� ������������;
    // 3 - ����� ��������� ������
    property JrnBrightness: integer read GetJrnBrightness
      write SetJrnBrightness; // ������� ������ �� ��: 0 � 15 RW
    property JrnLineSpacing: integer read GetJrnLineSpacing
      write SetJrnLineSpacing;
    // ����������� �������� �� ��: -19 ... 255 RW
    property DiscountType: integer read GetDiscountType write SetDiscountType;
    // ��� ����������� ������ (��������) 0 � �������� ������(��������); 1 � ���������� ������(��������). RW
    property DiscountValue: Double read GetDiscountValue write SetDiscountValue;
    // ������ ����������� ������ (��������) RW
    property ResultCode:        integer read GetResultCode; // ��������� R
    property ResultDescription: string read GetResultDescription;
    // ��������� ���������� R
    property BadParam: integer read GetBadParam;
    // ������ ��������� R
    property BadParamDescription: string read GetBadParamDescription;
    // ��������� ������ ��������� R
    // property TestMode: boolean read GetTestMode write SetTestMode;
    // �������� ����� RW
    property PointPosition: word read GetKKMPointPosition
      write SetKKMPointPosition;
    // ��������� ���������� ����� 0..3 RW
    property ModelCheck: boolean read GetModelCheck write SetModelCheck;
    // ��������� ������ ��� RW
    property CharLineLength: integer read GetCharLineLength;
    // ����� ������ �������� �� ������� ������� R
    property PixelLineLength: integer read GetPixelLineLength;
    // ����� ������ � ������ �� ������� ������� R
    property RcpCharLineLength: integer read GetRcpCharLineLength;
    // ����� ������ �������� �� ��: � ����������� �� ������ ��� R
    property RcpPixelLineLength: integer read GetRcpPixelLineLength;
    // ����� ������ � ������ �� ��: � ����������� �� ������ ��� R
    property JrnCharLineLength: integer read GetJrnCharLineLength;
    // ����� ������ �������� �� ��: � ����������� �� ������ ��� R
    property JrnPixelLineLength: integer read GetJrnPixelLineLength;
    // ����� ������ � ������ �� ��: � ����������� �� ������ ��� R
    property SlipCharLineLength: integer read GetSlipCharLineLength;
    // ����� ������ �������� �� ��: � ����������� �� ������ ��� R
    property SlipPixelLineLength: integer read GetSlipPixelLineLength;
    // ����� ������ � ������ �� ��: � ����������� �� ������ ��� R
    property SlipDocCharLineLength: integer read GetSlipDocCharLineLength;
    // ������ ����������� ���������, � ��������: 0�99 RW
    property SlipDocTopMargin: integer read GetSlipDocTopMargin
      write SetSlipDocTopMargin;
    // ������� ������ ����������� ���������: 0�99 RW
    property SlipDocLeftMargin: integer read GetSlipDocLeftMargin
      write SetSlipDocLeftMargin;
    // ����� ������ ����������� ���������: 0�99 RW
    property SlipDocOrientation: integer read GetSlipDocOrientation
      write SetSlipDocOrientation;
    // ���������� ����������� ���������: RW
    // 0 � ����������;
    // 1 � ���������� �� 180
    property Version: string read GetVersion;
    // ������ �������� R
    property ServerVersion: string read GetServerVersion;
    // ������ ������� R
    property ApplicationHandle: THandle read GetApplicationHandle
      write SetApplicationHandle;
    // ���������� �������� ���� ����������� ���������� RW
    property DeviceDescription: string read GetDeviceDescription;
    // �������� �������� R
    property IsDemo: boolean read GetIsDemo;
    // ���� ������ � ���������������� ������ R
    property CurrentDeviceIndex: integer read GetCurrentDeviceIndex
      write SetCurrentDeviceIndex; // ������ �������� ��: 0 � 98 RW
    property CurrentDeviceNumber: integer read GetCurrentDeviceNumber
      write SetCurrentDeviceNumber; // ����� �������� ��: 1 � 99 RW
    property DeviceEnabled: boolean read GetDeviceEnabled
      write SetDeviceEnabled; // ���� ����������� �������� RW
    property MachineName: string read GetMachineName write SetMachineName;
    // ��� �� � ���� RW
    property PortNumber: integer read GetPortNumber write SetPortNumber;
    // ����� ����� ��: 1001 � COM1 � 1256 � COM256 RW
    property BaudRate: integer read GetBaudRate write SetBaudRate;
    // �������� ������ � ��: RW
    // 3 � 1200;
    // 4 � 2400;
    // 5 � 4800;
    // 7 � 9600;
    // 9 � 14400;
    // 10 � 19200;
    // 12 � 38400;
    // 14 � 57600;
    // 18 � 115200
    property Model: integer read GetModel write SetModel; // ������ ��� RW
    property AccessPassword: string read GetAccessPassword
      write SetAccessPassword;
    // ������ ������� � ���: ������ ���� ������ �� ����� 8 RW
    property UseAccessPassword: boolean read GetUseAccessPassword
      write SetUseAccessPassword;
    // ������������ ������ ������� � ��� RW
    property DefaultPassword: string read GetDefaultPassword
      write SetDefaultPassword;
    // ������ ��������� ���, ������������ �� ��������� RW
    property WriteLogFile: word read GetWriteLogFile write SetWriteLogFile;
    // ����������� ������: RW
    // 0 � � ������ �������� ������ ������� ����������;
    // 1 � ��������� � ������ �������������� �������� � ������ ��������� ������� ������
    property DevicesSettings: string read GetDevicesSettings
      write SetDevicesSettings;
    // ��������� ���������� ��������� � ���� ������ RW
    property DeviceSettings: string read GetDeviceSettings
      write SetDeviceSettings;
    // ��������� ����������� ���������� � ���� ������ RW
    property CurrentDeviceName: string read GetCurrentDeviceName
      write SetCurrentDeviceName; // �������� �� RW
    property DeviceCount: integer read GetDeviceCount;
    // ���������� ��: 1 � 99 R
  end;

implementation

{ TKKMDriver }

function TKKMDriver.AddField: integer;
begin
  Result := FDevice.AddField;
end;

function TKKMDriver.AdvancedDisplayWrite: integer;
begin
  Result := FDevice.AdvancedDisplayWrite;
end;

function TKKMDriver.AdvancedOpenDrawer: integer;
begin
  Result := FDevice.AdvancedOpenDrawer;
end;

function TKKMDriver.Annulate: integer;
begin
  Result := FDevice.Annulate;
end;

function TKKMDriver.Beep: integer;
begin
  Result := FDevice.Beep;
end;

function TKKMDriver.BeginDocument: integer;
begin
  Result := FDevice.BeginDocument;
end;

function TKKMDriver.BeginFiscDocument: integer;
begin
  Result := FDevice.BeginFiscDocument;
end;

function TKKMDriver.Buy: integer;
begin
  Result := FDevice.Buy;
end;

function TKKMDriver.BuyAnnulate: integer;
begin
  Result := FDevice.BuyAnnulate;
end;

function TKKMDriver.BuyReturn: integer;
begin
  Result := FDevice.BuyReturn;
end;

function TKKMDriver.CancelCheck: integer;
begin
  Result := FDevice.CancelCheck;
end;

function TKKMDriver.CashIncome: integer;
begin
  Result := FDevice.CashIncome;
end;

function TKKMDriver.CashOutcome: integer;
begin
  Result := FDevice.CashOutcome;
end;

function TKKMDriver.ClearOutput: integer;
begin
  Result := FDevice.ClearOutput;
end;

function TKKMDriver.CloseCheck: integer;
begin
  Result := FDevice.CloseCheck;
end;

constructor TKKMDriver.Create;
begin
  CoInitialize(nil);
  inherited Create;
  if VarIsEmpty(FDevice) then
    try
      FDevice := CreateOLEObject('AddIn.FprnM45');
      FDevice.ENQTimeout := 60000; // ������� �������� ������ �������� 60���
    except
      on E: exception do
        raise exception.Create(E.Message);
    end;
end;

function TKKMDriver.Delivery: integer;
begin
  Result := FDevice.Delivery;
end;

destructor TKKMDriver.Destroy;
begin
  if not VarIsEmpty(FDevice) then
    FDevice := 0;
  inherited Destroy;
  CoUninitialize;
end;

function TKKMDriver.DeviceEnableEx: integer;
begin
  Result := FDevice.DeviceEnableEx;
end;

function TKKMDriver.DisplayDraw: integer;
begin
  Result := FDevice.DisplayDraw;
end;

function TKKMDriver.EKLZGetStatus: integer;
begin
  Result := FDevice.EKLZGetStatus;
end;

function TKKMDriver.EndDocument: integer;
begin
  Result := FDevice.EndDocument;
end;

function TKKMDriver.EndFiscDocument: integer;
begin
  Result := FDevice.EndFiscDocument;
end;

function TKKMDriver.FullCut: integer;
begin
  Result := FDevice.FullCut;
end;

function TKKMDriver.GetAccessPassword: string;
begin
  Result := FDevice.AccessPassword;
end;

function TKKMDriver.GetAdvancedMode: integer;
begin
  Result := FDevice.AdvancedMode;
end;

function TKKMDriver.GetAdvancedRegistration: boolean;
begin
  Result := FDevice.AdvancedRegistration;
end;

function TKKMDriver.GetAlignment: integer;
begin
  Result := FDevice.Alignment;
end;

function TKKMDriver.GetApplicationHandle: THandle;
begin
  Result := FDevice.ApplicationHandle;
end;

function TKKMDriver.GetAttrNumber: integer;
begin
  Result := FDevice.AttrNumber;
end;

function TKKMDriver.GetAttrValue: string;
begin
  Result := FDevice.AttrValue;
end;

function TKKMDriver.GetAutoSize: boolean;
begin
  Result := FDevice.AutoSize;
end;

function TKKMDriver.GetBadParam: integer;
begin
  Result := FDevice.BadParam;
end;

function TKKMDriver.GetBadParamDescription: string;
begin
  Result := FDevice.BadParamDescription;
end;

function TKKMDriver.GetBarcode: string;
begin
  Result := FDevice.Barcode;
end;

function TKKMDriver.GetBarcodeType: integer;
begin
  Result := FDevice.BarcodeType;
end;

function TKKMDriver.GetBatteryLow: boolean;
begin
  Result := FDevice.BatteryLow;
end;

function TKKMDriver.GetBaudRate: integer;
begin
  Result := FDevice.BaudRate;
end;

function TKKMDriver.GetBufferingMode: boolean;
begin
  Result := FDevice.BufferingMode;
end;

function TKKMDriver.GetCaption: integer;
begin
  Result := FDevice.GetCaption;
end;

function TKKMDriver.GetChange: Double;
begin
  Result := FDevice.Change;
end;

function TKKMDriver.GetCharLineLength: integer;
begin
  Result := FDevice.CharLineLength;
end;

function TKKMDriver.GetCheckNumber: integer;
begin
  Result := FDevice.CheckNumber;
end;

function TKKMDriver.GetCheckPaperPresent: boolean;
begin
  Result := FDevice.CheckPaperPresent;
end;

function TKKMDriver.GetCheckState: TKKMCheckState;
begin
  Result := TKKMCheckState(FDevice.CheckState);
end;

function TKKMDriver.GetCheckType: TCheckType;
begin
  Result := TCheckType(FDevice.CheckType);
end;

function TKKMDriver.GetControlPaperPresent: boolean;
begin
  Result := FDevice.ControlPaperPresent;
end;

function TKKMDriver.GetCorrectionLevel: integer;
begin
  Result := FDevice.CorrectionLevel;
end;

function TKKMDriver.GetCount: integer;
begin
  Result := FDevice.Count;
end;

function TKKMDriver.GetCounterType: integer;
begin
  Result := FDevice.CounterType;
end;

function TKKMDriver.GetCoverOpened: boolean;
begin
  Result := FDevice.CoverOpened;
end;

function TKKMDriver.GetCurrentDeviceIndex: integer;
begin
  Result := FDevice.CurrentDeviceIndex;
end;

function TKKMDriver.GetCurrentDeviceName: string;
begin
  Result := FDevice.CurrentDeviceName;
end;

function TKKMDriver.GetCurrentDeviceNumber: integer;
begin
  Result := FDevice.CurrentDeviceNumber;
end;

function TKKMDriver.GetCurrentMode: integer;
begin
  Result := FDevice.GetCurrentMode;
end;

function TKKMDriver.GetDay: word;
begin
  Result := FDevice.Day;
end;

function TKKMDriver.GetDefaultPassword: string;
begin
  Result := FDevice.DefaultPassword;
end;

function TKKMDriver.GetDepartment: integer;
begin
  Result := FDevice.Department;
end;

function TKKMDriver.GetDestination: integer;
begin
  Result := FDevice.Destination;
end;

function TKKMDriver.GetDeviceCount: integer;
begin
  Result := FDevice.DeviceCount;
end;

function TKKMDriver.GetDeviceDescription: string;
begin
  Result := FDevice.DeviceDescription;
end;

function TKKMDriver.GetDeviceEnabled: boolean;
begin
  Result := FDevice.DeviceEnabled;
end;

function TKKMDriver.GetDeviceEnableTimeout: integer;
begin
  Result := FDevice.DeviceEnableTimeout;
end;

function TKKMDriver.GetDeviceMetrics: integer;
begin
  Result := FDevice.GetDeviceMetrics;
end;

function TKKMDriver.GetDeviceSettings: string;
begin
  Result := FDevice.DeviceSettings;
end;

function TKKMDriver.GetDevicesSettings: string;
begin
  Result := FDevice.DevicesSettings;
end;

function TKKMDriver.GetDisableParamWindow: boolean;
begin
  Result := FDevice.DisableParamWindow;
end;

function TKKMDriver.GetDisablePasswordSettings: boolean;
begin
  Result := FDevice.DisablePasswordSettings;
end;

function TKKMDriver.GetDiscountType: integer;
begin
  Result := FDevice.DiscountType;
end;

function TKKMDriver.GetDiscountTypeNumber: integer;
begin
  Result := FDevice.DiscountTypeNumber;
end;

function TKKMDriver.GetDiscountValue: Double;
begin
  Result := FDevice.DiscountValue;
end;

function TKKMDriver.GetDocNumber: integer;
begin
  Result := FDevice.DocNumber;
end;

function TKKMDriver.GetDrawerOffTimeout: integer;
begin
  Result := FDevice.DrawerOffTimeout;
end;

function TKKMDriver.GetDrawerOnQuantity: integer;
begin
  Result := FDevice.DrawerOnQuantity;
end;

function TKKMDriver.GetDrawerOnTimeout: integer;
begin
  Result := FDevice.DrawerOnTimeout;
end;

function TKKMDriver.GetDrawerOpened: boolean;
begin
  Result := FDevice.DrawerOpened;
end;

function TKKMDriver.GetDuration: integer;
begin
  Result := FDevice.Duration;
end;

function TKKMDriver.GetECRError: integer;
begin
  Result := FDevice.ECRError;
end;

function TKKMDriver.GetECRErrorDescription: string;
begin
  Result := FDevice.ECRErrorDescription;
end;

function TKKMDriver.GetEKLZFlags: integer;
begin
  Result := FDevice.EKLZFlags;
end;

function TKKMDriver.GetEnableCheckSumm: boolean;
begin
  Result := FDevice.EnableCheckSumm;
end;

function TKKMDriver.GetEndDay: word;
begin
  Result := FDevice.EndDay;
end;

function TKKMDriver.GetEndMonth: word;
begin
  Result := FDevice.EndMonth;
end;

function TKKMDriver.GetEndSession: integer;
begin
  Result := FDevice.EndSession;
end;

function TKKMDriver.GetEndYear: word;
begin
  Result := FDevice.EndYear;
end;

function TKKMDriver.GetEntryNum: integer;
begin
  Result := FDevice.EntryNum;
end;

function TKKMDriver.GetBarcodeColumns: integer;
begin
  Result := FDevice.BarcodeColumns;
end;

function TKKMDriver.GetBarcodeControlCode: boolean;
begin
  Result := FDevice.BarcodeControlCode;
end;

function TKKMDriver.GetBarcodeOptions: integer;
begin
  Result := FDevice.BarcodeOptions;
end;

function TKKMDriver.GetBarcodeRows: integer;
begin
  Result := FDevice.BarcodeRows;
end;

function TKKMDriver.GetFileName: string;
begin
  Result := FDevice.FileName;
end;

function TKKMDriver.GetFiscal: boolean;
begin
  Result := FDevice.Fiscal;
end;

function TKKMDriver.GetFontBold: boolean;
begin
  Result := FDevice.FontBold;
end;

function TKKMDriver.GetFontDblHeight: boolean;
begin
  Result := FDevice.FontDblHeight;
end;

function TKKMDriver.GetFontDblWidth: boolean;
begin
  Result := FDevice.FontDblWidth;
end;

function TKKMDriver.GetFontItalic: boolean;
begin
  Result := FDevice.FontItalic;
end;

function TKKMDriver.GetFontNegative: boolean;
begin
  Result := FDevice.FontNegative;
end;

function TKKMDriver.GetFontUnderline: boolean;
begin
  Result := FDevice.FontUnderline;
end;

function TKKMDriver.GetFrequency: integer;
begin
  Result := FDevice.Frequency;
end;

function TKKMDriver.GetFRLicense: integer;
begin
  Result := FDevice.License;
end;

function TKKMDriver.GetHeight: integer;
begin
  Result := FDevice.Height;
end;

function TKKMDriver.GetHour: word;
begin
  Result := FDevice.Hour;
end;

function TKKMDriver.GetInboundStream: string;
begin
  Result := FDevice.InboundStream;
end;

function TKKMDriver.GetINN: string;
begin
  Result := FDevice.INN;
end;

function TKKMDriver.GetIsDemo: boolean;
begin
  Result := FDevice.IsDemo;
end;

function TKKMDriver.GetJrnBrightness: integer;
begin
  Result := FDevice.JrnBrightness;
end;

function TKKMDriver.GetJrnCharLineLength: integer;
begin
  Result := FDevice.JrnCharLineLength;
end;

function TKKMDriver.GetJrnFont: integer;
begin
  Result := FDevice.JrnFont;
end;

function TKKMDriver.GetJrnFontHeight: integer;
begin
  Result := FDevice.JrnFontHeight;
end;

function TKKMDriver.GetJrnLineSpacing: integer;
begin
  Result := FDevice.JrnLineSpacing;
end;

function TKKMDriver.GetJrnPixelLineLength: integer;
begin
  Result := FDevice.JrnPixelLineLength;
end;

function TKKMDriver.GetKKMCaption: string;
begin
  Result := FDevice.Caption;
end;

function TKKMDriver.GetKKMCaptionPurpose: integer;
begin
  Result := FDevice.CaptionPurpose;
end;

function TKKMDriver.GetKKMMode: TKKMMode;
begin
  Result := TKKMMode(FDevice.Mode);
end;

function TKKMDriver.GetKKMPassword: string;
begin
  Result := FDevice.Password;
end;

function TKKMDriver.GetKKMSumm: Double;
begin
  Result := FDevice.Summ;
end;

function TKKMDriver.GetKKMValue: integer;
begin
  Result := FDevice.Value;
end;

function TKKMDriver.GetKKMValuePurpose: integer;
begin
  Result := FDevice.ValuePurpose;
end;

function TKKMDriver.GetLastError: integer;
begin
  Result := FDevice.GetLastError;
end;

function TKKMDriver.GetLastSummary: integer;
begin
  Result := FDevice.GetLastSummary;
end;

function TKKMDriver.GetLicense: integer;
begin
  Result := FDevice.GetLicense;
end;

function TKKMDriver.GetLineNumber: integer;
begin
  Result := FDevice.LineNumber;
end;

function TKKMDriver.GetLockDevices: boolean;
begin
  Result := FDevice.LockDevices;
end;

function TKKMDriver.GetMachineName: string;
begin
  Result := FDevice.MachineName;
end;

function TKKMDriver.GetMachineNumber: string;
begin
  Result := FDevice.MachineNumber;
end;

function TKKMDriver.GetMaxCaptionLength: integer;
begin
  Result := FDevice.MaxCaptionLength;
end;

function TKKMDriver.GetMinute: word;
begin
  Result := FDevice.Minute;
end;

function TKKMDriver.GetModel: integer;
begin
  Result := FDevice.Model;
end;

function TKKMDriver.GetModelCheck: boolean;
begin
  Result := FDevice.ModelCheck;
end;

function TKKMDriver.GetMonth: word;
begin
  Result := FDevice.Month;
end;

function TKKMDriver.GetName: string;
begin
  Result := FDevice.Name;
end;

function TKKMDriver.GetOperationType: integer;
begin
  Result := FDevice.OperationType;
end;

function TKKMDriver.GetOperatorName: string;
begin
  Result := FDevice.OperatorName;
end;

function TKKMDriver.GetOperatorNo: integer;
begin
  Result := FDevice.OperatorNo;
end;

function TKKMDriver.GetOperatorPassword: string;
begin
  Result := FDevice.OperatorPassword;
end;

function TKKMDriver.GetOutBoundStream: string;
begin
  Result := FDevice.OutboundStream;
end;

function TKKMDriver.GetOutOfPaper: boolean;
begin
  Result := FDevice.OutOfPaper;
end;

function TKKMDriver.GetPassword: integer;
begin
  Result := FDevice.GetPassword;
end;

function TKKMDriver.GetPasswordEntered: boolean;
begin
  Result := FDevice.PasswordEntered;
end;

function TKKMDriver.GetPercents: Double;
begin
  Result := FDevice.Percents;
end;

function TKKMDriver.GetPictureNumber: integer;
begin
  Result := FDevice.PictureNumber;
end;

function TKKMDriver.GetPictureState: integer;
begin
  Result := FDevice.PictureState;
end;

function TKKMDriver.GetPixelLineLength: integer;
begin
  Result := FDevice.PixelLineLength;
end;

function TKKMDriver.GetKKMPointPosition: word;
begin
  Result := FDevice.PointPosition;
end;

function TKKMDriver.GetPortNumber: integer;
begin
  Result := FDevice.PortNumber;
end;

function TKKMDriver.GetPrice: Double;
begin
  Result := FDevice.Price;
end;

function TKKMDriver.GetPrintBarcodeText: integer;
begin
  Result := FDevice.PrintBarcodeText;
end;

function TKKMDriver.GetPrinterConnectionFailed: boolean;
begin
  Result := FDevice.PrinterConnectionFailed;
end;

function TKKMDriver.GetPrinterCutMechanismError: boolean;
begin
  Result := FDevice.PrinterCutMechanismError;
end;

function TKKMDriver.GetPrinterMechanismError: boolean;
begin
  Result := FDevice.PrinterMechanismError;
end;

function TKKMDriver.GetPrinterOverheatError: boolean;
begin
  Result := FDevice.PrinterOverheatError;
end;

function TKKMDriver.GetPrintPurpose: integer;
begin
  Result := FDevice.PrintPurpose;
end;

function TKKMDriver.GetQuantity: Double;
begin
  Result := FDevice.Quantity;
end;

function TKKMDriver.GetRange: integer;
begin
  Result := FDevice.GetRange;
end;

function TKKMDriver.GetRcpCharLineLength: integer;
begin
  Result := FDevice.RcpCharLineLength;
end;

function TKKMDriver.GetRcpPixelLineLength: integer;
begin
  Result := FDevice.RcpPixelLineLength;
end;

function TKKMDriver.GetRecBrightness: integer;
begin
  Result := FDevice.RecBrightness;
end;

function TKKMDriver.GetRecFont: integer;
begin
  Result := FDevice.RecFont;
end;

function TKKMDriver.GetRecFontHeight: integer;
begin
  Result := FDevice.RecFontHeight;
end;

function TKKMDriver.GetRecLineSpacing: integer;
begin
  Result := FDevice.RecLineSpacing;
end;

function TKKMDriver.GetRegister: integer;
begin
  Result := FDevice.GetRegister;
end;

function TKKMDriver.GetRegisterNumber: integer;
begin
  Result := FDevice.RegisterNumber;
end;

function TKKMDriver.GetRemainder: Double;
begin
  Result := FDevice.Remainder;
end;

function TKKMDriver.GetReportType: TKKMReportType;
begin
  Result := TKKMReportType(FDevice.ReportType);
end;

function TKKMDriver.GetResultCode: integer;
begin
  Result := FDevice.ResultCode;
end;

function TKKMDriver.GetResultDescription: string;
begin
  Result := FDevice.ResultDescription;
end;

function TKKMDriver.GetROMVersion: string;
begin
  Result := FDevice.ROMVersion;
end;

function TKKMDriver.GetScale: Double;
begin
  Result := FDevice.Scale;
end;

function TKKMDriver.GetScaleVB: Double;
begin
  Result := FDevice.ScaleVB;
end;

function TKKMDriver.GetSecond: word;
begin
  Result := FDevice.Second;
end;

function TKKMDriver.GetSerialNumber: string;
begin
  Result := FDevice.SerialNumber;
end;

function TKKMDriver.GetServerVersion: string;
begin
  Result := FDevice.ServerVersion;
end;

function TKKMDriver.GetSession: integer;
begin
  Result := FDevice.Session;
end;

function TKKMDriver.GetSessionOpened: boolean;
begin
  Result := FDevice.SessionOpened;
end;

function TKKMDriver.GetSettings: integer;
begin
  Result := FDevice.GetSettings;
end;

function TKKMDriver.GetShowProgress: boolean;
begin
  Result := FDevice.ShowProgress;
end;

function TKKMDriver.GetSlipCharLineLength: integer;
begin
  Result := FDevice.SlipCharLineLength;
end;

function TKKMDriver.GetSlipDocCharLineLength: integer;
begin
  Result := FDevice.SlipDocCharLineLength;
end;

function TKKMDriver.GetSlipDocCopyCountHorz: integer;
begin
  Result := FDevice.SlipDocCopyCountHorz;
end;

function TKKMDriver.GetSlipDocCopyCountVert: integer;
begin
  Result := FDevice.SlipDocCopyCountVert;
end;

function TKKMDriver.GetSlipDocCopyShiftHorz: integer;
begin
  Result := SlipDocCopyShiftHorz;
end;

function TKKMDriver.GetSlipDocCopyShiftVert: integer;
begin
  Result := FDevice.SlipDocCopyShiftVert;
end;

function TKKMDriver.GetSlipDocLeftMargin: integer;
begin
  Result := FDevice.SlipDocLeftMargin;
end;

function TKKMDriver.GetSlipDocOrientation: integer;
begin
  Result := FDevice.SlipDocOrientation;
end;

function TKKMDriver.GetSlipDocTopMargin: integer;
begin
  Result := FDevice.SlipDocTopMargin;
end;

function TKKMDriver.GetSlipPixelLineLength: integer;
begin
  Result := FDevice.SlipPixelLineLength;
end;

function TKKMDriver.GetSlotNumber: integer;
begin
  Result := FDevice.SlotNumber;
end;

function TKKMDriver.GetStatus: integer;
begin
  Result := FDevice.GetStatus;
end;

function TKKMDriver.GetStatusPicture: integer;
begin
  Result := FDevice.GetSatusPicture;
end;

function TKKMDriver.GetStatusPictureArray: integer;
begin
  Result := FDevice.GetStatusPictureArray;
end;

function TKKMDriver.GetStreamFormat: integer;
begin
  Result := FDevice.StreamFormat;
end;

function TKKMDriver.GetSumm: integer;
begin
  Result := FDevice.GetSumm;
end;

function TKKMDriver.GetSupportedMode: integer;
begin
  Result := FDevice.GetSupportedMode;
end;

function TKKMDriver.GetTaxTypeNumber: integer;
begin
  Result := FDevice.TaxTypeNumber;
end;

// function TKKMDriver.GetTestMode: boolean;
// begin
// Result := FDevice.TestMode;
// end;

function TKKMDriver.GetTextWrap: integer;
begin
  Result := FDevice.TextWrap;
end;

function TKKMDriver.GetTransactionType: integer;
begin
  Result := FDevice.TransactionType;
end;

function TKKMDriver.GetTypeClose: TTypeClose;
begin
  Result := TTypeClose(FDevice.TypeClose);
end;

function TKKMDriver.GetUmode: TDeviceMode;
begin
  Result := TDeviceMode(FDevice.Umode);
end;

function TKKMDriver.GetUmodel: integer;
begin
  Result := FDevice.Umodel;
end;

function TKKMDriver.GetUnitVersion: integer;
begin
  Result := FDevice.GetUnitVersion;
end;

function TKKMDriver.GetUseAccessPassword: boolean;
begin
  Result := FDevice.UseAccessPassword;
end;

function TKKMDriver.GetValue: integer;
begin
  Result := FDevice.GetValue;
end;

function TKKMDriver.GetVersion: string;
begin
  Result := FDevice.Version;
end;

function TKKMDriver.GetWidth: integer;
begin
  Result := FDevice.Width;
end;

function TKKMDriver.GetWriteLogFile: word;
begin
  Result := FDevice.WriteLogFile;
end;

function TKKMDriver.GetYear: word;
begin
  Result := FDevice.Year;
end;

function TKKMDriver.LockKeyboard: integer;
begin
  Result := FDevice.LockKeyboard;
end;

function TKKMDriver.NewDocument: integer;
begin
  Result := FDevice.NewDocument;
end;

function TKKMDriver.OpenCheck: integer;
begin
  Result := FDevice.OpenCheck;
end;

function TKKMDriver.OpenDrawer: integer;
begin
  Result := FDevice.OpenDrawer;
end;

function TKKMDriver.OpenSession: integer;
begin
  Result := FDevice.OpenSession;
end;

function TKKMDriver.PartialCut: integer;
begin
  Result := FDevice.PartialCut;
end;

function TKKMDriver.Payment: integer;
begin
  Result := FDevice.Payment;
end;

function TKKMDriver.PercentsCharge: integer;
begin
  Result := FDevice.PercentCharge;
end;

function TKKMDriver.PercentsDiscount: integer;
begin
  Result := FDevice.PercentsDiscount;
end;

function TKKMDriver.PowerOff: integer;
begin
  Result := FDevice.PowerOff;
end;

function TKKMDriver.PrintBarcode: integer;
begin
  Result := FDevice.PrintBarcode;
end;

function TKKMDriver.PrintBitmap: integer;
begin
  Result := FDevice.PrintBitmap;
end;

function TKKMDriver.PrintBitmapFromFile: integer;
begin
  Result := FDevice.PrintBitmapFromFile;
end;

function TKKMDriver.PrintField: integer;
begin
  Result := FDevice.PrintField;
end;

function TKKMDriver.PrintFooter: integer;
begin
  Result := FDevice.PrintFooter;
end;

function TKKMDriver.PrintHeader: integer;
begin
  Result := FDevice.PrintHeader;
end;

function TKKMDriver.PrintPicture: integer;
begin
  Result := FDevice.PrintPicture;
end;

function TKKMDriver.PrintString: integer;
begin
  Result := FDevice.PrintString;
end;

function TKKMDriver.Registration: integer;
begin
  Result := FDevice.Registration;
end;

function TKKMDriver.Report: integer;
begin
  Result := FDevice.Report;
end;

function TKKMDriver.ResetChargeDiscount: integer;
begin
  Result := FDevice.ResetChargeDiscount;
end;

function TKKMDriver.ResetMode: integer;
begin
  Result := FDevice.ResetMode;
end;

function TKKMDriver.ResetTax: integer;
begin
  Result := FDevice.ResetTax;
end;

function TKKMDriver.Return: integer;
begin
  Result := FDevice.Return;
end;

function TKKMDriver.RunCommand: integer;
begin
  Result := FDevice.RunCommand;
end;

procedure TKKMDriver.SetAccessPassword(const Value: string);
begin
  FDevice.AccessPassword := Value;
end;

procedure TKKMDriver.SetAdvancedMode(const Value: integer);
begin
  FDevice.AdvancedMode := Value;
end;

procedure TKKMDriver.SetAdvancedRegistration(const Value: boolean);
begin
  FDevice.AdvancedRegistration := Value;
end;

procedure TKKMDriver.SetAlignment(const Value: integer);
begin
  FDevice.Alignment := Value;
end;

procedure TKKMDriver.SetApplicationHandle(const Value: THandle);
begin
  FDevice.ApplicationHandle := Value;
end;

procedure TKKMDriver.SetAttrNumber(const Value: integer);
begin
  FDevice.AttrNumber := Value;
end;

procedure TKKMDriver.SetAttrValue(const Value: string);
begin
  FDevice.AttrValue := Value;
end;

procedure TKKMDriver.SetAutoSize(const Value: boolean);
begin
  FDevice.AutoSize := Value;
end;

procedure TKKMDriver.SetBarcode(const Value: string);
begin
  FDevice.Barcode := Value;
end;

procedure TKKMDriver.SetBarcodeColumns(const Value: integer);
begin
  FDevice.BarcodeColumns := Value;
end;

procedure TKKMDriver.SetBarcodeControlCode(const Value: boolean);
begin
  FDevice.BarcodeControlCode := Value;
end;

procedure TKKMDriver.SetBarcodeOptions(const Value: integer);
begin
  FDevice.BarcodeOptions := Value;
end;

procedure TKKMDriver.SetBarcodeRows(const Value: integer);
begin
  FDevice.BarcodeRows := Value;
end;

procedure TKKMDriver.SetBarcodeType(const Value: integer);
begin
  FDevice.BarcodeType := Value;
end;

procedure TKKMDriver.SetBaudRate(const Value: integer);
begin
  FDevice.BaudRate := Value;
end;

procedure TKKMDriver.SetBufferingMode(const Value: boolean);
begin
  FDevice.BufferingMode := Value;
end;

function TKKMDriver.SetCaption: integer;
begin
  Result := FDevice.SetCaption;
end;

procedure TKKMDriver.SetCheckNumber(const Value: integer);
begin
  FDevice.CheckNumber := Value;
end;

procedure TKKMDriver.SetCheckType(const Value: TCheckType);
begin
  FDevice.CheckType := integer(Value);
end;

procedure TKKMDriver.SetCorrectionLevel(const Value: integer);
begin
  FDevice.CorrectionLevel := Value;
end;

procedure TKKMDriver.SetCount(const Value: integer);
begin
  FDevice.Count := Value;
end;

procedure TKKMDriver.SetCounterType(const Value: integer);
begin
  FDevice.CounterType := Value;
end;

procedure TKKMDriver.SetCurrentDeviceIndex(const Value: integer);
begin
  FDevice.CurrentDeviceIndex := Value;
end;

procedure TKKMDriver.SetCurrentDeviceName(const Value: string);
begin
  FDevice.CurrentDeviceName := Value;
end;

procedure TKKMDriver.SetCurrentDeviceNumber(const Value: integer);
begin
  FDevice.CurrentDeviceNumber := Value;
end;

function TKKMDriver.SetDate: integer;
begin
  Result := FDevice.SetDate;
end;

procedure TKKMDriver.SetDay(const Value: word);
begin
  FDevice.Day := Value;
end;

procedure TKKMDriver.SetDefaultPassword(const Value: string);
begin
  FDevice.DefaultPassword := Value;
end;

procedure TKKMDriver.SetDepartment(const Value: integer);
begin
  FDevice.Department := Value;
end;

procedure TKKMDriver.SetDestination(const Value: integer);
begin
  FDevice.Destination := Value;
end;

procedure TKKMDriver.SetDeviceEnabled(const Value: boolean);
begin
  FDevice.DeviceEnabled := Value;
end;

procedure TKKMDriver.SetDeviceEnableTimeout(const Value: integer);
begin
  FDevice.DeviceEnableTimeout := Value;
end;

procedure TKKMDriver.SetDeviceSettings(const Value: string);
begin
  FDevice.DeviceSettings := Value;
end;

procedure TKKMDriver.SetDevicesSettings(const Value: string);
begin
  FDevice.DevicesSettings := Value;
end;

procedure TKKMDriver.SetDisableParamWindow(const Value: boolean);
begin
  FDevice.DisableParamWindow := Value;
end;

procedure TKKMDriver.SetDisablePasswordSettings(const Value: boolean);
begin
  FDevice.DisablePasswordSettings := Value;
end;

procedure TKKMDriver.SetDiscountType(const Value: integer);
begin
  FDevice.DiscountType := Value;
end;

procedure TKKMDriver.SetDiscountTypeNumber(const Value: integer);
begin
  FDevice.DiscountTypeNumber := Value;
end;

procedure TKKMDriver.SetDiscountValue(const Value: Double);
begin
  FDevice.DiscountValue := Value;
end;

procedure TKKMDriver.SetDrawerOffTimeout(const Value: integer);
begin
  FDevice.DrawerOffTimeout := Value;
end;

procedure TKKMDriver.SetDrawerOnQuantity(const Value: integer);
begin
  FDevice.DrawerOnQuantity := Value;
end;

procedure TKKMDriver.SetDrawerOnTimeout(const Value: integer);
begin
  FDevice.DrawerOnTimeout := Value;
end;

procedure TKKMDriver.SetDuration(const Value: integer);
begin
  FDevice.Duration := Value;
end;

procedure TKKMDriver.SetEKLZFlags(const Value: integer);
begin
  FDevice.EKLZFlags := Value;
end;

procedure TKKMDriver.SetEnableCheckSumm(const Value: boolean);
begin
  FDevice.EnableCheckSumm := Value;
end;

procedure TKKMDriver.SetEndDay(const Value: word);
begin
  FDevice.EndDay := Value;
end;

procedure TKKMDriver.SetEndMonth(const Value: word);
begin
  FDevice.EndMonth := Value;
end;

procedure TKKMDriver.SetEndSession(const Value: integer);
begin
  FDevice.EndSession := Value;
end;

procedure TKKMDriver.SetEndYear(const Value: word);
begin
  FDevice.EndYear := Value;
end;

procedure TKKMDriver.SetEntryNum(const Value: integer);
begin
  FDevice.EntryNum := Value;
end;

procedure TKKMDriver.SetFileName(const Value: string);
begin
  FDevice.FileName := Value;
end;

procedure TKKMDriver.SetFontBold(const Value: boolean);
begin
  FDevice.FontBold := Value;
end;

procedure TKKMDriver.SetFontDblHeight(const Value: boolean);
begin
  FDevice.FontDblHeight := Value;
end;

procedure TKKMDriver.SetFontDblWidth(const Value: boolean);
begin
  FDevice.FontDblWidth := Value;
end;

procedure TKKMDriver.SetFontItalic(const Value: boolean);
begin
  FDevice.FontItalic := Value;
end;

procedure TKKMDriver.SetFontNegative(const Value: boolean);
begin
  FDevice.FontNegative := Value;
end;

procedure TKKMDriver.SetFontUnderline(const Value: boolean);
begin
  FDevice.FontUnderline := Value;
end;

procedure TKKMDriver.SetFrequency(const Value: integer);
begin
  FDevice.Frequency := Value;
end;

procedure TKKMDriver.SetFRLicense(const Value: integer);
begin
  FDevice.License := Value;
end;

procedure TKKMDriver.SetHeight(const Value: integer);
begin
  FDevice.Height := Value;
end;

procedure TKKMDriver.SetHour(const Value: word);
begin
  FDevice.Hour := Value;
end;

procedure TKKMDriver.SetInboundStream(const Value: string);
begin
  FDevice.InboundStream := Value;
end;

procedure TKKMDriver.SetJrnBrightness(const Value: integer);
begin
  FDevice.JrnBrightness := Value;
end;

procedure TKKMDriver.SetJrnFont(const Value: integer);
begin
  FDevice.JrnFont := Value;
end;

procedure TKKMDriver.SetJrnFontHeight(const Value: integer);
begin
  FDevice.JrnFontHeight := Value;
end;

procedure TKKMDriver.SetJrnLineSpacing(const Value: integer);
begin
  FDevice.JrnLineSpacing := Value;
end;

procedure TKKMDriver.SetKKMCaption(Value: string);
begin
  FDevice.Caption := Value;
end;

procedure TKKMDriver.SetKKMCaptionPurpose(const Value: integer);
begin
  FDevice.CaptionPurpose := Value;
end;

procedure TKKMDriver.SetKKMMode(Value: TKKMMode);
begin
  FDevice.Mode := integer(Value);
end;

procedure TKKMDriver.SetKKMPassword(Value: string);
begin
  FDevice.Password := Value;
end;

procedure TKKMDriver.SetKKMPointPosition(Value: word);
begin
  FDevice.PointPosition := Value;
end;

procedure TKKMDriver.SetKKMSumm(const Value: Double);
begin
  FDevice.Summ := Value;
end;

procedure TKKMDriver.SetKKMValue(Value: integer);
begin
  FDevice.Value := Value;
end;

procedure TKKMDriver.SetKKMValuePurpose(const Value: integer);
begin
  FDevice.ValuePurpose := Value;
end;

function TKKMDriver.SetLicense: integer;
begin
  Result := FDevice.SetLicense;
end;

procedure TKKMDriver.SetLineNumber(const Value: integer);
begin
  FDevice.LineNumber := Value;
end;

procedure TKKMDriver.SetLockDevices(const Value: boolean);
begin
  FDevice.LockDevices := Value;
end;

procedure TKKMDriver.SetMachineName(const Value: string);
begin
  FDevice.MachineName := Value;
end;

procedure TKKMDriver.SetMachineNumber(const Value: string);
begin
  FDevice.MachineNumber := Value;
end;

procedure TKKMDriver.SetMaxCaptionLength(const Value: integer);
begin
  FDevice.MaxCaptionLength := Value;
end;

procedure TKKMDriver.SetMinute(const Value: word);
begin
  FDevice.Minute := Value;
end;

function TKKMDriver.SetMode: integer;
begin
  Result := FDevice.SetMode;
end;

procedure TKKMDriver.SetModel(const Value: integer);
begin
  FDevice.Model := Value;
end;

procedure TKKMDriver.SetModelCheck(const Value: boolean);
begin
  FDevice.ModelCheck := Value;
end;

procedure TKKMDriver.SetMonth(const Value: word);
begin
  FDevice.Month := Value;
end;

procedure TKKMDriver.Setname(const Value: string);
begin
  FDevice.Name := Value;
end;

procedure TKKMDriver.SetOperationType(const Value: integer);
begin
  FDevice.OperationType := Value;
end;

procedure TKKMDriver.SetOperatorName(const Value: string);
begin
  FDevice.OperatorName := Value;
end;

procedure TKKMDriver.SetOperatorNo(const Value: integer);
begin
  FDevice.OperatorNo := Value;
end;

procedure TKKMDriver.SetOperatorPassword(const Value: string);
begin
  FDevice.OperatorPassword := Value;
end;

procedure TKKMDriver.SetOutBoundStream(const Value: string);
begin
  FDevice.OutboundStream := Value;
end;

function TKKMDriver.SetPassword: integer;
begin
  Result := FDevice.SetPassword;
end;

procedure TKKMDriver.SetPercents(const Value: Double);
begin
  FDevice.Percents := Value;
end;

procedure TKKMDriver.SetPictureNumber(const Value: integer);
begin
  FDevice.PictureNumber := Value;
end;

function TKKMDriver.SetPointPosition: integer;
begin
  Result := FDevice.SetPointPosition;
end;

procedure TKKMDriver.SetPortNumber(const Value: integer);
begin
  FDevice.PortNumber := Value;
end;

procedure TKKMDriver.SetPrice(const Value: Double);
begin
  FDevice.Price := Value;
end;

procedure TKKMDriver.SetPrintBarcodeText(const Value: integer);
begin
  FDevice.PrintBarcodeText := Value;
end;

procedure TKKMDriver.SetPrintPurpose(const Value: integer);
begin
  FDevice.PrintPurpose := Value;
end;

procedure TKKMDriver.SetQuantity(const Value: Double);
begin
  FDevice.Quantity := Value;
end;

procedure TKKMDriver.SetRecBrightness(const Value: integer);
begin
  FDevice.RecBrightness := Value;
end;

procedure TKKMDriver.SetRecFont(const Value: integer);
begin
  FDevice.RecFont := Value;
end;

procedure TKKMDriver.SetRecFontHeight(const Value: integer);
begin
  FDevice.RecFontHeight := Value;
end;

procedure TKKMDriver.SetRecLineSpacing(const Value: integer);
begin
  FDevice.RecLineSpacing := Value;
end;

procedure TKKMDriver.SetRegisterNumber(const Value: integer);
begin
  FDevice.RegisterNumber := Value;
end;

procedure TKKMDriver.SetReportType(const Value: TKKMReportType);
begin
  FDevice.ReportType := integer(Value);
end;

procedure TKKMDriver.SetScale(const Value: Double);
begin
  FDevice.Scale := Value;
end;

procedure TKKMDriver.SetScaleVB(const Value: Double);
begin
  FDevice.ScaleVB := Value;
end;

procedure TKKMDriver.SetSecond(const Value: word);
begin
  FDevice.Second := Value;
end;

procedure TKKMDriver.SetSession(const Value: integer);
begin
  FDevice.Session := Value;
end;

function TKKMDriver.SetSettings: integer;
begin
  Result := FDevice.SetSettings;
end;

procedure TKKMDriver.SetShowProgress(const Value: boolean);
begin
  FDevice.ShowProgress := Value;
end;

procedure TKKMDriver.SetSlipDocCopyCountHorz(const Value: integer);
begin
  FDevice.SlipDocCopyCountHorz := Value;
end;

procedure TKKMDriver.SetSlipDocCopyCountVert(const Value: integer);
begin
  FDevice.SlipDocCopyCountVert := Value;
end;

procedure TKKMDriver.SetSlipDocCopyShiftHorz(const Value: integer);
begin
  FDevice.SlipDocCopyShiftHorz := Value;
end;

procedure TKKMDriver.SetSlipDocCopyShiftVert(const Value: integer);
begin
  FDevice.SlipDocCopyShiftVert := Value;
end;

procedure TKKMDriver.SetSlipDocLeftMargin(const Value: integer);
begin
  FDevice.SlipDocLeftMargin := Value;
end;

procedure TKKMDriver.SetSlipDocOrientation(const Value: integer);
begin
  FDevice.SlipDocOrientation := Value;
end;

procedure TKKMDriver.SetSlipDocTopMargin(const Value: integer);
begin
  FDevice.SlipDocTopMargin := Value;
end;

procedure TKKMDriver.SetSlotNumber(const Value: integer);
begin
  FDevice.SlotNumber := Value;
end;

procedure TKKMDriver.SetStreamFormat(const Value: integer);
begin
  FDevice.StreamFormat := Value;
end;

procedure TKKMDriver.SetTaxTypeNumber(const Value: integer);
begin
  FDevice.TaxTypeNumber := Value;
end;

// procedure TKKMDriver.SetTestMode(const Value: boolean);
// begin
// FDevice.TestMode := Value;
// end;

procedure TKKMDriver.SetTextWrap(const Value: integer);
begin
  FDevice.TextWrap := Value;
end;

function TKKMDriver.SetTime: integer;
begin
  Result := FDevice.SetTime;
end;

procedure TKKMDriver.SetTransactionType(const Value: integer);
begin
  FDevice.TransactionType := Value;
end;

procedure TKKMDriver.SetTypeClose(const Value: TTypeClose);
begin
  FDevice.TypeClose := integer(Value);
end;

procedure TKKMDriver.SetUmode(const Value: TDeviceMode);
begin
  FDevice.Umode := integer(Value);
end;

procedure TKKMDriver.SetUmodel(const Value: integer);
begin
  FDevice.Umodel := Value;
end;

procedure TKKMDriver.SetUseAccessPassword(const Value: boolean);
begin
  FDevice.UseAccessPassword := Value;
end;

function TKKMDriver.SetValue: integer;
begin
  Result := FDevice.SetValue;
end;

procedure TKKMDriver.SetWidth(const Value: integer);
begin
  FDevice.Width := Value;
end;

procedure TKKMDriver.SetWriteLogFile(const Value: word);
begin
  FDevice.WriteLogFile := Value;
end;

procedure TKKMDriver.SetYear(const Value: word);
begin
  FDevice.Year := Value;
end;

function TKKMDriver.ShowProperties: integer;
begin
  Result := FDevice.ShowProperties;
end;

function TKKMDriver.Sound: integer;
begin
  Result := FDevice.Sound;
end;

function TKKMDriver.Storno: integer;
begin
  Result := FDevice.Storno;
end;

function TKKMDriver.StornoPayment: integer;
begin
  Result := FDevice.StornoPayment;
end;

function TKKMDriver.SummCharge: integer;
begin
  Result := FDevice.SummCharge;
end;

function TKKMDriver.SummDiscount: integer;
begin
  Result := FDevice.SummDiscount;
end;

function TKKMDriver.SummTax: integer;
begin
  Result := FDevice.SummTax;
end;

function TKKMDriver.UnLockKeyboard: integer;
begin
  Result := FDevice.UnLockKeyboard;
end;

function TKKMDriver.WriteAttribute: integer;
begin
  Result := FDevice.WriteAttribute;
end;


end.