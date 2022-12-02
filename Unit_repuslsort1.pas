unit Unit_repuslsort1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFormRepUslSort = class(TForm)
    RG1: TRadioGroup;
    SaveBtn: TBitBtn;
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
