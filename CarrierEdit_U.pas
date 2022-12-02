unit CarrierEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons,DB;

type
  TCarrierEdit_F = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label17: TLabel;
    Label3: TLabel;
    E_Owner: TEdit;
    E_Adress: TEdit;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    E_CountryName: TEdit;
    E_CntryKod: TButtonedEdit;
    E_Inn: TEdit;
    Label4: TLabel;
    E_Phone: TEdit;
    procedure E_CntryKodChange(Sender: TObject);
    procedure E_CntryKodRightButtonClick(Sender: TObject);
    procedure E_OwnerKeyPress(Sender: TObject; var Key: Char);
    procedure E_AdressKeyPress(Sender: TObject; var Key: Char);
    procedure E_CntryKodKeyPress(Sender: TObject; var Key: Char);
    procedure E_InnKeyPress(Sender: TObject; var Key: Char);
    procedure SaveBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure GetValues;
  public
    { Public declarations }
  end;

var
  CarrierEdit_F: TCarrierEdit_F;

implementation

uses Oksmt_U, DM_U, Carrier_U, CountryCode_U;

{$R *.dfm}

procedure TCarrierEdit_F.E_AdressKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TCarrierEdit_F.E_CntryKodChange(Sender: TObject);
begin
E_CountryName.Text:=CountryCode_F.FindCountry(Trim(E_CntryKod.Text));
end;

procedure TCarrierEdit_F.E_CntryKodKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end
      else  if  not ( Key in ['A'..'Z']) then Key:=#0;
end;

procedure TCarrierEdit_F.E_CntryKodRightButtonClick(Sender: TObject);
begin
if CountryCode_F.ShowModal=mrOk then E_CntryKod.Text:=CountryCode_F.Grid_Countries.DataSource.DataSet.FieldByName('ALPHA2').AsString;
end;

procedure TCarrierEdit_F.E_InnKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TCarrierEdit_F.E_OwnerKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TCarrierEdit_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if DM.Qry_CountryCodes.Active  then DM.Qry_CountryCodes.Close;
end;

procedure TCarrierEdit_F.FormShow(Sender: TObject);
begin
if not DM.Qry_CountryCodes.Active  then DM.Qry_CountryCodes.Open;
 GetValues;
end;

procedure TCarrierEdit_F.GetValues;
begin
 E_Owner.Text:=DM.Qry_Carrier.FieldByName('OWNER').asString;
 E_Adress.Text:=DM.Qry_Carrier.FieldByName('ADDROWN').asString;
 E_Inn.Text:=DM.Qry_Carrier.FieldByName('INN').asString;
 E_CntryKod.Text:=DM.Qry_Carrier.FieldByName('COUNTRY_CODE').asString;
 E_Phone.Text:=DM.Qry_Carrier.FieldByName('PHONE').asString;
 CancBtn.SetFocus;
end;

procedure TCarrierEdit_F.SaveBtnClick(Sender: TObject);
var
 id_rec:Integer;
 s:String;
begin
try
 try
  id_rec:=Carrier_F.DBGridEh1.DataSource.DataSet.FieldByName('ID').asInteger;
  s:='update carrier set owner=:p0,inn=:p1,addrown=:p2,country_code=:p3, ';
  s:=s+' phone=:p4  where id=:p5 ';
  DM.Sql.Close;
  DM.Sql.SQL.Clear;
  DM.Sql.SQL.Add(s);
  IF not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
  DM.Sql.Params[0].AsString:=Trim(E_Owner.Text);
  DM.Sql.Params[1].AsString:=Trim(E_Inn.Text);
  DM.Sql.Params[2].AsString:=Trim(E_Adress.Text);
  DM.Sql.Params[3].AsString:=Trim(E_CntryKod.Text);
  DM.Sql.Params[4].AsString:=Trim(E_Phone.Text);
  DM.Sql.Params[5].AsInteger:=Id_rec;
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
 DM.Qry_Carrier.Close;
 DM.Qry_Carrier.Open;
 DM.Qry_Carrier.Locate('ID',Id_Rec,[]);
finally
  IF DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;

end;

end.
