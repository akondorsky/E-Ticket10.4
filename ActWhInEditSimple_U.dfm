object ActWhInEditSimple_F: TActWhInEditSimple_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1088#1086#1089#1090#1086#1075#1086' '#1089#1082#1083#1072#1076#1089#1082#1086#1075#1086' '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1072
  ClientHeight = 620
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 40
    Top = 8
    Width = 133
    Height = 16
    Caption = #1058#1086#1074#1072#1088#1085#1072#1103' '#1087#1072#1088#1090#1080#1103' '#8470
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 51
    Top = 35
    Width = 121
    Height = 16
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1075#1088#1091#1079#1072
  end
  object Label3: TLabel
    Left = 50
    Top = 63
    Width = 119
    Height = 16
    Caption = #1057#1088#1086#1082' '#1093#1088#1072#1085#1077#1085#1080#1103'('#1089#1091#1090'.)'
  end
  object Label4: TLabel
    Left = 10
    Top = 160
    Width = 162
    Height = 16
    Caption = #8470' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1085#1086#1075#1086' '#1089#1088#1077#1076#1089#1090#1074#1072
  end
  object Label5: TLabel
    Left = 14
    Top = 187
    Width = 159
    Height = 16
    Caption = #1055#1083#1086#1084#1073#1099' '#1087#1088#1080' '#1087#1088#1080#1077#1084#1082#1077' '#1075#1088#1091#1079#1072
  end
  object Label9: TLabel
    Left = 8
    Top = 346
    Width = 72
    Height = 16
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
  end
  object Label12: TLabel
    Left = 64
    Top = 134
    Width = 105
    Height = 16
    Caption = #8470' '#1084#1077#1089#1090' '#1093#1088#1072#1085#1077#1085#1080#1103
  end
  object E_NTp: TEdit
    Left = 191
    Top = 5
    Width = 121
    Height = 24
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object E_Goods: TEdit
    Left = 191
    Top = 33
    Width = 256
    Height = 24
    MaxLength = 150
    ReadOnly = True
    TabOrder = 1
  end
  object E_Srok: TEdit
    Left = 191
    Top = 60
    Width = 55
    Height = 24
    NumbersOnly = True
    TabOrder = 2
  end
  object E_Nts: TEdit
    Left = 191
    Top = 157
    Width = 254
    Height = 24
    ReadOnly = True
    TabOrder = 5
  end
  object E_Plombs: TEdit
    Left = 191
    Top = 184
    Width = 256
    Height = 24
    MaxLength = 250
    TabOrder = 6
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 214
    Width = 439
    Height = 57
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1084#1077#1089#1090
    TabOrder = 7
    object Label7: TLabel
      Left = 34
      Top = 26
      Width = 69
      Height = 16
      Caption = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1080
    end
    object Label8: TLabel
      Left = 223
      Top = 25
      Width = 88
      Height = 16
      Caption = #1055#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1072#1084
    end
    object E_NPlFact: TEdit
      Left = 128
      Top = 22
      Width = 49
      Height = 24
      Alignment = taCenter
      NumbersOnly = True
      TabOrder = 0
    end
    object E_NplDoc: TEdit
      Left = 317
      Top = 22
      Width = 44
      Height = 24
      Alignment = taCenter
      NumbersOnly = True
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 6
    Top = 277
    Width = 439
    Height = 66
    Caption = #1042#1077#1089' '#1075#1088#1091#1079#1072', '#1082#1075
    TabOrder = 8
    object Label6: TLabel
      Left = 34
      Top = 27
      Width = 69
      Height = 16
      Caption = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1080
    end
    object LabelWeightDoc: TLabel
      Left = 223
      Top = 25
      Width = 88
      Height = 16
      Caption = #1055#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1072#1084
    end
    object E_WeightFact: TDBNumberEditEh
      Left = 120
      Top = 22
      Width = 67
      Height = 24
      DecimalPlaces = 3
      DynProps = <>
      EditButtons = <>
      TabOrder = 0
      Visible = True
    end
    object E_WeightDoc: TDBNumberEditEh
      Left = 317
      Top = 22
      Width = 67
      Height = 24
      DecimalPlaces = 3
      DynProps = <>
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
  end
  object M_Note: TMemo
    Left = 6
    Top = 368
    Width = 439
    Height = 102
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
  object Bt_Save: TBitBtn
    Left = 137
    Top = 578
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
    TabOrder = 11
    OnClick = Bt_SaveClick
  end
  object Bt_Cancel: TBitBtn
    Left = 228
    Top = 578
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    DoubleBuffered = True
    Kind = bkCancel
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 12
  end
  object GroupBox3: TGroupBox
    Left = 6
    Top = 476
    Width = 439
    Height = 91
    Caption = #1043#1088#1091#1079' '#1089#1076#1072#1083
    TabOrder = 10
    object Label10: TLabel
      Left = 79
      Top = 21
      Width = 82
      Height = 16
      Caption = #1060#1072#1084#1080#1083#1080#1103' '#1048'.'#1054'.'
    end
    object Label11: TLabel
      Left = 95
      Top = 50
      Width = 66
      Height = 16
      Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
    end
    object E_Fio: TEdit
      Left = 183
      Top = 17
      Width = 210
      Height = 24
      MaxLength = 50
      TabOrder = 0
    end
    object E_Dolj: TEdit
      Left = 183
      Top = 47
      Width = 210
      Height = 24
      MaxLength = 40
      TabOrder = 1
    end
  end
  object E_SVhNumbers: TButtonedEdit
    Left = 191
    Top = 131
    Width = 255
    Height = 24
    AutoSelect = False
    AutoSize = False
    Images = Main_F.ImL_Buttons16
    ReadOnly = True
    RightButton.ImageIndex = 1
    RightButton.Visible = True
    TabOrder = 4
    OnChange = E_SVhNumbersChange
    OnRightButtonClick = E_SVhNumbersRightButtonClick
  end
  object Rg_Cbx: TRadioGroup
    Left = 64
    Top = 82
    Width = 383
    Height = 43
    Caption = #1058#1080#1087' '#1057#1042#1061
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      #1054#1090#1082#1088#1099#1090#1099#1081' '
      #1047#1072#1082#1088#1099#1090#1099#1081)
    TabOrder = 3
  end
end
