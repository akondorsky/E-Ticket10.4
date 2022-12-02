object DiscChange_F: TDiscChange_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1089#1082#1080#1076#1082#1080
  ClientHeight = 118
  ClientWidth = 213
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
  object E_Disc: TLabeledEdit
    Left = 44
    Top = 24
    Width = 121
    Height = 24
    EditLabel.Width = 90
    EditLabel.Height = 16
    EditLabel.Caption = #1042#1074#1077#1076#1080#1090#1077' '#1089#1082#1080#1076#1082#1091
    MaxLength = 2
    NumbersOnly = True
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 70
    Top = 75
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkOK
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
