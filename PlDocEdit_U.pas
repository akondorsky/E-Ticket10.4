unit PlDocEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, Buttons,   ExtCtrls, ComCtrls,DB,IBX.IbQuery  ;

type
  TPlDocEdit_F = class(TForm)
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
    SummaOld:Double;
    VidOpOld:String;
    procedure GetValuesToEdit;

  public
    { Public declarations }
  end;

var
  PlDocEdit_F: TPlDocEdit_F;

implementation

uses dm_u, main, VidPlDoc_U, VidOp_U, Buh_U;

{$R *.dfm}



procedure TPlDocEdit_F.GetValuesToEdit;
begin
 E_Date.Date:=DM.Qry_ClAc.FieldValues['DT'];
 E_NumDoc.Text:=DM.Qry_ClAc.FieldValues['N_DOC'];
 E_Sum.Text:=DM.Qry_ClAc.FieldValues['MONEY'];
 SummaOld:= DM.Qry_ClAc.FieldValues['MONEY'];
 DM.Qry_VidPlDoc.Locate('ID',DM.Qry_ClAc.FieldValues['KODDOC'],[]);
 E_VidDoc.Text:= DM.Qry_VidPlDoc.FieldByName('NAME').AsString;
 DM.Qry_VidOp.Locate('ID',DM.Qry_ClAc.FieldValues['KODOP'],[]);
 E_VidOp.Text:=DM.Qry_VidOp.FieldByName('NAME').AsString;
 VidOpOld:=E_VidOp.Text;
 E_Prim.Text:=DM.Qry_ClAc.FieldByName('PRIM').AsString;
 if DM.Qry_ClAc.FieldByName('FISCAL_FLAG').AsString='Y'  then
      Fiscal.Checked:=True
     else
      Fiscal.Checked:=False;

end;


procedure TPlDocEdit_F.FormShow(Sender: TObject);
begin
GetValuesToEdit;
E_Date.SetFocus;
end;

procedure TPlDocEdit_F.SaveBtnClick(Sender: TObject);
var
  Id_rec:Integer;
  S1,S2,F:String;
  Sum:Double;
  qry:TIbQuery;
  flag:Boolean;
begin
try
 Id_rec:=DM.Qry_ClAc.FieldByName('ID').AsInteger;
  qry:=TIBQuery.Create(Self);
  qry.Database:=Dm.DB;
  qry.SQL.Add('select count(*) from dolg_writeoff where id_account=:p0');
  qry.Params[0].AsInteger:=Id_rec;
  qry.Open;
  if qry.Fields[0].AsInteger > 0 then flag:=True;

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

  if flag  then
    if Sum <> SummaOld  then
      begin
        Application.MessageBox('Изменение документа невозможно.Обратитесь к системному администратору.','Внимание!',MB_OK+MB_ICONERROR);
        Exit;
      end;
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
  if flag then
    if VidOpOld <> E_VidOp.Text then
      begin
        Application.MessageBox('Изменение документа невозможно.Обратитесь к системному администратору.','Внимание!',MB_OK+MB_ICONERROR);
        Exit;
      end;
  case DM.Qry_VidOp.FieldByName('ID').AsInteger of
    2: Sum:=-Sum; //списание
  end;

 if Fiscal.Checked then F:='Y' else F:='N';
 s1:='update cl_accounts set DT=:p0,N_DOC=:p1,MONEY=:p2,KOD_VID=:p3,KOD_DOC=:p4,' ;
 s2:=' PRIM=:p5,FISCAL_FLAG=:p6 where ID=:p7';
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
     DM.Sql.Params[5].AsString:=trim(E_Prim.Text);
     DM.Sql.Params[6].AsString:=F;
     DM.Sql.Params[7].AsInteger:=Id_rec;
     DM.Sql.ExecQuery;
     DM.Sql.Transaction.Commit;
     ModalResult:=mrOk;
     Buh_F.A_RefrDoc.Execute;
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


procedure TPlDocEdit_F.E_VidOpKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TPlDocEdit_F.E_VidOpRightButtonClick(Sender: TObject);
begin
    if VidOp_F.ShowModal = mrOk then E_VidOp.Text:=DM.Qry_VidOp.FieldByName('NAME').asString;
end;

procedure TPlDocEdit_F.E_DateKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TPlDocEdit_F.E_NumDocKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TPlDocEdit_F.E_VidDocKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;


end;

procedure TPlDocEdit_F.E_VidDocRightButtonClick(Sender: TObject);
begin
  if VidPlDoc_F.ShowModal = mrOk then E_VidDoc.Text:=DM.Qry_VidPlDoc.FieldByName('NAME').asString;
end;

procedure TPlDocEdit_F.E_SumChange(Sender: TObject);
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

procedure TPlDocEdit_F.E_SumKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TPlDocEdit_F.E_DataKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TPlDocEdit_F.E_PrimKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

end.
