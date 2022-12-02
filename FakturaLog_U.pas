unit FakturaLog_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons, ToolWin, DBGridEhGrouping,
  GridsEh, DBGridEh,myutils, ActnList, PlatformDefaultStyleActnCtrls, ActnMan,Db,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh,IBX.IBQuery,
  System.Actions, EhLibVCL, PropFilerEh, PropStorageEh;

type
  TFakturaLog_F = class(TForm)
    Splitter1: TSplitter;
    ToolBar1: TToolBar;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SetWorkInterval_Btn: TSpeedButton;
    Rg1: TRadioGroup;
    Rg2: TRadioGroup;
    E_Find: TButtonedEdit;
    WorkDate1: TDateTimePicker;
    WorkDate2: TDateTimePicker;
    Panel2: TPanel;
    Splitter2: TSplitter;
    Panel3: TPanel;
    Panel4: TPanel;
    Grid_FHead: TDBGridEh;
    Grid_FItems: TDBGridEh;
    Ch1: TCheckBox;
    ActionManager1: TActionManager;
    A_FakturaPrint: TAction;
    ToolBar3: TToolBar;
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    ToolButton11: TToolButton;
    A_FItemAdd: TAction;
    A_FItemEdit: TAction;
    A_FItemDel: TAction;
    A_AddFhead: TAction;
    ToolButton1: TToolButton;
    A_PlatChange: TAction;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    A_FakturaPass: TAction;
    A_fakturaCancel: TAction;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolButton12: TToolButton;
    A_FHeadDel: TAction;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    A_NewFiscallbill: TAction;
    Grid_Parts: TDBGridEh;
    TB_ShowItemsEdited: TToolButton;
    Btn_EditLog: TButton;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    procedure FormShow(Sender: TObject);
    procedure Grid_FHeadDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure E_FindKeyPress(Sender: TObject; var Key: Char);
    procedure E_FindRightButtonClick(Sender: TObject);
    procedure SetWorkInterval_BtnClick(Sender: TObject);
    procedure A_FakturaPrintExecute(Sender: TObject);
    procedure A_FakturaPrintUpdate(Sender: TObject);
    procedure A_FItemEditExecute(Sender: TObject);
    procedure A_FItemDelExecute(Sender: TObject);
    procedure A_FItemAddExecute(Sender: TObject);
    procedure A_FItemAddUpdate(Sender: TObject);
    procedure A_FItemEditUpdate(Sender: TObject);
    procedure A_FItemDelUpdate(Sender: TObject);
    procedure A_AddFheadExecute(Sender: TObject);
    procedure A_PlatChangeExecute(Sender: TObject);
    procedure A_PlatChangeUpdate(Sender: TObject);
    procedure A_FakturaPassExecute(Sender: TObject);
    procedure A_FakturaPassUpdate(Sender: TObject);
    procedure A_fakturaCancelExecute(Sender: TObject);
    procedure A_fakturaCancelUpdate(Sender: TObject);
    procedure A_FHeadDelExecute(Sender: TObject);
    procedure A_FHeadDelUpdate(Sender: TObject);
    procedure A_NewFiscallbillExecute(Sender: TObject);
    procedure Rg1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Btn_EditLogClick(Sender: TObject);
  private
    { Private declarations }

    procedure Find_Faktura(Fstr:String);
    procedure SetDateInterval;
  public
    { Public declarations }
    F_type:Integer;
  end;


var
  FakturaLog_F: TFakturaLog_F;
  s_cond:String;
const
  s_body:String=' select a.*, cast(a.date_is as date) as data_f, b.zayv as poluch, c.zayv as plat, c.discount as disc_plat, '+
          ' c.id_hold, d.name as holding,d.discount as disc_hold , ' +
          '  iif(f.saldo is null,0,f.saldo ) as SALDO , c.credit, ' +
          ' iif((c.credit > 0) , (c.credit + f.saldo), null) as CREDIT_REST ' +
          ' from faktura_head a left join reg_ti b on a.r_name = b.id ' +
          ' left join reg_ti c on a.plat_name = c.id left join holdings d on c.id_hold=d.id ' +
          ' left join registr_saldo f on c.id = f.id_zayv ' ;
  s_trailer:String =' order by a.id desc ';

  implementation

