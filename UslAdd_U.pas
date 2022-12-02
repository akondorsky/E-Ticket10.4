unit UslAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,DB;

type
  TUslAdd_F = class(TForm)
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Bt_Save: TBitBtn;
    Bt_Cancel: TBitBtn;
    E_Days: TEdit;
    E_Usluga: TButtonedEdit;
    E_Kol: TEdit;
    procedure E_DaysKeyPress(Sender: TObject; var Key: Char);
    procedure E_KolKeyPress(Sender: TObject; var Key: Char);
    procedure E_UslugaRightButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Bt_SaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UslAdd_F: TUslAdd_F;

implementation

{$R *.dfm}
uses dm_u,main, PriceList_U;

procedure TUslAdd_F.E_KolKeyPress(Sender: TObject; var Key: Char);
var
 ch:Char;
begin
 ch:=CurDecSep;
 if  not(Key in ['0'..'9',ch,#8]) then Key:=#0;
end;

procedure TUslAdd_F.Bt_SaveClick(Sender: TObject);
var
 id_ticket,id_part,ts_flag:Integer;
begin
try
 try
    if Length(Trim(E_Usluga.Text))=  0 then
       begin
         Application.MessageBox('Не выбрана услуга','Внимание',MB_ICONSTOP+MB_OK);
         ModalResult:=mrNone;
       end;
    DM.Refresh_Parts;
    id_ticket:=Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('ID').AsInteger;
    id_part:= Main_F.Grid_TicketParts.DataSource.DataSet.FieldByName('ID').AsInteger;
    ts_flag:= Main_F.Grid_TicketParts.DataSource.DataSet.FieldByName('TS_FLAG').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into ticket_money (id_ticket,id_part,id_usl,kol_uslug,days,username,ts_flag) ');
    DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6)    ');
    DM.Sql.Params[0].asInteger:=id_ticket;
    DM.Sql.Params[1].asInteger:=id_part;
    DM.Sql.Params[2].asInteger:=DM.MT_PriceList.FieldByName('ID').AsInteger;
     if Length(Trim(E_Kol.Text)) = 0  then
        DM.SQL.Params[3].Value:=null
      else
        DM.SQL.Params[3].AsDouble:=StrToFloat(E_Kol.Text);
     if Length(Trim(E_Days.Text)) = 0  then
        DM.SQL.Params[4].Value:=null
      else
        DM.SQL.Params[4].AsInteger:=StrToInt(E_Days.Text);
    DM.SQL.Params[5].AsString:=User;
    DM.Sql.Params[6].asInteger:=ts_flag;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    ModalResult:=mrOk;
  except
    on E: EdatabaseError do
      begin
       DM.Sql.Transaction.Rollback;
       ShowMessage(E.Message);
      end;
  end;
finally
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;

end;

procedure TUslAdd_F.E_DaysKeyPress(Sender: TObject; var Key: Char);
var
 ch:Char;
begin
 ch:=CurDecSep;
 if  not(Key in ['0'..'9',ch,#8]) then Key:=#0;
end;

procedure TUslAdd_F.E_UslugaRightButtonClick(Sender: TObject);
begin
  PriceList_F.Caption:=Main_F.Grid_TicketParts.DataSource.DataSet.FieldByName('ZAYV').AsString;
  if PriceList_F.ShowModal=mrOk then
     begin
        E_Usluga.Text:=DM.MT_PriceList.FieldByName('USLUGA').AsString;
        if DM.MT_PriceList.FieldByName('TIME_FLAG').AsInteger=1 then E_Days.Enabled:=True;
     end;

end;

procedure TUslAdd_F.FormShow(Sender: TObject);
begin
 E_Usluga.Clear;
 E_Kol.Clear;
 E_Days.Clear;
 E_Days.Enabled:=False;
end;

end.

