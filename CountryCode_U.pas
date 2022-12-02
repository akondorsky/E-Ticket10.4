unit CountryCode_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh, ComCtrls,DB, ImgList, ToolWin, System.ImageList,
  EhLibVCL;

type
  TCountryCode_F = class(TForm)
    Grid_Countries: TDBGridEh;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure Grid_CountriesDblClick(Sender: TObject);
    procedure Grid_CountriesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Grid_CountriesKeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function FindCountry(F:String):String;
  end;

var
  CountryCode_F: TCountryCode_F;

implementation

{$R *.dfm}
uses DM_U,Main, CountryAdd_U, CountryEdit_U;
function TCountryCode_F.FindCountry(F: String): String;
begin
 if DM.Qry_CountryCodes.Locate('ALPHA2',F,[]) then
     Result:=DM.Qry_CountryCodes.FieldValues['NAME']
    else
     Result:='';
end;

procedure TCountryCode_F.FormShow(Sender: TObject);
begin
  DM.Qry_CountryCodes.Open;
   if Role = 'SYSADMIN' then ToolBar1.Enabled:=True;
end;

procedure TCountryCode_F.Grid_CountriesDblClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TCountryCode_F.Grid_CountriesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then ModalResult := mrOk;
end;

procedure TCountryCode_F.Grid_CountriesKeyPress(Sender: TObject; var Key: Char);
begin
  if  Key in ['a'..'z','A'..'Z'] then
    begin
      DM.Qry_CountryCodes.Locate('alpha2',Key,[loCaseInsensitive, loPartialKey]);
    end;
end;

procedure TCountryCode_F.ToolButton1Click(Sender: TObject);
begin
  CountryAdd_F.ShowModal;
end;

procedure TCountryCode_F.ToolButton2Click(Sender: TObject);
begin
  CountryEdit_F.ShowModal;
end;

procedure TCountryCode_F.ToolButton4Click(Sender: TObject);
var
 id:Integer;
begin
  id:=dm.Qry_CountryCodes.FieldByName('ID').AsInteger;
  DM.Qry_CountryCodes.Close;
  DM.Qry_CountryCodes.Open;
  DM.Qry_CountryCodes.Locate('ID',id,[]);
end;

end.
