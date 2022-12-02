unit TpEdit_U;

interface

uses
  Windows, Messages,DBCtrlsEh, SysUtils, Variants, Classes,  Graphics,
   Controls,  Forms,  Dialogs,  ExtCtrls,  StdCtrls,  Buttons,DB, Mask, ComCtrls,IBX.IBQuery,
   DateUtils;

type
  TTpEdit_F = class(TForm)
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Bt_Save: TBitBtn;
    E_KT: TEdit;
    E_Goods: TButtonedEdit;
    E_Npp: TEdit;
    Bt_Cancel: TBitBtn;
    E_Val: TButtonedEdit;
    E_Broker: TButtonedEdit;
    Label8: TLabel;
    E_Poluch: TEdit;
    Bevel1: TBevel;
    Label9: TLabel;
    E_Otpr: TButtonedEdit;
    Label10: TLabel;
    E_Places: TEdit;
    E_Cost: TDBNumberEditEh;
    E_Brutto: TDBNumberEditEh;
    E_KodVAl: TEdit;
    Label11: TLabel;
    GroupBox1: TGroupBox;
    Label16: TLabel;
    E_Type: TButtonedEdit;
    E_Name: TEdit;
    Label15: TLabel;
    Label13: TLabel;
    E_NTtn: TMaskEdit;
    Label14: TLabel;
    E_Packing: TComboBox;
    Label12: TLabel;
    E_DTtn: TDateTimePicker;
    Label17: TLabel;
    E_Td: TEdit;
    Label18: TLabel;
    E_CostRub: TDBNumberEditEh;
    ChBox_TD: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure Bt_SaveClick(Sender: TObject);
    procedure E_GoodsRightButtonClick(Sender: TObject);
    procedure E_ValRightButtonClick(Sender: TObject);
    procedure E_BrokerRightButtonClick(Sender: TObject);
    procedure E_BruttoChange(Sender: TObject);
    procedure E_CostChange(Sender: TObject);
    procedure Bt_CancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure E_OtprRightButtonClick(Sender: TObject);
    procedure E_ValChange(Sender: TObject);
    procedure E_KodVAlChange(Sender: TObject);
    procedure E_TypeRightButtonClick(Sender: TObject);
    procedure E_NppKeyPress(Sender: TObject; var Key: Char);
    procedure E_TypeKeyPress(Sender: TObject; var Key: Char);
    procedure E_NameKeyPress(Sender: TObject; var Key: Char);
    procedure E_NTtnKeyPress(Sender: TObject; var Key: Char);
    procedure E_DTtnKeyPress(Sender: TObject; var Key: Char);
    procedure E_OtprKeyPress(Sender: TObject; var Key: Char);
    procedure E_GoodsKeyPress(Sender: TObject; var Key: Char);
    procedure E_PlacesKeyPress(Sender: TObject; var Key: Char);
    procedure E_PackingKeyPress(Sender: TObject; var Key: Char);
    procedure E_BruttoKeyPress(Sender: TObject; var Key: Char);
    procedure E_CostKeyPress(Sender: TObject; var Key: Char);
    procedure E_KodVAlKeyPress(Sender: TObject; var Key: Char);
    procedure E_ValKeyPress(Sender: TObject; var Key: Char);
    procedure E_BrokerKeyPress(Sender: TObject; var Key: Char);
    procedure E_CostExit(Sender: TObject);
    procedure E_TdKeyPress(Sender: TObject; var Key: Char);
    procedure E_TdEnter(Sender: TObject);
    procedure ChBox_TDClick(Sender: TObject);
  private
    { Private declarations }
    TicketDate:TDateTime;
    ValChanged:Boolean;
    procedure GetValues;
  public
    { Public declarations }
    function GetStoimRub(kod:String;stoim:Variant;dt:TDateTime): Currency;
  end;

var
  TpEdit_F: TTpEdit_F;


implementation

{$R *.dfm}
uses dm_u,main, Broker_U, Goods_U, Val_U, TpAdd_U, Shipper_U, Docg44_U;
procedure TTpEdit_F.Bt_CancelClick(Sender: TObject);
begin
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;

end;

procedure TTpEdit_F.Bt_SaveClick(Sender: TObject);
var
 id,id_part,id_ticket:Integer;
