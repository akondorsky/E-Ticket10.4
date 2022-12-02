object Pass_F: TPass_F
  Left = 672
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1055#1088#1086#1087#1091#1089#1082' '#1085#1072' '#1074#1099#1077#1079#1076' '#1058#1057' '#1089' '#1075#1088#1091#1079#1086#1084
  ClientHeight = 683
  ClientWidth = 716
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Lbl_KT: TLabel
    Left = 258
    Top = 72
    Width = 47
    Height = 19
    Caption = #1050#1058' '#8470
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 245
    Top = 122
    Width = 43
    Height = 16
    Caption = #1055#1088#1080#1094#1077#1087
  end
  object Label2: TLabel
    Left = 8
    Top = 118
    Width = 35
    Height = 16
    Caption = #8470' '#1058#1057
  end
  object Label3: TLabel
    Left = 511
    Top = 122
    Width = 81
    Height = 16
    Caption = #1055#1072#1088#1082#1086#1074#1082#1072' '#1047#1058#1050
  end
  object E_Trailer: TComboBox
    Left = 294
    Top = 119
    Width = 145
    Height = 24
    TabOrder = 2
  end
  object E_KT: TEdit
    Left = 318
    Top = 69
    Width = 121
    Height = 27
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    Text = 'E_KT'
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 264
    Width = 702
    Height = 380
    Caption = #1042#1099#1076#1077#1083#1080#1090#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099' '#1074#1099#1087#1091#1089#1082#1072
    TabOrder = 5
    object Grid_Docs: TDBGridEh
      Left = 2
      Top = 18
      Width = 698
      Height = 360
      Align = alClient
      DataSource = Ds_SelectDocs
      DynProps = <>
      Flat = True
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ReadOnly = True
      TabOrder = 0
      TitleParams.RowLines = 2
      OnDrawColumnCell = Grid_DocsDrawColumnCell
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TYPE_DOC'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1058#1080#1087' '#1076#1086#1082'.'
          Width = 43
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'NAME'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          Width = 113
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'NDOC'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          Width = 212
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DDOC'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          Width = 109
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ZAYV'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100' '#1075#1088#1091#1079#1072
          Width = 197
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 310
    Top = 650
    Width = 99
    Height = 25
    Action = A_PassCreate
    Caption = #1057#1086#1079#1076#1072#1090#1100
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
    TabOrder = 6
  end
  object Rg1: TRadioGroup
    Left = 254
    Top = 8
    Width = 185
    Height = 41
    Caption = #1058#1080#1087' '#1087#1088#1086#1087#1091#1089#1082#1072
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      #1058#1057
      #1055#1077#1096#1077#1093#1086#1076)
    TabOrder = 0
    OnClick = Rg1Click
  end
  object E_Ztk: TEdit
    Left = 605
    Top = 119
    Width = 49
    Height = 24
    ReadOnly = True
    TabOrder = 4
    Text = 'E_Ztk'
  end
  object E_Ts: TComboBox
    Left = 50
    Top = 115
    Width = 137
    Height = 24
    TabOrder = 1
  end
  object Gb_Dov: TGroupBox
    Left = 8
    Top = 149
    Width = 700
    Height = 109
    Caption = #1044#1086#1074#1077#1088#1077#1085#1085#1086#1089#1090#1100
    TabOrder = 7
    object Label4: TLabel
      Left = 16
      Top = 27
      Width = 15
      Height = 16
      Caption = #8470
    end
    object Label5: TLabel
      Left = 195
      Top = 27
      Width = 29
      Height = 16
      Caption = #1044#1072#1090#1072
    end
    object Label6: TLabel
      Left = 16
      Top = 67
      Width = 39
      Height = 16
      Caption = #1060'.'#1048'.'#1054'.'
    end
    object E_DDoc: TMaskEdit
      Left = 237
      Top = 22
      Width = 116
      Height = 24
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  .  .    '
    end
    object E_NDov: TEdit
      Left = 42
      Top = 24
      Width = 137
      Height = 24
      TabOrder = 0
    end
    object E_Fio: TEdit
      Left = 74
      Top = 64
      Width = 279
      Height = 24
      TabOrder = 2
    end
  end
  object Qry_SelectDocs: TIBQuery
    Database = DM.DB
    Transaction = DM.IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select type_doc,name,ndoc,ddoc,zayv'
      ' from'
      ' ('
      '    select a.type_doc,a.name,a.ndoc,a.ddoc, f.zayv'
      '    from do_outdocs a'
      '    left join wh_act_out b on a.id_actwh = b.id'
      '    left join wh_act_in c on b.id_actin = c.id'
      '    left join parties d on c.id_tp = d.id'
      '    left join ticket_parts e on d.id_part = e.id'
      '    left join reg_ti f on e.id_owner = f.id'
      '    where d.id_ticket = :p0'
      '    union all'
      '    select a.type_doc,a.name,a.ndoc,a.ddoc,f.zayv'
      '    from out_docs a'
      '    left join parties b on a.id_tp = b.id'
      '    left join ticket_parts e on b.id_part = e.id'
      '    left join reg_ti f on e.id_owner = f.id'
      '    where b.id_ticket = :p1'
      '   )'
      ' order by zayv')
    Left = 448
    Top = 362
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end>
  end
  object Ds_SelectDocs: TDataSource
    DataSet = Qry_SelectDocs
    Left = 272
    Top = 362
  end
  object ActionManager1: TActionManager
    Left = 360
    Top = 362
    StyleName = 'Platform Default'
    object A_PassCreate: TAction
      Caption = #1057#1086#1079#1076#1072#1090#1100
      OnExecute = A_PassCreateExecute
      OnUpdate = A_PassCreateUpdate
    end
  end
end
