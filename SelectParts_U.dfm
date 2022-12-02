object SelectParts_F: TSelectParts_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1086#1088' '#1087#1086#1083#1091#1095#1072#1090#1077#1083#1077#1081' '#1075#1088#1091#1079#1072
  ClientHeight = 252
  ClientWidth = 895
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Grid_TicketParts: TDBGridEh
    Left = 0
    Top = 0
    Width = 895
    Height = 193
    Align = alTop
    DataSource = DM.DS_SelectParts
    DrawGraphicData = True
    DrawMemoText = True
    DynProps = <>
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    FooterParams.Color = clWindow
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
    ParentFont = False
    RowHeight = 1
    RowLines = 1
    TabOrder = 0
    TitleParams.MultiTitle = True
    TitleParams.RowLines = 1
    VertScrollBar.VisibleMode = sbAlwaysShowEh
    OnDrawColumnCell = Grid_TicketPartsDrawColumnCell
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PAY_CONTROL'
        Footers = <>
        ImageList = Main_F.Iml_Parts_PayControl
        KeyList.Strings = (
          '1'
          '2')
        Title.Caption = #1050#1086#1085#1090#1088#1086#1083#1100' '#1086#1087#1083#1072#1090#1099
        Width = 59
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PART_NOMER'
        Footers = <>
        Title.Caption = #1053#1086#1084#1077#1088' '#1095#1072#1089#1090#1080' '#1050#1058
        Width = 112
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZAYV'
        Footers = <>
        Title.Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100' '#1075#1088#1091#1079#1072
        Width = 529
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'INN'
        Footers = <>
        Title.Caption = #1048#1053#1053
        Width = 152
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Bt_Save: TBitBtn
    Left = 374
    Top = 212
    Width = 142
    Height = 25
    Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100' '#1074#1099#1073#1086#1088
    Default = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    TabOrder = 1
    OnClick = Bt_SaveClick
  end
end
