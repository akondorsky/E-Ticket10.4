object SelGtd_F: TSelGtd_F
  Left = 450
  Top = 223
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1086#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072'.'
  ClientHeight = 237
  ClientWidth = 559
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 218
    Width = 559
    Height = 19
    Color = 10930928
    Panels = <
      item
        Alignment = taCenter
        Text = #1042#1099#1073#1077#1088#1080#1090#1077' '#1076#1086#1082#1091#1084#1077#1085#1090' '#1076#1074#1086#1081#1085#1099#1084' '#1082#1083#1080#1082#1086#1084' '#1084#1099#1096#1080
        Width = 500
      end>
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 559
    Height = 218
    Align = alClient
    DataGrouping.GroupLevels = <>
    DataSource = DM.DS_QryGtd
    Flat = True
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    IndicatorOptions = [gioShowRowIndicatorEh]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'NPP'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1087'/'#1087
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'TYPE_DOC'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1058#1080#1087' '#1076#1086#1082'.'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1086#1082'.'
        Width = 183
      end
      item
        EditButtons = <>
        FieldName = 'NDOC'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        Width = 156
      end
      item
        EditButtons = <>
        FieldName = 'DDOC'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        Width = 93
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
