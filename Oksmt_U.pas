unit Oksmt_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, StdCtrls, Mask, DBCtrlsEh, ExtCtrls, ComCtrls,
  ToolWin, Grids, DBGridEh,  ActnList, PropFilerEh, PropStorageEh,
  DBGridEhGrouping, GridsEh, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  DBAxisGridsEh;

type
  TOksmt_F = class(TForm)
    DBGridEh1: TDBGridEh;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Panel1: TPanel;
    RG1: TRadioGroup;
    ActionList1: TActionList;
    NewRec: TAction;
    Edit_Rec: TAction;
    Refresh_DS: TAction;
    All_Rec: TAction;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    ToolButton3: TToolButton;
    ImageList1: TImageList;
    Label1: TLabel;
    E_Find: TButtonedEdit;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure E_FindKeyPress(Sender: TObject; var Key: Char);
    procedure All_RecExecute(Sender: TObject);
    procedure NewRecExecute(Sender: TObject);
    procedure Edit_RecExecute(Sender: TObject);
    procedure E_FindRightButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure Find_Records(F_Str:String);
  public
    { Public declarations }
   // function FindCountry(F:String):String;
  end;

var
  Oksmt_F: TOksmt_F;

implementation
uses main, dm_u;
{$R *.dfm}
//function TOksmt_F.FindCountry(F:String):String;
//begin
// if DM.Qry_CountryCodes.Locate('ALPHA2',F,[]) then
//     Result:=DM.Qry_CountryCodes.FieldValues['NAME']
//    else
//     Result:='';
//end;

procedure TOksmt_F.Find_Records(F_Str:String);
var
 s:String;
begin
s:='SELECT * FROM OKSMT ';
 case RG1.ItemIndex of
  0: s:=s+format(' where kod = %s%s%s order by KRNAME',[#39,Trim(F_Str),#39]);
  1: s:=s+format(' where KRNAME containing %s%s%s order by KRNAME',[#39,Trim(F_Str),#39]);
 end;
DM.qry_OKSMT.Close;
DM.qry_OKSMT.Sql.Clear;
DM.qry_OKSMT.Sql.Add(s);
try
  DM.qry_OKSMT.Open;
 except
  Application.MessageBox('Ошибка запроса','Внимание!',mb_OK+mb_iconstop);
end;
end;



procedure TOksmt_F.DBGridEh1DblClick(Sender: TObject);
begin
  Self.ModalResult:=mrOk;
end;

procedure TOksmt_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.Qry_CountryCodes.Close;
end;

procedure TOksmt_F.FormShow(Sender: TObject);
begin
DM.Qry_CountryCodes.Open;
E_Find.SetFocus;

end;

procedure TOksmt_F.E_FindKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then Find_Records(E_Find.Text);
end;

procedure TOksmt_F.E_FindRightButtonClick(Sender: TObject);
begin
Find_Records(E_Find.Text);
end;

procedure TOksmt_F.All_RecExecute(Sender: TObject);
var
 s:String;
 r:Integer;
begin
r:=DM.Qry_Oksmt.FieldByName('ID').asInteger;
s:='SELECT * FROM OKSMT ORDER BY KRNAME';
DM.Qry_OKSMT.Close;
DM.Qry_OKSMT.SQL.Clear;
DM.Qry_OKSMT.SQL.Add(s);
try
  DM.Qry_OKSMT.Open;
  DM.Qry_Oksmt.Locate('ID',r,[]);
 except
  Application.MessageBox('Ошибка запроса','Внимание!',mb_OK+mb_iconstop);
end;
end;

procedure TOksmt_F.NewRecExecute(Sender: TObject);
begin
//FormAddReg_ti.ShowModal;
end;

procedure TOksmt_F.Edit_RecExecute(Sender: TObject);
begin
//FormEdReg_ti.ShowModal;
end;

end.
