unit AddTs_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,  Graphics,
   Controls,  Forms,  Dialogs,  StdCtrls,  Buttons,  ExtCtrls,DB;

type
  TAddTs_F = class(TForm)
    GpBx_Ts: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    E_NTs: TEdit;
    E_Driver: TEdit;
    E_Phone: TEdit;
    M_Crashes: TMemo;
    E_TsType: TButtonedEdit;
    E_Target: TButtonedEdit;
    E_ParkZTK: TButtonedEdit;
    GpBx_Trailer: TGroupBox;
    Label3: TLabel;
    E_NTrailer: TEdit;
    Bt_Save: TBitBtn;
    Bt_Cancel: TBitBtn;
    Ch_Tr: TCheckBox;
    Label1: TLabel;
    E_KT: TEdit;
    Label2: TLabel;
    E_Marka: TComboBox;
    Label14: TLabel;
    E_Country: TButtonedEdit;
    procedure FormShow(Sender: TObject);
    procedure E_NTsKeyPress(Sender: TObject; var Key: Char);
    procedure E_TsTypeRightButtonClick(Sender: TObject);
    procedure E_TargetRightButtonClick(Sender: TObject);
    procedure E_PhoneKeyPress(Sender: TObject; var Key: Char);
    procedure E_ParkZTKRightButtonClick(Sender: TObject);
    procedure E_NTrailerKeyPress(Sender: TObject; var Key: Char);
    procedure Bt_SaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Ch_TrClick(Sender: TObject);
    procedure E_MarkaKeyPress(Sender: TObject; var Key: Char);
    procedure E_CountryRightButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure ClearControls;
  public
    { Public declarations }
    function CheckFillTSControls(Nomer, TsType, Target, Driver,Country: String): Boolean;
  end;

var
  AddTs_F: TAddTs_F;

implementation

{$R *.dfm}

uses Main, ParkZtk_U, Targets_U, TsType_U, DM_U, CountryCode_U;

procedure TAddTs_F.Bt_SaveClick(Sender: TObject);
var
 pms:TMemoryStream;
 id_ts,id_ticket:Integer;
begin
if not CheckFillTsControls(E_NTs.Text,E_TsType.Text,E_Target.Text,E_Driver.Text,E_Country.Text) then
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
    DM.Qry.Close;
    DM.Qry.SQL.Clear;
    DM.Qry.SQL.Add('select gen_id(gen_id_ts,1) from rdb$database ');
    DM.Qry.Open;
    id_ts:=DM.Qry.Fields[0].AsInteger;
    DM.Qry.Close;
    id_ticket:=Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into ts (n_ts,kod_ts,fio_driver,target,phone,crashes,id_ticket,id,marka,country) ');
    DM.Sql.SQL.Add(' values ( :p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9 ) ');
    DM.Sql.Params[0].AsString:=E_NTs.text;
    DM.Sql.Params[1].asInteger:=DM.Qry_TsType.FieldByName('ID_TS').AsInteger;
    DM.Sql.Params[2].AsString:=E_Driver.Text;
    DM.Sql.Params[3].asInteger:=DM.Qry_TSTarget.FieldByName('ID').AsInteger;
    DM.Sql.Params[4].AsString:=E_Phone.Text;
    M_Crashes.Lines.SaveToStream(pms);
    DM.Sql.Params[5].LoadFromStream(pms);
    DM.Sql.Params[6].AsInteger:=id_ticket;
    DM.Sql.Params[7].AsInteger:=id_ts;
    DM.Sql.Params[8].AsString:=E_Marka.Text;
    DM.Sql.Params[9].AsString:=E_Country.Text;
    DM.Sql.ExecQuery;
    //добавляем Прицеп
    if (Ch_Tr.Checked) and (Length(Trim(E_NTrailer.Text)) <> 0) then
      begin
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('insert into trailers (id_truck,id_ticket,n_trailer) values (:p0,:p1,:p2) ');
        DM.Sql.Params[0].asInteger:=id_ts;
        DM.Sql.Params[1].asInteger:=id_ticket;
        DM.Sql.Params[2].AsString:=E_NTrailer.Text;
        DM.Sql.ExecQuery;
      end;
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
       end;
    DM.Sql.Transaction.Commit;
    ModalResult:=mrOk;
    DM.Refresh_TS;
    DM.Qry_TS.Last;
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

procedure TAddTs_F.ClearControls;
begin
 E_KT.Text:=Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('N_TICKET').AsString;
 E_NTs.Clear;
 E_Driver.Clear;
 E_Phone.Clear;
 E_TsType.Clear;
 E_Target.Clear;
 E_ParkZTK.Clear;
 E_NTrailer.Clear;
 M_Crashes.Lines.Clear;
 E_Marka.Clear;
 E_Country.Clear;
