unit PZTKLog_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, ExtCtrls, ToolWin, ComCtrls,
  StdCtrls, Buttons, ActnList, PlatformDefaultStyleActnCtrls, ActnMan, Menus,
  PropFilerEh, PropStorageEh, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  DBAxisGridsEh;

type
  TPZTKLog_F = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    StatusBar1: TStatusBar;
    CPG1: TCategoryPanelGroup;
    CP1: TCategoryPanel;
    Label2: TLabel;
    SetWorkInterval_Btn: TSpeedButton;
    WorkDate2: TDateTimePicker;
    WorkDate1: TDateTimePicker;
    CP2: TCategoryPanel;
    Label1: TLabel;
    E_Find: TButtonedEdit;
    Rg1: TRadioGroup;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Grid_Ttn: TDBGridEh;
    Grid_OutDocs: TDBGridEh;
    ActionManager1: TActionManager;
    A_TtnAdd: TAction;
    PopTtn: TPopupMenu;
    N1: TMenuItem;
    A_TtnEdit: TAction;
    N2: TMenuItem;
    A_TtnDel: TAction;
    N3: TMenuItem;
    PopLog: TPopupMenu;
    A_Pop: TAction;
    N4: TMenuItem;
    RegPropStorageManEh1: TRegPropStorageManEh;
    PropStorageEh1: TPropStorageEh;
    A_OutDocAdd: TAction;
    PopDocs: TPopupMenu;
    N5: TMenuItem;
    A_OutDocEdit: TAction;
    N6: TMenuItem;
    A_OutDocDel: TAction;
    N7: TMenuItem;
    A_PrintLog: TAction;
    N8: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SetWorkInterval_BtnClick(Sender: TObject);
    procedure E_FindRightButtonClick(Sender: TObject);
    procedure Rg1Click(Sender: TObject);
    procedure E_FindKeyPress(Sender: TObject; var Key: Char);
    procedure A_TtnAddExecute(Sender: TObject);
    procedure A_TtnAddUpdate(Sender: TObject);
    procedure A_TtnEditExecute(Sender: TObject);
    procedure A_TtnEditUpdate(Sender: TObject);
    procedure A_TtnDelExecute(Sender: TObject);
    procedure A_TtnDelUpdate(Sender: TObject);
    procedure A_PopExecute(Sender: TObject);
    procedure A_PopUpdate(Sender: TObject);
    procedure A_OutDocAddExecute(Sender: TObject);
    procedure A_OutDocAddUpdate(Sender: TObject);
    procedure A_OutDocEditExecute(Sender: TObject);
    procedure A_OutDocEditUpdate(Sender: TObject);
    procedure A_OutDocDelUpdate(Sender: TObject);
    procedure A_OutDocDelExecute(Sender: TObject);
    procedure A_PrintLogUpdate(Sender: TObject);
    procedure A_PrintLogExecute(Sender: TObject);
  private
    { Private declarations }
    procedure FindData(FStr:String);
  public
    { Public declarations }
  end;

const
 s_trailer:String= ' order by a.id desc ';

var
  PZTKLog_F: TPZTKLog_F;
  s_cond:String;
  s_body:String;

implementation

{$R *.dfm}

uses dm_u,main, AddTtn_U, EditTtn_U, AddPop_U, Outdoc_U, OutdocEdit_U,
  Reports_U;


procedure TPZTKLog_F.A_OutDocAddExecute(Sender: TObject);
begin
 OutDoc_F.ShowModal;
end;

procedure TPZTKLog_F.A_OutDocAddUpdate(Sender: TObject);
begin
 if DM.Qry_Pztk.FieldByName('ID').isNull then
   (Sender as TAction).Enabled:=False
  else
   (Sender as TAction).Enabled:=True;
end;

procedure TPZTKLog_F.A_OutDocDelExecute(Sender: TObject);
 var
  rec:Integer;

