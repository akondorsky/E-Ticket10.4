unit Unit_Rep_Usl_sel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask;

type
  TFormRepUslSort = class(TForm)
    RadioGroup1: TRadioGroup;
    SaveBtn: TBitBtn;
    DiapBox: TGroupBox;
    Dis1: TEdit;
    Dis2: TEdit;
    RxLabel1: TLabel;
    Label1: TLabel;
    procedure SaveBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRepUslSort: TFormRepUslSort;

implementation

{$R *.dfm}

procedure TFormRepUslSort.SaveBtnClick(Sender: TObject);
begin
 ModalResult:=MrOk;
end;

end.
