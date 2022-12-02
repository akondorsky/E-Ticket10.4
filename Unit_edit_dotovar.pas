unit Unit_edit_dotovar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit,  ExtCtrls, Buttons,
  rxCurrEdit;

type
  TFormEditDoTovar = class(TForm)
    Label1: TLabel;
    E_G33: TComboEdit;
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
    Label11: TLabel;
    E_G31_21: TEdit;
    Label12: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Label13: TLabel;
    Shape3: TShape;
    E_G42: TCurrencyEdit;
    Shape4: TShape;
    Label14: TLabel;
    E_G42_Ost: TCurrencyEdit;
    Label15: TLabel;
    Label16: TLabel;
    E_G221: TComboEdit;
    Label17: TLabel;
    E_G31_2_P: TCheckBox;
    E_G31_2: TCurrencyEdit;
    E_G31_2_ost: TCurrencyEdit;
    Shape5: TShape;
    E_G35: TCurrencyEdit;
    Shape8: TShape;
    E_G35_Ost: TCurrencyEdit;
    Label18: TLabel;
    Label19: TLabel;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    E_G31_1: TMemo;
    E_Prim: TMemo;
    E_SvhNum: TMaskEdit;
    E_Unshipped: TCheckBox;
    procedure CancBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure E_G33ButtonClick(Sender: TObject);
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
    procedure E_G31_2_PClick(Sender: TObject);
    procedure E_SvhNumEnter(Sender: TObject);
    procedure E_SvhNumExit(Sender: TObject);
    procedure E_UnshippedClick(Sender: TObject);
  private
    { Private declarations }
//    hwnd: THintWindow;
    procedure GetValues;
  public
    { Public declarations }
  end;

var
  FormEditDoTovar: TFormEditDoTovar;

implementation

uses Unit_tnved3, unit_data, Unit_val, Unit_add_dotrand, Unit_edit_do,myutils;

{$R *.dfm}

procedure TFormEditDoTovar.GetValues;
begin
    E_G33.Text:=DM.Ibdt_doTovar.FieldByName('G33').asString;
    E_SVHDATE.Text:=GetValDateToStr(DM.Ibdt_doTovar.FieldByName('SVH_DATE').asDateTime);
    E_SVHTIME.Text:=DM.Ibdt_doTovar.FieldByName('SVH_TIME').AsString;
    E_Svhplace.Text:=DM.Ibdt_doTovar.FieldByName('SVH_PLACE').AsString;
    E_SvhNum.Text:=DM.Ibdt_doTovar.FieldByName('SVH_NUM').AsString;
//    E_Vtrans.Text:=DM.Ibdt_doTovar.FieldByName('');
//    E_Sqv.Text:=DM.Ibdt_doTovar.FieldByName('');
    if DM.IBDt_DoTovar.FieldByName('UNSHIPPED').AsString = 'T' then
       E_Unshipped.Checked:=True
      else
       E_Unshipped.Checked:=False;
    E_Srok.Text:=DM.Ibdt_doTovar.FieldByName('G31_D2').AsString;
    E_G31_21.Text:=DM.Ibdt_doTovar.FieldByName('G31_21').AsString;
    E_G42.Text:=DM.Ibdt_doTovar.FieldByName('G42').AsString;
//    E_G42_Ost.Text:=DM.Ibdt_doTovar.FieldByName('');
    E_G221.Text:=DM.Ibdt_doTovar.FieldByName('G221').AsString;
    if DM.Ibdt_doTovar.FieldByName('G31_2_P').AsString='T' then
        begin
         E_G31_2_P.Checked:=True;
         E_G31_2.Enabled:=False;
        end
      else
        begin
         E_G31_2_P.Checked:=False;
         E_G31_2.Enabled:=True;
        end;
    E_G31_2.Text:=DM.Ibdt_doTovar.FieldByName('G31_2').AsString;
