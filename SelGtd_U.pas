unit SelGtd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DBGridEhGrouping, GridsEh, DBGridEh;

type
  TSelGtd_F = class(TForm)
    StatusBar1: TStatusBar;
    DBGridEh1: TDBGridEh;
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SelGtd_F: TSelGtd_F;

implementation

{$R *.dfm}
uses dm_u;
procedure TSelGtd_F.DBGridEh1DblClick(Sender: TObject);
begin
  ModalResult:=mrOk;
end;

end.
