unit EditTs_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,  Graphics,
   Controls,  Forms,  Dialogs,  StdCtrls,  Buttons,  DBCtrls,
   ExtCtrls,DB;

type
  TEditTs_F = class(TForm)
    GpBx_Ts: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    E_NTs: TEdit;
    E_Driver: TEdit;
    E_Phone: TEdit;
    M_Crashes: TMemo;
    GpBx_Trailer: TGroupBox;
    Label3: TLabel;
    E_NTrailer: TEdit;
    Bt_Save: TBitBtn;
    Bt_Cancel: TBitBtn;
    E_TsType: TButtonedEdit;
    E_Target: TButtonedEdit;
    Label10: TLabel;
    E_ParkZTK: TButtonedEdit;
    Label11: TLabel;
    E_Marka: TComboBox;
    E_Country: TButtonedEdit;
    Label14: TLabel;
    E_VesTs: TEdit;
    Label15: TLabel;
    E_VesTrailer: TEdit;
    Label16: TLabel;
    procedure FormShow(Sender: TObject);
    procedure E_TsTypeRightButtonClick(Sender: TObject);
    procedure E_TargetRightButtonClick(Sender: TObject);
    procedure Bt_SaveClick(Sender: TObject);
    procedure E_NTsKeyPress(Sender: TObject; var Key: Char);
    procedure E_PhoneKeyPress(Sender: TObject; var Key: Char);
    procedure E_NTrailerKeyPress(Sender: TObject; var Key: Char);
    procedure E_ParkZTKRightButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure E_MarkaKeyPress(Sender: TObject; var Key: Char);
    procedure E_CountryRightButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure GetValues;
  public
    { Public declarations }
  end;

var
  EditTs_F: TEditTs_F;
  OldParkNum:String;

implementation

{$R *.dfm}

uses Main, DM_U, TsType_U, Targets_U, ParkZtk_U, AddTs_U, CountryCode_U;

{ TEditTs_F }

procedure TEditTs_F.Bt_SaveClick(Sender: TObject);
var
 pms:TMemoryStream;
 id_ts,id_ticket:Integer;
begin
if not AddTs_F.CheckFillTsControls(E_NTs.Text,E_TsType.Text,E_Target.Text,E_Driver.Text,E_Country.Text) then
   begin
     ModalResult:=mrNone;
     Exit;
   end;
if (E_NTrailer.Enabled)  and  (Length(E_NTrailer.Text)=0)  then
  begin
     Application.MessageBox('Не заполнено обязательное поле -  № прицепа','Внимание',MB_ICONWARNING+MB_OK);
     ModalResult:=mrNone;
     Exit;
  end;
