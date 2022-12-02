{
**************************** !!! ВНИМАНИЕ !!! *****************************
  Для корректной работы с драйвером в режиме отладки необходимо в среде
разработки отключить остановку на исключительных ситуациях.
  Эта опция находится в меню "Tools\Debugger Options", закладка
"Language Exceptions". Флаг "Stop On Delphi Exceptions" необходимо снять.
***************************************************************************
}
unit fmuMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComObj, OleCtrls, FprnM1C_TLB, DB, IBDatabase, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh,
  IBCustomDataSet, IBQuery;

type
  TfrmMain = class(TForm)
    btnStart: TButton;
    btnShowProperties: TButton;
    FprnM451: TFprnM45;
    Button1: TButton;
    Memo1: TMemo;
    SellButton: TButton;
    AboutBtn: TButton;
    XRepBtn: TButton;
    OpenSessionBtn: TButton;
    ZReportBtn: TButton;
    Rep42Btn: TButton;
    RepConnect: TButton;
    NoSenDocRepbtn: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    CancelBtn: TButton;
    Button2: TButton;
    IBTR: TIBTransaction;
    DB: TIBDatabase;
    Label1: TLabel;
    Edit3: TEdit;
    Button3: TButton;
    Qry: TIBQuery;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    procedure btnShowPropertiesClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AboutBtnClick(Sender: TObject);
    procedure XRepBtnClick(Sender: TObject);
    procedure OpenSessionBtnClick(Sender: TObject);
    procedure ZReportBtnClick(Sender: TObject);
    procedure Rep42BtnClick(Sender: TObject);
    procedure RepConnectClick(Sender: TObject);
    procedure NoSenDocRepbtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SellButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  ECR:TFprnM45;
  atol25f: TFprnM45;
  s:string;

implementation

{$R *.DFM}
function PrintCheck(qry:TIBQuery):Integer;
var
 i:Integer;
 my_sum:Extended;
begin
 Result:=1;
 my_sum:=0;
 i:=1;
//проверяем доступность кассы
//if not atol25f.DeviceEnabled  then OpenSessionBtnClick(OpenSessionBtn);
if not atol25f.DeviceEnabled then atol25f.DeviceEnabled:=True;
if atol25f.TextWrap = 0  then  atol25f.TextWrap:=1;
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ---------- Чек прихода без отправки электронного чека покупателю ---------- //
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //

//////шапка
//atol25f.Caption:='Полное наименование:';
//atol25f.PrintString;
//atol25f.Caption:=Edit2.Text;
//atol25f.PrintString;



// Mode - Режим:
// 	0 - Выбора
// 	1 - Регистрации
// 	2 - Отчётов без гашения
// 	3 - Отчётов с гашением
atol25f.Mode := 1;
atol25f.SetMode ;

atol25f.NewDocument ;

// Записать должность и ФИО кассира
//atol25f.AttrNumber := 1021;
//atol25f.AttrValue := "Старший кассир Иванов И.И.";
//atol25f.WriteAttribute ;

// CheckType - Тип чека:
// 	1 - Приход
// 	2 - Возврат прихода
// 	4 - Расход
// 	5 - Возврат расхода
// 	7 - Коррекция прихода
// 	9 - Коррекция расхода
atol25f.CheckType := 1;
// CheckMode - Режим формирования чека:
// 	0 - только в электронном виде без печати на чековой ленте
// 	1 - печатать на чековой ленте
atol25f.CheckMode := 1;
atol25f.OpenCheck ;
//atol25f.AttrNumber := 1055;
//// Применяемая система налогооблажения в чеке:
//// 	ОСН - 1
//// 	УСН доход - 2
//// 	УСН доход-расход - 4
//// 	ЕНВД - 8
//// 	ЕСН - 16
//// 	ПСН - 32
//atol25f.AttrValue := 2;
//atol25f.WriteAttribute ;

