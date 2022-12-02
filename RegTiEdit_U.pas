unit RegTiEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls,DB, Mask,MaskUtils;

type
  TMyMaskEdit = class(TMaskEdit)
    protected
      procedure ValidateError;override;
  end;

type
  TRegTiEdit_F = class(TForm)
    Label1: TLabel;
    E_Zayv: TEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    E_Post: TEdit;
    E_City: TEdit;
    E_Street: TEdit;
    E_House: TEdit;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    Label14: TLabel;
    E_Discount: TEdit;
    Label15: TLabel;
    E_Address: TEdit;
    Label10: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    E_INN: TEdit;
    E_Ogrn: TEdit;
    E_KPP: TEdit;
    Label9: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    L_Hold: TButtonedEdit;
    Label11: TLabel;
    E_Price: TButtonedEdit;
    Label12: TLabel;
    E_Mail: TEdit;
    E_Phone: TEdit;
    Label13: TLabel;
    E_Credit: TEdit;
    E_Dolj: TEdit;
    E_FIO: TEdit;
    Label17: TLabel;
    Label16: TLabel;
    procedure FormShow(Sender: TObject);
    procedure E_ZayvKeyPress(Sender: TObject; var Key: Char);
    procedure E_PostKeyPress(Sender: TObject; var Key: Char);
    procedure E_CityKeyPress(Sender: TObject; var Key: Char);
    procedure E_StreetKeyPress(Sender: TObject; var Key: Char);
    procedure E_HouseKeyPress(Sender: TObject; var Key: Char);
    procedure E_PhoneKeyPress(Sender: TObject; var Key: Char);
    procedure E_INNKeyPress(Sender: TObject; var Key: Char);
    procedure E_KPPKeyPress(Sender: TObject; var Key: Char);
    procedure E_OgrnKeyPress(Sender: TObject; var Key: Char);
    procedure E_DatedogKeyPress(Sender: TObject; var Key: Char);
    procedure E_NumdogKeyPress(Sender: TObject; var Key: Char);
    procedure E_RepresKeyPress(Sender: TObject; var Key: Char);
    procedure E_DocKeyPress(Sender: TObject; var Key: Char);
    procedure SaveBtnClick(Sender: TObject);
    procedure E_DiscountKeyPress(Sender: TObject; var Key: Char);
    procedure E_HoldKeyPress(Sender: TObject; var Key: Char);
    procedure E_INNExit(Sender: TObject);
    procedure L_HoldRightButtonClick(Sender: TObject);
    procedure E_AddressKeyPress(Sender: TObject; var Key: Char);
    procedure E_PriceRightButtonClick(Sender: TObject);
    procedure E_MailKeyPress(Sender: TObject; var Key: Char);
    procedure E_PhoneExit(Sender: TObject);
  private
    { Private declarations }
    OldDiscount:Integer;
    id_price:Integer;
    old_name_price:String;
    name_price:String;
    EditHolding_Flag:Boolean;
    procedure GetValues;
  public
    { Public declarations }
  end;

var
  RegTiEdit_F: TRegTiEdit_F;

implementation
uses dm_u, myutils,main, Hold_U, RegTiAdd_U, ReasonDiscount_U, Prices_U,
  Regti_U;
{$R *.dfm}

