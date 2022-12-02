object RegtiPlat_F: TRegtiPlat_F
  Left = 450
  Top = 226
  Hint = #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1086#1083#1091#1095#1072#1090#1077#1083#1103#13#10#1076#1074#1086#1081#1085#1099#1084' '#1082#1083#1080#1082#1086#1084
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1087#1080#1089#1086#1082' '#1087#1083#1072#1090#1077#1083#1100#1097#1080#1082#1086#1074
  ClientHeight = 402
  ClientWidth = 1195
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 24
    Width = 1195
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 1185
    object Label1: TLabel
      Left = 12
      Top = 0
      Width = 153
      Height = 16
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1089#1090#1088#1086#1082#1091' '#1087#1086#1080#1089#1082#1072
    end
    object E_Find: TButtonedEdit
      Left = 12
      Top = 19
      Width = 193
      Height = 24
      Hint = #1048#1089#1082#1072#1090#1100
      Images = Main_F.ImL_Buttons16
      LeftButton.ImageIndex = 2
      RightButton.ImageIndex = 2
      RightButton.Visible = True
      TabOrder = 0
      OnKeyPress = E_FindKeyPress
      OnRightButtonClick = E_FindRightButtonClick
    end
    object RG1: TRadioGroup
      Left = 211
      Top = 0
      Width = 185
      Height = 40
      Caption = #1048#1089#1082#1072#1090#1100' '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #1055#1086' '#1080#1084#1077#1085#1080
        #1055#1086' '#1048#1053#1053)
      TabOrder = 1
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1195
    Height = 24
    AutoSize = True
    ButtonHeight = 24
    ButtonWidth = 24
    Caption = 'ToolBar1'
    Images = Main_F.ImL_Buttons16
    TabOrder = 1
    ExplicitWidth = 1185
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077' '#1079#1072#1087#1080#1089#1080
      ImageIndex = 3
      OnClick = ToolButton1Click
    end
  end
  object Grid_firm: TDBGridEh
    Left = 0
    Top = 83
    Width = 1195
    Height = 319
    Align = alBottom
    DataSource = DS_RegtiPlat
    DynProps = <>
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    FooterParams.Color = clWindow
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ParentFont = False
    ReadOnly = True
    RowDetailPanel.Height = 150
    TabOrder = 2
    TitleParams.RowLines = 3
    OnDblClick = Grid_firmDblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VALID'
        Footers = <>
        ImageList = ImageList3
        KeyList.Strings = (
          'F')
        Title.Alignment = taCenter
        Title.Caption = #1057#1090#1072#1090#1091#1089
        Width = 48
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZAYV'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
        Width = 215
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'INN'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1048#1053#1053
        Width = 83
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DisplayFormat = '#0'
        DynProps = <>
        EditButtons = <>
        EditMask = '#0'
        FieldName = 'DISCOUNT'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1082#1080#1076#1082#1072' '#1082' '#1087#1088#1072#1081#1089'-'#1083#1080#1089#1090#1091' (%)'
        Width = 78
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
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1061#1086#1083#1076#1080#1085#1075
        Width = 154
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
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TELEFON'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
        Width = 76
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1076
        Width = 34
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'BUH_NOTE'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      end>
    object RowDetailData: TRowDetailPanelControlEh
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 396
        Width = 241
        Height = 92
        DataSource = DM.DS_Dogovors
        DynProps = <>
        Flat = True
        FooterParams.Color = clWindow
        TabOrder = 0
        TitleParams.RowLines = 2
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NUM_DOG'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1076#1086#1075#1086#1074#1086#1088#1072
            Width = 97
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'START_DOG'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1072#1090#1072' '#1076#1086#1075#1086#1074#1086#1088#1072
            Width = 104
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Grid_log: TDBGridEh
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Align = alClient
        Color = clSkyBlue
        DataSource = DM.DS_ReasDog
        DynProps = <>
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterParams.Color = clWindow
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleParams.RowLines = 2
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DT_ACTION'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103
            Width = 139
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACTION'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1077#1081#1089#1090#1074#1080#1077
            Width = 433
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'USERNAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
            Width = 175
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REASONS'
            Footers = <>
            Title.Caption = #1055#1088#1080#1095#1080#1085#1072
            Width = 552
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
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
      '<P>.Width')
    Left = 680
    Top = 200
  end
  object RegPropStorageManEh1: TRegPropStorageManEh
    Left = 672
    Top = 144
  end
  object ActionList1: TActionList
    Left = 544
    Top = 144
    object AllRec_RegTi1: TAction
      Caption = 'AllRec_RegTi1'
    end
  end
  object ImageList3: TImageList
    Left = 608
    Top = 8
    Bitmap = {
      494C010101008400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003941D600444BD900474FDA00434BD9004048D7003E47D800353ED500252E
      D200232BD2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004148
      D700636CE4008997FA008495FF007F90FC007D8EFA007D8DF7007D8BF2005159
      DD00222AD1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004E56DA006C75
      E40096A5FA005A74FF003250FF00304FFF002C49FE002542FA004860F9008694
      F4005159DD00252ED10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005E65DE007981E7009FAD
      FB006781FF00405EFF00405EFF003C59FF003755FF003350FF002846FD004A65
      FD008996F600545EDE002C34D400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007178E300A2B2FC00738F
      FF004F70FF004F6EFF004B69FF004664FF00415EFF003C5AFF003755FF002C4B
      FF004E67FF008493FA004048D800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007D84E500A6BBFF005F7F
      FF005F7EFF005A79FF005573FF00506EFF004B69FF004664FF00415EFF003B59
      FF00314FFF008799FF004D55DB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000858AE600ABBEFF006D8D
      FF006989FF006583FF005F7EFF005A79FF005574FF00506FFF004B69FF004663
      FF003F5CFF008A9BFF00535BDC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008B91E700B1C4FF007698
      FF007393FF006E8EFF006989FF006583FF005F7EFF005A79FF005573FF004F6E
      FF004867FF0090A1FF005A62DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009298E900B8CDFF007DA0
      FF007C9DFF007899FF007393FF006E8EFF006989FF006583FF00607EFF005978
      FF004F70FF0098AAFF00636AE000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000959AEA00BCCDFC009CBB
      FF0081A5FF0081A2FF007C9EFF007899FF007493FF006F8EFF006989FF006080
      FF007893FF009EADFB00656CE000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009297E800A5ACEF00C1D1
      FC00A0BFFF0086AAFF0085A7FF0081A2FF007C9DFF007898FF006F90FF0085A1
      FF00ACBAFB00838BE8006369DF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009396E800A6AD
      EE00C4D4FC00A3C2FF008BAFFF0089ABFF0084A7FF007EA0FF0091AEFF00B4C3
      FB008C93EA006D71E00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009498
      E800A9B1F000C2D3FC00C1D6FF00BDD1FF00BBCFFF00B9CEFF00B7C8FC00989F
      ED00797EE2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999DEA009EA3EB00A0A5EC009DA2EB009BA0EB00989EEA009297E900868B
      E6008388E5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000F007000000000000
      E007000000000000C00300000000000080010000000000008001000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      80010000000000008001000000000000C003000000000000E007000000000000
      F007000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
  object DS_RegtiPlat: TDataSource
    DataSet = Qry_RegtiPlat
    Left = 712
    Top = 296
  end
  object Qry_RegtiPlat: TIBQuery
    Database = DM.DB
    Transaction = DM.IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 552
    Top = 296
  end
end
