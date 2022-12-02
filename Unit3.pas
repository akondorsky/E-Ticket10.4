unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, MemTableDataEh, Db, MemTableEh, GridsEh, DBGridEh;

type
  TForm3 = class(TForm)
    DBGridEh1: TDBGridEh;
    MemTableEh1: TMemTableEh;
    DataSource1: TDataSource;
    MemTableEh1NAME: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}
uses dm_u;
procedure TForm3.FormShow(Sender: TObject);
begin
 MemTableEh1.Open;
end;

end.
