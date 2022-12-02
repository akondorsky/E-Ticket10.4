unit Pass_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh, DB, IBX.IBCustomDataSet, IBX.IBQuery, StdCtrls, ActnList,
  PlatformDefaultStyleActnCtrls, ActnMan, Buttons, ExtCtrls,DateUtils, Mask,
  System.Actions, EhLibVCL;

type
  TPass_F = class(TForm)
    Qry_SelectDocs: TIBQuery;
    Ds_SelectDocs: TDataSource;
    E_Trailer: TComboBox;
    Lbl_KT: TLabel;
    E_KT: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Grid_Docs: TDBGridEh;
    BitBtn1: TBitBtn;
    ActionManager1: TActionManager;
    A_PassCreate: TAction;
    Rg1: TRadioGroup;
    E_Ztk: TEdit;
    Label3: TLabel;
    E_Ts: TComboBox;
    Gb_Dov: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    E_DDoc: TMaskEdit;
    E_NDov: TEdit;
    Label6: TLabel;
    E_Fio: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure A_PassCreateUpdate(Sender: TObject);
    procedure A_PassCreateExecute(Sender: TObject);
    procedure Rg1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Grid_DocsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
    procedure OpenDocs;
  public
    { Public declarations }
    function SetDeadLineTime(CurDT:TdateTime):TDateTime;
  end;

const
  body_text1:String =
        ' select type_doc,name,ndoc,ddoc,zayv '+
        ' from '+
        ' ( ' +
        '   select a.type_doc,a.name,a.ndoc,a.ddoc, f.zayv '+
        '   from do_outdocs a '+
        '   left join wh_act_out b on a.id_actwh = b.id '+
        '   left join wh_act_in c on b.id_actin = c.id '+
        '   left join parties d on c.id_tp = d.id ' +
        '   left join ticket_parts e on d.id_part = e.id ' +
        '   left join reg_ti f on e.id_owner = f.id where ';
  body_text2:String =
        '   union all '+
        '   select a.type_doc,a.name,a.ndoc,a.ddoc,f.zayv '+
        '   from out_docs a '+
        '   left join parties b on a.id_tp = b.id '+
        '   left join ticket_parts e on b.id_part = e.id '+
        '   left join reg_ti f on e.id_owner = f.id where ';
  order_text:String = ' order by zayv ';
  or_text:String = 'OR';
var
  Pass_F: TPass_F;

implementation

{$R *.dfm}
uses dm_u,main, Reports_U;
{
     d.id_ticket = :p0

     b.id_ticket = :p1
   )


}
procedure TPass_F.OpenDocs;
var
 c1, text:String;
 i:Integer;
begin
 //for i := 0 to High(DynArrayInt) do
 for i := 0 to Main_F.MyList.Count-1 do
   begin
    //c1:= format( c1 + ' e.id= %s ' + or_text ,[IntToStr(DynArrayInt[i])]);
    c1:= format( c1 + ' e.id= %s ' + or_text ,[IntToStr(integer(Main_F.MyList[i]))]);
   end;

Delete(c1,Length(c1) - Length(or_text)+1,Length(or_text));
text := body_text1 + c1 + body_text2 + c1 + ' ) ' + order_text;
    if Qry_SelectDocs.Active then Qry_SelectDocs.Close;
    Qry_SelectDocs.SQL.Clear;
    Qry_SelectDocs.SQL.Add(text);
//    Qry_SelectDocs.Params[0].AsInteger:=DM.Qry_TSID_TICKET.AsInteger;
//    Qry_SelectDocs.Params[1].AsInteger:=DM.Qry_TSID_TICKET.AsInteger;
    Qry_SelectDocs.Open;
end;

procedure TPass_F.A_PassCreateExecute(Sender: TObject);
var
  id_ts,n_ticket,new_out,id_ticket,id_part:Integer;
  x:Word;
  TempBookmark:TBookMark;
  qry:TIbQuery;
  d:TDate;
