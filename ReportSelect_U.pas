unit ReportSelect_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls,IBX.IbQuery,DateUtils, DB,
  IBX.IBCustomDataSet, IBX.IBStoredProc, MemTableDataEh, MemTableEh, Menus, ButtonGroup,
  CategoryButtons, ActnList, PlatformDefaultStyleActnCtrls, ActnMan,
  System.Actions;

type
  TReportSelect_F = class(TForm)
    Mt_Rep: TMemTableEh;
    Panel_Bottom: TPanel;
    Label1: TLabel;
    PBar1: TProgressBar;
    GroupBox1: TGroupBox;
    RxLabel1: TLabel;
    RxLabel2: TLabel;
    D1: TDateTimePicker;
    D2: TDateTimePicker;
    TreeView1: TTreeView;
    PopupMenu1: TPopupMenu;
    ActionManager1: TActionManager;
    A_BuildRep: TAction;
    N1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure A_BuildRepExecute(Sender: TObject);
    procedure A_BuildRepUpdate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    Stop_Flag:Boolean;
    p1,p2:TDateTime;
    procedure BuildRep0(repType:Byte);
    procedure BuildRep2;
    procedure BuildRep3;
    procedure BuildRep4;
    procedure BuildRep5;
    procedure BuildRep7;
    procedure BuildRep11;
    procedure BuildRep12;
    procedure BuildRep14;
    procedure BuildRep15;
    procedure BuildRep16;
    procedure StartReport(Num:Integer);
    procedure CancelBuildReport;
    function CalcCountTP (ar :array of string; period:Char):Integer;//d - day p-period
  public
    { Public declarations }
  end;

const
 T1:string=' 21:00' ;
 T2:string=' 09:00' ;
 Caption1:String = 'Правая клавиша - построение, ESC-отмена';
var
  ReportSelect_F: TReportSelect_F;
   //ежедневные и периодические отчеты
  _Faktur_Total,_Faktur_NotPass : Integer;
  _Ts_Smena,_Ts_Period,_Ts_Avg,_Ts_Ztk,_Ts_CbxO,_Pl_CbxC,_Ts_Moving:Integer;
  _Tp_Smena,_Tp_Period,_Tp_Avg,_Tp_SmenaOff,_Tp_PeriodOff,_Tp_Import,_Tp_Imp_Period,_Tp_Reimport,_Tp_Reimp_Period,_Ts_Transit:Integer;
  _Dt_Period:Integer;
  _SumUslug_Smena,_SumUslug_Period,_SumUslug_Smena_TS,_SumUslug_Period_TS,_Cheque_Avg,_Dt_Avg,_Sum_TamSklad:Double;
  _D_Prev,_D_StartMonth,_D1,_D2:TDateTime;
  _Zak_Name:String;

implementation

{$R *.dfm}
uses
  dm_u, Reports_U,Unit_Rep_Usl_sel, RegtiDisp_U, PriceList_U, InputNumber_U,
  RepSortGoods_U, RepZakSort_U, Hold_U;


  { TReportSelect_F }

procedure TReportSelect_F.BuildRep15;
var
  qry,qry1:TIbQuery;
  Usl_nm, Usl_Npp:String;
  Rec_Count,usl_kod:Integer;
  Usl_st_pr,usl_tot_sm_pr,usl_disc,usl_tot_sm,usl_kol,usl_tot_fact:Double;
  id_zayv,id_hold:   Integer;
  zakazchik: String;
label
  StopLabel5;
