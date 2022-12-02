unit TrailerAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,  Graphics,
   Controls,  Forms,  Dialogs,  StdCtrls,  Buttons,DB;

type
  TTrailerAdd_F = class(TForm)
    Label1: TLabel;
    E_Nomer: TEdit;
    Bt_Cancel: TBitBtn;
    Bt_Save: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure Bt_SaveClick(Sender: TObject);
    procedure E_NomerKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TrailerAdd_F: TTrailerAdd_F;

implementation

{$R *.dfm}

uses Main, DM_U;

procedure TTrailerAdd_F.Bt_SaveClick(Sender: TObject);
var
 id_ts,id_ticket:Integer;
begin
try
 try
    if Length(Trim(E_Nomer.Text)) = 0  then Exit;
    id_ts:=Main_F.Grid_TS.DataSource.DataSet.FieldByName('ID').AsInteger;
    id_ticket:=Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into trailers (id_truck,id_ticket,n_trailer) values ');
    DM.Sql.SQL.Add(' (:p0,:p1,:p2) ');
    DM.Sql.Params[0].AsInteger:=id_ts;
    DM.Sql.Params[1].asInteger:=id_ticket;
    DM.Sql.Params[2].AsString:=E_Nomer.Text;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    ModalResult:=mrOk;
    DM.Refresh_TS;
  except
    on E: EdatabaseError do
      begin
       DM.Sql.Transaction.Rollback;
       ShowMessage(E.Message);
      end;
  end;
finally
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

procedure TTrailerAdd_F.E_NomerKeyPress(Sender: TObject; var Key: Char);
begin
 if  not(Key in ['0'..'9','A'..'Z','a'..'z',#8]) then Key:=#0;
end;

procedure TTrailerAdd_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;

procedure TTrailerAdd_F.FormShow(Sender: TObject);
begin
 E_Nomer.Clear;
 E_Nomer.SetFocus;
end;

end.
