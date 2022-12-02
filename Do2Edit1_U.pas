unit Do2Edit1_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, StdCtrls, Mask, ComCtrls,
  Buttons;

type
  TDo2Edit1_F = class(TForm)
    Label10: TLabel;
    Label11: TLabel;
    E_G14Fam: TEdit;
    E_G14Dolj: TEdit;
    E_G074: TEdit;
    Label3: TLabel;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    E_G072: TDateTimePicker;
    E_G5421: TMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Do2Edit1_F: TDo2Edit1_F;

implementation

{$R *.dfm}
uses dm_u,editdo_u ;
procedure TDo2Edit1_F.FormShow(Sender: TObject);
begin
   E_G074.Text:=DM.Qry_DoOutHd.FieldByName('DO2_STATN').AsString;
   E_G072.Date:=DM.Qry_DoOutHd.FieldByName('G072').AsDateTime;
   E_G5421.Text:=TimeToStr(DM.Qry_DoOutHd.FieldByName('G072').AsDateTime);
   E_G14Fam.Text:=DM.Qry_DoOutHd.FieldByName('G02_2').AsString;
   E_G14Dolj.Text:=DM.Qry_DoOutHd.FieldByName('G02_3').AsString;
end;

procedure TDo2Edit1_F.CancBtnClick(Sender: TObject);
begin
 ModalResult:=mrcancel;
end;

procedure TDo2Edit1_F.SaveBtnClick(Sender: TObject);
var
 id_rec:Integer;
begin
try
  try
  id_rec:=DM.Qry_DoOutHd.FieldByName('ID').AsInteger;
  DM.SQL.Close;
  Dm.SQL.SQL.Clear;
  DM.SQL.SQL.Add('update do_outhd set  ');
  DM.SQL.SQL.Add('g02_2=:p0, g02_3=:p1 where id=:p2 ');
  if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction;
  DM.SQL.params[0].AsString:=E_G14Fam.Text;
  DM.SQL.params[1].AsString:=E_G14Dolj.Text;
  DM.SQL.params[2].asInteger:=id_rec;
  DM.SQL.ExecQuery;
  DM.SQL.Transaction.Commit;
  EditDo_F.Refresh_DoOutHd.Execute;
  ModalResult:=mrOk;
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
