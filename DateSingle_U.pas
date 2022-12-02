unit DateSingle_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TDateSingle_F = class(TForm)
    GroupBox1: TGroupBox;
    D1: TDateTimePicker;
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
  DateSingle_F: TDateSingle_F;

implementation

{$R *.dfm}

procedure TDateSingle_F.CancBtnClick(Sender: TObject);
begin
   ModalResult:=mrCancel  ;
end;

procedure TDateSingle_F.FormShow(Sender: TObject);
begin
D1.Date:=Date;
end;

procedure TDateSingle_F.SaveBtnClick(Sender: TObject);
begin
   ModalResult:=MrOk  ;
end;

end.
