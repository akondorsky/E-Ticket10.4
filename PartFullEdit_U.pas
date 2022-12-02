unit PartFullEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,  Graphics,
   Controls,  Forms,  Dialogs,  ToolWin,  ComCtrls,  StdCtrls,
   ExtCtrls, frxClass, frxPreview,  Menus, DBGridEhGrouping, GridsEh,
  DBGridEh, PlatformDefaultStyleActnCtrls, ActnList, ActnMan,DB, System.Actions;

type
  TPartFullEdit_F = class(TForm)
    ToolBar1: TToolBar;
    Btn_Refresh: TToolButton;
    MainMenu1: TMainMenu;
    Mn1_1: TMenuItem;
    Panel1: TPanel;
    frxPreview1: TfrxPreview;
    AM_TicketPart: TActionManager;
    A_Services: TAction;
    A_ServiceAdd: TAction;
    A_ServiceEdit: TAction;
    A_ServiceDel: TAction;
    N1: TMenuItem;
    A_ServMarks: TAction;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    A_Technik: TAction;
    ToolButton2: TToolButton;
    N14: TMenuItem;
    A_UslDelShow: TAction;
    N15: TMenuItem;
    A_GoToPay: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure Btn_RefreshClick(Sender: TObject);
    procedure A_ServicesExecute(Sender: TObject);
    procedure A_ServiceAddExecute(Sender: TObject);
    procedure A_ServiceEditExecute(Sender: TObject);
    procedure A_ServiceDelExecute(Sender: TObject);
    procedure A_ServMarksExecute(Sender: TObject);
    procedure A_TechnikExecute(Sender: TObject);
    procedure A_TechnikUpdate(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure A_UslDelShowExecute(Sender: TObject);
    procedure A_GoToPayExecute(Sender: TObject);
  private
    { Private declarations }
    procedure ShowTicketReport;
    procedure DelUsl;
  public
    { Public declarations }
  end;

var
  PartFullEdit_F: TPartFullEdit_F;

implementation

{$R *.dfm}
uses main,dm_u,reports_u, UslAdd_U, Usl_U, UslEdit_U, Regti_U, DelUsl_U;
procedure TPartFullEdit_F.A_GoToPayExecute(Sender: TObject);
var
 Mes:String;
begin
try
 try
     Mes:='Направить в кассу на оплату КТ № ' + DM.Qry_Parts.FieldByName('PART_NOMER').AsString +'?';
    if Application.MessageBox(Pchar(Mes),'Подтверждение',MB_ICONQUESTION+MB_YESNO)<> ID_YES then Exit;
    //добавим запись в журнал
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into parties_log (id_ticket,action_name,username,action_code,id_part) ');
    DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4) ');
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Params[0].Value:=DM.Qry_Parts.FieldByName('ID_TICKET').AsInteger;
    DM.Sql.Params[1].AsString:=STEP_5;
    DM.Sql.Params[2].AsString:=User;
    DM.Sql.Params[3].AsInteger:=STEP_CODE_5;
    DM.Sql.Params[4].AsInteger:=DM.Qry_TP.FieldByName('ID_PART').AsInteger;
    DM.Sql.ExecQuery;
    //поставим флаг контроля перед списанием в часть талона для кассира
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update ticket_parts set pay_control=1 where id=:p0 ');
    DM.Sql.Params[0].AsInteger:=DM.Qry_Parts.FieldByName('ID').AsInteger;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    DM.Refresh_Parts;
    Application.MessageBox('Выполнено','Подтверждение',MB_ICONINFORMATION+MB_OK);
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

procedure TPartFullEdit_F.A_ServiceAddExecute(Sender: TObject);
begin
if UslAdd_F.ShowModal = mrOk then   Btn_RefreshClick(Btn_Refresh);
end;

procedure TPartFullEdit_F.A_ServiceDelExecute(Sender: TObject);
begin
 if Usl_F.ShowModal=mrOk then
  begin
    if Application.MessageBox('Выбранная услуга будет удалена.Продолжить?','Внимание',MB_ICONQUESTION+MB_YESNO)=ID_YES then
      begin
        DelUsl;
        Btn_RefreshClick(Btn_Refresh);
      end;
  end;
end;

procedure TPartFullEdit_F.A_ServiceEditExecute(Sender: TObject);
begin
 if Usl_F.ShowModal=mrOk then
   begin

     if Trim(Dm.Qry_Usl.FieldByName('CHECKED').AsString) ='T' then
        begin
          Application.MessageBox('Услуга оплачена.Редактирование невозможно.','Предупреждение',MB_ICONWARNING+MB_OK);
          Exit;
        end;
     if UslEdit_F.ShowModal=mrOk then   Btn_RefreshClick(Btn_Refresh);
   end;
end;

procedure TPartFullEdit_F.A_ServicesExecute(Sender: TObject);
begin
//
end;