procedure TRegTiEdit_F.GetValues;
begin
    E_INN.Text:=DM.Qry_Regti.FieldByName('INN').AsString;
    E_Zayv.Text:=DM.Qry_Regti.FieldByName('ZAYV').AsString;
    E_Post.Text:=DM.Qry_Regti.FieldByName('POSTCODE').AsString;
    E_Address.Text:=DM.Qry_Regti.FieldByName('REGION').AsString;
    E_City.Text:=DM.Qry_Regti.FieldByName('CITY').AsString;
    E_Street.Text:=DM.Qry_Regti.FieldByName('STREET').AsString;
    E_House.Text:=DM.Qry_Regti.FieldByName('HOUSE').AsString;
    E_Phone.Text:= DM.Qry_Regti.FieldByName('TELEFON').AsString;
    E_Mail.Text:=DM.Qry_Regti.FieldByName('EMAIL').AsString;
    E_KPP.Text:=DM.Qry_Regti.FieldByName('KPP').AsString;
    E_Ogrn.Text:=DM.Qry_Regti.FieldByName('OGRN').AsString;
    E_Discount.Text:=DM.Qry_Regti.FieldByName('DISCOUNT').asString;
    E_Fio.Text:=DM.Qry_Regti.FieldByName('CHIEF_FAM').asString;
    E_Dolj.Text:=DM.Qry_Regti.FieldByName('CHIEF_DOLJ').asString;
    OldDiscount:=DM.Qry_Regti.FieldByName('DISCOUNT').AsInteger;
    if DM.Qry_Regti.FieldByName('ID_HOLD').isNull then
       L_Hold.Text:=''
      else
       begin
         DM.Qry_Hold.Locate('ID',DM.Qry_Regti.FieldByName('ID_HOLD').AsInteger,[]);
         L_Hold.Text :=DM.Qry_Hold.FieldByName('NAME').asString;
       end;
    E_Price.Text:=DM.Qry_Regti.FieldByName('PRICENAME').asString;
    RegTiEdit_F.old_name_price:=E_Price.Text;
    RegTiEdit_F.id_price:=DM.Qry_Regti.FieldByName('ID_PRICE').AsInteger;
    if DM.Qry_Regti.FieldByName('CREDIT').isNull then
       E_Credit.Text:=''
      else
       begin
        E_Credit.Text := DM.Qry_Regti.FieldByName('CREDIT').asString;
       end;
end;

procedure TRegTiEdit_F.L_HoldRightButtonClick(Sender: TObject);
begin
 if Hold_F.ShowModal=mrOk then L_Hold.Text:=DM.Qry_Hold.FieldByName('NAME').asString;
end;

procedure TRegTiEdit_F.FormShow(Sender: TObject);
begin
if not DM.Qry_Hold.Active then DM.Qry_Hold.Open;
if (Role = 'MANAGER') OR (Role = 'SYSADMIN') OR ((Pos('SET_DISCOUNT',Rights) > 0)) then
  begin
    E_Discount.Enabled:=True;
    E_Zayv.Enabled:=True;
  end;
  if (Pos('HOLDINGS',Rights) > 0) then EditHolding_Flag:=True else EditHolding_Flag:=False;
  if (Role = 'SYSADMIN') or (EditHolding_Flag) then
    begin
        L_Hold.Enabled:=True;
    end
   else
    begin
        L_Hold.Enabled:=False;
    end;

L_hold.Color:=LighterColor(clYellow,30);
//E_Phone:=TMyMaskEdit.Create(Self);
//    with E_Phone do
//     begin;
//      Parent:= GroupBox2;
//      Left := 104;
//      Top := 133;
//      Width := 114;
//      Height := 21;
//      Font.Charset := DEFAULT_CHARSET;
//      EditMask:='\8\ \(000\)\ 000\ 00\ 00;1;_';
//      Font.Color := clWindowText;
//      Font.Height := -11;
//      Font.Name := 'MS Sans Serif';
//      Font.Style := [];
//      ParentFont := False;
//      TabOrder := 5;
//      Text := '8 (   )          ';
//      MaxLength:=17;
//      OnExit := E_PhoneExit;
//      OnKeyPress := E_PhoneKeyPress;
//    end;
GetValues;
CancBtn.SetFocus;
end;

procedure TRegTiEdit_F.E_ZayvKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiEdit_F.E_PostKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiEdit_F.E_PriceRightButtonClick(Sender: TObject);
begin
  if Prices_F.ShowModal = mrOk then
     begin
       RegTiEdit_F.id_price:=DM.Qry_PriceType.FieldByName('ID').AsInteger;
       RegTiEdit_F.name_price:=DM.Qry_PriceType.FieldByName('NAME').AsString;
       E_Price.Text:=RegTiEdit_F.name_price;
     end;
end;

procedure TRegTiEdit_F.E_AddressKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiEdit_F.E_CityKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiEdit_F.E_StreetKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiEdit_F.E_HouseKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiEdit_F.E_PhoneExit(Sender: TObject);
begin
//  if not Regti_F.CheckPhone(E_Phone.Text) then
//    Application.MessageBox('Неправильноый формат ввода. Правильный формат 8 (XXX) XXX XX XX','Внимание',MB_OK+MB_ICONERROR);
end;

