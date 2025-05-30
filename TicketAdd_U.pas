unit TicketAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
   Controls,  Forms,  Dialogs,  StdCtrls,  DBCtrls,  Buttons,DB,
   ExtCtrls, DBGridEhGrouping, MemTableDataEh, MemTableEh, GridsEh, DBGridEh,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh,IBX.IBQuery,IBX.IBDatabase;

type
  TAddTicket_F = class(TForm)
    Label1: TLabel;
    E_NTicket: TEdit;
    Label2: TLabel;
    Bt_Cancel: TBitBtn;
    Bt_Save: TBitBtn;
    GpBx_Ts: TGroupBox;
    Label4: TLabel;
    E_NTs: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    E_Driver: TEdit;
    Label8: TLabel;
    E_Phone: TEdit;
    Label9: TLabel;
    M_Crashes: TMemo;
    GpBx_Trailer: TGroupBox;
    Ch_Tr: TCheckBox;
    Label3: TLabel;
    E_NTrailer: TEdit;
    Label10: TLabel;
    E_ParkZTK: TButtonedEdit;
    E_TsType: TButtonedEdit;
    E_Target: TButtonedEdit;
    Label11: TLabel;
    Label13: TLabel;
    E_Carrier: TButtonedEdit;
    Mt1: TMemTableEh;
    Ds1: TDataSource;
    E_Marka: TComboBox;
    E_CustProc: TComboBox;
    SpeedButton1: TSpeedButton;
    Ch_Electro: TCheckBox;
    E_Country: TButtonedEdit;
    Label14: TLabel;
    E_VesTs: TEdit;
    Label15: TLabel;
    E_VesTrailer: TEdit;
    Label16: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Bt_SaveClick(Sender: TObject);
    procedure E_PhoneKeyPress(Sender: TObject; var Key: Char);
    procedure E_NTsKeyPress(Sender: TObject; var Key: Char);
    procedure E_DriverKeyPress(Sender: TObject; var Key: Char);
    procedure E_NTrailerKeyPress(Sender: TObject; var Key: Char);
    procedure Ch_TrClick(Sender: TObject);
    procedure E_ParkZTKRightButtonClick(Sender: TObject);
    procedure E_TsTypeRightButtonClick(Sender: TObject);
    procedure E_TargetRightButtonClick(Sender: TObject);
    procedure E_MarkaKeyPress(Sender: TObject; var Key: Char);
    procedure E_CarrierRightButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Grid_TtnExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure E_CountryRightButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function CheckFillTicket(Cust,Nts,TsType,Target,Driver,Marka,Country,Ves:String):Boolean;
  end;

var
  AddTicket_F: TAddTicket_F;

implementation

{$R *.dfm}
uses dm_u,main, ParkZtk_U, Targets_U, TsType_U, Carrier_U, CountryCode_U;

procedure TAddTicket_F.Bt_SaveClick(Sender: TObject);
var
 new_id,new_id_ts:Integer;
 pms:TMemoryStream;
 vidtrans:String;
 kodtrans:Byte;
 qry:TIBQuery;
 tran:TIBTransaction;
 mes_app:String;
begin
//проверим поле номер места
if Length(E_ParkZTK.Text)=0 then
  begin
    if DM.Qry_TSTarget.FieldByName('ID').AsInteger =1 then
      begin
       Application.MessageBox('Не заполнено обязательное поле - № парк. ЗТК ','Внимание',MB_ICONWARNING+MB_OK);
       ModalResult:=mrNone;
       Exit;
      end
     else
      begin
        if Application.MessageBox('Не заполнено поле - № парк. ЗТК. Продолжить?','Внимание',MB_ICONWARNING+MB_YESNO) <> ID_YES then
        begin
         ModalResult:=mrNone;
         Exit;
        end;
      end;
  end;

{if Length(E_Carrier.Text)=0  then
      begin
        if DM.Qry_TSTarget.FieldByName('ID').AsInteger =1 then
           begin
             Application.MessageBox('Не заполнено обязательное поле -  Перевозчик','Внимание',MB_ICONWARNING+MB_OK);
             ModalResult:=mrNone;
             Exit;
           end;
      end;}

if not CheckFillTicket(E_CustProc.Text,E_NTs.Text,E_TsType.Text,E_Target.Text,E_Driver.Text,E_marka.Text,E_Country.Text,E_VesTs.Text) then
   begin
     ModalResult:=mrNone;
     Exit;
   end;
