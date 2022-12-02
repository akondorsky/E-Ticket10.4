unit DoTovarAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask,   ExtCtrls, Buttons ,DB,IBX.Ibquery,DateUtils, DBCtrlsEh;

type
  TDoTovarAdd_F = class(TForm)
    Label1: TLabel;

    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    E_SVHDATE: TMaskEdit;
    E_SVHTIME: TMaskEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    E_Svhplace: TEdit;
    E_Vtrans: TEdit;
    E_Sqv: TEdit;
    E_Srok: TMaskEdit;
    Label12: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Label13: TLabel;
    Shape3: TShape;

    Shape4: TShape;
    Label14: TLabel;

    Label15: TLabel;
    Label16: TLabel;

    Label17: TLabel;
    E_G31_2_P: TCheckBox;


    Shape5: TShape;

    Shape8: TShape;

    Label18: TLabel;
    Label19: TLabel;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    E_G31_1: TMemo;
    E_Prim: TMemo;
    E_SvhNum: TMaskEdit;
    E_Unshipped: TCheckBox;
    E_G31_2: TEdit;
    E_G31_2_Ost: TEdit;
    E_G221: TButtonedEdit;
    E_G33: TButtonedEdit;
    E_G42: TDBNumberEditEh;
    E_G42_ost: TDBNumberEditEh;
    E_g35: TDBNumberEditEh;
    E_G35_Ost: TDBNumberEditEh;
    procedure CancBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure E_G33KeyPress(Sender: TObject; var Key: Char);
    procedure E_SVHDATEKeyPress(Sender: TObject; var Key: Char);
    procedure E_SVHTIMEKeyPress(Sender: TObject; var Key: Char);
    procedure E_SvhplaceKeyPress(Sender: TObject; var Key: Char);
    procedure E_SvhNumKeyPress(Sender: TObject; var Key: Char);
    procedure E_SrokKeyPress(Sender: TObject; var Key: Char);
    procedure E_VtransKeyPress(Sender: TObject; var Key: Char);
    procedure E_SqvKeyPress(Sender: TObject; var Key: Char);
    procedure E_G31_21KeyPress(Sender: TObject; var Key: Char);
    procedure E_G221KeyPress(Sender: TObject; var Key: Char);
    procedure E_G42KeyPress(Sender: TObject; var Key: Char);
    procedure E_G42_OstKeyPress(Sender: TObject; var Key: Char);
    procedure E_G31_2KeyPress(Sender: TObject; var Key: Char);
    procedure E_G31_2_ostKeyPress(Sender: TObject; var Key: Char);
    procedure E_G35KeyPress(Sender: TObject; var Key: Char);
    procedure E_G35_OstKeyPress(Sender: TObject; var Key: Char);
    procedure E_G221Exit(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure E_UnshippedClick(Sender: TObject);
    procedure E_G35Change(Sender: TObject);
    procedure E_G33RightButtonClick(Sender: TObject);
    procedure E_G221RightButtonClick(Sender: TObject);
    procedure E_G221Change(Sender: TObject);
    procedure E_G42Exit(Sender: TObject);
    procedure E_G31_2Exit(Sender: TObject);
    procedure E_G35Exit(Sender: TObject);
    procedure E_G31_2_PClick(Sender: TObject);
  private
    { Private declarations }
    procedure ClearControls;
  public
    { Public declarations }
    function GetTovarDateTimeFromActIn:TdateTime;
    function GetTovarPlacesFromActIn:String;
  end;

var
  DoTovarAdd_F: TDoTovarAdd_F;

implementation

uses dm_u, val_u, ParkZtk_U, Tnved4_U, Do1_U, EditDo_U,main;

{$R *.dfm}

procedure TDoTovarAdd_F.ClearControls;
begin
    E_G33.Clear;
    E_SVHDATE.Clear;
    E_SVHTIME.Clear;
    E_Svhplace.Clear;
    E_SvhNum.Clear;
    E_Vtrans.Clear;
    E_Sqv.Clear;
    E_Unshipped.Checked:=False;
    E_Srok.Clear;
    E_G42.Clear;
    E_G42_Ost.Clear;
    E_G31_2_P.Checked:=False;
    E_G31_2.Clear;
    E_G31_2_ost.Clear;
    E_G35.Clear;
    E_G35_Ost.Clear;
    E_Prim.Clear;
    E_G31_1.Clear;

end;

procedure TDoTovarAdd_F.CancBtnClick(Sender: TObject);
begin
Modalresult:=mrcancel;
end;

procedure TDoTovarAdd_F.FormShow(Sender: TObject);
var
 places,d,t:String;
 dt:TdateTime;
 Hour,Min,Sec,Msec:Word;
 qry:TIbQuery;
begin
E_G33.Clear;
E_G31_1.Clear;
//E_G221.Clear;
E_G42.Clear;
E_G42_Ost.Clear;
E_G31_2_P.Checked:=false;
E_G31_2.Clear;
E_G31_2_Ost.Clear;
E_G35.Clear;
E_G35_Ost.Clear;
E_Prim.Clear;
E_Svhplace.Text:=GetTovarPlacesFromActIn;
dt:=GetTovarDateTimeFromActIn;
//dt:=DM.Qry_DoHead.FieldByName('DT').AsDateTime;
d:=DateToStr(dateOf(dt));
DecodeTime(dt,Hour,Min,Sec,Msec);
t:=IntToStr(Hour)+':'+IntTostr(Min);
E_SVHDATE.Text:=d;
E_SVHTIME.Text:=t;
E_SvhNum.Text:=DM.Qry_DoHead.FieldByName('G073').AsString;
if (Do1_F.Srok = null) then E_Srok.Clear else E_Srok.Text:= VarToStr(Do1_F.Srok);
E_G33.SetFocus;
end;

function TDoTovarAdd_F.GetTovarDateTimeFromActIn:TdateTime;
var
 qry:TIbquery;
 id_tp:Integer;
begin
 try
   id_tp:=DM.Qry_DoHead.FieldByName('ID_TP').AsInteger;
   qry:=TIbquery.Create(Self);
   qry.Database:=DM.DB;
   qry.SQL.Add('select first 1 dt from wh_act_in where id_tp=:p0 ');
   qry.Params[0].AsInteger:=id_tp;
   qry.Open;
   Result:=qry.Fields[0].AsDateTime;
 finally
   qry.Free;
 end;
end;

function TDoTovarAdd_F.GetTovarPlacesFromActIn: String;
var
 qry:TIbquery;
 id_tp:Integer;
 s:String;
begin
 try
   id_tp:=DM.Qry_DoHead.FieldByName('ID_TP').AsInteger;
   qry:=TIbquery.Create(Self);
   qry.Database:=DM.DB;
   qry.SQL.Add('select place_num from wh_act_in where id_tp=:p0 ');
   qry.Params[0].AsInteger:=id_tp;
   qry.Open;
   qry.First;
   while not qry.Eof do
    begin
      s:=s+qry.Fields[0].AsString;
      qry.Next;
    end;
   Result:=s;
 finally
   qry.Free;
 end;
end;

procedure TDoTovarAdd_F.E_G33KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         E_G33RightButtonClick(E_G33);
       end;

end;

procedure TDoTovarAdd_F.E_G33RightButtonClick(Sender: TObject);
begin
 //старая процедура
{  if Tnved4_F.ShowModal = mrOk then
    begin
     E_G33.Text:= Copy(DM.Qry_Tnved4.FieldByName('KOD').asString,1,4);
     E_G31_1.Text:=Copy(DM.Qry_Tnved4.FieldByName('NAME').asString,1,249) ;
     E_G31_1.SetFocus;
    end;}
if length(trim(E_G33.Text)) < 4 then Exit;
 if Tnved4_F.FindTovname(E_G33.text) then
   begin
      DM.Qry_Tnved4.Close;
      DM.Qry_Tnved4.SQL.Clear;
      DM.Qry_Tnved4.SQL.Add(' select ID, (GRUPPA||TOV_POS||SUB_POS) as KOD, NAME ');
      DM.Qry_Tnved4.SQL.Add(format(' from TNVED4 where GRUPPA||TOV_POS = %s%s%s ',[#39,Copy(Trim(E_G33.Text),1,4),#39]));
      Dm.Qry_Tnved4.SQL.Add(' and DATE_EXP is null ');
      DM.Qry_Tnved4.SQL.Add(' ORDER BY GRUPPA||TOV_POS||SUB_POS  ');
      DM.Qry_Tnved4.Open;
      if Tnved4_F.ShowModal = mrOk then
        begin
          E_G31_1.Text:=Copy(DM.Qry_Tnved4.FieldByName('NAME').asString,1,249) ;
          E_G33.text:=Copy(DM.Qry_Tnved4.FieldByName('KOD').asString,1,4);
        end;

   end;
end;

procedure TDoTovarAdd_F.E_SVHDATEKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarAdd_F.E_SVHTIMEKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarAdd_F.E_SvhplaceKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarAdd_F.E_SvhNumKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarAdd_F.E_SrokKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarAdd_F.E_VtransKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarAdd_F.E_SqvKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarAdd_F.E_G31_21KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarAdd_F.E_G31_2Exit(Sender: TObject);
begin
E_G31_2_Ost.Text:=E_G31_2.Text;
end;

procedure TDoTovarAdd_F.E_G221KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarAdd_F.E_G221RightButtonClick(Sender: TObject);
begin
  if Val_F.ShowModal=mrOk then
    begin
     E_G221.Text:=DM.Qry_Val.FieldbyName('BUK').AsString;
     SelectNext(Sender as TwinControl,True,True);
    end;
end;

procedure TDoTovarAdd_F.E_G42Exit(Sender: TObject);
begin
E_G42_Ost.Text:=E_G42.Text;
end;

procedure TDoTovarAdd_F.E_G42KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarAdd_F.E_G42_OstKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarAdd_F.E_G31_2KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarAdd_F.E_G31_2_ostKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarAdd_F.E_G31_2_PClick(Sender: TObject);
begin
  if E_G31_2_P.Checked then
     begin
       E_G31_2.Enabled:=False;
       E_G31_2.Text:='0';
       E_G31_2_Ost.Text:='0';
       E_G31_2_Ost.Enabled:=False;
      E_Prim.Text:=E_Prim.Text +(' часть места; ')
     end
   else
    E_G31_2.Enabled:=True;
end;

procedure TDoTovarAdd_F.E_G35Change(Sender: TObject);
var
i : integer;
c : char;
s : string;
begin
{// результирующая строка:
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
(Sender as Tedit).SelLength:=0;}
end;

procedure TDoTovarAdd_F.E_G35Exit(Sender: TObject);
begin
E_G35_Ost.Text:=E_G35.Text;
end;

procedure TDoTovarAdd_F.E_G35KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarAdd_F.E_G35_OstKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarAdd_F.E_G221Change(Sender: TObject);
begin
 if Val_F.FindValBUK(E_G221.Text) <> 'F' then
  begin
    E_G221.Text:=Val_F.FindValBUK(E_G221.Text);
    SelectNext(Sender as TWinControl, True, True);
  end;


end;

procedure TDoTovarAdd_F.E_G221Exit(Sender: TObject);
begin
 //E_G221.Text:=Val_F.FindValBUK(Trim(E_G221.Text));
end;

procedure TDoTovarAdd_F.SaveBtnClick(Sender: TObject);
var
 N_ttn,i,id_do1,g32:Integer;
 S,Prim,Opis:String;
begin
try
 try
   N_ttn:=EditDo_F.Grid_Do1Trand.DataSource.DataSet.FieldByName('N_TD').AsInteger;
   id_do1:=Do1_F.GridDo1.DataSource.DataSet.FieldByName('ID').AsInteger;
   DM.Qry.Close;
   Dm.Qry.SQL.Clear;
   DM.Qry.SQL.Add('select count(*) from do_tovar where id_do1=:p0 and n_ttn=:p1' );
   Dm.Qry.Params[0].AsInteger:=id_do1;
   Dm.Qry.Params[1].AsInteger:=N_ttn;
   Dm.Qry.Open;
   // Порядковый номер товара
   g32:=DM.Qry.Fields[0].AsInteger+1;
   s:='insert into do_tovar ';
   s:=s+'( N_TTN, G33,G31_1,G221,G42,G31_2_P,G31_2,G35,G32,Prim,G42_OST,G31_2_OST,G35_OST,ID_DO1,G31_D2,SVH_NUM,SVH_PLACE,DATE_IN,TIME_IN )';
   s:=s+'  values(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14,:p15,:p16,:p17,:p18) ';
   Dm.SQL.Close;
   DM.SQL.SQL.Clear;
   DM.SQL.SQL.Add(s);
   if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
   DM.sql.Params[0].AsInteger:=N_ttn;
   DM.sql.Params[1].AsString:=Copy(E_G33.Text,0,4);
   for i:=0 to E_G31_1.Lines.Count-1 do
    begin
      Opis:=Opis+Char(32)+E_G31_1.Lines.Strings[i];
    end;
   DM.SQL.Params[2].AsString:=Copy(Opis,0,249);
   DM.SQL.Params[3].AsString:=E_G221.Text;
   DM.SQL.Params[4].AsDouble:=StrToFloat(E_G42.Text);
   if E_G31_2_p.Checked then
     DM.SQL.Params[5].AsString:='T'
    else
     DM.SQL.Params[5].AsString:='F';
   DM.SQL.Params[6].AsInteger:=StrToInt(E_G31_2.Text);
   DM.SQL.Params[7].AsDouble:=StrToFloat(E_G35.Text);
   DM.SQL.Params[8].AsInteger:=g32;
   Prim:=Trim(E_Prim.Text);
   DM.SQL.Params[9].AsString:=Copy(Prim,0,249);
   DM.SQL.Params[10].AsDouble:=StrToFloat(E_G42_OST.Text);
   DM.SQL.Params[11].AsInteger:=StrToInt(E_G31_2_OST.Text);
   DM.SQL.Params[12].AsDouble:=StrToFloat(E_G35_OST.Text);
   DM.SQL.Params[13].AsInteger:=id_do1;
   DM.SQL.Params[14].AsDate:=IncMonth(StrToDate(E_SVHDATE.Text),4);
   if Length(Trim(E_SvhNum.Text)) = 0  then
       DM.SQL.Params[15].AsString:= Dm.Qry_DoHead.FieldByName('G073').AsString+'/'+IntToStr(g32)
     else
       DM.SQL.Params[15].AsString:=E_SvhNum.Text;
   DM.SQL.Params[16].AsString:=E_Svhplace.Text;
   DM.Sql.Params[17].AsDate:=StrToDate(E_SVHDATE.Text);
   DM.Sql.Params[18].AsTime:=StrToTime(E_SVHTIME.Text);
   DM.sql.ExecQuery;
   DM.sql.Transaction.Commit;
   ModalResult:=mrOk;
   DM.Refresh_DoTrand;
   DM.Qry_DoTovar.Close;
   DM.Qry_DoTovar.Open;
   DM.Qry_DoTovar.Last;
    except
      on E: EdatabaseError do
        begin
         DM.Sql.Transaction.Rollback;
         ShowMessage(E.Message);
        end;
   end;
 finally
   if DM.sql.Transaction.InTransaction then DM.sql.Transaction.Rollback;
 end;
end;

procedure TDoTovarAdd_F.E_UnshippedClick(Sender: TObject);
begin
 if E_Unshipped.Checked then
       E_SvhNum.Enabled :=True else E_SvhNum.Enabled:=False;
end;

end.
