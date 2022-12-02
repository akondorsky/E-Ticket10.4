unit VypuskDolg_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls;

type
  TVypuskDolg_F = class(TForm)
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    Bt_Cancel: TBitBtn;
    Bt_Save: TBitBtn;
    ComboBox1: TComboBox;
    Label2: TLabel;
    D1: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Bt_SaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    // 0 - кредит 1 - гарантийка 2 - начальник
    Osnovanie:Integer;
    Rukovoditel:String;
    Srok:TDateTime;
  end;

var
  VypuskDolg_F: TVypuskDolg_F;

implementation

{$R *.dfm}

procedure TVypuskDolg_F.Bt_SaveClick(Sender: TObject);
begin
  Osnovanie:= RadioGroup1.ItemIndex;
  if ComboBox1.Enabled then Rukovoditel := ComboBox1.Text else Rukovoditel:='';
  Srok:=D1.Date;
end;

procedure TVypuskDolg_F.FormClose(Sender: TObject; var Action: TCloseAction);
  var i:Integer;
begin
  ComboBox1.Enabled:=False;
end;

procedure TVypuskDolg_F.FormShow(Sender: TObject);
begin
 Osnovanie := -1;
 Rukovoditel:='';
 if RadioGroup1.ItemIndex = 1 then ComboBox1.Enabled:=True else ComboBox1.Enabled:=False;
 D1.Date := Now;
 D1.Enabled:=False;
end;

procedure TVypuskDolg_F.RadioGroup1Click(Sender: TObject);
begin
  if ((Sender as TRadioGroup).ItemIndex) = 1 then
    begin
      ComboBox1.Enabled:=True;
      D1.Enabled:=True;
    end
   else
    begin
      ComboBox1.Enabled:=False;
      D1.Enabled:=False;
    end;

end;

end.
