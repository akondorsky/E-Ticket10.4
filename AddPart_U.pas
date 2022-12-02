unit AddPart_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,DB,IbQuery,
  Vcl.ExtCtrls;

type
  TAddPart_F = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Bt_Cancel: TBitBtn;
    Bt_Save: TBitBtn;
    E_Npp: TEdit;
    E_Zayv: TButtonedEdit;
    Label3: TLabel;
    E_KT: TEdit;
    procedure E_ZayvRightButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Bt_SaveClick(Sender: TObject);
  private
    { Private declarations }
    function NewNpp(IdTicket:Integer):Integer;
  public
    { Public declarations }
  end;

var
  AddPart_F: TAddPart_F;

implementation

{$R *.dfm}
uses dm_u,main, RegtiDisp_U;

procedure TAddPart_F.Bt_SaveClick(Sender: TObject);
var
 id_ticket:Integer;
begin
try
 try
    id_ticket:=Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into ticket_parts (npp,id_ticket,id_owner) values ');
    DM.Sql.SQL.Add(' (:p0,:p1,:p2) ');
    DM.Sql.Params[0].AsInteger:=StrToInt(E_Npp.Text);
    DM.Sql.Params[1].asInteger:=id_ticket;
    DM.Sql.Params[2].AsInteger:=DM.Qry_RegtiDisp.FieldByName('ID').asInteger;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    DM.Qry_Parts.Close;DM.Qry_Parts.Open;DM.Qry_Parts.Last;
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

procedure TAddPart_F.E_ZayvRightButtonClick(Sender: TObject);
begin
  if RegtiDisp_F.ShowModal = mrOk then E_Zayv.Text:= RegtiDisp_F.DBGridEh1.DataSource.DataSet.FieldByName('ZAYV').AsString;
end;

procedure TAddPart_F.FormShow(Sender: TObject);
begin
  E_KT.Text:=Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('N_TICKET').AsString;
  E_Npp.Text:=IntToStr(NewNpp(Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('ID').AsInteger));
  E_Npp.SetFocus;
end;

function TAddPart_F.NewNpp(IdTicket:Integer):Integer;
var
 Qry:TIbQuery;
begin
  try
    Result:=0;
    Qry:=TIBQuery.Create(Self);
    Qry.Database:=DM.DB;
    Qry.Transaction:=DM.IBTR;
    Qry.SQL.Add('select count(id) from ticket_parts where ID_TICKET=:p0 ');
    Qry.Params[0].AsInteger:=IdTicket;
    Qry.Open;
    Result:= Qry.Fields[0].AsInteger+1;
  finally
    Qry.Close;
    Qry.Free
  end;
end;
end.
