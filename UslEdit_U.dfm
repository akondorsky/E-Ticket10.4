object UslEdit_F: TUslEdit_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
  ClientHeight = 148
  ClientWidth = 507
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
  object Label5: TLabel
    Left = 6
    Top = 61
    Width = 111
    Height = 13
    Caption = #1057#1091#1090#1086#1082' ('#1087#1088#1080' '#1093#1088#1072#1085#1077#1085#1080#1080')'
  end
  object Label9: TLabel
    Left = 6
    Top = 13
    Width = 110
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
  end
  object Label10: TLabel
    Left = 81
    Top = 37
    Width = 35
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086
  end
  object Bt_Save: TBitBtn
    Left = 170
    Top = 116
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
    TabOrder = 3
    OnClick = Bt_SaveClick
  end
  object Bt_Cancel: TBitBtn
    Left = 261
    Top = 116
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    DoubleBuffered = True
    Kind = bkCancel
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 4
  end
  object E_Days: TEdit
    Left = 122
    Top = 56
    Width = 63
    Height = 21
    TabOrder = 2
    OnKeyPress = E_DaysKeyPress
  end
  object E_Usluga: TButtonedEdit
    Left = 122
    Top = 10
    Width = 377
    Height = 21
    Images = Main_F.ImL_Buttons16
    ReadOnly = True
    RightButton.ImageIndex = 1
    RightButton.Visible = True
    TabOrder = 0
    OnRightButtonClick = E_UslugaRightButtonClick
  end
  object E_Kol: TEdit
    Left = 122
    Top = 33
    Width = 63
    Height = 21
    TabOrder = 1
    OnKeyPress = E_KolKeyPress
  end
end
