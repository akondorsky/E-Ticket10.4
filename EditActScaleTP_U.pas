unit EditActScaleTP_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,db, Mask, DBCtrlsEh;

type
  TEditActScaleTP_F = class(TForm)
    Label1: TLabel;
    Label7: TLabel;
    E_Ticket: TEdit;
    Bt_Save: TBitBtn;
    Bt_Cancel: TBitBtn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    E_NTs: TEdit;
    E_Driver: TEdit;
    E_Places: TEdit;
    E_Packing: TComboBox;
    E_User: TEdit;
    E_Weight: TDBNumberEditEh;
    procedure FormShow(Sender: TObject);
    procedure E_WeightChange(Sender: TObject);
    procedure Bt_SaveClick(Sender: TObject);
  private
    { Private declarations }
    procedure GetValues;
  public
    { Public declarations }
  end;

var
  EditActScaleTP_F: TEditActScaleTP_F;

implementation

{$R *.dfm}
uses main,dm_u,scalingtp_u;



procedure TEditActScaleTP_F.Bt_SaveClick(Sender: TObject);
var
 Code,id_act:Integer;
 f:Double;
begin
try
 try
    id_act:=ScalingTP_F.Grid_Act.DataSource.DataSet.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update act_of_scales set brutto=:p0, places=:p1, packing=:p2, username=:p3 where id=:p4 ');
    DM.Sql.Params[0].AsVariant:=E_Weight.Value;
    DM.Sql.Params[1].AsInteger:=StrToInt(E_Places.Text);
    DM.Sql.Params[2].AsString :=E_Packing.Text;
    DM.Sql.Params[3].AsString :=E_User.Text;
    DM.Sql.Params[4].AsInteger:=id_act;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    ModalResult:=mrOk;
    DM.Qry_ActScales.Close;
    DM.Qry_ActScales.Open;
  except
    on E: EdatabaseError do
      begin
       DM.Sql.Transaction.Rollback;
       ShowMessage(E.Message);
      end;
  end;
finally
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

procedure TEditActScaleTP_F.E_WeightChange(Sender: TObject);
var
i : integer;
c : char;
s : string;
begin
// ğåçóëüòèğóşùàÿ ñòğîêà:
s := '';
// ïğîõîäèì ïî âñåì ñèìâîëàì èñõîäíîé ñòğîêè:
for i:=1 to Length((Sender as Tedit).Text) do
  begin
    // áåğåì òåêóùèé ñèìâîë:
    c :=(Sender as Tedit).Text[i];
    // Ïğîâåğÿåì åãî íà ïğèíàäëåæíîñòü ê öèôğàì:
    if (c >= '0') and (c <= '9') then s := s + c;
    // Èëè çíàêàì 'òî÷êà' èëè 'çàïÿòàÿ':
    if c = CurDecSep then s := s + c;
  end;
// Ïğèñâàåâàåì ïîëş ğåçóëüòèğóşùóş ñòğîêó:
(Sender as Tedit).Text := s;
(Sender as Tedit).SelStart:=Length(s);
(Sender as Tedit).SelLength:=0;
end;

procedure TEditActScaleTP_F.FormShow(Sender: TObject);
begin
  GetValues;
end;

procedure TEditActScaleTP_F.GetValues;
begin
  E_Ticket.Text:=ScalingTP_F.Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('N_PART').AsString;
  if not ScalingTP_F.Grid_Act.DataSource.DataSet.FieldByName('ID_TS').IsNull then
    begin
      E_NTs.Text:=ScalingTP_F.Grid_ts.DataSource.DataSet.FieldByName('N_TS').AsString;
      E_Driver.Text:=ScalingTP_F.Grid_ts.DataSource.DataSet.FieldByName('FIO_DRIVER').AsString;
    end;
  E_Weight.Text:=ScalingTP_F.Grid_Act.DataSource.DataSet.FieldByName('BRUTTO').AsString;
  E_Places.Text:=ScalingTP_F.Grid_Act.DataSource.DataSet.FieldByName('PLACES').AsString;
  E_Packing.Text:=ScalingTP_F.Grid_Act.DataSource.DataSet.FieldByName('PACKING').AsString;
  E_User.Text:=User;
  E_Weight.SetFocus;
end;

end.
