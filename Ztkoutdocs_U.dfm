object ZTKOutDocs_F: TZTKOutDocs_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099' '#1074#1099#1087#1091#1089#1082#1072' '#1047#1058#1050
  ClientHeight = 292
  ClientWidth = 665
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
  object Grid_OutDocs: TDBGridEh
    Left = 0
    Top = 0
    Width = 665
    Height = 292
    Align = alClient
    DataSource = Ds_ztkoutdocs
    DynProps = <>
    Flat = True
    FooterParams.Color = clWindow
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopMn1
    ReadOnly = True
    RowLines = 2
    TabOrder = 0
    TitleParams.PopupMenu = PopMn1
    TitleParams.RowLines = 2
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TYPE_DOC'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        Width = 66
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        Width = 145
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NDOC'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        Width = 278
      end
      item
        CellButtons = <>
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
  object Qry_ztkoutdocs: TIBQuery
    Database = DM.DB
    Transaction = DM.IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DM.DS_TP
    ParamCheck = True
    SQL.Strings = (
      'select a.*  from OUT_DOCS  a'
      'where a.id_tp = :id'
      '')
    Left = 368
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object Ds_ztkoutdocs: TDataSource
    DataSet = Qry_ztkoutdocs
    Left = 408
    Top = 216
  end
  object ActionManager1: TActionManager
    Left = 88
    Top = 80
    StyleName = 'Platform Default'
    object A_DocoutAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      OnExecute = A_DocoutAddExecute
    end
    object A_DocOutEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      OnExecute = A_DocOutEditExecute
    end
    object A_DocOutDel: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      OnExecute = A_DocOutDelExecute
    end
  end
  object PopMn1: TPopupMenu
    Images = Main_F.ImL_16
    Left = 216
    Top = 128
    object N1: TMenuItem
      Action = A_DocoutAdd
      ImageIndex = 2
    end
    object N2: TMenuItem
      Action = A_DocOutEdit
      ImageIndex = 7
    end
    object N3: TMenuItem
      Action = A_DocOutDel
      ImageIndex = 8
    end
  end
end
