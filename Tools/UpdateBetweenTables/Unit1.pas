unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBSQL, IBCustomDataSet, IBQuery, IBDatabase, StdCtrls;

type
  TForm1 = class(TForm)
    DB: TIBDatabase;
    IBTR: TIBTransaction;
    IBTW: TIBTransaction;
    Qry: TIBQuery;
    Sql: TIBSQL;
    DataSource1: TDataSource;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

try
  Button1.Enabled:=False;
  qry.Open;
  Qry.First;
  sql.Close;
  sql.SQL.Clear;
  sql.SQL.Add(' update price_lists set krname = :p0 where id = :p1 ');
  sql.Transaction.StartTransaction;
  while not Qry.Eof do
  begin
    sql.Close;
    sql.Params[0].AsString:=qry.FieldByName('KRNAME').AsString;
    sql.Params[1].AsInteger:=qry.FieldByName('ID').AsInteger;
    sql.ExecQuery;
    Qry.Next;
  end;
  sql.Transaction.Commit;
finally
    if sql.Transaction.InTransaction then sql.Transaction.Rollback;
    
    Button1.Enabled:=True;
end;
end;

end.
