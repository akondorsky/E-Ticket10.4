object WhClosedCondition_F: TWhClosedCondition_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1047#1072#1082#1088#1099#1090#1099#1081' '#1057#1042#1061'. '
  ClientHeight = 589
  ClientWidth = 638
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Grid_Place: TDBGridEh
    Left = 0
    Top = 40
    Width = 177
    Height = 530
    Align = alLeft
    DataSource = DM.DS_ClosedCBX
    DynProps = <>
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FooterParams.Color = clWindow
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleParams.RowLines = 2
    OnDrawColumnCell = Grid_PlaceDrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'NUM_PLACE'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1086#1084#1077#1088' '#1084#1077#1089#1090#1072
        Width = 134
      end>
    object RowDetailData: TRowDetailPanelControlEh
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 0
        Height = 40
        ButtonHeight = 38
        ButtonWidth = 39
        Caption = 'ToolBar1'
        DrawingStyle = dsGradient
        Images = Main_F.ImL_32
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object ToolButton1: TToolButton
          Left = 0
          Top = 0
          Hint = #1057#1086#1079#1076#1072#1090#1100' '#1089#1082#1083#1072#1076#1089#1082#1086#1077' '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086
          Caption = #1057#1086#1079#1076#1072#1090#1100' '#1089#1082#1083#1072#1076#1089#1082#1086#1077' '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086
          ImageIndex = 2
          Style = tbsDropDown
        end
        object ToolButton2: TToolButton
          Left = 54
          Top = 0
          Hint = #1059#1076#1072#1083#1080#1090#1100' '#1089#1082#1083#1072#1076#1089#1082#1086#1077' '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086
        end
        object ToolButton4: TToolButton
          Left = 93
          Top = 0
          Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1089#1082#1083#1072#1076#1089#1082#1086#1075#1086'  '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1072
          Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1089#1082#1083#1072#1076#1089#1082#1086#1075#1086'  '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1072
        end
        object ToolButton3: TToolButton
          Left = 132
          Top = 0
          Width = 8
          Caption = 'ToolButton3'
          ImageIndex = 9
          Style = tbsSeparator
        end
        object ToolButton5: TToolButton
          Left = 140
          Top = 0
          Hint = #1055#1088#1086#1089#1090#1072#1074#1080#1090#1100' '#1089#1083#1091#1078#1077#1073#1085#1099#1077' '#1086#1090#1084#1077#1090#1082#1080
          Caption = #1055#1088#1086#1089#1090#1072#1074#1080#1090#1100' '#1089#1083#1091#1078#1077#1073#1085#1099#1077' '#1086#1090#1084#1077#1090#1082#1080
          ImageIndex = 9
          Style = tbsDropDown
        end
        object ToolButton6: TToolButton
          Left = 194
          Top = 0
          Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
          Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
          ImageIndex = 12
        end
        object TlBtnAllTp: TToolButton
          Left = 233
          Top = 0
          ImageIndex = 19
        end
      end
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 177
    Top = 40
    Width = 461
    Height = 530
    Align = alClient
    DataSource = DM.Ds_WhClosedDetailed
    DynProps = <>
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    PopupMenu = PopupMenu2
    TabOrder = 1
    TitleParams.RowLines = 2
    Columns = <
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1048#1076'.'#8470' '#1089#1082#1083'.'#1089#1074#1080#1076'.'
        Width = 58
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'DT'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1044#1072#1090#1072', '#1074#1088#1077#1084#1103
        Width = 113
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'NOMER_TP'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1058#1055
        Width = 94
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'G073'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1044#1054'1'
        Width = 87
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ToolBar2: TToolBar
    Left = 0
    Top = 0
    Width = 638
    Height = 40
    ButtonHeight = 38
    ButtonWidth = 39
    Caption = 'ToolBar1'
    DrawingStyle = dsGradient
    Images = Main_F.ImL_32
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    ExplicitWidth = 592
    object ToolButton10: TToolButton
      Left = 0
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object Btn_Refresh: TToolButton
      Left = 8
      Top = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      ImageIndex = 12
      OnClick = Btn_RefreshClick
    end
    object ToolButton7: TToolButton
      Left = 47
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 13
      Style = tbsSeparator
    end
    object ToolButton8: TToolButton
      Left = 55
      Top = 0
      Hint = #1056#1072#1089#1087#1077#1095#1072#1090#1072#1090#1100
      Caption = 'ToolButton8'
      ImageIndex = 20
      OnClick = ToolButton8Click
    end
  end
  object Sb1: TStatusBar
    Left = 0
    Top = 570
    Width = 638
    Height = 19
    Panels = <
      item
        Width = 600
      end>
    ParentFont = True
    UseSystemFont = False
    ExplicitWidth = 592
  end
  object PropStorageEh1: TPropStorageEh
    StorageManager = RegPropStorageManEh1
    StoredProps.Strings = (
      '<P>.Height'
      '<P>.PixelsPerInch'
      '<P>.Width')
    Left = 296
    Top = 232
  end
  object RegPropStorageManEh1: TRegPropStorageManEh
    Left = 296
    Top = 296
  end
  object PopupMenu1: TPopupMenu
    Left = 280
    Top = 160
    object N1: TMenuItem
      Caption = #1054#1089#1074#1086#1073#1086#1076#1080#1090#1100' '#1084#1077#1089#1090#1086
      OnClick = N1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 472
    Top = 240
    object N2: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1058#1055
      OnClick = N2Click
    end
  end
end
