unit atol25f;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,  ComCtrls, DB, IBCustomDataSet, IBDatabase,DateUtils,
  Mask,  Grids, DBGridEh, IBSQL, PrViewEh,
  PrnDbgeh, Menus,  ImgList, DBGridEhGrouping, GridsEh,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh,DbCtrlsEh,
  IbQuery;


type
  TFormatol25f = class(TForm)
    FiscalDocLabel: TLabel;
    FiscalSaleButton: TButton;
    InfoLabel: TLabel;
    GroupBox2: TGroupBox;
    XReportButton: TButton;
    ZReportButton: TButton;
    RxLabel2: TLabel;
    E_Sum: TDBNumberEditEh;
    DBGridEh1: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    BcBarPopupMenu1: TPopupMenu;
    N1: TMenuItem;
    ImageList1: TImageList;
    RxLabel1: TLabel;
    RxLabel3: TLabel;
    D1: TDateTimePicker;
    D2: TDateTimePicker;
    Button1: TButton;
    Ch_vat: TCheckBox;
    Memo1: TMemo;
    ReturnBtn: TButton;
    RxLabel4: TLabel;
    E_Vat: TDBNumberEditEh;
    MainMenu1: TMainMenu;
    procedure FiscalSaleButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ReturnBtnClick(Sender: TObject);
    procedure ZReportButtonClick(Sender: TObject);
    procedure XReportButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure E_SumChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

  private
    function PrintFiscalBill(Sum:Double):Boolean;
  public
  end;

var
  Formatol25f: TFormatol25f;
  atol25f : TFprnM45;
implementation

uses dm_u,  buh_u,main,FprnM1C_TLB;

{$R *.DFM}


procedure TFormatol25f.FiscalSaleButtonClick(Sender: TObject);
var
 Msg,s1:String;
 Itogo, sum_spis :Currency;
 qry:TIbQuery;
 flag:Boolean;
begin

if PlatNum = 0 then
  begin
    Msg:='Счет-фактура не сормирована или отсутствует плательщик. Невозможно пробить чек';
    Application.MessageBox(PChar(Msg),'Внимание',mb_Ok+mb_IconStop);
    Exit;
  end;
Msg:='Пробить чек на организацию '+ PlatName + '?';
if Application.MessageBox(PChar(Msg),'Подтверждение',mb_YESNO+mb_IconQuestion) <> id_yes then
   Exit
 else
 begin
 try
  Itogo:=E_Sum.Value;
  (sender as TButton).Enabled:=False;
  qry:=TibQuery.Create(Self);
  qry.Database:=DM.DB;

  /////////создаем чек




  DM.Sql.Close;
  DM.Sql.SQL.Clear;
  s1:='insert into cl_accounts (DT,N_DOC,MONEY,KOD_VID,KOD_DOC,ID,ZAYV,FISCAL_FLAG )' ;
  s1:=s1+ ' values (:p0, :p1,:p2,:p3,:p4,:p5,:p6,:p7 )';
  DM.Sql.Close;
  DM.Sql.SQL.Clear;
  DM.Sql.SQL.Add(s1);
  if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
