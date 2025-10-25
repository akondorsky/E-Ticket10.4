unit Atol_10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,Vcl.OleAuto,System.Win.ComObj;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  fptr: OleVariant;

implementation
uses Fptr10Lib_TLB;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
    errcode:Integer;
    errString:String;
    isOpened:LongBool;
begin
  if fptr.isOpened then Exit;
  try
     if fptr.open <> 0 then
        begin
          errcode:=fptr.errorCode;
          errString:=fptr.ErrorDescription();
          //fptr.cancelReceipt;
        end
       else
          isOpened:=FPTR.isOpened;
   except
     on E: Exception do
     begin
      ShowMessage(E.Message);
     end;
  end;


end;


procedure TForm1.Button2Click(Sender: TObject);
begin
 if FPTR.isOpened then fptr.close;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
    operatorID:       Longint;
    logicalNumber:    Longint;
    shiftState:       Longint;
    model:            Longint;
    mode:             Longint;
    submode:          Longint;
    receiptNumber:    Longint;
    documentNumber:   Longint;
    shiftNumber:      Longint;
    receiptType:      Longint;
    documentType:     Longint;
    lineLength:       Longint;
    lineLengthPix:    Longint;

    receiptSum: Double;

    isOperatorRegistered:    LongBool;
    isFiscalDevice:          LongBool;
    isFiscalFN:              LongBool;
    isFNPresent:             LongBool;
    isInvalidFN:             LongBool;
    isCashDrawerOpened:      LongBool;
    isPaperPresent:          LongBool;
    isPaperNearEnd:          LongBool;
    isCoverOpened:           LongBool;
    isPrinterConnectionLost: LongBool;
    isPrinterError:          LongBool;
    isCutError:              LongBool;
    isPrinterOverheat:       LongBool;
    isDeviceBlocked:         LongBool;

    dateTime: TDateTime;

    serialNumber:       String;
    modelName:          String;
    firmwareVersion:    String;
