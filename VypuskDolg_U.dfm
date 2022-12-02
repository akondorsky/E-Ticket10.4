object VypuskDolg_F: TVypuskDolg_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1042#1099#1087#1091#1089#1082' '#1074' '#1076#1086#1083#1075
  ClientHeight = 250
  ClientWidth = 508
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 214
    Height = 13
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1086#1089#1085#1086#1074#1072#1085#1080#1077' '#1076#1083#1103' '#1074#1099#1087#1091#1089#1082#1072' '#1074' '#1076#1086#1083#1075':'
  end
  object Label2: TLabel
    Left = 192
    Top = 163
    Width = 165
    Height = 13
    Caption = #1057#1088#1086#1082' '#1087#1086#1075#1072#1096#1077#1085#1080#1103' '#1079#1072#1076#1086#1083#1078#1077#1085#1085#1086#1089#1090#1080
  end
  object RadioGroup1: TRadioGroup
    Left = 24
    Top = 35
    Width = 457
    Height = 105
    ItemIndex = 0
    Items.Strings = (
      #1042#1099#1087#1091#1089#1082' '#1074' '#1082#1088#1077#1076#1080#1090
      #1042#1099#1087#1091#1089#1082' '#1087#1086' '#1088#1072#1089#1087#1086#1088#1103#1078#1077#1085#1080#1102' '#1088#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1103)
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
  object Bt_Cancel: TBitBtn
    Left = 262
    Top = 207
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    DoubleBuffered = True
    Kind = bkCancel
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 1
  end
  object Bt_Save: TBitBtn
    Left = 163
    Top = 207
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkOK
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = Bt_SaveClick
  end
  object ComboBox1: TComboBox
    Left = 24
    Top = 160
    Width = 153
    Height = 21
    Enabled = False
    ItemIndex = 0
    TabOrder = 3
    Text = #1054#1085#1080#1097#1077#1085#1082#1086' '#1054'.'#1040'.'
    Items.Strings = (
      #1054#1085#1080#1097#1077#1085#1082#1086' '#1054'.'#1040'.'
      #1055#1072#1085#1072#1089#1077#1085#1082#1086' '#1040'.'#1054'.')
  end
  object D1: TDateTimePicker
    Left = 363
    Top = 160
    Width = 121
    Height = 21
    Date = 41596.560627372690000000
    Time = 41596.560627372690000000
    TabOrder = 4
  end
end
