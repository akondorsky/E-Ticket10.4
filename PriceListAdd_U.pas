unit PriceListAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBGridEh, Mask, DBCtrlsEh, DBLookupEh,Buttons, ExtCtrls,DB;

type
  TPriceListAdd_F = class(TForm)
    E_Order: TComboBox;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    E_typeprice: TDBLookupComboboxEh;
    Label2: TLabel;
    E_Name: TEdit;
    E_Nomer: TEdit;
    E_Npp: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    E_Stoim: TEdit;
    Label1: TLabel;
    Label6: TLabel;
    E_Edizm: TButtonedEdit;
    Label7: TLabel;
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
    procedure ClearControls;
  public
    { Public declarations }
  end;

var
  PriceListAdd_F: TPriceListAdd_F;

implementation

{$R *.dfm}
uses dm_u, main,edizm_u,pricelist_u ;

procedure TPriceListAdd_F.ClearControls;
begin
    E_Name.Clear;
    E_Nomer.Clear;
    E_Edizm.Clear;
    E_Stoim.Clear;
//    E_Order.Clear;
    E_typeprice.Clear;
    E_NPP.Clear;
    Ch_Time.Checked:=False;
    Ch_WhFlag.Checked:=False;
end;

procedure TPriceListAdd_F.E_EdizmButtonClick(Sender: TObject);
begin
 if Edizm_F.ShowModal = mrOK then E_Edizm.Text:=DM.Qry_Edizm.FieldByName('KR_NAME').asString;
end;

procedure TPriceListAdd_F.SaveBtnClick(Sender: TObject);
var
 Id_Rec:Integer;
 s1,s2:String;
begin
try
  s1:='insert into price_lists ( name, stoim, order_flag, id_parent, npp_str, id_type_price,edizm,npp_num,vat,time_flag,wh_flag) ';
  s2:='values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10) ';

  DM.SQL.Close;
  DM.SQL.SQL.Clear;
  DM.SQL.SQL.Add(s1+s2);
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
     if Pricelist_f.Parent_f  then
        DM.SQL.Params[3].asInteger:= 0
       else
        DM.SQL.Params[3].asInteger:=DM.MT_PriceList.FieldByName('ID').AsInteger;
     DM.SQL.Params[4].asString:=E_Nomer.Text;
     DM.SQL.Params[5].asInteger:= DM.Qry_PriceType.FieldByName('ID').AsInteger;
     DM.SQL.Params[6].asString:=E_Edizm.Text;
     DM.SQL.Params[7].asInteger:=StrToInt(Trim(E_Npp.Text));
     if Length(Trim(E_Vat.Text)) = 0  then
        DM.SQL.Params[8].Value:=null
      else
        DM.SQL.Params[8].AsInteger:=StrToInt(E_Vat.Text);
     if Ch_Time.Checked  then
        DM.SQL.Params[9].Value:=1
      else
        DM.SQL.Params[9].Value:=null;
     if Ch_WhFlag.Checked  then
        DM.SQL.Params[10].Value:=1
      else
        DM.SQL.Params[10].Value:=null;

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
  DM.MT_PriceList.Locate('ID',Id_Rec,[]);
finally
  if DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.Rollback;
end;
end;

procedure TPriceListAdd_F.FormShow(Sender: TObject);
begin
 ClearControls;
 E_Nomer.SetFocus;
end;

procedure TPriceListAdd_F.E_NomerKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TPriceListAdd_F.E_NameKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TPriceListAdd_F.E_typepriceKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TPriceListAdd_F.E_StoimKeyPress(Sender: TObject; var Key: Char);
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

procedure TPriceListAdd_F.E_EdizmKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TPriceListAdd_F.E_EdizmRightButtonClick(Sender: TObject);
begin
 if Edizm_F.ShowModal = mrOk  then E_Edizm.Text:=DM.Qry_Edizm.FieldByName('KR_NAME').AsString;
end;

procedure TPriceListAdd_F.E_OrderKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TPriceListAdd_F.E_NppKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

end.
