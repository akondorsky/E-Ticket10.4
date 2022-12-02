unit Goods_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, StdCtrls, Mask, DBCtrlsEh, ExtCtrls, ComCtrls,
  ToolWin, Grids, DBGridEh, ActnList, PropFilerEh, PropStorageEh,
  DBGridEhGrouping, GridsEh, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  DBAxisGridsEh,Db;

type
  TGoods_F = class(TForm)
    DBGridEh1: TDBGridEh;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ActionList1: TActionList;
    NewRec: TAction;
    Edit_Rec: TAction;
    RefreshGoods: TAction;
    All_Rec: TAction;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    Panel1: TPanel;
    Label1: TLabel;
    E_Find: TButtonedEdit;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure E_FindButtonClick(Sender: TObject);
    procedure E_FindKeyPress(Sender: TObject; var Key: Char);
    procedure All_RecExecute(Sender: TObject);
    procedure RefreshGoodsExecute(Sender: TObject);
    procedure E_FindRightButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure Find_Records(F_Str:String);
  public
    { Public declarations }
  end;

var
  Goods_F: TGoods_F;

implementation
uses main, dm_u;
{$R *.dfm}


procedure TGoods_F.DBGridEh1DblClick(Sender: TObject);
begin
Self.ModalResult:=mrOk;
end;

procedure TGoods_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  All_Rec.Execute;
end;

procedure TGoods_F.FormShow(Sender: TObject);
begin
if not DM.Qry_Goods.Active then DM.Qry_Goods.Open;
E_Find.SetFocus;
end;

procedure TGoods_F.E_FindButtonClick(Sender: TObject);
begin
 Find_Records(E_Find.Text);
end;

procedure TGoods_F.E_FindKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then Find_Records(E_Find.Text);
end;

procedure TGoods_F.E_FindRightButtonClick(Sender: TObject);
begin
 Find_Records(E_Find.Text);
end;

procedure TGoods_F.All_RecExecute(Sender: TObject);
var
  Id_Rec:Integer;
begin
Id_Rec:=DbgridEh1.DataSource.DataSet.FieldByName('ID').AsInteger;
DM.Qry_Goods.Close;
DM.Qry_Goods.SQL.Clear;
DM.Qry_Goods.SQL.Add(' select * from GOODS_CAT order by kod ');
try
  DM.Qry_Goods.Open;
  DM.Qry_Goods.Locate('Id',Id_rec,[]);
 except
      on E: EdatabaseError do
        begin
         ShowMessage(E.Message);
        end;
end;
end;

procedure TGoods_F.RefreshGoodsExecute(Sender: TObject);
begin
  DM.Refresh_Goods;
end;

procedure TGoods_F.Find_Records(F_Str: String);
begin
DM.Qry_Goods.Close;
DM.Qry_Goods.SQL.Clear;
DM.Qry_Goods.SQL.Add(' select ID,KOD,NAME from GOODS_CAT ');
DM.Qry_Goods.SQL.Add(format(' where kod containing %s%s%s order by kod',[#39,F_Str,#39] ));
try
  DM.Qry_Goods.Open;
 except
      on E: EdatabaseError do
        begin
         ShowMessage(E.Message);
        end;
end;
end;

end.
