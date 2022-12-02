unit HoldEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,DB;

type
  THoldEdit_F = class(TForm)
    CancBtn: TBitBtn;
    SaveBtn: TBitBtn;
    E_Name: TEdit;
    Label1: TLabel;
    E_Discount: TEdit;
    Label2: TLabel;
    E_Credit: TEdit;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HoldEdit_F: THoldEdit_F;

implementation

{$R *.dfm}
uses Hold_U,DM_U;
procedure THoldEdit_F.FormShow(Sender: TObject);
begin
  E_Name.Text := DM.Qry_Hold.FieldByName('NAME').AsString;
  E_Discount.Text :=IntToStr(DM.Qry_Hold.FieldByName('DISCOUNT').AsInteger);
end;

procedure THoldEdit_F.SaveBtnClick(Sender: TObject);
var
  s:String;
  rec:Integer;
begin
  if Length(Trim(E_Name.Text)) = 0 then
    begin
      Application.MessageBox('Имя холдинга не задано.','Внимание',MB_ICONWARNING+MB_OK);
      ModalResult := mrNone;
      exit;
    end;
try
 try
  rec:= DM.Qry_Hold.FieldByName('ID').AsInteger;
  s:='update holdings set NAME = :p0, DISCOUNT = :p1, CREDIT = :p2  where ID = :p3' ;
  DM.Sql.Close;
  DM.Sql.SQL.Clear;
  DM.Sql.SQL.Add(s);
 if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction; //start tran
  DM.Sql.Params[0].AsString:=E_Name.Text;
  if Length(Trim(E_Discount.Text)) = 0 then
      DM.Sql.Params[1].AsInteger:=0
    else
      DM.Sql.Params[1].AsInteger:=StrToInt(E_Discount.Text);
  if Length(Trim(E_Credit.Text)) = 0 then
      DM.Sql.Params[2].AsFloat:=0
    else
      DM.Sql.Params[2].AsFloat:=StrToFloat(E_Credit.Text);
  DM.Sql.Params[3].AsInteger:=rec;
  DM.Sql.ExecQuery;
  DM.Sql.Transaction.Commit;
  ModalResult:=mrOk;
  DM.Qry_hold.Close;
  DM.Qry_Hold.Open;
  DM.Qry_Hold.Locate('ID',rec,[]);
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
