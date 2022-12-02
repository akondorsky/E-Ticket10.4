object ReasonDiscount_F: TReasonDiscount_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1089#1082#1080#1076#1082#1080
  ClientHeight = 92
  ClientWidth = 443
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object E_reason: TLabeledEdit
    Left = 8
    Top = 24
    Width = 429
    Height = 21
    Color = clRed
    EditLabel.Width = 90
    EditLabel.Height = 13
    EditLabel.Caption = #1059#1082#1072#1078#1080#1090#1077' '#1087#1088#1080#1095#1080#1085#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 255
    ParentFont = False
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 165
    Top = 59
    Width = 101
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    DoubleBuffered = True
    Kind = bkOK
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
