unit VidOp_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PropFilerEh, PropStorageEh, ActnList, ImgList, ComCtrls,
  ToolWin, Grids, DBGridEh, DBGridEhGrouping, GridsEh;

type
  TVidOp_F = class(TForm)
    DBGridEh1: TDBGridEh;
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VidOp_F: TVidOp_F;

implementation
uses dm_u;

{$R *.dfm}

procedure TVidOp_F.DBGridEh1DblClick(Sender: TObject);
begin
 ModalResult:=mrOk;
end;

end.
