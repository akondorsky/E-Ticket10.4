unit VidTrans_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, DBGridEhGrouping, GridsEh;

type
  TVidTrans_F = class(TForm)
    DBGridEh1: TDBGridEh;
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VidTrans_F: TVidTrans_F;

implementation

{$R *.dfm}
uses dm_u;
procedure TVidTrans_F.DBGridEh1DblClick(Sender: TObject);
begin
  Modalresult:=mrOk;
end;

end.
