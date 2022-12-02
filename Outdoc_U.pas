unit Outdoc_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,  Mask, Buttons,Db, ExtCtrls, ComCtrls;

type
  TOutdoc_F = class(TForm)
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
  Outdoc_F: TOutdoc_F;

implementation

uses dm_u,tdoc_u,myutils, Ztkoutdocs_U;

{$R *.dfm}

procedure TOutdoc_F.E_DgtdEnter(Sender: TObject);
var
 s,s1:String;
begin
{ s1:=Copy(DateToStr(Date),7,2);
 s:=Copy(E_ngtd.Text,10,6);
 Insert(s1,s,5);
 Insert(DateSeparator,s,3);
 Insert(DateSeparator,s,6);
 E_Dgtd.Text:=s;}
end;

procedure TOutdoc_F.FormShow(Sender: TObject);
begin
 //E_Type.Clear;
 E_Name.Clear;
 E_Ngtd.Clear;
 E_Dgtd.Date:=date;
 //E_Type.SetFocus;
end;

procedure TOutdoc_F.E_TypeKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TOutdoc_F.E_TypeRightButtonClick(Sender: TObject);
begin
  if TDoc_F.ShowModal = mrOk then
     begin
      E_Type.Text:=DM.Qry_TDoc.fieldbyName('KOD').asString;
      E_Name.Text:=Dm.Qry_TDoc.FieldByName('KRNAME').asString;
      E_NGtd.SetFocus;
    end;
end;

procedure TOutdoc_F.E_NameKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TOutdoc_F.E_NgtdKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TOutdoc_F.E_DgtdKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TOutdoc_F.E_TypeChange(Sender: TObject);
begin
 E_Name.Text:=TDoc_F.FindCustDoc(E_Type.Text);
end;

procedure TOutdoc_F.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 E_ngtd.EditMask:='';
end;

procedure TOutdoc_F.E_NgtdEnter(Sender: TObject);
begin
//  if (E_Type.Text='01') or (E_Type.Text='02') then E_ngtd.EditMask:=MyGtdmask;
end;

procedure TOutdoc_F.E_NgtdExit(Sender: TObject);
begin
  if (E_Type.Text = '09035' ) or (E_Type.Text = '09013') then
     begin
      E_Dgtd.Date:= StrToDate(DateFromCustDoc(E_Ngtd.Text))
     end;
end;

procedure TOutdoc_F.SaveBtnClick(Sender: TObject);
var
 id_tp:Integer;
begin
try
 try
  id_tp:=DM.Qry_TP.FieldByName('ID').AsInteger;
  DM.SQL.Close;
  Dm.SQL.SQL.Clear;
  DM.SQL.SQL.Add('insert into out_docs (name,ndoc,ddoc,id_tp,type_doc) ');
  DM.SQL.SQL.Add('values (:p0,:p1,:p2,:p3,:p4)');
  if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction;
  DM.SQL.params[0].AsString:=E_Name.Text;
  DM.SQL.params[1].AsString:=E_Ngtd.Text;
  DM.SQL.params[2].AsDate:=E_Dgtd.Date;
  DM.SQL.params[3].Value:=id_tp;
  DM.SQL.params[4].AsString:=E_Type.Text;
  DM.SQL.ExecQuery;
  DM.SQL.Transaction.Commit;
  ModalResult:=mrOk;
  ZTKOutDocs_F.Qry_ztkOutDocs.Close;
  ZTKOutDocs_F.Qry_ZtkOutDocs.Open;
  ZTKOutDocs_F.Qry_ZtkOutDocs.Last;
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