if Ch_Tr.Checked then
  begin
    if Length(E_NTrailer.Text)=0  then
      begin
       Application.MessageBox('Не заполнено обязательное поле - № прицепа ','Внимание',MB_ICONWARNING+MB_OK);
       ModalResult:=mrNone;
       Exit;
      end;
    if Length(E_VesTrailer.Text)=0  then
      begin
       Application.MessageBox('Не заполнено обязательное поле - Вес прицепа ','Внимание',MB_ICONWARNING+MB_OK);
       ModalResult:=mrNone;
       Exit;
      end;
  end;

 // проверка ТТН
{ if True then
   if Mt1.RecordCount = 0  then
     begin
       Application.MessageBox('Отсутствуют товаро-транспортные документы','Внимание',MB_ICONWARNING+MB_OK);
       ModalResult:=mrNone;
       Exit;
     end;}
try
  try
    // добавляем запись в КТ
    kodtrans:=DM.Qry_TsType.FieldByName('ID_TS').asInteger;
    vidtrans:='30';
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into ticket (n_ticket,username,cust_proc,id,step_ctrl,electricity,vidtrans)');
    DM.Sql.SQL.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6) ');
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Refresh_Settings;
    DM.Sql.Params[0].AsInteger:=DM.Qry_Settings.FieldByName('NEXT_TICKET').AsInteger;
    DM.Sql.Params[1].AsString:=User;
    DM.Sql.Params[2].AsString:=E_CustProc.Text;
    DM.Qry.Close;
    DM.Qry.SQL.Clear;
    DM.Qry.SQL.Add('select gen_id(gen_id_ticket,1) from rdb$database ');
    DM.Qry.Open;
    new_id:=DM.Qry.Fields[0].AsInteger;
    DM.Sql.Params[3].Value:=new_id;
//    DM.Sql.Params[4].Value:=DM.Qry_Carrier.FieldByName('ID').AsInteger;
    DM.Sql.Params[4].AsInteger:=STEP_CODE_1;
    if Ch_Electro.Checked then
       DM.Sql.Params[5].AsInteger:=1
      else
       DM.Sql.Params[5].AsVariant:=null;
    case kodtrans of
    0:
      begin
        if Ch_Tr.Checked and (Length(trim(E_NTrailer.Text)) > 0) then vidtrans:='31';
      end;
    1:
      begin
        if Ch_Tr.Checked and (Length(trim(E_NTrailer.Text)) > 0) then vidtrans:='32' ;
      end;
    end;
    DM.Sql.Params[6].AsString:=vidtrans;
    DM.Sql.ExecQuery;
    //добавим CMR-ки
{    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into ttn_in (ndoc,ddoc,id_ticket) ');
    DM.Sql.SQL.Add(' values (:p0,:p1,:p2) ');
    Mt1.First;
    while not Mt1.Eof do
      begin
        DM.Sql.Params[0].AsString:=Mt1.Fields[0].Value;
        DM.Sql.Params[1].AsDate:=Mt1.Fields[1].Value;
        DM.Sql.Params[2].AsInteger:=new_id;
        DM.Sql.ExecQuery;
        Mt1.Next;
      end;}

    //добавляем запись в ТС
    DM.Qry.Close;
    DM.Qry.SQL.Clear;
    DM.Qry.SQL.Add('select gen_id(gen_id_ts,1) from rdb$database ');
    DM.Qry.Open;
    new_id_ts:=DM.Qry.Fields[0].AsInteger;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into ts (id,id_ticket,n_ts,kod_ts,fio_driver,target,phone,crashes,marka,country,ves) ');
    DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10) ');
    DM.Sql.Params[0].Value:=new_id_ts;
    DM.Sql.Params[1].Value:=new_id;
    DM.Sql.Params[2].AsString:=E_NTs.Text;
    DM.Sql.Params[3].AsInteger:=DM.Qry_TsType.FieldByName('ID_TS').asInteger;
    DM.Sql.Params[4].AsString:=E_Driver.Text;
    DM.Sql.Params[5].AsInteger:=DM.Qry_TSTarget.FieldByName('ID').AsInteger;
    DM.Sql.Params[6].AsString:=E_Phone.Text;
    pms:=TMemoryStream.Create;
    M_Crashes.Lines.SaveToStream(pms);
    DM.Sql.Params[7].LoadFromStream(pms);
    DM.Sql.Params[8].AsString:=E_Marka.Text;
    DM.Sql.Params[9].AsString:=E_Country.Text;
    DM.Sql.Params[10].AsInteger:=StrToInt(E_VesTs.Text);
    DM.Sql.ExecQuery;
    //добавим запись в журнал
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into parties_log (id_ticket,action_name,username,action_code) ');
    DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3) ');
    DM.Sql.Params[0].Value:=new_id;
    DM.Sql.Params[1].AsString:=STEP_1;
    DM.Sql.Params[2].AsString:=User;
    DM.Sql.Params[3].AsInteger:=STEP_CODE_1;
    DM.Sql.ExecQuery;
    //добавляем Прицеп
    if (Ch_Tr.Checked) and (Length(Trim(E_NTrailer.Text)) <> 0) then
      begin
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('insert into trailers (id_truck,id_ticket,n_trailer,ves) values (:p0,:p1,:p2,:p3) ');
        DM.Sql.Params[0].asInteger:=new_id_ts;
        DM.Sql.Params[1].asInteger:=new_id;
        DM.Sql.Params[2].AsString:=E_NTrailer.Text;
        DM.Sql.Params[3].asInteger:=StrToInt(E_VesTrailer.Text);
        DM.Sql.ExecQuery;
      end;
    // обновляем парковку ЗТК
    if Length(Trim(E_ParkZTK.Text)) > 0 then
      begin
         qry := TIBQuery.Create(Self);
         qry.Database:=DM.DB;
  //       qry.Transaction:=tran;
         qry.SQL.Add('select cond_park from park_ztk where num_park = :p0');
         qry.Params[0].AsString:= E_ParkZTK.Text;
         try
  //         tran.StartTransaction;
           qry.Open;
           if qry.Fields[0].AsInteger <> 0 then
              begin
                mes_app:='Парковочное место ' + E_ParkZTK.Text+ ' занято.Измените парковочное место.';
                Application.MessageBox(PChar(mes_app),'Внимание!',MB_ICONWARNING+MB_ICONSTOP);
                ModalResult:=-mrNone;
                Exit;
              end;

         finally
  //         tran.Free;
           qry.Free;
         end;
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add(' update park_ztk set cond_park=1, id_ts=:p0, id_ticket=:p1 where num_park=:p2  ');
        DM.Sql.Params[0].asInteger:=new_id_ts;
        DM.Sql.Params[1].asInteger:=new_id;
        DM.Sql.Params[2].asString:=E_ParkZTK.Text;
        DM.Sql.ExecQuery;
       end;
    // обновляем счетчик номеров КТ
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update settings set next_ticket=:p0');
    DM.Sql.Params[0].asInteger:=DM.Qry_Settings.FieldByName('NEXT_TICKET').AsInteger+1;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    ModalResult:=MrOk;
    DM.Refresh_Ticket;
    DM.Qry_Ticket.First;
    Main_F.PrintKT(new_id);
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