begin
try
 try
  if Application.MessageBox('Документ будет удален.Продолжить?','Подтверждение',MB_ICONQUESTION+MB_YESNO) <> ID_YES then Exit;
  rec:=Dm.Qry_PztkOutDocs.FieldByName('ID').AsInteger;
  DM.SQL.Close;
  Dm.SQL.SQL.Clear;
  DM.SQL.SQL.Add('delete from out_docs where id=:p0 ');
  if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction;
  DM.SQL.params[0].AsInteger:=rec;
  DM.SQL.ExecQuery;
  DM.SQL.Transaction.Commit;
  DM.Qry_PztkOutDocs.Close; ;
  DM.Qry_PztkOutDocs.Open;
  DM.Qry_PztkOutDocs.Locate('ID',rec,[]);
 except
   on E:Exception do
    begin
       //DM.SQL.Transaction.Rollback;
       MessageBox(Application.Handle, PChar(E.Message + #13#10 + Dm.SQL.SQL.Text),
         PChar(Application.Name), MB_ICONERROR);
    end;
 end;
finally
  if DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.Rollback;
end;
end;

procedure TPZTKLog_F.A_OutDocDelUpdate(Sender: TObject);
begin
  if DM.Qry_PztkOutDocs.FieldByName('ID').isNull then
   (Sender as TAction).Enabled:=False
  else
   (Sender as TAction).Enabled:=True;
end;

procedure TPZTKLog_F.A_OutDocEditExecute(Sender: TObject);
begin
 OutDocEdit_F.ShowModal;
end;

procedure TPZTKLog_F.A_OutDocEditUpdate(Sender: TObject);
begin
  if DM.Qry_PztkOutDocs.FieldByName('ID').isNull then
   (Sender as TAction).Enabled:=False
  else
   (Sender as TAction).Enabled:=True;
end;

procedure TPZTKLog_F.A_PopExecute(Sender: TObject);
begin
 AddPop_F.ShowModal;
end;

procedure TPZTKLog_F.A_PopUpdate(Sender: TObject);
begin
 if DM.Qry_Pztk.FieldByName('ID').isNull then
   (Sender as TAction).Enabled:=False
  else
   (Sender as TAction).Enabled:=True;
end;

procedure TPZTKLog_F.A_PrintLogExecute(Sender: TObject);
begin
 Reports_F.Rep2.LoadFromFile('pztk_log.fr3');
 Reports_F.Rep2.PrepareReport(True);
 Reports_F.Rep2.ShowPreparedReport;
end;

procedure TPZTKLog_F.A_PrintLogUpdate(Sender: TObject);
begin
 if DM.Qry_Pztk.FieldByName('ID').isNull then
   (Sender as TAction).Enabled:=False
  else
   (Sender as TAction).Enabled:=True;
end;

procedure TPZTKLog_F.A_TtnAddExecute(Sender: TObject);
begin
 AddTtn_F.ShowModal;
end;

procedure TPZTKLog_F.A_TtnAddUpdate(Sender: TObject);
begin
 if DM.Qry_Pztk.FieldByName('ID').isNull then
   (Sender as TAction).Enabled:=False
  else
   (Sender as TAction).Enabled:=True;
end;

procedure TPZTKLog_F.A_TtnDelExecute(Sender: TObject);
 var
  rec:Integer;

begin
try
 try
  if Application.MessageBox('Документ будет удален.Продолжить?','Подтверждение',MB_ICONQUESTION+MB_YESNO) <> ID_YES then Exit;
  rec:=Dm.Qry_TtnIn.FieldByName('ID').AsInteger;
  DM.SQL.Close;
  Dm.SQL.SQL.Clear;
  DM.SQL.SQL.Add('delete from ttn_in where id=:p0 ');
  if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction;
  DM.SQL.params[0].AsInteger:=rec;
  DM.SQL.ExecQuery;
  DM.SQL.Transaction.Commit;
  DM.Qry_TtnIn.Close; ;
  DM.Qry_TtnIn.Open;
  DM.Qry_TtnIn.Locate('ID',rec,[]);
 except
   on E:Exception do
    begin
       //DM.SQL.Transaction.Rollback;
       MessageBox(Application.Handle, PChar(E.Message + #13#10 + Dm.SQL.SQL.Text),
         PChar(Application.Name), MB_ICONERROR);
    end;
 end;
finally
  if DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.Rollback;
end;
end;

procedure TPZTKLog_F.A_TtnDelUpdate(Sender: TObject);
begin
 if DM.Qry_TtnIn.FieldByName('ID').isNull then
   (Sender as TAction).Enabled:=False
  else
   (Sender as TAction).Enabled:=True;
end;

procedure TPZTKLog_F.A_TtnEditExecute(Sender: TObject);
begin
 EditTtn_F.ShowModal;
end;

procedure TPZTKLog_F.A_TtnEditUpdate(Sender: TObject);
begin
 if DM.Qry_TtnIn.FieldByName('ID').isNull then
   (Sender as TAction).Enabled:=False
  else
   (Sender as TAction).Enabled:=True;
end;

procedure TPZTKLog_F.E_FindKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13  then FindData(E_Find.Text);
 if not (Key in ['0'..'9','A'..'Z',#8]) then Key :=#0;


end;

procedure TPZTKLog_F.E_FindRightButtonClick(Sender: TObject);
begin
  FindData(E_Find.Text);
end;

procedure TPZTKLog_F.FindData(FStr: String);
begin
 case Rg1.ItemIndex of
   0: s_cond:=format( ' and e.n_ticket = %s ',[FStr]);
   1: s_cond:=format( ' and a.n_ts containing %s%s%s ',[#39,FStr,#39]);
 end;
  DM.Qry_Pztk.Close;
  DM.Qry_Pztk.SQL.Clear;
  DM.Qry_Pztk.SQL.Add( s_body+s_cond+s_trailer);
  DM.Qry_Pztk.Open;
end;

procedure TPZTKLog_F.FormCreate(Sender: TObject);
begin
s_body:=format(
      ' select a.*, coalesce(b.n_trailer,%sПрицеп отсутствует%s) as n_trailer,d.name , e.n_ticket, e.cust_proc,e.dt_is, ',[#39,#39]) +
      ' e.username,e.pop, e.cust_user, f.owner , g.dt_finished from ts a left join trailers b on a.id = b.id_truck  '+
      ' left join cbx_target d on a.target=d.id left join ticket e on a.id_ticket = e.id left join carrier f on e.id_carrier=f.id '+
      ' left join ts_out g on a.id = g.id_ts where (a.target =1) ';
end;

procedure TPZTKLog_F.FormPaint(Sender: TObject);
begin
 CP2.Height:=CPG1.Height-Cp1.Height;
end;

procedure TPZTKLog_F.FormShow(Sender: TObject);
begin
  Workdate1.Date:=date;
  WorkDate2.Date:=Date;
  Rg1.ItemIndex:=0;
  E_Find.NumbersOnly:=True;
  SetWorkInterval_BtnClick(SetWorkInterval_Btn);
end;

procedure TPZTKLog_F.Rg1Click(Sender: TObject);
begin
  case RG1.ItemIndex of
    0: E_Find.NumbersOnly:=True;
    1: E_Find.NumbersOnly:=False;
  end;
end;

procedure TPZTKLog_F.SetWorkInterval_BtnClick(Sender: TObject);
begin
  s_cond:= ' and (cast(e.dt_is as date) between :p0 and :p1) ';
  DM.Qry_Pztk.Close;
  DM.Qry_Pztk.SQL.Clear;
  DM.Qry_Pztk.SQL.Add( s_body+s_cond+s_trailer);
  DM.Qry_Pztk.Params[0].AsDate:=WorkDate1.Date;
  DM.Qry_Pztk.Params[1].AsDate:=WorkDate2.Date;
  DM.Qry_Pztk.Open;
end;

end.
