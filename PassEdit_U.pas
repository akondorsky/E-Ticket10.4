unit PassEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh, DB, IBX.IBCustomDataSet, IBX.IBQuery, StdCtrls, ActnList,
  PlatformDefaultStyleActnCtrls, ActnMan, Buttons, ExtCtrls, Mask;

type
  TPassEdit_F = class(TForm)
    E_Trailer: TComboBox;
    Lbl_KT: TLabel;
    E_KT: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Rg1: TRadioGroup;
    E_Ztk: TEdit;
    Label3: TLabel;
    E_Ts: TComboBox;
    Gb_Dov: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    E_DDoc: TMaskEdit;
    E_NDov: TEdit;
    Label6: TLabel;
    E_Fio: TEdit;
    procedure FormShow(Sender: TObject);
    procedure Rg1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PassEdit_F: TPassEdit_F;

implementation

{$R *.dfm}
uses dm_u,main, Reports_U,Pass_U;


procedure TPassEdit_F.BitBtn1Click(Sender: TObject);
var
  id_rec:Integer;
begin
    id_rec:=DM.Qry_GurTsOut.FieldByName('ID').AsInteger;
  try
    try
       if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
       DM.Sql.Close;
       DM.Sql.SQL.Clear;
       if Rg1.ItemIndex = 0  then
           begin
             DM.Sql.sql.Add(' update ts_out set n_ts=:p0,n_trailer=:p1,dover=:p2,date_dover=:p3,type_pass=:p4 where id=:p5 ');
             DM.Sql.Params[0].AsString:=E_TS.Text;
             DM.Sql.Params[1].AsString:=E_Trailer.Text;
             DM.Sql.Params[2].AsVariant:=null;
             DM.Sql.Params[3].AsVariant:=null;
             DM.Sql.Params[4].AsInteger:=0;
             DM.Sql.Params[5].AsInteger:=id_rec;
           end
          else
           begin
             DM.Sql.sql.Add(' update ts_out set dover=:p0,date_dover=:p1,n_ts=:p2,n_trailer=:p3,type_pass=:p4,fio=:p5 where id=:p6 ');
             DM.Sql.Params[0].AsString:=E_NDov.Text;
             DM.Sql.Params[1].AsDate:=StrToDate(E_DDoc.Text);
             DM.Sql.Params[2].AsString:='оеьеунд';
             DM.Sql.Params[3].AsVariant:=null;
             DM.Sql.Params[4].AsInteger:=1;
             DM.Sql.Params[5].AsString:=E_Fio.Text;
             DM.Sql.Params[6].AsInteger:=id_rec;
           end;


       DM.Sql.ExecQuery;
       DM.Sql.Transaction.Commit;
       ModalResult:=mrOk;
       DM.Qry_GurTsOut.Close;
       DM.Qry_GurTsOut.Open;
       DM.Qry_GurTsOut.Locate('ID',id_rec,[]);
    except
        on E: EdatabaseError do
          begin
           DM.Sql.Transaction.Rollback;
           ShowMessage(E.Message);
          end;
    end;
   finally
    if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.RollBack;
  end;
end;

procedure TPassEdit_F.FormShow(Sender: TObject);
begin
  if DM.Qry_GurTsOut.FieldByName('TYPE_PASS').AsInteger = 0 then
    begin
      Rg1.ItemIndex:=0;
      E_KT.Text:=DM.Qry_GurTsOut.FieldByName('N_TICKET').AsString;
      E_Ts.Text:=DM.Qry_GurTsOut.FieldByName('N_TS').AsString;
      E_Trailer.Text:=DM.Qry_GurTsOut.FieldByName('N_TRAILER').AsString;
      E_Ztk.Text:=DM.Qry_GurTsOut.FieldByName('N_ZTK').AsString;
    end
   else
    begin
      Rg1.ItemIndex:=1;
      E_NDov.Text:=DM.Qry_GurTsOut.FieldByName('DOVER').AsString;
      E_DDoc.Text:=DM.Qry_GurTsOut.FieldByName('DATE_DOVER').AsString;
      E_Fio.Text:=DM.Qry_GurTsOut.FieldByName('FIO').AsString;
    end;

end;

procedure TPassEdit_F.Rg1Click(Sender: TObject);
begin
 case Rg1.ItemIndex of
 0: begin
      E_TS.Enabled:=True;
      E_Trailer.Enabled:=True;
      E_NDov.Clear;
      E_DDoc.Clear;
      Gb_Dov.Enabled:=False;
    end;

 1: begin
      E_TS.Clear;
      E_Trailer.Clear;
      E_TS.Enabled:=False;
      E_Trailer.Enabled:=False;
      Gb_Dov.Enabled:=True;
    end;
 end;
end;

end.
