unit ZTKDocOut_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh, MemTableDataEh, Db, ExtCtrls, DBCtrls, MemTableEh,
  StdCtrls, Buttons, EhLibVCL;

type
  TZtkOutDoc_F = class(TForm)
    Mt_out: TMemTableEh;
    Ds_out: TDataSource;
    DBNavigator1: TDBNavigator;
    Grid_Gtd: TDBGridEh;
    Mt_outNDOC: TStringField;
    Mt_outDDOC: TDateField;
    Mt_outNAME: TStringField;
    Mt_outTYPE_DOC: TStringField;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ZtkOutDoc_F: TZtkOutDoc_F;

implementation

{$R *.dfm}
uses dm_u;

procedure TZtkOutDoc_F.BitBtn1Click(Sender: TObject);
begin
  if Mt_out.State in [dsInsert,dsEdit] then Mt_out.Post;
  if Mt_out.RecordCount > 0  then ModalResult:=mrOK
     else
      begin
        Application.MessageBox('Документы выпуска отсутствуют!','Внимание',MB_ICONERROR+MB_OK);
        ModalResult:=mrNone;
      end;
end;

procedure TZtkOutDoc_F.FormCreate(Sender: TObject);
var
 f:TStringField;
begin
 //MT_out.FieldDefs.Add('TYPE_DOC',ftString,2);
{ MT_out.FieldDefs.Add('NAME',ftString,50);
 MT_out.FieldDefs.Add('NDOC',ftString,50);
 MT_out.FieldDefs.Add('DDOC',ftDate);
 MT_out.CreateDataSet;
 f:=TStringField.Create(Mt_Out);
 f.FieldKind := fkLookup;
 f.FieldName := 'TYPE_DOC' ;
 f.Size := 2  ;
 Mt_Out.Fields.Add(f);
 Mt_out.Close;
 Mt_out.Fields[3].DataSet:=Mt_out;
 Mt_out.Fields[3].LookupDataSet:=DM.Qry_TDOC;
 Mt_out.Fields[3].LookupKeyFields := 'KOD' ;
 Mt_out.Fields[3].LookupResultField := 'NAME' ;
 Mt_out.Fields[3].KeyFields := 'TYPE_DOC';
 Mt_out.Fields[3].LookupCache := True;
 Mt_out.Fields[3].Lookup:=True;

 Grid_Gtd.Columns[0].FieldName:='TYPE_DOC';
 Grid_Gtd.Columns[1].FieldName:='NAME';
 Grid_Gtd.Columns[2].FieldName:='NDOC';
 Grid_Gtd.Columns[3].FieldName:='DDOC';
 Grid_Gtd.Columns[0].Title.Caption:='Тип документа';
 Grid_Gtd.Columns[1].Title.Caption:='Наименование документа';
 Grid_Gtd.Columns[2].Title.Caption:='№ документа';
 Grid_Gtd.Columns[3].Title.Caption:='Дата документа';}

end;

procedure TZtkOutDoc_F.FormShow(Sender: TObject);
begin
  if not Mt_out.Active then Mt_out.Open;
  
  Mt_out.First;
  while not Mt_out.Eof do
    begin
      Mt_out.Edit;
      Mt_out.Delete;
      Mt_out.Post;
      Mt_out.Next;
    end;
  Mt_out.Close;
  Mt_Out.Open;
end;

end.
