object ActWhOut_F: TActWhOut_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1040#1082#1090' '#1074#1099#1076#1072#1095#1080' '#1075#1088#1091#1079#1072' '#1089#1086' '#1089#1082#1083#1072#1076#1072
  ClientHeight = 661
  ClientWidth = 386
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 11
    Top = 8
    Width = 202
    Height = 16
    Caption = #8470' '#1089#1082#1083#1072#1076#1089#1082#1086#1075#1086' '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 8
    Top = 159
    Width = 72
    Height = 16
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
  end
  object E_NSvid: TEdit
    Left = 221
    Top = 6
    Width = 103
    Height = 24
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 73
    Width = 369
    Height = 83
    Caption = #1042#1099#1076#1072#1085#1086
    TabOrder = 2
    object Label7: TLabel
      Left = 118
      Top = 22
      Width = 29
      Height = 16
      Caption = #1052#1077#1089#1090
    end
    object Label6: TLabel
      Left = 108
      Top = 51
      Width = 39
      Height = 16
      Caption = #1042#1077#1089', '#1082#1075
    end
    object E_NPlFact: TEdit
      Left = 156
      Top = 19
      Width = 49
      Height = 24
      Alignment = taCenter
      NumbersOnly = True
      TabOrder = 0
    end
    object E_WeightFact: TDBNumberEditEh
      Left = 156
      Top = 49
      Width = 67
      Height = 24
      DecimalPlaces = 3
      DynProps = <>
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
  end
  object M_Note: TMemo
    Left = 8
    Top = 177
    Width = 369
    Height = 62
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Lines.Strings = (
      '')
    ParentFont = False
    TabOrder = 3
  end
  object Bt_Save: TBitBtn
    Left = 108
    Top = 613
    Width = 75
    Height = 25
    Caption = 'OK'
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
    TabOrder = 7
    OnClick = Bt_SaveClick
  end
  object Bt_Cancel: TBitBtn
    Left = 199
    Top = 613
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    TabOrder = 8
    OnClick = Bt_CancelClick
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 421
    Width = 369
    Height = 82
    Caption = #1043#1088#1091#1079' '#1087#1088#1080#1085#1103#1083
    TabOrder = 5
    object Label10: TLabel
      Left = 38
      Top = 21
      Width = 82
      Height = 16
      Caption = #1060#1072#1084#1080#1083#1080#1103' '#1048'.'#1054'.'
    end
    object Label11: TLabel
      Left = 54
      Top = 50
      Width = 66
      Height = 16
      Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
    end
    object E_Fio: TEdit
      Left = 126
      Top = 17
      Width = 177
      Height = 24
      MaxLength = 50
      TabOrder = 0
    end
    object E_Dolj: TComboBox
      Left = 126
      Top = 47
      Width = 177
      Height = 24
      TabOrder = 1
      Items.Strings = (
        #1042#1086#1076#1080#1090#1077#1083#1100
        #1044#1077#1082#1083#1072#1088#1072#1085#1090
        #1059#1087#1086#1083#1085#1086#1084#1086#1095#1077#1085#1085#1086#1077' '#1083#1080#1094#1086
        #1069#1082#1089#1087#1077#1076#1080#1090#1086#1088)
    end
  end
  object Grid_GTD: TDBGridEh
    Left = 2
    Top = 252
    Width = 380
    Height = 130
    DataSource = DM.DS_WhDocOut
    DynProps = <>
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    FooterParams.Color = clWindow
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    PopupMenu = PopMn_Gtd
    ReadOnly = True
    TabOrder = 4
    TitleParams.RowLines = 2
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NPP'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1087'/'#1087
        Width = 28
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TYPE_DOC'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1058#1080#1087
        Width = 32
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077'- '#1085#1086#1074#1072#1085#1080#1077
        Width = 58
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NDOC'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1086#1084#1077#1088
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 152
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DDOC'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1044#1072#1090#1072
        Width = 77
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 509
    Width = 369
    Height = 82
    Caption = #1043#1088#1091#1079' '#1089#1076#1072#1083
    TabOrder = 6
    object Label2: TLabel
      Left = 38
      Top = 21
      Width = 82
      Height = 16
      Caption = #1060#1072#1084#1080#1083#1080#1103' '#1048'.'#1054'.'
    end
    object Label3: TLabel
      Left = 54
      Top = 50
      Width = 66
      Height = 16
      Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
    end
    object E_KeeperDolj: TEdit
      Left = 126
      Top = 47
      Width = 177
      Height = 24
      MaxLength = 40
      TabOrder = 1
    end
    object E_KeeperName: TComboBox
      Left = 126
      Top = 17
      Width = 177
      Height = 24
      TabOrder = 0
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 2
    Top = 388
    Width = 165
    Height = 25
    DataSource = Ds1
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Enabled = False
    Flat = True
    TabOrder = 9
  end
  object E_Dt: TDBDateTimeEditEh
    Left = 8
    Top = 40
    Width = 203
    Height = 22
    DynProps = <>
    EditButtons = <>
    Flat = True
    Kind = dtkDateTimeEh
    TabOrder = 1
    Visible = True
  end
  object PopMn_Gtd: TPopupMenu
    Images = Main_F.ImL_16
    Left = 256
    Top = 301
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 2
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 7
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 8
      OnClick = N3Click
    end
  end
  object Mt1: TMemTableEh
    Params = <>
    Left = 296
    Top = 365
  end
  object Ds1: TDataSource
    DataSet = Mt1
    Left = 336
    Top = 365
  end
end
