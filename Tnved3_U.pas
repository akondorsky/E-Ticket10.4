unit Tnved3_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGridEh, Mask,
  ExtCtrls, ComCtrls, ToolWin, ImgList, DBGridEhGrouping, GridsEh,db;

type
  TTnved3_F = class(TForm)
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    ToolButton5: TToolButton;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    DBMemo1: TDBMemo;
    DBNavigator1: TDBNavigator;
    E_Find: TEdit;
    Label1: TLabel;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure E_FindButtonClick(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure E_FindKeyPress(Sender: TObject; var Key: Char);
    procedure E_FindChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function FindTovname(Fstr:String):Boolean;
  end;

var
  Tnved3_F: TTnved3_F;

implementation

{$R *.dfm}
uses unit_data;

function TTnved3_F.FindTovname(Fstr:String):Boolean;
begin
 Result:=false;
 ToolButton5Click(ToolButton5);
 if  DM.Qry_Tnved3.Locate('KOD',Fstr,[loPartialKey]) then
     Result:=true;
end;

procedure TTnved3_F.DBGridEh1DblClick(Sender: TObject);
begin
ModalResult:=mrOk;
end;

procedure TTnved3_F.E_FindButtonClick(Sender: TObject);

begin
  if Length(Trim(E_Find.Text)) =0 then Exit;
//  s:=format('select ID_NUM, (GRUPPA||TOV_POZ) as KOD, NAIM from tnved3 where naim like ''%%%s%%'' ',[E_Find.Text]);
  DM.Qry_Tnved3.Close;
  DM.Qry_Tnved3.SQL.Clear;
  DM.Qry_Tnved3.SQL.Add(' select ID_NUM, (GRUPPA||TOV_POZ||SUB_POZ) as KOD, KR_NAIM ');
  DM.Qry_Tnved3.SQL.Add(format(' from TNVED4 where GRUPPA||TOV_POZ||SUB_POZ like ''%s%%'' ',[E_Find.Text]));
//  DM.Qry_Tnved3.SQL.Add(' ORDER BY KOD ');
  DM.Qry_Tnved3.Open;

end;

procedure TTnved3_F.ToolButton5Click(Sender: TObject);
 var
  s:String;
begin
  if Length(Trim(E_Find.Text)) =0 then Exit;
  s:='select ID_NUM, (GRUPPA||TOV_POZ||SUB_POZ) as KOD, KR_NAIM from TNVED4 ORDER BY KOD ';
  DM.Qry_Tnved3.Close;
  DM.Qry_Tnved3.SQL.Clear;
  DM.Qry_Tnved3.SQL.Add(s);
  DM.Qry_Tnved3.Open;
end;

procedure TTnved3_F.ToolButton4Click(Sender: TObject);
 var
  R:Integer;
begin
  R:=DM.Qry_Tnved3.FieldByName('ID_NUM').AsInteger;
  DM.Qry_Tnved3.Close;
  DM.Qry_Tnved3.Open;
  DM.Qry_Tnved3.Locate('ID_NUM',R,[]);
end;

procedure TTnved3_F.E_FindKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then E_FindButtonClick(E_Find as TComboEdit);
end;

procedure TTnved3_F.E_FindChange(Sender: TObject);
begin
//  DM.Qry_Tnved3.Locate('KOD',E_Find.Text,[]);
end;

end.
