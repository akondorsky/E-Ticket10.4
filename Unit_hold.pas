unit Unit_hold;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGridEh, Buttons, DBGridEhGrouping,
  GridsEh;

type
  TFormHold = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHold: TFormHold;

implementation

{$R *.dfm}
uses
 unit_data;

procedure TFormHold.DBGridEh1DblClick(Sender: TObject);
begin
 FormHold.ModalResult:=mrOk;
end;

procedure TFormHold.SpeedButton1Click(Sender: TObject);
 var
  Id_rec:Integer;
begin
   if DM.IBTW1.InTransaction then DM.IBTW1.Commit;
   Id_Rec:=DM.IBDt_Hold.FieldByName('ID_NUM').asInteger;
   DM.IBDt_Hold.Close;
   DM.IBDt_Hold.Open;
   DM.IBDt_Hold.Locate('ID_NUM',Id_Rec,[]);
end;

procedure TFormHold.FormShow(Sender: TObject);
begin
  SpeedButton1Click(SpeedButton1);
end;

end.
