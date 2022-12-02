unit InvoiceLog_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ToolWin, ComCtrls;

type
  TInvoiceLog_F = class(TForm)
    ToolBar1: TToolBar;
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter1: TSplitter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InvoiceLog_F: TInvoiceLog_F;

implementation

{$R *.dfm}
uses dm_u;

end.
