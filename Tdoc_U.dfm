object TDoc_F: TTDoc_F
  Left = 401
  Top = 201
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1090#1072#1084#1086#1078#1077#1085#1085#1099#1093' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
  ClientHeight = 244
  ClientWidth = 591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 591
    Height = 244
    Align = alClient
    DataSource = DM.DS_TDOC
    DynProps = <>
    Flat = True
    FooterParams.Color = clWindow
    IndicatorOptions = [gioShowRowIndicatorEh]
    TabOrder = 0
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'KOD'
        Footers = <>
        Title.Caption = #1050#1086#1076
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'KRNAME'
        Footers = <>
        Title.Caption = #1050#1088'. '#1085#1072#1079#1074#1072#1085#1080#1077
        Width = 123
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 443
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
