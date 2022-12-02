unit VidPlDoc_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, StdCtrls, DBCtrlsEh,  ExtCtrls, ComCtrls,
  ToolWin, Grids, DBGridEh,  ActnList, PropFilerEh, PropStorageEh,
  DBGridEhGrouping, GridsEh;

type
  TVidPlDoc_F = class(TForm)
    DBGridEh1: TDBGridEh;
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  VidPlDoc_F: TVidPlDoc_F;

implementation
uses dm_u;
{$R *.dfm}



procedure TVidPlDoc_F.DBGridEh1DblClick(Sender: TObject);
begin
 ModalResult:=mrOk;
end;

end.
