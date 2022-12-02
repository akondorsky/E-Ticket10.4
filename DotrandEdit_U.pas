unit DotrandEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls,  Buttons, ExtCtrls,DB;

type
  TDotrandEdit_F = class(TForm)
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    E_Name: TEdit;
    E_NDoc: TEdit;
    E_DDoc: TMaskEdit;
    E_Type: TButtonedEdit;
    procedure E_VidtransKeyPress(Sender: TObject; var Key: Char);
    procedure E_NtransKeyPress(Sender: TObject; var Key: Char);
    procedure E_NatdKeyPress(Sender: TObject; var Key: Char);
    procedure E_DatdKeyPress(Sender: TObject; var Key: Char);
    procedure E_VidtransButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure E_DDocKeyPress(Sender: TObject; var Key: Char);
    procedure E_typeKeyPress(Sender: TObject; var Key: Char);
    procedure E_NameKeyPress(Sender: TObject; var Key: Char);
    procedure E_NDocKeyPress(Sender: TObject; var Key: Char);
    procedure E_TypeChange(Sender: TObject);
    procedure E_TypeRightButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure GetValues;
  public
    { Public declarations }
  end;

var
  DotrandEdit_F: TDotrandEdit_F;

implementation

{$R *.dfm}
uses dm_u, Docg44_U;
procedure TDotrandEdit_F.GetValues;
begin
    E_Type.Text:=DM.Qry_DoTrand.FieldByname('TYPE_DOC').AsString;
    E_Name.Text:=DM.Qry_DoTrand.FieldByname('NAME').AsString;
    E_NDoc.Text:=DM.Qry_DoTrand.FieldByname('NDOC').AsString;
    E_Ddoc.Text:=DateToStr(DM.Qry_DoTrand.FieldByname('DDOC').AsDateTime);
end;


procedure TDotrandEdit_F.E_VidtransKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDotrandEdit_F.E_NtransKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDotrandEdit_F.E_NatdKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDotrandEdit_F.E_DatdKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDotrandEdit_F.E_VidtransButtonClick(Sender: TObject);
begin
  if Docg44_F.ShowModal = mrOk then
     begin
      E_Type.Text:=DM.Qry_DocG44.fieldbyName('KOD').asString;
      E_Name.Text:=Dm.Qry_DocG44.FieldByName('KRNAME').asString;
      E_NDoc.SetFocus;
    end;

end;

procedure TDotrandEdit_F.FormShow(Sender: TObject);
begin
GetValues;
E_Type.SetFocus;
end;

procedure TDotrandEdit_F.CancBtnClick(Sender: TObject);
begin
Modalresult:=mrcancel;
end;

procedure TDotrandEdit_F.SaveBtnClick(Sender: TObject);
var
 N_Rec:Integer;
 s1,s2:String;
begin
 try
  try
     N_Rec:=DM.Qry_DoTrand.FieldByName('Id').AsInteger;
     s1:='update do_trand set type_doc=:p0,name=:p1,ndoc=:p2,ddoc=:p3';
     s2:=' where id=:p4 ';
     Dm.SQL.Close;
     DM.SQL.SQL.Clear;
     DM.SQL.SQL.Add(s1+s2);
     if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
      DM.sql.Params[0].AsString:=E_Type.Text;
      DM.sql.Params[1].AsString:=E_Name.Text;
      DM.sql.Params[2].AsString:=E_NDoc.Text;
      DM.sql.Params[3].AsDate:=StrToDate(E_DDoc.Text);
      DM.sql.Params[4].AsInteger:=N_Rec;
      DM.sql.ExecQuery;
      DM.sql.Transaction.Commit;
      ModalResult:=mrOk;
      DM.Qry_DoTrand.Close;
      DM.Qry_DoTrand.Open;
      DM.Qry_DoCust.Locate('id',n_rec,[]);
      except
        on E: EdatabaseError do
          begin
           DM.Sql.Transaction.Rollback;
           ShowMessage(E.Message);
          end;
     end;
 finally
   if DM.sql.Transaction.InTransaction then DM.sql.Transaction.Rollback;
 end;


end;

procedure TDotrandEdit_F.E_DDocKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDotrandEdit_F.E_typeKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDotrandEdit_F.E_TypeRightButtonClick(Sender: TObject);
begin
  if Docg44_F.ShowModal = mrOk then
     begin
      E_Type.Text:=DM.Qry_DocG44.fieldbyName('KOD').asString;
      E_Name.Text:=Dm.Qry_DocG44.FieldByName('KRNAME').asString;
      E_NDoc.SetFocus;
    end;

end;

procedure TDotrandEdit_F.E_NameKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDotrandEdit_F.E_NDocKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDotrandEdit_F.E_TypeChange(Sender: TObject);
begin
 E_Name.Text:=Docg44_F.FindTDoc(E_Type.Text);
end;

end.
