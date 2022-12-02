unit AddPop_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,  Mask, Buttons,Db, ExtCtrls, ComCtrls;

type
  TAddPop_F = class(TForm)
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    Label1: TLabel;
    E_Ngtd: TMaskEdit;
    Label2: TLabel;
    E_CustUser: TComboBox;
    procedure E_DgtdEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure E_TypeKeyPress(Sender: TObject; var Key: Char);
    procedure E_NgtdKeyPress(Sender: TObject; var Key: Char);
    procedure E_DgtdKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SaveBtnClick(Sender: TObject);
    procedure E_NgtdEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  MyGtdMask:String='00000000\/000000\/0000000;1;_';
var
  AddPop_F: TAddPop_F;

implementation

uses dm_u,tdoc_u;

{$R *.dfm}

procedure TAddPop_F.E_DgtdEnter(Sender: TObject);
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

procedure TAddPop_F.FormShow(Sender: TObject);
begin
 E_Ngtd.Text:=Dm.Qry_Pztk.FieldByName('POP').AsString;
 E_CustUser.Text:= Dm.Qry_Pztk.FieldByName('CUST_USER').AsString;
 E_CustUser.Items.Clear;
 Dm.Qry_CustUsers.First;
  while not DM.Qry_CustUsers.Eof do
    begin
      E_CustUser.Items.Add(DM.Qry_CustUsers.FieldByName('USERNAME').AsString);
      DM.Qry_CustUsers.Next;
    end;
 CancBtn.SetFocus;
end;

procedure TAddPop_F.E_TypeKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TAddPop_F.E_NgtdEnter(Sender: TObject);
begin
  if Length(E_Ngtd.Text) = 0  then E_Ngtd.EditMask:='\1\0\0\1\2\0\1\0\/000000\/0000000;1;_';

end;

procedure TAddPop_F.E_NgtdKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TAddPop_F.E_DgtdKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TAddPop_F.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  E_ngtd.EditMask:='';
end;

procedure TAddPop_F.SaveBtnClick(Sender: TObject);
var
 rec_ticket,id:Integer;
begin
try
 try
  id:=Dm.Qry_Pztk.FieldByName('ID').AsInteger;
  rec_ticket:=Dm.Qry_Pztk.FieldByName('ID_TICKET').AsInteger;
  DM.SQL.Close;
  Dm.SQL.SQL.Clear;
  DM.SQL.SQL.Add('update ticket set pop=:p0,cust_user=:p1 where id = :p2 ');
  if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction;
  DM.SQL.params[0].AsString:=E_Ngtd.Text;
  DM.SQL.params[1].AsString:=E_CustUser.Text;
  DM.SQL.params[2].Value:=rec_ticket;
  DM.SQL.ExecQuery;
  DM.SQL.Transaction.Commit;
  ModalResult:=mrOk;
  DM.Qry_Pztk.Close; ;
  DM.Qry_Pztk.Open;
  DM.Qry_Pztk.Locate('ID',id,[]);
 except
   on E:Exception do
    begin
       //DM.SQL.Transaction.Rollback;
       MessageBox(Application.Handle, PChar(E.Message + #13#10 + Dm.SQL.SQL.Text),
         PChar(Application.Name), MB_ICONERROR);
    end;
 end;
finally
  if DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.Rollback;
end;

end;

end.