uses DM_U,main, Reports_U, FItemsAdd_U, FItemsEdit_U,  Buh_U,
  PartFullEdit_U, atol,FakturaType_U,RegtiPlat_U,VypuskDolg_U,atol25,
  FitemsEdited_U;

{$R *.dfm}

procedure TFakturaLog_F.A_AddFheadExecute(Sender: TObject);
var
 Id_rec,NextNumber:Integer;
 s,mes:String;
 f:TFakturaType_F;
begin
 if RegTiPlat_F.ShowModal <>  mrOk  then Exit;
 if RegtiPlat_F.Qry_RegtiPlat.FieldByName('VALID').AsString = 'F' then
   begin
      mes:='Для данной организации операции запрещены.';
      Application.MessageBox(PChar(mes),'Внимание',MB_ICONSTOP+MB_OK);
      Exit ;
   end;

 mes:='Будет создана с-ф для '+RegtiPlat_F.Qry_RegtiPlat.FieldByName('ZAYV').AsString+'. Продолжить?';
 if Application.MessageBox(PChar(mes),
      'Подтверждение',MB_ICONQUESTION+MB_YESNO) <> ID_YES then Exit ;



  DM.Qry.Close;
  DM.Qry.SQL.Clear;
  Dm.Qry.SQL.Add('select gen_id(GEN_ID_FAKTURA_HEAD,1) from rdb$database');
  Dm.Qry.Open;
  id_rec:=DM.Qry.Fields[0].AsInteger;
try
 try

   f:=TFakturaType_F.Create(Application);
   if  f.ShowModal <> mrOk then
    begin
      mes:='Операция прервана.';
      Application.MessageBox(PChar(mes),'Внимание',MB_ICONSTOP+MB_OK);
      Exit ;
    end;
   DM.Refresh_Settings;
   if F_type = 0  then
      NextNumber:= DM.Qry_Settings.FieldByName('NEXT_FAKTURA').AsInteger
     else
      NextNumber:= DM.Qry_Settings.FieldByName('NEXT_ACTWORKS').AsInteger;

   if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction; //start tran
   //создаем заголовок с/ф
   DM.Sql.Close;
   DM.Sql.SQL.Clear;
   DM.Sql.sql.Add(' insert into faktura_head (id,nomer,user_name,r_name,plat_name,type_f,user_dolj) ');
   DM.Sql.sql.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6) ');
   DM.Sql.Params[0].AsInteger:=id_rec;
   DM.Sql.Params[1].AsInteger:=NextNumber;
   //DM.Sql.Params[2].AsDateTime:=Now;
   DM.Sql.Params[2].AsString:=User;
   DM.Sql.Params[3].AsInteger:=RegtiPlat_F.Qry_RegtiPlat.FieldByName('ID').AsInteger;
   DM.Sql.Params[4].AsInteger:=RegtiPlat_F.Qry_RegtiPlat.FieldByName('ID').AsInteger;
   DM.Sql.Params[5].AsString:='S'; // см. описание соответствующей таблицы в БД
   DM.Sql.Params[6].AsString:=Dolj;
   DM.Sql.ExecQuery;
   //увеличим счетчик номера с-ф
   DM.Sql.Close;
   DM.Sql.SQL.Clear;
   if F_type = 0  then
      begin
       DM.Sql.sql.Add(' update settings set next_faktura=:p0  ');
      end
     else
      begin
       DM.Sql.sql.Add(' update settings set next_actworks=:p0  ');
      end;
   DM.Sql.Params[0].AsInteger:=NextNumber+1;
   DM.Sql.ExecQuery;
   DM.Sql.Transaction.Commit;
   DM.Qry_FheadLog.Close;
   DM.Qry_FHeadLog.Open;
   DM.Qry_FHeadLog.Locate('ID',id_rec,[]);
   DM.Qry_FItemsLog.Close;
   DM.Qry_FItemsLog.Open;
   DM.Qry_TicketForFakturaLog.Close;
   DM.Qry_TicketForFakturaLog.Open;
  except
    on E: EdatabaseError do
      begin
       ShowMessage(E.Message);
      end;
 end;
finally
 f.Free;
 if  DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

procedure TFakturaLog_F.A_fakturaCancelExecute(Sender: TObject);
var
 rec:Integer;
