unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DB,
  DBTables, StdCtrls, GridsEh, DBAxisGridsEh, DBGridEh, IBCustomDataSet, IBQuery,
  IBDatabase;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    IBQuery1: TIBQuery;
    DBGridEh1: TDBGridEh;
    Button1: TButton;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQuery2: TIBQuery;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    DataSource2: TDataSource;
    qry: TIBQuery;
    Button2: TButton;
    qry1: TIBQuery;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  id:Integer;
  F:TextFile;
  fname,s:String;

begin
  if not IBQuery1.Active then IBQuery1.Open;
  if not IBQuery2.Active then IBQuery2.Open;
  fname:='d:\report.txt';
  AssignFile(F,fname);   { File selected in dialog box }
  Rewrite(F);
  try
    Button1.Enabled := False;
    while not IBQuery1.Eof do
      begin
        id:=Ibquery1.Fields[0].Value;
        if not (Ibquery2.Locate('ID',id,[])) then
          begin
            s:='Id= ' + IntToStr(Ibquery1.Fields[0].AsInteger) +' Наименование= '+Ibquery1.Fields[1].AsString ;
            WriteLn(F,s);
          end;
        IBQuery1.Next;
      end;
  finally
    CloseFile(F);
    Button1.Enabled := True;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  id,kol1,kol2:Integer;
  F:TextFile;
  fname,s:String;

begin
  if not IBQuery1.Active then IBQuery1.Open;
  if not IBQuery2.Active then IBQuery2.Open;
  fname:='d:\report.txt';
  AssignFile(F,fname);   { File selected in dialog box }
  Rewrite(F);
  try
    Button1.Enabled := False;
    while not IBQuery1.Eof do
      begin
        id:=Ibquery1.Fields[0].Value;
        if Ibquery2.Locate('ID',id,[]) then
          begin
            qry.Close;
            qry.Params[0].AsInteger := id;
            qry.Open;
            kol1 := Qry.Fields[0].AsInteger;
            qry1.Close;
            qry1.Params[0].AsInteger := id;
            qry1.Open;
            kol2 := Qry1.Fields[0].AsInteger;
            if kol1 > kol2 then
              begin
                s:='Id= ' + IntToStr(Ibquery1.Fields[0].AsInteger) +' Наименование= '+Ibquery1.Fields[1].AsString + '   '+IntToStr(kol1) + '-->'+IntToStr(kol2) ;
                WriteLn(F,s);
              end;
          end;
        IBQuery1.Next;
      end;
  finally
    CloseFile(F);
    Button1.Enabled := True;
  end;

end;

procedure TForm1.Button3Click(Sender: TObject);
var
  id,kol1,kol2:Integer;
  F:TextFile;
  fname,s:String;
begin
  if not IBQuery1.Active then IBQuery1.Open;
  if not IBQuery2.Active then IBQuery2.Open;
  fname:='d:\report.txt';
  AssignFile(F,fname);   { File selected in dialog box }
  Rewrite(F);
  try
    Button1.Enabled := False;
    while not IBQuery1.Eof do
      begin
        id:=Ibquery1.Fields[0].Value;
        if Ibquery2.Locate('ID',id,[]) then
          begin
            qry.Close;
            qry.Params[0].AsInteger := id;
            qry.Open;
            kol1 := Qry.Fields[0].AsInteger;
            qry1.Close;
            qry1.Params[0].AsInteger := id;
            qry1.Open;
            kol2 := Qry1.Fields[0].AsInteger;
            if kol1 < kol2 then
              begin
                s:='Id= ' + IntToStr(Ibquery1.Fields[0].AsInteger) +' Наименование= '+Ibquery1.Fields[1].AsString + '   '+IntToStr(kol1) + '<--'+IntToStr(kol2) ;
                WriteLn(F,s);
              end;
          end;
        IBQuery1.Next;
      end;
  finally
    CloseFile(F);
    Button1.Enabled := True;
  end;
end;

end.
