unit TpAdd_U;

interface

uses
  Windows,  Messages, SysUtils, Variants, Classes,  Graphics,
   Controls,  Forms,  Dialogs,  StdCtrls,  ExtCtrls,  Buttons,IBX.IbQuery,Db, Mask,
  DBCtrlsEh, ComCtrls, DateUtils;

type

  TTPAdd_F = class(TForm)
    Bt_Save: TBitBtn;
    E_KT: TEdit;
    E_Goods: TButtonedEdit;
    E_Npp: TEdit;
    Bt_Cancel: TBitBtn;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    E_Broker: TButtonedEdit;
    Label8: TLabel;
    E_Poluch: TEdit;
    Bevel1: TBevel;
    Label9: TLabel;
    E_Otpr: TButtonedEdit;
    Label10: TLabel;
    E_Places: TEdit;
    E_Brutto: TDBNumberEditEh;
    E_Cost: TDBNumberEditEh;
    Label6: TLabel;
    E_Val: TButtonedEdit;
    E_KodVAl: TEdit;
    Label11: TLabel;
    GroupBox1: TGroupBox;
    Label16: TLabel;
    Label15: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    E_Type: TButtonedEdit;
    E_Name: TEdit;
    E_NTtn: TMaskEdit;
    E_Packing: TComboBox;
    Label12: TLabel;
    E_DTtn: TDateTimePicker;
    Label17: TLabel;
    E_Td: TEdit;
    Label18: TLabel;
    E_CostRub: TDBNumberEditEh;
    ChBox_TD: TCheckBox;
    procedure E_BruttoChange(Sender: TObject);
    procedure E_CostChange(Sender: TObject);
    procedure E_ValRightButtonClick(Sender: TObject);
    procedure E_GoodsRightButtonClick(Sender: TObject);
    procedure E_BrokerRightButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Bt_SaveClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure E_OtprRightButtonClick(Sender: TObject);
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
    procedure E_BrokerKeyPress(Sender: TObject; var Key: Char);
    procedure E_ValKeyPress(Sender: TObject; var Key: Char);
    procedure Bt_CancelClick(Sender: TObject);
    procedure E_TDKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure E_CostExit(Sender: TObject);
  private
    { Private declarations }
    TicketDate:TDateTime;
    function NewNpp(IdTicket:Integer):Integer;
  public
    { Public declarations }
    function CheckFillTPControls(Npp,Goods,Places,Brutto,Cost,Val,Vtt,CostRub,KodVal:String):Boolean;
    function CustDocValidate(CustDoc:String):Boolean;
  end;

var
  TPAdd_F: TTPAdd_F;

implementation

{$R *.dfm}

uses main,Goods_U,dm_u, Val_U, Broker_U, Shipper_U, Docg44_U, TpEdit_U;


procedure TTPAdd_F.Bt_CancelClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TTPAdd_F.Bt_SaveClick(Sender: TObject);
var
 id_part,id_ticket,new_id:Integer;
begin
if not CheckFillTPControls(E_Npp.Text,E_Goods.Text,E_Places.text,E_Brutto.Text,E_Cost.Text,E_Val.Text,
                          E_Td.Text,E_CostRub.Text,E_KodVAl.Text) then
   begin
     ModalResult:=mrNone;
     Exit;
   end;
if E_CostRub.Value > 50000000 then
  Application.MessageBox('Данная ТП имеет стоимость более 50 млн.руб.! В КТ необходимо добавить соответствующую услугу ',
                          'Внимание', MB_ICONASTERISK+mb_ok);
