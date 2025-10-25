unit Atolv10_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, PropFilerEh, PropStorageEh, System.Actions,
  Vcl.ActnList, Vcl.Menus, PrnDbgeh, Vcl.Mask, Vcl.StdCtrls, Vcl.ComCtrls,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, DBCtrlsEh, Vcl.Buttons,System.DateUtils,Vcl.OleAuto;

type
  TFAtol_v10 = class(TForm)
    InfoLabel: TLabel;
    RxLabel2: TLabel;
    RxLabel1: TLabel;
    RxLabel3: TLabel;
    RxLabel4: TLabel;
    Label1: TLabel;
    Lbl_Connection: TLabel;
    SpeedButton1: TSpeedButton;
    FindBtn: TSpeedButton;
    FiscalSaleButton: TButton;
    GroupBox2: TGroupBox;
    XReportButton: TButton;
    ZReportButton: TButton;
    E_Sum: TDBNumberEditEh;
    DBGridEh1: TDBGridEh;
    DBGridEh3: TDBGridEh;
    D1: TDateTimePicker;
    D2: TDateTimePicker;
    Button1: TButton;
    Ch_vat: TCheckBox;
    E_Vat: TDBNumberEditEh;
    DBGridEh2: TDBGridEh;
    DBGridEh4: TDBGridEh;
    E_Nomer: TMaskEdit;
    ChTest: TCheckBox;
    PrintDBGridEh1: TPrintDBGridEh;
    BcBarPopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    ActionList1: TActionList;
    A_KkmConnect: TAction;
    A_KKMDisconnect: TAction;
    A_OpenShift: TAction;
    A_DelItem: TAction;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    PopMn_BillItem: TPopupMenu;
    N12: TMenuItem;
    N13: TMenuItem;
    MainMn1: TMainMenu;
    Label3: TLabel;
    Lbl_Shift: TLabel;
    Button2: TButton;
    Mn_KKm: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    A_KKMCondition: TAction;
    N6: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure XReportButtonClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure A_KkmConnectExecute(Sender: TObject);
    procedure A_OpenShiftExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAtol_v10: TFAtol_v10;
  fptr: OleVariant;
  isOpened: Boolean;
  errcode:Integer;
  errString:String;
  shiftstate:      Longint;
  shiftnumber:     Longint;
  shiftexpired:   TDateTime;

implementation

{$R *.dfm}
uses dm_u,main;

procedure TFAtol_v10.A_KkmConnectExecute(Sender: TObject);
var
    state:      Longint;
    number:     Longint;
    dateTime:   TDateTime;
begin
  try
     if VarIsEmpty(fptr) then fptr:= CreateOleObject('AddIn.Fptr10');
     fptr.setSingleSetting(fptr.LIBFPTR_SETTING_MODEL, IntToStr(fptr.LIBFPTR_MODEL_ATOL_25F));
     fptr.setSingleSetting(fptr.LIBFPTR_SETTING_PORT, IntToStr(fptr.LIBFPTR_PORT_TCPIP));
     fptr.setSingleSetting(fptr.LIBFPTR_SETTING_IPADDRESS,'192.168.3.42');
     fptr.setSingleSetting(fptr.LIBFPTR_SETTING_IPPORT,'5555');
     fptr.applySingleSettings;

     if fptr.open <> 0 then
        begin
          errcode:=fptr.errorCode;
          errString:=fptr.ErrorDescription();
        end
      else
        begin
         isOpened:=fptr.isOpened;
        end;

  except
     on E: Exception do
     begin
      errString:=errString + 'Exception: ' + E.Message;
     end;
  end;

  if not fptr.isOpened then
    begin
      Application.MessageBox(PwideChar('Невозможно подключиться к кассе. '+ errString),'Внимание!',MB_ICONERROR+MB_OK);
      Exit;
    end
  else
    Lbl_Connection.Caption:='Соединение установлено';

    fptr.setParam(fptr.LIBFPTR_PARAM_DATA_TYPE, fptr.LIBFPTR_DT_SHIFT_STATE);
    fptr.queryData;
    state       := fptr.getParamInt(fptr.LIBFPTR_PARAM_SHIFT_STATE);
    number      := fptr.getParamInt(fptr.LIBFPTR_PARAM_SHIFT_NUMBER);
    dateTime    := fptr.getParamDateTime(fptr.LIBFPTR_PARAM_DATE_TIME);
    case state of
      //смена закрыта
      0:begin
        fptr.setParam(1021, 'Администратор');
        fptr.operatorLogin;
        fptr.openShift;
        Lbl_Shift.Caption:='Смена открыта.№ смены: '+IntToStr(number+1)+
                           '.Дата время истечения: '+DateTimeToStr(dateTime);
      end;
      1:begin
        Lbl_Shift.Caption:='Смена открыта.№ смены: '+IntToStr(number)+
                           '.Дата время истечения: '+DateTimeToStr(dateTime);
      end;
      2:begin
        Lbl_Shift.Caption:='Текущая смена истекла.№ смены: '+IntToStr(number)+
                           '.Дата время истечения: '+DateTimeToStr(dateTime);
        fptr.setParam(1021, 'Администратор');
        fptr.operatorLogin;
        fptr.setParam(fptr.LIBFPTR_PARAM_REPORT_TYPE, fptr.LIBFPTR_RT_CLOSE_SHIFT);
        fptr.report;
        if Application.MessageBox(PwideChar('Текущая смена истекла.Необходимо открыть смену.Открыть смену сейчас?'),
                              'Внимание!',MB_ICONQUESTION+MB_YESNO) = ID_YES then
        begin
          fptr.setParam(1021, 'Администратор');
          fptr.operatorLogin;
          fptr.openShift;
          Lbl_Shift.Caption:='Смена открыта.№ смены: '+IntToStr(number+1)+
                             '.Дата время истечения: '+DateTimeToStr(dateTime);
        end;
      end;

    end;
