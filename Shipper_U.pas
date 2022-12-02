unit Shipper_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, StdCtrls, Mask, DBCtrlsEh,  ExtCtrls, ComCtrls,
  ToolWin, Grids, DBGridEh, ActnList, PropFilerEh, PropStorageEh,
  DBGridEhGrouping, GridsEh, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  DBAxisGridsEh;

type
  TShipper_F = class(TForm)
    DBGridEh1: TDBGridEh;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    Panel1: TPanel;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ActionList1: TActionList;
    A_NewRec: TAction;
    A_EditRec: TAction;
    A_RefreshShippers: TAction;
    A_AllRec: TAction;
    RegPropStorageManEh1: TRegPropStorageManEh;
    PropStorageEh1: TPropStorageEh;
    Label1: TLabel;
    E_Find: TButtonedEdit;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure E_FindKeyPress(Sender: TObject; var Key: Char);
    procedure A_AllRecExecute(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure A_NewRecExecute(Sender: TObject);
    procedure A_RefreshShippersExecute(Sender: TObject);
    procedure E_FindRightButtonClick(Sender: TObject);
    procedure A_EditRecExecute(Sender: TObject);
  private
    { Private declarations }
    procedure Find_Records(F_Str:String);
  public
    { Public declarations }
  end;

var
  Shipper_F: TShipper_F;

implementation
uses main, dm_u, ShipperAdd_U,ShipperEdit_U;
{$R *.dfm}

procedure TShipper_F.Find_Records(F_Str:String);
var
 s1, s2,s3:String;
begin
s1:='SELECT A.*, B.NAME ';
s2:=' FROM F_OTPRAV A left join COUNTRY_CODES b on a.COUNTRY = b.alpha2 ';
s3:=format(' where A.FIRM_NAME containing %s%s%s order by A.FIRM_NAME,A.COUNTRY',[#39,Trim(F_Str),#39]);

DM.Qry_Shipper.Close;
DM.Qry_Shipper.SQL.Clear;
DM.Qry_Shipper.SQL.Add(s1+s2+s3);
try
  DM.Qry_Shipper.Open;
 except
  //Application.MessageBox('Ошибка запроса','Внимание!',mb_OK+mb_iconstop);
end;
end;



procedure TShipper_F.DBGridEh1DblClick(Sender: TObject);
begin
Self.ModalResult:=mrOk;
end;

procedure TShipper_F.FormShow(Sender: TObject);
begin
if not DM.Qry_Shipper.Active then DM.Qry_Shipper.Open;
E_Find.SetFocus;
end;

procedure TShipper_F.E_FindKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then E_FindRightButtonClick(Sender);
end;

procedure TShipper_F.E_FindRightButtonClick(Sender: TObject);
begin
Find_Records(E_Find.Text);
end;

procedure TShipper_F.A_AllRecExecute(Sender: TObject);
var
 s1,s2:String;
 Id_Rec:Integer;
begin
Id_Rec:=DbgridEh1.datasource.dataset.FieldByName('Id').asInteger;
s1:='SELECT A.*, B.NAME ';
s2:=' FROM F_OTPRAV A left join  COUNTRY_CODES b on a.COUNTRY = b.alpha2 ORDER BY A.FIRM_NAME,A.COUNTRY ';

DM.Qry_Shipper.Close;
DM.Qry_Shipper.SQL.Clear;
DM.Qry_Shipper.SQL.Add(s1+s2);
try
  DM.Qry_Shipper.Open;
  DM.Qry_Shipper.Locate('Id',Id_rec,[])
 except
  Application.MessageBox('Ошибка открытия','Внимание!',mb_OK+mb_iconstop);
end;

end;

procedure TShipper_F.FormDblClick(Sender: TObject);
begin
Self.ModalResult:=mrOK;
end;

procedure TShipper_F.A_EditRecExecute(Sender: TObject);
begin
 ShipperEdit_F.ShowModal;
end;

procedure TShipper_F.A_NewRecExecute(Sender: TObject);
begin
 ShipperAdd_F.ShowModal;
end;

procedure TShipper_F.A_RefreshShippersExecute(Sender: TObject);
 var
  Id_Rec:Integer;
begin
 Id_Rec:=DM.Qry_Shipper.FieldByName('ID').asInteger;
 DM.Qry_Shipper.Close;
 DM.Qry_Shipper.Open;
 DM.Qry_Shipper.Locate('ID',Id_Rec,[]);
end;

end.
