unit CustProc_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,  Graphics,
   Controls,  Forms,  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh;

type
  TCustProc_F = class(TForm)
    DBGridEh1: TDBGridEh;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustProc_F: TCustProc_F;

implementation

{$R *.dfm}
uses dm_u,main;
procedure TCustProc_F.DBGridEh1DblClick(Sender: TObject);
begin
 ModalResult:=mrOk;
end;

procedure TCustProc_F.FormShow(Sender: TObject);
begin
  if not DM.Qry_CustProc.Active  then DM.Qry_CustProc.Open;
  
end;

end.
