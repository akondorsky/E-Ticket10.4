unit Atolv10_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, PropFilerEh, PropStorageEh, System.Actions,
  Vcl.ActnList, Vcl.Menus, PrnDbgeh, Vcl.Mask, Vcl.StdCtrls, Vcl.ComCtrls,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, DBCtrlsEh, Vcl.Buttons,System.DateUtils,Vcl.OleAuto,IBX.IBQuery,DB;

type
  TFAtol_v10 = class(TForm)
    InfoLabel: TLabel;
    RxLabel2: TLabel;
    RxLabel1: TLabel;
    RxLabel3: TLabel;
    Label1: TLabel;
    Lbl_Connection: TLabel;
    RefreshBtn: TSpeedButton;
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
    DBGridEh2: TDBGridEh;
    DBGridEh4: TDBGridEh;
    E_Nomer: TMaskEdit;
    PrintDBGridEh1: TPrintDBGridEh;
    BcBarPopupMenu1: TPopupMenu;
    Item_Print: TMenuItem;
    N14: TMenuItem;
    Item_Return: TMenuItem;
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
    Mn_KKm: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    A_KKMCondition: TAction;
    A_DelBill: TAction;
    N1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure XReportButtonClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure A_KkmConnectExecute(Sender: TObject);
    procedure A_OpenShiftExecute(Sender: TObject);
    procedure RefreshBtnClick(Sender: TObject);
    procedure FindBtnClick(Sender: TObject);
    procedure ZReportButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FiscalSaleButtonClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure A_DelItemExecute(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure Item_PrintClick(Sender: TObject);
    procedure Item_ReturnClick(Sender: TObject);
    procedure A_KKMConditionExecute(Sender: TObject);
    procedure A_DelBillExecute(Sender: TObject);
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
uses dm_u,main,myutils,BillItemEdit_U;
function PrintCheck(qry:TIBQuery;Sum:Extended;Check_Type:Byte):Integer;//0-Sell,1-Return
var
 i:Integer;
 p:Integer;
 str:String;
begin
 Result:=1;
 if Sum = 0  then Exit;
 i:=1;

  fptr.setParam(1021, 'Администратор');
  fptr.operatorLogin;
  case Check_Type of
  0:fptr.setParam(fptr.LIBFPTR_PARAM_RECEIPT_TYPE, fptr.LIBFPTR_RT_SELL);
  1:fptr.setParam(fptr.LIBFPTR_PARAM_RECEIPT_TYPE, fptr.LIBFPTR_RT_SELL_RETURN);
  end;

  fptr.openReceipt;

qry.First;
while not qry.Eof do
begin
// Регистрация товара или услуги
//////шапка
    str:= IntToStr(i)+'.';
    fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, str);
    fptr.printText;
    if Length(qry.FieldByName('NAME').AsString) > 64 then
      begin
        str:= 'Полное наименование:';
        fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, str);
        fptr.printText;
        str:=qry.FieldByName('NAME').AsString;
        fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, str);
        fptr.setParam(fptr.LIBFPTR_PARAM_TEXT_WRAP,fptr.LIBFPTR_TW_WORDS);
        fptr.printText;
      end;


    fptr.setParam(fptr.LIBFPTR_PARAM_COMMODITY_NAME, qry.FieldByName('KRNAME').AsString);
    fptr.setParam(fptr.LIBFPTR_PARAM_PRICE, qry.FieldByName('STOIM').AsCurrency);
    fptr.setParam(fptr.LIBFPTR_PARAM_QUANTITY, qry.FieldByName('KOL').AsFloat);
    fptr.setParam(fptr.LIBFPTR_PARAM_TAX_TYPE, fptr.LIBFPTR_TAX_VAT5);
    fptr.registration;

    i:=i+1;
    qry.Next;
end;
    fptr.setParam(fptr.LIBFPTR_PARAM_TAX_TYPE, fptr.LIBFPTR_TAX_VAT5);
    fptr.setParam(fptr.LIBFPTR_PARAM_TAX_SUM, Sum*VatRate/105);
    fptr.receiptTax;


    fptr.setParam(fptr.LIBFPTR_PARAM_PAYMENT_TYPE, fptr.LIBFPTR_PT_CASH);
    fptr.setParam(fptr.LIBFPTR_PARAM_PAYMENT_SUM, Sum);


if fptr.payment <> 0 then
 begin
   showmessage('"' + IntToStr(fptr.errorCode) + ' [' + fptr.errorDescription + ']"');
   fptr.cancelReceipt;
   Exit;
 end;

   fptr.closeReceipt;
// // // // // // // // // // // // // // // // // // // // // // // // // // //

