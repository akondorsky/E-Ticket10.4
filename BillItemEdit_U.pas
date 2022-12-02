unit BillItemEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Mask, DBCtrlsEh,DB;

type
  TBillItemEdit_F = class(TForm)
    Label8: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    E_Usluga: TButtonedEdit;
    E_Kol: TDBNumberEditEh;
    E_Stoim: TDBNumberEditEh;
    E_Sum: TDBNumberEditEh;
    procedure E_UslugaRightButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure E_KolChange(Sender: TObject);
    procedure E_StoimChange(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BillItemEdit_F: TBillItemEdit_F;
  Kol,Stoim,Summa:Double;

implementation
uses dm_u,atol25,pricelist_u,main,regti_u;

{$R *.dfm}

procedure TBillItemEdit_F.E_KolChange(Sender: TObject);
begin
  E_Sum.Value:=E_Kol.Value*E_Stoim.Value;
end;

procedure TBillItemEdit_F.E_StoimChange(Sender: TObject);
begin
  E_Sum.Value:=E_Kol.Value*E_Stoim.Value;
end;

procedure TBillItemEdit_F.E_UslugaRightButtonClick(Sender: TObject);
var
 id_owner, id_price:Integer;
begin
  PriceList_F.Caption:='';
 //найти и открыть необходимый прайс лист
 id_owner:=DM.Qry_BillItems.FieldByName('ID_PLAT').AsInteger;
 Regti_F.All_Rec.Execute;
 if Not DM.Qry_RegTi.Locate('ID',id_owner,[]) then
    begin
      Application.MessageBox('Получатель груза не найден.','Критическая ошибка!',MB_ICONERROR+MB_OK);
      Exit;
    end;
 id_price:=DM.Qry_RegTi.FieldByName('ID_PRICE').AsInteger;
 DM.MT_PriceList.Close;
 DM.Qry_PriceList.Close;
 DM.Qry_PriceList.Params[0].AsInteger:=id_price;
 DM.MT_PriceList.Open;
  if PriceList_F.ShowModal=mrOk then
     begin
        E_Usluga.Text:=DM.MT_PriceList.FieldByName('KRNAME').AsString;
     end;
end;

procedure TBillItemEdit_F.FormShow(Sender: TObject);
begin

  E_Usluga.Text:=DM.Qry_BillItems.FieldByName('NAME').AsString;
  Kol:=FItemDataset.FieldByName('KOL').AsFloat;
  E_Kol.Text:=FormatFloat('0.00',Kol);
  Stoim:=FItemDataset.FieldByName('STOIM').AsFloat;
  E_Stoim.Text:=FormatFloat('0.00',Stoim);
  Summa:=FItemDataset.FieldByName('SUMMA').AsFloat ;
  E_Sum.Text:=FormatFloat('0.00',Summa);
end;

procedure TBillItemEdit_F.SaveBtnClick(Sender: TObject);
var
 Id_Rec,i:Integer;
 S:String;
begin
try
  try
   if DM.Qry_BillItems.FieldByName('ID').IsNull then Exit;
   Id_Rec:=DM.Qry_BillItems.FieldByName('ID').AsInteger;
   s:='update bills ';
   s:=s+' set name=:p0, kol=:p1, stoim=:p2 where id =:p3 ';
   Dm.SQL.Close;
   DM.SQL.SQL.Clear;
   DM.SQL.SQL.Add(s);
   if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
   DM.sql.Params[0].AsString:=E_Usluga.Text;
   DM.SQL.Params[1].Value := E_Kol.Value;
   DM.SQL.Params[2].Value:=E_Stoim.Value;
   DM.SQL.Params[3].AsInteger:=Id_Rec;
   DM.sql.ExecQuery;
   DM.sql.Transaction.Commit;
   ModalResult:=mrOk;
   Dm.Refresh_BillItems;
   DM.Qry_Bills.Close;
   DM.Qry_Bills.Open;
    except
      on E: EdatabaseError do
        begin
         DM.Sql.Transaction.Rollback;
         ShowMessage(E.Message);
        end;
   end;
 finally
   if DM.sql.Transaction.InTransaction then DM.sql.Transaction.Rollback;
end;
end;

end.
