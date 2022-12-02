{
**************************** !!! �������� !!! *****************************
  ��� ���������� ������ � ��������� � ������ ������� ���������� � �����
���������� ��������� ��������� �� �������������� ���������.
  ��� ����� ��������� � ���� "Tools\Debugger Options", ��������
"Language Exceptions". ���� "Stop On Delphi Exceptions" ���������� �����.
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
//��������� ����������� �����
//if not atol25f.DeviceEnabled  then OpenSessionBtnClick(OpenSessionBtn);
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

while not qry.Eof do
begin
// ����������� ������ ��� ������
//////�����
    atol25f.Caption:= IntToStr(i)+'.';
    atol25f.PrintString;
    if Length(qry.FieldByName('USLUGA').AsString) > 64 then
      begin
        atol25f.Caption:= '������ ������������:';
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
 end;
atol25f.CancelCheck ;
//atol25f.CloseCheck ;

// // // // // // // // // // // // // // // // // // // // // // // // // // //


Application.MessageBox('��� �������� ������� ���������.', PChar(Application.title), MB_ICONINFORMATION + MB_OK);
Result:=0;
//
// �������� ����
//  atol25f.DeviceEnabled := true;
//  if atol25f.ResultCode <> 0 then Exit;
//
//// �������� ��������� ���
//  atol25f.GetStatus;
//  if atol25f.GetStatus <> 0 then Exit;
//
//
//// ��������� �� ������ ������ ��� �� �������������������
//  if atol25f.Fiscal then
//    if Application.MessageBox('��� ���������������! �� ������������� ������ ����������?', PChar(Application.Title), MB_ICONEXCLAMATION + MB_YESNO) = idNo then
//      Exit;
//
//// ���� ���� �������� ���, �� �������� ���
//  if atol25f.CheckState <> 0 then
//    if atol25f.CancelCheck <> 0 then Exit;
//
//// ���� ����� ������� ������� Z-�����
//  if atol25f.SessionOpened then
//  begin
//    // ������������� ������ ���������� �������������� ���
//    atol25f.Password := '30';
//    // ������ � ����� ������� � ��������
//    atol25f.Mode := 3;
//    if atol25f.SetMode <> 0 then Exit;
//    // ������� �����
//    atol25f.ReportType := 1;
//    if atol25f.Report <> 0 then Exit;
//  end;
//
//// ������ � ����� �����������
//  // ������������� ������ �������
//  atol25f.Password := '30';
//  // ������ � ����� �����������
//  atol25f.Mode := 1;
//  if atol25f.SetMode <> 0 then Exit;
/////////////////////////////////
////// ������� ��� �����
//  // ����������� �������
//  atol25f.Name := '���������� ����������� ������ ������� � ���������� ����������/��';//���������� �������� �������� ��� ��� ��������������'
//  atol25f.Price := 1;
//  atol25f.Quantity := 1;
//  //atol25f.Department := 2;
//  if atol25f.Registration <> 0 then Exit;
//// X - �����
//  // ������������� ������ �������������� ���
//  //atol25f.Password := '29';
//  atol25f.Password := '30';
//  // ������ � ����� ������� ��� �������
//  atol25f.Mode := 2;
//  if atol25f.SetMode <> 0 then Exit;
//  // ������� �����
//  atol25f.ReportType := 2;
//  if atol25f.Report <> 0 then Exit;
//
//// Z - �����
////  // ������������� ������ ���������� �������������� ���
//  atol25f.Password := '30';
//  // ������ � ����� ������� � ��������
//  atol25f.Mode := 3;
//  if atol25f.SetMode <> 0 then Exit;
//  // ������� �����
//  atol25f.ReportType := 1;
//  if atol25f.Report <> 0 then Exit;
//
//// ������� � ����� ������, ����� ���-�� ��� ���������� �������� �� ������ ��� ������ ���������
//  if atol25f.ResetMode <> 0 then Exit;
//
//// ����������� ����
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
  // �������� ��������� ���
  atol25f.GetStatus;
  if atol25f.GetStatus <> 0 then
    begin
      Exit;
      ShowMessage('������ �����������');
    end;
// ���� ���� �������� ���, �� �������� ���
  if atol25f.CheckState <> 0 then
    if atol25f.CancelCheck <> 0 then Exit;
// ���� ����� ������� ������� Z-�����
  if atol25f.SessionOpened then
  begin
    // ������������� ������ ���������� �������������� ���
    atol25f.Password := '30';
    // ������ � ����� ������� � ��������
    atol25f.Mode := 3;
    if atol25f.SetMode <> 0 then Exit;
    // ������� �����
    atol25f.ReportType := 1;
    if atol25f.Report <> 0 then Exit;
  end;
end;

procedure Atoll_Off;
begin
  if ( not Assigned(atol25f)) then
  begin
    atol25f.DeviceEnabled:=False;
    ShowMessage('���������� ���������')
  end;

end;

procedure Atol_XReport;
begin
 Atoll_On;
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
  Atoll_Off;
end;




procedure GetAttributes;
begin
  //////////////////////
  // ��� - 1, ���� - 8, ��� - 32
  atol25f.Mode := 0;
  atol25f.SetMode;
  atol25f.AttrNumber := 1055;
  atol25f.ReadAttribute;
  s:=s+'#10#13'+atol25f.AttrValue;

// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ------------------------- ����� � ��������� �������� ------------------------------//
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //

atol25f.Mode := 2;
atol25f.SetMode;
atol25f.NewDocument;
atol25f.AttrNumber := 1021;
atol25f.AttrValue := '������� ������ ������ �.�.';
atol25f.WriteAttribute();
atol25f.ReportType := 42;
atol25f.Report();

// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ----------- ��������� ��������� ����� ����������� ���������� --------------//
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //

atol25f.Mode := 0;
atol25f.SetMode;
// ��� ������ ����
atol25f.RegisterNumber := 43;
atol25f.OFDLastError := 1;
atol25f.GetRegister();
s:=s+'#10#13'+ '��� ������ ����: ' + IntToStr(atol25f.OFDLastError) ;
//  ��� ������ ���
atol25f.RegisterNumber := 43;
atol25f.OFDLastError := 2;
atol25f.GetRegister;
s:=s+'#10#13'+ '��� ������ ���: ' + IntToStr(atol25f.OFDLastError);
// ��� ������ ��
atol25f.RegisterNumber := 43;
atol25f.OFDLastError := 3;
atol25f.GetRegister;
s:=s+'#10#13'+'��� ������ ��: ' + IntToStr(atol25f.OFDLastError);
atol25f.Caption := s;
//atol25f.CharLineLength :=64;
atol25f.TextWrap:=1;
atol25f.PrintString;

// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ----------- ��������� ���������� �������������� ���������� � --------------//
//------------------- ���� ������ ������� ��������������� -------------------------//
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //

s:='';
atol25f.Mode := 0;
atol25f.SetMode;
// ���������� �������������� ����������:
atol25f.RegisterNumber := 44;
atol25f.GetRegister;
s:= '���������� �������������� ����������: ' + IntToStr(atol25f.Count);
// ���� ������ ������� ��������������� ���������
atol25f.RegisterNumber := 45;
atol25f.GetRegister;
s:=s+'#10#13'+ '���� ������ ������� ��������������� ���������: ' + IntToStr(atol25f.Day) + '.' + IntToStr(atol25f.Month) + '.' + IntToStr(atol25f.Year) + ' ' + IntToStr(atol25f.Hour) + ':' + IntToStr(atol25f.Minute);
atol25f.Caption := s;
//atol25f.CharLineLength:=64;
atol25f.TextWrap:=1;
atol25f.PrintString();

// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ----------- ��������� ��������������� ������ ��� ----------------------------//
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
s:= '';
atol25f.Mode := 0;
atol25f.SetMode();

// ������������ ������������
atol25f.AttrNumber := 1048;
atol25f.ReadAttribute;
s:= '������������ ������������: ' + atol25f.AttrValue;

// ��� ������������
atol25f.AttrNumber := 1018;
atol25f.ReadAttribute;
s:=s+'#10#13'+ '��� ������������: ' + atol25f.AttrValue ;

// ����� ��������� ��� � ���� �������� � ���������� ������� ����������, ������� � �������� ������������� ������� �����. �������� 41 ������������� ����� 101001 (��� 1, ��� ����� 0, ��� �����-������ 0, ���� 1, ��� 0, ��� 1)
atol25f.AttrNumber := 1062;
atol25f.ReadAttribute();
s:=s+'#10#13'+ '��������� ���: ' + atol25f.AttrValue  ;

// ��������������� ����� ���
atol25f.AttrNumber := 1037;
atol25f.ReadAttribute;
s:=s+'#10#13'+ '��������������� ����� ���: ' + atol25f.AttrValue;
// ����������� ������� ������������� � ��������� ��������

// ����� ����������� ����������
atol25f.RegisterNumber := 47;
atol25f.GetRegister;
s:=s+'#10#13'+ '����� ����������� ����������: ' + atol25f.SerialNumber ;

// ����� ����������� ��������� ��������� �����������/���������������, � ����� ���� � �����
atol25f.RegisterNumber := 48;
atol25f.GetRegister();
s:=s+'#10#13'+ '����� �� ��������� �����������/���������������: ' + IntToStr(atol25f.DocNumber);
s:=s+'#10#13'+ '���� �� ��������� �����������/���������������: ' + IntToStr(atol25f.Day) + '.' + IntToStr(atol25f.Month) + '.' + IntToStr(atol25f.Year) + ' ' + IntToStr(atol25f.Hour) + ':' + IntToStr(atol25f.Minute);

// ������ �� ���������� ����������� ��������� ����
atol25f.RegisterNumber := 51;
atol25f.GetRegister;
s:=s+'#10#13'+  '����� ����������� ���������: ' + IntToStr(atol25f.DocNumber);
s:=s+'#10#13'+  '��� ����: ' + IntToStr(atol25f.LastCheckType);
s:=s+'#10#13'+  '����� ����: ' + FloatToStr(atol25f.Summ);
s:=s+'#10#13'+  '���� � ����� ����: ' + IntToStr(atol25f.Day) + '.' + IntToStr(atol25f.Month) + '.' + IntToStr(atol25f.Year) + ' ' + IntToStr(atol25f.Hour) + ':' + IntToStr(atol25f.Minute);
s:=s+'#10#13'+  '���������� ������� ���������: ' + atol25f.FiscalSign;

// ������ �� ���������� ����������� ���������
atol25f.RegisterNumber := 52;
atol25f.GetRegister;
s:=s+'#10#13'+  '����� ����������� ���������: ' + IntToStr(atol25f.DocNumber);
s:=s+'#10#13'+  '��� ����: ' + IntToStr(atol25f.LastCheckType);
s:=s+'#10#13'+  '����� ����: ' + FloatToStr(atol25f.Summ);
s:=s+'#10#13'+  '���� � ����� ����: ' + IntToStr(atol25f.Day) + '.' + IntToStr(atol25f.Month) + '.' + IntToStr(atol25f.Year) + ' ' + IntToStr(atol25f.Hour) + ':' + IntToStr(atol25f.Minute);
s:=s+'#10#13'+  '���������� ������� ���������: ' + atol25f.FiscalSign;
Application.MessageBox(PChar(s),'��������',MB_OK);

end;

procedure Demo;
begin
// �������� ����
  ECR.DeviceEnabled := true;
  if ECR.ResultCode <> 0 then Exit;

// �������� ��������� ���
  if ECR.GetStatus <> 0 then Exit;

// ��������� �� ������ ������ ��� �� �������������������
  if ECR.Fiscal then
    if Application.MessageBox('��� ���������������! �� ������������� ������ ����������?', PChar(Application.Title), MB_ICONEXCLAMATION + MB_YESNO) = idNo then
      Exit;

// ���� ���� �������� ���, �� �������� ���
  if ECR.CheckState <> 0 then
    if ECR.CancelCheck <> 0 then Exit;

// ���� ����� ������� ������� Z-�����
  if ECR.SessionOpened then
  begin
    // ������������� ������ ���������� �������������� ���
    ECR.Password := '30';
    // ������ � ����� ������� � ��������
    ECR.Mode := 3;
    if ECR.SetMode <> 0 then Exit;
    // ������� �����
    ECR.ReportType := 1;
    if ECR.Report <> 0 then Exit;
  end;

// ������ � ����� �����������
  // ������������� ������ �������
  ECR.Password := '30';
  // ������ � ����� �����������
  ECR.Mode := 1;
  if ECR.SetMode <> 0 then Exit;

// ������� ��� �����
  // ����������� �������
  ECR.Name := '����1';
  ECR.Price := 10.45;
  ECR.Quantity := 1;
  ECR.Department := 2;
  if ECR.Registration <> 0 then Exit;
  // ������ ������ �� ���������� �������
  ECR.Percents := 10;
  ECR.Destination := 1;
  if ECR.PercentsDiscount <> 0 then Exit;
  // ����������� �������
  ECR.Name := '����2';
  ECR.Price := 5;
  ECR.Quantity := 2;
  ECR.Department := 1;
  if ECR.Registration <> 0 then Exit;
  // ������ ������ �� ���� ���
  ECR.Summ := 10.40;
  ECR.Destination := 0;
  if ECR.SummDiscount <> 0 then Exit;
  // �������� ���� ��������� ��� ����� ���������� �� ������� �����
  ECR.TypeClose := 0;
  if ECR.CloseCheck <> 0 then Exit;

// ������� �� ������
  // ����������� �������
  ECR.Name := '������';
  ECR.Price := 10.45;
  ECR.Quantity := 1;
  ECR.Department := 2;
  if ECR.Registration <> 0 then Exit;
  // ����������� �������
  ECR.Name := '�����-����';
  ECR.Price := 25.00;
  ECR.Quantity := 5;
  ECR.Department := 1;
  if ECR.Registration <> 0 then Exit;
  // ������ ���������� �����������
  if ECR.Storno <> 0 then Exit;
  // ����������� �������
  ECR.Name := '�����';
  ECR.Price := 25;
  ECR.Quantity := 5;
  ECR.Department := 1;
  if ECR.Registration <> 0 then Exit;
  // ������ ������ �� ���� ���
  ECR.Summ := 50;
  ECR.Destination := 0;
  if ECR.SummDiscount <> 0 then Exit;
  // �������� ���� ��������� � ������ ���������� �� ������� �����
  ECR.Summ := 100;
  ECR.TypeClose := 0;
  if ECR.Delivery <> 0 then Exit;

// �������������
  // ����������� �������������
  ECR.Name := 'Dirol';
  ECR.Price := 7;
  ECR.Quantity := 1;
  if ECR.Annulate <> 0 then Exit;
  // ����������� �������������
  ECR.Name := 'Orbit';
  ECR.Price := 8;
  ECR.Quantity := 2;
  if ECR.Annulate <> 0 then Exit;
  // �������� ����
  ECR.TypeClose := 0;
  if ECR.CloseCheck <> 0 then Exit;

// �������
  // ����������� ��������
  ECR.Name := '������';
  ECR.Price := 10.45;
  ECR.Quantity := 1;
  if ECR.Return <> 0 then Exit;
  // ����������� ��������
  ECR.Name := '�������';
  ECR.Price := 99.99;
  ECR.Quantity := 1.235;
  if ECR.Return <> 0 then Exit;
  // ������ ������ �� ���� ���
  ECR.Summ := 50;
  ECR.Destination := 0;
  if ECR.SummDiscount <> 0 then Exit;
  // �������� ����
  ECR.TypeClose := 0;
  if ECR.CloseCheck <> 0 then Exit;

// �������� ����������
  ECR.Summ := 400.50;
  if ECR.CashIncome <> 0 then Exit;

// ������� ����������
  ECR.Summ := 121.34;
  if ECR.CashOutcome <> 0 then Exit;

// X - �����
  // ������������� ������ �������������� ���
  ECR.Password := '29';
  // ������ � ����� ������� ��� �������
  ECR.Mode := 2;
  if ECR.SetMode <> 0 then Exit;
  // ������� �����
  ECR.ReportType := 2;
  if ECR.Report <> 0 then Exit;

// Z - �����
  // ������������� ������ ���������� �������������� ���
  ECR.Password := '30';
  // ������ � ����� ������� � ��������
  ECR.Mode := 3;
  if ECR.SetMode <> 0 then Exit;
  // ������� �����
  ECR.ReportType := 1;
  if ECR.Report <> 0 then Exit;

// ������� � ����� ������, ����� ���-�� ��� ���������� �������� �� ������ ��� ������ ���������
  if ECR.ResetMode <> 0 then Exit;

// ����������� ����
  ECR.DeviceEnabled := false;
  if ECR.ResultCode <> 0 then Exit;

  Application.MessageBox('��� �������� ������� ���������.', PChar(Application.title), MB_ICONINFORMATION + MB_OK);
end;

procedure TfrmMain.btnStartClick(Sender: TObject);
begin
  btnStart.Enabled := false;
  btnShowProperties.Enabled := false;

  Demo;
  if ECR.ResultCode <> 0 then
    Application.MessageBox(PChar('������ ���: ' + string(ECR.ResultDescription) + '!'), PChar(Application.Title), MB_ICONERROR + MB_OK);

  btnStart.Enabled := true;
  btnShowProperties.Enabled := true;
end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
//  atol25f.DevicesSettings:='DeviceNumber=1DeviceName=����25�MachineName=PortNumber=99BaudRate=18Model=57'+
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
        Application.MessageBox(PChar('������ ����������� � ���. '+ atol25f.ResultDescription),'��������',MB_ICONERROR+MB_OK);
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
// ���� ���� �������� ���, �� �������� ���
  if atol25f.CheckState <> 0 then
    if atol25f.CancelCheck <> 0 then
      begin
       ShowMessage('���� �������� ��� '+ atol25f.ResultDescription);
       Exit;
      end;
end;

procedure TfrmMain.NoSenDocRepbtnClick(Sender: TObject);
var
textForPrint : String;
i,i1:Integer;
begin
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ----------- ��������� ���������� �������������� ���������� � --------------//
//------------------- ���� ������ ������� ��������������� -------------------------//
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
Atoll_On;


i:=atol25f.CharLineLength;
i1:=  atol25f.TextWrap  ;
if i1 = 0  then  atol25f.TextWrap:=1;

atol25f.Mode := 0;
atol25f.SetMode();
// ���������� �������������� ����������:
atol25f.RegisterNumber := 44;
atol25f.GetRegister;
textForPrint := '���������� �������������� ����������: ' + IntToStr(atol25f.Count) ;
atol25f.Caption := textForPrint;
atol25f.PrintString ;
// ���� ������ ������� ��������������� ���������
atol25f.RegisterNumber := 45;
atol25f.GetRegister();
textForPrint := '���� ������ ������� ��������������� ��������� ########### ################ ##############   ## @@@@@@@@@@ : ' + IntToStr(atol25f.Day) + '.' + IntToStr(atol25f.Month) + '.' + IntToStr(atol25f.Year) + ' ' + IntToStr(atol25f.Hour) + ':' + IntToStr(atol25f.Minute);
atol25f.Caption := textForPrint;
atol25f.PrintString();
Atoll_Off;
// // // // // // // // // // // // // // // // // // // // // // // // // // //
end;

procedure TfrmMain.Rep42BtnClick(Sender: TObject);
begin
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ------------------------- ����� � ��������� �������� ------------------------------//
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
Atoll_On;
atol25f.Mode := 2;
atol25f.SetMode();
atol25f.NewDocument();
//atol25f.AttrNumber := 1021;
//atol25f.AttrValue := "������� ������ ������ �.�.";
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
// ----------- ��������� ��������� ����� ����������� ���������� --------------//
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
Atoll_On;

atol25f.Mode := 0;
atol25f.SetMode ;
// ��� ������ ����
atol25f.RegisterNumber := 43;
atol25f.OFDLastError := 1;
atol25f.GetRegister;
textForPrint := '��� ������ ����: ' + IntToStr(atol25f.OFDLastError) ;
atol25f.Caption := textForPrint;
atol25f.PrintString ;
//  ��� ������ ���
atol25f.RegisterNumber := 43;
atol25f.OFDLastError := 2;
atol25f.GetRegister ;
textForPrint :=  '��� ������ ���: ' +IntToStr( atol25f.OFDLastError) ;
atol25f.Caption := textForPrint;
atol25f.PrintString ;
// ��� ������ ��
atol25f.RegisterNumber := 43;
atol25f.OFDLastError := 3;
atol25f.GetRegister ;
textForPrint := '��� ������ ��: ' + IntToStr( atol25f.OFDLastError);
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
   ShowMessage('������ �������� ����� '+ atol25f.ResultDescription);
end;

procedure TfrmMain.ZReportBtnClick(Sender: TObject);
begin
// ���� ���� �������� ���, �� �������� ���
  if atol25f.CheckState <> 0 then
    if atol25f.CancelCheck <> 0 then
      begin
       ShowMessage('���� �������� ��� '+ atol25f.ResultDescription);
       Exit;
      end;

//    atol25f.Mode := 3;
//    atol25f.SetMode;
//    atol25f.NewDocument();
//    atol25f.AttrNumber := 1021;
//    atol25f.AttrValue := '���. ���.';
//    atol25f.WriteAttribute();
//    atol25f.ReportType := 1;
//    atol25f.Report();



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
end;

procedure TfrmMain.btnShowPropertiesClick(Sender: TObject);
begin
// ���������� �������� �������
  //ECR.ShowProperties;
  atol25f.ShowProperties;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
 Memo1.Clear;
// ������� ������ ������ �������� ���
// ���� ������ ������� �� ������� ������������ ����������, �� �������� ����������� ������ ����������
  try
    atol25f := TFprnM45.Create(Nil);
    atol25f.ApplicationHandle := Application.Handle; // ���������� ��� ����������� ����������� ���� �������� � ��������� ����������
  except
    Application.MessageBox('�� ������� ������� ������ ������ �������� ���!', PChar(Application.Title), MB_ICONERROR + MB_OK);
    Application.Terminate;
  end;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// ��������� ������ ��������
  atol25f.Free;
end;

end.
