unit PrimBuhAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TPrimBuhAdd_F = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrimBuhAdd_F: TPrimBuhAdd_F;

implementation

{$R *.dfm}
uses buh_u, dm_u;

procedure TPrimBuhAdd_F.FormShow(Sender: TObject);
begin
 Edit1.Text:=Buh_F.Grid_firm.DataSource.DataSet.FieldByName('BUH_NOTE').AsString;
end;

procedure TPrimBuhAdd_F.BitBtn1Click(Sender: TObject);
var
 rec:Integer;
 s1:String;
begin
try
 rec:=Buh_F.Grid_firm.DataSource.DataSet.FieldByName('ID').AsInteger;
 s1:=' update reg_ti set buh_note=:p0 where id=:p1 ';
 Dm.SQL.Close;
 DM.SQL.SQL.Clear;
 DM.SQL.SQL.Add(s1);
try
 if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction; //start tran
  DM.SQL.Params[0].AsString:=Edit1.Text;
  DM.SQL.Params[1].AsInteger:=rec;
  DM.SQL.ExecQuery;
  DM.SQL.Transaction.Commit;
  Buh_F.Grid_firm.DataSource.DataSet.Close;
  Buh_F.Grid_firm.DataSource.DataSet.Open;
  Buh_F.Grid_firm.DataSource.DataSet.Locate('ID',rec,[]);
  except
     on E:Exception do
      begin
         DM.SQL.Transaction.Rollback;
         MessageBox(Application.Handle, PChar(E.Message + #13#10 + Dm.SQL.SQL.Text),
           PChar(Application.Name), MB_ICONERROR);
      end;
 end;
 finally
   if DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.Rollback;
 end;
end;

end.
