object CarrierEdit_F: TCarrierEdit_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1055#1077#1088#1077#1074#1086#1079#1095#1080#1082#1080'.'#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 199
  ClientWidth = 480
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
    Left = 8
    Top = 19
    Width = 73
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  object Label2: TLabel
    Left = 53
    Top = 43
    Width = 31
    Height = 13
    Caption = #1040#1076#1088#1077#1089
  end
  object Label17: TLabel
    Left = 48
    Top = 68
    Width = 37
    Height = 13
    Caption = #1057#1090#1088#1072#1085#1072
  end
  object Label3: TLabel
    Left = 60
    Top = 93
    Width = 21
    Height = 13
    Caption = #1048#1053#1053
  end
  object Label4: TLabel
    Left = 37
    Top = 119
    Width = 44
    Height = 13
    Caption = #1058#1077#1083#1077#1092#1086#1085
  end
  object E_Owner: TEdit
    Left = 89
    Top = 16
    Width = 373
    Height = 21
    MaxLength = 100
    TabOrder = 0
    OnKeyPress = E_OwnerKeyPress
  end
  object E_Adress: TEdit
    Left = 89
    Top = 40
    Width = 373
    Height = 21
    MaxLength = 100
    TabOrder = 1
    OnKeyPress = E_AdressKeyPress
  end
  object SaveBtn: TBitBtn
    Left = 136
    Top = 159
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
    TabOrder = 6
    OnClick = SaveBtnClick
  end
  object CancBtn: TBitBtn
    Left = 248
    Top = 159
    Width = 88
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    DoubleBuffered = True
    Kind = bkCancel
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 7
  end
  object E_CountryName: TEdit
    Left = 169
    Top = 65
    Width = 225
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 2
  end
  object E_CntryKod: TButtonedEdit
    Left = 89
    Top = 65
    Width = 60
    Height = 21
    Images = Main_F.ImL_Buttons16
    MaxLength = 2
    RightButton.ImageIndex = 1
    RightButton.Visible = True
    TabOrder = 3
    OnChange = E_CntryKodChange
    OnKeyPress = E_CntryKodKeyPress
    OnRightButtonClick = E_CntryKodRightButtonClick
  end
  object E_Inn: TEdit
    Left = 89
    Top = 90
    Width = 124
    Height = 21
    MaxLength = 100
    NumbersOnly = True
    TabOrder = 4
    OnKeyPress = E_InnKeyPress
  end
  object E_Phone: TEdit
    Left = 89
    Top = 116
    Width = 124
    Height = 21
    MaxLength = 15
    NumbersOnly = True
    TabOrder = 5
    OnKeyPress = E_OwnerKeyPress
  end
end
