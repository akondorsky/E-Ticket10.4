unit HoldAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,DB;

type
  THoldAdd_F = class(TForm)
    CancBtn: TBitBtn;
    SaveBtn: TBitBtn;
    E_Name: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    E_Credit: TEdit;
    Label4: TLabel;
    E_Discount: TEdit;
    procedure FormShow(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HoldAdd_F: THoldAdd_F;

implementation

{$R *.dfm}
uses Hold_U,DM_U;
procedure THoldAdd_F.FormShow(Sender: TObject);
begin
  E_Name.Clear;
  E_Discount.Text := '0';
end;

procedure THoldAdd_F.SaveBtnClick(Sender: TObject);
var
  s:String;
  new_rec:Integer;
begin
  if Length(Trim(E_Name.Text)) = 0 then
    begin
      Application.MessageBox('Имя холдинга не задано.','Внимание',MB_ICONWARNING+MB_OK);
      ModalResult := mrNone;
      exit;
    end;
try
 try
  DM.Qry.Close;
  DM.Qry.SQL.Clear;
  DM.Qry.SQL.Add('select gen_id(GEN_ID_HOLDINGS,1) from rdb$database ');
  DM.Qry.Open;
  new_rec:=DM.Qry.Fields[0].AsInteger;
  Dm.Qry.Close;
  s:='insert into holdings (NAME, DISCOUNT,ID, CREDIT)' ;
  s:=s+' values (:p0,:p1,:p2, :p3) ';
  DM.Sql.Close;
  DM.Sql.SQL.Clear;
  DM.Sql.SQL.Add(s);
 if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction; //start tran
  DM.Sql.Params[0].AsString:=E_Name.Text;
  if Length(Trim(E_Discount.Text)) = 0 then
      DM.Sql.Params[1].AsInteger:=0
    else
      DM.Sql.Params[1].AsInteger:=StrToInt(E_Discount.Text);
  DM.Sql.Params[2].AsInteger:=new_rec;
  if Length(Trim(E_Credit.Text)) = 0 then
      DM.Sql.Params[3].AsFloat:=0
    else
      DM.Sql.Params[3].AsFloat:=StrToFloat(E_Credit.Text);
  DM.Sql.ExecQuery;
  DM.Sql.Transaction.Commit;
  ModalResult:=mrOk;
  DM.Qry_hold.Close;
  DM.Qry_Hold.Open;
  DM.Qry_Hold.Locate('ID',new_rec,[]);
  except
        on E: EdatabaseError do
          begin
           DM.Sql.Transaction.Rollback;
           ShowMessage(E.Message);
           Exit;
          end;
 end;
finally
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

end.
