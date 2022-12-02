object FItemsEdit_F: TFItemsEdit_F
  Left = 505
  Top = 206
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080' '
  ClientHeight = 244
  ClientWidth = 422
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 32
    Top = 80
    Width = 91
    Height = 13
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1089' '#1053#1044#1057
  end
  object Label7: TLabel
    Left = 40
    Top = 128
    Width = 82
    Height = 13
    Caption = #1057#1091#1084#1084#1072' '#1073#1077#1079' '#1053#1044#1057
  end
  object Label10: TLabel
    Left = 74
    Top = 104
    Width = 48
    Height = 13
    Caption = #1057#1082#1080#1076#1082#1072' %'
  end
  object Label14: TLabel
    Left = 16
    Top = 8
    Width = 112
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
  end
  object Label1: TLabel
    Left = 100
    Top = 152
    Width = 24
    Height = 13
    Alignment = taRightJustify
    Caption = #1053#1044#1057
  end
  object Label2: TLabel
    Left = 14
    Top = 176
    Width = 108
    Height = 13
    Caption = #1057#1091#1084#1084#1072' '#1089' '#1091#1095#1077#1090#1086#1084' '#1053#1044#1057
  end
  object Label3: TLabel
    Left = 48
    Top = 56
    Width = 78
    Height = 13
    Caption = #1045#1076'. '#1080#1079#1084#1077#1088#1077#1085#1080#1103' '
  end
  object Label4: TLabel
    Left = 64
    Top = 32
    Width = 59
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
  end
  object SaveBtn: TBitBtn
    Left = 104
    Top = 208
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
    TabOrder = 8
    OnClick = SaveBtnClick
  end
  object CancBtn: TBitBtn
    Left = 216
    Top = 208
    Width = 88
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    DoubleBuffered = True
    Kind = bkCancel
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 9
    OnClick = CancBtnClick
  end
  object E_Usluga: TButtonedEdit
    Left = 144
    Top = 8
    Width = 265
    Height = 21
    Hint = 'F1 - '#1074#1099#1079#1074#1072#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082
    Enabled = False
    Images = Main_F.ImL_Buttons16
    MaxLength = 150
    ParentShowHint = False
    ReadOnly = True
    RightButton.ImageIndex = 1
    RightButton.Visible = True
    ShowHint = True
    TabOrder = 0
    OnKeyPress = E_UslugaKeyPress
  end
  object E_Stoim: TButtonedEdit
    Left = 144
    Top = 79
    Width = 121
    Height = 21
    AutoSize = False
    Enabled = False
    TabOrder = 3
    Text = '0'
    OnChange = E_StoimChange
    OnKeyPress = E_StoimKeyPress
  end
  object E_Summa: TButtonedEdit
    Left = 144
    Top = 127
    Width = 121
    Height = 21
    AutoSize = False
    Enabled = False
    TabOrder = 5
    Text = '0'
    OnKeyPress = E_SummaKeyPress
  end
  object E_Vat: TButtonedEdit
    Left = 144
    Top = 148
    Width = 121
    Height = 21
    AutoSize = False
    Enabled = False
    TabOrder = 6
    Text = '0'
    OnKeyPress = E_VatKeyPress
  end
  object E_Itogo: TButtonedEdit
    Left = 144
    Top = 175
    Width = 121
    Height = 21
    AutoSize = False
    Enabled = False
    TabOrder = 7
    Text = '0'
    OnKeyPress = E_ItogoKeyPress
  end
  object E_Edizm: TButtonedEdit
    Left = 144
    Top = 52
    Width = 121
    Height = 21
    Hint = 'F1 - '#1074#1099#1079#1074#1072#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082
    Images = Main_F.ImL_Buttons16
    ParentShowHint = False
    RightButton.ImageIndex = 1
    RightButton.Visible = True
    ShowHint = True
    TabOrder = 2
    OnKeyPress = E_EdizmKeyPress
    OnRightButtonClick = E_EdizmRightButtonClick
  end
  object E_Kol: TButtonedEdit
    Left = 144
    Top = 31
    Width = 121
    Height = 21
    AutoSize = False
    TabOrder = 1
    Text = '0'
    OnChange = E_KolChange
    OnKeyPress = E_KolKeyPress
  end
  object E_Discount: TButtonedEdit
    Left = 144
    Top = 103
    Width = 57
    Height = 21
    AutoSize = False
    NumbersOnly = True
    TabOrder = 4
    Text = '0'
    OnChange = E_DiscountChange
    OnKeyPress = E_DiscountKeyPress
  end
end
