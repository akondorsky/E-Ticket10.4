unit InputNumber_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TInputNumber_F = class(TForm)
    Label1: TLabel;
    E_number: TEdit;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InputNumber_F: TInputNumber_F;

implementation

{$R *.dfm}

procedure TInputNumber_F.BitBtn1Click(Sender: TObject);
begin
  if Length(E_number.Text) = 0 then
    begin
      Application.MessageBox('Введите число','Вyимание',MB_ICONWARNING+MB_OK);
      Exit;
    end
   else
    ModalResult:=mrOk;
end;

procedure TInputNumber_F.FormShow(Sender: TObject);
begin
  E_number.SetFocus;
end;

end.
