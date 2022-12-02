unit EditActScaleTs_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TEditActScaleTP_F = class(TForm)
    Label1: TLabel;
    Label7: TLabel;
    E_Ticket: TEdit;
    Bt_Save: TBitBtn;
    Bt_Cancel: TBitBtn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    E_NTs: TEdit;
    E_Weight: TEdit;
    E_Driver: TEdit;
    E_Places: TEdit;
    E_Packing: TComboBox;
    E_User: TEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure GetValues;
  public
    { Public declarations }
  end;

var
  EditActScaleTP_F: TEditActScaleTP_F;

implementation

{$R *.dfm}
uses main,dm_u,scalingtp_u;



procedure TEditActScaleTP_F.FormShow(Sender: TObject);
begin
  GetValues;
end;

procedure TEditActScaleTP_F.GetValues;
begin
  E_Ticket.Text:=ScalingTP_F.Grid_Tp_ToCBX.DataSource.DataSet.FieldByName('N_PART').AsString;
  if not ScalingTP_F.Grid_Act.DataSource.DataSet.FieldByName('ID_TS').IsNull then
    begin
      E_NTs.Text:=ScalingTP_F.Grid_ts.DataSource.DataSet.FieldByName('N_TS').AsString;
      E_Driver.Text:=ScalingTP_F.Grid_ts.DataSource.DataSet.FieldByName('FIO_DRIVER').AsString;
    end;
  E_Weight.Text:=ScalingTP_F.Grid_Act.DataSource.DataSet.FieldByName('BRUTTO').AsString;
  E_Places.Text:=ScalingTP_F.Grid_Act.DataSource.DataSet.FieldByName('PLACES').AsString;
  E_Packing.Text:=ScalingTP_F.Grid_Act.DataSource.DataSet.FieldByName('PACKING').AsString;
  E_User.Text:=ScalingTP_F.Grid_Act.DataSource.DataSet.FieldByName('USERNAME').AsString;
  E_Weight.SetFocus;
end;

end.
