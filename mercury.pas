unit mercury;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, MercFPrtX_TLB, ComCtrls,  DB, IBX.IBCustomDataSet, IBX.IBDatabase,
   Mask,  Grids, DBGridEh, IBX.IBSQL, PrViewEh,
  PrnDbgeh, Menus,  ImgList, DBGridEhGrouping, GridsEh, OleServer, OleCtrls,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh;

type
  TMercury_F = class(TForm)
    MercuryFPrt: TMercuryFPrtCOM;
    ConnGroupBox: TGroupBox;
    PortLabel: TLabel;
    PortCombo: TComboBox;
    BaudRateCombo: TComboBox;
    BaudRateLabel: TLabel;
    PasswordLabel: TLabel;
    PasswordEdit: TEdit;
    ConnOpenButton: TButton;
    ConnCloseButton: TButton;
    DayStateLabel: TLabel;
    FiscalDocLabel: TLabel;
    FiscalSaleButton: TButton;
    InfoLabel: TLabel;
    GroupBox2: TGroupBox;
    XReportButton: TButton;
    ZReportButton: TButton;
    Label2: TLabel;
    E_Sum: TEdit;
    DBGridEh1: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    ImageList1: TImageList;
    Label1: TLabel;
    Label3: TLabel;
    D1: TDateTimePicker;
    D2: TDateTimePicker;
    Button1: TButton;
    CheckBox1: TCheckBox;
    MercuryFPrtX1: TMercuryFPrtX;
    procedure FormCreate(Sender: TObject);


    procedure ConnOpenButtonClick(Sender: TObject);
    procedure ConnCloseButtonClick(Sender: TObject);
    procedure XReportButtonClick(Sender: TObject);
    procedure ZReportButtonClick(Sender: TObject);
    procedure ChangeBaudButtonClick(Sender: TObject);
    procedure ChangePasswordButtonClick(Sender: TObject);
    procedure FiscalSaleButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    // Печатает строку заголовка составного чека, если это необходимо
    procedure FiscalPrintHeader(var IV: Integer);
    function FiscalPrint(Sm:Double):Boolean;
  public
  end;

var
  Mercury_F: TMercury_F;

implementation

uses Main,dm_u,buh_u;

{$R *.DFM}

function TMercury_F.FiscalPrint(Sm:Double):Boolean;
  var
   IV:Integer;
begin
  Result:=False;
  try
    MercuryFPrtX1.OpenFiscalDoc(motSale);
   // Счетчик вертикальной координаты
    IV := 0;
    // Добавляем строки заголовка
    FiscalPrintHeader(IV);
    // Добавляем номер ККМ и номер документа (на одной строке)
    MercuryFPrtX1.AddSerialNumber(0, 0, IV); MercuryFPrtX1.AddDocNumber(0, 31, IV); Inc(IV);
    // Добавляем ИНН
    MercuryFPrtX1.AddTaxPayerNumber(0, 0, IV); Inc(IV);
    // Добавляем дату / время и номер чека (на одной строке)
    MercuryFPrtX1.AddDateTime(0, 0, IV); MercuryFPrtX1.AddReceiptNumber(0, 31, IV); Inc(IV);
    // Добавляем информацию об операторе
    MercuryFPrtX1.AddOperInfo(moiNumberName, 0, 0, IV); Inc(IV);
    // Добавляем позицию
    // - наименование товара, как дополнительный реквизит
    MercuryFPrtX1.AddCustom('', 0, 0, IV); Inc(IV);
{    procedure AddItem(ItemType: TxMercItemType; Price: Currency; ItemIsTare: WordBool;
                      Department: Integer; Code: Integer; Adjustment: Integer; Quantity: Integer;
                      QuantityPrec: Integer; TaxIndex: Integer; const UnitName: WideString;
                      Flags: Integer; HOffset: Integer; VOffset: Integer; RightOffset: Integer); safecall;}

    MercuryFPrtX1.AddItem(
      mitItem,          // - услуга или товар
      Sm,              // - цена товара
      False,            // - товар не является тарой
      1,                // - номер отдела
      000,              // - код товара
      0,                // - игнорируется
      1,
      0,             // - количество = 2 (нет знаков после десятичной точки)
      TaxIndex,         // - индекс налоговой группы
      '',              // - единица измерения
      0,                // - флаги
      0,                // - смещение по вертикали
      IV,               // - смещение по горизонтали
      0                 // - игнорируется
    ); Inc(IV);
    MercuryFPrtX1.AddTaxSum(1,3,0,IV,0); Inc(IV);
    MercuryFPrtX1.AddTotal(0, 0, IV, 0); Inc(IV);
    MercuryFPrtX1.AddPay(
      mptCash,      // - оплата: наличные + платежная карта
      Sm,             // - сумма оплаты наличными
      0,               // - сумма оплаты по безналу
      '',               // - дополнительная информация по оплате - игнорируется для комбинированной
                        //   оплаты
      0, 0, IV, 0); Inc(IV);

    // Закрываем документ
    MercuryFPrtX1.CloseFiscalDoc;
    Result:=True;
   except
    // В случае ошибки отменяем открытый документ
    MercuryFPrtX1.CancelFiscalDoc(False);
   raise;
  end;
