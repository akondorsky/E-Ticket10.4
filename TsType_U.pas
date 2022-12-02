unit TsType_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,  Graphics,
   Controls,  Forms,  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh;

type
  TTsType_F = class(TForm)
    DBGridEh1: TDBGridEh;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TsType_F: TTsType_F;

implementation

{$R *.dfm}
uses dm_u,main;
procedure TTsType_F.DBGridEh1DblClick(Sender: TObject);
begin
  ModalResult:=mrOK;
end;

procedure TTsType_F.FormShow(Sender: TObject);
begin
  if not DM.Qry_TsType.Active then DM.Qry_TsType.Open;

end;

end.
