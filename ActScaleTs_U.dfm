object ActScaleTs_F1: TActScaleTs_F1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103' '#1058#1057
  ClientHeight = 199
  ClientWidth = 253
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
  object Label1: TLabel
    Left = 6
    Top = 8
    Width = 102
    Height = 13
    Caption = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1099#1081' '#1090#1072#1083#1086#1085
  end
  object Label2: TLabel
    Left = 79
    Top = 43
    Width = 29
    Height = 13
    Caption = #8470' '#1058#1057
  end
  object Label3: TLabel
    Left = 50
    Top = 75
    Width = 58
    Height = 13
    Caption = #8470' '#1087#1088#1080#1094#1077#1087#1072
  end
  object Label4: TLabel
    Left = 34
    Top = 112
    Width = 74
    Height = 13
    Caption = #1042#1077#1089' '#1073#1088#1091#1090#1090#1086', '#1082#1075
  end
  object E_Ticket: TEdit
    Left = 126
    Top = 8
    Width = 121
    Height = 21
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object E_NTs: TEdit
    Left = 126
    Top = 40
    Width = 121
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 1
  end
  object E_NTrailer: TEdit
    Left = 126
    Top = 72
    Width = 121
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 2
  end
  object Bt_Save: TBitBtn
    Left = 46
    Top = 159
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    DoubleBuffered = True
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
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = Bt_SaveClick
  end
  object Bt_Cancel: TBitBtn
    Left = 137
    Top = 159
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    DoubleBuffered = True
    Kind = bkCancel
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 5
  end
  object E_Weight: TDBNumberEditEh
    Left = 126
    Top = 109
    Width = 121
    Height = 21
    DecimalPlaces = 3
    DynProps = <>
    EditButton.Glyph.Data = {
      66010000424D6601000000000000760000002800000014000000140000000100
      040000000000F000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
      DDDDDDDD0000DDDD777777777777DDDD0000DDD00000000000007DDD0000DD0F
      EFEFEFEFEFEF07DD0000DD0E00000E00000E07DD0000DD0F88880F88880F07DD
      0000DD0EFEFEFEFEFEFE07DD0000DD0F00E00F00E00F07DD0000DD0E80F80E80
      F80E07DD0000DD0FEFEFEFEFEFEF07DD0000DD0E00F00E00F00E07DD0000DD0F
      80E80F80E80F07DD0000DD0EFEFEFEFEFEFE07DD0000DD0F00000000000F07DD
      0000DD0E08181881880E07DD0000DD0F08818818180F07DD0000DD0E00000000
      000E07DD0000DD0FEFEFEFEFEFEF0DDD0000DDD0000000000000DDDD0000DDDD
      DDDDDDDDDDDDDDDD0000}
    EditButton.ShortCut = 0
    EditButton.Style = ebsGlyphEh
    EditButton.Visible = True
    EditButtons = <>
    TabOrder = 3
    Visible = True
  end
end