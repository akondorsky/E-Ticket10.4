unit SelectParts_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  StdCtrls, Buttons, GridsEh, DBAxisGridsEh, DBGridEh,DB,IBX.IbQuery, EhLibVCL;

type
  TSelectParts_F = class(TForm)
    Grid_TicketParts: TDBGridEh;
    Bt_Save: TBitBtn;
    procedure Bt_SaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Grid_TicketPartsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
    function CheckPay( IdPart:Integer):Boolean;
  public
    { Public declarations }
  end;

var
  SelectParts_F: TSelectParts_F;

implementation

{$R *.dfm}
uses main,dm_u;

procedure TSelectParts_F.Bt_SaveClick(Sender: TObject);
var
 Bm: TBookMark;
 x,i: Byte;
 mes:String;
 withoutpay_flag:Boolean;
begin
  if Grid_TicketParts.SelectedRows.Count = 0 then
    begin
      Application.MessageBox('Не выбрано ни одного получателя','Предупреждение',MB_ICONSTOP+MB_OK);
      Exit;
    end;
    //SetLength(DynArrayInt, Grid_TicketParts.SelectedRows.Count);
    if Main_F.MyList.Count <> 0 then Main_F.MyList.Clear;
    withoutpay_flag := (Role = 'SYSADMIN') or ((Pos('WITHOUTPAY',Rights) > 0));
    //i:=0;
    for x := 0 to Grid_TicketParts.SelectedRows.Count - 1 do
      begin
        if Grid_TicketParts.SelectedRows.IndexOf(Grid_TicketParts.SelectedRows.Items[x]) > -1 then
            begin
              DM.Qry_SelectParts.Bookmark := Grid_TicketParts.SelectedRows.Items[x];
                  if not CheckPay(DM.Qry_SelectParts.Fields[0].AsInteger) then
                    begin
                      mes:='У части КТ ' + DM.Qry_SelectParts.FieldByName('PART_NOMER').AsString + ' отсутствуют или есть неоплаченные услуги.';
                      Application.MessageBox(PChar(mes),
                            'Внимание',MB_ICONSTOP+MB_OK);
                      if not withoutpay_flag then Exit;
                    end;
                    Main_F.MyList.Add(pointer(DM.Qry_SelectParts.Fields[0].AsInteger));
                    //i:=i+1;
            end; //if
      end; // for

  ModalResult:=mrOk;
end;

function TSelectParts_F.CheckPay(IdPart: Integer): Boolean;
var
 qry:TIBquery;
begin
  Result:=True;

  qry := TIBQuery.Create(Self);
  try
    qry.Database:=dm.DB;
    qry.sql.Add('select count(*) from ticket_money  where id_part = :p0');
    qry.Params[0].AsInteger:=IdPart;
    qry.Open;
    if qry.Fields[0].AsInteger = 0 then
      begin
        Result:=False;
        Exit;
      end;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add('select count(a.id) from ticket_money a where a.id_part = :p0 and checked <> :p1 and a.del_flag <> 1');
    qry.Params[0].AsInteger:= IdPart;
    qry.Params[1].AsString:= 'T';
    qry.Open;
    if qry.Fields[0].AsInteger > 0 then
      begin
        Result:=False;
        Exit;
      end;
  finally
    qry.Free;
  end;

end;

procedure TSelectParts_F.FormShow(Sender: TObject);
begin
  if DM.Qry_SelectParts.Active then DM.Qry_SelectParts.Close;
  DM.Qry_SelectParts.Params[0].AsInteger := Main_F.Grid_Ticket.DataSource.DataSet.FieldByName('ID').AsInteger;
  DM.Qry_SelectParts.Open;
end;

procedure TSelectParts_F.Grid_TicketPartsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if (Sender as TDbGridEh).SelectedRows.CurrentRowSelected then
 begin
 (Sender as TDbGridEh).Canvas.Font.Color := clYellow; // Font color
 (Sender as TDbGridEh).Canvas.Brush.Color := clBlue; // Background color
 (Sender as TDbGridEh).Canvas.FillRect(Rect);
 end;

 (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
