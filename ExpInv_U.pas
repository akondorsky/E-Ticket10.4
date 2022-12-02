unit ExpInv_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGridEh, PropFilerEh, PropStorageEh,
  ImgList, ComCtrls, StdCtrls, Buttons,ComObj,msxml2_tlb,ActiveX,OleServer,
  Menus,DB, DBGridEhGrouping, GridsEh, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, DBAxisGridsEh,IBX.IbQuery, System.ImageList, EhLibVCL, MSXML, MSXMLDOM;

type
  TExpInv_F = class(TForm)
    Panel1: TPanel;
    P_Top: TPanel;
    Splitter1: TSplitter;
    P_grid: TPanel;
    Grid1: TDBGridEh;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    ImageList2: TImageList;
    GB1: TGroupBox;
    D1: TDateTimePicker;
    D2: TDateTimePicker;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Rg1: TRadioGroup;
    SpeedButton2: TSpeedButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Pb1: TProgressBar;
    SD1: TSaveDialog;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Grid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure xmlfaktura_head_create; // формируем тэги шапки фактуры
    procedure xmlfaktura_items_create; // формируем тэги дочерних записей фактуры
  public
    { Public declarations }
  end;
var
  ExpInv_F: TExpInv_F;
  Doc          : IXMLDomDocument2 ;                //
  r            : IXMLDOMElement;                // объявление объектов DOMElement
  Node1, Node2  : IXMLDOMElement;              //                     DOMElement;
  Node3, Node4 : IXMLDOMElement;              //
  txt          : IXMLDOMText;                //                     DOMText
  str          : String;
  Records      :Integer;


implementation
uses dm_u, myutils;
{$R *.dfm}
procedure TExpInv_F.xmlfaktura_head_create;
var
 qry:TIbquery;
begin
  try
      qry:=TIbQuery.Create(Self);
      qry.Database:=Dm.DB;
      qry.SQL.Add(' select sum(total_sum) from faktura_items where id_f_head = :p0 ');

      Node2:= Doc.createElement ( 'Invoice');   // создание DOMElement (таг <>)
      r.appendChild(Node2);                            // добавление элемента <> в корень

      Node3:= Doc.createElement ( 'Number') ; // создание DOMElement (таг <>)
      Node2.appendChild(Node3);                        // добавление элемента <> в <>
      str:= IntToStr(DM.Qry_Exp_Inv.FieldByName('NOMER').AsInteger);   // обращение к полю '' запроса
      txt := Doc.createTextNode(str);                 // создание техстового узла = значению поля
      Node3.appendChild(txt);                           //  присвоение узлу <Invoice> значение
                                                       // техстового узла, переменной str
      Node3 := Doc.createElement ( 'DateIs');
      Node2.appendChild(Node3);                        // добавление элемента <> в <>
      str:= DateToStr(DM.Qry_Exp_Inv.FieldByName('DATE_IS').Asdatetime);
      txt := Doc.createTextNode( str);
      Node3.appendChild(txt);

      Node3 := Doc.createElement ('TotalSum');
      Node2.appendChild(Node3);                        // добавление элемента <> в <>
      if qry.Active  then qry.Close;
      qry.Params[0].AsInteger:=Grid1.DataSource.DataSet.FieldByName('ID').AsInteger;
      qry.Open;
      str:= qry.Fields[0].AsString;
      txt := Doc.createTextNode( str);
      Node3.appendChild(txt);

      Node3:= Doc.createElement ( 'Provider') ; // создание DOMElement (таг <>)
      Node2.appendChild(Node3);                        // добавление элемента <> в <>
      str:= DM.Qry_SVH.FieldByName('SVH_OWNER').AsString;   // обращение к полю '' запроса
      txt := Doc.createTextNode(str);                 // создание техстового узла = значению поля
      Node3.appendChild(txt);                           //  присвоение узлу <Invoice> значение

      Node3:= Doc.createElement ( 'ProviderINN') ; // создание DOMElement (таг <>)
      Node2.appendChild(Node3);                        // добавление элемента <> в <>
      str:= DM.Qry_SVH.FieldByName('INN').AsString;   // обращение к полю '' запроса
      txt := Doc.createTextNode(str);                 // создание техстового узла = значению поля
      Node3.appendChild(txt);                           //  присвоение узлу <Invoice> значение

      Node3:= Doc.createElement ( 'Customer') ; // создание DOMElement (таг <>)
      Node2.appendChild(Node3);                        // добавление элемента <> в <>
      str:= DM.Qry_Exp_Inv.FieldByName('ZAYV').AsString;   // обращение к полю '' запроса
      txt := Doc.createTextNode(str);                 // создание техстового узла = значению поля
      Node3.appendChild(txt);                           //  присвоение узлу <Invoice> значение

      Node3:= Doc.createElement ( 'CustomerINN') ; // создание DOMElement (таг <>)
      Node2.appendChild(Node3);                        // добавление элемента <> в <>
      str:= DM.Qry_Exp_Inv.FieldByName('INN').AsString;   // обращение к полю '' запроса
      txt := Doc.createTextNode(str);                 // создание техстового узла = значению поля
      Node3.appendChild(txt);                           //  присвоение узлу <Invoice> значение
  finally
    qry.Free;
  end;


