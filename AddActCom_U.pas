unit AddActCom_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons,DB;

type
  TAddActCom_F = class(TForm)
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
  AddActCom_F: TAddActCom_F;

implementation

{$R *.dfm}
uses dm_u,main;

procedure TAddActCom_F.FormShow(Sender: TObject);
begin
 E_Name.Text:='Коммерчеcкий акт';
 E_NDoc.Clear;
 E_DDoc.Date:=Date;
 E_Fam.Text:= User;
 E_Dolj.Text:= Dolj;
end;

procedure TAddActCom_F.SaveBtnClick(Sender: TObject);
var
 id_do1,n_act:Integer;
 s1,s2:String;
begin
try
  try
     id_do1:=DM.Qry_DoHead.FieldByName('ID').asInteger;
     DM.Qry.Close;
     DM.Qry.SQL.Clear;
     Dm.Qry.SQL.Add('select count(*) from act_com where id_do1=:p0');
     DM.Qry.Params[0].AsInteger:=id_do1;
     DM.Qry.Open;
     n_act:=DM.Qry.Fields[0].AsInteger+1;
     s1:='insert into act_com (name_doc,num_doc,date_doc,id_do1,npp,operator_fam,operator_dolj) ';
     s2:='values (:p0,:p1,:p2,:p3,:p4,:p5,:p6) ';
     Dm.SQL.Close;
     DM.SQL.SQL.Clear;
     DM.SQL.SQL.Add(s1+s2);
     if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction; //start tran
      DM.SQL.Params[0].AsString:=E_Name.Text;
      DM.SQL.Params[1].AsString:=E_NDoc.Text;
      DM.SQL.Params[2].AsDate:=E_DDoc.Date;
      DM.SQL.Params[3].AsInteger:=id_do1;
      DM.SQL.Params[4].AsInteger:=n_act;
      DM.SQL.Params[5].AsString:=E_Fam.Text;
      DM.SQL.Params[6].AsString:=E_Dolj.Text;
      DM.SQL.ExecQuery;
      DM.SQL.Transaction.Commit;
      ModalResult:=mrOk;
      DM.Qry_ActCom.Close;
      DM.Qry_ActCom.Open;
      DM.Qry_ActCom.Last;
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