//    E_G31_2_ost.Text:=DM.Ibdt_doTovar.FieldByName('');
    E_G35.Text:=DM.Ibdt_doTovar.FieldByName('G35').AsString;
//    E_G35_Ost.Text:=DM.Ibdt_doTovar.FieldByName('');
    E_Prim.Text:=DM.Ibdt_doTovar.FieldByName('PRIM').AsString;
    E_G31_1.Text:=DM.Ibdt_doTovar.FieldByName('G31_1').AsString;
end;

procedure TFormEditDoTovar.CancBtnClick(Sender: TObject);
begin
Modalresult:=mrcancel;
end;

procedure TFormEditDoTovar.FormShow(Sender: TObject);
begin
  getValues;
  E_G33.SetFocus;
end;
procedure TFormEditDoTovar.E_G33ButtonClick(Sender: TObject);
begin
  if FormTnved3.ShowModal = mrOk then
    begin
     E_G33.Text:=DM.Qry_Tnved3.FieldByName('KOD').asString;
     E_G31_1.Text:=Copy(DM.Qry_Tnved3.FieldByName('NAIM').asString,0,249) ;     
     E_G31_1.SetFocus;
    end;
end;

procedure TFormEditDoTovar.E_G221ButtonClick(Sender: TObject);
begin
  if FormVal.ShowModal=mrOk then
    begin
     E_G221.Text:=DM.IBDt_Val.FieldbyName('BUK').AsString;
     E_G42.SetFocus;
    end; 
end;

procedure TFormEditDoTovar.E_G33KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFormEditDoTovar.E_SVHDATEKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFormEditDoTovar.E_SVHTIMEKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFormEditDoTovar.E_SvhplaceKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFormEditDoTovar.E_SvhNumKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFormEditDoTovar.E_SrokKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFormEditDoTovar.E_VtransKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFormEditDoTovar.E_SqvKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFormEditDoTovar.E_G31_21KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFormEditDoTovar.E_G221KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFormEditDoTovar.E_G42KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFormEditDoTovar.E_G42_OstKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFormEditDoTovar.E_G31_2KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFormEditDoTovar.E_G31_2_ostKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFormEditDoTovar.E_G35KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFormEditDoTovar.E_G35_OstKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TFormEditDoTovar.E_G221Exit(Sender: TObject);
begin
 E_G221.Text:=FormVal.FindValBUK(Trim(E_G221.Text));
end;

procedure TFormEditDoTovar.SaveBtnClick(Sender: TObject);
var
 Id_Rec,i:Integer;
 S3,s1,s2,s4,Opis,Prim:String;
begin
 if DM.Ibdt_Dotovar.FieldByName('ID_NUM').IsNull then Exit;
 s1:='update do_tovar set G33=:p0,SVH_DATE=:p1,SVH_TIME=:p2,Svh_place=:p3,';
 s2:='Svh_Num=:p4,G31_D2=:p5,G31_21=:p6,G42=:p7,G221=:p8, ';
 s3:='G31_2_P=:p9,G31_2=:p10,G35=:p11,G31_1=:p12,Prim=:p13,G42_ost=:p14,g35_ost=:p15, ' ;
 s4:='g31_2_ost=:p16,unshipped=:p17 where id_num=:p18';
 Id_Rec:=DM.Ibdt_Dotovar.FieldByName('ID_NUM').AsInteger;
 Dm.SQL_Ztk.Close;
 DM.SQL_Ztk.SQL.Clear;
 DM.SQL_Ztk.SQL.Add(s1+s2+s3+s4);