end;

procedure TExpInv_F.xmlfaktura_items_create; // формируем тэги дочерних записей фактуры
begin
  Node4 := Doc.createElement ( 'Name');
  Node3.appendChild(Node4);                          // добавление элемента <Imem> в <Imems>
  str:= DM.QryExp.FieldByName('USLUGA').AsString;         // формирование данных для тага <Price>
  txt := Doc.createTextNode( str);
  Node4.appendChild(txt);

  Node4 := Doc.createElement ( 'Quantity');
  Node3.appendChild(Node4);                          // добавление элемента <Imem> в <Imems>
  str:= IntToStr(DM.QryExp.FieldByName('KOL').AsInteger);         // формирование данных для тага <Price>
  txt := Doc.createTextNode( str);
  Node4.appendChild(txt);

  Node4 := Doc.createElement ( 'Edizm');
  Node3.appendChild(Node4);                          // добавление элемента <Imem> в <Imems>
  str:= DM.QryExp.FieldByName('EDIZM').AsString;         // формирование данных для тага <Price>
  txt := Doc.createTextNode( str);
  Node4.appendChild(txt);

  Node4 := Doc.createElement ( 'Price');
  Node3.appendChild(Node4);                          // добавление элемента <Imem> в <Imems>
  str:= FloatToStr(DM.QryExp.FieldByName('STOIM').AsCurrency -
                   DM.QryExp.FieldByName('STOIM').AsCurrency*DM.QryExp.FieldByName('DISCOUNT').AsInteger/100 );         // формирование данных для тага <Price>
  txt := Doc.createTextNode( str);
  Node4.appendChild(txt);

  Node4 := Doc.createElement ( 'VAT');
  Node3.appendChild(Node4);                          // добавление элемента <Imem> в <Imems>
  str:= FloatToStr(DM.QryExp.FieldByName('SUM_VAT').AsCurrency);         // формирование данных для тага <Price>
  txt := Doc.createTextNode( str);
  Node4.appendChild(txt);

  Node4 := Doc.createElement ( 'Summa');
  Node3.appendChild(Node4);                          // добавление элемента <Imem> в <Imems>
  str:= FloatToStr(DM.QryExp.FieldByName('TOTAL_SUM').AsCurrency);         // формирование данных для тага <Price>
  txt := Doc.createTextNode( str);
  Node4.appendChild(txt);


end;


procedure TExpInv_F.SpeedButton1Click(Sender: TObject);
var
 qs1,qs2,qs3,FName : String; //  - переменная, имеет значение, соответсвующее запросу
 x: word;
 TempBookmark: TBookMark;
 N_f:Integer;
begin
if not Dm.Qry_Exp_Inv.Active then Exit;
if Dm.Qry_Exp_Inv.FieldByName('ID').IsNull then Exit;

try
 if sd1.Execute then FName:= Sd1.FileName else FName:='invoices'+DateToStr(now);
 Doc:=CreateComObject(Class_DOMDocument) as IXMLDOMDocument2;
 Doc.Set_async(false);                       // установка синхронного режима обрабработки
