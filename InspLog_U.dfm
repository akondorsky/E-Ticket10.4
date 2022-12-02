object InspLog_F: TInspLog_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1046#1091#1088#1085#1072#1083' '#1076#1086#1089#1084#1086#1090#1088#1086#1074
  ClientHeight = 353
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Grid1: TDBGridEh
    Left = 0
    Top = 0
    Width = 592
    Height = 353
    Align = alClient
    DataSource = DM.DS_InspLog
    DynProps = <>
    Flat = True
    TabOrder = 0
    TitleParams.RowLines = 2
    Columns = <
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DT'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1044#1072#1090#1072' '#1074#1088#1077#1084#1103
        Width = 118
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NOMER_TP'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1058#1055
        Width = 80
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1089#1074#1080#1076'-'#1074#1072
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERNAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
        Width = 133
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'HUMAN_ACTION'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1044#1077#1081#1089#1090#1074#1080#1077
        Width = 147
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
