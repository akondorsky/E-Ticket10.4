unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBEvents, DB, IBCustomDataSet, IBQuery, IBSQL, IBDatabase, dbf,
  StdCtrls;

type
  TForm1 = class(TForm)
    DB: TIBDatabase;
    IBTR: TIBTransaction;
    IBTW: TIBTransaction;
    Sql: TIBSQL;
    Qry: TIBQuery;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
   procedure DoQuery(Text:String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  f,outfile:TextFile;

implementation

{$R *.dfm}

procedure TForm1.DoQuery(Text:String);
var
 s:String;
begin
  if Qry.Active then qry.Close;
  qry.Params[0].AsInteger := StrToInt(Text);
  qry.Open;
  s:= Qry.Fields[0].AsString + ',' +Qry.Fields[1].AsString + ','+Qry.Fields[2].AsString + ','+Qry.Fields[3].AsString + ','+
      Qry.Fields[4].AsString + ','+Qry.Fields[5].AsString + ','+Qry.Fields[6].AsString + ',' +Qry.Fields[7].AsString + ',';
  WriteLn(outfile,s);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  text: string;
begin
  Button1.Enabled:=false;
  AssignFile(F, 'list.txt');
  Reset(F);
  AssignFile(outfile, 'out.txt');
  Rewrite(outfile);

  try

    // Отображение содежимого файла
    while not Eof(F) do
    begin
      ReadLn(F, text);
      DoQuery(text);
    end;



  finally
   CloseFile(f);
   CloseFile(outfile);
   Button1.Enabled:=True;
  end;

end;


procedure TForm1.FormShow(Sender: TObject);
begin
  if not DB.Connected then DB.Open;

end;

end.
