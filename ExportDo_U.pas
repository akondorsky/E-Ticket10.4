unit ExportDo_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Mask, Db, ExtCtrls,FileCtrl, ImgList,
  IBX.IbQuery,StrUtils, System.ImageList;

type
  TExportDo_F = class(TForm)
    Label1: TLabel;
    Pb1: TProgressBar;
    BitBtn1: TBitBtn;
    Ch_ExDo: TCheckBox;
    Btn_SelDir: TButtonedEdit;
    ImageList1: TImageList;
    procedure BitBtn1Click(Sender: TObject);
    procedure Btn_SelDirRightButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
    DirPath:String;     // путь выгрузки
    procedure Save2Do1_XML(N_Do1,F_Path,F_Name:String;Id_do1,Svh:Integer; D_Do1: TDateTime;ExDo1_Flag:Boolean);
    procedure Save2Do2_XML(N_Do2, F_Path, F_Name: String;Id_Do2,Id_Do1,Id_actout:Integer;D_Do2:TDateTime);


  public
    { Public declarations }

  end;

var
  ExportDo_F: TExportDo_F;

implementation

{$R *.dfm}
uses dm_u, Do1_u,myutils;


procedure TExportDo_F.BitBtn1Click(Sender: TObject);
var
 N_Do1,N_Do2:String;
 extfilename:String;
 D_Do1,D_Do2:TdateTime;
 Tempbookmark:TBookMark;
 x:word;
 Rec,Do2_Statn,Do2_id,Id_Svh,Do1_id,Id_actout:Integer;

