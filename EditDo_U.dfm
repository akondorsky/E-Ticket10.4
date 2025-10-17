object EditDo_F: TEditDo_F
  Left = 284
  Top = 15
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1054'1-2.'#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 676
  ClientWidth = 919
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label24: TLabel
    Left = 208
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Label24'
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 920
    Height = 633
    ActivePage = Tab_Do2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = PageControl1Change
    object Tab_1: TTabSheet
      Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099' '#1089#1082#1083#1072#1076#1072' '#1080' '#1087#1077#1088#1077#1074#1086#1079#1095#1080#1082#1072
      object GB_SVH: TGroupBox
        Left = 8
        Top = 56
        Width = 897
        Height = 97
        Caption = #1057#1082#1083#1072#1076
        TabOrder = 1
        object Label7: TLabel
          Left = 8
          Top = 16
          Width = 76
          Height = 13
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        end
        object Label10: TLabel
          Left = 8
          Top = 40
          Width = 49
          Height = 13
          Caption = #1060#1072#1084#1080#1083#1080#1103
        end
        object Label11: TLabel
          Left = 8
          Top = 64
          Width = 58
          Height = 13
          Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        end
        object E_G142: TEdit
          Left = 88
          Top = 13
          Width = 417
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 0
          OnChange = E_G142Change
        end
        object E_G14Fam: TEdit
          Left = 88
          Top = 40
          Width = 194
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 1
          OnChange = E_G14FamChange
          OnKeyPress = E_G14FamKeyPress
        end
        object E_G14Dolj: TEdit
          Left = 88
          Top = 64
          Width = 194
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 2
          OnChange = E_G14DoljChange
          OnKeyPress = E_G14DoljKeyPress
        end
      end
      object GB_Car: TGroupBox
        Left = 8
        Top = 159
        Width = 897
        Height = 145
        Caption = #1055#1077#1088#1077#1074#1086#1079#1095#1080#1082
        TabOrder = 2
        object Label12: TLabel
          Left = 8
          Top = 40
          Width = 24
          Height = 13
          Caption = #1048#1053#1053
        end
        object Label13: TLabel
          Left = 8
          Top = 16
          Width = 76
          Height = 13
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        end
        object Label14: TLabel
          Left = 8
          Top = 64
          Width = 31
          Height = 13
          Caption = #1040#1076#1088#1077#1089
        end
        object Label15: TLabel
          Left = 8
          Top = 88
          Width = 29
          Height = 13
          Caption = #1054#1043#1056#1053
        end
        object Label16: TLabel
          Left = 408
          Top = 88
          Width = 48
          Height = 13
          Caption = #1042#1086#1076#1080#1090#1077#1083#1100
        end
        object Label17: TLabel
          Left = 8
          Top = 112
          Width = 36
          Height = 13
          Caption = #1057#1090#1088#1072#1085#1072
        end
        object Label19: TLabel
          Left = 222
          Top = 91
          Width = 23
          Height = 13
          Caption = #1050#1055#1055
        end
        object E_CINN: TEdit
          Left = 88
          Top = 40
          Width = 121
          Height = 21
          TabOrder = 1
          OnChange = E_CINNChange
          OnExit = E_CINNExit
          OnKeyPress = E_CINNKeyPress
        end
        object E_CADDR: TEdit
          Left = 88
          Top = 64
          Width = 801
          Height = 21
          TabOrder = 2
          OnChange = E_CADDRChange
          OnKeyPress = E_CADDRKeyPress
        end
        object E_COgrn: TEdit
          Left = 88
          Top = 88
          Width = 121
          Height = 21
          NumbersOnly = True
          TabOrder = 3
          OnChange = E_COgrnChange
          OnKeyPress = E_COgrnKeyPress
        end
        object E_CKPP: TEdit
          Left = 272
          Top = 88
          Width = 121
          Height = 21
          NumbersOnly = True
          TabOrder = 4
          OnChange = E_CKPPChange
          OnKeyPress = E_CKPPKeyPress
        end
        object E_CFAM: TEdit
          Left = 488
          Top = 88
          Width = 305
          Height = 21
          TabOrder = 5
          OnChange = E_CFAMChange
          OnKeyPress = E_CFAMKeyPress
        end
        object E_CountryName: TEdit
          Left = 168
          Top = 112
          Width = 225
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 7
        end
        object E_CntryKod: TButtonedEdit
          Left = 88
          Top = 112
          Width = 60
          Height = 21
          Images = Main_F.ImL_Buttons16
          MaxLength = 2
          RightButton.ImageIndex = 1
          RightButton.Visible = True
          TabOrder = 6
          OnChange = E_CntryKodChange
          OnKeyPress = E_CntryKodKeyPress
          OnRightButtonClick = E_CntryKodRightButtonClick
        end
        object E_CName: TButtonedEdit
          Left = 88
          Top = 13
          Width = 417
          Height = 21
          Images = Main_F.ImL_Buttons16
          NumbersOnly = True
          ReadOnly = True
          RightButton.ImageIndex = 1
          RightButton.Visible = True
          TabOrder = 0
          OnChange = E_CNameChange
          OnRightButtonClick = E_CNameRightButtonClick
        end
      end
      object GroupBox4: TGroupBox
        Left = 8
        Top = 0
        Width = 897
        Height = 49
        Caption = #1044#1086#1082#1091#1084#1077#1085#1090
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label21: TLabel
          Left = 8
          Top = 16
          Width = 60
          Height = 13
          Caption = #1053#1086#1084#1077#1088' '#1044#1054'1'
        end
        object Label22: TLabel
          Left = 160
          Top = 19
          Width = 11
          Height = 13
          Caption = #1086#1090
        end
        object E_G073: TEdit
          Left = 88
          Top = 16
          Width = 57
          Height = 21
          Enabled = False
          MaxLength = 7
          NumbersOnly = True
          TabOrder = 0
          OnChange = E_G073Change
          OnKeyPress = E_G073KeyPress
        end
      end
      object GB_Shipper: TGroupBox
        Left = 8
        Top = 322
        Width = 897
        Height = 69
        Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
        TabOrder = 3
        object Label25: TLabel
          Left = 8
          Top = 18
          Width = 76
          Height = 13
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        end
        object Label26: TLabel
          Left = 8
          Top = 42
          Width = 31
          Height = 13
          Caption = #1040#1076#1088#1077#1089
        end
        object Label27: TLabel
          Left = 752
          Top = 18
          Width = 36
          Height = 13
          Caption = #1057#1090#1088#1072#1085#1072
        end
        object E_FCNTRYName: TEdit
          Left = 752
          Top = 40
          Width = 121
          Height = 21
          Enabled = False
          TabOrder = 3
        end
        object E_FAddr: TEdit
          Left = 88
          Top = 40
          Width = 641
          Height = 21
          TabOrder = 1
          OnChange = E_FAddrChange
        end
        object E_FCntryKod: TButtonedEdit
          Left = 813
          Top = 15
          Width = 60
          Height = 21
          Images = Main_F.ImL_Buttons16
          MaxLength = 2
          RightButton.ImageIndex = 1
          RightButton.Visible = True
          TabOrder = 2
          OnChange = E_FCntryKodChange
          OnKeyPress = E_FCntryKodKeyPress
          OnRightButtonClick = E_FCntryKodRightButtonClick
        end
        object E_FName: TButtonedEdit
          Left = 88
          Top = 13
          Width = 641
          Height = 21
          Images = Main_F.ImL_Buttons16
          ReadOnly = True
          RightButton.ImageIndex = 1
          RightButton.Visible = True
          TabOrder = 0
          OnChange = E_FNameChange
          OnRightButtonClick = E_FNameRightButtonClick
        end
      end
      object GB_Consignee: TGroupBox
        Left = 6
        Top = 402
        Width = 899
        Height = 97
        Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100
        TabOrder = 4
        object Label28: TLabel
          Left = 8
          Top = 18
          Width = 76
          Height = 13
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        end
        object Label29: TLabel
          Left = 8
          Top = 42
          Width = 31
          Height = 13
          Caption = #1040#1076#1088#1077#1089
        end
        object Label31: TLabel
          Left = 8
          Top = 66
          Width = 20
          Height = 13
          Caption = #1048#1085#1085
        end
        object Label32: TLabel
          Left = 224
          Top = 69
          Width = 23
          Height = 13
          Caption = #1050#1055#1055
        end
        object Label33: TLabel
          Left = 405
          Top = 68
          Width = 29
          Height = 13
          Caption = #1054#1043#1056#1053
        end
        object Label1: TLabel
          Left = 760
          Top = 16
          Width = 36
          Height = 13
          Caption = #1057#1090#1088#1072#1085#1072
        end
        object E_RAddr: TEdit
          Left = 90
          Top = 39
          Width = 641
          Height = 21
          TabOrder = 1
          OnChange = E_RAddrChange
        end
        object E_RInn: TEdit
          Left = 90
          Top = 66
          Width = 113
          Height = 21
          MaxLength = 12
          NumbersOnly = True
          TabOrder = 3
          OnChange = E_RInnChange
          OnExit = E_RInnExit
        end
        object E_RKPP: TEdit
          Left = 282
          Top = 66
          Width = 113
          Height = 21
          MaxLength = 9
          NumbersOnly = True
          TabOrder = 4
          OnChange = E_RKPPChange
        end
        object E_ROGRN: TEdit
          Left = 440
          Top = 66
          Width = 161
          Height = 21
          MaxLength = 15
          NumbersOnly = True
          TabOrder = 5
          OnChange = E_ROGRNChange
        end
        object E_RName: TEdit
          Left = 90
          Top = 15
          Width = 641
          Height = 21
          TabOrder = 0
          OnChange = E_RNameChange
          OnKeyPress = E_FAddrKeyPress
        end
        object E_RCountryName: TEdit
          Left = 760
          Top = 38
          Width = 121
          Height = 21
          Enabled = False
          TabOrder = 6
        end
        object E_RCountryCode: TButtonedEdit
          Left = 821
          Top = 13
          Width = 60
          Height = 21
          Images = Main_F.ImL_Buttons16
          MaxLength = 2
          RightButton.ImageIndex = 1
          RightButton.Visible = True
          TabOrder = 2
          OnExit = E_RCountryCodeExit
          OnKeyPress = E_RCountryCodeKeyPress
          OnRightButtonClick = E_RCountryCodeRightButtonClick
        end
      end
      object E_G072: TDBDateTimeEditEh
        Left = 196
        Top = 13
        Width = 153
        Height = 21
        DynProps = <>
        EditButtons = <>
        Kind = dtkDateTimeEh
        TabOrder = 5
        Visible = True
      end
    end
    object Tab_Do1: TTabSheet
      Caption = #1044#1054'1('#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1077')'
      ImageIndex = 1
      object GroupBox5: TGroupBox
        Left = 8
        Top = 0
        Width = 897
        Height = 108
        Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1099#1077' '#1089#1088#1077#1076#1089#1090#1074#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Grid_Do1Trans: TDBGridEh
          Left = 2
          Top = 15
          Width = 767
          Height = 91
          Align = alLeft
          Color = clWhite
          DataSource = DM.DS_DoTrans
          DynProps = <>
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterParams.Color = clWindow
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'VIDTRANS'
              Footers = <>
              Title.Caption = #1050#1086#1076
              Width = 39
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NTRANS'
              Footers = <>
              Title.Caption = #8470' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1085#1086#1075#1086' '#1089#1088#1077#1076#1089#1090#1074#1072
              Width = 443
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object Btn_TransAdd: TBitBtn
          Left = 784
          Top = 16
          Width = 97
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000120B0000120B00000000000000000000FFFFFF00BB6A
            346BBA6530BCBB6631EDBA6630F7BA6630F7BA6630F7BA6530F7BA652FF7B965
            2EF7626833FB216B37FF196B37FF1F6B37FC416935B6FFFFFF00FFFFFF00BC69
            33DEF8F1EAF2F7ECDFFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFF86AD
            8EFF288C53FF64BA8DFF95D2B2FF64BA8DFF288C53FF196B378CFFFFFF00BF71
            38F5F5EBDFFEFDBF68FFFCBD67FFFBBE65FFFCBE64FFFCBE64FFFCBD62FF226F
            3AFF62BA8BFF60BA87FFFFFFFFFF60B987FF67BC8FFF196B37F7FFFFFF00C178
            3CF7F7EDE3FFFDC26EFFFFD8A0FFFFD79EFFFFD69BFFFFD798FFFFD696FF317B
            4CFF9CD4B6FFFFFFFFFFFFFFFFFFFFFFFFFF95D2B2FF196B37FFFFFFFF00C47C
            40F7F7F0E6FFF8B455FFF7B456FFF7B554FFF8B453FFF8B253FFF7B352FF4A88
            5DFF90D3B1FF92D6B1FFFFFFFFFF65BC8CFF67BC8FFF196B37F7FFFFFF00C580
            42F7F8F1E8FFFEE5D5FFFDE5D3FFFDE5D3FFFCE5D3FFFCE5D3FFFCE4D1FFA6B8
            9BFF61AB81FF95D4B4FFBAE6D0FF6ABB8FFF2D8F57FF196B378CFFFFFF00C582
            45F7F8F2EBFFFEE7D6FFFDE7D6FFFDE7D6FFFDE7D6FFFDE6D5FFFDE5D3FFFCE4
            D1FFADBC9FFF609873FF4F8E66FF4A8A61FF7A7A44FBFFFFFF00FFFFFF00C684
            47F7F9F3ECFFFEE8D6FFFEE8D7FFFDE7D6FFFDE7D6FFFDE7D5FFFDE5D3FFFBE4
            D0FFFBE3CCFFFADFC7FFFADFC6FFFAF2EAFFC68042F7FFFFFF00FFFFFF00C688
            49F7F9F4EDFFFEE8D8FFFEE8D8FFFEE8D7FFFEE7D6FFFDE5D3FFFCE4D1FFFBE1
            CCFFFAE0C7FFF9DDC3FFF8DCC2FFFAF4EDFFC68245F7FFFFFF00FFFFFF00C688
            4AF7F9F4EFFFFEE7D7FFFDE7D6FFFDE7D5FFFDE6D4FFFCE6D2FFFBE1CCFFFADF
            C7FFF8DCC2FFF6DABDFFF6D8BBFFFAF4EFFFC68346F7FFFFFF00FFFFFF00C689
            4BF7F9F4F0FFFCE6D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFFAE0C8FFF8DC
            C2FFF5D6BBFFF3D4B5FFF1D2B3FFF8F4F0FFC48246F7FFFFFF00FFFFFF00C689
            4BF7F9F5F1FFFCE3CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC4FFF6D9
            BCFFF4E9DFFFF7F2ECFFFBF7F3FFF5EFE9FFC27E45FBFFFFFF00FFFFFF00C689
            4CF6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC2FFF5D6
            BAFFFDFBF8FFFCE6CDFFFAE5C9FFE2B684FFBF7942A6FFFFFF00FFFFFF00C588
            4BEAFAF6F2FCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC5FFF8DBC1FFF4D6
            B8FFFFFBF8FFF6D8B4FFE1B07DFFDB9264F6B46B3E07FFFFFF00FFFFFF00C485
            49C3F7F2ECECF8F4EEFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
            ECFFF2E6D7FFE2B27DFFDB9465F5B3683B07FFFFFF00FFFFFF00FFFFFF00C17D
            4460C88B4DBBC88C4FEEC88C4FF6C88C4FF7C88C4FF7C88D4FF7C98C4FF7C78B
            4FF7C5894BD4C4763B91B3683C06FFFFFF00FFFFFF00FFFFFF00}
          ParentFont = False
          TabOrder = 1
          OnClick = Btn_TransAddClick
        end
        object Btn_TransEdit: TBitBtn
          Left = 786
          Top = 44
          Width = 97
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000120B0000120B00000000000000000000FFFFFF00BB6A
            346BBA6530BCBB6631EDBA6630F7BA6630F7BA6630F7BA6530F7BA652FF7B965
            2EF7B9652EF7B9642EF7B9642EEFB7622CBDB7622E63FFFFFF00FFFFFF00BC69
            33DEF8F1EAF2F7ECDFFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFFFAF3
            EBFFFAF2EAFFFCF7F3FFFCF8F4FDFEFEFDF0B7602AD5FFFFFF00FFFFFF00BF71
            38F5F5EBDFFEFDBF68FFFCBD67FFFBBE65FFFCBE64FFFCBE64FFFCBD62FFFBBD
            63FFFBBC61FFFCBE60FFFCBC62FFFDFBF8FDB9642DF3FFFFFF00FFFFFF00C178
            3CF7F7EDE3FFFDC26EFF184257FF2B6187FF4C89BCFF709FB3FFE3C99AFFFFD6
            95FFFFD594FFFFD493FFFBBE65FFFBF7F4FFBB6731F7FFFFFF00FFFFFF00C47C
            40F7F7F0E6FFF8B455FF2E6682FF94C7F9FF91C9F9FF4185C9FF2668A6FFD2A8
            65FFF7B251FFF7B24FFFF7B24FFFFCF9F5FFBF6F36F7FFFFFF00FFFFFF00C580
            42F7F8F1E8FFFEE5D5FF4389AAFFE0F2FFFF549AD8FF1A7ABEFF4998C5FF488C
            C2FFDAD2CDFFFBE0C9FFFBE1C8FFFDFAF7FFC1763BF7FFFFFF00FFFFFF00C582
            45F7F8F2EBFFFEE7D6FFA6B6BFFF7AB6D5FF90B7D1FF55C9E4FF5BDFF5FF78D0
            EDFF519BD9FFE1D6CDFFFBE1C9FFFBF7F2FFC57C3FF7FFFFFF00FFFFFF00C684
            47F7F9F3ECFFFEE8D6FFFEE8D7FFB3C6CCFF76B9D6FFC2F6FDFF63DFF7FF5DE2
            F8FF79D3F0FF4998DAFFE2D5C8FFFAF2EAFFC68042F7FFFFFF00FFFFFF00C688
            49F7F9F4EDFFFEE8D8FFFEE8D8FFFEE8D7FFB0C6CCFF77CBE7FFC7F7FDFF5EDC
            F5FF5AE1F7FF7BD4F1FF4B99DBFFD2DFE9FFC68245F7FFFFFF00FFFFFF00C688
            4AF7F9F4EFFFFEE7D7FFFDE7D6FFFDE7D5FFFDE6D4FFBDD6D5FF79D3EEFFC7F7
            FDFF5FDCF5FF5BE2F7FF7AD6F2FF51A1E0FFAD8560F9FFFFFF00FFFFFF00C689
            4BF7F9F4F0FFFCE6D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFBED4D0FF7DD4
            EEFFC4F6FDFF6CDDF6FF6DCAEDFF63A3D7FF6499C8FE5192CA26FFFFFF00C689
            4BF7F9F5F1FFFCE3CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC4FFAFCD
            C9FF81D5EEFFB2E3F9FF8BC0E7FFAED3F6FFC4E0FCFF669FD3F7FFFFFF00C689
            4CF6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC2FFF5D6
            BAFFAFE3F1FF77BEE7FFB4D2F0FFE5F3FFFFACD2EFFF488CC7E8FFFFFF00C588
            4BEAFAF6F2FCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC5FFF8DBC1FFF4D6
            B8FFFFFBF8FFB6CBC2FF58A5D8FF85B1DBFF469DD0FF2B95D15EFFFFFF00C485
            49C3F7F2ECECF8F4EEFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
            ECFFF2E6D7FFE2B27DFFDB9465F5B3683B07FFFFFF00FFFFFF00FFFFFF00C17D
            4460C88B4DBBC88C4FEEC88C4FF6C88C4FF7C88C4FF7C88D4FF7C98C4FF7C78B
            4FF7C5894BD4C4763B91B3683C06FFFFFF00FFFFFF00FFFFFF00}
          ParentFont = False
          TabOrder = 2
          OnClick = Btn_TransEditClick
        end
        object Btn_TransDel: TBitBtn
          Left = 784
          Top = 75
          Width = 97
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000C40E0000C40E00000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFDADADADADA
            DADAD9D99C15161554FFFFDAFFF6F6F6F6F6FFAF5E67271F1616FFE2F609F3F3
            F3F3F31EAF2727271F16FFE2F609090909090916B7FFFFFF2716FFE2F6F3F3F3
            F3F3F35DB76F27676716FFE2FFF6F6F6F6F6F6AE67B7EFAF5E16FFE2FFF6F6F6
            F6F6F6F6AE5E161E9CFFFFE2FFF6F6F6F6F6F6F6090909FFE2FFFFE2FFF6F6F6
            F6F6F609090909FFE2FFFFE2FFF6F6F6F6F60909090909FFE2FFFFE2FFF6F6F6
            F6090909090909FFE2FFFFE2FF09F60909090909F6F6FFF6E2FFFFE2FF090909
            09090909FF0909F4E2FFFFE2FF09090909090909FF09F4EBDAFFFFE2F6FFFFFF
            FFFFFFF6F6F4EBDAFFFFFFE2E2E2E2E2E2E2E2E2E2E2DAFFFFFF}
          ParentFont = False
          TabOrder = 3
          OnClick = Btn_TransDelClick
        end
      end
      object GroupBox6: TGroupBox
        Left = 8
        Top = 112
        Width = 897
        Height = 111
        Caption = #1058#1072#1084#1086#1078#1077#1085#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Grid_Do1Cust: TDBGridEh
          Left = 2
          Top = 15
          Width = 767
          Height = 94
          Align = alLeft
          Color = clWhite
          DataSource = DM.DS_DoCust
          DynProps = <>
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterParams.Color = clWindow
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'N_TD'
              Footers = <>
              Title.Caption = #8470' '#1087'/'#1087
              Width = 37
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'TYPE_DOC'
              Footers = <>
              Title.Caption = #1050#1086#1076
              Width = 37
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NAME'
              Footers = <>
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Width = 336
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'N_DOC'
              Footers = <>
              Title.Caption = #1053#1086#1084#1077#1088
              Width = 236
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'D_DOC'
              Footers = <>
              Title.Caption = #1044#1072#1090#1072
              Width = 102
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object Btn_CustAdd: TBitBtn
          Left = 783
          Top = 15
          Width = 97
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000120B0000120B00000000000000000000FFFFFF00BB6A
            346BBA6530BCBB6631EDBA6630F7BA6630F7BA6630F7BA6530F7BA652FF7B965
            2EF7626833FB216B37FF196B37FF1F6B37FC416935B6FFFFFF00FFFFFF00BC69
            33DEF8F1EAF2F7ECDFFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFF86AD
            8EFF288C53FF64BA8DFF95D2B2FF64BA8DFF288C53FF196B378CFFFFFF00BF71
            38F5F5EBDFFEFDBF68FFFCBD67FFFBBE65FFFCBE64FFFCBE64FFFCBD62FF226F
            3AFF62BA8BFF60BA87FFFFFFFFFF60B987FF67BC8FFF196B37F7FFFFFF00C178
            3CF7F7EDE3FFFDC26EFFFFD8A0FFFFD79EFFFFD69BFFFFD798FFFFD696FF317B
            4CFF9CD4B6FFFFFFFFFFFFFFFFFFFFFFFFFF95D2B2FF196B37FFFFFFFF00C47C
            40F7F7F0E6FFF8B455FFF7B456FFF7B554FFF8B453FFF8B253FFF7B352FF4A88
            5DFF90D3B1FF92D6B1FFFFFFFFFF65BC8CFF67BC8FFF196B37F7FFFFFF00C580
            42F7F8F1E8FFFEE5D5FFFDE5D3FFFDE5D3FFFCE5D3FFFCE5D3FFFCE4D1FFA6B8
            9BFF61AB81FF95D4B4FFBAE6D0FF6ABB8FFF2D8F57FF196B378CFFFFFF00C582
            45F7F8F2EBFFFEE7D6FFFDE7D6FFFDE7D6FFFDE7D6FFFDE6D5FFFDE5D3FFFCE4
            D1FFADBC9FFF609873FF4F8E66FF4A8A61FF7A7A44FBFFFFFF00FFFFFF00C684
            47F7F9F3ECFFFEE8D6FFFEE8D7FFFDE7D6FFFDE7D6FFFDE7D5FFFDE5D3FFFBE4
            D0FFFBE3CCFFFADFC7FFFADFC6FFFAF2EAFFC68042F7FFFFFF00FFFFFF00C688
            49F7F9F4EDFFFEE8D8FFFEE8D8FFFEE8D7FFFEE7D6FFFDE5D3FFFCE4D1FFFBE1
            CCFFFAE0C7FFF9DDC3FFF8DCC2FFFAF4EDFFC68245F7FFFFFF00FFFFFF00C688
            4AF7F9F4EFFFFEE7D7FFFDE7D6FFFDE7D5FFFDE6D4FFFCE6D2FFFBE1CCFFFADF
            C7FFF8DCC2FFF6DABDFFF6D8BBFFFAF4EFFFC68346F7FFFFFF00FFFFFF00C689
            4BF7F9F4F0FFFCE6D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFFAE0C8FFF8DC
            C2FFF5D6BBFFF3D4B5FFF1D2B3FFF8F4F0FFC48246F7FFFFFF00FFFFFF00C689
            4BF7F9F5F1FFFCE3CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC4FFF6D9
            BCFFF4E9DFFFF7F2ECFFFBF7F3FFF5EFE9FFC27E45FBFFFFFF00FFFFFF00C689
            4CF6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC2FFF5D6
            BAFFFDFBF8FFFCE6CDFFFAE5C9FFE2B684FFBF7942A6FFFFFF00FFFFFF00C588
            4BEAFAF6F2FCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC5FFF8DBC1FFF4D6
            B8FFFFFBF8FFF6D8B4FFE1B07DFFDB9264F6B46B3E07FFFFFF00FFFFFF00C485
            49C3F7F2ECECF8F4EEFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
            ECFFF2E6D7FFE2B27DFFDB9465F5B3683B07FFFFFF00FFFFFF00FFFFFF00C17D
            4460C88B4DBBC88C4FEEC88C4FF6C88C4FF7C88C4FF7C88D4FF7C98C4FF7C78B
            4FF7C5894BD4C4763B91B3683C06FFFFFF00FFFFFF00FFFFFF00}
          ParentFont = False
          TabOrder = 1
          OnClick = Btn_CustAddClick
        end
        object Btn_DoCustEdit: TBitBtn
          Left = 784
          Top = 45
          Width = 97
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000120B0000120B00000000000000000000FFFFFF00BB6A
            346BBA6530BCBB6631EDBA6630F7BA6630F7BA6630F7BA6530F7BA652FF7B965
            2EF7B9652EF7B9642EF7B9642EEFB7622CBDB7622E63FFFFFF00FFFFFF00BC69
            33DEF8F1EAF2F7ECDFFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFFFAF3
            EBFFFAF2EAFFFCF7F3FFFCF8F4FDFEFEFDF0B7602AD5FFFFFF00FFFFFF00BF71
            38F5F5EBDFFEFDBF68FFFCBD67FFFBBE65FFFCBE64FFFCBE64FFFCBD62FFFBBD
            63FFFBBC61FFFCBE60FFFCBC62FFFDFBF8FDB9642DF3FFFFFF00FFFFFF00C178
            3CF7F7EDE3FFFDC26EFF184257FF2B6187FF4C89BCFF709FB3FFE3C99AFFFFD6
            95FFFFD594FFFFD493FFFBBE65FFFBF7F4FFBB6731F7FFFFFF00FFFFFF00C47C
            40F7F7F0E6FFF8B455FF2E6682FF94C7F9FF91C9F9FF4185C9FF2668A6FFD2A8
            65FFF7B251FFF7B24FFFF7B24FFFFCF9F5FFBF6F36F7FFFFFF00FFFFFF00C580
            42F7F8F1E8FFFEE5D5FF4389AAFFE0F2FFFF549AD8FF1A7ABEFF4998C5FF488C
            C2FFDAD2CDFFFBE0C9FFFBE1C8FFFDFAF7FFC1763BF7FFFFFF00FFFFFF00C582
            45F7F8F2EBFFFEE7D6FFA6B6BFFF7AB6D5FF90B7D1FF55C9E4FF5BDFF5FF78D0
            EDFF519BD9FFE1D6CDFFFBE1C9FFFBF7F2FFC57C3FF7FFFFFF00FFFFFF00C684
            47F7F9F3ECFFFEE8D6FFFEE8D7FFB3C6CCFF76B9D6FFC2F6FDFF63DFF7FF5DE2
            F8FF79D3F0FF4998DAFFE2D5C8FFFAF2EAFFC68042F7FFFFFF00FFFFFF00C688
            49F7F9F4EDFFFEE8D8FFFEE8D8FFFEE8D7FFB0C6CCFF77CBE7FFC7F7FDFF5EDC
            F5FF5AE1F7FF7BD4F1FF4B99DBFFD2DFE9FFC68245F7FFFFFF00FFFFFF00C688
            4AF7F9F4EFFFFEE7D7FFFDE7D6FFFDE7D5FFFDE6D4FFBDD6D5FF79D3EEFFC7F7
            FDFF5FDCF5FF5BE2F7FF7AD6F2FF51A1E0FFAD8560F9FFFFFF00FFFFFF00C689
            4BF7F9F4F0FFFCE6D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFBED4D0FF7DD4
            EEFFC4F6FDFF6CDDF6FF6DCAEDFF63A3D7FF6499C8FE5192CA26FFFFFF00C689
            4BF7F9F5F1FFFCE3CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC4FFAFCD
            C9FF81D5EEFFB2E3F9FF8BC0E7FFAED3F6FFC4E0FCFF669FD3F7FFFFFF00C689
            4CF6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC2FFF5D6
            BAFFAFE3F1FF77BEE7FFB4D2F0FFE5F3FFFFACD2EFFF488CC7E8FFFFFF00C588
            4BEAFAF6F2FCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC5FFF8DBC1FFF4D6
            B8FFFFFBF8FFB6CBC2FF58A5D8FF85B1DBFF469DD0FF2B95D15EFFFFFF00C485
            49C3F7F2ECECF8F4EEFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
            ECFFF2E6D7FFE2B27DFFDB9465F5B3683B07FFFFFF00FFFFFF00FFFFFF00C17D
            4460C88B4DBBC88C4FEEC88C4FF6C88C4FF7C88C4FF7C88D4FF7C98C4FF7C78B
            4FF7C5894BD4C4763B91B3683C06FFFFFF00FFFFFF00FFFFFF00}
          ParentFont = False
          TabOrder = 2
          OnClick = Btn_DoCustEditClick
        end
        object Btn_DoCustDel: TBitBtn
          Left = 784
          Top = 77
          Width = 97
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000C40E0000C40E00000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFDADADADADA
            DADAD9D99C15161554FFFFDAFFF6F6F6F6F6FFAF5E67271F1616FFE2F609F3F3
            F3F3F31EAF2727271F16FFE2F609090909090916B7FFFFFF2716FFE2F6F3F3F3
            F3F3F35DB76F27676716FFE2FFF6F6F6F6F6F6AE67B7EFAF5E16FFE2FFF6F6F6
            F6F6F6F6AE5E161E9CFFFFE2FFF6F6F6F6F6F6F6090909FFE2FFFFE2FFF6F6F6
            F6F6F609090909FFE2FFFFE2FFF6F6F6F6F60909090909FFE2FFFFE2FFF6F6F6
            F6090909090909FFE2FFFFE2FF09F60909090909F6F6FFF6E2FFFFE2FF090909
            09090909FF0909F4E2FFFFE2FF09090909090909FF09F4EBDAFFFFE2F6FFFFFF
            FFFFFFF6F6F4EBDAFFFFFFE2E2E2E2E2E2E2E2E2E2E2DAFFFFFF}
          ParentFont = False
          TabOrder = 3
          OnClick = Btn_DoCustDelClick
        end
      end
      object GroupBox7: TGroupBox
        Left = 7
        Top = 226
        Width = 897
        Height = 108
        Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Grid_Do1Trand: TDBGridEh
          Left = 2
          Top = 15
          Width = 767
          Height = 91
          Align = alLeft
          Color = clWhite
          DataSource = DM.DS_DoTrand
          DynProps = <>
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterParams.Color = clWindow
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'N_TD'
              Footers = <>
              Title.Caption = #8470' '#1087'/'#1087
              Width = 35
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'TYPE_DOC'
              Footers = <>
              Title.Caption = #1058#1080#1087
              Width = 39
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NAME'
              Footers = <>
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Width = 275
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NDOC'
              Footers = <>
              Title.Caption = #1053#1086#1084#1077#1088
              Width = 234
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DDOC'
              Footers = <>
              Title.Caption = #1044#1072#1090#1072
              Width = 78
            end
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'KOL_TOV'
              Footers = <>
              Title.Caption = #1058#1086#1074#1072#1088#1086#1074
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object Btn_DoTrandAdd: TBitBtn
          Left = 784
          Top = 15
          Width = 97
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000120B0000120B00000000000000000000FFFFFF00BB6A
            346BBA6530BCBB6631EDBA6630F7BA6630F7BA6630F7BA6530F7BA652FF7B965
            2EF7626833FB216B37FF196B37FF1F6B37FC416935B6FFFFFF00FFFFFF00BC69
            33DEF8F1EAF2F7ECDFFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFF86AD
            8EFF288C53FF64BA8DFF95D2B2FF64BA8DFF288C53FF196B378CFFFFFF00BF71
            38F5F5EBDFFEFDBF68FFFCBD67FFFBBE65FFFCBE64FFFCBE64FFFCBD62FF226F
            3AFF62BA8BFF60BA87FFFFFFFFFF60B987FF67BC8FFF196B37F7FFFFFF00C178
            3CF7F7EDE3FFFDC26EFFFFD8A0FFFFD79EFFFFD69BFFFFD798FFFFD696FF317B
            4CFF9CD4B6FFFFFFFFFFFFFFFFFFFFFFFFFF95D2B2FF196B37FFFFFFFF00C47C
            40F7F7F0E6FFF8B455FFF7B456FFF7B554FFF8B453FFF8B253FFF7B352FF4A88
            5DFF90D3B1FF92D6B1FFFFFFFFFF65BC8CFF67BC8FFF196B37F7FFFFFF00C580
            42F7F8F1E8FFFEE5D5FFFDE5D3FFFDE5D3FFFCE5D3FFFCE5D3FFFCE4D1FFA6B8
            9BFF61AB81FF95D4B4FFBAE6D0FF6ABB8FFF2D8F57FF196B378CFFFFFF00C582
            45F7F8F2EBFFFEE7D6FFFDE7D6FFFDE7D6FFFDE7D6FFFDE6D5FFFDE5D3FFFCE4
            D1FFADBC9FFF609873FF4F8E66FF4A8A61FF7A7A44FBFFFFFF00FFFFFF00C684
            47F7F9F3ECFFFEE8D6FFFEE8D7FFFDE7D6FFFDE7D6FFFDE7D5FFFDE5D3FFFBE4
            D0FFFBE3CCFFFADFC7FFFADFC6FFFAF2EAFFC68042F7FFFFFF00FFFFFF00C688
            49F7F9F4EDFFFEE8D8FFFEE8D8FFFEE8D7FFFEE7D6FFFDE5D3FFFCE4D1FFFBE1
            CCFFFAE0C7FFF9DDC3FFF8DCC2FFFAF4EDFFC68245F7FFFFFF00FFFFFF00C688
            4AF7F9F4EFFFFEE7D7FFFDE7D6FFFDE7D5FFFDE6D4FFFCE6D2FFFBE1CCFFFADF
            C7FFF8DCC2FFF6DABDFFF6D8BBFFFAF4EFFFC68346F7FFFFFF00FFFFFF00C689
            4BF7F9F4F0FFFCE6D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFFAE0C8FFF8DC
            C2FFF5D6BBFFF3D4B5FFF1D2B3FFF8F4F0FFC48246F7FFFFFF00FFFFFF00C689
            4BF7F9F5F1FFFCE3CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC4FFF6D9
            BCFFF4E9DFFFF7F2ECFFFBF7F3FFF5EFE9FFC27E45FBFFFFFF00FFFFFF00C689
            4CF6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC2FFF5D6
            BAFFFDFBF8FFFCE6CDFFFAE5C9FFE2B684FFBF7942A6FFFFFF00FFFFFF00C588
            4BEAFAF6F2FCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC5FFF8DBC1FFF4D6
            B8FFFFFBF8FFF6D8B4FFE1B07DFFDB9264F6B46B3E07FFFFFF00FFFFFF00C485
            49C3F7F2ECECF8F4EEFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
            ECFFF2E6D7FFE2B27DFFDB9465F5B3683B07FFFFFF00FFFFFF00FFFFFF00C17D
            4460C88B4DBBC88C4FEEC88C4FF6C88C4FF7C88C4FF7C88D4FF7C98C4FF7C78B
            4FF7C5894BD4C4763B91B3683C06FFFFFF00FFFFFF00FFFFFF00}
          ParentFont = False
          TabOrder = 1
          OnClick = Btn_DoTrandAddClick
        end
        object Btn_DoTrandEdit: TBitBtn
          Left = 784
          Top = 45
          Width = 97
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000120B0000120B00000000000000000000FFFFFF00BB6A
            346BBA6530BCBB6631EDBA6630F7BA6630F7BA6630F7BA6530F7BA652FF7B965
            2EF7B9652EF7B9642EF7B9642EEFB7622CBDB7622E63FFFFFF00FFFFFF00BC69
            33DEF8F1EAF2F7ECDFFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFFFAF3
            EBFFFAF2EAFFFCF7F3FFFCF8F4FDFEFEFDF0B7602AD5FFFFFF00FFFFFF00BF71
            38F5F5EBDFFEFDBF68FFFCBD67FFFBBE65FFFCBE64FFFCBE64FFFCBD62FFFBBD
            63FFFBBC61FFFCBE60FFFCBC62FFFDFBF8FDB9642DF3FFFFFF00FFFFFF00C178
            3CF7F7EDE3FFFDC26EFF184257FF2B6187FF4C89BCFF709FB3FFE3C99AFFFFD6
            95FFFFD594FFFFD493FFFBBE65FFFBF7F4FFBB6731F7FFFFFF00FFFFFF00C47C
            40F7F7F0E6FFF8B455FF2E6682FF94C7F9FF91C9F9FF4185C9FF2668A6FFD2A8
            65FFF7B251FFF7B24FFFF7B24FFFFCF9F5FFBF6F36F7FFFFFF00FFFFFF00C580
            42F7F8F1E8FFFEE5D5FF4389AAFFE0F2FFFF549AD8FF1A7ABEFF4998C5FF488C
            C2FFDAD2CDFFFBE0C9FFFBE1C8FFFDFAF7FFC1763BF7FFFFFF00FFFFFF00C582
            45F7F8F2EBFFFEE7D6FFA6B6BFFF7AB6D5FF90B7D1FF55C9E4FF5BDFF5FF78D0
            EDFF519BD9FFE1D6CDFFFBE1C9FFFBF7F2FFC57C3FF7FFFFFF00FFFFFF00C684
            47F7F9F3ECFFFEE8D6FFFEE8D7FFB3C6CCFF76B9D6FFC2F6FDFF63DFF7FF5DE2
            F8FF79D3F0FF4998DAFFE2D5C8FFFAF2EAFFC68042F7FFFFFF00FFFFFF00C688
            49F7F9F4EDFFFEE8D8FFFEE8D8FFFEE8D7FFB0C6CCFF77CBE7FFC7F7FDFF5EDC
            F5FF5AE1F7FF7BD4F1FF4B99DBFFD2DFE9FFC68245F7FFFFFF00FFFFFF00C688
            4AF7F9F4EFFFFEE7D7FFFDE7D6FFFDE7D5FFFDE6D4FFBDD6D5FF79D3EEFFC7F7
            FDFF5FDCF5FF5BE2F7FF7AD6F2FF51A1E0FFAD8560F9FFFFFF00FFFFFF00C689
            4BF7F9F4F0FFFCE6D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFBED4D0FF7DD4
            EEFFC4F6FDFF6CDDF6FF6DCAEDFF63A3D7FF6499C8FE5192CA26FFFFFF00C689
            4BF7F9F5F1FFFCE3CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC4FFAFCD
            C9FF81D5EEFFB2E3F9FF8BC0E7FFAED3F6FFC4E0FCFF669FD3F7FFFFFF00C689
            4CF6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC2FFF5D6
            BAFFAFE3F1FF77BEE7FFB4D2F0FFE5F3FFFFACD2EFFF488CC7E8FFFFFF00C588
            4BEAFAF6F2FCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC5FFF8DBC1FFF4D6
            B8FFFFFBF8FFB6CBC2FF58A5D8FF85B1DBFF469DD0FF2B95D15EFFFFFF00C485
            49C3F7F2ECECF8F4EEFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
            ECFFF2E6D7FFE2B27DFFDB9465F5B3683B07FFFFFF00FFFFFF00FFFFFF00C17D
            4460C88B4DBBC88C4FEEC88C4FF6C88C4FF7C88C4FF7C88D4FF7C98C4FF7C78B
            4FF7C5894BD4C4763B91B3683C06FFFFFF00FFFFFF00FFFFFF00}
          ParentFont = False
          TabOrder = 2
          OnClick = Btn_DoTrandEditClick
        end
        object Btn_DoTrandDel: TBitBtn
          Left = 784
          Top = 76
          Width = 97
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000C40E0000C40E00000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFDADADADADA
            DADAD9D99C15161554FFFFDAFFF6F6F6F6F6FFAF5E67271F1616FFE2F609F3F3
            F3F3F31EAF2727271F16FFE2F609090909090916B7FFFFFF2716FFE2F6F3F3F3
            F3F3F35DB76F27676716FFE2FFF6F6F6F6F6F6AE67B7EFAF5E16FFE2FFF6F6F6
            F6F6F6F6AE5E161E9CFFFFE2FFF6F6F6F6F6F6F6090909FFE2FFFFE2FFF6F6F6
            F6F6F609090909FFE2FFFFE2FFF6F6F6F6F60909090909FFE2FFFFE2FFF6F6F6
            F6090909090909FFE2FFFFE2FF09F60909090909F6F6FFF6E2FFFFE2FF090909
            09090909FF0909F4E2FFFFE2FF09090909090909FF09F4EBDAFFFFE2F6FFFFFF
            FFFFFFF6F6F4EBDAFFFFFFE2E2E2E2E2E2E2E2E2E2E2DAFFFFFF}
          ParentFont = False
          TabOrder = 3
          OnClick = Btn_DoTrandDelClick
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 338
        Width = 912
        Height = 267
        ActivePage = TabSheet2
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object TabSheet2: TTabSheet
          Caption = #1058#1086#1074#1072#1088#1099
          ImageIndex = 1
          object Grid_Do1Tovar: TDBGridEh
            Left = 0
            Top = 0
            Width = 904
            Height = 202
            Align = alTop
            DataSource = DM.DS_DoTovar
            DynProps = <>
            Flat = True
            FooterRowCount = 1
            FooterParams.Color = clWhite
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            SumList.Active = True
            TabOrder = 0
            TitleParams.MultiTitle = True
            TitleParams.RowLines = 2
            Columns = <
              item
                Alignment = taCenter
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'G32'
                Footers = <
                  item
                    Color = clBtnShadow
                  end>
                Title.Caption = #8470' '#1087'/'#1087
                Width = 25
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'G33'
                Footers = <
                  item
                    Color = clBtnShadow
                  end>
                Title.Caption = #1050#1086#1076' '#1058#1053#1042#1069#1044
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'G31_1'
                Footers = <
                  item
                    Color = clBtnShadow
                  end>
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 309
              end
              item
                Alignment = taCenter
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'G221'
                Footers = <
                  item
                    Color = clMoneyGreen
                    FieldName = 'G221'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ValueType = fvtFieldValue
                  end>
                Title.Caption = #1042#1072#1083#1102#1090#1072
                Width = 41
              end
              item
                Alignment = taRightJustify
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'G42'
                Footers = <
                  item
                    Alignment = taRightJustify
                    Color = clMoneyGreen
                    DisplayFormat = '0.00'
                    FieldName = 'G42'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ValueType = fvtSum
                  end>
                Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100'|'#1055#1088#1080#1093#1086#1076
                Width = 78
              end
              item
                Alignment = taRightJustify
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'G42_OST'
                Footer.Color = clMoneyGreen
                Footer.FieldName = 'G42_OST'
                Footer.ValueType = fvtSum
                Footers = <
                  item
                    Alignment = taRightJustify
                    Color = clMoneyGreen
                    FieldName = 'G42_OST'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ValueType = fvtSum
                  end>
                Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100'|'#1054#1089#1090#1072#1090#1086#1082
                Width = 69
              end
              item
                Alignment = taCenter
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'G31_2_HUMAN'
                Footers = <
                  item
                    Alignment = taCenter
                    Color = clMoneyGreen
                    FieldName = 'G31_2'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ValueType = fvtSum
                  end>
                Title.Caption = #1052#1077#1089#1090'|'#1055#1088#1080#1093#1086#1076
                Width = 62
              end
              item
                Alignment = taCenter
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'G31_2_OST_HUMAN'
                Footers = <
                  item
                    Alignment = taCenter
                    Color = clMoneyGreen
                    FieldName = 'G31_2_OST'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ValueType = fvtSum
                  end>
                Title.Caption = #1052#1077#1089#1090'|'#1054#1089#1090#1072#1090#1086#1082
                Width = 61
              end
              item
                Alignment = taRightJustify
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'G35'
                Footers = <
                  item
                    Alignment = taRightJustify
                    Color = clMoneyGreen
                    FieldName = 'G35'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ValueType = fvtSum
                  end>
                Title.Caption = #1042#1077#1089' '#1073#1088#1091#1090#1090#1086'|'#1055#1088#1080#1093#1086#1076
                Width = 85
              end
              item
                Alignment = taRightJustify
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'G35_OST'
                Footers = <
                  item
                    Alignment = taRightJustify
                    Color = clMoneyGreen
                    FieldName = 'G35_OST'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ValueType = fvtSum
                  end>
                Title.Caption = #1042#1077#1089' '#1073#1088#1091#1090#1090#1086'|'#1054#1089#1090#1072#1090#1086#1082
                Width = 77
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object Btn_DoTovarAdd: TBitBtn
            Left = 576
            Top = 211
            Width = 97
            Height = 25
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              20000000000000040000120B0000120B00000000000000000000FFFFFF00BB6A
              346BBA6530BCBB6631EDBA6630F7BA6630F7BA6630F7BA6530F7BA652FF7B965
              2EF7626833FB216B37FF196B37FF1F6B37FC416935B6FFFFFF00FFFFFF00BC69
              33DEF8F1EAF2F7ECDFFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFF86AD
              8EFF288C53FF64BA8DFF95D2B2FF64BA8DFF288C53FF196B378CFFFFFF00BF71
              38F5F5EBDFFEFDBF68FFFCBD67FFFBBE65FFFCBE64FFFCBE64FFFCBD62FF226F
              3AFF62BA8BFF60BA87FFFFFFFFFF60B987FF67BC8FFF196B37F7FFFFFF00C178
              3CF7F7EDE3FFFDC26EFFFFD8A0FFFFD79EFFFFD69BFFFFD798FFFFD696FF317B
              4CFF9CD4B6FFFFFFFFFFFFFFFFFFFFFFFFFF95D2B2FF196B37FFFFFFFF00C47C
              40F7F7F0E6FFF8B455FFF7B456FFF7B554FFF8B453FFF8B253FFF7B352FF4A88
              5DFF90D3B1FF92D6B1FFFFFFFFFF65BC8CFF67BC8FFF196B37F7FFFFFF00C580
              42F7F8F1E8FFFEE5D5FFFDE5D3FFFDE5D3FFFCE5D3FFFCE5D3FFFCE4D1FFA6B8
              9BFF61AB81FF95D4B4FFBAE6D0FF6ABB8FFF2D8F57FF196B378CFFFFFF00C582
              45F7F8F2EBFFFEE7D6FFFDE7D6FFFDE7D6FFFDE7D6FFFDE6D5FFFDE5D3FFFCE4
              D1FFADBC9FFF609873FF4F8E66FF4A8A61FF7A7A44FBFFFFFF00FFFFFF00C684
              47F7F9F3ECFFFEE8D6FFFEE8D7FFFDE7D6FFFDE7D6FFFDE7D5FFFDE5D3FFFBE4
              D0FFFBE3CCFFFADFC7FFFADFC6FFFAF2EAFFC68042F7FFFFFF00FFFFFF00C688
              49F7F9F4EDFFFEE8D8FFFEE8D8FFFEE8D7FFFEE7D6FFFDE5D3FFFCE4D1FFFBE1
              CCFFFAE0C7FFF9DDC3FFF8DCC2FFFAF4EDFFC68245F7FFFFFF00FFFFFF00C688
              4AF7F9F4EFFFFEE7D7FFFDE7D6FFFDE7D5FFFDE6D4FFFCE6D2FFFBE1CCFFFADF
              C7FFF8DCC2FFF6DABDFFF6D8BBFFFAF4EFFFC68346F7FFFFFF00FFFFFF00C689
              4BF7F9F4F0FFFCE6D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFFAE0C8FFF8DC
              C2FFF5D6BBFFF3D4B5FFF1D2B3FFF8F4F0FFC48246F7FFFFFF00FFFFFF00C689
              4BF7F9F5F1FFFCE3CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC4FFF6D9
              BCFFF4E9DFFFF7F2ECFFFBF7F3FFF5EFE9FFC27E45FBFFFFFF00FFFFFF00C689
              4CF6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC2FFF5D6
              BAFFFDFBF8FFFCE6CDFFFAE5C9FFE2B684FFBF7942A6FFFFFF00FFFFFF00C588
              4BEAFAF6F2FCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC5FFF8DBC1FFF4D6
              B8FFFFFBF8FFF6D8B4FFE1B07DFFDB9264F6B46B3E07FFFFFF00FFFFFF00C485
              49C3F7F2ECECF8F4EEFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
              ECFFF2E6D7FFE2B27DFFDB9465F5B3683B07FFFFFF00FFFFFF00FFFFFF00C17D
              4460C88B4DBBC88C4FEEC88C4FF6C88C4FF7C88C4FF7C88D4FF7C98C4FF7C78B
              4FF7C5894BD4C4763B91B3683C06FFFFFF00FFFFFF00FFFFFF00}
            ParentFont = False
            TabOrder = 1
            OnClick = Btn_DoTovarAddClick
          end
          object Btn_DoTovarEdit: TBitBtn
            Left = 680
            Top = 211
            Width = 97
            Height = 25
            Caption = #1048#1079#1084#1077#1085#1080#1090#1100
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              20000000000000040000120B0000120B00000000000000000000FFFFFF00BB6A
              346BBA6530BCBB6631EDBA6630F7BA6630F7BA6630F7BA6530F7BA652FF7B965
              2EF7B9652EF7B9642EF7B9642EEFB7622CBDB7622E63FFFFFF00FFFFFF00BC69
              33DEF8F1EAF2F7ECDFFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFFFAF3
              EBFFFAF2EAFFFCF7F3FFFCF8F4FDFEFEFDF0B7602AD5FFFFFF00FFFFFF00BF71
              38F5F5EBDFFEFDBF68FFFCBD67FFFBBE65FFFCBE64FFFCBE64FFFCBD62FFFBBD
              63FFFBBC61FFFCBE60FFFCBC62FFFDFBF8FDB9642DF3FFFFFF00FFFFFF00C178
              3CF7F7EDE3FFFDC26EFF184257FF2B6187FF4C89BCFF709FB3FFE3C99AFFFFD6
              95FFFFD594FFFFD493FFFBBE65FFFBF7F4FFBB6731F7FFFFFF00FFFFFF00C47C
              40F7F7F0E6FFF8B455FF2E6682FF94C7F9FF91C9F9FF4185C9FF2668A6FFD2A8
              65FFF7B251FFF7B24FFFF7B24FFFFCF9F5FFBF6F36F7FFFFFF00FFFFFF00C580
              42F7F8F1E8FFFEE5D5FF4389AAFFE0F2FFFF549AD8FF1A7ABEFF4998C5FF488C
              C2FFDAD2CDFFFBE0C9FFFBE1C8FFFDFAF7FFC1763BF7FFFFFF00FFFFFF00C582
              45F7F8F2EBFFFEE7D6FFA6B6BFFF7AB6D5FF90B7D1FF55C9E4FF5BDFF5FF78D0
              EDFF519BD9FFE1D6CDFFFBE1C9FFFBF7F2FFC57C3FF7FFFFFF00FFFFFF00C684
              47F7F9F3ECFFFEE8D6FFFEE8D7FFB3C6CCFF76B9D6FFC2F6FDFF63DFF7FF5DE2
              F8FF79D3F0FF4998DAFFE2D5C8FFFAF2EAFFC68042F7FFFFFF00FFFFFF00C688
              49F7F9F4EDFFFEE8D8FFFEE8D8FFFEE8D7FFB0C6CCFF77CBE7FFC7F7FDFF5EDC
              F5FF5AE1F7FF7BD4F1FF4B99DBFFD2DFE9FFC68245F7FFFFFF00FFFFFF00C688
              4AF7F9F4EFFFFEE7D7FFFDE7D6FFFDE7D5FFFDE6D4FFBDD6D5FF79D3EEFFC7F7
              FDFF5FDCF5FF5BE2F7FF7AD6F2FF51A1E0FFAD8560F9FFFFFF00FFFFFF00C689
              4BF7F9F4F0FFFCE6D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFBED4D0FF7DD4
              EEFFC4F6FDFF6CDDF6FF6DCAEDFF63A3D7FF6499C8FE5192CA26FFFFFF00C689
              4BF7F9F5F1FFFCE3CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC4FFAFCD
              C9FF81D5EEFFB2E3F9FF8BC0E7FFAED3F6FFC4E0FCFF669FD3F7FFFFFF00C689
              4CF6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC2FFF5D6
              BAFFAFE3F1FF77BEE7FFB4D2F0FFE5F3FFFFACD2EFFF488CC7E8FFFFFF00C588
              4BEAFAF6F2FCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC5FFF8DBC1FFF4D6
              B8FFFFFBF8FFB6CBC2FF58A5D8FF85B1DBFF469DD0FF2B95D15EFFFFFF00C485
              49C3F7F2ECECF8F4EEFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
              ECFFF2E6D7FFE2B27DFFDB9465F5B3683B07FFFFFF00FFFFFF00FFFFFF00C17D
              4460C88B4DBBC88C4FEEC88C4FF6C88C4FF7C88C4FF7C88D4FF7C98C4FF7C78B
              4FF7C5894BD4C4763B91B3683C06FFFFFF00FFFFFF00FFFFFF00}
            ParentFont = False
            TabOrder = 2
            OnClick = Btn_DoTovarEditClick
          end
          object Btn_DoTovarDel: TBitBtn
            Left = 784
            Top = 211
            Width = 97
            Height = 25
            Caption = #1059#1076#1072#1083#1080#1090#1100
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              08000000000000010000C40E0000C40E00000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFDADADADADA
              DADAD9D99C15161554FFFFDAFFF6F6F6F6F6FFAF5E67271F1616FFE2F609F3F3
              F3F3F31EAF2727271F16FFE2F609090909090916B7FFFFFF2716FFE2F6F3F3F3
              F3F3F35DB76F27676716FFE2FFF6F6F6F6F6F6AE67B7EFAF5E16FFE2FFF6F6F6
              F6F6F6F6AE5E161E9CFFFFE2FFF6F6F6F6F6F6F6090909FFE2FFFFE2FFF6F6F6
              F6F6F609090909FFE2FFFFE2FFF6F6F6F6F60909090909FFE2FFFFE2FFF6F6F6
              F6090909090909FFE2FFFFE2FF09F60909090909F6F6FFF6E2FFFFE2FF090909
              09090909FF0909F4E2FFFFE2FF09090909090909FF09F4EBDAFFFFE2F6FFFFFF
              FFFFFFF6F6F4EBDAFFFFFFE2E2E2E2E2E2E2E2E2E2E2DAFFFFFF}
            ParentFont = False
            TabOrder = 3
            OnClick = Btn_DoTovarDelClick
          end
          object E_Unshipped: TCheckBox
            Left = 16
            Top = 219
            Width = 265
            Height = 17
            Caption = #1042#1089#1077' '#1090#1086#1074#1072#1088#1099' '#1093#1088#1072#1085#1103#1090#1089#1103' '#1085#1072' '#1086#1090#1082#1088#1099#1090#1086#1084' '#1057#1042#1061
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
        end
      end
    end
    object Tab_DopList: TTabSheet
      Caption = #1044#1054'1('#1044#1086#1073#1072#1074#1086#1095#1085#1099#1081' '#1083#1080#1089#1090')'
      ImageIndex = 3
      object GroupBox18: TGroupBox
        Left = 0
        Top = 0
        Width = 912
        Height = 145
        Align = alTop
        Caption = 
          #1050#1086#1084#1084#1077#1088#1095#1077#1089#1082#1080#1077' '#1072#1082#1090#1099' '#1080' '#1080#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099' '#1085#1077#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1103' '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082' ' +
          #1090#1086#1074#1072#1088#1086#1074
        TabOrder = 0
        object Grid_ActCom: TDBGridEh
          Left = 2
          Top = 15
          Width = 767
          Height = 128
          Align = alLeft
          DataSource = DM.Ds_ActCom
          DynProps = <>
          Flat = True
          FooterParams.Color = clWindow
          ReadOnly = True
          TabOrder = 0
          TitleParams.RowLines = 2
          Columns = <
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NPP'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #8470'  '#1076#1086#1073'.'#1083#1080#1089#1090#1072
              Width = 65
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NAME_DOC'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
              Width = 303
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NUM_DOC'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
              Width = 108
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DATE_DOC'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
              Width = 117
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'OPERATOR_FAM'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1060#1048#1054' '#1086#1087#1077#1088#1072#1090#1086#1088#1072
              Width = 142
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object Btn_AddActCom: TBitBtn
          Left = 784
          Top = 16
          Width = 97
          Height = 25
          Action = A_ActComAdd
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000120B0000120B00000000000000000000FFFFFF00BB6A
            346BBA6530BCBB6631EDBA6630F7BA6630F7BA6630F7BA6530F7BA652FF7B965
            2EF7626833FB216B37FF196B37FF1F6B37FC416935B6FFFFFF00FFFFFF00BC69
            33DEF8F1EAF2F7ECDFFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFF86AD
            8EFF288C53FF64BA8DFF95D2B2FF64BA8DFF288C53FF196B378CFFFFFF00BF71
            38F5F5EBDFFEFDBF68FFFCBD67FFFBBE65FFFCBE64FFFCBE64FFFCBD62FF226F
            3AFF62BA8BFF60BA87FFFFFFFFFF60B987FF67BC8FFF196B37F7FFFFFF00C178
            3CF7F7EDE3FFFDC26EFFFFD8A0FFFFD79EFFFFD69BFFFFD798FFFFD696FF317B
            4CFF9CD4B6FFFFFFFFFFFFFFFFFFFFFFFFFF95D2B2FF196B37FFFFFFFF00C47C
            40F7F7F0E6FFF8B455FFF7B456FFF7B554FFF8B453FFF8B253FFF7B352FF4A88
            5DFF90D3B1FF92D6B1FFFFFFFFFF65BC8CFF67BC8FFF196B37F7FFFFFF00C580
            42F7F8F1E8FFFEE5D5FFFDE5D3FFFDE5D3FFFCE5D3FFFCE5D3FFFCE4D1FFA6B8
            9BFF61AB81FF95D4B4FFBAE6D0FF6ABB8FFF2D8F57FF196B378CFFFFFF00C582
            45F7F8F2EBFFFEE7D6FFFDE7D6FFFDE7D6FFFDE7D6FFFDE6D5FFFDE5D3FFFCE4
            D1FFADBC9FFF609873FF4F8E66FF4A8A61FF7A7A44FBFFFFFF00FFFFFF00C684
            47F7F9F3ECFFFEE8D6FFFEE8D7FFFDE7D6FFFDE7D6FFFDE7D5FFFDE5D3FFFBE4
            D0FFFBE3CCFFFADFC7FFFADFC6FFFAF2EAFFC68042F7FFFFFF00FFFFFF00C688
            49F7F9F4EDFFFEE8D8FFFEE8D8FFFEE8D7FFFEE7D6FFFDE5D3FFFCE4D1FFFBE1
            CCFFFAE0C7FFF9DDC3FFF8DCC2FFFAF4EDFFC68245F7FFFFFF00FFFFFF00C688
            4AF7F9F4EFFFFEE7D7FFFDE7D6FFFDE7D5FFFDE6D4FFFCE6D2FFFBE1CCFFFADF
            C7FFF8DCC2FFF6DABDFFF6D8BBFFFAF4EFFFC68346F7FFFFFF00FFFFFF00C689
            4BF7F9F4F0FFFCE6D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFFAE0C8FFF8DC
            C2FFF5D6BBFFF3D4B5FFF1D2B3FFF8F4F0FFC48246F7FFFFFF00FFFFFF00C689
            4BF7F9F5F1FFFCE3CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC4FFF6D9
            BCFFF4E9DFFFF7F2ECFFFBF7F3FFF5EFE9FFC27E45FBFFFFFF00FFFFFF00C689
            4CF6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC2FFF5D6
            BAFFFDFBF8FFFCE6CDFFFAE5C9FFE2B684FFBF7942A6FFFFFF00FFFFFF00C588
            4BEAFAF6F2FCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC5FFF8DBC1FFF4D6
            B8FFFFFBF8FFF6D8B4FFE1B07DFFDB9264F6B46B3E07FFFFFF00FFFFFF00C485
            49C3F7F2ECECF8F4EEFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
            ECFFF2E6D7FFE2B27DFFDB9465F5B3683B07FFFFFF00FFFFFF00FFFFFF00C17D
            4460C88B4DBBC88C4FEEC88C4FF6C88C4FF7C88C4FF7C88D4FF7C98C4FF7C78B
            4FF7C5894BD4C4763B91B3683C06FFFFFF00FFFFFF00FFFFFF00}
          ParentFont = False
          TabOrder = 1
        end
        object Btn_EdotActCom: TBitBtn
          Left = 784
          Top = 48
          Width = 97
          Height = 25
          Action = A_ActComEdit
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000120B0000120B00000000000000000000FFFFFF00BB6A
            346BBA6530BCBB6631EDBA6630F7BA6630F7BA6630F7BA6530F7BA652FF7B965
            2EF7B9652EF7B9642EF7B9642EEFB7622CBDB7622E63FFFFFF00FFFFFF00BC69
            33DEF8F1EAF2F7ECDFFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFFFAF3
            EBFFFAF2EAFFFCF7F3FFFCF8F4FDFEFEFDF0B7602AD5FFFFFF00FFFFFF00BF71
            38F5F5EBDFFEFDBF68FFFCBD67FFFBBE65FFFCBE64FFFCBE64FFFCBD62FFFBBD
            63FFFBBC61FFFCBE60FFFCBC62FFFDFBF8FDB9642DF3FFFFFF00FFFFFF00C178
            3CF7F7EDE3FFFDC26EFF184257FF2B6187FF4C89BCFF709FB3FFE3C99AFFFFD6
            95FFFFD594FFFFD493FFFBBE65FFFBF7F4FFBB6731F7FFFFFF00FFFFFF00C47C
            40F7F7F0E6FFF8B455FF2E6682FF94C7F9FF91C9F9FF4185C9FF2668A6FFD2A8
            65FFF7B251FFF7B24FFFF7B24FFFFCF9F5FFBF6F36F7FFFFFF00FFFFFF00C580
            42F7F8F1E8FFFEE5D5FF4389AAFFE0F2FFFF549AD8FF1A7ABEFF4998C5FF488C
            C2FFDAD2CDFFFBE0C9FFFBE1C8FFFDFAF7FFC1763BF7FFFFFF00FFFFFF00C582
            45F7F8F2EBFFFEE7D6FFA6B6BFFF7AB6D5FF90B7D1FF55C9E4FF5BDFF5FF78D0
            EDFF519BD9FFE1D6CDFFFBE1C9FFFBF7F2FFC57C3FF7FFFFFF00FFFFFF00C684
            47F7F9F3ECFFFEE8D6FFFEE8D7FFB3C6CCFF76B9D6FFC2F6FDFF63DFF7FF5DE2
            F8FF79D3F0FF4998DAFFE2D5C8FFFAF2EAFFC68042F7FFFFFF00FFFFFF00C688
            49F7F9F4EDFFFEE8D8FFFEE8D8FFFEE8D7FFB0C6CCFF77CBE7FFC7F7FDFF5EDC
            F5FF5AE1F7FF7BD4F1FF4B99DBFFD2DFE9FFC68245F7FFFFFF00FFFFFF00C688
            4AF7F9F4EFFFFEE7D7FFFDE7D6FFFDE7D5FFFDE6D4FFBDD6D5FF79D3EEFFC7F7
            FDFF5FDCF5FF5BE2F7FF7AD6F2FF51A1E0FFAD8560F9FFFFFF00FFFFFF00C689
            4BF7F9F4F0FFFCE6D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFBED4D0FF7DD4
            EEFFC4F6FDFF6CDDF6FF6DCAEDFF63A3D7FF6499C8FE5192CA26FFFFFF00C689
            4BF7F9F5F1FFFCE3CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC4FFAFCD
            C9FF81D5EEFFB2E3F9FF8BC0E7FFAED3F6FFC4E0FCFF669FD3F7FFFFFF00C689
            4CF6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC2FFF5D6
            BAFFAFE3F1FF77BEE7FFB4D2F0FFE5F3FFFFACD2EFFF488CC7E8FFFFFF00C588
            4BEAFAF6F2FCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC5FFF8DBC1FFF4D6
            B8FFFFFBF8FFB6CBC2FF58A5D8FF85B1DBFF469DD0FF2B95D15EFFFFFF00C485
            49C3F7F2ECECF8F4EEFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
            ECFFF2E6D7FFE2B27DFFDB9465F5B3683B07FFFFFF00FFFFFF00FFFFFF00C17D
            4460C88B4DBBC88C4FEEC88C4FF6C88C4FF7C88C4FF7C88D4FF7C98C4FF7C78B
            4FF7C5894BD4C4763B91B3683C06FFFFFF00FFFFFF00FFFFFF00}
          ParentFont = False
          TabOrder = 2
        end
        object Btn_DelActCom: TBitBtn
          Left = 784
          Top = 80
          Width = 97
          Height = 25
          Action = A_ActComDelete
          Caption = #1059#1076#1072#1083#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000C40E0000C40E00000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFDADADADADA
            DADAD9D99C15161554FFFFDAFFF6F6F6F6F6FFAF5E67271F1616FFE2F609F3F3
            F3F3F31EAF2727271F16FFE2F609090909090916B7FFFFFF2716FFE2F6F3F3F3
            F3F3F35DB76F27676716FFE2FFF6F6F6F6F6F6AE67B7EFAF5E16FFE2FFF6F6F6
            F6F6F6F6AE5E161E9CFFFFE2FFF6F6F6F6F6F6F6090909FFE2FFFFE2FFF6F6F6
            F6F6F609090909FFE2FFFFE2FFF6F6F6F6F60909090909FFE2FFFFE2FFF6F6F6
            F6090909090909FFE2FFFFE2FF09F60909090909F6F6FFF6E2FFFFE2FF090909
            09090909FF0909F4E2FFFFE2FF09090909090909FF09F4EBDAFFFFE2F6FFFFFF
            FFFFFFF6F6F4EBDAFFFFFFE2E2E2E2E2E2E2E2E2E2E2DAFFFFFF}
          ParentFont = False
          TabOrder = 3
        end
      end
      object GroupBox19: TGroupBox
        Left = -1
        Top = 160
        Width = 913
        Height = 217
        Caption = #1055#1077#1088#1077#1095#1077#1085#1100' '#1090#1086#1074#1072#1088#1086#1074' '#1089' '#1085#1077#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1103#1084#1080
        TabOrder = 1
        object Grid_Mism: TDBGridEh
          Left = 2
          Top = 15
          Width = 767
          Height = 200
          Align = alLeft
          DataSource = DM.Ds_TovMismatch
          DynProps = <>
          Flat = True
          FooterParams.Color = clWindow
          RowHeight = 2
          RowLines = 1
          TabOrder = 0
          TitleParams.RowLines = 2
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DT_MISM'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103
              Width = 132
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'REASONS'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1055#1088#1080#1095#1080#1085#1072' '#1085#1077#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1103
              Width = 349
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DESCRIPTION'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072' '#1087#1086#1076#1086#1082#1091#1084#1077#1085#1090#1072#1084
              Width = 241
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object Btn_AddMism: TBitBtn
          Left = 784
          Top = 16
          Width = 97
          Height = 25
          Action = A_MismTovAdd
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000120B0000120B00000000000000000000FFFFFF00BB6A
            346BBA6530BCBB6631EDBA6630F7BA6630F7BA6630F7BA6530F7BA652FF7B965
            2EF7626833FB216B37FF196B37FF1F6B37FC416935B6FFFFFF00FFFFFF00BC69
            33DEF8F1EAF2F7ECDFFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFF86AD
            8EFF288C53FF64BA8DFF95D2B2FF64BA8DFF288C53FF196B378CFFFFFF00BF71
            38F5F5EBDFFEFDBF68FFFCBD67FFFBBE65FFFCBE64FFFCBE64FFFCBD62FF226F
            3AFF62BA8BFF60BA87FFFFFFFFFF60B987FF67BC8FFF196B37F7FFFFFF00C178
            3CF7F7EDE3FFFDC26EFFFFD8A0FFFFD79EFFFFD69BFFFFD798FFFFD696FF317B
            4CFF9CD4B6FFFFFFFFFFFFFFFFFFFFFFFFFF95D2B2FF196B37FFFFFFFF00C47C
            40F7F7F0E6FFF8B455FFF7B456FFF7B554FFF8B453FFF8B253FFF7B352FF4A88
            5DFF90D3B1FF92D6B1FFFFFFFFFF65BC8CFF67BC8FFF196B37F7FFFFFF00C580
            42F7F8F1E8FFFEE5D5FFFDE5D3FFFDE5D3FFFCE5D3FFFCE5D3FFFCE4D1FFA6B8
            9BFF61AB81FF95D4B4FFBAE6D0FF6ABB8FFF2D8F57FF196B378CFFFFFF00C582
            45F7F8F2EBFFFEE7D6FFFDE7D6FFFDE7D6FFFDE7D6FFFDE6D5FFFDE5D3FFFCE4
            D1FFADBC9FFF609873FF4F8E66FF4A8A61FF7A7A44FBFFFFFF00FFFFFF00C684
            47F7F9F3ECFFFEE8D6FFFEE8D7FFFDE7D6FFFDE7D6FFFDE7D5FFFDE5D3FFFBE4
            D0FFFBE3CCFFFADFC7FFFADFC6FFFAF2EAFFC68042F7FFFFFF00FFFFFF00C688
            49F7F9F4EDFFFEE8D8FFFEE8D8FFFEE8D7FFFEE7D6FFFDE5D3FFFCE4D1FFFBE1
            CCFFFAE0C7FFF9DDC3FFF8DCC2FFFAF4EDFFC68245F7FFFFFF00FFFFFF00C688
            4AF7F9F4EFFFFEE7D7FFFDE7D6FFFDE7D5FFFDE6D4FFFCE6D2FFFBE1CCFFFADF
            C7FFF8DCC2FFF6DABDFFF6D8BBFFFAF4EFFFC68346F7FFFFFF00FFFFFF00C689
            4BF7F9F4F0FFFCE6D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFFAE0C8FFF8DC
            C2FFF5D6BBFFF3D4B5FFF1D2B3FFF8F4F0FFC48246F7FFFFFF00FFFFFF00C689
            4BF7F9F5F1FFFCE3CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC4FFF6D9
            BCFFF4E9DFFFF7F2ECFFFBF7F3FFF5EFE9FFC27E45FBFFFFFF00FFFFFF00C689
            4CF6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC2FFF5D6
            BAFFFDFBF8FFFCE6CDFFFAE5C9FFE2B684FFBF7942A6FFFFFF00FFFFFF00C588
            4BEAFAF6F2FCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC5FFF8DBC1FFF4D6
            B8FFFFFBF8FFF6D8B4FFE1B07DFFDB9264F6B46B3E07FFFFFF00FFFFFF00C485
            49C3F7F2ECECF8F4EEFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
            ECFFF2E6D7FFE2B27DFFDB9465F5B3683B07FFFFFF00FFFFFF00FFFFFF00C17D
            4460C88B4DBBC88C4FEEC88C4FF6C88C4FF7C88C4FF7C88D4FF7C98C4FF7C78B
            4FF7C5894BD4C4763B91B3683C06FFFFFF00FFFFFF00FFFFFF00}
          ParentFont = False
          TabOrder = 1
        end
        object BitEditMism: TBitBtn
          Left = 784
          Top = 49
          Width = 97
          Height = 25
          Action = A_MismTovEdit
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000120B0000120B00000000000000000000FFFFFF00BB6A
            346BBA6530BCBB6631EDBA6630F7BA6630F7BA6630F7BA6530F7BA652FF7B965
            2EF7B9652EF7B9642EF7B9642EEFB7622CBDB7622E63FFFFFF00FFFFFF00BC69
            33DEF8F1EAF2F7ECDFFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFFFAF3
            EBFFFAF2EAFFFCF7F3FFFCF8F4FDFEFEFDF0B7602AD5FFFFFF00FFFFFF00BF71
            38F5F5EBDFFEFDBF68FFFCBD67FFFBBE65FFFCBE64FFFCBE64FFFCBD62FFFBBD
            63FFFBBC61FFFCBE60FFFCBC62FFFDFBF8FDB9642DF3FFFFFF00FFFFFF00C178
            3CF7F7EDE3FFFDC26EFF184257FF2B6187FF4C89BCFF709FB3FFE3C99AFFFFD6
            95FFFFD594FFFFD493FFFBBE65FFFBF7F4FFBB6731F7FFFFFF00FFFFFF00C47C
            40F7F7F0E6FFF8B455FF2E6682FF94C7F9FF91C9F9FF4185C9FF2668A6FFD2A8
            65FFF7B251FFF7B24FFFF7B24FFFFCF9F5FFBF6F36F7FFFFFF00FFFFFF00C580
            42F7F8F1E8FFFEE5D5FF4389AAFFE0F2FFFF549AD8FF1A7ABEFF4998C5FF488C
            C2FFDAD2CDFFFBE0C9FFFBE1C8FFFDFAF7FFC1763BF7FFFFFF00FFFFFF00C582
            45F7F8F2EBFFFEE7D6FFA6B6BFFF7AB6D5FF90B7D1FF55C9E4FF5BDFF5FF78D0
            EDFF519BD9FFE1D6CDFFFBE1C9FFFBF7F2FFC57C3FF7FFFFFF00FFFFFF00C684
            47F7F9F3ECFFFEE8D6FFFEE8D7FFB3C6CCFF76B9D6FFC2F6FDFF63DFF7FF5DE2
            F8FF79D3F0FF4998DAFFE2D5C8FFFAF2EAFFC68042F7FFFFFF00FFFFFF00C688
            49F7F9F4EDFFFEE8D8FFFEE8D8FFFEE8D7FFB0C6CCFF77CBE7FFC7F7FDFF5EDC
            F5FF5AE1F7FF7BD4F1FF4B99DBFFD2DFE9FFC68245F7FFFFFF00FFFFFF00C688
            4AF7F9F4EFFFFEE7D7FFFDE7D6FFFDE7D5FFFDE6D4FFBDD6D5FF79D3EEFFC7F7
            FDFF5FDCF5FF5BE2F7FF7AD6F2FF51A1E0FFAD8560F9FFFFFF00FFFFFF00C689
            4BF7F9F4F0FFFCE6D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFBED4D0FF7DD4
            EEFFC4F6FDFF6CDDF6FF6DCAEDFF63A3D7FF6499C8FE5192CA26FFFFFF00C689
            4BF7F9F5F1FFFCE3CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC4FFAFCD
            C9FF81D5EEFFB2E3F9FF8BC0E7FFAED3F6FFC4E0FCFF669FD3F7FFFFFF00C689
            4CF6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC2FFF5D6
            BAFFAFE3F1FF77BEE7FFB4D2F0FFE5F3FFFFACD2EFFF488CC7E8FFFFFF00C588
            4BEAFAF6F2FCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC5FFF8DBC1FFF4D6
            B8FFFFFBF8FFB6CBC2FF58A5D8FF85B1DBFF469DD0FF2B95D15EFFFFFF00C485
            49C3F7F2ECECF8F4EEFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
            ECFFF2E6D7FFE2B27DFFDB9465F5B3683B07FFFFFF00FFFFFF00FFFFFF00C17D
            4460C88B4DBBC88C4FEEC88C4FF6C88C4FF7C88C4FF7C88D4FF7C98C4FF7C78B
            4FF7C5894BD4C4763B91B3683C06FFFFFF00FFFFFF00FFFFFF00}
          ParentFont = False
          TabOrder = 2
        end
        object BitBtn1: TBitBtn
          Left = 783
          Top = 82
          Width = 97
          Height = 25
          Action = A_MismTovDelete
          Caption = #1059#1076#1072#1083#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000C40E0000C40E00000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFDADADADADA
            DADAD9D99C15161554FFFFDAFFF6F6F6F6F6FFAF5E67271F1616FFE2F609F3F3
            F3F3F31EAF2727271F16FFE2F609090909090916B7FFFFFF2716FFE2F6F3F3F3
            F3F3F35DB76F27676716FFE2FFF6F6F6F6F6F6AE67B7EFAF5E16FFE2FFF6F6F6
            F6F6F6F6AE5E161E9CFFFFE2FFF6F6F6F6F6F6F6090909FFE2FFFFE2FFF6F6F6
            F6F6F609090909FFE2FFFFE2FFF6F6F6F6F60909090909FFE2FFFFE2FFF6F6F6
            F6090909090909FFE2FFFFE2FF09F60909090909F6F6FFF6E2FFFFE2FF090909
            09090909FF0909F4E2FFFFE2FF09090909090909FF09F4EBDAFFFFE2F6FFFFFF
            FFFFFFF6F6F4EBDAFFFFFFE2E2E2E2E2E2E2E2E2E2E2DAFFFFFF}
          ParentFont = False
          TabOrder = 3
        end
      end
    end
    object Tab_Do2: TTabSheet
      Caption = #1044#1054'2('#1074#1099#1087#1091#1089#1082')'
      ImageIndex = 2
      object PageControl3: TPageControl
        Left = 0
        Top = 104
        Width = 912
        Height = 501
        ActivePage = Tab_Do2_tovar
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Style = tsFlatButtons
        TabOrder = 0
        object Tab_Do2_tovar: TTabSheet
          Caption = #1058#1086#1074#1072#1088#1099
          ImageIndex = 2
          object GroupBox16: TGroupBox
            Left = 0
            Top = 333
            Width = 904
            Height = 137
            Align = alBottom
            Caption = #1057#1074#1103#1079#1072#1085#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099' '#1074#1099#1087#1091#1089#1082#1072
            TabOrder = 0
            object DBGridEh10: TDBGridEh
              Left = 2
              Top = 15
              Width = 783
              Height = 120
              Align = alLeft
              DataSource = DM.DS_Do2LinkedDocs
              DynProps = <>
              Flat = True
              FooterParams.Color = clWindow
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ReadOnly = True
              TabOrder = 0
              TitleParams.RowLines = 2
              Columns = <
                item
                  Alignment = taCenter
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'NPP'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #8470' '#1087'/'#1087
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'NAME'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '
                  Width = 257
                end
                item
                  Alignment = taCenter
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'NDOC'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1053#1086#1084#1077#1088
                  Width = 300
                end
                item
                  Alignment = taCenter
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'DDOC'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1044#1072#1090#1072
                  Width = 141
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
            object Bit_AttachGTd: TBitBtn
              Left = 800
              Top = 46
              Width = 91
              Height = 44
              Action = A_LinkGtdTov
              Caption = #1055#1088#1080#1082#1088#1077#1087#1080#1090#1100
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF707070404040404040000000FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707070303030FF
                FFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFFFF404040FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040FFFFFFFF
                FFFFFFFFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF404040202020707070202020FFFFFF404040FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF40404070707000
                0000FFFFFF202020404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF404040404040FFFFFFFFFFFF404040404040FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040404040FF
                FFFFFFFFFF404040404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF404040404040FFFFFFFFFFFF404040404040FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040404040FF
                FFFFFFFFFF404040404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF404040404040FFFFFFFFFFFF404040404040FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040404040FF
                FFFFFFFFFF404040404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF404040000000FFFFFFFFFFFF404040000000FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040FFFFFFFF
                FFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF202020000000FFFFFF606060202020FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040
                4040202020000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              TabOrder = 1
            end
            object Btn_DetachDoc: TBitBtn
              Left = 802
              Top = 104
              Width = 89
              Height = 25
              Caption = #1054#1090#1082#1088#1077#1087#1080#1090#1100
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                08000000000000010000C40E0000C40E00000001000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                A6000020400000206000002080000020A0000020C0000020E000004000000040
                20000040400000406000004080000040A0000040C0000040E000006000000060
                20000060400000606000006080000060A0000060C0000060E000008000000080
                20000080400000806000008080000080A0000080C0000080E00000A0000000A0
                200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
                200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
                200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
                20004000400040006000400080004000A0004000C0004000E000402000004020
                20004020400040206000402080004020A0004020C0004020E000404000004040
                20004040400040406000404080004040A0004040C0004040E000406000004060
                20004060400040606000406080004060A0004060C0004060E000408000004080
                20004080400040806000408080004080A0004080C0004080E00040A0000040A0
                200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
                200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
                200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
                20008000400080006000800080008000A0008000C0008000E000802000008020
                20008020400080206000802080008020A0008020C0008020E000804000008040
                20008040400080406000804080008040A0008040C0008040E000806000008060
                20008060400080606000806080008060A0008060C0008060E000808000008080
                20008080400080806000808080008080A0008080C0008080E00080A0000080A0
                200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
                200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
                200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
                2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
                2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
                2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
                2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
                2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
                2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
                2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFDADADADADA
                DADAD9D99C15161554FFFFDAFFF6F6F6F6F6FFAF5E67271F1616FFE2F609F3F3
                F3F3F31EAF2727271F16FFE2F609090909090916B7FFFFFF2716FFE2F6F3F3F3
                F3F3F35DB76F27676716FFE2FFF6F6F6F6F6F6AE67B7EFAF5E16FFE2FFF6F6F6
                F6F6F6F6AE5E161E9CFFFFE2FFF6F6F6F6F6F6F6090909FFE2FFFFE2FFF6F6F6
                F6F6F609090909FFE2FFFFE2FFF6F6F6F6F60909090909FFE2FFFFE2FFF6F6F6
                F6090909090909FFE2FFFFE2FF09F60909090909F6F6FFF6E2FFFFE2FF090909
                09090909FF0909F4E2FFFFE2FF09090909090909FF09F4EBDAFFFFE2F6FFFFFF
                FFFFFFF6F6F4EBDAFFFFFFE2E2E2E2E2E2E2E2E2E2E2DAFFFFFF}
              ParentFont = False
              TabOrder = 2
              OnClick = Btn_DetachDocClick
            end
          end
          object GroupBox17: TGroupBox
            Left = 0
            Top = 0
            Width = 904
            Height = 333
            Align = alClient
            Caption = #1058#1086#1074#1072#1088#1099
            TabOrder = 1
            object Grid_Do2Tov: TDBGridEh
              Left = 2
              Top = 15
              Width = 900
              Height = 266
              Align = alTop
              DataSource = DM.DS_DoOutTovar
              DynProps = <>
              Flat = True
              FooterRowCount = 1
              FooterParams.Color = clWhite
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              PopupMenu = PopMn_TovOut
              ReadOnly = True
              SumList.Active = True
              TabOrder = 0
              TitleParams.MultiTitle = True
              TitleParams.RowLines = 2
              OnDrawColumnCell = Grid_Do2TovDrawColumnCell
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'DT_OUTPUT'
                  Footers = <>
                  Title.Caption = #1044#1072#1090#1072' '#1074#1088#1077#1084#1103' '#1074#1099#1076#1072#1095#1080
                  Width = 109
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'G33'
                  Footers = <>
                  Title.Caption = #1050#1086#1076' '#1090#1086#1074#1072#1088#1072
                  Width = 45
                end
                item
                  Alignment = taCenter
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'G32_N'
                  Footers = <>
                  Title.Caption = #8470' '#1087'/'#1087' '#1044#1054'2'
                  Width = 37
                  WordWrap = False
                end
                item
                  Alignment = taCenter
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'G32'
                  Footers = <
                    item
                      Color = clGray
                    end>
                  Title.Caption = #8470' '#1087'/'#1087' '#1044#1054'1'
                  Width = 36
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'G31_1'
                  Footers = <
                    item
                      Color = clGray
                    end>
                  Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
                  Width = 268
                end
                item
                  Alignment = taCenter
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'G221'
                  Footers = <
                    item
                      Color = clGray
                      FieldName = 'G221'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ValueType = fvtFieldValue
                    end>
                  Title.Caption = #1042#1072#1083#1102#1090#1072
                  Width = 43
                end
                item
                  Alignment = taRightJustify
                  CellButtons = <>
                  DisplayFormat = '0.00'
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'G42'
                  Footers = <
                    item
                      Alignment = taRightJustify
                      Color = clGray
                      FieldName = 'G42'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ValueType = fvtSum
                    end>
                  Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100'|'#1056#1072#1089#1093#1086#1076
                  Width = 62
                end
                item
                  Alignment = taRightJustify
                  CellButtons = <>
                  Color = clYellow
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'G42_OST'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Footers = <
                    item
                      Alignment = taRightJustify
                      Color = clPurple
                      FieldName = 'G42_OST'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ValueType = fvtSum
                    end>
                  Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100'|'#1054#1089#1090#1072#1090#1086#1082
                  Width = 60
                end
                item
                  Alignment = taCenter
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'G31_2_HUMAN'
                  Footers = <
                    item
                      Alignment = taCenter
                      Color = clGray
                      FieldName = 'G31_2'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ValueType = fvtSum
                    end>
                  Title.Caption = #1050#1086#1083'-'#1074#1086' '#1084#1077#1089#1090'|'#1056#1072#1089#1093#1086#1076
                  Width = 43
                end
                item
                  Alignment = taCenter
                  CellButtons = <>
                  Color = clYellow
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'G31_2_OST'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Footers = <
                    item
                      Alignment = taCenter
                      Color = clPurple
                      FieldName = 'G31_2_OST'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ValueType = fvtSum
                    end>
                  Title.Caption = #1050#1086#1083'-'#1074#1086' '#1084#1077#1089#1090'|'#1054#1089#1090#1072#1090#1086#1082
                  Width = 46
                end
                item
                  Alignment = taRightJustify
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'G35'
                  Footers = <
                    item
                      Alignment = taRightJustify
                      Color = clGray
                      FieldName = 'G35'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ValueType = fvtSum
                    end>
                  Title.Caption = #1042#1077#1089' '#1073#1088#1091#1090#1090#1086'|'#1056#1072#1089#1093#1086#1076
                  Width = 86
                end
                item
                  Alignment = taRightJustify
                  CellButtons = <>
                  Color = clYellow
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'G35_OST'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Footers = <
                    item
                      Alignment = taRightJustify
                      Color = clPurple
                      FieldName = 'G35_OST'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ValueType = fvtSum
                    end>
                  Title.Caption = #1042#1077#1089' '#1073#1088#1091#1090#1090#1086'|'#1054#1089#1090#1072#1090#1086#1082
                  Width = 81
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
            object Btn_Do2TovAdd: TBitBtn
              Left = 584
              Top = 288
              Width = 97
              Height = 25
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                20000000000000040000120B0000120B00000000000000000000FFFFFF00BB6A
                346BBA6530BCBB6631EDBA6630F7BA6630F7BA6630F7BA6530F7BA652FF7B965
                2EF7626833FB216B37FF196B37FF1F6B37FC416935B6FFFFFF00FFFFFF00BC69
                33DEF8F1EAF2F7ECDFFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFF86AD
                8EFF288C53FF64BA8DFF95D2B2FF64BA8DFF288C53FF196B378CFFFFFF00BF71
                38F5F5EBDFFEFDBF68FFFCBD67FFFBBE65FFFCBE64FFFCBE64FFFCBD62FF226F
                3AFF62BA8BFF60BA87FFFFFFFFFF60B987FF67BC8FFF196B37F7FFFFFF00C178
                3CF7F7EDE3FFFDC26EFFFFD8A0FFFFD79EFFFFD69BFFFFD798FFFFD696FF317B
                4CFF9CD4B6FFFFFFFFFFFFFFFFFFFFFFFFFF95D2B2FF196B37FFFFFFFF00C47C
                40F7F7F0E6FFF8B455FFF7B456FFF7B554FFF8B453FFF8B253FFF7B352FF4A88
                5DFF90D3B1FF92D6B1FFFFFFFFFF65BC8CFF67BC8FFF196B37F7FFFFFF00C580
                42F7F8F1E8FFFEE5D5FFFDE5D3FFFDE5D3FFFCE5D3FFFCE5D3FFFCE4D1FFA6B8
                9BFF61AB81FF95D4B4FFBAE6D0FF6ABB8FFF2D8F57FF196B378CFFFFFF00C582
                45F7F8F2EBFFFEE7D6FFFDE7D6FFFDE7D6FFFDE7D6FFFDE6D5FFFDE5D3FFFCE4
                D1FFADBC9FFF609873FF4F8E66FF4A8A61FF7A7A44FBFFFFFF00FFFFFF00C684
                47F7F9F3ECFFFEE8D6FFFEE8D7FFFDE7D6FFFDE7D6FFFDE7D5FFFDE5D3FFFBE4
                D0FFFBE3CCFFFADFC7FFFADFC6FFFAF2EAFFC68042F7FFFFFF00FFFFFF00C688
                49F7F9F4EDFFFEE8D8FFFEE8D8FFFEE8D7FFFEE7D6FFFDE5D3FFFCE4D1FFFBE1
                CCFFFAE0C7FFF9DDC3FFF8DCC2FFFAF4EDFFC68245F7FFFFFF00FFFFFF00C688
                4AF7F9F4EFFFFEE7D7FFFDE7D6FFFDE7D5FFFDE6D4FFFCE6D2FFFBE1CCFFFADF
                C7FFF8DCC2FFF6DABDFFF6D8BBFFFAF4EFFFC68346F7FFFFFF00FFFFFF00C689
                4BF7F9F4F0FFFCE6D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFFAE0C8FFF8DC
                C2FFF5D6BBFFF3D4B5FFF1D2B3FFF8F4F0FFC48246F7FFFFFF00FFFFFF00C689
                4BF7F9F5F1FFFCE3CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC4FFF6D9
                BCFFF4E9DFFFF7F2ECFFFBF7F3FFF5EFE9FFC27E45FBFFFFFF00FFFFFF00C689
                4CF6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC2FFF5D6
                BAFFFDFBF8FFFCE6CDFFFAE5C9FFE2B684FFBF7942A6FFFFFF00FFFFFF00C588
                4BEAFAF6F2FCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC5FFF8DBC1FFF4D6
                B8FFFFFBF8FFF6D8B4FFE1B07DFFDB9264F6B46B3E07FFFFFF00FFFFFF00C485
                49C3F7F2ECECF8F4EEFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
                ECFFF2E6D7FFE2B27DFFDB9465F5B3683B07FFFFFF00FFFFFF00FFFFFF00C17D
                4460C88B4DBBC88C4FEEC88C4FF6C88C4FF7C88C4FF7C88D4FF7C98C4FF7C78B
                4FF7C5894BD4C4763B91B3683C06FFFFFF00FFFFFF00FFFFFF00}
              ParentFont = False
              TabOrder = 1
              OnClick = Btn_Do2TovAddClick
            end
            object Btn_Do2TovEdit: TBitBtn
              Left = 696
              Top = 288
              Width = 97
              Height = 25
              Caption = #1048#1079#1084#1077#1085#1080#1090#1100
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                20000000000000040000120B0000120B00000000000000000000FFFFFF00BB6A
                346BBA6530BCBB6631EDBA6630F7BA6630F7BA6630F7BA6530F7BA652FF7B965
                2EF7B9652EF7B9642EF7B9642EEFB7622CBDB7622E63FFFFFF00FFFFFF00BC69
                33DEF8F1EAF2F7ECDFFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFFFAF3
                EBFFFAF2EAFFFCF7F3FFFCF8F4FDFEFEFDF0B7602AD5FFFFFF00FFFFFF00BF71
                38F5F5EBDFFEFDBF68FFFCBD67FFFBBE65FFFCBE64FFFCBE64FFFCBD62FFFBBD
                63FFFBBC61FFFCBE60FFFCBC62FFFDFBF8FDB9642DF3FFFFFF00FFFFFF00C178
                3CF7F7EDE3FFFDC26EFF184257FF2B6187FF4C89BCFF709FB3FFE3C99AFFFFD6
                95FFFFD594FFFFD493FFFBBE65FFFBF7F4FFBB6731F7FFFFFF00FFFFFF00C47C
                40F7F7F0E6FFF8B455FF2E6682FF94C7F9FF91C9F9FF4185C9FF2668A6FFD2A8
                65FFF7B251FFF7B24FFFF7B24FFFFCF9F5FFBF6F36F7FFFFFF00FFFFFF00C580
                42F7F8F1E8FFFEE5D5FF4389AAFFE0F2FFFF549AD8FF1A7ABEFF4998C5FF488C
                C2FFDAD2CDFFFBE0C9FFFBE1C8FFFDFAF7FFC1763BF7FFFFFF00FFFFFF00C582
                45F7F8F2EBFFFEE7D6FFA6B6BFFF7AB6D5FF90B7D1FF55C9E4FF5BDFF5FF78D0
                EDFF519BD9FFE1D6CDFFFBE1C9FFFBF7F2FFC57C3FF7FFFFFF00FFFFFF00C684
                47F7F9F3ECFFFEE8D6FFFEE8D7FFB3C6CCFF76B9D6FFC2F6FDFF63DFF7FF5DE2
                F8FF79D3F0FF4998DAFFE2D5C8FFFAF2EAFFC68042F7FFFFFF00FFFFFF00C688
                49F7F9F4EDFFFEE8D8FFFEE8D8FFFEE8D7FFB0C6CCFF77CBE7FFC7F7FDFF5EDC
                F5FF5AE1F7FF7BD4F1FF4B99DBFFD2DFE9FFC68245F7FFFFFF00FFFFFF00C688
                4AF7F9F4EFFFFEE7D7FFFDE7D6FFFDE7D5FFFDE6D4FFBDD6D5FF79D3EEFFC7F7
                FDFF5FDCF5FF5BE2F7FF7AD6F2FF51A1E0FFAD8560F9FFFFFF00FFFFFF00C689
                4BF7F9F4F0FFFCE6D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFBED4D0FF7DD4
                EEFFC4F6FDFF6CDDF6FF6DCAEDFF63A3D7FF6499C8FE5192CA26FFFFFF00C689
                4BF7F9F5F1FFFCE3CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC4FFAFCD
                C9FF81D5EEFFB2E3F9FF8BC0E7FFAED3F6FFC4E0FCFF669FD3F7FFFFFF00C689
                4CF6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC2FFF5D6
                BAFFAFE3F1FF77BEE7FFB4D2F0FFE5F3FFFFACD2EFFF488CC7E8FFFFFF00C588
                4BEAFAF6F2FCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC5FFF8DBC1FFF4D6
                B8FFFFFBF8FFB6CBC2FF58A5D8FF85B1DBFF469DD0FF2B95D15EFFFFFF00C485
                49C3F7F2ECECF8F4EEFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
                ECFFF2E6D7FFE2B27DFFDB9465F5B3683B07FFFFFF00FFFFFF00FFFFFF00C17D
                4460C88B4DBBC88C4FEEC88C4FF6C88C4FF7C88C4FF7C88D4FF7C98C4FF7C78B
                4FF7C5894BD4C4763B91B3683C06FFFFFF00FFFFFF00FFFFFF00}
              ParentFont = False
              TabOrder = 2
              OnClick = Btn_Do2TovEditClick
            end
            object BitBtn22: TBitBtn
              Left = 810
              Top = 287
              Width = 89
              Height = 25
              Caption = #1059#1076#1072#1083#1080#1090#1100
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                08000000000000010000C40E0000C40E00000001000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                A6000020400000206000002080000020A0000020C0000020E000004000000040
                20000040400000406000004080000040A0000040C0000040E000006000000060
                20000060400000606000006080000060A0000060C0000060E000008000000080
                20000080400000806000008080000080A0000080C0000080E00000A0000000A0
                200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
                200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
                200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
                20004000400040006000400080004000A0004000C0004000E000402000004020
                20004020400040206000402080004020A0004020C0004020E000404000004040
                20004040400040406000404080004040A0004040C0004040E000406000004060
                20004060400040606000406080004060A0004060C0004060E000408000004080
                20004080400040806000408080004080A0004080C0004080E00040A0000040A0
                200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
                200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
                200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
                20008000400080006000800080008000A0008000C0008000E000802000008020
                20008020400080206000802080008020A0008020C0008020E000804000008040
                20008040400080406000804080008040A0008040C0008040E000806000008060
                20008060400080606000806080008060A0008060C0008060E000808000008080
                20008080400080806000808080008080A0008080C0008080E00080A0000080A0
                200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
                200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
                200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
                2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
                2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
                2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
                2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
                2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
                2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
                2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFDADADADADA
                DADAD9D99C15161554FFFFDAFFF6F6F6F6F6FFAF5E67271F1616FFE2F609F3F3
                F3F3F31EAF2727271F16FFE2F609090909090916B7FFFFFF2716FFE2F6F3F3F3
                F3F3F35DB76F27676716FFE2FFF6F6F6F6F6F6AE67B7EFAF5E16FFE2FFF6F6F6
                F6F6F6F6AE5E161E9CFFFFE2FFF6F6F6F6F6F6F6090909FFE2FFFFE2FFF6F6F6
                F6F6F609090909FFE2FFFFE2FFF6F6F6F6F60909090909FFE2FFFFE2FFF6F6F6
                F6090909090909FFE2FFFFE2FF09F60909090909F6F6FFF6E2FFFFE2FF090909
                09090909FF0909F4E2FFFFE2FF09090909090909FF09F4EBDAFFFFE2F6FFFFFF
                FFFFFFF6F6F4EBDAFFFFFFE2E2E2E2E2E2E2E2E2E2E2DAFFFFFF}
              ParentFont = False
              TabOrder = 3
              OnClick = Btn_Do2TovDel
            end
            object Btn_SetDTOutput: TButton
              Left = 16
              Top = 287
              Width = 105
              Height = 40
              Caption = #1042#1088#1077#1084#1103' '#1074#1099#1076#1072#1095#1080' '#1080#1079' '#1040#1082#1090#1072' '#1074#1099#1076#1072#1095#1080
              TabOrder = 4
              WordWrap = True
              OnClick = Btn_SetDTOutputClick
            end
          end
        end
        object TabSheet1: TTabSheet
          Caption = #1044#1086#1082'. '#1074#1099#1087#1091#1089#1082#1072
          ImageIndex = 3
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 904
            Height = 409
            Align = alTop
            TabOrder = 0
            object Grid_GTD: TDBGridEh
              Left = 1
              Top = 1
              Width = 902
              Height = 407
              Align = alClient
              DataSource = DM.DS_QryGtd
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
                  FieldName = 'NPP'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #8470' '#1087'/'#1087
                  Width = 52
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'TYPE_DOC'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1058#1080#1087
                  Width = 46
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'NAME'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                  Width = 228
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'NDOC'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1053#1086#1084#1077#1088
                  Width = 237
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'DDOC'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1044#1072#1090#1072
                  Width = 149
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'TDOC'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1042#1088#1077#1084#1103
                  Width = 109
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
          object Panel2: TPanel
            Left = 0
            Top = 409
            Width = 904
            Height = 61
            Align = alClient
            TabOrder = 1
            object Btn_Do2DocAdd: TBitBtn
              Left = 577
              Top = 18
              Width = 97
              Height = 28
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                20000000000000040000120B0000120B00000000000000000000FFFFFF00BB6A
                346BBA6530BCBB6631EDBA6630F7BA6630F7BA6630F7BA6530F7BA652FF7B965
                2EF7626833FB216B37FF196B37FF1F6B37FC416935B6FFFFFF00FFFFFF00BC69
                33DEF8F1EAF2F7ECDFFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFF86AD
                8EFF288C53FF64BA8DFF95D2B2FF64BA8DFF288C53FF196B378CFFFFFF00BF71
                38F5F5EBDFFEFDBF68FFFCBD67FFFBBE65FFFCBE64FFFCBE64FFFCBD62FF226F
                3AFF62BA8BFF60BA87FFFFFFFFFF60B987FF67BC8FFF196B37F7FFFFFF00C178
                3CF7F7EDE3FFFDC26EFFFFD8A0FFFFD79EFFFFD69BFFFFD798FFFFD696FF317B
                4CFF9CD4B6FFFFFFFFFFFFFFFFFFFFFFFFFF95D2B2FF196B37FFFFFFFF00C47C
                40F7F7F0E6FFF8B455FFF7B456FFF7B554FFF8B453FFF8B253FFF7B352FF4A88
                5DFF90D3B1FF92D6B1FFFFFFFFFF65BC8CFF67BC8FFF196B37F7FFFFFF00C580
                42F7F8F1E8FFFEE5D5FFFDE5D3FFFDE5D3FFFCE5D3FFFCE5D3FFFCE4D1FFA6B8
                9BFF61AB81FF95D4B4FFBAE6D0FF6ABB8FFF2D8F57FF196B378CFFFFFF00C582
                45F7F8F2EBFFFEE7D6FFFDE7D6FFFDE7D6FFFDE7D6FFFDE6D5FFFDE5D3FFFCE4
                D1FFADBC9FFF609873FF4F8E66FF4A8A61FF7A7A44FBFFFFFF00FFFFFF00C684
                47F7F9F3ECFFFEE8D6FFFEE8D7FFFDE7D6FFFDE7D6FFFDE7D5FFFDE5D3FFFBE4
                D0FFFBE3CCFFFADFC7FFFADFC6FFFAF2EAFFC68042F7FFFFFF00FFFFFF00C688
                49F7F9F4EDFFFEE8D8FFFEE8D8FFFEE8D7FFFEE7D6FFFDE5D3FFFCE4D1FFFBE1
                CCFFFAE0C7FFF9DDC3FFF8DCC2FFFAF4EDFFC68245F7FFFFFF00FFFFFF00C688
                4AF7F9F4EFFFFEE7D7FFFDE7D6FFFDE7D5FFFDE6D4FFFCE6D2FFFBE1CCFFFADF
                C7FFF8DCC2FFF6DABDFFF6D8BBFFFAF4EFFFC68346F7FFFFFF00FFFFFF00C689
                4BF7F9F4F0FFFCE6D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFFAE0C8FFF8DC
                C2FFF5D6BBFFF3D4B5FFF1D2B3FFF8F4F0FFC48246F7FFFFFF00FFFFFF00C689
                4BF7F9F5F1FFFCE3CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC4FFF6D9
                BCFFF4E9DFFFF7F2ECFFFBF7F3FFF5EFE9FFC27E45FBFFFFFF00FFFFFF00C689
                4CF6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC2FFF5D6
                BAFFFDFBF8FFFCE6CDFFFAE5C9FFE2B684FFBF7942A6FFFFFF00FFFFFF00C588
                4BEAFAF6F2FCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC5FFF8DBC1FFF4D6
                B8FFFFFBF8FFF6D8B4FFE1B07DFFDB9264F6B46B3E07FFFFFF00FFFFFF00C485
                49C3F7F2ECECF8F4EEFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
                ECFFF2E6D7FFE2B27DFFDB9465F5B3683B07FFFFFF00FFFFFF00FFFFFF00C17D
                4460C88B4DBBC88C4FEEC88C4FF6C88C4FF7C88C4FF7C88D4FF7C98C4FF7C78B
                4FF7C5894BD4C4763B91B3683C06FFFFFF00FFFFFF00FFFFFF00}
              ParentFont = False
              TabOrder = 0
              OnClick = Btn_Do2DocAddClick
            end
            object Btn_Do2DocEdit: TBitBtn
              Left = 697
              Top = 18
              Width = 96
              Height = 28
              Caption = #1048#1079#1084#1077#1085#1080#1090#1100
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                20000000000000040000120B0000120B00000000000000000000FFFFFF00BB6A
                346BBA6530BCBB6631EDBA6630F7BA6630F7BA6630F7BA6530F7BA652FF7B965
                2EF7B9652EF7B9642EF7B9642EEFB7622CBDB7622E63FFFFFF00FFFFFF00BC69
                33DEF8F1EAF2F7ECDFFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFFFAF3
                EBFFFAF2EAFFFCF7F3FFFCF8F4FDFEFEFDF0B7602AD5FFFFFF00FFFFFF00BF71
                38F5F5EBDFFEFDBF68FFFCBD67FFFBBE65FFFCBE64FFFCBE64FFFCBD62FFFBBD
                63FFFBBC61FFFCBE60FFFCBC62FFFDFBF8FDB9642DF3FFFFFF00FFFFFF00C178
                3CF7F7EDE3FFFDC26EFF184257FF2B6187FF4C89BCFF709FB3FFE3C99AFFFFD6
                95FFFFD594FFFFD493FFFBBE65FFFBF7F4FFBB6731F7FFFFFF00FFFFFF00C47C
                40F7F7F0E6FFF8B455FF2E6682FF94C7F9FF91C9F9FF4185C9FF2668A6FFD2A8
                65FFF7B251FFF7B24FFFF7B24FFFFCF9F5FFBF6F36F7FFFFFF00FFFFFF00C580
                42F7F8F1E8FFFEE5D5FF4389AAFFE0F2FFFF549AD8FF1A7ABEFF4998C5FF488C
                C2FFDAD2CDFFFBE0C9FFFBE1C8FFFDFAF7FFC1763BF7FFFFFF00FFFFFF00C582
                45F7F8F2EBFFFEE7D6FFA6B6BFFF7AB6D5FF90B7D1FF55C9E4FF5BDFF5FF78D0
                EDFF519BD9FFE1D6CDFFFBE1C9FFFBF7F2FFC57C3FF7FFFFFF00FFFFFF00C684
                47F7F9F3ECFFFEE8D6FFFEE8D7FFB3C6CCFF76B9D6FFC2F6FDFF63DFF7FF5DE2
                F8FF79D3F0FF4998DAFFE2D5C8FFFAF2EAFFC68042F7FFFFFF00FFFFFF00C688
                49F7F9F4EDFFFEE8D8FFFEE8D8FFFEE8D7FFB0C6CCFF77CBE7FFC7F7FDFF5EDC
                F5FF5AE1F7FF7BD4F1FF4B99DBFFD2DFE9FFC68245F7FFFFFF00FFFFFF00C688
                4AF7F9F4EFFFFEE7D7FFFDE7D6FFFDE7D5FFFDE6D4FFBDD6D5FF79D3EEFFC7F7
                FDFF5FDCF5FF5BE2F7FF7AD6F2FF51A1E0FFAD8560F9FFFFFF00FFFFFF00C689
                4BF7F9F4F0FFFCE6D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFBED4D0FF7DD4
                EEFFC4F6FDFF6CDDF6FF6DCAEDFF63A3D7FF6499C8FE5192CA26FFFFFF00C689
                4BF7F9F5F1FFFCE3CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC4FFAFCD
                C9FF81D5EEFFB2E3F9FF8BC0E7FFAED3F6FFC4E0FCFF669FD3F7FFFFFF00C689
                4CF6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC2FFF5D6
                BAFFAFE3F1FF77BEE7FFB4D2F0FFE5F3FFFFACD2EFFF488CC7E8FFFFFF00C588
                4BEAFAF6F2FCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC5FFF8DBC1FFF4D6
                B8FFFFFBF8FFB6CBC2FF58A5D8FF85B1DBFF469DD0FF2B95D15EFFFFFF00C485
                49C3F7F2ECECF8F4EEFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
                ECFFF2E6D7FFE2B27DFFDB9465F5B3683B07FFFFFF00FFFFFF00FFFFFF00C17D
                4460C88B4DBBC88C4FEEC88C4FF6C88C4FF7C88C4FF7C88D4FF7C98C4FF7C78B
                4FF7C5894BD4C4763B91B3683C06FFFFFF00FFFFFF00FFFFFF00}
              ParentFont = False
              TabOrder = 1
              OnClick = Btn_Do2DocEditClick
            end
            object Btn_Do2DocDel: TBitBtn
              Left = 808
              Top = 18
              Width = 87
              Height = 28
              Caption = #1059#1076#1072#1083#1080#1090#1100
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                08000000000000010000C40E0000C40E00000001000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                A6000020400000206000002080000020A0000020C0000020E000004000000040
                20000040400000406000004080000040A0000040C0000040E000006000000060
                20000060400000606000006080000060A0000060C0000060E000008000000080
                20000080400000806000008080000080A0000080C0000080E00000A0000000A0
                200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
                200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
                200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
                20004000400040006000400080004000A0004000C0004000E000402000004020
                20004020400040206000402080004020A0004020C0004020E000404000004040
                20004040400040406000404080004040A0004040C0004040E000406000004060
                20004060400040606000406080004060A0004060C0004060E000408000004080
                20004080400040806000408080004080A0004080C0004080E00040A0000040A0
                200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
                200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
                200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
                20008000400080006000800080008000A0008000C0008000E000802000008020
                20008020400080206000802080008020A0008020C0008020E000804000008040
                20008040400080406000804080008040A0008040C0008040E000806000008060
                20008060400080606000806080008060A0008060C0008060E000808000008080
                20008080400080806000808080008080A0008080C0008080E00080A0000080A0
                200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
                200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
                200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
                2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
                2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
                2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
                2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
                2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
                2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
                2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFDADADADADA
                DADAD9D99C15161554FFFFDAFFF6F6F6F6F6FFAF5E67271F1616FFE2F609F3F3
                F3F3F31EAF2727271F16FFE2F609090909090916B7FFFFFF2716FFE2F6F3F3F3
                F3F3F35DB76F27676716FFE2FFF6F6F6F6F6F6AE67B7EFAF5E16FFE2FFF6F6F6
                F6F6F6F6AE5E161E9CFFFFE2FFF6F6F6F6F6F6F6090909FFE2FFFFE2FFF6F6F6
                F6F6F609090909FFE2FFFFE2FFF6F6F6F6F60909090909FFE2FFFFE2FFF6F6F6
                F6090909090909FFE2FFFFE2FF09F60909090909F6F6FFF6E2FFFFE2FF090909
                09090909FF0909F4E2FFFFE2FF09090909090909FF09F4EBDAFFFFE2F6FFFFFF
                FFFFFFF6F6F4EBDAFFFFFFE2E2E2E2E2E2E2E2E2E2E2DAFFFFFF}
              ParentFont = False
              TabOrder = 2
              OnClick = Btn_Do2DocDelClick
            end
          end
        end
      end
      object GroupBox10: TGroupBox
        Left = 0
        Top = 0
        Width = 912
        Height = 104
        Align = alClient
        Caption = #1042#1099#1087#1091#1089#1082' '
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object Grid_Do2Hd: TDBGridEh
          Left = 2
          Top = 15
          Width = 783
          Height = 87
          Align = alLeft
          Color = clWhite
          DataSource = DM.DS_DoOutHd
          DynProps = <>
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterParams.Color = clWindow
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleParams.RowLines = 2
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DO2_STATN'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1053#1086#1084#1077#1088' '
              Width = 77
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'G072'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1044#1072#1090#1072
              Width = 119
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'LIC_NUM'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #8470' '#1083#1080#1094#1077#1085#1079#1080#1080
              Width = 149
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'LIC_DATE'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1044#1072#1090#1072' '#1083#1080#1094#1077#1085#1079#1080#1080
              Width = 125
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'G02_2'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1060#1072#1084#1080#1083#1080#1103
              Width = 132
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'G02_3'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
              Width = 155
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DT_OUTPUT'
              Footers = <>
              Title.Caption = #1042#1088#1077#1084#1103' '#1074#1099#1076#1072#1095#1080' '#1074' '#1040#1082#1090#1077
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ID_ACT_OUT'
              Footers = <>
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object Btn_Do2Hd_Add: TBitBtn
          Left = 800
          Top = 16
          Width = 97
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000120B0000120B00000000000000000000FFFFFF00BB6A
            346BBA6530BCBB6631EDBA6630F7BA6630F7BA6630F7BA6530F7BA652FF7B965
            2EF7626833FB216B37FF196B37FF1F6B37FC416935B6FFFFFF00FFFFFF00BC69
            33DEF8F1EAF2F7ECDFFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFF86AD
            8EFF288C53FF64BA8DFF95D2B2FF64BA8DFF288C53FF196B378CFFFFFF00BF71
            38F5F5EBDFFEFDBF68FFFCBD67FFFBBE65FFFCBE64FFFCBE64FFFCBD62FF226F
            3AFF62BA8BFF60BA87FFFFFFFFFF60B987FF67BC8FFF196B37F7FFFFFF00C178
            3CF7F7EDE3FFFDC26EFFFFD8A0FFFFD79EFFFFD69BFFFFD798FFFFD696FF317B
            4CFF9CD4B6FFFFFFFFFFFFFFFFFFFFFFFFFF95D2B2FF196B37FFFFFFFF00C47C
            40F7F7F0E6FFF8B455FFF7B456FFF7B554FFF8B453FFF8B253FFF7B352FF4A88
            5DFF90D3B1FF92D6B1FFFFFFFFFF65BC8CFF67BC8FFF196B37F7FFFFFF00C580
            42F7F8F1E8FFFEE5D5FFFDE5D3FFFDE5D3FFFCE5D3FFFCE5D3FFFCE4D1FFA6B8
            9BFF61AB81FF95D4B4FFBAE6D0FF6ABB8FFF2D8F57FF196B378CFFFFFF00C582
            45F7F8F2EBFFFEE7D6FFFDE7D6FFFDE7D6FFFDE7D6FFFDE6D5FFFDE5D3FFFCE4
            D1FFADBC9FFF609873FF4F8E66FF4A8A61FF7A7A44FBFFFFFF00FFFFFF00C684
            47F7F9F3ECFFFEE8D6FFFEE8D7FFFDE7D6FFFDE7D6FFFDE7D5FFFDE5D3FFFBE4
            D0FFFBE3CCFFFADFC7FFFADFC6FFFAF2EAFFC68042F7FFFFFF00FFFFFF00C688
            49F7F9F4EDFFFEE8D8FFFEE8D8FFFEE8D7FFFEE7D6FFFDE5D3FFFCE4D1FFFBE1
            CCFFFAE0C7FFF9DDC3FFF8DCC2FFFAF4EDFFC68245F7FFFFFF00FFFFFF00C688
            4AF7F9F4EFFFFEE7D7FFFDE7D6FFFDE7D5FFFDE6D4FFFCE6D2FFFBE1CCFFFADF
            C7FFF8DCC2FFF6DABDFFF6D8BBFFFAF4EFFFC68346F7FFFFFF00FFFFFF00C689
            4BF7F9F4F0FFFCE6D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFFAE0C8FFF8DC
            C2FFF5D6BBFFF3D4B5FFF1D2B3FFF8F4F0FFC48246F7FFFFFF00FFFFFF00C689
            4BF7F9F5F1FFFCE3CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC4FFF6D9
            BCFFF4E9DFFFF7F2ECFFFBF7F3FFF5EFE9FFC27E45FBFFFFFF00FFFFFF00C689
            4CF6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC2FFF5D6
            BAFFFDFBF8FFFCE6CDFFFAE5C9FFE2B684FFBF7942A6FFFFFF00FFFFFF00C588
            4BEAFAF6F2FCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC5FFF8DBC1FFF4D6
            B8FFFFFBF8FFF6D8B4FFE1B07DFFDB9264F6B46B3E07FFFFFF00FFFFFF00C485
            49C3F7F2ECECF8F4EEFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
            ECFFF2E6D7FFE2B27DFFDB9465F5B3683B07FFFFFF00FFFFFF00FFFFFF00C17D
            4460C88B4DBBC88C4FEEC88C4FF6C88C4FF7C88C4FF7C88D4FF7C98C4FF7C78B
            4FF7C5894BD4C4763B91B3683C06FFFFFF00FFFFFF00FFFFFF00}
          ParentFont = False
          TabOrder = 1
          OnClick = Btn_Do2Hd_AddClick
        end
        object Btn_DoHd_ed: TBitBtn
          Left = 800
          Top = 44
          Width = 97
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000120B0000120B00000000000000000000FFFFFF00BB6A
            346BBA6530BCBB6631EDBA6630F7BA6630F7BA6630F7BA6530F7BA652FF7B965
            2EF7B9652EF7B9642EF7B9642EEFB7622CBDB7622E63FFFFFF00FFFFFF00BC69
            33DEF8F1EAF2F7ECDFFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFFFAF3
            EBFFFAF2EAFFFCF7F3FFFCF8F4FDFEFEFDF0B7602AD5FFFFFF00FFFFFF00BF71
            38F5F5EBDFFEFDBF68FFFCBD67FFFBBE65FFFCBE64FFFCBE64FFFCBD62FFFBBD
            63FFFBBC61FFFCBE60FFFCBC62FFFDFBF8FDB9642DF3FFFFFF00FFFFFF00C178
            3CF7F7EDE3FFFDC26EFF184257FF2B6187FF4C89BCFF709FB3FFE3C99AFFFFD6
            95FFFFD594FFFFD493FFFBBE65FFFBF7F4FFBB6731F7FFFFFF00FFFFFF00C47C
            40F7F7F0E6FFF8B455FF2E6682FF94C7F9FF91C9F9FF4185C9FF2668A6FFD2A8
            65FFF7B251FFF7B24FFFF7B24FFFFCF9F5FFBF6F36F7FFFFFF00FFFFFF00C580
            42F7F8F1E8FFFEE5D5FF4389AAFFE0F2FFFF549AD8FF1A7ABEFF4998C5FF488C
            C2FFDAD2CDFFFBE0C9FFFBE1C8FFFDFAF7FFC1763BF7FFFFFF00FFFFFF00C582
            45F7F8F2EBFFFEE7D6FFA6B6BFFF7AB6D5FF90B7D1FF55C9E4FF5BDFF5FF78D0
            EDFF519BD9FFE1D6CDFFFBE1C9FFFBF7F2FFC57C3FF7FFFFFF00FFFFFF00C684
            47F7F9F3ECFFFEE8D6FFFEE8D7FFB3C6CCFF76B9D6FFC2F6FDFF63DFF7FF5DE2
            F8FF79D3F0FF4998DAFFE2D5C8FFFAF2EAFFC68042F7FFFFFF00FFFFFF00C688
            49F7F9F4EDFFFEE8D8FFFEE8D8FFFEE8D7FFB0C6CCFF77CBE7FFC7F7FDFF5EDC
            F5FF5AE1F7FF7BD4F1FF4B99DBFFD2DFE9FFC68245F7FFFFFF00FFFFFF00C688
            4AF7F9F4EFFFFEE7D7FFFDE7D6FFFDE7D5FFFDE6D4FFBDD6D5FF79D3EEFFC7F7
            FDFF5FDCF5FF5BE2F7FF7AD6F2FF51A1E0FFAD8560F9FFFFFF00FFFFFF00C689
            4BF7F9F4F0FFFCE6D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFBED4D0FF7DD4
            EEFFC4F6FDFF6CDDF6FF6DCAEDFF63A3D7FF6499C8FE5192CA26FFFFFF00C689
            4BF7F9F5F1FFFCE3CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC4FFAFCD
            C9FF81D5EEFFB2E3F9FF8BC0E7FFAED3F6FFC4E0FCFF669FD3F7FFFFFF00C689
            4CF6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC2FFF5D6
            BAFFAFE3F1FF77BEE7FFB4D2F0FFE5F3FFFFACD2EFFF488CC7E8FFFFFF00C588
            4BEAFAF6F2FCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC5FFF8DBC1FFF4D6
            B8FFFFFBF8FFB6CBC2FF58A5D8FF85B1DBFF469DD0FF2B95D15EFFFFFF00C485
            49C3F7F2ECECF8F4EEFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
            ECFFF2E6D7FFE2B27DFFDB9465F5B3683B07FFFFFF00FFFFFF00FFFFFF00C17D
            4460C88B4DBBC88C4FEEC88C4FF6C88C4FF7C88C4FF7C88D4FF7C98C4FF7C78B
            4FF7C5894BD4C4763B91B3683C06FFFFFF00FFFFFF00FFFFFF00}
          ParentFont = False
          TabOrder = 2
        end
        object Btn_Do2Hd_del: TBitBtn
          Left = 800
          Top = 71
          Width = 97
          Height = 25
          Action = A_Do2Delete
          Caption = #1059#1076#1072#1083#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000C40E0000C40E00000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFDADADADADA
            DADAD9D99C15161554FFFFDAFFF6F6F6F6F6FFAF5E67271F1616FFE2F609F3F3
            F3F3F31EAF2727271F16FFE2F609090909090916B7FFFFFF2716FFE2F6F3F3F3
            F3F3F35DB76F27676716FFE2FFF6F6F6F6F6F6AE67B7EFAF5E16FFE2FFF6F6F6
            F6F6F6F6AE5E161E9CFFFFE2FFF6F6F6F6F6F6F6090909FFE2FFFFE2FFF6F6F6
            F6F6F609090909FFE2FFFFE2FFF6F6F6F6F60909090909FFE2FFFFE2FFF6F6F6
            F6090909090909FFE2FFFFE2FF09F60909090909F6F6FFF6E2FFFFE2FF090909
            09090909FF0909F4E2FFFFE2FF09090909090909FF09F4EBDAFFFFE2F6FFFFFF
            FFFFFFF6F6F4EBDAFFFFFFE2E2E2E2E2E2E2E2E2E2E2DAFFFFFF}
          ParentFont = False
          TabOrder = 3
        end
      end
    end
  end
  object SaveBtn: TBitBtn
    Left = 705
    Top = 648
    Width = 96
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000202020404040
      4040404040404040404040404040404040404040404040404040404040404040
      404040404040402020207F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04040407F7F7FC0C0C0
      C0C0C0C0C0C0909090808080B0B0B0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C04040407F7F7FC0C0C0C0C0C0309030008000608060808080B0
      B0B0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04040407F7F7FC0C0C0
      30CF30008000008000008000608060808080B0B0B0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C04040407F7F7FC0C0C000BF0000800000800000800000800060
      8060808080B0B0B0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04040407F7F7FC0C0C0
      00BF00008000008000008000008000008000608060909090C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C04040407F7F7FC0C0C000BF0000800000800020DF20009F0000
      8000208020808080A0A0A0C0C0C0C0C0C0C0C0C0C0C0C04040407F7F7FC0C0C0
      90CF9000BF0000800080808030EF30009F00008000208020808080B0B0B0C0C0
      C0C0C0C0C0C0C04040407F7F7FC0C0C0C0C0C090CF9000DF00A0A0A0C0C0C030
      EF30009F00008000608060808080B0B0B0C0C0C0C0C0C04040407F7F7FC0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C030EF30009F000080006080609090
      90C0C0C0C0C0C04040407F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C030EF30009F00208020808080A0A0A0C0C0C04040407F7F7FC0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C030EF30009F002080
      20808080C0C0C04040407F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C030EF30009F00608060C0C0C04040407F7F7FC0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C060DF
      6090B090C0C0C04040403F3F3F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F202020}
    TabOrder = 1
    OnClick = SaveBtnClick
  end
  object CancBtn: TBitBtn
    Left = 816
    Top = 648
    Width = 88
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF404040606060808080808080808080606060404040FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20202020206020209F0000BF00
      00BF0000BF20209F404080808080606060202020FFFFFFFFFFFFFFFFFFFFFFFF
      00002020209F0000FF0000FF0000FF0000FF0000FF0000FF0000FF20209F6060
      80808080202020FFFFFFFFFFFF0000200000DF0000FF0000FF0000FF0000FF00
      00FF0000FF0000FF0000FF0000FF0000DF606080606060FFFFFFFFFFFF00007F
      0000FF0000FF3F3FFF0000FF0000FF0000FF0000FF0000FF3F3FFF0000FF0000
      FF20209F8080804040400000400000FF0000FF3F3FFFFFFFFFBFBFFF0000FF00
      00FF0000FFBFBFFFFFFFFF3F3FFF0000FF0000FF40408060606000007F0000FF
      0000FF0000FFBFBFFFFFFFFFBFBFFF0000FFBFBFFFFFFFFFBFBFFF0000FF0000
      FF0000FF20209F8080800000BF0000FF0000FF0000FF0000FFBFBFFFFFFFFFFF
      FFFFFFFFFFBFBFFF0000FF0000FF0000FF0000FF0000BF8080800000BF0000FF
      0000FF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000
      FF0000FF0000BF8080800000BF0000FF0000FF0000FF0000FFBFBFFFFFFFFFFF
      FFFFFFFFFFBFBFFF0000FF0000FF0000FF0000FF0000BF60606000007F0000FF
      0000FF0000FFBFBFFFFFFFFFBFBFFF0000FFBFBFFFFFFFFFBFBFFF0000FF0000
      FF0000FF20209F4040400000400000FF0000FF3F3FFFFFFFFFBFBFFF0000FF00
      00FF0000FFBFBFFFFFFFFF3F3FFF0000FF0000FF202060FFFFFFFFFFFF00007F
      0000FF0000FF3F3FFF0000FF0000FF0000FF0000FF0000FF3F3FFF0000FF0000
      FF20209F202020FFFFFFFFFFFF0000200000DF0000FF0000FF0000FF0000FF00
      00FF0000FF0000FF0000FF0000FF0000DF000020FFFFFFFFFFFFFFFFFFFFFFFF
      00002000007F0000FF0000FF0000FF0000FF0000FF0000FF0000FF00007F0000
      20FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00004000007F0000BF00
      00BF0000BF00007F000040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ModalResult = 2
    TabOrder = 2
    OnClick = CancBtnClick
  end
  object PrintBtn: TBitBtn
    Left = 592
    Top = 648
    Width = 96
    Height = 25
    Caption = #1055#1077#1095#1072#1090#1100
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF006060600060606000606060006060600060606000606060006060
      600060606000606060006060600060606000FF00FF00FF00FF00FF00FF00FF00
      FF00303030006060600060606000606060006060600060606000606060006060
      60006060600060606000606060009090900090909000FF00FF00FF00FF000000
      00009F9F9F006060600060606000606060006060600060606000606060006060
      60006060600060606000606060003F3F3F009090900090909000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000909090006F6F6F00A0A0
      6000A0A06000A0A06000A0A06000A0A06000A0A06000A0A06000A0A06000A0A0
      6000A0A06000A0A06000A0A060008F8F6F0000000000000000007F7F7F00C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C00080800000C0C0C000DFDFDF0060600000000000007F7F7F00B0B0
      9000B0B09000A0A06000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000DFDFDF0080800000404000007F7F7F0090CF
      900090CF900060DF6000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C0009090CF006060DF00C0C0C000DFDFDF0080800000404000003F3F3F00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF009F9F3F0040400000FF00FF003030
      3000C0C0C000606060007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F004040000090903000C0C0C000CFCFCF005F5F3F00FF00FF00FF00
      FF000000000000000000FF00FF00BF7F7F00BF7F7F00BF7F7F00BF7F7F00BF7F
      7F00DFBFBF000000000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00303030009F9F7F00DFBFBF00BF7F7F00BF7F7F00DFBFBF00FF00
      FF00FF00FF008F8F6F00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000000000BFBFBF00BF7F7F00BF7F7F00BF7F7F00BF7F
      7F00BF7F7F00FF00FF003F3F3F00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0050503000DFBFBF00BF7F7F00BF7F7F00BF7F
      7F00BF7F7F00DFBFBF00FF00FF008F8F6F00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F003F3F3F00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    TabOrder = 3
    OnClick = PrintBtnClick
  end
  object RefBtn: TBitBtn
    Left = 488
    Top = 648
    Width = 89
    Height = 25
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00406020004060
      2000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00A4A0A000A4A0A000A4A0A00080808000408040004060
      2000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A4A0
      A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A0004080600040A0600040A0
      60004080200040602000406020004060200000602000FF00FF00A4A0A000A4A0
      A000C0C0C000F0FBFF00F0FBFF00F0FBFF0040A0600080A0600080C0A00080C0
      A00080C0A00080C0800080C0800080A060004060200000602000A4A0A000C0DC
      C000F0FBFF00C0DCC000C0DCC000C0DCC000C0DCC00080A0600080A0600040A0
      6000408040004080400040A0600080C0800040A0600040602000A4A0A000F0FB
      FF00C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0C0C00040A0600040A0
      6000C0DCC000A4A0A00040804000408040004060200040602000A4A0A000F0FB
      FF00F0FBFF00C0DCC000C0DCC000C0DCC000C0DCC000C0C0C000C0C0C00080A0
      8000F0FBFF00A4A0A000FF00FF00FF00FF00FF00FF00FF00FF00C0C0C000F0FB
      FF00F0FBFF00C0DCC000C0DCC000F0FBFF00C0DCC000C0C0C000C0C0C000C0C0
      C000F0FBFF0040A0600040804000FF00FF00FF00FF00FF00FF00C0C0C000F0FB
      FF00F0FBFF00F0FBFF00C0DCC00080C0800040C0600040C0600080C08000C0C0
      C000F0FBFF0040A0600040A040004080400040804000FF00FF00C0C0C000F0FB
      FF00F0FBFF00F0FBFF00F0FBFF0080E0A00080C0A000C0DCC00080C0800040A0
      600040A0600080C0800080C0800040A04000FF00FF00FF00FF00C0C0C000F0FB
      FF00F0FBFF00C0C0C000C0C0C000C0C0C00080C0800080E0A000C0DCC000C0DC
      C000C0DCC000C0DCC00080E0A00080C0800040A04000FF00FF00C0C0C000F0FB
      FF00C0DCC000C0DCC000F0FBFF00FF00FF00C0DCC00080C0800080C0600080C0
      600040C0600080C0800080C0800040A06000FF00FF00FF00FF00C0C0C000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00F0FBFF0080C0800040C06000FF00FF00FF00FF00FF00FF00C0C0C000F0FB
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00C0C0C00080C0800040C06000FF00FF00FF00FF00FF00FF00C0C0C000C0C0
      C000C0DCC000F0FBFF00F0FBFF00FF00FF00FF00FF00F0FBFF00F0FBFF00C0C0
      C000A4A0A000A4A0A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000A4A0A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    TabOrder = 4
    OnClick = RefBtnClick
  end
  object ActionList1: TActionList
    Left = 680
    Top = 96
    object Refresh_DoTrans: TAction
      Caption = 'Refresh_DoTrans'
      OnExecute = Refresh_DoTransExecute
    end
    object Refresh_DoTrand: TAction
      Caption = 'Refresh_DoTrand'
      OnExecute = Refresh_DoTrandExecute
    end
    object Refresh_DoCust: TAction
      Caption = 'Refresh_DoCust'
      OnExecute = Refresh_DoCustExecute
    end
    object Refresh_DoTovar: TAction
      Caption = 'Refresh_DoTovar'
      OnExecute = Refresh_DoTovarExecute
    end
    object Refresh_DoOutHd: TAction
      Caption = 'Refresh_DoOutHd'
      OnExecute = Refresh_DoOutHdExecute
    end
    object Refresh_DoOutCust: TAction
      Caption = 'Refresh_DoOutCust'
      OnExecute = Refresh_DoOutCustExecute
    end
    object Refresh_DoOutTd: TAction
      Caption = 'Refresh_DoOutTd'
      OnExecute = Refresh_DoOutTdExecute
    end
    object Refresh_DoOutTs: TAction
      Caption = 'Refresh_DoOutTs'
      OnExecute = Refresh_DoOutTsExecute
    end
    object Refresh_DoOutTov: TAction
      Caption = 'Refresh_DoOutTov'
      OnExecute = Refresh_DoOutTovExecute
    end
    object Refresh_DoDocsOut: TAction
      Caption = 'Refresh_DoDocsOut'
      OnExecute = Refresh_DoDocsOutExecute
    end
    object Refresh_DoGtd: TAction
      Caption = 'Refresh_DoGtd'
      OnExecute = Refresh_DoGtdExecute
    end
  end
  object ImageList1: TImageList
    Left = 568
    Top = 96
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
      000000000000317A36002D753200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003985400037833D00317B37002E7633000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004292
      4900408E470054A35C004F9F5700327C38002E77340000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004B9E5300499A
      51005BAC640077CA820074C87E0051A05900337D39002F783500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000053A95C0051A65A0063B5
      6D007ECE89007BCC870076CA810076C9810052A25A00347E3A00307935000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005AB4650059B063006BBD760084D2
      90007AC9850060B26A0063B46D0078C9830078CB820053A35C00347F3A00317A
      3600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005EB969005BB5660079C9860080CE
      8D0051A65A004DA15600499C51005CAD67007CCC860079CB850054A45D003580
      3B00317B37000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005FBA6A005CB666006DC0
      790055AC5F0000000000000000004A9D52005EAE68007DCD89007CCD870056A5
      5F0036813C00327C380000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005FBB6A005CB7
      6700000000000000000000000000000000004B9E53005FAF69007FCE8A007ECE
      890057A6600037823D00337D3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004B9F540060B06A0081CF
      8D007FCF8B0058A7610039854000347E3A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004CA0550062B2
      6C0082D18F007AC8850057A6600038843F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004DA1
      560063B36D005FAF690041914900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004EA257004A9D520000000000000000000000000000000000000000000000
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
  object ActionManager1: TActionManager
    Left = 568
    Top = 144
    StyleName = 'Platform Default'
    object A_ActComAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1086#1084#1084#1077#1088#1095#1077#1089#1082#1080#1081' '#1072#1082#1090
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1086#1084#1084#1077#1088#1095#1077#1089#1082#1080#1081' '#1072#1082#1090
      OnExecute = A_ActComAddExecute
    end
    object A_ActComEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1082#1086#1084#1084#1077#1088#1095#1077#1089#1082#1080#1081' '#1072#1082#1090
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1082#1086#1084#1084#1077#1088#1095#1077#1089#1082#1080#1081' '#1072#1082#1090
      OnExecute = A_ActComEditExecute
    end
    object A_ActComDelete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1082#1086#1084#1084#1077#1088#1095#1077#1089#1082#1080#1081' '#1072#1082#1090
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1082#1086#1084#1084#1077#1088#1095#1077#1089#1082#1080#1081' '#1072#1082#1090
      OnExecute = A_ActComDeleteExecute
    end
    object A_MismTovAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1090#1086#1074#1072#1088#1099
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1090#1086#1074#1072#1088#1099
      OnExecute = A_MismTovAddExecute
    end
    object A_MismTovEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1090#1086#1074#1072#1088
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1090#1086#1074#1072#1088
      OnExecute = A_MismTovEditExecute
    end
    object A_MismTovDelete: TAction
      OnExecute = A_MismTovDeleteExecute
    end
    object A_Do2Delete: TAction
      OnExecute = A_Do2DeleteExecute
    end
    object A_LinkGtdTov: TAction
      Caption = #1055#1088#1080#1082#1088#1077#1087#1080#1090#1100
      OnExecute = A_LinkGtdTovExecute
    end
  end
  object PopMn_TovOut: TPopupMenu
    Left = 88
    Top = 267
    object Mn_Item_Set_DT_Output: TMenuItem
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1076#1072#1090#1091' '#1080' '#1074#1088#1077#1084#1103' '#1080#1079' '#1040#1082#1090#1072' '#1074#1099#1076#1072#1095#1080
      OnClick = Mn_Item_Set_DT_OutputClick
    end
  end
end
