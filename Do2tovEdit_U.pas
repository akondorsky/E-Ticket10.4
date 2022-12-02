unit Do2tovEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons,DB, Mask, DBCtrlsEh;

type
  TDo2TovEdit_F = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label19: TLabel;
    Shape2: TShape;
    Label13: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Shape5: TShape;
    Shape8: TShape;
    Label18: TLabel;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    E_G31_1: TMemo;
    E_Prim: TMemo;
    E_G31_2_P: TCheckBox;
    E_G31_2: TEdit;
    E_G221: TButtonedEdit;
    E_G33: TEdit;
    E_G42: TDBNumberEditEh;
    E_g35: TDBNumberEditEh;
    procedure FormShow(Sender: TObject);
    procedure E_G31_2_PClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure E_G42Exit(Sender: TObject);
    procedure E_G31_2Exit(Sender: TObject);
    procedure E_G35Exit(Sender: TObject);
    procedure E_G42_OstChange(Sender: TObject);
    procedure E_G31_2_OstChange(Sender: TObject);
    procedure E_G35_OstChange(Sender: TObject);
    procedure E_G221KeyPress(Sender: TObject; var Key: Char);
    procedure E_G42KeyPress(Sender: TObject; var Key: Char);
    procedure E_G31_2KeyPress(Sender: TObject; var Key: Char);
    procedure E_g35KeyPress(Sender: TObject; var Key: Char);
    procedure E_G33KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    DefEditColor:TColor;
    DefEditFontColor:TColor;
    procedure GetValues;
    procedure Count_Ost;
  public
    { Public declarations }
  end;

var
  Do2TovEdit_F: TDo2TovEdit_F;

implementation

{$R *.dfm}
 uses dm_u,editdo_u,main;

procedure TDo2TovEdit_F.Count_Ost;
begin
{ E_G42_Ost.Text:=FloatToStr(StrToFloat(E_G42_Pr.Text) - StrToFloat(E_G42.Text));
 E_G31_2_Ost.Text:=FloatToStr(StrToFloat(E_G31_2_Pr.Text) - StrToFloat(E_G31_2.Text));
 E_G35_Ost.Text:=FloatToStr(StrToFloat(E_G35_Pr.Text) - StrToFloat(E_G35.Text));}
end;

procedure TDo2TovEdit_F.E_G221KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TDo2TovEdit_F.E_G31_2Exit(Sender: TObject);
begin
  Count_Ost;
end;

procedure TDo2TovEdit_F.E_G31_2KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TDo2TovEdit_F.E_G31_2_OstChange(Sender: TObject);
begin
 if StrToFloat((Sender as Tedit).Text) < 0  then
   begin
     (Sender as TEdit).Color:=clRed;
     (Sender as TEdit).Font.Color:=clBlack;
   end
  else
   begin
     (Sender as TEdit).Color:=DefEditColor;
     (Sender as TEdit).Font.Color:=DefEditFontColor;
   end;
end;

procedure TDo2TovEdit_F.E_G31_2_PClick(Sender: TObject);
begin
  if E_G31_2_P.Checked  then
    begin
     E_G31_2.Enabled:=False;
     E_G31_2.Text:='0';
     E_Prim.Text:=E_Prim.Text+' часть места;';
    end
   else
    begin
     E_G31_2.Enabled:=True;
    end;
end;

procedure TDo2TovEdit_F.E_G33KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TDo2TovEdit_F.E_G35Exit(Sender: TObject);
begin
  Count_Ost;
end;

procedure TDo2TovEdit_F.E_g35KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TDo2TovEdit_F.E_G35_OstChange(Sender: TObject);
begin
 if StrToFloat((Sender as Tedit).Text) < 0  then
   begin
     (Sender as TEdit).Color:=clRed;
     (Sender as TEdit).Font.Color:=clBlack;
   end
  else
   begin
     (Sender as TEdit).Color:=DefEditColor;
     (Sender as TEdit).Font.Color:=DefEditFontColor;
   end;
end;

procedure TDo2TovEdit_F.E_G42Exit(Sender: TObject);
begin
  Count_Ost;
end;

procedure TDo2TovEdit_F.E_G42KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TDo2TovEdit_F.E_G42_OstChange(Sender: TObject);
begin
 if StrToFloat((Sender as Tedit).Text) < 0  then
   begin
     (Sender as TEdit).Color:=clRed;
     (Sender as TEdit).Font.Color:=clBlack;
   end
  else
   begin
     (Sender as TEdit).Color:=DefEditColor;
     (Sender as TEdit).Font.Color:=DefEditFontColor;
   end;
end;

procedure TDo2TovEdit_F.FormShow(Sender: TObject);
begin
  DefEditColor:=E_G42.Color;
  DefEditFontColor:=E_G42.Font.Color;
  GetValues;
  E_G42.SetFocus;
