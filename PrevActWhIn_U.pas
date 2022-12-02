unit PrevActWhIn_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxPreview, ToolWin, ComCtrls,DB, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TPrevActWhIn_F = class(TForm)
    ToolBar1: TToolBar;
    frxPrevWhActIn: TfrxPreview;
    BtnPrint: TToolButton;
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
  private
    { Private declarations }
    procedure ShowActIn;
    procedure WriteAct;
    function MyRandom:Integer;
  public
    { Public declarations }
  end;

var
  PrevActWhIn_F: TPrevActWhIn_F;

implementation

{$R *.dfm}
uses dm_u,main,reports_u,warehouse_u;

{ TPrevActWhIn_F }

procedure TPrevActWhIn_F.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  frxPrevWhActIn.MouseWheelScroll(WheelDelta,Shift,MousePos);
end;

procedure TPrevActWhIn_F.FormShow(Sender: TObject);
begin
{if Warehouse_F.Grid_ActIn.DataSource.DataSet.FieldByName('SIGN_NUMBER').asInteger > 0 then
    BtnPrint.Enabled:=False
   else
    BtnPrint.Enabled:=True;}

 ShowActIn;
end;

function TPrevActWhIn_F.MyRandom: Integer;
const
A1 :Integer = 100000 ;
A2 :Integer = 99999 ;
var
 i:Integer;
 n:Integer;
begin
    Randomize;
    i := A1+Random(A2) ;
    Result:=i;
end;


procedure TPrevActWhIn_F.ShowActIn;
begin

 if DM.Qry_RepWhIn.Active then Dm.Qry_RepWhIn.Close;
 DM.Qry_RepWhIn.Params[0].AsInteger:=Warehouse_F.Grid_ActIn.DataSource.DataSet.FieldByName('ID').AsInteger;
 DM.Qry_RepWhIn.Open;

 // закоментированы строки для печати 2-х экз. на одном листе.
// Reports_F.Rep1.Preview:=nil;
 Reports_F.Rep1.Preview:=frxPrevWhActIn;
 Reports_F.Rep1.LoadFromFile('act_in.fr3');
//(Reports_F.Rep1.Pages[2] as TfrxReportPage).Visible:=True;
// Reports_F.Rep1.PrepareReport(True);
//(Reports_F.Rep1.Pages[2] as TfrxReportPage).Visible:=False;
// Reports_F.Rep1.PrepareReport(False);
// Reports_F.Rep1.Preview:=frxPrevWhActIn;
 Reports_F.Rep1.ShowReport;
 Reports_F.Rep1.Preview.SetFocus;

end;

procedure TPrevActWhIn_F.BtnPrintClick(Sender: TObject);
var
 Mes:String;
 id_rec:Integer;
begin
if Warehouse_F.Grid_ActIn.DataSource.DataSet.FieldByName('SIGN_NUMBER').isNull then
   begin
    Mes:='Проверьте правильность заполнения складского свидетельства.'+#10#13+
         'После распечатки свидетельства вносить изменения будет невозможно.'+#10#13+
         'Продолжить ?';
    if Application.MessageBox(PChar(Mes),'Внимание',MB_YESNO+MB_ICONASTERISK) <> IDYES then Exit;
    WriteAct;
    id_rec:=Warehouse_F.Grid_ActIn.DataSource.DataSet.FieldByName('ID').AsInteger;
    Warehouse_F.Grid_ActIn.DataSource.Dataset.Close;
    Warehouse_F.Grid_ActIn.DataSource.Dataset.Open;
    Warehouse_F.Grid_ActIn.DataSource.Dataset.Locate('ID',id_rec,[]);
   end;

    ShowActIn;
    if Application.MessageBox('Будем печатать?','Подтвердите',MB_ICONQUESTION+MB_YESNO) =ID_YES then
        begin
         if Reports_F.Rep1.Print then
            begin
               //ShowActIn;
            end;
        end;
  ModalResult:=mrOk;
end;

procedure TPrevActWhIn_F.WriteAct;
var
  id_rec:Integer;
begin
try
  try
    id_rec:=Warehouse_F.Grid_ActIn.DataSource.Dataset.FieldByName('id').AsInteger;
//    id_tp:=Warehouse_F.Grid_Wh.DataSource.Dataset.FieldByName('id').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update wh_act_in set sign_number=:p0 where id = :p1  ');
    DM.Sql.Params[0].AsInteger:=MyRandom();
    DM.Sql.Params[1].AsInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    DM.Refresh_Warehouse;
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