end;

procedure TMercury_F.FormCreate(Sender: TObject);
begin
  PortCombo.ItemIndex := 0;
  BaudRateCombo.ItemIndex := 2;
end;




procedure TMercury_F.ConnOpenButtonClick(Sender: TObject);
begin
  // Настраиваем параметры соединения
  MercuryFPrtX1.PortNum := PortCombo.ItemIndex + 1;
  case BaudRateCombo.ItemIndex of
  0:  MercuryFPrtX1.BaudRate := CBR_9600;
  1:  MercuryFPrtX1.BaudRate := CBR_19200;
  2:  MercuryFPrtX1.BaudRate := CBR_57600;
  3:  MercuryFPrtX1.BaudRate := CBR_115200;
  end;
  MercuryFPrtX1.Password := '0000' ;//PasswordEdit.Text;
  // Открываем соединение с ККМ
  MercuryFPrtX1.Open;
  InfoLabel.Caption := 'Соединение открыто.';
  MercuryFPrtX1.OpenDay(IdUser,User, False, MercuryFPrtX1.Protocol);
  InfoLabel.Caption := 'Смена открыта.';

end;

procedure TMercury_F.ConnCloseButtonClick(Sender: TObject);
begin
  // Закрываем соединение с ККМ
  MercuryFPrtX1.Close(False);
  InfoLabel.Caption := 'Соединение закрыто.';
end;

procedure TMercury_F.XReportButtonClick(Sender: TObject);
begin
  // Печатаем сводный X-отчет (краткий, если поддерживается)
  MercuryFPrtX1.XReport(MERC_REPF_NO_ZEROES);
  InfoLabel.Caption := 'Документ распечатан.';
end;

procedure TMercury_F.ZReportButtonClick(Sender: TObject);
begin
  // Печатаем Z-отчет (краткий, если поддерживается)
  MercuryFPrtX1.ZReport(MERC_REPF_NO_ZEROES);
  InfoLabel.Caption := 'Документ распечатан.';
end;

procedure TMercury_F.ChangeBaudButtonClick(Sender: TObject);
begin
  // Меняем скорость передачи
  case BaudRateCombo.ItemIndex of
  0:  MercuryFPrtX1.BaudRate := CBR_9600;
  1:  MercuryFPrtX1.BaudRate := CBR_19200;
  2:  MercuryFPrtX1.BaudRate := CBR_57600;
  3:  MercuryFPrtX1.BaudRate := CBR_115200;
  end;
  InfoLabel.Caption := 'Скорость изменена.';
end;

procedure TMercury_F.ChangePasswordButtonClick(Sender: TObject);
begin
  // Меняем пароль на связь
  MercuryFPrtX1.Password := PasswordEdit.Text;
  InfoLabel.Caption := 'Пароль изменен.';
end;

// Печатает строку заголовка составного чека, если это необходимо
procedure TMercury_F.FiscalPrintHeader(var IV: Integer);
var
  I: Integer;
  PrintNeeded: array [1..4] of Boolean;
begin
  // Для ККМ, не поддерживающих упреждающую печать заголовка добавляем строки
  // клише в чек явным образом
  if (MercuryFPrtX1.Generation <> 7) or (MercuryFPrtX1.EcrSubVersion < $0300) then
  begin
    for I := 1 to 4 do
    begin
      MercuryFPrtX1.AddHeaderLine(I, 0, 0, IV);
      Inc(IV);
    end;
  end
  else
  begin
    // Если ККМ поддерживает упреждающую печать заголовка, то проверяем, печать
    // каких строк клише включена
    PrintNeeded[1] := MercuryFPrtX1.QueryParameterBool(MERC_PARAM_AUTOHEADER_LINE1);
    PrintNeeded[2] := MercuryFPrtX1.QueryParameterBool(MERC_PARAM_AUTOHEADER_LINE2);
    PrintNeeded[3] := MercuryFPrtX1.QueryParameterBool(MERC_PARAM_AUTOHEADER_LINE3);
    PrintNeeded[4] := MercuryFPrtX1.QueryParameterBool(MERC_PARAM_AUTOHEADER_LINE4);
    // Если упреждающая печать выключена для всех строк, то добавляем строки
    // клише в чек явным образом
    if not PrintNeeded[1] and not PrintNeeded[2] and not PrintNeeded[3] and
       not PrintNeeded[4] then
    begin
      for I := 1 to 4 do
      begin
        MercuryFPrtX1.AddHeaderLine(I, 0, 0, IV);
        Inc(IV);
      end;
    end
    else
    begin
      // Если включена упреждающая печать, то проверяем, есть ли ненапечатанные
      // строки клише; если есть - печатаем заголовок чека вызовом метода
      // PrintHeader (метод напечатает только те строки, для которых включена
      // упреждающая печать); счетчик строк IV здесь в любом случае увеличивать
      // не нужно, т.к. заголовок не входит в состав чека
      for I := 1 to 4 do
      begin
        if PrintNeeded[I] and
           not MercuryFPrtX1.QueryParameterBool(MERC_PARAM_HEADER_PRINTED_LINE1 + I - 1) then
        begin
          MercuryFPrtX1.PrintHeader;
          Break;
        end;
      end;
    end;
  end;
