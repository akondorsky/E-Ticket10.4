unit EditTtn_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,  Mask, Buttons,Db, ExtCtrls, ComCtrls;

type
  TEditTtn_F = class(TForm)
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    E_Ngtd: TMaskEdit;
    E_Dgtd: TDateTimePicker;
    procedure E_DgtdEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure E_TypeKeyPress(Sender: TObject; var Key: Char);
    procedure E_NgtdKeyPress(Sender: TObject; var Key: Char);
    procedure E_DgtdKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SaveBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  MyGtdMask:String='00000000\/000000\/0000000;1;_';
var
  EditTtn_F: TEditTtn_F;

implementation

uses dm_u,tdoc_u;

{$R *.dfm}

procedure TEditTtn_F.E_DgtdEnter(Sender: TObject);
var
 s,s1:String;
begin
{ s1:=Copy(DateToStr(Date),7,2);
 s:=Copy(E_ngtd.Text,10,6);
 Insert(s1,s,5);
 Insert(DateSeparator,s,3);
 Insert(DateSeparator,s,6);
 E_Dgtd.Date:=StrTodate(s);}
end;

procedure TEditTtn_F.FormShow(Sender: TObject);
begin
 E_Ngtd.Text:=Dm.Qry_TtnIn.FieldByName('NDOC').AsString;
 E_Dgtd.Date:=Dm.Qry_TtnIn.FieldByName('DDOC').AsDateTime;
 CancBtn.SetFocus;
end;

procedure TEditTtn_F.E_TypeKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TEditTtn_F.E_NgtdKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TEditTtn_F.E_DgtdKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TEditTtn_F.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
// E_ngtd.EditMask:='';
end;

procedure TEditTtn_F.SaveBtnClick(Sender: TObject);
var
 rec:Integer;
begin
try
 try
  rec:=Dm.Qry_TtnIn.FieldByName('ID').AsInteger;
  DM.SQL.Close;
  Dm.SQL.SQL.Clear;
  DM.SQL.SQL.Add('update ttn_in set ndoc=:p0,ddoc=:p1 where id=:p2 ');
  if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction;
  DM.SQL.params[0].AsString:=E_Ngtd.Text;
  DM.SQL.params[1].AsDate:=E_Dgtd.Date;
  DM.SQL.params[2].AsInteger:=rec;
  DM.SQL.ExecQuery;
  DM.SQL.Transaction.Commit;
  ModalResult:=mrOk;
  DM.Qry_TtnIn.Close; ;
  DM.Qry_TtnIn.Open;
  DM.Qry_TtnIn.Locate('ID',rec,[]);
 except
   on E:Exception do
    begin
//       DM.SQL.Transaction.Rollback;
       MessageBox(Application.Handle, PChar(E.Message + #13#10 + Dm.SQL.SQL.Text),
         PChar(Application.Name), MB_ICONERROR);
    end;
 end;
finally
  if DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.Rollback;
end;

end;

end.