Application.MessageBox('Все операции успешно выполнены.', PChar(Application.title), MB_ICONINFORMATION + MB_OK);
Result:=0;

end;

procedure TFAtol_v10.A_DelBillExecute(Sender: TObject);
var
  id_account:Integer;
  s:String;
begin
  if DBGridEh1.DataSource.DataSet.FieldByName('ID').IsNull then Exit
    else id_account:=DBGridEh1.DataSource.DataSet.FieldByName('ID').asInteger;
  if Application.MessageBox('Текущий чек будет безвозвратно удален.Продолжить?','Внимание!',
      MB_ICONWARNING+MB_YESNO) <> ID_YES then Exit;
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
     DM.Sql.Params[3].AsInteger:=id_account;
     DM.Sql.ExecQuery;
     s:=' delete from bills where id_account = :p0 ' ;
     DM.Sql.Close;
     DM.Sql.SQL.Clear;
     DM.Sql.SQL.Add(s);
     DM.Sql.Params[0].AsInteger:=id_account;
     DM.Sql.ExecQuery;
     DM.Sql.Transaction.Commit;
     DBgridEh1.DataSource.DataSet.Close;
     DBgridEh1.DataSource.DataSet.Open;
     DBgridEh4.DataSource.DataSet.Close;
     DBgridEh4.DataSource.DataSet.Open;
     Application.MessageBox('Чек удален.','Внимание!',MB_ICONINFORMATION+MB_OK);
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

procedure TFAtol_v10.A_DelItemExecute(Sender: TObject);
var
  r:Integer;
begin
if DM.Qry_BillItems.IsEmpty then Exit;
r:=DM.Qry_BillItems.FieldByName('ID').AsInteger;
        try
         try
            if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
            DM.Sql.Close;
            DM.Sql.SQL.Clear;
            DM.Sql.SQL.Add('delete from bills where id=:p0 ');
            DM.Sql.Params[0].AsInteger:=r;
            DM.Sql.ExecQuery;
            DM.Sql.Transaction.Commit;
            DM.Refresh_BillItems;
            E_Sum.Value:= DBGridEh2.Columns[5].Footers[0].SumValue;
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

procedure TFAtol_v10.A_KKMConditionExecute(Sender: TObject);
begin
//
end;

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
        if Application.MessageBox(PwideChar('Смена закрыта.Открыть смену сейчас?'),
                              'Внимание!',MB_ICONQUESTION+MB_YESNO) = ID_YES then
           begin
            fptr.setParam(1021, 'Администратор');
            fptr.operatorLogin;
            fptr.openShift;
            Lbl_Shift.Caption:='Смена открыта.№ смены: '+IntToStr(number+1)+
                                '.Дата истечения '+ DateTimeToStr(IncDay(Now,1));
           end;
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
//  if not isOpened then
//    begin
//      Application.MessageBox('Касса не подключена.Подключите кассу.','Внимание',MB_ICONSTOP+MB_OK);
//      Exit;
//    end;
//    fptr.setParam(1021, 'Администратор');
//    fptr.operatorLogin;
//    if fptr.openShift <> 0 then
//      begin
//        errcode:= fptr.errorCode;
//        errmessage:= fptr.ErrorDescription;
//        ShowMessage('Ошибка номер:'+IntTostr(errcode)+' '+errmessage );
//      end
//    else
//      Lbl_Shift.Caption:='Смена открыта';
end;

procedure TFAtol_v10.Button1Click(Sender: TObject);
begin
  DM.Qry_Bills.Close;
  DM.Qry_Bills.Params[0].AsDate:=Dateof(D1.Date);
  DM.Qry_Bills.Params[1].AsDate:=DateOf(D2.Date);
  DM.Qry_Bills.Open;
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

procedure TFAtol_v10.FindBtnClick(Sender: TObject);
begin
  if Length(Trim(E_Nomer.Text)) = 0  then Exit;
  DM.Qry_BillItems.Close;
  Dm.Qry_BillItems.SQL.Clear;
  Dm.Qry_BillItems.SQL.Add('select a.*, cast(a.kol*a.stoim as numeric(17,2)) as summa, b.ZAYV from bills a ');
  Dm.Qry_BillItems.SQL.Add(' left join reg_ti b on a.id_plat = b.id  where pay_flag = :p0 and n_part = :p1 ');
  Dm.Qry_BillItems.Params[0].AsInteger:=0;
  Dm.Qry_BillItems.Params[1].AsString:=E_Nomer.Text;
  DM.Qry_BillItems.Open;
  E_Sum.Value:= DBGridEh2.Columns[5].Footers[0].SumValue;