begin
    if Rg1.ItemIndex = 1 then
      begin
        if Length(Trim(E_NDov.Text)) = 0 then
          begin
            Application.MessageBox('№ доверенности не заполнен.','Внимание',MB_ICONERROR+MB_OK);
            Exit;
          end;
          try
            d:=StrTodate(E_DDoc.Text);
          except
              Application.MessageBox('Неверная дата доверенности.','Внимание',MB_ICONERROR+MB_OK);
              Exit;
          end;
        if Length(Trim(E_Fio.Text)) = 0 then
          begin
            Application.MessageBox('Ф.И.О. не заполнено.','Внимание',MB_ICONERROR+MB_OK);
            Exit;
          end;


      end;

    id_ts:=DM.Qry_TS.FieldByName('ID').AsInteger;
    n_ticket:=DM.Qry_TicketN_TICKET.AsInteger;
    id_ticket:=DM.Qry_TicketID.AsInteger;
    id_part:=DM.Qry_Parts.FieldByName('ID').AsInteger;
    // проверим есть ли такое тс в журнале выезда
    if Rg1.ItemIndex = 0 then
      begin
        DM.Qry.Close;
        Dm.Qry.SQL.Clear;
        Dm.Qry.SQL.Add(' select count(*) from ts_out where id_ts =:p0 ');
        DM.Qry.Params[0].AsInteger:=id_ts;
        Dm.Qry.Open;
        if DM.Qry.Fields[0].AsInteger > 0 then
          begin
            Application.MessageBox('Данное ТС уже есть в журнале выезда ','Внимание',MB_ICONSTOP+MB_OK);
            Exit;
          end ;
      end;


  if Grid_Docs.SelectedRows.Count = 0 then
    begin
      Application.MessageBox('Не выбрано ни одного документа','Предупреждение',MB_ICONSTOP+MB_OK);
      Exit;
    end;
  try
   Self.BitBtn1.Enabled:=False;
   Grid_Docs.DataSource.DataSet.DisableControls;
   TempBookmark := Grid_Docs.Datasource.Dataset.GetBookmark;
   if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
   //добавим запись в журнал выезда
   qry:=TIBQuery.Create(Self);
   qry.Database:=DM.DB;
   qry.SQL.Add('select gen_id(newid_ts_out,1) from rdb$database');
   qry.Open;
   new_out:=qry.Fields[0].AsInteger;
   DM.Sql.Close;
   DM.Sql.SQL.Clear;
   DM.Sql.sql.Add(' insert into ts_out (id_ts,user_out,id,type_pass,n_pass,n_ts,n_trailer,n_ticket,n_ztk,dt_checkout,dover,date_dover,fio) ');
   DM.Sql.sql.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12)  ');
   DM.Refresh_Settings;
   if Rg1.ItemIndex = 0  then
      begin
         DM.Sql.Params[0].AsInteger:=id_ts;
         DM.Sql.Params[1].AsString:=User;
         DM.Sql.Params[2].AsInteger:=new_out;
         DM.Sql.Params[3].AsInteger:=0;
         DM.Sql.Params[4].AsInteger:=DM.Qry_Settings.FieldByName('NEXT_PASS').AsInteger;
         DM.Sql.Params[5].AsString:=E_TS.Text;
         DM.Sql.Params[6].AsString:=E_Trailer.Text;
         DM.Sql.Params[7].AsInteger:=n_ticket;
         DM.Sql.Params[8].AsString:=E_Ztk.Text;
         DM.Sql.Params[9].AsDateTime:= SetDeadLineTime(Now);
         DM.Sql.Params[10].AsVariant:=null;
         DM.Sql.Params[11].AsVariant:=null;
         DM.Sql.Params[12].AsVariant:=null;
         DM.Sql.ExecQuery;
      end;
   if Rg1.ItemIndex = 1  then
      begin
         DM.Sql.Params[0].AsVariant:=null;
         DM.Sql.Params[1].AsString:=User;
         DM.Sql.Params[2].AsInteger:=new_out;
         DM.Sql.Params[3].AsInteger:=1;
         DM.Sql.Params[4].AsInteger:=DM.Qry_Settings.FieldByName('NEXT_PASS').AsInteger;
         DM.Sql.Params[5].AsString:='ПЕШЕХОД';
         DM.Sql.Params[6].AsVariant:=null;
         DM.Sql.Params[7].AsInteger:=n_ticket;
         DM.Sql.Params[8].AsVariant:=null;
         DM.Sql.Params[9].AsDateTime:= SetDeadLineTime(Now);
         DM.Sql.Params[10].AsString:=E_NDov.Text;
         DM.Sql.Params[11].AsDate:=StrToDate(E_DDoc.Text);
         DM.Sql.Params[12].AsString:=E_Fio.Text;
         DM.Sql.ExecQuery;
      end;

   // установим флаг помещения в журнал выезда
   if Rg1.ItemIndex = 0  then
      begin
         DM.Sql.Close;
         DM.Sql.SQL.Clear;
         DM.Sql.sql.Add(' update ts set out_flag=:p0 where id=:p1  ');
         DM.Sql.Params[0].AsInteger:=1;
         DM.Sql.Params[1].AsInteger:=id_ts;
         DM.Sql.ExecQuery;
      end;
   ////////////////////
   DM.Sql.Close;
   DM.Sql.Sql.clear;
   DM.Sql.Sql.Add('insert into pass_outdocs (id_pass,type_doc,name,ndoc,ddoc) ');
   DM.Sql.Sql.Add(' values (:p0,:p1,:p2,:p3,:p4) ');
    with Grid_Docs.SelectedRows do
    begin
     for x := 0 to Count-1 do
      begin
       if IndexOf(Items[x]) > -1 then
          begin
              Grid_Docs.Datasource.Dataset.Bookmark := Items[x];
              DM.Sql.Params[0].AsInteger:=new_out;
              DM.Sql.Params[1].AsString:=Qry_SelectDocs.FieldByName('TYPE_DOC').AsString;
              DM.Sql.Params[2].AsString:=Qry_SelectDocs.FieldByName('NAME').AsString;
              DM.Sql.Params[3].AsString:=Qry_SelectDocs.FieldByName('NDOC').AsString;
              DM.Sql.Params[4].AsDate:=Qry_SelectDocs.FieldByName('DDOC').AsDateTime;
              DM.Sql.ExecQuery;
          end;  //end if
      end;   //end for
    end;  //end with
    ////////////
   DM.Sql.Close;
   DM.Sql.Sql.clear;
   DM.Sql.Sql.Add('update settings set next_pass = next_pass+1');
   DM.Sql.ExecQuery;
   DM.Sql.Transaction.Commit;
   ModalResult:=mrOk;
   DM.Qry_GurTsOut.Close;
   DM.Qry_GurTsOut.Open;
   DM.Qry_GurTsOut.Locate('ID',new_out,[]);
   DM.Qry_RepPassOut.Close;
   DM.Qry_RepPassOut.Params[0].AsInteger:=new_out;
   DM.Qry_RepPassOut.Open;
   DM.Qry_RepPassOutTs.Close;
   DM.Qry_RepPassOutTs.Params[0].AsInteger:=id_ticket;
   DM.Qry_RepPassOutTs.Open;
   if DM.Qry_GurTsOut.FieldByName('TYPE_PASS').AsInteger = 0 then
      if Reports_F.Rep2.LoadFromFile('cheque_pass_out_80mm.fr3') then Reports_F.Rep2.ShowReport(True);
   if DM.Qry_GurTsOut.FieldByName('TYPE_PASS').AsInteger = 1 then
      if Reports_F.Rep2.LoadFromFile('cheque_pass_out_footer_80mm.fr3') then Reports_F.Rep2.ShowReport(True);
   DM.Qry_RepPassOutTs.Close;

   finally
    if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.RollBack;
    qry.Free;
    Grid_Docs.Datasource.Dataset.GotoBookmark(TempBookmark);
    Grid_Docs.Datasource.Dataset.FreeBookmark(TempBookmark);
    Grid_Docs.SelectedRows.Clear;
    Grid_Docs.DataSource.DataSet.EnableControls;
    Self.BitBtn1.Enabled:=True;

  end;
