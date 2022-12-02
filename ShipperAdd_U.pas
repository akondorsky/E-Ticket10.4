unit ShipperAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  StdCtrls, Mask, Buttons,ExtCtrls, ImgList,IBX.IbQuery,
  System.ImageList;

type
  TShipperAdd_F = class(TForm)
    RxLabel4: TLabel;
    RxLabel1: TLabel;
    E_INN: TEdit;
    E_Zayv: TEdit;
    RxLabel6: TLabel;
    E_Adress: TEdit;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    RxLabel2: TLabel;
    E_Country: TButtonedEdit;
    E_Country_N: TEdit;
    ImageList1: TImageList;
    procedure CancBtnClick(Sender: TObject);
    procedure E_ZayvKeyPress(Sender: TObject; var Key: Char);
    procedure E_AdressKeyPress(Sender: TObject; var Key: Char);
    procedure E_INNKeyPress(Sender: TObject; var Key: Char);
    procedure E_CountryKeyPress(Sender: TObject; var Key: Char);
    procedure E_CountryRightButtonClick(Sender: TObject);
    procedure E_CountryExit(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShipperAdd_F: TShipperAdd_F;

implementation

uses dm_u, shipper_u,oksmt_u, CountryCode_U;

{$R *.dfm}

procedure TShipperAdd_F.CancBtnClick(Sender: TObject);
begin
ShipperAdd_F.ModalResult:=mrCancel;
end;

procedure TShipperAdd_F.E_ZayvKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TShipperAdd_F.E_AdressKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TShipperAdd_F.E_INNKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TShipperAdd_F.E_CountryKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end
      else  if  not ( Key in ['A'..'Z']) then Key:=#0;

end;

procedure TShipperAdd_F.E_CountryRightButtonClick(Sender: TObject);
begin
if  (CountryCode_F.ShowModal = mrOk) then
    begin
     E_Country_N.Text:=DM.Qry_CountryCodes.FieldByName('NAME').asString;
     E_Country.Text:=DM.Qry_CountryCodes.FieldByName('ALPHA2').asString;
    end;
end;

procedure TShipperAdd_F.E_CountryExit(Sender: TObject);
begin
E_Country_N.Text:=CountryCode_F.FindCountry(Trim(E_Country.Text));
end;

procedure TShipperAdd_F.SaveBtnClick(Sender: TObject);
var
 qry:TIbquery;
 newrec:Integer;
begin
 try
  qry:=TIbQuery.Create(Self);
  qry.Database:=Dm.DB;
  qry.SQL.Add(' select gen_id(GEN_ID_F_OTPRAV,1) from rdb$database ' );
  qry.Open;
  newrec:=Qry.Fields[0].AsInteger;
  DM.SQL.Close;
  DM.SQL.Sql.Clear;
  DM.SQL.SQL.Add('insert into f_otprav ( firm_name,inn,address,country,id) ');
  DM.SQL.SQL.Add('  values (:p0,:p1,:p2,:p3,:p4) ');
  IF not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction;
  DM.Sql.Params[0].AsString:=Trim(E_Zayv.Text);
  DM.Sql.Params[1].AsString:=Trim(E_Inn.Text);
  DM.Sql.Params[2].AsString:=Trim(E_Adress.Text);
  DM.Sql.Params[3].AsString:=Trim(DM.Qry_CountryCodes.FieldByName('ALPHA2').AsString);
  DM.Sql.Params[4].AsInteger:=newrec;
  DM.Sql.ExecQuery;
 try
   DM.Sql.Transaction.Commit;
   ModalResult:=mrOk;
   DM.Qry_Shipper.Close;
   DM.Qry_Shipper.Open;
   DM.Qry_Shipper.Locate('ID',newrec,[]);
  except
   on E:Exception do
    begin
       DM.Sql.Transaction.Rollback;
       MessageBox(Application.Handle, PChar(E.Message + #13#10 + Dm.SQL.SQL.Text),
         PChar(Application.Name), MB_ICONERROR);
       Exit;
    end;
 end;
finally
  qry.Free;
end;
end;

procedure TShipperAdd_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dm.Qry_CountryCodes.Active  then dm.Qry_CountryCodes.Close;
end;

procedure TShipperAdd_F.FormShow(Sender: TObject);
begin
  if not dm.Qry_CountryCodes.Active  then dm.Qry_CountryCodes.Open;
  E_Zayv.Clear;
  E_Adress.Clear;
  E_INN.Clear;
  E_Country.Clear;
  E_zayv.SetFocus;
end;

end.