procedure TAddTicket_F.Button1Click(Sender: TObject);
var S1, S2: TStringStream;
begin
  S1.LoadFromStream(S2)
end;

function TAddTicket_F.CheckFillTicket(Cust, Nts, TsType, Target,
  Driver,Marka,Country,Ves: String): Boolean;
begin
try
    Result:=True;
    if Length(Cust)=0  then
      begin
       Application.MessageBox('Не заполнено обязательное поле -  Таможенный режим','Внимание',MB_ICONWARNING+MB_OK);
       Result:=False;
       Exit;
      end;
    if Length(Nts)=0  then
      begin
       Application.MessageBox('Не заполнено обязательное поле -  Номер ТС','Внимание',MB_ICONWARNING+MB_OK);
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
    if Length(Driver)=0  then
      begin
       Application.MessageBox('Не заполнено обязательное поле -  ФИО водителя','Внимание',MB_ICONWARNING+MB_OK);
       Result:=False;
      end;
    if Length(Marka)=0  then
      begin
       Application.MessageBox('Не заполнено обязательное поле -  Марка ТС','Внимание',MB_ICONWARNING+MB_OK);
       Result:=False;
      end;
    if Length(Country)=0  then
      begin
       Application.MessageBox('Не заполнено обязательное поле -  Страна','Внимание',MB_ICONWARNING+MB_OK);
       Result:=False;
      end;
    if Length(Ves)=0  then
      begin
       Application.MessageBox('Не заполнено обязательное поле -  Вес ТС','Внимание',MB_ICONWARNING+MB_OK);
       Result:=False;
      end;
except
   Result:=False;
end;
end;

procedure TAddTicket_F.Ch_TrClick(Sender: TObject);
begin
 E_NTrailer.Enabled:=(Sender as TCheckBox).Checked;
 E_VesTrailer.Enabled:=(Sender as TCheckBox).Checked;
end;

procedure TAddTicket_F.E_CarrierRightButtonClick(Sender: TObject);
begin
 if Carrier_F.ShowModal = mrOk then
   begin
     E_Carrier.Text:=Carrier_F.DBGridEh1.DataSource.DataSet.FieldByName('OWNER').AsString;
     SelectNext(Sender as TWinControl, True, True);
   end;
end;

procedure TAddTicket_F.E_CountryRightButtonClick(Sender: TObject);
begin
  if CountryCode_F.ShowModal = mrOk then
    begin
      E_Country.Text := DM.Qry_CountryCodes.FieldByName('ALPHA2').AsString;
      if DM.Qry_CountryCodes.Active then  DM.Qry_CountryCodes.Close;
      SelectNext(Sender as TWinControl, True, True);
    end;