begin
if not TPAdd_F.CheckFillTPControls(E_Npp.Text,E_Goods.Text,E_Places.Text,E_Brutto.Text,E_Cost.Text,E_Val.Text,E_Td.Text,E_CostRub.Text,E_KodVAl.Text) then
   begin
     ModalResult:=mrNone;
     Exit;
   end;
if E_CostRub.Value > 50000000 then
  Application.MessageBox('Данная ТП имеет стоимость более 50 млн.руб.! В КТ необходимо добавить соответствующую услугу ',
                          'Внимание', MB_ICONASTERISK+mb_ok);

try
 try
    id:=Main_F.Grid_TP.DataSource.DataSet.FieldByName('ID').AsInteger;
    id_ticket:=Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('ID').AsInteger;
    id_part:= Main_F.Grid_TicketParts.DataSource.DataSet.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update parties set npp=:p0,id_ticket=:p1,id_part=:p2,goods_cat=:p3,valuta=:p4, ');
    DM.Sql.SQL.Add(' stoimost=:p5,brutto=:p6,broker=:p7, id_shipper=:p8, places=:p9, packing=:p10,vtt=:p11,stoimost_rub=:p12 where id=:p13  ');
    DM.Sql.Params[0].AsInteger:=StrToInt(E_Npp.Text);
    DM.Sql.Params[1].asInteger:=id_ticket;
    DM.Sql.Params[2].asInteger:=id_part;
    if Length(E_Goods.Text) > 0 then
        DM.Sql.Params[3].AsInteger:=DM.Qry_Goods.FieldByName('ID').asInteger
      else
        DM.Sql.Params[3].AsVariant:=null;
    if Length(E_Val.Text) > 0 then
        DM.Sql.Params[4].AsInteger:=DM.Qry_Val.FieldByName('ID').asInteger
      else
        DM.Sql.Params[4].AsVariant:=null;
    DM.Sql.Params[5].AsVariant:=E_Cost.Value;
    DM.Sql.Params[6].AsVariant:=E_Brutto.Value;
    DM.Sql.Params[7].AsString:=E_Broker.Text;
    if Length(E_Otpr.Text) > 0 then
        DM.Sql.Params[8].AsInteger:=DM.Qry_Shipper.FieldByName('ID').asInteger
      else
        DM.Sql.Params[8].AsVariant:=null;
    DM.Sql.Params[9].AsInteger:=StrToInt(E_Places.Text);
    DM.Sql.Params[10].AsString:=E_Packing.Text;
    DM.Sql.Params[11].AsString:=E_Td.Text;
    DM.Sql.Params[12].AsVariant:=E_CostRub.Value;
    DM.Sql.Params[13].asInteger:=id;
    DM.Sql.ExecQuery;
    //изменим CMR-ки
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update ttn_in set ndoc =:p0 ,ddoc=:p1,type_doc=:p2,name=:p3 where id_tp=:p4 ');
    DM.Sql.Params[0].AsString:=E_NTtn.Text;
    DM.Sql.Params[1].asDate:=E_DTtn.Date;
    DM.Sql.Params[2].AsString:=E_Type.Text;
    DM.Sql.Params[3].AsString:=E_Name.Text;
    DM.Sql.Params[4].AsInteger:=id;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    ModalResult:=mrOk;
    DM.Qry_TP.Close;
    DM.Qry_TP.Open;
    DM.Qry_TP.Locate('ID',id,[]);
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

procedure TTpEdit_F.ChBox_TDClick(Sender: TObject);
begin
//  if (Sender as TCheckBox).Checked then E_Td.MaxLength:=23
//    else E_td.MaxLength:=0;
end;

procedure TTpEdit_F.E_TdEnter(Sender: TObject);
begin
// if ChBox_TD.Checked then E_Td.MaxLength:=23
//    else E_td.MaxLength:=0;
end;

