unit Broker_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, StdCtrls, Mask, DBCtrlsEh, ExtCtrls, ComCtrls,
  ToolWin, Grids, DBGridEh, ActnList, PropFilerEh, PropStorageEh,
  DBGridEhGrouping, GridsEh, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  DBAxisGridsEh;

type
  TBroker_F = class(TForm)
    DBGridEh1: TDBGridEh;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Panel1: TPanel;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ActionList1: TActionList;
    NewRec: TAction;
    Edit_Rec: TAction;
    Refresh_DS: TAction;
    All_Rec: TAction;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    FindRec: TAction;
    Label1: TLabel;
    E_Find: TButtonedEdit;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure E_FindButtonClick(Sender: TObject);
    procedure E_FindKeyPress(Sender: TObject; var Key: Char);
    procedure All_RecExecute(Sender: TObject);
    procedure NewRecExecute(Sender: TObject);
    procedure FindRecExecute(Sender: TObject);
    procedure Refresh_DSExecute(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure Find_Records(F_Str:String);
  public
    { Public declarations }
  end;

var
  Broker_F: TBroker_F;

implementation
uses main, dm_u ;
{$R *.dfm}

procedure TBroker_F.Find_Records(F_Str:String);
var
 s1:String;
begin
s1:=format('SELECT * from BROKERS where Name containing %s%s%s order by Name',[#39,F_Str,#39]);
DM.Qry_Broker.Close;
DM.Qry_Broker.SQL.Clear;
DM.Qry_Broker.SQL.Add(s1);
try
  DM.Qry_Broker.Open;
 except
  Application.MessageBox('Ошибка запроса','Внимание!',mb_OK+mb_iconstop);
end;
end;



procedure TBroker_F.DBGridEh1DblClick(Sender: TObject);
begin
 ModalResult:=mrOk;
end;

procedure TBroker_F.FormShow(Sender: TObject);
begin
if not DM.Qry_Broker.Active then DM.Qry_Broker.Open;
E_Find.SetFocus;
end;

procedure TBroker_F.E_FindButtonClick(Sender: TObject);
begin
Find_Records(E_Find.Text);
end;

procedure TBroker_F.E_FindKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then Find_Records(E_Find.Text);
end;

procedure TBroker_F.All_RecExecute(Sender: TObject);
var
 s1:String;
 Id_Rec:Integer;
begin
Id_Rec:=DM.Qry_Broker.FieldByName('Id').asInteger;
s1:='select * from BROKERS order by Name ';
DM.Qry_Broker.Close;
DM.Qry_Broker.SQL.Clear;
DM.Qry_Broker.SQL.Add(s1);
try
  DM.Qry_Broker.Open;
  DM.Qry_Broker.Locate('Id',Id_Rec,[]);
 except
  Application.MessageBox('Ошибка открытия БД','Внимание!',mb_OK+mb_iconstop);
end;

end;

procedure TBroker_F.NewRecExecute(Sender: TObject);
begin
// FormAddBroker.ShowModal;
end;

procedure TBroker_F.FindRecExecute(Sender: TObject);
begin
Find_Records(Trim(E_Find.Text));
end;

procedure TBroker_F.Refresh_DSExecute(Sender: TObject);
begin
  Dm.Refresh_Broker;
end;

procedure TBroker_F.ToolButton2Click(Sender: TObject);
begin
// FormEdBroker.ShowModal;
end;

end.
