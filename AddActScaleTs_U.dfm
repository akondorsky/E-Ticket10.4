object AddActScaleTs_F: TAddActScaleTs_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103' '#1058#1057'.'#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
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
  object Bevel1: TBevel
    Left = 3
    Top = 3
    Width = 248
    Height = 143
    Shape = bsFrame
  end
  object E_Ticket: TEdit
    Left = 126
    Top = 8
    Width = 121
    Height = 21
    Color = clYellow
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object E_NTs: TEdit
    Left = 126
    Top = 40
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object E_NTrailer: TEdit
    Left = 126
    Top = 72
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object E_Weight: TEdit
    Left = 126
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 3
    OnChange = E_WeightChange
  end
  object Bt_Save: TBitBtn
    Left = 46
    Top = 158
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkOK
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = Bt_SaveClick
  end
  object Bt_Cancel: TBitBtn
    Left = 137
    Top = 158
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    DoubleBuffered = True
    Kind = bkCancel
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 5
  end
end
