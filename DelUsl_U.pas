unit DelUsl_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh,Db, Menus, EhLibVCL;

type
  TDelUsl_F = class(TForm)
    DBGridEh1: TDBGridEh;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelUsl_F: TDelUsl_F;

implementation

{$R *.dfm}
uses dm_u,main, PartFullEdit_U;

procedure TDelUsl_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.Qry_UslDel.Close;
end;

procedure TDelUsl_F.FormShow(Sender: TObject);
begin
  if DM.Qry_UslDel.Active then DM.Qry_UslDel.Close;
  DM.Qry_UslDel.Params[0].AsInteger:=Main_F.IdPart;
  DM.Qry_UslDel.Open;
end;

procedure TDelUsl_F.N1Click(Sender: TObject);
var
 id_rec,id_money:Integer;
begin
try
 try
    id_rec:=DM.Qry_UslDel.FieldByName('ID').AsInteger;
    id_money:=DM.Qry_UslDel.FieldByName('ID_USL_MONEY').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('delete from ticket_money_deleted where id=:p0 ');
    DM.Sql.Params[0].asInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update ticket_money set del_flag = 0 where id=:p0 ');
    DM.Sql.Params[0].asInteger:=id_money;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    DM.Qry_uslDel.Close;
    DM.Qry_UslDel.Open;
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

end.
