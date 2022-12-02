object PartFullEdit_F: TPartFullEdit_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'PartFullEdit_F'
  ClientHeight = 500
  ClientWidth = 930
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnMouseWheel = FormMouseWheel
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 930
    Height = 29
    Caption = 'ToolBar1'
    DrawingStyle = dsGradient
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    Images = Main_F.ImL_Buttons16
    List = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object Btn_Refresh: TToolButton
      Left = 0
      Top = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      ImageIndex = 7
      OnClick = Btn_RefreshClick
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Caption = #1055#1077#1095#1072#1090#1072#1090#1100
      ImageIndex = 9
      OnClick = ToolButton2Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 29
    Width = 930
    Height = 471
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 1
    object frxPreview1: TfrxPreview
      Left = 1
      Top = 1
      Width = 928
      Height = 469
      Align = alClient
      OutlineVisible = False
      OutlineWidth = 120
      ThumbnailVisible = False
      FindFmVisible = False
      UseReportHints = True
      OutlineTreeSortType = dtsUnsorted
      HideScrolls = False
    end
  end
  object MainMenu1: TMainMenu
    Images = Main_F.ImL_16
    OwnerDraw = True
    Left = 184
    Top = 112
    object Mn1_1: TMenuItem
      Action = A_Services
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000C40E0000C40E00000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003C963F6A68B76EF267B66CF23D96
        3F8DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0054AB56C18DC891FF8EC991FF56AE
        59D2FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00439B476067B66CDF86C58AFF97CD9BFF96CC99FF81C3
        84FF56AC58CF39923D50FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0048A24D105DB064BF8BC790FF96CD9AFF93CB96FF87C58CFF82C385FF8EC9
        90FF8CC890FF7BC07FFF3A943D40FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF004CA3512073BB79DF90CB96FF8CC792FF59B05FBF439B4770429A46505BB0
        61CF8CC890FF8BC78EFF4CA54FAFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF004DA5511054AA599F48A24D70FFFFFF00FFFFFF00FFFFFF00429B
        464081C286FF96CD99FF6CB870EFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0048A14D40469E4B7F6BB8
        72DF90CA95FF91CA96FF55AB58BFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0050A7551067B770BF88C58EFF8CC792FF91CB97FF9BCF
        9FFF96CC9AFF88C68CFF429B4650FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF006EBA77BF9ACE9EFFA5D3AAFF98CE9DFF8FCA95FF87C5
        8CFF68B76FCF469E4B50FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0056AE5F2095CC9CFFAAD6AFFF9BCFA1FF54AB5A8F4EA654504DA5
        5110FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0059AF63409BCFA1FFACD7B1FF91CB99FF52AA5810FFFFFF004FA6
        54104DA6527F55AB5A9F4AA24F10FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0090C998EFA9D5AFFF9FD2A5FF81C389DF6FBA77BF85C5
        8CEF99CE9EFF96CD9CFF6EBA75CFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF005EB26A609DD0A5FFA7D4ACFFABD6B0FFA5D4ABFFA8D6
        AEFF9DD0A2FF90C995FF53AA598FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF005FB26B4089C791DDACD6B2FFADD8B3FF8EC9
        96F65AB0638F53AA5920FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0085C48ED0AAD7B1FFACD7B3FF8AC7
        92E8FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0063B46F4F92CB9AEB92CB9AEF5DB2
        6870FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      object N2: TMenuItem
        Action = A_ServiceAdd
      end
      object N3: TMenuItem
        Action = A_ServiceEdit
      end
      object N4: TMenuItem
        Action = A_ServiceDel
      end
      object N15: TMenuItem
        Action = A_UslDelShow
      end
    end
    object N1: TMenuItem
      Action = A_ServMarks
      object N5: TMenuItem
        Caption = #1050#1055#1055
        Enabled = False
      end
      object N6: TMenuItem
        Caption = #1055#1072#1088#1082#1086#1074#1097#1080#1082
        Enabled = False
        object N7: TMenuItem
          Caption = #1042#1098#1077#1079#1076
          Enabled = False
        end
        object N12: TMenuItem
          Caption = #1042#1099#1077#1079#1076
          Enabled = False
        end
      end
      object N13: TMenuItem
        Caption = #1054#1087#1077#1088#1072#1090#1086#1088
        Enabled = False
      end
      object N8: TMenuItem
        Caption = #1057#1090#1072#1088#1096#1080#1081' '#1086#1087#1077#1088#1072#1090#1086#1088
        object N14: TMenuItem
          Caption = #1053#1072#1087#1088#1072#1074#1080#1090#1100' '#1074' '#1082#1072#1089#1089#1091
          OnClick = N14Click
        end
      end
      object N9: TMenuItem
        Caption = #1050#1083#1072#1076#1086#1074#1097#1080#1082
        Enabled = False
      end
      object N10: TMenuItem
        Action = A_Technik
      end
      object N11: TMenuItem
        Caption = #1050#1072#1089#1089#1080#1088
        Enabled = False
      end
    end
  end
  object AM_TicketPart: TActionManager
    Images = Main_F.ImL_16
    Left = 56
    Top = 48
    StyleName = 'Platform Default'
    object A_Services: TAction
      Caption = #1059#1089#1083#1091#1075#1080
      OnExecute = A_ServicesExecute
    end
    object A_ServiceAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1091#1089#1083#1091#1075#1091
      ImageIndex = 2
      OnExecute = A_ServiceAddExecute
    end
    object A_ServiceEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1091#1089#1083#1091#1075#1091
      ImageIndex = 7
      OnExecute = A_ServiceEditExecute
    end
    object A_ServiceDel: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1091#1089#1083#1091#1075#1091
      ImageIndex = 8
      OnExecute = A_ServiceDelExecute
    end
    object A_ServMarks: TAction
      Caption = #1057#1083#1091#1078#1077#1073#1085#1099#1077' '#1086#1090#1084#1077#1090#1082#1080
      ImageIndex = 9
      OnExecute = A_ServMarksExecute
    end
    object A_Technik: TAction
      Caption = #1058#1077#1093#1085#1080#1082
      OnExecute = A_TechnikExecute
      OnUpdate = A_TechnikUpdate
    end
    object A_UslDelShow: TAction
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1091#1076#1072#1083#1077#1085#1085#1099#1077' '#1091#1089#1083#1091#1075#1080
      OnExecute = A_UslDelShowExecute
    end
    object A_GoToPay: TAction
      Caption = #1053#1072#1087#1088#1072#1074#1080#1090#1100' '#1074' '#1082#1072#1089#1089#1091
      OnExecute = A_GoToPayExecute
    end
  end
end