//////////////////
//24.06.2017 11:55:10.442 0000000000 Посылка пакета: C1 01 0B 00 00 56 01 00 00 00 30
//                        0000000203 Received async answer: 55 00 00
//                        0000028517 Driver.Set_Name Тестовая продажа
//                        0000004914 Driver.Set_Caption Строка для печати
//                        0000003947 Driver.Set_Percents 3
//                        0000007582 Driver.Set_Summ 0
//                        0000022542 Driver.Set_Price 5.5
//                        0000037456 Driver.Set_Summ 12.89
//                        0000008330 Driver.Set_DiscountType 0
//24.06.2017 11:57:16.642 0000013120 Driver.Registration


 // Войти в режим регистрации Драйвер.Password = 30; Драйвер.Mode = 1; Драйвер.SetMode();
 // Регистрация Драйвер.Name = “Чипсы”;
 // Название товара Драйвер.Price = 12.34;
  // Цена товара Драйвер.Quantity = 1.234;
   // Количество товара Драйвер.Department = 2;
    // Секция Драйвер.Registration();
    // Зарегистрировать продажу
    // Оплата чека Драйвер.Summ = 10.00;
    // Сумма оплаты Драйвер.TypeClose = 0;
    // Тип оплаты «НАЛИЧНЫМИ» Драйвер.Payment(); Драйвер.Summ = 10.00;
    // Сумма оплаты Драйвер.TypeClose = 1;
    // Тип оплаты 1 Драйвер.Payment();

while not qry.Eof do
begin
// Регистрация товара или услуги
//////шапка
    atol25f.Caption:= IntToStr(i)+'.';
    atol25f.PrintString;
    if Length(qry.FieldByName('USLUGA').AsString) > 64 then
      begin
        atol25f.Caption:= 'Полное наименование:';
        atol25f.PrintString;
        atol25f.Caption:=qry.FieldByName('USLUGA').AsString;
        atol25f.PrintString;
      end;

    atol25f.Name := qry.FieldByName('USLUGA').AsString;
    atol25f.Price := qry.FieldByName('STOIM').AsCurrency;
    atol25f.Quantity:=qry.FieldByName('KOL').AsFloat;
    atol25f.Department := 0;
    if atol25f.Registration <> 0 then
     begin
       ShowMessage(atol25f.ResultDescription) ;
       atol25f.CancelCheck;
       Exit;
     end;
    my_sum:=my_sum+atol25f.Price*atol25f.Quantity;
    i:=i+1;
    qry.Next;
end;

atol25f.Summ:=my_sum;
atol25f.DiscountType:=0;
atol25f.DiscountValue:=0;
// Оплата и закрытие чека
// TypeClose - Тип оплаты:
// 	0 - Наличными
// 	1 - Электронными средствами платежа
atol25f.TypeClose := 0;
// TaxTypeNumber - Номер налога:
// 	0 - Налог из секции
// 	1 - НДС 0%
// 	2 - НДС 10%
// 	3 - НДС 18%
// 	4 - НДС не облагается
// 	5 - НДС с расчётной ставкой 10%
// 	6 - НДС с расчётной ставкой 18%
atol25f.TaxTypeNumber := 4;
if atol25f.Payment <> 0 then
 begin
   ShowMessage(atol25f.ResultDescription) ;
   atol25f.CancelCheck;
   Exit;
 end;
atol25f.CancelCheck ;
//atol25f.CloseCheck ;

// // // // // // // // // // // // // // // // // // // // // // // // // // //


