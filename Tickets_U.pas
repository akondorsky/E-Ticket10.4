unit Tickets_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, ExtCtrls, DBGridEhGrouping, GridsEh,
  DBGridEh;

type
  TTickets_F = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Tickets_F: TTickets_F;

implementation

{$R *.dfm}

uses DM_U;

procedure TTickets_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.Qry_Ticket.Active then DM.Qry_Ticket.Close;
  Action:=caFree;
  Tickets_F:=nil;
end;

end.