try
    DM.Sql.Params[0].AsDateTime:=Now;
    DM.Sql.Params[1].AsString:=intToStr(N_Bill);
    DM.Sql.Params[2].AsCurrency:=Itogo;
    DM.Sql.Params[3].AsInteger:=1; //пополнение
    DM.Sql.Params[4].AsInteger:=2; //кассовый чек
    DM.Sql.Params[5].AsInteger:=IdAccount;
    DM.Sql.Params[6].AsInteger:=PlatNum;
    DM.Sql.Params[7].Value:='Y'; //фискальный документ
    DM.Sql.ExecQuery;

    if PrintFiscalBill(E_Sum.Value) then
    //flag:= true;
    //if flag then
       begin
          //списываем долги если есть
         qry.Close;
         qry.SQL.Clear;
         qry.SQL.Add(' select count(id) from reasondolg where id_plat=:p0 and iif(delete_flag > 0,1,0) <> 1 and dolg_rest > 0');
         qry.Params[0].AsInteger:= PlatNum;
         qry.Open;
         if qry.Fields[0].AsInteger > 0 then
           begin
            qry.Close;
            qry.SQL.Clear;
            qry.SQL.Add('select id,dolg_rest from reasondolg where id_plat=:p0 and iif(delete_flag > 0,1,0) <> 1 and dolg_rest > 0 order by dt_is,id');
            qry.Params[0].AsInteger:= PlatNum;
            qry.Open;
            DM.Sql.Close;
            DM.Sql.SQL.Clear;
            DM.Sql.SQL.Add('insert into dolg_writeoff(id_dolg,id_account,summa) values(:p0,:p1,:p2) ');
            while (not qry.Eof) and (Itogo > 0)  do
              begin
                if Itogo >= qry.FieldByName('dolg_rest').AsFloat then
                  begin
                   sum_spis:= qry.FieldByName('dolg_rest').AsFloat;
                   Itogo:= Itogo - sum_spis;
                  end
                else
                  begin
                   sum_spis:= Itogo;
                   Itogo:= Itogo - sum_spis;
                  end;
                if DM.Sql.Open then DM.Sql.Close;
                DM.Sql.Params[0].AsInteger:=qry.FieldByName('id').AsInteger;
                DM.Sql.Params[1].AsInteger:=IdAccount;
                DM.Sql.Params[2].AsFloat:=sum_spis;
                DM.Sql.ExecQuery;
                qry.Next;
              end;
           end;
      ///////////////////////////////////////////////
          DM.Sql.Transaction.Commit;
          DM.Qry_ClAc.Close;
          DM.Qry_ClAc.open;
          DM.Qry_ClAc.Locate('Id',IdAccount,[]);
       end
      else
          DM.Sql.Transaction.Rollback;
  except
   on E:Exception do
    begin
       MessageBox(Application.Handle, PChar(E.Message + #13#10 + Dm.Sql.SQL.Text),
         PChar(Application.Name), MB_ICONERROR);
    end;
  end;

 finally
    qry.Free;
   (sender as TButton).Enabled:=True;
   E_Sum.Value:=0;
   DM.Qry_Bills.Close;
   DM.Qry_Bills.Open;
 end;
end;
end;

procedure TFormatol25f.FormShow(Sender: TObject);

begin
    d1.Date:=Date();
    d2.Date:=Date();
    DM.Qry_Bills.Close;
    DM.Qry_Bills.Params[0].AsDate:=DateOf(D1.Date);
    DM.Qry_Bills.Params[1].AsDate:=dateOf(D2.Date);
    DM.Qry_Bills.open;
end;

procedure TFormatol25f.N1Click(Sender: TObject);
begin
//  PreviewBox1.PrintDialog;
PrintDBGridEh1.PageHeader.LeftText.Add('Кассовый отчет за '+ DateTostr(Date));
PrintDBGridEh1.Preview;
end;

procedure TFormatol25f.Button1Click(Sender: TObject);
begin
  DM.Qry_Bills.Close;
  DM.Qry_Bills.Params[0].AsDate:=Dateof(D1.Date);
  DM.Qry_Bills.Params[1].AsDate:=DateOf(D2.Date);
  DM.Qry_Bills.Open;

end;

function TFormatol25f.PrintFiscalBill(Sum: Double): Boolean;
const
 nds:String='НДС 18%';
var
 kkm:TFprnM45;
 aligment,spacelen,i:Integer;
 f:Double;
 str,caption,spacestr:String;
begin
try
  Result:=False;
//это часть связана с проверками всякими:
  kkm:=TFprnM45.Create(Nil);
  kkm.DeviceEnabled := true;
  if kkm.ResultCode <> 0 then
    begin
     ShowMessage(kkm.ResultDescription);
     kkm.DeviceEnabled := false;
     Exit;
    end;
// получаем состояние ККМ
  if kkm.GetStatus <> 0 then
    begin
     ShowMessage(kkm.ResultDescription);
     kkm.DeviceEnabled := false;
     Exit;
    end;
// если есть открытый чек, то отменяем его
  if kkm.CheckState <> 0 then
    if kkm.CancelCheck <> 0 then
      begin
       ShowMessage(kkm.ResultDescription);
       kkm.DeviceEnabled := false;
       Exit;
      end;
//здесь открываем собственно чек возврата
// входим в режим регистрации
  // устанавливаем пароль кассира
  kkm.Password := '30';
  // входим в режим регистрации
  kkm.Mode := 1;
  if kkm.SetMode <> 0 then
  begin
   ShowMessage(kkm.ResultDescription);
   kkm.DeviceEnabled := false;
   Exit;
  end;
  // Выставляем тип продажа
  kkm.CheckType := 1;
  if kkm.OpenCheck <> 0 then
  begin
   ShowMessage(kkm.ResultDescription);
   kkm.DeviceEnabled := false;
   Exit;
  end;
//печатаем строки чека
    kkm.Name     := 'Продажа';
    kkm.Price    := Sum;
    kkm.Quantity := 1;
    if kkm.Registration <> 0 then
        begin
         ShowMessage(kkm.ResultDescription);
         kkm.DeviceEnabled := false;
         Exit;
        end;
 // эта часть печатает строку типа НДС - 18% и т.д.
     if Ch_Vat.Checked then
       begin
          aligment:=kkm.Alignment;
          kkm.Alignment:=2;
          f:=E_Vat.Value;
          str:=FormatFloat('0.00',f);
          spacelen:=kkm.CharLineLength-length(nds)-length(str)-1;
          for i:=1 to spacelen do
           begin
             spacestr:=spacestr+' ';
           end;
          caption:=nds+spacestr+format('=%s',[str]);
          kkm.Caption:= caption;
          kkm.PrintString;
          kkm.Alignment:=aligment;
       end;
//и здесь закрываем чек
  kkm.TypeClose := 0;
  if kkm.CloseCheck <> 0 then
    begin
     ShowMessage(kkm.ResultDescription);
     kkm.DeviceEnabled := false;
     Exit;
    end;
    Result:=True;
 finally
     Kkm.Free;
 end;
end;

procedure TFormatol25f.ReturnBtnClick(Sender: TObject);
var
 kkm:TFprnM45;
 Msg:String;
begin
try
//это часть связана с проверками всякими:

  Msg:='Пробить чек возврата?';
  if Application.MessageBox(PChar(Msg),'Подтверждение',mb_YESNO+mb_IconQuestion) <> id_yes then
     Exit;
  if E_Sum.Value = 0 then
    begin
     Application.MessageBox('Сумма возврата не может быть равна 0','Подтверждение',mb_OK+MB_ICONSTOP) ;
     Exit;
    end;

  (Sender as TButton).Enabled:=False;
  kkm:=TFprnM45.Create(Nil);
  kkm.DeviceEnabled := true;
  if kkm.ResultCode <> 0 then
    begin
     ShowMessage(kkm.ResultDescription);
     kkm.DeviceEnabled := false;
     Exit;
    end;
// получаем состояние ККМ
  if kkm.GetStatus <> 0 then
    begin
     ShowMessage(kkm.ResultDescription);
     kkm.DeviceEnabled := false;
     Exit;
    end;
// если есть открытый чек, то отменяем его
  if kkm.CheckState <> 0 then
    if kkm.CancelCheck <> 0 then
      begin
       ShowMessage(kkm.ResultDescription);
       kkm.DeviceEnabled := false;
       Exit;
      end;
//здесь открываем собственно чек возврата
// входим в режим регистрации
  // устанавливаем пароль кассира
  kkm.Password := '30';
  // входим в режим регистрации
  kkm.Mode := 1;
  if kkm.SetMode <> 0 then
  begin
   ShowMessage(kkm.ResultDescription);
   kkm.DeviceEnabled := false;
   Exit;
  end;
  // Выставляем тип возврат
  kkm.CheckType := 2;
  if kkm.OpenCheck <> 0 then
  begin
   ShowMessage(kkm.ResultDescription);
   kkm.DeviceEnabled := false;
   Exit;
  end;
//печатаем строки чека
    kkm.Name     := 'Возврат продажи';
    kkm.Price    := E_sum.Value;
    kkm.Quantity := 1;
    if kkm.Return <> 0 then
        begin
         ShowMessage(kkm.ResultDescription);
         kkm.DeviceEnabled := false;
         Exit;
        end;

{если есть скидка говорим сумму скидки
  if p_summa_s <> 0 then
  begin
  kkm.Summ := p_summa_s;
  kkm.Destination := 0;
  if kkm.SummDiscount <> 0 then
  begin
   ShowMessage(kkm.ResultDescription);
   kkm.DeviceEnabled := false;
   Exit;
  end;
  end; }
//и здесь закрываем чек
  kkm.TypeClose := 0;
  if kkm.CloseCheck <> 0 then
    begin
     ShowMessage(kkm.ResultDescription);
     kkm.DeviceEnabled := false;
     Exit;
    end;
 finally
    (Sender as TButton).Enabled:=True;
    Kkm.Free;
 end;
end;

procedure TFormatol25f.ZReportButtonClick(Sender: TObject);
 var
  Kkm:TFprnM45;
begin
 try
  try
    if Application.MessageBox('Снять Z-отчет?','Подтверждение',mb_YESNO+mb_IconQuestion) <> id_yes then
       Exit;
    Kkm:=TFprnM45.Create(Nil);
    kkm.DeviceEnabled :=True;
    if kkm.ResultCode <> 0 then
      begin
       ShowMessage(kkm.ResultDescription);
       kkm.DeviceEnabled := false;
       Exit;
      end;
    // получаем состояние ККМ
      if kkm.GetStatus <> 0 then
        begin
         ShowMessage(kkm.ResultDescription);
         kkm.DeviceEnabled := false;
         Exit;
        end;
    // если есть открытый чек, то отменяем его
      if kkm.CheckState <> 0 then
        if kkm.CancelCheck <> 0 then
          begin
           ShowMessage(kkm.ResultDescription);
           kkm.DeviceEnabled := false;
           Exit;
          end;
    //входим в режим
    Kkm.Mode := 3; // Режим отчетов с гашением
    Kkm.Password := '30'; // Пароль оператора
    if kkm.SetMode <> 0 then
      begin
       ShowMessage(kkm.ResultDescription);
       kkm.DeviceEnabled := false;
       Exit;
      end;
     // Снятие Z-отчета
    Kkm.ReportType := 1; // Суточный отчет с гашением
    if kkm.Report <> 0 then
        begin
         ShowMessage(kkm.ResultDescription);
         kkm.DeviceEnabled := false;
         Exit;
        end;
   except
      on E:Exception do ShowMessage(E.Message);
   end;
 finally
    Kkm.Free;
 end;
end;

procedure TFormatol25f.XReportButtonClick(Sender: TObject);
 var
  Kkm:TFprnM45;
begin
 try
  try
    if Application.MessageBox('Снять X-отчет?','Подтверждение',mb_YESNO+mb_IconQuestion) <> id_yes then
       Exit;
    (Sender as TButton).Enabled:=False;
    Kkm:=TFprnM45.Create(Nil);
    kkm.DeviceEnabled :=True;
    if kkm.ResultCode <> 0 then
      begin
       ShowMessage(kkm.ResultDescription);
       kkm.DeviceEnabled := false;
       Exit;
      end;
    // получаем состояние ККМ
      if kkm.GetStatus <> 0 then
        begin
         ShowMessage(kkm.ResultDescription);
         kkm.DeviceEnabled := false;
         Exit;
        end;
    // если есть открытый чек, то отменяем его
      if kkm.CheckState <> 0 then
        if kkm.CancelCheck <> 0 then
          begin
           ShowMessage(kkm.ResultDescription);
           kkm.DeviceEnabled := false;
           Exit;
          end;
    //входим в режим
    Kkm.Mode := 2; // Режим отчетов без гашения
    Kkm.Password := '30'; // Пароль оператора
    if kkm.SetMode <> 0 then
      begin
       ShowMessage(kkm.ResultDescription);
       kkm.DeviceEnabled := false;
       Exit;
      end;
     // Снятие X-отчета
    Kkm.ReportType := 2; // Суточный отчет без гашения
    if kkm.Report <> 0 then
        begin
         ShowMessage(kkm.ResultDescription);
         kkm.DeviceEnabled := false;
         Exit;
        end;
   except
      on E:Exception do ShowMessage(E.Message);
   end;
 finally
    Kkm.Free;
    (Sender as TButton).Enabled:=True;
 end;
end;




procedure TFormatol25f.FormCreate(Sender: TObject);
begin
// создаем объект общего драйвера ККМ
// если объект создать не удается генерируется исключение, по которому завершается работа приложения
  try
    atol25f := TFprnM45.Create(Nil);
    atol25f.ApplicationHandle := Application.Handle; // необходимо для корректного отображения окон драйвера в контексте приложения
  except
    Application.MessageBox('Не удалось создать объект общего драйвера ККМ!', PChar(Application.Title), MB_ICONERROR + MB_OK);
    Application.Terminate;
  end;
 if role = 'SYSADMIN' then  ReturnBtn.Enabled:=True;
end;

procedure TFormatol25f.FormDestroy(Sender: TObject);
begin
  if assigned(atol25f) then atol25f.Free;
end;

procedure TFormatol25f.E_SumChange(Sender: TObject);
begin
E_Vat.Value:=E_Sum.Value -(E_Sum.Value/(1+18/100));
end;

end.

