unit Tdoc_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, DBGridEhGrouping, GridsEh, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh;

type
  TTDoc_F = class(TForm)
    DBGridEh1: TDBGridEh;
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   function FindCustDoc(F:String):String;    
  end;

var
  TDoc_F: TTDoc_F;

implementation

{$R *.dfm}
uses  dm_u;
function TTDoc_F.FindCustDoc(F:String):String;
begin
 if DM.Qry_TDoc.Locate('KOD',F,[]) then
     Result:=DM.Qry_TDoc.FieldValues['KRNAME']
    else
     Result:='';
end;

procedure TTDoc_F.DBGridEh1DblClick(Sender: TObject);
begin
  Modalresult:=mrOk;
end;

end.
