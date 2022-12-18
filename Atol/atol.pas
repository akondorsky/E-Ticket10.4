unit atol;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,  ComCtrls, DB, IBX.IBCustomDataSet, IBX.IBDatabase,DateUtils,
  Mask,  Grids, DBGridEh, IBX.IBSQL, PrViewEh,
  PrnDbgeh, Menus,  ImgList, DBGridEhGrouping, GridsEh,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh,DbCtrlsEh,
  IBX.IbQuery,FprnM1C_TLB, OleCtrls, System.ImageList, EhLibVCL;


type
  TFormatol = class(TForm)
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
    procedure FiscalSaleButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ReturnBtnClick(Sender: TObject);
    procedure ZReportButtonClick(Sender: TObject);
    procedure XReportButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure E_SumChange(Sender: TObject);

  private
    function PrintFiscalBill(Sum:Double):Boolean;
  public
  end;

var
  Formatol: TFormatol;

implementation

uses dm_u,  buh_u,main;

{$R *.DFM}


procedure TFormatol.FiscalSaleButtonClick(Sender: TObject);
var
 Msg,s1:String;
 Itogo, sum_spis :Currency;
 IdAccount:Integer;
 N_Bill:Integer;
 qry:TIbQuery;
 flag:Boolean;
begin

if PlatNum = 0 then
  begin
    Msg:='����-������� �� ����������� ��� ����������� ����������. ���������� ������� ���';
    Application.MessageBox(PChar(Msg),'��������',mb_Ok+mb_IconStop);
    Exit;
  end;
Msg:='������� ��� �� ����������� '+ PlatName + '?';
if Application.MessageBox(PChar(Msg),'�������������',mb_YESNO+mb_IconQuestion) <> id_yes then
   Exit
 else
 begin
 try
  Itogo:=E_Sum.Value;
  (sender as TButton).Enabled:=False;
  qry:=TibQuery.Create(Self);
  qry.Database:=DM.DB;
  qry.SQL.Add(' select gen_id(GEN_ID_CL_ACCOUNTS,1) from rdb$database ');
  qry.Open;
  IdAccount:=qry.Fields[0].AsInteger;
  ///////
  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Add(' select gen_id(NEWID_FISCAL_BILL,1) from rdb$database ');
  qry.Open;
  N_Bill:=qry.Fields[0].AsInteger;
  /////////
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
    DM.Sql.Params[5].AsInteger:=IdAccount;
    DM.Sql.Params[6].AsInteger:=PlatNum;
    DM.Sql.Params[7].Value:='Y'; //���������� ��������
    DM.Sql.ExecQuery;

    if PrintFiscalBill(E_Sum.Value) then
    //flag:= true;
    //if flag then
       begin
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

procedure TFormatol.FormShow(Sender: TObject);

begin
    d1.Date:=Date();
    d2.Date:=Date();
    DM.Qry_Bills.Close;
    DM.Qry_Bills.Params[0].AsDate:=DateOf(D1.Date);
    DM.Qry_Bills.Params[1].AsDate:=dateOf(D2.Date);
    DM.Qry_Bills.open;
end;

procedure TFormatol.N1Click(Sender: TObject);
begin
//  PreviewBox1.PrintDialog;
PrintDBGridEh1.PageHeader.LeftText.Add('�������� ����� �� '+ DateTostr(Date));
PrintDBGridEh1.Preview;
end;

procedure TFormatol.Button1Click(Sender: TObject);
begin
  DM.Qry_Bills.Close;
  DM.Qry_Bills.Params[0].AsDate:=Dateof(D1.Date);
  DM.Qry_Bills.Params[1].AsDate:=DateOf(D2.Date);
  DM.Qry_Bills.Open;

end;

function TFormatol.PrintFiscalBill(Sum: Double): Boolean;
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

procedure TFormatol.ReturnBtnClick(Sender: TObject);
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

procedure TFormatol.ZReportButtonClick(Sender: TObject);
 var
  Kkm:TFprnM45;
begin
 try
  try
    if Application.MessageBox('����� Z-�����?','�������������',mb_YESNO+mb_IconQuestion) <> id_yes then
       Exit;
    Kkm:=TFprnM45.Create(Nil);
    kkm.DeviceEnabled :=True;
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
    //������ � �����
    Kkm.Mode := 3; // ����� ������� � ��������
    Kkm.Password := '30'; // ������ ���������
    if kkm.SetMode <> 0 then
      begin
       ShowMessage(kkm.ResultDescription);
       kkm.DeviceEnabled := false;
       Exit;
      end;
     // ������ Z-������
    Kkm.ReportType := 1; // �������� ����� � ��������
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

procedure TFormatol.XReportButtonClick(Sender: TObject);
 var
  Kkm:TFprnM45;
begin
 try
  try
    if Application.MessageBox('����� X-�����?','�������������',mb_YESNO+mb_IconQuestion) <> id_yes then
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
    //������ � �����
    Kkm.Mode := 2; // ����� ������� ��� �������
    Kkm.Password := '30'; // ������ ���������
    if kkm.SetMode <> 0 then
      begin
       ShowMessage(kkm.ResultDescription);
       kkm.DeviceEnabled := false;
       Exit;
      end;
     // ������ X-������
    Kkm.ReportType := 2; // �������� ����� ��� �������
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




procedure TFormatol.FormCreate(Sender: TObject);
begin
 if role = 'SYSADMIN' then  ReturnBtn.Enabled:=True;
end;

procedure TFormatol.E_SumChange(Sender: TObject);
begin
E_Vat.Value:=E_Sum.Value -(E_Sum.Value/(1+18/100));
end;

end.