begin
 if Application.MessageBox('Данная операция влияет на счет клиента.Продолжить?',
                            'Отмена счет-фактуры',MB_ICONQUESTION+MB_YESNO) <> ID_YES then Exit;
 Buh_f.CancelFaktura(DM.Qry_FHeadLog.FieldByName('ID').AsInteger);
  rec:= DM.Qry_FHeadLog.FieldByName('ID').AsInteger;
  DM.Qry_FHeadLog.Close;
  DM.Qry_FHeadLog.Open;
  DM.Qry_FHeadLog.Locate('ID',rec,[]);
  DM.Qry_FItemsLog.Close;
  DM.Qry_FItemsLog.Open;
  DM.Qry_TicketForFakturaLog.Close;
  DM.Qry_TicketForFakturaLog.Open;
  DM.Qry_ClAc.Close;
  DM.Qry_ClAc.Open;
end;

procedure TFakturaLog_F.A_fakturaCancelUpdate(Sender: TObject);
begin
 if (DM.Qry_FHeadLog.FieldByName('ID').IsNull) or
    (DM.Qry_FHeadLog.FieldByName('PASS_FLAG').AsInteger=0) then
        (Sender as TAction).Enabled:=False
       else
        (Sender as TAction).Enabled:=True;
end;

procedure TFakturaLog_F.A_FakturaPassExecute(Sender: TObject);
 var
   Sm,Saldo,SaldoPlat:Double;
   rec:Integer;
   osnovanie:Integer;
   ruk:String;
   balance,credit:Double;
   srok:TDate;
   holding:Integer;
   id_zayv:Integer;
   flag:boolean;
begin
//  ShowMessage('Данная операция временно недоступна');
// if Application.MessageBox('Данная операция влияет на счет клиента.Продолжить?',
//                            'Проведение счет-фактуры',MB_ICONQUESTION+MB_YESNO) <> ID_YES then Exit;
   Sm:=Main_F.GetFakturaSum(DM.Qry_FHeadlog.FieldByName('ID').AsInteger);
   //Saldo:=Buh_F.GetSaldo(DM.Qry_FHeadLog.FieldByName('PLAT_NAME').AsInteger);
   SaldoPlat:=Grid_FHead.DataSource.DataSet.FieldByName('SALDO').AsFloat;
   Saldo:=SaldoPlat;
   holding:= Grid_FHead.DataSource.DataSet.FieldByName('ID_HOLD').AsInteger;
   credit:= Grid_FHead.DataSource.DataSet.FieldByName('CREDIT_REST').AsFloat;
   if (Saldo-Sm) < 0 then
     begin
       flag:=true;
       if Application.MessageBox('У плательщика недостаточно средств для проведения счет-фактуры.Продолжить?','Внимание',MB_ICONQUESTION+MB_YESNO) <> ID_YES then Exit;
        //обработка выпуска в долг
         if VypuskDolg_F.ShowModal = mrCancel then Exit;
         //Проверка выпуска в кредит
         osnovanie := VypuskDolg_F.Osnovanie;
         ruk := VypuskDolg_F.Rukovoditel;
         srok:= VypuskDolg_F.Srok;
         if osnovanie = 0  then
          begin
             if Credit <= 0 then
               begin
                    Application.MessageBox
                    ('Выпуск в кредит невозможен.',
                        'Внимание',MB_ICONWARNING+MB_OK);
                    Exit;
               end
              else
                 if (credit - Sm)  < 0 then
                  begin
                      Application.MessageBox
                      (PChar( 'Выпуск в кредит невозможен. ' +
                          'Не хватает ' +FloatToStr(-( credit - Sm)) +' руб.' ),
                          'Внимание',MB_ICONWARNING+MB_OK);
                      Exit;
                  end;
            end;
          end;

          Buh_F.PassFaktura (
               DM.Qry_FHeadLog.FieldByName('PLAT_NAME').AsInteger  ,
               DM.Qry_FHeadLog.FieldByName('ID').AsInteger ,
               Sm,
               DM.Qry_FHeadLog.FieldByName('DATE_IS').AsDateTime ,
               IntToStr(DM.Qry_FHeadLog.FieldByName('NOMER').AsInteger),
               osnovanie,
               ruk,
               srok,
               Grid_FHead.DataSource.DataSet.FieldByName('ID').AsInteger,
               Saldo,
               holding,
               credit,
               balance,
               SaldoPlat,
               flag
               );