end;

procedure TFAtol_v10.FiscalSaleButtonClick(Sender: TObject);
var
 Msg,s1,sqltext:String;
 Itogo, sum_spis :Currency;
 qry:TIbQuery;
 flag:Boolean;
 r,i,l:Integer;
 A : Array of Integer;
begin
if not isOpened  then
  begin
    ShowMessage('Касса не открыта');
    Exit;
  end;
if DBGridEh2.DataSource.DataSet.IsEmpty then
   begin
     Application.MessageBox('Нет позиций для продажи.','Внимание',MB_ICONWARNING+MB_OK);
     Exit;
   end;
 begin
 try
  (Sender as TButton).Enabled:=False;
  Itogo:=DBGridEh2.Columns[5].Footers[0].SumValue;
  if Itogo =0 then
    begin
     Application.MessageBox('Cумма продажи = 0.','Внимание',MB_ICONSTOP+MB_OK);
     Exit;
    end;
  (sender as TButton).Enabled:=False;
  qry:=TibQuery.Create(Self);
  qry.Database:=DM.DB;

  //проверим есть ли в чеке различные id_plat и id_account
  DM.Refresh_BillItems;
  DM.Qry_BillItems.FetchAll;
  DM.Qry_BillItems.First;
  r:=DM.Qry_BillItems.RecordCount;
  if r  > 1  then
  begin
      SetLength(A,r);
      i:=0;
      while not DM.Qry_BillItems.Eof do
        begin
          A[i]:=DM.Qry_BillItems.FieldByName('ID_ACCOUNT').AsInteger;
          i:=i+1;
          DM.Qry_BillItems.Next;
        end;
   if ArrayHasRepeat(A,r) <> 0 then
       begin
           Application.MessageBox('В чеке  различные идентификаторы платежа.','Внимание',MB_ICONSTOP+MB_OK);
           Exit;
       end;
    A:=nil;
    SetLength(A,r);
    DM.Qry_BillItems.First;
    i:=0;
    while not DM.Qry_BillItems.Eof do
      begin
        A[i]:=DM.Qry_BillItems.FieldByName('ID_PLAT').AsInteger;
        i:=i+1;
        DM.Qry_BillItems.Next;
      end;
   if ArrayHasRepeat(A,r) <> 0 then
   begin
       Application.MessageBox('В чеке  различные плательщики.','Внимание',MB_ICONSTOP+MB_OK);
       Exit;
   end;

  end;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add(' select gen_id(NEWID_FISCAL_BILL,1) from rdb$database ');
    qry.Open;
    N_Bill:=qry.Fields[0].AsInteger;
    IdAccount:= DM.Qry_BillItems.FieldByName('ID_ACCOUNT').AsInteger;
    PlatNum :=DM.Qry_BillItems.FieldByName('ID_PLAT').AsInteger;


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
    DM.Sql.Params[5].AsInteger:= IdAccount;
    DM.Sql.Params[6].AsInteger:=PlatNum;
    DM.Sql.Params[7].Value:='Y'; //фискальный документ
    DM.Sql.ExecQuery;

    if PrintCheck(DM.Qry_BillItems, StrToFloat(E_Sum.Text),0) = 0 then
    //flag:= true;
    //if flag then
       begin
           // Cставим флаг оплаты в bills
          DM.Sql.Close;
          DM.Sql.SQL.Clear;
          s1:='update bills set pay_flag=:p0 where id_account = :p1' ;
          DM.Sql.Close;
          DM.Sql.SQL.Clear;
          DM.Sql.SQL.Add(s1);
          DM.Sql.Params[0].AsInteger:=1;
          DM.Sql.Params[1].AsInteger:=IdAccount;
          DM.Sql.ExecQuery;

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
   DM.Refresh_BillItems;
   (Sender as TButton).Enabled:=True;
 end;
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
  DM.Qry_BillItems.Close;
  DM.Qry_BillItems.SQL.Clear;
  DM.Qry_BillItems.SQL.Add('select a.*, cast( a.kol*a.stoim as numeric(17,2))  as summa, b.ZAYV from bills a ');
  DM.Qry_BillItems.SQL.Add('left join reg_ti b on a.id_plat = b.id where pay_flag = 0');
  DM.Qry_BillItems.Open;
  DM.Qry_BillItemsPayed.Open;
  E_Sum.Text:= DBGridEh2.Columns[5].Footers[0].SumValue;
//  FormAtol25f.E_Sum.Value:=Main_F.GetFakturaSum(idrec);
//  FormAtol25f.E_Vat.Value:=Main_F.GetFakturaVat(idrec);
end;

