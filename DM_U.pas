unit DM_U;

interface

uses
  SysUtils, Classes, IBX.IBDatabase, DB, IBX.IBCustomDataSet, IBX.IBQuery,Forms,
  IBX.IBSQL, IBX.IBEvents,Dialogs, IBX.IBTable, IBX.IBStoredProc, MemTableDataEh, DataDriverEh,
  MemTableEh,IBX.IB;

type
  TDM = class(TDataModule)
    DB: TIBDatabase;
    IBTR: TIBTransaction;
    IBTW: TIBTransaction;
    Qry_Users: TIBQuery;
    Sql: TIBSQL;
    Qry: TIBQuery;
    Qry_Settings: TIBQuery;
    Qry_CustProc: TIBQuery;
    Ds_Custproc: TDataSource;
    Qry_Now: TIBQuery;
    Qry_Ticket: TIBQuery;
    DS_Ticket: TDataSource;
    Qry_NowDT: TDateTimeField;
    Qry_TicketID: TIntegerField;
    Qry_TicketN_TICKET: TIntegerField;
    Qry_TicketDT_IS: TDateTimeField;
    Qry_TicketUSERNAME: TIBStringField;
    Qry_TicketSTATUS: TIBStringField;
    Qry_TicketSTEP_CTRL: TIntegerField;
    Qry_TicketCUST_PROC: TIBStringField;
    Qry_TicketSTATUS_HUMAN: TIBStringField;
    Qry_TSTarget: TIBQuery;
    Ds_TsTarget: TDataSource;
    Qry_TsType: TIBQuery;
    Ds_TsType: TDataSource;
    Qry_TS: TIBQuery;
    DS_TS: TDataSource;
    Qry_Trailer: TIBQuery;
    DS_Trailer: TDataSource;
    Qry_TSID: TIntegerField;
    Qry_TSID_TICKET: TIntegerField;
    Qry_TSN_TS: TIBStringField;
    Qry_TSKOD_TS: TSmallintField;
    Qry_TSFIO_DRIVER: TIBStringField;
    Qry_TSTARGET2: TIntegerField;
    Qry_TSPHONE: TIBStringField;
    Qry_TSCRASHES: TBlobField;
    Qry_TSNAME: TIBStringField;
    Qry_TSNAME1: TIBStringField;
    Qry_ParkZTK: TIBQuery;
    Ds_ParkZTK: TDataSource;
    Qry_Parts: TIBQuery;
    DS_Parts: TDataSource;
    Qry_RegtiDisp: TIBQuery;
    DS_RegtiDisp: TDataSource;
    Qry_Val: TIBQuery;
    DS_VAl: TDataSource;
    Qry_Broker: TIBQuery;
    DS_Broker: TDataSource;
    Qry_TP: TIBQuery;
    DS_TP: TDataSource;
    Qry_Goods: TIBQuery;
    DS_Goods: TDataSource;
    IBEvents1: TIBEvents;
    Qry_TSN_TRAILER: TIBStringField;
    Qry_Rep_Part: TIBQuery;
    Qry_Rep_TS: TIBQuery;
    DS_Qry_Rep_Parts: TDataSource;
    Qry_Rep_TP: TIBQuery;
    Qry_TSN_TRAILER1: TIBStringField;
    Qry_PartsID: TIntegerField;
    Qry_PartsID_TICKET: TIntegerField;
    Qry_PartsID_OWNER: TIntegerField;
    Qry_PartsNPP: TIntegerField;
    Qry_PartsSTEP_CTRL: TIntegerField;
    Qry_PartsPART_NOMER: TIBStringField;
    Qry_PartsZAYV: TIBStringField;
    Qry_PartsSTEP_HUMAN: TStringField;
    Qry_TicketSTEP_HUMAN: TStringField;
    Qry_Rep_Step1: TIBQuery;
    Qry_Rep_Step2: TIBQuery;
    Qry_TSNUM_PARK: TIBStringField;
    Qry_Shipper: TIBQuery;
    DS_Shipper: TDataSource;
    Qry_TSTS_ACTION_CODE: TIntegerField;
    Qry_ScaleTS: TIBQuery;
    DS_Qry_ScaleTS: TDataSource;
    DS_ActScales: TDataSource;
    Qry_ActScales: TIBQuery;
    Qry_TpToCbx: TIBQuery;
    Ds_TpToCbx: TDataSource;
    Qry_Warehouse: TIBQuery;
    DS_Warehouse: TDataSource;
    Qry_WhActIn: TIBQuery;
    DS_WhActIn: TDataSource;
    Qry_WhActOut: TIBQuery;
    DS_WhOut: TDataSource;
    Qry_SVH: TIBQuery;
    DS_SVH: TDataSource;
    Qry_ClosedCbx: TIBQuery;
    DS_ClosedCBX: TDataSource;
    Qry_RepWhIn: TIBQuery;
    Qry_DoHead: TIBQuery;
    Ds_DoHead: TDataSource;
    Qry_DoCust: TIBQuery;
    DS_DoCust: TDataSource;
    Qry_DoTrand: TIBQuery;
    DS_DoTrand: TDataSource;
    Qry_DoTrans: TIBQuery;
    DS_DoTrans: TDataSource;
    Qry_DoTovar: TIBQuery;
    DS_DoTovar: TDataSource;
    Qry_Oksmt: TIBQuery;
    DS_Oksmt: TDataSource;
    Qry_DoOutHd: TIBQuery;
    DS_DoOutHd: TDataSource;
    DS_DoOutCust: TDataSource;
    Qry_DoOutCust: TIBQuery;
    DS_DoOutTovar: TDataSource;
    Qry_DoOutTovar: TIBQuery;
    Qry_Carrier: TIBQuery;
    DS_Carrier: TDataSource;
    Qry_VidTrans: TIBQuery;
    Ds_VidTrans: TDataSource;
    Qry_TDOC: TIBQuery;
    DS_TDOC: TDataSource;
    Qry_Docg44: TIBQuery;
    DS_Docg44: TDataSource;
    Qry_DoTrandID: TIntegerField;
    Qry_DoTrandID_DO1: TIntegerField;
    Qry_DoTrandN_TD: TIntegerField;
    Qry_DoTrandNAME: TIBStringField;
    Qry_DoTrandNDOC: TIBStringField;
    Qry_DoTrandDDOC: TDateField;
    Qry_DoTrandTYPE_DOC: TIBStringField;
    Qry_DoTrandKOL_TOV: TIntegerField;
    SP_DoTrandCountTov: TIBStoredProc;
    Qry_Tnved4: TIBQuery;
    DS_Tnved4: TDataSource;
    Qry_raspiska: TIBQuery;
    Qry_RepDo1: TIBQuery;
    Ibdt_rep_do2: TIBDataSet;
    DS_QryGtd: TDataSource;
    Qry_Gtd: TIBQuery;
    Qry_Do2LinkedDocs: TIBQuery;
    DS_Do2LinkedDocs: TDataSource;
    Qry_RepDo2: TIBQuery;
    Qry_Do2Sheet: TIBQuery;
    DS_Do2Sheet: TDataSource;
    Qry_PriceType: TIBQuery;
    DS_PriceType: TDataSource;
    Qry_PriceList: TIBQuery;
    DS_PriceList: TDataSource;
    MT_PriceList: TMemTableEh;
    DSDriver_PriseList: TDataSetDriverEh;
    Qry_Edizm: TIBQuery;
    DS_Edizm: TDataSource;
    Qry_Usl: TIBQuery;
    DS_usl: TDataSource;
    Qry_Dogovors: TIBQuery;
    DS_Dogovors: TDataSource;
    Qry_Hold: TIBQuery;
    DS_Hold: TDataSource;
    Qry_DogovorsID: TIntegerField;
    Qry_DogovorsID_ZAYV: TIntegerField;
    Qry_DogovorsNUM_DOG: TIBStringField;
    Qry_DogovorsSTART_DOG: TDateField;
    Qry_DogovorsEND_DATE: TDateField;
    Qry_DogovorsNOTE: TBlobField;
    Qry_ReasDog: TIBQuery;
    DS_ReasDog: TDataSource;
    Qry_ClAc: TIBQuery;
    DS_ClAc: TDataSource;
    Qry_VidPlDoc: TIBQuery;
    DS_VidPlDoc: TDataSource;
    Qry_VidOp: TIBQuery;
    DS_VidOp: TDataSource;
    Qry_TSMARKA: TIBStringField;
    Qry_WhActOutID: TIntegerField;
    Qry_WhActOutNPP: TIntegerField;
    Qry_WhActOutDT: TDateTimeField;
    Qry_WhActOutCLIENT_NAME: TIBStringField;
    Qry_WhActOutCLIENT_DOLJ: TIBStringField;
    Qry_WhActOutKEEPER_NAME: TIBStringField;
    Qry_WhActOutKEEPER_DOLJ: TIBStringField;
    Qry_WhActOutWEIGHT: TIBBCDField;
    Qry_WhActOutPLACES_KOL: TIntegerField;
    Qry_WhActOutID_DO2: TIntegerField;
    Qry_WhActOutNOTE: TBlobField;
    Qry_WhActOutID_TP: TIntegerField;
    Qry_WhActOutMestOst: TIntegerField;
    Qry_WhActOutWeightOst: TFloatField;
    DS_WhDocOut: TDataSource;
    Qry_WhDocOut: TIBQuery;
    Ds_ActWithoutDo2: TDataSource;
    Qry_ActWithoutDo2: TIBQuery;
    Qry_RepWhOut: TIBQuery;
    Ds_RepWhOut: TDataSource;
    Qry_Rep_Step4: TIBQuery;
    Qry_Rep_Step5: TIBQuery;
    Qry_PartsPAY_CONTROL: TIntegerField;
    Qry_PartForPay: TIBQuery;
    Ds_PartForPay: TDataSource;
    DS_FHead: TDataSource;
    Qry_Daily_SumFaktura: TIBQuery;
    Qry_FHead: TIBQuery;
    Ds_FItems: TDataSource;
    Qry_FItems: TIBQuery;
    Qry_RepInFaktura: TIBQuery;
    Qry_Rep_Step6: TIBQuery;
    Qry_FheadLog: TIBQuery;
    Qry_FItemsLog: TIBQuery;
    DS_FheadLog: TDataSource;
    Ds_FItemsLog: TDataSource;
    Qry_Rep_Step7: TIBQuery;
    Qry_TSOUT_FLAG: TIntegerField;
    Qry_GurTsIn: TIBQuery;
    Ds_GurTsIn: TDataSource;
    Qry_GurTsOut: TIBQuery;
    Ds_GurTsOut: TDataSource;
    Qry_Pztk: TIBQuery;
    DS_Pztk: TDataSource;
    Qry_TtnIn: TIBQuery;
    Qry_PztkOutDocs: TIBQuery;
    Ds_TtnIn: TDataSource;
    DS_PztkOutDocs: TDataSource;
    Ds_CustUsers: TDataSource;
    Qry_CustUsers: TIBQuery;
    Qry_Bills: TIBQuery;
    Ds_Bills: TDataSource;
    Qry_AllPartsForPay: TIBQuery;
    Ds_AllPartsForPay: TDataSource;
    Qry_RepCheck: TIBQuery;
    Ds_ActOfScalesTs: TDataSource;
    Qry_ActOfScalesTs: TIBQuery;
    Ds_RelTpActIn: TDataSource;
    Qry_RelTpActIn: TIBQuery;
    Qry_OpenCbx: TIBQuery;
    Ds_OpenCbx: TDataSource;
    DS_RepWhIn: TDataSource;
    Qry_WhClosedDetailed: TIBQuery;
    Ds_WhClosedDetailed: TDataSource;
    Qry_WhOpenDetailed: TIBQuery;
    Ds_WhOpenDetailed: TDataSource;
    Qry_WhActOutID_ACTIN: TIntegerField;
    Qry_WhActOutDO2_STATN: TIntegerField;
    Qry_WhActOutG072: TDateTimeField;
    Qry_TPWithoutDo1: TIBQuery;
    Ds_TPWithoutDo1: TDataSource;
    Qry_TicketLog: TIBQuery;
    Ds_TicketLog: TDataSource;
    Qry_TovMismatch: TIBQuery;
    Qry_ActCom: TIBQuery;
    Ds_ActCom: TDataSource;
    Ds_TovMismatch: TDataSource;
    Qry_RepCheckKpp: TIBQuery;
    Qry_PayList: TIBQuery;
    Qry_TicketID_CARRIER: TIntegerField;
    Qry_TicketPOP: TIBStringField;
    Qry_TicketCUST_USER: TIBStringField;
    Qry_TicketOWNER: TIBStringField;
    Qry_RepPassOut: TIBQuery;
    Qry_RepPassOutTs: TIBQuery;
    Qry_UslDel: TIBQuery;
    Ds_UslDel: TDataSource;
    Qry_Exp_Inv: TIBQuery;
    Ds_Exp_Inv: TDataSource;
    QryExp: TIBQuery;
    Ds_QryExp: TDataSource;
    Qry_Bank: TIBQuery;
    Qry_Rep12: TIBQuery;
    Qry_RepNegSaldo: TIBQuery;
    Qry_BuhRep_FakturaSumma: TIBQuery;
    Ds_BuhRep_FakturaSumma: TDataSource;
    Qry_TicketDELETE_FLAG: TIBStringField;
    Qry_DoArc: TIBQuery;
    Ds_DoArc: TDataSource;
    Ds_TicketForFakturaLog: TDataSource;
    Qry_TicketForFakturaLog: TIBQuery;
    Qry_WhActOutCBXTOCBX: TSmallintField;
    Qry_DoOstatki: TIBQuery;
    Qry_WhActOutDT_PRINT: TDateTimeField;
    Qry_TicketELECTRICITY: TSmallintField;
    Qry_sms_subscr: TIBQuery;
    Ds_Qry_sms: TDataSource;
    Qry_mail_subscr: TIBQuery;
    Ds_mail_subscr: TDataSource;
    Qry_Regti: TIBQuery;
    Ds_Regti: TDataSource;
    Qry_PartsINN: TIBStringField;
    Qry_CountryCodes: TIBQuery;
    DS_CountryCodes: TDataSource;
    Qry_TSOUT_PZTK: TDateTimeField;
    Qry_TSDT_IN: TDateTimeField;
    Qry_TSCOUNTRY: TIBStringField;
    Qry_TSCOUNTRY_HUMAN: TIBStringField;
    Qry_ReasonDolgDetail: TIBQuery;
    Qry_Regti_Buh: TIBQuery;
    DS_Regti_Buh: TDataSource;
    Qry_ReasonDolgMaster: TIBQuery;
    DS_ReasonDolgMaster: TDataSource;
    Qry_BillItems: TIBQuery;
    DS_BillItems: TDataSource;
    Qry_BillItemsPayed: TIBQuery;
    DS_BillItemsPayed: TDataSource;
    Qry_SelectParts: TIBQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    StringField1: TStringField;
    IntegerField6: TIntegerField;
    IBStringField3: TIBStringField;
    DS_SelectParts: TDataSource;
    Qry_TicketVIDTRANS: TIBStringField;
    Qry_PartsTS_FLAG: TSmallintField;
    DS_DogovorsList: TDataSource;
    Qry_DogovorsList: TIBQuery;
    Ds_FItemsEdited: TDataSource;
    Qry_FItemsEdited: TIBQuery;
    Qry_TSVES: TIntegerField;
    Qry_TSVES_TR: TIntegerField;
    Qry_TSVES_CONTROL: TIntegerField;
    Qry_TSDT_CONTROL: TDateTimeField;
    Qry_TSUSER_CONTROL: TIBStringField;
    Qry_TicketID1: TIntegerField;
    Qry_TSOUT_PZTK_FLAG: TSmallintField;
    Qry_TSTR_FLAG: TSmallintField;
    Qry_TSVES_GRUZA: TIBStringField;
    Qry_VesCheque: TIBQuery;
    Qry_InspLog: TIBQuery;
    DS_InspLog: TDataSource;
    Qry_TicketPHONE: TIBStringField;
    Qry_TruckModels: TIBQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure Qry_TicketCalcFields(DataSet: TDataSet);
    procedure IBEvents1EventAlert(Sender: TObject; EventName: string;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure Qry_PartsCalcFields(DataSet: TDataSet);
    procedure Qry_DoTrandCalcFields(DataSet: TDataSet);
    procedure Qry_WhActOutCalcFields(DataSet: TDataSet);
    procedure DS_FHeadDataChange(Sender: TObject; Field: TField);
    procedure DS_FHeadStateChange(Sender: TObject);
    procedure DS_FHeadUpdateData(Sender: TObject);
  private
    { Private declarations }
    function ConnectToDatabase:Boolean;
  public
    { Public declarations }
    //процедура обновления данных настроек програмы. Предназначена для перечитывания номеров док-в
    procedure Refresh_Settings;
    procedure Refresh_Ticket;
    procedure Refresh_TS;
    procedure Refresh_Parts;
    procedure Refresh_TP;
    procedure Refresh_Full_Ticket_Qry_Rep;
    procedure OpenDo1;
    procedure CloseDo1;
    procedure Refresh_Do1;
    procedure Refresh_DoTrand;
    procedure Refresh_DoTovar;
    procedure Refresh_Do2Tovar;
    // функция присутствия прицепа false - нет прицепа true - есть
    function Has_Trailer(IdTruck:Integer):Boolean;
    procedure OpenSprav ;
    procedure ReNumberTtn(id_do1:Integer);
    procedure ReNumber_NTov(id_do1,n_ttn:Integer);
    function  GetDoTranDoc(Id_do1:Integer):String;
    procedure OpenDo2  ;
    procedure CloseDo2;
    procedure OpenDB;
    procedure Refresh_Warehouse;
    procedure Refresh_WhActIn;
    procedure Refresh_WhActOut;
    procedure Refresh_Rel_Tp_ActIn;
    procedure Refresh_ActWithoutDo2;
    procedure Refresh_Do2;
    procedure Refresh_Fhead;
    procedure Refresh_FItems;
    procedure RefreshClosedCBX;
    procedure RefreshOpenCBX;
    procedure Refresh_TPWithoutDo1;
    procedure Refresh_Qry_AllPartsForPay;
    procedure Refresh_Qry_PartForPay;
    procedure Refresh_Broker;
    procedure Refresh_Goods;
    procedure Refresh_ActTP;
    procedure Refresh_TpToCbx;
    procedure Refresh_ScalingTs;
    procedure Refresh_Carrier;
    procedure Refresh_TNved4;
    procedure Refresh_RegTi;
    procedure Refresh_PZTKLog;
    procedure Refresh_DoArc;
    procedure Refresh_BillItems;
    function  GetSumFaktura(IdRec:Integer):Double; // найти сумму с-ф по ее ИД
    function  GetNtsList(IdFHead:Integer):String;  // найти список ТС для с-ф
    function  GetFHeadList(IdPart:Integer):String; // найти список с-ф для части КТ
    function  GetTtnList (IdTicket:Integer):String; // найти список ТТН для КТ
    function  GetOutDocList (IdTicket:Integer):String; // найти список оснований выпуска товаров для КТ
    function  GetNamePrice (IdRec:Integer):String; // найти название прайс-листа по id
    function  CheckTsTarget (IdTicket:Integer):Boolean; //проверка присутствия ТС с целью - Оформление груза
    procedure IBQueryRefresh(DSName:TIBQuery;DBName:TIBDatabase);
    function  GetOwnerByPart(Idpart:Integer):Integer;
    function  GetWeigtDifPercent(Wdoc,Wfact:Double): Integer;
  end;


var
  DM: TDM;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}
