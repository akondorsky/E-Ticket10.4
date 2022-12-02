unit OutdocEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,  Mask, Buttons,Db, ExtCtrls, ComCtrls;

type
  TOutdocEdit_F = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    E_Ngtd: TMaskEdit;
    E_Name: TEdit;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    E_Type: TButtonedEdit;
    E_Dgtd: TDateTimePicker;
    procedure E_DgtdEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure E_TypeKeyPress(Sender: TObject; var Key: Char);
    procedure E_NameKeyPress(Sender: TObject; var Key: Char);
    procedure E_NgtdKeyPress(Sender: TObject; var Key: Char);
    procedure E_DgtdKeyPress(Sender: TObject; var Key: Char);
    procedure E_TypeChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure E_NgtdEnter(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure E_TypeRightButtonClick(Sender: TObject);
    procedure E_NgtdExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  MyGtdMask:String='00000000\/000000\/0000000;1;_';
var
  OutdocEdit_F: TOutdocEdit_F;

implementation

uses dm_u,tdoc_u,myutils, Ztkoutdocs_U;

{$R *.dfm}

procedure TOutdocEdit_F.E_DgtdEnter(Sender: TObject);
var
 s,s1:String;
begin
{ s1:=Copy(DateToStr(Date),7,2);
 s:=Copy(E_ngtd.Text,10,6);
 Insert(s1,s,5);
 Insert(DateSeparator,s,3);
 Insert(DateSeparator,s,6);
 E_Dgtd.Text:=s; }
end;

procedure TOutdocEdit_F.FormShow(Sender: TObject);
begin
 E_Type.Text:=ZTKOutDocs_F.Qry_ZtkOutDocs.FieldByName('TYPE_DOC').AsString;
 E_Name.Text:=ZTKOutDocs_F.Qry_ZtkOutDocs.FieldByName('NAME').AsString;
 E_Ngtd.Text:=ZTKOutDocs_F.Qry_ZtkOutDocs.FieldByName('NDOC').AsString;
 E_Dgtd.Date:=ZTKOutDocs_F.Qry_ZtkOutDocs.FieldByName('DDOC').AsDateTime;
// E_Type.SetFocus;
end;

procedure TOutdocEdit_F.E_TypeKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TOutdocEdit_F.E_TypeRightButtonClick(Sender: TObject);
begin
  if TDoc_F.ShowModal = mrOk then
     begin
      E_Type.Text:=DM.Qry_TDoc.fieldbyName('KOD').asString;
      E_Name.Text:=Dm.Qry_TDoc.FieldByName('KRNAME').asString;
      E_NGtd.SetFocus;
    end;
end;

procedure TOutdocEdit_F.E_NameKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TOutdocEdit_F.E_NgtdKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TOutdocEdit_F.E_DgtdKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TOutdocEdit_F.E_TypeChange(Sender: TObject);
begin
 E_Name.Text:=TDoc_F.FindCustDoc(E_Type.Text);
end;

procedure TOutdocEdit_F.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
// E_ngtd.EditMask:='';
end;

procedure TOutdocEdit_F.E_NgtdEnter(Sender: TObject);
begin
//  if (E_Type.Text='01') or (E_Type.Text='02') then E_ngtd.EditMask:=MyGtdmask;
end;

procedure TOutdocEdit_F.E_NgtdExit(Sender: TObject);
begin
  if (E_Type.Text = '09035' ) or (E_Type.Text = '09013') then
     begin
      E_Dgtd.Date:= StrToDate(DateFromCustDoc(E_Ngtd.Text))
     end;
end;

procedure TOutdocEdit_F.SaveBtnClick(Sender: TObject);
var
 id:Integer;
begin
try
 try
  id:=ZTKOutDocs_F.Qry_ZtkOutDocs.FieldByName('ID').AsInteger;
  DM.SQL.Close;
  Dm.SQL.SQL.Clear;
  DM.SQL.SQL.Add('update out_docs set name=:p0,ndoc=:p1,ddoc=:p2, type_doc=:p3 where id=:p4 ');
  if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction;
  DM.SQL.params[0].AsString:=E_Name.Text;
  DM.SQL.params[1].AsString:=E_Ngtd.Text;
  DM.SQL.params[2].asDate:=E_Dgtd.Date;
  DM.SQL.params[3].AsString:=E_Type.Text;
  DM.SQL.params[4].asinteger:=id;
  DM.SQL.ExecQuery;
  DM.SQL.Transaction.Commit;
  ModalResult:=mrOk;
  ZTKOutDocs_F.Qry_ZtkOutDocs.Close;
  ZTKOutDocs_F.Qry_ZtkOutDocs.Open;
  ZTKOutDocs_F.Qry_ZtkOutDocs.Locate('ID',id,[]);
 except
   on E:Exception do
    begin
       DM.SQL.Transaction.Rollback;
       MessageBox(Application.Handle, PChar(E.Message + #13#10 + Dm.SQL.SQL.Text),
         PChar(Application.Name), MB_ICONERROR);
    end;
 end;
finally
  if DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.Rollback;
end;

end;

end.