Application.MessageBox('Все операции успешно выполнены.', PChar(Application.title), MB_ICONINFORMATION + MB_OK);
Result:=0;
//
// занимаем порт
//  atol25f.DeviceEnabled := true;
//  if atol25f.ResultCode <> 0 then Exit;
//
//// получаем состояние ККМ
//  atol25f.GetStatus;
//  if atol25f.GetStatus <> 0 then Exit;
//
//
//// проверяем на всякий случай ККМ на фискализированность
//  if atol25f.Fiscal then
//    if Application.MessageBox('ККМ фискализирована! Вы действительно хотите продолжить?', PChar(Application.Title), MB_ICONEXCLAMATION + MB_YESNO) = idNo then
//      Exit;
//
//// если есть открытый чек, то отменяем его
//  if atol25f.CheckState <> 0 then
//    if atol25f.CancelCheck <> 0 then Exit;
//
//// если смена открыта снимаем Z-отчет
//  if atol25f.SessionOpened then
//  begin
//    // устанавливаем пароль системного администратора ККМ
//    atol25f.Password := '30';
//    // входим в режим отчетов с гашением
//    atol25f.Mode := 3;
//    if atol25f.SetMode <> 0 then Exit;
//    // снимаем отчет
//    atol25f.ReportType := 1;
//    if atol25f.Report <> 0 then Exit;
//  end;
//
//// входим в режим регистрации
//  // устанавливаем пароль кассира
//  atol25f.Password := '30';
//  // входим в режим регистрации
//  atol25f.Mode := 1;
//  if atol25f.SetMode <> 0 then Exit;
/////////////////////////////////
////// продажа без сдачи
//  // регистрация продажи
//  atol25f.Name := 'Возмещение понесенного ущерба Складом в результате умышленных/не';//умышленных действий Клиентом или его представителем'
//  atol25f.Price := 1;
//  atol25f.Quantity := 1;
//  //atol25f.Department := 2;
//  if atol25f.Registration <> 0 then Exit;
//// X - отчет
//  // устанавливаем пароль администратора ККМ
//  //atol25f.Password := '29';
//  atol25f.Password := '30';
//  // входим в режим отчетов без гашения
//  atol25f.Mode := 2;
//  if atol25f.SetMode <> 0 then Exit;
//  // снимаем отчет
//  atol25f.ReportType := 2;
//  if atol25f.Report <> 0 then Exit;
//
//// Z - отчет
////  // устанавливаем пароль системного администратора ККМ
//  atol25f.Password := '30';
//  // входим в режим отчетов с гашением
//  atol25f.Mode := 3;
//  if atol25f.SetMode <> 0 then Exit;
//  // снимаем отчет
//  atol25f.ReportType := 1;
//  if atol25f.Report <> 0 then Exit;
//
//// выходим в режим выбора, чтобы кто-то под введенными паролями не сделал что нибуть нехорошее
//  if atol25f.ResetMode <> 0 then Exit;
//
//// освобождаем порт
//  atol25f.DeviceEnabled := false;
//  if atol25f.ResultCode <> 0 then Exit;

end;

procedure Atoll_On;
begin
  atol25f.PortNumber:=99;
  atol25f.BaudRate:=18;
  atol25f.UseAccessPassword:=True;
  atol25f.WriteLogFile:=0;
  atol25f.DefaultPassword:='30';
  atol25f.HostAddress:='192.168.3.42:5555';
  atol25f.DeviceEnabled:=True;
  // получаем состояние ККМ
  atol25f.GetStatus;
  if atol25f.GetStatus <> 0 then
    begin
      Exit;
      ShowMessage('Ошибка подключения');
    end;
// если есть открытый чек, то отменяем его
  if atol25f.CheckState <> 0 then
    if atol25f.CancelCheck <> 0 then Exit;
// если смена открыта снимаем Z-отчет
  if atol25f.SessionOpened then
  begin
    // устанавливаем пароль системного администратора ККМ
    atol25f.Password := '30';
    // входим в режим отчетов с гашением
    atol25f.Mode := 3;
    if atol25f.SetMode <> 0 then Exit;
    // снимаем отчет
    atol25f.ReportType := 1;
    if atol25f.Report <> 0 then Exit;
  end;
end;

procedure Atoll_Off;
begin
  if ( not Assigned(atol25f)) then
  begin
    atol25f.DeviceEnabled:=False;
    ShowMessage('Устройство выключено')
  end;

end;

procedure Atol_XReport;
begin
 Atoll_On;
// X - отчет
  // входим в режим отчетов без гашения
  atol25f.Mode := 2;
  if atol25f.SetMode = 0 then
    begin
      atol25f.ReportType := 2;
      if atol25f.Report <> 0 then
        begin
          ShowMessage('Ошибка X-отчета '+ atol25f.ResultDescription);
          Exit;
        end
    end;
  Atoll_Off;
end;




procedure GetAttributes;
begin
  //////////////////////
  // СНО - 1, ЕНВД - 8, ПСН - 32
  atol25f.Mode := 0;
  atol25f.SetMode;
  atol25f.AttrNumber := 1055;
  atol25f.ReadAttribute;
  s:=s+'#10#13'+atol25f.AttrValue;

// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ------------------------- Отчёт о состоянии расчётов ------------------------------//
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //

atol25f.Mode := 2;
atol25f.SetMode;
atol25f.NewDocument;
atol25f.AttrNumber := 1021;
atol25f.AttrValue := 'Старший кассир Иванов И.И.';
atol25f.WriteAttribute();
atol25f.ReportType := 42;
atol25f.Report();

// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ----------- Получение состояния связи фискального накопителя --------------//
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //

atol25f.Mode := 0;
atol25f.SetMode;
// Код ошибки сети
atol25f.RegisterNumber := 43;
atol25f.OFDLastError := 1;
atol25f.GetRegister();
s:=s+'#10#13'+ 'Код ошибки сети: ' + IntToStr(atol25f.OFDLastError) ;
//  Код ошибки ОФД
atol25f.RegisterNumber := 43;
atol25f.OFDLastError := 2;
atol25f.GetRegister;
s:=s+'#10#13'+ 'Код ошибки ОФД: ' + IntToStr(atol25f.OFDLastError);
// Код ошибки ФН
atol25f.RegisterNumber := 43;
atol25f.OFDLastError := 3;
atol25f.GetRegister;
s:=s+'#10#13'+'Код ошибки ФН: ' + IntToStr(atol25f.OFDLastError);
atol25f.Caption := s;
//atol25f.CharLineLength :=64;
atol25f.TextWrap:=1;
atol25f.PrintString;

// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ----------- Получение количества неотправленных документов и --------------//
//------------------- даты самого старого неотправленного -------------------------//
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //

s:='';
atol25f.Mode := 0;
atol25f.SetMode;
// Количество неотправленных документов:
atol25f.RegisterNumber := 44;
atol25f.GetRegister;
s:= 'Количество неотправленных документов: ' + IntToStr(atol25f.Count);
// Дата самого старого неотправленного документа
atol25f.RegisterNumber := 45;
atol25f.GetRegister;
s:=s+'#10#13'+ 'Дата самого старого неотправленного документа: ' + IntToStr(atol25f.Day) + '.' + IntToStr(atol25f.Month) + '.' + IntToStr(atol25f.Year) + ' ' + IntToStr(atol25f.Hour) + ':' + IntToStr(atol25f.Minute);
atol25f.Caption := s;
//atol25f.CharLineLength:=64;
atol25f.TextWrap:=1;
atol25f.PrintString();

// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ----------- Получение регистрационных данных ККТ ----------------------------//
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
s:= '';
atol25f.Mode := 0;
atol25f.SetMode();

// Наименование пользователя
atol25f.AttrNumber := 1048;
atol25f.ReadAttribute;
s:= 'Наименование пользователя: ' + atol25f.AttrValue;

// ИНН пользователя
atol25f.AttrNumber := 1018;
atol25f.ReadAttribute;
s:=s+'#10#13'+ 'ИНН пользователя: ' + atol25f.AttrValue ;

// Набор выбранных СНО в виде значения в десятичной системе исчисления, которое в двоичной соответствует битовой маске. Например 41 соответствует маске 101001 (ОСН 1, УСН доход 0, УСН доход-расход 0, ЕНВД 1, ЕСН 0, ПСН 1)
atol25f.AttrNumber := 1062;
atol25f.ReadAttribute();
s:=s+'#10#13'+ 'Выбранные СНО: ' + atol25f.AttrValue  ;

// Регистрационный номер ККТ
atol25f.AttrNumber := 1037;
atol25f.ReadAttribute;
s:=s+'#10#13'+ 'Регистрационный номер ККТ: ' + atol25f.AttrValue;
// аналогичным образом запрашиваются и остальные атрибуты

// Номер фискального накопителя
atol25f.RegisterNumber := 47;
atol25f.GetRegister;
s:=s+'#10#13'+ 'Номер фискального накопителя: ' + atol25f.SerialNumber ;