end;

procedure TDo2TovEdit_F.GetValues;
begin
    E_G33.Text:=DM.Qry_DoOutTovar.FieldByName('G33').asString;
    E_G31_1.Text:=DM.Qry_DoOutTovar.FieldByName('G31_1').AsString;
//    E_G42_Pr.Text:=DM.Qry_DoOutTovar.FieldByName('G42').AsString;
//    E_G42_OST.Text:=DM.Qry_DoOutTovar.FieldByName('G42_OST').AsString;
    E_G221.Text:=DM.Qry_DoOutTovar.FieldByName('G221').AsString;
    if DM.Qry_DoOutTovar.FieldByName('G31_2_P').AsString='T' then
        begin
         E_G31_2_P.Checked:=True;
         E_G31_2.Enabled:=False;
        end
      else
        begin
         E_G31_2_P.Checked:=False;
         E_G31_2.Enabled:=True;
        end;
//    E_G31_2_pr.Text:=DM.Qry_DoOutTovar.FieldByName('G31_2').AsString;
//    E_G31_2_Ost.Text:=DM.Qry_DoOutTovar.FieldByName('G31_2_OST').AsString;;
//    E_G35_pr.Text:=DM.Qry_DoOutTovar.FieldByName('G35').AsString;
//    E_G35_OST.Text:=DM.Qry_DoOutTovar.FieldByName('G35_OST').AsString;
    E_Prim.Text:=DM.Qry_DoOutTovar.FieldByName('PRIM').AsString;
    E_G42.Text:=DM.Qry_DoOutTovar.FieldByName('G42').AsString;
    E_G31_2.Text:=DM.Qry_DoOutTovar.FieldByName('G31_2').AsString;
    E_G35.Text:=DM.Qry_DoOutTovar.FieldByName('G35').AsString;
end;

procedure TDo2TovEdit_F.SaveBtnClick(Sender: TObject);
var
 Id_Rec,Id_do1_tov,i:Integer;
 S,Opis,Prim:String;
begin
{  if StrToFloat(E_G42_Ost.Text) > StrToFloat(E_G42.Text) then
     begin
       Application.MessageBox('Расход по стоимости не может быть > остатка!','Внимание!',MB_ICONERROR+MB_OK);
       ModalResult:=mrNone;
       E_G42.SetFocus;
       Exit;
     end;
  if StrToInt(E_G31_2_Ost.Text) > StrToInt(E_G31_2.Text) then
     begin
       Application.MessageBox('Расход по кол-ву мест не может быть > остатка!','Внимание!',MB_ICONERROR+MB_OK);
       ModalResult:=mrNone;
       E_G31_2.SetFocus;
       Exit;
     end;
  if StrToFloat(E_G35_Ost.Text) > StrToFloat(E_G35.Text) then
     begin
       Application.MessageBox('Расход по весу не может быть > остатка!','Внимание!',MB_ICONERROR+MB_OK);
       ModalResult:=mrNone;
       E_G35.SetFocus;
       Exit;
     end;}

try
 try
   Id_Rec:=DM.Qry_DoOutTovar.FieldByName('ID').AsInteger;
   Id_do1_tov:=DM.Qry_DoOutTovar.FieldByName('ID_TOV_DO1').AsInteger;
   //обновляем таблицу товаров ДО2
   s:='update do_out ';
   s:=s+' set G42=:p0,G31_2_P=:p1,G31_2=:p2,G35=:p3, ';
   s:=s+'  Prim=:p4 where ID=:p5  ';
   Dm.SQL.Close;
   DM.SQL.SQL.Clear;
   DM.SQL.SQL.Add(s);
   if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
   DM.SQL.Params[0].AsDouble:=StrToFloat(E_G42.Text);
   if E_G31_2_p.Checked then
     DM.SQL.Params[1].AsString:='T'
    else
     DM.SQL.Params[1].AsString:='F';
   DM.SQL.Params[2].AsInteger:=StrToInt(E_G31_2.Text);
   DM.SQL.Params[3].AsDouble:=StrToFloat(E_G35.Text);
   DM.SQL.Params[4].AsString:=Copy(Trim(E_Prim.text),0,249);
   DM.SQL.Params[5].AsInteger:=Id_Rec;
   DM.sql.ExecQuery;
   DM.sql.Transaction.Commit;
   ModalResult:=mrOk;
   DM.Refresh_Do2Tovar;
   DM.Refresh_DoTovar;
    except
      on E: EdatabaseError do
        begin
         //DM.Sql.Transaction.Rollback;
         ShowMessage(E.Message);
        end;
   end;
 finally
   if DM.sql.Transaction.InTransaction then DM.sql.Transaction.Rollback;
 end;

end;

end.
