unit Regti_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, StdCtrls, Mask, DBCtrlsEh,  ExtCtrls, ComCtrls,
  ToolWin, Grids, DBGridEh,  ActnList, PropFilerEh, PropStorageEh,
  Menus,  DBGridEhGrouping, GridsEh,DB, PlatformDefaultStyleActnCtrls, ActnMan,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh,RegularExpressions,
  DBCtrls,IBX.IBQuery, System.ImageList, System.Actions, EhLibVCL;

type
  TRegti_F = class(TForm)
    DBGridEh1: TDBGridEh;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    Panel1: TPanel;
    RG1: TRadioGroup;

    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ActionList1: TActionList;
    NewRec: TAction;
    Edit_Rec: TAction;
    Refresh_DS: TAction;
    All_Rec: TAction;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    Rg_Sort: TRadioGroup;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    Print_Regti: TAction;
    ImageList2: TImageList;
    ImageList3: TImageList;
    Label1: TLabel;
    E_Find: TButtonedEdit;
    Splitter1: TSplitter;
    PopMn_Dog: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    DBGridEh3: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBGridEh4: TDBGridEh;
    PopupMenu1: TPopupMenu;
    PopMn_Zayv: TMenuItem;
    N4: TMenuItem;
    ActionManager1: TActionManager;
    A_Enable: TAction;
    A_Disable: TAction;
    MainMenu1: TMainMenu;
    Splitter2: TSplitter;
    Grid_sms: TDBGridEh;
    PopupMenu2: TPopupMenu;
    A_ShowDiscEna: TAction;
    AddItem: TMenuItem;
    DelItem: TMenuItem;
    Splitter3: TSplitter;
    Grid_Mail: TDBGridEh;
    PopupMenu3: TPopupMenu;
    AddMailItem: TMenuItem;
    DelMailItem: TMenuItem;
    ImageList4: TImageList;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    A_ShowDiscDisa: TAction;
    A_OpenDisc: TAction;
    PopMn_Print: TPopupMenu;
    N9: TMenuItem;
    N10: TMenuItem;
    A_PrintHolding: TAction;
    Panel2: TPanel;
    Note_usl: TDBMemo;
    N11: TMenuItem;
    N12: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure E_FindButtonClick(Sender: TObject);
    procedure E_FindKeyPress(Sender: TObject; var Key: Char);
    procedure All_RecExecute(Sender: TObject);
    procedure NewRecExecute(Sender: TObject);
    procedure Edit_RecExecute(Sender: TObject);
    procedure RG1Click(Sender: TObject);
    procedure Refresh_DSExecute(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure Print_RegtiExecute(Sender: TObject);
    procedure E_FindRightButtonClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure PopMn_ZayvClick(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure A_EnableExecute(Sender: TObject);
    procedure A_DisableExecute(Sender: TObject);
    procedure A_EnableUpdate(Sender: TObject);
    procedure A_DisableUpdate(Sender: TObject);
    procedure AddItemClick(Sender: TObject);
    procedure DelItemClick(Sender: TObject);
    procedure AddMailItemClick(Sender: TObject);
    procedure DelMailItemClick(Sender: TObject);
    procedure A_OpenDiscExecute(Sender: TObject);
    procedure A_ShowDiscDisaExecute(Sender: TObject);
    procedure A_ShowDiscEnaExecute(Sender: TObject);
    procedure A_ShowDiscEnaUpdate(Sender: TObject);
    procedure A_ShowDiscDisaUpdate(Sender: TObject);
    procedure A_OpenDiscUpdate(Sender: TObject);
    procedure A_PrintHoldingExecute(Sender: TObject);
    procedure N12Click(Sender: TObject);
  private
    { Private declarations }
    procedure Find_Records(F_Str:String);
  public
    { Public declarations }
    Reason:Boolean;
    function FindPoluch(F:String):Boolean;
    function CheckPhone(S:String):Boolean;
    procedure AllRecShow;
  end;

{SELECT
A.*, B.NAME,B.DISCOUNT AS DISC_HOLD,C.NAME AS PRICENAME,
(A.POSTCODE||' '||A.CITY||' 'A.STREET||' 'A.HOUSE) AS FULL_ADRESS
FROM REG_TI A
LEFT JOIN HOLDINGS B ON A.ID_HOLD=B.ID
LEFT JOIN PRICES C ON A.ID_PRICE = C.ID
WHERE A.DEL_FLAG = 0
ORDER BY A.ID DESC}

var
  Regti_F: TRegti_F;

implementation
uses main, dm_u, RegTiEdit_U, RegTiAdd_U, DogovorAdd_U, DogovorEdit_U,
  ReasonsDog_U,myutils,SmsPhoneAdd_U, EmailAdd_U, Hold_U,Reports_U, UslNote_U,
  DogovorsList_U;
{$R *.dfm}
function TRegti_F.FindPoluch(F:String):Boolean;
begin
end;

procedure TRegti_F.Find_Records(F_Str:String);
var
 s,s4,s5:String;
 qry:TIBQuery;
begin
if Length(F_Str) = 0 then Exit;
qry := TIBQuery.Create(Self);
try
     s:=' SELECT A.*, B.NAME,B.DISCOUNT AS DISC_HOLD,C.NAME AS PRICENAME, ';
    // s:=s+format( '( A.POSTCODE||%s %s||A.REGION||%s %s||A.CITY||%s %s||A.STREET||%s %s||A.HOUSE) AS FULL_ADRESS ',[#39,#39,#39,#39,#39,#39,#39,#39]);
     s:=s+format(' (iif (a.POSTCODE is not null, a.postcode, %s%s))||%s %s|| ',[#39,#39,#39,#39]);
     s:=s+format(' (iif (a.REGION is not null, a.REGION, %s%s))||%s %s|| ',[#39,#39,#39,#39]);
     s:=s+format(' (iif (a.CITY is not null, a.CITY, %s%s))||%s %s|| ',[#39,#39,#39,#39]);
     s:=s+format(' (iif (a.STREET is not null, a.STREET, %s%s))||%s %s|| ',[#39,#39,#39,#39]);
     s:=s+format(' (iif (a.HOUSE is not null, a.HOUSE, %s%s)) AS FULL_ADRESS ',[#39,#39]);
     s:=s+' FROM REG_TI A LEFT JOIN HOLDINGS B ON A.ID_HOLD=B.ID ';
     s:= s+' LEFT JOIN PRICES C ON A.ID_PRICE = C.ID ';
     case RG1.ItemIndex of
      0: s4:=format(' where A.ZAYV containing %s%s%s AND A.DEL_FLAG = 0 ',[#39,Trim(F_Str),#39]);
      1: s4:=format(' where A.INN containing %s%s%s AND A.DEL_FLAG = 0 ',[#39,Trim(F_Str),#39]);
      2: s4:=' where A.DISCOUNT > 0 AND A.DEL_FLAG = 0 ';
      3: s4:=format(' where B.NAME containing %s%s%s AND A.DEL_FLAG = 0 ',[#39,Trim(F_Str),#39]);
      4: s4:=' where A.SHOW_DISCOUNT_NOTE = 1 ';
      5: begin
            qry.Database := DM.DB;
            qry.SQL.Add(' select id_zayv from dogovors where num_dog= :p0');
            qry.Params[0].AsString := F_Str;
            qry.Open;
            if qry.IsEmpty then
              begin
                Application.MessageBox('Данные не найдены.','Результат поиска.',MB_ICONINFORMATION+MB_OK);
                Exit;
              end;
             s4:= format( ' where a.id = %s AND A.DEL_FLAG = 0 ',[qry.Fields[0].AsString]);
      end;
     end;
     case RG_Sort.ItemIndex of
      0: s5:= '  order by A.ZAYV ';
      1: s5:= '  order by B.NAME desc, A.ZAYV ';
      2: s5:= '  order by A.ID desc ';
     end;

    DM.Qry_Regti.Close;
    DM.Qry_Regti.SQL.Clear;
    DM.Qry_Regti.SQL.Add(s+s4+s5);
    try
      DM.Qry_Regti.Open;
     except
          on E: EdatabaseError do
            begin
             //DM.Sql.Transaction.Rollback;
             ShowMessage(E.Message);
            end;
    end;

finally
  qry.Free;
end;
end;



procedure TRegti_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if DM.Qry_Dogovors.Active  then DM.Qry_Dogovors.Close;
if DM.Qry_ReasDog.Active  then DM.Qry_ReasDog.Close;
if DM.Qry_sms_subscr.Active then DM.Qry_sms_subscr.Close;
if DM.Qry_mail_subscr.Active then DM.Qry_mail_subscr.Close;
end;

procedure TRegti_F.FormCreate(Sender: TObject);
begin
 DBGridEh4.Color:=LighterColor(clRed,30);
end;

procedure TRegti_F.FormShow(Sender: TObject);
begin
AllRecShow;
if NOT DM.Qry_Dogovors.Active  then DM.Qry_Dogovors.Open;
if NOT DM.Qry_ReasDog.Active  then DM.Qry_ReasDog.Open;
if Not DM.Qry_sms_subscr.Active then DM.Qry_sms_subscr.Open;
if Not DM.Qry_mail_subscr.Active then DM.Qry_mail_subscr.Open;

if ROLE = 'DISPETCHER' then
  begin
    ToolButton1.Enabled:=False;
    ToolButton2.Enabled:=False;
  end;
Note_Usl.Color:=LighterColor(clSkyBlue,70);
E_Find.SetFocus;

end;

procedure TRegti_F.E_FindButtonClick(Sender: TObject);
begin
Find_Records(E_Find.Text);
end;

procedure TRegti_F.E_FindKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then Find_Records(E_Find.Text);
end;

procedure TRegti_F.E_FindRightButtonClick(Sender: TObject);
begin
  if Rg1.ItemIndex =3 then
   if Hold_F.ShowModal = mrOk then E_Find.Text:=DM.Qry_Hold.FieldByName('NAME').AsString;
  Find_Records(Trim(E_Find.Text));
end;

procedure TRegti_F.AddItemClick(Sender: TObject);
begin
// to do
  if (SmsPhoneAdd_F.ShowModal = mrOk) then
    begin
       DM.Qry_sms_subscr.Close;
       DM.Qry_sms_subscr.Open;
       DM.Qry_sms_subscr.Last;
    end;
end;

procedure TRegti_F.AddMailItemClick(Sender: TObject);
begin
  if (EmailAdd_F.ShowModal = mrOk) then
    begin
       DM.Qry_mail_subscr.Close;
       DM.Qry_mail_subscr.Open;
       DM.Qry_mail_subscr.Last;
    end;
end;

procedure TRegti_F.AllRecShow;
var
 s:String;
 R:Integer;
begin
 R:=DM.Qry_RegTi.FieldByName('ID').asInteger;
 s:=' SELECT A.*, B.NAME,B.DISCOUNT AS DISC_HOLD,C.NAME AS PRICENAME, ';
 // s:=s+format( '( A.POSTCODE||%s %s||A.REGION||%s %s||A.CITY||%s %s||A.STREET||%s %s||A.HOUSE) AS FULL_ADRESS ',[#39,#39,#39,#39,#39,#39,#39,#39]);
 s:=s+format(' (iif (a.POSTCODE is not null, a.postcode, %s%s))||%s %s|| ',[#39,#39,#39,#39]);
 s:=s+format(' (iif (a.REGION is not null, a.REGION, %s%s))||%s %s|| ',[#39,#39,#39,#39]);
 s:=s+format(' (iif (a.CITY is not null, a.CITY, %s%s))||%s %s|| ',[#39,#39,#39,#39]);
 s:=s+format(' (iif (a.STREET is not null, a.STREET, %s%s))||%s %s|| ',[#39,#39,#39,#39]);
 s:=s+format(' (iif (a.HOUSE is not null, a.HOUSE, %s%s)) AS FULL_ADRESS ',[#39,#39]);
 s:=s+' FROM REG_TI A LEFT JOIN HOLDINGS B ON A.ID_HOLD=B.ID ';
 s:=s+' LEFT JOIN PRICES C ON A.ID_PRICE = C.ID ';
 s:=s+' WHERE A.DEL_FLAG = 0 ORDER BY A.ID DESC ';
 DM.Qry_Regti.Close;
 DM.Qry_Regti.SQL.Clear;
 DM.Qry_Regti.SQL.Add(s);
try
  DM.Qry_Regti.Open;
  DM.Qry_Regti.Locate('ID',R,[]);
 except
      on E: EdatabaseError do
        begin
         //DM.Sql.Transaction.Rollback;
         ShowMessage(E.Message);
        end;
end;
end;

procedure TRegti_F.All_RecExecute(Sender: TObject);
begin
  AllRecShow;
end;


procedure TRegti_F.N12Click(Sender: TObject);
begin
  DogovorsList_F.ShowModal;
end;

procedure TRegti_F.N1Click(Sender: TObject);
begin
 DogovorAdd_F.ShowModal;
end;

procedure TRegti_F.N2Click(Sender: TObject);
begin
  DogovorEdit_F.ShowModal;
end;

procedure TRegti_F.N3Click(Sender: TObject);
var
 id_rec:Integer;
begin
 if DM.Qry_Dogovors.FieldByName('ID').IsNull then Exit;
 if Application.MessageBox('Данные будут удалены.Продолжить?','Внимание',MB_ICONQUESTION+MB_YESNO) = ID_NO then Exit;
try
 try
    id_rec:=DM.Qry_Dogovors.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('delete from  dogovors  where id=:p0 ');
    DM.Sql.Params[0].AsInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    DM.Qry_Dogovors.Close;
    DM.Qry_Dogovors.Open;
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

procedure TRegti_F.N4Click(Sender: TObject);
begin
 A_Enable.Execute;
end;

procedure TRegti_F.NewRecExecute(Sender: TObject);
begin
RegtiAdd_F.ShowModal;
end;

procedure TRegti_F.A_DisableExecute(Sender: TObject);
begin
 Reason:=False;
 ReasonsDog_F.ShowModal ;
end;

procedure TRegti_F.A_DisableUpdate(Sender: TObject);
begin
 if DM.Qry_RegTi.FieldByName('VALID').AsString = 'T' then
   (Sender as TAction).Enabled:=True
  else
   (Sender as TAction).Enabled:=False;

end;

procedure TRegti_F.A_EnableExecute(Sender: TObject);
begin
 Reason:=True;
 ReasonsDog_F.ShowModal ;
end;

procedure TRegti_F.A_EnableUpdate(Sender: TObject);
begin
 if DM.Qry_RegTi.FieldByName('VALID').AsString = 'F' then
   (Sender as TAction).Enabled:=True
  else
   (Sender as TAction).Enabled:=False;
end;

procedure TRegti_F.A_OpenDiscExecute(Sender: TObject);
begin
  UslNote_F.ShowModal;
end;

procedure TRegti_F.A_OpenDiscUpdate(Sender: TObject);
begin
 if (Dolj = 'бухгалтер') or (role = 'SYSADMIN') then
    (Sender as TAction).Enabled:=true
    else
    (Sender as TAction).Enabled:=false;

end;

procedure TRegti_F.A_PrintHoldingExecute(Sender: TObject);
var
 id_hold:Integer;
begin
  if Hold_F.ShowModal <> mrOk then
    begin
      Application.MessageBox('Холдинг не выбран. Операция будет прервана','Внимание',MB_ICONWARNING+MB_OK);
      Exit;
    end
   else
    id_hold:=Hold_F.DBGridEh1.DataSource.DataSet.FieldByName('ID').AsInteger;
 Reports_F.Qry_repHolding.Close;
 Reports_F.Qry_repHolding.Params[0].AsInteger:=id_hold;
 Reports_F.Qry_repHolding.Open;
 Reports_F.Rep3.LoadFromFile('rep_holding.fr3');
 Reports_F.Rep3.ShowReport(True);
 Reports_F.Qry_repHolding.Close;
end;

procedure TRegti_F.A_ShowDiscDisaExecute(Sender: TObject);
var
  id_zayv:Integer;
begin
try
 try
    id_zayv:=DM.Qry_RegTi.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    // изменяем статус заказчика
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update reg_ti set show_discount_note = :p0 where id = :p1 ');
    DM.Sql.Params[0].AsInteger:=0;
    DM.Sql.Params[1].asInteger:=id_zayv;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    DM.Qry_RegTi.Close;
    DM.Qry_RegTi.Open;
    DM.Qry_RegTi.Locate('ID',id_zayv,[]);
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

procedure TRegti_F.A_ShowDiscDisaUpdate(Sender: TObject);
begin
 if (Dolj = 'бухгалтер') or (role = 'SYSADMIN') then
    (Sender as TAction).Enabled:=true
    else
    (Sender as TAction).Enabled:=false;

end;

procedure TRegti_F.A_ShowDiscEnaExecute(Sender: TObject);
var
  id_zayv:Integer;
begin
try
 try
    id_zayv:=DM.Qry_RegTi.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    // изменяем статус заказчика
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update reg_ti set show_discount_note = :p0 where id = :p1 ');
    DM.Sql.Params[0].AsInteger:=1;
    DM.Sql.Params[1].asInteger:=id_zayv;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    DM.Qry_RegTi.Close;
    DM.Qry_RegTi.Open;
    DM.Qry_RegTi.Locate('ID',id_zayv,[]);
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

procedure TRegti_F.A_ShowDiscEnaUpdate(Sender: TObject);
begin
 if (Dolj = 'бухгалтер') or (role = 'SYSADMIN') then
    (Sender as TAction).Enabled:=true
    else
    (Sender as TAction).Enabled:=false;
end;

function TRegti_F.CheckPhone(S: String): Boolean;
var RegEx: TRegEx;
begin
  Result:=False;
  RegEx:=TRegEx.Create('^8\ \(\d{3}\)\ \d{3}\ \d{2}\ \d{2}$');
  //^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$ - ТЕЛЕФОН 10 цифр  ^8\ \(\d{3}\)\ \d{3}\-\d{2}\-\d{2}$
  if RegEx.IsMatch(S)then
   Result:=True;
end;

procedure TRegti_F.DelItemClick(Sender: TObject);
var
 id_rec:Integer;
begin
 if DM.Qry_sms_subscr.FieldByName('ID').IsNull then Exit;
 if Application.MessageBox('Данные будут удалены.Продолжить?','Внимание',MB_ICONQUESTION+MB_YESNO) = ID_NO then Exit;
try
 try
    id_rec:=DM.Qry_sms_subscr.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('delete from  sms_subscription  where id=:p0 ');
    DM.Sql.Params[0].AsInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    DM.Qry_sms_subscr.Close;
    DM.Qry_sms_subscr.Open;
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

procedure TRegti_F.DelMailItemClick(Sender: TObject);
var
 id_rec:Integer;
begin
 if DM.Qry_mail_subscr.FieldByName('ID').IsNull then Exit;
 if Application.MessageBox('Данные будут удалены.Продолжить?','Внимание',MB_ICONQUESTION+MB_YESNO) = ID_NO then Exit;
try
 try
    id_rec:=DM.Qry_mail_subscr.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('delete from  mail_subscription  where id=:p0 ');
    DM.Sql.Params[0].AsInteger:=id_rec;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    DM.Qry_mail_subscr.Close;
    DM.Qry_mail_subscr.Open;
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

procedure TRegti_F.Edit_RecExecute(Sender: TObject);
begin
 RegtiEdit_F.ShowModal;
end;

procedure TRegti_F.RG1Click(Sender: TObject);
begin
 case Rg1.ItemIndex of
   0,2,3: E_Find.NumbersOnly:=False;
   1: E_Find.NumbersOnly:=True;
 end;
end;

procedure TRegti_F.Refresh_DSExecute(Sender: TObject);
begin
  DM.Refresh_RegTi;
end;

procedure TRegti_F.ToolButton4Click(Sender: TObject);
begin
 Refresh_DS.Execute;
end;
procedure TRegti_F.PopMn_ZayvClick(Sender: TObject);
begin
 Reason:=False;
 ReasonsDog_F.ShowModal ;
end;

procedure TRegti_F.Print_RegtiExecute(Sender: TObject);
begin
  if not Dm.Qry_RegTi.Active then Exit;
  Reports_F.Rep_buh.LoadFromFile('rep_regti_list.fr3');
  Reports_F.Rep_buh.ShowReport(True);
end;

end.
