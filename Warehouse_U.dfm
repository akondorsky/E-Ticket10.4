object Warehouse_F: TWarehouse_F
  Left = 0
  Top = 0
  Caption = #1058#1086#1074#1072#1088#1085#1099#1077' '#1087#1072#1088#1090#1080#1080' '#1085#1072' '#1058#1051#1058
  ClientHeight = 555
  ClientWidth = 1143
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnPaint = FormPaint
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 163
    Top = 40
    Height = 515
    ExplicitLeft = 328
    ExplicitTop = 176
    ExplicitHeight = 100
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1143
    Height = 40
    ButtonHeight = 38
    ButtonWidth = 39
    Caption = 'ToolBar1'
    DrawingStyle = dsGradient
    Images = Main_F.ImL_32
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1089#1082#1083#1072#1076#1089#1082#1086#1077' '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1089#1082#1083#1072#1076#1089#1082#1086#1077' '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086
      DropdownMenu = PopMn_WhActIn
      ImageIndex = 2
      Style = tbsDropDown
    end
    object ToolButton2: TToolButton
      Left = 54
      Top = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1089#1082#1083#1072#1076#1089#1082#1086#1077' '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086
      Action = DelWhInAct_A
    end
    object ToolButton4: TToolButton
      Left = 93
      Top = 0
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1089#1082#1083#1072#1076#1089#1082#1086#1075#1086'  '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1072
      Action = PrintActWhIn_A
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1089#1082#1083#1072#1076#1089#1082#1086#1075#1086'  '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1072
    end
    object ToolButton3: TToolButton
      Left = 132
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 140
      Top = 0
      Hint = #1055#1088#1086#1089#1090#1072#1074#1080#1090#1100' '#1089#1083#1091#1078#1077#1073#1085#1099#1077' '#1086#1090#1084#1077#1090#1082#1080
      Caption = #1055#1088#1086#1089#1090#1072#1074#1080#1090#1100' '#1089#1083#1091#1078#1077#1073#1085#1099#1077' '#1086#1090#1084#1077#1090#1082#1080
      DropdownMenu = PopMn_DutyMarks
      ImageIndex = 9
      Style = tbsDropDown
      OnClick = LockTp_AExecute
    end
    object ToolButton6: TToolButton
      Left = 194
      Top = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      ImageIndex = 12
      OnClick = ToolButton6Click
    end
    object TlBtnAllTp: TToolButton
      Left = 233
      Top = 0
      Action = A_WhTpAllRec
      ImageIndex = 19
    end
    object ToolButton7: TToolButton
      Left = 272
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 20
      Style = tbsSeparator
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 40
    Width = 163
    Height = 515
    Align = alLeft
    TabOrder = 1
    DesignSize = (
      163
      515)
    object FindBtn: TSpeedButton
      Left = 11
      Top = 106
      Width = 113
      Height = 22
      Caption = #1055#1086#1080#1089#1082
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E3934
        393430332F2B2C2925272421201D1BE7E7E73331300B0A090707060404030000
        00000000FFFFFFFFFFFFFFFFFF46413B857A70C3B8AE7C72687F756B36322DF2
        F2F14C4A4795897DBAAEA27C72687F756B010101FFFFFFFFFFFFFFFFFF4D4741
        83786FCCC3BA786F657B716734302DFEFEFE2C2A2795897DC2B8AD786F657C72
        68060505FFFFFFFFFFFFFFFFFF554E4883786FCCC3BA79706671685F585550FF
        FFFF494645857A70C2B8AD786F657B71670D0C0BFFFFFFFFFFFFFFFFFF817B76
        9F9286CCC3BAC0B4AAA6988B807D79FFFFFF74726F908479C2B8ADC0B4AAA89B
        8E494747FFFFFFFFFFFFFCFCFC605952423D3858514A3D3833332F2B393734D3
        D3D35F5E5C1A18162522201917150F0E0D121212FDFDFDFFFFFFFDFDFD9D9185
        B1A3967F756B7C7268776D646C635B2E2A26564F4880766C7C7268776D647067
        5E010101FAFAFAFFFFFFFEFDFDB8ACA1BAAEA282776D82776DAA917BBAA794B8
        A690B097819F8D7D836D5B71635795897D232322FCFCFCFFFFFFFDFCFCDDDAD7
        9B8E829D9185867B71564F48504A4480766C6E665D826C58A6917D948474564F
        488B8A8AFEFEFEFFFFFFFFFFFFFFFFFF746B62A4978A95897D9F92863E3934FF
        FFFF4C46407E746A857A703E393485817EF5F5F5FDFDFDFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF9B9187C3B8AE655D55FFFFFF7C7268A89B8EA69B90FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA79C91BCB0A49D9185FF
        FFFFAEA0939D91857B756EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = FindBtnClick
    end
    object Label4: TLabel
      Left = 35
      Top = 432
      Width = 89
      Height = 31
      Anchors = [akLeft, akBottom]
      AutoSize = False
      Caption = #1052#1077#1089#1090#1086' '#1074' '#1047#1058#1050' '#1085#1077' '#1086#1089#1074#1086#1073#1086#1078#1076#1077#1085#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      ExplicitTop = 387
    end
    object Shape1: TShape
      Left = 2
      Top = 435
      Width = 32
      Height = 25
      Anchors = [akLeft, akBottom]
      Shape = stCircle
      ExplicitTop = 390
    end
    object SpeedButton1: TSpeedButton
      Left = 5
      Top = 376
      Width = 154
      Height = 41
      Action = A_ParkZtkShow
      Anchors = [akLeft, akBottom]
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFF
        FFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFBFB
        FBFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7E5E4E4CCCCCDB9B9B9B3B3B2B5B5
        B5C9C9C9E9E9E9FBFBFBFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEFEFEF8F8F8E8E8E9D0D0D1B1B1B29292937C7C7E7071726D6D6E5D5D5E5252
        524646465C5C5CABABABD5D5D5F5F5F5FFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4
        C5C6C69A9A9B7B7B7B6C6C6A7776728C8B829792848F80657369521A1A1B3535
        357171715858584444447D7D7D999999C8C8C8EEEEEEFEFEFEFFFFFFFFFFFFFE
        FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F6F6
        C3C3BFA3A29DB1B0AAD0CFCAC6C3B3B5AF97A1A28E6D7E846F656C776C5E4242
        448C8C8D9B9B9B3030306A69696767677171718E8E8EBBBBBBE4E4E4FCFCFCFF
        FFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E1D3CFC6B0
        C8C4AFD4D2CCB8B6B1918E895C5A55736B65B6D2D48EC7EF716A91A99B884E4B
        4B5758595F5F5F1E1E1E5B5C5C6D6D6C68696A6667686C6C6C848484ADADADD9
        D9D9F7F7F7FFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFABADA7839F9D
        52504A3F3C383A38374342414B4B4D797573DDD4CFD7CBC480796CA3988F9891
        8C2626260F0F0F000000433E347E745E6C66596D6B676A6B6C6667676B6B6B7E
        7E7EA4A4A4CFCFCFF6F6F6FFFFFFFFFFFFFEFEFEFEFEFEFFFFFFBAC3D2A6C2CC
        4E4B493F3E3D4D4C4B5756555555557B7773D5CFCACBC7C6827B74847B70C8C1
        BCC6C3C26E6A670000003C35269E8A6796876B756A536D685B6A6B6B61626358
        58585050504F4F4F727272C6C6C6EDEDEDFFFFFFFFFFFFFFFFFFDED8D3CCBEB4
        817F7D6F6D6C6463626363625F5F5F8B8986D8D1CCCCC6C2888077837B728981
        78AEA49B9C98920979C20167BE31638F6B7A7D938971917D5FA18F7F7B756F29
        29292021227777776161614E4E4E7171719E9E9EE1E1E1F6F6F6D8D4D1C2BCB5
        7775737E7D7C8E8C8B9B9997B1AFAED5D3D2D6D0CBCDC7C38C847A8980778B82
        7B8B7E747B7A740892E80081EE0171E00072DA0F70BD3B7199828789B59E8A7C
        695A302D2C7B7D7F7678791D1E1E616161515151868686DADADAD8D5D2CAC3BD
        BBB9B7BAB5B0B2A9A0B8AEA5CDC5BED4CEC8D6CFCAD0CAC58E857B8C82788D84
        7C95897E82817C078CE10080E90376DA017EE40082EE0085F40084E9268AD23D
        72961E2D37382F2A23191425232286888A7072738B8B8CFFFFFFDBD8D5D4CECA
        E0DBD7D9D2CDDDD7D2E5E1DCE9E4E0E5E0DCDEDAD6D0CBC6877D747C736B998F
        86978A7E82817B078DE30085EF017BE10080E70183E90287EC018DF50091FE00
        98FF0191F0086EB0184968262E33433A341F1813908F8FFFFFFFDCDAD8E5E0DC
        F2EFECE8E5E3D6D4D2B8B6B3989592928D87746E6888837F9B91887E756E7E77
        72887E7783847F088DE30089F30181E70085EC0088EF008CF3008FF60294FA02
        98FD049DFF07A7FE0DAAFF0E96E81570A5032A411F2224EEEDECDDDAD8A7A5A4
        5353533A38372D2A292D2A26403A346159506A6158837C76B2A8A0BAB3AD4843
        3E37322F6368680F93E7008CF60186ED008AF1008DF40090F70093FB0097FE03
        9AFF069CFE0A9EFC0DA0FC11A9FF15B3FF17B2FF1F99DBDDEBF3DDD7D37F7D7C
        131313252423312E2D46433F5C57526F6964817B758F8A85A49A9176716E5251
        512724234C5153179AEA0091FA008CF3008FF60091F80095FC0097FF039AFF06
        9CFF099FFF0CA2FF10A4FF13A7FE17A8FC18ABFD25B8FFDAF3FFD9D4D0969493
        2425253030313D3D3E5957577471708B878497928EB3AEABACA39A6059514B49
        473E3D3D6369691A9CE80096FF0092F90095FC0097FE0198FF039AFF069DFF09
        9FFF0CA1FF0FA4FF12A6FF15A9FF19ACFF19AEFF26B3FDDBF3FFF3F2F2BDBBB9
        8884819C9590ABA39CB8AFA7C0B7AFC3BAB3C8C0B8CEC4BED3C8C2DBCEC6C4B3
        A9A28C7E8C887F1699E3039DFF0097FE0199FF029AFF059CFF079DFF099FFF0C
        A1FF0FA3FF12A6FF14A8FF17ABFF1BAEFF1CB0FF28B6FFDBF3FFFFFFFFF9F9F8
        E9E4E0CDC4BBB7AAA0AD9F94AA9E94B5A79CBAADA4B4AFA9ABB0AE99AEB385AF
        BE6BAAC43795C2109FF0069EFF059BFE079DFF089EFF099FFF0AA0FF0CA2FF0F
        A4FF11A6FF14A8FF17ABFF1AADFF1EB0FF1FB1FF2BB7FFDBF3FFFEFEFEFFFEFE
        FFFFFFFFFFFFFEFEFEF2F2F2F0E7E39ECDDA45A1B843A5C033A8D025AADE1BAB
        EB16ADF81AB1FF21B1FF10A4FF039CFF029BFF059DFF0AA0FF0EA3FF11A5FF13
        A7FF14A9FF17ABFF1AADFF1DAFFF21B2FF21B4FF2DB9FFDCF3FFFFFFFFFFFFFF
        FEFEFDFEFDFDFFFFFFFCFEFFFFFFFFA6ECFF35D3FF41D4FF45D5FF4FD5FF58D6
        FF62D8FF69DBFE71E1FF6CDEFF57D1FF3FC2FF29B4FF18AAFF0FA5FF0DA4FF10
        A6FF15AAFF1AADFF1EB0FF21B2FF24B5FF24B6FF30BBFFDCF4FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFEFFFEFEF8FDFECAF1FEA6E6FD8AE0FD76DEFE6BDE
        FE68E0FF6BE2FF70E3FF77E7FF7FEAFF82EBFF7DE8FF71E0FF5ED6FF49C9FF35
        BDFF26B5FF1FB0FF1DB0FF20B2FF26B6FF29B9FF33BDFFDCF4FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FCFFDEF5
        FFC2EFFFA5E9FF8BE4FF77E1FF6CE0FF69E0FF6CE2FF72E4FF78E7FF7BE7FF76
        E5FF6CDFFF5DD7FF4BCDFF39C5FF2CBDFF1EB8FF23B8FFD9F3FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFFFCFEFFFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF3FCFFDCF6FFC0F0FFA2EAFF87E4FF73E0FF69DEFF67
        DCFF6CDCFF72DDFF78DEFF85E0FF90E2FF97E1FFA8E3FFF2FBFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFF
        FFFDFEFFFDFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FAFFE2F7FFE3
        F7FFEAF9FFF4FBFFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFFFFFDFFFFFDFEFFFDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFFFCFEFFFCFEFFFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFE
        FFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ExplicitTop = 331
    end
    object E_Nomer: TMaskEdit
      Left = 11
      Top = 8
      Width = 113
      Height = 24
      EditMask = '0000000;1;_'
      MaxLength = 7
      TabOrder = 0
      Text = '       '
      OnKeyPress = E_NomerKeyPress
    end
    object Rg_F: TRadioGroup
      Left = 10
      Top = 38
      Width = 114
      Height = 62
      Caption = #1055#1086#1080#1089#1082' '#1087#1086
      ItemIndex = 0
      Items.Strings = (
        #1053#1086#1084#1077#1088#1091' '#1050#1058
        #1063#1072#1089#1090#1080' '#1050#1058)
      TabOrder = 1
      OnClick = Rg_FClick
    end
    object BtnHelp: TBitBtn
      Left = 2
      Top = 482
      Width = 107
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&'#1055#1086#1076#1089#1082#1072#1079#1082#1072
      Kind = bkHelp
      NumGlyphs = 2
      TabOrder = 2
      OnClick = BtnHelpClick
    end
  end
  object Panel2: TPanel
    Left = 166
    Top = 40
    Width = 977
    Height = 515
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 2
    object Splitter2: TSplitter
      Left = 625
      Top = 309
      Height = 205
      OnMoved = Splitter2Moved
      ExplicitLeft = 536
      ExplicitTop = 344
      ExplicitHeight = 100
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 975
      Height = 28
      Align = alTop
      BorderStyle = bsSingle
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 6
        Width = 104
        Height = 16
        Caption = #1058#1086#1074#1072#1088#1085#1099#1077' '#1087#1072#1088#1090#1080#1080
      end
    end
    object Grid_WH: TDBGridEh
      Left = 1
      Top = 29
      Width = 975
      Height = 252
      Align = alTop
      DataSource = DM.DS_Warehouse
      DynProps = <>
      Flat = True
      FooterParams.Color = clWindow
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
      ReadOnly = True
      SelectionDrawParams.SelectionStyle = gsdsClassicEh
      TabOrder = 1
      TitleParams.RowLines = 2
      OnDrawColumnCell = Grid_WHDrawColumnCell
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TP_MOVE_CBX_CODE'
          Footers = <>
          ImageList = Main_F.ImL_TP_Action
          KeyList.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7')
          Title.Caption = #1057#1090#1072#1090#1091#1089
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'IN_TS'
          Footers = <>
          ImageList = ImageList2
          KeyList.Strings = (
            '1')
          Title.Alignment = taCenter
          Title.Caption = #1042' '#1058#1057
          Width = 47
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'COND_PARK'
          Footers = <>
          ImageList = ImageList1
          KeyList.Strings = (
            '1'
            '2')
          Title.Alignment = taCenter
          Title.Caption = #1055#1072#1088#1082'. '#1047#1058#1050
          Width = 48
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'NUM_PARK'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #8470' '#1087#1072#1088#1082'. '#1047#1058#1050
          Width = 58
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'N_PART'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #8470' '#1090#1086#1074#1072#1088#1085#1086#1081' '#1087#1072#1088#1090#1080#1080
          Width = 114
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'GOODS'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1075#1088#1091#1079#1072
          Width = 224
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ZAYV'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100' '#1075#1088#1091#1079#1072
          Width = 252
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'G073'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #8470' '#1044#1054'1'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'G072'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072' '#1074#1088#1077#1084#1103' '#1044#1054'1'
          Width = 106
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 281
      Width = 975
      Height = 28
      Align = alTop
      TabOrder = 2
      object Label2: TLabel
        Left = 16
        Top = 6
        Width = 152
        Height = 16
        Caption = #1057#1082#1083#1072#1076#1089#1082#1080#1077' '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1072
      end
      object Label3: TLabel
        Left = 640
        Top = 6
        Width = 119
        Height = 16
        Caption = #1040#1082#1090#1099' '#1074#1099#1076#1072#1095#1080' '#1075#1088#1091#1079#1086#1074
      end
    end
    object Grid_ActIn: TDBGridEh
      Left = 1
      Top = 309
      Width = 624
      Height = 205
      Align = alLeft
      DataSource = DM.DS_WhActIn
      DynProps = <>
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterRowCount = 1
      FooterParams.Color = clTeal
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      PopupMenu = PopMn_Svid
      SumList.Active = True
      TabOrder = 3
      TitleParams.RowLines = 2
      OnDblClick = Grid_ActInDblClick
      OnDrawColumnCell = Grid_ActInDrawColumnCell
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FROM_CBX_FLAG'
          Footers = <>
          ImageList = ImageList4
          KeyList.Strings = (
            '1')
          Title.Alignment = taCenter
          Title.Caption = #1055#1077#1088#1077#1084#1077'- '#1097#1077#1085#1080#1077
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DANGER'
          Footers = <>
          ImageList = Main_F.Iml_DNG
          KeyList.Strings = (
            '1')
          Title.Alignment = taCenter
          Title.Caption = #1054#1087'. '#1075#1088#1091#1079
          Width = 41
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'INSPECTION_FLAG'
          Footers = <>
          ImageList = ImageList3
          KeyList.Strings = (
            '1')
          Title.Alignment = taCenter
          Title.Caption = #1044#1086#1089'- '#1084#1086#1090#1088
          Width = 45
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ID'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1048#1076'. '#8470
          Width = 43
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072','#1074#1088#1077#1084#1103
          Width = 109
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'WH_TYPE'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1058#1080#1087' '#1089#1082#1083#1072#1076#1072
          Width = 62
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'KEEPER_NAME'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1060'.'#1048'.'#1054'. '#1082#1083#1072#1076#1086#1074#1097#1080#1082#1072
          Width = 93
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PLACE_NUM'
          Footers = <
            item
              Alignment = taRightJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              Value = #1048#1090#1086#1075#1086
              ValueType = fvtStaticText
            end>
          Title.Alignment = taCenter
          Title.Caption = #8470' '#1084#1077#1089#1090#1072
          Width = 69
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'WEIGHT_FACT'
          Footer.Alignment = taRightJustify
          Footer.FieldName = 'WEIGHT_FACT'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWhite
          Footer.Font.Height = -13
          Footer.Font.Name = 'Tahoma'
          Footer.Font.Style = []
          Footer.ValueType = fvtFieldValue
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1042#1077#1089' '#1092#1072#1082#1090'.('#1082#1075')'
          Width = 71
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PLACES_KOL_FACT'
          Footer.Alignment = taCenter
          Footer.FieldName = 'PLACES_KOL_FACT'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWhite
          Footer.Font.Height = -13
          Footer.Font.Name = 'Tahoma'
          Footer.Font.Style = []
          Footer.ValueType = fvtFieldValue
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1083' '#1084#1077#1089#1090' '#1092#1072#1082#1090'.'
          Width = 58
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SIGN_NUMBER'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #8470' '#1089#1074#1080#1076#1077'- '#1090#1077#1083#1100#1089#1090#1074#1072
          Width = 82
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object Grid_ActOut: TDBGridEh
      Left = 628
      Top = 309
      Width = 348
      Height = 205
      Align = alClient
      DataSource = DM.DS_WhOut
      DynProps = <>
      Flat = True
      FooterRowCount = 2
      FooterParams.Color = clWindow
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopMn_ActOut
      ReadOnly = True
      SumList.Active = True
      TabOrder = 4
      TitleParams.RowLines = 2
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CBXTOCBX'
          Footers = <>
          ImageList = ImageList3
          KeyList.Strings = (
            '1')
          Title.Alignment = taCenter
          Title.Caption = #1041#1077#1079' '#1044#1054'2'
          Width = 34
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'NPP'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #8470' '#1087'/'#1087
          Width = 29
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DT'
          Footers = <
            item
              Alignment = taRightJustify
              Color = clTeal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              Value = #1048#1090#1086#1075#1086
              ValueType = fvtStaticText
            end
            item
              Alignment = taRightJustify
              Color = clYellow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              Value = #1054#1089#1090#1072#1090#1086#1082
              ValueType = fvtStaticText
            end>
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072','#1074#1088#1077#1084#1103
          Width = 110
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PLACES_KOL'
          Footers = <
            item
              Alignment = taCenter
              Color = clTeal
              FieldName = 'PLACES_KOL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ValueType = fvtSum
            end
            item
              Alignment = taCenter
              Color = clYellow
              FieldName = 'MestOst'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ValueType = fvtFieldValue
            end>
          Title.Alignment = taCenter
          Title.Caption = #1052#1077#1089#1090
          Width = 41
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'WEIGHT'
          Footers = <
            item
              Color = clTeal
              FieldName = 'WEIGHT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ValueType = fvtSum
            end
            item
              Color = clYellow
              FieldName = 'WeightOst'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ValueType = fvtFieldValue
            end>
          Title.Alignment = taCenter
          Title.Caption = #1042#1077#1089', '#1082#1075
          Width = 73
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'KEEPER_NAME'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1042#1099#1076#1072#1083' '
          Width = 98
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DO2_STATN'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #8470' '#1044#1054'2'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'G072'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072' '#1044#1054'2'
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object AM_Wh: TActionManager
    LargeImages = Main_F.ImL_32
    Images = Main_F.ImL_16
    Left = 352
    Top = 120
    StyleName = 'Platform Default'
    object PrintActWhIn_A: TAction
      Caption = #1056#1072#1089#1087#1077#1095#1072#1090#1072#1090#1100' '#1089#1082#1083#1072#1076#1089#1082#1086#1077'  '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086
      ImageIndex = 14
      OnExecute = PrintActWhIn_AExecute
      OnUpdate = PrintActWhIn_AUpdate
    end
    object NewWhInActTP_A: TAction
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1089#1082#1083#1072#1076#1089#1082#1086#1077' '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086' '#1085#1072' '#1090#1086#1074#1072#1088#1085#1091#1102' '#1087#1072#1088#1090#1080#1102
      ImageIndex = 11
      OnExecute = NewWhInActTP_AExecute
      OnUpdate = NewWhInActTP_AUpdate
    end
    object DelWhInAct_A: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1082#1083#1072#1076#1089#1082#1086#1077' '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086
      ImageIndex = 8
      OnExecute = DelWhInAct_AExecute
      OnUpdate = DelWhInAct_AUpdate
    end
    object LockTp_A: TAction
      Caption = #1055#1086#1089#1090#1072#1074#1080#1090#1100' '#1086#1090#1084#1077#1090#1082#1091' "'#1058#1055' '#1088#1072#1079#1084#1077#1097#1077#1085#1072' '#1085#1072' '#1057#1042#1061'"'
      OnExecute = LockTp_AExecute
      OnUpdate = LockTp_AUpdate
    end
    object NewDo1_A: TAction
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1044#1054'1'
      ImageIndex = 2
      OnExecute = NewDo1_AExecute
      OnUpdate = NewDo1_AUpdate
    end
    object A_ActOutAdd: TAction
      Caption = #1053#1086#1074#1099#1081' '#1040#1082#1090' '#1074#1099#1076#1072#1095#1080' '#1075#1088#1091#1079#1072
      Hint = #1053#1086#1074#1099#1081' '#1040#1082#1090' '#1074#1099#1076#1072#1095#1080' '#1075#1088#1091#1079#1072
      ImageIndex = 2
      OnExecute = A_ActOutAddExecute
      OnUpdate = A_ActOutAddUpdate
    end
    object A_WhOutEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1040#1082#1090' '#1074#1099#1076#1072#1095#1080
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1040#1082#1090' '#1074#1099#1076#1072#1095#1080
      ImageIndex = 7
      OnExecute = A_WhOutEditExecute
      OnUpdate = A_WhOutEditUpdate
    end
    object A_WhOutDel: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1040#1082#1090' '#1074#1099#1076#1072#1095#1080
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1040#1082#1090' '#1074#1099#1076#1072#1095#1080
      ImageIndex = 8
      OnExecute = A_WhOutDelExecute
      OnUpdate = A_WhOutDelUpdate
    end
    object A_GoodsOut: TAction
      Caption = #1055#1086#1089#1090#1072#1074#1080#1090#1100' '#1086#1090#1084#1077#1090#1082#1091' '#1086' '#1074#1099#1076#1072#1095#1077' '#1090#1086#1074#1072#1088#1072
      OnExecute = A_GoodsOutExecute
      OnUpdate = A_GoodsOutUpdate
    end
    object A_WhTpAllRec: TAction
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077' '#1087#1072#1088#1090#1080#1080
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077' '#1087#1072#1088#1090#1080#1080
      OnExecute = A_WhTpAllRecExecute
    end
    object NewWhInActTS_A: TAction
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1089#1082#1083#1072#1076#1089#1082#1086#1077' '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086' '#1085#1072' '#1058#1057
      ImageIndex = 5
      OnExecute = NewWhInActTS_AExecute
      OnUpdate = NewWhInActTS_AUpdate
    end
    object A_PrintActOut: TAction
      Caption = #1055#1077#1095#1072#1090#1072#1090#1100' '#1040#1082#1090' '#1074#1099#1076#1072#1095#1080' '#1075#1088#1091#1079#1072
      Hint = #1055#1077#1095#1072#1090#1072#1090#1100' '#1040#1082#1090' '#1074#1099#1076#1072#1095#1080' '#1075#1088#1091#1079#1072
      ImageIndex = 20
      OnExecute = A_PrintActOutExecute
      OnUpdate = A_PrintActOutUpdate
    end
    object A_Tp_Partial_Write_Off: TAction
      Caption = #1055#1086#1089#1090#1072#1074#1080#1090#1100' '#1086#1090#1084#1077#1090#1082#1091' '#1086' '#1095#1072#1089#1090#1080#1095#1085#1086#1084' '#1089#1087#1080#1089#1072#1085#1080#1080' '#1090#1086#1074#1072#1088#1085#1086#1081' '#1087#1072#1088#1090#1080#1080
      Hint = #1055#1086#1089#1090#1072#1074#1080#1090#1100' '#1086#1090#1084#1077#1090#1082#1091' '#1086' '#1095#1072#1089#1090#1080#1095#1085#1086#1084' '#1089#1087#1080#1089#1072#1085#1080#1080' '#1090#1086#1074#1072#1088#1085#1086#1081' '#1087#1072#1088#1090#1080#1080
      OnExecute = A_Tp_Partial_Write_OffExecute
    end
    object A_TP_Full_Write_Off: TAction
      Caption = #1055#1086#1089#1090#1072#1074#1080#1090#1100' '#1086#1090#1084#1077#1090#1082#1091' '#1086' '#1087#1086#1083#1085#1086#1084' '#1089#1087#1080#1089#1072#1085#1080#1080' '#1090#1086#1074#1072#1088#1085#1086#1081' '#1087#1072#1088#1090#1080#1080
      Hint = #1055#1086#1089#1090#1072#1074#1080#1090#1100' '#1086#1090#1084#1077#1090#1082#1091' '#1086' '#1087#1086#1083#1085#1086#1084' '#1089#1087#1080#1089#1072#1085#1080#1080' '#1090#1086#1074#1072#1088#1085#1086#1081' '#1087#1072#1088#1090#1080#1080
      OnExecute = A_TP_Full_Write_OffExecute
    end
    object A_ParkZtkShow: TAction
      Caption = #1055#1072#1088#1082#1086#1074#1082#1072' '#1047#1058#1050
      OnExecute = A_ParkZtkShowExecute
    end
    object A_ToCbxSet: TAction
      Caption = #1055#1086#1089#1090#1072#1074#1080#1090#1100' '#1086#1090#1084#1077#1090#1082#1091
      OnExecute = A_ToCbxSetExecute
    end
    object A_ToCbxClear: TAction
      Caption = #1057#1085#1103#1090#1100' '#1086#1090#1084#1077#1090#1082#1091
      OnExecute = A_ToCbxClearExecute
    end
    object A_InspectionOut: TAction
      Caption = #1059#1073#1099#1083' '#1085#1072' '#1090#1072#1084#1086#1078#1077#1085#1085#1099#1081' '#1076#1086#1089#1084#1086#1090#1088
      OnExecute = A_InspectionOutExecute
      OnUpdate = A_InspectionOutUpdate
    end
    object A_Inspection_Stop: TAction
      Caption = #1055#1088#1080#1073#1099#1083' '#1085#1072' '#1089#1082#1083#1072#1076' '#1089' '#1090#1072#1084'. '#1076#1086#1089#1084#1086#1090#1088#1072
      OnExecute = A_Inspection_StopExecute
      OnUpdate = A_Inspection_StopUpdate
    end
    object A_InspLog_Svid: TAction
      Caption = #1046#1091#1088#1085#1072#1083' '#1076#1086#1089#1084#1086#1090#1088#1072' '#1087#1072#1088#1090#1080#1080
      OnExecute = A_InspLog_SvidExecute
    end
    object A_InspLog_All: TAction
      Caption = #1046#1091#1088#1085#1072#1083' '#1076#1086#1089#1084#1086#1090#1088#1072' '#1086#1073#1097#1080#1081
      OnExecute = A_InspLog_AllExecute
    end
    object A_EditWhActIn: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      ImageIndex = 7
      OnExecute = A_EditWhActInExecute
    end
  end
  object PopMn_TP: TPopupMenu
    Images = Main_F.ImL_16
    Left = 192
    Top = 112
    object N11: TMenuItem
      Action = NewDo1_A
      Enabled = False
    end
  end
  object PopMn_ActOut: TPopupMenu
    Images = Main_F.ImL_16
    Left = 688
    Top = 216
    object N1: TMenuItem
      Action = A_ActOutAdd
    end
    object N2: TMenuItem
      Action = A_WhOutEdit
    end
    object N3: TMenuItem
      Action = A_WhOutDel
    end
    object N4: TMenuItem
      Action = A_PrintActOut
    end
    object N13: TMenuItem
      Caption = '-'
    end
    object N14: TMenuItem
      Caption = #1054#1090#1084#1077#1090#1082#1072' '#1086' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1080' '#1084#1077#1078#1076#1091' '#1057#1042#1061
      object N15: TMenuItem
        Action = A_ToCbxSet
      end
      object N16: TMenuItem
        Action = A_ToCbxClear
      end
    end
  end
  object PopMn_DutyMarks: TPopupMenu
    Left = 256
    Top = 112
    object N5: TMenuItem
      Action = LockTp_A
    end
    object N6: TMenuItem
      Action = A_GoodsOut
    end
    object N9: TMenuItem
      Caption = #1058#1086#1074#1072#1088#1085#1099#1077' '#1087#1072#1088#1090#1080#1080
      object N10: TMenuItem
        Action = A_TP_Full_Write_Off
      end
      object N12: TMenuItem
        Action = A_Tp_Partial_Write_Off
      end
    end
  end
  object PopMn_WhActIn: TPopupMenu
    Images = Main_F.ImL_16
    Left = 208
    Top = 240
    object N7: TMenuItem
      Action = NewWhInActTS_A
    end
    object N8: TMenuItem
      Action = NewWhInActTP_A
    end
  end
  object ImageList1: TImageList
    Left = 408
    Top = 120
    Bitmap = {
      494C010102000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      00003941D64C444BD9D2474FDAF0434BD9E94048D7E93E47D8F0353ED5D2252E
      D254232BD2060000000000000000000000000000000000000000000000000000
      00003941D64C444BD9D2474FDAF0434BD9E94048D7E93E47D8F0353ED5D2252E
      D254232BD2060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004148
      D74C636CE4E48997FAFF8495FFFF7F90FCFF7D8EFAFF7D8DF7FF7D8BF2FF5159
      DDFF222AD1730000000000000000000000000000000000000000000000004148
      D74C636CE4E48997FAFF8495FFFF7F90FCFF7D8EFAFF7D8DF7FF7D8BF2FF5159
      DDFF222AD1730000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004E56DA4D6C75
      E4DF96A5FAFF5A74FFFF3250FFFF304FFFFF2C49FEFF2542FAFF4860F9FF8694
      F4FF5159DDDC252ED14D000000000000000000000000000000004E56DA4D6C75
      E4DF96A5FAFF5A74FFFF3250FFFF304FFFFF2C49FEFF2542FAFF4860F9FF8694
      F4FF5159DDDC252ED14D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005E65DE4B7981E7E59FAD
      FBFF6781FFFF405EFFFF405EFFFF3C59FFFF3755FFFF3350FFFF2846FDFF4A65
      FDFF8996F6FF545EDEE52C34D44B00000000000000005E65DE4B7981E7E59FAD
      FBFF6781FFFF405EFFFF405EFFFF3C59FFFF3755FFFF3350FFFF2846FDFF4A65
      FDFF8996F6FF545EDEE52C34D44B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007178E3D5A2B2FCFF738F
      FFFF4F70FFFF4F6EFFFF4B69FFFF4664FFFF415EFFFF3C5AFFFF3755FFFF2C4B
      FFFF4E67FFFF8493FAFF4048D8D500000000000000007178E3D5A2B2FCFF738F
      FFFF4F70FFFF4F6EFFFF4B69FFFF4664FFFF415EFFFF3C5AFFFF3755FFFF2C4B
      FFFF4E67FFFF8493FAFF4048D8D5000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007D84E5F2A6BBFFFF5F7F
      FFFF5F7EFFFF5A79FFFF5573FFFF506EFFFF4B69FFFF4664FFFF415EFFFF3B59
      FFFF314FFFFF8799FFFF4D55DBF200000000000000007D84E5F2A6BBFFFF5F7F
      FFFF5F7EFFFF5A79FFFF5573FFFF506EFFFF4B69FFFF4664FFFF415EFFFF3B59
      FFFF314FFFFF8799FFFF4D55DBF2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000858AE6E9ABBEFFFF6D8D
      FFFF6989FFFF6583FFFF5F7EFFFF5A79FFFF5574FFFF506FFFFF4B69FFFF4663
      FFFF3F5CFFFF8A9BFFFF535BDCE90000000000000000858AE6E9ABBEFFFF6D8D
      FFFF6989FFFF6583FFFF5F7EFFFF5A79FFFF5574FFFF506FFFFF4B69FFFF4663
      FFFF3F5CFFFF8A9BFFFF535BDCE9000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008B91E7EAB1C4FFFF7698
      FFFF7393FFFF6E8EFFFF6989FFFF6583FFFF5F7EFFFF5A79FFFF5573FFFF4F6E
      FFFF4867FFFF90A1FFFF5A62DEEA00000000000000008B91E7EAB1C4FFFF7698
      FFFF7393FFFF6E8EFFFF6989FFFF6583FFFF5F7EFFFF5A79FFFF5573FFFF4F6E
      FFFF4867FFFF90A1FFFF5A62DEEA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009298E9F2B8CDFFFF7DA0
      FFFF7C9DFFFF7899FFFF7393FFFF6E8EFFFF6989FFFF6583FFFF607EFFFF5978
      FFFF4F70FFFF98AAFFFF636AE0F200000000000000009298E9F2B8CDFFFF7DA0
      FFFF7C9DFFFF7899FFFF7393FFFF6E8EFFFF6989FFFF6583FFFF607EFFFF5978
      FFFF4F70FFFF98AAFFFF636AE0F2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000959AEAD4BCCDFCFF9CBB
      FFFF81A5FFFF81A2FFFF7C9EFFFF7899FFFF7493FFFF6F8EFFFF6989FFFF6080
      FFFF7893FFFF9EADFBFF656CE0D40000000000000000959AEAD4BCCDFCFF9CBB
      FFFF81A5FFFF81A2FFFF7C9EFFFF7899FFFF7493FFFF6F8EFFFF6989FFFF6080
      FFFF7893FFFF9EADFBFF656CE0D4000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009297E84AA5ACEFE4C1D1
      FCFFA0BFFFFF86AAFFFF85A7FFFF81A2FFFF7C9DFFFF7898FFFF6F90FFFF85A1
      FFFFACBAFBFF838BE8E46369DF4A00000000000000009297E84AA5ACEFE4C1D1
      FCFFA0BFFFFF86AAFFFF85A7FFFF81A2FFFF7C9DFFFF7898FFFF6F90FFFF85A1
      FFFFACBAFBFF838BE8E46369DF4A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009396E849A6AD
      EEDFC4D4FCFFA3C2FFFF8BAFFFFF89ABFFFF84A7FFFF7EA0FFFF91AEFFFFB4C3
      FBFF8C93EADB6D71E04A000000000000000000000000000000009396E849A6AD
      EEDFC4D4FCFFA3C2FFFF8BAFFFFF89ABFFFF84A7FFFF7EA0FFFF91AEFFFFB4C3
      FBFF8C93EADB6D71E04A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009498
      E84AA9B1F0E4C2D3FCFFC1D6FFFFBDD1FFFFBBCFFFFFB9CEFFFFB7C8FCFF989F
      EDFF797EE2720000000000000000000000000000000000000000000000009498
      E84AA9B1F0E4C2D3FCFFC1D6FFFFBDD1FFFFBBCFFFFFB9CEFFFFB7C8FCFF989F
      EDFF797EE2720000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999DEA4B9EA3EBD2A0A5ECF09DA2EBE99BA0EBE9989EEAF09297E9D2868B
      E6538388E5060000000000000000000000000000000000000000000000000000
      0000999DEA4B9EA3EBD2A0A5ECF09DA2EBE99BA0EBE9989EEAF09297E9D2868B
      E6538388E5060000000000000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF00FFFFFFFF00000000F007F00700000000
      E007E00700000000C003C0030000000080018001000000008001800100000000
      8001800100000000800180010000000080018001000000008001800100000000
      80018001000000008001800100000000C003C00300000000E007E00700000000
      F007F00700000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object ImageList2: TImageList
    Left = 472
    Top = 120
    Bitmap = {
      494C010101000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      000000000000317A360A2D753207000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003985400A37833DFF317B37FB2E7633070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004292
      490A408E47FF54A35CFF4F9F57FF327C38FE2E77340800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004B9E530A499A
      51FF5BAC64FF77CA82FF74C87EFF51A059FF337D39FE2F783508000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000053A95C0A51A65AFF63B5
      6DFF7ECE89FF7BCC87FF76CA81FF76C981FF52A25AFF347E3AFE307935080000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005AB4650959B063FF6BBD76FF84D2
      90FF7AC985FF60B26AFF63B46DFF78C983FF78CB82FF53A35CFF347F3AFD317A
      3608000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005EB969465BB566E479C986FF80CE
      8DFF51A65AFC4DA1566F499C518B5CAD67FF7CCC86FF79CB85FF54A45DFF3580
      3BFC317B37080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005FBA6A3C5CB666E66DC0
      79FF55AC5F6F00000000000000004A9D52915EAE68FF7DCD89FF7CCD87FF56A5
      5FFF36813CFC327C380800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005FBB6A435CB7
      6765000000000000000000000000000000004B9E53915FAF69FF7FCE8AFF7ECE
      89FF57A660FF37823DFC337D3908000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004B9F549160B06AFF81CF
      8DFF7FCF8BFF58A761FF398540FF347E3A080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004CA0559162B2
      6CFF82D18FFF7AC885FF57A660FF38843F7B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004DA1
      569163B36DFF5FAF69FF41914979000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004EA257914A9D527F00000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF00FFFF000000000000F9FF000000000000
      F0FF000000000000E07F000000000000C03F000000000000801F000000000000
      000F00000000000000070000000000008603000000000000CF01000000000000
      FF80000000000000FFC0000000000000FFE1000000000000FFF3000000000000
      FFFF000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
  object RegPropStorageManEh1: TRegPropStorageManEh
    Left = 536
    Top = 248
  end
  object PropStorageEh1: TPropStorageEh
    StorageManager = RegPropStorageManEh1
    StoredProps.Strings = (
      'Panel2.Grid_ActIn.<P>.Columns.ColumnsIndex'
      'Panel2.Grid_ActIn.<P>.Columns.<ForAllItems>.Width'
      'Panel2.Grid_ActIn.<P>.Width'
      'Panel2.Grid_ActOut.<P>.Columns.ColumnsIndex'
      'Panel2.Grid_ActOut.<P>.Columns.<ForAllItems>.Width'
      'Panel2.Grid_WH.<P>.Columns.ColumnsIndex'
      'Panel2.Grid_WH.<P>.Columns.<ForAllItems>.Width')
    Left = 528
    Top = 192
  end
  object ImageList3: TImageList
    Left = 544
    Top = 120
    Bitmap = {
      494C010101000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      00003941D64C444BD9D2474FDAF0434BD9E94048D7E93E47D8F0353ED5D2252E
      D254232BD2060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004148
      D74C636CE4E48997FAFF8495FFFF7F90FCFF7D8EFAFF7D8DF7FF7D8BF2FF5159
      DDFF222AD1730000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004E56DA4D6C75
      E4DF96A5FAFF5A74FFFF3250FFFF304FFFFF2C49FEFF2542FAFF4860F9FF8694
      F4FF5159DDDC252ED14D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005E65DE4B7981E7E59FAD
      FBFF6781FFFF405EFFFF405EFFFF3C59FFFF3755FFFF3350FFFF2846FDFF4A65
      FDFF8996F6FF545EDEE52C34D44B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007178E3D5A2B2FCFF738F
      FFFF4F70FFFF4F6EFFFF4B69FFFF4664FFFF415EFFFF3C5AFFFF3755FFFF2C4B
      FFFF4E67FFFF8493FAFF4048D8D5000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007D84E5F2A6BBFFFF5F7F
      FFFF5F7EFFFF5A79FFFF5573FFFF506EFFFF4B69FFFF4664FFFF415EFFFF3B59
      FFFF314FFFFF8799FFFF4D55DBF2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000858AE6E9ABBEFFFF6D8D
      FFFF6989FFFF6583FFFF5F7EFFFF5A79FFFF5574FFFF506FFFFF4B69FFFF4663
      FFFF3F5CFFFF8A9BFFFF535BDCE9000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008B91E7EAB1C4FFFF7698
      FFFF7393FFFF6E8EFFFF6989FFFF6583FFFF5F7EFFFF5A79FFFF5573FFFF4F6E
      FFFF4867FFFF90A1FFFF5A62DEEA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009298E9F2B8CDFFFF7DA0
      FFFF7C9DFFFF7899FFFF7393FFFF6E8EFFFF6989FFFF6583FFFF607EFFFF5978
      FFFF4F70FFFF98AAFFFF636AE0F2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000959AEAD4BCCDFCFF9CBB
      FFFF81A5FFFF81A2FFFF7C9EFFFF7899FFFF7493FFFF6F8EFFFF6989FFFF6080
      FFFF7893FFFF9EADFBFF656CE0D4000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009297E84AA5ACEFE4C1D1
      FCFFA0BFFFFF86AAFFFF85A7FFFF81A2FFFF7C9DFFFF7898FFFF6F90FFFF85A1
      FFFFACBAFBFF838BE8E46369DF4A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009396E849A6AD
      EEDFC4D4FCFFA3C2FFFF8BAFFFFF89ABFFFF84A7FFFF7EA0FFFF91AEFFFFB4C3
      FBFF8C93EADB6D71E04A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009498
      E84AA9B1F0E4C2D3FCFFC1D6FFFFBDD1FFFFBBCFFFFFB9CEFFFFB7C8FCFF989F
      EDFF797EE2720000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999DEA4B9EA3EBD2A0A5ECF09DA2EBE99BA0EBE9989EEAF09297E9D2868B
      E6538388E5060000000000000000000000000000000000000000000000000000
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
  object PopMn_Svid: TPopupMenu
    Left = 344
    Top = 216
    object N17: TMenuItem
      Caption = #1056#1072#1079#1084#1077#1089#1090#1080#1090#1100' '#1085#1072' '#1089#1082#1083#1072#1076#1077
      OnClick = N17Click
    end
    object N18: TMenuItem
      Caption = '-'
    end
    object Item_InspOut: TMenuItem
      Action = A_InspectionOut
      Enabled = False
    end
    object Item_InspStop: TMenuItem
      Action = A_Inspection_Stop
      Enabled = False
    end
    object N19: TMenuItem
      Action = A_InspLog_Svid
    end
    object N20: TMenuItem
      Action = A_InspLog_All
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 60000
    OnTimer = Timer1Timer
    Left = 16
    Top = 192
  end
  object ImageList4: TImageList
    Left = 600
    Top = 120
    Bitmap = {
      494C010101006001040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      00000000000000000000000000000000000000000000BF957100C0987600C098
      7A00BD957700BB927600B8907400B68D7200B48B7000B1886E00F3FBF400BFB7
      A700F4F5F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C89F7F00FDF5F000FDF4
      ED00FDF2EB00FDF1E900FDF0E700FDEFE400FCEDE200FCECE000F3FBF4004468
      4600DCE7DD00E9F0E90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CEAA8900FCF4EE00FDF3
      EC00FEF3EB00FEF1E800F7F4EE00EAEDE600E7EBE300E7EAE300EFF7EF002651
      280035663A00C3D3C400E6EEE600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0AB8900F7F1EA00FBF4
      ED00FEF4ED00FEF3EB00F5F9F5004A6C4B00547B5700547C5700517A54003B7E
      44004EA85D0033773C00A7BBA800EAF3EB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D2AD8A00F6F1E900FCF6
      EE00FEF5EF00FEF4ED00F5F9F500214B23006DBF770072C67E006CC3790067C8
      780059C36B0047AD5A00296F3300859F86000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3AE8B00F4F0E800FBF6
      EE00FEF6F000FEF5EF00F5F9F500234D250082E08E0082E08E007ADA87006DD1
      7C005DC66F004CB760002E7D3B009BB19C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5B08C00F6F1EA00FCF6
      EE00FEF6F000FEF6F000F5F9F500244E26004D8E53004C8E53004B8E520058AA
      63005FC26F0040914D009FB7A200F1F8F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D7B18C00FBF4EF00FEF6
      F000FEF6F000FEF6F000F5F9F500DDE4DB00F1F4EE00EAEEE700D8E0D6003265
      37003F7F4600ABC3AE00CDD3C500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D9B28D00FEF6F100FEF6
      F000FEF6F000FEF6F000FAF7F100FBF6F000FCF6F000FCF5EF00F8F1E9003459
      3400B3C5B400D7E0D400B38B6F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DAB48E00FEF6F100FEF6
      F000FEF6F000FEF6F000FEF6F000FEF6F000FEF6F000FEF5EF00EEE8DF009FB4
      A000CFD9CC00FCF1E900B2886D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DCB58F00FEF6F100FEF6
      F000FEF6F000FEF6F000FEF6F000FEF6F000FEF6F000FEF6F000FBF3ED00FBF4
      EC00FEF3EB00FDF3EC00B58B6E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DDB78F00FEF6F100FEF6
      F000FEF6F000FEF6F000FEF6F000FEF6F000FEF6F000FEF6F000F4EEE700E0DE
      D400FEF4ED00FDF4EE00B78D7000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEB89000FEF6F100F5E3
      BF00F4DFBA00F2D9B300F0D1AA00EECAA100ECC39900EBBF9400EBBF9400EBBF
      9400EBBF9400FDF5EF00B9907100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFB99100FEF6F100F2DD
      AF00F0D7A800EECF9E00EBC59200E9BB8600E6B27C00E5AD7500E5AD7500E5AD
      7500E5AD7500FDF6F100BC927300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DCB48600FDF7F200FEF7
      F100FDF7F200FDF7F200FDF7F200FDF7F200FDF7F100FDF7F100FDF7F100FDF7
      F100FDF7F100FCF6F200BA8F6C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DBAE7D00DAAE8000DAB0
      8300D8AE8200D6AC8100D4AB8000D2A97F00D0A77E00CEA57D00CCA27C00C8A0
      7A00C69D7900C0967200BB8F6D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0080070000000000008003000000000000
      8001000000000000800000000000000080000000000000008000000000000000
      8000000000000000800100000000000080010000000000008001000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      8001000000000000800100000000000000000000000000000000000000000000
      000000000000}
  end
end
