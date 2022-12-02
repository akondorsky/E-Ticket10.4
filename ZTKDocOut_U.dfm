object ZtkOutDoc_F: TZtkOutDoc_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099' '#1074#1099#1087#1091#1089#1082#1072' '#1047#1058#1050'.'#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
  ClientHeight = 205
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    622
    205)
  PixelsPerInch = 96
  TextHeight = 16
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 175
    Width = 170
    Height = 25
    DataSource = Ds_out
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Flat = True
    TabOrder = 0
  end
  object Grid_Gtd: TDBGridEh
    Left = 0
    Top = 0
    Width = 622
    Height = 169
    Align = alTop
    DataSource = Ds_out
    DynProps = <>
    Flat = True
    FooterParams.Color = clWindow
    TabOrder = 1
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
        Width = 76
      end
      item
        AlwaysShowEditButton = True
        CellButtons = <>
        DropDownBox.ListSource = DM.DS_TDOC
        DropDownRows = 14
        DropDownShowTitles = True
        DropDownSizing = True
        DropDownSpecRow.CellsText = '<'#1050#1086#1076'>;<'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'>'
        DropDownSpecRow.Visible = True
        DropDownWidth = 300
        DynProps = <>
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'NAME'
        Footers = <>
        LookupDisplayFields = 'KOD;KRNAME'
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        Width = 186
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NDOC'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        Width = 215
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DDOC'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        Width = 110
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object BitBtn1: TBitBtn
    Left = 510
    Top = 175
    Width = 104
    Height = 25
    Anchors = [akTop, akRight]
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Default = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object Mt_out: TMemTableEh
    FieldDefs = <
      item
        Name = 'NAME'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NDOC'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DDOC'
        DataType = ftDate
      end
      item
        Name = 'TYPE_DOC'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 360
    Top = 112
    object Mt_outNDOC: TStringField
      FieldName = 'NDOC'
      Size = 50
    end
    object Mt_outDDOC: TDateField
      FieldName = 'DDOC'
    end
    object Mt_outNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'NAME'
      LookupDataSet = DM.Qry_TDOC
      LookupKeyFields = 'KOD'
      LookupResultField = 'KRNAME'
      KeyFields = 'TYPE_DOC'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object Mt_outTYPE_DOC: TStringField
      FieldName = 'TYPE_DOC'
      LookupDataSet = DM.Qry_TDOC
      LookupKeyFields = 'KOD'
      LookupResultField = 'KRNAME'
      KeyFields = 'TYPE_DOC'
      Size = 2
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object NAME: TMTStringDataFieldEh
          FieldName = 'NAME'
          StringDataType = fdtStringEh
          Size = 50
        end
        object NDOC: TMTStringDataFieldEh
          FieldName = 'NDOC'
          StringDataType = fdtStringEh
          Size = 50
        end
        object DDOC: TMTDateTimeDataFieldEh
          FieldName = 'DDOC'
          DateTimeDataType = fdtDateEh
        end
        object TYPE_DOC: TMTStringDataFieldEh
          FieldName = 'TYPE_DOC'
          StringDataType = fdtStringEh
          Size = 2
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object Ds_out: TDataSource
    DataSet = Mt_out
    Left = 320
    Top = 112
  end
end
