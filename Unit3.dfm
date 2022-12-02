object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 395
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 8
    Top = 8
    Width = 417
    Height = 337
    DataGrouping.GroupLevels = <>
    DataSource = DataSource1
    Flat = True
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    IndicatorOptions = [gioShowRowIndicatorEh]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        DropDownBox.ColumnDefValues.EndEllipsis = True
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Width = 131
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object MemTableEh1: TMemTableEh
    Params = <>
    Left = 280
    Top = 200
    object MemTableEh1NAME: TStringField
      FieldName = 'NAME'
      LookupDataSet = DM.Qry_Docg44
      LookupKeyFields = 'KRNAME'
      LookupResultField = 'KRNAME'
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = MemTableEh1
    Left = 328
    Top = 200
  end
end
