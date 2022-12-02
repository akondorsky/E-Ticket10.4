unit AddActScaleTs_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,DB;

type
  TAddActScaleTs_F = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    E_Ticket: TEdit;
    E_NTs: TEdit;
    E_NTrailer: TEdit;
    E_Weight: TEdit;
    Bt_Save: TBitBtn;
    Bt_Cancel: TBitBtn;
    Bevel1: TBevel;
    procedure FormShow(Sender: TObject);
    procedure E_WeightChange(Sender: TObject);
    procedure Bt_SaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddActScaleTs_F: TAddActScaleTs_F;

implementation

uses ScalingTS_U,dm_u, ScalingTP_U;

{$R *.dfm}

procedure TAddActScaleTs_F.Bt_SaveClick(Sender: TObject);
var
 Code,id_ts:Integer;
 f:Double;
begin
  Val(E_Weight.Text, f, Code);
  if Code <> 0 then
    begin
      Application.MessageBox('Ошибка в поле Вес','Внимание',MB_ICONERROR+mb_Ok);
      ModalResult:=mrNone;
      Exit;
    end;
try
 try
    id_ts:=ScalingTP_F.Grid_TS.DataSource.DataSet.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('insert into ts_scale (id_ts,driver,weight) values ');
    DM.Sql.SQL.Add(' (:p0,:p1,:p2) ');
    DM.Sql.Params[0].AsInteger:=id_ts;
    DM.Sql.Params[1].asString:=ScalingTP_F.Grid_TS.DataSource.DataSet.FieldByName('FIO_DRIVER').asString;
    DM.Sql.Params[2].AsDouble:=StrToFloat(E_Weight.Text);
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    DM.Qry_ActScale_TS.Close;
    DM.Qry_ActScale_TS.Open;
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

procedure TAddActScaleTs_F.E_WeightChange(Sender: TObject);
var
i : integer;
c : char;
s : string;
begin
// результирующая строка:
s := '';
// проходим по всем символам исходной строки:
for i:=1 to Length((Sender as Tedit).Text) do
  begin
    // берем текущий символ:
    c :=(Sender as Tedit).Text[i];
    // Проверяем его на принадлежность к цифрам:
    if (c >= '0') and (c <= '9') then s := s + c;
    // Или знакам 'точка' или 'запятая':
    if c = FormatSettings.DecimalSeparator then s := s + c;
  end;
// Присваеваем полю результирующую строку:
(Sender as Tedit).Text := s;
(Sender as Tedit).SelStart:=Length(s);
(Sender as Tedit).SelLength:=0;
end;

procedure TAddActScaleTs_F.FormShow(Sender: TObject);
begin
  E_Ticket.Text:= ScalingTP_F.Grid_ts.DataSource.DataSet.FieldByName('N_TICKET').AsString;
  E_NTs.Text:= ScalingTP_F.Grid_ts.DataSource.DataSet.FieldByName('N_TS').AsString;
  E_NTrailer.Text:= ScalingTP_F.Grid_ts.DataSource.DataSet.FieldByName('N_Trailer').AsString;
  E_Weight.Clear;
  E_Weight.SetFocus;
end;

end.
