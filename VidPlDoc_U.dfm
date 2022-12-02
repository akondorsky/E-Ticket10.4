object VidPlDoc_F: TVidPlDoc_F
  Left = 378
  Top = 225
  BorderIcons = [biSystemMenu]
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'. '#1042#1080#1076#1099' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074'.'
  ClientHeight = 220
  ClientWidth = 502
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
    Top = 0
    Width = 502
    Height = 220
    Align = alClient
    DataSource = DM.DS_VidPlDoc
    DynProps = <>
    Flat = True
    FooterParams.Color = clWindow
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        Width = 466
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
