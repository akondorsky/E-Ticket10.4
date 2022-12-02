object Broker_F: TBroker_F
  Left = 445
  Top = 125
  BorderIcons = [biSystemMenu]
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'.'#1041#1088#1086#1082#1077#1088#1099
  ClientHeight = 429
  ClientWidth = 778
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
    Top = 56
    Width = 778
    Height = 373
    Align = alClient
    DataSource = DM.DS_Broker
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
        FieldName = 'NAME'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1073#1088#1086#1082#1077#1088#1072
        Width = 347
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'LIC_NUM'
        Footers = <>
        Title.Caption = #8470' '#1083#1080#1094#1077#1085#1079#1080#1080
        Width = 126
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'LIC_DATE'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072' '#1083#1080#1094#1077#1085#1079#1080#1080
        Width = 80
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 778
    Height = 29
    Caption = 'ToolBar1'
    Images = Main_F.ImL_Buttons16
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Hint = #1053#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
      Action = NewRec
      ImageIndex = 4
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      Caption = 'ToolButton2'
      ImageIndex = 5
      OnClick = ToolButton2Click
    end
    object ToolButton6: TToolButton
      Left = 46
      Top = 0
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 54
      Top = 0
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077' '#1079#1072#1087#1080#1089#1080
      Action = All_Rec
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 29
    Width = 778
    Height = 27
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 14
      Top = 3
      Width = 130
      Height = 13
      Caption = #1042#1074#1074#1077#1076#1080#1090#1077' '#1089#1090#1086#1088#1086#1082#1091' '#1087#1086#1080#1089#1082#1072
    end
    object E_Find: TButtonedEdit
      Left = 157
      Top = 2
      Width = 129
      Height = 21
      Hint = #1048#1089#1082#1072#1090#1100
      Images = Main_F.ImL_Buttons16
      LeftButton.ImageIndex = 2
      RightButton.ImageIndex = 2
      RightButton.Visible = True
      TabOrder = 0
      OnKeyPress = E_FindKeyPress
    end
  end
  object ActionList1: TActionList
    Left = 640
    Top = 16
    object NewRec: TAction
      Caption = 'NewRec'
      OnExecute = NewRecExecute
    end
    object Edit_Rec: TAction
      Caption = 'Edit_Rec'
    end
    object Refresh_DS: TAction
      Caption = 'Refresh_DS'
      OnExecute = Refresh_DSExecute
    end
    object All_Rec: TAction
      Caption = 'All_Rec'
      OnExecute = All_RecExecute
    end
    object FindRec: TAction
      Caption = 'FindRec'
      OnExecute = FindRecExecute
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
    Left = 616
    Top = 104
  end
  object RegPropStorageManEh1: TRegPropStorageManEh
    Left = 664
    Top = 104
  end
end
