object Hold_F: THold_F
  Left = 334
  Top = 189
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'.'#1057#1087#1080#1089#1086#1082' '#1093#1086#1083#1076#1080#1085#1075#1086#1074
  ClientHeight = 415
  ClientWidth = 787
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 29
    Width = 787
    Height = 358
    Align = alClient
    DataSource = DM.DS_Hold
    DynProps = <>
    Flat = True
    FooterParams.Color = clWindow
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
    TitleParams.RowLines = 2
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        EditMask = '99'
        FieldName = 'ID'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1076
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAME_HUMAN'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 344
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DISCOUNT'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1082#1080#1076#1082#1072' '#1082' '#1087#1088#1072#1081#1089'-'#1083#1080#1089#1090#1091' %'
        Width = 89
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CREDIT'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1088#1077#1076#1080#1090
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SALDO'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1072#1083#1100#1076#1086
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 387
    Width = 787
    Height = 28
    Align = alBottom
    TabOrder = 1
    ExplicitWidth = 564
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 787
    Height = 29
    ButtonHeight = 27
    Caption = 'ToolBar1'
    TabOrder = 2
    ExplicitWidth = 564
    object SpeedButton1: TSpeedButton
      Left = 0
      Top = 0
      Width = 33
      Height = 7
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00406020004060
        2000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00A4A0A000A4A0A000A4A0A00080808000408040004060
        2000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A4A0
        A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A0004080600040A0600040A0
        60004080200040602000406020004060200000602000FF00FF00A4A0A000A4A0
        A000C0C0C000F0FBFF00F0FBFF00F0FBFF0040A0600080A0600080C0A00080C0
        A00080C0A00080C0800080C0800080A060004060200000602000A4A0A000C0DC
        C000F0FBFF00C0DCC000C0DCC000C0DCC000C0DCC00080A0600080A0600040A0
        6000408040004080400040A0600080C0800040A0600040602000A4A0A000F0FB
        FF00C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0C0C00040A0600040A0
        6000C0DCC000A4A0A00040804000408040004060200040602000A4A0A000F0FB
        FF00F0FBFF00C0DCC000C0DCC000C0DCC000C0DCC000C0C0C000C0C0C00080A0
        8000F0FBFF00A4A0A000FF00FF00FF00FF00FF00FF00FF00FF00C0C0C000F0FB
        FF00F0FBFF00C0DCC000C0DCC000F0FBFF00C0DCC000C0C0C000C0C0C000C0C0
        C000F0FBFF0040A0600040804000FF00FF00FF00FF00FF00FF00C0C0C000F0FB
        FF00F0FBFF00F0FBFF00C0DCC00080C0800040C0600040C0600080C08000C0C0
        C000F0FBFF0040A0600040A040004080400040804000FF00FF00C0C0C000F0FB
        FF00F0FBFF00F0FBFF00F0FBFF0080E0A00080C0A000C0DCC00080C0800040A0
        600040A0600080C0800080C0800040A04000FF00FF00FF00FF00C0C0C000F0FB
        FF00F0FBFF00C0C0C000C0C0C000C0C0C00080C0800080E0A000C0DCC000C0DC
        C000C0DCC000C0DCC00080E0A00080C0800040A04000FF00FF00C0C0C000F0FB
        FF00C0DCC000C0DCC000F0FBFF00FF00FF00C0DCC00080C0800080C0600080C0
        600040C0600080C0800080C0800040A06000FF00FF00FF00FF00C0C0C000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00F0FBFF0080C0800040C06000FF00FF00FF00FF00FF00FF00C0C0C000F0FB
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00C0C0C00080C0800040C06000FF00FF00FF00FF00FF00FF00C0C0C000C0C0
        C000C0DCC000F0FBFF00F0FBFF00FF00FF00FF00FF00F0FBFF00F0FBFF00C0C0
        C000A4A0A000A4A0A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000A4A0A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      OnClick = SpeedButton1Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 152
    Top = 104
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1093#1086#1083#1076#1080#1085#1075
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1093#1086#1083#1076#1080#1085#1075
      OnClick = N2Click
    end
  end
end
