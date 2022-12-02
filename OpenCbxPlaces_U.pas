unit OpenCbxPlaces_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, StdCtrls, Buttons,DB,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh;

type
  TOpenCbxPlaces_F = class(TForm)
    Grid_Place: TDBGridEh;
    Bt_Save: TBitBtn;
    procedure Grid_PlaceDblClick(Sender: TObject);
    procedure Bt_SaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Grid_PlaceDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
    function GetSelectedPlaces:String;
  public
    { Public declarations }
    SelectedPlaces:String;
  end;

var
  OpenCbxPlaces_F: TOpenCbxPlaces_F;

implementation

{$R *.dfm}
uses dm_u,main,myutils;
procedure TOpenCbxPlaces_F.Bt_SaveClick(Sender: TObject);
begin
  if Grid_Place.SelectedRows.Count  = 0 then
    begin
      Application.MessageBox('Не выбрано ни одного места!','Внимание',MB_ICONWARNING+MB_OK);
      ModalResult:=mrNone;
    end
   else
    begin
     SelectedPlaces:=GetSelectedPlaces;
     ModalResult:=mrOk;
    end;
end;

procedure TOpenCbxPlaces_F.FormShow(Sender: TObject);
var
 r:Integer;
begin
  if not  DM.Qry_OpenCbx.Active then DM.Qry_OpenCbx.Open;
  SelectedPlaces:='';
  r:=DM.Qry_OpenCbx.FieldByName('ID').AsInteger;
  DM.Qry_OpenCbx.Close;
  DM.Qry_OpenCbx.Open;
  DM.Qry_OpenCbx.Locate('ID',r,[]);
end;

function TOpenCbxPlaces_F.GetSelectedPlaces: String;
var
 x:Word;
 TempBookMark:TBookMark;
 s:String;
begin
Result:='';
TempBookMark:=Grid_Place.DataSource.DataSet.GetBookmark;
     with Grid_Place.SelectedRows do
      begin
       for x := 0 to Count-1 do
        begin
          if IndexOf(Items[x]) > -1 then
            begin
              Grid_Place.Datasource.Dataset.Bookmark := Items[x];
              s:=s+Grid_Place.Datasource.Dataset.FieldByName('NUM_PARK').AsString+';';
            end;  //end if
        end;   //end for
     end;  //end with
Result:=s;
end;

procedure TOpenCbxPlaces_F.Grid_PlaceDblClick(Sender: TObject);
begin
//ModalResult:=mrOk;
end;

procedure TOpenCbxPlaces_F.Grid_PlaceDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (Sender as TDBgridEh).SelectedRows.CurrentRowSelected then
   begin
   (Sender as TDBgridEh).Canvas.Font.Color := clYellow; // Font color
   (Sender as TDBgridEh).Canvas.Brush.Color := clBlue; // Background color
   (Sender as TDBgridEh).Canvas.FillRect(Rect);
   end;
 (Sender as TDBgridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if (Sender as TDBgridEh).DataSource.DataSet.FieldByName('COND_PARK').AsInteger = PLACE_OCCUPIED then
     begin
        (Sender as TDBGridEh).Canvas.Brush.Color := LighterColor(clRed,20);
        (Sender as TDBGridEh).Canvas.Font.Color :=clBlack;
     end;
  if (Sender as TDBgridEh).DataSource.DataSet.FieldByName('COND_PARK').AsInteger = PLACE_MOVE_TO_ZTK then
     begin
        (Sender as TDBGridEh).Canvas.Brush.Color := clYellow;
        (Sender as TDBGridEh).Canvas.Font.Color :=clBlack;
     end;
  if (Sender as TDBgridEh).DataSource.DataSet.FieldByName('COND_PARK').AsInteger = PLACE_DISABLE then
     begin
        (Sender as TDBGridEh).Canvas.Brush.Color := clBlack;
        (Sender as TDBGridEh).Canvas.Font.Color :=clWhite;
     end;
 (Sender as TDBGridEh).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

end.
