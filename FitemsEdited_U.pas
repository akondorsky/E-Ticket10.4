unit FitemsEdited_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, StdCtrls, ExtCtrls, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, PropFilerEh,
  PropStorageEh;

type
  TFitemsEdited_F = class(TForm)
    Panel_Top: TPanel;
    Label2: TLabel;
    SetWorkInterval_Btn: TSpeedButton;
    Label3: TLabel;
    WorkDate2: TDateTimePicker;
    WorkDate1: TDateTimePicker;
    Panel_Center: TPanel;
    Grid_Main: TDBGridEh;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SetWorkInterval_BtnClick(Sender: TObject);
  private
    { Private declarations }
    procedure SetFilter;
  public
    { Public declarations }
  end;

var
  FitemsEdited_F: TFitemsEdited_F;

implementation
uses DM_U;
{$R *.dfm}

procedure TFitemsEdited_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.Qry_FItemsEdited.Close;
end;

procedure TFitemsEdited_F.FormShow(Sender: TObject);
begin
  WorkDate1.Date:=Date -1;
  WorkDate2.DateTime:=Date ;
  SetFilter;
end;

procedure TFitemsEdited_F.SetFilter;
begin
  if   DM.Qry_FItemsEdited.Active then  DM.Qry_FItemsEdited.Close;
  DM.Qry_FItemsEdited.Params[0].AsDate:=WorkDate1.Date;
  DM.Qry_FItemsEdited.Params[1].AsDate:=WorkDate2.Date;
  DM.Qry_FItemsEdited.Open;
end;

procedure TFitemsEdited_F.SetWorkInterval_BtnClick(Sender: TObject);
begin
  SetFilter;
end;

end.
