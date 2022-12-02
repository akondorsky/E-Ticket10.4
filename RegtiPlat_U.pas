unit RegtiPlat_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PropFilerEh, PropStorageEh, Grids, DBGridEh, StdCtrls, Mask,
  ExtCtrls, ActnList, DBGridEhGrouping, GridsEh, ComCtrls, ToolWin, ImgList,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh,DB, IBX.IBCustomDataSet,
  IBX.IBQuery, System.ImageList, System.Actions, EhLibVCL;

type
  TRegtiPlat_F = class(TForm)
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    Panel1: TPanel;
    ActionList1: TActionList;
    AllRec_RegTi1: TAction;
    E_Find: TButtonedEdit;
    Label1: TLabel;
    RG1: TRadioGroup;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ImageList3: TImageList;
    Grid_firm: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Grid_log: TDBGridEh;
    DS_RegtiPlat: TDataSource;
    Qry_RegtiPlat: TIBQuery;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure E_FindKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure E_FindRightButtonClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure Grid_firmDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure Find_Records(F_Str:String);
  public
    { Public declarations }
    procedure All_Rec;
  end;

var
  RegtiPlat_F: TRegtiPlat_F;

implementation
uses dm_u,main;
{$R *.dfm}
procedure TRegtiPlat_F.All_Rec;
var
 s:String;
 rec:Integer;
begin
 s:=' SELECT first 100  A.*,  iif(c.saldo is null,0,c.saldo ) as SALDO , ';
 s:=s+ ' a.credit, iif((a.credit > 0) , (a.credit + c.saldo), null) as CREDIT_REST, ';
 s:=s+'  B.NAME, B.DISCOUNT AS DISC_HOLD ';
 s:=s+' FROM REG_TI A  LEFT JOIN HOLDINGS B ON A.ID_HOLD=B.ID ';
 s:=s+'  left join registr_saldo c on a.id = c.id_zayv ' ;
 s:=s+ '  order by A.ZAYV ';
 if Qry_RegtiPlat.Active then 
   if not Qry_RegtiPlat.FieldByName('ID').IsNull then
      rec:=Qry_RegtiPlat.FieldByName('ID').AsInteger else rec:=0;
Qry_RegtiPlat.Close;
Qry_RegtiPlat.SQL.Clear;
Qry_RegtiPlat.SQL.Add(s);
try
  Qry_RegtiPlat.Open;
  if rec > 0 then Qry_RegtiPlat.Locate('ID',rec,[]);
 except
  Application.MessageBox('Ошибка открытия справочника получателей','Внимание!',mb_OK+mb_iconstop);
end;
end;

procedure TRegtiPlat_F.Find_Records(F_Str:String);
var
 s,s1:String;
begin
 s:=' SELECT first 100  A.*,  iif(c.saldo is null,0,c.saldo ) as SALDO , ';
 s:=s+ ' a.credit, iif((a.credit > 0) , (a.credit + c.saldo), null) as CREDIT_REST, ';
 s:=s+'  B.NAME, B.DISCOUNT AS DISC_HOLD ';
 s:=s+' FROM REG_TI A  LEFT JOIN HOLDINGS B ON A.ID_HOLD=B.ID ';
 s:=s+'  left join registr_saldo c on a.id = c.id_zayv ' ;
 case RG1.ItemIndex of
  0: s1:=format(' where A.ZAYV containing %s%s%s AND DEL_FLAG = 0 order by A.ZAYV',[#39,Trim(F_Str),#39]);
  1: s1:=format(' where A.INN containing %s%s%s AND DEL_FLAG = 0 order by A.ZAYV',[#39,Trim(F_Str),#39]);
 end;
Qry_RegtiPlat.Close;
Qry_RegtiPlat.SQL.Clear;
Qry_RegtiPlat.SQL.Add(s+s1);
try
  Qry_RegtiPlat.Open;
 except
//  Application.MessageBox('Ошибка запроса','Внимание!',mb_OK+mb_iconstop);
    on E: EdatabaseError do
      begin
       //DM.Sql.Transaction.Rollback;
       ShowMessage(E.Message);
      end;
end;
end;


procedure TRegtiPlat_F.DBGridEh1DblClick(Sender: TObject);
begin
  ModalResult:=mrOk;
end;

procedure TRegtiPlat_F.E_FindKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then Find_Records(E_Find.Text);
//if Key = #27 then ModalResult:=mrcancel;
end;

procedure TRegtiPlat_F.E_FindRightButtonClick(Sender: TObject);
begin
 Find_Records(E_Find.Text);
end;

procedure TRegtiPlat_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//ModalResult:=mrOK;
end;

procedure TRegtiPlat_F.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
// if Key = Vk_ESCAPE then ModalResult:=mrcancel;
end;

procedure TRegtiPlat_F.FormShow(Sender: TObject);
begin
//
 if not Qry_RegtiPlat.Active then All_Rec;
end;

procedure TRegtiPlat_F.Grid_firmDblClick(Sender: TObject);
begin
  ModalResult:=mrOk;
end;

procedure TRegtiPlat_F.ToolButton1Click(Sender: TObject);
begin
  All_Rec;
end;

end.
