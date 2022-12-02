unit Carrier_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PropFilerEh, PropStorageEh, ActnList, ImgList, StdCtrls, Mask,
  ExtCtrls,  ComCtrls, ToolWin, Grids, DBGridEh,
  DBGridEhGrouping, GridsEh,Db, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  DBAxisGridsEh;

type
  TCarrier_F = class(TForm)
    DBGridEh1: TDBGridEh;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    ToolButton5: TToolButton;
    Panel1: TPanel;
    ActionList1: TActionList;
    NewRec: TAction;
    Edit_Rec: TAction;
    Refresh_DS: TAction;
    All_Rec: TAction;
    RegPropStorageManEh1: TRegPropStorageManEh;
    PropStorageEh1: TPropStorageEh;
    Label1: TLabel;
    E_Find: TButtonedEdit;
    procedure E_FindKeyPress(Sender: TObject; var Key: Char);
    procedure All_RecExecute(Sender: TObject);
    procedure Refresh_DSExecute(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure NewRecExecute(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure E_FindRightButtonClick(Sender: TObject);
    procedure Edit_RecExecute(Sender: TObject);
  private
    { Private declarations }
    procedure Find_Records(F_Str:String);
  public
    { Public declarations }
    function Findcarrier(F:String):Boolean;    
  end;

var
  Carrier_F: TCarrier_F;

implementation

{$R *.dfm}
uses dm_u,main, CarrierAdd_U, CarrierEdit_U;
function TCarrier_F.Findcarrier(F:String):Boolean;
begin
 Result:=false;
 All_Rec.Execute;
 if DM.Qry_carrier.Locate('INN',F,[]) then
     Result:=true;
end;

procedure TCarrier_F.Find_Records(F_Str:String);
var
 s1, s2,s3:String;
begin
s1:='select  A.*,B.NAME ';
s2:=' from CARRIER A left join country_codes B on a.country_code=b.ALPHA2 ';
s3:=format(' where A.OWNER containing %s%s%s order by A.OWNER',[#39,Trim(F_Str),#39]);

DM.qry_carrier.Close;
DM.qry_carrier.SQL.Clear;
DM.qry_carrier.SQL.Add(s1+s2+s3);
try
  DM.qry_carrier.Open;
 except
      on E: EdatabaseError do
        begin
         DM.Sql.Transaction.Rollback;
         ShowMessage(E.Message);
        end;
end;
end;

procedure TCarrier_F.Edit_RecExecute(Sender: TObject);
begin
  carrierEdit_F.ShowModal;
end;

procedure TCarrier_F.E_FindKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then  Find_Records(E_Find.Text);
end;

procedure TCarrier_F.E_FindRightButtonClick(Sender: TObject);
begin
Find_Records(E_Find.Text);
end;

procedure TCarrier_F.All_RecExecute(Sender: TObject);
var
 s1,s2:String;
begin
s1:='select  A.*, B.NAME ';
s2:=' from CARRIER A left join country_codes B on a.country_code=b.alpha2 order by a.owner ';
DM.qry_carrier.Close;
DM.qry_carrier.SQL.Clear;
DM.qry_carrier.SQL.Add(s1+s2);
try
  DM.qry_carrier.Open;
 except
      on E: EdatabaseError do
        begin
         DM.Sql.Transaction.Rollback;
         ShowMessage(E.Message);
        end;
end;
end;

procedure TCarrier_F.Refresh_DSExecute(Sender: TObject);
begin
  DM.Refresh_Carrier;
end;

procedure TCarrier_F.DBGridEh1DblClick(Sender: TObject);
begin
ModalResult:=mrOk;
end;

procedure TCarrier_F.NewRecExecute(Sender: TObject);
begin
CarrierAdd_F.ShowModal;
end;

procedure TCarrier_F.ToolButton2Click(Sender: TObject);
begin
CarrierEdit_F.ShowModal;
end;

end.
