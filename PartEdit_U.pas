unit PartEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,  Graphics,
   Controls,  Forms,  Dialogs,  ExtCtrls,  StdCtrls,  Buttons,DB;

type
  TPartEdit_F = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bt_Cancel: TBitBtn;
    Bt_Save: TBitBtn;
    E_Npp: TEdit;
    E_Zayv: TButtonedEdit;
    E_KT: TEdit;
    procedure FormShow(Sender: TObject);
    procedure Bt_SaveClick(Sender: TObject);
    procedure E_ZayvRightButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PartEdit_F: TPartEdit_F;

implementation

{$R *.dfm}
uses main,dm_u, RegtiDisp_U;
procedure TPartEdit_F.Bt_SaveClick(Sender: TObject);
var
 id_rec, id_ticket:Integer;
begin
try
 try
    id_rec:=Main_F.Grid_TicketParts.DataSource.DataSet.FieldByName('ID').AsInteger;
    id_ticket:=Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update ticket_parts set npp=:p0,id_ticket=:p1,id_owner=:p2 where id=:p3 ');
    DM.Sql.Params[0].AsInteger:=StrToInt(E_Npp.Text);
    DM.Sql.Params[1].asInteger:=id_ticket;
    if Length(E_Zayv.Text) > 0  then
        DM.Sql.Params[2].AsInteger:=DM.Qry_RegtiDisp.FieldByName('ID').asInteger
      else
        DM.Sql.Params[2].AsVariant:=null;
    DM.Sql.Params[3].asInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    ModalResult:=mrOk;
    DM.Qry_Parts.Close;
    DM.Qry_Parts.Open;
    DM.Qry_Parts.Locate('ID',id_rec,[]);
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

procedure TPartEdit_F.E_ZayvRightButtonClick(Sender: TObject);
begin
 if RegtiDisp_F.ShowModal = mrOk then E_Zayv.Text:= RegtiDisp_F.DBGridEh1.DataSource.DataSet.FieldByName('ZAYV').AsString;
end;

procedure TPartEdit_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;

procedure TPartEdit_F.FormShow(Sender: TObject);
var
 rec:Integer;
begin
  E_KT.Text:=Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('N_TICKET').AsString;
  E_Npp.Text:=DM.Qry_Parts.FieldByName('NPP').AsString;
  if not DM.Qry_RegtiDisp.Active then DM.Qry_RegtiDisp.Open;
  rec:=DM.Qry_Parts.FieldByName('ID_OWNER').AsInteger;
  DM.Qry_RegtiDisp.Locate('ID',rec,[]);
  E_Zayv.Text:=DM.Qry_RegtiDisp.FieldByName('ZAYV').AsString;
end;

end.
