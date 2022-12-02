unit PricesEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls,DB;

type
  TPricesEdit_F = class(TForm)
    E_Name: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    D1: TDateTimePicker;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PricesEdit_F: TPricesEdit_F;

implementation

{$R *.dfm}
uses dm_u;

procedure TPricesEdit_F.BitBtn1Click(Sender: TObject);
var
 cur_id :Integer;
begin
  try
    try
      cur_id:=DM.Qry_PriceType.FieldByName('ID').AsInteger;
      if not DM.sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction ;
      // создаем описание нового прайс листа
      DM.Sql.Close;
      DM.Sql.SQL.Clear;
      DM.Sql.SQL.Add(' update prices set name = :p0 where id=:p1 ');
      DM.Sql.Params[0].AsString:=E_Name.Text;
      DM.Sql.Params[1].AsInteger:=cur_id;
      Dm.Sql.ExecQuery;
      Dm.Sql.Transaction.Commit;
      ModalResult:=mrOk;
      DM.Qry_PriceType.Close;
      DM.Qry_PriceType.Open;
      DM.Qry_PriceType.Locate('ID',cur_id,[]);
    except
    on E: EdatabaseError do
      begin
        DM.Sql.Transaction.Rollback;
        ShowMessage(E.Message);
      end;
    end;
  finally
     if DM.sql.Transaction.InTransaction then Dm.Sql.Transaction.Rollback;
  end;
end;

procedure TPricesEdit_F.FormShow(Sender: TObject);
begin
  PricesEdit_F.Caption:=DM.Qry_PriceType.FieldByName('NAME').AsString;
  D1.Date:= DM.Qry_PriceType.FieldByName('START_DATE').AsDateTime;
  E_Name.Text:=DM.Qry_PriceType.FieldByName('NAME').AsString;
  BitBtn1.SetFocus;
end;

end.
