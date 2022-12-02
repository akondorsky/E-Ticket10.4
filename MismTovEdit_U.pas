unit MismTovEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DBCtrlsEh, Buttons, ExtCtrls, ComCtrls;

type
  TMismTovEdit_F = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    RG_Kind: TRadioGroup;
    D_Mism: TDateTimePicker;
    Label5: TLabel;
    T_Mism: TDateTimePicker;
    E_Reas: TEdit;
    Rg_Stage: TRadioGroup;
    Gp_Fact: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    E_Brutto: TDBNumberEditEh;
    E_Places: TEdit;
    E_Tnved: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    E_Descr: TEdit;
    E_Stoim: TDBNumberEditEh;
    Label8: TLabel;
    Gp_Doc: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    E_PlDoc: TEdit;
    E_TnvedDoc: TEdit;
    E_DescDoc: TEdit;
    E_StoimDoc: TDBNumberEditEh;
    Label14: TLabel;
    E_BruttoDoc: TDBNumberEditEh;
    Ch_Place: TCheckBox;
    Label15: TLabel;
    Label19: TLabel;
    E_Prim: TMemo;
    procedure SaveBtnClick(Sender: TObject);
    procedure E_TnvedKeyPress(Sender: TObject; var Key: Char);
    procedure E_PlacesKeyPress(Sender: TObject; var Key: Char);
    procedure E_PlDocKeyPress(Sender: TObject; var Key: Char);
    procedure E_TnvedDocKeyPress(Sender: TObject; var Key: Char);
    procedure E_StoimDocChange(Sender: TObject);
    procedure E_BruttoDocChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Ch_PlaceClick(Sender: TObject);

  private
    { Private declarations }
    procedure GetValues;
  public
    { Public declarations }
  end;

var
  MismTovEdit_F: TMismTovEdit_F;

implementation

{$R *.dfm}
uses dm_u, DB;

procedure TMismTovEdit_F.SaveBtnClick(Sender: TObject);
var
 dt_mism,s:String;
 id_rec,id_tov:integer;
