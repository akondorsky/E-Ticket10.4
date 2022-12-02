object ScalingTS_F: TScalingTS_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1087#1080#1089#1086#1082' '#1058#1057' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1085#1099#1093' '#1085#1072' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1077
  ClientHeight = 280
  ClientWidth = 583
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
  object CategoryPanelGroup1: TCategoryPanelGroup
    Left = 0
    Top = 0
    Width = 583
    Height = 280
    VertScrollBar.Tracking = True
    Align = alClient
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    TabOrder = 0
    object CategoryPanel2: TCategoryPanel
      Top = 129
      Height = 149
      Caption = #1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103
      TabOrder = 0
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 579
        Height = 40
        ButtonHeight = 38
        ButtonWidth = 39
        Caption = 'ToolBar1'
        DrawingStyle = dsGradient
        Images = Main_F.ImL_Button32
        TabOrder = 0
        Transparent = False
        object ToolBt_Add: TToolButton
          Left = 0
          Top = 0
          Hint = #1057#1086#1089#1090#1072#1074#1080#1090#1100' '#1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103' '#1058#1057
          Action = AddActScale_A
          ParentShowHint = False
          ShowHint = True
        end
        object ToolBt_Edit: TToolButton
          Left = 39
          Top = 0
          Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103' '#1058#1057
          Action = EditActTs_A
          ParentShowHint = False
          ShowHint = True
        end
        object ToolBt_Del: TToolButton
          Left = 78
          Top = 0
          Hint = #1059#1076#1072#1083#1080#1090#1100' '#1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103' '#1058#1057
          Action = DelActTs_A
          ParentShowHint = False
          ShowHint = True
        end
        object ToolButton4: TToolButton
          Left = 117
          Top = 0
          Width = 8
          Caption = 'ToolButton4'
          ImageIndex = 7
          Style = tbsSeparator
        end
      end
      object Grid_Act: TDBGridEh
        Left = 0
        Top = 40
        Width = 579
        Height = 83
        Align = alClient
        DataGrouping.GroupLevels = <>
        DataSource = DM.DS_ActScale_TS
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'Tahoma'
        FooterFont.Style = []
        IndicatorOptions = [gioShowRowIndicatorEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DT_SCALE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 114
          end
          item
            EditButtons = <>
            FieldName = 'WEIGHT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1077#1089', '#1082#1075
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'FIRM_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1060#1080#1088#1084#1072
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 345
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object CategoryPanel1: TCategoryPanel
      Top = 0
      Height = 129
      Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1099#1077' '#1089#1088#1077#1076#1089#1090#1074#1072
      TabOrder = 1
      object Grid_ts: TDBGridEh
        Left = 0
        Top = 0
        Width = 579
        Height = 103
        Align = alClient
        DataGrouping.GroupLevels = <>
        DataSource = DM.DS_Qry_ScaleTS
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'Tahoma'
        FooterFont.Style = []
        IndicatorOptions = [gioShowRowIndicatorEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'N_TICKET'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1050#1058
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 106
          end
          item
            EditButtons = <>
            FieldName = 'N_TS'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1058#1057
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 94
          end
          item
            EditButtons = <>
            FieldName = 'N_TRAILER'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1087#1088#1080#1094#1077#1087#1072
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 145
          end
          item
            EditButtons = <>
            FieldName = 'FIO_DRIVER'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1086#1076#1080#1090#1077#1083#1100
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 181
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object ActionManager1: TActionManager
    LargeImages = Main_F.ImL_Button32
    Images = Main_F.ImL_Buttons16
    Left = 488
    Top = 80
    StyleName = 'Platform Default'
    object AddActScale_A: TAction
      Caption = #1057#1086#1089#1090#1072#1074#1080#1090#1100' '#1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103' '#1058#1057
      ImageIndex = 4
      OnExecute = AddActScale_AExecute
      OnUpdate = AddActScale_AUpdate
    end
    object EditActTs_A: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103' '#1058#1057
      ImageIndex = 5
      OnExecute = EditActTs_AExecute
      OnUpdate = EditActTs_AUpdate
    end
    object DelActTs_A: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103' '#1058#1057
      ImageIndex = 6
      OnUpdate = DelActTs_AUpdate
    end
  end
end
