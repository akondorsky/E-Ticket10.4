unit EditActCom_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons;

type
  TEditActCom_F = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    E_Name: TEdit;
    E_NDoc: TEdit;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    E_DDoc: TDateTimePicker;
    Label1: TLabel;
    Label5: TLabel;
    E_Fam: TEdit;
    E_Dolj: TEdit;
    procedure FormShow(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EditActCom_F: TEditActCom_F;

implementation

{$R *.dfm}
uses dm_u, DB;

procedure TEditActCom_F.FormShow(Sender: TObject);
begin
 E_Name.Text:=Dm.Qry_ActCom.FieldByName('NAME_DOC').AsString;
 E_NDoc.Text:=Dm.Qry_ActCom.FieldByName('NUM_DOC').AsString;
 E_DDoc.Date:=Dm.Qry_ActCom.FieldByName('DATE_DOC').AsDateTime;
 E_Fam.Text:= Dm.Qry_ActCom.FieldByName('OPERATOR_FAM').AsString;
 E_Dolj.Text:= Dm.Qry_ActCom.FieldByName('OPERATOR_DOLJ').AsString;
 E_Name.SetFocus;
end;

procedure TEditActCom_F.SaveBtnClick(Sender: TObject);
var
 id_rec:Integer;
 s1:String;
begin
try
  try
     id_rec:=DM.Qry_ActCom.FieldByName('ID').asInteger;
     s1:='update act_com set name_doc=:p0,num_doc=:p1,date_doc=:p2, ';
     s1:=s1 +' operator_fam=:p3, operator_dolj=:p4  where id=:p5  ';
     Dm.SQL.Close;
     DM.SQL.SQL.Clear;
     DM.SQL.SQL.Add(s1);
     if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction; //start tran
      DM.SQL.Params[0].AsString:=E_Name.Text;
      DM.SQL.Params[1].AsString:=E_NDoc.Text;
      DM.SQL.Params[2].AsDate:=E_DDoc.Date;
      DM.SQL.Params[3].AsString:=E_Fam.Text;
      DM.SQL.Params[4].AsString:=E_Dolj.Text;
      DM.SQL.Params[5].AsInteger:=id_rec;
      DM.SQL.ExecQuery;
      DM.SQL.Transaction.Commit;
      ModalResult:=mrOk;
      DM.Qry_ActCom.Close;
      DM.Qry_ActCom.Open;
      DM.Qry_ActCom.Locate('ID',id_rec,[]);
      except
        on E: EdatabaseError do
          begin
           DM.SQL.Transaction.Rollback;
           ShowMessage(E.Message);
          end;
     end;
 finally
   if DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.Rollback;
 end;
end;

end.
