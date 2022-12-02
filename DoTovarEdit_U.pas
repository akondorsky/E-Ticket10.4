unit DoTovarEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask,   ExtCtrls, Buttons,Db, DBCtrlsEh;

type
  TDoTovarEdit_F = class(TForm)
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
    Label19: TLabel;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    E_G31_1: TMemo;
    E_Prim: TMemo;
    E_SvhNum: TMaskEdit;
    E_Unshipped: TCheckBox;
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
    Shape5: TShape;
    Shape8: TShape;
    Label18: TLabel;
    E_G31_2_P: TCheckBox;
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
    procedure SaveBtnClick(Sender: TObject);
    procedure E_G31_2_PClick(Sender: TObject);
    procedure E_SvhNumEnter(Sender: TObject);
    procedure E_SvhNumExit(Sender: TObject);
    procedure E_UnshippedClick(Sender: TObject);
    procedure E_G221Change(Sender: TObject);
    procedure E_G31_2Exit(Sender: TObject);
    procedure E_G35Exit(Sender: TObject);
    procedure E_G33RightButtonClick(Sender: TObject);
    procedure E_G33Exit(Sender: TObject);
    procedure E_G42Exit(Sender: TObject);
  private
    { Private declarations }
//    hwnd: THintWindow;
    procedure GetValues;
  public
    { Public declarations }
  end;

var
  DoTovarEdit_F: TDoTovarEdit_F;

implementation

uses tnved4_u, dm_u, val_u,main;

{$R *.dfm}

procedure TDoTovarEdit_F.GetValues;
begin
    E_G33.Text:=DM.Qry_doTovar.FieldByName('G33').asString;
    E_SvhNum.Text:=DM.Qry_doTovar.FieldByName('SVH_NUM').AsString;
    E_SVHDATE.Text:=DM.Qry_doTovar.FieldByName('DATE_IN').AsString;
    E_SVHTIME.Text:=DM.Qry_doTovar.FieldByName('TIME_IN').AsString;
    E_G42.Text:=DM.Qry_doTovar.FieldByName('G42').AsString;
    E_G42_Ost.Text:=DM.Qry_doTovar.FieldByName('G42_OST').AsString;
    E_G221.Text:=DM.Qry_doTovar.FieldByName('G221').AsString;
    if DM.Qry_doTovar.FieldByName('G31_2_P').AsString='T' then
        begin
         E_G31_2_P.Checked:=True;
         E_G31_2.Enabled:=False;
        end
      else
        begin
         E_G31_2_P.Checked:=False;
         E_G31_2.Enabled:=True;
        end;
    E_G31_2.Text:=DM.Qry_doTovar.FieldByName('G31_2').AsString;
    E_G31_2_ost.Text:=DM.Qry_doTovar.FieldByName('G31_2_OST').AsString;
    E_G35.Text:=DM.Qry_doTovar.FieldByName('G35').AsString;
    E_G35_Ost.Text:=DM.Qry_doTovar.FieldByName('G35_OST').AsString;
    E_Prim.Text:=DM.Qry_doTovar.FieldByName('PRIM').AsString;
    E_G31_1.Text:=DM.Qry_doTovar.FieldByName('G31_1').AsString;
end;

procedure TDoTovarEdit_F.CancBtnClick(Sender: TObject);
begin
Modalresult:=mrcancel;
end;

procedure TDoTovarEdit_F.FormShow(Sender: TObject);
begin
  getValues;
  E_G33.SetFocus;
end;
procedure TDoTovarEdit_F.E_G33Exit(Sender: TObject);
begin
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

procedure TDoTovarEdit_F.E_G221ButtonClick(Sender: TObject);
begin
  if Val_F.ShowModal=mrOk then
    begin
     E_G221.Text:=DM.Qry_Val.FieldbyName('BUK').AsString;
     SelectNext(Sender as TwinControl,True,True);
    end;
end;

procedure TDoTovarEdit_F.E_G221Change(Sender: TObject);
begin
 if Val_F.FindValBUK(E_G221.Text) <> 'F' then
  begin
    E_G221.Text:=Val_F.FindValBUK(E_G221.Text);
    SelectNext(Sender as TWinControl, True, True);
  end;
end;

procedure TDoTovarEdit_F.E_G33KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         E_G33RightButtonClick(E_G33);
       end;

end;

procedure TDoTovarEdit_F.E_G33RightButtonClick(Sender: TObject);
begin
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

procedure TDoTovarEdit_F.E_SVHDATEKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarEdit_F.E_SVHTIMEKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarEdit_F.E_SvhplaceKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarEdit_F.E_SvhNumKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarEdit_F.E_SrokKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarEdit_F.E_VtransKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarEdit_F.E_SqvKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarEdit_F.E_G31_21KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarEdit_F.E_G31_2Exit(Sender: TObject);
begin
E_G31_2_Ost.Text:=E_G31_2.Text;
end;