uses main, Buh_U, TsOut_U;

function TDM.CheckTsTarget(IdTicket: Integer): Boolean;
var
 qry:TIbQuery;
 i:Integer;
begin
  Result:=False;
  try
    qry:=TIBQuery.Create(self);
    qry.Database:=DB;
    qry.Transaction:=IBTR;
    qry.SQL.Add('select count(*) from ts where id_ticket = :p0 and target = :p1 ');
    qry.Params[0].AsInteger:=IdTicket;
    qry.Params[1].AsInteger:=1;// Оформление груза
    qry.Open;
    i:=qry.Fields[0].AsInteger;
    if i > 0 then Result:=True;
  finally
    qry.Free;
  end;
end;

procedure TDM.CloseDo1;
begin
 DM.Qry_DoHead.Close;
 DM.Qry_DoCust.Close;
 DM.Qry_DoTrand.Close;
 DM.Qry_DoTrans.Close;
 DM.Qry_DoTovar.Close;
 DM.Qry_ActCom.Close;
 DM.Qry_TovMismatch.Close;
end;

procedure TDM.CloseDo2;
begin
 DM.Qry_DoOutHd.Close;
 DM.Qry_Gtd.Close;
 DM.Qry_DoOutTovar.Close;
 DM.Qry_Do2LinkedDocs.Close;
 DM.Qry_Do2Sheet.Close;