// Номер фискального документа последней регистрации/перерегистрации, а также дата и время
atol25f.RegisterNumber := 48;
atol25f.GetRegister();
s:=s+'#10#13'+ 'Номер ФД последней регистрации/перерегистрации: ' + IntToStr(atol25f.DocNumber);
s:=s+'#10#13'+ 'Дата ФД последней регистрации/перерегистрации: ' + IntToStr(atol25f.Day) + '.' + IntToStr(atol25f.Month) + '.' + IntToStr(atol25f.Year) + ' ' + IntToStr(atol25f.Hour) + ':' + IntToStr(atol25f.Minute);

// Данные по последнему фискальному документу чека
atol25f.RegisterNumber := 51;
atol25f.GetRegister;
s:=s+'#10#13'+  'Номер фискального документа: ' + IntToStr(atol25f.DocNumber);
s:=s+'#10#13'+  'Тип чека: ' + IntToStr(atol25f.LastCheckType);
s:=s+'#10#13'+  'Сумма чека: ' + FloatToStr(atol25f.Summ);
s:=s+'#10#13'+  'Дата и время чека: ' + IntToStr(atol25f.Day) + '.' + IntToStr(atol25f.Month) + '.' + IntToStr(atol25f.Year) + ' ' + IntToStr(atol25f.Hour) + ':' + IntToStr(atol25f.Minute);
s:=s+'#10#13'+  'Фискальный признак документа: ' + atol25f.FiscalSign;

// Данные по последнему фискальному документу
atol25f.RegisterNumber := 52;
atol25f.GetRegister;
s:=s+'#10#13'+  'Номер фискального документа: ' + IntToStr(atol25f.DocNumber);
s:=s+'#10#13'+  'Тип чека: ' + IntToStr(atol25f.LastCheckType);
s:=s+'#10#13'+  'Сумма чека: ' + FloatToStr(atol25f.Summ);
s:=s+'#10#13'+  'Дата и время чека: ' + IntToStr(atol25f.Day) + '.' + IntToStr(atol25f.Month) + '.' + IntToStr(atol25f.Year) + ' ' + IntToStr(atol25f.Hour) + ':' + IntToStr(atol25f.Minute);
s:=s+'#10#13'+  'Фискальный признак документа: ' + atol25f.FiscalSign;
Application.MessageBox(PChar(s),'Внимание',MB_OK);

end;

procedure Demo;
begin
// занимаем порт
  ECR.DeviceEnabled := true;
  if ECR.ResultCode <> 0 then Exit;

// получаем состояние ККМ
  if ECR.GetStatus <> 0 then Exit;

// проверяем на всякий случай ККМ на фискализированность
  if ECR.Fiscal then
    if Application.MessageBox('ККМ фискализирована! Вы действительно хотите продолжить?', PChar(Application.Title), MB_ICONEXCLAMATION + MB_YESNO) = idNo then
      Exit;

// если есть открытый чек, то отменяем его
  if ECR.CheckState <> 0 then
    if ECR.CancelCheck <> 0 then Exit;

// если смена открыта снимаем Z-отчет
  if ECR.SessionOpened then
  begin
    // устанавливаем пароль системного администратора ККМ
    ECR.Password := '30';
    // входим в режим отчетов с гашением
    ECR.Mode := 3;
    if ECR.SetMode <> 0 then Exit;
    // снимаем отчет
    ECR.ReportType := 1;
    if ECR.Report <> 0 then Exit;
  end;

// входим в режим регистрации
  // устанавливаем пароль кассира
  ECR.Password := '30';
  // входим в режим регистрации
  ECR.Mode := 1;
  if ECR.SetMode <> 0 then Exit;

// продажа без сдачи
  // регистрация продажи
  ECR.Name := 'Тест1';
  ECR.Price := 10.45;
  ECR.Quantity := 1;
  ECR.Department := 2;
  if ECR.Registration <> 0 then Exit;
  // скидка суммой на предыдущую позицию
  ECR.Percents := 10;
  ECR.Destination := 1;
  if ECR.PercentsDiscount <> 0 then Exit;
  // регистрация продажи
  ECR.Name := 'Тест2';
  ECR.Price := 5;
  ECR.Quantity := 2;
  ECR.Department := 1;
  if ECR.Registration <> 0 then Exit;
  // скидка суммой на весь чек
  ECR.Summ := 10.40;
  ECR.Destination := 0;
  if ECR.SummDiscount <> 0 then Exit;
  // закрытие чека наличными без ввода полученной от клиента суммы
  ECR.TypeClose := 0;
  if ECR.CloseCheck <> 0 then Exit;

