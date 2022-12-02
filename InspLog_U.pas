unit InspLog_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh, EhLibVCL;

type
  TInspLog_F = class(TForm)
    Grid1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InspLog_F: TInspLog_F;

implementation
uses DM_U,Warehouse_U;

{$R *.dfm}

procedure TInspLog_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Grid1.DataSource.DataSet.Close;
end;

end.