begin
    fptr.setParam(fptr.LIBFPTR_PARAM_DATA_TYPE, fptr.LIBFPTR_DT_STATUS);
    fptr.queryData;

    operatorID      := fptr.getParamInt(fptr.LIBFPTR_PARAM_OPERATOR_ID);
    logicalNumber   := fptr.getParamInt(fptr.LIBFPTR_PARAM_LOGICAL_NUMBER);
    shiftState      := fptr.getParamInt(fptr.LIBFPTR_PARAM_SHIFT_STATE);
    model           := fptr.getParamInt(fptr.LIBFPTR_PARAM_MODEL);
    mode            := fptr.getParamInt(fptr.LIBFPTR_PARAM_MODE);
    submode         := fptr.getParamInt(fptr.LIBFPTR_PARAM_SUBMODE);
    receiptNumber   := fptr.getParamInt(fptr.LIBFPTR_PARAM_RECEIPT_NUMBER);
    documentNumber  := fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENT_NUMBER);
    shiftNumber     := fptr.getParamInt(fptr.LIBFPTR_PARAM_SHIFT_NUMBER);
    receiptType     := fptr.getParamInt(fptr.LIBFPTR_PARAM_RECEIPT_TYPE);
    documentType    := fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENT_TYPE);
    lineLength      := fptr.getParamInt(fptr.LIBFPTR_PARAM_RECEIPT_LINE_LENGTH);
    lineLengthPix   := fptr.getParamInt(fptr.LIBFPTR_PARAM_RECEIPT_LINE_LENGTH_PIX);

    receiptSum := fptr.getParamDouble(fptr.LIBFPTR_PARAM_RECEIPT_SUM);

    isOperatorRegistered    := fptr.getParamBool(fptr.LIBFPTR_PARAM_OPERATOR_REGISTERED);
    isFiscalDevice          := fptr.getParamBool(fptr.LIBFPTR_PARAM_FISCAL);
    isFiscalFN              := fptr.getParamBool(fptr.LIBFPTR_PARAM_FN_FISCAL);
    isFNPresent             := fptr.getParamBool(fptr.LIBFPTR_PARAM_FN_PRESENT);
    isInvalidFN             := fptr.getParamBool(fptr.LIBFPTR_PARAM_INVALID_FN);
    isCashDrawerOpened      := fptr.getParamBool(fptr.LIBFPTR_PARAM_CASHDRAWER_OPENED);
    isPaperPresent          := fptr.getParamBool(fptr.LIBFPTR_PARAM_RECEIPT_PAPER_PRESENT);
    isPaperNearEnd          := fptr.getParamBool(fptr.LIBFPTR_PARAM_PAPER_NEAR_END);
    isCoverOpened           := fptr.getParamBool(fptr.LIBFPTR_PARAM_COVER_OPENED);
    isPrinterConnectionLost := fptr.getParamBool(fptr.LIBFPTR_PARAM_PRINTER_CONNECTION_LOST);
    isPrinterError          := fptr.getParamBool(fptr.LIBFPTR_PARAM_PRINTER_ERROR);
    isCutError              := fptr.getParamBool(fptr.LIBFPTR_PARAM_CUT_ERROR);
    isPrinterOverheat       := fptr.getParamBool(fptr.LIBFPTR_PARAM_PRINTER_OVERHEAT);
    isDeviceBlocked         := fptr.getParamBool(fptr.LIBFPTR_PARAM_BLOCKED);

    dateTime := fptr.getParamDateTime(fptr.LIBFPTR_PARAM_DATE_TIME);

    serialNumber    := fptr.getParamString(fptr.LIBFPTR_PARAM_SERIAL_NUMBER);
    modelName       := fptr.getParamString(fptr.LIBFPTR_PARAM_MODEL_NAME);
    firmwareVersion := fptr.getParamString(fptr.LIBFPTR_PARAM_UNIT_VERSION);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
    fptr.setParam(fptr.LIBFPTR_PARAM_REPORT_TYPE, fptr.LIBFPTR_RT_KKT_INFO);
    fptr.report;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
    fptr.setParam(fptr.LIBFPTR_PARAM_REPORT_TYPE, fptr.LIBFPTR_RT_OFD_TEST);
    fptr.report;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
    state:      Longint;
    number:     Longint;
    dateTime:   TDateTime;
begin
    fptr.setParam(fptr.LIBFPTR_PARAM_DATA_TYPE, fptr.LIBFPTR_DT_SHIFT_STATE);
    fptr.queryData;

    state       := fptr.getParamInt(fptr.LIBFPTR_PARAM_SHIFT_STATE);
    number      := fptr.getParamInt(fptr.LIBFPTR_PARAM_SHIFT_NUMBER);
    dateTime    := fptr.getParamDateTime(fptr.LIBFPTR_PARAM_DATE_TIME);

    case state of
    0 : ShowMessage('LIBFPTR_SS_CLOSED');
    1 : ShowMessage('LIBFPTR_SS_OPENED');
    2 : ShowMessage('LIBFPTR_SS_EXPIRED');
    end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not VarIsEmpty(fptr) then fptr:=Unassigned;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
try
     fptr:= CreateOleObject('AddIn.Fptr10');
     fptr.setSingleSetting(fptr.LIBFPTR_SETTING_MODEL, IntToStr(fptr.LIBFPTR_MODEL_ATOL_25F));
     fptr.setSingleSetting(fptr.LIBFPTR_SETTING_PORT, IntToStr(fptr.LIBFPTR_PORT_TCPIP));
     fptr.setSingleSetting(fptr.LIBFPTR_SETTING_IPADDRESS,'192.168.3.42');
     fptr.setSingleSetting(fptr.LIBFPTR_SETTING_IPPORT,'5555');
     fptr.applySingleSettings;

  except
     on E: Exception do
     begin
      ShowMessage(E.Message);
     end;

end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
//
end;

end.
