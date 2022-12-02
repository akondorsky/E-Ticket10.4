unit About_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TAbout_F = class(TForm)
    Label1: TLabel;
    L_Version: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  About_F: TAbout_F;

implementation

{$R *.dfm}
uses main,myutils;
procedure TAbout_F.FormShow(Sender: TObject);
begin
  L_Version.Caption:=GetMyVersion;
end;

end.