procedure TPartFullEdit_F.A_ServMarksExecute(Sender: TObject);
begin
//
end;

procedure TPartFullEdit_F.A_TechnikExecute(Sender: TObject);
begin
try
 try
    //добавим запись в журнал
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into parties_log (id_ticket,action_name,username,action_code,id_part) ');
    DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4) ');
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Params[0].AsInteger:=DM.Qry_Parts.FieldByName('ID_TICKET').AsInteger;
    DM.Sql.Params[1].AsString:=STEP_4;
    DM.Sql.Params[2].AsString:=User;
    DM.Sql.Params[3].AsInteger:=STEP_CODE_4;
    DM.Sql.Params[4].AsInteger:=DM.Qry_Parts.FieldByName('ID').AsInteger;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    Btn_RefreshClick(Btn_Refresh);
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

procedure TPartFullEdit_F.A_TechnikUpdate(Sender: TObject);
begin
  if DM.Qry_Rep_Step4.FieldByName('ACTION_CODE').AsInteger = 0 then
    (Sender as TAction).Enabled:=True
    else
    (sender as TAction).Enabled:=False;


end;

procedure TPartFullEdit_F.A_UslDelShowExecute(Sender: TObject);
begin
  DelUsl_F.ShowModal;
end;

procedure TPartFullEdit_F.DelUsl;
var
 id_rec:Integer;
 s:String;
begin
s:=DM.Qry_Usl.FieldByName('CHECKED').AsString;
if Trim(s) = 'T' then
  begin
    Application.MessageBox('Данная услуга включена в счет-фактуру и не может быть удалена.','Предупреждение',MB_ICONWARNING+MB_OK);
    Exit;
  end;
try
 try
    id_rec:=DM.Qry_Usl.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update ticket_money set del_flag = 1 where id=:p0 ');
    DM.Sql.Params[0].asInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into ticket_money_deleted (id_usl_money,username,userrole) ');
    DM.Sql.SQl.Add(' values(:p0,:p1,:p2)   ');
    DM.Sql.Params[0].asInteger:=id_rec;
    DM.Sql.Params[1].AsString:=User;
    DM.Sql.Params[2].AsString:=Role;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
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

procedure TPartFullEdit_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 ModalResult:=mrOk;
end;

procedure TPartFullEdit_F.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
 // frxPreview1.MouseWheelScroll(WheelDelta);              2022
end;

procedure TPartFullEdit_F.FormShow(Sender: TObject);
var
 id_owner, id_price:Integer;
begin
 //Main_F.IdPart:=DM.Qry_parts.FieldByName('ID').AsInteger;
 //Main_F.IdTicket:=DM.Qry_Ticket.FieldByName('ID').AsInteger;
 DM.Refresh_Full_Ticket_Qry_Rep;
 //найти и открыть необходимый прайс лист
 id_owner:=DM.GetOwnerByPart(Main_F.IdPart);
 Regti_F.All_Rec.Execute;
 if Not DM.Qry_RegTi.Locate('ID',id_owner,[]) then
    begin
      Application.MessageBox('Получатель груза не найден.','Критическая ошибка!',MB_ICONERROR+MB_OK);
      Exit;
    end;
 id_price:=DM.Qry_RegTi.FieldByName('ID_PRICE').AsInteger;
 DM.MT_PriceList.Close;
 DM.Qry_PriceList.Close;
 DM.Qry_PriceList.Params[0].AsInteger:=id_price;
 DM.MT_PriceList.Open;
 (Sender as TForm).Caption:='Часть контрольного талона № '+ DM.Qry_Rep_Part.FieldByName('PART_NOMER').AsString;
 ShowTicketReport;
end;


procedure TPartFullEdit_F.N14Click(Sender: TObject);
begin
 if A_GoToPay.Execute then Btn_RefreshClick(Btn_Refresh);
end;

procedure TPartFullEdit_F.ShowTicketReport;
begin
 Reports_F.Rep1.Preview:=frxPreview1;
 Reports_F.Rep1.LoadFromFile('kt_full.fr3');
 Reports_F.Rep1.PrepareReport(True);
 Reports_F.Rep1.ShowPreparedReport;
 Reports_F.Rep1.Preview.SetFocus;
end;

procedure TPartFullEdit_F.Btn_RefreshClick(Sender: TObject);
begin
  Main_F.IdPart:=DM.Qry_parts.FieldByName('ID').AsInteger;
  Main_F.IdTicket:=DM.Qry_Ticket.FieldByName('ID').AsInteger;
  DM.Refresh_Full_Ticket_Qry_Rep;
  ShowTicketReport;
end;

procedure TPartFullEdit_F.ToolButton2Click(Sender: TObject);
begin
 Reports_F.Rep1.Print;
 ShowTicketReport;
end;

end.
