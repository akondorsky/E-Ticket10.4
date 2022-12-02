object TsIn_F: TTsIn_F
  Left = 0
  Top = 0
  Caption = #1046#1091#1088#1085#1072#1083' '#1074#1098#1077#1079#1076#1072' '#1058#1057
  ClientHeight = 525
  ClientWidth = 1249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Splitter1: TSplitter
    Left = 193
    Top = 0
    Height = 506
    ExplicitLeft = 288
    ExplicitTop = 176
    ExplicitHeight = 100
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 193
    Height = 506
    Align = alLeft
    TabOrder = 0
    object CPG1: TCategoryPanelGroup
      Left = 1
      Top = 1
      Width = 234
      Height = 504
      VertScrollBar.Tracking = True
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      TabOrder = 0
      object CP2: TCategoryPanel
        Top = 157
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
          Height = 106
          Caption = #1050#1088#1080#1090#1077#1088#1080#1081' '#1087#1086#1080#1089#1082#1072
          ItemIndex = 0
          Items.Strings = (
            #1055#1086' '#1085#1086#1084#1077#1088#1091' '#1050#1058
            #1055#1086' '#1085#1086#1084#1077#1088#1091' '#1058#1057
            #1055#1086' '#1085#1086#1084#1077#1088#1091' '#1087#1088#1080#1094#1077#1087#1072)
          TabOrder = 1
          OnClick = Rg1Click
        end
      end
      object CP1: TCategoryPanel
        Top = 0
        Height = 157
        Caption = #1054#1090#1073#1086#1088' '#1076#1072#1085#1085#1099#1093' '#1087#1086' '#1076#1072#1090#1072#1084
        TabOrder = 1
        object Label2: TLabel
          Left = 157
          Top = 11
          Width = 30
          Height = 14
          Caption = '< - >'
        end
        object SetWorkInterval_Btn: TSpeedButton
          Left = 157
          Top = 35
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
        object WorkDate1: TDBDateTimeEditEh
          Left = 8
          Top = 8
          Width = 143
          Height = 20
          DynProps = <>
          EditButtons = <>
          Flat = True
          Kind = dtkDateTimeEh
          TabOrder = 0
          Visible = True
        end
        object WorkDate2: TDBDateTimeEditEh
          Left = 8
          Top = 38
          Width = 143
          Height = 20
          DynProps = <>
          EditButtons = <>
          Flat = True
          Kind = dtkDateTimeEh
          TabOrder = 1
          Visible = True
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 506
    Width = 1249
    Height = 19
    Panels = <>
  end
  object Panel2: TPanel
    Left = 196
    Top = 0
    Width = 1053
    Height = 506
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 2
    object Grid_TsIn: TDBGridEh
      Left = 1
      Top = 1
      Width = 1051
      Height = 471
      Align = alClient
      DataSource = DM.Ds_GurTsIn
      DynProps = <>
      Flat = True
      FooterRowCount = 1
      FooterParams.Color = clWindow
      IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghExtendVertLines]
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
          Width = 111
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'N_TS'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #8470' '#1058#1057' '
          Width = 83
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
          DynProps = <>
          EditButtons = <>
          FieldName = 'COUNTRY_HUMAN'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1057#1090#1088#1072#1085#1072' '#1058#1057
          Width = 103
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'NUM_PARK'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1055#1072#1088#1082'. '#1047#1058#1050
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
          Width = 91
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'NAME1'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1062#1077#1083#1100' '#1074#1098#1077#1079#1076#1072
          Width = 109
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'NAME'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1058#1080#1087' '#1058#1057
          Width = 84
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'FIO_DRIVER'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1060#1048#1054' '#1074#1086#1076#1080#1090#1077#1083#1103
          Width = 108
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'PHONE'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1085#1090'. '#1090#1077#1083#1077#1092#1086#1085
          Width = 101
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'USERNAME'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1085#1085#1099#1077' '#1074#1085#1077#1089
          Width = 131
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 472
      Width = 1051
      Height = 33
      DataSource = DM.Ds_GurTsIn
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      Flat = True
      Hints.Strings = (
        #1042' '#1085#1072#1095#1072#1083#1086
        #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
        #1057#1083#1077#1076#1091#1102#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
        #1042' '#1082#1086#1085#1077#1094)
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
  object PropStorageEh1: TPropStorageEh
    StoredProps.Strings = (
      'Grid_TsIn.<P>.Columns.ColumnsIndex'
      'Grid_TsIn.<P>.Columns.<ForAllItems>.Width')
    Left = 336
    Top = 160
  end
  object RegPropStorageManEh1: TRegPropStorageManEh
    Left = 336
    Top = 224
  end
end
