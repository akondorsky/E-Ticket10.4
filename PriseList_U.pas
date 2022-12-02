unit PriseList_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, StdCtrls, Mask, DBCtrlsEh, ExtCtrls, ComCtrls,
  ToolWin, Grids, DBGridEh,  ActnList, PropFilerEh, PropStorageEh,
  OleServer, ExcelXP, DBGridEhGrouping, GridsEh;

type
  TPriseList_F = class(TForm)
    DBGridEh1: TDBGridEh;
    ToolBar1: TToolBar;
    Bt_New_Price: TToolButton;
    Bt_Edit_Price: TToolButton;
    ToolButton3: TToolButton;
    Bt_Ref: TToolButton;
    ToolButton6: TToolButton;
    ActionList1: TActionList;
    NewRec: TAction;
    Edit_Rec: TAction;
    Refresh_Price: TAction;
    All_Rec: TAction;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    ImageList2: TImageList;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure E_FindButtonClick(Sender: TObject);
    procedure E_FindKeyPress(Sender: TObject; var Key: Char);
    procedure All_RecExecute(Sender: TObject);
    procedure Refresh_PriceExecute(Sender: TObject);
    procedure Edit_RecExecute(Sender: TObject);
  private
    { Private declarations }
    procedure Find_Records(F_Str:String);
  public
    { Public declarations }
  end;

var
  PriseList_F: TPriseList_F;

implementation
uses main, dm_u;
{$R *.dfm}

procedure TPriseList_F.Find_Records(F_Str:String);
var
 s1,s2, s3:String;
begin
{s1:='SELECT ID_NUM, ADRESS, CITY, END_DOG, FIO_REPRES, HOUSE, INN, KORSCH_R, KPP, NUM_DOG, ';
s2:='OGRN, POSTCODE, SCHET_R, START_DOG, STREET, TELEFON, ZAYV FROM REG_TI';
 case RG1.ItemIndex of
  0: s3:=format(' where ZAYV like ''%%%s%%'' order by ZAYV',[Trim(F_Str)]);
  1: s3:=format(' where ZAYV like ''%s%%'' order by ZAYV',[Trim(F_Str)]);
 end;
DM.IBDt_Regti.Close;
DM.IBDt_Regti.SelectSQL.Clear;
DM.IBDt_Regti.SelectSQL.Add(s1+s2+s3);
try
  DM.IBDt_Regti.Open;
 except
  Application.MessageBox('Ошибка запроса','Внимание!',mb_OK+mb_iconstop);
end;}
end;



procedure TPriseList_F.DBGridEh1DblClick(Sender: TObject);
begin
Self.ModalResult:=mrOk;
end;

procedure TPriseList_F.FormShow(Sender: TObject);
begin
//E_Find.SetFocus;
{if Role = 'ADMINISTRATOR' then
  begin
    Bt_New_Price.Enabled:=True;
    Bt_Edit_Price.Enabled:=True;
  end;}
end;

procedure TPriseList_F.E_FindButtonClick(Sender: TObject);
begin
//Find_Records(E_Find.Text);
end;

procedure TPriseList_F.E_FindKeyPress(Sender: TObject; var Key: Char);
begin
//if Key = #13 then Find_Records(E_Find.Text);
end;

procedure TPriseList_F.All_RecExecute(Sender: TObject);
var
 s1,s2, s3:String;
begin
{s1:='SELECT ID_NUM, ADRESS, CITY, END_DOG, FIO_REPRES, HOUSE, INN, KORSCH_R, KPP, NUM_DOG, ';
s2:='OGRN, POSTCODE, SCHET_R, START_DOG, STREET, TELEFON, ZAYV FROM REG_TI ORDER BY ZAYV';
DM.IBDt_Regti.Close;
DM.IBDt_Regti.SelectSQL.Clear;
DM.IBDt_Regti.SelectSQL.Add(s1+s2);
try
  DM.IBDt_Regti.Open;
 except
  Application.MessageBox('Ошибка открытия','Внимание!',mb_OK+mb_iconstop);
end;}

end;

procedure TPriseList_F.Refresh_PriceExecute(Sender: TObject);
var
 Id_rec:Integer;
begin
Id_Rec:=DM.IBDt_Price.FieldValues['ID_NUM'];
DM.IBDt_Price.Close;
DM.IBDt_Price.Open;
DM.IBDt_Price.Locate('ID_NUM',Id_Rec,[]);
end;

procedure TPriseList_F.Edit_RecExecute(Sender: TObject);
begin
FormEdPrice.ShowModal;
end;

end.
