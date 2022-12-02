unit Do1_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DateUtils, DBGridEhGrouping, ExtCtrls, GridsEh, DBGridEh, StdCtrls, CheckLst,
  ComCtrls, Buttons, ToolWin, Menus, ActnList, PlatformDefaultStyleActnCtrls,
  ActnMan, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh, ImgList,
  PropFilerEh, PropStorageEh,Db,IBX.IbQuery, System.ImageList, System.Actions,
  EhLibVCL;

type
  TDo1_F = class(TForm)
    PageControl1: TPageControl;
    Tab_Do1: TTabSheet;
    Tab_Do2: TTabSheet;
    Panel_DO: TPanel;
    ToolBar7: TToolBar;
    Panel14: TPanel;
    GroupBox2: TGroupBox;
    CbDo: TComboBox;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    BtnSetDate: TSpeedButton;
    E_DoDt1: TDateTimePicker;
    E_DoDt2: TDateTimePicker;
    Panel15: TPanel;
    Panel17: TPanel;
    GridDo1: TDBGridEh;
    Panel16: TPanel;
    Splitter2: TSplitter;
    GridDoTrand: TDBGridEh;
    DBGridEh14: TDBGridEh;
    GridDo2: TDBGridEh;
    GridDoTovar: TDBGridEh;
    Panel1: TPanel;
    PopMn_DoHead: TPopupMenu;
    N11: TMenuItem;
    Grid_Do2Sheet: TDBGridEh;
    PopMn_Do2Sheet: TPopupMenu;
    N21: TMenuItem;
    Tab_ActWo_Do2: TTabSheet;
    ToolBar1: TToolBar;
    TB_Refr: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ActionManager1: TActionManager;
    A_Do2Add: TAction;
    TB_refdo12: TToolButton;
    Tab_TpWo_Do1: TTabSheet;
    ToolBar2: TToolBar;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    Tb_RefTp: TToolButton;
    Grid_TpWoDo1: TDBGridEh;
    A_Do1Add: TAction;
    E_Find_Do: TButtonedEdit;
    RxLabel6: TLabel;
    Splitter1: TSplitter;
    Splitter3: TSplitter;
    ImL_16: TImageList;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    Panel2: TPanel;
    Label1: TLabel;
    E_FindDo1: TButtonedEdit;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    Grid_GurWhOut: TDBGridEh;
    Panel3: TPanel;
    Label3: TLabel;
    E_FindDo2: TButtonedEdit;
    ToolBar3: TToolBar;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    Tab_Arc: TTabSheet;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    CbDo_Arc: TComboBox;
    E_FindArc: TButtonedEdit;
    Grid_DoArc: TDBGridEh;
    A_ToArc: TAction;
    N1: TMenuItem;
    N2: TMenuItem;
    ToolBar4: TToolBar;
    ToolButton7: TToolButton;
    PopMn_DoArc: TPopupMenu;
    A_FromArc: TAction;
    N3: TMenuItem;
    ToolButton8: TToolButton;
    ToolButton12: TToolButton;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    Pop_Admin: TMenuItem;
    Pop_CopyDo1: TMenuItem;
    Pop_EditHeaderDo1: TMenuItem;
    Pop_DeleteDo1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GridDo1DblClick(Sender: TObject);
    procedure GridDo1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure N11Click(Sender: TObject);
    procedure Grid_Do2SheetDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure N21Click(Sender: TObject);
    procedure TB_RefrClick(Sender: TObject);
    procedure A_Do2AddExecute(Sender: TObject);
    procedure A_Do2AddUpdate(Sender: TObject);
    procedure TB_refdo12Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Tb_RefTpClick(Sender: TObject);
    procedure A_Do1AddExecute(Sender: TObject);
    procedure A_Do1AddUpdate(Sender: TObject);
    procedure E_Find_DoKeyPress(Sender: TObject; var Key: Char);
    procedure E_Find_DoRightButtonClick(Sender: TObject);
    procedure BtnSetDateClick(Sender: TObject);
    procedure E_FindDo1RightButtonClick(Sender: TObject);
    procedure E_FindDo1KeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton6Click(Sender: TObject);
    procedure FindDo2(ADo2Num:Integer);
    procedure AllRec_Do2;
    procedure E_FindDo2KeyPress(Sender: TObject; var Key: Char);
    procedure E_FindDo2RightButtonClick(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure GridDo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure A_ToArcExecute(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure Grid_DoArcDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure A_FromArcExecute(Sender: TObject);
    procedure E_FindArcKeyPress(Sender: TObject; var Key: Char);
    procedure E_FindArcRightButtonClick(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure Grid_DoArcDblClick(Sender: TObject);
    procedure Grid_Do2SheetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N6Click(Sender: TObject);
    procedure Pop_CopyDo1Click(Sender: TObject);
    procedure Pop_EditHeaderDo1Click(Sender: TObject);
    procedure Pop_DeleteDo1Click(Sender: TObject);
    procedure Grid_TpWoDo1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);

  private
    { Private declarations }
    procedure FindDo1(ADo1num:String);
    procedure AllRec_ActWithoutDo2;
    procedure GoToArchiev(Rec:Integer);
    procedure AllRecDo1_Arc;
    procedure CopyDo1(SourceId:Integer);

  public
    { Public declarations }
    TipDo:Integer;
    DoEdit_Sender:Integer;
    Srok: Variant;
    procedure Find_Do(F_Str:String;Cond1:Integer);
    procedure FindDo_Arc(F_Str:String;Cond1:Integer);
    function  GetSrok(Iddo1:Integer):Variant;
  end;

var
  Do1_F: TDo1_F;

implementation

uses DM_U, EditDo_U, ExportDo_U,main, Warehouse_U,myutils,reports_u,setting_u,
  DoHeaderEdit_U;

{$R *.dfm}

procedure TDo1_F.FindDo1(ADo1num: String);
var
 sel_body, sel_cond,sel_trailer:String;
begin
sel_body:=  ' select a.*, b.num_tp,c.g073,cast(c.g072 as date ) as dt_do1,c.id as id_do1, '+
            ' d.do2_statn,d.g072, f.dt from wh_act_out a left join v_num_docs b on a.id_tp=b.id_tp '+
            ' left join do_head_vw c  on a.id_tp=c.id_tp left join do_outhd d on c.id = d.id_do1 left join WH_ACT_IN f on a.id_tp = f.id_tp '+
            ' where a.id_do2 is null and a.cbxtocbx <> 1 and (not a.dt_print is null )' ;
//sel_trailer:=' order by b.num_tp,a.npp ';
sel_trailer:=' order by c.g073 ';
sel_cond := format( ' and c.g073 containing ''%s'' ',[ADo1num]);

DM.Qry_ActWithoutDo2.Close;
DM.Qry_ActWithoutDo2.SQL.Clear;
DM.Qry_ActWithoutDo2.SQL.Add( sel_body+sel_cond+sel_trailer);
DM.Qry_ActWithoutDo2.Open;
end;

procedure TDo1_F.FindDo2(ADo2Num: Integer);
var
 sel_body, sel_cond:String;
begin
sel_body:=
          'select a.*, cast(a.g072 as date), '+
          'b.g073,cast(b.g072 as date),b.r_name,c.id as id_act_out '+
          ' from do_outhd a '+
          'left join do_head_vw b on a.id_do1=b.id '+
          'left join wh_act_out c on a.id_act_out = c.id   ';
sel_cond := 'where do2_statn = :p0 ';
DM.Qry_Do2Sheet.Close;
DM.Qry_Do2Sheet.SQL.Clear;
DM.Qry_Do2Sheet.SQL.Add( sel_body+sel_cond);
DM.Qry_Do2Sheet.Params[0].AsInteger:= ADo2Num;
DM.Qry_Do2Sheet.Open;
end;

procedure TDo1_F.FindDo_Arc(F_str: String;Cond1:Integer);
const
 O:String='OR';
 A:String='AND';
 sel_order:String=' order by a.g072 desc, cast((a.g073) as numeric) desc ';
 Delim:Char=';';
var
 List:TStringList;
 S,sp:string;
 s1,s2,s4,s5,sel_arc,sel,sel_body,sel_step :String;
 i,j:Integer;
begin
  s1:=' select a.*, b.num_tp, c.svh_name,d.ntrans from do_head_vw_arc a left join v_num_docs b on a.id_tp = b.id_tp ';
  s1:=s1+' left join svh c on a.id_svh=c.id left join do_trans d on a.id=d.id_do1 ';
  case Cond1 of
    0: s2:=format(' where a.g073 like ''%%%s%%'' ',[Trim(F_Str)]);
    1: s2:=format(' where a.r_name like ''%%%s%%'' ',[Trim(F_Str)]);
    2: s2:=format(' where b.num_tp like ''%s%s'' ' ,[Trim(F_Str),'%']);
  end;

  sel_body := s1+s2+sel_order;

//end check stepctrl

DM.Qry_DoArc.Close;
DM.Qry_DoArc.SQL.Clear;
DM.Qry_DoArc.SQL.Add(sel_body);
DM.Qry_DoArc.Open;
end;

procedure TDo1_F.Find_Do(F_Str:String;Cond1:Integer);
const
 O:String='OR';
 A:String='AND';
 sel_order:String=' order by a.g072 desc, cast((a.g073) as numeric) desc ';
 Delim:Char=';';
var
 List:TStringList;
 S,sp:string;
 s1,s2,s4,s5,sel_arc,sel,sel_body,sel_step :String;
 i,j:Integer;
begin
  s1:=' select a.*, b.num_tp, c.svh_name,d.ntrans from do_head_vw a left join v_num_docs b on a.id_tp = b.id_tp ';
  s1:=s1+' left join svh c on a.id_svh=c.id left join do_trans d on a.id=d.id_do1  ';
  case Cond1 of
    0: s2:=format(' where a.g073 like ''%%%s%%'' ',[Trim(F_Str)]);
    1: s2:=format(' where a.r_name like ''%%%s%%'' ',[Trim(F_Str)]);
    2: s2:=format(' where b.num_tp like ''%s%s'' ' ,[Trim(F_Str),'%']);
  end;

  sel_body := s1+s2+sel_order;

//end check stepctrl

DM.Qry_Dohead.Close;
DM.Qry_Dohead.SQL.Clear;
DM.Qry_Dohead.SQL.Add(sel_body);
DM.Qry_Dohead.Open;
end;


procedure TDo1_F.Grid_Do2SheetDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
if  Grid_Do2Sheet.SelectedRows.CurrentRowSelected then
 begin
  Grid_Do2Sheet.Canvas.Font.Color := clYellow; // Font color
  Grid_Do2Sheet.Canvas.Brush.Color := clBlue; // Background color
  Grid_Do2Sheet.Canvas.FillRect(Rect);
 end;
  Grid_Do2Sheet.DefaultDrawColumnCell(Rect, Datacol,Column, State);
end;

procedure TDo1_F.Grid_Do2SheetKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
Case Key of
 VK_UP, VK_PRIOR, VK_LEFT : dm.Qry_DoHead.Prior;
 VK_DOWN, VK_NEXT, VK_RIGHT : dm.Qry_DoHead.Next;
 VK_HOME : dm.Qry_DoHead.First;
 VK_END : dm.Qry_Do2Sheet.Last;

 32,45: //пробел
 begin
 if ssShift in Shift then
   begin
      dm.Qry_Do2Sheet.DisableControls;
      dm.Qry_Do2Sheet.First;
      while not dm.Qry_Do2Sheet.Eof do
        begin
            Grid_Do2Sheet.SelectedRows.CurrentRowSelected:=False;
            dm.Qry_Do2Sheet.Next;
        end;
      dm.Qry_Do2Sheet.EnableControls;
   end
 else
   if ssCtrl in Shift then
      begin
          dm.Qry_Do2Sheet.DisableControls;
          dm.Qry_Do2Sheet.First;
          while not dm.Qry_Do2Sheet.Eof do
             begin
                 Grid_Do2Sheet.SelectedRows.CurrentRowSelected:=True;
                 dm.Qry_Do2Sheet.Next;
             end;
         dm.Qry_Do2Sheet.EnableControls;
     end
    else if Shift=[] then
       begin
           if Grid_Do2Sheet.SelectedRows.CurrentRowSelected then
               begin
                 Grid_Do2Sheet.SelectedRows.CurrentRowSelected:=false;
                 dm.Qry_Do2Sheet.Next;
               end
             else if not Grid_Do2Sheet.SelectedRows.CurrentRowSelected then
                     begin
                       Grid_Do2Sheet.SelectedRows.CurrentRowSelected:=true;
                       dm.Qry_Do2Sheet.Next;
                     end;

           end;
    end;
end;
IF Key<>VK_TAB then Key:=0;

end;

procedure TDo1_F.AllRecDo1_Arc;
const
 O:String='OR';
 A:String='AND';
 sel_order:String=' order by a.g072 desc, cast((a.g073) as numeric) desc ';
 Delim:Char=';';
var
 List:TStringList;
 S,sp:string;
 s1,s2,s4,s5,sel_arc,sel,sel_body,sel_step :String;
 i,j:Integer;
begin
  s1:=' select a.*, b.num_tp, c.svh_name,d.ntrans from do_head_vw_arc a left join v_num_docs b on a.id_tp = b.id_tp ';
  s1:=s1+' left join svh c on a.id_svh=c.id left join do_trans d on a.id=d.id_do1 ';
  sel_body := s1+s2+sel_order;

//end check stepctrl

DM.Qry_DoArc.Close;
DM.Qry_DoArc.SQL.Clear;
DM.Qry_DoArc.SQL.Add(sel_body);
DM.Qry_DoArc.Open;
end;

procedure TDo1_F.AllRec_ActWithoutDo2;
var
 sel_body, sel_trailer:String;
begin
sel_body:=  ' select a.*, b.num_tp,c.g073,cast(c.g072 as date ) as dt_do1,c.id as id_do1, '+
            ' d.do2_statn,d.g072 from wh_act_out a left join v_num_docs b on a.id_tp=b.id_tp '+
            ' left join do_head_vw c  on a.id_tp=c.id_tp left join do_outhd d on c.id = d.id_do1 '+
            ' where a.id_do2 is null and a.cbxtocbx <> 1 and (not a.dt_print is null ) ';
//sel_trailer:=' order by b.num_tp,a.npp ';
sel_trailer:=' order by c.g073 ';
DM.Qry_ActWithoutDo2.Close;
DM.Qry_ActWithoutDo2.SQL.Clear;
DM.Qry_ActWithoutDo2.SQL.Add( sel_body+sel_trailer);
DM.Qry_ActWithoutDo2.Open;
end;

procedure TDo1_F.AllRec_Do2;
var
 sel_body, sel_trailer:String;
begin
sel_body:=
          'select a.*, cast(a.g072 as date), '+
          'b.g073,cast(b.g072 as date),b.r_name,c.id as id_act_out '+
          ' from do_outhd a '+
          'left join do_head_vw b on a.id_do1=b.id '+
          'left join wh_act_out c on a.id_act_out = c.id ';
sel_trailer := 'order by a.id desc ';
DM.Qry_Do2Sheet.Close;
DM.Qry_Do2Sheet.SQL.Clear;
DM.Qry_Do2Sheet.SQL.Add( sel_body+sel_trailer);
DM.Qry_Do2Sheet.Open;
end;

procedure TDo1_F.A_Do1AddExecute(Sender: TObject);
var
 Mes:String;
 id,i:Integer;
 qry:TIBQuery;
begin
  id:=Grid_TpWoDo1.DataSource.DataSet.FieldByName('id_tp').AsInteger;
  qry := TIBQuery.Create(Self);
  try
    qry.Database:=DM.DB;
    qry.SQL.Add('select count (w.id) from do_head w ');
    qry.SQL.Add(' where w.id_tp = :p0 ');
    qry.Params[0].AsInteger := id;
    qry.Open;
    i:= Qry.Fields[0].AsInteger;
    if ( i > 0) then
      begin
         if Application.MessageBox('Для текущей ТП ДО1 уже создано. Вы действительно хотите создать еще одно ДО1?',
                      'Внимание',MB_ICONWARNING+MB_YESNO) = ID_NO then Exit;
      end;
  finally
    qry.Free;
  end;

 Mes:=format('Создать ДО1 по ТП № %s',[Grid_TpWoDo1.DataSource.DataSet.FieldByName('NUM_PART').AsString]);
 if Application.MessageBox(PChar(Mes),'Подтверждение',MB_ICONQUESTION+MB_YESNO) <> ID_YES then Exit;
 Warehouse_F.New_Do_FromParty(
               Grid_TpWoDo1.DataSource.DataSet.FieldByName('ID_TP').AsInteger,
               Grid_TpWoDo1.DataSource.DataSet.FieldByName('ID_PART').AsInteger,
               Grid_TpWoDo1.DataSource.DataSet.FieldByName('ID_TICKET').AsInteger);
 DM.Refresh_TPWithoutDo1;
 PageControl1.ActivePageIndex:=0;
end;

procedure TDo1_F.A_Do1AddUpdate(Sender: TObject);
begin
 if DM.Qry_TPWithoutDo1.Active then
   begin
       if (DM.Qry_TPWithoutDo1.FieldByName('ID_ACT').IsNull) then
          (Sender as TAction).Enabled:=False
         else
          (Sender as TAction).Enabled:=True;
   end;
end;

procedure TDo1_F.A_Do2AddExecute(Sender: TObject);
var
 Mes:String;
 ndo1:String;
begin
 Mes:=format('Создать ДО2 по ДО1 № %s',[Grid_GurWhOut.DataSource.DataSet.FieldByName('G073').AsString]);
 if Application.MessageBox(PChar(Mes),'Подтверждение',MB_ICONQUESTION+MB_YESNO) <> ID_YES then Exit;
 ndo1:=DM.Qry_ActWithoutDo2.FieldByName('G073').AsString;
 if EditDo_F.Create_do2 then
    begin
       DM.Qry_DoOutHd.Close;
       DM.Qry_DoOutHd.Open;
       DM.Qry_DoOutHd.Last;
       TB_RefrClick(TB_Refr);
       TB_refdo12Click(TB_refdo12);
       Do1_F.Find_Do(ndo1,0);
       Do1_F.PageControl1.ActivePageIndex:=0;
       Application.MessageBox('Выполнено','Подтверждение',mb_iconinformation+mb_ok);
   end;
end;

procedure TDo1_F.A_Do2AddUpdate(Sender: TObject);
begin
 if DM.Qry_ActWithoutDo2.Active then
   begin
       if (DM.Qry_ActWithoutDo2.FieldByName('ID').IsNull) or
          (DM.Qry_ActWithoutDo2.FieldByName('ID_DO1').IsNull) then
          (Sender as TAction).Enabled:=False
         else
          (Sender as TAction).Enabled:=True;
   end;
end;

procedure TDo1_F.A_FromArcExecute(Sender: TObject);
var
 rec:Integer;
begin
if Application.MessageBox('Извлечь текущий ДО-1 из архива','Подтверждение',MB_ICONQUESTION+MB_YESNO) <> ID_YES then Exit;
rec:=Dm.Qry_DoArc.FieldByName('ID').AsInteger;
try
  try
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    Dm.SQL.Close;
    DM.SQL.SQL.Clear;
    DM.SQL.SQL.Add('update do_head set ARC_FLAG=:p0 where id=:p1 ');
    DM.SQL.Params[0].AsInteger:=0;
    DM.SQL.Params[1].AsInteger:=rec;
    DM.SQL.ExecQuery;
    DM.Sql.Transaction.Commit;
   except
     on E:Exception do
      begin
         DM.Sql.Transaction.Rollback;
         MessageBox(Application.Handle, PChar(E.Message + #13#10 + Dm.Sql.SQL.Text),
           PChar(Application.Name), MB_ICONERROR);
//         Exit;
      end;
   end;
 finally
     if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
     DM.Refresh_Do1;
     DM.Refresh_DoArc;
 end;
end;

procedure TDo1_F.A_ToArcExecute(Sender: TObject);
  var
   x,i:integer;
   Tempbookmark:TBookMark;
begin
try
  i:=0;
  GridDo1.Datasource.Dataset.DisableControls;
  try
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    TempBookmark := GridDo1.Datasource.Dataset.GetBookmark;
     with GridDo1.SelectedRows do
      begin
       for x := 0 to Count-1 do
        begin
          if IndexOf(Items[x]) > -1 then
            begin
              GridDo1.Datasource.Dataset.Bookmark := Items[x];
              if GridDo1.DataSource.DataSet.FieldByName('STATUS').AsInteger = 1
                  then
                     begin
                        GoToArchiev(
                             GridDo1.DataSource.DataSet.FieldByName('ID').asInteger);
                        i:=i+1;
                     end;
            end;  //end if
        end;   //end for
     end;  //end with
     DM.Sql.Transaction.Commit;
   except
     on E:Exception do
      begin
         DM.Sql.Transaction.Rollback;
         MessageBox(Application.Handle, PChar(E.Message + #13#10 + Dm.Sql.SQL.Text),
           PChar(Application.Name), MB_ICONERROR);
//         Exit;
      end;
   end;
 finally
     GridDo1.Datasource.Dataset.GotoBookmark(TempBookmark);
     GridDo1.Datasource.Dataset.FreeBookmark(TempBookmark);
     GridDo1.SelectedRows.Clear;
     GridDo1.Datasource.Dataset.EnableControls;
     DM.Refresh_Do1;
     DM.Refresh_DoArc;
     if i > 0 then
           Application.MessageBox(PChar('Обработано '+IntToStr(i)+ ' документов'),'Подтверждение',
                           mb_iconinformation+mb_ok );

 end;
end;

procedure TDo1_F.BtnSetDateClick(Sender: TObject);
const
 O:String='OR';
 A:String='AND';
 sel_order:String=' order by a.g072 desc, cast((a.g073) as numeric) desc ';
 Delim:Char=';';
var
 List:TStringList;
 S,sp:string;
 s1,s2,s4,s5,sel_arc,sel,sel_body,sel_step :String;
 i,j:Integer;
begin
  s1:=' select a.*, b.num_tp, c.svh_name,d.ntrans from do_head_vw a left join v_num_docs b on a.id_tp = b.id_tp ';
  s1:=s1+' left join svh c on a.id_svh=c.id left join do_trans d on a.id=d.id_do1 ';
  s2:=' where cast(a.g072 as date) between :p0 and :p1 ';
  sel_body := s1+s2+sel_order;

//end check stepctrl

DM.Qry_Dohead.Close;
DM.Qry_Dohead.SQL.Clear;
DM.Qry_Dohead.SQL.Add(sel_body);
DM.Qry_DoHead.Params[0].AsDate :=Dateof(E_DoDt1.Date);
DM.Qry_DoHead.Params[1].AsDate :=Dateof(E_DoDt2.Date);
DM.Qry_Dohead.Open;
end;

procedure TDo1_F.CopyDo1(SourceId: Integer);
var
 New_NDo:String;
 id_rec:Integer;
 s:string;
 qry:TIBquery;
begin
try
  qry:=TIbquery.Create(self);
  qry.Database:=Dm.DB;
  /// найдем новый id Do1
  DM.Qry.Close;
  Dm.Qry.SQL.Clear;
  Dm.Qry.SQL.Add(' select gen_id(GEN_ID_DO_HEAD,1) from rdb$database ');
  Dm.Qry.Open;
  id_rec:=Dm.Qry.Fields[0].AsInteger;
  // Выборка данных их источника - do_head
  Dm.Qry.Close;
  Dm.Qry.SQL.Clear;
  DM.Qry.Sql.Add('select * from do_head where id=:p0');
  DM.Qry.Params[0].AsInteger:=SourceId;
  DM.Qry.Open;
 //// создаем новую запись Do_head
 s:='insert into do_head (id,g14fam,g14dolj,c_name,c_addr,c_inn,c_kpp,c_ogrn,c_fam,c_country,';
 s:=s+'f_name,r_name,unshipped,g073,id_tp,g072,id_svh,';
 s:=s+'f_address,f_country,r_address,r_inn,r_kpp,r_ogrn';
 s:=s+')';
 s:=s+' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14,:p15,:p16,:p17,:p18, ';
 s:=s+' :p19,:p20,:p21,:p22)';
 DM.SQL.Close;
 DM.SQL.SQL.Clear;
 DM.SQL.SQL.Add(s);
 FormSet.Refresh_Settings.Execute;
 New_NDO:=DM.Qry_Settings.FieldByName('NEXT_DO1').AsString;
  try
   if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction; //start tran
    DM.SQL.Params[0].AsInteger:=id_rec;
    DM.SQL.Params[1].AsString:=User;
    DM.SQL.Params[2].AsString:=Dolj;
    DM.SQL.Params[3].AsString:=Dm.Qry.FieldByName('C_NAME').AsString;
    DM.SQL.Params[4].AsString:=Dm.Qry.FieldByName('C_ADDR').AsString;
    DM.SQL.Params[5].AsString:=Dm.Qry.FieldByName('C_INN').AsString;
    DM.SQL.Params[6].AsString:=Dm.Qry.FieldByName('C_KPP').AsString;
    DM.SQL.Params[7].AsString:=Dm.Qry.FieldByName('C_OGRN').AsString;
    DM.SQL.Params[8].AsString:=Dm.Qry.FieldByName('C_FAM').AsString;
    DM.SQL.Params[9].AsString:=Dm.Qry.FieldByName('C_COUNTRY').AsString;
    DM.SQL.Params[10].AsString:=Dm.Qry.FieldByName('F_NAME').AsString;
    DM.SQL.Params[11].AsString:=Dm.Qry.FieldByName('R_NAME').AsString;
    DM.SQL.Params[12].AsString:=Dm.Qry.FieldByName('UNSHIPPED').AsString;
    DM.SQL.Params[13].AsString:=Warehouse_F.New_Do_Num(New_NDo,0);
    DM.SQL.Params[14].AsInteger:=Dm.Qry.FieldByName('ID_TP').AsInteger;
    DM.SQL.Params[15].AsDateTime:=Now;
    DM.SQL.Params[16].AsInteger:=Dm.Qry_SVH.FieldByName('ID').AsInteger;
    DM.SQL.Params[17].AsString:=Dm.Qry.FieldByName('F_ADDRESS').AsString;
    DM.SQL.Params[18].AsString:=Dm.Qry.FieldByName('F_COUNTRY').AsString;
    DM.SQL.Params[19].AsString:=Dm.Qry.FieldByName('R_ADDRESS').AsString;
    DM.SQL.Params[20].AsString:=Dm.Qry.FieldByName('R_INN').AsString;
    DM.SQL.Params[21].AsString:=Dm.Qry.FieldByName('R_KPP').AsString;
    DM.SQL.Params[22].AsString:=Dm.Qry.FieldByName('R_OGRN').AsString;
    DM.SQL.ExecQuery;
  //// создаем новые записи Do_trand
    DM.Qry.Close;
    DM.Qry.SQL.Clear;
    DM.Qry.SQL.Add('select * from do_trand where id_do1 = :p0');
    DM.Qry.Params[0].AsInteger := SourceId;
    DM.Qry.Open;
    s:='insert into do_trand (id_do1,n_td,name,ndoc,ddoc,type_doc)';
    s:=s+' values (:p0,:p1,:p2,:p3,:p4,:p5) ';
    DM.SQL.Close;
    DM.SQL.SQL.Clear;
    DM.SQL.SQL.Add(s);
    while not DM.Qry.Eof do
      begin
        DM.SQL.Params[0].AsInteger:=id_rec;
        DM.SQL.Params[1].Value:=Dm.qry.FieldByName('N_TD').Value;
        DM.SQL.Params[2].AsString:=Dm.qry.FieldByName('NAME').AsString;
        DM.SQL.Params[3].AsString:=Dm.qry.FieldByName('NDOC').AsString;
        DM.SQL.Params[4].AsDate:=Dm.qry.FieldByName('DDOC').AsDateTime;
        DM.SQL.Params[5].AsString:=Dm.qry.FieldByName('TYPE_DOC').AsString;
        DM.SQL.ExecQuery;
        DM.Qry.Next;
      end;
    // Создадим новые записи DoTrans
    DM.Qry.Close;
    DM.Qry.SQL.Clear;
    DM.Qry.SQL.Add('select * from do_trans where id_do1 = :p0');
    DM.Qry.Params[0].AsInteger := SourceId;
    DM.Qry.Open;
    s:='insert into do_trans (id_do1,n_ts,vidtrans,ntrans ) ';
    s:=s+' values (:p0,:p1,:p2,:p3) ';
    DM.SQL.Close;
    DM.SQL.SQL.Clear;
    DM.SQL.SQL.Add(s);
    while not Dm.Qry.eof do
      begin
        DM.SQL.Params[0].AsInteger:=id_rec;
        DM.SQL.Params[1].AsInteger:=Dm.qry.FieldByName('N_TS').AsInteger;
        DM.SQL.Params[2].AsString:=Dm.qry.FieldByName('VIDTRANS').AsString;
        DM.SQL.Params[3].AsString:=Dm.qry.FieldByName('NTRANS').AsString;
        DM.SQL.ExecQuery;
        DM.Qry.Next;
      end;
    // Создадим новые записи DoCust
    DM.Qry.Close;
    DM.Qry.SQL.Clear;
    DM.Qry.SQL.Add('select * from do_cust where id_do1 = :p0');
    DM.Qry.Params[0].AsInteger := SourceId;
    DM.Qry.Open;
    s:='insert into do_cust (id_do1,n_td,type_doc,name,n_doc,d_doc ) ';
    s:=s+' values (:p0,:p1,:p2,:p3,:p4,:p5) ';
    DM.SQL.Close;
    DM.SQL.SQL.Clear;
    DM.SQL.SQL.Add(s);
    while not Dm.Qry.eof do
      begin
        DM.SQL.Params[0].AsInteger:=id_rec;
        DM.SQL.Params[1].AsInteger:=Dm.qry.FieldByName('N_TD').AsInteger;
        DM.SQL.Params[2].AsString:=Dm.qry.FieldByName('TYPE_DOC').AsString;
        DM.SQL.Params[3].AsString:=Dm.qry.FieldByName('NAME').AsString;
        DM.SQL.Params[4].AsString:=Dm.qry.FieldByName('N_DOC').AsString;
        DM.SQL.Params[5].AsDate:=Dm.qry.FieldByName('D_DOC').AsDateTime;
        DM.SQL.ExecQuery;
        DM.Qry.Next;
      end;
    // Создадим новые записи DoTovar
    DM.Qry.Close;
    DM.Qry.SQL.Clear;
    DM.Qry.SQL.Add('select * from do_tovar where id_do1 = :p0');
    DM.Qry.Params[0].AsInteger := SourceId;
    DM.Qry.Open;
    s:='insert into do_tovar (id_do1,n_ttn,svh_num,svh_place,g31_1,g31_2,g32,g33,g221,g42, ';
    s:=s+'prim,g31_d2,g35,unshipped,g31_2_p,g31_2_ost,g35_ost,g42_ost,date_in,time_in )';
    s:=s+' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14,:p15,:p16,:p17,:p18, ';
    s:=s+' :p19)';
    DM.SQL.Close;
    DM.SQL.SQL.Clear;
    DM.SQL.SQL.Add(s);
    while not Dm.Qry.eof do
      begin
        DM.SQL.Params[0].AsInteger:=id_rec;
        DM.SQL.Params[1].AsInteger:=Dm.qry.FieldByName('N_TTN').AsInteger;
        DM.SQL.Params[2].AsString:=Warehouse_F.New_Do_Num(New_NDo,0);
        DM.SQL.Params[3].AsString:=Dm.qry.FieldByName('SVH_PLACE').AsString;
        DM.SQL.Params[4].AsString:=Dm.qry.FieldByName('G31_1').AsString;
        DM.SQL.Params[5].AsInteger:=Dm.qry.FieldByName('G31_2').AsInteger;
        DM.SQL.Params[6].AsInteger:=Dm.qry.FieldByName('G32').AsInteger;
        DM.SQL.Params[7].AsString:=Dm.qry.FieldByName('G33').AsString;
        DM.SQL.Params[8].AsString:=Dm.qry.FieldByName('G221').AsString;
        DM.SQL.Params[9].AsDouble:=Dm.qry.FieldByName('G42').AsFloat;
        DM.SQL.Params[10].AsString:=Dm.qry.FieldByName('PRIM').AsString;
        DM.SQL.Params[11].AsDate:=IncMonth(Date,4);
        DM.SQL.Params[12].AsDouble:=Dm.qry.FieldByName('G35').AsFloat;
        DM.SQL.Params[13].AsString:=Dm.qry.FieldByName('UNSHIPPED').AsString;
        DM.SQL.Params[14].AsString:=Dm.qry.FieldByName('G31_2_P').AsString;
        DM.SQL.Params[15].AsString:=Dm.qry.FieldByName('G31_2').AsString;
        DM.SQL.Params[16].AsDouble:=Dm.qry.FieldByName('G35').AsFloat;
        DM.SQL.Params[17].AsDouble:=Dm.qry.FieldByName('G42').AsFloat;
        DM.SQL.Params[18].AsDate:=Date;
        DM.SQL.Params[19].AsTime:=IncMinute(Time,-15);
        DM.SQL.ExecQuery;
        DM.Qry.Next;
      end;

  ///////////Меняем следующий номер ДО1
    s:='update settings set next_do1=:p0 ';
    DM.SQL.Close;
    DM.SQL.SQL.Clear;
    DM.SQL.SQL.Add(s);
    DM.SQL.Params[0].AsInteger:= StrToInt(New_Ndo)+1;
    DM.SQL.ExecQuery;
    DM.SQL.Transaction.Commit;
    FormSet.Refresh_settings.Execute;
//    DM.Refresh_Warehouse;
//    DM.Refresh_WhActIn;
//    DM.Refresh_WhActOut;
    Do1_F.Find_Do(Warehouse_F.New_Do_Num(New_NDo,0),0);
    Do1_F.PageControl1.ActivePageIndex:=0;
    except
      on E: EdatabaseError do
        begin
         DM.Sql.Transaction.Rollback;
         ShowMessage(E.Message);
        end;
   end;
 finally
   qry.Free;
   if DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.RollBack;
end;

end;

procedure TDo1_F.Grid_DoArcDblClick(Sender: TObject);
begin
 DoEdit_Sender:=1; //
 EditDo_F.ShowModal;
end;

procedure TDo1_F.Grid_DoArcDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin

if  Grid_DoArc.DataSource.DataSet.FieldByName('ARC_FLAG').AsInteger = 1 then
 begin
  Grid_DoArc.Canvas.Font.Color := clWhite; // Font color
  Grid_DoArc.Canvas.Brush.Color := LighterColor(clMaroon,35); // Background color
  Grid_DoArc.Canvas.FillRect(Rect);
 end;

 if gdFocused in State  then
 begin
  Grid_DoArc.Canvas.Font.Color := clBlue; // Font color
  Grid_DoArc.Canvas.Brush.Color := LighterColor(clYellow,25); // Background color
  Grid_DoArc.Canvas.FillRect(Rect);
 end;


{if  Grid_DoArc.SelectedRows.CurrentRowSelected then
 begin
  Grid_DoArc.Canvas.Font.Color := clYellow; // Font color
  Grid_DoArc.Canvas.Brush.Color := clBlue; // Background color
  Grid_DoArc.Canvas.FillRect(Rect);
 end;}
  Grid_DoArc.DefaultDrawColumnCell(Rect, Datacol,Column, State);
end;

procedure TDo1_F.Grid_TpWoDo1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
var
  s:String;
  p:Integer;
  dif:Double;
  percent:Double;
  f:Boolean;
begin
f:=false;
DM.Refresh_Settings;
p:= DM.Qry_Settings.FieldByName('DIF_WEIGT_PERCENT').AsInteger;
if not (Sender as TDBGridEh).DataSource.DataSet.IsEmpty then
begin
    dif:= (Sender as TDBGridEh).DataSource.DataSet.FieldByName('WEIGHT_DOC').AsFloat -(Sender as TDBGridEh).DataSource.DataSet.FieldByName('WEIGHT_FACT').AsFloat;
    percent:=(Sender as TDBGridEh).DataSource.DataSet.FieldByName('PERCENT').AsFloat;
    if (dif < 0) and (percent > p) then
      begin
        s:= '+ ' + IntToStr( Trunc(-(Sender as TDBGridEh).DataSource.DataSet.FieldByName('DIFFER').AsFloat));
        f:=true;
      end;
    if (dif > 0) and (-percent > p) then
    begin
      s:= '- ' +IntToStr(-Trunc(-(Sender as TDBGridEh).DataSource.DataSet.FieldByName('DIFFER').AsFloat));
      f:=true;
    end;
    if (Column.FieldName = 'WEIGHT_DIF') and (f) then
      begin
        with  (Sender as TDBGridEh).Canvas do begin
          Brush.Color:=clRed;
          Font.Color:=clBlack;
          FillRect(Rect);
          TextOut(Rect.Left+4,
            Rect.Top+2,s)
          end;
      end
      else
        begin
          if (Column.FieldName = 'WEIGHT_DIF') and (not f) then
            begin
              with  (Sender as TDBGridEh).Canvas do begin
                FillRect(Rect);
                TextOut(Rect.Left+4,
                  Rect.Top+2,IntToStr( Trunc(-(Sender as TDBGridEh).DataSource.DataSet.FieldByName('DIFFER').AsFloat)))
                end;
            end;
        end;

end;
//if (Table1.FieldByName('VenueNo').Value=1) and
//(Column.FieldName='VenueNo')  then begin
//with  DBGrid1.Canvas do begin
//Brush.Color:=clGreen;
//Font.Color:=clWhite;
//FillRect(Rect);
//TextOut(Rect.Right-2-  TextWidth(Column.Field.Text),
//  Rect.Top+2,Column.Field.Text)
//end;
//end;
end;

procedure TDo1_F.E_FindDo2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13  then FindDo2(StrToInt(E_FindDo2.Text));
end;

procedure TDo1_F.E_FindDo2RightButtonClick(Sender: TObject);
begin
  FindDo2(StrToInt(E_FindDo2.Text));
end;

procedure TDo1_F.E_FindArcKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
  if Length(Trim(E_FindArc.Text)) > 0 then FindDo_Arc(E_FindArc.Text,CbDo_Arc.ItemIndex);

end;

procedure TDo1_F.E_FindArcRightButtonClick(Sender: TObject);
begin
  if Length(Trim(E_FindArc.Text)) > 0 then FindDo_Arc(E_FindArc.Text,CbDo_Arc.ItemIndex);
end;

procedure TDo1_F.E_FindDo1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13  then FindDo1(E_FindDo1.Text);
  if Length(Trim(E_Find_Do.Text)) > 0 then Find_Do(E_Find_Do.Text,CbDo.ItemIndex);
end;

procedure TDo1_F.E_FindDo1RightButtonClick(Sender: TObject);
begin
  FindDo1(E_FindDo1.Text);
end;

procedure TDo1_F.E_Find_DoKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
  if Length(Trim(E_Find_Do.Text)) > 0 then Find_Do(E_Find_Do.Text,CbDo.ItemIndex);
end;

procedure TDo1_F.E_Find_DoRightButtonClick(Sender: TObject);
begin
 if Length(Trim(E_Find_Do.Text)) > 0 then
    Find_Do(E_Find_Do.Text,CbDo.ItemIndex);
end;

procedure TDo1_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DM.CloseDo1;
 Dm.CloseDo2;
 if DM.Qry_ActWithoutDo2.Active then DM.Qry_ActWithoutDo2.Close;
 if DM.Qry_TPWithoutDo1.Active then DM.Qry_TPWithoutDo1.Close;
end;

procedure TDo1_F.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
end;

procedure TDo1_F.FormShow(Sender: TObject);
begin
if Role = 'SYSADMIN' then
    begin
      Pop_CopyDo1.Enabled:=True;
      Pop_EditHeaderDo1.Enabled:=True;
    end
  else
    begin
      Pop_CopyDo1.Enabled:=False;
      Pop_EditHeaderDo1.Enabled:=False;
    end;
E_DoDt1.Date:=date-1;
E_DoDt2.Date:=Date;
DM.OpenDo1;
DM.OpenDo2;
if not DM.Qry_ActWithoutDo2.Active then DM.Qry_ActWithoutDo2.Open;
if not DM.Qry_TPWithoutDo1.Active then DM.Qry_TPWithoutDo1.Open;

end;

function TDo1_F.GetSrok(Iddo1: Integer): Variant;
var
  qry:TIBQuery;
begin
  Result:=Null;
  qry := TIBQuery.Create(Self);
  try
    qry.Database:=DM.DB;
    qry.SQL.Add(' select  first 1 g31_d2  from do_tovar a where a.id_do1 =  :p0');
    qry.Params[0].AsInteger:=Iddo1;
    qry.Open;
    if not qry.IsEmpty then Result:=Qry.Fields[0].Value;    
  finally
    qry.Free;
  end;

end;

procedure TDo1_F.GoToArchiev(Rec:Integer);
var
 s:String;
begin
 try
  if Rec=0 then Exit;
     s:='update do_head set ARC_FLAG=:p0 where id=:p1 ';
     Dm.SQL.Close;
     DM.SQL.SQL.Clear;
     DM.SQL.SQL.Add(s);
     DM.SQL.Params[0].AsInteger:=1;
     DM.SQL.Params[1].AsInteger:=Rec;
     DM.SQL.ExecQuery;
   except
     Exit;
   end;
end;

procedure TDo1_F.GridDo1DblClick(Sender: TObject);
begin
 DoEdit_Sender:=0; //
 EditDo_F.ShowModal;
end;

procedure TDo1_F.GridDo1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
if  GridDo1.SelectedRows.CurrentRowSelected then
 begin
  GridDo1.Canvas.Font.Color := clYellow; // Font color
  GridDo1.Canvas.Brush.Color := clBlue; // Background color
  GridDo1.Canvas.FillRect(Rect);
 end;
  GridDo1.DefaultDrawColumnCell(Rect, Datacol,Column, State);
end;

procedure TDo1_F.GridDo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
Case Key of
 VK_UP, VK_PRIOR, VK_LEFT : dm.Qry_DoHead.Prior;
 VK_DOWN, VK_NEXT, VK_RIGHT : dm.Qry_DoHead.Next;
 VK_HOME : dm.Qry_DoHead.First;
 VK_END : dm.Qry_DoHead.Last;

 32,45: //пробел
 begin
 if ssShift in Shift then
   begin
      dm.Qry_DoHead.DisableControls;
      dm.Qry_DoHead.First;
      while not dm.Qry_DoHead.Eof do
        begin
            GridDo1.SelectedRows.CurrentRowSelected:=False;
            dm.Qry_DoHead.Next;
        end;
      dm.Qry_DoHead.EnableControls;
   end
 else
   if ssCtrl in Shift then
      begin
          dm.Qry_DoHead.DisableControls;
          dm.Qry_DoHead.First;
          while not dm.Qry_DoHead.Eof do
             begin
                 GridDo1.SelectedRows.CurrentRowSelected:=True;
                 dm.Qry_DoHead.Next;
             end;
         dm.Qry_DoHead.EnableControls;
     end
    else if Shift=[] then
       begin
           if GridDo1.SelectedRows.CurrentRowSelected then
               begin
                 GridDo1.SelectedRows.CurrentRowSelected:=false;
                 dm.Qry_DoHead.Next;
               end
             else if not GridDo1.SelectedRows.CurrentRowSelected then
                     begin
                       GridDo1.SelectedRows.CurrentRowSelected:=true;
                       dm.Qry_DoHead.Next;
                     end;

           end;
    end;
end;
IF Key<>VK_TAB then Key:=0;
end;

procedure TDo1_F.N11Click(Sender: TObject);
begin
  if GridDo1.SelectedRows.Count = 0 then
     begin
       Application.MessageBox('Не выбрано ни одной записи.Продолжить невозможно.','Внимание',MB_ICONSTOP+MB_OK);
       Exit;
     end;
  TipDo:=1;
  ExportDo_F.Show;
end;

procedure TDo1_F.Pop_CopyDo1Click(Sender: TObject);
begin
  if GridDo1.DataSource.DataSet.FieldByName('ID').IsNull then Exit;
  CopyDo1(GridDo1.DataSource.DataSet.FieldByName('ID').AsInteger);
end;

procedure TDo1_F.Pop_DeleteDo1Click(Sender: TObject);
var
  id,i:Integer;
  qry:TIBQuery;
begin
  if GridDo1.DataSource.DataSet.FieldByName('id').IsNull then Exit
    else id:=GridDo1.DataSource.DataSet.FieldByName('id').AsInteger;
  qry := TIBQuery.Create(Self);
  try
    qry.Database:=DM.DB;
    qry.SQL.Add('select count (w.id) from do_outhd w ');
    qry.SQL.Add(' left join do_head d on w.id_do1 = d.id where d.id = :p0 ');
    qry.Params[0].AsInteger := id;
    qry.Open;
    i:= Qry.Fields[0].AsInteger;
    if ( i > 0) then
      begin
        Application.MessageBox('На данное ДО1 создано ДО2.Удаление невозможно.','Внимание',MB_ICONWARNING+MB_OK);
        Exit;
      end;
    DM.Sql.Close;
    Dm.Sql.SQL.Clear;
    DM.Sql.SQL.Add(' delete from do_head where id = :p0');
    if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction; //start tran
    Dm.Sql.Params[0].AsInteger :=id;
    Dm.Sql.ExecQuery;
    Dm.Sql.Transaction.Commit;
    ToolButton7Click(ToolButton7);
  finally
    if DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.Rollback;
    qry.Free;
  end;
end;

procedure TDo1_F.Pop_EditHeaderDo1Click(Sender: TObject);
begin
DoheaderEdit_F.ShowModal;
end;

procedure TDo1_F.N21Click(Sender: TObject);
begin
  if Grid_Do2Sheet.SelectedRows.Count = 0 then
     begin
       Application.MessageBox('Не выбрано ни одной записи.Продолжить невозможно.','Внимание',MB_ICONSTOP+MB_OK);
       Exit;
     end;

  TipDo:=2;
  ExportDo_F.Show;
end;

procedure TDo1_F.N6Click(Sender: TObject);
begin
  try
    DM.Qry_DoOstatki.Open;
    Reports_F.Rep2.LoadFromFile('rep_doostatki.fr3');
    Reports_F.Rep2.ShowReport(True);
  finally
    DM.Qry_DoOstatki.Close;
  end;
end;

procedure TDo1_F.TB_RefrClick(Sender: TObject);
begin
  DM.Refresh_ActWithoutDo2;
end;

procedure TDo1_F.Tb_RefTpClick(Sender: TObject);
begin
  DM.Refresh_TPWithoutDo1;
end;

procedure TDo1_F.ToolButton11Click(Sender: TObject);
begin
  AllRec_Do2;
end;

procedure TDo1_F.ToolButton12Click(Sender: TObject);
begin
  AllRecDo1_Arc;
end;

procedure TDo1_F.ToolButton6Click(Sender: TObject);
begin
 AllRec_ActWithoutDo2;
end;

procedure TDo1_F.ToolButton7Click(Sender: TObject);
begin
  DM.Refresh_DoArc;
end;

procedure TDo1_F.ToolButton9Click(Sender: TObject);
var
 i:Integer;
begin
i:=DM.Qry_Do2Sheet.FieldByName('ID').AsInteger;
DM.Qry_Do2Sheet.Close;
DM.Qry_Do2Sheet.Open;
DM.Qry_Do2Sheet.Locate('ID',i,[]);
end;

procedure TDo1_F.TB_refdo12Click(Sender: TObject);
begin
 DM.Refresh_Do1;
 DM.Qry_DoOutHd.Close;
 DM.Qry_DoOutHd.Open;
 DM.Refresh_DoTrand;
 DM.Refresh_DoTovar;
// DM.Refresh_Do2;
end;

end.
