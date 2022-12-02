object Usl_F: TUsl_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1055#1077#1088#1077#1095#1077#1085#1100' '#1086#1082#1072#1079#1072#1085#1085#1099#1093' '#1091#1089#1083#1091#1075
  ClientHeight = 247
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 818
    Height = 247
    Align = alClient
    DataSource = DM.DS_usl
    DynProps = <>
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    FooterParams.Color = clWindow
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    RowHeight = 1
    RowLines = 2
    TabOrder = 0
    TitleParams.RowLines = 2
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'USLUGA'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
        Width = 563
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'COST'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
        Width = 74
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'KOL_USLUG'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1083'-'#1074#1086
        Width = 60
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'DAYS'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1091#1090#1086#1082' '#1093#1088#1072#1085#1077#1085#1080#1103
        Width = 68
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
