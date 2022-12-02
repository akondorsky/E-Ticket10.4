object ScalingTP_F: TScalingTP_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1057#1087#1080#1089#1086#1082' '#1058#1055'  '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1085#1099#1093' '#1085#1072' '#1093#1088#1072#1085#1077#1085#1080#1077
  ClientHeight = 662
  ClientWidth = 1178
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object CategoryPanelGroup1: TCategoryPanelGroup
    Left = 163
    Top = 39
    Width = 1015
    Height = 623
    VertScrollBar.Tracking = True
    Align = alClient
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    TabOrder = 0
    object CP_Acts: TCategoryPanel
      Top = 267
      Height = 134
      Caption = #1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103' '#1058#1055
      TabOrder = 0
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 1011
        Height = 38
        AutoSize = True
        ButtonHeight = 38
        ButtonWidth = 39
        Caption = 'ToolBar1'
        DrawingStyle = dsGradient
        Images = Main_F.ImL_32
        TabOrder = 0
        Transparent = False
        object ToolBt_Add: TToolButton
          Left = 0
          Top = 0
          Hint = #1057#1086#1089#1090#1072#1074#1080#1090#1100' '#1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103
          Caption = #1057#1086#1089#1090#1072#1074#1080#1090#1100' '#1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103
          DropdownMenu = PopMn_Act
          ImageIndex = 2
          ParentShowHint = False
          ShowHint = True
          Style = tbsDropDown
          OnClick = AddActTP_AExecute
        end
        object ToolButton3: TToolButton
          Left = 54
          Top = 0
          Width = 8
          Caption = 'ToolButton3'
          ImageIndex = 8
          Style = tbsSeparator
        end
        object ToolBt_Edit: TToolButton
          Left = 62
          Top = 0
          Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103' '#1058#1055
          Action = EditActTP_A
          ParentShowHint = False
          ShowHint = True
        end
        object ToolBt_Del: TToolButton
          Left = 101
          Top = 0
          Action = A_DelActTP
          ParentShowHint = False
          ShowHint = True
        end
        object ToolButton6: TToolButton
          Left = 140
          Top = 0
          Width = 8
          Caption = 'ToolButton6'
          ImageIndex = 9
          Style = tbsSeparator
        end
        object ToolButton7: TToolButton
          Left = 148
          Top = 0
          Action = A_ActPrint
          Enabled = False
        end
      end
      object Grid_Act: TDBGridEh
        Left = 0
        Top = 38
        Width = 1011
        Height = 70
        Align = alClient
        DataSource = DM.DS_ActScales
        DynProps = <>
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterParams.Color = clWindow
        IndicatorOptions = [gioShowRowIndicatorEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'N_ACT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1040#1082#1090#1072
            Width = 71
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'DT_SCALE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103
            Width = 131
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'BRUTTO'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1077#1089', '#1082#1075
            Width = 96
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'PLACES'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1052#1077#1089#1090
            Width = 70
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'PACKING'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1059#1087#1072#1082#1086#1074#1082#1072
            Width = 141
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'USERNAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1054#1087#1077#1088#1072#1090#1086#1088
            Width = 192
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object CP_TS: TCategoryPanel
      Top = 177
      Height = 90
      Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1099#1077' '#1089#1088#1077#1076#1089#1090#1074#1072
      TabOrder = 1
      object Grid_ts: TDBGridEh
        Left = 0
        Top = 0
        Width = 1011
        Height = 64
        Align = alClient
        DataSource = DM.DS_Qry_ScaleTS
        DynProps = <>
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterParams.Color = clWindow
        IndicatorOptions = [gioShowRowIndicatorEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'N_TICKET'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1050#1058
            Width = 106
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'N_TS'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1058#1057
            Width = 94
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'N_TRAILER'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1087#1088#1080#1094#1077#1087#1072
            Width = 145
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'FIO_DRIVER'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1086#1076#1080#1090#1077#1083#1100
            Width = 181
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object CP_TP: TCategoryPanel
      Top = 0
      Height = 177
      Caption = #1058#1086#1074#1072#1088#1085#1099#1077' '#1087#1072#1088#1090#1080#1080
      TabOrder = 2
      object Grid_Tp_ToCBX: TDBGridEh
        Left = 0
        Top = 0
        Width = 1011
        Height = 151
        Align = alClient
        DataSource = DM.Ds_TpToCbx
        DynProps = <>
        Flat = True
        FooterParams.Color = clWindow
        IndicatorOptions = [gioShowRowIndicatorEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ReadOnly = True
        RowLines = 2
        TabOrder = 0
        OnDrawColumnCell = Grid_Tp_ToCBXDrawColumnCell
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'TP_MOVE_CBX_CODE'
            Footers = <>
            ImageList = Main_F.ImL_TP_Action
            KeyList.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7')
            Title.Caption = ' '
            Width = 26
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'N_PART'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1087#1072#1088#1090#1080#1080
            Width = 80
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'ZAYV'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100' '#1075#1088#1091#1079#1072
            Width = 152
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'SHIPPER'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
            Width = 134
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'GOODS'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103' '#1075#1088#1091#1079#1072
            Width = 161
          end
          item
            Alignment = taRightJustify
            DynProps = <>
            EditButtons = <>
            FieldName = 'BRUTTO'
            Footers = <>
            Title.Caption = #1042#1077#1089' '#1073#1088#1091#1090#1090#1086','#1082#1075
            Width = 86
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'PLACES'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1052#1077#1089#1090
            Width = 67
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 39
    Width = 163
    Height = 623
    Align = alLeft
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      163
      623)
    object Label1: TLabel
      Left = 9
      Top = 4
      Width = 117
      Height = 16
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1086#1084#1077#1088#1091' '#1050#1058
    end
    object E_Find: TButtonedEdit
      Left = 9
      Top = 26
      Width = 117
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Images = Main_F.ImL_Buttons16
      MaxLength = 7
      NumbersOnly = True
      ParentFont = False
      RightButton.ImageIndex = 2
      RightButton.Visible = True
      TabOrder = 0
      OnKeyPress = E_FindKeyPress
      OnRightButtonClick = E_FindRightButtonClick
    end
    object BtnHelp: TBitBtn
      Left = 9
      Top = 588
      Width = 107
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = '&'#1055#1086#1076#1089#1082#1072#1079#1082#1072
      DoubleBuffered = True
      Kind = bkHelp
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BtnHelpClick
    end
  end
  object TB_Main: TToolBar
    Left = 0
    Top = 0
    Width = 1178
    Height = 39
    ButtonHeight = 38
    ButtonWidth = 39
    Caption = 'TB_Main'
    DrawingStyle = dsGradient
    Images = Main_F.ImL_32
    TabOrder = 2
    object ToolButton2: TToolButton
      Left = 0
      Top = 0
      Action = Refresh_A
    end
    object ToolButton4: TToolButton
      Left = 39
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 13
      Style = tbsSeparator
    end
  end
  object AM_ScalingTP: TActionManager
    LargeImages = Main_F.ImL_32
    Images = Main_F.ImL_16
    Left = 120
    Top = 92
    StyleName = 'Platform Default'
    object AddActScale_A: TAction
      Caption = #1057#1086#1089#1090#1072#1074#1080#1090#1100' '#1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103' '
      ImageIndex = 2
      OnExecute = AddActScale_AExecute
      OnUpdate = AddActScale_AUpdate
    end
    object EditActTP_A: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103' '#1058#1055' '
      ImageIndex = 7
      OnExecute = EditActTP_AExecute
      OnUpdate = EditActTP_AUpdate
    end
    object DelActTs_A: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103'  '#1058#1057
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103'  '#1058#1057
      ImageIndex = 8
      OnExecute = DelActTs_AExecute
      OnUpdate = DelActTs_AUpdate
    end
    object AllRec_A: TAction
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077' '#1079#1072#1087#1080#1089#1080
      ImageIndex = 19
      OnExecute = AllRec_AExecute
    end
    object Refresh_A: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      ImageIndex = 12
      OnExecute = Refresh_AExecute
    end
    object AddActTS_A: TAction
      Caption = #1057#1086#1089#1090#1072#1074#1080#1090#1100' '#1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103' '#1058#1057
      ImageIndex = 2
      OnExecute = AddActTS_AExecute
      OnUpdate = AddActTS_AUpdate
    end
    object AddActTP_A: TAction
      Caption = #1057#1086#1089#1090#1072#1074#1080#1090#1100' '#1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103' '#1058#1055
      ImageIndex = 2
      OnExecute = AddActTP_AExecute
      OnUpdate = AddActTP_AUpdate
    end
    object LockAtOpenCbx_A: TAction
      Caption = #1056#1072#1079#1084#1077#1089#1090#1080#1090#1100' '#1085#1072' '#1086#1090#1082#1088#1099#1090#1086#1084' '#1057#1042#1061
      OnExecute = LockAtOpenCbx_AExecute
      OnUpdate = LockAtOpenCbx_AUpdate
    end
    object LockAtClosedCbx_A: TAction
      Caption = #1056#1072#1079#1084#1077#1089#1090#1080#1090#1100' '#1085#1072' '#1079#1072#1082#1088#1099#1090#1086#1084' '#1057#1042#1061
      OnExecute = LockAtClosedCbx_AExecute
      OnUpdate = LockAtClosedCbx_AUpdate
    end
    object A_ActPrint: TAction
      Caption = #1056#1072#1089#1087#1077#1095#1072#1090#1072#1090#1100' '#1072#1082#1090
      ImageIndex = 20
      OnExecute = A_ActPrintExecute
    end
    object A_EditActTs: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103' '#1058#1057
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103' '#1058#1057
      ImageIndex = 7
      OnExecute = A_EditActTsExecute
      OnUpdate = A_EditActTsUpdate
    end
    object A_DelActTP: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103' '#1058#1055
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103' '#1058#1055
      ImageIndex = 8
      OnExecute = A_DelActTPExecute
      OnUpdate = A_DelActTPUpdate
    end
    object A_TpAddActTs: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1058#1055' '#1074' '#1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103' '#1058#1057
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1058#1055' '#1074' '#1040#1082#1090' '#1074#1079#1074#1077#1096#1080#1074#1072#1085#1080#1103' '#1058#1057
      ImageIndex = 3
      OnExecute = A_TpAddActTsExecute
      OnUpdate = A_TpAddActTsUpdate
    end
  end
  object PopMn_Act: TPopupMenu
    Left = 648
    Top = 120
    object N111111: TMenuItem
      Action = AddActTS_A
    end
    object N2222221: TMenuItem
      Action = AddActTP_A
    end
  end
  object PopMn_TP: TPopupMenu
    Images = Main_F.ImL_16
    Left = 200
    Top = 120
    object N1: TMenuItem
      Action = A_TpAddActTs
    end
  end
  object PropStorageEh1: TPropStorageEh
    StorageManager = RegPropStorageManEh1
    StoredProps.Strings = (
      '<P>.Height'
      '<P>.Left'
      '<P>.PixelsPerInch'
      '<P>.Top'
      '<P>.Width'
      'CategoryPanelGroup1.CP_Acts.Grid_Act.<P>.Columns.ColumnsIndex'
      
        'CategoryPanelGroup1.CP_Acts.Grid_Act.<P>.Columns.<ForAllItems>.W' +
        'idth'
      'CategoryPanelGroup1.CP_TP.Grid_Tp_ToCBX.<P>.Columns.ColumnsIndex'
      
        'CategoryPanelGroup1.CP_TP.Grid_Tp_ToCBX.<P>.Columns.<ForAllItems' +
        '>.Width')
    Left = 288
    Top = 152
  end
  object RegPropStorageManEh1: TRegPropStorageManEh
    Left = 344
    Top = 152
  end
end
