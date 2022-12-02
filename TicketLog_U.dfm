object TicketLog_F: TTicketLog_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'TicketLog_F'
  ClientHeight = 418
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 622
    Height = 418
    Align = alClient
    DataSource = DM.Ds_TicketLog
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    TabOrder = 0
    TitleParams.RowLines = 2
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'DT_ACTION'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1044#1072#1090#1072', '#1074#1088#1077#1084#1103
        Width = 114
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERNAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1048#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
        Width = 149
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ACTION_NAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1044#1077#1081#1089#1090#1074#1080#1077
        Width = 231
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'NPP_TP'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1058#1055
        Width = 96
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