begin
try
  try
     // ïîëó÷èì äàòó è âğåìÿ
     dt_mism:=DateToStr(D_Mism.Date)+' '+TimeToStr(T_Mism.Time);
     id_tov:=Dm.Qry_TovMismatch.FieldByName('ID_TOV').asinteger;
     id_rec:=Dm.Qry_TovMismatch.FieldByName('ID').asinteger;
     s:='update mismatch set dt_mism=:p0,brutto=:p1,description=:p2,place_number=:p3, ';
     s:=s+' kind=:p4,stage=:p5,reasons=:p6,tnved_code=:p7,inv_cost=:p8 ';
     s:=s+' where id=:p9 ';
     Dm.SQL.Close;
     DM.SQL.SQL.Clear;
     DM.SQL.SQL.Add(s);
     if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction; //start tran
      DM.SQL.Params[0].AsDateTime:=StrToDateTime(dt_mism);
      DM.SQL.Params[1].AsDouble:=StrToFloat(E_BruttoDoc.Text);
      DM.SQL.Params[2].AsString:=E_DescDoc.Text;
      DM.SQL.Params[3].AsInteger:=StrToInt(E_PlDoc.Text);
      case RG_Kind.ItemIndex of
         0:DM.SQL.Params[4].AsInteger:=1;
         1:DM.SQL.Params[4].AsInteger:=2;
         2:DM.SQL.Params[4].AsInteger:=3;
      end;
      case Rg_Stage.ItemIndex of
         0:DM.SQL.Params[5].AsInteger:=1;
         1:DM.SQL.Params[5].AsInteger:=2;
      end;
      DM.SQL.Params[6].AsString:=E_Reas.Text;
      DM.SQL.Params[7].AsString:=E_TnvedDoc.Text;
      DM.SQL.Params[8].AsDouble:=StrToFloat(E_StoimDoc.Text);
      DM.SQL.Params[9].AsInteger:=id_rec;
      DM.SQL.ExecQuery;
      // îáíîâèì òîâàğ
       s:='update do_tovar set G33=:p0,';
       s:=s+ 'G42=:p1,G31_2_P=:p2,G31_2=:p3,G35=:p4,G31_1=:p5, G42_ost=:p6,g35_ost=:p7, ' ;
       s:=s+ 'g31_2_ost=:p8, PRIM= :p9 where id=:p10';
       Dm.SQL.Close;
       DM.SQL.SQL.Clear;
       DM.SQL.SQL.Add(s);
       DM.SQL.Params[0].AsString:=E_Tnved.Text;
       DM.SQL.Params[1].AsDouble:=StrToFloat(E_Stoim.Text);
       if Ch_Place.Checked then
           DM.SQL.Params[2].AsString:='T'
          else
           DM.SQL.Params[2].AsString:='F';
       DM.SQL.Params[3].AsInteger:=StrToInt(E_Places.Text);
       DM.SQL.Params[4].AsDouble:=StrToFloat(E_Brutto.Text);
       DM.SQL.Params[5].AsString:=E_Descr.Text;
       DM.SQL.Params[6].AsDouble:=StrToFloat(E_Stoim.Text);
       DM.SQL.Params[7].AsDouble:=StrToFloat(E_Brutto.Text);
       DM.SQL.Params[8].AsInteger:=StrToInt(E_Places.Text);
       DM.SQL.Params[9].AsString:=trim(E_Prim.Text);
       DM.SQL.Params[10].AsInteger:=id_tov;
       DM.SQL.ExecQuery;
       DM.SQL.Transaction.Commit;
       DM.Qry_TovMismatch.Close;
       DM.Qry_TovMismatch.Open;
       DM.Qry_TovMismatch.Locate('ID',id_rec,[]);
       DM.Qry_DoTovar.Close;
       DM.Qry_DoTovar.Open;
       Application.MessageBox('Äàííûå óñïåøíî ñîõğàíåíû','Ïîäòâåğæäåíèå',mb_OK+mb_iconinformation);
      except
         on E:Exception do
          begin
             DM.SQL.Transaction.Rollback;
             MessageBox(Application.Handle, PChar(E.Message + #13#10 + Dm.SQL.SQL.Text),
               PChar(Application.Name), MB_ICONERROR);
          end;
     end;
    finally
     if DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.Rollback; //start tran
    end;
end;

procedure TMismTovEdit_F.E_TnvedKeyPress(Sender: TObject; var Key: Char);
begin
   if  not(Key in ['0'..'9',#8]) then Key:=#0;
end;

procedure TMismTovEdit_F.E_PlacesKeyPress(Sender: TObject; var Key: Char);
begin
   if  not(Key in ['0'..'9',#8]) then Key:=#0;
end;

procedure TMismTovEdit_F.E_PlDocKeyPress(Sender: TObject; var Key: Char);
begin
   if  not(Key in ['0'..'9',#8]) then Key:=#0;
end;

procedure TMismTovEdit_F.E_TnvedDocKeyPress(Sender: TObject;
  var Key: Char);
begin
   if  not(Key in ['0'..'9',#8]) then Key:=#0;
end;

procedure TMismTovEdit_F.E_StoimDocChange(Sender: TObject);
var
i : integer;
c : char;
s : string;
begin
// ğåçóëüòèğóşùàÿ ñòğîêà:
s := '';
// ïğîõîäèì ïî âñåì ñèìâîëàì èñõîäíîé ñòğîêè:
for i:=1 to Length((Sender as Tedit).Text) do
  begin
    // áåğåì òåêóùèé ñèìâîë:
    c :=(Sender as Tedit).Text[i];
    // Ïğîâåğÿåì åãî íà ïğèíàäëåæíîñòü ê öèôğàì:
    if (c >= '0') and (c <= '9') then s := s + c;
    // Èëè çíàêàì 'òî÷êà' èëè 'çàïÿòàÿ':
    if c = FormatSettings.DecimalSeparator then s := s + c;
  end;
// Ïğèñâàåâàåì ïîëş ğåçóëüòèğóşùóş ñòğîêó:
(Sender as Tedit).Text := s;
(Sender as Tedit).SelStart:=Length(s);
(Sender as Tedit).SelLength:=0;
end;

procedure TMismTovEdit_F.GetValues;
var
 id_tov:Integer;
begin
 case DM.Qry_TovMismatch.FieldByName('KIND').AsInteger of
      1:RG_Kind.ItemIndex:=0;
      2:RG_Kind.ItemIndex:=1;
      3:RG_Kind.ItemIndex:=2;
    else
      RG_Kind.ItemIndex:=0;
 end; //case
 case DM.Qry_TovMismatch.FieldByName('STAGE').AsInteger of
      1:Rg_Stage.ItemIndex:=0;
      2:Rg_Stage.ItemIndex:=1;
    else
      Rg_Stage.ItemIndex:=0;
 end; //case
 D_Mism.Date:=DM.Qry_TovMismatch.FieldByName('DT_MISM').AsDateTime;
 T_Mism.Time:=DM.Qry_TovMismatch.FieldByName('DT_MISM').AsDateTime;
 E_Reas.Text:=DM.Qry_TovMismatch.FieldByName('REASONS').AsString;
 E_DescDoc.Text:=DM.Qry_TovMismatch.FieldByName('DESCRIPTION').AsString;
 E_TnvedDoc.Text:=DM.Qry_TovMismatch.FieldByName('TNVED_CODE').AsString;
 E_StoimDoc.Text:=DM.Qry_TovMismatch.FieldByName('INV_COST').AsString;
 E_BruttoDoc.Text:=DM.Qry_TovMismatch.FieldByName('BRUTTO').AsString;
 E_PlDoc.Text:=DM.Qry_TovMismatch.FieldByName('PLACE_NUMBER').AsString;
 id_tov:=DM.Qry_TovMismatch.FieldByName('ID_TOV').AsInteger;
 DM.Qry.Close;
 Dm.Qry.SQL.Clear;
 Dm.Qry.SQL.Add('select g31_1,g33,g42,g31_2,g35,prim from do_tovar where id=:po');
 DM.Qry.Params[0].AsInteger:=id_tov;
 Dm.Qry.Open;
 E_Descr.Text:=Dm.Qry.FieldByName('G31_1').asString;
 E_Tnved.Text:=Dm.Qry.FieldByName('G33').asString;
 E_Stoim.Text:= Dm.Qry.FieldByName('G42').AsString;
 E_Brutto.Text:=Dm.Qry.FieldByName('G35').asString;
 E_Places.text:=Dm.Qry.FieldByName('G31_2').asString;
 E_Prim.Text:=Dm.Qry.FieldByName('PRIM').asString;
end;

procedure TMismTovEdit_F.E_BruttoDocChange(Sender: TObject);
var
i : integer;
c : char;
s : string;
begin
// ğåçóëüòèğóşùàÿ ñòğîêà:
s := '';
// ïğîõîäèì ïî âñåì ñèìâîëàì èñõîäíîé ñòğîêè:
for i:=1 to Length((Sender as Tedit).Text) do
  begin
    // áåğåì òåêóùèé ñèìâîë:
    c :=(Sender as Tedit).Text[i];
    // Ïğîâåğÿåì åãî íà ïğèíàäëåæíîñòü ê öèôğàì:
    if (c >= '0') and (c <= '9') then s := s + c;
    // Èëè çíàêàì 'òî÷êà' èëè 'çàïÿòàÿ':
    if c = FormatSettings.DecimalSeparator then s := s + c;
  end;
// Ïğèñâàåâàåì ïîëş ğåçóëüòèğóşùóş ñòğîêó:
(Sender as Tedit).Text := s;
(Sender as Tedit).SelStart:=Length(s);
(Sender as Tedit).SelLength:=0;

end;

procedure TMismTovEdit_F.FormShow(Sender: TObject);
begin
 GetValues;
 CancBtn.SetFocus;
end;

procedure TMismTovEdit_F.Ch_PlaceClick(Sender: TObject);
begin
 if Ch_Place.Checked then
   begin
    E_Places.Text:='0';
    E_Places.Enabled:=False;
    E_Prim.Text:=E_Prim.Text +(' ÷àñòü ìåñòà; ')
   end
  else E_Places.Enabled:=True;
end;

end.
