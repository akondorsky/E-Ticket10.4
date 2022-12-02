object FitemsEdited_F: TFitemsEdited_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1057#1087#1080#1089#1086#1082' '#1080#1079#1084#1077#1085#1077#1085#1085#1099#1093' '#1089#1095#1077#1090#1086#1074'-'#1092#1072#1082#1090#1091#1088
  ClientHeight = 817
  ClientWidth = 1429
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel_Top: TPanel
    Left = 0
    Top = 0
    Width = 1429
    Height = 33
    Align = alTop
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 222
      Top = 9
      Width = 33
      Height = 14
      Caption = '< - >'
    end
    object SetWorkInterval_Btn: TSpeedButton
      Left = 357
      Top = 5
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
    object Label3: TLabel
      Left = 16
      Top = 9
      Width = 99
      Height = 14
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1076#1072#1090#1099
    end
    object WorkDate2: TDateTimePicker
      Left = 257
      Top = 6
      Width = 97
      Height = 22
      Date = 41194.682817766200000000
      Time = 41194.682817766200000000
      TabOrder = 0
    end
    object WorkDate1: TDateTimePicker
      Left = 123
      Top = 6
      Width = 97
      Height = 22
      Date = 41194.682716203700000000
      Time = 41194.682716203700000000
      TabOrder = 1
    end
  end
  object Panel_Center: TPanel
    Left = 0
    Top = 33
    Width = 1429
    Height = 784
    Align = alClient
    Caption = 'Panel_Center'
    TabOrder = 1
    object Grid_Main: TDBGridEh
      Left = 1
      Top = 1
      Width = 1427
      Height = 782
      Align = alClient
      DataSource = DM.Ds_FItemsEdited
      DynProps = <>
      Flat = True
      IndicatorOptions = [gioShowRowIndicatorEh]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      RowLines = 2
      TabOrder = 0
      TitleParams.RowLines = 3
      Columns = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'DT'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072', '#1074#1088#1077#1084#1103
          Width = 86
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'FAKTURA_N'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #8470' '#1057#1095'-'#1092#1072#1082#1090#1091#1088#1099
          Width = 75
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'FAKTURA_DATE'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072' '#1089'-'#1092
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'N_TICKET'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #8470' '#1050#1058
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'SUM_DIF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1089#1091#1084#1084#1099
          Width = 77
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'TOTALSUM_NEW'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = '"'#1053#1086#1074#1072#1103'" '#1089#1091#1084#1084#1072
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'TOTALSUM_OLD'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = '"'#1057#1090#1072#1088#1072#1103'" '#1089#1091#1084#1084#1072
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'USER_NEW'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = '"'#1053#1086#1074#1099#1081'" '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'USER_OLD'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = '"'#1057#1090#1072#1088#1099#1081'" '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'STOIM_NEW'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = '"'#1053#1086#1074#1072#1103'" '#1089#1090#1086#1080#1084#1086#1089#1090#1100
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'STOIM_OLD'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = '"'#1057#1090#1072#1088#1072#1103'" '#1089#1090#1086#1080#1084#1086#1089#1090#1100
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'KOL_NEW'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = '"'#1053#1086#1074#1086#1077'" '#1082#1086#1083'-'#1074#1086
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'KOL_OLD'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = '"'#1057#1090#1072#1088#1086#1077'" '#1082#1086#1083'-'#1074#1086
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'DISCOUNT_NEW'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = '"'#1053#1086#1074#1072#1103'" '#1089#1082#1080#1076#1082#1072
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'DISCOUNT_OLD'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = '"'#1057#1090#1072#1088#1072#1103'" '#1089#1082#1080#1076#1082#1072
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'USLUGA'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
          Width = 309
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
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
      'Panel_Center.Grid_Main.<P>.Columns.ColumnsIndex'
      'Panel_Center.Grid_Main.<P>.Columns.<ForAllItems>.Width')
    Left = 872
    Top = 360
  end
  object RegPropStorageManEh1: TRegPropStorageManEh
    Left = 872
    Top = 424
  end
end
