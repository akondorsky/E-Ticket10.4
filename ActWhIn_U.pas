unit ActWhIn_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons,StrUtils,Db, Mask, DBCtrlsEh,ActnList,
  IBX.IbSql, jpeg;

type
  TActWhIn_F = class(TForm)
    L_Num: TLabel;
    E_NTp: TEdit;
    Label2: TLabel;
    E_Goods: TEdit;
    Label3: TLabel;
    E_Srok: TEdit;
    Label5: TLabel;
    E_Plombs: TEdit;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    E_NplDoc: TEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    LabelWeightDoc: TLabel;
    E_WeightDoc: TEdit;
    Label9: TLabel;
    M_Note: TMemo;
    Bt_Save: TBitBtn;
    Bt_Cancel: TBitBtn;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    E_Fio: TEdit;
    E_SVhNumbers: TButtonedEdit;
    Label12: TLabel;
    E_NPlFact: TDBNumberEditEh;
    E_WeightFact: TDBNumberEditEh;
    Rg_Cbx: TRadioGroup;
    Label1: TLabel;
    E_Ts: TEdit;
    E_Dolj: TComboBox;
    Panel1: TPanel;
    Image1: TImage;
    Chk_Dng: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure Bt_SaveClick(Sender: TObject);
    procedure E_SVhNumbersRightButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure E_TsKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure GetValues;
  public
    { Public declarations }
  end;

var
  ActWhIn_F: TActWhIn_F;

implementation

uses Warehouse_U,main,dm_u, ClosedCbxPlaces_U, ParkCbx_U,ParkZtk_U,
  OpenCbxPlaces_U;

{$R *.dfm}

procedure TActWhIn_F.Bt_SaveClick(Sender: TObject);
var
 pms:TMemoryStream;
 TempBookmark:TBookMark;
 x:word;
 id_ticket,id_tp,id_wh, new_id_actin,id_ts:Integer;
 sql_tmp : TIBSQL;
