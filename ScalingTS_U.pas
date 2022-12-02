unit ScalingTS_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBGridEhGrouping, GridsEh, DBGridEh, StdCtrls, Mask,
  DBCtrlsEh, ComCtrls, ToolWin, Buttons, ActnList,
  PlatformDefaultStyleActnCtrls, ActnMan;

type
  TScalingTS_F = class(TForm)
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    CategoryPanel2: TCategoryPanel;
    Grid_ts: TDBGridEh;
    ToolBar1: TToolBar;
    Grid_Act: TDBGridEh;
    ToolBt_Add: TToolButton;
    ToolBt_Edit: TToolButton;
    ToolBt_Del: TToolButton;
    ToolButton4: TToolButton;
    ActionManager1: TActionManager;
    AddActScale_A: TAction;
    EditActTs_A: TAction;
    DelActTs_A: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AddActScale_AExecute(Sender: TObject);
    procedure EditActTs_AExecute(Sender: TObject);
    procedure AddActScale_AUpdate(Sender: TObject);
    procedure EditActTs_AUpdate(Sender: TObject);
    procedure DelActTs_AUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScalingTS_F: TScalingTS_F;

implementation

{$R *.dfm}
uses main,dm_u, AddActScaleTs_U, EditActScaleTs_U,uCustomImageDrawHook;

procedure TScalingTS_F.AddActScale_AExecute(Sender: TObject);
var
 i:Integer;
begin
 DM.Qry.Close;
 DM.Qry.SQL.Clear;
 DM.Qry.SQL.Add('select count(*) from ts_scale where id_ts=:p0');
 DM.Qry.Params[0].AsInteger:=ScalingTS_F.Grid_ts.DataSource.DataSet.FieldByName('ID').AsInteger;
 DM.Qry.Open;
 i:=DM.Qry.Fields[0].AsInteger;
 if i > 0  then
   begin
    Application.MessageBox('У данного ТС уже существует Акт взвешивания', 'Внимание!',MB_ICONSTOP+MB_OK );
    Exit;
   end;
 AddActScaleTS_F.ShowModal;
end;

procedure TScalingTS_F.AddActScale_AUpdate(Sender: TObject);
begin
 if Grid_ts.DataSource.DataSet.FieldByName('ID').IsNull then
  (sender as TAction).Enabled:=False
  else
  (sender as TAction).Enabled:=True;

end;

procedure TScalingTS_F.DelActTs_AUpdate(Sender: TObject);
begin
 if Grid_ts.DataSource.DataSet.FieldByName('ID').IsNull then
  (sender as TAction).Enabled:=False
  else
  (sender as TAction).Enabled:=True;
end;

procedure TScalingTS_F.EditActTs_AExecute(Sender: TObject);
begin
 EditActScaleTS_F.ShowModal;
end;

procedure TScalingTS_F.EditActTs_AUpdate(Sender: TObject);
begin
 if Grid_ts.DataSource.DataSet.FieldByName('ID').IsNull then
  (sender as TAction).Enabled:=False
  else
  (sender as TAction).Enabled:=True;
end;

procedure TScalingTS_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if  DM.Qry_ScaleTS.Active then DM.Qry_ScaleTS.Close;
  if  DM.Qry_ActScale_TS.Active then DM.Qry_ActScale_TS.Close;
end;

procedure TScalingTS_F.FormShow(Sender: TObject);
begin
  if not DM.Qry_ScaleTS.Active then DM.Qry_ScaleTS.Open;
  if not DM.Qry_ActScale_TS.Active then DM.Qry_ActScale_TS.Open;
  Grid_ts.SetFocus;
end;

end.
