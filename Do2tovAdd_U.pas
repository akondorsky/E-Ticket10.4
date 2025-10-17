unit Do2tovAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, StdCtrls, Mask,
  Buttons, ExtCtrls,Db, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh,
  EhLibVCL,IBX.IBQuery;

type
  TDo2tovAdd_F = class(TForm)
    Panel1: TPanel;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    DbGridEh1: TDBGridEh;
    procedure E_TypeKeyPress(Sender: TObject; var Key: Char);
    procedure E_NameKeyPress(Sender: TObject; var Key: Char);
    procedure E_NgtdKeyPress(Sender: TObject; var Key: Char);
    procedure E_DgtdKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SaveBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DBGridEh1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
    Flag_FillValues:Boolean;
    procedure CopyTov_Out(Id_Do2:Integer);
  public
    { Public declarations }
  end;

var
  Do2tovAdd_F: TDo2tovAdd_F;

implementation

{$R *.dfm}
uses dm_u, editdo_u,myutils;

procedure TDo2tovAdd_F.CopyTov_Out(Id_Do2:Integer);
var
 g32_n:Integer;
 dt_output:TDateTime;
begin
try
 try
  //вычисляем порядковый номер товара по отчету ДО2 - поле G32_N
  if DM.Qry.Active then DM.Qry.Close;
  DM.Qry.Sql.Clear;
  DM.Qry.SQL.Add('select count(*) from do_out where id_do2=:p0');
  DM.Qry.Params[0].AsInteger:=Id_Do2;
  Dm.Qry.Open;
  g32_n:=DM.Qry.Fields[0].AsInteger+1;
  Dm.Qry.Close;
  DM.Qry.Sql.Clear;
  DM.Qry.Sql.Add('select dt from wh_act_out where id_do2=:p0');
  DM.Qry.Params[0].AsInteger:=Id_Do2;
  Dm.Qry.Open;
  dt_output:=DM.Qry.Fields[0].AsDateTime;
  DM.SQL.Close;
  DM.SQL.SQL.Clear;
  DM.SQL.SQL.Add('insert into do_out (id_do2,g31_1,g32,g32_n,g33,g221,g31_2,');
  DM.SQL.SQL.Add('g31_2_p,g42,g35,id_tov_do1,dt_output)  values(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11) ');
  if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction;
  DM.SQL.Params[0].AsInteger:=Id_Do2;
  DM.SQL.Params[1].asString:=DbgridEh1.DataSource.DataSet.FieldByName('G31_1').asString;
  DM.SQL.Params[2].AsInteger:=DbgridEh1.DataSource.DataSet.FieldByName('G32').asInteger;
  DM.SQL.Params[3].AsInteger:=g32_n;
  DM.SQL.Params[4].asString:=DbgridEh1.DataSource.DataSet.FieldByName('G33').asString;
  DM.SQL.Params[5].asString:=DbgridEh1.DataSource.DataSet.FieldByName('G221').asString;
  if Flag_FillValues then
       begin
          DM.SQL.Params[6].asInteger:=DbgridEh1.DataSource.DataSet.FieldByName('G31_2_OST').asInteger;
          DM.SQL.Params[7].asString:=DbgridEh1.DataSource.DataSet.FieldByName('G31_2_P').asString;
          DM.SQL.Params[8].asCurrency:=DbgridEh1.DataSource.DataSet.FieldByName('G42_OST').asCurrency;
          DM.SQL.Params[9].asCurrency:=DbgridEh1.DataSource.DataSet.FieldByName('G35_OST').asCurrency;
       end
     else
       begin
          DM.SQL.Params[6].asInteger:=0;
          DM.SQL.Params[7].asString:='F';
          DM.SQL.Params[8].asCurrency:=0;
          DM.SQL.Params[9].asCurrency:=0;
       end;
  DM.SQL.Params[10].AsInteger:=DbgridEh1.DataSource.DataSet.FieldByName('ID').asInteger;
  DM.SQL.Params[11].AsDateTime:=dt_output;
  DM.SQL.ExecQuery;
  DM.SQL.Transaction.Commit;
 except
        on E:Exception do
          begin
            //DM.SQL.Transaction.Rollback;
            MessageBox(Application.Handle, PChar(E.Message + #13#10 + Dm.SQL.SQL.Text),
            PChar(Application.Name), MB_ICONERROR);
          end;
 {  DM.SQL.Transaction.Rollback;
  Application.MessageBox(Pchar('Ошибка добавления товара '+DbgridEh1.DataSource.DataSet.FieldByName('G31_1').asString),
                               'Внимание!',mb_iconstop+mb_ok );
  Exit;}
 end;
finally
  if DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.RollBack;
end;
end;


procedure TDo2tovAdd_F.E_TypeKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDo2tovAdd_F.E_NameKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDo2tovAdd_F.E_NgtdKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDo2tovAdd_F.E_DgtdKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TDo2tovAdd_F.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
// DM.Qry_Do1Tov.Close;
end;

procedure TDo2tovAdd_F.SaveBtnClick(Sender: TObject);
var
 N_Do1:String;
 D_Do1:TdateTime;
 Tempbookmark:TBookMark;
 x:integer;
 Mes:String;
begin
//проверим выбраны ли записи
     with DBgridEh1.SelectedRows do
      if Count = 0 then
        begin
          Application.MessageBox('Не выбрано ни одной записи.','Внимание!',mb_iconwarning+mb_ok );
          Exit;
        end;   //end with
  // установим флаг автоматического внесения остатков в до2
  Mes:='Внести в таблицу товаров ДО2 данные по остаткам из ДО1?';
  if Application.MessageBox(PChar(Mes),'Внимание!',MB_ICONQUESTION+MB_YESNO) = ID_YES
     then Flag_FillValues:=True else Flag_FillValues:=False;
  try
   DbgridEh1.DataSource.DataSet.DisableControls;
   TempBookmark := DBGridEh1.Datasource.Dataset.GetBookmark;
    with DBgridEh1.SelectedRows do
    begin
     for x := 0 to Count-1 do
      begin
       if IndexOf(Items[x]) > -1 then
          begin
              DBGridEh1.Datasource.Dataset.Bookmark := Items[x];
              CopyTov_Out(EditDo_F.Grid_Do2Hd.DataSource.DataSet.FieldByname('ID').asInteger);
          end;  //end if
      end;   //end for
    end;  //end with
   finally
     DBGridEh1.Datasource.Dataset.GotoBookmark(TempBookmark);
     DBGridEh1.Datasource.Dataset.FreeBookmark(TempBookmark);
     DBGridEh1.SelectedRows.Clear;
     DbgridEh1.DataSource.DataSet.EnableControls;
   end; // end try
//   Application.MessageBox(Pchar('Принято '+IntToStr(x)+#32+'документов'),'Подтверждение',mb_iconinformation+mb_ok);
end;

procedure TDo2tovAdd_F.CancBtnClick(Sender: TObject);
begin
 ModalResult:=mrCancel;
end;

procedure TDo2tovAdd_F.DBGridEh1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
if DBGridEh1.SelectedRows.CurrentRowSelected then
 begin
 DBGridEh1.Canvas.Font.Color := LighterColor(clYellow,30); // Font color
 DBGridEh1.Canvas.Brush.Color := LighterColor(clGreen,30); // Background color
 DBGridEh1.Canvas.FillRect(Rect);
 end;
 DBGridEh1.DefaultDrawDataCell(Rect, Field, State);
end;

procedure TDo2tovAdd_F.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if  DBGridEh1.DataSource.DataSet.FieldByName('G35_OST').AsCurrency = 0 then
 begin
  DBGridEh1.Canvas.Font.Color := clBlack; // Font color
  DBGridEh1.Canvas.Font.Style := [fsStrikeOut]; // Font color
  DBGridEh1.Canvas.Brush.Color := LighterColor(clSilver,30); // Background color
  DBGridEh1.Canvas.FillRect(Rect);
 end;



if  DBGridEh1.SelectedRows.CurrentRowSelected then
 begin
  DBGridEh1.Canvas.Font.Color := clYellow; // Font color
  DBGridEh1.Canvas.Brush.Color := clBlue; // Background color
  DBGridEh1.Canvas.FillRect(Rect);
 end;




  DBGridEh1.DefaultDrawColumnCell(Rect, Datacol,Column, State);

end;

end.