procedure TTpEdit_F.E_TdKeyPress(Sender: TObject; var Key: Char);
var ch : Set of AnsiChar;
begin
   ch:= [#8,'/','0','1','2','3','4','5','6','7','8','9'];
   if ChBox_TD.Checked then
     if not( Key in ch) then
        begin
         Key:=#0;
        end;

end;

procedure TTpEdit_F.E_TypeKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTpEdit_F.E_TypeRightButtonClick(Sender: TObject);
begin
   if Docg44_F.ShowModal = mrOk then
     begin
      E_Type.Text:=DM.Qry_DocG44.fieldbyName('KOD').asString;
      E_Name.Text:=Dm.Qry_DocG44.FieldByName('KRNAME').asString;
    end;
end;

procedure TTpEdit_F.E_BrokerKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTpEdit_F.E_BrokerRightButtonClick(Sender: TObject);
begin
 if Broker_F.ShowModal = mrOK then E_Broker.Text:=  Broker_F.DbgridEh1.Datasource.Dataset.fieldByName('NAME').asString;
end;

procedure TTpEdit_F.E_BruttoChange(Sender: TObject);
var
i : integer;
c : char;
s : string;
begin
// результирующая строка:
s := '';
// проходим по всем символам исходной строки:
for i:=1 to Length((Sender as Tedit).Text) do
  begin
    // берем текущий символ:
    c :=(Sender as Tedit).Text[i];
    // Проверяем его на принадлежность к цифрам:
    if (c >= '0') and (c <= '9') then s := s + c;
    // Или знакам 'точка' или 'запятая':
    if c = CurDecSep then s := s + c;
  end;
// Присваеваем полю результирующую строку:
(Sender as Tedit).Text := s;
(Sender as Tedit).SelStart:=Length(s);
(Sender as Tedit).SelLength:=0;
end;

procedure TTpEdit_F.E_BruttoKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTpEdit_F.E_CostChange(Sender: TObject);
var
i : integer;
c : char;
s : string;
begin
// результирующая строка:
s := '';
// проходим по всем символам исходной строки:
for i:=1 to Length((Sender as Tedit).Text) do
  begin
    // берем текущий символ:
    c :=(Sender as Tedit).Text[i];
    // Проверяем его на принадлежность к цифрам:
    if (c >= '0') and (c <= '9') then s := s + c;
    // Или знакам 'точка' или 'запятая':
    if c = CurDecSep then s := s + c;
  end;
// Присваеваем полю результирующую строку:
(Sender as Tedit).Text := s;
(Sender as Tedit).SelStart:=Length(s);
(Sender as Tedit).SelLength:=0;
end;

procedure TTpEdit_F.E_CostExit(Sender: TObject);
begin
  if Length(Trim(E_Cost.Text)) <> 0
      then E_CostRub.Value:=GetStoimRub(E_KodVal.Text,E_Cost.Value,TicketDate);

end;

procedure TTpEdit_F.E_CostKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTpEdit_F.E_DTtnKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTpEdit_F.E_GoodsKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTpEdit_F.E_GoodsRightButtonClick(Sender: TObject);
begin
 if Goods_F.ShowModal = mrOK then E_Goods.Text:=  Goods_F.DbgridEh1.Datasource.Dataset.fieldByName('NAME').asString;
end;

procedure TTpEdit_F.E_KodVAlChange(Sender: TObject);
begin
 if not ValChanged then Exit;
 if Val_F.FindVal(E_KodVAl.Text) <> 'F' then
    begin
        E_Val.Text:=Dm.Qry_Val.FieldByName('KR_NAME').AsString;
        if (Length(E_KodVal.Text)= 3) then
          begin
             E_CostRub.Value:=GetStoimRub(E_KodVal.Text,E_Cost.Value,TicketDate);
          end;
    end;
end;


procedure TTpEdit_F.E_KodVAlKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTpEdit_F.E_NameKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTpEdit_F.E_NppKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTpEdit_F.E_NTtnKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTpEdit_F.E_OtprKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTpEdit_F.E_OtprRightButtonClick(Sender: TObject);
begin
 if Shipper_F.ShowModal = mrOK then E_Otpr.Text:=  Shipper_F.DbgridEh1.Datasource.Dataset.fieldByName('FIRM_NAME').asString;
end;

procedure TTpEdit_F.E_PackingKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTpEdit_F.E_PlacesKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTpEdit_F.E_ValChange(Sender: TObject);
begin
// if Val_F.FindVal(E_Val.Text) <> 'F' then E_Val.Text:=Dm.Qry_Val.FieldByName('KR_NAME').AsString;
end;

procedure TTpEdit_F.E_ValKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTpEdit_F.E_ValRightButtonClick(Sender: TObject);
begin
 if Val_F.ShowModal = mrOK then
  begin
      E_Val.Text:=  Val_F.DbgridEh1.Datasource.Dataset.fieldByName('KR_NAME').asString;
      E_KodVAl.Text := Val_F.DbgridEh1.Datasource.Dataset.fieldByName('KOD').asString;
  end;
end;

procedure TTpEdit_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;

procedure TTpEdit_F.FormShow(Sender: TObject);
begin
TicketDate:=DateOf(DM.Qry_TicketDT_IS.AsDateTime);
ValChanged:=False;
GetValues;
ValChanged:=True;
Bt_Cancel.SetFocus;
end;

function TTpEdit_F.GetStoimRub(kod: string;stoim:Variant;dt:TDateTime): Currency ;
var
  qry:TIBQuery;
  stoim_ru:Double ;
begin
  qry := TIBQuery.Create(Self);
  try
    Result:=0;
    if VarIsNull(stoim) then stoim:=0;
    qry.Database := DM.DB;
    qry.SQL.Add('select count(*) from valratio where vcode=:p0 and curdate=:p1  ');
    qry.Params[0].AsString := kod;
    qry.Params[1].AsDate := dt;
    qry.Open;
    if qry.Fields[0].AsInteger =0 then Exit;
    qry.sql.clear;
    qry.SQL.Add('select vcurs,vnom  from valratio where vcode=:p0 and curdate=:p1  ');
    qry.Params[0].AsString := kod;
    qry.Params[1].AsDate := dt;
    qry.Open;
    stoim_ru:=qry.Fields[0].AsCurrency*stoim/qry.Fields[1].AsInteger;
    Result:=stoim_ru;
  finally
    qry.Free;
  end;
end;

procedure TTpEdit_F.GetValues;
var
 rec:Integer;
begin
  E_KT.Text:=Main_F.Grid_TicketParts.Datasource.DataSet.FieldByName('PART_NOMER').asString;
  E_Poluch.Text:=Main_F.Grid_TicketParts.Datasource.DataSet.FieldByName('ZAYV').asString;
  E_Npp.Text:=DM.Qry_TP.FieldByName('NPP').AsString;
  if not Main_F.Grid_Tp.DataSource.DataSet.FieldByName('SHIPPER').isNull then
    begin
      rec:=Main_F.Grid_Tp.DataSource.DataSet.FieldByName('ID_SHIPPER').AsInteger;
      DM.Qry_Shipper.Locate('ID',rec,[]);
      E_Otpr.Text:=DM.Qry_Shipper.FieldByName('FIRM_NAME').AsString;
    end
   else
      E_Otpr.Clear;

  if not Main_F.Grid_Tp.DataSource.DataSet.FieldByName('GOODS_CAT').isNull then
    begin
      rec:=Main_F.Grid_Tp.DataSource.DataSet.FieldByName('GOODS_CAT').AsInteger;
      DM.Qry_Goods.Locate('ID',rec,[]);
      E_Goods.Text:=DM.Qry_Goods.FieldByName('NAME').AsString;
    end
   else
      E_Goods.Clear;
  E_Places.Text:=DM.Qry_TP.FieldByName('PLACES').AsString;
  E_Packing.Text:=DM.Qry_TP.FieldByName('PACKING').AsString;
  E_Brutto.Value:=DM.Qry_TP.FieldByName('BRUTTO').AsVariant;
  E_Cost.Value:=DM.Qry_TP.FieldByName('STOIMOST').AsVariant;
  E_CostRub.Value:=DM.Qry_TP.FieldByName('STOIMOST_RUB').AsVariant;

  E_KodVAl.Clear;
  if not Main_F.Grid_Tp.DataSource.DataSet.FieldByName('VALUTA').isNull then
    begin
      rec:=Main_F.Grid_Tp.DataSource.DataSet.FieldByName('VALUTA').AsInteger;
      DM.Qry_Val.Locate('ID',rec,[]);
      E_KodVAl.Text:=DM.Qry_Val.FieldByName('KOD').AsString;
      E_Val.Text:=DM.Qry_Val.FieldByName('KR_NAME').AsString;
    end
   else
      E_Val.Clear;

  E_broker.Text:=Main_F.Grid_Tp.DataSource.DataSet.FieldByName('BROKER').asString;
  E_Td.Text:=Main_F.Grid_Tp.DataSource.DataSet.FieldByName('VTT').asString;
  E_Type.Text:=Dm.Qry_TtnIn.FieldByName('TYPE_DOC').AsString;
  E_Name.Text:=Dm.Qry_TtnIn.FieldByName('NAME').AsString;
  E_NTtn.Text:=Dm.Qry_TtnIn.FieldByName('NDOC').AsString;
  E_DTtn.Date:=Dm.Qry_TtnIn.FieldByName('DDOC').AsDateTime;

end;

end.
