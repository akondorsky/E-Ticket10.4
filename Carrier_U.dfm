object Carrier_F: TCarrier_F
  Left = 350
  Top = 142
  BorderIcons = [biSystemMenu]
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1087#1077#1088#1077#1074#1086#1079#1095#1080#1082#1086#1074'.'
  ClientHeight = 432
  ClientWidth = 1013
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
    Top = 73
    Width = 1013
    Height = 359
    Align = alClient
    DataSource = DM.DS_Carrier
    DynProps = <>
    Flat = True
    FooterParams.Color = clWindow
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleParams.RowLines = 2
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'OWNER'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1077#1088#1077#1074#1086#1079#1095#1080#1082#1072
        Width = 249
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1090#1088#1072#1085#1072
        Width = 130
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'COUNTRY_CODE'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1076' '#1089#1090#1088#1072#1085#1099
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ADDROWN'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1040#1076#1088#1077#1089
        Width = 393
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'PHONE'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'INN'
        Footers = <>
        Title.Caption = #1048#1053#1053
        Width = 104
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1013
    Height = 29
    Caption = 'ToolBar1'
    DrawingStyle = dsGradient
    Images = Main_F.ImL_16
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitWidth = 791
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Action = NewRec
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 0
      Action = Edit_Rec
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
      Action = Refresh_DS
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
      Action = All_Rec
      ParentShowHint = False
      ShowHint = True
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 29
    Width = 1013
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitWidth = 791
    object Label1: TLabel
      Left = 13
      Top = 15
      Width = 126
      Height = 13
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1102
    end
    object E_Find: TButtonedEdit
      Left = 144
      Top = 12
      Width = 177
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
    Images = Main_F.ImL_16
    Left = 680
    Top = 288
    object NewRec: TAction
      Caption = 'NewRec'
      ImageIndex = 2
      OnExecute = NewRecExecute
    end
    object Edit_Rec: TAction
      Caption = 'Edit_Rec'
      ImageIndex = 7
      OnExecute = Edit_RecExecute
    end
    object Refresh_DS: TAction
      Caption = 'Refresh_DS'
      ImageIndex = 12
      OnExecute = Refresh_DSExecute
    end
    object All_Rec: TAction
      Caption = 'All_Rec'
      ImageIndex = 19
      OnExecute = All_RecExecute
    end
  end
  object RegPropStorageManEh1: TRegPropStorageManEh
    Left = 672
    Top = 136
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
    Left = 672
    Top = 200
  end
end
