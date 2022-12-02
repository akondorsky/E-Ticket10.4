object Docg44_F: TDocg44_F
  Left = 366
  Top = 108
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1085#1099#1093' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
  ClientHeight = 192
  ClientWidth = 516
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 516
    Height = 192
    Align = alClient
    DataGrouping.GroupLevels = <>
    DataSource = DM.DS_Docg44
    Flat = True
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    IndicatorOptions = [gioShowRowIndicatorEh]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'KOD'
        Footers = <>
        Title.Caption = #1050#1086#1076
      end
      item
        EditButtons = <>
        FieldName = 'KRNAME'
        Footers = <>
        Title.Caption = #1050#1088'. '#1085#1072#1080#1084#1077#1085'.'
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 362
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
