unit Val_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, StdCtrls, Mask, DBCtrlsEh, ExtCtrls, ComCtrls,
  ToolWin, Grids, DBGridEh, ActnList, PropFilerEh, PropStorageEh,
  DBGridEhGrouping, GridsEh, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  DBAxisGridsEh;

type
  TVal_F = class(TForm)
    DBGridEh1: TDBGridEh;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    Panel1: TPanel;
    ImageList1: TImageList;
    ToolButton5: TToolButton;
    ActionList1: TActionList;
    NewRec: TAction;
    Edit_Rec: TAction;
    Refresh_DS: TAction;
    All_Rec: TAction;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    E_Find: TButtonedEdit;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure E_FindKeyPress(Sender: TObject; var Key: Char);
    procedure All_RecExecute(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure E_FindRightButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure Find_Records(F_Str:String);
  public
    { Public declarations }
    function FindVal(F:String):String;
    function FindValBUK(F:String):String;
  end;

var
  Val_F: TVal_F;

implementation
uses main, dm_u;
{$R *.dfm}
function TVal_F.FindVal(F:String):String;
begin
 if DM.Qry_Val.Locate('KOD',F,[]) then
     Result:=DM.Qry_Val.FieldValues['KR_NAME']
    else
     Result:='F';
end;

function TVal_F.FindValBUK(F:String):String;
begin
 if DM.Qry_Val.Locate('KOD',F,[]) then
     Result:=DM.Qry_Val.FieldValues['BUK']
    else
     Result:='F';
end;


procedure TVal_F.Find_Records(F_Str:String);
var
 s:string;
begin
  case RadioGroup1.ItemIndex of
    0:s:=format('select * from valname where kod containing %s%s%s',[#39,F_Str,#39]);
    1:s:=format('select * from valname where kr_name containing %s%s%s',[#39,F_Str,#39]);
  end;
  DM.Qry_Val.Close;
  DM.Qry_Val.SQL.Clear;
  DM.Qry_Val.SQL.Add(s);
  DM.Qry_Val.Open;
end;



procedure TVal_F.DBGridEh1DblClick(Sender: TObject);
begin
 ModalResult:=mrOk;
end;

procedure TVal_F.FormShow(Sender: TObject);
begin
if not DM.Qry_Val.Active then DM.Qry_Val.Open;
E_Find.SetFocus;
end;

procedure TVal_F.E_FindKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then Find_Records(E_Find.Text);
end;

procedure TVal_F.E_FindRightButtonClick(Sender: TObject);
begin
Find_Records(E_Find.Text);
end;

procedure TVal_F.All_RecExecute(Sender: TObject);
var
 rec:Integer;
begin
rec:=DM.Qry_Val.FieldByName('ID').asInteger;
DM.Qry_Val.Close;
DM.Qry_Val.SQL.Clear;
DM.Qry_Val.SQL.Add('select * from VALNAME order by KR_NAME');
try
  DM.Qry_Val.Open;
  DM.Qry_Val.Locate('ID',rec,[]);
 except
  Application.MessageBox('Ошибка открытия','Внимание!',mb_OK+mb_iconstop);
end;

end;

procedure TVal_F.ToolButton1Click(Sender: TObject);
begin
//  FormAddVal.ShowModal;
end;

end.
