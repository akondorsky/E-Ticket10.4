unit ClosedCbx_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, IBX.IBSQL, IBX.IBDatabase, DB,IBX.IBQuery,
  ImgList, Menus, ComCtrls, ExtCtrls, System.ImageList;

type
  TFormClosedCbx = class(TForm)
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
 _N_ROWS:Integer=15; // кол-во рядов в Гриде
 _N_COLS:Integer=5; // кол-во колонок в Гриде
var
  FormClosedCbx: TFormClosedCbx;

implementation
uses dm_u, parkztk_u;
{$R *.dfm}

procedure TFormClosedCbx.FillCells;
var
 i,j,num_park:integer;
begin
{
   for i:=0 to _N_ROWS-1 do
    begin
     for j:=0 to _N_COLS-1 do
      begin
       num_park:=i*_N_COLS+(j+1);
       StringGrid1.Cells[j,i]:=FormParkZTK.Get_Parking_Num(num_park,'CLOSED_CBX');
      end;
    end;
 }
end;

procedure TFormClosedCbx.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
 num_park:Integer;
begin
{
   if FormParkZTK.Get_Parking_State(ACol+1+ARow*_N_COLS,'CLOSED_CBX') = 0 then
      begin
       StringGrid1.Canvas.Brush.Color:=clWhite;
       StringGrid1.Canvas.FillRect(Rect);
       StringGrid1.Canvas.TextOut(Rect.Left,Rect.Top,StringGrid1.Cells[Acol,Arow]);
      end;
   if FormParkZTK.Get_Parking_State(ACol+1+ARow*_N_COLS,'CLOSED_CBX') = 1 then
      begin
       StringGrid1.Canvas.Brush.Color:=clRed;
       StringGrid1.Canvas.FillRect(Rect);
       StringGrid1.Canvas.TextOut(Rect.Left,Rect.Top,StringGrid1.Cells[Acol,Arow]);
      end;
   if FormParkZTK.Get_Parking_State(ACol+1+ARow*_N_COLS,'CLOSED_CBX') = 2 then
      begin
       StringGrid1.Canvas.Brush.Color:=clBlack;
       StringGrid1.Canvas.FillRect(Rect);
       StringGrid1.Canvas.TextOut(Rect.Left,Rect.Top,StringGrid1.Cells[Acol,Arow]);
      end;
   }
end;

procedure TFormClosedCbx.StringGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
 StringVal:String;
begin
{
 if button=mbright then
   begin
     StringGrid1.MouseToCell(X, Y, Cell_Column, Cell_Row);
     FormClosedCbx.PARKID:=Cell_Column+1+Cell_Row*_N_COLS;
     FormClosedCbx.PARKNUMBER:=StringGrid1.Cells[Cell_Column,Cell_Row];
   end;
  }
end;


procedure TFormClosedCbx.N7Click(Sender: TObject);
var
 cnt:TMyCountArray;
begin
{
 cnt:=FormParkZTK.Count_parking('CLOSED_CBX');
 SB1.Panels[0].Text:='Всего мест: '+IntToStr(cnt[0])+' '+
                      'Свободных: '+ IntToStr(cnt[1])+' '+
                      'Занято: '+IntToStr(cnt[2]);
}
end;

procedure TFormClosedCbx.FormCreate(Sender: TObject);
begin
 FillCells;
end;

procedure TFormClosedCbx.N1Click(Sender: TObject);
begin
{ if ((FormparkZTK.Get_Parking_State(FormClosedCbx.PARKID,'CLOSED_CBX') = 2) or
    (FormparkZTK.Get_Parking_State(FormClosedCbx.PARKID,'CLOSED_CBX' ) = 1))  then
     begin
       Application.MessageBox('Данное место занято или не используется','Внимание',MB_ICONERROR+MB_OK);
       Exit;
     end;
 FormParkZTK.Change_parking_State(FormClosedCbx.PARKID,1,'CLOSED_CBX');
 FillCells;
 }
end;


procedure TFormClosedCbx.N2Click(Sender: TObject);
begin
{
  if FormParkZTK.Get_Parking_State(FormClosedCbx.PARKID,'CLOSED_CBX') = 2 then Exit;
 FormParkZTK.Change_parking_State(FormClosedCbx.PARKID,0,'CLOSED_CBX');
 FillCells;
 }
end;

procedure TFormClosedCbx.N4Click(Sender: TObject);
var
 cur_state:Integer;
begin
{
 cur_state:=FormParkZTK.Get_Parking_State(FormClosedCbx.PARKID,'CLOSED_CBX');
 if  cur_state = 0 then
   begin
     FormParkZTK.Change_parking_State(FormClosedCbx.PARKID,2,'CLOSED_CBX');
     FillCells;
   end
  else
   exit;
  }
end;

procedure TFormClosedCbx.N5Click(Sender: TObject);
begin
{
 if FormParkZTK.Get_Parking_State(FormClosedCbx.PARKID,'CLOSED_CBX') = 2 then
  begin
    FormParkZTK.Change_parking_State(FormClosedCbx.PARKID,0,'CLOSED_CBX');
    FillCells;
  end;
 }
end;

procedure TFormClosedCbx.N8Click(Sender: TObject);
begin
{
 AdvAl1.AlertMessages.Add.Text.Text:='№ места: '+ PARKNUMBER + '№ талона: '+ '№ ТС: ';
 AdvAl1.Show;
 }
end;

procedure TFormClosedCbx.FormShow(Sender: TObject);
begin
// FormClosedCbx.N7Click(N7);
end;

end.
