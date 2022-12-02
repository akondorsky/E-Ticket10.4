unit DoHeaderEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, StdCtrls, Mask, ComCtrls,
  Buttons;

type
  TDoHeaderEdit_F = class(TForm)
    Label10: TLabel;
    Label11: TLabel;
    E_G14Fam: TEdit;
    E_G14Dolj: TEdit;
    E_G073: TEdit;
    Label3: TLabel;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    E_G072: TDateTimePicker;
    E_Time: TMaskEdit;
    Label4: TLabel;
    E_Lic: TEdit;
    procedure FormShow(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DoHeaderEdit_F: TDoHeaderEdit_F;

implementation

{$R *.dfm}
uses dm_u,editdo_u , Do1_U;
procedure TDoHeaderEdit_F.FormShow(Sender: TObject);
begin
   E_G073.Text:=DM.Qry_DoHead.FieldByName('G073').AsString;
   E_G072.Date:=DM.Qry_DoHead.FieldByName('G072').AsDateTime;
   E_Time.Text:=TimeToStr(DM.Qry_DoHead.FieldByName('G072').AsDateTime);
   E_Lic.Text:=IntToStr(DM.Qry_DoHead.FieldByName('ID_SVH').AsInteger);
   E_G14Fam.Text:=DM.Qry_DoHead.FieldByName('G14FAM').AsString;
   E_G14Dolj.Text:=DM.Qry_DoHead.FieldByName('G14DOLJ').AsString;
end;

procedure TDoHeaderEdit_F.CancBtnClick(Sender: TObject);
begin
 ModalResult:=mrcancel;
end;

procedure TDoHeaderEdit_F.SaveBtnClick(Sender: TObject);
var
 id_rec:Integer;
 d:String;
begin
if Length((E_Lic.Text)) = 0 then
  begin
    Application.MessageBox('Необходимо указать ИД свидетельства.','Внимание',MB_ICONERROR+MB_OK)
  end;
d:=dateToStr(E_G072.Date)+' '+E_Time.Text;
try
  try
  id_rec:=DM.Qry_DoHead.FieldByName('ID').AsInteger;
  DM.SQL.Close;
  Dm.SQL.SQL.Clear;
  DM.SQL.SQL.Add('update do_head set  ');
  DM.SQL.SQL.Add('g073=:p0, g072=:p1, id_svh =:p2, g14fam=:p3,g14dolj=:p4  where id=:p5 ');
  if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction;
  DM.SQL.params[0].AsString:=E_G073.Text;
  DM.SQL.params[1].AsDateTime:=StrToDateTime(d);
  DM.SQL.params[2].AsInteger:=StrToInt(E_Lic.Text);
  DM.SQL.params[3].AsString:=E_G14Fam.Text;
  DM.SQL.params[4].AsString:=E_G14Dolj.Text;
  DM.SQL.params[5].asInteger:=id_rec;
  DM.SQL.ExecQuery;
  DM.SQL.Close;
  Dm.SQL.SQL.Clear;
  DM.SQL.SQL.Add('update do_tovar set date_in = :p0,time_in=:p1,g31_d2=:p2 where id_do1 = :p3   ');
  DM.Sql.Params[0].AsDate:=E_G072.Date;
  DM.Sql.Params[1].AsTime:=StrToTime(E_Time.Text);
  DM.Sql.Params[2].AsDate:=IncMonth(E_G072.Date,4);
  DM.Sql.Params[3].AsInteger:=id_rec;
  DM.Sql.ExecQuery;
  DM.SQL.Transaction.Commit;
  ModalResult:=mrOk;
  DM.Qry_DoHead.Close;
  DM.Qry_DoHead.Open;
  //DM.Qry_DoHead.Locate('ID',id_rec,[]);
 except
  on E:Exception do
    begin
      //DM.SQL.Transaction.Rollback;
      MessageBox(Application.Handle, PChar(E.Message + #13#10 + Dm.SQL.SQL.Text),
      PChar(Application.Name), MB_ICONERROR);
//         Exit;
    end;
 end;
finally
  if DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.Rollback ;
end;

end;

end.
