object Shipper_F: TShipper_F
  Left = 206
  Top = 165
  BorderIcons = [biSystemMenu]
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'. '#1060#1080#1088#1084#1099'-'#1086#1090#1087#1088#1072#1074#1080#1090#1077#1083#1080'.'
  ClientHeight = 442
  ClientWidth = 789
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnDblClick = FormDblClick
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 789
    Height = 353
    Align = alClient
    DataSource = DM.DS_Shipper
    DynProps = <>
    Flat = True
    FooterParams.Color = clWindow
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleParams.RowLines = 2
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'FIRM_NAME'
        Footers = <>
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1092#1080#1088#1084#1099
        Width = 146
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'INN'
        Footers = <>
        Title.Caption = #1048#1053#1053'(NIP)'
        Width = 93
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'COUNTRY'
        Footers = <>
        Title.Caption = #1057#1090#1088#1072#1085#1072' ('#1050#1086#1076')'
        Width = 78
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ADDRESS'
        Footers = <>
        Title.Caption = #1040#1076#1088#1077#1089
        Width = 142
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Caption = #1053#1072#1079#1074'. '#1089#1090#1088#1072#1085#1099
        Width = 156
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 789
    Height = 29
    Caption = 'ToolBar1'
    Images = Main_F.ImL_Buttons16
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Action = A_NewRec
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 0
      Action = A_EditRec
    end
    object ToolButton3: TToolButton
      Left = 46
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton4: TToolButton
      Left = 54
      Top = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#13#10#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102
      Action = A_RefreshShippers
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
    object ToolButton5: TToolButton
      Left = 85
      Top = 0
      Action = A_AllRec
      ParentShowHint = False
      ShowHint = True
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 29
    Width = 789
    Height = 60
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 12
      Top = 6
      Width = 118
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1089#1090#1088#1086#1082#1091' '#1087#1086#1080#1089#1082#1072
    end
    object E_Find: TButtonedEdit
      Left = 12
      Top = 25
      Width = 193
      Height = 21
      Hint = #1048#1089#1082#1072#1090#1100
      Images = Main_F.ImL_Buttons16
      LeftButton.ImageIndex = 2
      RightButton.ImageIndex = 2
      RightButton.Visible = True
      TabOrder = 0
      OnKeyPress = E_FindKeyPress
      OnRightButtonClick = E_FindRightButtonClick
    end
  end
  object ActionList1: TActionList
    Left = 640
    Top = 16
    object A_NewRec: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 4
      OnExecute = A_NewRecExecute
    end
    object A_EditRec: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 5
      OnExecute = A_EditRecExecute
    end
    object A_RefreshShippers: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      ImageIndex = 7
      OnExecute = A_RefreshShippersExecute
    end
    object A_AllRec: TAction
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077' '#1079#1072#1087#1080#1089#1080
      ImageIndex = 3
      OnExecute = A_AllRecExecute
    end
  end
  object RegPropStorageManEh1: TRegPropStorageManEh
    Left = 640
    Top = 104
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
    Left = 648
    Top = 168
  end
end