try
 try
    DM.Qry.Close;
    DM.Qry.SQL.Clear;
    DM.Qry.SQL.Add('select gen_id(gen_id_parties,1) from rdb$database ');
    DM.Qry.Open;
    new_id:=DM.Qry.Fields[0].AsInteger;
    id_ticket:=Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('ID').AsInteger;
    id_part:= Main_F.Grid_TicketParts.DataSource.DataSet.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into parties (npp,id_ticket,id_part,goods_cat,valuta,stoimost,brutto,broker,id_shipper,places,id,packing,vtt,stoimost_rub) values ');
    DM.Sql.SQL.Add(' (:p0,:p1,:p2,:3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13) ');
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
    DM.Sql.Params[10].AsInteger:=new_id;
    DM.Sql.Params[11].AsString:=E_Packing.Text;
    DM.Sql.Params[12].AsString:=E_Td.Text;
    DM.Sql.Params[13].AsVariant:=E_CostRub.Value;
    DM.Sql.ExecQuery;
    //добавим CMR-ки
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into ttn_in (ndoc,ddoc,id_ticket,id_tp,type_doc,name) ');
    DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5) ');
    DM.Sql.Params[0].AsString:=E_NTtn.Text;
    DM.Sql.Params[1].asDate:=E_DTtn.Date;
    DM.Sql.Params[2].AsInteger:=id_ticket;
    DM.Sql.Params[3].AsInteger:=new_id;
    DM.Sql.Params[4].AsString:=E_Type.Text;
    DM.Sql.Params[5].AsString:=E_Name.Text;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    ModalResult:=mrOk;
    DM.Qry_TP.Close;DM.Qry_TP.Open;DM.Qry_TP.Last;
    DM.Qry_TtnIn.Close;
    DM.Qry_TtnIn.Open;
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


