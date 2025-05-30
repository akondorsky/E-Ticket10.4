object AddTicket_F: TAddTicket_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1082#1086#1085#1090#1088#1086#1083#1100#1085#1086#1075#1086' '#1090#1072#1083#1086#1085#1072
  ClientHeight = 601
  ClientWidth = 340
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 105
    Top = 13
    Width = 34
    Height = 16
    Caption = #8470' '#1050#1058
  end
  object Label2: TLabel
    Left = 14
    Top = 40
    Width = 120
    Height = 16
    Caption = #1058#1072#1084#1086#1078#1077#1085#1085#1099#1081' '#1088#1077#1078#1080#1084
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object E_NTicket: TEdit
    Left = 154
    Top = 10
    Width = 84
    Height = 24
    Color = clMenu
    Enabled = False
    TabOrder = 0
  end
  object Bt_Cancel: TBitBtn
    Left = 170
    Top = 571
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 5
  end
  object Bt_Save: TBitBtn
    Left = 79
    Top = 571
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
    TabOrder = 4
    OnClick = Bt_SaveClick
  end
  object GpBx_Ts: TGroupBox
    Left = 6
    Top = 65
    Width = 331
    Height = 360
    Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1086#1077' '#1089#1088#1077#1076#1089#1090#1074#1086
    TabOrder = 2
    object Label4: TLabel
      Left = 58
      Top = 24
      Width = 57
      Height = 16
      Caption = #1053#1086#1084#1077#1088' '#1058#1057
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 74
      Top = 99
      Width = 42
      Height = 16
      Caption = #1058#1080#1087' '#1058#1057
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 39
      Top = 146
      Width = 75
      Height = 16
      Caption = #1062#1077#1083#1100' '#1074#1098#1077#1079#1076#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 30
      Top = 170
      Width = 86
      Height = 16
      Caption = #1060#1048#1054' '#1074#1086#1076#1080#1090#1077#1083#1103
    end
    object Label8: TLabel
      Left = 29
      Top = 194
      Width = 86
      Height = 16
      Caption = #1050#1086#1085#1090'. '#1090#1077#1083#1077#1092#1086#1085
    end
    object Label9: TLabel
      Left = 76
      Top = 270
      Width = 156
      Height = 16
      Caption = #1042#1080#1076#1080#1084#1099#1077' '#1087#1086#1074#1088#1077#1078#1076#1077#1085#1080#1103' '#1058#1057
    end
    object Label10: TLabel
      Left = 7
      Top = 219
      Width = 114
      Height = 16
      Caption = #8470' '#1087#1072#1088#1082'. '#1084#1077#1089#1090#1072' '#1047#1058#1050
    end
    object Label11: TLabel
      Left = 57
      Top = 122
      Width = 57
      Height = 16
      Caption = #1052#1072#1088#1082#1072' '#1058#1057
    end
    object Label13: TLabel
      Left = 36
      Top = 243
      Width = 69
      Height = 16
      Alignment = taRightJustify
      Caption = #1055#1077#1088#1077#1074#1086#1079#1095#1080#1082
    end
    object SpeedButton1: TSpeedButton
      Left = 282
      Top = 260
      Width = 23
      Height = 27
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object Label14: TLabel
      Left = 71
      Top = 74
      Width = 42
      Height = 16
      Caption = #1057#1090#1088#1072#1085#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 55
      Top = 49
      Width = 59
      Height = 16
      Caption = #1042#1077#1089' '#1058#1057', '#1082#1075
    end
    object E_NTs: TEdit
      Left = 147
      Top = 21
      Width = 158
      Height = 24
      CharCase = ecUpperCase
      MaxLength = 10
      TabOrder = 0
      OnKeyPress = E_NTsKeyPress
    end
    object E_Driver: TEdit
      Left = 147
      Top = 167
      Width = 158
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      TabOrder = 6
      OnKeyPress = E_DriverKeyPress
    end
    object E_Phone: TEdit
      Left = 147
      Top = 192
      Width = 158
      Height = 24
      MaxLength = 12
      TabOrder = 7
      OnKeyPress = E_PhoneKeyPress
    end
    object M_Crashes: TMemo
      Left = 6
      Top = 289
      Width = 322
      Height = 63
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Lines.Strings = (
        '')
      ParentFont = False
      TabOrder = 10
    end
    object E_ParkZTK: TButtonedEdit
      Left = 147
      Top = 215
      Width = 131
      Height = 24
      Images = Main_F.ImL_Buttons16
      ReadOnly = True
      RightButton.ImageIndex = 1
      RightButton.Visible = True
      TabOrder = 8
      OnRightButtonClick = E_ParkZTKRightButtonClick
    end
    object E_TsType: TButtonedEdit
      Left = 147
      Top = 96
      Width = 158
      Height = 24
      Images = Main_F.ImL_Buttons16
      ReadOnly = True
      RightButton.ImageIndex = 1
      RightButton.Visible = True
      TabOrder = 3
      OnRightButtonClick = E_TsTypeRightButtonClick
    end
    object E_Target: TButtonedEdit
      Left = 147
      Top = 143
      Width = 158
      Height = 24
      Images = Main_F.ImL_Buttons16
      ReadOnly = True
      RightButton.ImageIndex = 1
      RightButton.Visible = True
      TabOrder = 5
      OnRightButtonClick = E_TargetRightButtonClick
    end
    object E_Carrier: TButtonedEdit
      Left = 147
      Top = 240
      Width = 158
      Height = 24
      Enabled = False
      Images = Main_F.ImL_Buttons16
      ReadOnly = True
      RightButton.ImageIndex = 1
      RightButton.Visible = True
      TabOrder = 9
      OnRightButtonClick = E_CarrierRightButtonClick
    end
    object E_Marka: TComboBox
      Left = 147
      Top = 119
      Width = 158
      Height = 24
      TabOrder = 4
      OnKeyPress = E_MarkaKeyPress
      Items.Strings = (
        'BMC'
        'Citroen'
        'Chevrolet'
        'Daewoo'
        'DAF'
        'Fiat'
        'Ford'
        'Foton'
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
      Left = 147
      Top = 71
      Width = 85
      Height = 24
      Images = Main_F.ImL_Buttons16
      ReadOnly = True
      RightButton.ImageIndex = 1
      RightButton.Visible = True
      TabOrder = 2
      OnRightButtonClick = E_CountryRightButtonClick
    end
    object E_VesTs: TEdit
      Left = 147
      Top = 46
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
    Top = 430
    Width = 329
    Height = 103
    Caption = #1055#1088#1080#1094#1077#1087
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label3: TLabel
      Left = 29
      Top = 49
      Width = 90
      Height = 16
      Caption = #1053#1086#1084#1077#1088' '#1087#1088#1080#1094#1077#1087#1072
    end
    object Label16: TLabel
      Left = 27
      Top = 75
      Width = 92
      Height = 16
      Caption = #1042#1077#1089' '#1087#1088#1080#1094#1077#1087#1072', '#1082#1075
    end
    object Ch_Tr: TCheckBox
      Left = 29
      Top = 23
      Width = 227
      Height = 17
      Caption = #1042#1085#1077#1089#1090#1080' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102' '#1086' '#1087#1088#1080#1094#1077#1087#1077
      TabOrder = 0
      OnClick = Ch_TrClick
    end
    object E_NTrailer: TEdit
      Left = 144
      Top = 45
      Width = 106
      Height = 24
      CharCase = ecUpperCase
      Enabled = False
      MaxLength = 10
      TabOrder = 1
      OnKeyPress = E_NTrailerKeyPress
    end
    object E_VesTrailer: TEdit
      Left = 144
      Top = 71
      Width = 84
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 5
      NumbersOnly = True
      ParentFont = False
      TabOrder = 2
    end
  end
  object E_CustProc: TComboBox
    Left = 153
    Top = 40
    Width = 158
    Height = 24
    Style = csDropDownList
    TabOrder = 1
    OnKeyPress = E_MarkaKeyPress
    Items.Strings = (
      '')
  end
  object Ch_Electro: TCheckBox
    Left = 8
    Top = 540
    Width = 193
    Height = 17
    Caption = #1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077' '#1082' '#1101#1083#1077#1082#1090#1088#1086#1089#1077#1090#1080
    TabOrder = 6
    OnClick = Ch_TrClick
  end
  object Mt1: TMemTableEh
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 48
    Top = 22
  end
  object Ds1: TDataSource
    DataSet = Mt1
    Left = 272
    Top = 126
  end
end