//try
 if not DM.SQL_ZTK.Transaction.InTransaction then DM.SQL_ZTK.Transaction.StartTransaction; //start tran
  DM.SQL_ZTK.Params[0].AsString:=E_G33.Text;
  DM.SQL_ZTK.Params[1].AsDateTime:=SetValStrToDate(E_SVHDate.Text);
  DM.SQL_ZTK.Params[2].AsString:=E_SvhTime.Text;
  DM.SQL_ZTK.Params[3].AsString:=E_SvhPlace.Text;
  DM.SQL_ZTK.Params[4].AsString:=E_SvhNum.Text;
  DM.SQL_ZTK.Params[5].AsDateTime:=SetValStrToDate(E_Srok.Text);
  DM.SQL_ZTK.Params[6].AsString:=E_G31_21.Text;
  DM.SQL_ZTK.Params[7].AsCurrency:=SetValStrToFloat(E_G42.Text);
  DM.SQL_ZTK.Params[8].AsString:=E_G221.Text;
  if E_G31_2_p.Checked then
     DM.SQL_ZTK.Params[9].AsString:='T'
    else
     DM.SQL_ZTK.Params[9].AsString:='F';
  DM.SQL_ZTK.Params[10].AsInteger:=SetValStrToInt(E_G31_2.Text);
  DM.SQL_ZTK.Params[11].AsDouble:=SetValStrToFloat(E_G35.Text);
  for i:=0 to E_G31_1.Lines.Count-1 do
    begin
      Opis:=Opis+Char(32)+ E_G31_1.Lines.Strings[i];
    end;
  DM.SQL_ZTK.Params[12].AsString:=Opis;
  for i:=0 to E_Prim.Lines.Count-1 do
    begin
      Prim:=Prim+Char(32)+E_Prim.Lines.Strings[i];
    end;
  DM.SQL_ZTK.Params[13].AsString:=Prim;
  DM.SQL_ZTK.Params[14].AsCurrency:=SetValStrToFloat(E_G42.Text);
  DM.SQL_ZTK.Params[15].AsDouble:=SetValStrToFloat(E_G35.Text);
  DM.SQL_ZTK.Params[16].AsInteger:=SetValStrToInt(E_G31_2.Text);
  if E_Unshipped.Checked then
     DM.SQL_ZTK.Params[17].AsString:='T'
    else
     DM.SQL_ZTK.Params[17].AsString:='F';
  DM.SQL_ZTK.Params[18].AsInteger:=Id_rec;
  DM.SQL_ZTK.ExecQuery;
  DM.SQL_ZTK.Transaction.Commit;
  Application.MessageBox('Данные успешно сохранены','Подтверждение',mb_OK+mb_iconinformation);
//  except
//   Application.MessageBox('Ошибка записи данных','Внимание!',mb_OK+mb_iconstop);
//   DM.SQL_ZTK.Transaction.Rollback;
//   Exit;
// end;
 FormEditDoTovar.Close;
// FormeditDo.Refresh_DoTrand.Execute;
 FormeditDo.Refresh_DoTovar.Execute;
end;
procedure TFormEditDoTovar.E_G31_2_PClick(Sender: TObject);
begin
  if E_G31_2_P.Checked then
    begin
      E_G31_2.Text:='0';
      E_G31_2.Enabled:=False;
    end
   else
    E_G31_2.Enabled:=True;
end;

procedure TFormEditDoTovar.E_SvhNumEnter(Sender: TObject);
{var str: string;
    rect:TRect;}
begin
 { if hwnd<>nil then hwnd.ReleaseHandle;
  str:='In vina veritas!';
  hwnd:=THintWindow.Create(E_SvhNum);
  rect:=hwnd.CalcHintRect(200,str,nil);
  hwnd.ActivateHint(rect, str);}
end;

procedure TFormEditDoTovar.E_SvhNumExit(Sender: TObject);
begin
//if hwnd<>nil then hwnd.ReleaseHandle;
//if Length(Trim(Self.Text)) <> 2 then ShowMessage ('Введите двухзначный номер места');
end;

procedure TFormEditDoTovar.E_UnshippedClick(Sender: TObject);
begin
 if E_Unshipped.Checked then
       E_SvhNum.Enabled :=True else E_SvhNum.Enabled:=False;
end;

end.
