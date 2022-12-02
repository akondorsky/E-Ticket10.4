unit TsVes_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TTSVes_F = class(TForm)
    Bt_Cancel: TBitBtn;
    Bt_Save: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TSVes_F: TTSVes_F;

implementation

{$R *.dfm}
uses main,dm_u;

procedure TTSVes_F.FormShow(Sender: TObject);
begin
  Label2.Caption:=DM.Qry_TS.FieldByName('N_TS').AsString;
  Label4.Caption:=DM.Qry_TS.FieldByName('N_TRAILER').AsString;
end;

end.
