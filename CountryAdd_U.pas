unit CountryAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, Buttons, ExtCtrls,DB;

type
  TCountryAdd_F = class(TForm)
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
  CountryAdd_F: TCountryAdd_F;

implementation

{$R *.dfm}
uses dm_u ;


procedure TCountryAdd_F.E_CodeKeyPress(Sender: TObject; var Key: Char);
begin

 if Key = #13 then
   begin
     SelectNext(Sender as TWinControl, True, True);
     Key := #0;
   end
  else
     if  not ( Key in ['A'..'Z']) then Key:=#0


end;

procedure TCountryAdd_F.E_NameKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;



procedure TCountryAdd_F.FormShow(Sender: TObject);
begin
E_COde.Clear;
E_Name.Clear;
E_Code.SetFocus;
end;

procedure TCountryAdd_F.CancBtnClick(Sender: TObject);
begin
Modalresult:=mrcancel;
end;

procedure TCountryAdd_F.SaveBtnClick(Sender: TObject);
begin
try
  try
     Dm.SQL.Close;
     DM.SQL.SQL.Clear;
     DM.SQL.SQL.Add('insert into country_codes (alpha2,name) values(:p0,:p1)') ;
     if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
      DM.sql.Params[0].AsString:=E_Code.Text;
      DM.sql.Params[1].AsString:=E_Name.Text;
      DM.sql.ExecQuery;
      DM.sql.Transaction.Commit;
      ModalResult:=mrOk;
      DM.Qry_CountryCodes.Close;
      DM.Qry_CountryCodes.Open;
      DM.Qry_CountryCodes.Locate('NAME',e_name.Text,[]);
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
