object RegTiAdd_F: TRegTiAdd_F
  Left = 368
  Top = 180
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
  ClientHeight = 548
  ClientWidth = 488
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
  object Label1: TLabel
    Left = 19
    Top = 13
    Width = 79
    Height = 26
    Alignment = taRightJustify
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#13#10#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
  end
  object Label14: TLabel
    Left = 54
    Top = 423
    Width = 48
    Height = 13
    Caption = #1057#1082#1080#1076#1082#1072' %'
  end
  object Label15: TLabel
    Left = 53
    Top = 45
    Width = 42
    Height = 13
    Caption = #1061#1086#1083#1076#1080#1085#1075
  end
  object Label11: TLabel
    Left = 43
    Top = 450
    Width = 58
    Height = 13
    Caption = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
  end
  object Label13: TLabel
    Left = 54
    Top = 475
    Width = 36
    Height = 13
    Caption = #1050#1088#1077#1076#1080#1090
  end
  object E_Zayv: TEdit
    Left = 108
    Top = 16
    Width = 365
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 100
    TabOrder = 0
    OnKeyPress = E_ZayvKeyPress
  end
  object GroupBox2: TGroupBox
    Left = 4
    Top = 72
    Width = 480
    Height = 191
    Caption = #1040#1076#1088#1077#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label5: TLabel
      Left = 7
      Top = 21
      Width = 89
      Height = 13
      Caption = #1055#1086#1095#1090#1086#1074#1099#1081' '#1080#1085#1076#1077#1082#1089
    end
    object Label6: TLabel
      Left = 64
      Top = 67
      Width = 30
      Height = 13
      Caption = #1043#1086#1088#1086#1076
    end
    object Label7: TLabel
      Left = 64
      Top = 89
      Width = 32
      Height = 13
      Caption = #1059#1083#1080#1094#1072
    end
    object Label8: TLabel
      Left = 71
      Top = 113
      Width = 23
      Height = 13
      Caption = #1044#1086#1084
    end
    object Label10: TLabel
      Left = 17
      Top = 45
      Width = 79
      Height = 13
      Caption = #1054#1073#1083#1072#1089#1090#1100'('#1088#1072#1081#1086#1085')'
    end
    object Label2: TLabel
      Left = 49
      Top = 135
      Width = 45
      Height = 13
      Caption = #1058#1077#1083#1077#1092#1086#1085
    end
    object Label12: TLabel
      Left = 65
      Top = 159
      Width = 29
      Height = 13
      Caption = 'E-Mail'
    end
    object E_Post: TEdit
      Left = 104
      Top = 18
      Width = 65
      Height = 21
      AutoSize = False
      MaxLength = 6
      NumbersOnly = True
      TabOrder = 0
      OnKeyPress = E_PostKeyPress
    end
    object E_City: TEdit
      Left = 104
      Top = 64
      Width = 369
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 2
      OnKeyPress = E_CityKeyPress
    end
    object E_Street: TEdit
      Left = 104
      Top = 86
      Width = 369
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 3
      OnKeyPress = E_StreetKeyPress
    end
    object E_House: TEdit
      Left = 104
      Top = 111
      Width = 177
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 25
      TabOrder = 4
      OnKeyPress = E_HouseKeyPress
    end
    object E_Address: TEdit
      Left = 104
      Top = 42
      Width = 369
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 150
      TabOrder = 1
      OnKeyPress = E_AddressKeyPress
    end
    object E_Mail: TEdit
      Left = 104
      Top = 156
      Width = 177
      Height = 21
      CharCase = ecLowerCase
      MaxLength = 50
      TabOrder = 5
      OnKeyPress = E_MailKeyPress
    end
  end
  object SaveBtn: TBitBtn
    Left = 140
    Top = 506
    Width = 96
    Height = 25
    Caption = #1047#1072#1087#1080#1089#1072#1090#1100
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
    TabOrder = 7
    OnClick = SaveBtnClick
  end
  object CancBtn: TBitBtn
    Left = 250
    Top = 506
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
    ModalResult = 2
    TabOrder = 8
  end
  object E_Discount: TEdit
    Left = 108
    Top = 420
    Width = 45
    Height = 21
    AutoSize = False
    Enabled = False
    MaxLength = 2
    NumbersOnly = True
    TabOrder = 4
    OnKeyPress = E_DiscountKeyPress
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 271
    Width = 480
    Height = 138
    Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099
    TabOrder = 3
    object Label9: TLabel
      Left = 66
      Top = 65
      Width = 29
      Height = 13
      Caption = #1054#1043#1056#1053
    end
    object Label3: TLabel
      Left = 72
      Top = 42
      Width = 23
      Height = 13
      Caption = #1050#1055#1055
    end
    object Label4: TLabel
      Left = 71
      Top = 20
      Width = 24
      Height = 13
      Caption = #1048#1053#1053
    end
    object Label16: TLabel
      Left = 48
      Top = 88
      Width = 50
      Height = 13
      Caption = #1060#1048#1054' '#1088#1091#1082'.'
    end
    object Label17: TLabel
      Left = 43
      Top = 107
      Width = 55
      Height = 13
      Caption = #1044#1086#1083#1078'. '#1088#1091#1082'.'
    end
    object E_INN: TEdit
      Left = 104
      Top = 17
      Width = 121
      Height = 21
      MaxLength = 12
      NumbersOnly = True
      TabOrder = 0
      OnExit = E_INNExit
      OnKeyPress = E_INNKeyPress
    end
    object E_Ogrn: TEdit
      Left = 104
      Top = 61
      Width = 121
      Height = 21
      AutoSize = False
      MaxLength = 15
      NumbersOnly = True
      TabOrder = 2
      OnKeyPress = E_OgrnKeyPress
    end
    object E_KPP: TEdit
      Left = 104
      Top = 39
      Width = 121
      Height = 21
      AutoSize = False
      MaxLength = 9
      NumbersOnly = True
      TabOrder = 1
      OnKeyPress = E_KPPKeyPress
    end
    object E_FIO: TEdit
      Left = 104
      Top = 83
      Width = 365
      Height = 21
      TabOrder = 3
      OnKeyPress = E_FIOKeyPress
    end
    object E_Dolj: TEdit
      Left = 104
      Top = 104
      Width = 365
      Height = 21
      TabOrder = 4
      OnKeyPress = E_DoljKeyPress
    end
  end
  object L_Hold: TButtonedEdit
    Left = 108
    Top = 42
    Width = 228
    Height = 21
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Images = Main_F.ImL_Buttons16
    ParentFont = False
    ReadOnly = True
    RightButton.ImageIndex = 1
    RightButton.Visible = True
    TabOrder = 1
    OnRightButtonClick = L_HoldRightButtonClick
  end
  object E_Price: TButtonedEdit
    Left = 108
    Top = 447
    Width = 177
    Height = 21
    Images = Main_F.ImL_Buttons16
    ReadOnly = True
    RightButton.ImageIndex = 1
    RightButton.Visible = True
    TabOrder = 5
    OnRightButtonClick = E_PriceRightButtonClick
  end
  object E_Credit: TEdit
    Left = 108
    Top = 472
    Width = 121
    Height = 21
    AutoSize = False
    MaxLength = 7
    NumbersOnly = True
    TabOrder = 6
    OnKeyPress = E_DiscountKeyPress
  end
end