// Doc.createComment('  <?xml version="1.0" ?> ');
// Doc.createComment('<!--  File Name: Inventory.xml  --> ');
 Doc.LoadXML('<Exchange/>');                   // начальная инициация DOM документа
 r:=Doc.Get_documentElement;                      // получение адреса корневого элемента
 Grid1.Datasource.DataSet.DisableControls;
 case Rg1.ItemIndex of
 0:
  begin
    DM.QryExp.Close;
    DM.QryExp.SQL.Clear;
    DM.QryExp.SQL.Add('select * from faktura_items where id_f_head = :p0');
    Pb1.Min:=0;
    Pb1.Max:=Records;
    DM.Qry_Exp_Inv.First;
    while not DM.Qry_Exp_Inv.Eof do
      begin
        xmlfaktura_head_create;
        Node3 := Doc.createElement ('Services');
        Node2.appendChild(Node3);                           // добавление элемента <> в <>
        DM.QryExp.Close;
        DM.QryExp.Params[0].AsInteger:=DM.Qry_Exp_Inv.FieldByName('ID').asInteger;
        DM.QryExp.Open;
        while not DM.QryExp.Eof do
          begin
            xmlfaktura_items_create;
            DM.QryExp.Next;
          end;
        Pb1.StepIt;
        DM.Qry_Exp_Inv.Next;
      end;
    DM.Sql.Close;
    DM.Sql.SQL.Clear;
    DM.Sql.SQL.Add(format('update faktura_head set exp_flag = 1 where date_is between %s%s%s and %s%s%s ',[char(39),datetostr(D1.Date),char(39),char(39),dateTostr(D2.Date),char(39)]));
    if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
    try
      DM.Sql.ExecQuery;
      DM.Sql.Transaction.Commit;
      Application.MessageBox(Pchar('Выгружено '+IntToStr(Records)+' счетов-фактур.'),'Подтверждение',mb_iconinformation+mb_Ok);
      Doc.save(fname+'.xml');
     except
      DM.Sql.Transaction.Rollback;
      Application.MessageBox('Ошибка записи.Данные не выгружены. ','Внимание!',mb_iconstop+mb_Ok);
     end;
  end;
 1:
  begin
    DM.QryExp.Close;
    DM.QryExp.SQL.Clear;
    DM.QryExp.SQL.Add('select * from faktura_vat where nomer_f = :p0');
    Pb1.Min:=0;
    if Grid1.SelectedRows.Count > 0 then         // выбрали записи и проверели количество
     begin
        Pb1.Max:=Grid1.SelectedRows.Count;
        TempBookmark := Grid1.Datasource.Dataset.GetBookmark; //получили массив записей
        for x := 0 to Grid1.SelectedRows.Count - 1 do
         begin
{           if Grid1.SelectedRows.IndexOf(Items[x]) > -1 then
              begin
                Grid1.Datasource.Dataset.Bookmark := Items[x];
                N_f:=Grid1.Datasource.Dataset.FieldByName('NOMER').AsInteger;

              end;}
         end;
     end
    else
     begin
       Application.MessageBox('Не выбрано ни одной записи.Выгрузка невозможна.','Внимание!',mb_iconwarning+mb_ok );
     end;
 {

                             DBgridEh4.Datasource.Dataset.Bookmark := Items[x];
                            N1:=DBgridEh4.DataSource.DataSet.FieldValues['NUM_REC'];
                            if DBgridEh4.DataSource.DataSet.FieldValues['NOMER_F']= 0 then
         DBgridEh4.Datasource.Dataset.GotoBookmark(TempBookmark);
        DBgridEh4.Datasource.Dataset.FreeBookmark(TempBookmark);
        DBGridEh4.SelectedRows.Clear;
        DBgridEh4.Datasource.Dataset.EnableControls;
}
  end;
 end;
Pb1.Position:=0;
DM.Qry_Exp_Inv.Close;
DM.Qry_Exp_Inv.Open;
DM.Qry_Exp_Inv.Last;
finally
    Grid1.Datasource.Dataset.GotoBookmark(TempBookmark);
    Grid1.Datasource.Dataset.FreeBookmark(TempBookmark);
    Grid1.SelectedRows.Clear;
    Grid1.Datasource.Dataset.EnableControls;
end;
end;

procedure TExpInv_F.SpeedButton2Click(Sender: TObject);

var
 qs0,qs1,qs2,qs3,qs4 : String; //  - переменная, имеет значение, соответсвующее запросу
begin
 qs0:='select count(*) from faktura_head ';
 qs1:=' where cast( date_is as date) between :p0 and :p1 ';
 qs2:='SELECT A.ID, A.NOMER, A.DATE_IS, A.EXP_FLAG, A.PASS_FLAG, A.PLAT_NAME, A.TOTAL_SUM, B.ZAYV, B.INN FROM FAKTURA_HEAD A ';
 qs3:='LEFT JOIN REG_TI B ON A.PLAT_NAME = B.ID ';
 qs4:=' where cast (a.date_is as date) between :p0 and :p1 order by A.nomer ';

 DM.Qry_Exp_Inv.Close;
 DM.Qry_Exp_Inv.SQL.Clear;
 DM.Qry_Exp_Inv.SQL.Add(qs0+qs1);
 DM.Qry_Exp_Inv.Params[0].AsDate:=D1.Date;
 DM.Qry_Exp_Inv.Params[1].AsDate:=D2.Date;
 DM.Qry_Exp_Inv.Open;
 Records:=DM.Qry_Exp_Inv.Fields[0].AsInteger;
 DM.Qry_Exp_Inv.Close;
 DM.Qry_Exp_Inv.SQL.Clear;
 DM.Qry_Exp_Inv.SQL.Add(qs2+qs3+qs4);
 DM.Qry_Exp_Inv.Params[0].AsDate:=D1.Date;
 DM.Qry_Exp_Inv.Params[1].AsDate:=D2.Date;
 DM.Qry_Exp_Inv.Open;
end;

procedure TExpInv_F.Grid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
With Grid1 Do
    if DataSource.Dataset.FieldByName('EXP_FLAG').AsInteger <> 0    then
     begin
        Canvas.Brush.Color := LighterColor(clTeal,40);
        Canvas.Font.Color :=clWhite;
//        canvas.Font.Style:=[fsBold];
     end;
Grid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TExpInv_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DM.Qry_Exp_Inv.Close;
DM.QryExp.Close;
end;

procedure TExpInv_F.FormShow(Sender: TObject);
begin
D1.Date:=Now;
D2.Date:=Now;
end;

end.