end;

function TDM.ConnectToDatabase: Boolean;
var
  F:TextFile;
  DB_Name,FileName:String;
  R:Boolean;
begin
  Result:=False;
  FileName:='connectstring.ini';
  AssignFile(F,FileName);
  Reset(F);
  ReadLn(F,DB_Name);
//  ReadLn(F,RemoteFlag);
  CloseFile(F);
 if DB.Connected then DB.Close;
// ShowMessage('Is connected');
 DB.DatabaseName:='';
 DB.DatabaseName:=Trim(Db_Name);
// ShowMessage('Set db_name');
 try
  DB.Open;
 except
//   on E:Exception do ShowMessage(E.Message);
  on E: EIBInterBaseError  do ShowMessage('EIBInterBaseError'+ E.Message+IntToStr(E.IBErrorCode));
  on E: EIBInterBaseRoleError  do ShowMessage('EIBInterBaseRoleError'+E.Message+IntToStr(E.IBErrorCode));
  on E: EIBClientError  do ShowMessage('EIBClientError'+ E.Message+IntToStr(E.IBErrorCode));
 end;
 R:=DB.Connected;
 Result:=R;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
 if not ConnectToDatabase then
    begin
//     Application.MessageBox('Ошибка соединения с БД! Программа будет закрыта','Внимание!',MB );
     Application.Terminate;
    end;
end;



procedure TDM.DS_FHeadDataChange(Sender: TObject; Field: TField);
begin
if Assigned(Buh_F)then
    Buh_F.Grid_FHead.Columns[4].Footers[0].Value:=FormatFloat('0.00',Buh_F.GetSaldo(Qry_FHead.FieldByName('PLAT_NAME').AsInteger));
 end;