//procedure TBuh_F.PassFaktura(Cl, Rec_F: Integer; Sm: Extended;
//  Dt_Is: TdateTime; NDoc:String; Osnovanie:Integer; Ruk:string; Srok : TDateTime;
//  Id_doc:Integer;Saldo:Double;Holding:Integer;Credit:Double;Balance_Before:Double;Saldo_Plat:Double;Flag:Boolean );

 rec:=DM.Qry_FHeadlog.FieldByName('ID').AsInteger;
 DM.Qry_FHeadlog.Close;
 DM.Qry_FHeadlog.Open;
 DM.Qry_FHeadlog.Locate('ID',rec,[]);
 DM.Qry_FItemsLog.Close;
 DM.Qry_FItemsLog.Open;
 DM.Qry_TicketForFakturaLog.Close;
 DM.Qry_TicketForFakturaLog.Open;
end;

procedure TFakturaLog_F.A_FakturaPassUpdate(Sender: TObject);
begin
 if (DM.Qry_FheadLog.FieldByName('ID').IsNull)
    or (DM.Qry_FheadLog.FieldByName('PASS_FLAG').AsInteger=1) then
        (Sender as TAction).Enabled:=False
       else
        (Sender as TAction).Enabled:=True;
end;

procedure TFakturaLog_F.A_FakturaPrintExecute(Sender: TObject);
begin
 IdFHead:=DM.Qry_FheadLog.FieldByName('ID').AsInteger;
 DM.Qry_RepInFaktura.Close;
 DM.Qry_RepInFaktura.Params[0].AsInteger:=IdFHead;
 DM.Qry_RepInFaktura.Open;
 DM.Refresh_Settings;
 case DM.Qry_Settings.FieldByName('BUH_DOC').AsInteger of
  0:begin
     Reports_F.Rep_buh.LoadFromFile('in_faktura.fr3');
     Reports_F.Rep_buh.PrepareReport(True);
     Reports_F.Rep_buh.ShowPreparedReport;
     Reports_F.Rep_buh.LoadFromFile('act_works.fr3');
     Reports_F.Rep_buh.PrepareReport(True);
     Reports_F.Rep_buh.ShowPreparedReport;
  end;
  1:begin
     Reports_F.Rep_buh.LoadFromFile('upd.fr3');
     Reports_F.Rep_buh.PrepareReport(True);
     Reports_F.Rep_buh.ShowPreparedReport;
  end;
 end;
end;

procedure TFakturaLog_F.A_FakturaPrintUpdate(Sender: TObject);
begin
  if DM.Qry_FheadLog.FieldByName('ID').IsNull then
  (Sender as TAction).Enabled:=false
  else
  (Sender as TAction).Enabled:=True;
end;

procedure TFakturaLog_F.A_FHeadDelExecute(Sender: TObject);
var
 id_rec:Integer;
 qry : TIBQuery;
begin
 id_rec:=DM.Qry_FheadLog.FieldByName('ID').AsInteger;
  if DM.Qry_FheadLog.FieldByName('PASS_FLAG').AsInteger = 1  then
    begin
      Application.MessageBox('Счет-фактура проведена.Требуется отмена проведения.','Внимание',MB_ICONSTOP+mb_ok);
      Exit;
    end;
   if  Application.MessageBox('Данные будут удалены.Продолжить?','Подтверждение',MB_ICONQUESTION+MB_YESNO) <> ID_YES
       then  Exit;
  qry := TIBQuery.Create(Self);
  try
    qry.Database := DM.DB;
    qry.SQL.Add(' select count(id) from parties_log where id_faktura = :p0 ');
    qry.Params[0].AsInteger := id_rec;
    qry.Open;
    if qry.Fields[0].AsInteger >= 1 then
      begin
        Application.MessageBox('Счет-фактура проведена в контрольном талоне.Удаление невозможно.','Внимание',MB_ICONSTOP+mb_ok);
        Exit;
      end;
  finally
    qry.Free;
  end;


