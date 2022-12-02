unit ShipperEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask,ExtCtrls, ImgList;

type
  TShipperEdit_F = class(TForm)
    RxLabel4: TLabel;
    RxLabel1: TLabel;
    RxLabel6: TLabel;
    E_INN: TEdit;
    E_Zayv: TEdit;
    E_Adress: TEdit;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    RxLabel2: TLabel;
    E_Country: TButtonedEdit;
    E_Country_N: TEdit;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure E_CountryRightButtonClick(Sender: TObject);
    procedure E_CountryExit(Sender: TObject);
    procedure E_ZayvKeyPress(Sender: TObject; var Key: Char);
    procedure E_AdressKeyPress(Sender: TObject; var Key: Char);
    procedure E_INNKeyPress(Sender: TObject; var Key: Char);
    procedure E_CountryKeyPress(Sender: TObject; var Key: Char);
    procedure SaveBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShipperEdit_F: TShipperEdit_F;

implementation

uses shipper_u, oksmt_u, dm_u, shipperadd_u, CountryCode_U;

{$R *.dfm}

procedure TShipperEdit_F.FormShow(Sender: TObject);
var
  SyncSpravFlag:Boolean;
begin
 SyncSpravFlag:=True;
 DM.Qry_CountryCodes.Close;
 DM.Qry_CountryCodes.Open;
  if DM.Qry_Shipper.FieldByName('Country').isNull then
     begin
      E_Country.Text:='';
      E_country_N.Text:='';
     end
    else
     begin
       if not DM.Qry_CountryCodes.Locate('ALPHA2',DM.Qry_Shipper.FieldByName('Country').AsString,[]) then
         begin
          SyncSpravFlag:=False;
          ShowMessage('Не найден код страны');
          E_Country.Text:='';
          E_country_N.Text:='';
         end
        else
         begin
          E_Country.Text:=DM.Qry_CountryCodes.FieldByName('ALPHA2').AsString;
          E_Country_N.Text:=DM.Qry_CountryCodes.FieldByName('NAME').AsString;
         end;
     end;
    E_INN.Text:=DM.Qry_Shipper.FieldByName('INN').AsString;
    E_Zayv.Text:=DM.Qry_Shipper.FieldByName('FIRM_NAME').AsString;
    E_Adress.Text:=DM.Qry_Shipper.FieldByName('ADDRESS').AsString;
    E_Zayv.SetFocus;
end;

procedure TShipperEdit_F.E_CountryRightButtonClick(Sender: TObject);
begin
if  (CountryCode_F.ShowModal = mrOk) then
   begin
     E_Country.Text:=DM.Qry_CountryCodes.FieldValues['ALPHA2'];
     E_Country_N.Text:=DM.Qry_CountryCodes.FieldValues['NAME'];
   end;
end;

procedure TShipperEdit_F.E_CountryExit(Sender: TObject);
begin
  E_Country_N.Text:=CountryCode_F.FindCountry(Trim(E_Country.Text));
end;

procedure TShipperEdit_F.E_ZayvKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TShipperEdit_F.E_AdressKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TShipperEdit_F.E_INNKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TShipperEdit_F.E_CountryKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
   begin
     SelectNext(Sender as TWinControl, True, True);
     Key := #0;
   end
  else
     if  not ( Key in ['A'..'Z']) then Key:=#0

end;

procedure TShipperEdit_F.SaveBtnClick(Sender: TObject);
var
 s1,s2:String;
 id_rec:Integer;
begin
 try
  id_rec:=DM.Qry_Shipper.FieldByName('ID').asInteger;
  s1:='update f_otprav set firm_name=:p0,inn=:p1,address=:p2,country=:p3 ';
  s2:=' where id=:p4 ';
  DM.Sql.Close;
  DM.Sql.SQL.Clear;
  DM.Sql.SQL.Add(s1+s2);
  IF not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
  DM.Sql.Params[4].AsInteger:=id_rec;
  DM.Sql.Params[0].AsString:=Trim(E_Zayv.Text);
  DM.Sql.Params[1].AsString:=Trim(E_Inn.Text);
  DM.Sql.Params[2].AsString:=Trim(E_Adress.Text);
  DM.Sql.Params[3].AsString:=Trim(DM.Qry_CountryCodes.FieldValues['ALPHA2']);
  DM.Sql.ExecQuery;

 try
   IF DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Commit;
   ModalResult:=mrOk;
   DM.Qry_Shipper.Close;
   DM.Qry_Shipper.Open;
   DM.Qry_Shipper.Locate('ID',Id_Rec,[]);
  except
     on E:Exception do
      begin
         DM.Sql.Transaction.Rollback;
         MessageBox(Application.Handle, PChar(E.Message + #13#10 + Dm.Sql.SQL.Text),
           PChar(Application.Name), MB_ICONERROR);
         Exit;
      end;
 end;
finally
   IF DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.RollBack;
end;

end;

procedure TShipperEdit_F.CancBtnClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

end.
