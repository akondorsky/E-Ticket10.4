unit MismTovSel_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, StdCtrls, Buttons, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh;

type
  TMismTovSel_F = class(TForm)
    Grid_Tov: TDBGridEh;
    SaveBtn: TBitBtn;
    procedure SaveBtnClick(Sender: TObject);
    procedure Grid_TovDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MismTovSel_F: TMismTovSel_F;

implementation

{$R *.dfm}

procedure TMismTovSel_F.SaveBtnClick(Sender: TObject);
begin
 if Grid_Tov.SelectedRows.Count = 0 then
   begin
     Application.MessageBox('Не выбрано ни одного товара.Продолжить невозможно.','Внимание',
                             MB_ICONSTOP+MB_OK );
   end
  else
   ModalResult:=mrOk; 
end;

procedure TMismTovSel_F.Grid_TovDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if  Grid_tov.SelectedRows.CurrentRowSelected then
 begin
  Grid_tov.Canvas.Font.Color := clYellow; // Font color
  Grid_tov.Canvas.Brush.Color := clBlue; // Background color
  Grid_tov.Canvas.FillRect(Rect);
 end;
  Grid_tov.DefaultDrawColumnCell(Rect, Datacol,Column, State);
end;

end.
