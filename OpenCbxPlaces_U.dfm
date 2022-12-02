object OpenCbxPlaces_F: TOpenCbxPlaces_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1054#1090#1082#1088#1099#1090#1099#1081' '#1057#1042#1061'. '
  ClientHeight = 413
  ClientWidth = 156
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Grid_Place: TDBGridEh
    Left = 0
    Top = 0
    Width = 156
    Height = 371
    Align = alTop
    DataSource = DM.Ds_OpenCbx
    DynProps = <>
    Flat = True
    FooterParams.Color = clWindow
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 0
    TitleParams.RowLines = 2
    OnDblClick = Grid_PlaceDblClick
    OnDrawColumnCell = Grid_PlaceDrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'NUM_PARK'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1086#1084#1077#1088' '#1084#1077#1089#1090#1072
        Width = 108
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Bt_Save: TBitBtn
    Left = 6
    Top = 381
    Width = 142
    Height = 25
    Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100' '#1074#1099#1073#1086#1088
    DoubleBuffered = True
    Kind = bkOK
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = Bt_SaveClick
  end
end
