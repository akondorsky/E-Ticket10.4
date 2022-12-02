unit TnvedUpdate_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  StdCtrls, IBX.IBSQL, GridsEh, DBAxisGridsEh, DBGridEh, DB, IBX.IBCustomDataSet,
  IBX.IBQuery, IBX.IBDatabase, ComCtrls, dbf, ImgList,FileCtrl, DBCtrls;

type
  TTnvedUpdate_F = class(TForm)
    Btn_Update: TButton;
    ProgressBar1: TProgressBar;
    OpenDlg1: TOpenDialog;
    Dbf1: TDbf;
    procedure FormShow(Sender: TObject);
    procedure Btn_UpdateClick(Sender: TObject);
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;


var
  TnvedUpdate_F: TTnvedUpdate_F;
  TotalRecord:Integer;
implementation

{$R *.dfm}
uses dm_u,ucodestr;


procedure TTnvedUpdate_F.Btn_UpdateClick(Sender: TObject);
var
 workdir:String;
 fullpath,fname:String;
begin
  if OpenDlg1.Execute then
     begin
        fullpath:=OpenDlg1.FileName;
        workdir:=ExtractFileDir(fullpath);
        fname:=ExtractFileName(fullpath);
     end;
  if Length(trim(workdir)) = 0  then Exit;
try
  try
    Btn_Update.Enabled:=false;
    Dbf1.FilePath:= workdir+'\';
    Dbf1.FilePathFull:=Dbf1.FilePath;
    Dbf1.TableName:=fname;
    dbf1.TableLevel:=4;
    Dbf1.Open;
    TotalRecord:= DBf1.RecordCount;
    ProgressBar1.Min:=0;
    ProgressBar1.Max:=TotalRecord;
    Dbf1.First;
    if not dm.sql.Transaction.InTransaction then dm.sql.Transaction.StartTransaction;
    dm.sql.Close;
    dm.sql.sql.Clear;
    dm.sql.sql.Add('delete from tnved4');
    dm.sql.ExecQuery;
    dm.sql.Close;
    dm.sql.sql.Clear;
    dm.sql.sql.Add('insert into tnved4 (gruppa,tov_pos,name,npric,dpric,date_is,date_exp,sub_pos)' );
    dm.sql.sql.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)' );
      while not Dbf1.Eof do
        begin
          dm.sql.Close;
          dm.sql.Params[0].AsString:=dbf1.FieldByName('GRUPPA').AsString;
          dm.sql.Params[1].AsString:=dbf1.FieldByName('TOV_POZ').AsString;
          dm.sql.Params[2].AsString:=Dos2Win(Pchar(dbf1.FieldByName('KR_NAIM').AsString));
          dm.sql.Params[3].AsString:=Dos2Win(Pchar(dbf1.FieldByName('NPRIC').AsString));
          dm.sql.Params[4].Value:=dbf1.FieldByName('DPRIC').Value;
          dm.sql.Params[5].Value:=dbf1.FieldByName('DATA').Value;
          dm.sql.Params[6].Value:=dbf1.FieldByName('DATA1').Value;
          dm.sql.Params[7].AsString:=dbf1.FieldByName('SUB_POZ').AsString;
          dm.sql.ExecQuery;
          ProgressBar1.StepIt;
          Application.ProcessMessages;
          Dbf1.Next;
        end;
    dm.sql.Transaction.Commit;
    ModalResult:=mrOK;
  except
    On E: Exception do
      begin
        ShowMessage(E.Message);
        Exit;
      end;
  end;
finally
  if Dbf1.Active then Dbf1.Close;
  Btn_Update.Enabled:=True;
end;
end;

procedure TTnvedUpdate_F.FormClick(Sender: TObject);
begin
 // ShowMessage(IntToStr(Mouse.CursorPos.X)+','+IntToStr(Mouse.CursorPos.Y));
 // Canvas.TextOut(Mouse.CursorPos.X,Mouse.CursorPos.Y,'Qu-Qu');
end;

procedure TTnvedUpdate_F.FormShow(Sender: TObject);
begin
  ProgressBar1.Position:=0;
end;

end.


