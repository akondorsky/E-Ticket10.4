unit DoTovar_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask,   ExtCtrls, Buttons ;

type
  TDoTovar_F = class(TForm)
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
    E_G42: TEdit;
    E_G42_Ost: TEdit;
    E_G31_2: TEdit;
    E_G31_2_Ost: TEdit;
    E_G35: TEdit;
    E_G221: TButtonedEdit;
    E_G33: TButtonedEdit;
    E_G35_Ost: TEdit;
    procedure CancBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure E_G221ButtonClick(Sender: TObject);
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
    procedure E_G33Exit(Sender: TObject);
    procedure E_UnshippedClick(Sender: TObject);
    procedure E_G42Change(Sender: TObject);
    procedure E_G42_OstChange(Sender: TObject);
    procedure E_G35Change(Sender: TObject);
    procedure E_G35_OstChange(Sender: TObject);
    procedure E_G33RightButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure ClearControls;
  public
    { Public declarations }
  end;

var
  DoTovar_F: TDoTovar_F;

implementation

uses dm_u, val_u;

{$R *.dfm}

procedure TDoTovar_F.ClearControls;
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
//    E_G221.Clear;
    E_G31_2_P.Checked:=False;
    E_G31_2.Clear;
    E_G31_2_ost.Clear;
    E_G35.Clear;
    E_G35_Ost.Clear;
    E_Prim.Clear;
    E_G31_1.Clear;

end;

procedure TDoTovar_F.CancBtnClick(Sender: TObject);
begin
Modalresult:=mrcancel;
end;

procedure TDoTovar_F.FormShow(Sender: TObject);
var
  Present: TDateTime;
  Hour, Min, Sec, MSec: Word;
  St_Hour,St_Min:String;
begin
ClearControls;
Present:= Now;
DecodeTime(Present, Hour, Min, Sec, MSec);
if Hour<10 then St_Hour:='0'+IntToStr(Hour) else St_Hour:=IntToStr(Hour);
if Min<10 then St_min:='0'+IntToStr(Min) else St_Min:=IntToStr(Min);
E_SVHDATE.Text:=DateToStr(Present);
E_SVHTIME.Text:=DM.Ibdt_DoHead.FieldByName('g5421').asString;//St_hour+':'+St_Min;
E_Srok.Text:=DateToStr(Present+60);
E_SvhNum.Text:=FormParkZTK.Get_Parking_Num1(FormZTK.GridDo.DataSource.
                           DataSet.FieldByName('NUM_KPP').asInteger,'PARKING_CBX');
E_SvhNum.Enabled:=False;
E_Unshipped.Checked:=False;
E_G33.SetFocus;
end;

procedure TDoTovar_F.E_G221ButtonClick(Sender: TObject);
begin
  if FormVal.ShowModal=mrOk then
    begin
     E_G221.Text:=DM.IBDt_Val.FieldbyName('BUK').AsString;
     E_G42.SetFocus;
    end;
end;

procedure TDoTovar_F.E_G33KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovar_F.E_G33RightButtonClick(Sender: TObject);
begin
  if FormTnved3.ShowModal = mrOk then
    begin
     E_G33.Text:= Copy(DM.Qry_Tnved3.FieldByName('KOD').asString,0,4);
     E_G31_1.Text:=Copy(DM.Qry_Tnved3.FieldByName('NAIM').asString,0,249) ;
     E_G31_1.SetFocus;
    end;
end;

procedure TDoTovar_F.E_SVHDATEKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovar_F.E_SVHTIMEKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovar_F.E_SvhplaceKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovar_F.E_SvhNumKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovar_F.E_SrokKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovar_F.E_VtransKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovar_F.E_SqvKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovar_F.E_G31_21KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovar_F.E_G221KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovar_F.E_G42Change(Sender: TObject);
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
    if c = FormatSettings.DecimalSeparator then s := s + c;
  end;
// Присваеваем полю результирующую строку:
(Sender as Tedit).Text := s;
(Sender as Tedit).SelStart:=Length(s);
(Sender as Tedit).SelLength:=0;
end;

procedure TDoTovar_F.E_G42KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovar_F.E_G42_OstChange(Sender: TObject);
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
    if c = FormatSettings.DecimalSeparator then s := s + c;
  end;
// Присваеваем полю результирующую строку:
(Sender as Tedit).Text := s;
(Sender as Tedit).SelStart:=Length(s);
(Sender as Tedit).SelLength:=0;
end;

procedure TDoTovar_F.E_G42_OstKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovar_F.E_G31_2KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovar_F.E_G31_2_ostKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovar_F.E_G35Change(Sender: TObject);
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
    if c = FormatSettings.DecimalSeparator then s := s + c;
  end;
// Присваеваем полю результирующую строку:
(Sender as Tedit).Text := s;
(Sender as Tedit).SelStart:=Length(s);
(Sender as Tedit).SelLength:=0;
end;

procedure TDoTovar_F.E_G35KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovar_F.E_G35_OstChange(Sender: TObject);
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
    if c = FormatSettings.DecimalSeparator then s := s + c;
  end;
// Присваеваем полю результирующую строку:
(Sender as Tedit).Text := s;
(Sender as Tedit).SelStart:=Length(s);
(Sender as Tedit).SelLength:=0;
end;

procedure TDoTovar_F.E_G35_OstKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovar_F.E_G221Exit(Sender: TObject);
begin
 E_G221.Text:=FormVal.FindValBUK(Trim(E_G221.Text));
end;

procedure TDoTovar_F.SaveBtnClick(Sender: TObject);
var
 Npp,i:Integer;
 S3,s1,s2,s4,Opis,Prim:String;
