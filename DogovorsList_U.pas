unit DogovorsList_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh, EhLibVCL;

type
  TDogovorsList_F = class(TForm)
    DBGridEh1: TDBGridEh;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DogovorsList_F: TDogovorsList_F;

implementation

{$R *.dfm}
 uses DM_U;
procedure TDogovorsList_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm.Qry_DogovorsList.Close;
end;

procedure TDogovorsList_F.FormShow(Sender: TObject);
begin
  Dm.Qry_DogovorsList.Open;
end;

end.
