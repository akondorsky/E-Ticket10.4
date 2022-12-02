unit Prices_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGridEh, Buttons, DBGridEhGrouping,
  GridsEh, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh, ActnList,
  Menus, IBX.IbQuery,Db, System.Actions, EhLibVCL;

type
  TPrices_F = class(TForm)
    DBGridEh1: TDBGridEh;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    PopupMenu1: TPopupMenu;
    ActionList1: TActionList;
    A_ShowPrice: TAction;
    N1: TMenuItem;
    A_NewPrice: TAction;
    N2: TMenuItem;
    A_EditPrice: TAction;
    N3: TMenuItem;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure A_ShowPriceExecute(Sender: TObject);
    procedure A_NewPriceExecute(Sender: TObject);
    procedure A_NewPriceUpdate(Sender: TObject);
    procedure A_EditPriceExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Prices_F: TPrices_F;

implementation

{$R *.dfm}
uses dm_u, PriceList_U, PricesEdit_U;

procedure TPrices_F.A_EditPriceExecute(Sender: TObject);
begin
  PricesEdit_F.ShowModal;
end;

procedure TPrices_F.A_NewPriceExecute(Sender: TObject);
var
 cur_id, new_id,k:Integer;
 qry:TIbQuery;
begin
  try
    try
      cur_id:=DBGridEh1.DataSource.DataSet.FieldByName('ID').AsInteger;
      qry:=TIbQuery.Create(Self);
      qry.DataBase:=DM.DB;
      qry.Transaction:=DM.IBTR;
      qry.SQL.Add('select max(id) from prices ');
      qry.Open;
      new_id:=qry.Fields[0].AsInteger+1;
      if not DM.sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction ;
      // создаем описание нового прайс листа
      DM.Sql.Close;
      DM.Sql.SQL.Clear;
      DM.Sql.SQL.Add(' insert into prices (id,name,start_date) values (:p0,:p1,:p2) ');
      DM.Sql.Params[0].AsInteger:=new_id;
      DM.Sql.Params[1].AsString:='Новый';
      DM.Sql.Params[2].AsDate:=Date;
      Dm.Sql.ExecQuery;
      //копируем данные из стандартного прайс-листа
      k:=new_id * 1000;
      DM.Sql.Close;
      DM.Sql.SQL.Clear;
      DM.Sql.SQL.Add(' insert into price_lists (id,id_parent,id_type_price,stoim,rights,name,npp_num,npp_str,order_flag,vat,time_flag,edizm,wh_flag ) ' );
      DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12) ');
      if qry.Active then qry.Close;
      qry.SQL.Clear;
      qry.SQL.Add(' select * from price_lists where id_type_price = :p0 ');
      qry.Params[0].AsInteger:=cur_id;
      qry.Open;
      qry.First;
      while not qry.eof do
        begin
          DM.Sql.Params[0].AsInteger:=qry.FieldByName('ID').AsInteger + k;
          if qry.FieldByName('ID_PARENT').AsInteger = 0 then
             DM.Sql.Params[1].AsInteger:=qry.FieldByName('ID_PARENT').AsInteger
            else
             DM.Sql.Params[1].AsInteger:=qry.FieldByName('ID_PARENT').AsInteger+k;
          DM.Sql.Params[2].AsInteger:=new_id;
          DM.Sql.Params[3].AsVariant:=qry.FieldByName('STOIM').AsVariant;
          DM.Sql.Params[4].AsString:=qry.FieldByName('RIGHTS').AsString;
          DM.Sql.Params[5].AsString:=qry.FieldByName('NAME').AsString;
          DM.Sql.Params[6].AsInteger:=qry.FieldByName('NPP_NUM').AsInteger;
          DM.Sql.Params[7].AsString:=qry.FieldByName('NPP_STR').AsString;
          DM.Sql.Params[8].AsInteger:=qry.FieldByName('ORDER_FLAG').AsInteger;
          DM.Sql.Params[9].AsVariant:=qry.FieldByName('VAT').AsVariant;
          DM.Sql.Params[10].AsInteger:=qry.FieldByName('TIME_FLAG').AsInteger;
          DM.Sql.Params[11].AsString:=qry.FieldByName('EDIZM').AsString;
          DM.Sql.Params[12].AsInteger:=qry.FieldByName('WH_FLAG').AsInteger;
          DM.Sql.ExecQuery;
          DM.Sql.Close;
          qry.Next;
        end;
      Dm.Sql.Transaction.Commit;
      DBGridEh1.DataSource.DataSet.Close;
      DBGridEh1.DataSource.DataSet.Open;
      DBGridEh1.DataSource.DataSet.Locate('ID',new_id,[]);
    except
    on E: EdatabaseError do
      begin
        DM.Sql.Transaction.Rollback;
        ShowMessage(E.Message);
      end;
    end;
  finally
     if DM.sql.Transaction.InTransaction then Dm.Sql.Transaction.Rollback;
    qry.free;
  end;
end;

procedure TPrices_F.A_NewPriceUpdate(Sender: TObject);
begin
   if DBGridEh1.DataSource.DataSet.FieldByName('IS_STD').AsInteger = 1 then
       (Sender as TAction).Enabled:=True
      else
       (Sender as TAction).Enabled:=False;
end;

procedure TPrices_F.A_ShowPriceExecute(Sender: TObject);
var
 id_price:Integer;
begin
   id_price:=DBGridEh1.DataSource.DataSet.FieldByName('ID').AsInteger;
   DM.MT_PriceList.Close;
   DM.Qry_PriceList.Close;
   DM.Qry_PriceList.Params[0].AsInteger:=id_price;
   DM.MT_PriceList.Open;
   PriceList_F.Caption:=DBGridEh1.DataSource.DataSet.FieldByName('NAME').AsString;
   PriceList_F.ShowModal;
end;

procedure TPrices_F.DBGridEh1DblClick(Sender: TObject);
begin
  ModalResult:=mrOk;
end;

procedure TPrices_F.SpeedButton1Click(Sender: TObject);
 var
  Id_rec:Integer;
begin
   Id_Rec:=DM.Qry_PriceType.FieldByName('ID').asInteger;
   //if DM.Qry_PriceType.Transaction.InTransaction then DM.Qry_PriceType.Transaction.Commit;
   DM.Qry_PriceType.Close;
   DM.Qry_PriceType.Open;
   DM.Qry_PriceType.Locate('ID',Id_Rec,[]);
end;

end.
