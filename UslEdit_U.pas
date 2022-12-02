unit UslEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,DB;

type
  TUslEdit_F = class(TForm)
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
  UslEdit_F: TUslEdit_F;

implementation

{$R *.dfm}
uses dm_u,main, PriceList_U;

procedure TUslEdit_F.E_KolKeyPress(Sender: TObject; var Key: Char);
var
 ch:Char;
begin
 ch:=CurDecSep;
 if  not(Key in ['0'..'9',ch,#8]) then Key:=#0;
end;

procedure TUslEdit_F.Bt_SaveClick(Sender: TObject);
var
 id_rec,Code:Integer;
 d:double;
begin
try
 try
    id_rec:=DM.Qry_Usl.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update ticket_money set id_usl=:p0,kol_uslug=:p1,days=:p2,username=:p3,dt_action=:p4 where id=:p5 ');
    DM.Sql.Params[0].asInteger:=DM.MT_PriceList.FieldByName('ID').AsInteger;
     if Length(Trim(E_Kol.Text)) = 0  then
        DM.SQL.Params[1].Value:=null
      else
        DM.SQL.Params[1].AsDouble:=StrToFloat(E_Kol.Text);
     if Length(Trim(E_Days.Text)) = 0  then
        DM.SQL.Params[2].Value:=null
      else
        DM.SQL.Params[2].AsInteger:=StrToInt(E_Days.Text);
    DM.SQL.Params[3].AsString:=User;
    DM.Sql.Params[4].AsDateTime:=Now;
    DM.Sql.Params[5].asInteger:=id_rec;
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

procedure TUslEdit_F.E_DaysKeyPress(Sender: TObject; var Key: Char);
var
 ch:Char;
begin
 ch:=CurDecSep;
 if  not(Key in ['0'..'9',ch,#8]) then Key:=#0;
end;

procedure TUslEdit_F.E_UslugaRightButtonClick(Sender: TObject);
begin
  PriceList_F.Caption:=Main_F.Grid_TicketParts.DataSource.DataSet.FieldByName('ZAYV').AsString;
  if PriceList_F.ShowModal=mrOk then
     begin
        E_Usluga.Text:=DM.MT_PriceList.FieldByName('USLUGA').AsString;
        if DM.MT_PriceList.FieldByName('TIME_FLAG').AsInteger=1 then
          begin
            E_Days.Enabled:=True;
          end
         else
          begin
            E_Days.Enabled:=False;
            E_Days.Clear;
          end
     end;

end;

procedure TUslEdit_F.FormShow(Sender: TObject);
begin
     E_Usluga.Text:=Dm.Qry_Usl.FieldByName('USLUGA').asString;
     E_Kol.Text:=Dm.Qry_Usl.FieldByName('KOL_USLUG').asString;;
     E_Days.Text:=Dm.Qry_Usl.FieldByName('DAYS').asString;
     if Dm.Qry_Usl.FieldByName('DAYS').asInteger = 0 then
           E_Days.Enabled:=False else E_Days.Enabled:=True;
end;

end.

