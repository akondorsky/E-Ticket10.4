unit FItemsAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, Buttons, ExtCtrls ,Db;

type
  TFItemsAdd_F = class(TForm)
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
    procedure E_UslugaRightButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure GetValuesToEdit;
    procedure CalcAll;
  public
    { Public declarations }
  end;

var
  FItemsAdd_F: TFItemsAdd_F;
  Stavka_Vat:Integer;
  DscPrice,Kol,Stoim,Itogo:Double;


implementation

uses main,dm_u, Edizm_U, Buh_U, PriceList_U;

{$R *.dfm}
procedure TFItemsAdd_F.CalcAll;
begin
Kol:=StrToFloat( E_Kol.Text);
Stoim:=StrToFloat( E_Stoim.Text);
DscPrice:=StrToFloat(E_Discount.Text);
Itogo:=(Stoim*Kol) - (Stoim*Kol*DscPrice/100);
E_Itogo.Text:=FormatFloat('0.00',Itogo);
E_Summa.Text:=FormatFloat('0.00', Itogo/(1+Stavka_Vat/100)) ;
E_vat.Text:=FormatFloat('0.00', Itogo-( Itogo/(1+Stavka_Vat/100)));
end;


procedure TFItemsAdd_F.GetValuesToEdit;
begin
  E_Discount.Text:=IntToStr(DiscPlat);
{//  Stavka_Vat:=DM.Qry_FItems.FieldByName('VAT').AsInteger;
//  Kol:=DM.Qry_FItems.FieldByName('KOL').AsFloat;
  E_Kol.Text:='0';
  E_Usluga.Clear;
//  Stoim:=DM.Qry_FItems.FieldByName('STOIM').AsFloat;
  E_Stoim.Text:='0';
  DscPrice:=DM.Qry_FItems.FieldByName('DISCOUNT').AsInteger;
  E_Vat.Text:=DM.Qry_FItems.FieldByName('SUM_VAT').AsString;
  E_Summa.Text:=DM.Qry_FItems.FieldByName('SUMMA').AsString;
  E_Itogo.Text:=DM.Qry_FItems.FieldByName('TOTAL_SUM').AsString;
  E_Edizm.Text:=DM.Qry_FItems.FieldByName('EDIZM').AsString;}



end;


procedure TFItemsAdd_F.CancBtnClick(Sender: TObject);
begin
FItemsAdd_F.Close;
end;

procedure TFItemsAdd_F.FormShow(Sender: TObject);
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
E_Usluga.SetFocus;
end;

procedure TFItemsAdd_F.SaveBtnClick(Sender: TObject);
var
  S:String;
begin
try
  try
   DM.Sql.Close;
   DM.Sql.SQL.Clear;
   DM.Sql.sql.Add(' insert into faktura_items (id_f_head,usluga,stoim,kol,edizm,id_usl,total_sum,vat,discount,npp_str,summa,sum_vat,username,userdolj) ');
   DM.Sql.sql.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13) ');
   if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction; //start tran
   DM.Sql.Params[0].AsInteger:=IdFHead;
   DM.Sql.Params[1].AsString:=E_Usluga.Text;
   DM.Sql.Params[2].AsDouble:=StrToFloat(E_Stoim.Text);
   DM.Sql.Params[3].AsDouble:=StrToFloat(E_Kol.Text);
   DM.Sql.Params[4].AsString:=E_Edizm.Text;
   DM.Sql.Params[5].AsInteger:=DM.MT_PriceList.FieldByName('ID').AsInteger;
   DM.Sql.Params[6].AsDouble:=StrToFloat(E_Itogo.Text);
   DM.Sql.Params[7].AsInteger:=Stavka_Vat;
   DM.Sql.Params[8].AsInteger:=StrToInt(E_Discount.Text);
   DM.Sql.Params[9].AsString:=DM.MT_PriceList.FieldByName('NPP_STR').AsString;
   DM.Sql.Params[10].AsDouble:=StrToFloat(E_Summa.Text);
   DM.Sql.Params[11].AsDouble:=StrToFloat(E_Vat.Text);
   DM.Sql.Params[12].AsString:=User;
   DM.Sql.Params[13].AsString:=Dolj;
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


procedure TFItemsAdd_F.E_DateKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsAdd_F.E_TimeKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsAdd_F.E_TruckKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsAdd_F.E_StoimKeyPress(Sender: TObject; var Key: Char);
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

procedure TFItemsAdd_F.E_KolKeyPress(Sender: TObject; var Key: Char);
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

procedure TFItemsAdd_F.E_EdizmKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsAdd_F.E_EdizmRightButtonClick(Sender: TObject);
begin
 if (Edizm_F.ShowModal = mrOK) then E_Edizm.Text:=DM.Qry_Edizm.FieldValues['KR_NAME'];
end;

procedure TFItemsAdd_F.E_GoodsKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsAdd_F.E_SummaKeyPress(Sender: TObject; var Key: Char);
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

procedure TFItemsAdd_F.E_DiscountKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsAdd_F.E_valnameKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsAdd_F.E_Date_OutKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsAdd_F.E_Time_outKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsAdd_F.E_UslugaKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsAdd_F.E_UslugaRightButtonClick(Sender: TObject);
begin
 if PriceList_F.ShowModal = mrOk  then
   begin
     if  FakturaTypeNumering = Trim(DM.MT_PriceList.FieldByName('TYPE_NUMERING').AsString) then
        begin
           E_Usluga.Text:=DM.MT_PriceList.FieldByName('USLUGA').AsString;
           Stoim:=DM.MT_PriceList.FieldByName('STOIM').AsCurrency;
           E_Stoim.Text:=FormatFloat('0.00', Stoim);
           E_Edizm.Text:=DM.MT_PriceList.FieldByName('EDIZM').AsString;
           Stavka_vat:=DM.MT_PriceList.FieldByName('STAVKA_VAT').AsInteger;
           SelectNext(Sender as TWinControl, True, True);
           E_Kol.Text:='1';
           CalcAll;
       end
      else
       begin
         Application.MessageBox('Услуга не может быть выбрана','Внимание',MB_ICONWARNING+mb_Ok);
         Exit;
       end;
   end;
end;

procedure TFItemsAdd_F.E_BrTypeKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsAdd_F.E_BrNameKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFItemsAdd_F.E_VatKeyPress(Sender: TObject; var Key: Char);
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

procedure TFItemsAdd_F.E_ItogoKeyPress(Sender: TObject;
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

procedure TFItemsAdd_F.E_StoimChange(Sender: TObject);
begin
 if Length((Sender as TButtonedEdit).Text) <>  0 then
    CalcAll;
end;

procedure TFItemsAdd_F.E_KolChange(Sender: TObject);
begin
 if Length((Sender as TButtonedEdit).Text) <>  0 then
  CalcAll;
end;

procedure TFItemsAdd_F.E_DiscountChange(Sender: TObject);
begin
 if Length((Sender as TButtonedEdit).Text) <>  0 then
  CalcAll;
end;

end.
