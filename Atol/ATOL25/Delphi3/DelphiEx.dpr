program DelphiEx;

uses
  Forms,
  fmuMain in 'fmuMain.pas' {frmMain};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
