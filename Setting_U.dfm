object FormSet: TFormSet
  Left = 483
  Top = 126
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 567
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SaveBtn: TBitBtn
    Left = 104
    Top = 528
    Width = 96
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Enabled = False
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000202020404040
      4040404040404040404040404040404040404040404040404040404040404040
      404040404040402020207F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04040407F7F7FC0C0C0
      C0C0C0C0C0C0909090808080B0B0B0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C04040407F7F7FC0C0C0C0C0C0309030008000608060808080B0
      B0B0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04040407F7F7FC0C0C0
      30CF30008000008000008000608060808080B0B0B0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C04040407F7F7FC0C0C000BF0000800000800000800000800060
      8060808080B0B0B0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04040407F7F7FC0C0C0
      00BF00008000008000008000008000008000608060909090C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C04040407F7F7FC0C0C000BF0000800000800020DF20009F0000
      8000208020808080A0A0A0C0C0C0C0C0C0C0C0C0C0C0C04040407F7F7FC0C0C0
      90CF9000BF0000800080808030EF30009F00008000208020808080B0B0B0C0C0
      C0C0C0C0C0C0C04040407F7F7FC0C0C0C0C0C090CF9000DF00A0A0A0C0C0C030
      EF30009F00008000608060808080B0B0B0C0C0C0C0C0C04040407F7F7FC0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C030EF30009F000080006080609090
      90C0C0C0C0C0C04040407F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C030EF30009F00208020808080A0A0A0C0C0C04040407F7F7FC0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C030EF30009F002080
      20808080C0C0C04040407F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C030EF30009F00608060C0C0C04040407F7F7FC0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C060DF
      6090B090C0C0C04040403F3F3F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F202020}
    TabOrder = 0
    OnClick = SaveBtnClick
  end
  object CancBtn: TBitBtn
    Left = 207
    Top = 528
    Width = 88
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF404040606060808080808080808080606060404040FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20202020206020209F0000BF00
      00BF0000BF20209F404080808080606060202020FFFFFFFFFFFFFFFFFFFFFFFF
      00002020209F0000FF0000FF0000FF0000FF0000FF0000FF0000FF20209F6060
      80808080202020FFFFFFFFFFFF0000200000DF0000FF0000FF0000FF0000FF00
      00FF0000FF0000FF0000FF0000FF0000DF606080606060FFFFFFFFFFFF00007F
      0000FF0000FF3F3FFF0000FF0000FF0000FF0000FF0000FF3F3FFF0000FF0000
      FF20209F8080804040400000400000FF0000FF3F3FFFFFFFFFBFBFFF0000FF00
      00FF0000FFBFBFFFFFFFFF3F3FFF0000FF0000FF40408060606000007F0000FF
      0000FF0000FFBFBFFFFFFFFFBFBFFF0000FFBFBFFFFFFFFFBFBFFF0000FF0000
      FF0000FF20209F8080800000BF0000FF0000FF0000FF0000FFBFBFFFFFFFFFFF
      FFFFFFFFFFBFBFFF0000FF0000FF0000FF0000FF0000BF8080800000BF0000FF
      0000FF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000
      FF0000FF0000BF8080800000BF0000FF0000FF0000FF0000FFBFBFFFFFFFFFFF
      FFFFFFFFFFBFBFFF0000FF0000FF0000FF0000FF0000BF60606000007F0000FF
      0000FF0000FFBFBFFFFFFFFFBFBFFF0000FFBFBFFFFFFFFFBFBFFF0000FF0000
      FF0000FF20209F4040400000400000FF0000FF3F3FFFFFFFFFBFBFFF0000FF00
      00FF0000FFBFBFFFFFFFFF3F3FFF0000FF0000FF202060FFFFFFFFFFFF00007F
      0000FF0000FF3F3FFF0000FF0000FF0000FF0000FF0000FF3F3FFF0000FF0000
      FF20209F202020FFFFFFFFFFFF0000200000DF0000FF0000FF0000FF0000FF00
      00FF0000FF0000FF0000FF0000FF0000DF000020FFFFFFFFFFFFFFFFFFFFFFFF
      00002000007F0000FF0000FF0000FF0000FF0000FF0000FF0000FF00007F0000
      20FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00004000007F0000BF00
      00BF0000BF00007F000040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    TabOrder = 1
    OnClick = CancBtnClick
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 401
    Height = 153
    Align = alTop
    Caption = #1053#1091#1084#1077#1088#1072#1094#1080#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
    Enabled = False
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 144
      Height = 13
      Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1085#1086#1084#1077#1088' '#1087#1088#1086#1087#1091#1089#1082#1072
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 141
      Height = 13
      Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1085#1086#1084#1077#1088' '#1092#1072#1082#1090#1091#1088#1099
    end
    object Label3: TLabel
      Left = 8
      Top = 72
      Width = 120
      Height = 13
      Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1085#1086#1084#1077#1088' '#1044#1054'1'
    end
    object Label4: TLabel
      Left = 8
      Top = 123
      Width = 141
      Height = 13
      Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1085#1086#1084#1077#1088' '#1072#1082#1090#1072' '#1074'.'#1088'.'
    end
    object Label5: TLabel
      Left = 8
      Top = 97
      Width = 120
      Height = 13
      Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1085#1086#1084#1077#1088' '#1044#1054'2'
    end
    object E_NextDo: TMaskEdit
      Left = 168
      Top = 72
      Width = 120
      Height = 21
      EditMask = '000000;1;_'
      MaxLength = 6
      TabOrder = 2
      Text = '      '
    end
    object E_NextNpp: TEdit
      Left = 168
      Top = 24
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 0
    end
    object E_NextFaktura: TEdit
      Left = 168
      Top = 48
      Width = 121
      Height = 21
      MaxLength = 7
      NumbersOnly = True
      TabOrder = 1
    end
    object E_NextActWorks: TEdit
      Left = 168
      Top = 120
      Width = 121
      Height = 21
      MaxLength = 8
      NumbersOnly = True
      TabOrder = 4
    end
    object E_NextDo2: TEdit
      Left = 168
      Top = 96
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 153
    Width = 401
    Height = 99
    Align = alTop
    Caption = #1044#1088#1091#1075#1080#1077' '#1085#1072#1089#1090#1088#1086#1081#1082#1080
    Enabled = False
    TabOrder = 3
    object Ch_do1_owerwrite: TCheckBox
      Left = 16
      Top = 16
      Width = 273
      Height = 17
      Caption = #1055#1088#1080#1085#1080#1084#1072#1090#1100' '#1044#1054'1 '#1089' '#1074#1086#1079#1084#1086#1078#1085#1086#1089#1090#1100#1102' '#1087#1077#1088#1077#1079#1072#1087#1080#1089#1080
      TabOrder = 0
    end
    object Ch_qry_rec: TCheckBox
      Left = 16
      Top = 35
      Width = 265
      Height = 17
      Caption = #1055#1077#1088#1077#1089#1087#1088#1072#1096#1080#1074#1072#1090#1100' '#1087#1088#1080' '#1087#1077#1088#1077#1079#1072#1087#1080#1089#1080' '#1044#1054
      TabOrder = 1
    end
    object Ch_rec_newdo: TCheckBox
      Left = 16
      Top = 55
      Width = 273
      Height = 17
      Caption = #1056#1072#1079#1088#1077#1096#1072#1090#1100' '#1087#1088#1080#1085#1080#1084#1072#1090#1100' "'#1086#1090#1089#1091#1090#1089#1090#1074#1091#1102#1097#1080#1077'" '#1044#1054
      TabOrder = 2
    end
    object Ch_Ord715: TCheckBox
      Left = 16
      Top = 76
      Width = 273
      Height = 17
      Caption = #1055#1077#1095#1072#1090#1072#1090#1100' '#1092#1086#1088#1084#1099' '#1044#1054' '#1087#1086' '#1087#1088#1080#1082#1072#1079#1091' '#1060#1058#1057' '#8470'715'
      TabOrder = 3
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 252
    Width = 401
    Height = 65
    Align = alTop
    Caption = #1054#1090#1095#1077#1090#1085#1086#1089#1090#1100' '#1044#1054'3-4'
    Enabled = False
    TabOrder = 4
    object Ch1_Do3: TCheckBox
      Left = 16
      Top = 16
      Width = 297
      Height = 17
      Caption = #1059#1095#1080#1090#1099#1074#1072#1090#1100' '#1085#1077#1079#1072#1082#1088#1099#1090#1099#1077' '#1044#1054' '#1079#1072' '#1087#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1087#1077#1088#1080#1086#1076
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object Ch2_Do3: TCheckBox
      Left = 16
      Top = 40
      Width = 361
      Height = 17
      Caption = #1059#1095#1080#1090#1099#1074#1072#1090#1100' '#1087#1088#1080#1093#1086#1076#1099' '#1087#1088#1077#1076#1099#1076#1091#1097#1077#1075#1086' '#1087#1077#1088#1080#1086#1076#1072', '#1079#1072#1082#1088#1099#1090#1099#1077' '#1074' '#1090#1077#1082#1091#1097#1077#1084' '
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
  end
  object RG_FmtInOut: TRadioGroup
    Left = 0
    Top = 317
    Width = 401
    Height = 65
    Align = alTop
    Caption = #1060#1086#1088#1084#1072#1090' '#1074#1099#1075#1088#1091#1078#1072#1077#1084#1099#1093'/'#1087#1088#1080#1085#1080#1084#1072#1077#1084#1099#1093' '#1092#1072#1081#1083#1086#1074
    Enabled = False
    ItemIndex = 1
    Items.Strings = (
      #1060#1086#1088#1084#1072#1090' '#1044#1054' '#1043#1053#1048#1042#1062
      #1060#1086#1088#1084#1072#1090' XML '#1060#1058#1057)
    TabOrder = 5
  end
  object Rg_BuhDoc: TRadioGroup
    Left = 0
    Top = 382
    Width = 401
    Height = 65
    Align = alTop
    Caption = #1042#1080#1076' '#1073#1091#1093#1075#1072#1083#1090#1077#1088#1089#1082#1086#1075#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
    Enabled = False
    ItemIndex = 0
    Items.Strings = (
      #1057#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1072' + '#1072#1082#1090' '#1088#1072#1073#1086#1090
      #1059#1085#1080#1074#1077#1088#1089#1072#1083#1100#1085#1099#1081' '#1087#1077#1088#1077#1076#1072#1090#1086#1095#1085#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090)
    TabOrder = 6
  end
  object Rg_ChequeType: TRadioGroup
    Left = 0
    Top = 447
    Width = 401
    Height = 65
    Align = alTop
    Caption = #1058#1080#1087' '#1095#1077#1082#1072
    Enabled = False
    ItemIndex = 0
    Items.Strings = (
      #1053#1072' '#1095#1072#1089#1090#1100' '#1050#1058
      #1053#1072' '#1082#1072#1078#1076#1091#1102' '#1058#1055)
    TabOrder = 7
  end
  object ActionList1: TActionList
    Left = 344
    Top = 24
    object Refresh_Settings: TAction
      Caption = 'Refresh_Settings'
      OnExecute = Refresh_SettingsExecute
    end
  end
end