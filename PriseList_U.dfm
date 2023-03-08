object PriseList_F: TPriseList_F
  Left = 225
  Top = 156
  BorderIcons = [biSystemMenu]
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'. '#1055#1088#1072#1081#1089'-'#1083#1080#1089#1090'.'
  ClientHeight = 522
  ClientWidth = 981
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
    Width = 981
    Height = 493
    Align = alClient
    DataGrouping.GroupLevels = <>
    DataSource = DM.DS_PriceList
    Flat = True
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    IndicatorOptions = [gioShowRowIndicatorEh]
    RowLines = 2
    TabOrder = 0
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
        FieldName = 'NAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
        Width = 713
      end
      item
        DisplayFormat = '###########0.00'
        EditButtons = <>
        FieldName = 'STOIM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1089' '#1053#1044#1057
        Width = 127
      end
      item
        DisplayFormat = '###########0.00'
        EditButtons = <>
        FieldName = 'VAT'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1044#1057
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 981
    Height = 29
    Caption = 'ToolBar1'
    Images = Main_F.ImL_16
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitWidth = 789
    object Bt_New_Price: TToolButton
      Left = 0
      Top = 0
      Hint = #1053#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
      Caption = 'Bt_New_Price'
      ImageIndex = 2
    end
    object Bt_Edit_Price: TToolButton
      Left = 23
      Top = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
      Action = Edit_Rec
      ImageIndex = 7
    end
    object ToolButton3: TToolButton
      Left = 46
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object Bt_Ref: TToolButton
      Left = 54
      Top = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102
      Action = Refresh_Price
      ImageIndex = 12
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton6: TToolButton
      Left = 77
      Top = 0
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 7
      Style = tbsSeparator
    end
  end
  object ActionList1: TActionList
    Left = 640
    Top = 16
    object NewRec: TAction
      Caption = 'NewRec'
    end
    object Edit_Rec: TAction
      Caption = 'Edit_Rec'
      OnExecute = Edit_RecExecute
    end
    object Refresh_Price: TAction
      Caption = 'Refresh_Price'
      OnExecute = Refresh_PriceExecute
    end
    object All_Rec: TAction
      Caption = 'All_Rec'
      OnExecute = All_RecExecute
    end
  end
  object PropStorageEh1: TPropStorageEh
    StorageManager = RegPropStorageManEh1
    StoredProps.Strings = (
      '<P>.Height'
      '<P>.Left'
      '<P>.PixelsPerInch'
      '<P>.Top'
      '<P>.Width'
      'DBGridEh1.<P>.Columns.ColumnsIndex'
      'DBGridEh1.<P>.Columns.<ForAllItems>.Width')
    Left = 688
    Top = 120
  end
  object RegPropStorageManEh1: TRegPropStorageManEh
    Left = 696
    Top = 168
  end
  object ImageList2: TImageList
    Left = 680
    Top = 248
    Bitmap = {
      494C010104000800080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000040404000404040004040
      4000404040004040400040404000404040004040400040404000404040004040
      4000404040004040400040404000000000000000000000000000000000000000
      0000000000004040400060606000808080008080800080808000606060004040
      4000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BF000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF007F7F7F00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000404040000000000000000000000000002020
      20002020600020209F000000BF000000BF000000BF0020209F00404080008080
      8000606060002020200000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BF000000BF000000BF000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F00C0C0C000C0C0C000C0C0
      C0009090900080808000B0B0B000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000404040000000000000000000000020002020
      9F000000FF000000FF000000FF000000FF000000FF000000FF000000FF002020
      9F00606080008080800020202000000000000000000000000000000000000000
      0000000000000000000000000000BF000000BF000000BF000000BF000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000007F7F7F00C0C0C000C0C0C0003090
      3000008000006080600080808000B0B0B000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C0004040400000000000000020000000DF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000DF006060800060606000000000000000000000000000000000000000
      00000000000000000000BF000000BF000000BF000000FFFFFF00BF000000BF00
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000007F7F7F00C0C0C00030CF30000080
      000000800000008000006080600080808000B0B0B000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000404040000000000000007F000000FF000000
      FF003F3FFF000000FF000000FF000000FF000000FF000000FF003F3FFF000000
      FF000000FF0020209F0080808000404040000000000000000000FFFFFF00FFFF
      FF00FFFFFF00BF000000BF000000BF000000FFFFFF000000000000000000BF00
      0000BF000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF0000000000000000007F7F7F00C0C0C00000BF00000080
      00000080000000800000008000006080600080808000B0B0B000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00040404000000040000000FF000000FF003F3F
      FF0000000000BFBFFF000000FF000000FF000000FF00BFBFFF00000000003F3F
      FF000000FF000000FF0040408000606060000000000000000000FFFFFF008080
      80008080800080808000BF000000FFFFFF00FFFFFF0000000000000000000000
      0000BF000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000FFFFFF000000000000000000000000007F7F7F00C0C0C00000BF00000080
      0000008000000080000000800000008000006080600090909000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C0004040400000007F000000FF000000FF000000
      FF00BFBFFF0000000000BFBFFF000000FF00BFBFFF0000000000BFBFFF000000
      FF000000FF000000FF0020209F00808080000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000BF000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000007F7F7F00C0C0C00000BF00000080
      00000080000020DF2000009F0000008000002080200080808000A0A0A000C0C0
      C000C0C0C000C0C0C000C0C0C000404040000000BF000000FF000000FF000000
      FF000000FF00BFBFFF00000000000000000000000000BFBFFF000000FF000000
      FF000000FF000000FF000000BF00808080000000000000000000FFFFFF008080
      800080808000808080008080800080808000FFFFFF0000000000000000000000
      00000000000000000000BF000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000007F7F7F00C0C0C00090CF900000BF
      0000008000008080800030EF3000009F0000008000002080200080808000B0B0
      B000C0C0C000C0C0C000C0C0C000404040000000BF000000FF000000FF000000
      FF000000FF000000FF000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000BF00808080000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000BF0000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000007F7F7F00C0C0C000C0C0C00090CF
      900000DF0000A0A0A000C0C0C00030EF3000009F000000800000608060008080
      8000B0B0B000C0C0C000C0C0C000404040000000BF000000FF000000FF000000
      FF000000FF00BFBFFF00000000000000000000000000BFBFFF000000FF000000
      FF000000FF000000FF000000BF00606060000000000000000000FFFFFF008080
      800080808000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF000000000000000000FFFF
      FF00000000000000000000000000000000007F7F7F00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C00030EF3000009F0000008000006080
      600090909000C0C0C000C0C0C0004040400000007F000000FF000000FF000000
      FF00BFBFFF0000000000BFBFFF000000FF00BFBFFF0000000000BFBFFF000000
      FF000000FF000000FF0020209F00404040000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF0000000000000000007F7F7F00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00030EF3000009F00002080
      200080808000A0A0A000C0C0C00040404000000040000000FF000000FF003F3F
      FF0000000000BFBFFF000000FF000000FF000000FF00BFBFFF00000000003F3F
      FF000000FF000000FF0020206000000000000000000000000000FFFFFF008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000007F7F7F00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00030EF3000009F
      00002080200080808000C0C0C000404040000000000000007F000000FF000000
      FF003F3FFF000000FF000000FF000000FF000000FF000000FF003F3FFF000000
      FF000000FF0020209F0020202000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF007F7F7F00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00030EF
      3000009F000060806000C0C0C0004040400000000000000020000000DF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000DF000000200000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00060DF600090B09000C0C0C000404040000000000000000000000020000000
      7F000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      7F00000020000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003F3F3F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00000000000000000000000000000000000000
      00000000400000007F000000BF000000BF000000BF0000007F00000040000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF8001F80FFF9FFFFC0000E003
      FF0FF3FF0000C001FE0FE1F9000080018007E1F3000080008023F0E300000820
      8033F847000004408039FC0F00000380803CFE1F00000380803EFC0F00000380
      873FF84F00000440803FE0E300000821857FC1F10000800180FFC7F800008003
      81FFFFFF0000C007FFFFFFFF0001F01F00000000000000000000000000000000
      000000000000}
  end
end