try
  try
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction; //start tran
     DM.Sql.Close;
     DM.Sql.SQL.Clear;
     DM.Sql.sql.Add(' delete from faktura_head where id=:p0  ');
     DM.Sql.Params[0].AsInteger:=id_rec;
     DM.Sql.ExecQuery;
     DM.Sql.Transaction.Commit;
     DM.Qry_FheadLog.Close;
     Dm.Qry_FheadLog.Open;
     DM.Qry_FheadLog.Locate('ID',id_rec,[]);
     DM.Qry_FItemsLog.Close;
     DM.Qry_FItemsLog.Open;
     DM.Qry_TicketForFakturaLog.Close;
     DM.Qry_TicketForFakturaLog.Open;

  except
    on E: EdatabaseError do
      begin
       ShowMessage(E.Message);
      end;
  end;
finally
    if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

procedure TFakturaLog_F.A_FHeadDelUpdate(Sender: TObject);
begin
if Grid_FHead.DataSource.DataSet.Active then
  if not Grid_FHead.DataSource.DataSet.FieldByName('ID').IsNull and
     (Grid_FHead.DataSource.DataSet.FieldByName('PASS_FLAG').asInteger =0) then
      (Sender as TAction).Enabled:=True
     else
      (Sender as TAction).Enabled:=False;
end;

procedure TFakturaLog_F.A_FItemAddExecute(Sender: TObject);
var
 id_price,plat:integer;
 qry:TIbquery;
begin
 try
   plat:=DM.Qry_FheadLog.FieldByName('PLAT_NAME').AsInteger;
   qry:=TIbQuery.Create(Self);
   qry.Database:=DM.Db;
   qry.SQL.Add(' select id_price from reg_ti where id = :p0' );
   qry.Params[0].AsInteger:=plat;
   qry.Open;
   id_price:=qry.Fields[0].AsInteger;
   DM.MT_PriceList.Close;
   DM.Qry_PriceList.Close;
   DM.Qry_PriceList.Params[0].AsInteger:=id_price;
   DM.Qry_PriceList.Open;
   DM.MT_PriceList.Open;
    IdFHead:=DM.Qry_FheadLog.FieldByName('ID').AsInteger;
    DiscPlat:=DM.Qry_FheadLog.FieldByName('DISC_PLAT').AsInteger;
    FakturaTypeNumering:=Main_F.GetTypeNumering(DM.Qry_FHeadLog.FieldByName('NOMER').AsInteger);
    if FItemsAdd_F.ShowModal = mrOk then
       begin
         DM.Qry_FItemsLog.Close;
         DM.Qry_FItemsLog.Open;
         DM.Qry_FItemsLog.Last;
       end;
 finally
   qry.Free;
 end;
end;

procedure TFakturaLog_F.A_FItemAddUpdate(Sender: TObject);
begin
 if (DM.Qry_FheadLog.FieldByName('ID').IsNull)
    or (DM.Qry_FheadLog.FieldByName('PASS_FLAG').AsInteger=1) then
        (Sender as TAction).Enabled:=False
       else
        (Sender as TAction).Enabled:=True;
end;

procedure TFakturaLog_F.A_FItemDelExecute(Sender: TObject);
begin
  IdFItems:=DM.Qry_FItemsLog.FieldByName('ID').AsInteger;
  if DM.Qry_FheadLog .FieldByName('PASS_FLAG').AsInteger = 1  then
    begin
      Application.MessageBox('Счет-фактура проведена.Требуется отмена проведения.','Внимание',MB_ICONSTOP+mb_ok);
      Exit;
    end;
   if  Application.MessageBox('Данные будут удалены.Продолжить?','Подтверждение',MB_ICONQUESTION+MB_YESNO) <> ID_YES
       then  Exit;
try
  try
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction; //start tran
     DM.Sql.Close;
     DM.Sql.SQL.Clear;
     DM.Sql.sql.Add(' delete from faktura_items where id=:p0  ');
     DM.Sql.Params[0].AsInteger:=IdFItems;
     DM.Sql.ExecQuery;
     DM.Sql.Transaction.Commit;
     DM.Qry_FItemsLog.Close;
     Dm.Qry_FItemsLog.Open;
  except
    on E: EdatabaseError do
      begin
       ShowMessage(E.Message);
      end;
  end;
finally
    if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

procedure TFakturaLog_F.A_FItemDelUpdate(Sender: TObject);
begin
 if (DM.Qry_FItemsLog.FieldByName('ID').IsNull)
    or (DM.Qry_FHeadLog.FieldByName('PASS_FLAG').AsInteger=1) then
        (Sender as TAction).Enabled:=False
       else
        (Sender as TAction).Enabled:=True;
