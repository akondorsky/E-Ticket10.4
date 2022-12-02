unit Reports_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,  Graphics,
   Controls,  Forms,  Dialogs, frxClass, frxDBSet,frxChBox, frxExportXLS,
  frxExportPDF,DateUtils, frxBarcode,IBX.IbQuery, frxGradient, DB, IBX.IBCustomDataSet,
  frxExportBaseDialog;

type
  TReports_F = class(TForm)
    Rep1: TfrxReport;
    frxDB_TS: TfrxDBDataset;
    frxDB_Parts: TfrxDBDataset;
    frxDB_TP: TfrxDBDataset;
    frxDB_Step1: TfrxDBDataset;
    frxDB_Step2: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxDB_SVH: TfrxDBDataset;
    frxDB_WhActIn: TfrxDBDataset;
    frxDB_RepDo1: TfrxDBDataset;
    frxDB_raspiska: TfrxDBDataset;
    frxDBRepDo2: TfrxDBDataset;
    frxDB_Usl: TfrxDBDataset;
    frx_RepWhOut: TfrxDBDataset;
    frxDB_Step4: TfrxDBDataset;
    frxDB_Step5: TfrxDBDataset;
    frxDBRepInfaktura: TfrxDBDataset;
    frxDB_Step6: TfrxDBDataset;
    frxDB_Step7: TfrxDBDataset;
    frxDBPztkLog: TfrxDBDataset;
    frxDBPztkOutDocs: TfrxDBDataset;
    frxDBTtn_In: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    Rep2: TfrxReport;
    frxDBRepCheck: TfrxDBDataset;
    frxCBXOutDocs: TfrxDBDataset;
    frxDB_QryRepCheckKpp: TfrxDBDataset;
    frxDB_PayList: TfrxDBDataset;
    frxDBReppassOut: TfrxDBDataset;
    frxRepTsPassout: TfrxDBDataset;
    Rep3: TfrxReport;
    frxDBBank: TfrxDBDataset;
    Rep_buh: TfrxReport;
    frxUslugi: TfrxDBDataset;
    frxDBReg_Ti: TfrxDBDataset;
    frxCl_ac_detail: TfrxDBDataset;
    frxGradientObject1: TfrxGradientObject;
    frxDBopenCbx: TfrxDBDataset;
    frxDBWhOpenDetailed: TfrxDBDataset;
    frxDBClosedCbx: TfrxDBDataset;
    frxDBWhClosedDetailed: TfrxDBDataset;
    frxDBKomisRep: TfrxDBDataset;
    frxDBMinusSaldo: TfrxDBDataset;
    frxDBdoOstatki: TfrxDBDataset;
    frxGoods: TfrxDBDataset;
    frxDBMt1: TfrxDBDataset;
    Qry_KPP: TIBQuery;
    frxDB_KPP: TfrxDBDataset;
    frxDB_RegTi_List: TfrxDBDataset;
    Qry_repHolding: TIBQuery;
    frxDB_repHolding: TfrxDBDataset;
    frxDB_ReasonDolgDetaill: TfrxDBDataset;
    frxDB_ReasonDolgMaster: TfrxDBDataset;
    frxDB_VesCheque: TfrxDBDataset;
    procedure Rep1GetValue(const VarName: string; var Value: Variant);
    procedure Rep2GetValue(const VarName: string; var Value: Variant);
    procedure Rep3GetValue(const VarName: string; var Value: Variant);
    procedure Rep_buhGetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    function GetDTRaspiska(ADate:TdateTime):String;
    function GetOutDocsFromDo2(IdRec: Integer): String;
  public
    { Public declarations }
  end;

var
  Reports_F: TReports_F;

implementation

{$R *.dfm}
uses main, dm_u,partfulledit_u,sumprops,reportselect_u,unit_select_date,buh_u,
      DateSingle_U, Regti_U;

function TReports_F.GetDTRaspiska(ADate: TdateTime): String;
begin
  Result:='';
 try
  Result:=DateTimeToStr(IncMinute(ADate,-30));
 except
  Result:=DateTimeToStr(Now);
 end;

end;

procedure TReports_F.Rep1GetValue(const VarName: string; var Value: Variant);
var
  perc_w:Integer;
