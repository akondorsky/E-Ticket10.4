unit Edizm_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, StdCtrls, Mask, DBCtrlsEh, ExtCtrls, ComCtrls,
  ToolWin, Grids, DBGridEh,ActnList, PropFilerEh, PropStorageEh,
  DBGridEhGrouping, GridsEh, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  DBAxisGridsEh;

type
  TEdizm_F = class(TForm)
    DBGridEh1: TDBGridEh;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ImageList1: TImageList;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ActionList1: TActionList;
    NewRec: TAction;
    Edit_Rec: TAction;
    Refresh_DS: TAction;
    All_Rec: TAction;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure All_RecExecute(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
  private
    { Private declarations }
    procedure Find_Records(F_Str:String);
  public
    { Public declarations }
  end;

var
  Edizm_F: TEdizm_F;

implementation
uses main, dm_u;
{$R *.dfm}

procedure TEdizm_F.Find_Records(F_Str:String);
begin

end;



procedure TEdizm_F.DBGridEh1DblClick(Sender: TObject);
begin
 ModalResult:=mrOk;
end;

procedure TEdizm_F.All_RecExecute(Sender: TObject);
var
 s1:String;
begin
s1:='select ID_NUM, KOD, KR_NAME, FNAME from edizm order by FNAME ';
DM.Qry_Edizm.Open;
DM.Qry_Edizm.Close;
DM.Qry_Edizm.SQL.Clear;
DM.Qry_Edizm.SQL.Add(s1);
try
  DM.Qry_Edizm.Open;
 except
  Application.MessageBox('Ошибка открытия','Внимание!',mb_OK+mb_iconstop);
end;

end;

procedure TEdizm_F.ToolButton4Click(Sender: TObject);
 var
  R:integer;
begin
 R:=DM.Qry_Edizm.FieldValues['ID'];
 DM.Qry_Edizm.Close;
 DM.Qry_Edizm.Open;
 DM.Qry_Edizm.Locate('ID',R,[]);
end;

end.
