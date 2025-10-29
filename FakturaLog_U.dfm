object FakturaLog_F: TFakturaLog_F
  Left = 0
  Top = 0
  Caption = #1046#1091#1088#1085#1072#1083' '#1089#1095#1077#1090#1086#1074'-'#1092#1072#1082#1090#1091#1088
  ClientHeight = 579
  ClientWidth = 1282
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 185
    Top = 26
    Height = 553
    ExplicitTop = -108
    ExplicitHeight = 543
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1282
    Height = 26
    Caption = 'ToolBar1'
    DrawingStyle = dsGradient
    Images = Main_F.ImL_16
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Action = A_AddFhead
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 0
      Action = A_PlatChange
    end
    object ToolButton3: TToolButton
      Left = 46
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 24
      Style = tbsSeparator
    end
    object ToolButton4: TToolButton
      Left = 54
      Top = 0
      Action = A_FakturaPrint
    end
    object ToolButton5: TToolButton
      Left = 77
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 21
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 85
      Top = 0
      Action = A_FakturaPass
    end
    object ToolButton8: TToolButton
      Left = 108
      Top = 0
      Action = A_fakturaCancel
    end
    object ToolButton10: TToolButton
      Left = 131
      Top = 0
      Width = 8
      Caption = 'ToolButton10'
      ImageIndex = 23
      Style = tbsSeparator
    end
    object ToolButton12: TToolButton
      Left = 139
      Top = 0
      Action = A_FHeadDel
    end
    object ToolButton13: TToolButton
      Left = 162
      Top = 0
      Width = 8
      Caption = 'ToolButton13'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object ToolBtn_NewFiskalBill: TToolButton
      Left = 170
      Top = 0
      Action = A_NewFiscallbill
    end
    object TB_ShowItemsEdited: TToolButton
      Left = 193
      Top = 0
      Enabled = False
      ImageIndex = 6
      ParentShowHint = False
      ShowHint = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 26
    Width = 185
    Height = 553
    Align = alLeft
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 75
      Height = 13
      Caption = #1057#1090#1088#1086#1082#1072' '#1087#1086#1080#1089#1082#1072
    end
    object Label2: TLabel
      Left = 109
      Top = 247
      Width = 26
      Height = 13
      Caption = '< - >'
    end
    object Label3: TLabel
      Left = 9
      Top = 225
      Width = 71
      Height = 13
      Caption = #1044#1080#1072#1087#1072#1079#1086#1085' '#1076#1072#1090
    end
    object SetWorkInterval_Btn: TSpeedButton
      Left = 111
      Top = 272
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00317A36002D753200FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF003985400037833D00317B37002E763300FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0042924900408E470054A35C004F9F5700327C38002E773400FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF004B9E5300499A51005BAC640077CA820074C87E0051A05900337D39002F78
        3500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0053A9
        5C0051A65A0063B56D007ECE89007BCC870076CA810076C9810052A25A00347E
        3A0030793500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF005AB4650059B0
        63006BBD760084D290007AC9850060B26A0063B46D0078C9830078CB820053A3
        5C00347F3A00317A3600FF00FF00FF00FF00FF00FF00FF00FF005EB969005BB5
        660079C9860080CE8D0051A65A004DA15600499C51005CAD67007CCC860079CB
        850054A45D0035803B00317B3700FF00FF00FF00FF00FF00FF00FF00FF005FBA
        6A005CB666006DC0790055AC5F00FF00FF00FF00FF004A9D52005EAE68007DCD
        89007CCD870056A55F0036813C00327C3800FF00FF00FF00FF00FF00FF00FF00
        FF005FBB6A005CB76700FF00FF00FF00FF00FF00FF00FF00FF004B9E53005FAF
        69007FCE8A007ECE890057A6600037823D00337D3900FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004B9F
        540060B06A0081CF8D007FCF8B0058A7610039854000347E3A00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF004CA0550062B26C0082D18F007AC8850057A6600038843F00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF004DA1560063B36D005FAF690041914900FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF004EA257004A9D5200FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      OnClick = SetWorkInterval_BtnClick
    end
    object Rg1: TRadioGroup
      Left = 8
      Top = 60
      Width = 171
      Height = 73
      Caption = #1050#1088#1080#1090#1077#1088#1080#1081' '#1087#1086#1080#1089#1082#1072
      ItemIndex = 0
      Items.Strings = (
        #1055#1086' '#1085#1086#1084#1077#1088#1091' '
        #1055#1086' '#1087#1086#1083#1091#1095#1072#1090#1077#1083#1102
        #1055#1086' '#1087#1083#1072#1090#1077#1083#1100#1097#1080#1082#1091)
      TabOrder = 0
      OnClick = Rg1Click
    end
    object Rg2: TRadioGroup
      Left = 8
      Top = 139
      Width = 171
      Height = 82
      Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100
      ItemIndex = 0
      Items.Strings = (
        #1055#1088#1086#1074#1077#1076#1077#1085#1085#1099#1077
        #1053#1077#1087#1088#1086#1074#1077#1076#1077#1085#1085#1099#1077
        #1059#1076#1072#1083#1077#1085#1085#1099#1077
        #1042#1089#1077)
      TabOrder = 1
    end
    object E_Find: TButtonedEdit
      Left = 8
      Top = 30
      Width = 171
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Images = Main_F.ImL_Buttons16
      MaxLength = 8
      NumbersOnly = True
      ParentFont = False
      RightButton.ImageIndex = 2
      RightButton.Visible = True
      TabOrder = 2
      OnKeyPress = E_FindKeyPress
      OnRightButtonClick = E_FindRightButtonClick
    end
    object WorkDate1: TDateTimePicker
      Left = 8
      Top = 244
      Width = 97
      Height = 22
      Date = 41194.000000000000000000
      Time = 0.682716203700692900
      TabOrder = 3
    end
    object WorkDate2: TDateTimePicker
      Left = 9
      Top = 272
      Width = 97
      Height = 22
      Date = 41194.000000000000000000
      Time = 0.682817766202788300
      TabOrder = 4
    end
    object Ch1: TCheckBox
      Left = 9
      Top = 299
      Width = 171
      Height = 17
      Caption = #1059#1095#1080#1090#1099#1074#1072#1090#1100' '#1076#1072#1090#1091' '#1074' '#1087#1086#1080#1089#1082#1077
      TabOrder = 5
    end
    object Btn_EditLog: TButton
      Left = 9
      Top = 322
      Width = 154
      Height = 25
      Caption = #1046#1091#1088#1085#1072#1083' '#1080#1079#1084#1077#1085#1077#1085#1080#1081
      Enabled = False
      TabOrder = 6
      Visible = False
      OnClick = Btn_EditLogClick
    end
  end
  object Panel2: TPanel
    Left = 188
    Top = 26
    Width = 1094
    Height = 553
    Align = alClient
    TabOrder = 2
    object Splitter2: TSplitter
      Left = 1
      Top = 177
      Width = 1092
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 201
      ExplicitWidth = 341
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1092
      Height = 176
      Align = alTop
      Caption = 'Panel3'
      TabOrder = 0
      object Grid_FHead: TDBGridEh
        Left = 1
        Top = 1
        Width = 1090
        Height = 174
        Align = alClient
        DataSource = DM.DS_FheadLog
        DynProps = <>
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterParams.Color = clYellow
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghShowRecNo, dghColumnResize, dghExtendVertLines]
        ParentFont = False
        ReadOnly = True
        SelectionDrawParams.SelectionStyle = gsdsClassicEh
        TabOrder = 0
        TitleParams.RowLines = 2
        OnDrawColumnCell = Grid_FHeadDrawColumnCell
        Columns = <
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NOMER'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1086#1084#1077#1088' '#1089'-'#1092
            Width = 72
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DATA_F'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1072#1090#1072
            Width = 83
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'POLUCH'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100' '#1075#1088#1091#1079#1072
            Width = 195
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PLAT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1055#1083#1072#1090#1077#1083#1100#1097#1080#1082
            Width = 183
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DISC_PLAT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1082#1080#1076#1082#1072', % '
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'HOLDING'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1061#1086#1083#1076#1080#1085#1075
            Width = 202
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DISC_HOLD'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1082#1080#1076#1082#1072' '#1093#1086#1083#1076#1080#1085#1075#1072' %'
            Width = 77
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'USER_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1086#1079#1076#1072#1083
            Width = 134
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SALDO'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1072#1083#1100#1076#1086
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CREDIT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1088#1077#1076#1080#1090
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CREDIT_REST'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1082#1088#1077#1076#1080#1090#1072
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 180
      Width = 1092
      Height = 372
      Align = alClient
      Caption = 'Panel4'
      TabOrder = 1
      object Grid_FItems: TDBGridEh
        Left = 1
        Top = 27
        Width = 1090
        Height = 246
        Align = alClient
        AutoFitColWidths = True
        DataSource = DM.Ds_FItemsLog
        DynProps = <>
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterRowCount = 1
        FooterParams.Color = clPurple
        FooterParams.Font.Charset = DEFAULT_CHARSET
        FooterParams.Font.Color = clWhite
        FooterParams.Font.Height = -13
        FooterParams.Font.Name = 'Tahoma'
        FooterParams.Font.Style = []
        FooterParams.ParentFont = False
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghAutoFitRowHeight, dghExtendVertLines]
        ParentFont = False
        RowHeight = 1
        RowLines = 2
        SelectionDrawParams.SelectionStyle = gsdsClassicEh
        SumList.Active = True
        TabOrder = 0
        TitleParams.RowLines = 2
        Columns = <
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NPP_STR'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1087'/'#1087
            Width = 38
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'USLUGA'
            Footers = <
              item
                Alignment = taRightJustify
                FieldName = 'USLUGA'
                Value = #1048#1090#1086#1075#1086' '#1082' '#1086#1087#1083#1072#1090#1077':'
                ValueType = fvtStaticText
              end>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
            Width = 511
          end
          item
            CellButtons = <>
            Checkboxes = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'TS_FLAG'
            Footers = <>
            ImageList = Main_F.ImL_Check
            KeyList.Strings = (
              '1')
            Title.Alignment = taCenter
            Title.Caption = #1059#1089#1083#1091#1075#1072' '#1058#1057
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TOTAL_SUM'
            Footers = <
              item
                Alignment = taRightJustify
                FieldName = 'TOTAL_SUM'
                ValueType = fvtSum
              end>
            Title.Alignment = taCenter
            Title.Caption = #1057#1091#1084#1084#1072' '#1082' '#1086#1087#1083#1072#1090#1077
            Width = 85
          end
          item
            Alignment = taRightJustify
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'STOIM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1087#1086' '#1087#1088#1072#1081#1089#1091
            Width = 68
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KOL'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1083'-'#1074#1086
            Width = 45
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DISCOUNT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1082#1080#1076#1082#1072' %'
          end
          item
            Alignment = taRightJustify
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SUM_VAT'
            Footers = <
              item
                Alignment = taRightJustify
                FieldName = 'SUM_VAT'
                ValueType = fvtSum
              end>
            Title.Alignment = taCenter
            Title.Caption = #1057#1091#1084#1084#1072' '#1053#1044#1057
            Width = 52
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'VAT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1090#1072#1074#1082#1072' '#1053#1044#1057
            Width = 45
          end
          item
            Alignment = taRightJustify
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SUMMA'
            Footers = <
              item
                Alignment = taRightJustify
                FieldName = 'SUMMA'
                ValueType = fvtSum
              end>
            Title.Alignment = taCenter
            Title.Caption = #1057#1091#1084#1084#1072' '#1073#1077#1079' '#1053#1044#1057
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'USERNAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
            Width = 85
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object ToolBar3: TToolBar
        Left = 1
        Top = 1
        Width = 1090
        Height = 26
        ButtonHeight = 25
        ButtonWidth = 25
        Caption = 'ToolBar3'
        DrawingStyle = dsGradient
        Images = Main_F.ImL_16
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        object ToolButton7: TToolButton
          Left = 0
          Top = 0
          Action = A_FItemAdd
        end
        object ToolButton9: TToolButton
          Left = 25
          Top = 0
          Action = A_FItemEdit
        end
        object ToolButton11: TToolButton
          Left = 50
          Top = 0
          Action = A_FItemDel
        end
      end
      object Grid_Parts: TDBGridEh
        Left = 1
        Top = 273
        Width = 1090
        Height = 98
        Align = alBottom
        DataSource = DM.Ds_TicketForFakturaLog
        DynProps = <>
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        RowLines = 2
        TabOrder = 2
        TitleParams.RowLines = 2
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PART_NOMER'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1050#1058
            Width = 136
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DT_IS'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1072#1090#1072','#1074#1088#1077#1084#1103' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1050#1058
            Width = 208
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object ActionManager1: TActionManager
    Images = Main_F.ImL_16
    Left = 224
    Top = 64
    StyleName = 'Platform Default'
    object A_AddFhead: TAction
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1091
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1091
      ImageIndex = 2
      OnExecute = A_AddFheadExecute
    end
    object A_FakturaPrint: TAction
      Caption = #1055#1077#1095#1072#1090#1072#1090#1100' '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1091','#1072#1082#1090' '#1088#1072#1073#1086#1090
      Enabled = False
      Hint = #1055#1077#1095#1072#1090#1072#1090#1100' '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1091','#1072#1082#1090' '#1088#1072#1073#1086#1090
      ImageIndex = 20
      OnExecute = A_FakturaPrintExecute
      OnUpdate = A_FakturaPrintUpdate
    end
    object A_FItemAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1091#1089#1083#1091#1075#1091
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1091#1089#1083#1091#1075#1091
      ImageIndex = 2
      OnExecute = A_FItemAddExecute
      OnUpdate = A_FItemAddUpdate
    end
    object A_FItemEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1091#1089#1083#1091#1075#1091
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1091#1089#1083#1091#1075#1091
      ImageIndex = 7
      OnExecute = A_FItemEditExecute
      OnUpdate = A_FItemEditUpdate
    end
    object A_FItemDel: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1091#1089#1083#1091#1075#1091
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1091#1089#1083#1091#1075#1091
      ImageIndex = 8
      OnExecute = A_FItemDelExecute
      OnUpdate = A_FItemDelUpdate
    end
    object A_PlatChange: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1087#1083#1072#1090#1077#1083#1100#1097#1080#1082#1072
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1087#1083#1072#1090#1077#1083#1100#1097#1080#1082#1072
      ImageIndex = 23
      OnExecute = A_PlatChangeExecute
      OnUpdate = A_PlatChangeUpdate
    end
    object A_FakturaPass: TAction
      Caption = #1055#1088#1086#1074#1077#1089#1090#1080' '#1089'-'#1092
      Hint = #1055#1088#1086#1074#1077#1089#1090#1080' '#1089'-'#1092
      ImageIndex = 21
      OnExecute = A_FakturaPassExecute
      OnUpdate = A_FakturaPassUpdate
    end
    object A_fakturaCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1089'-'#1092
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1089'-'#1092
      ImageIndex = 22
      OnExecute = A_fakturaCancelExecute
      OnUpdate = A_fakturaCancelUpdate
    end
    object A_FHeadDel: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1091
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1091
      ImageIndex = 8
      OnExecute = A_FHeadDelExecute
      OnUpdate = A_FHeadDelUpdate
    end
    object A_NewFiscallbill: TAction
      Caption = #1055#1088#1086#1073#1080#1090#1100' '#1095#1077#1082' '#1087#1086' '#1082#1072#1089#1089#1077
      ImageIndex = 25
      OnExecute = A_NewFiscallbillExecute
    end
  end
  object PropStorageEh1: TPropStorageEh
    StorageManager = RegPropStorageManEh1
    StoredProps.Strings = (
      'Panel2.Panel3.Grid_FHead.<P>.Columns.ColumnsIndex'
      'Panel2.Panel3.Grid_FHead.<P>.Columns.<ForAllItems>.Width'
      'Panel2.Panel4.Grid_FItems.<P>.Columns.ColumnsIndex'
      'Panel2.Panel4.Grid_FItems.<P>.Columns.<ForAllItems>.Width')
    Left = 341
    Top = 91
  end
  object RegPropStorageManEh1: TRegPropStorageManEh
    Left = 413
    Top = 91
  end
end
