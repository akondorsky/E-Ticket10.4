object FormSelDate: TFormSelDate
  Left = 552
  Top = 182
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1086#1088' '#1087#1077#1088#1080#1086#1076#1072
  ClientHeight = 147
  ClientWidth = 282
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 265
    Height = 89
    Caption = #1059#1082#1072#1078#1080#1090#1077' '#1076#1072#1090#1091
    TabOrder = 0
    object RxLabel1: TLabel
      Left = 16
      Top = 24
      Width = 81
      Height = 13
      Caption = #1053#1072#1095#1072#1083#1100#1085#1072#1103' '#1076#1072#1090#1072
    end
    object RxLabel2: TLabel
      Left = 16
      Top = 48
      Width = 74
      Height = 13
      Caption = #1050#1086#1085#1077#1095#1085#1072#1103' '#1076#1072#1090#1072
    end
    object D1: TDateTimePicker
      Left = 112
      Top = 24
      Width = 121
      Height = 21
      Date = 41596.560627372690000000
      Time = 41596.560627372690000000
      TabOrder = 0
    end
    object D2: TDateTimePicker
      Left = 112
      Top = 48
      Width = 121
      Height = 21
      Date = 41596.560627430550000000
      Time = 41596.560627430550000000
      TabOrder = 1
    end
  end
  object SaveBtn: TBitBtn
    Left = 32
    Top = 112
    Width = 104
    Height = 25
    Caption = #1042#1099#1073#1088#1072#1090#1100
    DoubleBuffered = True
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
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = SaveBtnClick
  end
  object CancBtn: TBitBtn
    Left = 144
    Top = 112
    Width = 104
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    DoubleBuffered = True
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
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = CancBtnClick
  end
end