begin
  try
          qry:=TIbQuery.Create(Self);
          qry.Database:=Dm.DB;
          qry1:=TIBQuery.Create(self);
          qry1.Database:=Dm.DB;
            if DateOf(D1.date) > DateOf(D2.date) then
              begin
                 Application.MessageBox('Неверный интервал','Внимание',mb_iconstop+mb_ok);
                 Exit;
              end;

         if Hold_F.ShowModal <> mrOk then
            begin
              Application.MessageBox('Не выбран холдинг!.Продолжение невозможно.',
                                      'Внимание', MB_ICONWARNING+MB_OK );
              Exit;
            end;
         if Hold_F.DBGridEh1.DataSource.DataSet.FieldByName('ID').IsNull then
            Exit
           else
            begin
              id_hold := Hold_F.DBGridEh1.DataSource.DataSet.FieldByName('ID').AsInteger;
              zakazchik := Hold_F.DBGridEh1.DataSource.DataSet.FieldByName('NAME').AsString;
              _Zak_Name:=zakazchik;
            end;

          //build Dataset for report
          if Mt_Rep.Active then Mt_Rep.Close;
          Mt_Rep.FieldDefs.Clear;
          Mt_Rep.FieldDefs.Add('Usluga',ftString,150,False);   // услуга
          Mt_Rep.FieldDefs.Add('Kol',ftFloat);                 // количество
          Mt_Rep.FieldDefs.Add('St_Price',ftFloat);            // цена по прайсу
          Mt_Rep.FieldDefs.Add('Total_Sum_price',ftFloat);     // сумма в цена прайса
          Mt_Rep.FieldDefs.Add('Discount',ftFloat);            // сумма скидки
          Mt_Rep.FieldDefs.Add('Total_Sum',ftFloat);           // сумма со скидкой
          Mt_Rep.FieldDefs.Add('Npp',ftString,10,False);       // № п/п
          Mt_Rep.FieldDefs.Add('Total_Sum_fact',ftFloat);      // сумма без скидки
          Mt_Rep.CreateDataSet;
          Mt_Rep.Open;

          qry.Close;
          qry.Sql.Clear;
          qry.SQL.Add(' select count(distinct a.npp_str) ');
          qry.SQL.Add(' from faktura_items a ');
          qry.SQL.Add('  left join faktura_head b on a.id_f_head = b.id ');
          qry.SQL.Add('  left join reg_ti c on b.plat_name =c.id ');
          qry.SQL.Add('  where cast( b.date_is as date) between :p0 and :p1 ');
          qry.SQL.Add('  and  c.id_hold = :p2 ');
          qry.Params[0].AsDate := dateOf(D1.Date);
          qry.Params[1].AsDate := dateOf(D2.Date);
          qry.Params[2].AsInteger:=id_hold;
          qry.Open;

          Rec_Count:=qry.Fields[0].AsInteger;
           if Rec_Count =0 then
            begin
              Application.MessageBox('Услуги за указанный период отсутствуют.','Внимание',MB_ICONWARNING+MB_OK);
              Exit;
            end;

            qry.Close;
            qry.Sql.Clear;
            qry.SQL.Add('   select count(*), a.id_usl,c.stoim as price_stoim ,a.npp_str from faktura_items a ');
            qry.SQL.Add('   left join faktura_head b on a.id_f_head = b.id ');
            qry.SQL.Add('   left join price_lists c on a.id_usl = c.id ');
            qry.SQL.Add('  left join reg_ti r on b.plat_name = r.id ');
            qry.SQL.Add('   where cast(b.date_is as date) between :p0 and :p1 ');
            qry.SQL.Add('   and r.id_hold  = :p2 ');
            qry.SQL.Add('   group by a.id_usl,c.stoim,a.npp_str  order by a.npp_str ');
            qry.Params[0].AsDate := dateOf(D1.Date);
            qry.Params[1].AsDate := dateOf(D2.Date);
            qry.Params[2].AsInteger := id_hold;
            qry.Open;
            qry.First;
        //    FormRepUslSort.RadioGroup1.Enabled:=False;
        //    FormRepUslSort.ShowModal; // выберем тип сортировочки
            PBar1.Position:=0;
            PBar1.Max:=rec_Count;
            //  Mt_Rep5.DisableControls;
            while not qry.Eof do //перебираем price_list -
              begin
                Application.ProcessMessages;
                if Stop_Flag then Goto StopLabel5;

                Usl_kod:=qry.FieldByName('ID_USL').asInteger;
                Usl_st_pr:=qry.FieldByName('PRICE_STOIM').asCurrency;
                Usl_Npp:=qry.FieldByName('NPP_STR').asString;
                //
                qry1.Close;
                qry1.SQL.Clear;
                qry1.SQL.Add('select a.usluga from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
                qry1.SQL.Add('  left join reg_ti r on b.plat_name = r.id ');
                qry1.SQL.Add(' where a.npp_str=:p0 and (cast(b.date_is as date) between :p1 and :p2) ');
                qry1.SQL.Add(' and r.id_hold = :p3  and a.id_usl=:p4');
                qry1.Params[0].AsString:=Usl_Npp;
                qry1.Params[1].AsDate:=DateOf(D1.date);
                qry1.Params[2].AsDate:=DateOf(D2.date);
                qry1.Params[3].AsInteger:=id_hold;
                qry1.Params[4].AsInteger:=usl_kod;
                qry1.Open;
                Usl_nm:=  qry1.Fields[0].AsString;
                //считаем кол-во конкретной услуги
                qry1.Close;
                qry1.SQL.Clear;
                qry1.SQL.Add('select sum(a.kol) from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
                qry1.SQL.Add('  left join reg_ti r on b.plat_name = r.id ');
                qry1.SQL.Add(' where a.npp_str=:p0 and (cast(b.date_is as date) between :p1 and :p2) ');
                qry1.SQL.Add(' and r.id_hold = :p3 and a.id_usl=:p4 ');
                qry1.Params[0].AsString:=Usl_Npp;
                qry1.Params[1].AsDate:=DateOf(D1.date);
                qry1.Params[2].AsDate:=DateOf(D2.date);
                qry1.Params[3].AsInteger:=id_hold;
                qry1.Params[4].AsInteger:=usl_kod;
                qry1.Open;
                Usl_kol:=qry1.Fields[0].AsFloat;
                //usl_tot_sm_pr:=Usl_kol*Usl_st_pr; // сумма услуг по прайс-листу
                //считаем сумму со скидками по ст. пр. листа
                qry1.Close;
                qry1.SQL.Clear;
                qry1.SQL.Add('select sum(a.total_sum) from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
                qry1.SQL.Add('  left join reg_ti r on b.plat_name = r.id ');
                qry1.SQL.Add(' where a.npp_str=:p0 and (cast(b.date_is as date) between :p1 and :p2) ');
                qry1.SQL.Add(' and r.id_hold = :p3  and a.id_usl=:p4');
                qry1.Params[0].AsString:=Usl_Npp;
                qry1.Params[1].AsDate:=DateOf(D1.date);
                qry1.Params[2].AsDate:=DateOf(D2.date);
                qry1.Params[3].AsInteger:=id_hold;
                qry1.Params[4].AsInteger:=usl_kod;
                qry1.Open;
                Usl_tot_sm:=qry1.Fields[0].AsFloat;
                //считаем сумму по фактическим ценам из с-фактуры
                qry1.Close;
                qry1.SQL.Clear;
                qry1.SQL.Add('select sum(a.stoim*a.kol) from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
                qry1.SQL.Add('  left join reg_ti r on b.plat_name = r.id ');
                qry1.SQL.Add(' where a.npp_str=:p0 and (cast(b.date_is as date) between :p1 and :p2) ');
                qry1.SQL.Add(' and r.id_hold = :p3  and a.id_usl=:p4');
                qry1.Params[0].AsString:=Usl_Npp;
                qry1.Params[1].AsDate:=DateOf(D1.date);
                qry1.Params[2].AsDate:=DateOf(D2.date);
                qry1.Params[3].AsInteger:=id_hold;
                qry1.Params[4].AsInteger:=usl_kod;
                qry1.Open;
                usl_tot_fact:=qry1.Fields[0].AsFloat;
                Usl_disc:=usl_tot_fact-Usl_tot_sm;//посчитали скидку
                If Usl_tot_sm > 0 then
                     begin
                            with Mt_Rep do
                              begin
                                 if not (State  in [dsEdit,dsInsert]) then
                                    begin
                                       Insert;
                                       FieldByName('Usluga').AsString:=Usl_nm;
                                       FieldByName('Kol').AsFloat:=usl_kol;
                                       FieldByName('St_price').AsCurrency:=Usl_st_pr;
                                       FieldByName('Total_sum_price').AsCurrency:=Usl_tot_sm_pr;
                                       FieldByName('Discount').AsCurrency:=Usl_disc;
                                       FieldByName('Total_sum').AsCurrency:=Usl_tot_sm;
                                       FieldByName('Npp').AsString:=Usl_Npp;
                                       FieldByName('Total_sum_fact').AsCurrency:=usl_tot_fact;
                                       Post;
                                    end;
                             end;
                     end;
                PBar1.StepBy(1);
                qry.Next;
              end; //конец цикла перебора
              qry.Close;
              PBar1.Position:=0;
              Mt_Rep.SortByFields('Npp');
              Reports_F.Rep3.LoadFromFile('rep_uslugi_zak.fr3');
              Reports_F.Rep3.ShowReport(True);
              StopLabel5: Application.MessageBox('Построение отчета прервано.','Внимание',MB_OK+MB_ICONINFORMATION);
  finally
    qry.Free;
    qry1.Free;
  end;
end;

procedure TReportSelect_F.BuildRep16;
var
  qry,qry1:TIbQuery;
  Usl_nm, Usl_Npp:String;
  Rec_Count,usl_kod:Integer;
  Usl_st_pr,usl_tot_sm_pr,usl_disc,usl_tot_sm,usl_kol,usl_tot_fact:Double;
  id_zayv,id_hold:   Integer;
  zakazchik: String;
label
  StopLabel16;
begin
  try
          qry:=TIbQuery.Create(Self);
          qry.Database:=Dm.DB;
          qry1:=TIBQuery.Create(self);
          qry1.Database:=Dm.DB;
            if DateOf(D1.date) > DateOf(D2.date) then
              begin
                 Application.MessageBox('Неверный интервал','Внимание',mb_iconstop+mb_ok);
                 Exit;
              end;

         if Hold_F.ShowModal <> mrOk then
            begin
              Application.MessageBox('Не выбран холдинг!.Продолжение невозможно.',
                                      'Внимание', MB_ICONWARNING+MB_OK );
              Exit;
            end;
         if Hold_F.DBGridEh1.DataSource.DataSet.FieldByName('ID').IsNull then
            Exit
           else
            begin
              id_hold := Hold_F.DBGridEh1.DataSource.DataSet.FieldByName('ID').AsInteger;
              zakazchik := Hold_F.DBGridEh1.DataSource.DataSet.FieldByName('NAME').AsString;
              _Zak_Name:=zakazchik;
            end;

          //build Dataset for report
          if Mt_Rep.Active then Mt_Rep.Close;
          Mt_Rep.FieldDefs.Clear;
          Mt_Rep.FieldDefs.Add('Usluga',ftString,150,False);   // услуга
          Mt_Rep.FieldDefs.Add('Kol',ftFloat);                 // количество
          Mt_Rep.FieldDefs.Add('St_Price',ftFloat);            // цена по прайсу
          Mt_Rep.FieldDefs.Add('Total_Sum_price',ftFloat);     // сумма в цена прайса
          Mt_Rep.FieldDefs.Add('Discount',ftFloat);            // сумма скидки
          Mt_Rep.FieldDefs.Add('Total_Sum',ftFloat);           // сумма со скидкой
          Mt_Rep.FieldDefs.Add('Npp',ftString,10,False);       // № п/п
          Mt_Rep.FieldDefs.Add('Total_Sum_fact',ftFloat);      // сумма без скидки
          Mt_Rep.CreateDataSet;
          Mt_Rep.Open;

          qry.Close;
          qry.Sql.Clear;
          qry.SQL.Add(' select count(distinct a.npp_str) ');
          qry.SQL.Add(' from faktura_items a ');
          qry.SQL.Add('  left join faktura_head b on a.id_f_head = b.id ');
          qry.SQL.Add('  left join reg_ti c on b.r_name =c.id ');
          qry.SQL.Add('  where cast( b.date_is as date) between :p0 and :p1 ');
          qry.SQL.Add('  and  c.id_hold = :p2 ');
          qry.Params[0].AsDate := dateOf(D1.Date);
          qry.Params[1].AsDate := dateOf(D2.Date);
          qry.Params[2].AsInteger:=id_hold;
          qry.Open;

          Rec_Count:=qry.Fields[0].AsInteger;
           if Rec_Count =0 then
            begin
              Application.MessageBox('Услуги за указанный период отсутствуют.','Внимание',MB_ICONWARNING+MB_OK);
              Exit;
            end;

            qry.Close;
            qry.Sql.Clear;
            qry.SQL.Add('   select count(*), a.id_usl,c.stoim as price_stoim ,a.npp_str from faktura_items a ');
            qry.SQL.Add('   left join faktura_head b on a.id_f_head = b.id ');
            qry.SQL.Add('   left join price_lists c on a.id_usl = c.id ');
            qry.SQL.Add('  left join reg_ti r on b.r_name = r.id ');
            qry.SQL.Add('   where cast(b.date_is as date) between :p0 and :p1 ');
            qry.SQL.Add('   and r.id_hold  = :p2 ');
            qry.SQL.Add('   group by a.id_usl,c.stoim,a.npp_str  order by a.npp_str ');
            qry.Params[0].AsDate := dateOf(D1.Date);
            qry.Params[1].AsDate := dateOf(D2.Date);
            qry.Params[2].AsInteger := id_hold;
            qry.Open;
            qry.First;
        //    FormRepUslSort.RadioGroup1.Enabled:=False;
        //    FormRepUslSort.ShowModal; // выберем тип сортировочки
            PBar1.Position:=0;
            PBar1.Max:=rec_Count;
            //  Mt_Rep5.DisableControls;
            while not qry.Eof do //перебираем price_list -
              begin
                Application.ProcessMessages;
                if Stop_Flag then Goto StopLabel16;

                Usl_kod:=qry.FieldByName('ID_USL').asInteger;
                Usl_st_pr:=qry.FieldByName('PRICE_STOIM').asCurrency;
                Usl_Npp:=qry.FieldByName('NPP_STR').asString;
                //
                qry1.Close;
                qry1.SQL.Clear;
                qry1.SQL.Add('select a.usluga from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
                qry1.SQL.Add('  left join reg_ti r on b.r_name = r.id ');
                qry1.SQL.Add(' where a.npp_str=:p0 and (cast(b.date_is as date) between :p1 and :p2) ');
                qry1.SQL.Add(' and r.id_hold = :p3 and a.id_usl=:p4 ');
                qry1.Params[0].AsString:=Usl_Npp;
                qry1.Params[1].AsDate:=DateOf(D1.date);
                qry1.Params[2].AsDate:=DateOf(D2.date);
                qry1.Params[3].AsInteger:=id_hold;
                qry1.Params[4].AsInteger:=usl_kod;
                qry1.Open;
                Usl_nm:=  qry1.Fields[0].AsString;
                //считаем кол-во конкретной услуги
                qry1.Close;
                qry1.SQL.Clear;
                qry1.SQL.Add('select sum(a.kol) from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
                qry1.SQL.Add('  left join reg_ti r on b.r_name = r.id ');
                qry1.SQL.Add(' where a.npp_str=:p0 and (cast(b.date_is as date) between :p1 and :p2) ');
                qry1.SQL.Add(' and r.id_hold = :p3  and a.id_usl=:p4');
                qry1.Params[0].AsString:=Usl_Npp;
                qry1.Params[1].AsDate:=DateOf(D1.date);
                qry1.Params[2].AsDate:=DateOf(D2.date);
                qry1.Params[3].AsInteger:=id_hold;
                qry1.Params[4].AsInteger:=usl_kod;
                qry1.Open;
                Usl_kol:=qry1.Fields[0].AsFloat;
                //usl_tot_sm_pr:=Usl_kol*Usl_st_pr; // сумма услуг по прайс-листу
                //считаем сумму со скидками по ст. пр. листа
                qry1.Close;
                qry1.SQL.Clear;
                qry1.SQL.Add('select sum(a.total_sum) from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
                qry1.SQL.Add('  left join reg_ti r on b.r_name = r.id ');
                qry1.SQL.Add(' where a.npp_str=:p0 and (cast(b.date_is as date) between :p1 and :p2) ');
                qry1.SQL.Add(' and r.id_hold = :p3  and a.id_usl=:p4');
                qry1.Params[0].AsString:=Usl_Npp;
                qry1.Params[1].AsDate:=DateOf(D1.date);
                qry1.Params[2].AsDate:=DateOf(D2.date);
                qry1.Params[3].AsInteger:=id_hold;
                qry1.Params[4].AsInteger:=usl_kod;
                qry1.Open;
                Usl_tot_sm:=qry1.Fields[0].AsFloat;
                //считаем сумму по фактическим ценам из с-фактуры
                qry1.Close;
                qry1.SQL.Clear;
                qry1.SQL.Add('select sum(a.stoim*a.kol) from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
                qry1.SQL.Add('  left join reg_ti r on b.r_name = r.id ');
                qry1.SQL.Add(' where a.npp_str=:p0 and (cast(b.date_is as date) between :p1 and :p2) ');
                qry1.SQL.Add(' and r.id_hold = :p3 and a.id_usl=:p4 ');
                qry1.Params[0].AsString:=Usl_Npp;
                qry1.Params[1].AsDate:=DateOf(D1.date);
                qry1.Params[2].AsDate:=DateOf(D2.date);
                qry1.Params[3].AsInteger:=id_hold;
                qry1.Params[4].AsInteger:=usl_kod;
                qry1.Open;
                usl_tot_fact:=qry1.Fields[0].AsFloat;
                Usl_disc:=usl_tot_fact-Usl_tot_sm;//посчитали скидку
                If Usl_tot_sm > 0 then
                     begin
                            with Mt_Rep do
                              begin
                                 if not (State  in [dsEdit,dsInsert]) then
                                    begin
                                       Insert;
                                       FieldByName('Usluga').AsString:=Usl_nm;
                                       FieldByName('Kol').AsFloat:=usl_kol;
                                       FieldByName('St_price').AsCurrency:=Usl_st_pr;
                                       FieldByName('Total_sum_price').AsCurrency:=Usl_tot_sm_pr;
                                       FieldByName('Discount').AsCurrency:=Usl_disc;
                                       FieldByName('Total_sum').AsCurrency:=Usl_tot_sm;
                                       FieldByName('Npp').AsString:=Usl_Npp;
                                       FieldByName('Total_sum_fact').AsCurrency:=usl_tot_fact;
                                       Post;
                                    end;
                             end;
                     end;
                PBar1.StepBy(1);
                qry.Next;
              end; //конец цикла перебора
              qry.Close;
              PBar1.Position:=0;
              Mt_Rep.SortByFields('Npp');
              Reports_F.Rep3.LoadFromFile('rep_uslugi_zak.fr3');
              Reports_F.Rep3.ShowReport(True);
  StopLabel16: Application.MessageBox('Построение отчета прервано.','Внимание',MB_OK+MB_ICONINFORMATION);
  finally
    qry.Free;
    qry1.Free;
  end;

end;

procedure TReportSelect_F.A_BuildRepExecute(Sender: TObject);
begin
  StartReport(TreeView1.Selected.AbsoluteIndex);
end;

procedure TReportSelect_F.A_BuildRepUpdate(Sender: TObject);
begin
if TreeView1.Focused then 
  case TreeView1.Selected.AbsoluteIndex of
    1,2,3,4,5,7,8,9,11,12,13,14:
      A_BuildRep.Enabled:=True
   else
      A_BuildRep.Enabled:=false
  end;
end;

procedure TReportSelect_F.BuildRep0(repType:Byte);
var
 qry:TIbQuery;
 sp:TIBStoredProc;
 s,s1,s2:String;
 myarray : array of string;
begin
  try
   qry:=TIbQuery.Create(Self);
   qry.Database:=Dm.DB;
   qry.Transaction:=DM.IBTR;
   //********
   qry.Sql.Add('select count(*) from faktura_head where cast(date_is as date)=:p0 ');
   qry.Params[0].AsDate:=DateOf(D1.Date);
   qry.Open;
   _Faktur_Total:=qry.Fields[0].AsInteger;
   // *******
   qry.Close;
   qry.sql.Clear;
   qry.Sql.Add('select count(*) from faktura_head where cast(date_is as date)=:p0  and pass_flag=0 ');
   qry.Params[0].AsDate:=DateOf(D1.Date);
   qry.Open;
   _Faktur_NotPass:=qry.Fields[0].AsInteger;
   // *******
   qry.Close;
   qry.sql.Clear;
   qry.Sql.Add('select count(a.id) from ts a ');
   qry.Sql.Add('left join ticket b on a.id_ticket = b.id ');
   qry.Sql.Add(' where a.target = 1 and (dt_is between :p0 and :p1) ');
   s1:=DateToStr(_D_Prev)+T1;
   s2:=DateToStr(p1)+T1;
   qry.Params[0].AsDateTime:=StrToDateTime(DateToStr(_D_Prev)+T1);
   qry.Params[1].AsDateTime:=StrToDateTime(DateToStr(p1)+T1);
   qry.Open;
   _Ts_Smena:=qry.Fields[0].AsInteger;
   // *******
   qry.Close;
   qry.sql.Clear;
   qry.Sql.Add('select count(a.id) from ts a ');
   qry.Sql.Add('left join ticket b on a.id_ticket = b.id ');
   qry.Sql.Add(' where a.target = 1 and (cast(dt_is as date) between :p0 and :p1) ');
   qry.Params[0].AsDate:=_D_StartMonth;
   qry.Params[1].AsDate:=DateOf(D1.Date);
   qry.Open;
   _Ts_Period:=qry.Fields[0].AsInteger;
   _Ts_Avg:=Round(_Ts_Period/(p2-_D_StartMonth));
   // ********
   sp:=TIBStoredProc.Create(Self);
   sp.Database:=dm.DB;
   sp.Transaction:=Dm.IBTR;
   sp.StoredProcName:='TLT_CONDITION';
   sp.Prepare;
   sp.ExecProc;
   _Ts_Ztk:=sp.Params[0].AsInteger;
   _Ts_CbxO:=sp.Params[1].AsInteger;
   _Pl_CbxC:=sp.Params[2].AsInteger;
   _Ts_Moving:=sp.Params[3].AsInteger;
   //******
   qry.Close;
   qry.sql.Clear;
{   qry.Sql.Add('select count(a.id) from parties_log a ');
   qry.Sql.Add(' where a.action_code = 2 and (cast(dt_action as date) = :p0 ) ');}
    //запрос более корректный
   qry.Sql.Add('select count(a.id) from parties a left join ticket b on a.id_ticket = b.id ');
   qry.Sql.Add('where  (cast(b.dt_is as date)) = :p0 ');
   qry.Params[0].AsDate:=dateOf(d1.Date);
   qry.Open;
   _Tp_Smena:=qry.Fields[0].AsInteger;
   //******
   qry.Close;
   qry.sql.Clear;
   qry.Sql.Add('select count(a.id) from parties a left join ticket b on a.id_ticket = b.id ');
   qry.Sql.Add(' where  (cast(b.dt_is as date) between :p0 and :p1 ) ');
   qry.Params[0].AsDate:=_D_StartMonth;
   qry.Params[1].AsDate:=DateOf(D1.Date);
   qry.Open;
   _Tp_Period:=qry.Fields[0].AsInteger;
   //******
//   qry.Close;
//   qry.sql.Clear;
//   s:= 'select sum(a.kol) from faktura_items a left join faktura_head b on a.id_f_head = b.id ';
//   s:=s+'where ((a.npp_str=:p0) or (a.npp_str=:p1) or (a.npp_str=:p2) or (a.npp_str=:p3) or (a.npp_str=:p4)) ';
//   s:=s+' and  (cast(b.date_is as date)) = :p5   ';
//   qry.Sql.Add(s);
//   qry.Params[0].AsString:='1.1.1';
//   qry.Params[1].AsString:='1.1.3';
//   qry.Params[2].AsString:='1.2.1';
//   qry.Params[3].AsString:='1.2.2';
//   qry.Params[4].AsString:='1.2.5';
//   qry.Params[5].AsDate:=DateOf(D1.Date);
//   qry.Open;
//   _Tp_SmenaOff:=qry.Fields[0].AsInteger;
    SetLength(myarray,5);
    myarray[0]:='1.1.1';
    myarray[1]:='1.1.3';
    myarray[2]:='1.2.1';
    myarray[3]:='1.2.2';
    myarray[4]:='1.2.5';
    _Tp_SmenaOff:=CalcCountTP(myarray,'d');
   //******
//   qry.Close;
//   qry.sql.Clear;
//   s:= 'select sum(a.kol) from faktura_items a left join faktura_head b on a.id_f_head = b.id ';
//   s:=s+'where ((a.npp_str=:p0) or (a.npp_str=:p1) or (a.npp_str=:p2) or (a.npp_str=:p3) or (a.npp_str=:p4)) ';
//   s:=s+' and  (cast(b.date_is as date)) between :p5  and :p6 ';
//   qry.Sql.Add(s);
//   qry.Params[0].AsString:='1.1.1';
//   qry.Params[1].AsString:='1.1.3';
//   qry.Params[2].AsString:='1.2.1';
//   qry.Params[3].AsString:='1.2.2';
//   qry.Params[4].AsString:='1.2.5';
//   qry.Params[5].AsDate:=_D_StartMonth;
//   qry.Params[6].AsDate:=DateOf(D1.Date);
//   qry.Open;
//   _Tp_PeriodOff:=qry.Fields[0].AsInteger;
    SetLength(myarray,5);
    myarray[0]:='1.1.1';
    myarray[1]:='1.1.3';
    myarray[2]:='1.2.1';
    myarray[3]:='1.2.2';
    myarray[4]:='1.2.5';
    _Tp_PeriodOff:=CalcCountTP(myarray,'m');
   //******
   qry.Close;
   qry.sql.Clear;
   qry.Sql.Add('select sum(a.total_sum)   from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
   qry.Sql.Add(' where cast(b.date_is as date) = :p0 and b.pass_flag = 1  ');
   qry.Params[0].AsDate:=DateOf(D1.Date);
   qry.Open;
   _SumUslug_Smena:=qry.Fields[0].AsFloat;
   //******
   qry.Close;
   qry.sql.Clear;
   qry.Sql.Add('select sum(a.total_sum)   from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
   qry.Sql.Add(' where cast(b.date_is as date) = :p0 and (b.pass_flag = 1) and (a.ts_flag = 1) ');
   qry.Params[0].AsDate:=DateOf(D1.Date);
   qry.Open;
   _SumUslug_Smena_TS:=qry.Fields[0].AsFloat;
   //******
   qry.Close;
   qry.sql.Clear;
   qry.Sql.Add('select sum(a.total_sum)   from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
   qry.Sql.Add(' where cast(b.date_is as date) between :p0 and :p1 and (b.pass_flag = 1)  ');
   qry.Params[0].AsDate:=_D_StartMonth;
   qry.Params[1].AsDate:=DateOf(D1.Date);
   qry.Open;
   _SumUslug_Period:=qry.Fields[0].AsFloat;
   //******
   qry.Close;
   qry.sql.Clear;
   qry.Sql.Add('select sum(a.total_sum)   from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
   qry.Sql.Add(' where cast(b.date_is as date) between :p0 and :p1 and (b.pass_flag = 1) and (a.ts_flag = 1) ');
   qry.Params[0].AsDate:=_D_StartMonth;
   qry.Params[1].AsDate:=DateOf(D1.Date);
   qry.Open;
   _SumUslug_Period_TS:=qry.Fields[0].AsFloat;
   //******
   if _Tp_PeriodOff <> 0  then
      _Cheque_Avg:=_SumUslug_Period / _Tp_PeriodOff
      else
      _Cheque_Avg:=0;
   //******
//   qry.Close;
//   qry.sql.Clear;
//   qry.Sql.Add(' select count(a.id)   from parties a left join ticket b on a.id_ticket = b.id ');
//   qry.Sql.Add(' where (cast(b.dt_is as date) between :p0 and :p1) and b.cust_proc containing :p2  ');
//   qry.Params[0].AsDate:=_D_StartMonth;
//   qry.Params[1].AsDate:=DateOf(D1.Date);
//   qry.Params[2].AsString:='Импорт';
//   qry.Open;
    SetLength(myarray,2);
    myarray[0]:='1.1.1';
    myarray[1]:='1.1.3';
    _Tp_Import:=CalcCountTP(myarray,'d');
    _Tp_Imp_Period:=CalcCountTP(myarray,'m');
    //_Tp_Import :=qry.Fields[0].AsInteger;
   //******
//   qry.Close;
//   qry.sql.Clear;
//   qry.Sql.Add(' select count(a.id)   from parties a left join ticket b on a.id_ticket = b.id ');
//   qry.Sql.Add(' where (cast(b.dt_is as date) between :p0 and :p1) and b.cust_proc not containing :p2  ');
//   qry.Params[0].AsDate:=_D_StartMonth;
//   qry.Params[1].AsDate:=DateOf(D1.Date);
//   qry.Params[2].AsString:='Импорт';
//   qry.Open;
//   _Tp_Reimport :=qry.Fields[0].AsInteger;
    SetLength(myarray,3);
    myarray[0]:='1.2.1';
    myarray[1]:='1.2.2';
    myarray[2]:='1.2.5';
    _Tp_Reimport:=CalcCountTP(myarray,'d');
    _Tp_Reimp_Period := CalcCountTP(myarray,'m');

   if repType=1 then Reports_F.Rep3.LoadFromFile('rep_dailyfull.fr3') else
   if repType = 2  then Reports_F.Rep3.LoadFromFile('rep_dailyshort.fr3');

   Reports_F.Rep3.ShowReport(True);
  finally
   qry.Free;
   sp.Free;
  end;
end;

procedure TReportSelect_F.BuildRep11;
var
  qry,qry1:TIbQuery;
  Usl_nm, Usl_Npp:String;
  Rec_Count,usl_kod:Integer;
  Usl_st_pr,usl_tot_sm_pr,usl_disc,usl_tot_sm,usl_kol,usl_tot_fact:Double;
  id_zayv:   Integer;
  zakazchik: String;
label
  StopLabel11;
begin
  try
    qry:=TIbQuery.Create(Self);
    qry.Database:=Dm.DB;
    qry1:=TIBQuery.Create(self);
    qry1.Database:=Dm.DB;
      if DateOf(D1.date) > DateOf(D2.date) then
        begin
           Application.MessageBox('Неверный интервал','Внимание',mb_iconstop+mb_ok);
           Exit;
        end;
   RegtiDisp_F.AllRec_RegTi1.Execute;
   if RegtiDisp_F.ShowModal <> mrOk then
      begin
        Application.MessageBox('Не выбран заказчик!.Продолжение невозможно.',
                                'Внимание', MB_ICONWARNING+MB_OK );
        Exit;
      end;
   if RegtiDisp_F.DBGridEh1.DataSource.DataSet.FieldByName('ID').IsNull then
      Exit
     else
      begin
        id_zayv := RegtiDisp_F.DBGridEh1.DataSource.DataSet.FieldByName('ID').AsInteger;
        zakazchik := RegtiDisp_F.DBGridEh1.DataSource.DataSet.FieldByName('ZAYV').AsString;
        _Zak_Name:=zakazchik;
      end;
    if Mt_Rep.Active then Mt_Rep.Close;
    Mt_Rep.FieldDefs.Clear;
    Mt_Rep.FieldDefs.Add('Usluga',ftString,150,False);   // услуга
    Mt_Rep.FieldDefs.Add('Kol',ftFloat);                 // количество
    Mt_Rep.FieldDefs.Add('St_Price',ftFloat);            // цена по прайсу
    Mt_Rep.FieldDefs.Add('Total_Sum_price',ftFloat);     // сумма в цена прайса
    Mt_Rep.FieldDefs.Add('Discount',ftFloat);            // сумма скидки
    Mt_Rep.FieldDefs.Add('Total_Sum',ftFloat);           // сумма со скидкой
    Mt_Rep.FieldDefs.Add('Npp',ftString,10,False);       // № п/п
    Mt_Rep.FieldDefs.Add('Total_Sum_fact',ftFloat);      // сумма без скидки
    Mt_Rep.CreateDataSet;
    Mt_Rep.Open;
    qry.Close;
    qry.Sql.Clear;
    qry.SQL.Add(' select count(distinct a.id_usl) ');
    qry.SQL.Add(' from faktura_items a ');
    qry.SQL.Add('  left join faktura_head b on a.id_f_head = b.id ');
    qry.SQL.Add('  where cast( b.date_is as date) between :p0 and :p1 ');
    qry.SQL.Add('  and  b.r_name = :p2 ');
    qry.Params[0].AsDate := dateOf(D1.Date);
    qry.Params[1].AsDate := dateOf(D2.Date);
    qry.Params[2].AsInteger:=id_zayv;
    qry.Open;
    Rec_Count:=qry.Fields[0].AsInteger;
     if Rec_Count =0 then
      begin
        Application.MessageBox('Услуги за указанный период отсутствуют.','Внимание',MB_ICONWARNING+MB_OK);
        Exit;
      end;
    qry.Close;
    qry.Sql.Clear;
    qry.SQL.Add('   select count(*), a.id_usl,c.stoim as price_stoim ,a.npp_str from faktura_items a ');
    qry.SQL.Add('   left join faktura_head b on a.id_f_head = b.id ');
    qry.SQL.Add('   left join price_lists c on a.id_usl = c.id ');
    qry.SQL.Add('   where cast(b.date_is as date) between :p0 and :p1 ');
    qry.SQL.Add('   and b.r_name  = :p2 ');
    qry.SQL.Add('   group by a.id_usl,c.stoim,a.npp_str  order by a.npp_str ');
    qry.Params[0].AsDate := dateOf(D1.Date);
    qry.Params[1].AsDate := dateOf(D2.Date);
    qry.Params[2].AsInteger := id_zayv;
    qry.Open;
    qry.First;
//    FormRepUslSort.RadioGroup1.Enabled:=False;
//    FormRepUslSort.ShowModal; // выберем тип сортировочки
    PBar1.Position:=0;
    PBar1.Max:=rec_Count;
    //  Mt_Rep5.DisableControls;
    while not qry.Eof do //перебираем price_list -
      begin
        Application.ProcessMessages;
        if Stop_Flag then Goto StopLabel11;

        Usl_kod:=qry.FieldByName('ID_USL').asInteger;
        Usl_st_pr:=qry.FieldByName('PRICE_STOIM').asCurrency;
        Usl_Npp:=qry.FieldByName('NPP_STR').asString;
        //
        qry1.Close;
        qry1.SQL.Clear;
        qry1.SQL.Add('select a.usluga from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
        qry1.SQL.Add(' where a.npp_str=:p0 and (cast(b.date_is as date) between :p1 and :p2) ');
        qry1.SQL.Add(' and b.r_name = :p3 and a.id_usl=:p4 ');
        qry1.Params[0].AsString:=Usl_Npp;
        qry1.Params[1].AsDate:=DateOf(D1.date);
        qry1.Params[2].AsDate:=DateOf(D2.date);
        qry1.Params[3].AsInteger:=id_zayv;
        qry1.Params[4].AsInteger:=Usl_kod;
        qry1.Open;
        Usl_nm:=  qry1.Fields[0].AsString;
        //считаем кол-во конкретной услуги
        qry1.Close;
        qry1.SQL.Clear;
        qry1.SQL.Add('select sum(a.kol) from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
        qry1.SQL.Add(' where a.npp_str=:p0 and (cast(b.date_is as date) between :p1 and :p2) ');
        qry1.SQL.Add(' and b.r_name = :p3 and a.id_usl=:p4 ');
        qry1.Params[0].AsString:=Usl_Npp;
        qry1.Params[1].AsDate:=DateOf(D1.date);
        qry1.Params[2].AsDate:=DateOf(D2.date);
        qry1.Params[3].AsInteger:=id_zayv;
        qry1.Params[4].AsInteger:=Usl_kod;
        qry1.Open;
        Usl_kol:=qry1.Fields[0].AsFloat;
        //usl_tot_sm_pr:=Usl_kol*Usl_st_pr; // сумма услуг по прайс-листу
        //считаем сумму со скидками по ст. пр. листа
        qry1.Close;
        qry1.SQL.Clear;
        qry1.SQL.Add('select sum(a.total_sum) from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
        qry1.SQL.Add(' where a.npp_str=:p0 and (cast(b.date_is as date) between :p1 and :p2) ');
        qry1.SQL.Add(' and b.r_name = :p3  and a.id_usl=:p4');
        qry1.Params[0].AsString:=Usl_Npp;
        qry1.Params[1].AsDate:=DateOf(D1.date);
        qry1.Params[2].AsDate:=DateOf(D2.date);
        qry1.Params[3].AsInteger:=id_zayv;
        qry1.Params[4].AsInteger:=Usl_kod;
        qry1.Open;
        Usl_tot_sm:=qry1.Fields[0].AsFloat;
        //считаем сумму по фактическим ценам из с-фактуры
        qry1.Close;
        qry1.SQL.Clear;
        qry1.SQL.Add('select sum(a.stoim*a.kol) from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
        qry1.SQL.Add(' where a.npp_str=:p0 and (cast(b.date_is as date) between :p1 and :p2) ');
        qry1.SQL.Add(' and b.r_name = :p3  and a.id_usl=:p4');
        qry1.Params[0].AsString:=Usl_Npp;
        qry1.Params[1].AsDate:=DateOf(D1.date);
        qry1.Params[2].AsDate:=DateOf(D2.date);
        qry1.Params[3].AsInteger:=id_zayv;
        qry1.Params[4].AsInteger:=Usl_kod;
        qry1.Open;
        usl_tot_fact:=qry1.Fields[0].AsFloat;
        Usl_disc:=usl_tot_fact-Usl_tot_sm;//посчитали скидку
        If Usl_tot_sm > 0 then
             begin
                    with Mt_Rep do
                      begin
                         if not (State  in [dsEdit,dsInsert]) then
                            begin
                               Insert;
                               FieldByName('Usluga').AsString:=Usl_nm;
                               FieldByName('Kol').AsFloat:=usl_kol;
                               FieldByName('St_price').AsCurrency:=Usl_st_pr;
                               FieldByName('Total_sum_price').AsCurrency:=Usl_tot_sm_pr;
                               FieldByName('Discount').AsCurrency:=Usl_disc;
                               FieldByName('Total_sum').AsCurrency:=Usl_tot_sm;
                               FieldByName('Npp').AsString:=Usl_Npp;
                               FieldByName('Total_sum_fact').AsCurrency:=usl_tot_fact;
                               Post;
                            end;
                     end;
             end;
        PBar1.StepBy(1);
        qry.Next;
      end; //конец цикла перебора
      qry.Close;
      PBar1.Position:=0;
      Mt_Rep.SortByFields('Npp');
      Reports_F.Rep3.LoadFromFile('rep_uslugi_zak.fr3');
      Reports_F.Rep3.ShowReport(True);
      StopLabel11: Application.MessageBox('Построение отчета прервано.','Внимание',MB_OK+MB_ICONINFORMATION);
  finally
    qry.Free;
    qry1.Free;
  end;
end;

procedure TReportSelect_F.BuildRep12;
var
 id_usl :Integer;
 npp_str:string;
 tot_sm,price_sm:  Currency;
 summa1,summa1_1,summa2,summa2_1,cena1,cena2,komis1,komis2:Currency;
begin
    if InputNumber_F.ShowModal <> mrOk then Exit;
    DM.MT_PriceList.Close;
    DM.Qry_PriceList.Close;
    DM.Qry_PriceList.Params[0].AsInteger:=2; // стандартный прайс-лист;
    DM.MT_PriceList.Open;
    PriceList_F.Caption:='Стандартный прайс-лист';
    if PriceList_F.ShowModal = mrOK then
       begin
         id_usl := PriceList_F.DBGridEh1.DataSource.DataSet.FieldByName('ID').asInteger;
         npp_str := PriceList_F.DBGridEh1.DataSource.DataSet.FieldByName('NPP_STR').AsString;
       end
      else
       begin
         Application.MessageBox('Продолжение невозможно.Услуга не выбрана','Внимание',
                                 MB_OK+MB_ICONWARNING);
         Exit;
       end;
    DM.Qry.Close;
    DM.Qry.Sql.Clear;
    DM.Qry.Sql.Add (
    'select a.id_usl, sum(a.total_sum) as tot_sum, sum(a.kol) as kol, '+
    ' sum(a.kol* a.stoim) as sum_price '+
    ' from faktura_items a left join faktura_head b on a.id_f_head = b.id ' +
    ' where a.id_usl=:p0 and cast(b.date_is as date) between :p1 and :p2 '+
    ' group by a.id_usl');
    DM.Qry.Params[0].asInteger := id_usl ;
    DM.Qry.Params[1].asDate :=DateOf(ReportSelect_F.D1.date);
    DM.Qry.Params[2].asDate :=DateOf(ReportSelect_F.D2.date);
     try
       DM.Qry.Open;
     except
       Exit;
     end;


//////// расчет
    if Dm.Qry.FieldByName('KOL').AsInteger = 0 then
      begin
        Application.MessageBox('Кол-во услуг = 0. Расчет невозможен','Предупреждение',
                              MB_ICONWARNING+MB_OK);
        Exit;
      end;

    summa1:=StrToFloat(InputNumber_F.E_number.Text);
    tot_sm:=Dm.Qry.FieldByName('TOT_SUM').AsCurrency;
    price_sm:=DM.Qry.FieldByName('SUM_PRICE').AsCurrency;
    komis1:=summa1 * (1/100);
    cena1:=summa1 / Dm.Qry.FieldByName('KOL').AsInteger;
    summa1_1:=summa1 - komis1;
    summa2:=tot_sm - summa1;
    komis2:=summa2 * (1/100);
    cena2:=summa2 / Dm.Qry.FieldByName('KOL').AsInteger;;
    summa2_1:=summa2 - komis2;
    /////////
    if Mt_Rep.Active then Mt_Rep.Close;
    Mt_Rep.FieldDefs.Clear;
    Mt_Rep.FieldDefs.Add('Npp',ftString,10,False);       // № п/п
    Mt_Rep.FieldDefs.Add('Kol',ftFloat);                 // количество
    Mt_Rep.FieldDefs.Add('Summa1',ftFloat);            //
    Mt_Rep.FieldDefs.Add('Komis1',ftFloat);            //
    Mt_Rep.FieldDefs.Add('Cena1',ftFloat);            //
    Mt_Rep.FieldDefs.Add('Summa1_1',ftFloat);            //
    Mt_Rep.FieldDefs.Add('Summa2',ftFloat);            //
    Mt_Rep.FieldDefs.Add('Komis2',ftFloat);            //
    Mt_Rep.FieldDefs.Add('Cena2',ftFloat);            //
    Mt_Rep.FieldDefs.Add('Summa2_1',ftFloat);            //
    Mt_Rep.CreateDataSet;
    Mt_Rep.Open;
    Mt_Rep.Insert;
    Mt_Rep.FieldByName('Npp').AsString:=npp_str;
    Mt_Rep.FieldByName('Kol').AsInteger:=Dm.Qry.FieldByName('KOL').AsInteger;                 // количество
    Mt_Rep.FieldByName('Summa1').AsInteger:=Round(summa1);
    Mt_Rep.FieldByName('Komis1').AsInteger:=Round(komis1);
    Mt_Rep.FieldByName('Cena1').AsInteger:=Round(cena1);
    Mt_Rep.FieldByName('Summa1_1').AsInteger:=Round(summa1_1);
    Mt_Rep.FieldByName('Summa2').AsInteger:=Round(summa2);
    Mt_Rep.FieldByName('Komis2').AsInteger:=Round(komis2);
    Mt_Rep.FieldByName('Cena2').AsInteger:=Round(cena2);
    Mt_Rep.FieldByName('Summa2_1').AsInteger:=Round(summa2_1);
    Mt_Rep.Post;
    // show report
    Reports_F.Rep3.LoadFromFile('rep_komis.fr3');
    Reports_F.Rep3.ShowReport(True);
end;

procedure TReportSelect_F.BuildRep14;    //отчет по видам услуг плательщика
var
  qry,qry1:TIbQuery;
  Usl_nm, Usl_Npp:String;
  Rec_Count,usl_kod:Integer;
  Usl_st_pr,usl_tot_sm_pr,usl_disc,usl_tot_sm,usl_kol,usl_tot_fact:Double;
  id_zayv:   Integer;
  zakazchik: String;
label
  StopLabel14;
begin
  try
    qry:=TIbQuery.Create(Self);
    qry.Database:=Dm.DB;
    qry1:=TIBQuery.Create(self);
    qry1.Database:=Dm.DB;
      if DateOf(D1.date) > DateOf(D2.date) then
        begin
           Application.MessageBox('Неверный интервал','Внимание',mb_iconstop+mb_ok);
           Exit;
        end;
   RegtiDisp_F.AllRec_RegTi1.Execute;
   if RegtiDisp_F.ShowModal <> mrOk then
      begin
        Application.MessageBox('Не выбран плательщик!.Продолжение невозможно.',
                                'Внимание', MB_ICONWARNING+MB_OK );
        Exit;
      end;
   if RegtiDisp_F.DBGridEh1.DataSource.DataSet.FieldByName('ID').IsNull then
      Exit
     else
      begin
        id_zayv := RegtiDisp_F.DBGridEh1.DataSource.DataSet.FieldByName('ID').AsInteger;
        zakazchik := RegtiDisp_F.DBGridEh1.DataSource.DataSet.FieldByName('ZAYV').AsString;
        _Zak_Name:=zakazchik;
      end;
    if Mt_Rep.Active then Mt_Rep.Close;
    Mt_Rep.FieldDefs.Clear;
    Mt_Rep.FieldDefs.Add('Usluga',ftString,150,False);   // услуга
    Mt_Rep.FieldDefs.Add('Kol',ftFloat);                 // количество
    Mt_Rep.FieldDefs.Add('St_Price',ftFloat);            // цена по прайсу
    Mt_Rep.FieldDefs.Add('Total_Sum_price',ftFloat);     // сумма в цена прайса
    Mt_Rep.FieldDefs.Add('Discount',ftFloat);            // сумма скидки
    Mt_Rep.FieldDefs.Add('Total_Sum',ftFloat);           // сумма со скидкой
    Mt_Rep.FieldDefs.Add('Npp',ftString,10,False);       // № п/п
    Mt_Rep.FieldDefs.Add('Total_Sum_fact',ftFloat);      // сумма без скидки
    Mt_Rep.CreateDataSet;
    Mt_Rep.Open;
    qry.Close;
    qry.Sql.Clear;
    qry.SQL.Add(' select count(distinct a.id_usl) ');
    qry.SQL.Add(' from faktura_items a ');
    qry.SQL.Add('  left join faktura_head b on a.id_f_head = b.id ');
    qry.SQL.Add('  where cast( b.date_is as date) between :p0 and :p1 ');
    qry.SQL.Add('  and  b.plat_name = :p2 ');
    qry.Params[0].AsDate := dateOf(D1.Date);
    qry.Params[1].AsDate := dateOf(D2.Date);
    qry.Params[2].AsInteger:=id_zayv;
    qry.Open;
    Rec_Count:=qry.Fields[0].AsInteger;
     if Rec_Count =0 then
      begin
        Application.MessageBox('Услуги за указанный период отсутствуют.','Внимание',MB_ICONWARNING+MB_OK);
        Exit;
      end;
    qry.Close;
    qry.Sql.Clear;
    qry.SQL.Add('   select count(*), a.id_usl,c.stoim as price_stoim ,a.npp_str from faktura_items a ');
    qry.SQL.Add('   left join faktura_head b on a.id_f_head = b.id ');
    qry.SQL.Add('   left join price_lists c on a.id_usl = c.id ');
    qry.SQL.Add('   where cast(b.date_is as date) between :p0 and :p1 ');
    qry.SQL.Add('   and b.plat_name  = :p2 ');
    qry.SQL.Add('   group by a.id_usl,c.stoim,a.npp_str  order by a.npp_str ');
    qry.Params[0].AsDate := dateOf(D1.Date);
    qry.Params[1].AsDate := dateOf(D2.Date);
    qry.Params[2].AsInteger := id_zayv;
    qry.Open;
    qry.First;
//    FormRepUslSort.RadioGroup1.Enabled:=False;
//    FormRepUslSort.ShowModal; // выберем тип сортировочки
    PBar1.Position:=0;
    PBar1.Max:=rec_Count;
    //  Mt_Rep5.DisableControls;
    while not qry.Eof do //перебираем price_list -
      begin
        Application.ProcessMessages;
        if Stop_Flag then Goto StopLabel14;

        Usl_kod:=qry.FieldByName('ID_USL').asInteger;
        Usl_st_pr:=qry.FieldByName('PRICE_STOIM').asCurrency;
        Usl_Npp:=qry.FieldByName('NPP_STR').asString;
        //
        qry1.Close;
        qry1.SQL.Clear;
        qry1.SQL.Add('select a.usluga from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
        qry1.SQL.Add(' where a.npp_str=:p0 and (cast(b.date_is as date) between :p1 and :p2) ');
        qry1.SQL.Add(' and b.plat_name = :p3 and a.id_usl=:p4 ');
        qry1.Params[0].AsString:=Usl_Npp;
        qry1.Params[1].AsDate:=DateOf(D1.date);
        qry1.Params[2].AsDate:=DateOf(D2.date);
        qry1.Params[3].AsInteger:=id_zayv;
        qry1.Params[4].AsInteger:=usl_kod;
        qry1.Open;
        Usl_nm:=  qry1.Fields[0].AsString;
        //считаем кол-во конкретной услуги
        qry1.Close;
        qry1.SQL.Clear;
        qry1.SQL.Add('select sum(a.kol) from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
        qry1.SQL.Add(' where a.npp_str=:p0 and (cast(b.date_is as date) between :p1 and :p2) ');
        qry1.SQL.Add(' and b.plat_name = :p3  and a.id_usl=:p4');
        qry1.Params[0].AsString:=Usl_Npp;
        qry1.Params[1].AsDate:=DateOf(D1.date);
        qry1.Params[2].AsDate:=DateOf(D2.date);
        qry1.Params[3].AsInteger:=id_zayv;
        qry1.Params[4].AsInteger:=usl_kod;
        qry1.Open;
        Usl_kol:=qry1.Fields[0].AsFloat;
        //usl_tot_sm_pr:=Usl_kol*Usl_st_pr; // сумма услуг по прайс-листу
        //считаем сумму со скидками по ст. пр. листа
        qry1.Close;
        qry1.SQL.Clear;
        qry1.SQL.Add('select sum(a.total_sum) from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
        qry1.SQL.Add(' where a.npp_str=:p0 and (cast(b.date_is as date) between :p1 and :p2) ');
        qry1.SQL.Add(' and b.plat_name = :p3  and a.id_usl=:p4');
        qry1.Params[0].AsString:=Usl_Npp;
        qry1.Params[1].AsDate:=DateOf(D1.date);
        qry1.Params[2].AsDate:=DateOf(D2.date);
        qry1.Params[3].AsInteger:=id_zayv;
        qry1.Params[4].AsInteger:=usl_kod;
        qry1.Open;
        Usl_tot_sm:=qry1.Fields[0].AsFloat;
        //считаем сумму по фактическим ценам из с-фактуры
        qry1.Close;
        qry1.SQL.Clear;
        qry1.SQL.Add('select sum(a.stoim*a.kol) from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
        qry1.SQL.Add(' where a.npp_str=:p0 and (cast(b.date_is as date) between :p1 and :p2) ');
        qry1.SQL.Add(' and b.plat_name = :p3  and a.id_usl=:p4');
        qry1.Params[0].AsString:=Usl_Npp;
        qry1.Params[1].AsDate:=DateOf(D1.date);
        qry1.Params[2].AsDate:=DateOf(D2.date);
        qry1.Params[3].AsInteger:=id_zayv;
        qry1.Params[4].AsInteger:=usl_kod;
        qry1.Open;
        usl_tot_fact:=qry1.Fields[0].AsFloat;
        Usl_disc:=usl_tot_fact-Usl_tot_sm;//посчитали скидку
        If Usl_tot_sm > 0 then
             begin
                    with Mt_Rep do
                      begin
                         if not (State  in [dsEdit,dsInsert]) then
                            begin
                               Insert;
                               FieldByName('Usluga').AsString:=Usl_nm;
                               FieldByName('Kol').AsFloat:=usl_kol;
                               FieldByName('St_price').AsCurrency:=Usl_st_pr;
                               FieldByName('Total_sum_price').AsCurrency:=Usl_tot_sm_pr;
                               FieldByName('Discount').AsCurrency:=Usl_disc;
                               FieldByName('Total_sum').AsCurrency:=Usl_tot_sm;
                               FieldByName('Npp').AsString:=Usl_Npp;
                               FieldByName('Total_sum_fact').AsCurrency:=usl_tot_fact;
                               Post;
                            end;
                     end;
             end;
        PBar1.StepBy(1);
        qry.Next;
      end; //конец цикла перебора
      qry.Close;
      PBar1.Position:=0;
      Mt_Rep.SortByFields('Npp');
      Reports_F.Rep3.LoadFromFile('rep_uslugi_zak.fr3');
      Reports_F.Rep3.ShowReport(True);
      StopLabel14: Application.MessageBox('Построение отчета прервано.','Внимание',MB_OK+MB_ICONINFORMATION);
  finally
    qry.Free;
    qry1.Free;
  end;


end;

procedure TReportSelect_F.BuildRep2;
var
 qry:TIbQuery;
 s:String;
 myarray : array of string;
 days_year:Integer;
begin

  if DateOf(D2.Date) < DateOf(D1.Date) then
    begin
      Application.MessageBox('Неверный диапазон дат.Отчет не может быть сформирован.','Ошибка.',MB_ICONERROR+MB_OK);
      Exit;
    end;
  try
   days_year:= DaysBetween(D1.Date,D2.Date)+1;
   qry:=TIbQuery.Create(Self);
   qry.Database:=Dm.DB;
   qry.Transaction:=DM.IBTR;
   // *******
   qry.Close;
   qry.sql.Clear;
   qry.Sql.Add('select count(a.id) from ts a ');
   qry.Sql.Add('left join ticket b on a.id_ticket = b.id ');
   qry.Sql.Add(' where a.target = 1 and (cast(dt_is as date) between :p0 and :p1) ');
   qry.Params[0].AsDate:=DateOf(D1.Date);
   qry.Params[1].AsDate:=DateOf(D2.Date);
   qry.Open;
   _Ts_Period:=qry.Fields[0].AsInteger;
   _Ts_Avg:=Round(_Ts_Period/days_year);
   //******
   qry.Close;
   qry.sql.Clear;
   qry.Sql.Add('select count(a.id) from parties a left join ticket b on a.id_ticket = b.id ');
   qry.Sql.Add(' where  (cast(b.dt_is as date) between :p0 and :p1 ) ');
   qry.Params[0].AsDate:=DateOf(D1.Date);
   qry.Params[1].AsDate:=DateOf(D2.Date);
   qry.Open;
   _Tp_Period:=qry.Fields[0].AsInteger;
   _Tp_Avg:=Round(_Tp_Period/days_year);

   //******
//   qry.Close;
//   qry.sql.Clear;
//   s:= 'select sum(a.kol) from faktura_items a left join faktura_head b on a.id_f_head = b.id ';
//   s:=s+'where ((a.npp_str=:p0) or (a.npp_str=:p1) or (a.npp_str=:p2) or (a.npp_str=:p3) or (a.npp_str=:p4)) ';
//   s:=s+' and  (cast(b.date_is as date)) between :p5  and :p6 ';
//   qry.Sql.Add(s);
//   qry.Params[0].AsString:='1.1.1';
//   qry.Params[1].AsString:='1.1.3';
//   qry.Params[2].AsString:='1.2.1';
//   qry.Params[3].AsString:='1.2.2';
//   qry.Params[4].AsString:='1.2.5';
//   qry.Params[5].AsDate:=_D_StartMonth;
//   qry.Params[6].AsDate:=DateOf(D2.Date);
//   qry.Open;
//   _Tp_PeriodOff:=qry.Fields[0].AsInteger;
    SetLength(myarray,5);
    myarray[0]:='1.1.1';
    myarray[1]:='1.1.3';
    myarray[2]:='1.2.1';
    myarray[3]:='1.2.2';
    myarray[4]:='1.2.5';
    _Tp_PeriodOff:=CalcCountTP(myarray,'p');
   //******
   qry.Close;
   qry.sql.Clear;
   qry.Sql.Add('select sum(a.total_sum)   from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
   qry.Sql.Add(' where cast(b.date_is as date) between :p0 and :p1 and (b.pass_flag = 1)  ');
   qry.Params[0].AsDate:=DateOf(D1.Date);
   qry.Params[1].AsDate:=DateOf(D2.Date);
   qry.Open;
   _SumUslug_Period:=qry.Fields[0].AsFloat;
   //******
   _Tp_Avg:= Round(_Tp_PeriodOff/days_year);
   if _Tp_Period <> 0  then
      _Cheque_Avg:=_SumUslug_Period / _Tp_PeriodOff
      else
      _Cheque_Avg:=0;
   //******
//   qry.Close;
//   qry.sql.Clear;
//   qry.Sql.Add(' select count(a.id)   from parties a left join ticket b on a.id_ticket = b.id ');
//   qry.Sql.Add(' where (cast(b.dt_is as date) between :p0 and :p1) and b.cust_proc containing :p2  ');
//   qry.Params[0].AsDate:=_D_StartMonth;
//   qry.Params[1].AsDate:=DateOf(D2.Date);
//   qry.Params[2].AsString:='Импорт';
//   qry.Open;
//   _Tp_Import :=qry.Fields[0].AsInteger;
//   //******
//   qry.Close;
//   qry.sql.Clear;
//   qry.Sql.Add(' select count(a.id)   from parties a left join ticket b on a.id_ticket = b.id ');
//   qry.Sql.Add(' where (cast(b.dt_is as date) between :p0 and :p1) and b.cust_proc not containing :p2  ');
//   qry.Params[0].AsDate:=_D_StartMonth;
//   qry.Params[1].AsDate:=DateOf(D2.Date);
//   qry.Params[2].AsString:='Импорт';
//   qry.Open;
//   _Tp_Reimport :=qry.Fields[0].AsInteger;
    SetLength(myarray,2);
    myarray[0]:='1.1.1';
    myarray[1]:='1.1.3';
    _Tp_Import:=CalcCountTP(myarray,'p');
    SetLength(myarray,3);
    myarray[0]:='1.2.1';
    myarray[1]:='1.2.2';
    myarray[2]:='1.2.5';
    _Tp_Reimport:=CalcCountTP(myarray,'p');
//************
   qry.Close;
   qry.sql.Clear;
   qry.Sql.Add('select sum(a.total_sum) from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
   qry.Sql.Add(' where cast(b.date_is as date) between :p0 and :p1 and (b.pass_flag = 1) and (a.ts_flag=1)  ');
   qry.Params[0].AsDate:=DateOf(D1.Date);
   qry.Params[1].AsDate:=DateOf(D2.Date);
   qry.Open;
   _Sum_TamSklad:=qry.Fields[0].AsFloat;
//***************
   qry.Close;
   qry.sql.Clear;
   qry.Sql.Add('select count(a.id) from decls a where cast(a.dt as date) between :p0 and :p1 ');
   qry.Params[0].AsDate:=DateOf(D1.Date);
   qry.Params[1].AsDate:=DateOf(D2.Date);
   qry.Open;
   _Dt_Period:=qry.Fields[0].Asinteger;
//***************
   if _Dt_Period <> 0 then
      _Dt_Avg := Round( _Sum_TamSklad / _Dt_Period)
     else
      _Dt_Avg:=0;
//****************

   Reports_F.Rep3.LoadFromFile('rep_interval.fr3');
   Reports_F.Rep3.ShowReport(True);
  finally
   qry.Free;
  end;
end;

procedure TReportSelect_F.BuildRep3;
begin
   if Reports_F.Qry_KPP.Active then Reports_F.Qry_KPP.Close;
   Reports_F.Qry_KPP.Params[0].AsDate:=DateOf(D1.Date);
   Reports_F.Qry_KPP.Params[1].AsDate:=DateOf(D2.Date);
   Reports_F.Qry_KPP.Open;
   Reports_F.Rep3.LoadFromFile('rep_kpp.fr3');
   Reports_F.Rep3.ShowReport(True);
   Reports_F.Qry_KPP.Close;
end;

procedure TReportSelect_F.BuildRep4;
var
  Goods_n,group:String;
  Kol_Tp_im,Kol_Tp_rus,Rn,Rec_Count:Integer;
  Brut_Tp_im,Brut_Tp_rus:Double;
  qry1:TIbQuery;
label
  StopLabel4;
begin
    if DateOf(D1.date) > DateOf(D2.date) then
      begin
         Application.MessageBox('Неверный интервал','Внимание',mb_iconstop+mb_ok);
         Exit;
      end;
 if RepSortGoods_F.ShowModal <> mrOK then Exit;
  try
    qry1:=TIBQuery.Create(self);;
    qry1.Database:=Dm.DB;
if Mt_Rep.Active then Mt_Rep.Close;
    Mt_Rep.FieldDefs.Clear;
    Mt_Rep.FieldDefs.Add('Group',ftString,3,False);
    Mt_Rep.FieldDefs.Add('Goods',ftString,50,False);
    Mt_Rep.FieldDefs.Add('Kol_im',ftInteger);
    Mt_Rep.FieldDefs.Add('Weight_im',ftFloat);
    Mt_Rep.FieldDefs.Add('Kol_rus',ftInteger);
    Mt_Rep.FieldDefs.Add('Weight_rus',ftFloat);
    Mt_Rep.CreateDataSet;
    Mt_Rep.Open;
    DM.Qry.Close;
    DM.Qry.Sql.Clear;
    DM.Qry.SQL.Add('select count(*) from goods_cat ');
    DM.Qry.Open;
    Rec_Count:=DM.Qry.Fields[0].AsInteger;
    DM.Qry.Close;
    DM.Qry.Sql.Clear;
    DM.Qry.SQL.Add('select id,kod,name from goods_cat order by kod desc');
    DM.Qry.Open;
  //  FormPB.Show;
    PBar1.Position:=0;
    PBar1.Max:=rec_Count;
    while not DM.Qry.Eof do //перебираем goods
      begin
        Application.ProcessMessages;
        if Stop_Flag then Goto StopLabel4;

        Rn:=DM.Qry.FieldByName('ID').asInteger;
        Goods_n:=DM.Qry.FieldByName('Name').asString;
        group:=DM.Qry.FieldByName('Kod').asString;
        //считаем кол-во ТП  import
        qry1.Close;
        qry1.SQL.Clear;
        qry1.SQL.Add(' select count(a.id) from parties a ');
        qry1.SQL.Add(' left join ticket b on a.id_ticket = b.id ');
        qry1.SQL.Add(' where a.goods_cat =:p0 and (cast(b.dt_is as date) between :p1 and :p2) and a.valuta <> 551 ');
        qry1.Params[0].AsInteger:=Rn;
        qry1.Params[1].AsDate:=DateOf(D1.date);
        qry1.Params[2].AsDate:=DateOf(D2.date);
        qry1.Open;
        Kol_Tp_im:=qry1.Fields[0].AsInteger;
        //считаем кол-во ТП  Rus
        qry1.Close;
        qry1.SQL.Clear;
        qry1.SQL.Add(' select count(a.id) from parties a ');
        qry1.SQL.Add(' left join ticket b on a.id_ticket = b.id ');
        qry1.SQL.Add(' where a.goods_cat =:p0 and (cast(b.dt_is as date) between :p1 and :p2) and a.valuta = 551 ');
        qry1.Params[0].AsInteger:=Rn;
        qry1.Params[1].AsDate:=DateOf(D1.date);
        qry1.Params[2].AsDate:=DateOf(D2.date);
        qry1.Open;
        Kol_Tp_rus:=qry1.Fields[0].AsInteger;
        //считаем вес тп в тоннах import
        qry1.Close;
        qry1.SQL.Clear;
        qry1.SQL.Add(' select sum(a.brutto) from parties a ');
        qry1.SQL.Add(' left join ticket b on a.id_ticket = b.id ');
        qry1.SQL.Add(' where a.goods_cat =:p0 and (cast(b.dt_is as date) between :p1 and :p2) and a.valuta <> 551 ');
        qry1.Params[0].AsInteger:=Rn;
        qry1.Params[1].AsDate:=DateOf(D1.date);
        qry1.Params[2].AsDate:=DateOf(D2.date);
        qry1.Open;
        Brut_Tp_im:=qry1.Fields[0].AsFloat/1000;
        //считаем вес тп в тоннах Rus
        qry1.Close;
        qry1.SQL.Clear;
        qry1.SQL.Add(' select sum(a.brutto) from parties a ');
        qry1.SQL.Add(' left join ticket b on a.id_ticket = b.id ');
        qry1.SQL.Add(' where a.goods_cat =:p0 and (cast(b.dt_is as date) between :p1 and :p2) and a.valuta =551 ');
        qry1.Params[0].AsInteger:=Rn;
        qry1.Params[1].AsDate:=DateOf(D1.date);
        qry1.Params[2].AsDate:=DateOf(D2.date);
        qry1.Open;
        Brut_Tp_rus:=qry1.Fields[0].AsFloat/1000;
                   with Mt_Rep do
                      begin
                         if not (State  in [dsEdit,dsInsert]) then
                            begin
                               Insert;
                               FieldByName('Group').AsString:=group;
                               FieldByName('Goods').AsString:=Goods_n;
                               FieldByName('Kol_im').Asinteger:=Kol_Tp_im;
                               FieldByName('Weight_im').AsFloat:=Brut_Tp_im;
                               FieldByName('Kol_rus').Asinteger:=Kol_Tp_rus;
                               FieldByName('Weight_rus').AsFloat:=Brut_Tp_rus;
                               Post;
                            end;
                     end;
  //      FormPB.PBar1.StepBy(1);
        PBar1.StepBy(1);
        DM.Qry.Next;
      end; //конец цикла перебора товаров
  //    Thr1.Terminate;
      DM.Qry.Close;
      case RepSortGoods_F.Rg1.ItemIndex of
      1:  Mt_Rep.SortByFields('Kol_im'+ ' DESC');
      0:  Mt_Rep.SortByFields('Group'+ ' ASC');
      end;
      Reports_F.Rep3.LoadFromFile('rep_goods.fr3');
      Reports_F.Rep3.ShowReport(True);
      StopLabel4: Application.MessageBox('Построение отчета прервано.','Внимание',MB_OK+MB_ICONINFORMATION);
  finally
      PBar1.Position:=0;
      qry1.Free;
  end;


end;

procedure TReportSelect_F.BuildRep5;
var
  qry,qry1:TIbQuery;
  Usl_nm, Usl_Npp:String;
  Rec_Count,usl_kod:Integer;
  Usl_st_pr,usl_tot_sm_pr,usl_disc,usl_tot_sm,usl_kol,usl_tot_fact:Double;
label
  StopLabel5;
begin
 try
    qry:=TIbQuery.Create(Self);
    qry.Database:=Dm.DB;
    qry1:=TIBQuery.Create(self);;
    qry1.Database:=Dm.DB;
      if DateOf(D1.date) > DateOf(D2.date) then
        begin
           Application.MessageBox('Неверный интервал','Внимание',mb_iconstop+mb_ok);
           Exit;
        end;
    if Mt_Rep.Active then Mt_Rep.Close;
    Mt_Rep.FieldDefs.Clear;
    Mt_Rep.FieldDefs.Add('Usluga',ftString,150,False);   // услуга
    Mt_Rep.FieldDefs.Add('Kol',ftFloat);                 // количество
    Mt_Rep.FieldDefs.Add('St_Price',ftFloat);            // цена по прайсу
    Mt_Rep.FieldDefs.Add('Total_Sum_price',ftFloat);     // сумма в цена прайса
    Mt_Rep.FieldDefs.Add('Discount',ftFloat);            // сумма скидки
    Mt_Rep.FieldDefs.Add('Total_Sum',ftFloat);           // сумма со скидкой
    Mt_Rep.FieldDefs.Add('Npp',ftString,10,False);       // № п/п
    Mt_Rep.FieldDefs.Add('Total_Sum_fact',ftFloat);      // сумма без скидки
    Mt_Rep.CreateDataSet;
    Mt_Rep.Open;
    qry.Close;
    qry.Sql.Clear;
    qry.SQL.Add(' select count(distinct a.id_usl) ');
    qry.SQL.Add(' from faktura_items a ');
    qry.SQL.Add('  left join faktura_head b on a.id_f_head = b.id ');
    qry.SQL.Add('  where cast( b.date_is as date) between :p0 and :p1 ');
    qry.Params[0].AsDate := dateOf(D1.Date);
    qry.Params[1].AsDate := dateOf(D2.Date);
    qry.Open;
    Rec_Count:=qry.Fields[0].AsInteger;
     if Rec_Count =0 then
      begin
        Application.MessageBox('Услуги за указанный период отсутствуют.','Внимание',MB_ICONWARNING+MB_OK);
        Exit;
      end;
    qry.Close;
    qry.Sql.Clear;
    qry.SQL.Add('   select count(*), a.id_usl,c.stoim as price_stoim ,a.npp_str from faktura_items a ');
    qry.SQL.Add('   left join faktura_head b on a.id_f_head = b.id ');
    qry.SQL.Add('   left join price_lists c on a.id_usl = c.id ');
    qry.SQL.Add('   where cast(b.date_is as date) between :p0 and :p1 ');
    qry.SQL.Add('   group by a.id_usl,c.stoim,a.npp_str  order by a.npp_str ');
    qry.Params[0].AsDate := dateOf(D1.Date);
    qry.Params[1].AsDate := dateOf(D2.Date);
    qry.Open;
    qry.First;
//    FormRepUslSort.RadioGroup1.Enabled:=False;
//    FormRepUslSort.ShowModal; // выберем тип сортировочки
    PBar1.Position:=0;
    PBar1.Max:=rec_Count;
    //  Mt_Rep.DisableControls;
    while not qry.Eof do //перебираем price_list -
      begin
        Application.ProcessMessages;
        if Stop_Flag then Goto StopLabel5;

        Usl_kod:=qry.FieldByName('ID_USL').asInteger;
        Usl_st_pr:=qry.FieldByName('PRICE_STOIM').asCurrency;
        Usl_Npp:=qry.FieldByName('NPP_STR').asString;
        //
        qry1.Close;
        qry1.SQL.Clear;
        qry1.SQL.Add('select a.usluga from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
        qry1.SQL.Add(' where a.npp_str=:p0 and (cast(b.date_is as date) between :p1 and :p2) and a.id_usl = :p3 ');
        qry1.Params[0].AsString:=Usl_Npp;
        qry1.Params[1].AsDate:=DateOf(D1.date);
        qry1.Params[2].AsDate:=DateOf(D2.date);
        qry1.Params[3].AsInteger:=usl_kod;
        qry1.Open;
        Usl_nm:=  qry1.Fields[0].AsString;
        //считаем кол-во конкретной услуги
        qry1.Close;
        qry1.SQL.Clear;
        qry1.SQL.Add('select sum(a.kol) from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
        qry1.SQL.Add(' where a.npp_str=:p0 and (cast(b.date_is as date) between :p1 and :p2) and a.id_usl = :p3 ');
        qry1.Params[0].AsString:=Usl_Npp;
        qry1.Params[1].AsDate:=DateOf(D1.date);
        qry1.Params[2].AsDate:=DateOf(D2.date);
        qry1.Params[3].AsInteger:=usl_kod;
        qry1.Open;
        Usl_kol:=qry1.Fields[0].AsFloat;
        //usl_tot_sm_pr:=Usl_kol*Usl_st_pr; // сумма услуг по прайс-листу
        //считаем сумму со скидками по ст. пр. листа
        qry1.Close;
        qry1.SQL.Clear;
        qry1.SQL.Add('select sum(a.total_sum) from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
        qry1.SQL.Add(' where a.npp_str=:p0 and (cast(b.date_is as date) between :p1 and :p2) and a.id_usl = :p3  ');
        qry1.Params[0].AsString:=Usl_Npp;
        qry1.Params[1].AsDate:=DateOf(D1.date);
        qry1.Params[2].AsDate:=DateOf(D2.date);
        qry1.Params[3].AsInteger:=usl_kod;
        qry1.Open;
        Usl_tot_sm:=qry1.Fields[0].AsFloat;
        //считаем сумму по фактическим ценам из с-фактуры
        qry1.Close;
        qry1.SQL.Clear;
        qry1.SQL.Add('select sum(a.stoim*a.kol) from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
        qry1.SQL.Add(' where a.npp_str=:p0 and (cast(b.date_is as date) between :p1 and :p2) and a.id_usl = :p3 ');
        qry1.Params[0].AsString:=Usl_Npp;
        qry1.Params[1].AsDate:=DateOf(D1.date);
        qry1.Params[2].AsDate:=DateOf(D2.date);
        qry1.Params[3].AsInteger:=usl_kod;
        qry1.Open;
        usl_tot_fact:=qry1.Fields[0].AsFloat;
        Usl_disc:=usl_tot_fact-Usl_tot_sm;//посчитали скидку
        If Usl_tot_sm > 0 then
             begin
                    with Mt_Rep do
                      begin
                         if not (State  in [dsEdit,dsInsert]) then
                            begin
                               Insert;
                               FieldByName('Usluga').AsString:=Usl_nm;
                               FieldByName('Kol').AsFloat:=usl_kol;
                               FieldByName('St_price').AsCurrency:=Usl_st_pr;
                               FieldByName('Total_sum_price').AsCurrency:=Usl_tot_sm_pr;
                               FieldByName('Discount').AsCurrency:=Usl_disc;
                               FieldByName('Total_sum').AsCurrency:=Usl_tot_sm;
                               FieldByName('Npp').AsString:=Usl_Npp;
                               FieldByName('Total_sum_fact').AsCurrency:=usl_tot_fact;
                               Post;
                            end;
                     end;
             end;
        PBar1.StepBy(1);
        qry.Next;
      end; //конец цикла перебора
      qry.Close;
      PBar1.Position:=0;
   //   Mt_Rep.SortOrder:='DESC';
      case FormRepUslSort.RadioGroup1.ItemIndex of
        0:    Mt_Rep.SortByFields('Total_Sum'+ ' DESC');
        1:    Mt_Rep.SortByFields('Discount'+ ' DESC');
        2:    Mt_Rep.SortByFields('Kol'+ ' DESC');
        3:    Mt_Rep.SortByFields('Npp');
      end;
      Reports_F.Rep3.LoadFromFile('rep_uslugi.fr3');
      Reports_F.Rep3.ShowReport(True);
      StopLabel5: Application.MessageBox('Построение отчета прервано.','Внимание',MB_OK+MB_ICONINFORMATION);
 finally
  qry.Free;
  qry1.Free;
 end;
end;

procedure TReportSelect_F.BuildRep7;
var
  Rn,Rec_Count,i:Integer;
  FN:String;
  InSaldo,Sales,cash,bank,OutSaldo:Currency;
  qry:TIbquery;
label
  StopLabel7;
begin

    if DateOf(D1.date) > DateOf(D2.date) then
      begin
         Application.MessageBox('Неверный интервал','Внимание',mb_iconstop+mb_ok);
         Exit;
      end;
    try
      qry:=TIBQuery.Create(Self);
      qry.Database:=Dm.DB;
      if Mt_Rep.Active then Mt_Rep.Close;
      Mt_Rep.FieldDefs.Clear;
      Mt_Rep.FieldDefs.Add('Firm',ftString,170,False);
      Mt_Rep.FieldDefs.Add('In_Saldo',ftCurrency);
      Mt_Rep.FieldDefs.Add('Sales',ftCurrency);
      Mt_Rep.FieldDefs.Add('Pay_bank',ftCurrency);
      Mt_Rep.FieldDefs.Add('Pay_cash',ftCurrency);
      Mt_Rep.FieldDefs.Add('Out_Saldo',ftCurrency);
      Mt_Rep.CreateDataSet;
      Mt_Rep.Open;
      DM.Qry.Close;
      DM.Qry.Sql.Clear;
      DM.Qry.SQL.Add('select count(*) from reg_ti ');
      DM.Qry.Open;
      Rec_Count:=DM.Qry.Fields[0].AsInteger;
      DM.Qry.Close;
      DM.Qry.Sql.Clear;
      //DM.Qry.SQL.Add('select id,zayv, telefon, fio_repres from reg_ti order by zayv desc');
      DM.Qry.SQL.Add('select id,zayv from reg_ti');
      DM.Qry.Open;
      RepZakSort_F.ShowModal;
      PBar1.Position:=0;
      PBar1.Max:=rec_Count;
      i:=1;
      while (not DM.Qry.Eof) do //перебираем фирмы
        begin
          Application.ProcessMessages;
          if Stop_Flag then Goto StopLabel7;
          Rn:=DM.Qry.FieldByName('ID').asInteger;
    // для Татьяны
    //      Fn:=DM.Qry.FieldByName('Zayv').asString+' '+DM.Qry_Rep.FieldByName('Telefon').asString+' '+DM.Qry_Rep.FieldByName('Fio_repres').asString;
          Fn:=DM.Qry.FieldByName('ZAYV').asString;
    //      if not qry.Transaction.InTransaction then qry.Transaction.StartTransaction;
          //считаем входящее сальдо на дату начала периода
          qry.Close;
          qry.SQL.Clear;
          qry.SQL.Add('select sum(money) from cl_accounts_vw where zayv=:p0 and cast(dt as date) < :p1');
          qry.Params[0].AsInteger:=Rn;
          qry.Params[1].AsDate:= DateOf(D1.date);
          qry.Open;
          InSaldo:=qry.Fields[0].AsCurrency;
          //считаем продажи за период  - счета фактуры
          qry.Close;
          qry.SQL.Clear;
          qry.SQL.Add('select sum(money) from cl_accounts_vw where zayv=:p0 and (cast(dt as date) between :p1 and :p2) and (kod_doc = 4) ');
          qry.Params[0].AsInteger:=Rn;
          qry.Params[1].AsDate:= DateOf(D1.date);
          qry.Params[2].AsDate:= DateOf(D2.date);
          qry.Open;
          Sales:=qry.Fields[0].AsCurrency;
          //считаем поступления - безнал
          qry.Close;
          qry.SQL.Clear;
          qry.SQL.Add('select sum(money) from cl_accounts_vw where zayv=:p0 and (cast(dt as date) between :p1 and :p2) and (kod_doc = 1 or kod_doc = 3)');
          qry.Params[0].AsInteger:=Rn;
          qry.Params[1].AsDate:= DateOf(D1.date);
          qry.Params[2].AsDate:= DateOf(D2.date);
          qry.Open;
          bank:=qry.Fields[0].AsCurrency;
          //считаем поступления - нал
          qry.Close;
          qry.SQL.Clear;
          qry.SQL.Add('select sum(money) from cl_accounts_vw where zayv=:p0 and (cast(dt as date) between :p1 and :p2) and (kod_doc = 2)');
          qry.Params[0].AsInteger:=Rn;
          qry.Params[1].AsDate:= DateOf(D1.date);
          qry.Params[2].AsDate:= DateOf(D2.date);
          qry.Open;
          cash:=qry.Fields[0].AsCurrency;
          OutSaldo:=Insaldo+Sales+bank+cash;
          if ((outsaldo <> 0) or (insaldo<>0) or (sales<>0) or (bank<>0) or (cash<>0)) then
             begin
                      with Mt_Rep do
                        begin
                           if not (State  in [dsEdit,dsInsert]) then
                              begin
                                 Insert;
                                 FieldByName('Firm').AsString:=Fn;
                                 FieldByName('In_Saldo').AsCurrency:=InSaldo;
                                 FieldByName('Sales').AsCurrency:=Sales;
                                 FieldByName('Pay_bank').AsCurrency:=bank;
                                 FieldByName('Pay_cash').AsCurrency:=Cash;
                                 FieldByName('Out_Saldo').AsCurrency:=OutSaldo;
                                 Post;
                              end;
                       end;
             end;
          PBar1.StepBy(1);
          Label1.Caption:=Format('Обработано: %s из %s записей',[IntToStr(i),IntToStr(Rec_Count)]);
          Application.ProcessMessages;
          i:=i+1;
          DM.Qry.Next;
        end; //конец цикла перебора фирм
        DM.Qry.Close;
        case RepZakSort_F.RG1.ItemIndex of
          0:    Mt_Rep.SortByFields('Firm');
          1:    Mt_Rep.SortByFields('Sales');
          2:    Mt_Rep.SortByFields('Out_saldo');
        end;

        //if Stop_Flag then Exit;
        Reports_F.Rep3.LoadFromFile('rep_upr_cl.fr3');
        Reports_F.Rep3.PrepareReport(True);
        Reports_F.Rep3.ShowPreparedReport;
        PBar1.Position:=0;
    //    ShowMessage (IntToStr(Mt_Rep.RecordCount));
    StopLabel7: Application.MessageBox('Построение отчета прервано.','Внимание',MB_OK+MB_ICONINFORMATION);
    finally
      qry.free;
      Label1.Caption:=Caption1;
    end;

end;

procedure TReportSelect_F.Button1Click(Sender: TObject);
  var c:Integer;
begin
  //TreeView1.Selected.AbsoluteIndex
end;

procedure TReportSelect_F.Button3Click(Sender: TObject);
begin
//ShowMessage ('Click');
end;

function TReportSelect_F.CalcCountTP(ar: array of string; period: Char): Integer;
var
  l,I:Integer;
  qry1:TIBQuery;
  kol_tp:Integer;
begin
  qry1 := TIBQuery.Create(Self);
  qry1.Database:=Dm.DB;
  qry1.Transaction:=DM.IBTR;
  try
    kol_tp:=0;
    l:=Length(ar);
    if (l <> 0) then
      begin
        for I := 0 to l-1 do
          begin
            qry1.Close;
            qry1.SQL.Clear;
            qry1.SQL.Add('select sum(a.kol) from faktura_items a left join faktura_head b on a.id_f_head = b.id ');
            qry1.SQL.Add(' where a.npp_str=:p0 and (cast(b.date_is as date) between :p1 and :p2)  ');
            qry1.Params[0].AsString:=ar[I];
             case period of
             'd':
              begin
                qry1.Params[1].AsDate:=DateOf(D1.date);
                qry1.Params[2].AsDate:=DateOf(D1.date)
              end;
             'p':
              begin
                qry1.Params[1].AsDate:=DateOf(D1.date);
                qry1.Params[2].AsDate:=DateOf(D2.date)
              end;
             'm':
              begin
                qry1.Params[1].AsDate:=_D_StartMonth;
                qry1.Params[2].AsDate:=DateOf(D1.date)
              end;
             end;
            qry1.Open;
            kol_tp:=kol_tp + qry1.Fields[0].AsInteger;
          end;
      end;

  finally
    qry1.Free;
  end;
Result:= kol_tp;

end;

procedure TReportSelect_F.CancelBuildReport;
begin
     if Application.MessageBox('Остановить построение отчета?',
          'Внимание',MB_ICONQUESTION+MB_YESNO) = ID_YES then
         begin
           Application.ProcessMessages;
           Stop_Flag:=True;
           PBar1.Position:=0;
         end;
end;

procedure TReportSelect_F.FormCreate(Sender: TObject);
begin
  D1.Date:=Date;
  D2.Date:=Date;
end;

procedure TReportSelect_F.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //ShowMessage('KeyDown');
end;

procedure TReportSelect_F.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //ShowMessage('PressKey');
   if Key = #27 then CancelBuildReport;
end;

procedure TReportSelect_F.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
// if Key=VK_ESCAPE then CancelBuildReport;
end;

procedure TReportSelect_F.FormShow(Sender: TObject);
begin
  Label1.Caption:=Caption1;
end;

procedure TReportSelect_F.N1Click(Sender: TObject);
begin
//
end;

procedure TReportSelect_F.N2Click(Sender: TObject);
begin
//
end;

procedure TReportSelect_F.StartReport(Num:Integer);
var
 Year, Month, Day: Word;
begin
  Stop_Flag:=False;
  p1:=DateOf(D1.date);
  p2:=p1+1;
  //  ShowMessage(date_Prev);
  DecodeDate(DateOf(D1.date),Year,Month,Day);
  _D1:=DateOf(d1.Date);
  _D2:=dateOf(d2.Date);
  _D_Prev:=(p1-1);
  _D_StartMonth:=p2-Day; // 1-е число месяца
  case Num of
    1,2: BuildRep0(Num); //ежедневный
    3: BuildRep2;//сводка за период
    4: BuildRep3; //отчет о въезде ТС
    5: BuildRep4; //отчет по категориям товаров
    7: BuildRep5;//Отчет по видам услуг за период
    8: BuildRep11;//Отчет по видам услуг заказчика
    9: BuildRep14;//Отчет по видам услуг плательщика
    11:BuildRep16; //ShowMessage('Отчет по холдингу-заказчику');
    12:BuildRep15;// ShowMessage('Отчет по холдингу-плательщику');
    13: BuildRep12;//Отчет комиссионера
    14: BuildRep7;//Отчет по заказчикам за период

//    6: ShowMessage('Отчет в разработке'); //Отчет по видам услуг со скидками

//    8: ShowMessage('Отчет в разработке');// Отчет по интервалу ТО
//    9: ShowMessage('Отчет в разработке');//Отчет по оформ. ТП брокерами
//    10: ShowMessage('Отчет в разработке');//Отчет о предоставленных услугах со скидками
//    13: ShowMessage('Отчет в разработке');//Отчет по заказчикам / плательщикам за период
//    15: BuildRep15;//ShowMessage('Отчет в разработке'); Отчет по видам услуг холдинга
   else
    ShowMessage('Отчет не может быть построен');
  end;
end;


end.