// продажа со сдачей
  // регистрация продажи
  ECR.Name := 'Молоко';
  ECR.Price := 10.45;
  ECR.Quantity := 1;
  ECR.Department := 2;
  if ECR.Registration <> 0 then Exit;
  // регистрация продажи
  ECR.Name := 'Пепси-кола';
  ECR.Price := 25.00;
  ECR.Quantity := 5;
  ECR.Department := 1;
  if ECR.Registration <> 0 then Exit;
  // сторно предыдущей регистрации
  if ECR.Storno <> 0 then Exit;
  // регистрация продажи
  ECR.Name := 'Фанта';
  ECR.Price := 25;
  ECR.Quantity := 5;
  ECR.Department := 1;
  if ECR.Registration <> 0 then Exit;
  // скидка суммой на весь чек
  ECR.Summ := 50;
  ECR.Destination := 0;
  if ECR.SummDiscount <> 0 then Exit;
  // закрытие чека наличными с вводом полученной от клиента суммы
  ECR.Summ := 100;
  ECR.TypeClose := 0;
  if ECR.Delivery <> 0 then Exit;

// аннулирование
  // регистрация аннулирования
  ECR.Name := 'Dirol';
  ECR.Price := 7;
  ECR.Quantity := 1;
  if ECR.Annulate <> 0 then Exit;
  // регистрация аннулирования
  ECR.Name := 'Orbit';
  ECR.Price := 8;
  ECR.Quantity := 2;
  if ECR.Annulate <> 0 then Exit;
  // закрытие чека
  ECR.TypeClose := 0;
  if ECR.CloseCheck <> 0 then Exit;

// возврат
  // регистрация возврата
  ECR.Name := 'Молоко';
  ECR.Price := 10.45;
  ECR.Quantity := 1;
  if ECR.Return <> 0 then Exit;
  // регистрация возврата
  ECR.Name := 'Колбаса';
  ECR.Price := 99.99;
  ECR.Quantity := 1.235;
  if ECR.Return <> 0 then Exit;
  // скидка суммой на весь чек
  ECR.Summ := 50;
  ECR.Destination := 0;
  if ECR.SummDiscount <> 0 then Exit;
  // закрытие чека
  ECR.TypeClose := 0;
  if ECR.CloseCheck <> 0 then Exit;

// внесение наличности
  ECR.Summ := 400.50;
  if ECR.CashIncome <> 0 then Exit;

// выплата наличности
  ECR.Summ := 121.34;
  if ECR.CashOutcome <> 0 then Exit;

// X - отчет
  // устанавливаем пароль администратора ККМ
  ECR.Password := '29';
  // входим в режим отчетов без гашения
  ECR.Mode := 2;
  if ECR.SetMode <> 0 then Exit;
  // снимаем отчет
  ECR.ReportType := 2;
  if ECR.Report <> 0 then Exit;

// Z - отчет
  // устанавливаем пароль системного администратора ККМ
  ECR.Password := '30';
  // входим в режим отчетов с гашением
  ECR.Mode := 3;
  if ECR.SetMode <> 0 then Exit;
  // снимаем отчет
  ECR.ReportType := 1;
  if ECR.Report <> 0 then Exit;

// выходим в режим выбора, чтобы кто-то под введенными паролями не сделал что нибуть нехорошее
  if ECR.ResetMode <> 0 then Exit;

// освобождаем порт
  ECR.DeviceEnabled := false;
  if ECR.ResultCode <> 0 then Exit;

  Application.MessageBox('Все операции успешно выполнены.', PChar(Application.title), MB_ICONINFORMATION + MB_OK);
end;

procedure TfrmMain.btnStartClick(Sender: TObject);
begin
  btnStart.Enabled := false;
  btnShowProperties.Enabled := false;

  Demo;
  if ECR.ResultCode <> 0 then
    Application.MessageBox(PChar('Ошибка ККМ: ' + string(ECR.ResultDescription) + '!'), PChar(Application.Title), MB_ICONERROR + MB_OK);

  btnStart.Enabled := true;
  btnShowProperties.Enabled := true;
