unit EditDo_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, Buttons, Grids,
  DBGridEh, ActnList, DBGridEhGrouping, GridsEh, DBCtrls, Menus, DB,
  ImgList, PropFilerEh, PropStorageEh,Consts, ExtCtrls, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh, PlatformDefaultStyleActnCtrls,
  ActnMan, DBCtrlsEh, System.ImageList, System.Actions, EhLibVCL;

type
  TEditDo_F = class(TForm)
    PageControl1: TPageControl;
    Tab_1: TTabSheet;
    Tab_Do1: TTabSheet;
    Tab_Do2: TTabSheet;
    GB_SVH: TGroupBox;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    E_G142: TEdit;
    E_G14Fam: TEdit;
    E_G14Dolj: TEdit;
    GB_Car: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    E_CINN: TEdit;
    E_CADDR: TEdit;
    E_COgrn: TEdit;
    E_CKPP: TEdit;
    E_CFAM: TEdit;
    E_CountryName: TEdit;
    Label19: TLabel;
    GroupBox4: TGroupBox;
    Label21: TLabel;
    E_G073: TEdit;
    Label22: TLabel;
    Label24: TLabel;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    Grid_Do1Trans: TDBGridEh;
    Grid_Do1Cust: TDBGridEh;
    GroupBox7: TGroupBox;
    Grid_Do1Trand: TDBGridEh;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    Btn_TransAdd: TBitBtn;
    Btn_TransEdit: TBitBtn;
    Btn_TransDel: TBitBtn;
    Btn_CustAdd: TBitBtn;
    Btn_DoCustEdit: TBitBtn;
    Btn_DoCustDel: TBitBtn;
    Btn_DoTrandAdd: TBitBtn;
    Btn_DoTrandEdit: TBitBtn;
    Btn_DoTrandDel: TBitBtn;
    ActionList1: TActionList;
    Refresh_DoTrans: TAction;
    Refresh_DoTrand: TAction;
    Refresh_DoCust: TAction;
    Grid_Do1Tovar: TDBGridEh;
    Btn_DoTovarAdd: TBitBtn;
    Btn_DoTovarEdit: TBitBtn;
    Btn_DoTovarDel: TBitBtn;
    E_Unshipped: TCheckBox;
    Refresh_DoTovar: TAction;
    SaveBtn: TBitBtn;
    CancBtn: TBitBtn;
    GB_Shipper: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    E_FCNTRYName: TEdit;
    GB_Consignee: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    E_RAddr: TEdit;
    E_RInn: TEdit;
    E_RKPP: TEdit;
    E_ROGRN: TEdit;
    PrintBtn: TBitBtn;
    PageControl3: TPageControl;
    Tab_Do2_tovar: TTabSheet;
    GroupBox10: TGroupBox;
    Grid_Do2Hd: TDBGridEh;
    Btn_Do2Hd_Add: TBitBtn;
    Btn_DoHd_ed: TBitBtn;
    Btn_Do2Hd_del: TBitBtn;
    Refresh_DoOutHd: TAction;
    Refresh_DoOutCust: TAction;
    Refresh_DoOutTd: TAction;
    Refresh_DoOutTs: TAction;
    Refresh_DoOutTov: TAction;
    Refresh_DoDocsOut: TAction;
    GroupBox16: TGroupBox;
    DBGridEh10: TDBGridEh;
    GroupBox17: TGroupBox;
    Grid_Do2Tov: TDBGridEh;
    Btn_Do2TovAdd: TBitBtn;
    Btn_Do2TovEdit: TBitBtn;
    BitBtn22: TBitBtn;
    ImageList1: TImageList;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Grid_GTD: TDBGridEh;
    Panel2: TPanel;
    Btn_Do2DocAdd: TBitBtn;
    Btn_Do2DocEdit: TBitBtn;
    Btn_Do2DocDel: TBitBtn;
    Refresh_DoGtd: TAction;
    Bit_AttachGTd: TBitBtn;
    E_CntryKod: TButtonedEdit;
    E_FAddr: TEdit;
    E_RName: TEdit;
    E_FCntryKod: TButtonedEdit;
    E_CName: TButtonedEdit;
    RefBtn: TBitBtn;
    Btn_DetachDoc: TBitBtn;
    Tab_DopList: TTabSheet;
    GroupBox18: TGroupBox;
    Grid_ActCom: TDBGridEh;
    Btn_AddActCom: TBitBtn;
    Btn_EdotActCom: TBitBtn;
    Btn_DelActCom: TBitBtn;
    GroupBox19: TGroupBox;
    Grid_Mism: TDBGridEh;
    Btn_AddMism: TBitBtn;
    BitEditMism: TBitBtn;
    ActionManager1: TActionManager;
    A_ActComAdd: TAction;
    A_ActComEdit: TAction;
    A_ActComDelete: TAction;
    A_MismTovAdd: TAction;
    A_MismTovEdit: TAction;
    BitBtn1: TBitBtn;
    A_MismTovDelete: TAction;
    A_Do2Delete: TAction;
    A_LinkGtdTov: TAction;
    E_FName: TButtonedEdit;
    E_G072: TDBDateTimeEditEh;
    Label1: TLabel;
    E_RCountryName: TEdit;
    E_RCountryCode: TButtonedEdit;
    procedure CancBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure E_G14FamKeyPress(Sender: TObject; var Key: Char);
    procedure E_G14DoljKeyPress(Sender: TObject; var Key: Char);
    procedure E_CNameKeyPress(Sender: TObject; var Key: Char);
    procedure E_CINNKeyPress(Sender: TObject; var Key: Char);
    procedure E_CADDRKeyPress(Sender: TObject; var Key: Char);
    procedure E_COgrnKeyPress(Sender: TObject; var Key: Char);
    procedure E_CKPPKeyPress(Sender: TObject; var Key: Char);
    procedure E_CFAMKeyPress(Sender: TObject; var Key: Char);
    procedure E_CCNTRYKeyPress(Sender: TObject; var Key: Char);
    procedure E_G073KeyPress(Sender: TObject; var Key: Char);
    procedure E_G072KeyPress(Sender: TObject; var Key: Char);
    procedure E_CCNTRYButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure E_CNameButtonClick(Sender: TObject);
    procedure E_CCNTRYExit(Sender: TObject);
    procedure Tab_1Exit(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure E_FCountryExit(Sender: TObject);
    procedure E_RCountryExit(Sender: TObject);
    procedure E_FNameKeyPress(Sender: TObject; var Key: Char);
    procedure E_FAddrKeyPress(Sender: TObject; var Key: Char);
    procedure E_RNameKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_TransAddClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Refresh_DoTransExecute(Sender: TObject);
    procedure Refresh_DoTrandExecute(Sender: TObject);
    procedure Refresh_DoCustExecute(Sender: TObject);
    procedure Btn_TransEditClick(Sender: TObject);
    procedure Btn_TransDelClick(Sender: TObject);
    procedure Btn_CustAddClick(Sender: TObject);
    procedure Btn_DoCustEditClick(Sender: TObject);
    procedure Btn_DoTrandAddClick(Sender: TObject);
    procedure Btn_DoTrandEditClick(Sender: TObject);
    procedure Btn_DoCustDelClick(Sender: TObject);
    procedure Btn_DoTrandDelClick(Sender: TObject);
    procedure Btn_DoTovarAddClick(Sender: TObject);
    procedure Refresh_DoTovarExecute(Sender: TObject);
    procedure Btn_DoTovarDelClick(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure E_G073Change(Sender: TObject);
    procedure E_G072Change(Sender: TObject);
    procedure Btn_Do2Hd_AddClick(Sender: TObject);
    procedure Refresh_DoOutHdExecute(Sender: TObject);
    procedure Refresh_DoOutCustExecute(Sender: TObject);
    procedure Refresh_DoOutTdExecute(Sender: TObject);
    procedure Refresh_DoOutTsExecute(Sender: TObject);
    procedure Refresh_DoOutTovExecute(Sender: TObject);
    procedure Refresh_DoDocsOutExecute(Sender: TObject);
    procedure Btn_Do2TovAddClick(Sender: TObject);
    procedure Btn_Do2TovEditClick(Sender: TObject);
    procedure Btn_Do2DocAddClick(Sender: TObject);
    procedure Btn_Do2Hd_delClick(Sender: TObject);
    procedure Grid_Do2TovDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Btn_Do2DocEditClick(Sender: TObject);
    procedure Btn_Do2DocDelClick(Sender: TObject);
    procedure Btn_Do2TovDel(Sender: TObject);
    procedure Btn_DoHd_edClick(Sender: TObject);
    procedure E_RInnExit(Sender: TObject);
    procedure E_CINNExit(Sender: TObject);
    procedure Btn_Do2Trans_AddClick(Sender: TObject);
    procedure Btn_Do2trans_EdClick(Sender: TObject);
    procedure Btn_Do2Trans_delClick(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure Refresh_DoGtdExecute(Sender: TObject);
    procedure E_FCntryKodChange(Sender: TObject);
    procedure E_CntryKodChange(Sender: TObject);
    procedure E_CntryKodRightButtonClick(Sender: TObject);
    procedure E_FCntryKodRightButtonClick(Sender: TObject);
    procedure E_CNameRightButtonClick(Sender: TObject);
    procedure Btn_DoTovarEditClick(Sender: TObject);
    procedure RefBtnClick(Sender: TObject);
    procedure E_G142Change(Sender: TObject);
    procedure E_G14FamChange(Sender: TObject);
    procedure E_G14DoljChange(Sender: TObject);
    procedure E_CINNChange(Sender: TObject);
    procedure E_CADDRChange(Sender: TObject);
    procedure E_COgrnChange(Sender: TObject);
    procedure E_CKPPChange(Sender: TObject);
    procedure E_CFAMChange(Sender: TObject);
    procedure E_CNameChange(Sender: TObject);
    procedure E_FNameChange(Sender: TObject);
    procedure E_FAddrChange(Sender: TObject);
    procedure E_RNameChange(Sender: TObject);
    procedure E_RAddrChange(Sender: TObject);
    procedure E_RInnChange(Sender: TObject);
    procedure E_RKPPChange(Sender: TObject);
    procedure E_ROGRNChange(Sender: TObject);
    procedure Btn_DetachDocClick(Sender: TObject);
    procedure A_ActComAddExecute(Sender: TObject);
    procedure A_ActComEditExecute(Sender: TObject);
    procedure A_ActComDeleteExecute(Sender: TObject);
    procedure A_MismTovAddExecute(Sender: TObject);
    procedure A_MismTovEditExecute(Sender: TObject);
    procedure A_MismTovDeleteExecute(Sender: TObject);
    procedure A_Do2DeleteExecute(Sender: TObject);
    procedure A_LinkGtdTovExecute(Sender: TObject);
    procedure E_FNameRightButtonClick(Sender: TObject);
    procedure E_CntryKodKeyPress(Sender: TObject; var Key: Char);
    procedure E_FCntryKodKeyPress(Sender: TObject; var Key: Char);
    procedure E_RCountryCodeKeyPress(Sender: TObject; var Key: Char);
    procedure E_RCountryCodeRightButtonClick(Sender: TObject);
    procedure E_RCountryCodeExit(Sender: TObject);
  private
    { Private declarations }
    procedure GetValues;
    procedure SetEditColor;
   public
    { Public declarations }
    procedure Set_stpctrl(N_do:String;D_do:TdateTime);
    function Create_Do2:Boolean;
  end;

var
  EditDo_F: TEditDo_F;
  DoSaveFlag:Boolean;
  Do1_Tran_Docs,Do2_TranDocs,Do2_OutDocs:String;
implementation

{$R *.dfm}
uses dm_u, main, myutils,val_u,do1_u, Carrier_U, DoTransAdd_U,
  DoTransEdit_U, DocustAdd_U, DocustEdit_U, DotrandAdd_U, DotrandEdit_U,
  DoTovarAdd_U, DoTovarEdit_U, Reports_U, Setting_U, Do2Edit1_U, Do2tovAdd_U,
  Do2tovEdit_U, Do2Outdoc_U, Do2OutdocEdit_U, SelGtd_U, AddActCom_U,
  EditActCom_U, MismTovSel_U, MismTovEdit_U, Shipper_U, CountryCode_U;

procedure TEditDo_F.SetEditColor;
var
 i:Integer;
begin
    for i := 0 to ComponentCount-1   do
     begin
       if (Components[i].ClassType = TEdit)  then
           begin
             TEdit(Components[i]).Color := clWhite;
             TEdit(Components[i]).Font.Color:=clBlack;
           end;
       if (Components[i].ClassType = TButtonedEdit) then
           begin
             TButtonedEdit(Components[i]).Color := clWhite;
             TButtonedEdit(Components[i]).Font.Color:=clBlack;
           end;
     end;


{функции для поиска компонентов с определенным свойством  и его установка

function IsPublishedProp(Instance: TObject; const PropName: string): Boolean;
begin
  Result := GetPropInfo(Instance.ClassInfo, PropName) <> nil;
end;

procedure SetObjectProp(Instance: TObject; PropInfo: PPropInfo;
  Value: TObject);
begin
  if (Value is GetObjectPropClass(Instance, PropInfo)) or
     (Value = nil) then
    SetOrdProp(Instance, PropInfo, Integer(Value));
end;

//////////////

if IsPublishedProp(Form1.Controls[ii], 'DataSource') then
    SetObjectProp(Form1.Controls[ii], 'DataSource', DataSource2);     }



end;

procedure TEditDo_F.Set_stpctrl(N_do:String;D_do:TdateTime);
 var
  Ost:Currency;
  kol_tov:Integer;
  step:String;
begin
{ try
  if not DM.sql.Transaction.InTransaction  then DM.sql.Transaction.StartTransaction;
  DM.Qry.Close;
  DM.Qry.SQL.Clear;
  DM.Qry.SQL.Add('select sum(g42_ost) from do_tovar where g073=:p0 and g072=:p1' );
  DM.Qry.Params[0].AsString:=N_do;
  DM.Qry.Params[1].AsDateTime:=D_do;
  DM.Qry.Open;
  Ost:=DM.Qry.fields[0].asCurrency;
  DM.Qry.Close;
  DM.Qry.SQL.Clear;
  DM.Qry.SQL.Add('select count(*) from do_tovar where g073=:p0 and g072=:p1' );
  DM.Qry.Params[0].AsString:=N_do;
  DM.Qry.Params[1].AsDateTime:=D_do;
  DM.Qry.Open;
  kol_tov:=DM.Qry.fields[0].asInteger;
  DM.Qry.Close;
  if Ost=0 then
   begin
    if kol_tov > 0 then
     begin
//      if Length(Trim(DM.Sql_DoHead.FieldByName('G073_REG').AsString)) > 0 then
//      begin
         step:=' 11'
//        else
//         step:= ' ';
     end
    else
     begin
//      if Length(Trim(DM.Sql_DoHead.FieldByName('G073_REG').AsString)) > 0 then
//      begin
//         step:=' 1'
//        else
         step:= ' ';
     end;

        DM.sql.Close;
        DM.sql.SQL.Clear;
        DM.sql.SQL.Add('update do_head set stepctrl=:p0 ');
        DM.sql.SQL.Add(' where g073=:p1 and g072=:p2');
         DM.sql.params[0].AsString:=step;
         DM.sql.params[1].AsString:=N_do;
         DM.sql.params[2].Asdatetime:=D_do;
         DM.sql.ExecQuery;
   end;  // end if ost =0
  if Ost > 0 then
   begin
     if Length(Trim(DM.Sql_DoHead.FieldByName('G073_REG').AsString)) > 0 then
//      begin
        step:=' 1'
       else
        step:= ' ';

        DM.sql.Close;
        DM.sql.SQL.Clear;
        DM.sql.SQL.Add('update do_head set stepctrl=:p0 ');
        DM.sql.SQL.Add(' where g073=:p1 and g072=:p2');
         DM.sql.params[0].AsString:=step;
         DM.sql.params[1].AsString:=N_do;
         DM.sql.params[2].Asdatetime:=D_do;
         DM.sql.ExecQuery;
 end;  // end if ost > 0
 finally
  try
    if DM.sql.Transaction.InTransaction  then DM.sql.Transaction.Commit;
  except
    if DM.sql.Transaction.InTransaction  then DM.sql.Transaction.Rollback;
  end;
  FormZtk.Refresh_DO.Execute;
 end;}
end;


function TEditDo_F.Create_Do2:Boolean;
var
 id_do2:Integer;
 id_svh:Integer;
 new_nomer:Integer;
begin
Result:=false;
try
 //вычислим новый id до2
  DM.Qry.Close;
  DM.Qry.SQL.Clear;
  DM.Qry.SQL.Add('select gen_id(GEN_ID_DO_OUTHD,1) from rdb$database ');
  DM.Qry.Open;
  id_do2:=DM.Qry.Fields[0].AsInteger;
  DM.Qry.Close;
  //вычисляем  id склад. св-ва
  DM.Qry.SQL.Clear;
  DM.Qry.SQL.Add('select id_svh from do_head where id = :p0 ');
  DM.Qry.Params[0].AsInteger:=DM.Qry_ActWithoutDo2.FieldByName('ID_DO1').AsInteger;
  DM.Qry.Open;
  id_svh:=DM.Qry.Fields[0].AsInteger;
  Dm.Qry.Close;
  //вычисляем  номер ДО2
  DM.Qry.SQL.Clear;
  DM.Qry.SQL.Add('select next_number from do2_numbers where id_lic = :p0 ');
  DM.Qry.Params[0].AsInteger:=id_svh;
  DM.Qry.Open;
  new_nomer:=DM.Qry.Fields[0].AsInteger;
  Dm.Qry.Close;
 ////Insert into Do_outHd
 if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction;
 DM.sql.Close;
 DM.sql.SQL.Clear;
 DM.sql.SQL.Add('insert into do_outhd (g072,g02_2,g02_3,id_do1,id_svh,id,id_act_out,do2_statn)');
 DM.sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)');
 DM.sql.Params[0].AsDateTime:=Now;
 DM.sql.Params[1].AsString:=User;
 DM.sql.Params[2].AsString:=Dolj;
 DM.sql.Params[3].AsInteger:=DM.Qry_ActWithoutDo2.FieldByName('ID_DO1').AsInteger;
 DM.sql.Params[4].AsInteger:=id_svh;//DM.Qry_SVH.FieldByName('ID').AsInteger;
 DM.sql.Params[5].AsInteger:=id_do2;
 DM.Sql.Params[6].AsInteger:=DM.Qry_ActWithoutDo2.FieldByName('ID').AsInteger;
 DM.Sql.Params[7].AsInteger:=new_nomer;
 DM.sql.ExecQuery;
 // пропишем ид до2 в акт выдачи
 DM.sql.Close;
 DM.sql.SQL.Clear;
 DM.sql.SQL.Add('update wh_act_out set id_do2=:p0 where id=:p1 ');
 DM.sql.Params[0].AsInteger:=id_do2;
 DM.sql.Params[1].AsInteger:=DM.Qry_ActWithoutDo2.FieldByName('ID').AsInteger;
 DM.sql.ExecQuery;
 // увеличим счетчик номеров ДО-2
 DM.sql.Close;
 DM.sql.SQL.Clear;
 DM.sql.SQL.Add('update do2_numbers set next_number=:p0 where id_lic=:p1 ');
 DM.sql.Params[0].AsInteger:=new_nomer+1;
 DM.sql.Params[1].AsInteger:=id_svh;
 DM.sql.ExecQuery;
{ // пропишем ид до2 в документы выпуска
 DM.sql.Close;
 DM.sql.SQL.Clear;
 DM.sql.SQL.Add('update do_outdocs set id_do2=:p0 where id_actwh=:p1 ');
 DM.sql.Params[0].AsInteger:=id_do2;
 DM.sql.Params[1].AsInteger:=DM.Qry_ActWithoutDo2.FieldByName('ID').AsInteger;
 DM.sql.ExecQuery;}
 DM.sql.Transaction.Commit;
 Result:=True;
Except
      on E: EdatabaseError do
        begin
         DM.Sql.Transaction.Rollback;
         ShowMessage(E.Message);
        end;
 end;
end;

procedure TEditDo_F.Getvalues;
begin
  E_G073.Text:=DM.Qry_DoHead.FieldByName('G073').AsString;
  E_G072.Value :=DM.Qry_DoHead.FieldByName('G072').Value;
  E_G142.Text:=DM.Qry_DoHead.FieldByName('SVH_NAME').AsString;
  E_G14Fam.Text:=DM.Qry_DoHead.FieldByName('G14FAM').AsString;
  E_G14Dolj.Text:=DM.Qry_DoHead.FieldByName('G14Dolj').AsString;
  E_FName.Text:=DM.Qry_DoHead.FieldByName('F_NAME').AsString;
  E_FAddr.Text:=DM.Qry_DoHead.FieldByName('F_ADDRESS').AsString;
  E_FCntryKod.Text:=DM.Qry_DoHead.FieldByName('F_Country').AsString;
  E_RName.Text:=DM.Qry_DoHead.FieldByName('R_NAME').AsString;
  E_RAddr.Text:=DM.Qry_DoHead.FieldByName('R_ADDRESS').AsString;
  E_RInn.Text:=DM.Qry_DoHead.FieldByName('R_INN').AsString;
  E_RInn.Enabled:=True;
  E_RKpp.Text:=DM.Qry_DoHead.FieldByName('R_KPP').AsString;
  E_RKPP.Enabled:=True;
  E_ROgrn.Text:=DM.Qry_DoHead.FieldByName('R_OGRN').AsString;
  E_ROGRN.Enabled:=True;
  E_CName.Text:=DM.Qry_DoHead.FieldByName('C_NAME').AsString;
  E_CADDR.Text:=DM.Qry_DoHead.FieldByName('C_ADDR').AsString;
  E_CINN.Text:=DM.Qry_DoHead.FieldByName('C_INN').AsString;
  E_COgrn.Text:=DM.Qry_DoHead.FieldByName('C_OGRN').AsString;
  E_CKPP.Text:=DM.Qry_DoHead.FieldByName('C_KPP').AsString;
  E_CFAM.Text:=DM.Qry_DoHead.FieldByName('C_FAM').AsString;
  E_CntryKod.Text:=DM.Qry_DoHead.FieldByName('C_COUNTRY').AsString;
  E_RCountryCode.Text:=DM.Qry_DoHead.FieldByName('R_COUNTRY').AsString;
end;
procedure TEditDo_F.CancBtnClick(Sender: TObject);
begin
 DM.Refresh_Do1;
 ModalResult:= mrCancel;
end;

procedure TEditDo_F.SaveBtnClick(Sender: TObject);
var
 id_rec:Integer;
 s:String;
begin
try
 try
 Id_rec:=Do1_F.GridDo1.datasource.dataset.fieldbyName('ID').AsInteger;
 s:='update do_head set  ';
 s:=s+'  c_inn=:p0,  c_name=:p1,  c_addr=:p2,  c_ogrn=:p3,  c_kpp=:p4,  c_fam=:p5,c_country=:p6, '  ;
 s:=s+'  f_name=:p7,f_address=:p8, f_country=:p9,   r_name=:p10,r_address=:p11,r_inn=:p12,r_kpp=:p13,r_ogrn=:p14,';
 s:=s+'  g072=:p15, r_country=:p16 where id=:p17  ';
 DM.sql.Close;
 DM.sql.SQL.Clear;
 DM.sql.SQL.Add(s);
  IF not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
  DM.Sql.Params[0].AsString:=E_CINN.Text;
  DM.Sql.Params[1].AsString:=E_CName.Text;
  DM.Sql.Params[2].AsString:=E_CADDR.Text;
  DM.Sql.Params[3].AsString:=E_COgrn.Text;
  DM.Sql.Params[4].AsString:=E_CKPP.Text;
  DM.Sql.Params[5].AsString:=E_CFAM.Text;
  DM.Sql.Params[6].AsString:=E_CntryKod.Text;
  DM.Sql.Params[7].AsString:=E_FName.Text;
  DM.Sql.Params[8].AsString:=E_FAddr.Text;
  DM.Sql.Params[9].AsString:=E_FCntryKod.Text;
  DM.Sql.Params[10].AsString:=E_RName.Text;
  DM.Sql.Params[11].AsString:=E_RAddr.Text;
  DM.Sql.Params[12].AsString:=E_RInn.Text;
  DM.Sql.Params[13].AsString:=E_RKPP.Text;
  DM.Sql.Params[14].AsString:=E_ROGRN.Text;
  DM.Sql.Params[15].value:= E_G072.Value;
  DM.Sql.Params[16].AsString:=E_RCountryCode.Text;
  DM.Sql.Params[17].AsInteger:=Id_rec;
  DM.Sql.ExecQuery;
  (Sender as TBitBtn).Enabled:=False;
   SetEditColor;
     IF DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Commit;
  except
      on E: EdatabaseError do
        begin
         DM.Sql.Transaction.Rollback;
         ShowMessage(E.Message);
        end;
 end;

finally
  IF DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;



procedure TEditDo_F.E_G14FamChange(Sender: TObject);
begin
 if not SaveBtn.Enabled then SaveBtn.Enabled:=True;
end;

procedure TEditDo_F.E_G14FamKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TEditDo_F.E_G142Change(Sender: TObject);
begin
 if not SaveBtn.Enabled then SaveBtn.Enabled:=True;
end;

procedure TEditDo_F.E_G14DoljChange(Sender: TObject);
begin
 if not SaveBtn.Enabled then SaveBtn.Enabled:=True;
end;

procedure TEditDo_F.E_G14DoljKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TEditDo_F.E_CNameKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TEditDo_F.E_CNameRightButtonClick(Sender: TObject);
begin
 if Carrier_F.ShowModal=mrOk then
   begin
     E_CName.Text:=Carrier_F.DBGridEh1.DataSource.DataSet.FieldByName('OWNER').AsString;
     E_CADDR.Text:=Carrier_F.DBGridEh1.DataSource.DataSet.FieldByName('ADDROWN').AsString;
     E_CINN.Text:=Carrier_F.DBGridEh1.DataSource.DataSet.FieldByName('INN').AsString;
     E_CKPP.Text:=Carrier_F.DBGridEh1.DataSource.DataSet.FieldByName('KPP').AsString;
     E_CntryKod.Text:=Carrier_F.DBGridEh1.DataSource.DataSet.FieldByName('COUNTRY_CODE').AsString;
   end;
end;

procedure TEditDo_F.E_CntryKodChange(Sender: TObject);
begin
E_CountryName.Text:=CountryCode_F.FindCountry(Trim(E_CntryKod.Text));
 (Sender as TButtonedEdit).Color:=clYellow;
 (Sender as TButtonedEdit).Font.Color:=clBlue;
 if not SaveBtn.Enabled then SaveBtn.Enabled:=True;
end;

procedure TEditDo_F.E_CntryKodKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end
     else if  not ( Key in ['A'..'Z',#8]) then Key:=#0;
end;

procedure TEditDo_F.E_CntryKodRightButtonClick(Sender: TObject);
begin
 if CountryCode_F.ShowModal=mrOk then
    begin
     E_CntryKod.Text:=CountryCode_F.Grid_Countries.DataSource.DataSet.FieldByName('ALPHA2').AsString;
     E_CountryName.Text:=CountryCode_F.Grid_Countries.DataSource.DataSet.FieldByName('NAME').AsString;
    end;



end;

procedure TEditDo_F.E_CINNKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TEditDo_F.E_CADDRChange(Sender: TObject);
begin
 (Sender as TEdit).Color:=clYellow;
 (Sender as TEdit).Font.Color:=clBlue;
 if not SaveBtn.Enabled then SaveBtn.Enabled:=True;
end;

procedure TEditDo_F.E_CADDRKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TEditDo_F.E_COgrnChange(Sender: TObject);
begin
 (Sender as TEdit).Color:=clYellow;
 (Sender as TEdit).Font.Color:=clBlue;
 if not SaveBtn.Enabled then SaveBtn.Enabled:=True;
end;

procedure TEditDo_F.E_COgrnKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TEditDo_F.E_CKPPChange(Sender: TObject);
begin
 (Sender as TEdit).Color:=clYellow;
 (Sender as TEdit).Font.Color:=clBlue;
 if not SaveBtn.Enabled then SaveBtn.Enabled:=True;
end;

procedure TEditDo_F.E_CKPPKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TEditDo_F.E_CFAMChange(Sender: TObject);
begin
 (Sender as TEdit).Color:=clYellow;
 (Sender as TEdit).Font.Color:=clBlue;
 if not SaveBtn.Enabled then SaveBtn.Enabled:=True;
end;

procedure TEditDo_F.E_CFAMKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TEditDo_F.E_CCNTRYKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TEditDo_F.E_G073KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TEditDo_F.E_G072KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TEditDo_F.E_CCNTRYButtonClick(Sender: TObject);
begin
{ if (FormOKSMT.ShowModal = mrOK) then
  begin
    E_CCNTRY.Text:=DM.Sql_Oksmt.FieldByName('KOD').AsString;
    E_CountryName.Text:=DM.Sql_Oksmt.FieldByName('KRNAME').AsString;
  end;}
end;

procedure TEditDo_F.FormShow(Sender: TObject);
var
  i:Integer;
begin
if not DM.Qry_CountryCodes.Active then DM.Qry_CountryCodes.Open;
EditDo_F.Caption:='ДО.Редактирование '+'['+DM.Qry_DoHead.fieldByname('G073').AsString+']';;
Refresh_DoTrans.Execute;
Refresh_DoTrand.Execute;
Refresh_DoCust.Execute;
Refresh_DoTovar.Execute;
Refresh_DoOutHD.Execute;
{Refresh_DoOutCust.Execute;
Refresh_DoOutTd.Execute;
Refresh_DoOutTs.Execute;
Refresh_DoOutTov.Execute;
Refresh_DoDocsOut.Execute;}
GetValues;
SetEditColor;
PageControl1.ActivePageIndex:=0;
SaveBtn.Enabled:=False;
if E_RCountryCode.Text <> 'RU' then
  begin
    E_RInn.Enabled:=False;
    E_RKPP.Enabled:=False;
    E_ROGRN.Enabled:=False;
  end;
// проверим, кто вызвал форму
case Do1_F.DoEdit_Sender of
  // GridDo1 - редактирование разрешено
  0:  begin
        with EditDo_F do
          begin
            for i:=0 to ComponentCount-1 do
               begin
                  if Components[i] is TTabSheet then
                     begin
                        (Components[i] as TTabSheet).Enabled:=True;
                     end;
                  if Components[i] is TBitBtn then
                     begin
                        (Components[i] as TBitBtn).Enabled:=True;
                     end;
               end;
          end;
      end;
  // Grid_Arc - редактирование запрещено
  1:  begin
        with EditDo_F do
          begin
            for i:=0 to ComponentCount-1 do
               begin
                  if Components[i] is TTabSheet then
                     begin
                        (Components[i] as TTabSheet).Enabled:=False;
                     end;
                  if Components[i] is TBitBtn then
                     begin
                        (Components[i] as TBitBtn).Enabled:=False;
                     end;

               end;
          end;
      end;
end;
end;

procedure TEditDo_F.E_CNameButtonClick(Sender: TObject);
begin
{if Formcarrier.ShowModal = mrOk then
  begin
    E_CName.Text:=DM.Qry_Carrier.FieldByName('OWNER').AsString;
    E_CADDR.Text:=DM.Qry_Carrier.FieldByName('ADDROWN').AsString;
    E_CINN.Text:=DM.Qry_Carrier.FieldByName('INN').AsString;
    E_COGRN.Text:=DM.Qry_Carrier.FieldByName('OGRN').AsString;
    E_CKPP.Text:=DM.Qry_Carrier.FieldByName('KPP').AsString;
    E_CCNTRY.Text:=DM.Qry_Carrier.FieldByName('COUNTRY').AsString;
  end;}

end;

procedure TEditDo_F.E_CNameChange(Sender: TObject);
begin
 (Sender as TButtonedEdit).Color:=clYellow;
 (Sender as TButtonedEdit).Font.Color:=clBlue;
 if not SaveBtn.Enabled then SaveBtn.Enabled:=True;
end;

procedure TEditDo_F.E_CCNTRYExit(Sender: TObject);
begin
//E_Countryname.Text:=FormOksmt.FindCountry(Trim(E_CCNTRY.Text));
end;

procedure TEditDo_F.Tab_1Exit(Sender: TObject);
var
 Mes:String;
begin
 if not DoSaveFlag then
   begin
     Mes:='Данные по реквизитам не сохранены. Сохранить и продолжить?';
     if Application.MessageBox(Pchar(Mes),'Внимание!',mb_IconQuestion+mb_YesNo) <> id_yes then
        begin
//         PageControl1.FindNextPage(Tab_Do1,False,True);
        end
       else
         begin
           SaveBtnClick(SaveBtn);
//           PageControl1.ActivePageIndex:=1;
         end;

   end;
end;

procedure TEditDo_F.PageControl1Change(Sender: TObject);
begin
// if not DoSaveFlag then PageControl1.ActivePage:=Tab_1;
end;

procedure TEditDo_F.E_FCountryExit(Sender: TObject);
begin
//E_FCntryname.Text:=FormOksmt.FindCountry(Trim(E_FCountry.Text));
end;

procedure TEditDo_F.E_RAddrChange(Sender: TObject);
begin
 (Sender as TEdit).Color:=clYellow;
 (Sender as TEdit).Font.Color:=clBlue;
 if not SaveBtn.Enabled then SaveBtn.Enabled:=True;
end;

procedure TEditDo_F.E_RCountryCodeExit(Sender: TObject);
begin
  E_RCountryName.Text:=CountryCode_F.FindCountry(Trim(E_RCountryCode.Text));
 (Sender as TButtonedEdit).Color:=clYellow;
 (Sender as TButtonedEdit).Font.Color:=clBlue;
 if not SaveBtn.Enabled then SaveBtn.Enabled:=True;
 if E_RCountryCode.Text <> 'RU' then
    begin
      E_RInn.Clear;
      E_RInn.Enabled:=False;
      E_RKPP.Clear;
      E_RKPP.Enabled:=False;
      E_ROGRN.Clear;
      E_ROGRN.Enabled:=False;
    end
   else
    begin
      E_RInn.Enabled:=True;
      E_RKPP.Enabled:=True;
      E_ROGRN.Enabled:=True;
    end;
end;

procedure TEditDo_F.E_RCountryCodeKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end
     else if  not ( Key in ['A'..'Z',#8]) then Key:=#0;
end;

procedure TEditDo_F.E_RCountryCodeRightButtonClick(Sender: TObject);
begin
if CountryCode_F.ShowModal=mrOk then
  begin
     E_RCountryCode.Text:=CountryCode_F.Grid_Countries.DataSource.DataSet.FieldByName('ALPHA2').AsString;
     E_RCountryName.Text:=CountryCode_F.Grid_Countries.DataSource.DataSet.FieldByName('NAME').AsString;
  end;
E_RCountryCodeExit(Sender as TButtonedEdit);
end;

procedure TEditDo_F.E_RCountryExit(Sender: TObject);
begin
//E_RCntryname.Text:=FormOksmt.FindCountry(Trim(E_RCountry.Text));
end;

procedure TEditDo_F.E_FNameChange(Sender: TObject);
begin
 (Sender as TButtonedEdit).Color:=clYellow;
 (Sender as TButtonedEdit).Font.Color:=clBlue;
 if not SaveBtn.Enabled then SaveBtn.Enabled:=True;
end;

procedure TEditDo_F.E_FNameKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TEditDo_F.E_FNameRightButtonClick(Sender: TObject);
begin
  if Shipper_F.ShowModal = mrOk then
     begin
       E_FName.Text:=DM.Qry_Shipper.FieldByName('FIRM_NAME').AsString;
       E_FAddr.Text:=DM.Qry_Shipper.FieldByName('ADDRESS').AsString;
       E_FCntryKod.Text:=DM.Qry_Shipper.FieldByName('COUNTRY').AsString;
     end;
end;

procedure TEditDo_F.E_FAddrChange(Sender: TObject);
begin
 (Sender as TEdit).Color:=clYellow;
 (Sender as TEdit).Font.Color:=clBlue;
 if not SaveBtn.Enabled then SaveBtn.Enabled:=True;
end;

procedure TEditDo_F.E_FAddrKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TEditDo_F.E_RNameChange(Sender: TObject);
begin
 (Sender as TEdit).Color:=clYellow;
 (Sender as TEdit).Font.Color:=clBlue;
 if not SaveBtn.Enabled then SaveBtn.Enabled:=True;
end;

procedure TEditDo_F.E_RNameKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;

end;

procedure TEditDo_F.E_ROGRNChange(Sender: TObject);
begin
 (Sender as TEdit).Color:=clYellow;
 (Sender as TEdit).Font.Color:=clBlue;
 if not SaveBtn.Enabled then SaveBtn.Enabled:=True;
end;

procedure TEditDo_F.E_FCntryKodChange(Sender: TObject);
begin
E_FCntryname.Text:=CountryCode_F.FindCountry(Trim(E_FCntryKod.Text));
 (Sender as TButtonedEdit).Color:=clYellow;
 (Sender as TButtonedEdit).Font.Color:=clBlue;
 if not SaveBtn.Enabled then SaveBtn.Enabled:=True;
end;

procedure TEditDo_F.E_FCntryKodKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end
     else if  not ( Key in ['A'..'Z',#8]) then Key:=#0;
end;

procedure TEditDo_F.E_FCntryKodRightButtonClick(Sender: TObject);
begin
if CountryCode_F.ShowModal=mrOk then
  begin
     E_FCntryKod.Text:=CountryCode_F.Grid_Countries.DataSource.DataSet.FieldByName('ALPHA2').AsString;
     E_FCNTRYName.Text:=CountryCode_F.Grid_Countries.DataSource.DataSet.FieldByName('NAME').AsString;
  end;
end;

procedure TEditDo_F.Btn_TransAddClick(Sender: TObject);
 var
  id_do1:Integer;
  g073:String  ;
begin
 id_do1:=Do1_F.GridDo1.DataSource.DataSet.FieldByName('ID').AsInteger;
 g073:=Do1_F.GridDo1.DataSource.DataSet.FieldByName('G073').AsString;
 DM.Qry.Close;
 DM.Qry.SQL.Clear;
 DM.Qry.SQL.Add('select count(*) from do_trans where id_do1=:p0');
 DM.Qry.Params[0].AsInteger:=id_do1;
   try
     DM.Qry.Open ;
   except
   on E:Exception do
     begin
      MessageBox(Application.Handle, PChar(E.Message + #13#10 + Dm.Qry.SQL.Text),
           PChar(Application.Name), MB_ICONERROR);
      Exit;
     end;
   end; // end try
 if DM.Qry.Fields[0].asinteger > 0 then
  begin
    Application.MessageBox(Pchar('Нельзя добавить еще одно ТС по ДО1 № '+g073),'Внимание',
                          mb_iconstop+mb_ok);
    Exit;
  end;
DoTransAdd_F.showModal;
end;

procedure TEditDo_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//   FormZTK.Refresh_Do.execute;
end;

procedure TEditDo_F.Refresh_DoTransExecute(Sender: TObject);
begin
  if not DM.Qry_DoTrans.Active then Exit;
  DM.qry_DoTrans.Close;
  DM.qry_DoTrans.open;
//  DM.qry_DoTrans.Locate('ID_NUM',R,[]);
end;

procedure TEditDo_F.Refresh_DoTrandExecute(Sender: TObject);
begin
  if not DM.qry_DoTrand.Active then Exit;  
  DM.qry_DoTrand.Close;
  DM.qry_DoTrand.open;
//  DM.qry_DoTrand.Locate('ID_NUM',R,[]);
end;

procedure TEditDo_F.RefBtnClick(Sender: TObject);
begin
try
    RefBtn.Enabled:=False;
    DM.Refresh_Do1;
    Refresh_DoTrans.Execute;
    Refresh_DoTrand.Execute;
    Refresh_DoCust.Execute;
    Refresh_DoTovar.Execute;
    Refresh_DoOutHd.Execute;
    Refresh_DoOutCust.Execute;
    Refresh_DoOutTd.Execute;
    Refresh_DoOutTs.Execute;
    Refresh_DoOutTov.Execute;
    Refresh_DoDocsOut.Execute;
    DM.Qry_ActCom.Close;
    DM.Qry_ActCom.Open;
    DM.Qry_TovMismatch.Close;
    DM.Qry_TovMismatch.Open;
    DM.Qry_Gtd.Close;
    DM.Qry_Gtd.Open;
    DM.Qry_Do2LinkedDocs.Close;
    DM.Qry_Do2LinkedDocs.Open;
finally
    RefBtn.Enabled:=True;
end;
end;

procedure TEditDo_F.Refresh_DoCustExecute(Sender: TObject);
var
 r:integer;
begin
  if not DM.qry_DoCust.Active then Exit;
  r:=DM.qry_DoCust.FieldByName('ID').AsInteger;
  DM.qry_DoCust.Close;
  DM.qry_DoCust.open;
  DM.qry_DoCust.Locate('ID',R,[]);
end;

procedure TEditDo_F.Btn_TransEditClick(Sender: TObject);
begin
 DoTransEdit_F.showModal;
end;

procedure TEditDo_F.Btn_TransDelClick(Sender: TObject);
var
 Id_Rec:Integer;
 s1:String;
begin
 if Application.MessageBox('Данные будут безвозвратно удалены.Продолжить?','Внимание',mb_IconWarning+mb_YesNo)= id_NO then Exit;
 Id_Rec:=DM.Qry_DoTrans.FieldByName('ID').asInteger;
 s1:='delete from do_trans where id = :p0 ';
 Dm.sql.Close;
 DM.sql.SQL.Clear;
 DM.sql.SQL.Add(s1);
try
 try
 if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
  DM.sql.Params[0].AsInteger:=Id_rec;
  DM.sql.ExecQuery;
  DM.sql.Transaction.Commit;
  DM.Qry_DoTrans.Close;
  DM.Qry_DoTrans.Open;
 except
      on E: EdatabaseError do
        begin
         DM.Sql.Transaction.Rollback;
         ShowMessage(E.Message);
        end;
 end;
finally
 IF DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;
end;

procedure TEditDo_F.Btn_CustAddClick(Sender: TObject);
begin
  DoCustAdd_F .showModal;
end;

procedure TEditDo_F.Btn_DoCustEditClick(Sender: TObject);
begin
 DoCustEdit_F.showModal;
end;

procedure TEditDo_F.Btn_DoTrandAddClick(Sender: TObject);
begin
   DotrandAdd_F.showModal;
end;

procedure TEditDo_F.Btn_DoTrandEditClick(Sender: TObject);
begin
   DoTrandEdit_F.showModal;
end;

procedure TEditDo_F.Btn_DoCustDelClick(Sender: TObject);
var
 Id_Rec:Integer;
 s1:String;
begin
try
 try
    if Application.MessageBox('Данные будут безвозвратно удалены.Продолжить?','Внимание',mb_IconWarning+mb_YesNo)= id_NO then Exit;
    Id_Rec:=DM.Qry_DoCust.FieldByName('ID').asInteger;
    s1:='delete from do_cust where id = :p0 ';
    Dm.sql.Close;
    DM.sql.SQL.Clear;
    DM.sql.SQL.Add(s1);
    if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
    DM.sql.Params[0].AsInteger:=Id_Rec;
    DM.sql.ExecQuery;
    DM.sql.Transaction.Commit;
    DM.Qry_DoCust.Close;
    DM.Qry_DoCust.Open;
    DM.Qry_DoCust.Locate('ID',Id_Rec,[]);
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

procedure TEditDo_F.Btn_DoTrandDelClick(Sender: TObject);
var
 Id_Rec,id_do1:Integer;
 s1:String;
begin

 if Application.MessageBox('Удаление документа повлечет удаление связанных с ним товаров.Продолжить?','Внимание',mb_IconWarning+mb_YesNo)= id_NO then Exit;
 if Application.MessageBox('Данные будут безвозвратно удалены.Продолжить?','Внимание',mb_IconWarning+mb_YesNo)= id_NO then Exit;
 try
   try
     id_do1:=DM.Qry_DoTrand.FieldByName('ID_DO1').AsInteger;
     Id_Rec:=DM.Qry_DoTrand.FieldByName('ID').asInteger;
     s1:='delete from do_trand where id = :p0 ';
     Dm.sql.Close;
     DM.sql.SQL.Clear;
     DM.sql.SQL.Add(s1);
     if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
      DM.sql.Params[0].AsInteger:=Id_Rec;
      DM.sql.ExecQuery;
      DM.sql.Transaction.Commit;
      DM.ReNumberTtn(id_do1);
      DM.Qry_DoTrand.Close;
      DM.Qry_DoTrand.Open;
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

procedure TEditDo_F.Btn_DoTovarAddClick(Sender: TObject);
var
 s,substr:String;
 id_do1:Integer;
 v:Variant;
begin
  if (DM.Qry_DoTrand.FieldByName('ID').IsNull) or (DM.Qry_DoTrand.FieldByName('N_TD').IsNull) then Exit;
  //сделано чтобы случайно не добавить товар на товаросопровод документ
  substr:='2015';
  s:=Grid_Do1Trand.DataSource.DataSet.FieldByName('TYPE_DOC').AsString;
  if Pos(substr,s) = 0 then
    begin
      Application.MessageBox('Нельзя добавить товар.Транспортный документ не ТТН!','Внимание',
                             mb_iconstop+mb_ok);
      Exit;
    end;
  id_do1:=Do1_F.GridDo1.DataSource.DataSet.FieldByName('ID').AsInteger;
  v:=  Do1_f.GetSrok(id_do1)    ;
  if not (v = null) then Do1_F.Srok:=v else Do1_F.Srok:=null;

  DoTovarAdd_F.ShowModal;
end;

procedure TEditDo_F.Refresh_DoTovarExecute(Sender: TObject);
var
 r:Integer;
begin
 if not DM.qry_DoTovar.Active then Exit;
 r:=DM.qry_DoTovar.FieldByName('ID').AsInteger;
 DM.qry_DoTovar.Close;
 DM.qry_DoTovar.open;
 DM.Qry_DoTovar.Locate('ID',r,[]);
end;

procedure TEditDo_F.Btn_DoTovarDelClick(Sender: TObject);
var
 Id_Rec,N_ttn,Id_do1:Integer;
 s1:String;
begin
try
 try
   if Application.MessageBox('Данные будут безвозвратно удалены.Продолжить?','Внимание',mb_IconWarning+mb_YesNo)= id_NO then Exit;
   Id_Rec:=DM.Qry_DoTovar.FieldByName('ID').asInteger;
   Id_do1:=DM.Qry_DoTovar.FieldByName('ID_DO1').asInteger;
   N_ttn:=DM.Qry_DoTovar.FieldByName('N_TTN').asInteger;
   s1:='delete from do_tovar where id = :p0 ';
   Dm.sql.Close;
   DM.sql.SQL.Clear;
   DM.sql.SQL.Add(s1);
   if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
    DM.sql.Params[0].AsInteger:=Id_rec;
    DM.sql.ExecQuery;
    DM.sql.Transaction.Commit;
    DM.ReNumber_Ntov(Id_do1,N_ttn);
    Application.MessageBox('Данные удалены','Подтверждение',mb_OK+mb_iconinformation);
 except
        on E: EdatabaseError do
          begin
           DM.Sql.Transaction.Rollback;
           ShowMessage(E.Message);
          end;
   end;
   DM.Refresh_DoTrand;
   DM.Refresh_DoTovar;
finally
    if DM.sql.Transaction.InTransaction then DM.sql.Transaction.Rollback; //start tran
end;
end;


procedure TEditDo_F.Btn_DoTovarEditClick(Sender: TObject);
begin
 DoTovarEdit_F.ShowModal;
end;

procedure TEditDo_F.A_ActComAddExecute(Sender: TObject);
begin
  AddActCom_F.ShowModal;
end;

procedure TEditDo_F.A_ActComDeleteExecute(Sender: TObject);
var
 Mes:String;
 id_rec:Integer;
begin
  try
   try
    if Dm.Qry_ActCom.FieldByName('ID').IsNull then Exit;
    Mes:='Удаление коммерческого акта приведет к изменению в отчетности ДО1.Продолжить?';
    If Application.MessageBox(Pchar(Mes),'Внимание!',MB_ICONQUESTION+MB_YESNO) <> ID_YES then Exit;
    id_rec:=DM.Qry_ActCom.FieldByName('ID').AsInteger;
    DM.SQL.Close;
    DM.SQL.SQL.Clear;
    Dm.SQL.SQL.Add('delete from act_com where id=:p0');
    if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction; //start tran
    DM.SQL.Params[0].AsInteger:=id_rec;
    DM.SQL.ExecQuery;
    DM.SQL.Transaction.Commit;
    DM.Qry_ActCom.Close;
    DM.Qry_ActCom.Open;
    Application.MessageBox('Данные успешно удалены','Подтверждение',mb_OK+mb_iconinformation);
   except
       on E:Exception do
        begin
           DM.SQL.Transaction.Rollback;
           MessageBox(Application.Handle, PChar(E.Message + #13#10 + Dm.SQL.SQL.Text),
             PChar(Application.Name), MB_ICONERROR);
           Exit;
        end;
   end;
  finally
   if DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.Rollback; //start tran
  end;
end;

procedure TEditDo_F.A_ActComEditExecute(Sender: TObject);
begin
  EditActCom_F.ShowModal;
end;

procedure TEditDo_F.A_Do2DeleteExecute(Sender: TObject);
var
 id_rec:Integer;
begin
try
 try
     if Application.MessageBox('Данные будут безвозвратно удалены. Удалить текущее ДО2?','Подтверждение',
        mb_yesno+mb_iconwarning) <> id_yes then Exit;
     id_rec:=Grid_Do2Hd.DataSource.DataSet.FieldByName('ID').AsInteger;
     Dm.sql.Close;
     DM.sql.SQL.Clear;
     DM.sql.SQL.Add('delete from do_outhd where id=:p0');
     if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
      DM.sql.Params[0].AsInteger:=Id_rec;
      DM.sql.ExecQuery;
      Dm.sql.Close;
      DM.sql.SQL.Clear;
      DM.sql.SQL.Add('update do_outdocs set id_do2 = null,do2_statn=null where id_do2=:p0');
      DM.sql.Params[0].AsInteger:=Id_rec;
      DM.sql.ExecQuery;
      Dm.sql.Close;
      DM.sql.SQL.Clear;
      DM.sql.SQL.Add('update wh_act_out set id_do2 = null  where id_do2=:p0');
      DM.sql.Params[0].AsInteger:=Id_rec;
      DM.sql.ExecQuery;
      DM.sql.Transaction.Commit;
    //  FormEditDo.Set_stpctrl(DM.Sql_DoHead.FieldByName('G073').AsString,DM.Sql_DoHead.FieldByName('G072').AsDateTime);
      DM.Refresh_Do2;
      DM.Refresh_ActWithoutDo2;
      Application.MessageBox('Данные удалены','Подтверждение',mb_OK+mb_iconinformation);
      except
        on E:Exception do
          begin
            DM.SQL.Transaction.Rollback;
            MessageBox(Application.Handle, PChar(E.Message + #13#10 + Dm.SQL.SQL.Text),
            PChar(Application.Name), MB_ICONERROR);
          end;
     end;
finally
   if DM.sql.Transaction.InTransaction then DM.sql.Transaction.Rollback; //start tran
end;
end;

procedure TEditDo_F.A_LinkGtdTovExecute(Sender: TObject);
var
 TempBookmark:TBookMark;
 x:word;
begin
//проверим выбраны ли записи
     with Grid_Do2Tov.SelectedRows do
      if Count = 0 then
        begin
          Application.MessageBox('Не выбрано ни одного товара.','Внимание!',mb_iconwarning+mb_ok );
          Exit;
        end;   //end with
try
  if not SelGTD_F.ShowModal=mrOK then Exit;
  DM.Qry_DoOutTovar.DisableControls;
  DM.sql.Close;
  Dm.sql.SQL.Clear;
  DM.sql.SQL.Add('insert into rel_tov_gtd(id_tov,id_gtd) ');
  DM.sql.SQL.Add('values (:p0,:p1)');
  try
    if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction;
    TempBookmark := DM.Qry_DoOutTovar.GetBookmark;
     with EditDo_F.Grid_Do2Tov.SelectedRows do
      begin
       for x := 0 to Count-1 do
        begin
          if IndexOf(Items[x]) > -1 then
            begin
              DM.Qry_DoOutTovar.Bookmark := Items[x];
              DM.sql.params[0].AsInteger:=DM.Qry_DoOutTovar.FieldByName('ID').asInteger;
              DM.sql.params[1].AsInteger:=DM.Qry_Gtd.FieldByName('ID').AsInteger;
              DM.sql.ExecQuery;
            end;  //end if
        end;   //end for
     end;  //end with
     DM.sql.Transaction.Commit;
     EditDo_F.Refresh_DoDocsOut.Execute;
     EditDo_F.Refresh_DoOutTov.Execute;
   except
     on E:Exception do
      begin
         DM.sql.Transaction.Rollback;
         MessageBox(Application.Handle, PChar(E.Message + #13#10 + Dm.sql.SQL.Text),
           PChar(Application.Name), MB_ICONERROR);
//         Exit;
      end;
   end;
 finally
     if DM.sql.Transaction.InTransaction then DM.sql.Transaction.Rollback;
     DM.Qry_DoOutTovar.GotoBookmark(TempBookmark);
     DM.Qry_DoOutTovar.FreeBookmark(TempBookmark);
     EditDo_F.Grid_Do2Tov.SelectedRows.Clear;
     DM.Qry_DoOutTovar.EnableControls;
 end;
end;

procedure TEditDo_F.A_MismTovAddExecute(Sender: TObject);
var
 TempBookmark,TempBookmark1:TBookMark;
 id_act,id_tov:Integer;
 x:word;
begin
try
 if Grid_ActCom.DataSource.DataSet.FieldByName('ID').IsNull then
   begin
     Application.MessageBox('Не существует ни одного документа.Продолжить невозможно.','Внимание',
                             MB_ICONSTOP+MB_OK );
     Exit;
   end;
 if MismTovSel_F.ShowModal <> mrOk then Exit;

  id_act:=Grid_ActCom.DataSource.DataSet.FieldByName('ID').AsInteger;
  DM.SQL.Close;
  Dm.SQL.SQL.Clear;
  DM.SQL.SQL.Add('insert into mismatch (id_tov,id_act,dt_mism,tnved_code,description,inv_cost,place_number,brutto,edizm,edizm_code) ');
  DM.SQL.SQL.Add('values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9)');
  try
    if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction;
    TempBookmark := MismTovSel_F.Grid_Tov.Datasource.Dataset.GetBookmark;
       for x := 0 to MismTovSel_F.Grid_Tov.SelectedRows.Count-1 do
        begin
         if MismTovSel_F.Grid_Tov.SelectedRows.IndexOf(MismTovSel_F.Grid_Tov.SelectedRows.Items[x]) > -1 then
            begin
              MismTovSel_F.Grid_Tov.Datasource.Dataset.Bookmark := MismTovSel_F.Grid_Tov.SelectedRows.Items[x];
              id_tov:=MismTovSel_F.Grid_Tov.DataSource.DataSet.FieldByName('ID').asInteger;
              DM.SQL.params[0].asInteger:=id_tov;
              DM.SQL.params[1].asInteger:=id_act;
              DM.SQL.Params[2].AsDateTime:=Now;
              DM.Qry.Close;
              Dm.Qry.SQL.Clear;
              Dm.Qry.SQL.Add('select g31_1,g33,g42,g31_2,g35 from do_tovar where id=:po');
              DM.Qry.Params[0].AsInteger:=id_tov;
              Dm.Qry.Open;
              DM.SQL.Params[3].AsString:=Dm.Qry.FieldByName('G33').asString;
              DM.SQL.Params[4].AsString:=Dm.Qry.FieldByName('G31_1').asString;
              DM.SQL.Params[5].AsDouble:=Dm.Qry.FieldByName('G42').AsFloat;
              DM.SQL.Params[6].AsInteger:=Dm.Qry.FieldByName('G31_2').asInteger;
              DM.SQL.Params[7].AsDouble:=Dm.Qry.FieldByName('G35').asFloat;
              DM.SQL.Params[8].AsString:='КГ';
              DM.SQL.Params[9].AsString:='166';
              DM.SQL.ExecQuery;
            end;  //end if
        end;   //end for
     DM.SQL.Transaction.Commit;
     DM.Qry_TovMismatch.Close;
     DM.Qry_TovMismatch.Open;
   except
     on E:Exception do
      begin
         DM.SQL.Transaction.Rollback;
         MessageBox(Application.Handle, PChar(E.Message + #13#10 + Dm.SQL.SQL.Text),
           PChar(Application.Name), MB_ICONERROR);
//         Exit;
      end;
   end;
 finally
     if DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.Rollback;
     MismTovSel_F.Grid_Tov.Datasource.Dataset.GotoBookmark(TempBookmark);
     MismTovSel_F.Grid_Tov.Datasource.Dataset.FreeBookmark(TempBookmark);
     MismTovSel_F.Grid_Tov.SelectedRows.Clear;
 end;

end;

procedure TEditDo_F.A_MismTovDeleteExecute(Sender: TObject);
var
 Mes:String;
 id_rec:Integer;
begin
  try
   try
    if Dm.Qry_TovMismatch.FieldByName('ID').IsNull then Exit;
    Mes:='Удаление товара приведет к изменению в отчетности ДО1.Продолжить?';
    If Application.MessageBox(Pchar(Mes),'Внимание!',MB_ICONQUESTION+MB_YESNO) <> ID_YES then Exit;
    id_rec:=DM.Qry_TovMismatch.FieldByName('ID').AsInteger;
    DM.SQL.Close;
    DM.SQL.SQL.Clear;
    Dm.SQL.SQL.Add('delete from mismatch where id=:p0');
    if not DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.StartTransaction; //start tran
    DM.SQL.Params[0].AsInteger:=id_rec;
    DM.SQL.ExecQuery;
    DM.SQL.Transaction.Commit;
    DM.Qry_TovMismatch.Close;
    DM.Qry_TovMismatch.Open;
    Application.MessageBox('Данные успешно удалены','Подтверждение',mb_OK+mb_iconinformation);
   except
       on E:Exception do
        begin
           DM.SQL.Transaction.Rollback;
           MessageBox(Application.Handle, PChar(E.Message + #13#10 + Dm.SQL.SQL.Text),
             PChar(Application.Name), MB_ICONERROR);
           Exit;
        end;
   end;
  finally
   if DM.SQL.Transaction.InTransaction then DM.SQL.Transaction.Rollback; //start tran
  end;
end;

procedure TEditDo_F.A_MismTovEditExecute(Sender: TObject);
begin
   MismTovEdit_F.showModal;
end;

procedure TEditDo_F.BitBtn11Click(Sender: TObject);
begin
{ if DbGridEh4.DataSource.DataSet.FieldByName('ID_NUM').IsNull then Exit;
 FormEditDoTovar.ShowModal;}
end;

procedure TEditDo_F.PrintBtnClick(Sender: TObject);
var
 s:String;
 i:Integer;
 id_do1,id_do2:Integer;
begin
 case PageControl1.ActivePageIndex of
  0,1:begin   //print DO1
      id_do1:=DM.Qry_DoHead.FieldByName('ID').AsInteger;
      DM.Qry_raspiska.Close;
      DM.qry_raspiska.Params[0].AsInteger:=id_do1;
      DM.Qry_raspiska.Open;
      Reports_F.Rep2.LoadFromFile('raspiska.fr3');
      Reports_F.Rep2.ShowReport(True);
  DM.Qry_raspiska.Close;
  if Dm.Qry_RepDo1.Active then Dm.Qry_RepDo1.Close;
  DM.Qry_RepDo1.Params[0].AsInteger:=id_do1;
  DM.Qry_RepDo1.Open;
  Reports_F.Rep2.LoadFromFile('do1_715.fr3');
  Reports_F.Rep2.ShowReport(True);
  DM.Qry_RepDo1.Close;
 end;
 2:begin
  if DM.Qry_ActCom.FieldByName('ID').IsNull then Exit;
  id_do1:=DM.Qry_DoHead.FieldByName('ID').AsInteger;
  if Dm.Qry_RepDo1.Active then Dm.Qry_RepDo1.Close;
  DM.Qry_RepDo1.Params[0].AsInteger:=id_do1;
  DM.Qry_RepDo1.Open;
  Reports_F.Rep2.LoadFromFile('exdo1_715.fr3');
  Reports_F.Rep2.ShowReport(True);
  DM.Qry_RepDo1.Close;
 end;
 3:begin  //print DO2
  if DM.Qry_RepDo2.Active  then DM.Qry_RepDo2.Close;
  DM.Qry_RepDo2.Params[0].AsInteger:=DM.Qry_DoOutHd.FieldByName('ID').AsInteger;
  DM.Qry_RepDo2.Open;
  Reports_F.Rep2.LoadFromFile('do2_715.fr3');
  Reports_F.Rep2.ShowReport(True);
 end;
end;    // end case
end;


procedure TEditDo_F.E_G073Change(Sender: TObject);
begin
 if not SaveBtn.Enabled then SaveBtn.Enabled:=True;
{Num_Do1:=E_G073.Text;
FormEditDo.Caption:='ДО.Редактирование '+'['+DM.Sql_DoHead.fieldByname('G073').AsString+']';
Application.ProcessMessages;}
end;

procedure TEditDo_F.E_G072Change(Sender: TObject);
begin
 if not SaveBtn.Enabled then SaveBtn.Enabled:=True;
//Date_Do1:=E_G072.Date;
end;

procedure TEditDo_F.Btn_Do2Hd_AddClick(Sender: TObject);
 var
  Status,Mes:String;
begin
{ if ROLE='SYSADMIN' then
    begin
     Mes:='ТС находится в СВХ. Создать или добавить ДО2 ?';
     if Application.MessageBox(Pchar(Mes),'Внимание',MB_ICONQUESTION+MB_YESNO) = ID_NO then Exit;
    end
   else
    begin
     if FormZTK.GridDo.DataSource.DataSet.FieldByName('NUM_PARK').AsString <> '-' then
       begin
         Mes:='ТС находится в СВХ. Создать или добавить ДО2 невозможно.';
         Application.MessageBox(Pchar(Mes),'Внимание',mb_iconstop+mb_ok);
         Exit;
       end;
    end;   }
/////////////// временно комментим
{ if Create_do2 then
    begin
       DM.Qry_DoOutHd.Close;
       DM.Qry_DoOutHd.Open;
       DM.Qry_DoOutHd.Last;
       Application.MessageBox('Выполнено','Подтверждение',mb_iconinformation+mb_ok);
   end;}
end;

procedure TEditDo_F.Refresh_DoOutHdExecute(Sender: TObject);
var
 R:Integer;
begin
 if not DM.Qry_DoOutHd.Active then Exit;
 R:=DM.Qry_DoOutHd.FieldByName('ID').AsInteger;
 DM.qry_DoOutHd.Close;
 DM.qry_DoOutHd.open;
 DM.qry_DoOutHd.Locate('ID',R,[]);
end;

procedure TEditDo_F.Refresh_DoOutCustExecute(Sender: TObject);
var
 r:integer;
begin
 if not DM.qry_DoOutCust.Active then Exit; 
 r:=DM.qry_DoOutCust.FieldByName('ID').AsInteger;
 DM.qry_DoOutCust.Close;
 DM.qry_DoOutCust.open;
 DM.qry_DoOutCust.Locate('ID',r,[]);
end;

procedure TEditDo_F.Refresh_DoOutTdExecute(Sender: TObject);
begin
// DM.qry_DoOutTd.Locate('ID_NUM',R,[]);
end;

procedure TEditDo_F.Refresh_DoOutTsExecute(Sender: TObject);
begin
// DM.qry_DoOutTs.Locate('ID_NUM',R,[]);
end;

procedure TEditDo_F.Refresh_DoOutTovExecute(Sender: TObject);
var
 r:Integer;
begin
 if not DM.qry_DoOutTovar.Active then Exit; 
 r:=DM.qry_DoOutTovar.FieldByName('ID').AsInteger;
 DM.qry_DoOutTovar.Close;
 DM.qry_DoOutTovar.open;
 DM.qry_DoOutTovar.Locate('ID',r,[]);
end;

procedure TEditDo_F.Refresh_DoDocsOutExecute(Sender: TObject);
var
 r:Integer;
begin
 if not DM.Qry_Do2LinkedDocs.Active then Exit; 
 r:=DM.Qry_Do2LinkedDocs.FieldByName('ID').AsInteger;
 DM.Qry_Do2LinkedDocs.Close;
 DM.Qry_Do2LinkedDocs.Open;
 DM.Qry_Do2LinkedDocs.Locate('ID',r,[]);
end;

procedure TEditDo_F.Btn_Do2TovAddClick(Sender: TObject);
begin
  if Grid_Do2Hd.DataSource.DataSet.FieldByName('ID').IsNull then
    begin
      Application.MessageBox('Отсутствует ДО2 ','Внимание',mb_iconstop+mb_ok);
      Exit;
    end;
  if Do2TovAdd_F.ShowModal = mrOk then
     begin
       DM.Refresh_DoTovar;
       DM.Qry_DoOutTovar.Close;
       DM.Qry_DoOutTovar.Open;
     end;
//  Set_stpctrl(DM.Sql_DoHead.FieldByName('G073').AsString,DM.Sql_DoHead.FieldByName('G072').AsDateTime);}
end;

procedure TEditDo_F.Btn_Do2TovEditClick(Sender: TObject);
begin
  Do2TovEdit_F.ShowModal;
end;

procedure TEditDo_F.Btn_DetachDocClick(Sender: TObject);
var
 r:Integer;
begin
 if DBGridEh10.DataSource.DataSet.FieldByName('ID').IsNull then Exit;
 r:= DBGridEh10.DataSource.DataSet.FieldByName('ID').AsInteger;
  DM.SQl.Close;
  Dm.SQl.SQL.Clear;
  DM.SQl.SQL.Add(' delete from rel_tov_gtd where id = :p0 ');
 try
  if not DM.SQl.Transaction.InTransaction then DM.SQl.Transaction.StartTransaction;
  DM.SQl.params[0].AsInteger:=r;
  DM.SQl.ExecQuery;
  DM.SQl.Transaction.Commit;
  DBGridEh10.DataSource.DataSet.Close;
  DBGridEh10.DataSource.DataSet.Open;
 except
  on E:Exception do
    begin
      DM.SQl.Transaction.Rollback;
      MessageBox(Application.Handle, PChar(E.Message + #13#10 + Dm.SQl.SQL.Text),
      PChar(Application.Name), MB_ICONERROR);
//         Exit;
    end;
 end;
end;

procedure TEditDo_F.Btn_Do2DocAddClick(Sender: TObject);
begin
{if FormeditDo.DbgridEh5.DataSource.DataSet.FieldByName('ID_NUM').IsNull then Exit;}
Do2OutDoc_F.ShowModal;
end;

procedure TEditDo_F.Btn_Do2Hd_delClick(Sender: TObject);
begin
 A_Do2Delete.Execute;
end;

procedure TEditDo_F.Grid_Do2TovDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if  Grid_Do2Tov.SelectedRows.CurrentRowSelected then
 begin
  Grid_Do2Tov.Canvas.Font.Color := clYellow; // Font color
  Grid_Do2Tov.Canvas.Brush.Color := clBlue; // Background color
  Grid_Do2Tov.Canvas.FillRect(Rect);
 end;
  Grid_Do2Tov.DefaultDrawColumnCell(Rect, Datacol,Column, State);

end;

procedure TEditDo_F.Btn_Do2DocEditClick(Sender: TObject);
var
 id_rec:Integer;
begin
  if DM.Qry_Gtd.FieldByName('ID').IsNull then
    begin
      Application.MessageBox('Отсутствует документ выпуска ','Внимание',mb_iconstop+mb_ok);
      Exit;
    end;
  id_rec:=DM.Qry_Gtd.FieldByName('ID').AsInteger;
  OutDoc_Sender:=1;
  if Do2OutDocEdit_F.ShowModal=mrOk then
    begin
      DM.Qry_Gtd.Close;
      DM.Qry_Gtd.Open;
      DM.Qry_Gtd.Locate('ID',id_rec,[]);
    end;
end;

procedure TEditDo_F.Btn_Do2DocDelClick(Sender: TObject);
var
 Id_Rec,id_do2,n,i:Integer;
 s1:String;
begin
{ if not DM.Qry_Gtd.FieldByName('ID').IsNull then
    begin
     Id_Rec:=DM.Qry_Gtd.FieldByName('ID').asInteger;
     id_do2:=DM.Qry_Gtd.FieldByName('ID_DO2').asInteger;
    end
  else
     Exit;
 if Application.MessageBox('Данные будут безвозвратно удалены. Продолжить?','Внимание',mb_IconWarning+mb_YesNo)= id_NO then Exit;

 s1:='delete from do_outdocs where id = :p0 ';
 Dm.sql.Close;
 DM.sql.SQL.Clear;
 DM.sql.SQL.Add(s1);
try
 if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
  DM.sql.Params[0].AsInteger:=Id_rec;
  DM.sql.ExecQuery;
  s1:='delete from rel_tov_gtd where id_gtd = :p0 ';
  Dm.sql.Close;
  DM.sql.SQL.Clear;
  DM.sql.SQL.Add(s1);
  DM.sql.Params[0].AsInteger:=Id_rec;
  DM.sql.ExecQuery;
  if DM.Qry.Active then DM.Qry.Close;
  DM.Qry.SQL.Clear;
  DM.Qry.SQL.Add('select count(*) from do_outdocs where do2_id = :p0');
  DM.Qry.Params[0].AsInteger:=id_do2;
  DM.Qry.Open;
  n:=DM.Qry.Fields[0].AsInteger;
  if n > 0 then
   begin
    if DM.Qry.Active then DM.Qry.Close;
    DM.Qry.SQL.Clear;
    DM.Qry.SQL.Add('select id_num from do_outdocs where do2_id = :p0 order by npp');
    DM.Qry.Params[0].AsInteger:=id_do2;
    DM.Qry.Open;
     for i:=1 to n do
      begin

        while not DM.Qry.Eof do
          begin
            s1:='update do_outdocs set npp = :p0 where id_num = :p1 ';
            Dm.sql.Close;
            DM.sql.SQL.Clear;
            DM.sql.SQL.Add(s1);
            DM.sql.Params[0].AsInteger:=i;
            DM.sql.Params[1].AsInteger:=DM.Qry.Fields[0].AsInteger;
            DM.sql.ExecQuery;
            DM.Qry.Next;
          end;
      end;
   end;
  Dm.Qry.Close;
  DM.sql.Transaction.Commit;
  Application.MessageBox('Данные удалены','Подтверждение',mb_OK+mb_iconinformation);
  except
   Application.MessageBox('Ошибка удаления','Внимание!',mb_OK+mb_iconstop);
   DM.sql.Transaction.Rollback;
   Exit;
 end;
 Grid_GTD.DataSource.DataSet.Close;
 Grid_GTD.DataSource.DataSet.Open;}
end;

procedure TEditDo_F.Btn_Do2TovDel(Sender: TObject);
var
 Id_Rec:Integer;
 s1:String;
begin
try
 try
 if Grid_Do2Tov.DataSource.DataSet.FieldByName('ID').IsNull then Exit;
 if Application.MessageBox('Данные будут безвозвратно удалены.Продолжить?','Внимание',mb_IconWarning+mb_YesNo)= id_NO then Exit;
 Id_Rec:=Grid_Do2Tov.DataSource.DataSet.FieldByName('ID').asInteger;
 s1:='delete from do_out where id = :p0 ';
 Dm.sql.Close;
 DM.sql.SQL.Clear;
 DM.sql.SQL.Add(s1);
 if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
  DM.sql.Params[0].AsInteger:=Id_rec;
  DM.sql.ExecQuery;
  DM.sql.Transaction.Commit;
{  DM.ReNumber_Ntov(DBGridEh9.DataSource.DataSet.FieldByName('G074').AsString,
                   DBGridEh9.DataSource.DataSet.FieldByName('TIMEOUT').AsString,
                   DBGridEh9.DataSource.DataSet.FieldByName('G072').AsDateTime
                   );}
  DM.Refresh_Do2Tovar;
  DM.Refresh_DoTovar;
  Application.MessageBox('Данные удалены','Подтверждение',mb_OK+mb_iconinformation);
  except
      on E: EdatabaseError do
        begin
         DM.Sql.Transaction.Rollback;
         ShowMessage(E.Message);
        end;
 end;
finally
  if DM.sql.Transaction.InTransaction then DM.sql.Transaction.Rollback; //start tran
end;

end;


procedure TEditDo_F.Btn_DoHd_edClick(Sender: TObject);
begin
  if Grid_Do2Hd.DataSource.DataSet.FieldByName('ID').IsNull then
    begin
      Application.MessageBox('Отсутствует ДО2 ','Внимание',mb_iconstop+mb_ok);
      Exit;
    end;
 Do2Edit1_F.ShowModal;
end;

procedure TEditDo_F.E_RInnChange(Sender: TObject);
begin
 (Sender as TEdit).Color:=clYellow;
 (Sender as TEdit).Font.Color:=clBlue;
 if not SaveBtn.Enabled then SaveBtn.Enabled:=True;
end;

procedure TEditDo_F.E_RInnExit(Sender: TObject);
begin
{ if FormRegti.FindPoluch(E_RInn.Text) then
   begin
     E_RName.Text:=DM.Sql_Regti.FieldByName('ZAYV').asString;
     E_RAddr.Text:=DM.Sql_Regti.FieldByName('ADRESS').asString;
     E_RKPP.Text:=DM.Sql_Regti.FieldByName('KPP').asString;
     E_ROgrn.Text:=DM.Sql_Regti.FieldByName('OGRN').asString;
     E_RCountry.Text:='643';
   end;}
end;

procedure TEditDo_F.E_RKPPChange(Sender: TObject);
begin
 (Sender as TEdit).Color:=clYellow;
 (Sender as TEdit).Font.Color:=clBlue;
 if not SaveBtn.Enabled then SaveBtn.Enabled:=True;
end;

procedure TEditDo_F.E_CINNChange(Sender: TObject);
begin
 (Sender as TEdit).Color:=clYellow;
 (Sender as TEdit).Font.Color:=clBlue;
 if not SaveBtn.Enabled then SaveBtn.Enabled:=True;
end;

procedure TEditDo_F.E_CINNExit(Sender: TObject);
begin
{ if Formcarrier.Findcarrier(E_CInn.Text) then
   begin
     E_CName.Text:=DM.qry_Carrier.FieldByName('OWNER').asString;
     E_CAddr.Text:=DM.qry_Carrier.FieldByName('ADDROWN').asString;
   end;}
end;

procedure TEditDo_F.Btn_Do2Trans_AddClick(Sender: TObject);
var
 t:Integer;
begin
{ if DbGridEh5.DataSource.DataSet.FieldByName('ID_NUM').IsNull then
   begin
      Application.MessageBox('Невозможно добавить ТС.'+#13#10+
            'ДО2 не сформировано.','Внимание',mb_iconstop+mb_ok);
      Exit;
   end;
 DM.Qry.Close;
 DM.Qry.Sql.Clear;
 DM.Qry.SQL.Add('select count(*) from do_outts where g074=:p0 and g072=:p1');
 Dm.Qry.Params[0].AsString:=DbGridEh5.DataSource.DataSet.FieldByName('G074').AsString;
 Dm.Qry.Params[1].AsDate:=DbGridEh5.DataSource.DataSet.FieldByName('G072').AsDateTime;
 DM.Qry.Open;
 t:=DM.Qry.Fields[0].AsInteger;
 if t > 0 then
   begin
      Application.MessageBox('Невозможно добавить еще одно ТС ','Внимание',mb_iconstop+mb_ok);
      Exit;
   end;
 FormAddDotransOut.ShowModal;}
end;

procedure TEditDo_F.Btn_Do2trans_EdClick(Sender: TObject);
begin
{  if DbGridEh6.DataSource.DataSet.FieldByName('ID_NUM').IsNull then Exit;
  FormEditDotransOut.ShowModal;}
end;

procedure TEditDo_F.Btn_Do2Trans_delClick(Sender: TObject);
var
  N_Rec:Integer;
begin
{ if DbGridEh6.DataSource.DataSet.FieldByName('ID_NUM').IsNull then Exit;
 if Application.MessageBox('Данные будут безвовратно удалены. Удалить?','Подтверждение',mb_yesno+mb_iconquestion) = ID_NO then Exit;
 N_Rec:=DbGridEh6.DataSource.DataSet.FieldByName('ID_NUM').AsInteger;
 Dm.sql.Close;
 DM.sql.SQL.Clear;
 DM.sql.SQL.Add('delete from do_outts where id_num=:p0 ');
try
 if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
  DM.sql.Params[0].AsInteger:=N_Rec;
  DM.sql.ExecQuery;
  DM.sql.Transaction.Commit;
  Application.MessageBox('Данные успешно удалены','Подтверждение',mb_OK+mb_iconinformation);
  except
   Application.MessageBox('Ошибка удаления','Внимание!',mb_OK+mb_iconstop);
   DM.sql.Transaction.Rollback;
   Exit;
 end;
 FormeditDo.Refresh_DoOutTs.Execute;}
end;

procedure TEditDo_F.BitBtn16Click(Sender: TObject);
var
  N_Rec:Integer;
begin
{ if DbGridEh7.DataSource.DataSet.FieldByName('ID_NUM').IsNull then Exit;
 if Application.MessageBox('Данные будут безвовратно удалены. Удалить?','Подтверждение',mb_yesno+mb_iconquestion) = ID_NO then Exit;
 N_Rec:=DbGridEh7.DataSource.DataSet.FieldByName('ID_NUM').AsInteger;
 Dm.sql.Close;
 DM.sql.SQL.Clear;
 DM.sql.SQL.Add('delete from do_custo where id_num=:p0 ');
try
 if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
  DM.sql.Params[0].AsInteger:=N_Rec;
  DM.sql.ExecQuery;
  DM.sql.Transaction.Commit;
  Application.MessageBox('Данные успешно удалены','Подтверждение',mb_OK+mb_iconinformation);
  except
   Application.MessageBox('Ошибка удаления','Внимание!',mb_OK+mb_iconstop);
   DM.sql.Transaction.Rollback;
   Exit;
 end;
 FormeditDo.Refresh_DoOutCust.Execute;}
end;

procedure TEditDo_F.BitBtn19Click(Sender: TObject);
var
  N_Rec:Integer;
begin
{ if DbGridEh8.DataSource.DataSet.FieldByName('ID_NUM').IsNull then Exit;
 if Application.MessageBox('Данные будут безвовратно удалены. Удалить?','Подтверждение',mb_yesno+mb_iconquestion) = ID_NO then Exit;
 N_Rec:=DbGridEh8.DataSource.DataSet.FieldByName('ID_NUM').AsInteger;
 Dm.sql.Close;
 DM.sql.SQL.Clear;
 DM.sql.SQL.Add('delete from do_outtd where id_num=:p0 ');
try
 if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
  DM.sql.Params[0].AsInteger:=N_Rec;
  DM.sql.ExecQuery;
  DM.sql.Transaction.Commit;
  Application.MessageBox('Данные успешно удалены','Подтверждение',mb_OK+mb_iconinformation);
  except
   Application.MessageBox('Ошибка удаления','Внимание!',mb_OK+mb_iconstop);
   DM.sql.Transaction.Rollback;
   Exit;
 end;
 FormeditDo.Refresh_DoOutTd.Execute;}
end;

procedure TEditDo_F.BitBtn14Click(Sender: TObject);
var
 t:Integer;
begin
{ if DbGridEh5.DataSource.DataSet.FieldByName('ID_NUM').IsNull then
   begin
      Application.MessageBox('Невозможно добавить документ.'+#13#10+
            'ДО2 не сформировано.','Внимание',mb_iconstop+mb_ok);
      Exit;
   end;
 FormAdd_DoCusto.ShowModal;}
end;
procedure TEditDo_F.BitBtn17Click(Sender: TObject);
var
 t:Integer;
begin
{ if DbGridEh5.DataSource.DataSet.FieldByName('ID_NUM').IsNull then
   begin
      Application.MessageBox('Невозможно добавить документ.'+#13#10+
            'ДО2 не сформировано.','Внимание',mb_iconstop+mb_ok);
      Exit;
   end;
 FormAdd_DotrandOut.ShowModal;}
end;

procedure TEditDo_F.Refresh_DoGtdExecute(Sender: TObject);
var
 id_rec:Integer;
begin
 if not DM.Qry_Gtd.Active then Exit;
 id_rec:=DM.Qry_Gtd.FieldByName('ID').AsInteger;
 DM.Qry_Gtd.Close;
 DM.Qry_Gtd.Open;
 DM.Qry_Gtd.Locate('ID',id_rec,[]);
end;

end.



