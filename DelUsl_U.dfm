object DelUsl_F: TDelUsl_F
  Left = 0
  Top = 0
  Caption = #1059#1076#1072#1083#1077#1085#1085#1099#1077' '#1091#1089#1083#1091#1075#1080
  ClientHeight = 478
  ClientWidth = 1076
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1076
    Height = 478
    Align = alClient
    DataSource = DM.Ds_UslDel
    DynProps = <>
    Flat = True
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    RowLines = 2
    TabOrder = 0
    TitleParams.RowLines = 2
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USLUGA'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1059#1089#1083#1091#1075#1072
        Width = 398
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'KOL_USLUG'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1083'-'#1074#1086
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DT'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1044#1072#1090#1072' '#1091#1076#1072#1083#1077#1085#1080#1103
        Width = 125
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERNAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1059#1076#1072#1083#1080#1083' '#1091#1089#1083#1091#1075#1091
        Width = 131
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DT_ACTION'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1044#1072#1090#1072' '#1074#1085#1077#1089#1077#1085#1080#1103
        Width = 118
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USER_ENTER'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1042#1085#1077#1089' '#1091#1089#1083#1091#1075#1091
        Width = 152
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 272
    Top = 112
    object N1: TMenuItem
      Caption = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1091#1089#1083#1091#1075#1091
      OnClick = N1Click
    end
  end
end
