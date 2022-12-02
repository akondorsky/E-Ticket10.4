unit Do2Outdoc_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,  Mask, Buttons,Db, ExtCtrls;

type
  TDo2Outdoc_F = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    E_Ngtd: TMaskEdit;
    E_Name: TEdit;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    E_Time: TMaskEdit;
    Label5: TLabel;
    E_Type: TButtonedEdit;
    E_Dgtd: TMaskEdit;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  MyGtdMask:String='00000000\/000000\/0000000;1;_';
var
  Do2Outdoc_F: TDo2Outdoc_F;

implementation

uses dm_u,tdoc_u,myutils;

{$R *.dfm}

procedure TDo2Outdoc_F.E_DgtdEnter(Sender: TObject);
begin
  if (E_Type.Text = '09035' ) or (E_Type.Text = '09013') then
     begin
      E_Dgtd.Text:= DateFromCustDoc(E_Ngtd.Text);
     end;
end;

procedure TDo2Outdoc_F.FormShow(Sender: TObject);
begin
 E_Type.Clear;
 E_Name.Clear;
 E_Ngtd.Clear;
 E_Dgtd.Clear;
 E_Type.SetFocus;
end;

procedure TDo2Outdoc_F.E_TypeKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDo2Outdoc_F.E_TypeRightButtonClick(Sender: TObject);
begin
  if TDoc_F.ShowModal = mrOk then
     begin
      E_Type.Text:=DM.Qry_TDoc.fieldbyName('KOD').asString;
      E_Name.Text:=Dm.Qry_TDoc.FieldByName('KRNAME').asString;
      E_NGtd.SetFocus;
    end;
end;

procedure TDo2Outdoc_F.E_NameKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDo2Outdoc_F.E_NgtdKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDo2Outdoc_F.E_DgtdKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TDo2Outdoc_F.E_TypeChange(Sender: TObject);
begin
 E_Name.Text:=TDoc_F.FindCustDoc(E_Type.Text);
end;

procedure TDo2Outdoc_F.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 E_ngtd.EditMask:='';
end;

procedure TDo2Outdoc_F.E_NgtdEnter(Sender: TObject);
begin
//  if E_Type.Text='01' then E_ngtd.EditMask:=MyGtdmask;
end;

procedure TDo2Outdoc_F.SaveBtnClick(Sender: TObject);
var
 n:Integer;
begin
try
 try
  if DM.Qry.Active then DM.Qry.Close;
  DM.Qry.SQL.Clear;
  DM.Qry.SQL.Add('select count(*) from do_outdocs where id_actwh=:p0 ');
  DM.Qry.Params[0].asinteger:=DM.Qry_WhActOutID.Value;
  DM.Qry.Open;
  n:=DM.Qry.Fields[0].AsInteger+1;
  DM.Qry.Close;
  DM.SQL.Close;
  Dm.SQL.SQL.Clear;
  DM.SQL.SQL.Add('insert into do_outdocs (type_doc,name,ndoc,ddoc,npp,id_actwh) ');
  DM.SQL.SQL.Add('values (:p0,:p1,:p2,:p3,:p4,:p5)');
  if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction;
  DM.SQL.params[0].AsString:=E_Type.Text;
  DM.SQL.params[1].AsString:=E_Name.Text;
  DM.SQL.params[2].AsString:=E_Ngtd.Text;
  DM.SQL.params[3].Value:=E_Dgtd.Text;
  DM.SQL.params[4].Value:=n;
  DM.SQL.params[5].Value:=DM.Qry_WhActOutID.Value;
  DM.SQL.ExecQuery;
  DM.SQL.Transaction.Commit;
  ModalResult:=mrOk;
  DM.Qry_WhDocOut.Close;
  DM.Qry_WhDocOut.Open;
  DM.Qry_WhDocOut.Last;
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

end.
