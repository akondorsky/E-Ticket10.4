object Prices_F: TPrices_F
  Left = 333
  Top = 224
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'.'#1058#1080#1087#1099' '#1087#1088#1072#1081#1089#1086#1074
  ClientHeight = 243
  ClientWidth = 566
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
  object SpeedButton1: TSpeedButton
    Left = 224
    Top = 217
    Width = 33
    Height = 26
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 566
    Height = 217
    Align = alTop
    DataSource = DM.DS_PriceType
    DynProps = <>
    Flat = True
    FooterParams.Color = clWindow
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    TabOrder = 0
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Title.Caption = #8470' '#1087'/'#1087
        Width = 37
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        Width = 297
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'START_DATE'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
        Width = 85
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 217
    Width = 224
    Height = 26
    DataSource = DM.DS_PriceType
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel]
    Align = alLeft
    Flat = True
    TabOrder = 1
  end
  object PopupMenu1: TPopupMenu
    Left = 56
    Top = 48
    object N1: TMenuItem
      Action = A_ShowPrice
    end
    object N2: TMenuItem
      Action = A_NewPrice
    end
    object N3: TMenuItem
      Action = A_EditPrice
    end
  end
  object ActionList1: TActionList
    Left = 56
    Top = 104
    object A_ShowPrice: TAction
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1087#1088#1072#1081#1089'-'#1083#1080#1089#1090
      OnExecute = A_ShowPriceExecute
    end
    object A_NewPrice: TAction
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1099#1081' '#1087#1088#1072#1081#1089'-'#1083#1080#1089#1090
      OnExecute = A_NewPriceExecute
      OnUpdate = A_NewPriceUpdate
    end
    object A_EditPrice: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1088#1072#1081#1089'-'#1083#1080#1089#1090
      OnExecute = A_EditPriceExecute
    end
  end
end