procedure TFAtol_v10.N12Click(Sender: TObject);
begin
  if DM.Qry_BillItems.IsEmpty then Exit;
 IdFItems:=DM.Qry_BillItems.FieldByName('ID').AsInteger;
 FItemDataset:=DM.Qry_BillItems;
 if BillItemEdit_F.ShowModal = mrOk then
   begin
     DM.Qry_BillItems.Close;
     DM.Qry_BillItems.Open;
     DM.Qry_BillItems.Locate('ID',IdFItems,[]);
     E_Sum.Value:= DBGridEh2.Columns[5].Footers[0].SumValue;
   end;
end;

procedure TFAtol_v10.Item_ReturnClick(Sender: TObject);
var
  qry:TIbQuery;
  id:Integer;
  sum:Currency;
begin
if not isOpened  then
  begin
    ShowMessage('Касса не открыта');
    Exit;
  end;

  if DBGridEh1.DataSource.DataSet.FieldByName('id').IsNull then Exit;
  id:=DBGridEh1.DataSource.DataSet.FieldByName('id').AsInteger;
  qry := TIBQuery.Create(Self);
  try
     qry.Database:=DM.DB;
     qry.sql.Add('select sum(kol*stoim) from bills where id_account=:p0 ');
     qry.Params[0].AsInteger:=id;
     qry.Open;
     sum:=qry.Fields[0].AsCurrency;
     qry.Sql.Clear;
     qry.sql.Add('select name,krname,kol,stoim from bills where id_account=:p0 ');
     qry.Params[0].AsInteger:=id;
     qry.Open;

    if PrintCheck(qry,sum,1) = 0 then
      Application.MessageBox('Все операции успешно выполнены.', PChar(Application.title), MB_ICONINFORMATION + MB_OK);

  finally
    qry.Free;
  end;
end;

procedure TFAtol_v10.Item_PrintClick(Sender: TObject);
begin
PrintDBGridEh1.PageHeader.LeftText.Add('Кассовый отчет за '+ DateTostr(Date));
PrintDBGridEh1.Preview;
end;

procedure TFAtol_v10.N3Click(Sender: TObject);
begin
if not isOpened then Exit;
    fptr.closeReceipt;

    While fptr.checkDocumentClosed <> 0 do
    begin
        // Не удалось проверить состояние документа. Вывести пользователю текст ошибки, попросить устранить неполадку и повторить запрос
        showmessage(fptr.errorDescription);
        Continue;
    end;

    if not fptr.getParamBool(fptr.LIBFPTR_PARAM_DOCUMENT_CLOSED) then
    begin
        // Документ не закрылся. Требуется его отменить (если это чек) и сформировать заново
        fptr.cancelReceipt;
        exit;
    end;

    if not fptr.getParamBool(fptr.LIBFPTR_PARAM_DOCUMENT_PRINTED) then
    begin
        // Можно сразу вызвать метод допечатывания документа, он завершится с ошибкой, если это невозможно
        While fptr.continuePrint <> 0 do
        begin
            // Если не удалось допечатать документ - показать пользователю ошибку и попробовать еще раз.
            showmessage('Не удалось напечатать документ (Ошибка "' + fptr.errorDescription + '"). Устраните неполадку и повторите.');
            Continue;
        end;
    end;
end;

procedure TFAtol_v10.RefreshBtnClick(Sender: TObject);
begin
  DM.Qry_BillItems.Close;
  Dm.Qry_BillItems.SQL.Clear;
  Dm.Qry_BillItems.SQL.Add('select a.*, cast( a.kol*a.stoim as numeric(17,2) ) as summa, b.ZAYV from bills a ');
  Dm.Qry_BillItems.SQL.Add(' left join reg_ti b on a.id_plat = b.id  where pay_flag = :p0 ');
  Dm.Qry_BillItems.Params[0].AsInteger:=0;
  DM.Qry_BillItems.Open;
  E_Sum.Value:= DBGridEh2.Columns[5].Footers[0].SumValue;
end;

procedure TFAtol_v10.XReportButtonClick(Sender: TObject);
begin
  if fptr.isOpened then
    begin
     fptr.setParam(fptr.LIBFPTR_PARAM_REPORT_TYPE, fptr.LIBFPTR_RT_X);
     fptr.report;
    end;

end;

procedure TFAtol_v10.ZReportButtonClick(Sender: TObject);
begin
  if fptr.isOpened then
    begin
      fptr.setParam(fptr.LIBFPTR_PARAM_REPORT_TYPE, fptr.LIBFPTR_RT_CLOSE_SHIFT);
      fptr.report;
    end;
end;

end.