begin
 if Varname='sign' then
    begin
       if not DM.Qry_WhActIn.FieldByname('SIGN_NUMBER').isNull then
          value:=DM.Qry_WhActIn.FieldByname('SIGN_NUMBER').asString
         else
          value:='';
    end;


 if Varname = 'Dt_action' then
       if not frxDB_TP.DataSet.FieldByName('DT_ACTION').IsNull then
         Value:=Datetimetostr(frxDB_TP.DataSet.FieldByName('DT_ACTION').AsDateTime)
        else
         value:='';
  if Varname = 'weight_dif' then
      begin
        perc_w:= DM.GetWeigtDifPercent(frxDB_WhActIn.DataSet.FieldByName('WEIGHT_DOC').AsFloat,
                                      frxDB_WhActIn.DataSet.FieldByName('WEIGHT_FACT').AsFloat);
        if perc_w < 0 then Value:= 'Разница в весе:'+#13+'-'+ FloatToStr(frxDB_WhActIn.DataSet.FieldByName('WEIGHT_DOC').AsFloat -
                                          frxDB_WhActIn.DataSet.FieldByName('WEIGHT_FACT').AsFloat)+ ' кг'
            else
              if perc_w > 0 then Value:= 'Разница в весе:'+#13+'+'+ FloatToStr(frxDB_WhActIn.DataSet.FieldByName('WEIGHT_FACT').AsFloat -
                                          frxDB_WhActIn.DataSet.FieldByName('WEIGHT_DOC').AsFloat)+' кг'
                else Value:='';
      end;




end;

procedure TReports_F.Rep2GetValue(const VarName: string; var Value: Variant);
var
 id_act,id_tov,i:Integer;
 qry:TIbquery;
 s:String;
 d:double;
begin
 if Varname='N_doblist' then
    begin
      Value:=DM.Qry_ActCom.FieldByName('NPP').asString;
    end;
  if Varname='Act_Com' then
     begin
      if not DM.Qry_ActCom.FieldByName('ID').IsNull then
         begin
           try
             id_act:=DM.Qry_ActCom.FieldByName('ID').AsInteger;
             id_tov:=frxDB_RepDo1.DataSet.FieldByName('ID').AsInteger;
             qry:=TIbQuery.Create(Nil);
             qry.Database:=Dm.DB;
             qry.Transaction:=Dm.IBTR;
             qry.SQL.Add('select id from mismatch where id_act=:p0 and id_tov=:p1');
             qry.params[0].AsInteger:=id_act;
             qry.params[1].AsInteger:=id_tov;
             qry.Open;
             if qry.Fields[0].AsInteger > 0 then
                 Value:=DM.Qry_ActCom.FieldByName('NAME_DOC').asString+
                 ' № ' +
                 DM.Qry_ActCom.FieldByName('NUM_DOC').asString+
                 ' от '+
                 DM.Qry_ActCom.FieldByName('DATE_DOC').asString;
           finally
             qry.Free;
           end;
         end
        else
          Value:='';
    end;
  if Varname='N_contract' then
     begin
      if not DM.Qry_RepInFaktura.FieldByName('ID2').IsNull then
           begin
               i:=DM.Qry_RepInFaktura.FieldByName('ID2').AsInteger;
               Value:=Main_F.GetCBXContract(i);
           end
                                   else
          Value:='';
     end;
 if Varname='Out_docs' then
    begin
      i:=fRxDBRepDo2.DataSet.FieldByName('ID').AsInteger;
      Value:=GetOutDocsFromDo2(i);
    end;
  if Varname='Usr' then
      begin
         if ROLE = 'DISPETCHER' then Value:= User;
      end;
  if Varname='Dtraspiska' then
              Value:=GetDTRaspiska(DM.Qry_DoHead.FieldByName('G072').AsDateTime);
 if VarName = 'TotalSumProp' then
    begin
       d:=DM.GetSumFaktura(IdFhead);
       s:= MoneyToString(d, True,False);
       Value:=s;
    end;
 if Varname = 'Var4' then
          Value:=DM.GetTtnList(DM.Qry_Pztk.FieldByName('ID_TICKET').AsInteger);
 if Varname = 'Var7' then
          Value:=DM.GetOutDocList(DM.Qry_Pztk.FieldByName('ID_TICKET').AsInteger);
 if Varname = 'NomerTs'  then
          Value:= Main_F.GetTsEnter(frxDB_PayList.DataSet.FieldByName('ID_TICKET').AsInteger);
 if varname = 'G073' then Value:=DM.Qry_DoHead.FieldByName('G073').AsString;

end;

