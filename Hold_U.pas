unit Hold_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGridEh, Buttons, DBGridEhGrouping,
  GridsEh, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh, ToolWin,
  ComCtrls, Menus, DB, IBX.IBCustomDataSet, IBX.IBTable, EhLibVCL;

type
  THold_F = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
    PopMenu_Flag : Boolean;
  public
    { Public declarations }
  end;

var
  Hold_F: THold_F;

implementation

{$R *.dfm}
uses
 dm_u, HoldAdd_U, HoldEdit_U,Main;

procedure THold_F.DBGridEh1DblClick(Sender: TObject);
begin
 ModalResult:=mrOk;
end;

procedure THold_F.SpeedButton1Click(Sender: TObject);
 var
  Id_rec:Integer;
begin
   Id_Rec:=DM.Qry_Hold.FieldByName('ID').asInteger;
   DM.Qry_Hold.Close;
   DM.Qry_Hold.Open;
   DM.Qry_Hold.Locate('ID',Id_Rec,[]);
end;

procedure THold_F.FormShow(Sender: TObject);
var
 i:Integer;
begin
  if (Pos('HOLDINGS',Rights) > 0) then PopMenu_Flag:=True else PopMenu_Flag:=False;
  if (Role = 'SYSADMIN') or (PopMenu_Flag) then
    begin
      for i := 0 to PopupMenu1.Items.Count-1 do
        PopupMenu1.Items[i].Enabled:=True;
    end
   else
    begin
      for i := 0 to PopupMenu1.Items.Count-1 do
        PopupMenu1.Items[i].Enabled:=False;
    end;
  SpeedButton1Click(SpeedButton1);
end;

procedure THold_F.N1Click(Sender: TObject);
begin
  if HoldAdd_F.ShowModal = mrOk then
    begin
//      DM.Qry_hold.Close;
//      DM.Qry_Hold.Open;
//      DM.Qry_Hold.Last;

    end;

end;

procedure THold_F.N2Click(Sender: TObject);
begin
  HoldEdit_F.ShowModal;
end;

end.
