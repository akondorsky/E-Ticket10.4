unit Do2OutdocEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,  Mask, Buttons,Db, ExtCtrls;

type
  TDo2OutdocEdit_F = class(TForm)
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
    Label6: TLabel;
    E_Npp: TEdit;
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
  MyGtdMask:String='00000000\000000\/0000000;1;_';
var
  Do2OutdocEdit_F: TDo2OutdocEdit_F;

implementation

uses dm_u,tdoc_u,myutils,main;

{$R *.dfm}

procedure TDo2OutdocEdit_F.E_DgtdEnter(Sender: TObject);
begin
  if (E_Type.Text = '09035' ) or (E_Type.Text = '09013') then
     begin
      E_Dgtd.Text:= DateFromCustDoc(E_Ngtd.Text);
     end;
end;

procedure TDo2OutdocEdit_F.FormShow(Sender: TObject);
begin
  case OutDoc_Sender of
  // Wh
  0:
    begin
        E_Npp.Text:=DM.Qry_WhDocOut.FieldByName('NPP').asString;
        E_Ngtd.Text:=DM.Qry_WhDocOut.FieldByName('NDOC').asString;
        E_Dgtd.Text:=DM.Qry_WhDocOut.FieldByName('DDOC').asString;
        E_Type.Text:=DM.Qry_WhDocOut.FieldByName('TYPE_DOC').asString;
        E_Name.Text:=DM.Qry_WhDocOut.FieldByName('NAME').asString;

    end;
  // Do2
  1:
    begin
        E_Npp.Text:=DM.Qry_Gtd.FieldByName('NPP').asString;
        E_Ngtd.Text:=DM.Qry_Gtd.FieldByName('NDOC').asString;
        E_Dgtd.Text:=DM.Qry_Gtd.FieldByName('DDOC').asString;
        E_Type.Text:=DM.Qry_Gtd.FieldByName('TYPE_DOC').asString;
        E_Name.Text:=DM.Qry_Gtd.FieldByName('NAME').asString;
    end;
 end;
end;

procedure TDo2OutdocEdit_F.E_TypeKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDo2OutdocEdit_F.E_TypeRightButtonClick(Sender: TObject);
begin
  if TDoc_F.ShowModal = mrOk then
     begin
      E_Type.Text:=DM.Qry_TDoc.fieldbyName('KOD').asString;
      E_Name.Text:=Dm.Qry_TDoc.FieldByName('KRNAME').asString;
      E_NGtd.SetFocus;
    end;
end;

procedure TDo2OutdocEdit_F.E_NameKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDo2OutdocEdit_F.E_NgtdKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDo2OutdocEdit_F.E_DgtdKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TDo2OutdocEdit_F.E_TypeChange(Sender: TObject);
begin
 E_Name.Text:=TDoc_F.FindCustDoc(E_Type.Text);
end;

procedure TDo2OutdocEdit_F.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 E_ngtd.EditMask:='';
end;

procedure TDo2OutdocEdit_F.E_NgtdEnter(Sender: TObject);
begin
 // if E_Type.Text='01' then E_ngtd.EditMask:=MyGtdmask;
end;

procedure TDo2OutdocEdit_F.SaveBtnClick(Sender: TObject);
var
 id_rec:Integer;
begin
try
 try
  if OutDoc_Sender =0 then
     id_rec:=DM.Qry_WhDocOut.FieldByName('ID').AsInteger
    else
     id_rec:=DM.Qry_Gtd.FieldByName('ID').AsInteger;
  DM.SQL.Close;
  Dm.SQL.SQL.Clear;
  DM.SQL.SQL.Add('update do_outdocs set type_doc=:p0,name=:p1, ');
  DM.SQL.SQL.Add('ndoc=:p2,ddoc=:p3,npp=:p4 where id=:p5 ');
  if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction;
  DM.SQL.params[0].AsString:=E_Type.Text;
  DM.SQL.params[1].AsString:=E_Name.Text;
  DM.SQL.params[2].AsString:=E_Ngtd.Text;
  DM.SQL.params[3].Value:=E_Dgtd.Text;
  DM.SQL.params[4].Value:=E_Npp.Text;
  DM.SQL.params[5].Value:=id_rec;
  DM.SQL.ExecQuery;
  DM.SQL.Transaction.Commit;
  ModalResult:=mrOk;
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
