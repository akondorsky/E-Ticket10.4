object PZTKLog_F: TPZTKLog_F
  Left = 0
  Top = 0
  Caption = #1046#1091#1088#1085#1072#1083' '#1055#1047#1058#1050
  ClientHeight = 525
  ClientWidth = 1265
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Splitter1: TSplitter
    Left = 169
    Top = 0
    Height = 506
    ExplicitLeft = 288
    ExplicitTop = 176
    ExplicitHeight = 100
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 169
    Height = 506
    Align = alLeft
    TabOrder = 0
    object CPG1: TCategoryPanelGroup
      Left = 1
      Top = 1
      Height = 504
      VertScrollBar.Tracking = True
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      TabOrder = 0
      object CP2: TCategoryPanel
        Top = 105
        Height = 288
        Caption = #1055#1086#1080#1089#1082' '
        TabOrder = 0
        object Label1: TLabel
          Left = 5
          Top = 15
          Width = 82
          Height = 14
          Caption = #1057#1090#1088#1086#1082#1072' '#1087#1086#1080#1089#1082#1072
        end
        object E_Find: TButtonedEdit
          Left = 5
          Top = 33
          Width = 153
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
        object Rg1: TRadioGroup
          Left = 6
          Top = 63
          Width = 153
          Height = 74
          Caption = #1050#1088#1080#1090#1077#1088#1080#1081' '#1087#1086#1080#1089#1082#1072
          ItemIndex = 0
          Items.Strings = (
            #1055#1086' '#1085#1086#1084#1077#1088#1091' '#1050#1058
            #1055#1086' '#1085#1086#1084#1077#1088#1091' '#1058#1057)
          TabOrder = 1
          OnClick = Rg1Click
        end
      end
      object CP1: TCategoryPanel
        Top = 0
        Height = 105
        Caption = #1054#1090#1073#1086#1088' '#1076#1072#1085#1085#1099#1093' '#1087#1086' '#1076#1072#1090#1072#1084
        TabOrder = 1
        ExplicitWidth = 185
        object Label2: TLabel
          Left = 114
          Top = 13
          Width = 30
          Height = 14
          Caption = '< - >'
        end
        object SetWorkInterval_Btn: TSpeedButton
          Left = 117
          Top = 37
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
        object WorkDate2: TDateTimePicker
          Left = 11
          Top = 38
          Width = 97
          Height = 22
          Date = 41194.682817766200000000
          Time = 41194.682817766200000000
          TabOrder = 0
        end
        object WorkDate1: TDateTimePicker
          Left = 11
          Top = 10
          Width = 97
          Height = 22
          Date = 41194.682716203700000000
          Time = 41194.682716203700000000
          TabOrder = 1
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 506
    Width = 1265
    Height = 19
    Panels = <>
  end
  object Panel2: TPanel
    Left = 172
    Top = 0
    Width = 1093
    Height = 506
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 2
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1091
      Height = 351
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 0
      object DBGridEh1: TDBGridEh
        Left = 1
        Top = 1
        Width = 1089
        Height = 349
        Align = alClient
        DataSource = DM.DS_Pztk
        DynProps = <>
        Flat = True
        FooterParams.Color = clWindow
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghExtendVertLines]
        PopupMenu = PopLog
        ReadOnly = True
        RowLines = 2
        TabOrder = 0
        TitleParams.RowLines = 2
        Columns = <
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'N_TICKET'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1090#1072#1083#1086#1085#1072
            Width = 60
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'DT_IS'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1072#1090#1072', '#1074#1088#1077#1084#1103
            Width = 73
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'N_TS'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1058#1057
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'N_TRAILER'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1087#1088#1080#1094#1077#1087#1072
            Width = 93
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'MARKA'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1052#1072#1088#1082#1072' '#1058#1057
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'CUST_PROC'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1058#1072#1084'. '#1088#1077#1078#1080#1084
            Width = 90
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'OWNER'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1077#1088#1077#1074#1086#1079#1095#1080#1082#1072
            Width = 237
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'POP'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1103' '#1086' '#1087#1088#1080#1073#1099#1090#1080#1080
            Width = 151
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'CUST_USER'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1060#1048#1054' '#1080#1085#1089#1087#1077#1082#1090#1086#1088#1072
            Width = 82
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'OUT_PZTK'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1072#1090#1072', '#1074#1088#1077#1084#1103' '#1074#1099#1077#1079#1076#1072
            Width = 77
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 352
      Width = 1091
      Height = 153
      Align = alBottom
      Caption = 'Panel4'
      TabOrder = 1
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 416
        Height = 151
        Align = alLeft
        Caption = #1058#1086#1074#1072#1088#1086'-'#1090#1088#1072#1085#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
        TabOrder = 0
        object Grid_Ttn: TDBGridEh
          Left = 2
          Top = 16
          Width = 412
          Height = 133
          Align = alClient
          DataSource = DM.Ds_TtnIn
          DynProps = <>
          Flat = True
          FooterParams.Color = clWindow
          IndicatorOptions = [gioShowRowIndicatorEh]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = PopTtn
          ReadOnly = True
          TabOrder = 0
          Columns = <
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'NDOC'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #8470' '#1058#1058#1053
              Width = 198
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'DDOC'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1044#1072#1090#1072' '#1058#1058#1053
              Width = 155
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 417
        Top = 1
        Width = 673
        Height = 151
        Align = alClient
        Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1076#1083#1103' '#1074#1099#1087#1091#1089#1082#1072
        TabOrder = 1
        object Grid_OutDocs: TDBGridEh
          Left = 2
          Top = 16
          Width = 669
          Height = 133
          Align = alClient
          DataSource = DM.DS_PztkOutDocs
          DynProps = <>
          Flat = True
          FooterParams.Color = clWindow
          IndicatorOptions = [gioShowRowIndicatorEh]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          Columns = <
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'NAME'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
              Width = 333
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'NDOC'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
              Width = 163
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'DDOC'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
              Width = 133
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
  end
  object ActionManager1: TActionManager
    Images = Main_F.ImL_16
    Left = 216
    Top = 48
    StyleName = 'Platform Default'
    object A_TtnAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1058#1058#1053
      ImageIndex = 2
      OnExecute = A_TtnAddExecute
      OnUpdate = A_TtnAddUpdate
    end
    object A_TtnEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1058#1058#1053
      ImageIndex = 7
      OnExecute = A_TtnEditExecute
      OnUpdate = A_TtnEditUpdate
    end
    object A_TtnDel: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1058#1058#1053
      ImageIndex = 8
      OnExecute = A_TtnDelExecute
      OnUpdate = A_TtnDelUpdate
    end
    object A_Pop: TAction
      Caption = #1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077' '#1086' '#1087#1088#1080#1073#1099#1090#1080#1080
      ImageIndex = 7
      OnExecute = A_PopExecute
      OnUpdate = A_PopUpdate
    end
    object A_OutDocAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 2
      OnExecute = A_OutDocAddExecute
      OnUpdate = A_OutDocAddUpdate
    end
    object A_OutDocEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 7
      OnExecute = A_OutDocEditExecute
      OnUpdate = A_OutDocEditUpdate
    end
    object A_OutDocDel: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 8
      OnExecute = A_OutDocDelExecute
      OnUpdate = A_OutDocDelUpdate
    end
    object A_PrintLog: TAction
      Caption = #1055#1077#1095#1072#1090#1072#1090#1100' '#1078#1091#1088#1085#1072#1083
      ImageIndex = 20
      OnExecute = A_PrintLogExecute
      OnUpdate = A_PrintLogUpdate
    end
  end
  object PopTtn: TPopupMenu
    Images = Main_F.ImL_16
    Left = 200
    Top = 432
    object N1: TMenuItem
      Action = A_TtnAdd
    end
    object N2: TMenuItem
      Action = A_TtnEdit
    end
    object N3: TMenuItem
      Action = A_TtnDel
    end
  end
  object PopLog: TPopupMenu
    Images = Main_F.ImL_16
    Left = 272
    Top = 48
    object N4: TMenuItem
      Action = A_Pop
    end
    object N8: TMenuItem
      Action = A_PrintLog
    end
  end
  object RegPropStorageManEh1: TRegPropStorageManEh
    Left = 608
    Top = 216
  end
  object PropStorageEh1: TPropStorageEh
    StorageManager = RegPropStorageManEh1
    StoredProps.Strings = (
      'Panel2.Panel3.DBGridEh1.<P>.Columns.<ForAllItems>.Width')
    Left = 520
    Top = 216
  end
  object PopDocs: TPopupMenu
    Images = Main_F.ImL_16
    Left = 616
    Top = 424
    object N5: TMenuItem
      Action = A_OutDocAdd
    end
    object N6: TMenuItem
      Action = A_OutDocEdit
    end
    object N7: TMenuItem
      Action = A_OutDocDel
    end
  end
end
