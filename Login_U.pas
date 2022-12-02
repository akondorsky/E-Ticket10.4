unit Login_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,  Graphics,
   Controls,  Forms,  Dialogs, DB, IBX.IBCustomDataSet, IBX.IBQuery,
   StdCtrls,  DBCtrls,  Buttons,  Mask,  ExtCtrls, IBX.IBTable;

type
  TLogin_F = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    E_Pwd: TMaskEdit;
    DataSource1: TDataSource;
    IBQuery1: TIBQuery;
    E_Login: TComboBox;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure E_LoginCloseUp(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SaveBtnClick(Sender: TObject);
    procedure E_PwdKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login_F: TLogin_F;

implementation

{$R *.dfm}
uses
 dm_u,main;
procedure TLogin_F.CancBtnClick(Sender: TObject);
begin
Application.MessageBox('Выбрано завершение работы.Приложение будет закрыто.',
                        'Внимание',MB_ICONSTOP+MB_OK);
Application.Terminate;
{  Login_F.Close;}
end;

procedure TLogin_F.E_LoginCloseUp(Sender: TObject);
begin
  E_Pwd.SetFocus;
end;

procedure TLogin_F.E_PwdKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TLogin_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if IBQuery1.Active then IBQuery1.Close;

end;

procedure TLogin_F.FormCreate(Sender: TObject);
var
  frm: HRGN;
    begin
     frm := CreateRoundRectRgn(0, 0, Width-1, Height-1,15,15);
     SetWindowRgn(Handle, frm, FALSE);

     // Освобождение созданных регионов
     DeleteObject(frm);
end;

procedure TLogin_F.FormShow(Sender: TObject);
begin
  if not IBQuery1.Active then  IBQuery1.Open;
  while not IBQuery1.Eof do
    begin
      E_Login.Items.Add(IBQuery1.Fields[0].AsString);
      IBQuery1.Next;
    end;
  if E_Login.Items.Count <> 0 then E_Login.ItemIndex:=0;
  E_Login.SetFocus;
end;

procedure TLogin_F.SaveBtnClick(Sender: TObject);
begin
 if IBQuery1.Active then IBQuery1.Close ;
 IBQuery1.SQL.Clear;
 IBQuery1.SQL.Add('select ID,FIO,ROLE,DOLJ,EXT_RIGHTS from USERS where FIO=:p0 and PWD=:p1');
 IBQuery1.Params[0].AsString:=E_Login.Text;
 IBQuery1.Params[1].AsString:=E_Pwd.Text;
 IBQuery1.Open;
 if IBQuery1.Fields[0].IsNull then
   begin
    Application.MessageBox('Неверный пароль!',
                            'Внимание',MB_ICONERROR+MB_OK);
    E_Pwd.Clear;
    E_Pwd.SetFocus;
    ModalResult:=mrNone;
    Exit;
   end
  else
   begin
      IdUser:=IBQuery1.FieldByName('ID').AsInteger;
      User:=IBQuery1.FieldByName('FIO').AsString;
      Role:=IBQuery1.FieldByName('ROLE').AsString;
      Dolj:=IBQuery1.FieldByName('DOLJ').AsString;
      Rights:=IBQuery1.FieldByName('EXT_RIGHTS').AsString;
      ModalResult:=mrOk;
   end;

end;

end.
