unit Ztkoutdocs_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBX.IBCustomDataSet, IBX.IBQuery, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh,
  PlatformDefaultStyleActnCtrls, ActnList, ActnMan, Menus, System.Actions,
  EhLibVCL;

type
  TZTKOutDocs_F = class(TForm)
    Qry_ztkoutdocs: TIBQuery;
    Ds_ztkoutdocs: TDataSource;
    Grid_OutDocs: TDBGridEh;
    ActionManager1: TActionManager;
    A_DocoutAdd: TAction;
    A_DocOutEdit: TAction;
    A_DocOutDel: TAction;
    PopMn1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure A_DocoutAddExecute(Sender: TObject);
    procedure A_DocOutEditExecute(Sender: TObject);
    procedure A_DocOutDelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ZTKOutDocs_F: TZTKOutDocs_F;

implementation

{$R *.dfm}
uses dm_u,main, Outdoc_U, OutdocEdit_U;


procedure TZTKOutDocs_F.A_DocoutAddExecute(Sender: TObject);
begin
 OutDoc_F.ShowModal;
end;

procedure TZTKOutDocs_F.A_DocOutDelExecute(Sender: TObject);
 var
  rec:Integer;

begin
try
 try
  if Application.MessageBox('Документ будет удален.Продолжить?','Подтверждение',MB_ICONQUESTION+MB_YESNO) <> ID_YES then Exit;
  rec:=Qry_ztkoutdocs.FieldByName('ID').AsInteger;
  DM.SQL.Close;
  Dm.SQL.SQL.Clear;
  DM.SQL.SQL.Add('delete from out_docs where id=:p0 ');
  if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction;
  DM.SQL.params[0].AsInteger:=rec;
  DM.SQL.ExecQuery;
  DM.SQL.Transaction.Commit;
  Qry_ztkOutDocs.Close; ;
  Qry_ztkOutDocs.Open;
 except
   on E:Exception do
    begin
       //DM.SQL.Transaction.Rollback;
       MessageBox(Application.Handle, PChar(E.Message + #13#10 + Dm.SQL.SQL.Text),
         PChar(Application.Name), MB_ICONERROR);
    end;
 end;
finally
  if DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.Rollback;
end;
end;

procedure TZTKOutDocs_F.A_DocOutEditExecute(Sender: TObject);
begin
 OutDocEdit_F.ShowModal;
end;

procedure TZTKOutDocs_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Qry_ztkoutdocs.Close;
end;

procedure TZTKOutDocs_F.FormShow(Sender: TObject);
begin
  Qry_ztkoutdocs.Open;
end;

end.
