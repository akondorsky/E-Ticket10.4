object DogovorAdd_F: TDogovorAdd_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1075#1086#1074#1086#1088
  ClientHeight = 240
  ClientWidth = 258
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 243
    Height = 81
    Caption = #1044#1086#1075#1086#1074#1086#1088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label10: TLabel
      Left = 16
      Top = 16
      Width = 76
      Height = 13
      Caption = #1044#1072#1090#1072' '#1076#1086#1075#1086#1074#1086#1088#1072
    end
    object Label11: TLabel
      Left = 24
      Top = 40
      Width = 64
      Height = 13
      Caption = #8470' '#1044#1086#1075#1086#1074#1086#1088#1072
    end
    object E_Numdog: TEdit
      Left = 104
      Top = 40
      Width = 121
      Height = 21
      Hint = #1042#1074#1077#1076#1080#1090#1077' '#1085#1086#1084#1077#1088' '#1076#1086#1075#1086#1074#1086#1088#1072' '#1094#1080#1092#1088#1072#1084#1080' '#1085#1077' '#1073#1086#1083#1077#1077' 6 '#1079#1085#1072#1082#1086#1074'.'
      Enabled = False
      MaxLength = 7
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnExit = E_NumdogExit
      OnKeyPress = E_NumdogKeyPress
    end
    object E_Datedog: TDateTimePicker
      Left = 104
      Top = 16
      Width = 121
      Height = 21
      Date = 41292.000000000000000000
      Time = 0.462868252318003200
      TabOrder = 0
    end
  end
  object SaveBtn: TBitBtn
    Left = 24
    Top = 207
    Width = 96
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
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
    TabOrder = 2
    OnClick = SaveBtnClick
  end
  object CancBtn: TBitBtn
    Left = 145
    Top = 207
    Width = 88
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 3
  end
  object E_Note: TMemo
    Left = 8
    Top = 95
    Width = 242
    Height = 89
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Lines.Strings = (
      '')
    ParentFont = False
    TabOrder = 1
  end
end
