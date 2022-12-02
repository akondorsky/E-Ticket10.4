object DoTovarAdd_F: TDoTovarAdd_F
  Left = 372
  Top = 95
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
  ClientHeight = 517
  ClientWidth = 608
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 57
    Height = 13
    Caption = #1050#1086#1076' '#1090#1086#1074#1072#1088#1072
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 50
    Height = 13
    Caption = #1054#1087#1080#1089#1072#1085#1080#1077
  end
  object Label3: TLabel
    Left = 456
    Top = 8
    Width = 135
    Height = 13
    Caption = #1055#1086#1089#1090#1091#1087#1083#1077#1085#1080#1077' '#1085#1072' '#1089#1082#1083#1072#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 384
    Top = 32
    Width = 63
    Height = 13
    Caption = #1044#1072#1090#1072'/'#1074#1088#1077#1084#1103
  end
  object Label5: TLabel
    Left = 456
    Top = 64
    Width = 58
    Height = 13
    Caption = #1061#1088#1072#1085#1077#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 384
    Top = 80
    Width = 32
    Height = 13
    Caption = #1052#1077#1089#1090#1086
  end
  object Label7: TLabel
    Left = 384
    Top = 104
    Width = 34
    Height = 13
    Caption = #1053#1086#1084#1077#1088
  end
  object Label8: TLabel
    Left = 384
    Top = 128
    Width = 25
    Height = 13
    Caption = #1057#1088#1086#1082
  end
  object Label9: TLabel
    Left = 384
    Top = 152
    Width = 37
    Height = 13
    Caption = #1057#1087#1086#1089#1086#1073
  end
  object Label10: TLabel
    Left = 384
    Top = 176
    Width = 47
    Height = 13
    Caption = #1055#1083#1086#1097#1072#1076#1100
  end
  object Label12: TLabel
    Left = 8
    Top = 231
    Width = 97
    Height = 13
    Caption = #1055#1088#1080#1093#1086#1076'/'#1086#1089#1090#1072#1090#1086#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape1: TShape
    Left = 8
    Top = 303
    Width = 593
    Height = 2
    Pen.Color = clGray
  end
  object Shape2: TShape
    Left = 8
    Top = 339
    Width = 593
    Height = 2
    Pen.Color = clGray
  end
  object Label13: TLabel
    Left = 8
    Top = 313
    Width = 37
    Height = 13
    Caption = #1055#1088#1080#1093#1086#1076
  end
  object Shape3: TShape
    Left = 64
    Top = 247
    Width = 2
    Height = 137
    Pen.Color = clGray
  end
  object Shape4: TShape
    Left = 192
    Top = 247
    Width = 2
    Height = 137
    Pen.Color = clGray
  end
  object Label14: TLabel
    Left = 8
    Top = 353
    Width = 42
    Height = 13
    Caption = #1054#1089#1090#1072#1090#1086#1082
  end
  object Label15: TLabel
    Left = 104
    Top = 247
    Width = 55
    Height = 13
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
  end
  object Label16: TLabel
    Left = 72
    Top = 271
    Width = 38
    Height = 13
    Caption = #1042#1072#1083#1102#1090#1072
  end
  object Label17: TLabel
    Left = 208
    Top = 247
    Width = 87
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1084#1077#1089#1090
  end
  object Shape5: TShape
    Left = 312
    Top = 247
    Width = 2
    Height = 137
    Pen.Color = clGray
  end
  object Shape8: TShape
    Left = 440
    Top = 247
    Width = 2
    Height = 137
    Pen.Color = clGray
  end
  object Label18: TLabel
    Left = 344
    Top = 247
    Width = 62
    Height = 39
    Alignment = taCenter
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#13#10#1074' '#1086#1089#1085#1086#1074#1085#1099#1093#13#10#1077#1076'. '#1080#1079#1084'.'
  end
  object Label19: TLabel
    Left = 8
    Top = 387
    Width = 63
    Height = 13
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
  end
  object E_SVHDATE: TMaskEdit
    Left = 456
    Top = 32
    Width = 81
    Height = 21
    TabOrder = 2
    Text = ''
    OnKeyPress = E_SVHDATEKeyPress
  end
  object E_SVHTIME: TMaskEdit
    Left = 544
    Top = 32
    Width = 56
    Height = 21
    TabOrder = 3
    Text = ''
    OnKeyPress = E_SVHTIMEKeyPress
  end
  object E_Svhplace: TEdit
    Left = 455
    Top = 77
    Width = 145
    Height = 21
    TabOrder = 4
    OnKeyPress = E_SvhplaceKeyPress
  end
  object E_Vtrans: TEdit
    Left = 456
    Top = 152
    Width = 145
    Height = 21
    Enabled = False
    TabOrder = 7
    OnKeyPress = E_VtransKeyPress
  end
  object E_Sqv: TEdit
    Left = 455
    Top = 173
    Width = 145
    Height = 21
    Enabled = False
    TabOrder = 8
    OnKeyPress = E_SqvKeyPress
  end
  object E_Srok: TMaskEdit
    Left = 456
    Top = 128
    Width = 145
    Height = 21
    Enabled = False
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 6
    Text = '  .  .    '
    OnKeyPress = E_SrokKeyPress
  end
  object E_G31_2_P: TCheckBox
    Left = 200
    Top = 271
    Width = 97
    Height = 17
    Caption = #1063#1072#1089#1090#1100' '#1084#1077#1089#1090#1072
    TabOrder = 11
    OnClick = E_G31_2_PClick
  end
  object SaveBtn: TBitBtn
    Left = 400
    Top = 482
    Width = 96
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
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
    TabOrder = 19
    OnClick = SaveBtnClick
  end
  object CancBtn: TBitBtn
    Left = 512
    Top = 482
    Width = 88
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
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
    TabOrder = 20
    OnClick = CancBtnClick
  end
  object E_G31_1: TMemo
    Left = 8
    Top = 48
    Width = 361
    Height = 153
    MaxLength = 250
    TabOrder = 1
  end
  object E_Prim: TMemo
    Left = 8
    Top = 403
    Width = 593
    Height = 57
    Lines.Strings = (
      '')
    TabOrder = 18
  end
  object E_SvhNum: TMaskEdit
    Left = 456
    Top = 104
    Width = 121
    Height = 21
    Hint = #1042#1074#1077#1076#1080#1090#1077' '#1076#1074#1091#1093#1079#1085#1072#1095#1085#1099#1081' '#13#10#1089#1082#1083#1072#1076#1089#1082#1086#1081' '#1085#1086#1084#1077#1088' '#1090#1086#1074#1072#1088#1072
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    Text = ''
    OnKeyPress = E_SvhNumKeyPress
  end
  object E_Unshipped: TCheckBox
    Left = 456
    Top = 200
    Width = 145
    Height = 17
    Caption = #1082#1088#1099#1090#1099#1081' '#1057#1042#1061
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = E_UnshippedClick
  end
  object E_G31_2: TEdit
    Left = 200
    Top = 311
    Width = 106
    Height = 21
    NumbersOnly = True
    TabOrder = 14
    OnExit = E_G31_2Exit
    OnKeyPress = E_G31_2KeyPress
  end
  object E_G31_2_Ost: TEdit
    Left = 200
    Top = 350
    Width = 106
    Height = 21
    Enabled = False
    NumbersOnly = True
    TabOrder = 15
    OnKeyPress = E_G31_2_OstKeyPress
  end
  object E_G221: TButtonedEdit
    Left = 116
    Top = 269
    Width = 65
    Height = 21
    Images = Main_F.ImL_Buttons16
    RightButton.ImageIndex = 1
    RightButton.Visible = True
    TabOrder = 10
    OnChange = E_G221Change
    OnKeyPress = E_G221KeyPress
    OnRightButtonClick = E_G221RightButtonClick
  end
  object E_G33: TButtonedEdit
    Left = 71
    Top = 7
    Width = 123
    Height = 21
    Images = Main_F.ImL_Buttons16
    NumbersOnly = True
    RightButton.ImageIndex = 1
    RightButton.Visible = True
    TabOrder = 0
    OnKeyPress = E_G33KeyPress
    OnRightButtonClick = E_G33RightButtonClick
  end
  object E_G42: TDBNumberEditEh
    Left = 72
    Top = 312
    Width = 114
    Height = 21
    DynProps = <>
    EditButtons = <>
    TabOrder = 12
    Visible = True
    OnExit = E_G42Exit
    OnKeyPress = E_G42KeyPress
  end
  object E_G42_ost: TDBNumberEditEh
    Left = 72
    Top = 350
    Width = 114
    Height = 21
    DynProps = <>
    EditButtons = <>
    TabOrder = 13
    Visible = True
    OnKeyPress = E_G42_OstKeyPress
  end
  object E_g35: TDBNumberEditEh
    Left = 320
    Top = 311
    Width = 114
    Height = 21
    DecimalPlaces = 3
    DynProps = <>
    EditButtons = <>
    TabOrder = 16
    Visible = True
    OnChange = E_g35Change
    OnExit = E_G35Exit
    OnKeyPress = E_G35KeyPress
  end
  object E_G35_Ost: TDBNumberEditEh
    Left = 320
    Top = 350
    Width = 114
    Height = 21
    DecimalPlaces = 3
    DynProps = <>
    EditButtons = <>
    TabOrder = 17
    Visible = True
    OnKeyPress = E_G35_OstKeyPress
  end
end
