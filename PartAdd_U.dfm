object PartAdd_F: TPartAdd_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1095#1072#1089#1090#1080' '#1050#1058
  ClientHeight = 132
  ClientWidth = 455
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
  object Label1: TLabel
    Left = 16
    Top = 34
    Width = 97
    Height = 13
    Caption = #1055#1086#1088#1103#1076#1082#1086#1074#1099#1081' '#1085#1086#1084#1077#1088
  end
  object Label2: TLabel
    Left = 16
    Top = 62
    Width = 92
    Height = 13
    Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100' '#1075#1088#1091#1079#1072
  end
  object Label3: TLabel
    Left = 120
    Top = 8
    Width = 133
    Height = 16
    Caption = #1054#1089#1085#1086#1074#1085#1086#1081' '#1085#1086#1084#1077#1088' '#1050#1058':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bt_Cancel: TBitBtn
    Left = 231
    Top = 96
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 4
  end
  object Bt_Save: TBitBtn
    Left = 140
    Top = 96
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
    TabOrder = 3
    OnClick = Bt_SaveClick
  end
  object E_Npp: TEdit
    Left = 120
    Top = 34
    Width = 41
    Height = 21
    NumbersOnly = True
    ReadOnly = True
    TabOrder = 1
  end
  object E_Zayv: TButtonedEdit
    Left = 120
    Top = 59
    Width = 313
    Height = 21
    Images = Main_F.ImL_Buttons16
    ReadOnly = True
    RightButton.ImageIndex = 1
    RightButton.Visible = True
    TabOrder = 2
    OnRightButtonClick = E_ZayvRightButtonClick
  end
  object E_KT: TEdit
    Left = 264
    Top = 8
    Width = 169
    Height = 24
    Alignment = taCenter
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
end
