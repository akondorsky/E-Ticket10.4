unit Setting_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask,  ActnList,
  ExtCtrls,DB,IBX.IBQuery, System.Actions;

type
  TFormSet = class(TForm)
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    ActionList1: TActionList;
    Refresh_Settings: TAction;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    E_NextDo: TMaskEdit;
    GroupBox2: TGroupBox;
    Ch_do1_owerwrite: TCheckBox;
    Ch_qry_rec: TCheckBox;
    Ch_rec_newdo: TCheckBox;
    GroupBox3: TGroupBox;
    Ch1_Do3: TCheckBox;
    Ch2_Do3: TCheckBox;
    Ch_Ord715: TCheckBox;
    RG_FmtInOut: TRadioGroup;
    E_NextNpp: TEdit;
    E_NextFaktura: TEdit;
    Rg_BuhDoc: TRadioGroup;
    Rg_ChequeType: TRadioGroup;
    E_NextActWorks: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    E_NextDo2: TEdit;
    procedure FormShow(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure Refresh_SettingsExecute(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSet: TFormSet;
  id_svh:Integer;

implementation

{$R *.dfm}
uses main,dm_u;

procedure TFormSet.FormActivate(Sender: TObject);
begin
  if ROLE = 'ACCOUNTER' then
    begin
      GroupBox1.Enabled:=True;
      E_NextDo.Enabled:=False;
      E_NextNpp.Enabled:=False;
      E_NextDo2.Enabled:=False;
      GroupBox2.Enabled:=False;
      GroupBox3.Enabled:=False;
      RG_FmtInOut.Enabled:=False;
      Rg_BuhDoc.Enabled:=False;
      Rg_ChequeType.Enabled:=False;
      SaveBtn.Enabled:=True;
    end;
  if ROLE = 'SYSADMIN' then
    begin
      GroupBox1.Enabled:=True;
      GroupBox2.Enabled:=True;
      GroupBox3.Enabled:=True;
      RG_FmtInOut.Enabled:=True;
      Rg_BuhDoc.Enabled:=True;
      Rg_ChequeType.Enabled:=True;
      SaveBtn.Enabled:=True;
    end;
end;

procedure TFormSet.FormShow(Sender: TObject);
var
 qry:TIBQuery;
 next_do2:Integer;
begin
  qry := TIBQuery.Create(Self);
  try
    qry.Database:=Dm.DB;
    qry.SQL.Add('select id from svh where status_lic = 1');
    qry.Open;
    id_svh:=qry.Fields[0].AsInteger;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add(' select next_number from do2_numbers where id_lic = :p0 ');
    qry.Params[0].AsInteger:=id_svh;
    qry.Open;
    next_do2:=qry.Fields[0].AsInteger;
    qry.Close;
  finally
    qry.Free;
  end;

  FormSet.Refresh_Settings.Execute;
  E_NextNpp.Text:=DM.Qry_Settings.FieldByName('NEXT_TICKET').AsString;
  E_NextFaktura.Text:=DM.Qry_Settings.FieldByName('NEXT_FAKTURA').AsString;
  E_NextActWorks.Text:=DM.Qry_Settings.FieldByName('NEXT_ACTWORKS').AsString;
  E_NextDo.Text:=DM.Qry_Settings.FieldByName('NEXT_DO1').AsString;
  E_NextDo2.Text:=IntTostr(next_do2);
  case DM.Qry_Settings.FieldByName('BUH_DOC').AsInteger of
     0: Rg_BuhDoc.ItemIndex:=0;
     1: Rg_BuhDoc.ItemIndex:=1;
  end;
  case DM.Qry_Settings.FieldByName('CHEQUE_TYPE').AsInteger of
     0: Rg_ChequeType.ItemIndex:=0;
     1: Rg_ChequeType.ItemIndex:=1;
  end;


  if (ROLE <> 'SYSADMIN')  then
   begin
     GroupBox1.Enabled:=False;
     GroupBox2.Enabled:=False;
   end;
  CancBtn.SetFocus;
//  E_NextNpp.SetFocus;
end;

procedure TFormSet.SaveBtnClick(Sender: TObject);
 var
  s:string;
  n_pr,n_sf,n_actworks:Integer;
begin
  if ROLE = 'SYSADMIN' then
    begin
      s:='update settings set next_ticket = :p0, next_faktura = :p1, next_do1=:p2, ' ;
      s:=s+' buh_doc =:p3, cheque_type =:p4,next_actworks=:p5   ';
    end;
  if ROLE = 'ACCOUNTER' then
    begin
      s:='update settings set next_faktura = :p0,next_actworks=:p1   ';
    end;

 try
 DM.SQL.Close;
 DM.SQL.SQL.Clear;
 DM.SQL.SQL.Add(s);
 if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction; //start tran
 try
  if ROLE = 'SYSADMIN' then
    begin
       n_pr:=StrToInt(E_NextNpp.Text);
       n_sf:=StrToInt(E_NextFaktura.Text);
       n_actworks:=StrToInt(E_NextActWorks.Text);
       DM.SQL.Params[0].AsInteger:=n_pr;
       DM.SQL.Params[1].AsInteger:=n_sf;
       DM.SQL.Params[2].AsString:=E_NextDo.Text;
       case Rg_BuhDoc.ItemIndex of
          0:DM.SQL.Params[3].AsInteger:=0;
          1:DM.SQL.Params[3].AsInteger:=1;
       end;
       case Rg_ChequeType.ItemIndex of
          0:DM.SQL.Params[4].AsInteger:=0;
          1:DM.SQL.Params[4].AsInteger:=1;
       end;
       DM.SQL.Params[5].AsInteger:=n_actworks;
       DM.SQL.ExecQuery;
       DM.Sql.SQL.Clear;
       DM.Sql.SQL.Add('update do2_numbers set next_number = :p0 where id_lic=:p1 ');
       DM.Sql.Params[0].AsInteger:= StrToInt(E_NextDo2.Text);
       DM.Sql.Params[1].AsInteger:= id_svh;
       DM.SQL.ExecQuery;
  end;
  if ROLE = 'ACCOUNTER' then
    begin
       n_sf:=StrToInt(E_NextFaktura.Text);
       n_actworks:=StrToInt(E_NextActWorks.Text);
       DM.SQL.Params[0].AsInteger:=n_sf;
       DM.SQL.Params[1].AsInteger:=n_actworks;
       DM.SQL.ExecQuery;
  end;

     DM.SQL.Transaction.Commit;
     ModalResult:=mrOk;
  except
        on E: EdatabaseError do
          begin
           DM.Sql.Transaction.Rollback;
           ShowMessage(E.Message);
          end;
 end;
finally
  //FormSet.Close;
  Refresh_Settings.Execute;
end;

end;

procedure TFormSet.Refresh_SettingsExecute(Sender: TObject);
begin
  DM.Refresh_Settings;
end;

procedure TFormSet.CancBtnClick(Sender: TObject);
begin
 ModalResult:=mrCancel;
end;

end.
