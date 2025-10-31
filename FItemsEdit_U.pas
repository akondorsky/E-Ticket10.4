unit FItemsEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, Buttons, ExtCtrls ,Db;

type
  TFItemsEdit_F = class(TForm)
    Label8: TLabel;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    Label7: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    E_Usluga: TButtonedEdit;
    Label1: TLabel;
    Label2: TLabel;
    E_Stoim: TButtonedEdit;
    E_Summa: TButtonedEdit;
    E_Vat: TButtonedEdit;
    E_Itogo: TButtonedEdit;
    Label3: TLabel;
    E_Edizm: TButtonedEdit;
    Label4: TLabel;
    E_Kol: TButtonedEdit;
    E_Discount: TButtonedEdit;
    procedure CancBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure E_DateKeyPress(Sender: TObject; var Key: Char);
    procedure E_TimeKeyPress(Sender: TObject; var Key: Char);
    procedure E_TruckKeyPress(Sender: TObject; var Key: Char);
    procedure E_StoimKeyPress(Sender: TObject; var Key: Char);
    procedure E_KolKeyPress(Sender: TObject; var Key: Char);
    procedure E_EdizmKeyPress(Sender: TObject; var Key: Char);
    procedure E_GoodsKeyPress(Sender: TObject; var Key: Char);
    procedure E_SummaKeyPress(Sender: TObject; var Key: Char);
    procedure E_DiscountKeyPress(Sender: TObject; var Key: Char);
    procedure E_valnameKeyPress(Sender: TObject; var Key: Char);
    procedure E_Date_OutKeyPress(Sender: TObject; var Key: Char);
    procedure E_Time_outKeyPress(Sender: TObject; var Key: Char);
    procedure E_UslugaKeyPress(Sender: TObject; var Key: Char);
    procedure E_BrTypeKeyPress(Sender: TObject; var Key: Char);
    procedure E_BrNameKeyPress(Sender: TObject; var Key: Char);
    procedure E_VatKeyPress(Sender: TObject; var Key: Char);
    procedure E_ItogoKeyPress(Sender: TObject; var Key: Char);
    procedure E_StoimChange(Sender: TObject);
    procedure E_KolChange(Sender: TObject);
    procedure E_DiscountChange(Sender: TObject);
    procedure E_EdizmRightButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure GetValuesToEdit;
    procedure CalcAll;
  public
    { Public declarations }
  end;

var
  FItemsEdit_F: TFItemsEdit_F;
  DscPrice,Kol,Stoim,Itogo:Double;


implementation

uses main,dm_u, Edizm_U, Buh_U;

{$R *.dfm}
procedure TFItemsEdit_F.CalcAll;
begin
Kol:=StrToFloat( E_Kol.Text);
Stoim:=StrToFloat( E_Stoim.Text);
DscPrice:=StrToFloat(E_Discount.Text);
Itogo:=(Stoim*Kol) - (Stoim*Kol*DscPrice/100);
E_Itogo.Text:=FormatFloat('0.00',Itogo);
E_vat.Text:=FormatFloat('0.00', Itogo*VatRate/105);
E_Summa.Text:=FormatFloat('0.00', Itogo-(Itogo*VatRate/105)) ;
end;


procedure TFItemsEdit_F.GetValuesToEdit;
begin
  Kol:=FItemDataset.FieldByName('KOL').AsFloat;
  E_Kol.Text:=FormatFloat('0.00',Kol);
  E_Usluga.Text:=FItemDataset.FieldByName('USLUGA').AsString;
  Stoim:=FItemDataset.FieldByName('STOIM').AsFloat;
  E_Stoim.Text:=FormatFloat('0.00',Stoim);
  DscPrice:=FItemDataset.FieldByName('DISCOUNT').AsInteger;
  E_Discount.Text:=FItemDataset.FieldByName('DISCOUNT').AsString;
  E_Vat.Text:=FItemDataset.FieldByName('SUM_VAT').AsString;
  E_Summa.Text:=FItemDataset.FieldByName('SUMMA').AsString;
  E_Itogo.Text:=FItemDataset.FieldByName('TOTAL_SUM').AsString;
  E_Edizm.Text:=FItemDataset.FieldByName('EDIZM').AsString;
end;


procedure TFItemsEdit_F.CancBtnClick(Sender: TObject);
begin
FItemsEdit_F.Close;
end;

