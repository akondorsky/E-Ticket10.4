unit PriceListEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBGridEh, Mask, DBCtrlsEh, DBLookupEh,
  Buttons, ExtCtrls,DB ;

type
  TPriceListEdit_F = class(TForm)
    E_Name: TEdit;
    E_Order: TComboBox;

    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    E_Stoim: TEdit;
    Label7: TLabel;
    Label2: TLabel;
    E_Nomer: TEdit;
    E_Npp: TEdit;
    Label1: TLabel;
    Label6: TLabel;
    E_Edizm: TButtonedEdit;
    E_Vat: TEdit;
    Label8: TLabel;
    Ch_Time: TCheckBox;
    Ch_WhFlag: TCheckBox;
    procedure E_EdizmButtonClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure E_NomerKeyPress(Sender: TObject; var Key: Char);
    procedure E_NameKeyPress(Sender: TObject; var Key: Char);
    procedure E_typepriceKeyPress(Sender: TObject; var Key: Char);
    procedure E_StoimKeyPress(Sender: TObject; var Key: Char);
    procedure E_EdizmKeyPress(Sender: TObject; var Key: Char);
    procedure E_OrderKeyPress(Sender: TObject; var Key: Char);
    procedure E_NppKeyPress(Sender: TObject; var Key: Char);
    procedure E_EdizmRightButtonClick(Sender: TObject);

  private
    { Private declarations }
    procedure GetValues;
  public
    { Public declarations }
  end;

var
  PriceListEdit_F: TPriceListEdit_F;

implementation

{$R *.dfm}
uses dm_u,main,edizm_u;

procedure TPriceListEdit_F.GetValues;
begin
    E_Name.Text:=DM.MT_PriceList.FieldByName('USLUGA').AsString;
    E_Nomer.Text:=DM.MT_PriceList.FieldByName('NPP_STR').AsString;
    E_Edizm.Text:=DM.MT_PriceList.FieldByName('EDIZM').AsString ;
    E_Stoim.Text:=FloatToStr(DM.MT_PriceList.FieldByName('STOIM').AsCurrency);
    E_Npp.Text:=DM.MT_PriceList.FieldByName('NPP_NUM').AsString;
    if (DM.MT_PriceList.FieldByName('ORDER_FLAG').AsInteger = 0) then
       E_Order.ItemIndex:=0
      else
       E_Order.ItemIndex:=1;
    E_Vat.Text:=DM.MT_PriceList.FieldByName('STAVKA_VAT').AsString ;
    if (DM.MT_PriceList.FieldByName('TIME_FLAG').AsInteger = 1) then
       Ch_Time.Checked:=True
     else
       Ch_Time.Checked:=False;
    if (DM.MT_PriceList.FieldByName('WH_FLAG').AsInteger = 1) then
       Ch_WhFlag.Checked:=True
     else
       Ch_WhFlag.Checked:=False;
end;

procedure TPriceListEdit_F.E_EdizmButtonClick(Sender: TObject);
begin
 if Edizm_F.ShowModal = mrOK then E_Edizm.Text:=DM.Qry_Edizm.FieldByName('KR_NAME').asString;
end;

procedure TPriceListEdit_F.SaveBtnClick(Sender: TObject);
var
 Id_Rec:Integer;
 s1:String;
begin
try
  Id_Rec:=DM.MT_PriceList.FieldValues['Id'];
  s1:='update price_lists set name=:p0, stoim=:p1,order_flag=:p2,npp_str=:p3,edizm=:p4, ';
  s1:=s1+ ' npp_num=:p5,vat=:p6,time_flag=:p7,wh_flag=:p8 where id=:p9';
  DM.SQL.Close;
  DM.SQL.SQL.Clear;
  DM.SQL.SQL.Add(s1);
  if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction;
  try
     DM.SQL.Params[0].asString:=E_Name.Text;
     if Length(Trim(E_Stoim.Text))  = 0  then
        DM.SQL.Params[1].Value:=null
      else
        DM.SQL.Params[1].asCurrency:=StrToFloat(E_Stoim.Text);
      case E_Order.ItemIndex of
      0: DM.SQL.Params[2].AsInteger:=0;
      1: DM.SQL.Params[2].AsInteger:=1;
     end;
     DM.SQL.Params[3].asString:=E_Nomer.Text;
     DM.SQL.Params[4].asString:=E_Edizm.Text;
     DM.SQL.Params[5].asInteger:=StrToInt(Trim(E_Npp.Text));
     if Length(Trim(E_Vat.Text)) = 0  then
        DM.SQL.Params[6].Value:=null
      else
        DM.SQL.Params[6].AsInteger:=StrToInt(E_Vat.Text);
     if Ch_Time.Checked  then
        DM.SQL.Params[7].Value:=1
      else
        DM.SQL.Params[7].Value:=null;
    if Ch_WhFlag.Checked  then
        DM.SQL.Params[8].Value:=1
      else
        DM.SQL.Params[8].Value:=0;

     DM.SQL.Params[9].asInteger:=Id_rec;
     DM.SQL.ExecQuery;
     DM.SQL.Transaction.Commit;
     ModalResult:=mrOk;
  except
        on E: EdatabaseError do
          begin
           DM.Sql.Transaction.Rollback;
           ShowMessage(E.Message);
          end;
  end;
  DM.MT_PriceList.Close;
  DM.MT_PriceList.Open;
  DM.Mt_PriceList.Locate('ID',Id_Rec,[]);
finally
  if DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.Rollback;
end;
end;


procedure TPriceListEdit_F.FormShow(Sender: TObject);
begin
 GetValues;
 E_Nomer.SetFocus;
end;

procedure TPriceListEdit_F.E_NomerKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TPriceListEdit_F.E_NameKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TPriceListEdit_F.E_typepriceKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TPriceListEdit_F.E_StoimKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TPriceListEdit_F.E_EdizmKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TPriceListEdit_F.E_EdizmRightButtonClick(Sender: TObject);
begin
 if Edizm_F.ShowModal = mrOk  then E_Edizm.Text:=DM.Qry_Edizm.FieldByName('KR_NAME').AsString;
end;

procedure TPriceListEdit_F.E_OrderKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TPriceListEdit_F.E_NppKeyPress(Sender: TObject; var Key: Char);
var
 ch:Char;
begin
 ch:=CurDecSep;
 if  not(Key in ['0'..'9',ch,#8]) then Key:=#0;
  if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

end.
