unit ReasonDiscount_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TReasonDiscount_F = class(TForm)
    E_reason: TLabeledEdit;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReasonDiscount_F: TReasonDiscount_F;

implementation

{$R *.dfm}

procedure TReasonDiscount_F.BitBtn1Click(Sender: TObject);
begin
if Length(Trim(E_reason.Text))=0  then
   begin
     Application.MessageBox('Не заполнено обязательное поле - причина.','Внимание',MB_ICONWARNING+MB_OK);
     ModalResult:=mrNone;
     Exit;
   end;
end;

end.
