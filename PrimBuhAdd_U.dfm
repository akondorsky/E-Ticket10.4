object PrimBuhAdd_F: TPrimBuhAdd_F
  Left = 450
  Top = 370
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
  ClientHeight = 104
  ClientWidth = 420
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 125
    Height = 13
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077'  '#1073#1091#1093#1075#1072#1083#1090#1077#1088#1072
  end
  object Edit1: TEdit
    Left = 6
    Top = 32
    Width = 409
    Height = 21
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 166
    Top = 66
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