end;

procedure TPass_F.A_PassCreateUpdate(Sender: TObject);
begin
  if Qry_SelectDocs.Active then
    if Qry_SelectDocs.FieldByName('NAME').IsNull then
      (Sender as TAction).Enabled:=false
      else
       (Sender as TAction).Enabled:=true;
end;

procedure TPass_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Qry_SelectDocs.Close;
  Rg1.ItemIndex:=0;
end;

procedure TPass_F.FormCreate(Sender: TObject);
begin
  Rg1.ItemIndex:=0;
end;

procedure TPass_F.FormShow(Sender: TObject);
var
 qry:TIbQuery;
begin
  try
    E_KT.Text:=DM.Qry_TicketN_TICKET.AsString;
    E_Ztk.Text:=DM.Qry_TSNUM_PARK.AsString;
//  E_TS.Text:=Dm.Qry_TSN_TS.AsString;
    qry:=TIBQuery.Create(Self);
    qry.Database:=Dm.DB;
//
    qry.close;
    qry.SQL.Clear;
    qry.SQL.Add(' select n_ts from ts where id_ticket = :p0 ' );
    qry.Params[0].AsInteger:=DM.Qry_TSID_TICKET.AsInteger;
    qry.Open;
    E_Ts.Clear;
    while not qry.Eof do
      begin
        E_Ts.Items.Add(qry.Fields[0].AsString);
        qry.Next;
      end;
    E_Ts.Text:=Dm.Qry_TSN_TS.AsString;
