object BillItemEdit_F: TBillItemEdit_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1095#1077#1082#1072'.'
  ClientHeight = 190
  ClientWidth = 611
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label8: TLabel
    Left = 77
    Top = 73
    Width = 66
    Height = 16
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '
  end
  object Label14: TLabel
    Left = 16
    Top = 23
    Width = 127
    Height = 16
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
  end
  object Label2: TLabel
    Left = 102
    Top = 98
    Width = 41
    Height = 16
    Caption = #1057#1091#1084#1084#1072' '
  end
  object Label4: TLabel
    Left = 75
    Top = 47
    Width = 68
    Height = 16
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
  end
  object SaveBtn: TBitBtn
    Left = 175
    Top = 143
    Width = 96
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
    OnClick = SaveBtnClick
  end
  object CancBtn: TBitBtn
    Left = 319
    Top = 143
    Width = 88
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    DoubleBuffered = True
    Kind = bkCancel
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 5
  end
  object E_Usluga: TButtonedEdit
    Left = 155
    Top = 20
    Width = 441
    Height = 21
    AutoSize = False
    Images = Main_F.ImL_Buttons16
    MaxLength = 64
    ParentShowHint = False
    ReadOnly = True
    RightButton.ImageIndex = 1
    RightButton.Visible = True
    ShowHint = True
    TabOrder = 0
    OnRightButtonClick = E_UslugaRightButtonClick
  end
  object E_Kol: TDBNumberEditEh
    Left = 155
    Top = 42
    Width = 114
    Height = 24
    DynProps = <>
    EditButtons = <>
    TabOrder = 1
    Visible = True
    OnChange = E_KolChange
  end
  object E_Stoim: TDBNumberEditEh
    Left = 155
    Top = 68
    Width = 114
    Height = 24
    DynProps = <>
    EditButtons = <>
    TabOrder = 2
    Visible = True
    OnChange = E_StoimChange
  end
  object E_Sum: TDBNumberEditEh
    Left = 155
    Top = 95
    Width = 114
    Height = 24
    DynProps = <>
    EditButtons = <>
    TabOrder = 3
    Visible = True
  end
end