end;

procedure TAddTicket_F.E_DriverKeyPress(Sender: TObject; var Key: Char);
begin
//if not (Key in ['А'..'Я']) and not (Key in ['а'..'я']) then Key := #0;
end;

procedure TAddTicket_F.E_MarkaKeyPress(Sender: TObject; var Key: Char);
begin
   if  not(Key in ['a'..'z','A'..'Z',#8]) then Key:=#0;
end;

procedure TAddTicket_F.E_NTrailerKeyPress(Sender: TObject; var Key: Char);
begin
 if  not(Key in ['0'..'9','A'..'Z','a'..'z',#8]) then Key:=#0;
end;

procedure TAddTicket_F.E_NTsKeyPress(Sender: TObject; var Key: Char);
begin
 if  not(Key in ['0'..'9','A'..'Z','a'..'z',#8]) then Key:=#0;
end;

procedure TAddTicket_F.E_ParkZTKRightButtonClick(Sender: TObject);
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

procedure TAddTicket_F.E_PhoneKeyPress(Sender: TObject; var Key: Char);
begin
 if  not(Key in ['0'..'9','+',#8]) then Key:=#0;
end;

procedure TAddTicket_F.E_TargetRightButtonClick(Sender: TObject);
begin
 if Targets_F.ShowModal = mrOk then
   begin
     E_Target.Text:=Targets_F.DBGridEh1.DataSource.DataSet.FieldByName('NAME').AsString;
     SelectNext(Sender as TWinControl, True, True);
   end;
end;

procedure TAddTicket_F.E_TsTypeRightButtonClick(Sender: TObject);
begin
 if TsType_F.ShowModal = mrOk then E_TsType.Text:=TsType_F.DBGridEh1.DataSource.DataSet.FieldByName('NAME').AsString;
end;

procedure TAddTicket_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //MT1.EmptyTable;
  //Mt1.Close;
end;

procedure TAddTicket_F.FormCreate(Sender: TObject);
begin
// MT1.FieldDefs.Add('NDOC',ftString,50);
// MT1.FieldDefs.Add('DDOC',ftDate);
// MT1.CreateDataSet;
// Grid_ttn.Columns[0].FieldName:='NDOC';
// Grid_ttn.Columns[1].FieldName:='DDOC';
// Grid_ttn.Columns[0].Title.Caption:='Номер накладной';
// Grid_ttn.Columns[1].Title.Caption:='Дата накладной';

end;

procedure TAddTicket_F.FormShow(Sender: TObject);
begin
  if not DM.Qry_CustProc.Active then DM.Qry_CustProc.Open;
  if not DM.Qry_TSTarget.Active then DM.Qry_TSTarget.Open;
  if not DM.Qry_TsType.Active then DM.Qry_TsType.Open;
  if not DM.Qry_ParkZTK.Active then DM.Qry_ParkZTK.Open;
  if not DM.Qry_TruckModels.Active then DM.Qry_TruckModels.Open;
  DM.Refresh_Settings;
  E_NTicket.Clear;
  //E_NTicket.Text:=IntToStr(DM.Qry_Settings.FieldByName('NEXT_TICKET').AsInteger);
  E_Driver.Clear;
  E_NTs.Clear;
  E_VesTs.Clear;
  E_Country.Clear;
  E_NTrailer.Clear;
  E_VesTrailer.Clear;
  E_Phone.Clear;
  E_Carrier.Clear;
  M_Crashes.Lines.Clear;
  E_Marka.Clear;
  E_TsType.Text:='';
  DM.Qry_TSTarget.First;
  E_Target.Text:=DM.Qry_TSTarget.FieldByName('NAME').AsString;
  E_ParkZTK.Text:='';
  E_NTrailer.Enabled:=Ch_Tr.Checked;
  E_CustProc.Clear;
  DM.Qry_CustProc.First;
  Ch_Electro.Checked:=False;
  while not DM.Qry_CustProc.Eof do
    begin
      E_CustProc.Items.Add(DM.Qry_CustProc.FieldByName('NAME').AsString);
      DM.Qry_CustProc.Next;
    end;
  E_CustProc.ItemIndex:=0;

    while not DM.Qry_TruckModels.Eof do
    begin
      E_Marka.Items.Add(DM.Qry_TruckModels.FieldByName('MODEL').AsString);
      DM.Qry_TruckModels.Next;
    end;
  E_Marka.ItemIndex:=-1;

// MT1.Open;

end;

procedure TAddTicket_F.Grid_TtnExit(Sender: TObject);
begin
// if MT1.State in [dsInsert,dsEdit] then MT1.Post;
end;

procedure TAddTicket_F.SpeedButton1Click(Sender: TObject);
begin
  E_ParkZTK.Clear;
end;

end.
