unit PlDocAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, Buttons,   ExtCtrls, ComCtrls,DB,IBX.IbQuery  ;

type
  TPlDocAdd_F = class(TForm)
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    Label10: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    E_Sum: TEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    E_NumDoc: TEdit;
    Label2: TLabel;
    Label5: TLabel;
    E_Prim: TEdit;
    Fiscal: TCheckBox;
    E_Date: TDateTimePicker;
    E_VidDoc: TButtonedEdit;
    E_VidOp: TButtonedEdit;
    procedure FormShow(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure E_VidOpKeyPress(Sender: TObject; var Key: Char);
    procedure E_NumDocKeyPress(Sender: TObject; var Key: Char);
    procedure E_VidDocKeyPress(Sender: TObject; var Key: Char);
    procedure E_SumKeyPress(Sender: TObject; var Key: Char);
    procedure E_DataKeyPress(Sender: TObject; var Key: Char);
    procedure E_PrimKeyPress(Sender: TObject; var Key: Char);
    procedure E_SumChange(Sender: TObject);
    procedure E_VidDocRightButtonClick(Sender: TObject);
    procedure E_VidOpRightButtonClick(Sender: TObject);
    procedure E_DateKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure GetValuesToEdit;
    procedure SincWithSprav;
  public
    { Public declarations }
  end;

var
  PlDocAdd_F: TPlDocAdd_F;

implementation

uses dm_u, main, VidPlDoc_U, VidOp_U, Buh_U;

{$R *.dfm}

procedure TPlDocAdd_F.SincWithSprav;
begin

end;

procedure TPlDocAdd_F.GetValuesToEdit;
begin
{ E_Data.Text:=GetValDateToStr(DM.Qry_ClAc.FieldValues['DT']);
 E_NumDoc.Text:=GetValStrToStr(DM.Qry_ClAc.FieldValues['N_DOC']);
 E_Sum.Text:=GetValFloatToStr(DM.Qry_ClAc.FieldValues['MONEY']);
 E_VidDoc.Text:=GetValStrToStr(DM.Qry_ClAc.FieldValues['KODDOC']);
 E_VidOp.Text:=GetValStrToStr(DM.Qry_ClAc.FieldValues['KODOP']);}
end;


procedure TPlDocAdd_F.FormShow(Sender: TObject);
begin
E_NumDoc.Clear;
DM.Qry_VidPlDoc.First;
E_VidDoc.Text:=DM.Qry_VidPlDoc.FieldByName('NAME').AsString;
DM.Qry_VidOp.First;
E_VidOp.Text:=DM.Qry_VidOp.FieldByName('NAME').AsString;;
E_Sum.Clear;
E_Prim.Clear;
E_Date.Date:=Date;
Fiscal.Checked:=False;
E_Date.SetFocus;
end;

procedure TPlDocAdd_F.SaveBtnClick(Sender: TObject);
var
  Code:Integer;
  S1,S2,F:String;
  d,Sum,sum_spis:Double;
  qry:TIBQuery;
  id_new:Integer;
begin
try
  qry:=TIBQuery.Create(Self);
  qry.Database:=Dm.DB;
  if Length(Trim(E_NumDoc.Text))=0 then
    begin
      Application.MessageBox('Неверное значение номера документа','Внимание!',mb_OK+mb_iconstop);
      E_NumDoc.SetFocus;
      ModalResult:=mrNone;
      Exit;
    end;
  if Length(Trim(E_Sum.Text)) = 0  then    begin
      Application.MessageBox('Неверное значение суммы','Внимание!',mb_OK+mb_iconstop);
      ModalResult:=mrNone;
      E_Sum.SetFocus;
      Exit;
    end;
  Sum:= StrToFloat(E_Sum.Text);
  if Length(Trim(E_VidDoc.Text))=0 then
    begin
      Application.MessageBox('Неверное значение вида документа','Внимание!',mb_OK+mb_iconstop);
      ModalResult:=mrNone;
      E_VidDoc.SetFocus;
      Exit;
    end;
  if Length(Trim(E_VidOp.Text))=0 then
    begin
      Application.MessageBox('Неверное значение вида операции','Внимание!',mb_OK+mb_iconstop);
      E_VidOp.SetFocus;
      ModalResult:=mrNone;
      Exit;
    end;
  case DM.Qry_VidOp.FieldByName('ID').AsInteger of
    2: Sum:=-Sum; //списание
  end;
 if Fiscal.Checked then F:='Y' else F:='N';
 qry.SQL.Add('select gen_id(GEN_ID_CL_ACCOUNTS,1) from rdb$database ');
 qry.Open;
 id_new:=qry.Fields[0].AsInteger;
 s1:='insert into cl_accounts (DT,N_DOC,MONEY,KOD_VID,KOD_DOC,ZAYV,PRIM,FISCAL_FLAG,ID )' ;
 s2:=' values (:p0, :p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8 )';
 DM.Sql.Close;
 DM.Sql.SQL.Clear;
 DM.Sql.SQL.Add(s1+s2);
try
 if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction; //start tran

     DM.Sql.Params[0].AsDateTime:=E_Date.Date;
     DM.Sql.Params[1].AsString:=trim(E_NumDoc.Text);
     DM.Sql.Params[2].AsCurrency:=Sum;
     DM.Sql.Params[3].AsInteger:=DM.Qry_VidOp.FieldValues['ID'];
     DM.Sql.Params[4].AsInteger:=DM.Qry_VidPlDoc.FieldValues['ID'];
     DM.Sql.Params[5].AsInteger:=DM.Qry_Regti_Buh.FieldValues['ID'];
     DM.Sql.Params[6].AsString:=trim(E_Prim.Text);
     DM.Sql.Params[7].AsString:=F;
     DM.Sql.Params[8].AsInteger:=id_new;
     DM.Sql.ExecQuery;

     qry.Close;
     qry.SQL.Clear;
     qry.SQL.Add(' select count(id) from reasondolg where id_plat=:p0 and iif(delete_flag > 0,1,0) <> 1 and dolg_rest > 0');
     qry.Params[0].AsInteger:= DM.Qry_Regti_Buh.FieldValues['ID'];
     qry.Open;
     if qry.Fields[0].AsInteger > 0 then
       begin
        qry.Close;
        qry.SQL.Clear;
        qry.SQL.Add('select id,dolg_rest from reasondolg where id_plat=:p0 and iif(delete_flag > 0,1,0) <> 1 and dolg_rest > 0 order by dt_is,id');
        qry.Params[0].AsInteger:= DM.Qry_Regti_Buh.FieldValues['ID'];
        qry.Open;
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('insert into dolg_writeoff(id_dolg,id_account,summa) values(:p0,:p1,:p2) ');
        while (not qry.Eof) and (Sum > 0)  do
          begin
            if Sum >= qry.FieldByName('dolg_rest').AsFloat then
              begin
               sum_spis:= qry.FieldByName('dolg_rest').AsFloat;
               Sum:= Sum - sum_spis;
              end
            else
              begin
               sum_spis:= Sum;
               Sum:= Sum - sum_spis;
              end;
            if DM.Sql.Open then DM.Sql.Close;
            DM.Sql.Params[0].AsInteger:=qry.FieldByName('id').AsInteger;
            DM.Sql.Params[1].AsInteger:=id_new;
            DM.Sql.Params[2].AsFloat:=sum_spis;
            DM.Sql.ExecQuery;
            qry.Next;
          end;
       end;

     DM.Sql.Transaction.Commit;
     ModalResult:=mrOk;
     DM.Qry_ClAc.Close;
     DM.Qry_ClAc.Open;

  except
    on E: EdatabaseError do
      begin
       ShowMessage(E.Message);
      end;
 end;

finally
 qry.Free;
 if  DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;


procedure TPlDocAdd_F.E_VidOpKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TPlDocAdd_F.E_VidOpRightButtonClick(Sender: TObject);
begin
    if VidOp_F.ShowModal = mrOk then E_VidOp.Text:=DM.Qry_VidOp.FieldByName('NAME').asString;
end;

procedure TPlDocAdd_F.E_DateKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TPlDocAdd_F.E_NumDocKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TPlDocAdd_F.E_VidDocKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;


end;

procedure TPlDocAdd_F.E_VidDocRightButtonClick(Sender: TObject);
begin
  if VidPlDoc_F.ShowModal = mrOk then E_VidDoc.Text:=DM.Qry_VidPlDoc.FieldByName('NAME').asString;
end;

procedure TPlDocAdd_F.E_SumChange(Sender: TObject);
var
i : integer;
c : char;
s : string;
begin
// результирующая строка:
s := '';
// проходим по всем символам исходной строки:
for i:=1 to Length((Sender as Tedit).Text) do
  begin
    // берем текущий символ:
    c :=(Sender as Tedit).Text[i];
    // Проверяем его на принадлежность к цифрам:
    if c in ['0'..'9'] then s := s + c;
    // Или знакам 'точка' или 'запятая':
    if c = CurDecSep then s := s + c;
  end;
// Присваеваем полю результирующую строку:
(Sender as Tedit).Text := s;
(Sender as Tedit).SelStart:=Length(s);
(Sender as Tedit).SelLength:=0;

end;

procedure TPlDocAdd_F.E_SumKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TPlDocAdd_F.E_DataKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TPlDocAdd_F.E_PrimKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

end.