try
 try
    // изменяем запись ТС
    pms:=TMemoryStream.Create;
    id_ts:=Main_F.Grid_TS.DataSource.DataSet.FieldByName('ID').AsInteger;
    id_ticket:=Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update ts set n_ts=:p0,kod_ts=:p1,fio_driver=:p2,target=:p3,phone=:p4,crashes=:p5, ');
    DM.Sql.SQL.Add(' marka=:p6, country = :p7, ves=:p8 where id=:p9 ');
    DM.Sql.Params[0].AsString:=E_NTs.text;
    DM.Sql.Params[1].asInteger:=DM.Qry_TsType.FieldByName('ID_TS').AsInteger;
    DM.Sql.Params[2].AsString:=E_Driver.Text;
    DM.Sql.Params[3].asInteger:=DM.Qry_TSTarget.FieldByName('ID').AsInteger;
    DM.Sql.Params[4].AsString:=E_Phone.Text;
    M_Crashes.Lines.SaveToStream(pms);
    DM.Sql.Params[5].LoadFromStream(pms);
    DM.Sql.Params[6].AsString:=E_Marka.Text;
    DM.Sql.Params[7].AsString:=E_Country.Text;
    DM.Sql.Params[8].AsInteger:=StrToInt(E_VesTs.Text);
    DM.Sql.Params[9].AsInteger:=id_ts;
    DM.Sql.ExecQuery;
    //Изменяем Прицеп
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update trailers set n_trailer=:p0, ves=:p1 where id_truck=:p2 ');
    DM.Sql.Params[0].asString:=E_NTrailer.Text;
    if Length(Trim(E_VesTrailer.Text)) = 0 then
       DM.Sql.Params[1].Value:= Null
      else
       DM.Sql.Params[1].AsInteger:=StrToInt(E_VesTrailer.Text);
    DM.Sql.Params[2].asInteger:=id_ts;
    DM.Sql.ExecQuery;
    // обновляем парковку ЗТК
    if Length(Trim(E_ParkZTK.Text)) > 0 then
       begin
        // освобождаем предыдущее место
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('update park_ztk set cond_park=0, id_ts=null, id_ticket=null where id_ts=:p0 and id_ticket=:p1 ');
        DM.Sql.Params[0].asInteger:=id_ts;
        DM.Sql.Params[1].asInteger:=id_ticket;
        DM.Sql.ExecQuery;
        // прописываем новое место предыдущее место
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('update park_ztk set cond_park=1, id_ts=:p0, id_ticket=:p1 where num_park=:p2 ');
        DM.Sql.Params[0].asInteger:=id_ts;
        DM.Sql.Params[1].asInteger:=id_ticket;
        DM.Sql.Params[2].asString:=E_ParkZTK.Text;
        DM.Sql.ExecQuery;
        //добавим запись в журнал парковки
        if E_ParkZTK.Text <> MAin_F.Grid_TS.DataSource.DataSet.FieldByName('NUM_PARK').AsString then
          begin
            DM.Sql.Close;
            DM.Sql.SQL.Clear;
            DM.Sql.SQL.Add('insert into park_log (id_ts,id_ticket,username,place,action_code,park_type,action_name) ');
            DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6) ');
            DM.Sql.Params[0].AsInteger:=id_ts;
            DM.Sql.Params[1].AsInteger:=id_ticket;
            DM.Sql.Params[2].AsString:=User;
            DM.Sql.Params[3].AsString:=E_ParkZTK.Text;;
            DM.Sql.Params[4].AsInteger:=ACTION_MOVE_IN_CODE;
            DM.Sql.Params[5].AsString:=PARK_TYPE_ZTK;
            DM.Sql.Params[6].AsString:=ACTION_MOVE_IN;
            DM.Sql.ExecQuery;
          end;
       end;
    DM.Sql.Transaction.Commit;
    ModalResult:=mrOk;
    DM.Refresh_TS;
  except
    on E: EdatabaseError do
      begin
       DM.Sql.Transaction.Rollback;
       ShowMessage(E.Message);
      end;
  end;
finally
  pms.Free;
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

procedure TEditTs_F.E_CountryRightButtonClick(Sender: TObject);
begin
  if CountryCode_F.ShowModal = mrOk then
    begin
      E_Country.Text := DM.Qry_CountryCodes.FieldByName('ALPHA2').AsString;
      if DM.Qry_CountryCodes.Active then  DM.Qry_CountryCodes.Close;
      SelectNext(Sender as TWinControl, True, True);
    end;
end;

