unit DiscChange_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TDiscChange_F = class(TForm)
    E_Disc: TLabeledEdit;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DiscChange_F: TDiscChange_F;

implementation

uses DM_U;

{$R *.dfm}

procedure TDiscChange_F.BitBtn1Click(Sender: TObject);
begin
   if Length(Trim(E_Disc.Text)) = 0  then      begin
        Application.MessageBox('Неверное значение скидкм','Внимание',MB_ICONASTERISK+mb_Ok);
        E_Disc.SetFocus;
        ModalResult:=mrNone;
      end;
end;

procedure TDiscChange_F.FormShow(Sender: TObject);
begin
 E_Disc.Text:=DM.Qry_Fhead.FieldByName('DISC_HOLD').asString;
end;

end.
