object FormParkCbx: TFormParkCbx
  Left = 255
  Top = 190
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1055#1072#1088#1082#1086#1074#1082#1072' '#1057#1042#1061
  ClientHeight = 215
  ClientWidth = 929
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 109
    Top = 162
    Width = 25
    Height = 26
  end
  object Label1: TLabel
    Left = 24
    Top = 165
    Width = 53
    Height = 16
    Caption = #1057#1090#1072#1090#1091#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 138
    Top = 167
    Width = 49
    Height = 13
    Caption = #1057#1074#1086#1073#1086#1076#1085#1086
  end
  object Shape2: TShape
    Left = 197
    Top = 162
    Width = 25
    Height = 26
    Brush.Color = clRed
  end
  object Label3: TLabel
    Left = 226
    Top = 167
    Width = 36
    Height = 13
    Caption = #1047#1072#1085#1103#1090#1086
  end
  object Shape3: TShape
    Left = 272
    Top = 162
    Width = 25
    Height = 26
    Brush.Color = clBlack
  end
  object Label4: TLabel
    Left = 301
    Top = 167
    Width = 87
    Height = 13
    Caption = #1053#1077' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1090#1089#1103
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 0
    Width = 929
    Height = 153
    Color = clWhite
    ColCount = 25
    DefaultColWidth = 36
    DefaultRowHeight = 36
    FixedCols = 0
    RowCount = 4
    FixedRows = 0
    PopupMenu = PopupMenu1
    TabOrder = 0
    OnDblClick = StringGrid1DblClick
    OnDrawCell = StringGrid1DrawCell
    OnMouseMove = StringGrid1MouseMove
    OnMouseUp = StringGrid1MouseUp
  end
  object SB1: TStatusBar
    Left = 0
    Top = 192
    Width = 929
    Height = 23
    Panels = <
      item
        Width = 500
      end
      item
        Width = 50
      end>
    ParentFont = True
    UseSystemFont = False
  end
  object PopupMenu1: TPopupMenu
    Images = ImageList1
    Left = 40
    Top = 48
    object N1: TMenuItem
      Caption = #1047#1072#1085#1103#1090#1100' '#1084#1077#1089#1090#1086' '#1076#1083#1103' '#1058#1057
      ImageIndex = 0
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1054#1089#1074#1086#1073#1086#1076#1080#1090#1100' '#1084#1077#1089#1090#1086
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Caption = #1052#1077#1089#1090#1086' '#1085#1077' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1090#1089#1103
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1084#1077#1089#1090#1086
      OnClick = N5Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object N7: TMenuItem
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1089#1086#1089#1090#1086#1103#1085#1080#1077' '#1087#1072#1088#1082#1086#1074#1082#1080
      OnClick = N7Click
    end
    object N8: TMenuItem
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1084#1077#1089#1090#1077
      OnClick = N8Click
    end
  end
  object ImageList1: TImageList
    Left = 40
    Top = 88
    Bitmap = {
      494C010101000C00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003941D600444BD900474FDA00434BD9004048D7003E47D800353ED500252E
      D200232BD2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004148
      D700636CE4008997FA008495FF007F90FC007D8EFA007D8DF7007D8BF2005159
      DD00222AD1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004E56DA006C75
      E40096A5FA005A74FF003250FF00304FFF002C49FE002542FA004860F9008694
      F4005159DD00252ED10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005E65DE007981E7009FAD
      FB006781FF00405EFF00405EFF003C59FF003755FF003350FF002846FD004A65
      FD008996F600545EDE002C34D400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007178E300A2B2FC00738F
      FF004F70FF004F6EFF004B69FF004664FF00415EFF003C5AFF003755FF002C4B
      FF004E67FF008493FA004048D800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007D84E500A6BBFF005F7F
      FF005F7EFF005A79FF005573FF00506EFF004B69FF004664FF00415EFF003B59
      FF00314FFF008799FF004D55DB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000858AE600ABBEFF006D8D
      FF006989FF006583FF005F7EFF005A79FF005574FF00506FFF004B69FF004663
      FF003F5CFF008A9BFF00535BDC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008B91E700B1C4FF007698
      FF007393FF006E8EFF006989FF006583FF005F7EFF005A79FF005573FF004F6E
      FF004867FF0090A1FF005A62DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009298E900B8CDFF007DA0
      FF007C9DFF007899FF007393FF006E8EFF006989FF006583FF00607EFF005978
      FF004F70FF0098AAFF00636AE000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000959AEA00BCCDFC009CBB
      FF0081A5FF0081A2FF007C9EFF007899FF007493FF006F8EFF006989FF006080
      FF007893FF009EADFB00656CE000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009297E800A5ACEF00C1D1
      FC00A0BFFF0086AAFF0085A7FF0081A2FF007C9DFF007898FF006F90FF0085A1
      FF00ACBAFB00838BE8006369DF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009396E800A6AD
      EE00C4D4FC00A3C2FF008BAFFF0089ABFF0084A7FF007EA0FF0091AEFF00B4C3
      FB008C93EA006D71E00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009498
      E800A9B1F000C2D3FC00C1D6FF00BDD1FF00BBCFFF00B9CEFF00B7C8FC00989F
      ED00797EE2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999DEA009EA3EB00A0A5EC009DA2EB009BA0EB00989EEA009297E900868B
      E6008388E5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000F007000000000000
      E007000000000000C00300000000000080010000000000008001000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      80010000000000008001000000000000C003000000000000E007000000000000
      F007000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
end