unit RepZakSort_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TRepZakSort_F = class(TForm)
    RG1: TRadioGroup;
    SaveBtn: TBitBtn;
    procedure SaveBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepZakSort_F: TRepZakSort_F;

implementation

{$R *.dfm}

procedure TRepZakSort_F.SaveBtnClick(Sender: TObject);
begin
ModalResult:=MrOk;
end;

end.
