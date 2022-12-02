unit RepSortGoods_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TRepSortGoods_F = class(TForm)
    Rg1: TRadioGroup;
    SaveBtn: TBitBtn;
    procedure SaveBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepSortGoods_F: TRepSortGoods_F;

implementation

{$R *.dfm}

procedure TRepSortGoods_F.SaveBtnClick(Sender: TObject);
begin
  ModalResult:=mrOk;
end;

end.