procedure TDM.DS_FHeadStateChange(Sender: TObject);
begin
ShowMessage('StateChange');
end;

procedure TDM.DS_FHeadUpdateData(Sender: TObject);
begin
ShowMessage('UpdateData');
end;

function TDM.GetDoTranDoc(Id_do1: Integer): String;
var
 Qry_tmp: TIbQuery;
 s:String;
begin
  Result:='';
  try
      Qry_Tmp:=TIbQuery.Create(Self);
      Qry_tmp.SQL.Add('select name,ndoc,ddoc from do_trand where id_do1=:p0 ');
      Qry_tmp.Params[0].AsInteger:=DM.Qry_DoHead.FieldByName('ID').AsInteger;
      Qry_tmp.Open;
      while not Qry_tmp.Eof do
         begin
               s:=s+Qry_tmp.FieldByName('NAME').asString+char(32)+
               Qry_tmp.FieldByName('NDOC').asString+char(32)+'от'+char(32)+
               Qry_tmp.FieldByName('DDOC').asString+char(59)+char(32);
               Qry_tmp.Next;
      end;
      Qry_tmp.Close;
      Result:=s;
  finally
      Qry_tmp.Free;
  end;
end;

function TDM.GetFHeadList(IdPart: Integer): String;
var
 Qry_tmp:TIbquery;
 s:string;
begin
  Result:='';
  try
    Qry_tmp:=TIBQuery.Create(Self);
    Qry_tmp.Database:=Dm.DB;
    Qry_tmp.SQL.Add(' select distinct b.nomer from rel_kt_inv a left join faktura_head b on a.id_inv = b.id ');
    Qry_tmp.SQL.Add(' where a.id_kt=:p0 order by a.id ');
    Qry_tmp.Params[0].AsInteger:=IdPart;
    Qry_tmp.Open;
    s:='';
    while not Qry_tmp.Eof do
       begin
         s:=s+Qry_tmp.Fields[0].AsString+';';
         Qry_tmp.Next;
       end;
   // удалим крайний символ ';'
   s:=Copy(s,1,Length(s)-1);
   Result:=s;
  finally
    Qry_tmp.Free;
  end;

end;

function TDM.GetSumFaktura(IdRec: Integer): Double;
var
 Qry_tmp:TIbquery;
begin
  try
    Qry_tmp:=TIBQuery.Create(Self);
    Qry_tmp.Database:=Dm.DB;
    Qry_tmp.SQL.Add('select sum(total_sum) from faktura_items where id_f_head=:p0 ');
    Qry_tmp.Params[0].AsInteger:=IdRec;
    Qry_tmp.Open;
    Result:= Qry_tmp.Fields[0].AsFloat  ;
  finally
    Qry_tmp.Free;
  end;
end;

function TDM.GetTtnList(IdTicket: Integer): String;
var
 Qry_tmp:TIbquery;
 s:string;
begin
  Result:='';
  try
    Qry_tmp:=TIBQuery.Create(Self);
    Qry_tmp.Database:=Dm.DB;
    Qry_tmp.SQL.Add(' select a.ndoc,a.ddoc from ttn_in a  ');
    Qry_tmp.SQL.Add(' where a.id_ticket=:p0 order by a.id ');
    Qry_tmp.Params[0].AsInteger:=IdTicket;
    Qry_tmp.Open;
    s:='';
    while not Qry_tmp.Eof do
       begin
         s:=s+' № '+Qry_Tmp.Fields[0].AsString+' от '+Qry_Tmp.Fields[1].AsString + ' ;';
         Qry_tmp.Next;
       end;
   // удалим крайний символ ';'
   s:=Copy(s,1,Length(s)-1);
   Result:=s;
  finally
    Qry_tmp.Free;
  end;
end;

function TDM.GetWeigtDifPercent(Wdoc, Wfact: Double): Integer;
var
  percent,percent_fact:Integer ;
begin
  Result:=0;
  Refresh_Settings;
  percent:=Qry_Settings.FieldByName('DIF_WEIGT_PERCENT').AsInteger;
  if Wdoc > Wfact then
    begin
      percent_fact:= Trunc(WFact/Wdoc*100 - 100);
      if -(percent_fact) > percent   then Result:= percent_fact;
    end
    else
      if Wdoc < Wfact then
        begin
          percent_fact:= Trunc(Wfact/Wdoc*100 - 100);
          if percent_fact > percent   then Result:= percent_fact;
        end;
end;

function TDM.GetNamePrice(IdRec: Integer): String;
var
 qry:TIbQuery;
begin
  try
    Result:='';
    qry:=TIBQuery.Create(Self);
    qry.Database:=Dm.DB;
    qry.Transaction:=dm.IBTR;
    qry.SQL.Add(' select name from prices where id =:p0 ');
    qry.Params[0].AsInteger:=IdRec;
    qry.Open;
    Result:=qry.Fields[0].AsString;
  finally
    qry.Free;
  end;

end;

function TDM.GetNtsList(IdFHead: Integer): String;
var
 Qry_tmp:TIbquery;
 s:string;
begin
  Result:='';
  try
    Qry_tmp:=TIBQuery.Create(Self);
    Qry_tmp.Database:=Dm.DB;
    Qry_tmp.SQL.Add(' select distinct d.n_ts,d.n_trailer_human from rel_kt_inv a left join faktura_head b on a.id_inv = b.id ');
    Qry_tmp.SQL.Add(' left join ticket_parts c on a.id_kt=c.id left join first_ts d on c.id_ticket=d.id_ticket ');
    Qry_tmp.SQL.Add(' where (a.id_inv=:p0) and (d.target = 1 or d.target = 11) order by c.id_ticket ');
    Qry_tmp.Params[0].AsInteger:=IdFHead;
    Qry_tmp.Open;
    s:='';
    while not Qry_tmp.Eof do
       begin
         s:=s+Qry_tmp.Fields[0].AsString+'/'+Qry_Tmp.Fields[1].AsString+';';
         Qry_tmp.Next;
       end;
   // удалим крайний символ ';'
   s:=Copy(s,1,Length(s)-1);
   Result:=s;
  finally
    Qry_tmp.Free;
  end;
end;

function TDM.GetOutDocList(IdTicket: Integer): String;
var
 Qry_tmp:TIbquery;
 s:string;
begin
  Result:='';
  try
    Qry_tmp:=TIBQuery.Create(Self);
    Qry_tmp.Database:=Dm.DB;
    Qry_tmp.SQL.Add(' select a.name,a.ndoc,a.ddoc from out_docs a  ');
    Qry_tmp.SQL.Add(' where a.id_ticket=:p0 order by a.id ');
    Qry_tmp.Params[0].AsInteger:=IdTicket;
    Qry_tmp.Open;
    s:='';
    while not Qry_tmp.Eof do
       begin
         s:=s+Qry_Tmp.Fields[0].AsString+' № '+Qry_Tmp.Fields[1].AsString+' от '+Qry_Tmp.Fields[2].AsString + ' ;';
         Qry_tmp.Next;
       end;
   // удалим крайний символ ';'
   s:=Copy(s,1,Length(s)-1);
   Result:=s;
  finally
    Qry_tmp.Free;
  end;
end;

function TDM.GetOwnerByPart(Idpart: Integer): Integer;
var
 Qry_tmp:TIbquery;
begin
  Result:=0;
  try
    Qry_tmp:=TIBQuery.Create(Self);
    Qry_tmp.Database:=Dm.DB;
    Qry_tmp.SQL.Add('select id_owner from ticket_parts where id=:p0 ');
    Qry_tmp.Params[0].AsInteger:=Idpart;
    Qry_tmp.Open;
    Result:=Qry_tmp.Fields[0].AsInteger;
    Qry_tmp.Close;
  finally
    Qry_tmp.Free;
  end;