begin
try
 try
    if Length(Trim(E_SVhNumbers.Text)) =0  then
      begin
        Application.MessageBox('Не заполнено место хранения.','Ошибка',MB_ICONERROR+MB_OK);
        ModalResult:=mrNone;
        Exit;
      end;
    sql_tmp:=TIBSQL.Create(Self);
    sql_tmp.Database:=Dm.DB;
    sql_tmp.Transaction:=DM.IBTW;
    pms:=TMemoryStream.Create;
    id_tp:=Warehouse_F.Grid_WH.DataSource.DataSet.FieldByName('ID').AsInteger;
    id_ticket:=Warehouse_F.Grid_WH.DataSource.DataSet.FieldByName('ID_TICKET').AsInteger;
    DM.Qry.Close;
    DM.Qry.SQL.Clear;
    DM.Qry.SQL.Add(' select gen_id(GEN_ID_WH_ACT_IN,1) from rdb$database ');
    DM.Qry.Open;
    new_id_actin:=DM.Qry.Fields[0].AsInteger;
    Dm.Qry.Close;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    //добавим запись в складское свидетельство
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into wh_act_in (id,wh_type,place_num,goods_name,places_kol_doc,places_kol_fact, ');
    DM.Sql.SQL.Add('weight_doc,weight_fact,plombs,note,client_name,client_dolj,keeper_name,keeper_dolj,srok,n_ts,id_tp,nomer_tp,from_cbx_flag) ');
    DM.Sql.SQL.Add(' values ( :p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14,:p15,:p16,:p17,:p18 ) ');
    DM.Sql.Params[0].AsInteger:=new_id_actin;
    case Rg_Cbx.ItemIndex of
       0: DM.Sql.Params[1].asString :=OCBX; // если О.СВХ
       1: DM.Sql.Params[1].asString :=CCBX; // если З.СВХ
    end;
    DM.Sql.Params[2].AsString:=E_SVhNumbers.Text;
    DM.Sql.Params[3].AsString:=E_Goods.Text;
    DM.Sql.Params[4].AsInteger:=StrToInt(E_NplDoc.Text);
    DM.Sql.Params[5].AsInteger:=StrToInt(E_NPlFact.Text);
    DM.Sql.Params[6].AsDouble:=StrToFloat(E_WeightDoc.Text);
    DM.Sql.Params[7].AsDouble:=StrToFloat(E_WeightFact.Text);
    DM.Sql.Params[8].AsString:=E_Plombs.Text;
    M_Note.Lines.SaveToStream(pms);
    DM.Sql.Params[9].LoadFromStream(pms);
    DM.Sql.Params[10].AsString:=E_Fio.Text;
    DM.Sql.Params[11].AsString:=E_Dolj.Text;
    DM.Sql.Params[12].AsString:=User;
    DM.Sql.Params[13].AsString:='Кладовщик';
    DM.Sql.Params[14].AsInteger:=StrToInt(E_Srok.text);
    if Length(Trim(E_Ts.Text)) > 0  then
       DM.Sql.Params[15].AsString:=E_Ts.Text else DM.Sql.Params[15].AsVariant:=Null;
    DM.Sql.Params[16].AsInteger:=id_tp;
    DM.Sql.Params[17].AsString:=E_NTp.Text;
    if DM.Qry_Warehouse.FieldByName('TP_MOVE_CBX_CODE').AsInteger = TP_FROM_CBX_TO_CBX then
        DM.Sql.Params[18].AsInteger:=1
       else
        DM.Sql.Params[18].AsInteger:=0;
    DM.Sql.ExecQuery;
    //создадим запись в таблице связей товарных партий и мест хранения
    case Rg_Cbx.ItemIndex of
       0: begin // если О.СВХ
            //установим флаг убытия из ЗТК в таблице TS
            DM.Qry.Close;
            DM.Qry.SQL.Clear;
            DM.Qry.SQL.Add(' select first 1 id from first_ts where id_ticket = :p0 ');
            DM.Qry.Params[0].AsInteger:=id_ticket;
            DM.Qry.Open;
            id_ts:=DM.Qry.Fields[0].AsInteger;
            DM.Qry.Close;
            DM.Sql.Close;
            DM.Sql.SQL.Clear;
            DM.Sql.SQL.Add('update ts set out_pztk_flag=:p0 where id=:p1 ');
            DM.Sql.Params[0].AsInteger:=1;
            DM.Sql.Params[1].AsInteger:=id_ts;
            DM.Sql.ExecQuery;
            //добавим записи по количеству мест в таблицу rel_tp_wh_open
            DM.Sql.Close;
            DM.Sql.SQL.Clear;
            DM.Sql.SQL.Add('insert into rel_tp_wh_open (id_wh,id_act_in,id_tp) ');
            DM.Sql.SQL.Add(' values ( :p0,:p1,:p2) ');
            TempBookMark:=OpenCbxPlaces_F.Grid_Place.DataSource.DataSet.GetBookmark;
                 with OpenCbxPlaces_F.Grid_Place.SelectedRows do
                  begin
                   for x := 0 to Count-1 do
                    begin
                      if IndexOf(Items[x]) > -1 then
                        begin
                          OpenCbxPlaces_F.Grid_Place.Datasource.Dataset.Bookmark := Items[x];
                          id_wh:=OpenCbxPlaces_F.Grid_Place.Datasource.Dataset.FieldByName('id').AsInteger;
                          DM.Sql.Params[0].AsInteger:=id_wh;
                          DM.Sql.Params[1].AsInteger:=new_id_actin;
                          DM.Sql.Params[2].AsInteger:=id_tp;
                          DM.Sql.ExecQuery;
                          sql_tmp.Close;
                          sql_tmp.SQL.Clear;
                          sql_tmp.SQL.Add('update park_cbx set cond_park = :p0 where id = :p1 ');
                          sql_tmp.Params[0].AsInteger:=PLACE_OCCUPIED;
                          sql_tmp.Params[1].AsInteger:=id_wh;
                          sql_tmp.ExecQuery;
                        end;  //end if
                    end;   //end for
                 end;  //end with
          end;
       1: begin // если З.СВХ
            //добавим записи по количеству мест в таблицу rel_tp_wh
            DM.Sql.Close;
            DM.Sql.SQL.Clear;
            DM.Sql.SQL.Add('insert into rel_tp_wh (id_wh,id_act_in,id_tp) ');
            DM.Sql.SQL.Add(' values ( :p0,:p1,:p2) ');
            sql_tmp.Close;
            sql_tmp.SQL.Clear;
            sql_tmp.SQL.Add('update closed_cbx set state_place = :p0 where id = :p1 ');
            TempBookMark:=ClosedCbxPlaces_F.Grid_Place.DataSource.DataSet.GetBookmark;
                 with ClosedCbxPlaces_F.Grid_Place.SelectedRows do
                  begin
                   for x := 0 to Count-1 do
                    begin
                      if IndexOf(Items[x]) > -1 then
                        begin
                          ClosedCbxPlaces_F.Grid_Place.Datasource.Dataset.Bookmark := Items[x];
                          id_wh:=ClosedCbxPlaces_F.Grid_Place.Datasource.Dataset.FieldByName('id').AsInteger;
                          DM.Sql.Params[0].AsInteger:=id_wh;
                          DM.Sql.Params[1].AsInteger:=new_id_actin;
                          DM.Sql.Params[2].AsInteger:=id_tp;
                          DM.Sql.ExecQuery;
                          sql_tmp.Close;
                          sql_tmp.SQL.Clear;
                          sql_tmp.SQL.Add('update closed_cbx set state_place = :p0 where id = :p1 ');
                          sql_tmp.Params[0].AsInteger:=PLACE_OCCUPIED;
                          sql_tmp.Params[1].AsInteger:=id_wh;
                          sql_tmp.ExecQuery;
                        end;  //end if
                    end;   //end for
                 end;  //end with
          end;
    end; //case

    //Обновим ТР установим признак опасного груза
    if Chk_Dng.Checked then
      begin
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('update parties set danger=:p0 where id=:p1 ');
        DM.Sql.Params[0].AsInteger:=1;
        DM.Sql.Params[1].AsInteger:=id_tp;
        DM.Sql.ExecQuery;
      end;

    DM.Sql.Transaction.Commit;
    ModalResult:=mrOk;
    Warehouse_F.Grid_ActIn.DataSource.DataSet.Close;
    Warehouse_F.Grid_ActIn.DataSource.DataSet.Open;
    Warehouse_F.Grid_ActIn.DataSource.DataSet.Locate('ID',new_id_actin,[]);
  except
    on E: EdatabaseError do
      begin
       DM.Sql.Transaction.Rollback;
       ShowMessage(E.Message);
      end;
  end;
finally
   sql_tmp.Free;
   pms.Free;
   if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
   if TempBookmark <> Nil then
      begin
        case Rg_Cbx.ItemIndex of
           0: begin // если О.СВХ
               OpenCbxPlaces_F.Grid_Place.DataSource.DataSet.GotoBookmark(TempBookmark);
               OpenCbxPlaces_F.Grid_Place.DataSource.DataSet.FreeBookmark(TempBookmark);
               OpenCbxPlaces_F.Grid_Place.SelectedRows.Clear;
           end;
           1: begin
               ClosedCbxPlaces_F.Grid_Place.DataSource.DataSet.GotoBookmark(TempBookmark);
               ClosedCbxPlaces_F.Grid_Place.DataSource.DataSet.FreeBookmark(TempBookmark);
               ClosedCbxPlaces_F.Grid_Place.SelectedRows.Clear;
           end;
        end;
      end;
end;
end;

procedure TActWhIn_F.E_SVhNumbersRightButtonClick(Sender: TObject);
begin
{  if ClosedCbxPlaces_F.ShowModal=mrOk then
      begin
       E_SVhNumbers.Text:=ClosedCbxPlaces_F.SelectedPlaces;
      end;}
Case Rg_Cbx.ItemIndex of
   0:if OpenCbxPlaces_F.ShowModal = mrOk then
      begin
       E_SVhNumbers.Text:=OpenCbxPlaces_F.SelectedPlaces;
      end;
  1:if ClosedCbxPlaces_F.ShowModal=mrOk then
      begin
       E_SVhNumbers.Text:=ClosedCbxPlaces_F.SelectedPlaces;
      end;
 End;
end;

procedure TActWhIn_F.E_TsKeyPress(Sender: TObject; var Key: Char);
begin
   if  not(Key in ['0'..'9','A'..'Z','a'..'z','/',';',#8]) then Key:=#0;
end;

procedure TActWhIn_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ClosedCbxPlaces_F.Grid_Place.SelectedRows.Count <> 0 then
    begin
      ClosedCbxPlaces_F.Grid_Place.SelectedRows.Clear;
    end;
end;

procedure TActWhIn_F.FormShow(Sender: TObject);
begin
  if not DM.Qry_ClosedCbx.Active then DM.Qry_ClosedCbx.Open;
  if not DM.Qry_OpenCbx.Active then DM.Qry_OpenCbx.Open;
  GetValues;
  if Warehouse_F.SenderForActIn = 'ACT_TS' then
     begin
       E_Ts.Text:= Main_F.GetTsNumber(Warehouse_F.Grid_WH.Datasource.Dataset.FieldByName('ID_TICKET').AsInteger);
       E_Ts.ReadOnly:=False;
       Rg_Cbx.ItemIndex:=0;
       Rg_Cbx.Enabled:=False;
       E_NPlFact.Text:='1';
       E_WeightFact.Value:=Main_F.GetActWeight(Warehouse_F.Grid_WH.Datasource.Dataset.FieldByName('ID_SCALE').AsInteger);
       E_Dolj.Text:='Водитель';
       //E_Dolj.ItemIndex:=0;
       E_Fio.Text:=Main_F.GetTsDriverFio(DM.Qry_Warehouse.FieldByName('ID_TICKET').AsInteger);
     end;
  if Warehouse_F.SenderForActIn = 'ACT_TP' then
     begin
       E_Ts.Text:= Main_F.GetTsNumber(Warehouse_F.Grid_WH.Datasource.Dataset.FieldByName('ID_TICKET').AsInteger);
       E_Ts.ReadOnly:=False;
       Rg_Cbx.Enabled:=True;
       Rg_Cbx.ItemIndex:=1;
       E_WeightFact.Value:=Main_F.GetActWeight(Warehouse_F.Grid_WH.Datasource.Dataset.FieldByName('ID_SCALE').AsInteger);
//       E_Dolj.ItemIndex:=0;
//       E_Fio.Clear;
       E_Dolj.Text:='Водитель';
       E_Fio.Text:=Main_F.GetTsDriverFio(DM.Qry_Warehouse.FieldByName('ID_TICKET').AsInteger);
     end;

end;

procedure TActWhIn_F.GetValues;
begin
  E_NTp.Text:=Warehouse_F.Grid_WH.Datasource.Dataset.FieldByName('N_PART').asString;
  E_Goods.Text:=Warehouse_F.Grid_WH.Datasource.Dataset.FieldByName('GOODS').asString;
  E_Srok.Text:='120';
  E_NPlFact.Value:=Warehouse_F.Grid_WH.Datasource.Dataset.FieldByName('PLACES_FACT').asVariant;
  E_NplDoc.Text:=Warehouse_F.Grid_WH.Datasource.Dataset.FieldByName('PLACES').asString;
  E_WeightDoc.Text:=Warehouse_F.Grid_WH.Datasource.Dataset.FieldByName('BRUTTO').asString;
  E_WeightFact.Value:=Warehouse_F.Grid_WH.Datasource.Dataset.FieldByName('BRUTTO_FACT').asVariant;
  M_Note.Lines.Clear;
//  E_Fio.Clear;
//  E_Plombs.Clear;
  E_SVhNumbers.Clear;
  Chk_Dng.Checked:=False;
  E_Srok.SetFocus;
end;

end.


{
const
A1 :Integer = 100000 ;
A2 :Integer = 99999 ;
var
 i:Extended;
 n:Integer;
begin
for n:=1 to 3000 do
  begin
    Randomize;
    i := A1+Random(A2) ;
    Memo1.Lines.Add(FloatToStr(i));
    if i < A1  then ShowMessage(FloatToStr(i));

  end;
end;
  }
