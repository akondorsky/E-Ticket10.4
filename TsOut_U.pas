unit TsOut_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, ExtCtrls, ToolWin, ComCtrls,
  StdCtrls, Buttons,myutils, Menus, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  DBAxisGridsEh, PropFilerEh, PropStorageEh, DBCtrls, Mask, DBCtrlsEh,DateUtils,
  ActnList, PlatformDefaultStyleActnCtrls, ActnMan,DB, System.Actions, EhLibVCL;

type
  TTsOut_F = class(TForm)
    Panel1: TPanel;
    Sb1: TStatusBar;
    CPG1: TCategoryPanelGroup;
    CP1: TCategoryPanel;
    Label2: TLabel;
    SetWorkInterval_Btn: TSpeedButton;
    CP2: TCategoryPanel;
    Label1: TLabel;
    E_Find: TButtonedEdit;
    Rg1: TRadioGroup;
    PopMn1: TPopupMenu;
    N1: TMenuItem;
    RegPropStorageManEh1: TRegPropStorageManEh;
    PropStorageEh1: TPropStorageEh;
    N2: TMenuItem;
    N3: TMenuItem;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    Grid_Ts: TDBGridEh;
    DBNavigator1: TDBNavigator;
    Workdate1: TDBDateTimeEditEh;
    WorkDate2: TDBDateTimeEditEh;
    Pop_DelPass: TMenuItem;
    ActionManager1: TActionManager;
    A_PassDel: TAction;
    A_PassEdit: TAction;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure FormPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SetWorkInterval_BtnClick(Sender: TObject);
    procedure E_FindRightButtonClick(Sender: TObject);
    procedure Rg1Click(Sender: TObject);
    procedure E_FindKeyPress(Sender: TObject; var Key: Char);
    procedure Grid_TsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure N3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure A_PassDelExecute(Sender: TObject);
    procedure A_PassEditExecute(Sender: TObject);
    procedure A_PassEditUpdate(Sender: TObject);
    procedure A_PassDelUpdate(Sender: TObject);
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
    procedure FindData(FStr:String);
  public
    { Public declarations }
  end;

const
s_body:String=
      ' select a.*,iif(n_pass = -1,''Ошибочный въезд'',n_pass) as n_passhuman,b.id_ticket,iif(c.cust_proc=''Отправка РФ'',''Отправка РФ'','' '')as cust_proc from ts_out a  ' +
      ' left join ts b on a.id_ts = b.id left join ticket c on b.id_ticket = c.id ' ;
 s_trailer:String= ' order by a.id desc ';

var
  TsOut_F: TTsOut_F;
  s_cond:String;

implementation

{$R *.dfm}

uses dm_u,main, Reports_U, ParkZtk_U, PassEdit_U;


procedure TTsOut_F.Grid_TsDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
if not DM.Qry_GurTsOut.FieldByName('DT_FINISHED').isNull  then
 begin
  Grid_TS.Canvas.Font.Color := clBlack; // Font color
//  Grid_TS.Canvas.Font.Style := [fsStrikeOut]; // Font color
  Grid_TS.Canvas.Brush.Color := LighterColor(clSilver,30); // Background color
  Grid_TS.Canvas.FillRect(Rect);
 end;
if Trim(DM.Qry_GurTsOut.FieldByName('LOCKED').asString) = 'Y'  then
 begin
  Grid_TS.Canvas.Font.Color := clYellow; // Font color
//  Grid_TS.Canvas.Font.Style := [fsStrikeOut]; // Font color
  Grid_TS.Canvas.Brush.Color := clRed; // Background color
  Grid_TS.Canvas.FillRect(Rect);
 end;


Grid_TS.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TTsOut_F.N3Click(Sender: TObject);
var
 rec,id_ticket:Integer;
begin
//   DM.Qry.Close;
//   DM.Qry.SQL.Clear;
//   DM.Qry.SQL.Add(' select id_ticket from ts where id=:p0 ');
//   DM.Qry.Params[0].AsInteger:=DM.Qry_GurTsOut.FieldByName('ID_TS').AsInteger;
//   DM.Qry.Open;
//   id_ticket:=DM.Qry.Fields[0].AsInteger;
   DM.Qry.Close;
   DM.Qry.SQL.Clear;
   DM.Qry.SQL.Add(' select id from ticket where n_ticket=:p0 ');
   DM.Qry.Params[0].AsInteger:=DM.Qry_GurTsOut.FieldByName('N_TICKET').AsInteger;
   DM.Qry.Open;
   id_ticket:=DM.Qry.Fields[0].AsInteger;
   DM.Qry.Close;
   rec:=DM.Qry_GurTsOut.FieldByName('ID').AsInteger;
   DM.Qry_RepPassOut.Close;
   DM.Qry_RepPassOut.Params[0].AsInteger:=rec;
   DM.Qry_RepPassOut.Open;
   DM.Qry_RepPassOutTs.Close;
   DM.Qry_RepPassOutTs.Params[0].AsInteger:=id_ticket;
   DM.Qry_RepPassOutTs.Open;
   if DM.Qry_GurTsOut.FieldByName('TYPE_PASS').AsInteger = 0 then
      if Reports_F.Rep2.LoadFromFile('cheque_pass_out_80mm.fr3') then Reports_F.Rep2.ShowReport(True);
   if DM.Qry_GurTsOut.FieldByName('TYPE_PASS').AsInteger = 1 then
      if Reports_F.Rep2.LoadFromFile('cheque_pass_out_footer_80mm.fr3') then Reports_F.Rep2.ShowReport(True);
   if DM.Qry_GurTsOut.FieldByName('TYPE_PASS').AsInteger = 2 then
      if Reports_F.Rep2.LoadFromFile('cheque_pass_out_customs.fr3') then Reports_F.Rep2.ShowReport(True);
   DM.Qry_RepPassOutTs.Close;
