unit RegTiAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls,DB,IBX.IbQuery, Mask;

type
  TMyMaskEdit = class(TMaskEdit)
    protected
      procedure ValidateError;override;
  end;
type
  TRegTiAdd_F = class(TForm)
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
    E_Price: TButtonedEdit;
    Label11: TLabel;
    Label12: TLabel;
    E_Mail: TEdit;
    Label13: TLabel;
    E_Credit: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    E_FIO: TEdit;
    E_Dolj: TEdit;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure E_FIOKeyPress(Sender: TObject; var Key: Char);
    procedure E_DoljKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    id_price:Integer;
    name_price:String;
    E_Phone:TMyMaskEdit;
    EditHolding_Flag:Boolean;
    procedure GetValues;
    procedure FindStdPrice;
  public
    { Public declarations }
    function ZayvExist(FStr:String):Boolean;

  end;

var
  RegTiAdd_F: TRegTiAdd_F;
  Scale:Single;

implementation
uses dm_u, myutils,main, Hold_U, Prices_U, Regti_U;
{$R *.dfm}

procedure TRegTiAdd_F.GetValues;
begin
    E_INN.Clear;
    E_Zayv.Clear;
    E_Post.Clear;
    E_Address.Clear;
    E_City.Clear;
    E_Street.Clear;
    E_House.Clear;
    E_Mail.Clear;
    E_KPP.Clear;
    E_Ogrn.Clear;
    E_FIO.Clear;
    E_Dolj.Clear;
    E_Discount.Text:='0';
    L_Hold.Clear;
    E_Price.Text:=RegTiAdd_F.name_price;
    E_Credit.Clear;
end;

procedure TRegTiAdd_F.L_HoldRightButtonClick(Sender: TObject);
begin
 if Hold_F.ShowModal=mrOk then L_Hold.Text:=DM.Qry_Hold.FieldByName('NAME').asString;
end;

procedure TRegTiAdd_F.FindStdPrice;
var
 qry:TIbquery;
begin
  try
    qry:=TIbquery.Create(self);
    qry.Database:=DM.DB;
    qry.Transaction:=dm.IBTR;
    qry.SQL.Add('select id,name from prices where is_std = 1 and status = 1 ');
    qry.Open;
    RegTiAdd_F.id_price:=qry.fields[0].AsInteger;
    RegTiAdd_F.name_price:=qry.fields[1].AsString;
  finally
    qry.Free;
  end;
end;

procedure TRegTiAdd_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(E_Phone);
end;

procedure TRegTiAdd_F.FormShow(Sender: TObject);
begin
if not DM.Qry_Hold.Active then DM.Qry_Hold.Open;
if (Role = 'MANAGER') OR (Role = 'SYSADMIN') then
  begin
    E_Discount.Enabled:=True;
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
//if (Role = 'SYSADMIN') then
//  begin
//    E_Zayv.Enabled:=True;
//  end;


FindStdPrice;
L_hold.Color:=LighterColor(clYellow,30);
Scale := TControl(E_House).ScaleFactor;
E_Phone:=TMyMaskEdit.Create(Self);
    with E_Phone do
     begin;
      Parent:= GroupBox2;
      Left := E_House.Left;
      Top := E_House.Top + E_House.Height+2;
      Width := Round(114*Scale);
      Height := Round(21*Scale);
      Font.Charset := DEFAULT_CHARSET;
      EditMask:='\8\ \(000\)\ 000\ 00\ 00;1;_';
      //Font.Color := clWindowText;
      //Font.Height := -11;
      //Font.Name := 'MS Sans Serif';
      //Font.Style := [];
      ParentFont := True;
      TabOrder := 5;
      Text := '8 (   )          ';
      MaxLength:=17;
      OnKeyPress := E_PhoneKeyPress;
    end;
GetValues;
CancBtn.SetFocus;

end;

procedure TRegTiAdd_F.E_ZayvKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiAdd_F.E_PostKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiAdd_F.E_PriceRightButtonClick(Sender: TObject);
begin
  if Prices_F.ShowModal = mrOk then
     begin
       RegTiAdd_F.id_price:=DM.Qry_PriceType.FieldByName('ID').AsInteger;
       RegTiAdd_F.name_price:=DM.Qry_PriceType.FieldByName('NAME').AsString;
       E_Price.Text:=RegTiAdd_F.name_price;
     end;

end;

