object TicketEdit_F: TTicketEdit_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1050#1058
  ClientHeight = 219
  ClientWidth = 332
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 65
    Top = 8
    Width = 56
    Height = 16
    Caption = #1053#1086#1084#1077#1088' '#1050#1058
  end
  object Label2: TLabel
    Left = 1
    Top = 58
    Width = 120
    Height = 16
    Caption = #1058#1072#1084#1086#1078#1077#1085#1085#1099#1081' '#1088#1077#1078#1080#1084
  end
  object Label13: TLabel
    Left = 54
    Top = 85
    Width = 69
    Height = 16
    Alignment = taRightJustify
    Caption = #1055#1077#1088#1077#1074#1086#1079#1095#1080#1082
  end
  object Label3: TLabel
    Left = 30
    Top = 136
    Width = 92
    Height = 16
    Caption = #1042#1080#1076' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072
  end
  object Label4: TLabel
    Left = 52
    Top = 36
    Width = 69
    Height = 16
    Caption = #1044#1072#1090#1072','#1074#1088#1077#1084#1103
  end
  object Label5: TLabel
    Left = 43
    Top = 104
    Width = 79
    Height = 31
    Alignment = taRightJustify
    AutoSize = False
    Caption = #1058#1077#1083#1077#1092#1086#1085' '#1087#1077#1088#1077#1074#1086#1079#1095#1080#1082#1072
    WordWrap = True
  end
  object E_Nomer: TEdit
    Left = 131
    Top = 8
    Width = 95
    Height = 24
    Enabled = False
    NumbersOnly = True
    TabOrder = 0
  end
  object Bt_Cancel: TBitBtn
    Left = 175
    Top = 177
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    DoubleBuffered = True
    Kind = bkCancel
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 6
  end
  object Bt_Save: TBitBtn
    Left = 76
    Top = 177
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
    TabOrder = 7
    OnClick = Bt_SaveClick
  end
  object E_CustProc: TButtonedEdit
    Left = 131
    Top = 58
    Width = 135
    Height = 24
    Images = Main_F.ImL_Buttons16
    ReadOnly = True
    RightButton.ImageIndex = 1
    RightButton.Visible = True
    TabOrder = 2
    OnRightButtonClick = E_CustProcRightButtonClick
  end
  object E_Carrier: TButtonedEdit
    Left = 131
    Top = 83
    Width = 158
    Height = 24
    Images = Main_F.ImL_Buttons16
    ReadOnly = True
    RightButton.ImageIndex = 1
    RightButton.Visible = True
    TabOrder = 3
    OnRightButtonClick = E_CarrierRightButtonClick
  end
  object E_Vidtrans: TComboBox
    Left = 131
    Top = 133
    Width = 95
    Height = 24
    TabOrder = 5
    Items.Strings = (
      '30'
      '31'
      '32')
  end
  object DT1: TDBDateTimeEditEh
    Left = 131
    Top = 34
    Width = 196
    Height = 24
    DynProps = <>
    Enabled = False
    EditButtons = <>
    Kind = dtkDateTimeEh
    TabOrder = 1
    Visible = True
  end
  object E_Phone: TEdit
    Left = 131
    Top = 108
    Width = 158
    Height = 24
    MaxLength = 15
    NumbersOnly = True
    TabOrder = 4
    OnChange = E_PhoneChange
    OnExit = E_PhoneExit
  end
end
