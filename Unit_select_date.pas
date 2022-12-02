unit Unit_select_date;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls,DateUtils;

type
  TFormSelDate = class(TForm)
    GroupBox1: TGroupBox;
    RxLabel1: TLabel;
    RxLabel2: TLabel;
    D1: TDateTimePicker;
    D2: TDateTimePicker;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSelDate: TFormSelDate;

implementation
uses dm_u, reports_u;
{$R *.dfm}

procedure TFormSelDate.FormShow(Sender: TObject);
begin
D1.Date:=Date;
D2.Date:=Date;
end;

procedure TFormSelDate.SaveBtnClick(Sender: TObject);
begin
if DateOf(D2.Date) < DateOf(D1.Date) then
  begin
    Application.MessageBox('Неверный диапазон дат','Внимание',mb_ok+mb_iconstop);
    Formseldate.ModalResult:=mrNone;
  end
 else   
   ModalResult:=MrOk  ;
end;

procedure TFormSelDate.CancBtnClick(Sender: TObject);
begin
FormSeldate.ModalResult:=MrCancel  ;
end;

end.
