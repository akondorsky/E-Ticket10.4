unit Docg44_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, DBGridEhGrouping, GridsEh;

type
  TDocg44_F = class(TForm)
    DBGridEh1: TDBGridEh;
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   function FindTDoc(F:String):String;
  end;

var
  Docg44_F: TDocg44_F;

implementation

{$R *.dfm}
uses dm_u;
function TDocg44_F.FindTDoc(F:String):String;
begin
 if DM.Qry_Docg44.Locate('KOD',F,[]) then
     Result:=DM.Qry_Docg44.FieldByName('KRNAME').AsString
    else
     Result:='';
end;

procedure TDocg44_F.DBGridEh1DblClick(Sender: TObject);
begin
  ModalResult:=mrOk;
end;

end.