end;

procedure TFAtol_v10.A_OpenShiftExecute(Sender: TObject);
var
 errcode: Byte;
 errmessage :String;
begin
  if not isOpened then
    begin
      Application.MessageBox('Касса не подключена.Подключите кассу.','Внимание',MB_ICONSTOP+MB_OK);
      Exit;
    end;
    fptr.setParam(1021, 'Администратор');
    fptr.operatorLogin;
    if fptr.openShift <> 0 then
      begin
        errcode:= fptr.errorCode;
        errmessage:= fptr.ErrorDescription;
        ShowMessage('Ошибка номер:'+IntTostr(errcode)+' '+errmessage );
      end
    else
      Lbl_Shift.Caption:='Смена открыта';
end;

procedure TFAtol_v10.Button2Click(Sender: TObject);
var
 fptr: OleVariant;
 errcode:Integer;
 errString:String;
begin
try
  try
       fptr:= CreateOleObject('AddIn.Fptr10');
       fptr.setSingleSetting(fptr.LIBFPTR_SETTING_MODEL, IntToStr(fptr.LIBFPTR_MODEL_ATOL_25F));
       fptr.setSingleSetting(fptr.LIBFPTR_SETTING_PORT, IntToStr(fptr.LIBFPTR_PORT_TCPIP));
       fptr.setSingleSetting(fptr.LIBFPTR_SETTING_IPADDRESS,'192.168.3.42');
       fptr.setSingleSetting(fptr.LIBFPTR_SETTING_IPPORT,'5555');
       fptr.applySingleSettings;
       if fptr.open <> 0 then
          begin
            errcode:=fptr.errorCode;
            errString:=fptr.ErrorDescription();
            //fptr.cancelReceipt;
          end;
       fptr.setParam(1021, 'Администратор');
       fptr.operatorLogin;
       fptr.openShift;
       if fptr.checkDocumentClosed <> 0 then ShowMessage(fptr.errorDescription);
    except
       on E: Exception do
       begin
        ShowMessage(E.Message);
       end;

  end;
finally
 if not VarIsEmpty(fptr) then fptr:=Unassigned;
end;

end;

procedure TFAtol_v10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not VarIsEmpty(fptr) then fptr:=Unassigned;
//  Self.WindowState := wsMinimized;
  Action := caFree;;

end;

procedure TFAtol_v10.FormShow(Sender: TObject);
begin
  d1.Date:=Date();
  d2.Date:=Date();
  DM.Qry_Bills.Close;
  DM.Qry_Bills.Params[0].AsDate:=DateOf(D1.Date);
  DM.Qry_Bills.Params[1].AsDate:=dateOf(D2.Date);
  DM.Qry_Bills.open;
  DM.Qry_BillItems.Open;
  DM.Qry_BillItemsPayed.Open;
  E_Sum.Text:= DBGridEh2.Columns[5].Footers[0].SumValue;
end;

procedure TFAtol_v10.XReportButtonClick(Sender: TObject);
var
 fptr: OleVariant;
 errcode:Integer;
 errString:String;
begin
try
  try
       fptr:= CreateOleObject('AddIn.Fptr10');
       fptr.setSingleSetting(fptr.LIBFPTR_SETTING_MODEL, IntToStr(fptr.LIBFPTR_MODEL_ATOL_25F));
       fptr.setSingleSetting(fptr.LIBFPTR_SETTING_PORT, IntToStr(fptr.LIBFPTR_PORT_TCPIP));
       fptr.setSingleSetting(fptr.LIBFPTR_SETTING_IPADDRESS,'192.168.3.42');
       fptr.setSingleSetting(fptr.LIBFPTR_SETTING_IPPORT,'5555');
       fptr.applySingleSettings;
       if fptr.open <> 0 then
          begin
            errcode:=fptr.errorCode;
            errString:=fptr.ErrorDescription();
            //fptr.cancelReceipt;
          end;
       fptr.setParam(fptr.LIBFPTR_PARAM_REPORT_TYPE, fptr.LIBFPTR_RT_X);
       fptr.report;

    except
       on E: Exception do
       begin
        ShowMessage(E.Message);
       end;

  end;
finally
 if not VarIsEmpty(fptr) then fptr:=Unassigned;
end;

end;

end.