end;

procedure TFakturaLog_F.A_FItemEditExecute(Sender: TObject);
begin
 IdFItems:=DM.Qry_FItemsLog.FieldByName('ID').AsInteger;
 FItemDataset:=DM.Qry_FItemsLog;
 if FItemsEdit_F.ShowModal = mrOk then
   begin
     DM.Qry_FItemsLog.Close;
     DM.Qry_FItemsLog.Open;
     DM.Qry_FItemsLog.Locate('ID',IdFItems,[]);
   end;
end;

procedure TFakturaLog_F.A_FItemEditUpdate(Sender: TObject);
begin
 if (DM.Qry_FItemsLog.FieldByName('ID').IsNull)
    or (DM.Qry_FheadLog.FieldByName('PASS_FLAG').AsInteger=1) then
        (Sender as TAction).Enabled:=False
       else
        (Sender as TAction).Enabled:=True;
end;

procedure TFakturaLog_F.A_NewFiscallbillExecute(Sender: TObject);
//var
// idrec:Integer;
// qry:TIbQuery;
//begin
//  if DM.Qry_FItemsLog.FieldByName('VAT').Value > 0 then
//     TaxIndex:=1
//    else
//     TaxIndex:=0;
//
//  PlatNum:=DM.Qry_FHeadLog.FieldByName('PLAT_NAME').asInteger;
//  PlatName:=DM.Qry_FHeadLog.FieldByName('PLAT').asString;
//
//  if (not Assigned(FormAtol)) then
//    begin
//      Application.MessageBox('Касса не открыта.','Внимание',MB_ICONWARNING+MB_OK);
//      Exit;
//    end;
//  /////// получим сумму и ндс из сф
//  idrec:=DM.Qry_FHeadLog.FieldByName('ID').AsInteger;
//  FormAtol.E_Sum.Value:=Main_F.GetFakturaSum(idrec);
//  FormAtol.E_Vat.Value:=Main_F.GetFakturaVat(idrec);
//  if TaxIndex = 0 then
//      FormAtol.Ch_Vat.Checked:=False
//   else
//      FormAtol.Ch_Vat.Checked:=True;
//
//  //Main_F.N15Click(Main_F.N15);
var
 idrec:Integer;
 qrytmp:TIbQuery;
begin
  if DM.Qry_FItemsLog.FieldByName('VAT').Value > 0 then
     TaxIndex:=1
    else
     TaxIndex:=0;

  PlatNum:=DM.Qry_FHeadLog.FieldByName('PLAT_NAME').asInteger;
  PlatName:=DM.Qry_FHeadLog.FieldByName('PLAT').asString;
  if (not Assigned(Formatol25f)) then
    begin
      Application.MessageBox('Касса не открыта.','Внимание',MB_ICONWARNING+MB_OK);
      Exit;
    end;
  if  Application.MessageBox(Pchar('Будет создан чек на оплату на ' + PlatName + '. Продолжить?'),'Внимание',MB_ICONQUESTION+MB_YESNO) <> ID_YES then
    begin
      Exit;
    end;

  idrec:=DM.Qry_FHeadLog.FieldByName('ID').AsInteger;
    ////////создадим ид,номер нового чека - bills и ид таблицы счетов cl_accounts
