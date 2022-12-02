unit UslNote_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons,DB;

type
  TUslNote_F = class(TForm)
    Panel1: TPanel;
    Bt_Cancel: TBitBtn;
    Bt_Save: TBitBtn;
    Ch_ShowNote: TCheckBox;
    Note: TMemo;
    procedure Bt_SaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UslNote_F: TUslNote_F;

implementation

{$R *.dfm}
uses
  DM_U,Regti_U;


procedure TUslNote_F.Bt_SaveClick(Sender: TObject);
var
  id_zayv:Integer;
  pms:TMemoryStream;
begin
try
 try
    id_zayv:=DM.Qry_RegTi.FieldByName('ID').AsInteger;
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    // изменяем статус заказчика
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add('update reg_ti set discount_note = :p0, show_discount_note = :p1 where id = :p2 ');
    pms:=TMemoryStream.Create;
    Note.Lines.SaveToStream(pms);
    Dm.Sql.Params[0].LoadFromStream(pms);
    if Ch_ShowNote.Checked then
        DM.Sql.Params[1].AsInteger:=1
       else
        DM.Sql.Params[1].AsInteger:=0;
    DM.Sql.Params[2].asInteger:=id_zayv;
    DM.Sql.ExecQuery;
    DM.Sql.Transaction.Commit;
    ModalResult:=mrOk;
    DM.Qry_RegTi.Close;
    DM.Qry_RegTi.Open;
    DM.Qry_RegTi.Locate('ID',id_zayv,[]);
  except
    on E: EdatabaseError do
      begin
       ShowMessage(E.Message);
      end;
  end;
finally
  pms.Free;
  if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;

end;

procedure TUslNote_F.FormShow(Sender: TObject);
var
 ms:TStream;
begin
  try
   if DM.Qry_RegTi.FieldByName('SHOW_DISCOUNT_NOTE').AsInteger = 1 then
      Ch_ShowNote.Checked:=True
     else
      Ch_ShowNote.Checked:=False;
   ms:=DM.Qry_Regti.CreateBlobStream(DM.Qry_RegTi.FieldByName('DISCOUNT_NOTE'),bmRead);
   Note.Lines.LoadFromStream(ms);
  finally
    ms.Free;
  end;
// {делаем нужную запись активной, например, методом Locate.}
//  Stream := qrProba.CreateBlobStream(qrProba.FieldByName('BlobF'), bmRead);
//  try
//    Image.Picture.Bitmap.LoadFromStream(Stream); {если это картинка}
//    {Memo.Lines.LoadFromStream(Stream); - если это текст}

end;

end.
