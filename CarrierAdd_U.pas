unit CarrierAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,  Mask,
  ExtCtrls,DB;

type
  TCarrierAdd_F = class(TForm)
    E_Owner: TEdit;
    E_Adress: TEdit;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label17: TLabel;
    E_CountryName: TEdit;
    E_CntryKod: TButtonedEdit;
    E_Inn: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    E_Phone: TEdit;
    procedure FormShow(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure E_OwnerKeyPress(Sender: TObject; var Key: Char);
    procedure E_AdressKeyPress(Sender: TObject; var Key: Char);
    procedure E_INNKeyPress(Sender: TObject; var Key: Char);
    procedure CancBtnClick(Sender: TObject);
    procedure E_CntryKodChange(Sender: TObject);
    procedure E_CntryKodRightButtonClick(Sender: TObject);
    procedure E_CntryKodKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CarrierAdd_F: TCarrierAdd_F;

implementation

uses oksmt_u, dm_u, CountryCode_U;

{$R *.dfm}

procedure TCarrierAdd_F.E_CntryKodChange(Sender: TObject);
begin
E_CountryName.Text:=CountryCode_F.FindCountry(Trim(E_CntryKod.Text));
end;

procedure TCarrierAdd_F.E_CntryKodKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end
     else if  not ( Key in ['A'..'Z']) then Key:=#0;
end;

procedure TCarrierAdd_F.E_CntryKodRightButtonClick(Sender: TObject);
begin
 if CountryCode_F.ShowModal=mrOk then E_CntryKod.Text:=CountryCode_F.Grid_Countries.DataSource.DataSet.FieldByName('ALPHA2').AsString;
end;

procedure TCarrierAdd_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if DM.Qry_CountryCodes.Active  then DM.Qry_CountryCodes.Close;
end;

procedure TCarrierAdd_F.FormShow(Sender: TObject);
begin
if not DM.Qry_CountryCodes.Active  then DM.Qry_CountryCodes.Open;
E_Owner.Clear;
E_Adress.Clear;
E_INN.Clear;
E_CntryKod.Clear;
E_Owner.SetFocus;
end;

procedure TCarrierAdd_F.SaveBtnClick(Sender: TObject);
var
 Id_Rec:Integer;
 s:String;
begin
try
 try
  DM.Qry.Close;
  Dm.Qry.SQL.Clear;
  Dm.Qry.SQL.Add(' select gen_id(GEN_ID_CARRIER,1) from rdb$database ');
  Dm.Qry.Open;
  Id_rec:=Dm.Qry.Fields[0].AsInteger;
  s:='insert into carrier (id,owner, addrown, inn ,country_code,phone) ';
  s:=s+' values (:p0,:p1,:p2,:p3,:p4,:p5) ';
  DM.Sql.Close;
  DM.Sql.SQL.Clear;
  DM.Sql.SQL.Add(s);
  IF not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
  DM.Sql.Params[0].AsInteger:=Id_rec;
  DM.Sql.Params[1].AsString:=Trim(E_Owner.Text);
  DM.Sql.Params[2].AsString:=Trim(E_Adress.Text);
  DM.Sql.Params[3].AsString:=Trim(E_Inn.Text);
  DM.Sql.Params[4].AsString:=Trim(E_CntryKod.Text);
  DM.Sql.Params[5].AsString:=Trim(E_Phone.Text);
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


procedure TCarrierAdd_F.E_OwnerKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TCarrierAdd_F.E_AdressKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TCarrierAdd_F.E_INNKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TCarrierAdd_F.CancBtnClick(Sender: TObject);
begin
modalResult:=mrcancel;
end;

end.
