unit Targets_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,  Graphics,
   Controls,  Forms,  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh;

type
  TTargets_F = class(TForm)
    DBGridEh1: TDBGridEh;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Targets_F: TTargets_F;

implementation

{$R *.dfm}
uses dm_u;
procedure TTargets_F.DBGridEh1DblClick(Sender: TObject);
begin
    ModalResult:=mrOK;
end;

procedure TTargets_F.FormShow(Sender: TObject);
begin
   if not DM.Qry_TSTarget.Active then DM.Qry_TSTarget.Open;
end;

end.
