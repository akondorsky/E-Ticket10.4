unit CountryEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, Buttons, ExtCtrls,DB;

type
  TCountryEdit_F = class(TForm)
    Label2: TLabel;
    E_Code: TEdit;
    Label3: TLabel;
    E_Name: TEdit;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    procedure E_CodeKeyPress(Sender: TObject; var Key: Char);
    procedure E_NameKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CountryEdit_F: TCountryEdit_F;

implementation

{$R *.dfm}
uses dm_u ;


procedure TCountryEdit_F.E_CodeKeyPress(Sender: TObject; var Key: Char);
begin

 if Key = #13 then
   begin
     SelectNext(Sender as TWinControl, True, True);
     Key := #0;
   end
  else
     if  not ( Key in ['A'..'Z']) then Key:=#0


end;

procedure TCountryEdit_F.E_NameKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;



procedure TCountryEdit_F.FormShow(Sender: TObject);
begin
E_COde.Text:=dm.Qry_CountryCodes.FieldByName('ALPHA2').AsString;
E_Name.Text:=dm.Qry_CountryCodes.FieldByName('NAME').AsString;
E_Code.SetFocus;
end;

procedure TCountryEdit_F.CancBtnClick(Sender: TObject);
begin
Modalresult:=mrcancel;
end;

procedure TCountryEdit_F.SaveBtnClick(Sender: TObject);
var
 id:Integer;
begin
try
  try
     id:=dm.Qry_CountryCodes.FieldByName('ID').AsInteger;
     Dm.SQL.Close;
     DM.SQL.SQL.Clear;
     DM.SQL.SQL.Add('update country_codes set alpha2=:p0,name=:p1 where id=:p2') ;
     if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
      DM.sql.Params[0].AsString:=E_Code.Text;
      DM.sql.Params[1].AsString:=E_Name.Text;
      DM.sql.Params[2].AsInteger:=id;
      DM.sql.ExecQuery;
      DM.sql.Transaction.Commit;
      ModalResult:=mrOk;
      DM.Qry_CountryCodes.Close;
      DM.Qry_CountryCodes.Open;
      DM.Qry_CountryCodes.Locate('ID',id,[]);
      except
        on E: EDatabaseError do
          begin
           DM.Sql.Transaction.Rollback;
           ShowMessage(E.Message);
 //          MessageBox(Application.Handle, PChar(E.),
 //            PChar(Application.Name), MB_ICONERROR);
          end;
     end;
 finally
   if DM.sql.Transaction.InTransaction then DM.sql.Transaction.Rollback;
 end;
end;


end.