procedure TFItemsEdit_F.FormShow(Sender: TObject);
begin
{if (ROLE = 'ACCOUNTER') then
  begin
     E_Stoim.Enabled:=True;
     E_Discount.Enabled:=True;
  end;
if (ROLE = 'SYSADMIN') then
  begin
     E_Stoim.Enabled:=True;
     E_Discount.Enabled:=True;
  end;}
GetValuesToEdit;
E_Kol.SetFocus;
E_Stoim.Enabled:=True;
if Length(Trim(E_Stoim.Text)) > 0  then
    if StrToFloat(E_Stoim.Text) = 0  then E_Stoim.Enabled:=True;

end;

procedure TFItemsEdit_F.SaveBtnClick(Sender: TObject);
var
  S:String;
begin
try
  try
   s:='update faktura_items set STOIM=:p0,SUM_VAT=:p1,SUMMA=:p2,TOTAL_SUM=:p3, ' ;
   s:=s+'KOL=:p4,DISCOUNT=:p5,EDIZM=:p6, USERNAME=:p7, USERDOLJ=:p8 where ID=:p9 ';
   DM.Sql.Close;
   DM.Sql.SQL.Clear;
   DM.Sql.SQL.Add(s);
   if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction; //start tran
   DM.Sql.Params[0].asCurrency:=StrToFloat( E_Stoim.Text);
   DM.Sql.Params[1].asCurrency:=StrToFloat(E_Vat.Text);
   DM.Sql.Params[2].asCurrency:=StrToFloat(E_Summa.Text);
   DM.Sql.Params[3].asCurrency:=StrToFloat(E_Itogo.Text);
   DM.Sql.Params[4].asCurrency:=StrToFloat(E_Kol.text);
   DM.Sql.Params[5].AsInteger:=StrToInt(E_Discount.Text);
   DM.Sql.Params[6].AsString:=Trim(E_Edizm.Text);
   DM.Sql.Params[7].AsString:=User;
   DM.Sql.Params[8].AsString:=Dolj;
   DM.Sql.Params[9].AsInteger:=IdFItems;
   DM.Sql.ExecQuery;
   DM.Sql.Transaction.Commit;
   ModalResult:=mrOk;
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


procedure TFItemsEdit_F.E_DateKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsEdit_F.E_TimeKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsEdit_F.E_TruckKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsEdit_F.E_StoimKeyPress(Sender: TObject; var Key: Char);
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

procedure TFItemsEdit_F.E_KolKeyPress(Sender: TObject; var Key: Char);
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

procedure TFItemsEdit_F.E_EdizmKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsEdit_F.E_EdizmRightButtonClick(Sender: TObject);
begin
 if (Edizm_F.ShowModal = mrOK) then E_Edizm.Text:=DM.Qry_Edizm.FieldValues['KR_NAME'];
end;

procedure TFItemsEdit_F.E_GoodsKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsEdit_F.E_SummaKeyPress(Sender: TObject; var Key: Char);
var
 ch:Char;
begin
 ch:=CurDecSep;
 if  not(Key in ['0'..'9',ch,#8]) then Key:=#0;     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsEdit_F.E_DiscountKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsEdit_F.E_valnameKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsEdit_F.E_Date_OutKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsEdit_F.E_Time_outKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsEdit_F.E_UslugaKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsEdit_F.E_BrTypeKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsEdit_F.E_BrNameKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsEdit_F.E_VatKeyPress(Sender: TObject; var Key: Char);
var
 ch:Char;
begin
 ch:=CurDecSep;
 if  not(Key in ['0'..'9',ch,#8]) then Key:=#0;     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsEdit_F.E_ItogoKeyPress(Sender: TObject;
  var Key: Char);
var
 ch:Char;
begin
 ch:=CurDecSep;
 if  not(Key in ['0'..'9',ch,#8]) then Key:=#0;     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsEdit_F.E_StoimChange(Sender: TObject);
begin
 if Length((Sender as TButtonedEdit).Text) <>  0 then
    CalcAll;
end;

procedure TFItemsEdit_F.E_KolChange(Sender: TObject);
begin
 if Length((Sender as TButtonedEdit).Text) <>  0 then
  CalcAll;
end;

procedure TFItemsEdit_F.E_DiscountChange(Sender: TObject);
begin
 if Length((Sender as TButtonedEdit).Text) <>  0 then
  CalcAll;
end;

end.
