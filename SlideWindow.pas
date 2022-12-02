unit SlideWindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls,DB,IBX.IbQuery;

type
  TSlideWind_F = class(TForm)
    SpeedButton1: TSpeedButton;
    Memo1: TMemo;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SlideWind_F: TSlideWind_F;

implementation

{$R *.dfm}
uses Myutils,DM_U, Buh_U,Main;

procedure TSlideWind_F.BitBtn1Click(Sender: TObject);
begin
 SlideWind_F.Close;
end;

procedure TSlideWind_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Label1.Caption:='';
  Memo1.Lines.Clear;
  AnimateWindow(SlideWind_F.Handle, 300, AW_HIDE OR AW_VER_NEGATIVE );  // ну и анимация окна....
end;

procedure TSlideWind_F.FormPaint(Sender: TObject);
type TRGB=record
 b,g,r:byte;
end;
ARGB=array [0..1] of TRGB;
PARGB=^ARGB;
var
 b:TBitMap;
 p:PARGB;
 x,y:integer;
begin
 b:=TBitMap.Create;
 b.pixelformat:=pf24bit;
 b.width:=Clientwidth;
 b.height:=Clientheight;
 for y:=0 to b.height-1 do
  begin
  p:=b.scanline[y];
  for x:=0 to b.width-1 do
    begin
//эту часть кода будем изменять
    p[x].r:=255;
    p[x].g:=255*y div b.Height;
    p[x].b:=255*y div b.Height;
   end;
  end;
 canvas.draw(0,0,b);
 b.free;
end;


procedure TSlideWind_F.FormShow(Sender: TObject);
var
  sc:TRect;
  st:Tstream;
  qry:TIBquery;
begin
try
   qry:=TIBQuery.Create(Self);
   qry.Database:=DM.DB;
   qry.SQL.Add('select discount_note,zayv from reg_ti where id=:p0 ');
   qry.Params[0].AsInteger:=PlatNum;
   qry.Open;
   st := TStream.Create;
   st:=qry.CreateBlobStream(qry.Fields[0],bmRead);
   //form1.Height:=100;   //устанавливаем высоту формы
   //form1.Width:=250;   // ширина формы

   Memo1.Color:=LighterColor(clBlue,45);
   Memo1.Font.Color:=clYellow;
   sc:=screen.WorkAreaRect;   // получим координаты рабочего стола

   (Sender as TForm).Left:=sc.Right-(Sender as TForm).Width;      // окно появится в правом нижнем углу экрана
   //(Sender as TForm).Top:=sc.Bottom-(Sender as TForm).Height;   //
   (Sender as TForm).Top:=sc.Top;   // кно появится в правом верхнем углу экрана
   AnimateWindow((Sender as TForm).Handle, 220, AW_VER_POSITIVE );  // ну и анимация окна....
   Self.Label1.Caption:=qry.Fields[1].AsString;
   Memo1.Lines.LoadFromStream(st);
finally
  st.Free;
  qry.Free;
end;

end;

procedure TSlideWind_F.SpeedButton1Click(Sender: TObject);
begin
 SlideWind_F.Close;
end;

end.
