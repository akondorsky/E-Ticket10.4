unit ClosedCbxPlaces_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, StdCtrls, Buttons,DB,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh;

type
  TClosedCbxPlaces_F = class(TForm)
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
  ClosedCbxPlaces_F: TClosedCbxPlaces_F;

implementation

{$R *.dfm}
uses dm_u;
procedure TClosedCbxPlaces_F.Bt_SaveClick(Sender: TObject);
begin
  if Grid_Place.SelectedRows.Count  = 0 then
    begin
      Application.MessageBox('�� ������� �� ������ �����!','��������',MB_ICONWARNING+MB_OK);
      ModalResult:=mrNone;
    end
   else
    begin
     SelectedPlaces:=GetSelectedPlaces;
     ModalResult:=mrOk;
    end;
end;

procedure TClosedCbxPlaces_F.FormShow(Sender: TObject);
var
 r:Integer;
begin
  SelectedPlaces:='';
  if not DM.Qry_ClosedCbx.Active then DM.Qry_ClosedCbx.Open;

  r:=DM.Qry_ClosedCbx.FieldByName('ID').AsInteger;
  DM.Qry_ClosedCbx.Close;
  DM.Qry_ClosedCbx.Open;
  DM.Qry_ClosedCbx.Locate('ID',r,[]);
end;

function TClosedCbxPlaces_F.GetSelectedPlaces: String;
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
              s:=s+Grid_Place.Datasource.Dataset.FieldByName('NUM_PLACE').AsString+';';
            end;  //end if
        end;   //end for
     end;  //end with
Result:=s;
end;

procedure TClosedCbxPlaces_F.Grid_PlaceDblClick(Sender: TObject);
begin
//ModalResult:=mrOk;
end;

procedure TClosedCbxPlaces_F.Grid_PlaceDrawColumnCell(Sender: TObject;
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

end;

end.