procedure TReports_F.Rep3GetValue(const VarName: string; var Value: Variant);
begin

  if Varname='Usr' then
      begin
         if ROLE = 'DISPETCHER' then Value:= User;
      end;
  //отчеты ежедневный и за период
  if VarName = 'Faktur_Total' then Value:=_Faktur_Total;
  if VarName = 'Faktur_NotPass' then Value:=_Faktur_NotPass;
  if VarName = 'D_Prev' then Value:=_D_Prev;
  if VarName = 'D_StartMonth' then Value:=_D_StartMonth;
  if VarName = 'D1' then Value:=_D1;
  if VarName = 'D2' then Value:=_D2;
  if VarName = 'Ts_Smena' then Value:=_Ts_Smena;
  if VarName = 'Ts_Period' then Value:=_Ts_Period;
  if VarName = 'Ts_Avg' then Value:=_Ts_Avg;
  if VarName = 'Ts_Ztk' then Value:=_Ts_Ztk;
  if VarName = 'Ts_CbxO' then Value:=_Ts_CbxO;
  if VarName = 'Pl_CbxC' then Value:=_Pl_CbxC;
  if VarName = 'Ts_Moving' then Value:=_Ts_Moving;
  if VarName = 'Tp_Smena' then Value:=_Tp_Smena;
  if VarName = 'Tp_SmenaOff' then Value:=_Tp_SmenaOff;
  if VarName = 'Tp_Period' then Value:=_Tp_Period;
  if VarName = 'Tp_PeriodOff' then Value:=_Tp_PeriodOff;
  if VarName = 'Sum_Smena' then Value:=_SumUslug_Smena;
  if VarName = 'Sum_Mon' then Value:=_SumUslug_Period;
  if VarName = 'Sum_Smena_TS' then Value:=_SumUslug_Smena_TS;
  if VarName = 'Sum_Mon_TS' then Value:=_SumUslug_Period_TS;
  if VarName = 'Tp_Import' then Value:=_Tp_Import;
  if VarName = 'Tp_ReImp' then Value:=_Tp_Reimport;
  if VarName = 'Tp_Imp_Period' then Value:=_Tp_Imp_Period;
  if VarName = 'Tp_ReImp_Period' then Value:=_Tp_Reimp_Period;
  if VarName = 'Cheque_Avg' then Value:=_Cheque_Avg;
  if VarName = 'Tp_Avg'  then Value:=_Tp_Avg;
  if VarName = 'Zak_Name'   then Value := _Zak_Name;
  if VarName = 'Holding'   then Value := DM.Qry_Hold.FieldByName('NAME').AsString;
  if VarName = 'Dt_Period'   then Value := _Dt_Period;
  if VarName = 'Dt_Avg'   then Value := _Dt_Avg;
  if VarName = 'Sum_TamSklad'   then Value := _Sum_TamSklad;

end;

procedure TReports_F.Rep_buhGetValue(const VarName: string; var Value: Variant);
var
  qry:TIBQuery;
  i,n:Integer;
begin
  try
    qry := TIBQuery.Create(Self);
    qry.Database:=Dm.DB;
    qry.Transaction:=Dm.IBTR;
    if varname= 'D1' then Value:=DateOf(FormSeldate.D1.Date);
    if varname= 'D2' then Value:=DateOf(FormSeldate.D2.Date);
    if VarName = 's_in' then Value:=Buh_F.In_Saldo;
    if VarName = 's_out' then Value:=Buh_F.Out_Saldo;
    if VarName = 's_res' then Value:=Buh_F.Result_Saldo;
    if VarName = 'Status' then
      if Main_F.GetFakturaVat(frxDBRepInfaktura.DataSet.FieldByName('ID').AsInteger) > 0
         then Value:='1' else Value:='2';
    if VarName = 'Repactworks_Nts' then
      begin
         if frxDBRepInfaktura.DataSet.FieldByName('TYPE_F').AsString ='S' then
             Value:=''
            else
             Value:=DM.GetNtsList(IdFhead);
      end;
    if VarName='dt_neg_saldo' then Value:= Buh_F.Dt_NegativeSaldo;
    if Varname='N_contract' then
       begin
        if not DM.Qry_RepInFaktura.FieldByName('ID2').IsNull then
           begin
               i:=DM.Qry_RepInFaktura.FieldByName('ID2').AsInteger;
               Value:=Main_F.GetCBXContract(i);
           end
          else
            Value:='';
      end;
    if VarName='Doc_5a' then
       begin
         qry.Close;
         qry.SQL.Clear;
         qry.SQL.Add('select count(A.id) from FAKTURA_HEAD A LEFT JOIN FAKTURA_ITEMS B ON A.ID=B.ID_F_HEAD where a.id=:p0');
         qry.params[0].AsInteger:=DM.Qry_RepInFaktura.FieldByName('ID').AsInteger;
         qry.Open;
         n:=qry.Fields[0].AsInteger;
         if n > 0 then Value:='№п/п 1-' + IntTostr(n)
           else
            Value:='';
       end;
  finally
    qry.Free;
  end;

end;

function TReports_F.GetOutDocsFromDo2(IdRec: Integer): String;
var
  s:String;
  n:Integer;
begin
      Result:='';
          DM.Qry.Close;
          DM.Qry.SQL.Clear;
          DM.Qry.SQL.Add('select a.id_tov,b.* from rel_tov_gtd a ');
          DM.Qry.SQL.Add(' left join do_outdocs b on a.id_gtd=b.id where a.id_tov =:p0');
          DM.Qry.Params[0].AsInteger:=IdRec;
          DM.Qry.open;
          while not DM.Qry.Eof do
           begin
             s:=s+DM.Qry.FieldByName('NAME').AsString+'('+
              DM.Qry.FieldByName('TYPE_DOC').AsString+')'+
              DM.Qry.FieldByName('NDOC').AsString+' от '+
              DM.Qry.FieldByName('DDOC').AsString+';';
              DM.Qry.Next;
            end;
      Result:=s;
end;

end.
