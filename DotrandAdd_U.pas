unit DotrandAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, Buttons, ExtCtrls,DB;

type
  TDotrandAdd_F = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    E_Name: TEdit;
    Label3: TLabel;
    E_NDoc: TEdit;
    Label4: TLabel;
    E_DDoc: TMaskEdit;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    E_Type: TButtonedEdit;
    procedure E_typeKeyPress(Sender: TObject; var Key: Char);
    procedure E_NameKeyPress(Sender: TObject; var Key: Char);
    procedure E_NDocKeyPress(Sender: TObject; var Key: Char);
    procedure E_DDocKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure E_typeChange(Sender: TObject);
    procedure E_TypeRightButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DotrandAdd_F: TDotrandAdd_F;

implementation

{$R *.dfm}
uses dm_u, Docg44_U, Do1_U;

procedure TDotrandAdd_F.E_typeKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDotrandAdd_F.E_TypeRightButtonClick(Sender: TObject);
begin
   if Docg44_F.ShowModal = mrOk then
     begin
      E_Type.Text:=DM.Qry_DocG44.fieldbyName('KOD').asString;
      E_Name.Text:=Dm.Qry_DocG44.FieldByName('KRNAME').asString;
      E_NDoc.SetFocus;
    end;

end;

procedure TDotrandAdd_F.E_NameKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDotrandAdd_F.E_NDocKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDotrandAdd_F.E_DDocKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDotrandAdd_F.FormShow(Sender: TObject);
begin
E_Type.Clear;
E_Name.Clear;
E_NDoc.Clear;
E_ddoc.Clear;
E_type.SetFocus;
end;

procedure TDotrandAdd_F.CancBtnClick(Sender: TObject);
begin
Modalresult:=mrcancel;
end;

procedure TDotrandAdd_F.SaveBtnClick(Sender: TObject);
var
 id_do1,new_n_td:Integer;
 s1,s2:String;
begin
try
  try
     id_do1:=Do1_F.GridDo1.DataSource.Dataset.FieldByName('ID').asInteger;
     DM.Qry.Close;
     DM.Qry.SQL.Clear;
     Dm.Qry.SQL.Add('select count(*) from do_trand where id_do1=:p0');
     DM.Qry.Params[0].AsInteger:=id_do1;
     DM.Qry.Open;
     New_n_td:=DM.Qry.Fields[0].AsInteger+1;
     s1:='insert into do_trand (type_doc,name,ndoc,ddoc,id_do1,n_td) ';
     s2:='values (:p0,:p1,:p2,:p3,:p4,:p5) ';
     Dm.SQL.Close;
     DM.SQL.SQL.Clear;
     DM.SQL.SQL.Add(s1+s2);
     if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
      DM.sql.Params[0].AsString:=E_Type.Text;
      DM.sql.Params[1].AsString:=E_Name.Text;
      DM.sql.Params[2].AsString:=E_NDoc.Text;
      DM.sql.Params[3].AsDate:=StrToDate(E_DDoc.Text);
      DM.sql.Params[4].AsInteger:=id_do1;
      DM.sql.Params[5].AsInteger:=new_n_td;
      DM.sql.ExecQuery;
      DM.sql.Transaction.Commit;
      ModalResult:=mrOk;
      DM.Qry_DoTrand.Close;
      DM.Qry_DoTrand.Open;
      DM.Qry_DoTrand.Last;
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

procedure TDotrandAdd_F.E_typeChange(Sender: TObject);
begin
 E_Name.Text:=Docg44_F.FindTDoc(E_Type.Text);
end;

end.
