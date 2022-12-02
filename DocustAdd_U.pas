unit DocustAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls,  Buttons, ExtCtrls,DB;

type
  TDocustAdd_F = class(TForm)
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
    procedure E_TypeKeyPress(Sender: TObject; var Key: Char);
    procedure E_NameKeyPress(Sender: TObject; var Key: Char);
    procedure E_NDocKeyPress(Sender: TObject; var Key: Char);
    procedure E_DDocKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure E_TypeChange(Sender: TObject);
    procedure E_TypeRightButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure ClearControls;
  public
    { Public declarations }
  end;

var
  DocustAdd_F: TDocustAdd_F;

implementation

{$R *.dfm}
uses dm_u , Tdoc_U, Do1_U;
procedure TDocustAdd_F.ClearControls;
begin
 E_Type.Clear;
 E_Name.Clear;
 E_NDoc.Clear;
 E_DDoc.Clear;
end;

procedure TDocustAdd_F.E_TypeKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDocustAdd_F.E_TypeRightButtonClick(Sender: TObject);
begin
 if TDoc_F.ShowModal = mrOk  then
     begin
       E_Type.Text:=TDoc_F.DBGridEh1.Datasource.Dataset.FieldByname('KOD').asString;
       E_Name.Text:=TDoc_F.DBGridEh1.Datasource.Dataset.FieldByName('KRNAME').asString;
       E_NDoc.SetFocus;
     end;

end;

procedure TDocustAdd_F.E_NameKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDocustAdd_F.E_NDocKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDocustAdd_F.E_DDocKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDocustAdd_F.FormShow(Sender: TObject);
begin
ClearControls;
E_Type.SetFocus;
end;

procedure TDocustAdd_F.CancBtnClick(Sender: TObject);
begin
Modalresult:=mrcancel;
end;

procedure TDocustAdd_F.SaveBtnClick(Sender: TObject);
var
 New_Td:Integer;
 s1,s2:String;
begin
try
  try
{   DM.Qry.Close;
   DM.Qry.SQL.Clear;
   Dm.Qry.SQL.Add('select count(*) from do_cust where id_do1=:p0');
   DM.Qry.Params[0].AsInteger:=Do1_F.GridDo1.DataSource.Dataset.FieldByName('ID').asInteger;
   DM.Qry.Open;
   New_Td:=DM.Qry.Fields[0].AsInteger+1;}
   s1:='insert into do_cust (type_doc,name,n_doc,d_doc,id_do1) ';
   s2:='values (:p0,:p1,:p2,:p3,:p4) ';
   Dm.sql.Close;
   DM.sql.SQL.Clear;
   DM.sql.SQL.Add(s1+s2);
   if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
//    DM.sql.Params[0].AsInteger:=New_td;
    DM.sql.Params[0].AsString:=E_Type.Text;
    DM.sql.Params[1].AsString:=E_Name.Text;
    DM.sql.Params[2].AsString:=E_NDoc.Text;
    DM.sql.Params[3].AsDate:=StrToDate(E_DDoc.Text);
    DM.sql.Params[4].AsInteger:=Do1_F.GridDo1.DataSource.DataSet.FieldByName('ID').AsInteger;
    DM.sql.ExecQuery;
    DM.sql.Transaction.Commit;
    ModalResult:=mrOk;
    DM.Qry_DoCust.Close;
    DM.Qry_DoCust.Open;
    DM.Qry_DoCust.Last;
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

procedure TDocustAdd_F.E_TypeChange(Sender: TObject);
begin
 E_Name.Text:=TDoc_F.FindCustDoc(E_Type.Text);
end;

end.