end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
//  atol25f.DevicesSettings:='DeviceNumber=1DeviceName=Атол25ФMachineName=PortNumber=99BaudRate=18Model=57'+
//                       'AccessPassword=UseAccessPassword=1WriteLogFile=0DefaultPassword=30'+
//                       'HostAddress=192.168.3.42:5555InvertDrawerState=0';
  atol25f.PortNumber:=99;
  atol25f.BaudRate:=18;
  atol25f.Mode:=57;
  atol25f.UseAccessPassword:=True;
  atol25f.WriteLogFile:=0;
  atol25f.DefaultPassword:='30';
  atol25f.HostAddress:='192.168.3.42:5555';
  atol25f.DeviceEnabled:=True;
  if atol25f.ResultCode = 0 then
      atol25f.ShowProperties
     else
      begin
        Application.MessageBox(PChar('Ошибка подключения к ККМ. '+ atol25f.ResultDescription),'Внимание',MB_ICONERROR+MB_OK);
        Exit;
      end;
end;

procedure TfrmMain.Button3Click(Sender: TObject);
begin
  if Qry.Active then Qry.Close;
  qry.Params[0].AsInteger:=StrToInt(Edit3.Text);
  qry.Open;
end;

procedure TfrmMain.CancelBtnClick(Sender: TObject);
begin
// если есть открытый чек, то отменяем его
  if atol25f.CheckState <> 0 then
    if atol25f.CancelCheck <> 0 then
      begin
       ShowMessage('Есть открытый чек '+ atol25f.ResultDescription);
       Exit;
      end;
end;

procedure TfrmMain.NoSenDocRepbtnClick(Sender: TObject);
var
textForPrint : String;
i,i1:Integer;
begin
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ----------- Получение количества неотправленных документов и --------------//
//------------------- даты самого старого неотправленного -------------------------//
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
Atoll_On;


i:=atol25f.CharLineLength;
i1:=  atol25f.TextWrap  ;
if i1 = 0  then  atol25f.TextWrap:=1;

atol25f.Mode := 0;
atol25f.SetMode();
// Количество неотправленных документов:
atol25f.RegisterNumber := 44;
atol25f.GetRegister;
textForPrint := 'Количество неотправленных документов: ' + IntToStr(atol25f.Count) ;
atol25f.Caption := textForPrint;
atol25f.PrintString ;
// Дата самого старого неотправленного документа
atol25f.RegisterNumber := 45;
atol25f.GetRegister();
textForPrint := 'Дата самого старого неотправленного документа ########### ################ ##############   ## @@@@@@@@@@ : ' + IntToStr(atol25f.Day) + '.' + IntToStr(atol25f.Month) + '.' + IntToStr(atol25f.Year) + ' ' + IntToStr(atol25f.Hour) + ':' + IntToStr(atol25f.Minute);
atol25f.Caption := textForPrint;
atol25f.PrintString();
Atoll_Off;
// // // // // // // // // // // // // // // // // // // // // // // // // // //
end;

procedure TfrmMain.Rep42BtnClick(Sender: TObject);
begin
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ------------------------- Отчёт о состоянии расчётов ------------------------------//
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
Atoll_On;
atol25f.Mode := 2;
atol25f.SetMode();
atol25f.NewDocument();
//atol25f.AttrNumber := 1021;
//atol25f.AttrValue := "Старший кассир Иванов И.И.";
atol25f.WriteAttribute();
atol25f.ReportType := 42;
atol25f.Report();
Atoll_Off;

// // // // // // // // // // // // // // // // // // // // // // // // // // //
end;

procedure TfrmMain.RepConnectClick(Sender: TObject);
var
  textForPrint :String;
begin
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ----------- Получение состояния связи фискального накопителя --------------//
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
Atoll_On;