try
    qrytmp:=TIBQuery.Create(Self);
    qrytmp.Database:=Dm.DB;
    QryTmp.SQL.Add(' select gen_id(GEN_ID_CL_ACCOUNTS,1) from rdb$database ');
    QryTmp.Open;
    IdAccount:=QryTmp.Fields[0].AsInteger;
    /////
    QryTmp.Close;
    QryTmp.SQL.Clear;
    QryTmp.SQL.Add(' select a.usluga,b.krname,a.total_sum,a.kol, iif( a.kol <> 0, a.total_sum/a.kol,1) as stoim  ,a.discount');
    qrytmp.SQL.Add(' from faktura_items a left join price_lists b on a.id_usl = b.id where a.id_f_head = :p0 ');
    QryTmp.Params[0].AsInteger:=idrec;
    qrytmp.Open;
    if qryTmp.IsEmpty then
      begin
        AppliCation.MessageBox('Нет услуг для формирования чека продажи. ','Внимание',MB_ICONSTOP+MB_OK);
        Exit;
      end;
           //создаем записи в фискальном чеке
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.sql.Add(' insert into bills (id_account,name,stoim,kol,n_part,krname,id_plat) ');
    DM.Sql.sql.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6) ');
     try
        if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
        while not qrytmp.Eof do
          begin
    //
           DM.Sql.Params[0].AsInteger:=IdAccount;
           DM.Sql.Params[1].AsString:=QryTmp.FieldByName('USLUGA').AsString;
           DM.Sql.Params[2].AsDouble:=QryTmp.FieldByName('STOIM').AsFloat;
           DM.Sql.Params[3].AsDouble:=QryTmp.FieldByName('KOL').AsFloat;
           DM.Sql.Params[4].AsString:=Grid_Parts.DataSource.DataSet.FieldByName('PART_NOMER').AsString;
           DM.Sql.Params[5].AsString:=QryTmp.FieldByName('KRNAME').AsString;
           DM.Sql.Params[6].AsInteger:=PlatNum;
           DM.Sql.ExecQuery;
           qrytmp.Next;
          end;
         DM.Sql.Transaction.Commit;
     finally
        if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
     end;

   /////// получим сумму и ндс из сф

  FormAtol25f.E_Sum.Value:=Main_F.GetFakturaSum(idrec);
  FormAtol25f.E_Vat.Value:=Main_F.GetFakturaVat(idrec);
  if TaxIndex = 0 then
     FormAtol25f.Ch_Vat.Checked:=False
    else
     FormAtol25f.Ch_Vat.Checked:=True;
  DM.Refresh_BillItems;
  Main_F.N54Click(Main_F.N54);
finally
  qrytmp.Free;
end;
end;

procedure TFakturaLog_F.A_PlatChangeExecute(Sender: TObject);
 var
  s,Mes:String;
  rec,Plat:Integer;
begin
try
 try
  if RegtiPlat_F.ShowModal <> mrOk then Exit;
  Mes:='Вы действительно хотите сменить плательщика на '+RegtiPlat_F.Qry_RegtiPlat.FieldByName('ZAYV').AsString+' ?';
  if Application.MessageBox(Pchar(mes),'Внимание',mb_iconquestion+mb_yesno)=id_No then exit;
  Plat:=RegtiPlat_F.Qry_RegtiPlat.FieldByName('ID').AsInteger;
  rec:=DM.Qry_FheadLog.FieldByName('ID').AsInteger;
  s:='update faktura_head set plat_name = :p0 where id= :p1';
  DM.Sql.Close;
  DM.Sql.SQL.Clear;
  DM.Sql.SQL.Add(s);
  if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Params[0].AsInteger :=Plat;
    DM.Sql.Params[1].AsInteger :=Rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    DM.Qry_FheadLog.Close;
    DM.Qry_FheadLog.Open;
    DM.Qry_FheadLog.Locate('ID',rec,[]);
    DM.Qry_FItemsLog.Close;
    DM.Qry_FItemsLog.Open;
    DM.Qry_TicketForFakturaLog.Close;
    DM.Qry_TicketForFakturaLog.Open;
  except
    on E: EdatabaseError do
      begin
       //DM.Sql.Transaction.Rollback;
       ShowMessage(E.Message);
      end;
  end;
finally
   if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

procedure TFakturaLog_F.A_PlatChangeUpdate(Sender: TObject);
begin
 if (DM.Qry_FheadLog.FieldByName('ID').IsNull)
    or (DM.Qry_FheadLog.FieldByName('PASS_FLAG').AsInteger=1) then
        (Sender as TAction).Enabled:=False
       else
        (Sender as TAction).Enabled:=True;
end;

procedure TFakturaLog_F.Btn_EditLogClick(Sender: TObject);
begin
  FItemsEdited_F.ShowModal;
end;

procedure TFakturaLog_F.E_FindKeyPress(Sender: TObject; var Key: Char);
begin
 if key= #13 then Find_Faktura(E_Find.Text);
end;

procedure TFakturaLog_F.E_FindRightButtonClick(Sender: TObject);
begin
 Find_Faktura(E_Find.text);
end;