procedure TRegTiAdd_F.E_AddressKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiAdd_F.E_CityKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiAdd_F.E_StreetKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiAdd_F.E_HouseKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiAdd_F.E_PhoneKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiAdd_F.E_INNKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiAdd_F.E_KPPKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiAdd_F.E_MailKeyPress(Sender: TObject; var Key: Char);
begin
 if  not(Key in ['0'..'9','A'..'Z','a'..'z','_','-','.','@',#8]) then Key:=#0;
end;

procedure TRegTiAdd_F.E_OgrnKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiAdd_F.E_DatedogKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiAdd_F.E_NumdogKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiAdd_F.E_RepresKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiAdd_F.E_DocKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiAdd_F.E_DoljKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TRegTiAdd_F.E_FIOKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TRegTiAdd_F.SaveBtnClick(Sender: TObject);
var
  Id_rec:Integer;
  S:String;
  Mes : String;
begin
  if not Regti_F.CheckPhone(E_Phone.Text) then
    begin
      Application.MessageBox('Ошибка в № телефона. Правильный формат 8 (XXX) XXX XX XX','Внимание',MB_OK+MB_ICONERROR);
      Exit;
    end;
  if Length(Trim(E_Mail.Text))=0 then
    begin
      Application.MessageBox('Поле E-Mail дожно быть заполнено.','Внимание',MB_ICONWARNING+MB_OK);
    end;

try
 try
  dm.Qry.Close;
  dm.Qry.SQL.Clear;
  Dm.Qry.Sql.add('select gen_id(GEN_ID_REG_TI,1) from rdb$database');
  Dm.Qry.Open;
  Id_rec:=Dm.Qry.Fields[0].AsInteger;
  Dm.Qry.Close;
  s:='insert into  reg_ti (CITY,HOUSE,' ;
  s:=s+' INN,KPP,OGRN,POSTCODE,STREET,' ;
  s:=s+' TELEFON,ZAYV,DISCOUNT,ID_HOLD,VALID,ID_PRICE,EMAIL,REGION,CREDIT,CHIEF_FAM,CHIEF_DOLJ,ID) values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14,:p15,:p16,:p17,:p18) ';
  DM.Sql.Close;
  DM.Sql.SQL.Clear;
  DM.Sql.SQL.Add(s);
  //Id_Rec:= DM.Qry_Regti.FieldValues['ID'];
  if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction; //start tran
  DM.Sql.Params[0].AsString:=Trim(E_City.Text);
  DM.Sql.Params[1].AsString:=Trim(E_House.Text);
  DM.Sql.Params[2].AsString:=Trim(E_Inn.Text);
  DM.Sql.Params[3].AsString:=Trim(E_KPP.Text);
  DM.Sql.Params[4].AsString:=Trim(E_Ogrn.Text);
  DM.Sql.Params[5].AsString:=Trim(E_Post.Text);
  DM.Sql.Params[6].AsString:=Trim(E_Street.Text);
  DM.Sql.Params[7].AsString:=Trim(E_Phone.Text);
  DM.Sql.Params[8].AsString:=Trim(E_Zayv.Text);
  if Length(Trim(E_Discount.Text)) = 0  then
     DM.Sql.Params[9].asInteger:= 0
    else
     DM.Sql.Params[9].asInteger:= StrToInt(E_Discount.Text);
  if Length(Trim(L_Hold.Text)) <> 0 then
     DM.Sql.Params[10].AsInteger:=DM.Qry_Hold.FieldByName('ID').AsInteger
   else
     DM.Sql.Params[10].Value:=Null;
  DM.Sql.Params[11].AsString:='T';
  DM.Sql.Params[12].asInteger:= RegTiAdd_F.id_price;
  DM.Sql.Params[13].AsString:=Trim(E_Mail.Text);
  DM.Sql.Params[14].AsString:=Trim(E_Address.Text);
  if Length(Trim(E_Credit.Text)) = 0  then
     DM.Sql.Params[15].AsVariant:= Null
    else
     DM.Sql.Params[15].AsFloat:= StrToFloat(E_Credit.Text);
  DM.Sql.Params[16].AsString:=Trim(E_FIO.Text);
  DM.Sql.Params[17].AsString:=Trim(E_Dolj.Text);
  DM.Sql.Params[18].AsInteger:=Id_rec;
  DM.Sql.ExecQuery;
  DM.Sql.Close;
  DM.Sql.SQL.Clear;
  DM.Sql.SQL.Add('insert into reg_ti_log (id_zayv,dt_action,username,action) values (:p0,:p1,:p2,:p3)');
  DM.Sql.Params[0].AsInteger:=Id_rec;
  DM.Sql.Params[1].AsDateTime:=Now;
  DM.Sql.Params[2].AsString:=User;
  DM.Sql.Params[3].AsString:='ДОБАВЛЕНИЕ ОРГАНИЗАЦИИ';
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
finally
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;


function TRegTiAdd_F.ZayvExist(FStr: String): Boolean;
 var
  S:String;
  k:Integer;
begin
 Result:=False;
 if Length(Trim(Fstr)) = 0 then
   begin
    Exit;
   end;
 s:=format( 'select count(*) from reg_ti where inn = %s%s%s ',[char(39),FStr,char(39)]);
 DM.Qry.Close;
 DM.Qry.SQL.Clear;
 DM.Qry.SQL.Add(s);
 Dm.Qry.Open;
 k:=DM.Qry.Fields[0].AsInteger;
 DM.Qry.Close;
 if k > 0 then Result:=True;
end;

procedure TRegTiAdd_F.E_DiscountKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiAdd_F.E_HoldKeyPress(Sender: TObject; var Key: Char);
begin
       if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TRegTiAdd_F.E_INNExit(Sender: TObject);
var
 Mes:String;
begin
 If Length (E_Inn.Text) < 10 then
  begin
   ShowMessage ('ИНН должен быть не менее 10 цифр!');
   Exit;
  end;
 Mes:='Фирма с таким ИНН уже существует!';
 if ZayvExist(E_Inn.Text) then Application.MessageBox(PChar(Mes),'Внимание',mb_IconWarning+mb_Ok);
end;

{ TMyMaskEdit }

procedure TMyMaskEdit.ValidateError;
begin
  Application.MessageBox('Ошибка ввода. Нажмите Esc для отмены.','Внимание',mb_ok+MB_ICONERROR);
end;

end.
