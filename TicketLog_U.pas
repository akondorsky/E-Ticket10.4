unit TicketLog_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh;

type
  TTicketLog_F = class(TForm)
    DBGridEh1: TDBGridEh;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TicketLog_F: TTicketLog_F;

implementation

{$R *.dfm}
uses dm_u,main;

procedure TTicketLog_F.FormShow(Sender: TObject);
begin
  TicketLog_F.Caption:=format(' Журнал событий. КТ № %s',[DM.Qry_Ticket.FieldByName('N_TICKET').AsString]);
end;

end.
