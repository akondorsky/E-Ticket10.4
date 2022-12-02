unit Tnved4_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGridEh,
  ExtCtrls, ComCtrls, ToolWin, ImgList, DBGridEhGrouping, GridsEh,db,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh,IBX.IbQuery,
  System.ImageList, EhLibVCL;

type
  TTnved4_F = class(TForm)
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    BtnRefresh: TToolButton;
    ToolButton6: TToolButton;
    BtnAllRec: TToolButton;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    E_Find: TButtonedEdit;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure AllRec(Sender: TObject);
    procedure Refresh(Sender: TObject);
    procedure E_FindKeyPress(Sender: TObject; var Key: Char);
    procedure E_FindChange(Sender: TObject);
    procedure E_FindRightButtonClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    function FindTovname(Fstr:String):Boolean;
  end;

var
  Tnved4_F: TTnved4_F;

implementation

{$R *.dfm}
uses dm_u, TnvedUpdate_U;

function TTnved4_F.FindTovname(Fstr:String):Boolean;
var
  qry:TIbQuery;
begin
 Result:=false;
  qry := TIbquery.Create(Self);
  qry.Database:=DM.DB;
 try
   qry.SQL.Add('select count(id) from tnved4 where gruppa||tov_pos = :p0 ');
   qry.Params[0].AsString:=Trim(Copy(Fstr,1,4));
   qry.Open;
   if qry.Fields[0].AsInteger > 0 then Result:=true;
 finally
   qry.Free;
 end;
end;

procedure TTnved4_F.DBGridEh1DblClick(Sender: TObject);
begin
ModalResult:=mrOk;
end;

procedure TTnved4_F.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then ModalResult:=mrOk;
  
end;

procedure TTnved4_F.AllRec(Sender: TObject);
 var
  s:String;
begin
  if Length(Trim(E_Find.Text)) =0 then Exit;
  s:='select ID, (GRUPPA||TOV_POS||SUB_POS) as KOD, NAME from TNVED4 where DATE_EXP is null ORDER BY KOD ';
  DM.Qry_Tnved4.Close;
  DM.Qry_Tnved4.SQL.Clear;
  DM.Qry_Tnved4.SQL.Add(s);
  DM.Qry_Tnved4.Open;
end;

procedure TTnved4_F.Refresh(Sender: TObject);
begin
  DM.Refresh_TNved4;
end;

procedure TTnved4_F.ToolButton2Click(Sender: TObject);
begin
 if TnvedUpdate_F.ShowModal = mrOk then Refresh(BtnRefresh);
end;

procedure TTnved4_F.E_FindKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then E_FindRightButtonCLick(E_Find as TButtonedEdit);
end;

procedure TTnved4_F.E_FindRightButtonClick(Sender: TObject);
begin
 if Length(Trim(E_Find.Text)) =0 then Exit;
//  s:=format('select ID_NUM, (GRUPPA||TOV_POZ) as KOD, NAIM from Tnved4 where naim like ''%%%s%%'' ',[E_Find.Text]);
  DM.Qry_Tnved4.Close;
  DM.Qry_Tnved4.SQL.Clear;
  DM.Qry_Tnved4.SQL.Add(' select ID, (GRUPPA||TOV_POS||SUB_POS) as KOD, NAME ');
  DM.Qry_Tnved4.SQL.Add(format(' from TNVED4 where GRUPPA||TOV_POS||SUB_POS like ''%s%%'' ',[E_Find.Text]));
  Dm.Qry_Tnved4.SQL.Add(' and DATE_EXP is null ');
  DM.Qry_Tnved4.SQL.Add(' ORDER BY KOD ');
  DM.Qry_Tnved4.Open;
end;

procedure TTnved4_F.E_FindChange(Sender: TObject);
begin
  //DM.Qry_Tnved4.Locate('KOD',E_Find.Text,[]);
end;

end.
