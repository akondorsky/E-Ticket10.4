unit TsIn_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, ExtCtrls, ToolWin, ComCtrls,
  StdCtrls, Buttons, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh,
  Mask, DBCtrlsEh,dateUtils, PropFilerEh, PropStorageEh, DBCtrls;

type
  TTsIn_F = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    StatusBar1: TStatusBar;
    CPG1: TCategoryPanelGroup;
    CP1: TCategoryPanel;
    Label2: TLabel;
    SetWorkInterval_Btn: TSpeedButton;
    CP2: TCategoryPanel;
    Label1: TLabel;
    E_Find: TButtonedEdit;
    Rg1: TRadioGroup;
    WorkDate1: TDBDateTimeEditEh;
    WorkDate2: TDBDateTimeEditEh;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    Panel2: TPanel;
    Grid_TsIn: TDBGridEh;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SetWorkInterval_BtnClick(Sender: TObject);
    procedure E_FindRightButtonClick(Sender: TObject);
    procedure Rg1Click(Sender: TObject);
    procedure E_FindKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure FindData(FStr:String);
  public
    { Public declarations }
  end;

const
 s_trailer:String= ' order by a.id desc ';

var
  TsIn_F: TTsIn_F;
  s_cond:String;
  s_body:String;

implementation

{$R *.dfm}

uses dm_u,main;


procedure TTsIn_F.E_FindKeyPress(Sender: TObject; var Key: Char);
begin

 if Key = #13  then FindData(E_Find.Text);
 if not (Key in ['0'..'9','A'..'Z','a'..'z',#8]) then Key :=#0;

 
end;

procedure TTsIn_F.E_FindRightButtonClick(Sender: TObject);
begin
  FindData(E_Find.Text);
end;

procedure TTsIn_F.FindData(FStr: String);
begin
 case Rg1.ItemIndex of
   0: s_cond:=format( ' where e.n_ticket = %s ',[FStr]);
   1: s_cond:=format( ' where n_ts containing %s%s%s ',[#39,FStr,#39]);
   2: s_cond:=format( ' where n_trailer containing %s%s%s ',[#39,FStr,#39]);
 end;
  DM.Qry_GurTsIn.Close;
  DM.Qry_GurTsIn.SQL.Clear;
  DM.Qry_GurTsIn.SQL.Add( s_body+s_cond+s_trailer);
  DM.Qry_GurTsIn.Open;
end;

procedure TTsIn_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caMinimize;
end;

procedure TTsIn_F.FormCreate(Sender: TObject);
begin
s_body:=format(
      ' select a.*,coalesce(b.n_trailer,%sПрицеп отсутствует%s) as n_trailer, (a.country||%s%s%s||g.name) as country_human, c.name, d.name , e.n_ticket, e.cust_proc,e.dt_is, e.username,f.num_park ',[#39,#39,#39,' ',#39]) +
      ' from ts a left join trailers b on a.id = b.id_truck left join vid_ts c on a.kod_ts = c.id_ts left join cbx_target d on a.target=d.id '+
      ' left join ticket e on a.id_ticket = e.id left join park_ztk f on a.id=f.id_ts left join country_codes g on a.country = g.alpha2';
end;

procedure TTsIn_F.FormPaint(Sender: TObject);
begin
 CP2.Height:=CPG1.Height-Cp1.Height;
end;

procedure TTsIn_F.FormShow(Sender: TObject);
begin
  Workdate1.Value:=VarFromDateTime(Date);
  WorkDate2.Value:=VarFromDateTime(Tomorrow);
  Rg1.ItemIndex:=0;
  E_Find.NumbersOnly:=True;
  SetWorkInterval_BtnClick(SetWorkInterval_Btn);
end;

procedure TTsIn_F.Rg1Click(Sender: TObject);
begin
  case RG1.ItemIndex of
    0: E_Find.NumbersOnly:=True;
    1,2: E_Find.NumbersOnly:=False;

  end;
end;

procedure TTsIn_F.SetWorkInterval_BtnClick(Sender: TObject);
begin
//  s_cond:= ' where cast(e.dt_is as date) between :p0 and :p1 ';
  s_cond:= ' where e.dt_is between :p0 and :p1 ';
  DM.Qry_GurTsIn.Close;
  DM.Qry_GurTsIn.SQL.Clear;
  DM.Qry_GurTsIn.SQL.Add( s_body+s_cond+s_trailer);
  DM.Qry_GurTsIn.Params[0].Value:=WorkDate1.Value;
  DM.Qry_GurTsIn.Params[1].Value:=WorkDate2.Value;
  DM.Qry_GurTsIn.Open;
end;

end.
