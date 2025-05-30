object EditTs_F: TEditTs_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1058#1057
  ClientHeight = 571
  ClientWidth = 294
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
  object GpBx_Ts: TGroupBox
    Left = 8
    Top = 6
    Width = 278
    Height = 403
    Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1086#1077' '#1089#1088#1077#1076#1089#1090#1074#1086
    TabOrder = 0
    object Label4: TLabel
      Left = 58
      Top = 24
      Width = 47
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1058#1057
    end
    object Label5: TLabel
      Left = 71
      Top = 106
      Width = 34
      Height = 13
      Caption = #1058#1080#1087' '#1058#1057
    end
    object Label6: TLabel
      Left = 39
      Top = 160
      Width = 66
      Height = 13
      Caption = #1062#1077#1083#1100' '#1074#1098#1077#1079#1076#1072
    end
    object Label7: TLabel
      Left = 30
      Top = 189
      Width = 75
      Height = 13
      Caption = #1060#1048#1054' '#1074#1086#1076#1080#1090#1077#1083#1103
    end
    object Label8: TLabel
      Left = 29
      Top = 216
      Width = 76
      Height = 13
      Caption = #1050#1086#1085#1090'. '#1090#1077#1083#1077#1092#1086#1085
    end
    object Label9: TLabel
      Left = 76
      Top = 276
      Width = 133
      Height = 13
      Caption = #1042#1080#1076#1080#1084#1099#1077' '#1087#1086#1074#1088#1077#1078#1076#1077#1085#1080#1103' '#1058#1057
    end
    object Label10: TLabel
      Left = 7
      Top = 250
      Width = 98
      Height = 13
      Caption = #8470' '#1087#1072#1088#1082'. '#1084#1077#1089#1090#1072' '#1047#1058#1050
    end
    object Label11: TLabel
      Left = 57
      Top = 133
      Width = 48
      Height = 13
      Caption = #1052#1072#1088#1082#1072' '#1058#1057
    end
    object Label14: TLabel
      Left = 68
      Top = 80
      Width = 37
      Height = 13
      Caption = #1057#1090#1088#1072#1085#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 54
      Top = 51
      Width = 51
      Height = 13
      Caption = #1042#1077#1089' '#1058#1057', '#1082#1075
    end
    object E_NTs: TEdit
      Left = 125
      Top = 21
      Width = 84
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 10
      TabOrder = 0
      OnKeyPress = E_NTsKeyPress
    end
    object E_Driver: TEdit
      Left = 125
      Top = 186
      Width = 143
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      TabOrder = 6
    end
    object E_Phone: TEdit
      Left = 125
      Top = 213
      Width = 143
      Height = 21
      MaxLength = 12
      TabOrder = 7
      OnKeyPress = E_PhoneKeyPress
    end
    object M_Crashes: TMemo
      Left = 3
      Top = 295
      Width = 272
      Height = 104
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Lines.Strings = (
        '')
      ParentFont = False
      TabOrder = 9
    end
    object E_TsType: TButtonedEdit
      Left = 125
      Top = 103
      Width = 143
      Height = 21
      Images = Main_F.ImL_Buttons16
      ReadOnly = True
      RightButton.ImageIndex = 1
      RightButton.Visible = True
      TabOrder = 3
      OnRightButtonClick = E_TsTypeRightButtonClick
    end
    object E_Target: TButtonedEdit
      Left = 125
      Top = 157
      Width = 143
      Height = 21
      Images = Main_F.ImL_Buttons16
      ReadOnly = True
      RightButton.ImageIndex = 1
      RightButton.Visible = True
      TabOrder = 5
      OnRightButtonClick = E_TargetRightButtonClick
    end
    object E_ParkZTK: TButtonedEdit
      Left = 125
      Top = 240
      Width = 84
      Height = 21
      Images = Main_F.ImL_Buttons16
      ReadOnly = True
      RightButton.ImageIndex = 1
      RightButton.Visible = True
      TabOrder = 8
      OnRightButtonClick = E_ParkZTKRightButtonClick
    end
    object E_Marka: TComboBox
      Left = 125
      Top = 130
      Width = 145
      Height = 21
      TabOrder = 4
      OnKeyPress = E_MarkaKeyPress
      Items.Strings = (
        'BMC'
        'Chevrolet'
        'Daewoo'
        'DAF'
        'Fiat'
        'GAZ'
        'GMC'
        'Hyundai'
        'Isuzu'
        'Iveco'
        'KamAZ'
        'KrAZ'
        'Mack'
        'MAZ'
        'MAN'
        'Mercedes-Benz'
        'Mitsubishi'
        'Nissan'
        'Opel'
        'Peugeuot'
        'Renault'
        'Scania'
        'Sitrak'
        'Tatra'
        'Ural'
        'Volvo'
        'VW')
    end
    object E_Country: TButtonedEdit
      Left = 125
      Top = 77
      Width = 85
      Height = 21
      Images = Main_F.ImL_Buttons16
      ReadOnly = True
      RightButton.ImageIndex = 1
      RightButton.Visible = True
      TabOrder = 2
      OnRightButtonClick = E_CountryRightButtonClick
    end
    object E_VesTs: TEdit
      Left = 125
      Top = 48
      Width = 84
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 5
      NumbersOnly = True
      ParentFont = False
      TabOrder = 1
    end
  end
  object GpBx_Trailer: TGroupBox
    Left = 8
    Top = 415
    Width = 278
    Height = 98
    Caption = #1055#1088#1080#1094#1077#1087
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label3: TLabel
      Left = 29
      Top = 31
      Width = 76
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1087#1088#1080#1094#1077#1087#1072
    end
    object Label16: TLabel
      Left = 25
      Top = 58
      Width = 80
      Height = 13
      Caption = #1042#1077#1089' '#1087#1088#1080#1094#1077#1087#1072', '#1082#1075
    end
    object E_NTrailer: TEdit
      Left = 125
      Top = 28
      Width = 84
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 10
      TabOrder = 0
      OnKeyPress = E_NTrailerKeyPress
    end
    object E_VesTrailer: TEdit
      Left = 125
      Top = 54
      Width = 84
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 5
      NumbersOnly = True
      ParentFont = False
      TabOrder = 1
    end
  end
  object Bt_Save: TBitBtn
    Left = 62
    Top = 533
    Width = 75
    Height = 25
    Caption = 'OK'
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
    OnClick = Bt_SaveClick
  end
  object Bt_Cancel: TBitBtn
    Left = 153
    Top = 533
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 3
  end
end
