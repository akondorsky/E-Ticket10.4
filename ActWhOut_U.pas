unit ActWhOut_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons,StrUtils,Db, DBGridEhGrouping, GridsEh,
  DBGridEh, Menus, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh,IBX.IbQuery,
  Mask, DBCtrlsEh, MemTableDataEh, DBCtrls, MemTableEh, EhLibVCL, Vcl.ComCtrls;

type
  TActWhOut_F = class(TForm)
    Label1: TLabel;
    E_NSvid: TEdit;
    GroupBox1: TGroupBox;
    E_NPlFact: TEdit;
    Label7: TLabel;
    Label9: TLabel;
    M_Note: TMemo;
    Bt_Save: TBitBtn;
    Bt_Cancel: TBitBtn;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    E_Fio: TEdit;
    Label6: TLabel;
    Grid_GTD: TDBGridEh;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    E_KeeperDolj: TEdit;
    PopMn_Gtd: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    E_Dolj: TComboBox;
    E_KeeperName: TComboBox;
    E_WeightFact: TDBNumberEditEh;
    Mt1: TMemTableEh;
    Ds1: TDataSource;
    DBNavigator1: TDBNavigator;
    E_Dt: TDBDateTimeEditEh;
    procedure FormShow(Sender: TObject);
    procedure Bt_SaveClick(Sender: TObject);
    procedure E_WeightFactChange(Sender: TObject);
    procedure E_WeightDocChange(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Bt_CancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure GetValues;
  public
    { Public declarations }
  end;

var
  ActWhOut_F: TActWhOut_F;

implementation

uses Warehouse_U,main,dm_u, ClosedCbxPlaces_U, ParkCbx_U,ParkZtk_U, EditDo_U,
  Do1_U, Do2Outdoc_U, Do2OutdocEdit_U;

{$R *.dfm}

procedure TActWhOut_F.Bt_CancelClick(Sender: TObject);
begin
 ModalResult:=mrCancel;
end;

procedure TActWhOut_F.Bt_SaveClick(Sender: TObject);
 var
 id_rec,id_tp,send_write_off,id_act:Integer;
 S:String;
 ms:TmemoryStream;
begin
id_act:=DM.Qry_WhActOut.FieldByName('ID').AsInteger;
DM.Qry.Close;
DM.Qry.SQL.Clear;
DM.Qry.SQL.Add(' select count (id) from do_outdocs where id_actwh = :p0 ');
DM.Qry.Params[0].AsInteger := id_act;
DM.qry.Open;
if DM.Qry.Fields[0].AsInteger =0   then
    begin
      Application.MessageBox('Îòñóòñòâóşò äîêóìåíòû âûïóñêà','Âíèìàíèå',MB_ICONWARNING+MB_OK);
      ModalResult:=mrNone;
      Exit;
    end;
try
 try
   ms:=TMemoryStream.Create;
   id_rec:=DM.Qry_WhActOut.FieldByName('ID').AsInteger;
   id_tp:=DM.Qry_Warehouse.FieldByName('ID').AsInteger;
   send_write_off:=DM.Qry_Warehouse.FieldByName('SEND_WRITE_OFF').AsInteger;
   DM.Qry.Close;
   s:='update wh_act_out set places_kol=:p0,weight=:p1,client_name=:p2, ';
   s:=s+' client_dolj=:p3,keeper_name=:p4,keeper_dolj=:p5,note=:p6,dt=:p7,cbxtocbx = :p8 where id=:p9 ';
   Dm.SQL.Close;
   DM.SQL.SQL.Clear;
   DM.SQL.SQL.Add(s);
   if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
   DM.sql.Params[0].AsInteger:=StrToInt(E_NPlFact.Text);
   DM.sql.Params[1].AsDouble:=StrToFloat(E_WeightFact.Text);
   DM.SQL.Params[2].AsString:=E_Fio.Text;
   DM.SQL.Params[3].AsString:=E_Dolj.Text;
   DM.SQL.Params[4].AsString:=E_KeeperName.Text;
   DM.SQL.Params[5].AsString:=E_KeeperDolj.Text;
   M_Note.Lines.SaveToStream(ms);
   DM.SQL.Params[6].LoadFromStream(ms);
   DM.SQL.Params[7].Value:=E_Dt.Value;
   if Warehouse_F.CbxToCbx then DM.SQL.Params[8].AsInteger:=1 else DM.Sql.Params[8].AsInteger:= 0 ;
   DM.SQL.Params[9].AsInteger:=id_rec;
   DM.sql.ExecQuery;
 {  Dm.SQL.Close;
   DM.SQL.SQL.Clear;
   DM.SQL.SQL.Add(' update parties set send_write_off=:p0, tp_move_cbx_code = :p1 where id=:p2 ');
   DM.sql.Params[0].AsVariant:=Null;
   if send_write_off = FULL_WRITE_OFF  then
      DM.Sql.Params[1].AsInteger:=TP_WROTED_OFF
     else
      DM.Sql.Params[1].AsInteger:=TP_OUT_CBX;
   DM.Sql.Params[2].AsInteger:=id_tp;
   DM.sql.ExecQuery;}
   DM.sql.Transaction.Commit;
   ModalResult:=mrOk;
   //ActWhOut_F.Close;
   DM.Refresh_WhActOut;
    except
      on E: EdatabaseError do
        begin
         DM.Sql.Transaction.Rollback;
         ShowMessage(E.Message);
        end;
   end;
 finally
   ms.Free;
   if DM.sql.Transaction.InTransaction then DM.sql.Transaction.Rollback;
 end;
end;

procedure TActWhOut_F.E_WeightDocChange(Sender: TObject);
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

procedure TActWhOut_F.E_WeightFactChange(Sender: TObject);
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

procedure TActWhOut_F.FormCreate(Sender: TObject);
begin
{ MT1.FieldDefs.Add('NPP',ftInteger);
 MT1.FieldDefs.Add('TYPE_DOC',ftString,2);
 MT1.FieldDefs.Add('NAME',ftString,30);
 MT1.FieldDefs.Add('NDOC',ftString,30);
 MT1.FieldDefs.Add('DDOC',ftDate);
 MT1.CreateDataSet;
 Grid_Gtd.Columns[0].FieldName:='NPP';
 Grid_Gtd.Columns[1].FieldName:='TYPE_DOC';
 Grid_Gtd.Columns[1].FieldName:='DDOC';
 Grid_Gtd.Columns[0].Title.Caption:='Íîìåğ íàêëàäíîé';
 Grid_Gtd.Columns[1].Title.Caption:='Äàòà íàêëàäíîé';}
end;

procedure TActWhOut_F.FormShow(Sender: TObject);
var
  qry:TIbQuery;
begin
  try
    qry:=TIBQuery.Create(Self);
    qry.Database:=DM.DB;
    qry.SQL.Add(format('select fio from users where working = 1 and role = %sWHOPERATOR%s order by fio',[#39,#39]));
    qry.Open;
    qry.First;
    E_KeeperName.Clear;
    while not qry.Eof do
      begin
        E_KeeperName.Items.Add(qry.Fields[0].AsString);
        qry.Next;
      end;
  finally
    qry.Free;
  end;

  GetValues;

end;

procedure TActWhOut_F.GetValues;
var
 ms:TMemoryStream;
begin
 try
  ms:=TMemoryStream.Create;
  Dm.Qry_WhActOutNOTE.SaveToStream(ms);
  M_Note.Lines.LoadFromStream(ms);
  E_NSvid.Text:=Dm.Qry_WhActIn.FieldByName('SIGN_NUMBER').asstring;
  E_Dt.Value:=Now;
  E_NPlFact.Text:=DM.Qry_WhActOutPLACES_KOL.AsString;
  E_WeightFact.Text:=DM.Qry_WhActOutWEIGHT.AsString;
  E_Fio.Text:=DM.Qry_WhActOutCLIENT_NAME.AsString;
  E_Dolj.Text:=DM.Qry_WhActOutCLIENT_DOLJ.AsString;
  E_KeeperName.Text:=DM.Qry_WhActOutKEEPER_NAME.AsString;
  if Length(Dm.Qry_WhActOutKEEPER_DOLJ.AsString) = 0 then
     E_KeeperDolj.Text:='Êëàäîâùèê'
    else
     E_KeeperDolj.Text:=Dm.Qry_WhActOutKEEPER_DOLJ.AsString;
  E_Dt.SetFocus ;
 finally
   ms.Free;
 end;
end;

procedure TActWhOut_F.N1Click(Sender: TObject);
begin
 Do2OutDoc_F.ShowModal;
end;

procedure TActWhOut_F.N2Click(Sender: TObject);
var
 id_rec:Integer;
begin
  id_rec:=DM.Qry_WhDocOut.FieldByName('ID').AsInteger;
  OutDoc_Sender:=0;
  if Do2OutDocEdit_F.ShowModal = mrOk then
    begin
      DM.Qry_WhDocOut.Close;
      DM.Qry_WhDocOut.Open;
      DM.Qry_WhDocOut.Locate('ID',id_rec,[]);
    end;
end;

procedure TActWhOut_F.N3Click(Sender: TObject);
var
 id_rec:Integer;
begin
try
 try
  if DM.Qry_WhDocOut.FieldByName('ID').isNull then exit;
  if Application.MessageBox('Äîêóìåíò áóäóò áåçâîçâğàòíî óäàëåí. Ïğîäîëæèòü?','Âíèìàíèå',MB_ICONQUESTION+mb_YesNo)= id_NO then Exit;
  id_rec:=DM.Qry_WhDocOut.FieldByName('ID').AsInteger;
  DM.SQL.Close;
  Dm.SQL.SQL.Clear;
  DM.SQL.SQL.Add('delete from do_outdocs where id=:p0 ');
  if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction;
  DM.SQL.params[0].AsInteger:=id_rec;
  DM.SQL.ExecQuery;
  DM.SQL.Transaction.Commit;
  DM.Qry_WhDocOut.Close;
  DM.Qry_WhDocOut.Open;
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