begin
 if Length(Trim(DirPath)) = 0 then
    begin
     Application.MessageBox('Папка не указана.Продолжить невозможно.','Внимание',mb_iconstop+mb_Ok);
     exit;
    end;
  try
    //задизаблили кнопку
    Self.Enabled:=False;
    Application.ProcessMessages;

    case Do1_F.TipDo of
      1 : begin
             try
                Dm.Qry_DoHead.DisableControls;
                 try
                       Pb1.Max:=Do1_F.GridDo1.SelectedRows.Count;       //
                       TempBookmark := DM.Qry_DoHead.GetBookmark;
                          for x := 0 to Do1_F.GridDo1.SelectedRows.Count - 1 do
                            begin
                              if Do1_F.GridDo1.SelectedRows.IndexOf(Do1_F.GridDo1.SelectedRows.Items[x]) > -1 then
                                  begin
                                    DM.Qry_DoHead.Bookmark := Do1_F.GridDo1.SelectedRows.Items[x];
                                    Rec:=DM.Qry_DoHead.FieldByName('ID').asInteger;
                                    N_Do1:=DM.Qry_DoHead.FieldByName('G073').asString;
                                    D_Do1:=DM.Qry_DoHead.FieldByName('G072').asDateTime;
                                    Id_Svh:=DM.Qry_DoHead.FieldByName('ID_SVH').asInteger;
                                    Do1_id:=DM.Qry_DoHead.FieldByName('ID').asInteger;
                                    if Ch_ExDo.Checked then
                                       begin
                                         extfilename:='exdo1-'+N_Do1+'-'+DelNotLetter(DateToStr(D_Do1))+'.xml';
                                         Save2Do1_XML(N_Do1,DirPath,extfilename,Do1_id,Id_Svh,D_Do1,Ch_ExDo.Checked);
                                       end
                                     else
                                       begin
                                         extfilename:='do1-'+N_Do1+'-'+DelNotLetter(DateToStr(D_Do1))+'.xml';
                                         Save2Do1_XML(N_Do1,DirPath,extfilename,Do1_id,Id_Svh,D_Do1,Ch_ExDo.Checked);
                                       end;
                                    end;
                              Pb1.StepBy(1);
                              Application.ProcessMessages();
                              end; //if
                        ShowMessage('Выполнено');
                except
                    Application.MessageBox('Ошибка записи данных','Внимание!',mb_OK+mb_iconstop);
                    exit;
                end; // try . .except
            finally
                Dm.Qry_DoHead.EnableControls;
                Dm.Qry_DoHead.GotoBookmark(TempBookmark);
                Dm.Qry_DoHead.FreeBookmark(TempBookmark);
                Do1_F.GridDo1.SelectedRows.Clear;
             end;
          end;  // case of 1
      2 : begin
          ////////// здесь кусок куда для выгрузки нескольких ДО2
           try
                Dm.Qry_Do2Sheet.DisableControls;
                 try
                       Pb1.Max:=Do1_F.Grid_Do2Sheet.SelectedRows.Count;       //
                       TempBookmark := DM.Qry_Do2Sheet.GetBookmark;
                          for x := 0 to Do1_F.Grid_Do2Sheet.SelectedRows.Count - 1 do
                            begin
                              if Do1_F.Grid_Do2Sheet.SelectedRows.IndexOf(Do1_F.Grid_Do2Sheet.SelectedRows.Items[x]) > -1 then
                                  begin
                                    DM.Qry_Do2Sheet.Bookmark := Do1_F.Grid_Do2Sheet.SelectedRows.Items[x];
                                    Rec:=DM.Qry_Do2Sheet.FieldByName('ID').asInteger;
                                    Do1_id:=DM.Qry_Do2Sheet.FieldByName('ID_DO1').asInteger;
                                    Id_actout:=DM.Qry_Do2Sheet.FieldByName('ID_ACT_OUT').AsInteger;
                                    N_Do2:=DM.Qry_Do2Sheet.FieldByName('DO2_STATN').asString;
                                    D_Do2:=DM.Qry_Do2Sheet.FieldByName('G072').asDateTime;
                                    Id_Svh:=DM.Qry_Do2Sheet.FieldByName('ID_SVH').asInteger;
                                    extfilename:='do2-'+N_Do2+'-'+DelNotLetter(DateToStr(D_Do2))+'.xml';
                                    Save2Do2_XML(N_Do2,DirPath,extfilename, Rec,Do1_Id,Id_actout,D_Do2);
                                    Pb1.StepBy(1);
                                    Application.ProcessMessages();
                                  end;
                              end; //if
                        ShowMessage('Выполнено');
                except
                    Application.MessageBox('Ошибка записи данных','Внимание!',mb_OK+mb_iconstop);
                    exit;
                end; // try . .except
            finally
                Dm.Qry_Do2Sheet.EnableControls;
                Dm.Qry_Do2Sheet.GotoBookmark(TempBookmark);
                Dm.Qry_Do2Sheet.FreeBookmark(TempBookmark);
                Do1_F.Grid_Do2Sheet.SelectedRows.Clear;
             end;

          end;  // case of 2
     end; //case


    finally   // finally proc
      Self.Enabled:=true;
      Pb1.Position:=0;
    end;
  //////////// кусок кода для одной записи ДО2
 {                try
                    Rec:=DM.Qry_Do2Sheet.FieldByName('ID').asInteger;
                    Do1_id:=DM.Qry_Do2Sheet.FieldByName('ID_DO1').asInteger;
                    Id_actout:=DM.Qry_Do2Sheet.FieldByName('ID_ACT_OUT').AsInteger;
                    N_Do2:=DM.Qry_Do2Sheet.FieldByName('DO2_STATN').asString;
                    D_Do2:=DM.Qry_Do2Sheet.FieldByName('G072').asDateTime;
                    Id_Svh:=DM.Qry_Do2Sheet.FieldByName('ID_SVH').asInteger;
                    extfilename:='do2-'+N_Do2+'-'+DelNotLetter(DateToStr(D_Do2))+'.xml';
                    Save2Do2_XML(N_Do2,DirPath,extfilename, Rec,Do1_Id,Id_actout,D_Do2);
                    ShowMessage('Выполнено');
                except
                    Application.MessageBox('Ошибка записи данных','Внимание!',mb_OK+mb_iconstop);
                    exit;
                end; // try . .except}

 end; //proc


procedure TExportDo_F.Btn_SelDirRightButtonClick(Sender: TObject);
begin
   if SelectDirectory('Выберите папку для выгрузки:', '', DirPath) then
      begin
         DirPath:=DirPath+'\';
         Btn_SelDir.Text:=DirPath;
      end;

end;

procedure TExportDo_F.FormShow(Sender: TObject);
begin
  (Sender as TForm).Caption:=format('Выгрузка ДО%s для передачи в таможню',[IntToStr(Do1_F.TipDo)]);
end;

procedure TExportDo_F.Save2Do1_XML(N_Do1,F_Path,F_Name:String;Id_do1,Svh:Integer; D_Do1: TDateTime;ExDo1_Flag:Boolean);
const
 Empty_date:String='';
var
  i:Integer;
  Xml: TStringList;
  s,vtrans,num_ts:string;
  Year, Month, Day: Word;
  Guid:TGUID;
  DocId,ReportDate,ReportTime:String;
  TotalPlaces:Double;
  Qry_tov,Qry_td,Qry_mism,Qry_svh:TIbquery;
  Ds_Td:TDataSource;
  Kind,Stage:String;
begin
 try
 Qry_td:= TibQuery.Create(self);
 Ds_td:= TDataSource.Create(self);
 Qry_tov:=TIbQuery.Create(Self);
 Qry_svh:=TIbQuery.Create(Self);
 Qry_svh.Database:=Dm.DB;

 //получили вид транспорта
 DM.Qry.Close;
 DM.Qry.SQL.Clear;
 DM.Qry.SQL.Add(format('select first 1 * from do_trans where id_do1 = %s',[IntToStr(Id_do1)] ));
 DM.Qry.Open;
 vtrans:=DM.Qry.FieldByName('VIDTRANS').AsString;
 num_ts:=DM.Qry.FieldByName('NTRANS').AsString;
 //получили свидетельство и данные владельца
 Qry_svh.SQL.Add('select * from svh where id = :p0');
 Qry_svh.Params[0].AsInteger:=Svh;
 Qry_svh.Open;
 //
 DM.Qry.Close;
 DM.Qry.SQL.Clear;
 DM.Qry.SQL.Add(format('select sum(g31_2) from do_tovar where id_do1 = %s',[IntToStr(Id_Do1)] ));
 DM.Qry.Open;
 TotalPlaces:=DM.Qry.Fields[0].AsFloat; // кол-во грузовых мест
 //открываем источник До1
 DM.Qry.Close;
 DM.Qry.SQL.Clear;
 DM.Qry.SQL.Add('select a.* from do_head_vw a ');
 DM.Qry.SQL.Add(format(' where a.id = %s ',[IntToStr(Id_do1)] ));
 DM.Qry.Open;
 // здесь и далее получаем вычисляемые значения элементов ХМЛ документа
// if CreateGUID(Guid) = S_Ok then  DocId:=GUIDToString(Guid);
// Delete(DocId,1,1); // delete '{'
// Delete(DocId,Length(DocId),1); // delete '}'
 ReportDate:=DateToIso(D_Do1);
 ReportTime:=TimeStringtoIso(TimeToStr(D_Do1));

 // окончили вычисления
  // Create new document with a rootnode called "Root"
   Xml := TStringList.Create;
   Xml. Add ('<?xml version="1.0" encoding="windows-1251"?>' );
   Xml. Add ('<ED_Container xmlns="urn:customs.ru:Information:ExchangeDocuments:ED_Container:5.13.1" DocumentModeID="1006058E">');
//   Xml. Add (format('	<cat_ru:DocumentID>%s</cat_ru:DocumentID>',[DocId]));
   Xml. Add ('	<ContainerDoc>');
   Xml. Add ('		<DocBody>');
   Xml. Add ('       <do1r:DO1Report xmlns:do1r="urn:customs.ru:Information:WarehouseDocuments:DO1Report:5.18.0" xmlns:catWH_ru="urn:customs.ru:Information:WarehouseDocuments:WarehouseCommonAggregateTypesCust:5.18.0" ');
   Xml. Add ('       xmlns:cat_ru="urn:customs.ru:CommonAggregateTypes:5.10.0" xmlns:clt_ru="urn:customs.ru:CommonLeafTypes:5.10.0" DocumentModeID="1008001E">');
   Xml. Add (format(' <cat_ru:DocumentID>%s</cat_ru:DocumentID>',[DM.Qry.FieldByName('ID').AsString]));
   Xml. Add (format(' <catWH_ru:MainTransportModeCode>%s</catWH_ru:MainTransportModeCode>',[vtrans]));
   Xml. Add (format(' <catWH_ru:ReportNumber>%s</catWH_ru:ReportNumber>',[N_Do1]));
   Xml. Add (format(' <catWH_ru:ReportDate>%s</catWH_ru:ReportDate>',[ReportDate]));
   Xml. Add (format(' <catWH_ru:ReportTime>%s</catWH_ru:ReportTime>',[ReportTime]));
   Xml. Add ('		    <catWH_ru:CustomRegistration/>');
   Xml. Add ('			  <catWH_ru:WarehouseOwner>');
   Xml. Add (format('		<cat_ru:OrganizationName>%s</cat_ru:OrganizationName>',[XMLCorrect(Qry_svh.FieldByName('SVH_OWNER').AsString)]));
   Xml. Add (format('		<cat_ru:OrganizationLanguage>%s</cat_ru:OrganizationLanguage>',['ru']));
   Xml. Add ('          <cat_ru:RFOrganizationFeatures>');
   Xml. Add ('            <cat_ru:OGRN>1063915002964</cat_ru:OGRN>');
   Xml. Add ('            <cat_ru:INN>3915447015</cat_ru:INN>');
   Xml. Add ('            <cat_ru:KPP>391501001</cat_ru:KPP>');
   Xml. Add ('          </cat_ru:RFOrganizationFeatures>');
   Xml. Add ('	 		    <catWH_ru:Address>');
   Xml. Add (format('      <cat_ru:PostalCode>%s</cat_ru:PostalCode>',[XMLCorrect(Qry_svh.FieldByName('SVH_POST').AsString)]) );
   Xml. Add ('			       <cat_ru:CountryCode>ru</cat_ru:CountryCode>');
   Xml. Add ('			       <cat_ru:CountryName>Россия</cat_ru:CountryName>');
   Xml. Add (format('      <cat_ru:Region>%s</cat_ru:Region>',[XMLCorrect(Qry_svh.FieldByName('SVH_REGION').AsString)]) );
   Xml. Add (format('      <cat_ru:City>%s</cat_ru:City>',[XMLCorrect(Qry_svh.FieldByName('SVH_CITY').AsString)]) );
   Xml. Add (format('	     <cat_ru:StreetHouse>%s</cat_ru:StreetHouse>',[XMLCorrect(Qry_svh.FieldByName('SVH_STREET').AsString+' '+Qry_svh.FieldByName('SVH_HOUSE').AsString)]));
   s:=Qry_svh.FieldByName('SVH_POST').AsString+' '+
      Qry_svh.FieldByName('SVH_REGION').AsString+' '+
      Qry_svh.FieldByName('SVH_CITY').AsString+' '+
      Qry_svh.FieldByName('SVH_STREET').AsString+' '+
      Qry_svh.FieldByName('SVH_HOUSE').AsString;
   Xml. Add (format('		   <catWH_ru:AddressLine>%s</catWH_ru:AddressLine>',[XMLCorrect(s)]));
   Xml. Add ('			    </catWH_ru:Address>');
   Xml. Add ('          <catWH_ru:WarehouseLicense>');
   Xml. Add ('             <catWH_ru:CertificateKind>lic_Certificate</catWH_ru:CertificateKind>');
   Xml. Add (format('      <catWH_ru:CertificateNumber>%s</catWH_ru:CertificateNumber>',[Qry_svh.FieldByName('LIC_NUM').AsString]));
   Xml. Add (format('      <catWH_ru:CertificateDate>%s</catWH_ru:CertificateDate>',[DateToIso(Qry_svh.FieldByName('LIC_DATE').AsDateTime)]));
   Xml. Add ('          </catWH_ru:WarehouseLicense>');
   Xml. Add ('          <catWH_ru:WarehousePerson>');
   //проверка на доб.лист
   if not ExDo1_Flag then
     begin
       Xml. Add (format('      <cat_ru:PersonSurname>%s</cat_ru:PersonSurname>',[PersonLastName(DM.Qry.FieldByName('G14FAM').AsString)]));
       Xml. Add (format('      <cat_ru:PersonName>%s</cat_ru:PersonName>',[PersonName(DM.Qry.FieldByName('G14FAM').AsString)]));
       Xml. Add (format('      <cat_ru:PersonPost>%s</cat_ru:PersonPost>',[DM.Qry.FieldByName('G14DOLJ').AsString]));
     end
    else
     begin
       DM.Qry_ActCom.Last;
       Xml. Add (format('      <cat_ru:PersonSurname>%s</cat_ru:PersonSurname>',[PersonLastName(DM.Qry_ActCom.FieldByName('OPERATOR_FAM').AsString)]));
       Xml. Add (format('      <cat_ru:PersonName>%s</cat_ru:PersonName>',[PersonName(DM.Qry_ActCom.FieldByName('OPERATOR_FAM').AsString)]));
       Xml. Add (format('      <cat_ru:PersonPost>%s</cat_ru:PersonPost>',[DM.Qry_ActCom.FieldByName('OPERATOR_DOLJ').AsString]));
     end;

   Xml. Add ('          </catWH_ru:WarehousePerson>');
   Xml. Add ('				</catWH_ru:WarehouseOwner>');
   Xml. Add ('				<do1r:Carrier>');
   Xml. Add (format('      <cat_ru:OrganizationName>%s</cat_ru:OrganizationName>',[XMLCorrect(DM.Qry.FieldByName('C_NAME').AsString)]));
   Xml. Add (format('      <catWH_ru:CountryCode>%s</catWH_ru:CountryCode>',[DM.Qry.FieldByName('C_COUNTRY').AsString]));
   Xml. Add ('             <catWH_ru:Address>');
   Xml. Add (format('        <catWH_ru:AddressLine>%s</catWH_ru:AddressLine>',[DM.Qry.FieldByName('C_ADDR').AsString]));
   Xml. Add ('             </catWH_ru:Address>');
   Xml. Add ('             <catWH_ru:CarrierPerson>');
   Xml. Add (format('        <cat_ru:PersonSurname>%s</cat_ru:PersonSurname>',[PersonLastName(DM.Qry.FieldByName('C_FAM').AsString)]));
   Xml. Add (format('        <cat_ru:PersonName>%s</cat_ru:PersonName>',[PersonName(DM.Qry.FieldByName('C_FAM').AsString)]));
   Xml. Add ('             </catWH_ru:CarrierPerson>');
   Xml. Add ('				</do1r:Carrier>');
   Xml. Add ('				<do1r:Transports>');
   Xml. Add (format('      <catWH_ru:TransportModeCode>%s</catWH_ru:TransportModeCode>',[vtrans]));
   Xml. Add (format('      <catWH_ru:TransportIdentifier>%s</catWH_ru:TransportIdentifier>',[XMLCorrect(Num_ts)]));
   Xml. Add ('				</do1r:Transports>');
   // товары
   Xml. Add ('        <do1r:GoodsShipment>');
   Xml. Add (format('      <do1r:TotalPackageNumber>%s</do1r:TotalPackageNumber>',[FloatToStr(TotalPlaces)]));
   Xml. Add ('             <do1r:MPOSign>0</do1r:MPOSign>');
   // организуем цикл перебора трансп. док-в со связанными товарами
   //создаем набор и источник данных для документов
   Qry_td.Database:=DM.DB;
   Qry_td.SQL.Add(format('select * from  do_trand where id_do1=%s ',[IntToStr(Id_do1)] ));
   Qry_td.SQL.Add(format(' and (type_doc like %s%s%s or type_doc like %s%s%s) order by n_td ',[#39,'020%',#39,#39,'20%',#39] )); // с кода 020  or 20 начинаются трансп. документы
   try
     Qry_td.Open
    except
     Application.MessageBox('Ошибка открытия таблицы транспортных документов','Внимание',MB_OK+MB_ICONSTOP);
   end;
   Ds_Td.DataSet:=Qry_td;
   Qry_tov.Database:=DM.DB;
   Qry_tov.DataSource:=Ds_Td;
   Qry_tov.SQL.Add(format('select * from  do_tovar where id_do1=%s and n_ttn=:n_td order by g32',[IntToStr(Id_Do1)] ));
   try
     Qry_tov.Open;
    except
     Application.MessageBox('Ошибка открытия таблицы товаров','Внимание',MB_OK+MB_ICONSTOP);
   end;
   while not Qry_td.Eof do
    begin
    Xml. Add ('        <do1r:TransportDocs>');
    Xml. Add (format('       <cat_ru:PrDocumentName>%s</cat_ru:PrDocumentName>',[Qry_td.FieldByName('NAME').AsString]));
    Xml. Add (format('       <cat_ru:PrDocumentNumber>%s</cat_ru:PrDocumentNumber>',[Qry_td.FieldByName('NDOC').AsString]));
    Xml. Add (format('       <cat_ru:PrDocumentDate>%s</cat_ru:PrDocumentDate>',[DateToIso(Qry_td.FieldByName('DDoc').AsdateTime)]));
    Xml. Add (format('       <catWH_ru:PresentedDocumentModeCode>%s</catWH_ru:PresentedDocumentModeCode>',[Qry_td.FieldByName('TYPE_DOC').AsString]));
    Xml. Add ('              <catWH_ru:WhCommDoc>');
    Xml. Add ('                <catWH_ru:Consignor>');
    Xml. Add (format('            <catWH_ru:CountryCode>%s</catWH_ru:CountryCode>',[DM.Qry.FieldByName('F_COUNTRY').AsString]));
    Xml. Add (format('            <catWH_ru:OrganizationName>%s</catWH_ru:OrganizationName>',[XMLCorrect(DM.Qry.FieldByName('F_NAME').AsString)]));
    Xml. Add ('                   <catWH_ru:Address>');
    Xml. Add (format('                <catWH_ru:AddressLine>%s</catWH_ru:AddressLine>',[XMLCorrect(DM.Qry.FieldByName('F_ADDRESS').AsString)]));
    Xml. Add ('                   </catWH_ru:Address>');
    Xml. Add ('                </catWH_ru:Consignor>');
    Xml. Add ('                <catWH_ru:Consignee>');
    Xml. Add (format('            <cat_ru:OrganizationName>%s</cat_ru:OrganizationName>',[XMLCorrect(DM.Qry.FieldByName('R_NAME').AsString)]));
    Xml. Add ('                   <cat_ru:RFOrganizationFeatures>');
    Xml. Add (format('              <cat_ru:OGRN>%s</cat_ru:OGRN>',[DM.Qry.FieldByName('R_OGRN').AsString]));
    Xml. Add (format('              <cat_ru:INN>%s</cat_ru:INN>',[DM.Qry.FieldByName('R_INN').AsString]));
    Xml. Add (format('              <cat_ru:KPP>%s</cat_ru:KPP>',[DM.Qry.FieldByName('R_KPP').AsString]));
    Xml. Add ('                   </cat_ru:RFOrganizationFeatures>');
    Xml. Add ('                   <catWH_ru:Address>');
    Xml. Add (format('                <catWH_ru:AddressLine>%s</catWH_ru:AddressLine>',[XMLCorrect(DM.Qry.FieldByName('R_ADDRESS').AsString)]));
    Xml. Add ('                   </catWH_ru:Address>');
    Xml. Add ('                </catWH_ru:Consignee>');
    Xml. Add ('              </catWH_ru:WhCommDoc>');
  while not Qry_tov.Eof do
   begin
    Xml. Add ('              <catWH_ru:Goods>');
    Xml. Add (format('           <catWH_ru:GoodsNumber>%s</catWH_ru:GoodsNumber>',[Qry_tov.FieldByName('G32').AsString]));
    Xml. Add (format('           <catWH_ru:GoodsTNVEDCode>%s</catWH_ru:GoodsTNVEDCode>',[Qry_tov.FieldByName('G33').AsString]));
    Xml. Add (format('           <catWH_ru:InvoiceCost>%s</catWH_ru:InvoiceCost>',[Qry_tov.FieldByName('G42').AsString]));
    Xml. Add (format('           <catWH_ru:CurrencyCode>%s</catWH_ru:CurrencyCode>',[Qry_tov.FieldByName('G221').AsString]));
    Xml. Add ('                  <catWH_ru:GoodsDescriptionFull>');
    Xml. Add (format('                 <catWH_ru:GoodsDescription>%s</catWH_ru:GoodsDescription>',[XMLCorrect(Qry_tov.FieldByName('G31_1').AsString)]));
    Xml. Add ('                  </catWH_ru:GoodsDescriptionFull>');
    Xml. Add ('                  <catWH_ru:CargoPlace>');
    Xml. Add (format('              <catWH_ru:PlaceNumber>%s</catWH_ru:PlaceNumber>',[Qry_tov.FieldByName('G31_2').AsString]));
    Xml. Add (format('             <catWH_ru:PlaceDescription>%s</catWH_ru:PlaceDescription> ',[XMLCorrect(Qry_tov.FieldByName('PRIM').AsString)]));
    Xml. Add ('                  </catWH_ru:CargoPlace>');
    Xml. Add ('                  <catWH_ru:BruttoVolQuant>');
    Xml. Add (format('              <catWH_ru:GoodsQuantity>%s</catWH_ru:GoodsQuantity>',[StringReplace(Qry_tov.FieldByName('G35').AsString,',','.',[])]));
    Xml. Add (format('              <catWH_ru:MeasureUnitQualifierName>%s</catWH_ru:MeasureUnitQualifierName>',['КГ']));
    Xml. Add (format('              <catWH_ru:MeasureUnitQualifierCode>%s</catWH_ru:MeasureUnitQualifierCode>',['166']));
    Xml. Add ('                  </catWH_ru:BruttoVolQuant>');
    Xml. Add (format('           <catWH_ru:GoodsWHNumber>%s%s%s</catWH_ru:GoodsWHNumber>',[Qry_tov.FieldByName('SVH_NUM').AsString,'/',Qry_tov.FieldByName('G32').AsString]));
//    Xml. Add (format('           <catWH_ru:GoodsWHNumber>%s</catWH_ru:GoodsWHNumber>',[N_Do1+'/'+DM.Qry.FieldByName('GN').AsString]));
    Xml. Add ('                  <catWH_ru:KeepingPlace>');
    Xml. Add (format('              <catWH_ru:Area>%s</catWH_ru:Area>',[Qry_tov.FieldByName('SVH_PLACE').AsString]));
    Xml. Add ('                     <catWH_ru:WithoutUnloadIndicator>0</catWH_ru:WithoutUnloadIndicator>');
    Xml. Add ('                     <catWH_ru:Comments/>');
//    Xml. Add (format('              <catWH_ru:Comments xml:space="preserve">%s</catWH_ru:Comments>',[Qry_tov.FieldByName('PRIM').AsString]));
    Xml. Add ('                  </catWH_ru:KeepingPlace>');

    Xml. Add (format('           <catWH_ru:AcceptDateTime>%s</catWH_ru:AcceptDateTime>',[DateToIso(Qry_tov.FieldByName('DATE_IN').AsDateTime)+'T'+TimeStringtoIso(TimeToStr(Qry_tov.FieldByName('TIME_IN').AsDateTime))]));
///////////////////////////////////////////////////////////////////////////
    Xml. Add ('              </catWH_ru:Goods>');
         Qry_tov.Next;
       end;
    Xml. Add ('        </do1r:TransportDocs>');
     Qry_Td.Next;
    end;
   DM.Qry.Close;
   DM.Qry.SQL.Clear;
   DM.Qry.SQL.Add(format('select * from  do_cust where id_do1 = %s ',[IntToStr(Id_Do1)] ));
   try
     DM.Qry.Open
    except
     Application.MessageBox('Ошибка открытия таблицы таможенных документов','Внимание',MB_OK+MB_ICONSTOP);
   end;
   while not DM.Qry.Eof do
    begin
    Xml. Add ('        <do1r:CustomsDocs>');
    Xml. Add (format('    <cat_ru:PrDocumentName>%s</cat_ru:PrDocumentName>',[DM.Qry.FieldByName('NAME').AsString]));
    Xml. Add (format('    <cat_ru:PrDocumentNumber>%s</cat_ru:PrDocumentNumber>',[DM.Qry.FieldByName('N_DOC').AsString]));
    Xml. Add (format('    <cat_ru:PrDocumentDate>%s</cat_ru:PrDocumentDate>',[DateToIso(DM.Qry.FieldByName('D_DOC').AsDateTime)]));
    Xml. Add (format('    <catWH_ru:PresentedDocumentModeCode>%s</catWH_ru:PresentedDocumentModeCode>',[DM.Qry.FieldByName('TYPE_DOC').AsString]));
    Xml. Add ('        </do1r:CustomsDocs>');
       DM.Qry.Next;
    end;
 // коммерческие документы в коде начинающиеся с 04
   DM.Qry.Close;
   DM.Qry.SQL.Clear;
   DM.Qry.SQL.Add(format('select * from  do_trand where id_do1 = %s ',[IntToStr(Id_Do1)] ));
   DM.Qry.SQL.Add(format(' and type_doc like %s%s%s order by n_td',[#39,'04%',#39] )); // с кода 04 начинаются трансп. документы
   try
     DM.Qry.Open
    except
     Application.MessageBox('Ошибка открытия таблицы коммерческих документов','Внимание',MB_OK+MB_ICONSTOP);
   end;
   while not DM.Qry.Eof do
    begin
    Xml. Add ('        <do1r:CommerceDocs>');
    Xml. Add (format('    <cat_ru:PrDocumentName>%s</cat_ru:PrDocumentName>',[DM.Qry.FieldByName('NAME').AsString]));
    Xml. Add (format('    <cat_ru:PrDocumentNumber>%s</cat_ru:PrDocumentNumber>',[DM.Qry.FieldByName('NDOC').AsString]));
    Xml. Add (format('    <cat_ru:PrDocumentDate>%s</cat_ru:PrDocumentDate>',[DateToIso(DM.Qry.FieldByName('DDOC').AsDateTime)]));
    Xml. Add (format('    <catWH_ru:PresentedDocumentModeCode>%s</catWH_ru:PresentedDocumentModeCode>',[DM.Qry.FieldByName('TYPE_DOC').AsString]));
    Xml. Add ('        </do1r:CommerceDocs>');
       DM.Qry.Next;
    end;
    DM.Qry.Close;
    // конец коммерч. док-в

   Xml. Add ('        </do1r:GoodsShipment>');
   Xml. Add ('			</do1r:DO1Report>');
   Xml. Add ('		</DocBody>');
   Xml. Add ('	</ContainerDoc>');
   Xml. Add ('</ED_Container>');
   try
     XML.SaveToFile(F_Path+F_Name);
    except
     Application.MessageBox('Ошибка записи файла','Внимание',MB_OK+MB_ICONSTOP);
   end;
  finally
    Qry_svh.Free;
    Qry_Td.Free;
    Qry_Tov.Free;
    Ds_Td.Free;
    XML.Free;
  end;
end; // proc

procedure TExportDo_F.Save2Do2_XML(N_Do2, F_Path, F_Name: String;Id_Do2,Id_Do1,Id_actout:Integer;D_Do2:TDateTime);
const
 Empty_date:String='';
var
  i:Integer;
  Xml: TStringList;
  s,vtrans,num_ts:string;
  Year, Month, Day: Word;
  Guid:TGUID;
  DocId,ReportDate,ReportTime,CarCntryName:String;
  TotalPlaces:Double;
  ConsName,ConsAddress,ConsInn,ConsKpp,ConsOgrn:String ;
  Qry_svh:TIbquery;
begin
 try
 Qry_svh:=TIbQuery.Create(Self);
 Qry_svh.Database:=Dm.DB;
 //получили вид транспорта
 DM.Qry.Close;
 DM.Qry.SQL.Clear;
 DM.Qry.SQL.Add(format('select first 1 vidtrans,ntrans from do_trans where id_do1 = %s',[IntToStr(Id_Do1)] ));
 DM.Qry.Open;
 vtrans:=DM.Qry.FieldByName('VIDTRANS').AsString;
 num_ts:=DM.Qry.FieldByName('NTRANS').AsString;
 // здесь и далее получаем вычисляемые значения элементов ХМЛ документа
// if CreateGUID(Guid) = S_Ok then  DocId:=GUIDToString(Guid);
// Delete(DocId,1,1); // delete '{'
// Delete(DocId,Length(DocId),1); // delete '}'
 ReportDate:=DateToIso(D_Do2);
 ReportTime:=TimeStringtoIso(TimeToStr(D_Do2));
 //открываем источник До2
 DM.Qry.Close;
 DM.Qry.SQL.Clear;
 DM.Qry.SQL.Add('select a.*,c.r_name,c.r_address,c.r_inn,c.r_kpp,c.r_ogrn,c.id_svh as svh ');
 DM.Qry.SQL.Add(format(' from do_outhd a left join do_head_vw c on a.id_do1=c.id where a.id = %s ',[IntToStr(Id_Do2)]));
 DM.Qry.Open;
 ConsName:=DM.Qry.FieldByName('R_NAME').AsString;
 ConsAddress:=DM.Qry.FieldByName('R_ADDRESS').AsString;
 ConsInn:=DM.Qry.FieldByName('R_INN').AsString;
 ConsKpp:=DM.Qry.FieldByName('R_KPP').AsString;
 ConsOgrn:=DM.Qry.FieldByName('R_OGRN').AsString;
 //получили свидетельство и данные владельца
 Qry_svh.SQL.Add('select * from svh where id = :p0');
 Qry_svh.Params[0].AsInteger:=DM.Qry.FieldByName('SVH').AsInteger;;
 Qry_svh.Open;
  // Create new document with a rootnode called "Root"
   Xml := TStringList.Create;
   Xml. Add ('<?xml version="1.0" encoding="windows-1251"?>' );
   Xml. Add ('<ED_Container xmlns="urn:customs.ru:Information:ExchangeDocuments:ED_Container:5.13.1" DocumentModeID="1006058E">');
//   Xml. Add (format('	<cat_ru:DocumentID>%s</cat_ru:DocumentID>',[DocId]));
   Xml. Add ('	<ContainerDoc>');
   Xml. Add ('		<DocBody>');
   Xml. Add ('			<do2r:DO2Report ');
   Xml. Add ('        xmlns:catWH_ru="urn:customs.ru:Information:WarehouseDocuments:WarehouseCommonAggregateTypesCust:5.18.0"  xmlns:do2r="urn:customs.ru:Information:WarehouseDocuments:DO2Report:5.19.0"');
   Xml. Add ('        xmlns:cat_ru="urn:customs.ru:CommonAggregateTypes:5.10.0" DocumentModeID="1008009E">');
   Xml. Add (format(' <cat_ru:DocumentID>%s</cat_ru:DocumentID>',[DM.Qry.FieldByName('ID').AsString]));
   Xml. Add (format(' <catWH_ru:MainTransportModeCode>%s</catWH_ru:MainTransportModeCode>',[vtrans]));
   Xml. Add (format(' <catWH_ru:ReportNumber>%s</catWH_ru:ReportNumber>',[N_Do2]));
   Xml. Add (format(' <catWH_ru:ReportDate>%s</catWH_ru:ReportDate>',[ReportDate]));
   Xml. Add (format(' <catWH_ru:ReportTime>%s</catWH_ru:ReportTime>',[ReportTime]));
   Xml. Add ('		    <catWH_ru:CustomRegistration/>');

   Xml. Add ('			  <catWH_ru:WarehouseOwner>');
   Xml. Add (format('		<cat_ru:OrganizationName>%s</cat_ru:OrganizationName>',[XMLCorrect(Qry_svh.FieldByName('SVH_OWNER').AsString)]));
   Xml. Add ('          <cat_ru:RFOrganizationFeatures>');
   Xml. Add (format('       <cat_ru:OGRN>%s</cat_ru:OGRN>',[XMLCorrect(Qry_svh.FieldByName('OGRN').AsString)]));
   Xml. Add (format('       <cat_ru:INN>%s</cat_ru:INN>',[XMLCorrect(Qry_svh.FieldByName('INN').AsString)]));
   Xml. Add (format('       <cat_ru:KPP>%s</cat_ru:KPP>',[XMLCorrect(Qry_svh.FieldByName('KPP').AsString)]));
   Xml. Add ('          </cat_ru:RFOrganizationFeatures>');
   // находим адрес одной строкой
   s:=Qry_svh.FieldByName('SVH_POST').AsString+' '+
      Qry_svh.FieldByName('SVH_REGION').AsString+' '+
      Qry_svh.FieldByName('SVH_CITY').AsString+' '+
      Qry_svh.FieldByName('SVH_STREET').AsString+' '+
      Qry_svh.FieldByName('SVH_HOUSE').AsString;
   Xml. Add ('	 		    <catWH_ru:Address>');
   Xml. Add (format('		   <catWH_ru:AddressLine>%s</catWH_ru:AddressLine>',[XMLCorrect(s)]));
   Xml. Add ('			    </catWH_ru:Address>');
   Xml. Add ('          <catWH_ru:WarehouseLicense>');
   Xml. Add ('             <catWH_ru:CertificateKind>lic_Certificate</catWH_ru:CertificateKind>');
   Xml. Add (format('      <catWH_ru:CertificateNumber>%s</catWH_ru:CertificateNumber>',[Qry_svh.FieldByName('LIC_NUM').AsString]));
   Xml. Add (format('      <catWH_ru:CertificateDate>%s</catWH_ru:CertificateDate>',[DateToIso(Qry_svh.FieldByName('LIC_DATE').AsDateTime)]));
   Xml. Add ('          </catWH_ru:WarehouseLicense>');
   Xml. Add ('          <catWH_ru:WarehousePerson>');
   Xml. Add (format('      <cat_ru:PersonSurname>%s</cat_ru:PersonSurname>',[PersonLastName(DM.Qry.FieldByName('G02_2').AsString)]));
   Xml. Add (format('      <cat_ru:PersonName>%s</cat_ru:PersonName>',[PersonName(DM.Qry.FieldByName('G02_2').AsString)]));
   Xml. Add (format('      <cat_ru:PersonPost>%s</cat_ru:PersonPost>',[DM.Qry.FieldByName('G02_3').AsString]));
   Xml. Add ('          </catWH_ru:WarehousePerson>');
   Xml. Add ('				</catWH_ru:WarehouseOwner>');

   // получим сведения о перевозчике и транспортных средствах
   Dm.Qry.Close;
   DM.Qry.SQL.Clear;
   DM.Qry.Sql.Add(' select  b.*,c.* from do_head_vw b left join do_trans c on b.id = c.id_do1   ');
   DM.Qry.SQL.Add(' where b.id=:p0 ');
   DM.Qry.Params[0].AsInteger:=Id_Do1;
   DM.Qry.Open;
   Xml. Add ('        <do2r:Carrier>');
   Xml. Add (format('            <cat_ru:OrganizationName>%s</cat_ru:OrganizationName>',[XMLCorrect(DM.Qry.FieldByName('C_NAME').asstring)]));
   Xml. Add (format('            <catWH_ru:CountryCode>%s</catWH_ru:CountryCode>',[DM.Qry.FieldByName('C_COUNTRY').AsString]));
   Xml. Add ('           <catWH_ru:Address>');
   Xml. Add (format('                <catWH_ru:AddressLine>%s</catWH_ru:AddressLine>',[XMLCorrect(DM.Qry.FieldByName('C_ADDR').AsString)]));
   Xml. Add ('            </catWH_ru:Address>');
   Xml. Add ('            <catWH_ru:CarrierPerson>');
   Xml. Add (format('               <cat_ru:PersonSurname>%s</cat_ru:PersonSurname>',[PersonLastName(DM.Qry.FieldByName('C_FAM').AsString)]));
   Xml. Add (format('               <cat_ru:PersonName>%s</cat_ru:PersonName>',[PersonName(DM.Qry.FieldByName('C_FAM').AsString)]));
   Xml. Add ('            </catWH_ru:CarrierPerson>');
   Xml. Add ('         </do2r:Carrier>');

   Xml. Add ('         <do2r:DOTransports>');
   Xml. Add (format('            <catWH_ru:TransportModeCode>%s</catWH_ru:TransportModeCode>',[Dm.Qry.FieldByName('VIDTRANS').AsString]));
   Xml. Add (format('            <catWH_ru:TransportIdentifier>%s</catWH_ru:TransportIdentifier>',[DM.Qry.FieldByName('NTRANS').AsString]));
   Xml. Add ('        </do2r:DOTransports>');

  // товары
   Xml. Add ('        <do2r:GoodsShipment>');
   Xml. Add ('              <do2r:MPOSign>false</do2r:MPOSign>');
   Xml. Add ('              <do2r:ReasonKind>1</do2r:ReasonKind>');
   // организуем цикл перебора там. док-в
   DM.Qry.Close;
   DM.Qry.SQL.Clear;
   DM.Qry.SQL.Add('select distinct ndoc,ddoc,type_doc,name from do_outdocs ');
   DM.Qry.SQL.Add(' where id_actwh=:p0 order by id');
   DM.Qry.Params[0].AsInteger:=Id_actout;
   DM.Qry.Open;
   while not DM.Qry.Eof do
    begin
    Xml. Add ('        <do2r:CustomsDocs>');
    Xml. Add (format('    <cat_ru:PrDocumentName>%s</cat_ru:PrDocumentName>',[DM.Qry.FieldByName('NAME').AsString]));
    Xml. Add (format('    <cat_ru:PrDocumentNumber>%s</cat_ru:PrDocumentNumber>',[DM.Qry.FieldByName('NDOC').AsString]));
    Xml. Add (format('    <cat_ru:PrDocumentDate>%s</cat_ru:PrDocumentDate>',[DateToIso(DM.Qry.FieldByName('DDOC').AsDateTime)]));
    Xml. Add (format('    <catWH_ru:PresentedDocumentModeCode>%s</catWH_ru:PresentedDocumentModeCode>',[DM.Qry.FieldByName('TYPE_DOC').AsString]));
//    Xml. Add ('           <catWH_ru:WhGoodOutRegisterNumber>');
//    Xml. Add (format('       <cat_ru:CustomsCode>%s</cat_ru:CustomsCode>',[Copy(DM.Qry.FieldByName('NDOC').AsString,1,8)]));
//     Xml. Add (format('       <cat_ru:RegistrationDate>%s</cat_ru:RegistrationDate>',[DateToIso(StrToDate(GtdDateToDate(Copy(DM.Qry.FieldByName('NDOC').AsString,10,6))))]));
//    Xml. Add (format('       <cat_ru:GTDNumber>%s</cat_ru:GTDNumber>',[Copy(DM.Qry.FieldByName('NDOC').AsString,17,7)]));
//    Xml. Add ('           </catWH_ru:WhGoodOutRegisterNumber>');
    Xml. Add ('        </do2r:CustomsDocs>');
    DM.Qry.Next;
    end;

   // Соответствие товаров таможенным документам
   if DM.Qry.Active then DM.Qry.Close;
   DM.Qry.SQL.Clear;
   DM.Qry.SQL.Add('select a.g32_n,c.npp from do_out a ');
   DM.Qry.SQL.Add(' right join rel_tov_gtd b on a.id = b.id_tov ');
   DM.Qry.SQL.Add(' left join do_outdocs c on b.id_gtd = c.id ');
   DM.Qry.SQL.Add(format(' where a.id_do2=%s order by a.g32_n',[IntToStr(Id_Do2)]));
   DM.Qry.Open;
   while not DM.Qry.Eof do
    begin
    Xml. Add (' <do2r:GoodsCustomDocsLinks>');
    Xml. Add (format('   <do2r:GoodNumber>%s</do2r:GoodNumber>',[DM.Qry.FieldByName('G32_N').asString]));
    Xml. Add (format('   <do2r:CustomDocNumber>%s</do2r:CustomDocNumber>',[DM.Qry.FieldByName('NPP').asString]));
    Xml. Add (' </do2r:GoodsCustomDocsLinks>');
    DM.Qry.Next;
    end;


{   DM.Qry.Close;
   DM.Qry.SQL.Clear;
   DM.Qry.SQL.Add('select a.*,c.g073 as ndo1,c.g072 as ddo1 ');
   DM.Qry.SQL.Add(' from do_out a left join do_outhd b on a.id_do2=b.id left join do_head_vw c on b.id_do1=c.id ');
   DM.Qry.SQL.Add(format('  where a.id_do2 = %s ',[IntToStr(Id_Do2)] ));
   DM.Qry.Open;}

    //обрабатываем товары
   Dm.Qry.Close;
   Dm.Qry.SQL.Clear;
   Dm.Qry.SQL.Add( 'select a.*,b.g42_ost,b.g31_2_ost,b.g35_ost,b.g31_d2,b.g35 as g35_pr,b.g42 as g42_pr,b.g31_2 as g31_2_pr,  ');
   Dm.Qry.SQL.Add( ' b.prim as place_descr_do1, c.g073 as DO1_G073,c.g072 as DO1_G072,b.DATE_IN,b.TIME_IN ');
   Dm.Qry.SQL.Add( ' from do_out a left join do_tovar b on a.id_tov_do1 = b.id ');
   Dm.Qry.SQL.Add( ' left join do_head_vw c on b.id_do1 = c.id ');
   Dm.Qry.SQL.Add(format( ' where a.id_do2 = %s ',[IntToStr(Id_Do2)] ));
   Dm.Qry.Open;
   while not Dm.Qry.Eof do
    begin
    Xml. Add ('         <do2r:Goods>');
    Xml. Add ('            <do2r:Input>');

    Xml. Add (format('           <catWH_ru:GoodsNumber>%s</catWH_ru:GoodsNumber>',[Dm.Qry.FieldByName('G32_N').AsString]));
    Xml. Add (format('           <catWH_ru:GoodsTNVEDCode>%s</catWH_ru:GoodsTNVEDCode>',[Dm.Qry.FieldByName('G33').AsString]));
    Xml. Add (format('           <catWH_ru:InvoiceCost>%s</catWH_ru:InvoiceCost>',[Dm.Qry.FieldByName('G42_PR').AsString]));
    Xml. Add (format('           <catWH_ru:CurrencyCode>%s</catWH_ru:CurrencyCode>',[Dm.Qry.FieldByName('G221').AsString]));
    Xml. Add ('                  <catWH_ru:GoodsDescriptionFull>');
    Xml. Add (format('              <catWH_ru:GoodsDescription xml:space="preserve">%s</catWH_ru:GoodsDescription>',[XMLCorrect(Dm.Qry.FieldByName('G31_1').AsString)]));
    Xml. Add ('                  </catWH_ru:GoodsDescriptionFull>');
    Xml. Add ('                  <catWH_ru:CargoPlace>');
    Xml. Add (format('              <catWH_ru:PlaceNumber>%s</catWH_ru:PlaceNumber>',[Dm.Qry.FieldByName('G31_2_PR').AsString]));
    Xml. Add (format('              <catWH_ru:PlaceDescription>%s</catWH_ru:PlaceDescription> ',[XMLCorrect(Dm.Qry.FieldByName('PLACE_DESCR_DO1').AsString)]));
    Xml. Add ('                  </catWH_ru:CargoPlace>');
    Xml. Add ('                  <catWH_ru:BruttoVolQuant>');
    Xml. Add (format('              <catWH_ru:GoodsQuantity>%s</catWH_ru:GoodsQuantity>',[StringReplace(Dm.Qry.FieldByName('G35_PR').AsString,',','.',[])]));
    Xml. Add (format('              <catWH_ru:MeasureUnitQualifierName>%s</catWH_ru:MeasureUnitQualifierName>',['КГ']));
    Xml. Add (format('              <catWH_ru:MeasureUnitQualifierCode>%s</catWH_ru:MeasureUnitQualifierCode>',['166']));
    Xml. Add ('                  </catWH_ru:BruttoVolQuant>');
    Xml. Add (format('           <do2r:WHNumber>%s</do2r:WHNumber>',[Dm.Qry.FieldByName('DO1_G073').AsString+'/'+Dm.Qry.FieldByName('G32').AsString]));
    Xml. Add ('                  <do2r:DO1GoodLink>');
    Xml. Add (format('              <do2r:DO1Date>%s</do2r:DO1Date>',[DateToIso(Dm.Qry.FieldByName('DO1_G072').AsDateTime)]));
    Xml. Add (format('              <do2r:DO1Number>%s</do2r:DO1Number>',[Dm.Qry.FieldByName('DO1_G073').AsString]));
    Xml. Add (format('              <do2r:DO1GoodNumber>%s</do2r:DO1GoodNumber>',[Dm.Qry.FieldByName('G32').AsString]));
    Xml. Add ('                  </do2r:DO1GoodLink>');
    Xml. Add ('                  <do2r:KeepingLimit>');
    Xml. Add (format('              <do2r:AcceptDate>%s</do2r:AcceptDate>',[DateToIso(Dm.Qry.FieldByName('DATE_IN').AsDateTime)]));
    Xml. Add (format('              <do2r:AcceptTime>%s</do2r:AcceptTime>',[TimeStringtoIso(TimeToStr(Dm.Qry.FieldByName('TIME_IN').AsDateTime))]));
    Xml. Add (format('              <do2r:DeadLineDate>%s</do2r:DeadLineDate>',[DateToIso(Dm.Qry.FieldByName('G31_D2').AsDateTime)]));
    Xml. Add ('                  </do2r:KeepingLimit>');

    Xml. Add ('            </do2r:Input>');

    Xml. Add ('            <do2r:Output>');
    Xml. Add (format('           <do2r:Cost>%s</do2r:Cost>',[Dm.Qry.FieldByName('G42').AsString]));
    Xml. Add (format('           <do2r:CurrencyCode>%s</do2r:CurrencyCode>',[Dm.Qry.FieldByName('G221').AsString]));
    Xml. Add (format('           <do2r:OutputDate>%s</do2r:OutputDate>',[ReportDate]));
    Xml. Add (format('           <do2r:OutputTime>%s</do2r:OutputTime>',[ReportTime]));
    Xml. Add ('                  <do2r:Consignee>');
    Xml. Add (format('               <cat_ru:OrganizationName>%s</cat_ru:OrganizationName>',[ConsName]));
    Xml. Add ('                      <cat_ru:RFOrganizationFeatures>');
    Xml. Add (format('               <cat_ru:OGRN>%s</cat_ru:OGRN>',[ConsOgrn]));
    Xml. Add (format('               <cat_ru:INN>%s</cat_ru:INN>',[ConsInn]));
    Xml. Add (format('               <cat_ru:KPP>%s</cat_ru:KPP>',[ConsKpp]));
    Xml. Add ('                      </cat_ru:RFOrganizationFeatures>');
    Xml. Add ('                      <catWH_ru:Address>');
    Xml. Add (format('                   <catWH_ru:AddressLine>%s</catWH_ru:AddressLine>',[ConsAddress]));
    Xml. Add ('                      </catWH_ru:Address>');
    Xml. Add ('                  </do2r:Consignee>');
    Xml. Add ('                  <do2r:BruttoVolQuant>');
    Xml. Add (format('              <catWH_ru:GoodsQuantity>%s</catWH_ru:GoodsQuantity>',[StringReplace(Dm.Qry.FieldByName('G35').AsString,',','.',[])]));
    Xml. Add (format('              <catWH_ru:MeasureUnitQualifierName>%s</catWH_ru:MeasureUnitQualifierName>',['КГ']));
    Xml. Add (format('              <catWH_ru:MeasureUnitQualifierCode>%s</catWH_ru:MeasureUnitQualifierCode>',['166']));
    Xml. Add ('                  </do2r:BruttoVolQuant>');
    Xml. Add ('                  <do2r:CargoPlace>');
    Xml. Add (format('              <catWH_ru:PlaceNumber>%s</catWH_ru:PlaceNumber>',[Dm.Qry.FieldByName('G31_2').AsString]));
    Xml. Add (format('              <catWH_ru:PlaceDescription>%s</catWH_ru:PlaceDescription>',[XMLCorrect(Dm.Qry.FieldByName('PRIM').AsString)]));
    Xml. Add ('                  </do2r:CargoPlace>');
    Xml. Add ('            </do2r:Output>');
    Xml. Add ('            <do2r:Result>');
    Xml. Add (format('           <do2r:Cost>%s</do2r:Cost>',[Dm.Qry.FieldByName('G42_OST').AsString]));
    Xml. Add (format('           <do2r:CurrencyCode>%s</do2r:CurrencyCode>',[Dm.Qry.FieldByName('G221').AsString]));
    if Dm.Qry.FieldByName('G42_OST').AsFloat > 0 then // если остаток <> 0
      begin
        Xml. Add ('                  <do2r:BruttoVolQuant>');
        Xml. Add (format('              <catWH_ru:GoodsQuantity>%s</catWH_ru:GoodsQuantity>',[StringReplace(Dm.Qry.FieldByName('G35_OST').AsString,',','.',[])]));
        Xml. Add (format('              <catWH_ru:MeasureUnitQualifierName>%s</catWH_ru:MeasureUnitQualifierName>',['КГ']));
        Xml. Add (format('              <catWH_ru:MeasureUnitQualifierCode>%s</catWH_ru:MeasureUnitQualifierCode>',['166']));
        Xml. Add ('                  </do2r:BruttoVolQuant>');
        Xml. Add ('                  <do2r:CargoPlace>');
        Xml. Add (format('              <catWH_ru:PlaceNumber>%s</catWH_ru:PlaceNumber>',[Dm.Qry.FieldByName('G31_2_OST').AsString]));
        Xml. Add (format('              <catWH_ru:PlaceDescription>%s</catWH_ru:PlaceDescription>',[XMLCorrect(Dm.Qry.FieldByName('PLACE_DESCR_DO1').AsString)]));
        Xml. Add ('                  </do2r:CargoPlace>');
      end;
    Xml. Add ('            </do2r:Result>');
    Xml. Add ('        </do2r:Goods>');
    Dm.Qry.Next;
    end;
   Xml. Add ('        </do2r:GoodsShipment>');
   Xml. Add ('			</do2r:DO2Report>');
   Xml. Add ('		</DocBody>');
   Xml. Add ('	</ContainerDoc>');
   Xml. Add ('</ED_Container>');
   try
     XML. SaveToFile(F_Path+F_Name);
    except
     Application.MessageBox('Ошибка записи файла','Внимание',MB_OK+MB_ICONSTOP);
   end;
  finally
    XML.Free;
    Qry_svh.Free;
  end;
end; // proc


end.

{   2 : begin
        try
          DirPath:=DirectoryEdit1.Text+'\';
          If Length(Trim(DirPath)) = 0 then
            begin
             Application.MessageBox('Неверный путь','Внимание',mb_iconstop+mb_Ok);
             exit;
            end;
          Self.Enabled:=False;
          Application.ProcessMessages();
          Logpath:=extractfilepath(paramstr(0));
          Fname:=Logpath+'Журналы\'+DelNotLetter(DateTimeToStr(Now))+'.txt';
          AssignFile(F,Fname);
          Rewrite(F);
          if RG_format.ItemIndex = 1 then
           begin
              if Rg1.ItemIndex = 0 then
                DM.Create_Do1(DirectoryEdit1.Text,1)
               else  // далее код не используется
                 begin
                  try
                      Dbf1:=TDbf.Create(nil);
                      case RG_format.ItemIndex of
                        //0:Dbf1.TableName:='do_head.dbf';
                        1:Dbf1.TableName:='do1.dbf';
                      end;// case
                      DBf1.FilePathFull:=DirPath;
                      try
                        Dbf1.Open;
                        Dbf1.Close;
                      except
                        Application.MessageBox('Ошибка открытия принимаемых файлов','Внимание!',mb_iconstop+mb_ok);
                        exit;
                      end;
                   finally
                      Dbf1.Free;
                   end;
                 end;
            end;
          N_Do2:=FormZtk.DBgridEh13.DataSource.DataSet.FieldByName('G074').asString;
          D_Do2:=FormZtk.DbGridEh13.DataSource.DataSet.FieldByName('G072').asDateTime;
          Lic_N:=FormZtk.gridDo.DataSource.DataSet.FieldByName('G144E').asString;
          Do2_Time:=FormZtk.DbgridEh13.DataSource.DataSet.FieldByName('G5421').asString;
          Do2_Statn:=FormZtk.DbgridEh13.DataSource.DataSet.FieldByName('DO2_STATN').asInteger;
          Do2_id:=FormZtk.DbgridEh13.DataSource.DataSet.FieldByName('ID_NUM').asInteger;
        case RG_format.ItemIndex of
          1:begin
              DM.Save2Do2(N_Do2,DirPath,'do2.dbf',Lic_N,Do2_Time,D_Do2);
              DM.Save2Do2Good(N_Do2,DirPath,'do2good.dbf',Lic_N,Do2_Time,D_Do2);
              DM.Save2Do2Cust(N_Do2,DirPath,'do2cust.dbf',Lic_N,D_Do2);
              DM.Save2Do2G33(N_Do2,DirPath,'do2g33.dbf',Lic_N,Do2_Time,D_Do2,);
            end;
          0:begin
              extfilename:='do2-'+IntToStr(Do2_Statn)+
                            '-'+DelNotLetter(DateToStr(D_Do2))+'.xml';
              DM.Save2Do2_XML(N_Do2,DirPath,extfilename,Lic_N,Do2_Time,D_Do2,
                              FormZtk.DbGridEh13.DataSource.DataSet.FieldByName('DO1_G072').asDateTime,
                              Do2_Statn,Do2_Id
                              );
            end;
          end;
          Action :='До2 передан в таможню ';
          WriteLn(F,N_Do2+#32+User+#32+DateTimeToStr(Now)+#32+Action);
          Self.Enabled:=True;
          ShowMessage ('Выполнено!');
        except
          Application.MessageBox('Ошибка записи данных','Внимание!',mb_OK+mb_iconstop);
          exit;
        end;
       end; // case 2
   end; //case
finally
  FormZTK.gridDo.Datasource.Dataset.GotoBookmark(TempBookmark);
  FormZTK.gridDo.Datasource.Dataset.FreeBookmark(TempBookmark);
  FormZTK.gridDo.SelectedRows.Clear;
  FormZTK.gridDo.Datasource.Dataset.EnableControls;
end;}





