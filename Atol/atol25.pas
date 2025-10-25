unit atol25;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,  ComCtrls, DB, IBX.IBCustomDataSet, IBX.IBDatabase,DateUtils,
  Mask,  Grids, DBGridEh, IBX.IBSQL, PrViewEh,
  PrnDbgeh, Menus,  ImgList, DBGridEhGrouping, GridsEh,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh,DbCtrlsEh,
  IBX.IbQuery, ActnList, Buttons, PropFilerEh, PropStorageEh,Math,ComObj,Variants,FprnM1C_TLB,
  OleCtrls, System.Actions, EhLibVCL;


type
  TFormatol25f = class(TForm)
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
    RxLabel1: TLabel;
    RxLabel3: TLabel;
    D1: TDateTimePicker;
    D2: TDateTimePicker;
    Button1: TButton;
    Ch_vat: TCheckBox;
    RxLabel4: TLabel;
    E_Vat: TDBNumberEditEh;
    MainMenu1: TMainMenu;
    ActionList1: TActionList;
    A_KkmEnable: TAction;
    N2: TMenuItem;
    N3: TMenuItem;
    Label1: TLabel;
    A_KKMDisabled: TAction;
    N4: TMenuItem;
    Label2: TLabel;
    Label3: TLabel;
    N5: TMenuItem;
    A_OpenSession: TAction;
    N6: TMenuItem;
    It_KKMCondition: TMenuItem;
    Label4: TLabel;
    DBGridEh2: TDBGridEh;
    SpeedButton1: TSpeedButton;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    DBGridEh4: TDBGridEh;
    E_Nomer: TMaskEdit;
    FindBtn: TSpeedButton;
    A_DelItem: TAction;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    ChTest: TCheckBox;
    PopMn_BillItem: TPopupMenu;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;

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
    procedure A_KkmEnableExecute(Sender: TObject);
    procedure A_KKMDisabledExecute(Sender: TObject);
    procedure ActionList1Execute(Action: TBasicAction; var Handled: Boolean);
    procedure A_OpenSessionExecute(Sender: TObject);
    procedure It_KKMConditionClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FindBtnClick(Sender: TObject);
    procedure E_NomerKeyPress(Sender: TObject; var Key: Char);
    procedure A_DelItemExecute(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N15Click(Sender: TObject);

  private
    function PrintFiscalBill(Sum:Double):Boolean;
  public
  end;

var
  Formatol25f: TFormatol25f;
  atol25f : TFprnM45;
implementation

uses dm_u,  buh_u,main,myutils,billitemedit_u;

{$R *.DFM}


procedure ShowKKMCondition;
begin
    if atol25f.DeviceEnabled  then
        Formatol25f.Label2.Caption:='���������� �����������.'
      else
        Formatol25f.Label2.Caption:='�� ���������� !!!!';
//    if atol25f.SessionOpened  then
//        Formatol25f.Label4.Caption:='�������.'
//      else
//        Formatol25f.Label4.Caption:='������� !!!!';
     Application.ProcessMessages;

end;

function PrintCheck(qry:TIBQuery;Sum:Extended):Integer;
var
 i:Integer;
 p:Integer;
begin
 Result:=1;
 if Sum = 0  then Exit;
 i:=1;

//��������� ����������� �����
//if not atol25f.DeviceEnabled  then OpenSessionBtnClick(OpenSessionBtn);

if not Formatol25f.ChTest.Checked then
   if not atol25f.DeviceEnabled then atol25f.DeviceEnabled:=True;
if atol25f.TextWrap = 0  then  atol25f.TextWrap:=1;
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ---------- ��� ������� ��� �������� ������������ ���� ���������� ---------- //
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //

//////�����
//atol25f.Caption:='������ ������������:';
//atol25f.PrintString;
//atol25f.Caption:=Edit2.Text;
//atol25f.PrintString;



// Mode - �����:
// 	0 - ������
// 	1 - �����������
// 	2 - ������� ��� �������
// 	3 - ������� � ��������
atol25f.Mode := 1;
atol25f.SetMode ;

atol25f.NewDocument ;

// �������� ��������� � ��� �������
//atol25f.AttrNumber := 1021;
//atol25f.AttrValue := "������� ������ ������ �.�.";
//atol25f.WriteAttribute ;

// CheckType - ��� ����:
// 	1 - ������
// 	2 - ������� �������
// 	4 - ������
// 	5 - ������� �������
// 	7 - ��������� �������
// 	9 - ��������� �������
atol25f.CheckType := 1;
// CheckMode - ����� ������������ ����:
// 	0 - ������ � ����������� ���� ��� ������ �� ������� �����
// 	1 - �������� �� ������� �����
atol25f.CheckMode := 1;
atol25f.OpenCheck ;
//atol25f.AttrNumber := 1055;
//// ����������� ������� ��������������� � ����:
//// 	��� - 1
//// 	��� ����� - 2
//// 	��� �����-������ - 4
//// 	���� - 8
//// 	��� - 16
//// 	��� - 32
//atol25f.AttrValue := 2;
//atol25f.WriteAttribute ;

//////////////////
//24.06.2017 11:55:10.442 0000000000 ������� ������: C1 01 0B 00 00 56 01 00 00 00 30
//                        0000000203 Received async answer: 55 00 00
//                        0000028517 Driver.Set_Name �������� �������
//                        0000004914 Driver.Set_Caption ������ ��� ������
//                        0000003947 Driver.Set_Percents 3
//                        0000007582 Driver.Set_Summ 0
//                        0000022542 Driver.Set_Price 5.5
//                        0000037456 Driver.Set_Summ 12.89
//                        0000008330 Driver.Set_DiscountType 0
//24.06.2017 11:57:16.642 0000013120 Driver.Registration


 // ����� � ����� ����������� �������.Password = 30; �������.Mode = 1; �������.SetMode();
 // ����������� �������.Name = �������;
 // �������� ������ �������.Price = 12.34;
  // ���� ������ �������.Quantity = 1.234;
   // ���������� ������ �������.Department = 2;
    // ������ �������.Registration();
    // ���������������� �������
    // ������ ���� �������.Summ = 10.00;
    // ����� ������ �������.TypeClose = 0;
    // ��� ������ ���������Ȼ �������.Payment(); �������.Summ = 10.00;
    // ����� ������ �������.TypeClose = 1;
    // ��� ������ 1 �������.Payment();

qry.First;
while not qry.Eof do
begin
// ����������� ������ ��� ������
//////�����
    atol25f.Caption:= IntToStr(i)+'.';
    atol25f.PrintString;
    if Length(qry.FieldByName('NAME').AsString) > 64 then
      begin
        atol25f.Caption:= '������ ������������:';
        atol25f.PrintString;
        atol25f.Caption:=qry.FieldByName('NAME').AsString;
        atol25f.PrintString;
      end;

    atol25f.Name := qry.FieldByName('KRNAME').AsString;
    atol25f.Price := qry.FieldByName('STOIM').AsCurrency;
    atol25f.Quantity:=qry.FieldByName('KOL').AsFloat;
//    atol25f.Department := 0;
    atol25f.TaxTypeNumber:=4; // ��� ���


    if atol25f.Registration <> 0 then
     begin
       ShowMessage(atol25f.ResultDescription) ;
       atol25f.CancelCheck;
       Exit;
     end;

    i:=i+1;
    qry.Next;
end;

atol25f.Summ:=Sum;
atol25f.DiscountType:=0;
atol25f.DiscountValue:=0;
// ������ � �������� ����
// TypeClose - ��� ������:
// 	0 - ���������
// 	1 - ������������ ���������� �������
atol25f.TypeClose := 0;
// TaxTypeNumber - ����� ������:
// 	0 - ����� �� ������
// 	1 - ��� 0%
// 	2 - ��� 10%
// 	3 - ��� 18%
// 	4 - ��� �� ����������
// 	5 - ��� � ��������� ������� 10%
// 	6 - ��� � ��������� ������� 18%

//atol25f.TaxTypeNumber := 4; ������ � ������ �������, � ����� ���� �� ������



if atol25f.Payment <> 0 then
 begin
   ShowMessage(atol25f.ResultDescription) ;
   atol25f.CancelCheck;
   Exit;
 end;

 if Formatol25f.ChTest.Checked then
    atol25f.CancelCheck
   else
    atol25f.CloseCheck ;

// // // // // // // // // // // // // // // // // // // // // // // // // // //


Application.MessageBox('��� �������� ������� ���������.', PChar(Application.title), MB_ICONINFORMATION + MB_OK);
Result:=0;

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
  // �������� ��������� ���
  atol25f.GetStatus;
  if atol25f.GetStatus <> 0 then
    begin
      ShowMessage('������ �����������');
      Exit;
    end;
  ShowKKMCondition;
//      // ���� ���� �������� ���, �� �������� ���
//        if atol25f.CheckState <> 0 then
//          if atol25f.CancelCheck <> 0 then Exit;
//      // ���� ����� ������� ������� Z-�����
//        if atol25f.SessionOpened then
//        begin
//          // ������������� ������ ���������� �������������� ���
//          atol25f.Password := '30';
//          // ������ � ����� ������� � ��������
//          atol25f.Mode := 3;
//          if atol25f.SetMode <> 0 then Exit;
//          // ������� �����
//          atol25f.ReportType := 1;
//          if atol25f.Report <> 0 then Exit;
//        end;
  if not atol25f.SessionOpened  then
    begin
     atol25f.OpenSession;
     ShowKKMCondition;
    end;
end;

procedure Atoll_Off;
begin
  if  Assigned(atol25f) then
  begin
    atol25f.DeviceEnabled:=False;
    ShowKKMCondition;
  end;

end;

procedure Atol_XReport;
begin
 if not atol25f.DeviceEnabled then Atoll_On;
// X - �����
  // ������ � ����� ������� ��� �������
  atol25f.Mode := 2;
  if atol25f.SetMode = 0 then
    begin
      atol25f.ReportType := 2;
      if atol25f.Report <> 0 then
        begin
          ShowMessage('������ X-������ '+ atol25f.ResultDescription);
          Exit;
        end
    end;
  //Atoll_Off;
end;

procedure ZReport;
begin
if not atol25f.SessionOpened then
   begin
    Application.MessageBox('����� �������!','��������',MB_ICONSTOP + MB_OK);
    Exit;
   end;
// ���� ���� �������� ���, �� �������� ���
  if atol25f.CheckState <> 0 then
    if atol25f.CancelCheck <> 0 then
      begin
       ShowMessage('���� �������� ��� '+ atol25f.ResultDescription);
       Exit;
      end;

//  ������� Z-�����
    // ������������� ������ ���������� �������������� ���
    atol25f.Password := '30';
    // ������ � ����� ������� � ��������
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
    // ������� �����
    atol25f.ReportType := 1;
    if atol25f.Report <> 0 then
      begin
        ShowMessage(atol25f.ResultDescription);
        Exit;
      end;
    ShowKKMCondition;
end;


procedure TFormatol25f.FindBtnClick(Sender: TObject);
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

procedure TFormatol25f.FiscalSaleButtonClick(Sender: TObject);
var
 Msg,s1,sqltext:String;
 Itogo, sum_spis :Currency;
 qry:TIbQuery;
 flag:Boolean;
 r,i,l:Integer;
 A : Array of Integer;
begin
if DBGridEh2.DataSource.DataSet.IsEmpty then
   begin
     Application.MessageBox('��� ������� ��� �������.','��������',MB_ICONWARNING+MB_OK);
     Exit;
   end;
 begin
 try
  Itogo:=DBGridEh2.Columns[5].Footers[0].SumValue;
  if Itogo =0 then
    begin
     Application.MessageBox('C���� ������� = 0.','��������',MB_ICONSTOP+MB_OK);
     Exit;
    end;
  (sender as TButton).Enabled:=False;
  qry:=TibQuery.Create(Self);
  qry.Database:=DM.DB;

  //�������� ���� �� � ���� ��������� id_plat � id_account
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
           Application.MessageBox('� ����  ��������� �������������� �������.','��������',MB_ICONSTOP+MB_OK);
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
       Application.MessageBox('� ����  ��������� �����������.','��������',MB_ICONSTOP+MB_OK);
       Exit;
   end;

//    s1:=DM.Qry_BillItems.FieldByName('N_PART').AsString;
//    sqltext:= 'select a.id_plat, count(a.id_plat) from bills a '+
//        ' where a.pay_flag = 0 '+
//        ' group by a.id_plat ';
//    qry.SQL.Add(sqltext);
//    //qry.Params[0].AsString:=s1;
//    qry.Open;
//    qry.FetchAll;
//    r:= qry.RecordCount    ;
//    if r > 1  then
//      begin
//       Application.MessageBox('� ����  ��������� �����������.','��������',MB_ICONSTOP+MB_OK);
//       Exit;
//      end;
//    qry.Close;
//    qry.SQL.Clear;
//    sqltext:= 'select a.id_account, count(a.id_account) from bills a '+
//        ' where a.pay_flag = 0  '+
//        ' group by a.id_account ';
//    qry.SQL.Add(sqltext);
////    qry.Params[0].AsString:=s1;
//    qry.Open;
//    qry.FetchAll;
//    r:= qry.RecordCount ;
//    if r > 1  then
//      begin
//       Application.MessageBox('� ����  ��������� �������������� �������.','��������',MB_ICONSTOP+MB_OK);
//       Exit;
//      end;

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
    DM.Sql.Params[3].AsInteger:=1; //����������
    DM.Sql.Params[4].AsInteger:=2; //�������� ���
    DM.Sql.Params[5].AsInteger:= IdAccount;
    DM.Sql.Params[6].AsInteger:=PlatNum;
    DM.Sql.Params[7].Value:='Y'; //���������� ��������
    DM.Sql.ExecQuery;

    if PrintCheck(DM.Qry_BillItems, StrToFloat(E_Sum.Text)) = 0 then
    //flag:= true;
    //if flag then
       begin
           // C������ ���� ������ � bills
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
    DM.Qry_BillItems.Open;
    DM.Qry_BillItemsPayed.Open;
    ShowKKMCondition;
    E_Sum.Text:= DBGridEh2.Columns[5].Footers[0].SumValue;
end;

procedure TFormatol25f.It_KKMConditionClick(Sender: TObject);
begin
ShowKKMCondition;
end;

procedure TFormatol25f.N10Click(Sender: TObject);
begin
  ChTest.Checked := True;
end;

procedure TFormatol25f.N11Click(Sender: TObject);
begin
  ChTest.Checked := False;
end;

procedure TFormatol25f.N12Click(Sender: TObject);
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

procedure TFormatol25f.N15Click(Sender: TObject);
var
  qry:TIbQuery;
  id:Integer;
begin
  if DBGridEh1.DataSource.DataSet.FieldByName('id').IsNull then Exit;
  id:=DBGridEh1.DataSource.DataSet.FieldByName('id').AsInteger;
  qry := TIBQuery.Create(Self);
  try
     qry.Database:=DM.DB;
     qry.sql.Add('select krname,kol,stoim from bills where id_account=:p0 ');
     qry.Params[0].AsInteger:=id;
     qry.Open;
//     while not qry.Eof do
//      begin
//        ShowMessage(qry.Fields[0].AsString + '; '+ qry.Fields[1].AsString + '; '+qry.Fields[2].AsString + '; ');
//        qry.Next;
//      end;
//��������� ����������� �����
//if not atol25f.DeviceEnabled  then OpenSessionBtnClick(OpenSessionBtn);

if not Formatol25f.ChTest.Checked then
   if not atol25f.DeviceEnabled then atol25f.DeviceEnabled:=True;
if atol25f.TextWrap = 0  then  atol25f.TextWrap:=1;
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ---------- ��� ������� ��� �������� ������������ ���� ���������� ---------- //
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //

//////�����
//atol25f.Caption:='������ ������������:';
//atol25f.PrintString;
//atol25f.Caption:=Edit2.Text;
//atol25f.PrintString;



// Mode - �����:
// 	0 - ������
// 	1 - �����������
// 	2 - ������� ��� �������
// 	3 - ������� � ��������
atol25f.Mode := 1;
atol25f.SetMode ;

atol25f.NewDocument ;

// �������� ��������� � ��� �������
//atol25f.AttrNumber := 1021;
//atol25f.AttrValue := "������� ������ ������ �.�.";
//atol25f.WriteAttribute ;

// CheckType - ��� ����:
// 	1 - ������
// 	2 - ������� �������
// 	4 - ������
// 	5 - ������� �������
// 	7 - ��������� �������
// 	9 - ��������� �������
atol25f.CheckType := 2;
// CheckMode - ����� ������������ ����:
// 	0 - ������ � ����������� ���� ��� ������ �� ������� �����
// 	1 - �������� �� ������� �����
atol25f.CheckMode := 1;
atol25f.OpenCheck ;
//atol25f.AttrNumber := 1055;
//// ����������� ������� ��������������� � ����:
//// 	��� - 1
//// 	��� ����� - 2
//// 	��� �����-������ - 4
//// 	���� - 8
//// 	��� - 16
//// 	��� - 32
//atol25f.AttrValue := 2;
//atol25f.WriteAttribute ;

//////////////////
//24.06.2017 11:55:10.442 0000000000 ������� ������: C1 01 0B 00 00 56 01 00 00 00 30
//                        0000000203 Received async answer: 55 00 00
//                        0000028517 Driver.Set_Name �������� �������
//                        0000004914 Driver.Set_Caption ������ ��� ������
//                        0000003947 Driver.Set_Percents 3
//                        0000007582 Driver.Set_Summ 0
//                        0000022542 Driver.Set_Price 5.5
//                        0000037456 Driver.Set_Summ 12.89
//                        0000008330 Driver.Set_DiscountType 0
//24.06.2017 11:57:16.642 0000013120 Driver.Registration


 // ����� � ����� ����������� �������.Password = 30; �������.Mode = 1; �������.SetMode();
 // ����������� �������.Name = �������;
 // �������� ������ �������.Price = 12.34;
  // ���� ������ �������.Quantity = 1.234;
   // ���������� ������ �������.Department = 2;
    // ������ �������.Registration();
    // ���������������� �������
    // ������ ���� �������.Summ = 10.00;
    // ����� ������ �������.TypeClose = 0;
    // ��� ������ ���������Ȼ �������.Payment(); �������.Summ = 10.00;
    // ����� ������ �������.TypeClose = 1;
    // ��� ������ 1 �������.Payment();

while not qry.Eof do
begin
    atol25f.Name := qry.FieldByName('KRNAME').AsString;
    atol25f.Price := qry.FieldByName('STOIM').AsCurrency;
    atol25f.Quantity:=qry.FieldByName('KOL').AsFloat;
    atol25f.Department := 0;
    if atol25f.Return <> 0 then
     begin
       ShowMessage(atol25f.ResultDescription) ;
       atol25f.CancelCheck;
       Exit;
     end;
    qry.Next;
end;

atol25f.Summ:=DBGridEh1.DataSource.DataSet.FieldByName('MONEY').AsCurrency;
atol25f.DiscountType:=0;
atol25f.DiscountValue:=0;
// ������ � �������� ����
// TypeClose - ��� ������:
// 	0 - ���������
// 	1 - ������������ ���������� �������
atol25f.TypeClose := 0;
// TaxTypeNumber - ����� ������:
// 	0 - ����� �� ������
// 	1 - ��� 0%
// 	2 - ��� 10%
// 	3 - ��� 18%
// 	4 - ��� �� ����������
// 	5 - ��� � ��������� ������� 10%
// 	6 - ��� � ��������� ������� 18%
atol25f.TaxTypeNumber := 4;
if atol25f.Payment <> 0 then
 begin
   ShowMessage(atol25f.ResultDescription) ;
   atol25f.CancelCheck;
   Exit;
 end
else
  atol25f.CloseCheck;
// // // // // // // // // // // // // // // // // // // // // // // // // // //

Application.MessageBox('��� �������� ������� ���������.', PChar(Application.title), MB_ICONINFORMATION + MB_OK);

  finally
    qry.Free;
  end;
end;

procedure TFormatol25f.N1Click(Sender: TObject);
begin
//  PreviewBox1.PrintDialog;
PrintDBGridEh1.PageHeader.LeftText.Add('�������� ����� �� '+ DateTostr(Date));
PrintDBGridEh1.Preview;
end;

procedure TFormatol25f.ActionList1Execute(Action: TBasicAction;
  var Handled: Boolean);
begin
 if atol25f.DeviceEnabled then atol25f.OpenSession;
end;

procedure TFormatol25f.A_DelItemExecute(Sender: TObject);
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

procedure TFormatol25f.A_KKMDisabledExecute(Sender: TObject);
begin
  Atoll_Off;
end;

procedure TFormatol25f.A_KkmEnableExecute(Sender: TObject);
begin
Atoll_On;
//  if atol25f.DeviceEnabled then Exit;
//  atol25f.PortNumber:=99;
//  atol25f.BaudRate:=18;
//  atol25f.Mode:=57;
//  atol25f.UseAccessPassword:=True;
//  atol25f.WriteLogFile:=0;
//  atol25f.DefaultPassword:='30';
//  atol25f.HostAddress:='192.168.3.42:5555';
//  atol25f.DeviceEnabled:=True;
//  if not atol25f.SessionOpened then atol25f.OpenSession;
//  if atol25f.ResultCode = 0 then
//      begin
//        atol25f.ShowProperties;
//        ShowKKMCondition;
//      end
//
//     else
//      begin
//        Application.MessageBox(PChar('������ ����������� � ���. '+ atol25f.ResultDescription),'��������',MB_ICONERROR+MB_OK);
//        Exit;
//      end;
end;

procedure TFormatol25f.A_OpenSessionExecute(Sender: TObject);
begin
 if not atol25f.DeviceEnabled then Atoll_On;
 if atol25f.DeviceEnabled then
  begin
  if atol25f.SessionOpened then Exit;
  atol25f.Mode:=1;
  atol25f.SetMode;
  if atol25f.OpenSession <> 0 then
   begin
     ShowMessage('������ �������� ����� '+ atol25f.ResultDescription);
   end;
  end;
  ShowKKMCondition;
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
 nds:String='��� 18%';
var
 kkm:TFprnM45;
 aligment,spacelen,i:Integer;
 f:Double;
 str,caption,spacestr:String;
begin
try
  Result:=False;
//��� ����� ������� � ���������� �������:
  kkm:=TFprnM45.Create(Nil);
  kkm.DeviceEnabled := true;
  if kkm.ResultCode <> 0 then
    begin
     ShowMessage(kkm.ResultDescription);
     kkm.DeviceEnabled := false;
     Exit;
    end;
// �������� ��������� ���
  if kkm.GetStatus <> 0 then
    begin
     ShowMessage(kkm.ResultDescription);
     kkm.DeviceEnabled := false;
     Exit;
    end;
// ���� ���� �������� ���, �� �������� ���
  if kkm.CheckState <> 0 then
    if kkm.CancelCheck <> 0 then
      begin
       ShowMessage(kkm.ResultDescription);
       kkm.DeviceEnabled := false;
       Exit;
      end;
//����� ��������� ���������� ��� ��������
// ������ � ����� �����������
  // ������������� ������ �������
  kkm.Password := '30';
  // ������ � ����� �����������
  kkm.Mode := 1;
  if kkm.SetMode <> 0 then
  begin
   ShowMessage(kkm.ResultDescription);
   kkm.DeviceEnabled := false;
   Exit;
  end;
  // ���������� ��� �������
  kkm.CheckType := 1;
  if kkm.OpenCheck <> 0 then
  begin
   ShowMessage(kkm.ResultDescription);
   kkm.DeviceEnabled := false;
   Exit;
  end;
//�������� ������ ����
    kkm.Name     := '�������';
    kkm.Price    := Sum;
    kkm.Quantity := 1;
    if kkm.Registration <> 0 then
        begin
         ShowMessage(kkm.ResultDescription);
         kkm.DeviceEnabled := false;
         Exit;
        end;
 // ��� ����� �������� ������ ���� ��� - 18% � �.�.
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
//� ����� ��������� ���
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
//��� ����� ������� � ���������� �������:

  Msg:='������� ��� ��������?';
  if Application.MessageBox(PChar(Msg),'�������������',mb_YESNO+mb_IconQuestion) <> id_yes then
     Exit;
  if E_Sum.Value = 0 then
    begin
     Application.MessageBox('����� �������� �� ����� ���� ����� 0','�������������',mb_OK+MB_ICONSTOP) ;
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
// �������� ��������� ���
  if kkm.GetStatus <> 0 then
    begin
     ShowMessage(kkm.ResultDescription);
     kkm.DeviceEnabled := false;
     Exit;
    end;
// ���� ���� �������� ���, �� �������� ���
  if kkm.CheckState <> 0 then
    if kkm.CancelCheck <> 0 then
      begin
       ShowMessage(kkm.ResultDescription);
       kkm.DeviceEnabled := false;
       Exit;
      end;
//����� ��������� ���������� ��� ��������
// ������ � ����� �����������
  // ������������� ������ �������
  kkm.Password := '30';
  // ������ � ����� �����������
  kkm.Mode := 1;
  if kkm.SetMode <> 0 then
  begin
   ShowMessage(kkm.ResultDescription);
   kkm.DeviceEnabled := false;
   Exit;
  end;
  // ���������� ��� �������
  kkm.CheckType := 2;
  if kkm.OpenCheck <> 0 then
  begin
   ShowMessage(kkm.ResultDescription);
   kkm.DeviceEnabled := false;
   Exit;
  end;
//�������� ������ ����
    kkm.Name     := '������� �������';
    kkm.Price    := E_sum.Value;
    kkm.Quantity := 1;
    if kkm.Return <> 0 then
        begin
         ShowMessage(kkm.ResultDescription);
         kkm.DeviceEnabled := false;
         Exit;
        end;

{���� ���� ������ ������� ����� ������
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
//� ����� ��������� ���
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

procedure TFormatol25f.SpeedButton1Click(Sender: TObject);
begin
  DM.Qry_BillItems.Close;
  Dm.Qry_BillItems.SQL.Clear;
  Dm.Qry_BillItems.SQL.Add('select a.*, cast( a.kol*a.stoim as numeric(17,2) ) as summa, b.ZAYV from bills a ');
  Dm.Qry_BillItems.SQL.Add(' left join reg_ti b on a.id_plat = b.id  where pay_flag = :p0 ');
  Dm.Qry_BillItems.Params[0].AsInteger:=0;
  DM.Qry_BillItems.Open;
  E_Sum.Value:= DBGridEh2.Columns[5].Footers[0].SumValue;

end;

procedure TFormatol25f.ZReportButtonClick(Sender: TObject);
begin
  ZReport;
end;

procedure TFormatol25f.XReportButtonClick(Sender: TObject);
begin
  Atol_XReport;
end;




procedure TFormatol25f.FormCreate(Sender: TObject);
begin
// ������� ������ ������ �������� ���
// ���� ������ ������� �� ������� ������������ ����������, �� �������� ����������� ������ ����������
  try
    atol25f := TFprnM45.Create(Nil);
    atol25f.ApplicationHandle := Application.Handle; // ���������� ��� ����������� ����������� ���� �������� � ��������� ����������
  except
    Application.MessageBox('�� ������� ������� ������ ������ �������� ���!', PChar(Application.Title), MB_ICONERROR + MB_OK);
    Application.Terminate;
  end;
//
end;

procedure TFormatol25f.FormDestroy(Sender: TObject);
begin
  if assigned(atol25f) then atol25f.Free;
end;

procedure TFormatol25f.E_NomerKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then FindBtnClick(FindBtn);
end;

procedure TFormatol25f.E_SumChange(Sender: TObject);
begin
E_Vat.Value:=E_Sum.Value -(E_Sum.Value/(1+18/100));
end;

end.

