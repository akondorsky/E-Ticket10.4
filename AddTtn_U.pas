unit AddTtn_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,  Mask, Buttons,Db, ExtCtrls, ComCtrls;

type
  TAddTtn_F = class(TForm)
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
  AddTtn_F: TAddTtn_F;

implementation

uses dm_u,tdoc_u;

{$R *.dfm}

procedure TAddTtn_F.E_DgtdEnter(Sender: TObject);
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

procedure TAddTtn_F.FormShow(Sender: TObject);
begin
 E_Ngtd.Clear;
// E_ngtd.EditMask:=MyGtdmask;
 E_Dgtd.Date:=Date;
 E_Ngtd.SetFocus;
end;

procedure TAddTtn_F.E_TypeKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TAddTtn_F.E_NgtdKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TAddTtn_F.E_DgtdKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TAddTtn_F.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
// E_ngtd.EditMask:='';
end;

procedure TAddTtn_F.SaveBtnClick(Sender: TObject);
var
 n:Integer;
begin
try
 try
  DM.SQL.Close;
  Dm.SQL.SQL.Clear;
  DM.SQL.SQL.Add('insert into ttn_in (ndoc,ddoc,id_ticket) ');
  DM.SQL.SQL.Add('values (:p0,:p1,:p2)');
  if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction;
  DM.SQL.params[0].AsString:=E_Ngtd.Text;
  DM.SQL.params[1].AsDate:=E_Dgtd.Date;
  DM.SQL.params[2].Value:=DM.Qry_Pztk.FieldByName('ID_TICKET').AsInteger;;
  DM.SQL.ExecQuery;
  DM.SQL.Transaction.Commit;
  ModalResult:=mrOk;
  DM.Qry_TtnIn.Close; ;
  DM.Qry_TtnIn.Open;
  DM.Qry_TtnIn.Last;
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