atol25f.Mode := 0;
atol25f.SetMode ;
// Код ошибки сети
atol25f.RegisterNumber := 43;
atol25f.OFDLastError := 1;
atol25f.GetRegister;
textForPrint := 'Код ошибки сети: ' + IntToStr(atol25f.OFDLastError) ;
atol25f.Caption := textForPrint;
atol25f.PrintString ;
//  Код ошибки ОФД
atol25f.RegisterNumber := 43;
atol25f.OFDLastError := 2;
atol25f.GetRegister ;
textForPrint :=  'Код ошибки ОФД: ' +IntToStr( atol25f.OFDLastError) ;
atol25f.Caption := textForPrint;
atol25f.PrintString ;
// Код ошибки ФН
atol25f.RegisterNumber := 43;
atol25f.OFDLastError := 3;
atol25f.GetRegister ;
textForPrint := 'Код ошибки ФН: ' + IntToStr( atol25f.OFDLastError);
atol25f.Caption := textForPrint;
atol25f.PrintString ;
Atoll_Off;

// // // // // // // // // // // // // // // // // // // // // // // // // // //
end;

procedure TfrmMain.SellButtonClick(Sender: TObject);
var
 r:Integer;
begin
  r:= PrintCheck(frmMain.Qry);
  ShowMessage(IntToStr(r));
end;

procedure TfrmMain.AboutBtnClick(Sender: TObject);
var
  s:string;
  i:Integer;
begin
Atoll_On;
  atol25f.Mode:=0;
  atol25f.SetMode;
  //atol25f.ShowProperties;
  if atol25f.GetStatus = 0
    then
      begin
        s:=atol25f.SerialNumber;
        ShowMessage('Serial #: '+s);
      end
     else
        ShowMessage(atol25f.ResultDescription);
Atoll_Off;
end;

procedure TfrmMain.XRepBtnClick(Sender: TObject);
begin
  Atol_XReport;
end;

procedure TfrmMain.OpenSessionBtnClick(Sender: TObject);
begin
Atoll_On;
atol25f.Mode:=1;
atol25f.SetMode;
if atol25f.OpenSession <> 0 then
   ShowMessage('Ошибка открытия смены '+ atol25f.ResultDescription);
end;

procedure TfrmMain.ZReportBtnClick(Sender: TObject);
begin
// если есть открытый чек, то отменяем его
  if atol25f.CheckState <> 0 then
    if atol25f.CancelCheck <> 0 then
      begin
       ShowMessage('Есть открытый чек '+ atol25f.ResultDescription);
       Exit;
      end;

//    atol25f.Mode := 3;
//    atol25f.SetMode;
//    atol25f.NewDocument();
//    atol25f.AttrNumber := 1021;
//    atol25f.AttrValue := 'СИС. АДМ.';
//    atol25f.WriteAttribute();
//    atol25f.ReportType := 1;
//    atol25f.Report();



//  снимаем Z-отчет
    // устанавливаем пароль системного администратора ККМ
    atol25f.Password := '30';
    // входим в режим отчетов с гашением
    atol25f.Mode := 3;
    if atol25f.NewDocument <> 0 then
      begin
        ShowMessage(atol25f.ResultDescription);
        Exit;
      end;
    if atol25f.SetMode <> 0 then
      begin
        ShowMessage(atol25f.ResultDescription);
        Exit;
      end;
    // снимаем отчет
    atol25f.ReportType := 1;
    if atol25f.Report <> 0 then
      begin
        ShowMessage(atol25f.ResultDescription);
        Exit;
      end;
end;

procedure TfrmMain.btnShowPropertiesClick(Sender: TObject);
begin
// показываем страницу свойств
  //ECR.ShowProperties;
  atol25f.ShowProperties;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
 Memo1.Clear;
// создаем объект общего драйвера ККМ
// если объект создать не удается генерируется исключение, по которому завершается работа приложения
  try
    atol25f := TFprnM45.Create(Nil);
    atol25f.ApplicationHandle := Application.Handle; // необходимо для корректного отображения окон драйвера в контексте приложения
  except
    Application.MessageBox('Не удалось создать объект общего драйвера ККМ!', PChar(Application.Title), MB_ICONERROR + MB_OK);
    Application.Terminate;
  end;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// разрушаем объект драйвера
  atol25f.Free;
end;

end.