procedure TEditTs_F.E_MarkaKeyPress(Sender: TObject; var Key: Char);
begin
   if  not(Key in ['a'..'z','A'..'Z',#8]) then Key:=#0;
end;

procedure TEditTs_F.E_NTrailerKeyPress(Sender: TObject; var Key: Char);
begin
   if  not(Key in ['0'..'9','A'..'Z','a'..'z',#8]) then Key:=#0;
end;

procedure TEditTs_F.E_NTsKeyPress(Sender: TObject; var Key: Char);
begin
   if  not(Key in ['0'..'9','A'..'Z','a'..'z',#8]) then Key:=#0;
end;

procedure TEditTs_F.E_ParkZTKRightButtonClick(Sender: TObject);
begin
  if FormParkZtk.ShowModal = mrOk  then
     begin
      // проверим состояние выбранного места парковки ЗТК - если место свободно то разрешаем изменения
      if FormParkZTK.Get_Parking_State(FormParkZTK.PARKNUMBER,'PARK_ZTK') = PLACE_FREE then
             E_ParkZTK.Text:=FormParkZTK.PARKNUMBER
          else
             Application.MessageBox('Данное место занято или не используется','Внимание',MB_ICONERROR+MB_OK);
     end;
end;

procedure TEditTs_F.E_PhoneKeyPress(Sender: TObject; var Key: Char);
begin
 if  not(Key in ['0'..'9','+',#8]) then Key:=#0;
end;

procedure TEditTs_F.E_TargetRightButtonClick(Sender: TObject);
begin
 if Targets_F.ShowModal = mrOk then
    begin
      if Targets_F.DBGridEh1.DataSource.DataSet.FieldByName('ID').AsInteger = 1 then
         begin
           if DM.CheckTsTarget(DM.Qry_TS.FieldByName('ID_TICKET').AsInteger)  then
             begin
                Application.MessageBox('В текущем КТ уже есть ТС с целью - Оформление груза.','Предупреждение',
                                      MB_ICONERROR+MB_OK);
                Exit;
             end;
         end
        else
          E_Target.Text:=Targets_F.DBGridEh1.DataSource.DataSet.FieldByName('NAME').AsString;
    end;
end;

procedure TEditTs_F.E_TsTypeRightButtonClick(Sender: TObject);
begin
 if TsType_F.ShowModal = mrOk then E_TsType.Text:=TsType_F.DBGridEh1.DataSource.DataSet.FieldByName('NAME').AsString;
end;

procedure TEditTs_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;

procedure TEditTs_F.FormShow(Sender: TObject);
begin
  if not DM.Qry_TSTarget.Active then DM.Qry_TSTarget.Open;
  if not DM.Qry_TsType.Active then DM.Qry_TsType.Open;
  if Main_F.Grid_TS.Datasource.Dataset.FieldByName('N_TRAILER').asString= 'Прицеп отсутствует' then
     E_NTrailer.Enabled:=False
    else
     E_NTrailer.Enabled:=True;
  if not DM.Qry_TruckModels.Active then DM.Qry_TruckModels.Open;
  while not DM.Qry_TruckModels.Eof do
    begin
      E_Marka.Items.Add(DM.Qry_TruckModels.FieldByName('MODEL').AsString);
      DM.Qry_TruckModels.Next;
    end;
  E_Marka.ItemIndex:=-1;
  if DM.Qry_TruckModels.Active then DM.Qry_TruckModels.Close;
  GetValues;
end;

procedure TEditTs_F.GetValues;
var
 b:boolean;
 id_ts:Integer;
begin
  id_ts:=Main_F.Grid_TS.DataSource.DataSet.FieldByName('ID').AsInteger;
  E_NTs.text:=Main_F.Grid_TS.DataSource.DataSet.FieldByName('N_TS').AsString;
  E_VesTs.text:=Main_F.Grid_TS.DataSource.DataSet.FieldByName('VES').AsString;

  b:=DM.Qry_TsType.Locate('ID_TS',
            Main_F.Grid_TS.DataSource.DataSet.FieldByName('KOD_TS').AsInteger,[]);
  E_TsType.Text:=DM.Qry_TsType.FieldByName('NAME').AsString;
  b:=DM.Qry_TSTarget.Locate('ID',
            Main_F.Grid_TS.DataSource.DataSet.FieldByName('TARGET').AsInteger,[]);
  E_Target.Text:=DM.Qry_TSTarget.FieldByName('NAME').AsString;
  E_Driver.Text:=Main_F.Grid_TS.DataSource.DataSet.FieldByName('FIO_DRIVER').AsString;
  E_Phone.Text:=Main_F.Grid_TS.DataSource.DataSet.FieldByName('PHONE').AsString;
//  DM.Qry_TS.FieldByName('CRASHES').
  M_Crashes.Lines.Assign(DM.Qry_TSCRASHES);
  E_NTrailer.Text:=Main_F.Grid_TS.DataSource.DataSet.FieldByName('N_TRAILER1').AsString;
  E_VesTrailer.text:=Main_F.Grid_TS.DataSource.DataSet.FieldByName('VES_TR').AsString;
  E_ParkZTK.Text:=FormParkZTK.Get_Parking_Num2(id_ts,'PARK_ZTK');
  E_Marka.Text:= Main_F.Grid_TS.DataSource.DataSet.FieldByName('MARKA').AsString;
  E_Country.Text:= Main_F.Grid_TS.DataSource.DataSet.FieldByName('COUNTRY').AsString;
end;

end.