procedure TRegTiEdit_F.E_PhoneKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
     if  not(Key in ['0'..'9','(',')',' ',#8]) then Key:=#0;
end;

procedure TRegTiEdit_F.E_INNKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiEdit_F.E_KPPKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiEdit_F.E_MailKeyPress(Sender: TObject; var Key: Char);
begin
 if  not(Key in ['0'..'9','A'..'Z','a'..'z','_','-','.','@',#8]) then Key:=#0;
end;

procedure TRegTiEdit_F.E_OgrnKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiEdit_F.E_DatedogKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiEdit_F.E_NumdogKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiEdit_F.E_RepresKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiEdit_F.E_DocKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiEdit_F.SaveBtnClick(Sender: TObject);
var
  Id_rec:Integer;
  S:String;
  Mes,ReasonDisc : String;
begin
{ if Length (Trim(E_Numdog.Text)) = 0 then
   begin
    Mes:='№ договора не может быть пустым.Данные не могут быть сохранены !';
    Application.MessageBox(PChar(Mes),'Внимание',mb_IconWarning+mb_Ok);
    Exit;
   end;}
  if not Regti_F.CheckPhone(E_Phone.Text) then
    begin
      Application.MessageBox('Ошибка в № телефона. Правильный формат 8 (XXX) XXX XX XX','Внимание',MB_OK+MB_ICONERROR);
      Exit;
    end;

try
 try
  if OldDiscount <> StrToInt(E_Discount.Text) then
     begin
       if ReasonDiscount_F.ShowModal <> mrOk then
          begin
            Application.MessageBox('Не указана причина изменения скидки','Внимание',MB_ICONSTOP+MB_OK);
            Exit;
          end
         else
           ReasonDisc:=ReasonDiscount_F.E_reason.Text;
     end;

  s:='update reg_ti set ID_PRICE=:p0,CITY=:p1,HOUSE=:p2,' ;
  s:=s+' INN=:p3,KPP=:p4,OGRN=:p5,POSTCODE=:p6,STREET=:p7,' ;
  s:=s+' TELEFON=:p8,ZAYV=:p9,DISCOUNT=:p10,ID_HOLD=:p11,EMAIL=:p12,REGION=:p13, CREDIT=:p14, ';
  s:=s+' CHIEF_FAM=:p15, CHIEF_DOLJ=:p16 where ID=:p17 ';
  DM.Sql.Close;
  DM.Sql.SQL.Clear;
  DM.Sql.SQL.Add(s);
  Id_Rec:= DM.Qry_Regti.FieldValues['ID'];
  if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction; //start tran
  DM.Sql.Params[0].asInteger:=RegTiEdit_F.id_price;
  DM.Sql.Params[1].AsString:=Trim(E_City.Text);
  DM.Sql.Params[2].AsString:=Trim(E_House.Text);
  DM.Sql.Params[3].AsString:=Trim(E_Inn.Text);
  DM.Sql.Params[4].AsString:=Trim(E_KPP.Text);
  DM.Sql.Params[5].AsString:=Trim(E_Ogrn.Text);
  DM.Sql.Params[6].AsString:=Trim(E_Post.Text);
  DM.Sql.Params[7].AsString:=Trim(E_Street.Text);
  DM.Sql.Params[8].AsString:=Trim(E_Phone.Text);
  DM.Sql.Params[9].AsString:=Trim(E_Zayv.Text);
  if Length(Trim(E_Discount.Text)) = 0  then
     DM.Sql.Params[10].asInteger:= 0
    else
     DM.Sql.Params[10].asInteger:= StrToInt(E_Discount.Text);
  if Length(Trim(L_Hold.Text)) <> 0 then
     DM.Sql.Params[11].AsInteger:=DM.Qry_Hold.FieldByName('ID').AsInteger
   else
     DM.Sql.Params[11].Value:=Null;
  DM.Sql.Params[12].AsString:=Trim(E_Mail.Text);
  DM.Sql.Params[13].AsString:=Trim(E_Address.Text);
  if Length(Trim(E_Credit.Text)) = 0  then
     DM.Sql.Params[14].AsVariant:= Null
    else
     DM.Sql.Params[14].AsFloat:= StrToFloat(E_Credit.Text);
  DM.Sql.Params[15].AsString:=Trim(E_FIO.Text);
  DM.Sql.Params[16].AsString:=Trim(E_Dolj.Text);
  DM.Sql.Params[17].Asinteger:=Id_Rec;
   DM.Sql.ExecQuery;
  if OldDiscount <> StrToInt(E_Discount.Text) then
   begin
      // внесем запись в журнал заказчиков о причине
      DM.Sql.Close;
      DM.Sql.SQL.Clear;
      DM.Sql.SQL.Add('insert into reg_ti_log (id_zayv,action, dt_action, username,reasons) ');
      DM.Sql.SQL.Add(' values ( :p0,:p1,:p2,:p3,:p4 ) ');
      DM.Sql.Params[0].AsInteger:=Id_rec;
      DM.Sql.Params[1].AsString:=format('Изменена скидка.Старое значение-%s%s.Новое значение-%s%s',
                                        [IntToStr(OldDiscount),'%',E_Discount.Text,'%']);
      DM.Sql.Params[2].AsDateTime:=Now;
      DM.Sql.Params[3].AsString:=User;
      DM.Sql.Params[4].AsString:=ReasonDisc;
      DM.Sql.ExecQuery;
   end;
  if RegTiEdit_F.old_name_price <> E_Price.Text then
   begin
      // внесем запись в журнал заказчиков о факте изменения прайса
      DM.Sql.Close;
      DM.Sql.SQL.Clear;
      DM.Sql.SQL.Add('insert into reg_ti_log (id_zayv,action, dt_action, username) ');
      DM.Sql.SQL.Add(' values ( :p0,:p1,:p2,:p3 ) ');
      DM.Sql.Params[0].AsInteger:=Id_rec;
      DM.Sql.Params[1].AsString:=format('Измене прайс-лист.Старое значение - %s.Новое значение - %s',
                                        [old_name_price,E_Price.Text]);
      DM.Sql.Params[2].AsDateTime:=Now;
      DM.Sql.Params[3].AsString:=User;
      DM.Sql.ExecQuery;
   end;
   DM.Sql.Close;
   DM.Sql.SQL.Clear;
   DM.Sql.SQL.Add('insert into reg_ti_log (id_zayv,dt_action,username,action) values (:p0,:p1,:p2,:p3)');
   DM.Sql.Params[0].AsInteger:=Id_rec;
   DM.Sql.Params[1].AsDateTime:=Now;
   DM.Sql.Params[2].AsString:=User;
   DM.Sql.Params[3].AsString:='ИЗМЕНЕНИЕ ДАННЫХ';
   DM.Sql.ExecQuery;
   DM.Sql.Transaction.Commit;
   ModalResult:=mrOk;
  except
        on E: EdatabaseError do
          begin
           DM.Sql.Transaction.Rollback;
           ShowMessage(E.Message);
           Exit;
          end;
 end;
 DM.Qry_Regti.Close;
 DM.Qry_Regti.Open;
 DM.Qry_Regti.Locate('ID',Id_Rec,[]);
 if OldDiscount <> StrToInt(E_Discount.Text) then
  begin
    Dm.Qry_ReasDog.Close;
    Dm.Qry_ReasDog.Open;;
  end;
finally
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;


procedure TRegTiEdit_F.E_DiscountKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiEdit_F.E_HoldKeyPress(Sender: TObject; var Key: Char);
begin
       if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiEdit_F.E_INNExit(Sender: TObject);
var
 Mes:String;
begin
 If Length (E_Inn.Text) < 10 then
  begin
   ShowMessage ('ИНН должен быть не менее 10 цифр!');
   Exit;
  end;
 Mes:='Фирма с таким ИНН уже существует!';
 if RegtiAdd_F.ZayvExist(E_Inn.Text) then Application.MessageBox(PChar(Mes),'Внимание',mb_IconWarning+mb_Ok);
end;

{ TMyMaskEdit }

procedure TMyMaskEdit.ValidateError;
begin
  Application.MessageBox('Ошибка ввода. Нажмите Esc для отмены.','Внимание',mb_ok+MB_ICONERROR);
end;

end.

