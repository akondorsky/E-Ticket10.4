unit RegtiDisp_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PropFilerEh, PropStorageEh, Grids, DBGridEh, StdCtrls, Mask,
  ExtCtrls, ActnList, DBGridEhGrouping, GridsEh, ComCtrls, ToolWin, ImgList,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh,DB, System.ImageList,
  System.Actions, EhLibVCL;

type
  TRegtiDisp_F = class(TForm)
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    ActionList1: TActionList;
    AllRec_RegTi1: TAction;
    E_Find: TButtonedEdit;
    Label1: TLabel;
    RG1: TRadioGroup;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ImageList3: TImageList;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure E_FindKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure E_FindRightButtonClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Find_Records(F_Str:String);
  public
    { Public declarations }
    procedure All_Rec;
  end;

var
  RegtiDisp_F: TRegtiDisp_F;

implementation
uses dm_u,main;
{$R *.dfm}
procedure TRegtiDisp_F.All_Rec;
var
 s1:String;
 rec:Integer;
begin
s1:='select ADRESS, ID, INN, ZAYV, VALID,DISCOUNT,'+
   format('(POSTCODE||%s %s||CITY||%s %s||STREET||%s %s||HOUSE) AS FULL_ADRESS  from REG_TI order by ZAYV ',[#39,#39,#39,#39,#39,#39]);
rec:=DM.Qry_RegtiDisp.FieldByName('ID').AsInteger;
DM.Qry_RegtiDisp.Close;
DM.Qry_RegtiDisp.SQL.Clear;
DM.Qry_RegtiDisp.SQL.Add(s1);
try
  DM.Qry_RegtiDisp.Open;
  DM.Qry_RegtiDisp.Locate('ID',rec,[]);
 except
  Application.MessageBox('Ошибка открытия справочника получателей','Внимание!',mb_OK+mb_iconstop);
end;
end;

procedure TRegtiDisp_F.Find_Records(F_Str:String);
var
 s1,s2:String;
begin
s1:='select ADRESS, ID, INN, ZAYV, VALID,DISCOUNT, ';
s1:=s1 + format('(POSTCODE||%s %s||CITY||%s %s||STREET||%s %s||HOUSE) AS FULL_ADRESS ',[#39,#39,#39,#39,#39,#39]);
s1:=s1 + ' from REG_TI ';
 case RG1.ItemIndex of
  0: s2:=format(' where ZAYV containing %s%s%s AND DEL_FLAG = 0 order by ZAYV',[#39,Trim(F_Str),#39]);
  1: s2:=format(' where INN containing %s%s%s AND DEL_FLAG = 0 order by ZAYV',[#39,Trim(F_Str),#39]);
 end;
DM.Qry_RegtiDisp.Close;
DM.Qry_RegtiDisp.SQL.Clear;
DM.Qry_RegtiDisp.SQL.Add(s1+s2);
try
  DM.Qry_RegtiDisp.Open;
 except
//  Application.MessageBox('Ошибка запроса','Внимание!',mb_OK+mb_iconstop);
    on E: EdatabaseError do
      begin
       //DM.Sql.Transaction.Rollback;
       ShowMessage(E.Message);
      end;
end;
end;


procedure TRegtiDisp_F.DBGridEh1DblClick(Sender: TObject);
begin
  ModalResult:=mrOk;
end;

procedure TRegtiDisp_F.E_FindKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then Find_Records(E_Find.Text);
//if Key = #27 then ModalResult:=mrcancel;
end;

procedure TRegtiDisp_F.E_FindRightButtonClick(Sender: TObject);
begin
 Find_Records(E_Find.Text);
end;

procedure TRegtiDisp_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//ModalResult:=mrOK;
end;

procedure TRegtiDisp_F.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
// if Key = Vk_ESCAPE then ModalResult:=mrcancel;
end;

procedure TRegtiDisp_F.FormShow(Sender: TObject);
begin
//
 if not DM.Qry_RegtiDisp.Active then DM.Qry_RegtiDisp.Open;

end;

procedure TRegtiDisp_F.ToolButton1Click(Sender: TObject);
begin
  All_Rec;
end;

end.
