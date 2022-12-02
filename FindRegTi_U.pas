unit FindRegTi_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, IBX.IBCustomDataSet, IBX.IBQuery,
  ImgList, System.ImageList, EhLibVCL;

type
  TFindRegTi_F = class(TForm)
    Qry1: TIBQuery;
    Ds1: TDataSource;
    Label1: TLabel;
    E_Find: TButtonedEdit;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    qry2: TIBQuery;
    ds2: TDataSource;
    DBGridEh2: TDBGridEh;
    Iml_reg: TImageList;
    ImL_ZTK: TImageList;
    ImL_TP_Action: TImageList;
    procedure E_FindRightButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure E_FindKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure FindZayv(AName:String);
  public
    { Public declarations }
  end;

const
   sel_body:String =
        ' select a.zayv,d.num_tp, e.n_ts,e.n_trailer_human,f.id, f.dt_is,g.name, '+
        ' c.reg, c.tp_move_cbx_code,ztk_condition  from reg_ti a '+
        ' left join ticket_parts b on a.id = b.id_owner '+
        ' left join parties c on b.id = c.id_part '+
        ' left join v_num_docs d on c.id=d.id_tp '+
        ' left join first_ts e on b.id_ticket = e.id_ticket '+
        ' left join ticket f on b.id_ticket = f.id '+
        ' left join goods_cat g on c.goods_cat = g.id ';
   sel_trailer:String =
        'order by f.id desc, a.zayv   ';

var
  FindRegTi_F: TFindRegTi_F;

implementation

{$R *.dfm}
uses main, dm_u;


procedure TFindRegTi_F.E_FindKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then   FindZayv(Trim(E_Find.Text));

end;

procedure TFindRegTi_F.E_FindRightButtonClick(Sender: TObject);
begin
  FindZayv(Trim(E_Find.Text));
end;

procedure TFindRegTi_F.FindZayv(AName: String);
var
 sel_cond:String;
begin
  if Length(AName)=0 then Exit;
  if qry1.Active then qry1.Close;
  sel_cond:=format( ' where f.id is not null and a.zayv containing %s%s%s ',[#39,AName,#39]);
  qry1.SQL.Clear;
  qry1.SQL.Add(sel_body+sel_cond+sel_trailer);
  qry1.Open;
  if not qry2.Active  then qry2.Open;
  
end;

procedure TFindRegTi_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qry1.Close;
  qry2.Close;
end;

end.