procedure TDoTovarEdit_F.E_G221KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarEdit_F.E_G42Exit(Sender: TObject);
begin
E_G42_Ost.Text:=E_G42.Text;
end;

procedure TDoTovarEdit_F.E_G42KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarEdit_F.E_G42_OstKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarEdit_F.E_G31_2KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarEdit_F.E_G31_2_ostKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarEdit_F.E_G35Exit(Sender: TObject);
begin
E_G35_Ost.Text:=E_G35.Text;
end;

procedure TDoTovarEdit_F.E_G35KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDoTovarEdit_F.E_G35_OstKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;


procedure TDoTovarEdit_F.SaveBtnClick(Sender: TObject);
var
 Id_Rec,i:Integer;
 S,Opis,Prim:String;
begin
try
 try
   if DM.Qry_Dotovar.FieldByName('ID').IsNull then Exit;
   Id_Rec:=DM.Qry_Dotovar.FieldByName('ID').AsInteger;
   s:='update do_tovar ';
   s:=s+' set G33=:p0,G31_1=:p1,G221=:p2,G42=:p3,G31_2_P=:p4,G31_2=:p5,G35=:p6, ';
   s:=s+'  Prim=:p7,G42_OST=:p8,G31_2_OST=:p9,G35_OST=:p10, DATE_IN=:p11,TIME_IN=:p12 where ID=:p13  ';
   Dm.SQL.Close;
   DM.SQL.SQL.Clear;
   DM.SQL.SQL.Add(s);
   if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
   DM.sql.Params[0].AsString:=Copy(E_G33.Text,0,4);
   for i:=0 to E_G31_1.Lines.Count-1 do
    begin
      Opis:=Opis+Char(32)+E_G31_1.Lines.Strings[i];
    end;
   DM.SQL.Params[1].AsString:=Copy(Opis,0,249);
   DM.SQL.Params[2].AsString:=E_G221.Text;
   DM.SQL.Params[3].AsDouble:=StrToFloat(E_G42.Text);
   if E_G31_2_p.Checked then
     DM.SQL.Params[4].AsString:='T'
    else
     DM.SQL.Params[4].AsString:='F';
   DM.SQL.Params[5].AsInteger:=StrToInt(E_G31_2.Text);
   DM.SQL.Params[6].AsDouble:=StrToFloat(E_G35.Text);
   Prim:=Trim(E_Prim.Text);
   DM.SQL.Params[7].AsString:=Copy(Prim,0,249);
   DM.SQL.Params[8].AsDouble:=StrToFloat(E_G42_OST.Text);
   DM.SQL.Params[9].AsInteger:=StrToInt(E_G31_2_OST.Text);
   DM.SQL.Params[10].AsDouble:=StrToFloat(E_G35_OST.Text);
   DM.SQL.Params[11].AsDate:=StrToDate(E_SVHDATE.Text);
   DM.SQL.Params[12].AsTime:=StrToTime(E_SVHTIME.Text);
   DM.SQL.Params[13].AsInteger:=Id_Rec;
   DM.sql.ExecQuery;
   DM.sql.Transaction.Commit;
   ModalResult:=mrOk;
   DM.Refresh_DoTrand;
   DM.Qry_DoTovar.Close;
   DM.Qry_DoTovar.Open;
   DM.Qry_DoTovar.Locate('ID',Id_Rec,[]);
   Dm.Refresh_Do2Tovar;
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
procedure TDoTovarEdit_F.E_G31_2_PClick(Sender: TObject);
begin
  if E_G31_2_P.Checked then
    begin
      E_G31_2.Text:='0';
      E_G31_2.Enabled:=False;
      E_G31_2_Ost.Text:='0';
      E_G31_2_Ost.Enabled:=False;
      E_Prim.Text:=E_Prim.Text +(' часть места; ')
    end
   else
    E_G31_2.Enabled:=True;
end;

procedure TDoTovarEdit_F.E_SvhNumEnter(Sender: TObject);
{var str: string;
    rect:TRect;}
begin
 { if hwnd<>nil then hwnd.ReleaseHandle;
  str:='In vina veritas!';
  hwnd:=THintWindow.Create(E_SvhNum);
  rect:=hwnd.CalcHintRect(200,str,nil);
  hwnd.ActivateHint(rect, str);}
end;

procedure TDoTovarEdit_F.E_SvhNumExit(Sender: TObject);
begin
//if hwnd<>nil then hwnd.ReleaseHandle;
//if Length(Trim(Self.Text)) <> 2 then ShowMessage ('¬ведите двухзначный номер места');
end;

procedure TDoTovarEdit_F.E_UnshippedClick(Sender: TObject);
begin
 if E_Unshipped.Checked then
       E_SvhNum.Enabled :=True else E_SvhNum.Enabled:=False;
end;

end.
