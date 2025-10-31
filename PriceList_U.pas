unit PriceList_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, PropFilerEh, PropStorageEh, Menus,
  StdCtrls, Mask, DBCtrlsEh, DBLookupEh, ExtCtrls, ToolWin, ComCtrls,
  ImgList, DBGridEhGrouping, GridsEh, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  DBAxisGridsEh,DB, System.ImageList, EhLibVCL;


type
  TPriceList_F = class(TForm)
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    ToolBar1: TToolBar;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    ImageList1: TImageList;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ImageList2: TImageList;
    procedure FormShow(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     Parent_F:Boolean;
  end;

var
  PriceList_F: TPriceList_F;


implementation

{$R *.dfm}
uses dm_u,myutils, PriceListEdit_U, PriceListAdd_U,Main;

procedure TPriceList_F.FormShow(Sender: TObject);
begin
  Parent_F:=False;
end;

procedure TPriceList_F.N1Click(Sender: TObject);
begin
  Parent_f:=True;
  PriceListAdd_F.ShowModal;
end;

procedure TPriceList_F.N2Click(Sender: TObject);
begin
  Parent_f:=False;
  PriceListAdd_F.ShowModal;

end;

procedure TPriceList_F.ToolButton2Click(Sender: TObject);
 var
  Id_Rec:Integer;
begin
  Id_Rec:=DM.MT_PriceList.FieldByName('ID').AsInteger;
  DM.MT_PriceList.Close;
  DM.MT_PriceList.Open;
  DM.MT_PriceList.Locate('ID',Id_Rec,[]);

end;

procedure TPriceList_F.N4Click(Sender: TObject);
begin
  PriceListEdit_F.ShowModal;
end;

procedure TPriceList_F.N6Click(Sender: TObject);
var
 Mes:String;
 rec,idts:Integer;
begin
   if not(Role = 'SYSADMIN')  then Exit;

   if DM.MT_PriceList.FieldByName('ID').isNull then Exit;
   rec:=DM.MT_PriceList.FieldByName('ID').AsInteger;
   Mes:=' Удалить запись? ' ;
   if  Application.MessageBox(PChar(Mes),'Подтверждение',MB_ICONWARNING+MB_YESNO) <> ID_YES
       then  Exit;
try
  try

    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction; //start tran
     DM.Sql.Close;
     DM.Sql.SQL.Clear;
     DM.Sql.sql.Add(' update price_lists set del_flag = 1  where id=:p0  ');
     DM.Sql.Params[0].AsInteger:=rec;
     DM.Sql.ExecQuery;
     DM.Sql.Transaction.Commit;
     DM.MT_PriceList.Close;
     DM.MT_PriceList.Open;
  except
    on E: EdatabaseError do
      begin
       ShowMessage(E.Message);
      end;
  end;
finally
    if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

procedure TPriceList_F.ToolButton4Click(Sender: TObject);
begin
 DM.MT_PriceList.TreeList.FullCollapse;
end;

procedure TPriceList_F.ToolButton5Click(Sender: TObject);
begin
 DM.MT_PriceList.TreeList.FullExpand;
end;

procedure TPriceList_F.DBGridEh1DblClick(Sender: TObject);
begin
  ModalResult:=mrOK
end;

procedure TPriceList_F.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
   if (DbgridEh1.DataSource.DataSet.FieldByName('ID_PARENT').AsInteger <> 0) and
       (Trim(DbGridEh1.DataSource.DataSet.FieldByName('TYPE_NUMERING').AsString) = 'B') then
     begin
        DbgridEh1.Canvas.Brush.Color := LighterColor(clYellow,20);
        DbgridEh1.Canvas.Font.Color := clRed;
     end;
   if (DbgridEh1.DataSource.DataSet.FieldByName('STOIM').IsNull) then
     begin
        DbgridEh1.Canvas.Font.Style := [fsBold];
     end;

  if (gdSelected in State) then
    begin
      with DBGridEh1.Canvas do
        begin
            begin
              Brush.Color := clBlue;
              Font.Color := clWhite;
              FillRect(Rect);
            end;
        end;
    end;

  DbGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);



end;

end.