end;

function TDM.Has_Trailer(IdTruck: Integer): Boolean;
var
 Qry_tmp:TIbquery;
begin
  Result:=False;
  try
    Qry_tmp:=TIBQuery.Create(Self);
    Qry_tmp.Database:=Dm.DB;
    Qry_tmp.SQL.Add('select count(*) from trailers where id_truck=:p0 ');
    Qry_tmp.Params[0].AsInteger:=IdTruck;
    Qry_tmp.Open;
    if Qry_tmp.Fields[0].AsInteger=1 then  Result:=True ;
    Qry_tmp.Close;
  finally
    Qry_tmp.Free;
  end;
end;

procedure TDM.IBEvents1EventAlert(Sender: TObject; EventName: string;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
if (EventName='REFRESH_TS_OUT') then
  begin
    if not Qry_GurTsOut.Active then Exit;
    IBQueryRefresh(Qry_GurTsOut,DB);
  end;
{if (EventName='UPDATE_TICKET') or (EventName='ADD_TICKET') then
  begin
    try
     Qry_Ticket.DisableControls;
     Refresh_Ticket;
    finally
     Qry_Ticket.EnableControls;
    end;
  end;
if (EventName='UPDATE_PARTIES') or (EventName='ADD_PARTIES') then
  begin
    try
     Qry_TP.DisableControls;
     Refresh_TP;
     Refresh_Warehouse;
     Refresh_TPWithoutDo1;
    finally
     Qry_TP.EnableControls;
    end;
  end;

if (EventName='CHANGE_TS') or (EventName='CHANGE_TRAILERS') then
  begin
    try
     Qry_TS.DisableControls;
     Qry_Pztk.DisableControls;
     Refresh_TS;
     Refresh_PZTKLog;
    finally
     Qry_TS.EnableControls;
     Qry_Pztk.EnableControls;
    end;
  end;
if EventName='CHANGE_TICKET_PARTS'  then
  begin
    try
     Qry_Parts.DisableControls;
     Refresh_Parts;
     Refresh_Qry_AllPartsForPay;
     Refresh_Qry_PartForPay;
    finally
     Qry_Parts.EnableControls;
    end;
  end;

if EventName='DO_HEAD_UPDATED' then
  begin
    try
     Qry_DoHead.DisableControls;
     Refresh_Do1;
    finally
     Qry_DoHead.EnableControls;
    end;
  end;

if EventName='INSERT WH_ACT_OUT' then
  begin
     Refresh_ActWithoutDo2;
  end;}


end;

procedure TDM.IBQueryRefresh(DSName: TIBQuery; DBName: TIBDatabase);
var
  qry:TIBquery;
  rec:Integer;
  pkey:string;
begin
  DSName.DisableControls;
  qry := TIBQuery.Create(Self);
  try
    qry.Database:=DBName;
    qry.SQL.Add('select * from gettablepkfields (:tablename)');
    qry.ParamByName('TABLENAME').AsString:='ACT_COM';
    qry.Open;
    pkey:=qry.Fields[0].AsString;
    if DSname.FieldByName(pkey).IsNull then Exit;
    rec:=DSname.FieldByName(pkey).AsInteger;
    DSName.Close;
    DSName.Open;
    DSName.Locate(pkey,rec,[]);
  finally
    qry.Free;
    DSName.EnableControls;
  end;


end;

procedure TDM.OpenDB;
begin
 if NOT DM.Qry_Ticket.Active then Dm.Qry_Ticket.Open;
 if NOT DM.Qry_TS.Active then Dm.Qry_TS.Open;
 if NOT DM.Qry_Parts.Active then Dm.Qry_Parts.Open;
 if NOT DM.Qry_TP.Active then Dm.Qry_TP.Open;
 if NOT DM.Qry_Usl.Active then Dm.Qry_Usl.Open;
 if not DM.Qry_ClAc.Active then DM.Qry_ClAc.Open;
 if not DM.Qry_Bills.Active then DM.Qry_Bills.Open;
 if not DM.Qry_VidPlDoc.Active then DM.Qry_VidPlDoc.Open;
 if not DM.Qry_VidOp.Active then DM.Qry_VidOp.Open;
 if not DM.Qry_ReasDog.Active then DM.Qry_ReasDog.Open;
 if not DM.Qry_PartForPay.Active then DM.Qry_PartForPay.Open;
 if not DM.Qry_AllPartsForPay.Active then DM.Qry_AllPartsForPay.Open;
 if not DM.Qry_FHead.Active then DM.Qry_FHead.Open;
 if not DM.Qry_FItems.Active then DM.Qry_FItems.Open;
 if not DM.Qry_GurTsIn.Active then DM.Qry_GurTsIn.Open;
 if not DM.Qry_GurTsOut.Active then DM.Qry_GurTsOut.Open;
 if not DM.Qry_Pztk.Active then DM.Qry_Pztk.Open;
 if not DM.Qry_TtnIn.Active then DM.Qry_TtnIn.Open;
 if not DM.Qry_PztkOutDocs.Active then DM.Qry_PztkOutDocs.Open;
 if NOT DM.Qry_Warehouse.Active then Dm.Qry_Warehouse.Open;
 if Not DM.Qry_RelTpActIn.Active then DM.Qry_RelTpActIn.Open;
 if NOT DM.Qry_WhActIn.Active then Dm.Qry_WhActIn.Open;
 if NOT DM.Qry_WhActOut.Active then Dm.Qry_WhActOut.Open;
 if NOT DM.Qry_WhDocOut.Active then Dm.Qry_WhDocOut.Open;
end;

procedure TDM.OpenDo1;
begin
 DM.Qry_DoHead.Open;
 DM.Qry_DoCust.Open;
 DM.Qry_DoTrand.Open;
 DM.Qry_DoTrans.Open;
 DM.Qry_DoTovar.Open;
 DM.Qry_ActCom.Open;
 DM.Qry_TovMismatch.Open;
 DM.Qry_DoArc.Open;
end;

procedure TDM.OpenDo2;
begin
 DM.Qry_DoOutHd.Open;
 DM.Qry_Gtd.Open;
 DM.Qry_DoOutTovar.Open;
 DM.Qry_Do2LinkedDocs.Open;
 DM.Qry_Do2Sheet.Open;
end;

procedure TDM.OpenSprav;
begin
    Qry_RegtiDisp.Open;
    Qry_Val.Open;
    Qry_Broker.Open;
    Qry_Goods.Open;
    Qry_Settings.Open;
    Qry_CustProc.Open;
    Qry_TSTarget.Open;
    Qry_TsType.Open;
    Qry_Shipper.Open;
    Qry_Svh.Open;
    Qry_CountryCodes.Open;
    Qry_Carrier.Open;
    Qry_VidTrans.Open;
    Qry_TDOC.Open;
    Qry_Docg44.Open;
    Qry_Tnved4.Open;
    Qry_PriceType.Open;
    MT_PriceList.Open;
    Qry_Edizm.Open;
    Qry_RegTi.Open;
    Qry_Hold.Open;
    Qry_CustUsers.Open;
end;

procedure TDM.Qry_DoTrandCalcFields(DataSet: TDataSet);
begin
 SP_DoTrandCountTov.Params[1].AsInteger:=Qry_DoTrand.FieldByName('ID_DO1').AsInteger;
 SP_DotrandCountTov.Params[2].AsInteger:=Qry_Dotrand.FieldByName('N_TD').AsInteger;
 SP_DotrandCountTov.ExecProc;
 Qry_DoTrand.FieldByName('Kol_Tov').asInteger:=SP_DotrandCountTov.Params[0].AsInteger;
end;

procedure TDM.Qry_PartsCalcFields(DataSet: TDataSet);
begin
 case Qry_PartsSTEP_CTRL.AsInteger of
   3: Qry_PartsSTEP_HUMAN.AsString:=STEP_3;
   4: Qry_PartsSTEP_HUMAN.AsString:=STEP_4;
   5: Qry_PartsSTEP_HUMAN.AsString:=STEP_5;
   6: Qry_PartsSTEP_HUMAN.AsString:=STEP_6;
   7: Qry_PartsSTEP_HUMAN.AsString:=STEP_7;
 end;
end;

procedure TDM.Qry_TicketCalcFields(DataSet: TDataSet);
begin
 case Qry_TicketSTEP_CTRL.AsInteger of
   0: Qry_TicketSTEP_HUMAN.AsString:=STEP_0;
   1: Qry_TicketSTEP_HUMAN.AsString:=STEP_1;
   2: Qry_TicketSTEP_HUMAN.AsString:=STEP_2;
 end;
 if Qry_TicketSTATUS.AsString = 'W' then Qry_TicketSTATUS_HUMAN.AsString:=STATUS_W;
 if Qry_TicketSTATUS.AsString = 'A' then Qry_TicketSTATUS_HUMAN.AsString:=STATUS_A;
 if Qry_TicketSTATUS.AsString = 'B' then Qry_TicketSTATUS_HUMAN.AsString:=STATUS_B;
 if Qry_TicketSTATUS.AsString = 'D' then Qry_TicketSTATUS_HUMAN.AsString:=STATUS_D;
end;

procedure TDM.Qry_WhActOutCalcFields(DataSet: TDataSet);
var
 id_actin,mest_prihod,mest_rashod,mest_ostatok:Integer;
 w_prihod,w_rashod,w_ostatok:Double;
begin
  id_actin:=Qry_WhActIn.FieldByName('ID').AsInteger;
  // считаем остаток мест
  Dm.Qry.Close;
  Qry.SQL.Clear;
  DM.Qry.SQL.Add('select sum(places_kol_fact) from wh_act_in where id=:p0 ');
  DM.Qry.Params[0].AsInteger:=id_actin;
  DM.Qry.Open;
  mest_prihod:=Qry.Fields[0].AsInteger;
  Dm.Qry.Close;
  Qry.SQL.Clear;
  DM.Qry.SQL.Add('select sum(places_kol) from wh_act_out where id_actin=:p0 ');
  DM.Qry.Params[0].AsInteger:=id_actin;
  DM.Qry.Open;
  mest_rashod:=Qry.Fields[0].AsInteger;
  mest_ostatok:=mest_prihod-mest_rashod;
  // считаем остаток веса
  Dm.Qry.Close;
  Qry.SQL.Clear;
  DM.Qry.SQL.Add('select sum(weight_fact) from wh_act_in where id=:p0 ');
  DM.Qry.Params[0].AsInteger:=id_actin;
  DM.Qry.Open;
  w_prihod:=Qry.Fields[0].AsFloat;
  Dm.Qry.Close;
  Qry.SQL.Clear;
  DM.Qry.SQL.Add('select sum(weight) from wh_act_out where id_actin=:p0 ');
  DM.Qry.Params[0].AsInteger:=id_actin;
  DM.Qry.Open;
  w_rashod:=Qry.Fields[0].AsFloat;
  w_ostatok:=w_prihod-w_rashod;
  Qry_WhActOutMestOst.Value:=mest_ostatok;
  Qry_WhActOutWeightOst.Value:=w_ostatok;
end;

procedure TDM.Refresh_BillItems;
var
 r:Integer;
begin
  if not Qry_BillItems.Active then Exit;
  try
    Qry_BillItems.DisableControls;
    r:=Qry_BillItems.FieldByName('id').asInteger;
    Qry_BillItems.Close;
    Qry_BillItems.Open;
    Qry_BillItems.Locate('ID',r,[]);
  finally
    Qry_BillItems.EnableControls;
  end;

end;

procedure TDM.RefreshClosedCBX;
var
 r:Integer;
begin
  if not Qry_ClosedCbx.Active then Exit;
  try
    Qry_ClosedCbx.DisableControls;
    Qry_WhClosedDetailed.DisableControls;
    r:=Qry_ClosedCbx.FieldByName('id').asInteger;
    Qry_ClosedCbx.Close;
    Qry_ClosedCbx.Open;
    Qry_ClosedCbx.Locate('ID',r,[]);
    Qry_WhClosedDetailed.Close;
    Qry_WhClosedDetailed.Open;
  finally
    Qry_ClosedCbx.EnableControls;
    Qry_WhClosedDetailed.EnableControls;
  end;
end;

procedure TDM.RefreshOpenCBX;
var
 r:Integer;
begin
  if not Qry_OpenCbx.Active then Exit;
  try
    Qry_OpenCbx.DisableControls;
    Qry_WhOpenDetailed.DisableControls;
    r:=Qry_OpenCbx.FieldByName('id').asInteger;
    Qry_OpenCbx.Close;
    Qry_OpenCbx.Open;
    Qry_OpenCbx.Locate('ID',r,[]);
    Qry_WhOpenDetailed.Close;
    Qry_WhOpenDetailed.Open;

  finally
    Qry_OpenCbx.EnableControls;
    Qry_WhOpenDetailed.EnableControls;

  end;
end;

procedure TDM.Refresh_ActTP;
var
 r:Integer;
begin
   if not Qry_ActScales.Active then Exit;
   try
     Qry_ActScales.DisableControls;
     r:=Qry_ActScales.FieldByName('ID').AsInteger;
     Qry_ActScales.Close;
     Qry_ActScales.Open;
     Qry_ActScales.Locate('ID',r,[]);

   finally
     Qry_ActScales.EnableControls;
   end;
end;

procedure TDM.Refresh_ActWithoutDo2;
var
 r:Integer;
begin
  if not Qry_ActWithoutDo2.Active then Exit;
  try
      Qry_ActWithoutDo2.DisableControls;
      r:=Qry_ActWithoutDo2.FieldByName('id').asInteger;
      Qry_ActWithoutDo2.Close;
      Qry_ActWithoutDo2.Open;
      Qry_ActWithoutDo2.Locate('ID',r,[]);

  finally
      Qry_ActWithoutDo2.EnableControls;
  end;

end;

procedure TDM.Refresh_TPWithoutDo1;
var
 r:Integer;
begin
  if not Qry_TPWithoutDo1.Active then Exit;
  try
    Qry_TPWithoutDo1.DisableControls;
    r:=Qry_TPWithoutDo1.FieldByName('id').asInteger;
    Qry_TPWithoutDo1.Close;
    Qry_TPWithoutDo1.Open;
    Qry_TPWithoutDo1.Locate('ID',r,[]);
  finally
    Qry_TPWithoutDo1.EnableControls;
  end;

end;

procedure TDM.Refresh_Do1;
var
 r:Integer;
begin
 if not Qry_DoHead.Active then Exit;
 try
   Qry_DoHead.DisableControls;
   r:=Qry_DoHead.FieldByName('ID').AsInteger;
   CloseDo1;
   OpenDo1;
   Qry_DoHead.Locate('ID',r,[]);

 finally
   Qry_DoHead.EnableControls;
 end;
end;

procedure TDM.Refresh_Do2;
begin
 CloseDo2;
 OpenDo2;
end;

procedure TDM.Refresh_Do2Tovar;
var
 r:Integer;
begin
 if not Qry_DoOutTovar.Active then Exit;
 try
   Qry_DoOutTovar.DisableControls;
   r:=Qry_DoOutTovar.FieldByName('ID').AsInteger;
   Qry_DoOutTovar.Close;
   Qry_DoOutTovar.Open;
   Qry_DoOutTovar.Locate('ID',r,[]);

 finally
   Qry_DoOutTovar.EnableControls;
 end;
end;

procedure TDM.Refresh_DoArc;
var
 r:Integer;
begin
 if not Qry_DoArc.Active then Exit;
 try
   Qry_DoArc.DisableControls;
   r:=Qry_DoArc.FieldByName('ID').AsInteger;
   Qry_DoArc.Close;
   Qry_DoArc.Open;
   Qry_DoArc.Locate('ID',r,[]);

 finally
   Qry_DoArc.EnableControls;
 end;
end;

procedure TDM.Refresh_DoTovar;
var
 r:Integer;
begin
 if not Qry_DoTovar.Active then Exit;
 try
   Qry_DoTovar.DisableControls;
   r:=Qry_DoTovar.FieldByName('ID').AsInteger;
   Qry_DoTovar.Close;
   Qry_DoTovar.Open;
   Qry_DoTovar.Locate('ID',r,[]);

 finally
   Qry_DoTovar.EnableControls;
 end;
end;

procedure TDM.Refresh_DoTrand;
var
 r:Integer;
begin
 if not Qry_DoTrand.Active then Exit;
 try
   Qry_DoTrand.DisableControls;
   r:=Qry_DoTrand.FieldByName('ID').AsInteger;
   Qry_DoTrand.Close;
   Qry_DoTrand.Open;
   Qry_DoTrand.Locate('ID',r,[]);

 finally
   Qry_DoTrand.EnableControls;
 end;
end;

procedure TDM.Refresh_Fhead;
var
 r:Integer;
begin
  if not Qry_FHead.Active then Exit;
  try
    Qry_FHead.DisableControls;
    r:=Qry_FHead.FieldByName('id').asInteger;
    Qry_FHead.Close;
    Qry_FHead.Open;
    Qry_FHead.Locate('ID',r,[]);

  finally
    Qry_FHead.EnableControls;
  end;
end;

procedure TDM.Refresh_FItems;
var
 r:Integer;
begin
  if not Qry_FItems.Active then Exit;
  try
    Qry_FItems.DisableControls;
    r:=Qry_FItems.FieldByName('id').asInteger;
    Qry_FItems.Close;
    Qry_FItems.Open;
    Qry_FItems.Locate('ID',r,[]);

  finally
    Qry_FItems.EnableControls;
  end;
end;

procedure TDM.Refresh_Full_Ticket_Qry_Rep;
begin
  Qry_Rep_Part.Close;
  Qry_Rep_Part.Params[0].AsInteger:=Main_F.IdPart;
  Qry_Rep_Part.Open;

  Qry_Rep_TS.Close;
  Qry_Rep_TS.Params[0].AsInteger:=Main_F.IdTicket;
  Qry_Rep_TS.Open;

  Qry_Rep_TP.Close;
  Qry_Rep_TP.Params[0].AsInteger:=Main_F.IdPart;
  Qry_Rep_TP.Open;

  Qry_Rep_Step1.Close;
  Qry_Rep_Step1.Params[0].AsInteger:=Main_F.IdTicket;
  Qry_Rep_Step1.Open;

  Qry_Rep_Step2.Close;
  Qry_Rep_Step2.Params[0].AsInteger:=Main_F.IdTicket;
  Qry_Rep_Step2.Open;

  Qry_Rep_Step4.Close;
  Qry_Rep_Step4.Params[0].AsInteger:=Main_F.IdPart;
  Qry_Rep_Step4.Open;

  Qry_Rep_Step5.Close;
  Qry_Rep_Step5.Params[0].AsInteger:=Main_F.IdPart;
  Qry_Rep_Step5.Open;

  Qry_Rep_Step6.Close;
  Qry_Rep_Step6.Params[0].AsInteger:=Main_F.IdPart;
  Qry_Rep_Step6.Open;

  Qry_Rep_Step7.Close;
  Qry_Rep_Step7.Params[0].AsInteger:=Main_F.IdPart;
  Qry_Rep_Step7.Open;

  Qry_Usl.Close;
  Qry_Usl.Params[0].AsInteger:=Main_F.IdPart;
  Qry_Usl.Open;

end;

procedure TDM.Refresh_Goods;
 var
  ID_Rec:Integer;
begin
  if not DM.Qry_Goods.Active then Exit;
  try
    DM.Qry_Goods.DisableControls;
    ID_Rec:=DM.Qry_Goods.FieldByName('ID').AsInteger;
    DM.Qry_Goods.Close;
    DM.Qry_Goods.Open;
    DM.Qry_Goods.Locate('Id',Id_rec,[]);

  finally
    DM.Qry_Goods.EnableControls;
  end;
end;

procedure TDM.Refresh_Parts;
var
 r:Integer;
begin
  if not Qry_Parts.Active then Exit;
  try
    Qry_Parts.DisableControls;
    r:=Qry_Parts.FieldByName('id').asInteger;
    Qry_Parts.Close;
    Qry_Parts.Open;
    Qry_Parts.Locate('ID',r,[]);

  finally
    Qry_Parts.EnableControls;
  end;
end;

procedure TDM.Refresh_PZTKLog;
 var
  R:Integer;
begin
  if not Qry_Pztk.Active then Exit;
  try
    Qry_Pztk.DisableControls;
    R:=Qry_Pztk.FieldByName('ID').asInteger;
    Qry_Pztk.Close;
    Qry_Pztk.Open;
    Qry_Pztk.Locate('ID',R,[]);

  finally
    Qry_Pztk.EnableControls;
  end;
end;

procedure TDM.Refresh_RegTi;
 var
  R:Integer;
begin
  if not Qry_RegTi.Active then Exit;
  try
    Qry_RegTi.DisableControls;
    R:=Qry_RegTi.FieldByName('ID').asInteger;
    Qry_RegTi.Close;
    Qry_RegTi.Open;
    Qry_RegTi.Locate('ID',R,[]);

  finally
    Qry_RegTi.EnableControls;
  end;
end;

procedure TDM.Refresh_Rel_Tp_ActIn;
var
 r:Integer;
begin
  if not Qry_RelTpActIn.Active then Exit;
  try
    Qry_RelTpActIn.DisableControls;
    r:=Qry_RelTpActIn.FieldByName('id').asInteger;
    Qry_RelTpActIn.Close;
    Qry_RelTpActIn.Open;
    Qry_RelTpActIn.Locate('ID',r,[]);

  finally
    Qry_RelTpActIn.EnableControls;
  end;
end;

procedure TDM.Refresh_ScalingTs;
var
 r:Integer;
begin
    if not Qry_ScaleTS.Active then Exit;
    try
      Qry_ScaleTS.DisableControls;
      r:=Qry_ScaleTS.FieldByName('ID').AsInteger;
      Qry_ScaleTS.Close;
      Qry_ScaleTS.Open;
      Qry_ScaleTS.Locate('ID',r,[]);

    finally
      Qry_ScaleTS.EnableControls;
    end;
end;

procedure TDM.Refresh_Settings;
begin
  Qry_Settings.Close;
  Qry_Settings.Open;
end;

procedure TDM.Refresh_Ticket;
var
 r:Integer;
begin
try
  Qry_Ticket.DisableControls;
  if not Qry_Ticket.Active then Exit;
  r:=Qry_Ticket.FieldByName('id').asInteger;
  Qry_Ticket.Close;
  Qry_Ticket.Open;
  Qry_Ticket.Locate('ID',r,[]);
finally
  Qry_Ticket.EnableControls;
end;
end;

procedure TDM.Refresh_TNved4;
 var
  R:Integer;
begin
  if not DM.Qry_Tnved4.Active then Exit;
  try
    DM.Qry_Tnved4.DisableControls;
    R:=DM.Qry_Tnved4.FieldByName('ID').AsInteger;
    DM.Qry_Tnved4.Close;
    DM.Qry_Tnved4.Open;
    DM.Qry_Tnved4.Locate('ID',R,[]);

  finally
    DM.Qry_Tnved4.EnableControls;
  end;
end;

procedure TDM.Refresh_TP;
var
 r:Integer;
begin
  if not Qry_TP.Active then Exit;
  try
    Qry_TP.DisableControls;
    r:=Qry_TP.FieldByName('id').asInteger;
    Qry_TP.Close;
    Qry_TP.Open;
    Qry_TP.Locate('ID',r,[]);

  finally
    Qry_TP.EnableControls;
  end;
end;

procedure TDM.Refresh_TpToCbx;
var
 r:Integer;
begin
    if not Qry_TpToCbx.Active then Exit;
    try
      Qry_TpToCbx.DisableControls;
      r:=Qry_TpToCbx.FieldByName('ID').AsInteger;
      Qry_TpToCbx.Close;
      Qry_TpToCbx.Open;
      Qry_TpToCbx.Locate('ID',r,[]);

    finally
      Qry_TpToCbx.EnableControls;
    end;

end;

procedure TDM.Refresh_TS;
var
 r:Integer;
begin
  if not Qry_TS.Active then Exit;
  try
    Qry_TS.DisableControls;
    r:=Qry_TS.FieldByName('id').asInteger;
    Qry_TS.Close;
    Qry_TS.Open;
    Qry_TS.Locate('ID',r,[]);

  finally
    Qry_TS.EnableControls;
  end;
end;

procedure TDM.Refresh_Warehouse;
var
 r:Integer;
begin
  if not Qry_Warehouse.Active then Exit;
  try
    Qry_Warehouse.DisableControls;
    r:=Qry_Warehouse.FieldByName('ID').AsInteger;
    Qry_Warehouse.Close;
    Qry_Warehouse.Open;
    Qry_Warehouse.Locate('ID',r,[]);

  finally
    Qry_Warehouse.EnableControls;
  end;
end;

procedure TDM.Refresh_WhActIn;
var
 r:Integer;
begin
    if not Qry_WhActIn.Active then Exit;
    try
      Qry_WhActIn.DisableControls;
      r:=Qry_WhActIn.FieldByName('id').asInteger;
      Qry_WhActIn.Close;
      Qry_WhActIn.Open;
      Qry_WhActIn.Locate('ID',r,[]);

    finally
      Qry_WhActIn.EnableControls;
    end;
end;

procedure TDM.Refresh_WhActOut;
var
 r:Integer;
begin
  if not Qry_WhActOut.Active then Exit;
  try
      Qry_WhActOut.DisableControls;
      r:=Qry_WhActOut.FieldByName('id').asInteger;
      Qry_WhActOut.Close;
      Qry_WhActOut.Open;
      Qry_WhActOut.Locate('ID',r,[]);

  finally
      Qry_WhActOut.EnableControls;
  end;

end;


procedure TDM.Refresh_Qry_AllPartsForPay;
var
 r:Integer;
begin
  if not Qry_AllPartsForPay.Active then Exit;
  try
    Qry_AllPartsForPay.DisableControls;
    r:=Qry_AllPartsForPay.FieldByName('id').asInteger;
    Qry_AllPartsForPay.Close;
    Qry_AllPartsForPay.Open;
    Qry_AllPartsForPay.Locate('ID',r,[]);

  finally
    Qry_AllPartsForPay.EnableControls;
  end;
end;


procedure TDM.Refresh_Qry_PartForPay;
var
 r:Integer;
begin
  if not Qry_PartForPay.Active then Exit;
  try
    Qry_PartForPay.DisableControls;
    r:=Qry_PartForPay.FieldByName('id').asInteger;
    Qry_PartForPay.Close;
    Qry_PartForPay.Open;
    Qry_PartForPay.Locate('ID',r,[]);

  finally
    Qry_PartForPay.EnableControls;
  end;

end;



procedure TDM.Refresh_Broker;
var
 r:Integer;
begin
    if not  DM.Qry_Broker.Active then Exit;
    try
      Qry_Broker.DisableControls;
      r :=DM.Qry_Broker.FieldByName('Id').asInteger;
      DM.Qry_Broker.Close;
      DM.Qry_Broker.Open;
      DM.Qry_Broker.Locate('Id',r,[]);
    finally
      Qry_Broker.EnableControls;
    end;

end;



procedure TDM.Refresh_Carrier;
 var
  Id_Rec:Integer;
begin
 if Not DM.Qry_Carrier.Active then Exit;
 try
   Qry_Carrier.DisableControls;
   Id_Rec:=DM.Qry_Carrier.FieldByName('ID').AsInteger;
   DM.qry_carrier.Close;
   DM.qry_carrier.Open;
   DM.qry_carrier.Locate('ID',Id_Rec,[]);

 finally
   Qry_Carrier.EnableControls;
 end;

end;

procedure TDM.ReNumberTtn(id_do1: Integer);
var
 i:Integer;
 s:String;
begin
try
  Qry.Close;
  Qry.SQL.Clear;
  s:='select id from do_trand where id_do1=:p0';
  Qry.SQL.Add(s);
  Qry.Params[0].AsInteger:=id_do1;
  Qry.Open;
  i:=1;
  if not SQL.Transaction.InTransaction then SQL.Transaction.StartTransaction;
  try
    while not DM.Qry.Eof do
      begin
        s:='update do_trand set n_td=:p0 where id=:p1';
        sql.Close;
        sql.SQL.Clear;
        sql.SQl.Add(s);
        sql.Params[0].asInteger:=i;
        sql.Params[1].asInteger:=Qry.Fields[0].AsInteger;
        sql.ExecQuery;
        Inc(i);
        Qry.Next;
      end;
      sql.Transaction.Commit;
    except
//      Application.MessageBox('Ошибка записи данных','Внимание!',mb_OK+mb_iconstop);
      sql.Transaction.Rollback;
    end;
finally
  if SQL.Transaction.InTransaction then SQL.Transaction.Rollback;
end;
end;

procedure TDM.ReNumber_NTov(id_do1, n_ttn:Integer);
var
 i,k:Integer;
 s:String;
begin
  Qry.Close;
  Qry.SQL.Clear;
  s:=format ('select count(*) from do_tovar where id_do1=%s and n_ttn=%s ',[IntToStr(id_do1),IntToStr(n_ttn)]);
  Qry.SQL.Add(s);
  Qry.Open;
  k:=Qry.Fields[0].asInteger ;
  Qry.Close;
  Qry.SQL.Clear;
  s:=format ('select id from do_tovar where id_do1=%s and n_ttn=%s ',[IntToStr(id_do1),IntToStr(n_ttn)]);
  Qry.SQL.Add(s);
  Qry.Open;
  if not SQL.Transaction.InTransaction then SQL.Transaction.StartTransaction;
  try
    for i:=1 to k do
      begin
        s:='update do_tovar set g32=:p0 where id=:p1';
        SQL.Close;
        SQL.SQL.Clear;
        SQL.SQl.Add(s);
        SQL.Params[0].asInteger:=i;
        SQL.Params[1].asInteger:=Qry.Fields[0].AsInteger;
        SQL.ExecQuery;
        Qry.Next;
      end;
      SQL.Transaction.Commit;
    except
//      Application.MessageBox('Ошибка записи данных','Внимание!',mb_OK+mb_iconstop);
      SQL.Transaction.Rollback;
    end;
end;

end.


