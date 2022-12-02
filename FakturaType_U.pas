unit FakturaType_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFakturaType_F = class(TForm)
    Rg1: TRadioGroup;
    Bt_Save: TBitBtn;
    procedure Bt_SaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FakturaType_F: TFakturaType_F;

implementation

{$R *.dfm}
uses FakturaLog_U;

procedure TFakturaType_F.Bt_SaveClick(Sender: TObject);
begin
  FakturaLog_F.F_type:=RG1.ItemIndex;
end;

end.