begin
 s1:='insert into do_tovar ';
 s2:='( N_TTN,G073, G33,SVH_DATE,SVH_TIME,Svh_place,Svh_Num,G31_D2,';
 s3:=' G31_21,G42,G221,G31_2_P,G31_2,G35,G31_1,Prim,G32,GN,g072,g42_ost,g31_2_ost,g35_ost,unshipped ) values(:p0,:p1,:p2,:p3, ';
 s4:=':p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14,:p15,:p16,:p17,:p18,:p19,:p20,:p21,:p22)';
 {DM.SP_Dotovar.ExecProc;
 Id_Rec:=DM.SP_Dotovar.Params[0].AsInteger;}
 DM.SP_DoTovar_New_NPP.Params[1].AsString:=Num_Do1;
 DM.SP_DoTovar_New_NPP.Params[2].AsInteger:=DM.IBDt_DoTrand.FieldByname('N_TTN').AsInteger;
 DM.SP_DoTovar_New_NPP.Params[3].Value:=DateToStr(Date_Do1);
 DM.SP_DoTovar_New_NPP.ExecProc;
 Npp:=DM.SP_DoTovar_New_NPP.Params[0].AsInteger;
 Dm.SQL_Ztk.Close;
 DM.SQL_Ztk.SQL.Clear;
 DM.SQL_Ztk.SQL.Add(s1+s2+s3+s4);
//try
 if not DM.SQL_ZTK.Transaction.InTransaction then DM.SQL_ZTK.Transaction.StartTransaction; //start tran
//  DM.SQL_ZTK.Params[0].AsInteger:=Id_rec;
  DM.SQL_ZTK.Params[0].AsInteger:=DM.IBDt_DoTrand.FieldByname('N_TTN').AsInteger;
  DM.SQL_ZTK.Params[1].AsString:=DM.IBDt_DoTrand.FieldByname('G073').AsString;
  DM.SQL_ZTK.Params[2].AsString:=E_G33.Text;
  DM.SQL_ZTK.Params[3].AsDateTime:=SetValStrToDate(E_SVHDate.Text);
  DM.SQL_ZTK.Params[4].AsString:=E_SvhTime.Text;
  DM.SQL_ZTK.Params[5].AsString:=E_SvhPlace.Text;
  DM.SQL_ZTK.Params[6].AsString:=E_SvhNum.Text;
  DM.SQL_ZTK.Params[7].AsDateTime:=SetValStrToDate(E_Srok.Text);
  DM.SQL_ZTK.Params[8].AsString:=E_G31_21.Text;
  DM.SQL_ZTK.Params[9].AsCurrency:=SetValStrToFloat(E_G42.Text);
  DM.SQL_ZTK.Params[10].AsString:=E_G221.Text;
  if E_G31_2_p.Checked then
     DM.SQL_ZTK.Params[11].AsString:='T'
    else
     DM.SQL_ZTK.Params[11].AsString:='F';
  DM.SQL_ZTK.Params[12].AsInteger:=SetValStrToInt(E_G31_2.Text);
  DM.SQL_ZTK.Params[13].AsDouble:=SetValStrToFloat(E_G35.Text);
  for i:=0 to E_G31_1.Lines.Count-1 do
    begin
      Opis:=Opis+Char(32)+ E_G31_1.Lines.Strings[i];
    end;
  DM.SQL_ZTK.Params[14].AsString:=Copy(Opis,0,249);
  for i:=0 to E_Prim.Lines.Count-1 do
    begin
      Prim:=Prim+Char(32)+E_Prim.Lines.Strings[i];
    end;
  DM.SQL_ZTK.Params[15].AsString:=Prim;
  DM.SQL_ZTK.Params[16].AsInteger:=Npp;
  DM.SQL_ZTK.Params[17].AsInteger:=Npp;
  DM.SQL_ZTK.Params[18].AsDate:=DM.IBDt_DoTrand.FieldByname('G072').AsDateTime;
  DM.SQL_ZTK.Params[19].AsCurrency:=SetValStrToFloat(E_G42.Text);
  DM.SQL_ZTK.Params[20].AsInteger:=SetValStrToInt(E_G31_2.Text);
  DM.SQL_ZTK.Params[21].AsDouble:=SetValStrToFloat(E_G35.Text);
  if E_Unshipped.Checked then
     DM.SQL_ZTK.Params[22].AsString:='T'
    else
     DM.SQL_ZTK.Params[22].AsString:='F';
  DM.SQL_ZTK.ExecQuery;
  DM.SQL_ZTK.Transaction.Commit;
  Application.MessageBox('Данные успешно сохранены','Подтверждение',mb_OK+mb_iconinformation);
//  except
//   Application.MessageBox('Ошибка записи данных','Внимание!',mb_OK+mb_iconstop);
//   DM.SQL_ZTK.Transaction.Rollback;
//   Exit;
// end;
 FormAddDoTovar.Close;
 FormeditDo.Refresh_DoTrand.Execute;
 FormeditDo.Refresh_DoTovar.Execute;
end;
procedure TDoTovar_F.E_G33Exit(Sender: TObject);
begin
 if FormTnved3.FindTovname(E_G33.text) then
   begin
    E_G31_1.Text:=Copy(DM.Qry_Tnved3.FieldByName('KR_NAIM').asString,0,249) ;
    E_G33.text:= Copy(DM.Qry_Tnved3.FieldByName('KOD').asString,0,4);
   end;
end;

procedure TDoTovar_F.E_UnshippedClick(Sender: TObject);
begin
 if E_Unshipped.Checked then
       E_SvhNum.Enabled :=True else E_SvhNum.Enabled:=False;
end;

end.
