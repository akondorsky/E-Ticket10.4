object DogovorsList_F: TDogovorsList_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1087#1080#1089#1086#1082' '#1076#1086#1075#1086#1074#1086#1088#1086#1074
  ClientHeight = 657
  ClientWidth = 606
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 606
    Height = 657
    Align = alClient
    DataSource = DM.DS_DogovorsList
    DynProps = <>
    TabOrder = 0
    TitleParams.RowLines = 2
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NUM_DOG'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1076#1086#1075#1086#1074#1086#1088#1072
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'START_DOG'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1044#1072#1090#1072' '#1076#1086#1075#1086#1074#1086#1088#1072
        Width = 91
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZAYV'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        Width = 389
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