end;

procedure TMercury_F.FiscalSaleButtonClick(Sender: TObject);
var
  Itogo:Double;
  Msg,s1,s2:String;
  Id_Rec,N_Bill: Integer;
begin
if PlatNum = 0 then
  begin
    Msg:='Счет-фактура не сормирована или отсутствует плательщик. Невозможно пробить чек';
    Application.MessageBox(PChar(Msg),'Внимание',mb_Ok+mb_IconStop);
    Exit;
  end;
Msg:='Пробить чек на организацию '+  PlatName + '?';
if Application.MessageBox(PChar(Msg),'Подтверждение',mb_YESNO+mb_IconQuestion) <> id_yes then
   Exit
 else
 begin
 try
  Itogo:=StrToFloat(E_Sum.Text);
  DM.Qry.Close;
  DM.Qry.SQL.Clear;
  DM.Qry.SQL.Add(' select gen_id(NEWID_FISCAL_BILL,1) from rdb$database ');
  DM.Qry.Open;
  N_Bill:=DM.Qry.Fields[0].AsInteger;
  DM.Sql.Close;
  DM.Sql.SQL.Clear;
  s1:='insert into cl_accounts (DT,N_DOC,MONEY,KOD_VID,KOD_DOC,ZAYV,FISCAL_FLAG )' ;
  s2:=' values (:p0, :p1,:p2,:p3,:p4,:p5,:p6 )';
  DM.Sql.Close;
  DM.Sql.SQL.Clear;
  DM.Sql.SQL.Add(s1+s2);
  if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
try
    DM.Sql.Params[0].AsDateTime:=Now;
    DM.Sql.Params[1].AsString:=intToStr(N_Bill);
    DM.Sql.Params[2].AsCurrency:=Itogo;
    DM.Sql.Params[3].AsInteger:=1; //пополнение
    DM.Sql.Params[4].AsInteger:=2; //кассовый чек
    DM.Sql.Params[5].AsInteger:= PlatNum;
    DM.Sql.Params[6].Value:='Y'; //фискальный документ
    DM.Sql.ExecQuery;


    if FiscalPrint(Itogo) then  DM.Sql.Transaction.Commit
       else
         begin
           DM.Sql.Transaction.Rollback;
           Application.MessageBox('Ошибка записи данных','Внимание!',mb_OK+mb_iconstop);
         end;
    DM.Qry_ClAc.Close;
    DM.Qry_ClAc.open;
    DM.Qry_Bills.Close;
    DM.Qry_Bills.Open;
  except
      on E: EdatabaseError do
        begin
         ShowMessage(E.Message);
        end;
  end;

 finally
   if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
   E_Sum.Text:='0';
 end;
end;
end;

procedure TMercury_F.FormShow(Sender: TObject);
begin
  d1.Date:=Date;
  d2.Date:=Date;
  DM.Qry_Bills.Close;
  DM.Qry_Bills.Params[0].AsDate:=D1.date;
  DM.Qry_Bills.Params[1].AsDate:=D2.Date;
  DM.Qry_Bills.open;
  if TaxIndex = 0 then
     CheckBox1.Checked:=False
    else
     CheckBox1.Checked:=True;
end;

procedure TMercury_F.N1Click(Sender: TObject);
begin
//  PreviewBox1.PrintDialog;
PrintDBGridEh1.PageHeader.LeftText.Add('Кассовый отчет за '+ DateTostr(Date));
PrintDBGridEh1.Preview;
end;

procedure TMercury_F.Button1Click(Sender: TObject);
begin
  DM.Qry_Bills.Close;
  DM.Qry_Bills.Params[0].AsDate:=D1.Date;
  DM.Qry_Bills.Params[1].AsDate:=D2.Date;
  DM.Qry_Bills.open;

end;

end.

