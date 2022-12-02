object Goods_F: TGoods_F
  Left = 361
  Top = 140
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'.'#1050#1072#1090#1077#1075#1086#1088#1080#1080' '#1090#1086#1074#1072#1088#1086#1074'.'
  ClientHeight = 435
  ClientWidth = 693
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 693
    Height = 370
    Align = alClient
    DataSource = DM.DS_Goods
    DynProps = <>
    Flat = True
    FooterParams.Color = clWindow
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'KOD'
        Footers = <>
        Title.Caption = #1050#1086#1076
        Width = 47
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1082#1072#1090#1077#1075#1086#1088#1080#1080
        Width = 594
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 693
    Height = 29
    Caption = 'ToolBar1'
    Images = Main_F.ImL_Buttons16
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object ToolButton4: TToolButton
      Left = 0
      Top = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Action = RefreshGoods
      ImageIndex = 4
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton5: TToolButton
      Left = 23
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
    Width = 693
    Height = 36
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 14
      Top = 9
      Width = 118
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1089#1090#1088#1086#1082#1091' '#1087#1086#1080#1089#1082#1072
    end
    object E_Find: TButtonedEdit
      Left = 143
      Top = 6
      Width = 162
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
    Left = 504
    Top = 264
    object NewRec: TAction
      Caption = 'NewRec'
    end
    object Edit_Rec: TAction
      Caption = 'Edit_Rec'
    end
    object RefreshGoods: TAction
      Caption = 'RefreshGoods'
      OnExecute = RefreshGoodsExecute
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
    Left = 504
    Top = 200
  end
  object RegPropStorageManEh1: TRegPropStorageManEh
    Left = 504
    Top = 152
  end
end
