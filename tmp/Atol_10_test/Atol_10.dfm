object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 236
  ClientWidth = 286
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 32
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Open'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 32
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 32
    Top = 128
    Width = 75
    Height = 25
    Caption = 'GetData'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 168
    Top = 32
    Width = 75
    Height = 25
    Caption = 'ReportInfo'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 168
    Top = 72
    Width = 75
    Height = 25
    Caption = 'OFD Diag'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 168
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Button6'
    TabOrder = 5
  end
  object Button7: TButton
    Left = 32
    Top = 176
    Width = 75
    Height = 25
    Caption = #1057#1084#1077#1085#1072
    TabOrder = 6
    OnClick = Button7Click
  end
end