end;

procedure TAddTs_F.E_CountryRightButtonClick(Sender: TObject);
begin
  if CountryCode_F.ShowModal = mrOk then
    begin
      E_Country.Text := DM.Qry_CountryCodes.FieldByName('ALPHA2').AsString;
      if DM.Qry_CountryCodes.Active then  DM.Qry_CountryCodes.Close;
      SelectNext(Sender as TWinControl, True, True);
    end;
end;

procedure TAddTs_F.E_MarkaKeyPress(Sender: TObject; var Key: Char);
begin
   if  not(Key in ['a'..'z','A'..'Z',#8]) then Key:=#0;
end;

procedure TAddTs_F.E_NTrailerKeyPress(Sender: TObject; var Key: Char);
begin
   if  not(Key in ['0'..'9','A'..'Z','a'..'z',#8]) then Key:=#0;
end;

procedure TAddTs_F.E_NTsKeyPress(Sender: TObject; var Key: Char);
begin
   if  not(Key in ['0'..'9','A'..'Z','a'..'z',#8]) then Key:=#0;
end;

procedure TAddTs_F.E_ParkZTKRightButtonClick(Sender: TObject);
begin
  if FormParkZtk.ShowModal = mrOk  then
     begin
      // проверим состояние выбранного места парковки ЗТК - если место свободно то разрешаем изменения
      if FormParkZTK.Get_Parking_State(FormParkZTK.PARKNUMBER,'PARK_ZTK') = 0 then
             E_ParkZTK.Text:=FormParkZTK.PARKNUMBER
          else
             Application.MessageBox('Данное место занято или не используется','Внимание',MB_ICONERROR+MB_OK);
     end;

end;

procedure TAddTs_F.E_PhoneKeyPress(Sender: TObject; var Key: Char);
begin
 if  not(Key in ['0'..'9','+',#8]) then Key:=#0;
end;

procedure TAddTs_F.E_TargetRightButtonClick(Sender: TObject);
begin
// if Targets_F.ShowModal = mrOk then E_Target.Text:=Targets_F.DBGridEh1.DataSource.DataSet.FieldByName('NAME').AsString;
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

procedure TAddTs_F.E_TsTypeRightButtonClick(Sender: TObject);
begin
 if TsType_F.ShowModal = mrOk then E_TsType.Text:=TsType_F.DBGridEh1.DataSource.DataSet.FieldByName('NAME').AsString;
end;

procedure TAddTs_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;

procedure TAddTs_F.FormShow(Sender: TObject);
begin
  ClearControls;
  Ch_Tr.Checked:=False;
  E_NTrailer.Enabled:=Ch_Tr.Checked;
  if not DM.Qry_TruckModels.Active then DM.Qry_TruckModels.Open;
  while not DM.Qry_TruckModels.Eof do
    begin
      E_Marka.Items.Add(DM.Qry_TruckModels.FieldByName('MODEL').AsString);
      DM.Qry_TruckModels.Next;
    end;
  E_Marka.ItemIndex:=-1;
  if DM.Qry_TruckModels.Active then DM.Qry_TruckModels.Close;
  E_NTs.SetFocus;
end;

function TAddTs_F.CheckFillTSControls(Nomer, TsType, Target,Driver,Country: String): Boolean;
begin
try
    Result:=True;
    if Length(Nomer)=0  then
      begin
       Application.MessageBox('Не заполнено обязательное поле -  № ТС','Внимание',MB_ICONWARNING+MB_OK);
       Result:=False;
       Exit;
      end;
    if Length(TsType)=0  then
      begin
       Application.MessageBox('Не заполнено обязательное поле -  Тип ТС','Внимание',MB_ICONWARNING+MB_OK);
       Result:=False;
       Exit;
      end;
    if Length(Target)=0  then
      begin
       Application.MessageBox('Не заполнено обязательное поле -  Цель въезда','Внимание',MB_ICONWARNING+MB_OK);
       Result:=False;
       Exit;
      end;
    if Length(Driver)=0 then
      begin
       Application.MessageBox('Не заполнено обязательное поле -  Водитель','Внимание',MB_ICONWARNING+MB_OK);
       Result:=False;
       Exit;
      end;
    if Length(Country)=0 then
      begin
       Application.MessageBox('Не заполнено обязательное поле -  Страна','Внимание',MB_ICONWARNING+MB_OK);
       Result:=False;
       Exit;
      end;
except
   Result:=False;
end;
end;
procedure TAddTs_F.Ch_TrClick(Sender: TObject);
begin
 E_NTrailer.Enabled:=(Sender as TCheckBox).Checked;
end;

end.
