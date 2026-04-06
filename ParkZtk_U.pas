unit ParkZtk_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, IBX.IBSQL, IBX.IBDatabase, DB,IBX.IBQuery,
  ImgList, Menus, ComCtrls, ExtCtrls, IBX.IBCustomDataSet, System.ImageList;

type
  TMyCountArray = array[0..2] of integer;
  TFormParkZTK = class(TForm)
    StringGrid1: TStringGrid;
    PopMn1: TPopupMenu;
    ImageList1: TImageList;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    SB1: TStatusBar;
    N6: TMenuItem;
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Shape2: TShape;
    Label3: TLabel;
    Shape3: TShape;
    Label4: TLabel;
    Shape4: TShape;
    Label5: TLabel;
    Qry_ZTK: TIBQuery;
    N7: TMenuItem;
    procedure FillCells;
    procedure StringGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure N7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure StringGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
    {Переменные для модуля
      Cell_Column,Cell_Row - хранят текущее координаты ячейки
      Park_Free - кол-во своб. мест
      Park_Occupted -кол-во занятых мест
      Park_Total - обще кол-во}
    Cell_Column,Cell_Row : Integer;
  public
    { Public declarations }
    PARKID:Integer;  // N ячейки - фактически № записи в таблице
    PARKNUMBER:String; // текст ячеки - № места в таблице
    function Get_Parking_State(NumP:Integer;Table:String):Integer;Overload; // получит состояние парковки по id
    function Get_Parking_State(NumP,Table:String):Integer;Overload; // получить состояние парковки по номеру места
    function Get_Parking_Num(NumP:Integer;Table:String):String; // найти номер места по ID
    procedure Set_Park_Free(NumP,State:Integer;Table:String);  // Table -
    procedure Set_Park_Disable(NumP,State:Integer;Table:String);
    function Count_parking(Table:String):TMyCountArray;
    function Get_Npp_Nts(NumP:Integer;Table:String):String;  //Получить номер проп и номера ТС
    function Get_Parking_Id(NumP,Table:String):Integer; // Найти ID по номеру места
    function Having_Place(Npp:Integer;Table:String):Boolean;
    function Get_Parking_Num1(Npp:Integer;Table:String):String; // Найти № места по номеру пропуска
    procedure ParkingCondition; // показывает на статус баре состояние парковки
    function Get_Parking_Num2(Npp:Integer;Table:String):String; // Найти № места по id TS
  end;

const
 _N_ROWS:Integer=17; // кол-во рядов в Гриде
 _N_COLS:Integer=12; // кол-во колонок в Гриде

var
  FormParkZTK: TFormParkZTK;

implementation
uses dm_u,main,Reports_U;
{$R *.dfm}

procedure TFormParkZTK.Set_Park_Disable(NumP, State: Integer; Table: String);
var
 sql:TIBsql;
begin
  try
   try
     sql:=TIBSQL.Create(Self);
     sql.Database:=Dm.DB;
     sql.Transaction:=Dm.IBTW;
     sql.sql.Add(format(' update %s set cond_park=:p0, id_ts=:p1,id_ticket=:p2 where id=:p3 ',[Table]));
     if not sql.Transaction.InTransaction then sql.Transaction.StartTransaction;
     sql.Params[0].AsInteger:=State;
     sql.Params[1].AsVariant:=null;
     sql.Params[2].AsVariant:=null;
     sql.Params[3].AsInteger:=NumP;
     sql.ExecQuery;
     sql.Transaction.Commit;
     except
        on E: EdatabaseError do
          begin
            sql.Transaction.Rollback;
            ShowMessage(E.Message);
          end;
    end;
   finally
    if sql.Transaction.InTransaction then sql.Transaction.Rollback;
    sql.Free;
  end;
end;

procedure TFormParkZTK.Set_Park_Free(NumP,State:Integer;Table:String);
var
 sql:TIBsql;
 qry:TIbquery;
