unit ActWhInEditSimple_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,DB, ExtCtrls, Mask, DBCtrlsEh;

type
  TActWhInEditSimple_F = class(TForm)
    Label1: TLabel;
    E_NTp: TEdit;
    Label2: TLabel;
    E_Goods: TEdit;
    Label3: TLabel;
    E_Srok: TEdit;
    Label4: TLabel;
    E_Nts: TEdit;
    Label5: TLabel;
    E_Plombs: TEdit;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    E_NPlFact: TEdit;
    E_NplDoc: TEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    LabelWeightDoc: TLabel;
    Label9: TLabel;
    M_Note: TMemo;
    Bt_Save: TBitBtn;
    Bt_Cancel: TBitBtn;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    E_Fio: TEdit;
    E_Dolj: TEdit;
    Label12: TLabel;
    E_SVhNumbers: TButtonedEdit;
    Rg_Cbx: TRadioGroup;
    E_WeightFact: TDBNumberEditEh;
    E_WeightDoc: TDBNumberEditEh;
    procedure E_WeightFactChange(Sender: TObject);
    procedure E_WeightDocChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Bt_SaveClick(Sender: TObject);
    procedure E_SVhNumbersRightButtonClick(Sender: TObject);
    procedure E_SVhNumbersChange(Sender: TObject);
  private
    { Private declarations }
    ChangePlaceFlag:Boolean;
    procedure GetValues;
  public
    { Public declarations }
  end;

var
  ActWhInEditSimple_F: TActWhInEditSimple_F;

implementation

uses Warehouse_U,main,dm_u,ClosedCbxPlaces_U,ParkCbx_U;

{$R *.dfm}

procedure TActWhInEditSimple_F.Bt_SaveClick(Sender: TObject);
var
 pms:TMemoryStream;
 id_rec:Integer;
begin
try
 try
    pms:=TMemoryStream.Create;
    id_rec:=Warehouse_F.Grid_ActIn.DataSource.DataSet.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update wh_act_in set places_kol_doc=:p0,places_kol_fact=:p1,weight_doc=:p2,weight_fact=:p3,plombs=:p4, ');
    DM.Sql.SQL.Add('note=:p5,client_name=:p6,client_dolj=:p7,keeper_name=:p8,srok=:p9 where id=:p10  ');
    DM.Sql.Params[0].AsInteger:=StrToInt(E_NplDoc.Text);
    DM.Sql.Params[1].AsInteger:=StrToInt(E_NPlFact.Text);
    DM.Sql.Params[2].AsDouble:=StrToFloat(E_WeightDoc.Text);
    DM.Sql.Params[3].AsDouble:=StrToFloat(E_WeightFact.Text);
    DM.Sql.Params[4].AsString:=E_Plombs.Text;
    M_Note.Lines.SaveToStream(pms);
    DM.Sql.Params[5].LoadFromStream(pms);
    DM.Sql.Params[6].AsString:=E_Fio.Text;
    DM.Sql.Params[7].AsString:=E_Dolj.Text;
    DM.Sql.Params[8].AsString:=User;
    DM.Sql.Params[9].AsInteger:=StrToInt(E_Srok.text);
    DM.Sql.Params[10].AsInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    ModalResult:=mrOk;
    Warehouse_F.Grid_ActIn.DataSource.DataSet.Close;
    Warehouse_F.Grid_ActIn.DataSource.DataSet.Open;
  except
    on E: EdatabaseError do
      begin
       //DM.Sql.Transaction.Rollback;
       ShowMessage(E.Message);
      end;
  end;
finally
  pms.Free;
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

procedure TActWhInEditSimple_F.E_SVhNumbersChange(Sender: TObject);
begin
 ChangePlaceFlag:=True;
end;

procedure TActWhInEditSimple_F.E_SVhNumbersRightButtonClick(Sender: TObject);
begin
 Case Rg_Cbx.ItemIndex of
   0:if FormParkCbx.ShowModal = mrOk then
      begin
        E_SVhNumbers.Text:=FormParkCbx.PARKNUMBER;
      end;
   1:if ClosedCbxPlaces_F.ShowModal=mrOk then
      begin
       E_SVhNumbers.Text:=ClosedCbxPlaces_F.SelectedPlaces;
      end;
 End;
end;

procedure TActWhInEditSimple_F.E_WeightDocChange(Sender: TObject);
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

procedure TActWhInEditSimple_F.E_WeightFactChange(Sender: TObject);
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

procedure TActWhInEditSimple_F.FormShow(Sender: TObject);
begin
 ChangePlaceFlag:=false;
 GetValues;
end;

procedure TActWhInEditSimple_F.GetValues;
begin
  E_NTp.Text:=Warehouse_F.Grid_ActIn.DataSource.DataSet.FieldByName('NOMER_TP').AsString;
  E_SVhNumbers.Text:=Warehouse_F.Grid_ActIn.DataSource.DataSet.FieldByName('PLACE_NUM').AsString;
  E_Nts.Text:=Warehouse_F.Grid_ActIn.DataSource.DataSet.FieldByName('N_TS').AsString;
  E_Goods.Text:=Warehouse_F.Grid_ActIn.DataSource.DataSet.FieldByName('GOODS_NAME').AsString;
  E_Srok.Text:=Warehouse_F.Grid_ActIn.DataSource.DataSet.FieldByName('SROK').AsString;
  E_Plombs.Text:=Warehouse_F.Grid_ActIn.DataSource.DataSet.FieldByName('PLOMBS').AsString;
  M_Note.Lines.Assign(Warehouse_F.Grid_ActIn.DataSource.DataSet.FieldByName('NOTE'));
  E_NplDoc.Text:=Warehouse_F.Grid_ActIn.DataSource.DataSet.FieldByName('PLACES_KOL_DOC').AsString;
  E_NPlFact.Text:=Warehouse_F.Grid_ActIn.DataSource.DataSet.FieldByName('PLACES_KOL_FACT').AsString;
  E_WeightDoc.Text:=Warehouse_F.Grid_ActIn.DataSource.DataSet.FieldByName('WEIGHT_DOC').AsString;
  E_WeightFact.Text:=Warehouse_F.Grid_ActIn.DataSource.DataSet.FieldByName('WEIGHT_FACT').AsString;
  E_Fio.Text:=Warehouse_F.Grid_ActIn.DataSource.DataSet.FieldByName('CLIENT_NAME').AsString;
  E_Dolj.Text:=Warehouse_F.Grid_ActIn.DataSource.DataSet.FieldByName('CLIENT_DOLJ').AsString;
  if Warehouse_F.Grid_ActIn.DataSource.DataSet.FieldByName('WH_TYPE').AsString = OCBX then
    Rg_Cbx.ItemIndex:=0
   else
    Rg_Cbx.ItemIndex:=1;
end;

end.