procedure TFakturaLog_F.Find_Faktura(Fstr:String);
begin
 if Length(Trim(Fstr)) = 0 then Exit;
 s_cond:='';
 case Rg1.ItemIndex of
  0: s_cond:=s_cond + format( ' where nomer = %s ',[Fstr]);
  1: s_cond:=s_cond + format( ' where b.zayv containing %s%s%s ',[#39,Fstr,#39]);
  2: s_cond:=s_cond + format( ' where c.zayv containing %s%s%s ',[#39,Fstr,#39]);
 end;
 case Rg2.ItemIndex of
  0: s_cond:=s_cond + ' and a.pass_flag=1 '; // проведенные
  1: s_cond:=s_cond + ' and a.pass_flag=0 '; // непроведенные
  2: s_cond:=s_cond + ' and a.pass_flag=2 '; // удаленные
 end;
 if Ch1.Checked then
   s_cond:=s_cond + ' and cast(a.date_is as date) between :p0 and :p1 ';
 DM.Qry_FheadLog.Close;
 Dm.Qry_FheadLog.SQL.Clear;
 Dm.Qry_FheadLog.SQL.Add (s_body+s_cond+s_trailer );
 if Ch1.Checked then
  begin
    DM.Qry_FheadLog.Params[0].AsDate:=WorkDate1.Date;
    DM.Qry_FheadLog.Params[1].AsDate:=WorkDate2.Date;
  end;
 DM.Qry_FheadLog.Open;
 DM.Qry_FItemsLog.Close;
 DM.Qry_FItemsLog.Open;
 DM.Qry_TicketForFakturaLog.Close;
 DM.Qry_TicketForFakturaLog.Open;
end;

procedure TFakturaLog_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if DM.Qry_FheadLog.Active then  DM.Qry_FheadLog.Close;
 if DM.Qry_FItemsLog.Active then  DM.Qry_FItemsLog.Close;
end;

procedure TFakturaLog_F.FormCreate(Sender: TObject);
var
 flag:Boolean;
begin
 if (Role = 'SYSADMIN') or (Role = 'MANAGER') then flag:=true;
    begin
     Btn_EditLog.Visible :=flag;
     Btn_EditLog.Enabled := flag;
    end;
end;

procedure TFakturaLog_F.FormShow(Sender: TObject);
begin
 WorkDate1.Date:=Date;
 WorkDate2.Date:=Date;
 SetDateInterval;
 DM.Qry_FItemsLog.Close;
 DM.Qry_FItemsLog.Open;
 DM.Qry_TicketForFakturaLog.Close;
 DM.Qry_TicketForFakturaLog.Open;
  if ((Pos('ACCOUNTER_VIEW',Rights) > 0)) then
    begin
      ToolBar1.Enabled := False;
      ToolBar3.Enabled := False;
    end;
end;

procedure TFakturaLog_F.Grid_FHeadDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if  DM.Qry_FheadLog.FieldByName('PASS_FLAG').AsInteger = 1  then
 begin
  Grid_FHead.Canvas.Font.Color := clBlack; // Font color
  Grid_FHead.Canvas.Brush.Color := LighterColor(clLime,70); // Background color
  Grid_FHead.Canvas.FillRect(Rect);
 end;

Grid_FHead.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFakturaLog_F.Rg1Click(Sender: TObject);
begin
  case Rg1.ItemIndex of
    0:
      begin
        E_Find.NumbersOnly:=True;
        E_Find.MaxLength:=8;
      end;
    1,2:
      begin
        E_Find.NumbersOnly:=False;
        E_Find.MaxLength:=15;
      end;

  end;
end;

procedure TFakturaLog_F.SetDateInterval;
begin
 s_cond:=' where cast(a.date_is as date) between :p0 and :p1 ';
 DM.Qry_FheadLog.Close;
 Dm.Qry_FheadLog.SQL.Clear;
 DM.Qry_FheadLog.SQL.Add( s_body+s_cond+s_trailer);
 DM.Qry_FheadLog.Params[0].AsDate:=WorkDate1.Date;
 DM.Qry_FheadLog.Params[1].AsDate:=WorkDate2.Date;
 Dm.Qry_FheadLog.Open;
 DM.Qry_FItemsLog.Close;
 DM.Qry_FItemsLog.Open;
 DM.Qry_TicketForFakturaLog.Close;
 DM.Qry_TicketForFakturaLog.Open;
end;

procedure TFakturaLog_F.SetWorkInterval_BtnClick(Sender: TObject);
begin
 SetDateInterval;
end;

end.