begin
  try
   try
     sql:=TIBSQL.Create(Self);
     sql.Database:=Dm.DB;
     sql.Transaction:=Dm.IBTW;
     sql.sql.Add(format(' update %s set cond_park=:p0, id_ts=:p1,id_ticket=:p2 where id=:p3 ',[Table]));
     if not sql.Transaction.InTransaction then sql.Transaction.StartTransaction;
     sql.Params[0].AsInteger:=State;
     sql.Params[1].AsVariant:=null;
     sql.Params[2].AsVariant:=null;
     sql.Params[3].AsInteger:=NumP;
     sql.ExecQuery;
     //добавим в журнал
     qry:=TIBQuery.Create(Self);
     qry.Database:=Dm.DB;
     qry.Transaction:=Dm.IBTR;
     qry.SQL.Add(format('select id_ts,id_ticket from %s where num_park = %s%s%s ',[Table,#39,IntToStr(NumP),#39]));
     qry.Open;
     sql.Close;
     sql.SQL.Clear;
     sql.SQL.Add('insert into park_log (id_ts,id_ticket,username,place,action_code,park_type,action_name) ');
     sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6) ');
     sql.Params[0].AsInteger:=qry.Fields[0].AsInteger;
     sql.Params[1].AsInteger:=qry.Fields[1].AsInteger;
     sql.Params[2].AsString:=User;
     sql.Params[3].AsString:=IntToStr(NumP);
     sql.Params[4].AsInteger:=ACTION_MOVE_OUT_CODE;
     if UpperCase(Table) = 'PARK_ZTK' then sql.Params[5].AsString:=PARK_TYPE_ZTK else
        if UpperCase(Table) = 'PARK_CBX' then sql.Params[5].AsString:=PARK_TYPE_CBX;
     sql.Params[6].AsString:=ACTION_MOVE_OUT;
     sql.ExecQuery;
 {    //обновим данные в журнале ПЗТК
     sql.Close;
     sql.SQL.Clear;
     sql.sql.Add(' update ts set out_pztk=:p0  where id =:p1 ');
     sql.Params[0].AsDateTime:=Now;
     sql.Params[1].AsInteger:=qry.Fields[0].AsInteger;
     sql.ExecQuery;}

     sql.Transaction.Commit;
     except
        on E: EdatabaseError do
          begin
            sql.Transaction.Rollback;
            ShowMessage(E.Message);
          end;
    end;
   finally
    if sql.Transaction.InTransaction then sql.Transaction.Rollback;
    sql.Free;
    qry.Free;
  end;

end;

function TFormParkZTK.Get_Parking_Num(NumP:Integer;Table:String):String;
var
 Qry:TIBQuery;
begin
  Result:='';
  try
    Qry:=TIBQuery.Create(Self);
    Qry.Database:=Dm.DB;
    Qry.SQL.Add(format('select NUM_PARK from %s where ID=%s ',[Table,IntToStr(NumP)]));
    Qry.Open;
    Result:= Qry.Fields[0].AsString;
    Qry.Close;
  finally
    Qry.Free;
  end;
end;

function TFormParkZTK.Get_Parking_State(NumP:Integer;Table:String):Integer;
//var
// Qry:TIBQuery;
begin
  Result:=0;
  if not Qry_ZTK.Active then Qry_Ztk.Open;
  Qry_ZTK.Locate('ID',NumP,[]);
  Result:=Qry_ZTK.FieldByName('COND_PARK').AsInteger;
//  try
//    Qry:=TIBQuery.Create(Self);
//    Qry.Database:=DM.DB;
//    Qry.SQL.Add(format('select cond_park from %s where ID=%s ',[Table,IntToStr(NumP)]));
//    Qry.Open;
//    Result:= Qry.Fields[0].AsInteger;
//    Qry.Close;
//  finally
//    Qry.Free;
//  end;
end;

procedure TFormParkZTK.FillCells;
var
 i,j,num_park:integer;
begin
   if Qry_ZTk.Active then Qry_ZTK.Close;
   Qry_ZTk.Open;
   for i:=0 to StringGrid1.RowCount-1 do
    begin
     for j:=0 to StringGrid1.ColCount-1 do
      begin
       num_park:=i*_N_COLS+(j+1);
       //StringGrid1.Cells[j,i]:=Get_Parking_Num(num_park,'PARK_ZTK');
       Qry_Ztk.Locate('ID',num_park,[]);
       StringGrid1.Cells[j,i]:=Qry_ZTK.FieldByName('NUM_PARK').AsString;
      end;
    end;
   Qry_ZTK.Close;
end;

procedure TFormParkZTK.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
 num_park:Integer;
begin
   if Get_Parking_State(ACol+1+ARow*_N_COLS,'park_ztk') = PLACE_FREE then
      begin
       StringGrid1.Canvas.Brush.Color:=clWhite;
       StringGrid1.Canvas.FillRect(Rect);
       StringGrid1.Canvas.TextOut(Rect.Left,Rect.Top,StringGrid1.Cells[Acol,Arow]);
      end;
   if Get_Parking_State(ACol+1+ARow*_N_COLS,'park_ztk') = PLACE_OCCUPIED then
      begin
       StringGrid1.Canvas.Brush.Color:=clRed;
       StringGrid1.Canvas.FillRect(Rect);
       StringGrid1.Canvas.TextOut(Rect.Left,Rect.Top,StringGrid1.Cells[Acol,Arow]);
      end;
   if Get_Parking_State(ACol+1+ARow*_N_COLS,'park_ztk') = PLACE_MOVE_TO_CBX then
      begin
       StringGrid1.Canvas.Brush.Color:=clYellow;
       StringGrid1.Canvas.FillRect(Rect);
       StringGrid1.Canvas.TextOut(Rect.Left,Rect.Top,StringGrid1.Cells[Acol,Arow]);
      end;
   if Get_Parking_State(ACol+1+ARow*_N_COLS,'park_ztk') = PLACE_DISABLE then
      begin
       StringGrid1.Canvas.Brush.Color:=clBlack;
       StringGrid1.Canvas.Font.Color:=clWhite;
       StringGrid1.Canvas.FillRect(Rect);
       StringGrid1.Canvas.TextOut(Rect.Left,Rect.Top,StringGrid1.Cells[Acol,Arow]);
      end;
end;

procedure TFormParkZTK.StringGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
 StringVal:String;
begin
 if (button=mbright) or (button=mbleft) then
   begin
     StringGrid1.MouseToCell(X, Y, Cell_Column, Cell_Row);
     FormParkZTK.PARKID:=Cell_Column+1+Cell_Row*_N_COLS;
     FormParkZTK.PARKNUMBER:=StringGrid1.Cells[Cell_Column,Cell_Row];
   end;
end;

function TFormParkZTK.Count_parking(Table:String):TMyCountArray;
var
 Qry:TIBQuery;
 n:Integer;
 myarray:TMyCountArray;
begin
  try
    n:=_N_ROWS*_N_COLS;
    Qry:=TIBQuery.Create(Self);
    Qry.Database:=Dm.DB;
    Qry.SQL.Add(format(' select count(cond_park) from %s where  ',[Table]));
    Qry.SQL.Add(format( ' id <=%s and cond_park <> 2',[IntToStr(n)]));
    Qry.Open;
    myarray[0]:= Qry.Fields[0].AsInteger;
    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add(format('select count(cond_park) from %s where cond_park = 0 ',[Table] ));
    Qry.SQL.Add(format( ' and id <=%s ',[IntToStr(n)]));
    Qry.Open;
    myarray[1]:= Qry.Fields[0].AsInteger;
    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add(format('select count(cond_park) from %s where cond_park = 1 ',[Table]));
    Qry.SQL.Add(format( ' and id <=%s ',[IntToStr(n)]));
    Qry.Open;
    myarray[2]:= Qry.Fields[0].AsInteger;
    Qry.Close;
    Result:=myarray;
  finally
    Qry.Free;
  end;
end;


procedure TFormParkZTK.ParkingCondition;
var
 cnt:TMyCountArray;
begin
 cnt:=Count_parking('park_ztk');
 SB1.Panels[0].Text:='Всего мест: '+IntToStr(cnt[0])+' '+
                      'Своб.: '+ IntToStr(cnt[1])+' '+
                      'Зан.: '+IntToStr(cnt[2]);
end;

procedure TFormParkZTK.FormCreate(Sender: TObject);
begin
 FillCells;
end;

procedure TFormParkZTK.N1Click(Sender: TObject);
begin
{ if ((Get_Parking_State(FormParkZTK.PARKID,'park_ztk') = 2) or
    (Get_Parking_State(FormParkZTK.PARKID,'park_ztk' ) = 1))  then
     begin
       Application.MessageBox('Данное место занято или не используется','Внимание',MB_ICONERROR+MB_OK);
       Exit;
     end;
 Change_parking_State(FormParkZTK.PARKID,1,'park_ztk');
 if Assigned(FormKPP) then FormKPP.Refresh_KPP.Execute;
 FillCells;
 ModalResult:=mrOk;}
end;


procedure TFormParkZTK.N2Click(Sender: TObject);
begin
      // проверим состояние выбранного места парковки ЗТК - если место занято то разрешаем изменения
      if (FormParkZTK.Get_Parking_State(FormParkZTK.PARKNUMBER,'PARK_ZTK') = PLACE_OCCUPIED) or
         (FormParkZTK.Get_Parking_State(FormParkZTK.PARKNUMBER,'PARK_ZTK') = PLACE_MOVE_TO_CBX) then
           begin
              Set_Park_Free(FormParkZTK.PARKID,PLACE_FREE,'PARK_ZTK');
              FillCells;
           end
          else
             Application.MessageBox('Данное место свободно или не используется','Внимание',MB_ICONERROR+MB_OK);

end;

procedure TFormParkZTK.N4Click(Sender: TObject);
begin
 if Get_Parking_State(FormParkZTK.PARKID,'park_ztk') = PLACE_FREE then
  begin
    Set_Park_Disable(FormParkZTK.PARKID,PLACE_DISABLE,'park_ztk');
    FillCells;
  end;

end;

procedure TFormParkZTK.N5Click(Sender: TObject);
begin
 if Get_Parking_State(FormParkZTK.PARKID,'park_ztk') = PLACE_DISABLE then
  begin
    Set_Park_Free(FormParkZTK.PARKID,PLACE_FREE,'park_ztk');
    FillCells;
  end;
end;

procedure TFormParkZTK.N7Click(Sender: TObject);
begin
  if not DM.Qry_PrintParkZTK.Active then DM.Qry_PrintParkZTK.Open;
  if Reports_F.Rep1.LoadFromFile('rep_print_ztk.fr3') then
    if Reports_F.Rep1.PrepareReport(True) then
        Reports_F.Rep1.ShowPreparedReport;
  DM.Qry_PrintParkZTK.Close;
end;

procedure TFormParkZTK.N8Click(Sender: TObject);
begin
{ AdvAl1.AlertMessages.Add.Text.Text:='№ места: '+ PARKNUMBER +#10#13+ '№ талона: '+#10#13+ '№ ТС: ';
 AdvAl1.Show;}
end;

procedure TFormParkZTK.FormShow(Sender: TObject);
var
 i:integer;
begin
  if Qry_ZTK.Active then Qry_ZTK.Close;
  Qry_ZTK.Open;
  ModalResult:=mrNone;
  ParkingCondition;
end;

procedure TFormParkZTK.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
//
end;

procedure TFormParkZTK.StringGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
 s:String;
begin
  StringGrid1.MouseToCell(X, Y, Cell_Column, Cell_Row);
  FormParkZTK.PARKID:=(Cell_Row)*_N_COLS+(Cell_Column+1);
  s:=Get_Npp_Nts(FormParkZTK.PARKID,'v_parkztk_ts');
  SB1.Panels.Items[1].Text:=s;
  Application.ProcessMessages;
end;

function TFormParkZTK.Get_Npp_Nts(NumP: Integer; Table: String): String;
var
 Qry:TIBQuery;
begin
  Result:='';
  try
    Qry:=TIBQuery.Create(Self);
    Qry.Database:=DM.DB;
    Qry.SQL.Add(format('select n_ts,n_tr,n_ticket from %s where ID=%s ',[Table,IntToStr(NumP)]));
    Qry.Open;
    Result:= Qry.Fields[0].AsString +'; '+Qry.Fields[1].AsString+'; '+Qry.Fields[2].AsString;
  finally
    Qry.Close;
    Qry.Free;
  end;
end;

function TFormParkZTK.Get_Parking_Id(NumP, Table: String): Integer;
var
 Qry:TIBQuery;
begin
  Result:=0;
  try
    Qry:=TIBQuery.Create(Self);
    Qry.Database:=DM.DB;
    Qry.SQL.Add(format('select ID from %s where NUM_PARK=%s ',[Table,#39+NumP+#39]));
    Qry.Open;
    if not Qry.Fields[0].IsNull then Result:=Qry.Fields[0].AsInteger;
  finally
    Qry.Close;
    Qry.Free;
  end;
end;

procedure TFormParkZTK.StringGrid1DblClick(Sender: TObject);
begin
  ModalResult:=mrOK;
end;

procedure TFormParkZTK.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Qry_ZTK.Active then Qry_ZTK.Close;
 (Sender as TForm).Tag:=0;
end;

function TFormParkZTK.Having_Place(Npp: Integer; Table: String): Boolean;
var
 Qry:TIBQuery;
begin
  Result:=False;
  try
    Qry:=TIBQuery.Create(Self);
    Qry.Database:=DM.DB;
    Qry.SQL.Add(format('select count(*) from %s where NUM_KPP=%s ',[Table,IntToStr(Npp)]));
    Qry.Open;
    if Qry.Fields[0].asInteger > 0 then Result:=True;
  finally
    Qry.Close;
    Qry.Free;
  end;
end;

function TFormParkZTK.Get_Parking_Num1(Npp: Integer;
  Table: String): String;
var
 Qry:TIBQuery;
begin
  Result:='';
  try
    Qry:=TIBQuery.Create(Self);
    Qry.Database:=Dm.DB;
    Qry.SQL.Add(format('select NUM_PARK from %s where NUM_KPP=%s ',[Table,IntToStr(Npp)]));
    Qry.Open;
    Result:= Qry.Fields[0].AsString;
    Qry.Close;
  finally
    Qry.Free;
  end;
end;

function TFormParkZTK.Get_Parking_Num2(Npp: Integer; Table: String): String;
var
 Qry:TIBQuery;
begin
  Result:='';
  try
    Qry:=TIBQuery.Create(Self);
    Qry.Database:=Dm.DB;
    Qry.SQL.Add(format('select NUM_PARK from %s where ID_TS=%s ',[Table,IntToStr(Npp)]));
    Qry.Open;
    Result:= Qry.Fields[0].AsString;
    Qry.Close;
  finally
    Qry.Free;
  end;
end;

function TFormParkZTK.Get_Parking_State(NumP, Table: String): Integer;
var
 Qry:TIBQuery;
begin
  Result:=0;
  try
    Qry:=TIBQuery.Create(Self);
    Qry.Database:=DM.DB;
    Qry.SQL.Add(format('select cond_park from %s where NUM_PARK=%s%s%s ',[Table,#39,NumP,#39]));
    Qry.Open;
    Result:= Qry.Fields[0].AsInteger;
    Qry.Close;
  finally
    Qry.Free;
  end;
end;

end.
