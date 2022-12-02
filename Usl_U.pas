unit Usl_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, DBAxisGridsEh;

type
  TUsl_F = class(TForm)
    DBGridEh1: TDBGridEh;
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Usl_F: TUsl_F;

implementation

{$R *.dfm}
uses main, dm_u;
procedure TUsl_F.DBGridEh1DblClick(Sender: TObject);
var
 id:Integer;
begin
 id:=DM.Qry_Usl.FieldByName('ID_USL').asInteger;
 if DM.MT_PriceList.Locate('ID',id,[])then
    begin
      ModalResult:=mrOk;
    end
   else
    begin
      Application.MessageBox('Редактирование услуги невозможно.','Внимание',MB_ICONWARNING+MB_OK);
      ModalResult:=mrNone;
    end;
end;

end.