end;

procedure TTsOut_F.N5Click(Sender: TObject);
begin
  if DM.Qry_GurTsOut.Active then DM.IBQueryRefresh(DM.Qry_GurTsOut,DM.DB);
end;

procedure TTsOut_F.A_PassDelExecute(Sender: TObject);
var
 Mes:String;
 rec,idts:Integer;
begin
   if not((Role = 'DISPETCHER') or (Role = 'SYSADMIN'))  then Exit;

   if DM.Qry_GurTsOut.FieldByName('ID').isNull then Exit;
   rec:=DM.Qry_GurTsOut.FieldByName('ID').AsInteger;
   Mes:=' Удалить пропуск? ' ;
   if  Application.MessageBox(PChar(Mes),'Подтверждение',MB_ICONQUESTION+MB_YESNO) <> ID_YES
       then  Exit;
try
  try

    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction; //start tran
     DM.Sql.Close;
     DM.Sql.SQL.Clear;
     DM.Sql.sql.Add(' delete from ts_out where id=:p0  ');
     DM.Sql.Params[0].AsInteger:=rec;
     DM.Sql.ExecQuery;
     DM.Sql.Transaction.Commit;
     DM.Qry_GurTsOut.Close;
     DM.Qry_GurTsOut.Open;
     DM.Qry_GurTsOut.Locate('ID',rec-1,[]);
  except
    on E: EdatabaseError do
      begin
       ShowMessage(E.Message);
      end;
  end;
finally
    if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

procedure TTsOut_F.A_PassDelUpdate(Sender: TObject);
begin

  if DM.Qry_GurTsOut.FieldByName('DT_FINISHED').IsNull then
    (Sender as TAction).Enabled:=True
   else
    (Sender as TAction).Enabled:=False;

end;

procedure TTsOut_F.A_PassEditExecute(Sender: TObject);
begin
  PassEdit_F.ShowModal;
end;

procedure TTsOut_F.A_PassEditUpdate(Sender: TObject);
begin
  if DM.Qry_GurTsOut.FieldByName('DT_FINISHED').IsNull then
    (Sender as TAction).Enabled:=True
   else
    (Sender as TAction).Enabled:=False;
end;

procedure TTsOut_F.E_FindKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13  then FindData(E_Find.Text);
 if not (Key in ['0'..'9','A'..'Z','a'..'z',#8]) then Key :=#0;

end;

procedure TTsOut_F.E_FindRightButtonClick(Sender: TObject);
begin
  FindData(E_Find.Text);
end;

procedure TTsOut_F.FindData(FStr: String);
begin
 case Rg1.ItemIndex of
   0: s_cond:=format( ' where a.n_ticket = %s ',[FStr]);
   1: s_cond:=format( ' where a.n_ts containing %s%s%s ',[#39,FStr,#39]);
   2: s_cond:=format( ' where a.n_trailer containing %s%s%s ',[#39,FStr,#39]);
 end;
  DM.Qry_GurTsOut.Close;
  DM.Qry_GurTsOut.SQL.Clear;
  DM.Qry_GurTsOut.SQL.Add( s_body+s_cond+s_trailer);
  DM.Qry_GurTsOut.Open;
end;

procedure TTsOut_F.FormPaint(Sender: TObject);
begin
 CP2.Height:=CPG1.Height-Cp1.Height;
end;

procedure TTsOut_F.FormShow(Sender: TObject);
begin
  Workdate1.Value:=VarFromDateTime(Date);
  WorkDate2.Value:=VarFromDateTime(Tomorrow);
  Rg1.ItemIndex:=0;
  E_Find.NumbersOnly:=True;
  SetWorkInterval_BtnClick(SetWorkInterval_Btn);
end;

procedure TTsOut_F.Rg1Click(Sender: TObject);
begin
  case RG1.ItemIndex of
    0: E_Find.NumbersOnly:=True;
    1,2: E_Find.NumbersOnly:=False;
  end;
end;

procedure TTsOut_F.SetWorkInterval_BtnClick(Sender: TObject);
begin
  s_cond:= ' where a.dt_out  between :p0 and :p1 ';
  DM.Qry_GurTsOut.Close;
  DM.Qry_GurTsOut.SQL.Clear;
  DM.Qry_GurTsOut.SQL.Add( s_body+s_cond+s_trailer);
  DM.Qry_GurTsOut.Params[0].Value:=WorkDate1.Value;
  DM.Qry_GurTsOut.Params[1].Value:=WorkDate2.Value;
  DM.Qry_GurTsOut.Open;
end;

procedure TTsOut_F.SpeedButton1Click(Sender: TObject);
begin
  FormParkZTK.ShowModal;
end;

end.