//
    qry.close;
    qry.SQL.Clear;
    qry.SQL.Add(' select n_trailer from trailers where id_ticket = :p0 ' );
    qry.Params[0].AsInteger:=DM.Qry_TSID_TICKET.AsInteger;
    qry.Open;
    E_Trailer.Clear;
    while not qry.Eof do
      begin
        E_Trailer.Items.Add(qry.Fields[0].AsString);
        qry.Next;
      end;
    E_Trailer.ItemIndex:=0;
    Rg1.ItemIndex:=0;
    Gb_Dov.Enabled:=False;
    E_Ndov.Clear;
    E_DDoc.Clear;
    OpenDocs;
  finally
    qry.Free;
  end;
end;

procedure TPass_F.Grid_DocsDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
if (Sender as TDbGridEh).SelectedRows.CurrentRowSelected then
 begin
 (Sender as TDbGridEh).Canvas.Font.Color := clYellow; // Font color
 (Sender as TDbGridEh).Canvas.Brush.Color := clBlue; // Background color
 (Sender as TDbGridEh).Canvas.FillRect(Rect);
 end;
 (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TPass_F.Rg1Click(Sender: TObject);
begin
 case Rg1.ItemIndex of
 0: begin
      E_TS.Enabled:=True;
      E_Trailer.Enabled:=True;
      Gb_Dov.Enabled:=False;
    end;

 1: begin
      E_TS.Enabled:=False;
      E_Trailer.Enabled:=False;
      Gb_Dov.Enabled:=True;
    end;
 end;
end;

function TPass_F.SetDeadLineTime(CurDT:TdateTime): TDateTime;
const
  t_finished:string = '21:00:00';
  t_start:string = '09:00:00';
  t_night:string = '13:00:00';
  t_dayend:string = '23:59:59';
  interval:Word = 14400;
var
 t,tmp:TDateTime;
 d:TDate;
 dd,mon,yy,hh,mm,ss,ms:Word;
 i:Integer;

begin
  t:=TimeOf(CurDT);
  if (t >= StrToTime(t_start)) and (t < StrToTime(t_finished)) then
    begin
          tmp:=t - StrToTime(t_finished);
          DecodeTime(tmp,hh,mm,ss,ms);
          i:=hh*3600+mm*60+ss;
          if i > interval then
            begin
              Result:= IncSecond(CurDT,interval);
            end
           else
            begin
              d:=IncDay(CurDt,1);
              DecodeDate(d,yy,mon,dd);
              tmp:=IncSecond(StrToTime(t_start) ,interval-i);
              DecodeTime(tmp,hh,mm,ss,ms);
              Result:=EncodeDateTime(yy,mon,dd,hh,mm,ss,ms);
            end;
    end
   else
    if (t >= StrToTime(t_finished)) or (t < StrToTime(t_start)) then
       begin
        if (t >= StrToTime(t_finished)) and (t <= StrToTime(t_dayend)) then
           d:=IncDay(CurDT,1)
          else
           d:=CurDT;
        Result:=StrToDateTime(DateToStr(d)+' '+t_night);
       end;
end;

end.



