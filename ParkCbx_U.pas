unit ParkCbx_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, IBX.IBSQL, IBX.IBDatabase, DB,IBX.IBQuery,
  ImgList, Menus, ComCtrls, ExtCtrls, System.ImageList;

type
  TFormParkCbx = class(TForm)
    StringGrid1: TStringGrid;
    PopupMenu1: TPopupMenu;
    ImageList1: TImageList;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    SB1: TStatusBar;
    N6: TMenuItem;
    N7: TMenuItem;
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Shape2: TShape;
    Label3: TLabel;
    Shape3: TShape;
    Label4: TLabel;
    N8: TMenuItem;
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
    procedure StringGrid1DblClick(Sender: TObject);
    procedure StringGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
    {Переменные для модуля
      Cell_Column,Cell_Row - хранят текущее координаты ячейки
      Park_Free - кол-во своб. мест
      Park_Occupted -кол-во занятых мест
      Park_Total - обще кол-во}
    Cell_Column,Cell_Row,Park_Free,Park_Occupted,Park_Total : Integer;

  public
    { Public declarations }
    PARKID:Integer;  // N ячейки - фактически № записи в таблице
    PARKNUMBER:String; // текст ячеки - № места в таблице
  end;

const
 _N_ROWS:Integer=4; // кол-во рядов в Гриде
 _N_COLS:Integer=25; // кол-во колонок в Гриде
var
  FormParkCbx: TFormParkCbx;

implementation
uses dm_u,parkztk_u,main;
{$R *.dfm}

procedure TFormParkCbx.FillCells;
var
 i,j,num_park:integer;
begin
   for i:=0 to _N_ROWS-1 do
    begin
     for j:=0 to _N_COLS-1 do
      begin
       num_park:=i*_N_COLS+(j+1);
       StringGrid1.Cells[j,i]:=FormParkZTK.Get_Parking_Num(num_park,'PARK_CBX');
      end;
    end;
end;

procedure TFormParkCbx.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
 num_park:Integer;
begin

   if FormParkZTK.Get_Parking_State(ACol+1+ARow*_N_COLS,'PARK_CBX') = PLACE_FREE then
      begin
       StringGrid1.Canvas.Brush.Color:=clWhite;
       StringGrid1.Canvas.FillRect(Rect);
       StringGrid1.Canvas.TextOut(Rect.Left,Rect.Top,StringGrid1.Cells[Acol,Arow]);
      end;
   if FormParkZTK.Get_Parking_State(ACol+1+ARow*_N_COLS,'PARK_CBX') = PLACE_OCCUPIED then
      begin
       StringGrid1.Canvas.Brush.Color:=clRed;
       StringGrid1.Canvas.FillRect(Rect);
       StringGrid1.Canvas.TextOut(Rect.Left,Rect.Top,StringGrid1.Cells[Acol,Arow]);
      end;
   if FormParkZTK.Get_Parking_State(ACol+1+ARow*_N_COLS,'PARK_CBX') = PLACE_DISABLE then
      begin
       StringGrid1.Canvas.Brush.Color:=clBlack;
       StringGrid1.Canvas.FillRect(Rect);
       StringGrid1.Canvas.TextOut(Rect.Left,Rect.Top,StringGrid1.Cells[Acol,Arow]);
      end;
end;

procedure TFormParkCbx.StringGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
 StringVal:String;
begin

 if (button=mbright) or (button=mbleft) then
   begin
     StringGrid1.MouseToCell(X, Y, Cell_Column, Cell_Row);
     PARKID:=Cell_Column+1+Cell_Row*_N_COLS;
     PARKNUMBER:=StringGrid1.Cells[Cell_Column,Cell_Row];
   end;

end;


procedure TFormParkCbx.N7Click(Sender: TObject);
var
 cnt:TMyCountArray;
begin
 cnt:=FormParkZTK.Count_parking('PARK_CBX');
 SB1.Panels[0].Text:='Всего мест: '+IntToStr(cnt[0])+' '+
                      'Свободных: '+ IntToStr(cnt[1])+' '+
                      'Занято: '+IntToStr(cnt[2]);
end;

procedure TFormParkCbx.FormCreate(Sender: TObject);
begin
 FillCells;
end;

procedure TFormParkCbx.N1Click(Sender: TObject);
begin
 {
 if ((FormparkZTK.Get_Parking_State(FormParkCbx.PARKID,'PARK_CBX') = 2) or
    (FormparkZTK.Get_Parking_State(FormParkCbx.PARKID,'PARK_CBX' ) = 1))  then
     begin
       Application.MessageBox('Данное место занято или не используется','Внимание',MB_ICONERROR+MB_OK);
       Exit;
     end;
 FormParkZTK.Change_parking_State(FormParkCbx.PARKID,1,'PARK_CBX');
 FillCells;
 }
end;


procedure TFormParkCbx.N2Click(Sender: TObject);
begin
{
 if FormParkZTK.Get_Parking_State(FormParkCbx.PARKID,'PARK_CBX') = 2 then Exit;
 FormParkZTK.Change_parking_State(FormParkCbx.PARKID,0,'PARK_CBX');
 FillCells;
 }
end;

procedure TFormParkCbx.N4Click(Sender: TObject);
var
 cur_state:Integer;
begin
{
 cur_state:=FormParkZTK.Get_Parking_State(FormParkCbx.PARKID,'PARK_CBX');
 if  cur_state = 0 then
   begin
     FormParkZTK.Change_parking_State(FormParkCbx.PARKID,2,'PARK_CBX');
     FillCells;
   end
  else
   exit;
 }
end;

procedure TFormParkCbx.N5Click(Sender: TObject);
begin
{
 if FormParkZTK.Get_Parking_State(FormParkCbx.PARKID,'PARK_CBX') = 2 then
  begin
    FormParkZTK.Change_parking_State(FormParkCbx.PARKID,0,'PARK_CBX');
    FillCells;
  end;
 }
end;

procedure TFormParkCbx.N8Click(Sender: TObject);
begin
{
 AdvAl1.AlertMessages.Add.Text.Text:='№ места: '+ PARKNUMBER + '№ талона: '+ '№ ТС: ';
 AdvAl1.Show;
 }
end;

procedure TFormParkCbx.FormShow(Sender: TObject);
begin
 ModalResult:=mrNone;
 FormParkCbx.N7Click(N7);
end;

procedure TFormParkCbx.StringGrid1DblClick(Sender: TObject);
begin
 ModalResult:=mrOK;
end;

procedure TFormParkCbx.StringGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
 s:String;
begin
  StringGrid1.MouseToCell(X, Y, Cell_Column, Cell_Row);
  FormParkCbx.PARKID:=(Cell_Row)*_N_COLS+(Cell_Column+1);
  s:=FormParkZTK.Get_Npp_Nts(FormParkCbx.PARKID,'v_parkcbx_ts');
  SB1.Panels.Items[1].Text:=s;
  Application.ProcessMessages;
end;
end.