procedure TTPAdd_F.E_TDKeyPress(Sender: TObject; var Key: Char);
var ch : Set of AnsiChar;
begin
   ch:= [#8,'/','0','1','2','3','4','5','6','7','8','9'];
   if ChBox_TD.Checked then
     if not( Key in ch) then
        begin
         Key:=#0;
        end;
end;

procedure TTPAdd_F.E_TypeKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTPAdd_F.E_TypeRightButtonClick(Sender: TObject);
begin
   if Docg44_F.ShowModal = mrOk then
     begin
      E_Type.Text:=DM.Qry_DocG44.fieldbyName('KOD').asString;
      E_Name.Text:=Dm.Qry_DocG44.FieldByName('KRNAME').asString;
    end;
end;

function TTPAdd_F.CheckFillTPControls(Npp, Goods,Places, Brutto, Cost,
  Val,Vtt,CostRub,KodVal: String): Boolean;
begin
try
    Result:=True;
    if Length(Npp)=0  then
      begin
       Application.MessageBox('Не заполнено обязательное поле -  № п/п','Внимание',MB_ICONWARNING+MB_OK);
       Result:=False;
       Exit;
      end;
    if Length(Goods)=0  then
      begin
       Application.MessageBox('Не заполнено обязательное поле -  Категория груза','Внимание',MB_ICONWARNING+MB_OK);
       Result:=False;
       Exit;
      end;
    if (Length(Places)=0) or (Places='0')  then
      begin
       Application.MessageBox('Не заполнено обязательное поле -  Количество мест','Внимание',MB_ICONWARNING+MB_OK);
       Result:=False;
       Exit;
      end;
    if (Length(Brutto)=0) or (Brutto='0')  then
      begin
       Application.MessageBox('Не заполнено обязательное поле -  Вес','Внимание',MB_ICONWARNING+MB_OK);
       Result:=False;
       Exit;
      end;
    if (Length(Cost)=0) or (Cost='0')  then
      begin
       Application.MessageBox('Не заполнено обязательное поле -  Стоимость','Внимание',MB_ICONWARNING+MB_OK);
       Result:=False;
       Exit;
      end;
    if Length(Val)=0  then
      begin
       Application.MessageBox('Не заполнено обязательное поле -  Наименование валюты','Внимание',MB_ICONWARNING+MB_OK);
       Result:=False;
       Exit;
      end;
    if not CustDocValidate(Vtt) then
      begin
        Application.MessageBox('Ошибка в таможенных документах','Внимание',MB_ICONWARNING+MB_OK);
        Result:=False;
        Exit;
      end;
    if (Length(CostRub)=0) or (CostRub='0') then
      begin
       Application.MessageBox('Не заполнено обязательное поле -  Стоимость в рублях','Внимание',MB_ICONWARNING+MB_OK);
       Result:=False;
       Exit;
      end;
    if Length(KodVal)=0  then
      begin
       Application.MessageBox('Не заполнено обязательное поле -  Код валюты','Внимание',MB_ICONWARNING+MB_OK);
       Result:=False;
       Exit;
      end;

except
   Result:=False;
end;
end;

function TTPAdd_F.CustDocValidate(CustDoc: String): Boolean;
var
  td1,td2,td3:String;
  I,Code:Integer;
  CurDateSep:Char;
  d:TDate;
  cur_year,doc_year:Word;
  year_differ:Word;
begin
  Result:=True;

    if Length(CustDoc) = 0 then
      begin
       Application.MessageBox('Не заполнено обязательное поле -  Номер ТД/ВТТ','Внимание',MB_ICONWARNING+MB_OK);
       Result:=False;
     end;
    if (Length(CustDoc) > 0) and (Length(CustDoc) < 23)  then
        begin
          Application.MessageBox('Неправильная длина поля - Номер ТД/ВТТ','Внимание',MB_ICONWARNING+MB_OK);
          Result:=False;
        end;
    if (Length(CustDoc) =23 )  then
      begin
        if (Copy(CustDoc,9,1)<> '/') or (Copy(CustDoc,16,1) <> '/')  then
        begin
          Application.MessageBox('Неверный формат  "-8-/-6-/-7-"  Номер ТД/ВТТ','Внимание',MB_ICONWARNING+MB_OK);
          Result:=False;
        end;
        td1:=Copy(CustDoc,1,8);
        td2:=Copy(CustDoc,10,6);
        td3:=Copy(CustDoc,17,7);
        System.Val(td1,I,Code);
        if Code > 0 then
          begin
            Application.MessageBox('Ошибка в коде поста - Номер ТД/ВТТ','Внимание',MB_ICONWARNING+MB_OK);
            Result:=False;
          end;
        System.Val(td3,I,Code);
        if Code > 0 then
          begin
            Application.MessageBox('Ошибка в номере ТД(последние 7 цифр) - Номер ТД/ВТТ','Внимание',MB_ICONWARNING+MB_OK);
            Result:=False;
          end;
         CurDateSep:=FormatSettings.DateSeparator;
         try
           d:=StrToDate(Copy(td2,1,2)+CurDateSep+Copy(td2,3,2)+CurDateSep+'20'+Copy(td2,5,2));
           cur_year:=DateUtils.YearOf(Date);
           doc_year:=DateUtils.YearOf(d);
           year_differ:=cur_year-doc_year;
           if (year_differ <> 0 )  then
             begin
               if Application.MessageBox('Год в дате документа отличается от текущего - Номер ТД/ВТТ.Продолжить?',
                        'Внимание',MB_ICONWARNING+MB_YESNO) = ID_NO then Result:=False;
             end;
         except
           on E:Exception do
            begin
              Application.MessageBox('Ошибка в дате - Номер ТД/ВТТ','Внимание',MB_ICONWARNING+MB_OK);
              Result:=False;
            end;
         end;

      end;
end;

procedure TTPAdd_F.E_BrokerKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTPAdd_F.E_BrokerRightButtonClick(Sender: TObject);
begin
 if Broker_F.ShowModal = mrOK then E_Broker.Text:=  Broker_F.DbgridEh1.Datasource.Dataset.fieldByName('NAME').asString;
end;

procedure TTPAdd_F.E_BruttoChange(Sender: TObject);
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

procedure TTPAdd_F.E_BruttoKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTPAdd_F.E_CostChange(Sender: TObject);
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

procedure TTPAdd_F.E_CostExit(Sender: TObject);
begin
  if Length(Trim(E_Cost.Text)) <> 0
      then E_CostRub.Value:=TpEdit_F.GetStoimRub(E_KodVal.Text,E_Cost.Value,TicketDate);
end;

procedure TTPAdd_F.E_CostKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTPAdd_F.E_DTtnKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTPAdd_F.E_GoodsKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTPAdd_F.E_GoodsRightButtonClick(Sender: TObject);
begin
 if Goods_F.ShowModal = mrOK then E_Goods.Text:=  Goods_F.DbgridEh1.Datasource.Dataset.fieldByName('NAME').asString;
end;

procedure TTPAdd_F.E_KodVAlChange(Sender: TObject);
begin
 if Val_F.FindVal(E_KodVAl.Text) <> 'F' then
    begin
      E_Val.Text:=Dm.Qry_Val.FieldByName('KR_NAME').AsString;
        if (Length(E_KodVal.Text)= 3) then
          begin
             E_CostRub.Value:=TpEdit_F.GetStoimRub(E_KodVal.Text,E_Cost.Value,TicketDate);
          end;
    end;
end;

procedure TTPAdd_F.E_KodVAlKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTPAdd_F.E_NameKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTPAdd_F.E_NppKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTPAdd_F.E_NTtnKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTPAdd_F.E_OtprKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTPAdd_F.E_OtprRightButtonClick(Sender: TObject);
begin
 if Shipper_F.ShowModal = mrOK then E_Otpr.Text:=  Shipper_F.DbgridEh1.Datasource.Dataset.fieldByName('FIRM_NAME').asString;
end;

procedure TTPAdd_F.E_PackingKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTPAdd_F.E_PlacesKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTPAdd_F.E_ValKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TTPAdd_F.E_ValRightButtonClick(Sender: TObject);
begin
 if Val_F.ShowModal = mrOK then
  begin
      E_Val.Text:=  Val_F.DbgridEh1.Datasource.Dataset.fieldByName('KR_NAME').asString;
      E_KodVAl.Text := Val_F.DbgridEh1.Datasource.Dataset.fieldByName('KOD').asString;
  end;
end;

procedure TTPAdd_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;

procedure TTPAdd_F.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 if ModalResult=mrRetry then CanClose:=False;

end;

procedure TTPAdd_F.FormDestroy(Sender: TObject);
begin
  FreeAndNil(E_Td);
end;

procedure TTPAdd_F.FormShow(Sender: TObject);
begin
  E_KT.Text:=Main_F.Grid_TicketParts.Datasource.DataSet.FieldByName('PART_NOMER').asString;
  E_NTtn.Text:='БН';
  E_DTtn.Date:= Date;
  E_Poluch.Text:=Main_F.Grid_TicketParts.Datasource.DataSet.FieldByName('ZAYV').asString;
  E_Npp.Text:=IntToStr(NewNpp(Main_F.Grid_TicketParts.DataSource.DataSet.FieldByName('ID').AsInteger));
  E_Places.Clear;
  E_Goods.Clear;
  E_Goods.SetFocus;
  E_Otpr.Clear;
  E_Brutto.Clear;
  E_Cost.Clear;
  E_CostRub.Clear;
  E_KodVAl.Clear;
  E_Val.Clear;
  E_Broker.Clear;
  E_Td.Clear;
  TicketDate:=DateOf(DM.Qry_TicketDT_IS.AsDateTime);
end;

function TTPAdd_F.NewNpp(IdTicket: Integer): Integer;
var
 Qry:TIbQuery;
begin
  try
    Result:=0;
    Qry:=TIBQuery.Create(Self);
    Qry.Database:=DM.DB;
    Qry.Transaction:=DM.IBTR;
    Qry.SQL.Add('select count(id) from parties where ID_PART=:p0 ');
    Qry.Params[0].AsInteger:=IdTicket;
    Qry.Open;
    Result:= Qry.Fields[0].AsInteger+1;
  finally
    Qry.Close;
    Qry.Free
  end;
end;

end.

{
  object E_TD: TMaskEdit
    Left = 120
    Top = 392
    Width = 312
    Height = 21
    EditMask = '00000000\/000000\/0000000;1;_'
    MaxLength = 23
    TabOrder = 13
    Text = '        .      .       '
    OnKeyPress = E_TDKeyPress
}
