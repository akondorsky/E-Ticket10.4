object Tnved4_F: TTnved4_F
  Left = 511
  Top = 114
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1058#1053#1042#1069#1044
  ClientHeight = 500
  ClientWidth = 479
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
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 479
    Height = 29
    Caption = 'ToolBar1'
    Images = ImageList1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object BtnRefresh: TToolButton
      Left = 0
      Top = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#13#10#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102
      ImageIndex = 7
      ParentShowHint = False
      ShowHint = True
      OnClick = Refresh
    end
    object ToolButton6: TToolButton
      Left = 23
      Top = 0
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object BtnAllRec: TToolButton
      Left = 31
      Top = 0
      Hint = #1042#1089#1077' '#1079#1072#1087#1080#1089#1080
      ImageIndex = 6
      ParentShowHint = False
      ShowHint = True
      OnClick = AllRec
    end
    object ToolButton1: TToolButton
      Left = 54
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      Left = 62
      Top = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1058#1053#1042#1069#1044
      Caption = 'ToolButton2'
      ImageIndex = 8
      OnClick = ToolButton2Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 29
    Width = 479
    Height = 28
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 13
      Top = 5
      Width = 111
      Height = 13
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1082#1086#1076#1091' '#1090#1086#1074#1072#1088#1072
    end
    object E_Find: TButtonedEdit
      Left = 161
      Top = 1
      Width = 129
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 161
    Height = 443
    Align = alLeft
    DataSource = DM.DS_Tnved4
    DynProps = <>
    Flat = True
    FooterParams.Color = clWindow
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'KOD'
        Footers = <>
        Title.Caption = #1050#1086#1076' '#1058#1053#1042#1069#1044
        Width = 84
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DBMemo1: TDBMemo
    Left = 161
    Top = 57
    Width = 318
    Height = 443
    Align = alClient
    DataField = 'NAME'
    DataSource = DM.DS_Tnved4
    TabOrder = 3
  end
  object ImageList1: TImageList
    Left = 704
    Top = 32
    Bitmap = {
      494C010109001000040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      00000000000000000000000000000000000000000000F0FBFF00F0FBFF00C0DC
      C000C0C0C000C0C0C000A4A0A000A4A0A000A4A0A00080C0800040A0200080C0
      600080A08000F0FBFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0FBFF00C0DCC000A4A0A0008080
      800080606000808080008080800080808000808080008080600040A0200040C0
      200040A0200040A04000C0DCC000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0FBFF008080800080808000C0C0
      C000F0FBFF0080A0600040A0400040A0400040A0400040A0400040A0400000E0
      000000E0000040C0200040804000C0DCC0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0DCC00080808000C0C0C000C0DC
      C000F0FBFF0040A0400000E0200000E0200000E0200000E0200000E0200000E0
      200000E0200000E0200000E0200040A040000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0FBFF0080808000C0C0C000C0C0
      C000A4A0A0004080400000E0800000E0800000E0800000E0800000E0800000E0
      800000E0800000E0800000E0800000E060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0FBFF0080606000808080008080
      80008080800040A0400040E0A00040E0A00040E0A00040E0A00000E0C00000E0
      C00000E0C00000E0C00040C0800040A060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0FBFF008080800080808000A4A0
      A000C0DCC00080C0800040A0400040A0400040A0400040A040004080200000E0
      A00000E0A00040A0600040A06000F0FBFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0FBFF0080808000A4A0A000C0C0
      C000C0DCC000F0FBFF00F0FBFF00F0FBFF00C0DCC000C0C0C00040A0200000E0
      800040A0400080A06000A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0FBFF0080808000C0C0C000C0C0
      C000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A00080A0800040A0200040A0
      4000A4A0A000C0C0C000A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0FBFF0080808000808080008080
      800080808000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000808080008080
      800080808000A4A0A000A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0FBFF0080808000A4A0A000C0C0
      C000C0DCC000F0FBFF00F0FBFF00F0FBFF00C0DCC000C0C0C000C0C0C000A4A0
      A000A4A0A00080808000A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0FBFF0080808000A4A0A000C0C0
      C000F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00C0DCC000C0C0C000C0C0
      C000C0C0C000A4A0A000A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0FBFF00A4A0A000C0C0C000C0DC
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0DCC000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0FBFF0080808000A4A0A000A4A0
      A000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000A4A0A000A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A4A0A000A4A0A000A4A0
      A000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000A4A0
      A000A4A0A000A4A0A000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0FBFF00C0C0
      C000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000C0C0C000F0FBFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004060200040602000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF007F7F7F00FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF007F7F7F00000000000000000000000000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000C0C0C000FFFF0000C0C0
      C000FFFF00000000000000000000000000000000000000000000000000000000
      0000A4A0A000A4A0A000A4A0A000808080004080400040602000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF00000000007F7F7F007F7F7F00FFFFFF007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F0000000000FFFFFF007F7F7F000000
      00007F7F7F007F7F7F00000000007F7F7F0000000000FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000C0C0C000FFFF
      000080808000FFFF0000808080000000000000000000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A0004080600040A0600040A06000408020004060
      200040602000406020000060200000000000FFFF0000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007F7F7F007F7F7F007F7F7F000000
      0000000000000000000000000000FFFFFF007F7F7F00FFFFFF00000000000000
      00000000000000000000FFFFFF007F7F7F0000000000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000C0C0C000FFFF0000C0C0
      C000FFFF000080808000FFFF000000000000A4A0A000A4A0A000C0C0C000F0FB
      FF00F0FBFF00F0FBFF0040A0600080A0600080C0A00080C0A00080C0A00080C0
      800080C0800080A060004060200000602000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000007F7F7F007F7F7F00FFFFFF000000
      000000000000000000007F7F7F007F7F7F007F7F7F0000000000FFFFFF000000
      0000FFFFFF007F7F7F00000000007F7F7F0000000000FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000C0C0C000FFFF
      000080808000FFFF00008080800000000000A4A0A000C0DCC000F0FBFF00C0DC
      C000C0DCC000C0DCC000C0DCC00080A0600080A0600040A06000408040004080
      400040A0600080C0800040A0600040602000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF00000000007F7F7F007F7F7F00FFFFFF000000
      0000000000000000000000000000FFFFFF00FFFFFF007F7F7F00FFFFFF007F7F
      7F007F7F7F00FFFFFF00000000007F7F7F0000000000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000C0C0C000FFFF0000C0C0
      C000FFFF000080808000FFFF000000000000A4A0A000F0FBFF00C0DCC000C0DC
      C000C0DCC000C0DCC000C0DCC000C0C0C00040A0600040A06000C0DCC000A4A0
      A00040804000408040004060200040602000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF00000000007F7F7F007F7F7F00FFFFFF000000
      000000000000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F000000
      00007F7F7F0000000000000000007F7F7F0000000000FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000C0C0C000FFFF
      000080808000FFFF00008080800000000000A4A0A000F0FBFF00F0FBFF00C0DC
      C000C0DCC000C0DCC000C0DCC000C0C0C000C0C0C00080A08000F0FBFF00A4A0
      A00000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000007F7F7F007F7F7F00FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007F7F
      7F000000000000000000000000007F7F7F0080808000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000C0C0C000FFFF0000C0C0
      C000FFFF000080808000FFFF000000000000C0C0C000F0FBFF00F0FBFF00C0DC
      C000C0DCC000F0FBFF00C0DCC000C0C0C000C0C0C000C0C0C000F0FBFF0040A0
      600040804000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007F7F7F007F7F7F00FFFFFF00FFFF
      FF007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F000000
      000000000000FFFFFF00FFFFFF007F7F7F0000FFFF00FFFF0000FFFFFF008080
      8000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFF00008080800000000000C0C0C000F0FBFF00F0FBFF00F0FB
      FF00C0DCC00080C0800040C0600040C0600080C08000C0C0C000F0FBFF0040A0
      600040A0400040804000408040000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00000000000000000000FFFF0000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF00000000007F7F7F007F7F7F007F7F7F000000
      0000FFFFFF00FFFFFF007F7F7F007F7F7F00000000007F7F7F00000000000000
      00007F7F7F007F7F7F00000000007F7F7F0080808000FFFFFF00000000008080
      800000FFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000C0C0C000F0FBFF00F0FBFF00F0FB
      FF00F0FBFF0080E0A00080C0A000C0DCC00080C0800040A0600040A0600080C0
      800080C0800040A0400000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F00000000007F7F7F0000000000000000000000
      000000000000FFFFFF00FFFFFF007F7F7F000000000000FFFF00FFFFFF008080
      8000FFFFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000C0C0C000F0FBFF00F0FBFF00C0C0
      C000C0C0C000C0C0C00080C0800080E0A000C0DCC000C0DCC000C0DCC000C0DC
      C00080E0A00080C0800040A04000000000000000000000000000000000000000
      0000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00000000007F7F7F000000000000000000FFFFFF00FFFF
      FF007F7F7F007F7F7F007F7F7F007F7F7F00808080008080800080808000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF00FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000C0C0C000F0FBFF00C0DCC000C0DC
      C000F0FBFF0000000000C0DCC00080C0800080C0600080C0600040C0600080C0
      800080C0800040A0600000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      00007F7F7F00000000007F7F7F00FFFFFF00000000007F7F7F007F7F7F000000
      00007F7F7F00FFFFFF00000000007F7F7F000000000000FFFF008080800000FF
      FF00FFFFFF000000000080808000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000F0FBFF0080C0
      800040C060000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000007F7F
      7F00FFFFFF007F7F7F007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF007F7F7F00000000000000000080808000FFFFFF008080
      800000FFFF000000000000000000808080000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000F0FBFF00000000000000
      0000000000000000000000000000000000000000000000000000C0C0C00080C0
      800040C060000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000007F7F7F007F7F
      7F007F7F7F00000000007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007F7F7F007F7F7F00000000000000000080808000FFFFFF00000000008080
      8000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0DCC000F0FB
      FF00F0FBFF000000000000000000F0FBFF00F0FBFF00C0C0C000A4A0A000A4A0
      A000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F0000000000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F0000000000000000000000000000FFFF0000000000000000008080
      800000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000A4A0A0000000
      0000000000000000000000000000000000000000000020202000606060006060
      6000606060006060600060606000606060006060600060606000606060006060
      6000303030003030300000000000000000000000000000000000202020006060
      6000606060006060600060606000606060006060600060606000606060006060
      6000303030000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F20DD0D0D02FC3C3C33CC3C3C33CC3C3C33CC3C3C33CC3C3C33CC3C3C33CC3C3
      C33CC3C3C33CC3C3C33CC3C3C33CD0D0D02F00000000BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFDFDF006060600000000000000000000000000000000000404040000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000606060000000000000000000000000000000000000000000000000007070
      7000707070007070700070707000707070007070700070707000707070007070
      700070707000707070000000000000000000000000000000000000000000CC66
      00FFCC6600FFCC6600FFCC6600FFCC6600FFCC6600FFCC6600FFCC6600FFCC66
      00FFCC6600FFCC6600FFCC6600FFC3C3C33C00000000BFBFBF00BFBFBF007F7F
      7F007F7F7F00BFBFBF0000000000000000000000000000000000000000000000
      0000DFDFDF006060600000000000000000000000000000000000404040000000
      0000FF7F7F00FF7F7F00FF7F7F00FF7F7F00BFBFBF0000000000000000000000
      0000606060000000000000000000000000000000000000000000BC897700BE8B
      7900BE8B7900BA877600B7847500B17E7200AE7B7100AB786F00AB786F00A16E
      6B009E6B680070707000000000000000000000000000FBFBFB04F2F2F20DCC66
      00FFFFFFFFFFFFF8F0FFFFF1E3FFFFECD9FFFFE5CAFFFFE2C5FFFFDDBBFFFFD5
      ABFFFFD5ABFFFFD3A7FFCC6600FFC3C3C33C00000000BFBFBF00BFBFBF007F7F
      7F007F7F7F00BFBFBF0000000000000000000000000000000000000000000000
      0000DFDFDF006060600000000000000000000000000000000000404040000000
      0000FF7F7F00FF7F7F00FF7F7F00BF7F7F003F3F3F00FF7F7F00FF7F7F000000
      00006060600000000000000000000000000000000000857DA400C18E7A00DCBB
      A600E6C6B400E6C6B400E6C6B400E6C6B400E6C6B400DCBBA600DCBBA600DCBB
      A600A16E6B00707070000000000000000000FBFBFB04E9E9E916CCCCCC33CC66
      00FFFFFFFFFF4B79FFFF4B79FFFFFFF8F0FF993300FF993300FFFFE5CAFF0099
      CCFF0099CCFFFFDAB3FFCC6600FFC3C3C33C00000000BFBFBF00BFBFBF007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00BFBF
      BF00DFDFDF006060600000000000000000000000000000000000404040000000
      0000FF7F7F00FF7F7F00FF7F7F00BFBFBF00C0C0C0007F3F3F00FF7F7F000000
      000060606000000000000000000000000000000000005693DC00857DA400D2AD
      AC00FDE6D500FFE5CC00FFE3C700FFDFBF00FFDBB800FFD8B200FFD3A800FFD2
      A500A3706B00707070000000000000000000F2F2F20D1D82B5FF1B81B3FFCC66
      00FFFFFFFFFF4B79FFFF4B79FFFFFFF8F0FF993300FF993300FFFFE5CAFF0099
      CCFF0099CCFFFFDAB3FFCC6600FFC3C3C33C00000000BFBFBF00BFBFBF007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00BFBF
      BF00DFDFDF006060600000000000000000000000000000000000404040000000
      0000FF7F7F00FF7F7F007F7F7F006FEFEF0060BFBF0000404000FF7F7F000000
      000060606000000000000000000000000000000000003B87E3005693DC00857D
      A400DCC1B000FFE9D400FFE5CC00FFE1C400FFDFBF00FFDBB800FFD8B200FFD3
      A800A5726C007070700000000000000000002287BAFF67CCFFFF67CCFFFFCC66
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF6FFFFF0E2FFFFF0E2FFFFECD9FFFFE2
      C5FFFFE2C5FFFFE1C2FFCC6600FFC3C3C33C00000000BFBFBF00BFBFBF007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00BFBF
      BF00DFDFDF006060600000000000000000000000000000000000404040000000
      0000FF7F7F00FF7F7F007F7F7F007FFFFF0060DFDF0000404000FF7F7F000000
      0000606060000000000000000000000000000000000000000000EEC294003B87
      E300857DA400E6C6B400D0B0A200D5AC9800DCBBA600EED7AD00FFD6BA00FFD8
      B200AB786F00707070000000000000000000258ABDFF67CCFFFF67CCFFFFCC66
      00FFFFFFFFFFCC9999FFCC9999FFFFFFFFFFE27E0AFFE27E0AFFFFF8F0FF0099
      00FF009900FFFFEAD6FFCC6600FFC3C3C33C00000000BFBFBF00BFBFBF007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00BFBF
      BF00DFDFDF006060600000000000000000000000000000000000404040000000
      0000FF7F7F00FF7F7F007F7F7F007FFFFF0060DFDF0000404000FF7F7F000000
      0000606060000000000000000000000000000000000000000000EEC29400B9BE
      C400B9BEC400C6A09200F1E4BE00FFFFD900F0DDD200DCBBA600EED7AD00FFD9
      B400AE7B7100707070000000000000000000288DC0FF67CCFFFF67CCFFFFCC66
      00FFFFFFFFFFCC9999FFCC9999FFFFFFFFFFE27E0AFFE27E0AFFFFF8F0FF0099
      00FF009900FFFFEAD6FFCC6600FFC3C3C33C00000000BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFDFDF006060600000000000000000000000000000000000404040000000
      0000FF7F7F00FF7F7F007F7F7F007FFFFF0060DFDF0000404000FF7F7F000000
      0000606060000000000000000000000000000000000000000000EEC29400EFD9
      CD00DCBBA600F4E2B600FFFAC900FFFFEB00FFFFFA00EFD9CD00DCBBA600FFDF
      BF00B17E72007070700000000000000000002A8FC2FF67CCFFFF67CCFFFFCC66
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFF8
      EFFFFFF8EFFFFFF2E5FFCC6600FFC3C3C33C00000000BFBFBF00BFBFBF007F7F
      7F007F7F7F00BFBFBF0000000000000000000000000000000000000000000000
      0000DFDFDF006060600000000000000000000000000000000000404040000000
      0000FF7F7F00FF7F7F007F7F7F007FFFFF0060DFDF0000404000FF7F7F000000
      0000606060000000000000000000000000000000000000000000EEC29400F0DD
      D200DCBBA600FFE5B300FFF5C400FFFFE700FFFFEB00FFFCCF00CDA69300FFE1
      C400B78475007070700000000000000000002D92C5FF6FD4FFFF6FD4FFFFCC66
      00FFDF7A00FFDF7A00FFDF7A00FFDF7A00FFDF7A00FFDF7A00FFDF7A00FFDF7A
      00FFDF7A00FFDF7A00FFCC6600FFCACACA3500000000BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFDFDF006060600000000000000000000000000000000000404040000000
      000000000000000000007FBFBF007FFFFF0060DFDF0000404000000000000000
      0000606060000000000000000000000000000000000000000000EEC29400F0DD
      D200DCC1B000F1E4BE00FFF1BE00FFFAC900FFFED100F4E2B600D0B0A200FFE5
      CC00BA8776007070700000000000000000002F94C7FF7BE0FFFF7BE0FFFFCE68
      00FFCF6900FFCF6900FFCF6900FFCF6900FFCF6900FFCF6900FFCF6900FFCF69
      00FFCF6900FFCF6900FFC2690AFFE2E2E21D00000000BFBFBF00BFBFBF007F7F
      7F007F7F7F00BFBFBF0000000000000000000000000000000000000000000000
      0000DFDFDF006060600000000000000000000000000000000000404040000000
      000000000000000000007FBFBF007FFFFF0060DFDF0000404000000000000000
      0000606060000000000000000000000000000000000000000000EEC29400F2E1
      DD00E2C9C300EFD9CD00F0DDD200FFE9B600F4E2B600D5AC9800F7D8C000FADC
      C200BC8977007070700000000000000000003196C9FF85EBFFFF81E6FFFF8FCE
      CFFFD27313FFD27313FFD27313FFD27313FFD27313FFD27313FFD27313FFD273
      13FFD27313FFD27313FFDEC5AB54F9F9F90600000000BFBFBF00BFBFBF007F7F
      7F007F7F7F00BFBFBF00000000000000000000000000BFBFBF007F7F7F00BFBF
      BF00DFDFDF006060600000000000000000000000000000000000202020004040
      40004040400040404000406060009FDFDF0080BFBF0020404000404040004040
      4000404040000000000000000000000000000000000000000000EEC29400FCE8
      D800FCFCFC00E2C9C300DCBBA600DCB29800DCB29800E2C9C300F7D8C000FF9E
      9E00BE8B79007070700000000000000000003398CBFF91F7FFFF8EF4FFFF8EF4
      FFFF8EF4FFFF8EF4FFFF8EF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF167CAEFFD0D0D02FF2F2F20D0000000000000000BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFDFDF006060600000000000000000000000000000000000000000000000
      0000000000000000000040404000CFCFCF00A0A0A00040404000000000000000
      0000000000000000000000000000000000000000000000000000EEC29400FBEF
      E700FFFFFF00FFFFFF00FFFFFF00FFFEFD00FFFAF300FFF6ED009B6A69009B6A
      69009B6A69007070700000000000000000003499CCFFFFFFFFFF99FFFFFF99FF
      FFFF99FFFFFF99FFFFFFFFFFFFFF258ABDFF2287BAFF1F84B7FF1D82B5FF1B81
      B3FF187EB0FFF2F2F20DFBFBFB040000000000000000BFBFBF007F7F7F007F7F
      7F00000000007F7F7F007F7F7F00000000007F7F7F007F7F7F00000000007F7F
      7F00BFBFBF006060600000000000000000000000000000000000000000000000
      00000000000000000000000040007F00DF0000009F0000004000000000000000
      0000000000000000000000000000000000000000000000000000EEC29400FFF2
      E500FFFFFE00FFFFFE00FFFEFD00FFFEFD00FFFCF900FFF8F2009B6A6900DAA7
      8600C6A09200000000000000000000000000000000003499CCFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF2A8FC2FFE9E9E916FBFBFB0400000000000000000000
      00000000000000000000000000000000000000000000202020005F5F5F005F5F
      5F00404040005F5F5F005F5F5F00404040005F5F5F005F5F5F00404040005F5F
      5F005F5F5F002020200000000000000000000000000000000000000000000000
      00000000000000000000000020003F00BF0000009F0000002000000000000000
      0000000000000000000000000000000000000000000000000000EEC29400F0BD
      9200E4BA9800DCB29800DCB29800D5AC9800CDA69300CDA693009B6A6900C79E
      9E000000000000000000000000000000000000000000000000003499CCFF3398
      CBFF3196C9FF2F94C7FFF2F2F20DFBFBFB040000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0080030000000000000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000100000000000000010000000000000001000000000000
      0001000000000000000100000000000000010000000000000001000000000000
      8001000000000000C003000000000000FC00FC00E007FF3FFC0090688001F03F
      200000920000800100001E3C0000000000001C520000000000001E0200000000
      00001C160000000F0000180E000000070000001800000001000010B200000003
      E000E17800000001F800FAC000010403F000F49280077FC7E001E0F186FF3FC7
      C403C40327FF060FEC07EC0767FF801F8003C007FFFFE000BFF1DFF7E003E000
      83F1D077C003800083F1D017800300008001D017800300008001D01780030000
      8001D017C00300008001D017C0030000BFF1D017C003000083F1D017C0030000
      BFF1DC37C003000083F1DC37C00300008381C007C0030001BFF1FC3FC0030001
      8921FC3FC007807F8003FC3FC00FC0FF00000000000000000000000000000000
      000000000000}
  end
end
