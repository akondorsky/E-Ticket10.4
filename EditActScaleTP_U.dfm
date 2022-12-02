object EditActScaleTP_F: TEditActScaleTP_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103' '#1075#1088#1091#1079#1072' .'#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'.'
  ClientHeight = 293
  ClientWidth = 342
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
    Left = 15
    Top = 10
    Width = 91
    Height = 13
    Caption = #8470' '#1087#1072#1088#1090#1080#1080' '#1090#1086#1074#1072#1088#1072
  end
  object Label7: TLabel
    Left = 24
    Top = 216
    Width = 82
    Height = 13
    Caption = #1054#1087#1077#1088#1072#1090#1086#1088' '#1074#1077#1089#1086#1074
  end
  object E_Ticket: TEdit
    Left = 114
    Top = 8
    Width = 159
    Height = 24
    Color = clYellow
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object Bt_Save: TBitBtn
    Left = 86
    Top = 254
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
    TabOrder = 1
    OnClick = Bt_SaveClick
  end
  object Bt_Cancel: TBitBtn
    Left = 177
    Top = 254
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    DoubleBuffered = True
    Kind = bkCancel
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 7
    Top = 33
    Width = 329
    Height = 160
    TabOrder = 3
    object Label2: TLabel
      Left = 71
      Top = 19
      Width = 29
      Height = 13
      Caption = #8470' '#1058#1057
    end
    object Label4: TLabel
      Left = 26
      Top = 75
      Width = 74
      Height = 13
      Caption = #1042#1077#1089' '#1073#1088#1091#1090#1090#1086', '#1082#1075
    end
    object Label3: TLabel
      Left = 51
      Top = 48
      Width = 49
      Height = 13
      Caption = #1042#1086#1076#1080#1090#1077#1083#1100
    end
    object Label5: TLabel
      Left = 14
      Top = 102
      Width = 86
      Height = 13
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1084#1077#1089#1090
    end
    object Label6: TLabel
      Left = 29
      Top = 131
      Width = 70
      Height = 13
      Caption = #1056#1086#1076' '#1091#1087#1072#1082#1086#1074#1082#1080
    end
    object E_NTs: TEdit
      Left = 108
      Top = 16
      Width = 157
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 0
    end
    object E_Driver: TEdit
      Left = 108
      Top = 45
      Width = 205
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 1
    end
    object E_Places: TEdit
      Left = 108
      Top = 102
      Width = 53
      Height = 21
      MaxLength = 6
      NumbersOnly = True
      TabOrder = 3
    end
    object E_Packing: TComboBox
      Left = 107
      Top = 128
      Width = 145
      Height = 21
      TabOrder = 4
      Items.Strings = (
        #1041#1086#1095#1082#1072
        #1050#1077#1081#1089'('#1050#1086#1092#1092')'
        #1050#1086#1088#1086#1073#1082#1072
        #1052#1077#1096#1086#1082
        #1055#1086#1076#1076#1086#1085
        #1058#1102#1082
        #1071#1097#1080#1082
        #1053#1077#1091#1087#1072#1082#1086#1074#1072#1085)
    end
    object E_Weight: TDBNumberEditEh
      Left = 108
      Top = 72
      Width = 141
      Height = 21
      DecimalPlaces = 3
      DynProps = <>
      EditButtons = <>
      TabOrder = 2
      Visible = True
    end
  end
  object E_User: TEdit
    Left = 114
    Top = 213
    Width = 205
    Height = 21
    Enabled = False
    TabOrder = 4
  end
end
