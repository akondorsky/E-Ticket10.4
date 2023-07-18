object Do1_F: TDo1_F
  Left = 0
  Top = 0
  Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1044#1054'1 '#1080' '#1044#1054'2'
  ClientHeight = 528
  ClientWidth = 1176
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1176
    Height = 528
    ActivePage = Tab_Do1
    Align = alClient
    TabOrder = 0
    object Tab_Do1: TTabSheet
      Caption = #1046#1091#1088#1085#1072#1083' '#1044#1054'1'
      object Panel_DO: TPanel
        Left = 0
        Top = 0
        Width = 1168
        Height = 499
        Align = alClient
        Caption = 'PanelDO'
        TabOrder = 0
        object ToolBar7: TToolBar
          Left = 1
          Top = 1
          Width = 1166
          Height = 29
          ButtonHeight = 27
          ButtonWidth = 29
          Caption = 'ToolBar1'
          DrawingStyle = dsGradient
          Images = Main_F.ImL_16
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object TB_refdo12: TToolButton
            Left = 0
            Top = 0
            Caption = 'TB_refdo12'
            ImageIndex = 12
            OnClick = TB_refdo12Click
          end
        end
        object Panel14: TPanel
          Left = 1
          Top = 30
          Width = 1166
          Height = 99
          Align = alTop
          BevelInner = bvSpace
          BevelOuter = bvNone
          BorderStyle = bsSingle
          TabOrder = 1
          object GroupBox2: TGroupBox
            Left = 4
            Top = 0
            Width = 213
            Height = 89
            Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1079#1085#1072#1095#1077#1085#1080#1102
            TabOrder = 0
            object RxLabel6: TLabel
              Left = 8
              Top = 46
              Width = 43
              Height = 28
              Caption = #1057#1090#1088#1086#1082#1072#13#10#1087#1086#1080#1089#1082#1072' '
            end
            object CbDo: TComboBox
              Left = 8
              Top = 16
              Width = 193
              Height = 22
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 0
              Text = #1048#1089#1082#1072#1090#1100' '#1087#1086' '#1085#1086#1084#1077#1088#1091' '#1044#1054
              Items.Strings = (
                #1048#1089#1082#1072#1090#1100' '#1087#1086' '#1085#1086#1084#1077#1088#1091' '#1044#1054
                #1048#1089#1082#1072#1090#1100' '#1087#1086' '#1087#1086#1083#1091#1095#1072#1090#1077#1083#1102
                #1048#1089#1082#1072#1090#1100' '#1087#1086' '#1050#1058)
            end
            object E_Find_Do: TButtonedEdit
              Left = 57
              Top = 44
              Width = 144
              Height = 22
              Images = ImL_16
              RightButton.ImageIndex = 14
              RightButton.Visible = True
              TabOrder = 1
              OnKeyPress = E_Find_DoKeyPress
              OnRightButtonClick = E_Find_DoRightButtonClick
            end
          end
          object GroupBox3: TGroupBox
            Left = 224
            Top = 0
            Width = 233
            Height = 89
            Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1077#1088#1080#1086#1076
            TabOrder = 1
            object Label2: TLabel
              Left = 107
              Top = 18
              Width = 19
              Height = 13
              Caption = '<->'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object BtnSetDate: TSpeedButton
              Left = 8
              Top = 49
              Width = 213
              Height = 25
              Caption = #1054#1090#1086#1073#1088#1072#1090#1100' '#1044#1054
              Flat = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF004040
                4000404040004040400040404000404040004040400040404000404040004040
                40004040400040404000404040004040400040404000FF00FF007F7F7F00C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000404040007F7F7F00C0C0
                C000C0C0C000C0C0C0009090900080808000B0B0B000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000404040007F7F7F00C0C0
                C000C0C0C00030903000008000006080600080808000B0B0B000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000404040007F7F7F00C0C0
                C00030CF30000080000000800000008000006080600080808000B0B0B000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000404040007F7F7F00C0C0
                C00000BF0000008000000080000000800000008000006080600080808000B0B0
                B000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000404040007F7F7F00C0C0
                C00000BF00000080000000800000008000000080000000800000608060009090
                9000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000404040007F7F7F00C0C0
                C00000BF0000008000000080000020DF2000009F000000800000208020008080
                8000A0A0A000C0C0C000C0C0C000C0C0C000C0C0C000404040007F7F7F00C0C0
                C00090CF900000BF0000008000008080800030EF3000009F0000008000002080
                200080808000B0B0B000C0C0C000C0C0C000C0C0C000404040007F7F7F00C0C0
                C000C0C0C00090CF900000DF0000A0A0A000C0C0C00030EF3000009F00000080
                00006080600080808000B0B0B000C0C0C000C0C0C000404040007F7F7F00C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00030EF3000009F
                0000008000006080600090909000C0C0C000C0C0C000404040007F7F7F00C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00030EF
                3000009F00002080200080808000A0A0A000C0C0C000404040007F7F7F00C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C00030EF3000009F00002080200080808000C0C0C000404040007F7F7F00C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C00030EF3000009F000060806000C0C0C000404040007F7F7F00C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C00060DF600090B09000C0C0C000404040003F3F3F007F7F
                7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
                7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FF00FF00}
              ParentShowHint = False
              ShowHint = True
              OnClick = BtnSetDateClick
            end
            object E_DoDt1: TDateTimePicker
              Left = 8
              Top = 16
              Width = 93
              Height = 22
              Date = 44796.000000000000000000
              Time = 0.494771307872724700
              TabOrder = 0
            end
            object E_DoDt2: TDateTimePicker
              Left = 135
              Top = 16
              Width = 89
              Height = 22
              Date = 44796.000000000000000000
              Time = 0.494771307872724700
              TabOrder = 1
            end
          end
        end
        object Panel15: TPanel
          Left = 1
          Top = 129
          Width = 1166
          Height = 369
          Align = alClient
          Caption = 'Panel15'
          TabOrder = 2
          object Panel17: TPanel
            Left = 1
            Top = 1
            Width = 1164
            Height = 256
            Align = alClient
            Caption = 'Panel17'
            TabOrder = 0
            object GridDo1: TDBGridEh
              Left = 1
              Top = 1
              Width = 1162
              Height = 254
              Align = alClient
              DataSource = DM.Ds_DoHead
              DynProps = <>
              Flat = True
              FooterParams.Color = clWindow
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
              PopupMenu = PopMn_DoHead
              ReadOnly = True
              SelectionDrawParams.SelectionStyle = gsdsClassicEh
              TabOrder = 0
              TitleParams.RowLines = 3
              OnDblClick = GridDo1DblClick
              OnDrawColumnCell = GridDo1DrawColumnCell
              OnKeyDown = GridDo1KeyDown
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'STATUS'
                  Footers = <>
                  ImageList = Main_F.ImL_Check
                  KeyList.Strings = (
                    '1')
                  Title.Alignment = taCenter
                  Title.Caption = #1055#1086#1083#1085#1086#1077' '#1089#1087#1080#1089#1072#1085#1080#1077
                  Width = 58
                end
                item
                  Alignment = taCenter
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'NUM_TP'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #8470' '#1058#1055
                  Width = 77
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'G073'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1053#1086#1084#1077#1088' '#1044#1054'1'
                  Width = 78
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'G072'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1044#1072#1090#1072' '#1074#1088#1077#1084#1103' '#1044#1054'1'
                  Width = 116
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'G14FAM'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100' '#1057#1042#1061
                  Width = 122
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'R_NAME'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100' '
                  Width = 205
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'NTRANS'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1053#1086#1084#1077#1088#1072' '#1058#1057
                  Width = 137
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'C_NAME'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1055#1077#1088#1077#1074#1086#1079#1095#1080#1082
                  Width = 182
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'C_FAM'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100' '#1087#1077#1088#1077#1074#1086#1079#1095#1080#1082#1072
                  Width = 99
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'F_NAME'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
                  Width = 182
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
          object Panel16: TPanel
            Left = 1
            Top = 257
            Width = 1164
            Height = 111
            Align = alBottom
            Caption = 'Panel16'
            TabOrder = 1
            object Splitter2: TSplitter
              Left = 1
              Top = 1
              Width = 1162
              Height = 3
              Cursor = crVSplit
              Align = alTop
              Beveled = True
              Color = clBtnShadow
              ParentColor = False
              ResizeStyle = rsLine
              ExplicitWidth = 1144
            end
            object Splitter1: TSplitter
              Left = 297
              Top = 4
              Height = 106
              ExplicitLeft = 320
              ExplicitTop = 40
              ExplicitHeight = 100
            end
            object Splitter3: TSplitter
              Left = 599
              Top = 4
              Height = 106
              ExplicitLeft = 624
              ExplicitTop = 40
              ExplicitHeight = 100
            end
            object GridDoTrand: TDBGridEh
              Left = 300
              Top = 4
              Width = 299
              Height = 106
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
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleParams.RowLines = 2
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'NAME'
                  Footers = <>
                  Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                  Width = 81
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'NDOC'
                  Footers = <>
                  Title.Caption = #1053#1086#1084#1077#1088
                  Width = 86
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'DDOC'
                  Footers = <>
                  Title.Caption = #1044#1072#1090#1072
                  Width = 59
                end
                item
                  Alignment = taCenter
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'KOL_TOV'
                  Footers = <>
                  Title.Caption = #1058#1086#1074#1072#1088#1086#1074
                  Width = 36
                end>
              object RowDetailData: TRowDetailPanelControlEh
                object DBGridEh14: TDBGridEh
                  Left = 0
                  Top = 0
                  Width = 0
                  Height = 129
                  Align = alTop
                  DynProps = <>
                  Flat = True
                  FooterRowCount = 1
                  FooterParams.Color = clWhite
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
                  SumList.Active = True
                  TabOrder = 0
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
                      Title.Alignment = taCenter
                      Title.Caption = #8470' '#1087'/'#1087
                      Width = 39
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
                      Title.Alignment = taCenter
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
                      Title.Alignment = taCenter
                      Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                      Width = 432
                    end
                    item
                      Alignment = taRightJustify
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'G42'
                      Footers = <
                        item
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
                      Title.Alignment = taCenter
                      Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
                      Width = 111
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
                      Title.Alignment = taCenter
                      Title.Caption = #1042#1072#1083#1102#1090#1072
                      Width = 49
                    end
                    item
                      Alignment = taCenter
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'G31_2'
                      Footers = <
                        item
                          Color = clMoneyGreen
                          FieldName = 'G31_2'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -11
                          Font.Name = 'MS Sans Serif'
                          Font.Style = [fsBold]
                          ValueType = fvtSum
                        end>
                      Title.Alignment = taCenter
                      Title.Caption = #1052#1077#1089#1090
                      Width = 59
                    end
                    item
                      Alignment = taRightJustify
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'G35'
                      Footers = <
                        item
                          Color = clMoneyGreen
                          FieldName = 'G35'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -11
                          Font.Name = 'MS Sans Serif'
                          Font.Style = [fsBold]
                          ValueType = fvtSum
                        end>
                      Title.Alignment = taCenter
                      Title.Caption = #1050#1086#1083'-'#1074#1086' '#1074' '#1086#1089#1085'. '#1077#1076'.'
                      Width = 86
                    end>
                  object RowDetailData: TRowDetailPanelControlEh
                  end
                end
              end
            end
            object GridDo2: TDBGridEh
              Left = 1
              Top = 4
              Width = 296
              Height = 106
              Align = alLeft
              DataSource = DM.DS_DoOutHd
              DynProps = <>
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
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
                  FieldName = 'DO2_STATN'
                  Footers = <>
                  Title.Caption = #1053#1086#1084#1077#1088' '#1044#1054'2'
                  Width = 55
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'G072'
                  Footers = <>
                  Title.Caption = #1044#1072#1090#1072' '#1044#1054'2'
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'G02_2'
                  Footers = <>
                  Title.Caption = #1060#1048#1054
                  Width = 145
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
            object GridDoTovar: TDBGridEh
              Left = 602
              Top = 4
              Width = 561
              Height = 106
              Align = alClient
              DataSource = DM.DS_DoTovar
              DynProps = <>
              Flat = True
              FooterRowCount = 1
              FooterParams.Color = clWhite
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              SumList.Active = True
              TabOrder = 2
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
                  Title.Alignment = taCenter
                  Title.Caption = #8470' '#1087'/'#1087
                  Width = 32
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'G31_1'
                  Footers = <
                    item
                      Alignment = taRightJustify
                      Color = clBtnShadow
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      Value = #1054#1089#1090#1072#1090#1086#1082':'
                      ValueType = fvtStaticText
                    end>
                  Title.Alignment = taCenter
                  Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                  Width = 195
                end
                item
                  Alignment = taRightJustify
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'G42_OST'
                  Footers = <
                    item
                      Color = clMoneyGreen
                      DisplayFormat = '0.00'
                      FieldName = 'G42_OST'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ValueType = fvtSum
                    end>
                  Title.Alignment = taCenter
                  Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
                  Width = 68
                end
                item
                  Alignment = taCenter
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'G31_2_OST'
                  Footers = <
                    item
                      Color = clMoneyGreen
                      FieldName = 'G31_2_OST'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ValueType = fvtSum
                    end>
                  Title.Alignment = taCenter
                  Title.Caption = #1052#1077#1089#1090
                  Width = 49
                end
                item
                  Alignment = taRightJustify
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'G35_OST'
                  Footers = <
                    item
                      Color = clMoneyGreen
                      FieldName = 'G35_OST'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ValueType = fvtSum
                    end>
                  Title.Alignment = taCenter
                  Title.Caption = #1042#1077#1089', '#1082#1075
                  Width = 76
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
        end
      end
    end
    object Tab_Do2: TTabSheet
      Caption = #1046#1091#1088#1085#1072#1083' '#1044#1054'2'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1168
        Height = 499
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 0
        object Grid_Do2Sheet: TDBGridEh
          Left = 1
          Top = 98
          Width = 1166
          Height = 400
          Align = alClient
          DataSource = DM.DS_Do2Sheet
          DynProps = <>
          Flat = True
          FooterParams.Color = clWindow
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghColumnResize, dghColumnMove, dghExtendVertLines]
          PopupMenu = PopMn_Do2Sheet
          ReadOnly = True
          SelectionDrawParams.SelectionStyle = gsdsClassicEh
          TabOrder = 0
          TitleParams.RowLines = 2
          OnDrawColumnCell = Grid_Do2SheetDrawColumnCell
          OnKeyDown = Grid_Do2SheetKeyDown
          Columns = <
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DO2_STATN'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #8470' '#1044#1054'2'
              Width = 101
            end
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CAST'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1044#1072#1090#1072' '#1044#1054'2'
              Width = 139
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'G02_2'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1054#1087#1077#1088#1072#1090#1086#1088
              Width = 164
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
              Width = 124
            end
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CAST1'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1044#1072#1090#1072' '#1044#1054'1'
              Width = 141
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'R_NAME'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100' '#1075#1088#1091#1079#1072
              Width = 292
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 41
          Width = 1166
          Height = 57
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label3: TLabel
            Left = 15
            Top = 20
            Width = 96
            Height = 16
            Caption = #1042#1074#1077#1076#1080#1090#1077' '#8470' '#1044#1054'2'
          end
          object E_FindDo2: TButtonedEdit
            Left = 121
            Top = 16
            Width = 144
            Height = 24
            Images = ImL_16
            MaxLength = 7
            NumbersOnly = True
            RightButton.ImageIndex = 14
            RightButton.Visible = True
            TabOrder = 0
            OnKeyPress = E_FindDo2KeyPress
            OnRightButtonClick = E_FindDo2RightButtonClick
          end
        end
        object ToolBar3: TToolBar
          Left = 1
          Top = 1
          Width = 1166
          Height = 40
          ButtonHeight = 38
          ButtonWidth = 39
          Caption = 'ToolBar1'
          DrawingStyle = dsGradient
          Images = Main_F.ImL_32
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          object ToolButton9: TToolButton
            Left = 0
            Top = 0
            Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
            Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
            ImageIndex = 12
            OnClick = ToolButton9Click
          end
          object ToolButton10: TToolButton
            Left = 39
            Top = 0
            Width = 8
            Caption = 'ToolButton5'
            ImageIndex = 13
            Style = tbsSeparator
          end
          object ToolButton11: TToolButton
            Left = 47
            Top = 0
            Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077' '#1079#1072#1087#1080#1089#1080
            Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077' '#1079#1072#1087#1080#1089#1080
            ImageIndex = 19
            OnClick = ToolButton11Click
          end
        end
      end
    end
    object Tab_TpWo_Do1: TTabSheet
      Caption = #1058#1055', '#1087#1086#1084#1077#1097#1077#1085#1085#1099#1077' '#1085#1072' '#1057#1042#1061' '#1073#1077#1079' '#1044#1054'1'
      ImageIndex = 3
      object ToolBar2: TToolBar
        Left = 0
        Top = 0
        Width = 1168
        Height = 40
        ButtonHeight = 38
        ButtonWidth = 39
        Caption = 'ToolBar1'
        DrawingStyle = dsGradient
        Images = Main_F.ImL_32
        TabOrder = 0
        object ToolButton3: TToolButton
          Left = 0
          Top = 0
          Action = A_Do1Add
          ParentShowHint = False
          ShowHint = True
        end
        object ToolButton4: TToolButton
          Left = 39
          Top = 0
          Width = 8
          Caption = 'ToolButton1'
          ImageIndex = 13
          Style = tbsSeparator
        end
        object Tb_RefTp: TToolButton
          Left = 47
          Top = 0
          Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
          Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
          ImageIndex = 12
          ParentShowHint = False
          ShowHint = True
          OnClick = Tb_RefTpClick
        end
      end
      object Grid_TpWoDo1: TDBGridEh
        Left = 0
        Top = 40
        Width = 1168
        Height = 459
        Align = alClient
        DataSource = DM.Ds_TPWithoutDo1
        DynProps = <>
        Flat = True
        FooterParams.Color = clWindow
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleParams.RowLines = 2
        OnDrawColumnCell = Grid_TpWoDo1DrawColumnCell
        Columns = <
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NUM_TP'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1058#1055
            Width = 95
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ZAYV'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100' '#1075#1088#1091#1079#1072
            Width = 246
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID_ACT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1048#1076'. '#8470'   '#1089#1082#1083'. '#1089#1074'.'
            Width = 72
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1072#1090#1072', '#1074#1088#1077#1084#1103' '#1088#1072#1079#1084#1077#1097#1077#1085#1080#1103
            Width = 149
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'WEIGHT_DIF'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1056#1072#1079#1085#1080#1094#1072' '#1074' '#1074#1077#1089#1077','#1082#1075'.'
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'WEIGHT_DOC'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1077#1089' '#1087#1086' '#1076#1086#1082'.'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'WEIGHT_FACT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1077#1089' '#1092#1072#1082#1090'.'
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Tab_ActWo_Do2: TTabSheet
      Caption = #1040#1082#1090#1099' '#1074#1099#1076#1072#1095#1080' '#1075#1088#1091#1079#1086#1074' '#1073#1077#1079' '#1044#1054'2'
      ImageIndex = 2
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 1168
        Height = 40
        ButtonHeight = 38
        ButtonWidth = 39
        Caption = 'ToolBar1'
        DrawingStyle = dsGradient
        Images = Main_F.ImL_32
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object ToolButton2: TToolButton
          Left = 0
          Top = 0
          Action = A_Do2Add
        end
        object ToolButton1: TToolButton
          Left = 39
          Top = 0
          Width = 8
          Caption = 'ToolButton1'
          ImageIndex = 13
          Style = tbsSeparator
        end
        object TB_Refr: TToolButton
          Left = 47
          Top = 0
          Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
          Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
          ImageIndex = 12
          OnClick = TB_RefrClick
        end
        object ToolButton5: TToolButton
          Left = 86
          Top = 0
          Width = 8
          Caption = 'ToolButton5'
          ImageIndex = 13
          Style = tbsSeparator
        end
        object ToolButton6: TToolButton
          Left = 94
          Top = 0
          Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077' '#1079#1072#1087#1080#1089#1080
          Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077' '#1079#1072#1087#1080#1089#1080
          ImageIndex = 19
          OnClick = ToolButton6Click
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 40
        Width = 1168
        Height = 57
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 15
          Top = 20
          Width = 96
          Height = 16
          Caption = #1042#1074#1077#1076#1080#1090#1077' '#8470' '#1044#1054'1'
        end
        object E_FindDo1: TButtonedEdit
          Left = 121
          Top = 16
          Width = 144
          Height = 24
          Images = ImL_16
          MaxLength = 7
          NumbersOnly = True
          RightButton.ImageIndex = 14
          RightButton.Visible = True
          TabOrder = 0
          OnKeyPress = E_FindDo1KeyPress
          OnRightButtonClick = E_FindDo1RightButtonClick
        end
      end
      object Grid_GurWhOut: TDBGridEh
        Left = 0
        Top = 97
        Width = 1168
        Height = 402
        Align = alClient
        DataSource = DM.Ds_ActWithoutDo2
        DynProps = <>
        Flat = True
        FooterParams.Color = clWindow
        TabOrder = 2
        TitleParams.RowLines = 2
        Columns = <
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NUM_TP'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1058#1055
            Width = 88
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NPP'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1087'/'#1087' '#1040#1082#1090#1072' '#1074#1099#1076#1072#1095#1080
            Width = 79
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DT_PRINT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1072#1090#1072', '#1074#1088#1077#1084#1103' '#1074#1099#1076#1072#1095#1080
            Width = 117
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KEEPER_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1060#1048#1054' '#1082#1083#1072#1076#1086#1074#1097#1080#1082#1072
            Width = 135
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
            Width = 99
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DT_DO1'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1072#1090#1072' '#1044#1054'1'
            Width = 95
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Tab_Arc: TTabSheet
      Caption = #1040#1088#1093#1080#1074
      ImageIndex = 4
      object Panel4: TPanel
        Left = 0
        Top = 29
        Width = 1168
        Height = 70
        Align = alTop
        BevelInner = bvSpace
        BevelOuter = bvNone
        BorderStyle = bsSingle
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 4
          Top = 0
          Width = 421
          Height = 61
          Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1079#1085#1072#1095#1077#1085#1080#1102
          TabOrder = 0
          object Label4: TLabel
            Left = 208
            Top = 17
            Width = 60
            Height = 29
            Alignment = taCenter
            AutoSize = False
            Caption = #1057#1090#1088#1086#1082#1072#13#10' '#1087#1086#1080#1089#1082#1072' '
          end
          object CbDo_Arc: TComboBox
            Left = 8
            Top = 22
            Width = 193
            Height = 22
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 0
            Text = #1048#1089#1082#1072#1090#1100' '#1087#1086' '#1085#1086#1084#1077#1088#1091' '#1044#1054
            Items.Strings = (
              #1048#1089#1082#1072#1090#1100' '#1087#1086' '#1085#1086#1084#1077#1088#1091' '#1044#1054
              #1048#1089#1082#1072#1090#1100' '#1087#1086' '#1087#1086#1083#1091#1095#1072#1090#1077#1083#1102
              #1048#1089#1082#1072#1090#1100' '#1087#1086' '#1050#1058)
          end
          object E_FindArc: TButtonedEdit
            Left = 266
            Top = 22
            Width = 144
            Height = 22
            Images = ImL_16
            RightButton.ImageIndex = 14
            RightButton.Visible = True
            TabOrder = 1
            OnKeyPress = E_FindArcKeyPress
            OnRightButtonClick = E_FindArcRightButtonClick
          end
        end
      end
      object Grid_DoArc: TDBGridEh
        Left = 0
        Top = 99
        Width = 1168
        Height = 400
        Align = alClient
        DataSource = DM.Ds_DoArc
        DefaultDrawing = False
        DynProps = <>
        Flat = True
        FooterParams.Color = clWindow
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
        PopupMenu = PopMn_DoArc
        ReadOnly = True
        TabOrder = 1
        TitleParams.RowLines = 3
        OnDblClick = Grid_DoArcDblClick
        OnDrawColumnCell = Grid_DoArcDrawColumnCell
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'STATUS'
            Footers = <>
            KeyList.Strings = (
              '1')
            Title.Alignment = taCenter
            Title.Caption = #1055#1086#1083#1085#1086#1077' '#1089#1087#1080#1089#1072#1085#1080#1077
            Width = 58
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NUM_TP'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1058#1055
            Width = 77
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'G073'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1086#1084#1077#1088' '#1044#1054'1'
            Width = 78
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'G072'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1072#1090#1072' '#1074#1088#1077#1084#1103' '#1044#1054'1'
            Width = 116
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'G14FAM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100' '#1057#1042#1061
            Width = 122
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'R_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100' '
            Width = 205
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NTRANS'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1086#1084#1077#1088#1072' '#1058#1057
            Width = 137
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'C_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1055#1077#1088#1077#1074#1086#1079#1095#1080#1082
            Width = 182
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'C_FAM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100' '#1087#1077#1088#1077#1074#1086#1079#1095#1080#1082#1072
            Width = 99
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'F_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
            Width = 182
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object ToolBar4: TToolBar
        Left = 0
        Top = 0
        Width = 1168
        Height = 29
        ButtonHeight = 27
        ButtonWidth = 29
        Caption = 'ToolBar4'
        DrawingStyle = dsGradient
        Images = Main_F.ImL_16
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        object ToolButton7: TToolButton
          Left = 0
          Top = 0
          Hint = #1054#1073#1085#1086#1074#1080#1090#1100
          Caption = 'ToolButton7'
          ImageIndex = 12
          ParentShowHint = False
          ShowHint = True
          OnClick = ToolButton7Click
        end
        object ToolButton8: TToolButton
          Left = 29
          Top = 0
          Width = 8
          Caption = 'ToolButton8'
          ImageIndex = 13
          Style = tbsSeparator
        end
        object ToolButton12: TToolButton
          Left = 37
          Top = 0
          Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077' '#1079#1072#1087#1080#1089#1080
          Caption = 'ToolButton12'
          ImageIndex = 19
          OnClick = ToolButton12Click
        end
      end
    end
  end
  object PopMn_DoHead: TPopupMenu
    Images = ImL_16
    Left = 48
    Top = 240
    object N11: TMenuItem
      Caption = #1055#1077#1088#1077#1076#1072#1090#1100' '#1086#1090#1084#1077#1095#1077#1085#1085#1099#1077' '#1044#1054'1'
      OnClick = N11Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Action = A_ToArc
      Bitmap.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000F4F4F4E2E2E2
        D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9
        D9D9D9D9DFDFDFF0F0F0E9E9E9C5C5C54569872B577C2B577C2B577C2B577C2B
        577C2B577C2B577C2B577C2B577C2B577C456987C0C0C0E0E0E0F4F4F4E2E2E2
        2F5C8049819C49819C49819C49819C49819C49819C49819C49819C49819C4981
        9C2F5C80DFDFDFF0F0F0FFFFFFFFFFFF3362855592AD5592AD5592AD5592AD55
        92AD5592AD5592AD5592AD5592AD5592AD336285FFFFFFFFFFFFFFFFFFFFFFFF
        37688A62A2BC62A2BC62A2BC62A2BC62A2BC62A2BC62A2BC62A2BC62A2BC62A2
        BC37688AFFFFFFFFFFFFFFFFFFFFFFFF4374946AA9C36CABC56CABC56CABC56C
        ABC56CABC56CABC56CABC56CABC56CABC53C6F90FFFFFFFFFFFFFFFFFFFFFFFF
        4B7D9C74AFC977B3CC77B3CC77B3CC77B3CC77B3CC77B3CC77B3CC77B3CC77B3
        CC407596FFFFFFFFFFFFFFFFFFFFFFFF5083A17DB7CF81BBD281BBD281BBD281
        BBD281BBD281BBD281BBD281BBD281BBD2457B9BFFFFFFFFFFFFFFFFFFFFFFFF
        5488A67EB4CD7EB4CD7EB4CD7EB4CD7EB4CD7EB4CD7EB4CD7EB4CD7EB4CD7EB4
        CD4981A0FFFFFFFFFFFFFFFFFFFFFFFF50829E467C99467C99477C99477C9949
        7D9B5187A44B82A04B82A04B82A04B829F5186A3FBFCFDFFFFFFFFFFFFFFFFFF
        5A7D955D93AC6AA3BC6CA6BF6DA8C14C7C97467B97699EB56297AF5B90A85287
        A05A879FFFFFFFFFFFFFFFFFFFFFFFFFBFCFD852829D6FA9C171ADC473AFC754
        87A24B819C77ACC170A5BB689DB45388A19DB9C7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF4F849E6BA4BA70AAC172ADC55C92AC4F86A17EB3C779AEC372A7BC477F
        9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99BCCC5A92AB5A92AB5A92AC54
        8EA85F94AB558DA6558DA6548CA58DB1C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEEF4F7EEF4F7EEF4F7FAFCFCFFFFFFEDF3F6EDF3F6EDF3F6FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object N5: TMenuItem
      Caption = #1054#1090#1095#1077#1090#1099
      object N6: TMenuItem
        Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1086#1089#1090#1072#1090#1082#1072#1084
        OnClick = N6Click
      end
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object Pop_Admin: TMenuItem
      Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088
      object Pop_CopyDo1: TMenuItem
        Caption = #1057#1086#1079#1076#1072#1090#1100' '#1082#1086#1087#1080#1102' '#1044#1054'1'
        OnClick = Pop_CopyDo1Click
      end
      object Pop_EditHeaderDo1: TMenuItem
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1075#1086#1083#1086#1074#1086#1082' '#1044#1054'1'
        OnClick = Pop_EditHeaderDo1Click
      end
      object Pop_DeleteDo1: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1044#1054'1'
        OnClick = Pop_DeleteDo1Click
      end
    end
  end
  object PopMn_Do2Sheet: TPopupMenu
    Left = 184
    Top = 232
    object N21: TMenuItem
      Caption = #1055#1077#1088#1077#1076#1072#1090#1100' '#1086#1090#1084#1077#1095#1077#1085#1085#1099#1077' '#1044#1054'2'
      OnClick = N21Click
    end
  end
  object ActionManager1: TActionManager
    Images = Main_F.ImL_32
    Left = 280
    Top = 240
    StyleName = 'Platform Default'
    object A_Do2Add: TAction
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1044#1054'2 '#1087#1086' '#1040#1082#1090#1091
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1044#1054'2 '#1087#1086' '#1040#1082#1090#1091
      ImageIndex = 2
      OnExecute = A_Do2AddExecute
      OnUpdate = A_Do2AddUpdate
    end
    object A_Do1Add: TAction
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1044#1054'1'
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1044#1054'1'
      ImageIndex = 2
      OnExecute = A_Do1AddExecute
      OnUpdate = A_Do1AddUpdate
    end
    object A_ToArc: TAction
      Caption = #1055#1086#1084#1077#1089#1090#1080#1090#1100' '#1074' '#1072#1088#1093#1080#1074' '#1087#1086#1084#1077#1095#1077#1085#1085#1099#1077
      OnExecute = A_ToArcExecute
    end
    object A_FromArc: TAction
      Caption = #1048#1079#1074#1083#1077#1095#1100' '#1080#1079' '#1072#1088#1093#1080#1074#1072
      OnExecute = A_FromArcExecute
    end
  end
  object ImL_16: TImageList
    ColorDepth = cd32Bit
    BkColor = 15790320
    Left = 352
    Top = 232
    Bitmap = {
      494C01011E00E403040010001000F0F0F0002110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000008000000001002000000000000080
      000000000000000000000000000000000000F0F0F000E2E2E200D9D9D900D9D9
      D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9
      D900D9D9D900D9D9D900DFDFDF00F0F0F000F0F0F000E2E2E200D9D9D900D9D9
      D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9
      D900D9D9D900D9D9D900DFDFDF00F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9E9E900C5C5C500456987002B57
      7C002B577C002B577C002B577C002B577C002B577C002B577C002B577C002B57
      7C002B577C0045698700C0C0C000E0E0E000E9E9E900C5C5C50044607F002A4C
      72002A4C72002A4C72002A4C72002A4C72002A4C72002A4C72002A4C72002A4C
      72002A4C720044607F00C0C0C000E0E0E0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000E2E2E2002F5C80004981
      9C0049819C0049819C0049819C0049819C0049819C0049819C0049819C004981
      9C0049819C002F5C8000DFDFDF00F0F0F000F0F0F000E2E2E2002A4C72004882
      9D0048829D0048829D0048829D0048829D0048829D0048829D0048829D004882
      9D0048829D002A4C7200DFDFDF00F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00336285005592
      AD005592AD005592AD005592AD005592AD005592AD005592AD005592AD005592
      AD005592AD0033628500FFFFFF00FFFFFF00FFFFFF00FFFFFF002A4C72005594
      AF005594AF005594AF005594AF005594AF005594AF005594AF005594AF005594
      AF005594AF002A4C7200FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0037688A0062A2
      BC0062A2BC0062A2BC0062A2BC0062A2BC0062A2BC0062A2BC0062A2BC0062A2
      BC0062A2BC0037688A00FFFFFF00FFFFFF00FFFFFF00FFFFFF002A4C720067A7
      C00067A7C00067A7C00067A7C00067A7C00067A7C00067A7C00067A7C00067A7
      C00067A7C0002A4C7200FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00437494006AA9
      C3006CABC5006CABC5006CABC5006CABC5006CABC5006CABC5006CABC5006CAB
      C5006CABC5003C6F9000FFFFFF00FFFFFF00FFFFFF00F5F6F70030517300659B
      B300679EB500679EB500679EB500679EB500679EB500679EB500679EB500679E
      B500679EB500294B6E00EFF2F300FCFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF004B7D9C0074AF
      C90077B3CC0077B3CC0077B3CC0077B3CC0077B3CC0077B3CC0077B3CC0077B3
      CC0077B3CC0040759600FFFFFF00FFFFFF00FFFFFF00A3B0BF0025446800284A
      6C00284A6C00284A6C00284A6C00284A6C00284A6C00284A6C00284A6C00284A
      6C00284A6C00224366008F9FB100FAFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF005083A1007DB7
      CF0081BBD20081BBD20081BBD20081BBD20081BBD20081BBD20081BBD20081BB
      D20081BBD200457B9B00FFFFFF00FFFFFF00FCFDFD002344680070A2BC0076AA
      C30076AAC30076AAC30076AAC30076AAC30076AAC30076AAC30076AAC30076AA
      C30076AAC30076AAC30035597B00D6DCE3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF005488A6007EB4
      CD007EB4CD007EB4CD007EB4CD007EB4CD007EB4CD007EB4CD007EB4CD007EB4
      CD007EB4CD004981A000FFFFFF00FFFFFF00FFFFFF007A8DA300427292005A97
      B3005A97B3005A97B3005A97B3005A97B3005A97B3005A97B3005A97B3005A97
      B3005A97B3004E85A300405C7C00FCFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0050829E00467C
      9900467C9900477C9900477C9900497D9B005187A4004B82A0004B82A0004B82
      A0004B829F005186A300FBFCFD00FFFFFF00A3B1C0002142680023486C00295C
      7F00295C7F00295C7F00295C7F00295C7F00295C7F00295C7F00295C7F00295C
      7F00295C7F00244C700027496D00204267000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF005A7D95005D93
      AC006AA3BC006CA6BF006DA8C1004C7C9700467B9700699EB5006297AF005B90
      A8005287A0005A879F00FFFFFF00FFFFFF002243690049758F00517C98002344
      6900194A7300184A7400184A7400184A7400184A7400184A7400184A7400184A
      74001D456D00365C7C004D7894005F7792000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00BFCFD8005282
      9D006FA9C10071ADC40073AFC7005487A2004B819C0077ACC10070A5BB00689D
      B4005388A1009DB9C700FFFFFF00FFFFFF00A3B1C000395E800082B5CB005885
      A100144C78000956870009568700095687000956870009568700095687000956
      8700214268006998B100375D7F00BBC5D1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF004F84
      9E006BA4BA0070AAC10072ADC5005C92AC004F86A1007EB3C70079AEC30072A7
      BC00477F9B00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C9DB0002B4E73004870
      9000315174003958790039587900395879003958790039587900395879003857
      780026486D00284A6F00A8B5C400FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF0099BC
      CC005A92AB005A92AB005A92AC00548EA8005F94AB00558DA600558DA600548C
      A5008DB1C300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDEFF20099A8
      BA00507190007DAFC3007DAFC3007DAFC3007DAFC3007DAFC3007DAFC3005C84
      A0007D92A900F2F4F600FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EEF4F700EEF4F700EEF4F700FAFCFC00FFFFFF00EDF3F600EDF3F600EDF3
      F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0069839E004463850044638500446385004463850044638500446385004160
      8200F2F4F700FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EAEEF100EAEEF100EAEEF100EAEEF100EAEEF100EAEEF100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F00000000000000000002B2D2B316290
      64CC3C423C4B0000000000000000000000000000000000000000465D4F88226B
      3CF2176935FF226B3CF2465D4F8800000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0000000000004040405668667AF5EA6
      63FD69AE6DFF4C9650FB2C2F2C341E201E2200000000465C4E84268C51FF62BA
      8DFF95D2B2FF62BA8DFF268C51FF465F4F8CF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000317A36002D753200F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0009AB3
      CF002E78B7002A6DAC00F0F0F000F0F0F000F0F0F000F0F5F900568DBE002E7D
      BC002C7CBC003C82BC00B7CCDF00F0F0F00000000000232523277BBA80FCB7DE
      BBFF65AC6AFF73B678FF4D9750FE5E8460B85162527A206C3BF760BA8BFF5EBA
      87FFFFFFFFFF5EB987FF65BC8FFF1E6B3AF7F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F0003985400037833D00317B37002E763300F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F0003282BF0047ADE9008AAECE00F0F0F000F0F0F0002E79B60031A0E1002C91
      D4002D89CA0031A0E3000C70BA00D9E3EE0000000000677F699B9CCDA0FF6DB2
      71FF8DC792FFAADCAFFF74B679FF4F9B53FF75B779FF2F794AFF9CD4B6FFFFFF
      FFFFFFFFFFFFFFFFFFFF95D2B2FF176935FFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0004292
      4900408E470054A35C004F9F5700327C38002E773400F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F00097B6D30043A9E3002A81C100F0F0F000CFDBE800278BCE00299BDE00669B
      C800C8D9E8001E86CC00299BDF00709DC6001718171979BB80FF75B77AFF91CB
      97FFABDEB1FF9CD7A2FFAADDB0FF75B77AFF5EAC63FF458A5EFF90D3B1FF92D6
      B1FFFFFFFFFF63BC8CFF65BC8FFF1E6B3AF7F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0004B9E5300499A
      51005BAC640077CA820074C87E0051A05900337D39002F783500F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F0003582BE004DB2EC007DA7CC00CAD8E6003093D4002F9FE10082A7
      CA00F0F3F8001D80C5002496DC00629AC8006D856FA07DBD84FF97CE9CFFADDF
      B3FF6DB372FF96D59DFF9DD8A3FFAADDB0FF76B87AFF5FA46DFF5FAB81FF95D4
      B4FFBAE6D0FF68BB8FFF2B8F55FF466852A3F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00053A95C0051A65A0063B5
      6D007ECE89007BCC870076CA810076C9810052A25A00347E3A0030793500F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000B8CCE0003CA1DD00338DCA00DCE5EF002582C40032A3E500438D
      C50072A2C9002A96DA002E9BDE008AACCE0079BB80FF8EC893FFAFDFB5FFA1DA
      A7FF98D79FFF97D69EFF7CC083FF82C187FFABDDB0FF77B97BFF5CA169FF5C98
      71FF4D8E64FF44895CFF3D894CFF10101011F0F0F000F0F0F000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000F0F0F000F0F0F000F0F0F0005AB4650059B063006BBD760084D2
      90007AC9850060B26A0063B46D0078C9830078CB820053A35C00347F3A00317A
      3600F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F0004488BE0056BCF30070A2C90087AFD2003093D4004AAF
      EB0041A5E200369EDE002170B300FFFFFE00616F637D7BBB82FF8FC894FFB0E0
      B6FFA2DAA8FF7DC185FFA4D0A7FFDDEEDFFF80B883FFABDEB1FF78B97DFF549F
      58FFC4E7C8FF76B87AFF5468558400000000F0F0F000F0F0F0000000BF000000
      BF000000BF000000BF000000BF000000BF000000BF000000BF000000BF000000
      BF000000BF0080808000F0F0F000F0F0F0005EB969005BB5660079C9860080CE
      8D0051A65A004DA15600499C51005CAD67007CCC860079CB850054A45D003580
      3B00317B3700F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000AFC5DB009BB7
      D400A0BBD500F5F7FA00DEE8F2003797D5002E8DCD00F3F7FA00C6D6E600789F
      C500769DC40095B3D100F0F0F000F0F0F00000000000222322257CB981FA90C9
      95FFB0E0B6FF85C28AFFF7FCF8FF95C297FFDDEEDFFF82C287FFABDEB1FF79BA
      7DFF56A05AFF57A15BFF0303030400000000F0F0F000F0F0F0000000BF000000
      BF000000BF000000BF000000BF000000BF000000BF000000BF000000BF000000
      BF000000BF0080808000F0F0F000F0F0F000F0F0F0005FBA6A005CB666006DC0
      790055AC5F00F0F0F000F0F0F0004A9D52005EAE68007DCD89007CCD870056A5
      5F0036813C00327C3800F0F0F000F0F0F000FBFCFD003882BC0055B5E90058B6
      EB005BBAEE002C87C600BFD3E4006298C5005ABFF500518CBE00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000007DB8
      82F691CA96FFB1E0B6FFD9F3DDFFF7FCF8FFA4D0A7FF7CC084FF9FD9A5FFACDE
      B2FF79BB80FF569D5AFB0000000000000000F0F0F000F0F0F0000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0005FBB6A005CB7
      6700F0F0F000F0F0F000F0F0F000F0F0F0004B9E53005FAF69007FCE8A007ECE
      890057A6600037823D00337D3900F0F0F00082ACCF0061C6F80058BAED007AA9
      CE0051A5DA0059C3F7003686C100F5F7FA003693D0003999D700CDDCEA00F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      00007EB885F592CB97FFB1E1B6FF85C38AFF80C185FF99D7A0FF98D79FFF9FD9
      A5FFACDFB2FF7BBB81FF599D5DF600000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0004B9F540060B06A0081CF
      8D007FCF8B0058A7610039854000347E3A0066ABD80062CAFB00368DC900F0F0
      F0006BA1CB0056C1F5003E9BD500EBEFF40070A1C9005CC0F7004489C000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      00000000000081B985F593CC98FFB1E1B7FFA3DBA9FF9BD8A2FF71B475FFAFDF
      B4FF87C38CFF63AA67FF0D0D0D0E00000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0004CA0550062B2
      6C0082D18F007AC8850057A6600038843F006AA8D40066CDFC003E9AD200FEFF
      FF0061A0CE005BC4F7003692CE00F3F6F900F9FAFC003891CC0045A7E100B3C9
      DF00F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000082BA86F594CC99FFB2E2B7FFA3DCAAFFB0E0B6FF8CC6
      92FF6CB171FF0D0D0D0E0000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0004DA1
      560063B36D005FAF690041914900F0F0F000A6C0D8005ABBEE006FD1FD0055A2
      D4005BB9EB0063C9FA004C8EC200F0F0F000F0F0F0007BA5CB005DC2F600408B
      C300F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      000000000000000000000000000083BB87F594CD9AFFB3E2B7FF93CB98FF75B7
      7AFF0D0D0D0E000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F0004EA257004A9D5200F0F0F000F0F0F000F0F0F00089B0D100408FC700378C
      C800388DC7005A96C500F2F6FA00F0F0F000F0F0F000F0F0F000216EAF001468
      AD0098B0CD00F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      00000000000000000000000000000000000084BC89F596CD9BFF80BE85FF0D0D
      0D0E00000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000085BD89F50D0D0D0E0000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000C896
      6200CA986500CA976500CA976500CA976500CA976400C9976400C9976400CA98
      6500C8956200F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F2E7
      DE00D1AD9500BB8A6E00B07A5700A96D4500AF795500B37E5C00BB8A6E00BF92
      7800D7B69D00EFE2D800F0F0F000F0F0F000A1A1A1007A7A7A0058585800C795
      6100F9F7F600F9F1EC00F9F1EB00F8F0E900F7EDE600F4EAE100F2E8DE00FAF8
      F600C7946100242424004B4B4B0096969600F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000BF000000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0000D0B
      E8000804E500F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0000000
      DC000000D900F0F0F000F0F0F000F0F0F000F0F0F000FFFEFE00BF917500A45C
      1D00AB661F00AC681F00AC681F00AC681F00AC681F00AC681F00AC681F00AC68
      1F00AA661F00A45C1D00DFC2AD00F0F0F0006B6B6B00A7A7A700B5B5B5008181
      8100AFACAA00C5C0BD00C5C0BD00C5C0BD00C5C0BD00C5C0BD00C5C0BD00ADAA
      A8002C2C2C00B5B5B5009B9B9B0023232300F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000BF000000BF000000BF000000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0001A16EB00514D
      F2003C3AEB000A06E500F0F0F000F0F0F000F0F0F000F0F0F0000000DE001E1C
      E1003331EB000000D800F0F0F000F0F0F000F0F0F000E3CCBA00BA712600C57E
      2A00C57E2A00C57E2A00C57E2A00C57E2A00C57E2A00C57E2A00C57E2A00C57E
      2A00C57E2A00C47C2A00D5B09500F0F0F00070707000B5B5B500B5B5B5009595
      95008181810081818100797979006E6E6E006161610052525200434343004242
      42006E6E6E00B5B5B500B5B5B50025252500F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000BF000000BF000000BF000000BF000000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0002824EF005856F5006866
      FC005955F6003C3AEB000B07E600F0F0F000F0F0F0000000E0002624E300413F
      F1005452F9003230EA000000D900F0F0F000F0F0F000E7D4C700C97D2C00DC91
      3400DC913400DC913400DC913400DC913400DC913400DC913400DC913400DC91
      3400DC913400D88D3200D6B49B00F0F0F00075757500BBBBBB00BBBBBB008D8D
      8D00D4D4D400B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900D3D3
      D30083838300BBBBBB00BBBBBB002A2A2A00F0F0F00000000000000000000000
      00000000000000000000BF000000BF000000BF000000F0F0F000BF000000BF00
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0002F2CF2005A57F5006662
      FA007A7AFF005855F5003D3BEC002521E9001F1DE8002F2CE6004542F100706F
      FF004C4AF4002D2BE8000000DB00F0F0F000F0F0F000F2EAE400C7792C00EC9F
      3B00E2953700B474350081745F007E756200AD713700E2953700EC9F3B00EC9F
      3B00E89A3900BF753100EBDBCF00F0F0F0007A7A7A00D7D7D700D7D7D7009797
      9700D8D8D800BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00D7D7
      D7008E8E8E00D7D7D700D7D7D7003F3F3F00F0F0F00000000000F0F0F000F0F0
      F000F0F0F000BF000000BF000000BF000000F0F0F00000000000F0F0F000BF00
      0000BF000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000302CF2005857
      F5006562F9007E7AFF005957F5003B39EB003533E8004E4BF3007473FF00504D
      F4003230E9000000DD00F0F0F000F0F0F000F0F0F000FEFEFE00D8C9BC00BE85
      5C008D766000439EC4003DA7D5003BAADB003EA9D6007F715D00E0933600C77B
      3100C2927300F7EFE900F0F0F000F0F0F0007E7E7E00F9F9F900F9F9F900ABAB
      AB00DFDFDF00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00DFDF
      DF00A3A3A300F9F9F900F9F9F90061616100F0F0F00000000000F0F0F0008080
      80008080800080808000BF000000F0F0F000F0F0F00000000000F0F0F000F0F0
      F000BF000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000312D
      F3005958F5006663F9007876FF007C79FF007977FF007372FF005654F7003B3A
      ED000000E100F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000B4D9E60037A3D200409EC7003EA4D0003CA8D7003EA7D300A1A6A400F3EF
      EA00F0F0F000F0F0F000F0F0F000F0F0F00084848400FCFCFC00FCFCFC00CBCB
      CB00F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200C6C6C600FCFCFC00FCFCFC0071717100F0F0F00000000000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00000000000F0F0F000F0F0
      F000F0F0F000BF000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F0004643F4005856F500807DFF00514EFF004F4CFF007A78FF004240EE00211D
      E700F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F4F9
      FA0048B9EA0033AFE50032A8DB00419CC30040A0C900B8DBE800F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F00097979700D2D2D200E8E8E8007D7D
      7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D
      7D007D7D7D00E8E8E800C4C4C4006D6D6D00F0F0F00000000000F0F0F0008080
      800080808000808080008080800080808000F0F0F00000000000F0F0F000F0F0
      F000F0F0F000F0F0F000BF000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F0004D4AF7005653F3008580FF005754FF005350FF007F7DFF003D39EC002826
      EA00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0009FD8
      F0003EB7EC003AB4E90035B0E60036A8DA005DA3C100F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000DDDDDD009A9A9A00CCCCCC00C78B
      4E00F9F4ED00FEE8D800FEE8D700FDE5D300FCE4D100FAE0C700F9DDC300FAF4
      ED00C7854A00C3C3C30074747400CDCDCD00F0F0F00000000000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00000000000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000BF000000F0F0F000F0F0F000F0F0F0004341
      FA00625FF8006E6BFA008382FF008582FF008380FF007D7CFF005C5BF700423F
      ED00110FE900F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F9FCFE0052C2
      F40044BCF00040B9ED003BB5EA0037B2E7004885A000CBD5D800F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000CECECE0087878700C589
      4C00F9F4EF00FEE7D700FDE7D500FCE6D200FBE1CC00F8DCC200F6DABD00FAF4
      EF00C483480061616100BCBCBC00F0F0F000F0F0F00000000000F0F0F0008080
      800080808000F0F0F000F0F0F000F0F0F000F0F0F00000000000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0004D49FC006B68
      FB007673FD008D89FF007673FB005F5DF6005A57F5006C69F9008583FF005F5C
      F700433FED001210E900F0F0F000F0F0F000F0F0F000F0F0F000E7F6FD004DC2
      F6004ABFF30046BDF10042BAEE003DB6EB0038B0E5006A828C00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000FBFBFB00C68C
      4F00F9F4F000FCE6D300FDE7D300FBE3CD00FAE0C800F5D6BB00F3D4B500F8F4
      F000C4854A00F9F9F900F0F0F000F0F0F000F0F0F00000000000F0F0F000F0F0
      F000F0F0F000F0F0F00000000000000000000000000000000000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0005350FF00726FFD007D7A
      FE00908DFF007C79FC006966FA004E4CF8004A46F5005E5BF7006D6CF9008784
      FF00605EF6004441EE001310E900F0F0F000F0F0F000F0F0F000EBF7FC0050C4
      F7004EC3F6004BC0F40048BEF20043BBEF003BA9DA003A758F00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000C88D
      5100F9F5F100FCE3CF00FCE4CF00FAE1CA00F9DDC400F4E9DF00F7F2EC00F5EF
      E900C3804800F0F0F000F0F0F000F0F0F000F0F0F00000000000F0F0F0008080
      800080808000F0F0F00000000000F0F0F00000000000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0005451FF007A77FF008380
      FF00827FFD00726FFD004642F900F0F0F000F0F0F0003734F4005F5CF7006E6C
      FA008987FF006663F9004744EF001512E900F0F0F000F0F0F000FAFCFE0052C5
      F80050C4F8004FC4F7004CC1F5004ABDEF00050F130012202600F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000C88D
      5200F9F5F100FCE3CD00FBE3CD00F9E0C800F8DCC200FDFBF800FCE6CD00E2B6
      8400D5A88400F0F0F000F0F0F000F0F0F000F0F0F00000000000F0F0F000F0F0
      F000F0F0F000F0F0F0000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0005450FF007A77
      FF007976FD004D49FC00F0F0F000F0F0F000F0F0F000F0F0F0003935F600625F
      F7006C6AF9004F4CF1002320EE00F0F0F000F0F0F000F0F0F000F0F0F0004F9A
      BA004497BB003D96BD003788AC00245268000000000026262600F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000C588
      4D00F7F2EC00F8F4EE00F8F3ED00F8F3ED00F8F2EC00F2E6D700E2B27D00DB95
      6900FDFBFA00F0F0F000F0F0F000F0F0F000F0F0F00000000000000000000000
      0000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0005450
      FF005451FF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0003B37
      F6005A58F6002F2BF200F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0006161
      61000303030000000000000000000000000006060600B0B4B600F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000E8CE
      B900D7AA7C00C88C5000C88C4F00CA915500CB905500C5894D00DDAF8D00F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F0003C38F600F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000E3E6E8009BA6AC005D5D5D007B828500D8DCDE00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000097C27F50179
      1CFF1C1E1D21000000000000000000000000F0F0F000E2E2E200CECECE00597C
      9100417493004F819F00598CA9005289AB004986A9004280A2003B769900597C
      9100CDCDCD00E1E1E100F0F0F000FFFFFF0000000000349DD9FF2F99D8FF2A94
      D7FF2690D6FF218CD5FF1C88D4FF1884D3FF1380D2FF0F7AD1FF0C77D1FF0874
      D0FF0571CFFF026ECFFF006CCEFF00000000F0F0F000F0F0F000F0F0F0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000098330F541A1
      5DFF187A30E4212321270000000000000000FCFCFC00F0F0F000E6E6E6004388
      AC00A1E5FE009ADEF80093D8F3006BBCDC005EBBE0005DC7EF005ED0FA004388
      AC00E6E6E600F0F0F000FCFCFC00FFFFFF00000000003BA3DAFFBCEBFAFFBCEB
      FCFFBFEEFEFFC6F4FFFFCEF8FFFFD3FAFFFFD0F8FFFFC7F2FFFFBAE9FCFFB3E4
      F9FFB0E2F8FFB0E2F8FF036FCFFF00000000F0F0F0000000000000000000F0F0
      F000FFFF0000F0F0F000FFFF0000F0F0F000FFFF0000C0C0C000FFFF0000C0C0
      C000FFFF00000000000000000000F0F0F0000000000000000000000000000000
      00000000000000000000209650FE1A9048FE148E42FE0E8A3AFE389F5CFF80C1
      96FF44A360FF157B2EE72326232A00000000FFFFFF00FFFFFF00FFFFFF008BC0
      DA006AB0D3006AB0D3003882A5004CAED400337799006AB0D3006AB0D3008BC0
      DA00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000041A8DBFFBFECFBFF57CF
      F5FF3FB0ECFF4CBAEFFF58C2EFFF5EC6EFFF5AC4EFFF4AB6EFFF35A5E6FF289A
      E1FF36B8EEFFB1E3F8FF0773D0FF0000000000000000FFFF0000F0F0F000FFFF
      0000F0F0F000FFFF0000F0F0F000FFFF0000F0F0F000FFFF0000C0C0C000FFFF
      000080808000FFFF000080808000F0F0F000000000003030303C444444C64646
      46BD3F3F3F5A444444C6279B59FF90CAA9FF8DC8A5FF8AC6A1FF88C59EFF68B6
      85FF82C297FF46A564FF107B2CED272B2730FFFFFF00E5EEF200CCDDE600E5EF
      F400FFFFFF00FFFFFF003F8EB1005ED0FA0033779900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000047ADDCFFC1EEFBFF5DD3
      F7FF6ADBFCFF7DE5FFFF8FEDFFFF97F2FFFF93EDFFFF7ADFFFFF59CCF8FF44BE
      EFFF3ABAEEFFB3E3F9FF0C77D1FF0000000000000000F0F0F000FFFF0000F0F0
      F000FFFF0000F0F0F000FFFF0000F0F0F000FFFF0000C0C0C000FFFF0000C0C0
      C000FFFF000080808000FFFF0000F0F0F000000000003A3A3ADE626262FF6A6A
      6AFF2E2E2EF66D6D6DFF2F9F61FF94CDADFF6DBA8EFF69B889FF64B685FF5FB3
      80FF65B582FF83C298FF3AA05AFF027E26FC6BA0BB00397FA200397FA200397F
      A2006BA0BB00FFFFFF00408DB1005DCBF40033779A00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004CB2DDFFC3EFFBFF63D6
      F8FF4AB6ECFF58BDEFFF95EBFFFF2E97DDFF4B82ABFF84E1FFFF3FA9E9FF309F
      E1FF40BEEFFFB4E5F9FF117CD2FF0000000000000000FFFF0000F0F0F000FFFF
      0000F0F0F000FFFF0000F0F0F000FFFF0000F0F0F000FFFF0000C0C0C000FFFF
      000080808000FFFF000080808000F0F0F0002E4254FF2C4153FF2A3F51FF283E
      50FF263C4FFF243B4EFF35A369FF96CEB0FF94CDADFF91CBAAFF90CBA8FF72BC
      90FF8AC7A1FF44A566FF068633FF0E0E0E0F4D94B700A2E6FC007AC8E6005DC6
      EE004D94B700FFFFFF00418EB1005DC6ED00357A9D00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000051B7DEFFC6F0FCFF68D9
      F8FF7AE2FDFF90E8FFFF99E9FFFF309FDFFF528BB2FF8AE2FFFF68D0F9FF4EC5
      F1FF44C1F0FFB6E7F9FF1683D3FF0000000000000000F0F0F000FFFF0000F0F0
      F000FFFF0000F0F0F000FFFF0000F0F0F000FFFF0000C0C0C000FFFF0000C0C0
      C000FFFF000080808000FFFF0000F0F0F0004480B8FF95C0DEFF90BDDCFF8CBA
      DAFF87B6D9FF83B3D7FF3BA56DFF36A36CFF32A166FF2E9D60FF53AF7AFF91CB
      AAFF4DAB72FF179044FF955623FF0000000076ADC900539ABE006EB3D600539A
      BE0076ADC900FFFFFF004590B3005EBFE500387DA100FFFFFF00FFFFFF00E5EE
      F200CCDDE600E5EEF200FFFFFF00FFFFFF000000000056BBDFFFC7F1FCFF6DDC
      F9FF54BBEDFF5FBDEFFF9BE7FFFF33A6E2FF49A4E1FF90E2FFFF47ADE9FF36A4
      E3FF47C4F0FFB8E8F9FF1C88D4FF0000000000000000FFFF0000F0F0F000FFFF
      0000F0F0F000FFFF0000F0F0F000FFFF0000F0F0F000FFFF0000C0C0C000FFFF
      000080808000FFFF000080808000F0F0F0004C86BEFF9BC4E1FF77B0D6FF71AC
      D3FF6CA8D1FF66A4CFFF61A0CDFF5B9CCBFF5699CAFF78ADD4FF349D5FFF58B3
      81FF269855FFE4D2BBFFA05926FF000000009DC0D2009EC4D700FFFFFF009EC4
      D7009DC0D200FFFFFF004793B50060B9DD003C82A500FFFFFF006BA0BB00397F
      A200397FA200397FA2006BA0BB00FFFFFF00000000005ABFE0FFC8F3FCFF73DF
      F9FF89E6FDFF95E7FFFF9AE5FFFFAAEEFFFFA8EDFFFF99E3FFFF72D5F9FF57CC
      F3FF4DC8F1FFBBE9FAFF228DD5FF0000000080808000F0F0F000FFFF0000F0F0
      F000FFFF0000F0F0F000FFFF0000F0F0F000FFFF0000C0C0C000FFFF0000C0C0
      C000FFFF000080808000FFFF0000F0F0F000538BC3FFA1C9E3FF82B6D9FF7AB2
      D7FF75AED5FF6FAAD2FF69A6D0FF63A2CEFF5E9ECCFF7DB1D6FF3AA167FF2F9F
      63FFE7D8C4FFFFF6EFFFA55F2BFF00000000E7F0F4005996B400FFFFFF005996
      B400E7F0F400FFFFFF004E97B90065B8D9004287AA00FFFFFF004D94B700A2E6
      FC007AC8E6005DC6EE004D94B700FFFFFF00000000005EC2E1FFC9F3FCFFCBF3
      FDFFD4F6FEFFD7F6FFFFD8F4FFFFE0F8FFFFDFF8FFFFDAF5FFFFCDF1FCFFC2ED
      FAFFBDEBFAFFBDEBFAFF2993D6FF0000000000FFFF00FFFF0000F0F0F0008080
      8000F0F0F0000000000000000000000000000000000000000000000000000000
      000000000000FFFF000080808000F0F0F0005A90C8FFDDB47AFFD09A52FFCE94
      4FFFCB8E4BFFC88848FFC58144FFC37941FFC0733DFFCB8F65FFB9773EFFEED3
      BCFFFFF2E7FFFFF6F0FFAA6530FF00000000FFFFFF008AB7CD0075A9C4008AB7
      CD00FFFFFF00FFFFFF00569EBF0079C5E200468CAF00FFFFFF007CB3CF005AA1
      C5006EB3D6005AA1C5007CB3CF00FFFFFF00000000005FC3E1FF88A0A8FF9191
      91FF8E8E8EFF58B9DCFF53B8DFFF4FB5DEFF4BB1DDFF47ADDCFF44A8D7FF7676
      76FF747474FF637C8DFF2F99D8FF0000000080808000F0F0F000000000008080
      800000FFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000F0F0F000F0F0F000F0F0F0006094CCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD7C42FFEFD7
      C2FFEED5BFFFE2C0A3FFA76D3EED00000000FFFFFF00E8F1F6004B92B500E8F1
      F600FFFFFF00FFFFFF005EA5C50092D7F2004B92B500FFFFFF00A4C8DA00A5CB
      DE00FFFFFF00A5CBDE00A4C8DA00FFFFFF000000000000000000878787C3C6C6
      C6FF949494FF0707070800000000000000000000000000000000070707087B7B
      7BFFABABABFF727272C300000000000000000000000000FFFF00F0F0F0008080
      8000F0F0F000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000F0F0F0006698D0FFB2D5E8FF98C6E1FF94C3
      E0FF8FBFDEFF8ABCDCFF85B8DAFF7DB4D8FF77B0D6FF92BEDDFFC18345FFBE80
      43FFBB7A40FFB7773FFC5A4F4666000000007CB1CC005097BB005097BB0089B9
      D100BDD8E600EDF4F80063AAC90099DDF7005097BB00FFFFFF00E8F1F60066A4
      C300FFFFFF0066A4C300E8F1F600FFFFFF000000000000000000808080AEC4C4
      C4FFA1A1A1FF2626262900000000000000000000000000000000252525298989
      89FFA9A9A9FF6F6F6FAE0000000000000000808080008080800080808000F0F0
      F00000FFFF00F0F0F00000FFFF00F0F0F000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000F0F0F000F0F0F000F0F0F0006B9CD4FFB6D7EAFFB3D6E9FFB1D3
      E8FFADD1E7FFAACFE5FFA6CCE4FFA1C9E3FF9DC6E1FF99C3E0FF3574AEFF0000
      000000000000000000000000000000000000FFFFFF00FFFFFF00E1EEF400A1C8
      DC006BAAC900579EC1005FA6C5009ADEF800579EC100FFFFFF00FFFFFF0096C2
      D80082B7D10096C2D800FFFFFF00FFFFFF00000000000000000061616175BABA
      BAFFBFBFBFFF909090DD1D1D1D1F04040405040404051D1D1D1F848484E5A8A8
      A8FF9E9E9EFF595959750000000000000000F0F0F00000FFFF008080800000FF
      FF00F0F0F000F0F0F00080808000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0007097C3E46B9CD4FF689AD2FF6497
      CFFF5F94CCFF5A90C8FF548CC4FF4F88C0FF4984BCFF437DB7FF537291B90000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0067ADCC009EE2FB004B92B500A2CCE100C4DFED00E3F0
      F60062A9CC00EBF4F900FFFFFF00FFFFFF0000000000000000000B0B0B0C9595
      95DBC4C4C4FFBEBEBEFFA1A1A1FF969696FF939393FF979797FFAEAEAEFFAEAE
      AEFF808080DB080808090000000000000000F0F0F00080808000F0F0F0008080
      800000FFFF00F0F0F000F0F0F00080808000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0076BEDE00A5E9FF006DB2D500ADD4E7007FBCDA006DB2
      D5006DB2D5006DB2D50092C6E000FFFFFF000000000000000000000000002C2C
      2C30979797DEBCBCBCFFCACACAFFCCCCCCFFCACACAFFC2C2C2FFADADADFF8787
      87DE2B2B2B3000000000000000000000000080808000F0F0F000F0F0F0008080
      8000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0097CBE40075B9DC0097CBE400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000B0B0B0C69696981878787BA8D8D8DCC8B8B8BCC828282BA656565810B0B
      0B0C0000000000000000000000000000000000FFFF00F0F0F000F0F0F0008080
      800000FFFF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0004060200040602000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0003199D8002C94D7002890
      D600238CD5001E88D4001A84D3001580D200117CD1000E79D100017C2F00037B
      1E000470CC00016ECE00FFFFFF00FFFFFF00F0F0F000F0F0F000F0F0F000F0F0
      F000A4A0A000A4A0A000A4A0A000808080004080400040602000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0008686
      860086868600F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0007070
      7000707070007070700070707000707070007070700070707000707070007070
      70007070700070707000F0F0F000F0F0F0003DA3DA00BCEBFA00BCEBFC00BFEE
      FE00C6F4FF00CEF8FF00D3FAFF00D0F8FF00C7F2FF00BAE9FC000F8B3B0043A1
      5F0023904A000571CB00FFFFFF00FFFFFF00F0F0F000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A0004080600040A0600040A06000408020004060
      2000406020004060200000602000F0F0F000F0F0F000F0F0F00086868600FFFF
      FF00E3E3E30086868600F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F00000808000F0F0F000F0F0F000F0F0F000BC897700BE8B
      7900BE8B7900BA877600B7847500B17E7200AE7B7100AB786F00AB786F00A16E
      6B009E6B680070707000F0F0F000F0F0F00043A8DB00BFECFB0059CFF50041B0
      EC004EBAEF005AC2EF00219752001C914A00158F44000F8B3C003A9F5E0080C1
      960046A36200027C3F00F8FBF900FFFFFF00A4A0A000A4A0A000C0C0C000F0FB
      FF00F0FBFF00F0FBFF0040A0600080A0600080C0A00080C0A00080C0A00080C0
      800080C0800080A060004060200000602000F0F0F000F0F0F000F0F0F0008686
      8600B2B2B20086868600F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F0000080800000FFFF00F0F0F000F0F0F000857DA400C18E7A00DCBB
      A600E6C6B400E6C6B400E6C6B400E6C6B400E6C6B400DCBBA600DCBBA600DCBB
      A600A16E6B0070707000F0F0F000F0F0F00049ADDC00C1EEFB005FD3F7006CDB
      FC007FE5FF008FEDFF00299B5B0090CAA9008DC8A5008AC6A10088C59E006AB6
      850082C2970048A5660028914400F6FAF700A4A0A000C0DCC000F0FBFF00C0DC
      C000C0DCC000C0DCC000C0DCC00080A0600080A0600040A06000408040004080
      400040A0600080C0800040A0600040602000F0F0F000F0F0F00086868600FFFF
      FF00E3E3E30086868600F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F0000080800000FFFF0000808000F0F0F000F0F0F0005693DC00857DA400D2AD
      AC00FDE6D500FFE5CC00FFE3C700FFDFBF00FFDBB800FFD8B200FFD3A800FFD2
      A500A3706B0070707000F0F0F000F0F0F0004EB2DD00C3EFFB0065D6F8004CB6
      EC005ABDEF0095EBFF00319F630094CDAD006FBA8E006BB8890066B6850061B3
      800067B5820083C298003CA05C0006822A00A4A0A000F0FBFF00C0DCC000C0DC
      C000C0DCC000C0DCC000C0DCC000C0C0C00040A0600040A06000C0DCC000A4A0
      A00040804000408040004060200040602000F0F0F000F0F0F000F0F0F0008686
      8600C0C0C00077777700F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0000080
      800000FFFF000080800000CCCC00F0F0F000F0F0F0003B87E3005693DC00857D
      A400DCC1B000FFE9D400FFE5CC00FFE1C400FFDFBF00FFDBB800FFD8B200FFD3
      A800A5726C0070707000F0F0F000F0F0F00053B7DE00C6F0FC006AD9F8007CE2
      FD0090E8FF0099E9FF0037A36B0096CEB00094CDAD0091CBAA0090CBA80074BC
      90008AC7A10046A568000B893800FEFFFE00A4A0A000F0FBFF00F0FBFF00C0DC
      C000C0DCC000C0DCC000C0DCC000C0C0C000C0C0C00080A08000F0FBFF00A4A0
      A000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00086868600FFFF
      FF00DDDDDD0086868600F0F0F000F0F0F000F0F0F000F0F0F0000080800000FF
      FF000080800000CCCC00F0F0F000F0F0F000F0F0F000F0F0F000EEC294003B87
      E300857DA400E6C6B400D0B0A200D5AC9800DCBBA600EED7AD00FFD6BA00FFD8
      B200AB786F0070707000F0F0F000F0F0F00058BBDF00C7F1FC006FDCF90056BB
      ED0061BDEF009BE7FF003DA56F0037A36F0034A269002F9D630055AF7C0091CB
      AA004FAB7400178F4700FEFFFE00FFFFFF00C0C0C000F0FBFF00F0FBFF00C0DC
      C000C0DCC000F0FBFF00C0DCC000C0C0C000C0C0C000C0C0C000F0FBFF0040A0
      600040804000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0008686
      8600C0C0C00086868600F0F0F00000808000008080000080800000FFFF000080
      800000CCCC00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EEC29400B9BE
      C400B9BEC400C6A09200F1E4BE00FFFFD900F0DDD200DCBBA600EED7AD00FFD9
      B400AE7B710070707000F0F0F000F0F0F0005CBFE000C8F3FC0075DFF90089E6
      FD0095E7FF009AE5FF00AAEEFF00A8EDFF0099E3FF0074D5F90034A36E005AB3
      810028985700248DD500FFFFFF00FFFFFF00C0C0C000F0FBFF00F0FBFF00F0FB
      FF00C0DCC00080C0800040C0600040C0600080C08000C0C0C000F0FBFF0040A0
      600040A040004080400040804000F0F0F000F0F0F000F0F0F00086868600E3E3
      E300C0C0C000F0F0F000FFFFFF00FFFFFF00FFFFFF00FFFFFF000080800000CC
      CC00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EEC29400EFD9
      CD00DCBBA600F4E2B600FFFAC900FFFFEB00FFFFFA00EFD9CD00DCBBA600FFDF
      BF00B17E720070707000F0F0F000F0F0F00060C2E100C9F3FC00CBF3FD00D4F6
      FE00D7F6FF00D8F4FF00E0F8FF00DFF8FF00DAF5FF00CDF1FC0042A97600319F
      6500BDEBFA002B93D600FFFFFF00FFFFFF00C0C0C000F0FBFF00F0FBFF00F0FB
      FF00F0FBFF0080E0A00080C0A000C0DCC00080C0800040A0600040A0600080C0
      800080C0800040A04000F0F0F000F0F0F000F0F0F00086868600E3E3E300C0C0
      C00000808000FFFFFF0000FFFF0000CCCC0000CCCC00C0C0C00000CCCC00F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EEC29400F0DD
      D200DCBBA600FFE5B300FFF5C400FFFFE700FFFFEB00FFFCCF00CDA69300FFE1
      C400B784750070707000F0F0F000F0F0F00061C3E10088A0A800919191008E8E
      8E005AB9DC0055B8DF0051B5DE004DB1DD0049ADDC0046A8D700787878007676
      7600657E8D003199D800FFFFFF00FFFFFF00C0C0C000F0FBFF00F0FBFF00C0C0
      C000C0C0C000C0C0C00080C0800080E0A000C0DCC000C0DCC000C0DCC000C0DC
      C00080E0A00080C0800040A04000F0F0F00086868600FFFFFF00C0C0C0007777
      770000808000FFFFFF00C0C0C000C0C0C00000FFFF0000CCCC0000808000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EEC29400F0DD
      D200DCC1B000F1E4BE00FFF1BE00FFFAC900FFFED100F4E2B600D0B0A200FFE5
      CC00BA87760070707000F0F0F000F0F0F000FFFFFF00B1B1B100C6C6C6009494
      9400FBFBFB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB007D7D7D00ABAB
      AB0096969600FFFFFF00FFFFFF00FFFFFF00C0C0C000F0FBFF00C0DCC000C0DC
      C000F0FBFF00F0F0F000C0DCC00080C0800080C0600080C0600040C0600080C0
      800080C0800040A06000F0F0F000F0F0F00086868600FFFFFF00E3E3E3008686
      860086868600F0F0F00086868600F0F0F000C0C0C000C0C0C00000808000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EEC29400F2E1
      DD00E2C9C300EFD9CD00F0DDD200FFE9B600F4E2B600D5AC9800F7D8C000FADC
      C200BC89770070707000F0F0F000F0F0F000FFFFFF00BCBCBC00C4C4C400A1A1
      A100EEEEEE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBEBEB0089898900A9A9
      A900A4A4A400FFFFFF00FFFFFF00FFFFFF00C0C0C000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0FBFF0080C0
      800040C06000F0F0F000F0F0F000F0F0F00086868600FFFFFF00E3E3E300C0C0
      C000F0F0F00000808000FFFFFF000080800000CCCC0000CCCC0000808000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EEC29400FCE8
      D800FCFCFC00E2C9C300DCBBA600DCB29800DCB29800E2C9C300F7D8C000FF9E
      9E00BE8B790070707000F0F0F000F0F0F000FFFFFF00D4D4D400BABABA00BFBF
      BF00A6A6A600F2F2F200FDFDFD00FDFDFD00F1F1F10093939300A8A8A8009E9E
      9E00C3C3C300FFFFFF00FFFFFF00FFFFFF00C0C0C000F0FBFF00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000C0C0C00080C0
      800040C06000F0F0F000F0F0F000F0F0F000F0F0F00086868600FFFFFF00FFFF
      FF00F0F0F000FFFFFF0086868600008080000080800000808000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EEC29400FBEF
      E700FFFFFF00FFFFFF00FFFFFF00FFFEFD00FFFAF300FFF6ED009B6A69009B6A
      69009B6A690070707000F0F0F000F0F0F000FFFFFF00FBFBFB00AEAEAE00C4C4
      C400BEBEBE00A1A1A100969696009393930097979700AEAEAE00AEAEAE009595
      9500FBFBFB00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000C0DCC000F0FB
      FF00F0FBFF00F0F0F000F0F0F000F0FBFF00F0FBFF00C0C0C000A4A0A000A4A0
      A000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000868686008686
      8600F0F0F000868686008686860086868600F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EEC29400FFF2
      E500FFFFFE00FFFFFE00FFFEFD00FFFEFD00FFFCF900FFF8F2009B6A6900DAA7
      8600C6A09200F0F0F000F0F0F000F0F0F000FFFFFF00FFFFFF00EEEEEE00AEAE
      AE00BCBCBC00CACACA00CCCCCC00CACACA00C2C2C200ADADAD009B9B9B00E9E9
      E900FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0F000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000A4A0A000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EEC29400F0BD
      9200E4BA9800DCB29800DCB29800D5AC9800CDA69300CDA693009B6A6900C79E
      9E00F0F0F000F0F0F000F0F0F000F0F0F000FFFFFF00FFFFFF00FFFFFF00FBFB
      FB00D0D0D000BABABA00B1B1B100AEAEAE00B3B3B300C9C9C900FAFAFA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0F000E2C0AA00CC8D6600C071
      4000BC6B3600BC6B3600BC6B3600BC6A3600BC6A3600BB6A3500706178001A4A
      A8000542BB00194DAF007886B300F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000C3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFF0F0F000C57C4D00F8F2EB00F7EC
      DF00F6EBDE00F6EADE00F6EADC00F6EADC00FAF3EB008AA5D7002866CA002177
      E6000579EA000164DD00064DBB0086A6DD00F0F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F0008080800080808000F0F0F000F0F0F000C3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFF0F0F000C2774000F5EBDF00FDBF
      6800FCBD6700FBBE6500FCBE6400FCBE6400FCBD62001E52B000639DF400187F
      FF000076F8000076EE000368E1001E59C000F0F0F00000000000F0F0F000F0F0
      F000F0F0F00080808000FFFFFF00FFFFFF00F0F0F000FFFFFF00FFFFFF00F0F0
      F000FFFFFF00FFFFFF0000000000F0F0F000F0F0F00080808000800000000000
      0000000000000000000000000000000000000000000080808000F0F0F000F0F0
      F0008080800080808000F0F0F000F0F0F000C3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFF0F0F000C37C4200F7EDE300FDC2
      6E00FFD8A000FFD79E00FFD69B00FFD79800FFD696000543BC00AECDFE00F0F0
      F000F0F0F000F0F0F000187FEF000543BC00F0F0F00000000000F0F0F000F0F0
      F000F0F0F0008080800080808000FFFFFF00F0F0F00080808000FFFFFF00F0F0
      F00080808000FFFFFF0000000000F0F0F000F0F0F0008080800000808000FFFF
      FF00FFFFFF00F0F0F000F0F0F000FFFFFF00F0F0F00000000000808080008080
      80008080800080808000F0F0F000F0F0F000C3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFCFCFCFFF878787FF000000FF000000FF000000FF000000FF272727FF7676
      76FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFF0F0F000C6804600F7F0E600F8B4
      5500F7B45600F7B55400F8B45300F8B25300F7B352002453AB008DB5F6004D92
      FF001177FF002186FF00408AEB00245CC200F0F0F00000000000808080008080
      8000808080008080800080808000F0F0F000F0F0F00080808000F0F0F000F0F0
      F00080808000F0F0F00000000000F0F0F000F0F0F00080808000F0F0F0008080
      800080000000800000008000000080000000FFFFFF0000000000000000000000
      0000000000000000000000000000F0F0F000C3C3C3FFC3C3C3FFD7D7D7FF1F1F
      1FFF000000FF000000FF8F8F8FFF7E7E7EFF7E7E7EFF878787FF272727FF0000
      00FF000000FF1F1F1FFFC3C3C3FFC3C3C3FFF0F0F000C7844800F8F1E800FEE5
      D500FDE5D300FDE5D300FCE5D300FCE5D300FCE4D10094A1C9003D76D1008DB5
      F700B8D6FE0072A8F5002F6BC90094AFE200F0F0F00000000000F0F0F000F0F0
      F000F0F0F000808080000000000000000000F0F0F00080808000FFFFFF00F0F0
      F00080808000FFFFFF0000000000F0F0F000F0F0F0008080800080808000F0F0
      F00000808000F0F0F000F0F0F00000808000FFFFFF008000000080808000F0F0
      F000F0F0F000F0F0F00000000000F0F0F000C3C3C3FFDFDFDFFF000000FF2F2F
      2FFF878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF878787FF000000FF1F1F1FFFC3C3C3FFF0F0F000C7864B00F8F2EB00FEE7
      D600FDE7D600FDE7D600FDE7D600FDE6D500FDE5D300FCE4D10094A1C9002A5E
      C1000543BC001F59BF006A647B00F0F0F000F0F0F00000000000F0F0F000F0F0
      F000F0F0F0008080800000000000FFFF000000000000FFFFFF00FFFFFF00F0F0
      F00080808000FFFFFF0000000000F0F0F000F0F0F0008080800000808000F0F0
      F000F0F0F0008080800080808000F0F0F000FFFFFF0000000000F0F0F000F0F0
      F00000808000F0F0F00000000000F0F0F000C3C3C3FF000000FF2F2F2FFFF7F7
      F7FF565656FFFFFFFFFFB7B7B7FFBFBFBFFFBFBFBFFFBFBFBFFFB7B7B7FFFFFF
      FFFFC7C7C7FFE7E7E7FF000000FF909090FFF0F0F000C8884D00F9F3EC00FEE8
      D600FEE8D700FDE7D600FDE7D600FDE7D500FDE5D300FBE4D000FBE3CC00FADF
      C700FADFC600FAF2EA00C8844800F0F0F000F0F0F00000000000808080008080
      80008080800080808000F0F0F00000000000FFFF000000000000F0F0F000F0F0
      F000F0F0F000F0F0F00000000000F0F0F000F0F0F00080808000808080008000
      000080000000800000008000000080000000FFFFFF0000000000800000008000
      000080000000F0F0F00000000000F0F0F000808080FF000000FFEFEFEFFF0000
      00FFFFFFFFFFAFAFAFFF6F6F6FFF777777FF777777FF777777FF676767FFFFFF
      FFFF4F4F4FFFFFFFFFFF2F2F2FFF000000FFF0F0F000C88C4F00F9F4ED00FEE8
      D800FEE8D800FEE8D700FEE7D600FDE5D300FCE4D100FBE1CC00FAE0C700F9DD
      C300F8DCC200FAF4ED00C8864B00F0F0F000F0F0F00000000000000000000000
      00000000000000000000FFFFFF00FFFFFF0000000000FFFF000000000000F0F0
      F000FFFFFF00FFFFFF0000000000F0F0F000F0F0F0008080800080808000FFFF
      FF0000FFFF00FFFFFF00FFFFFF0000FFFF00F0F0F0008080800000FFFF00FFFF
      FF00FFFFFF008080800000000000F0F0F000888888FF000000FFFFFFFFFF6F6F
      6FFFFFFFFFFFFFFFFFFF808080FF6F6F6FFF6F6F6FFF909090FF808080FF6666
      66FFC7C7C7FFFFFFFFFF989898FF000000FFF0F0F000C88C5000F9F4EF00FEE7
      D700FDE7D600FDE7D500FDE6D400FCE6D200FBE1CC00FADFC700F8DCC200F6DA
      BD00F6D8BB00FAF4EF00C8874C00F0F0F000F0F0F00000000000F0F0F000F0F0
      F000F0F0F000F0F0F00000000000FFFFFF00F0F0F00000000000FFFF00000000
      0000FFFFFF00FFFFFF0000000000F0F0F000F0F0F00080808000808080008080
      8000808080008080800000000000808080008080800000000000808080008080
      8000808080008080800080808000F0F0F000D7D7D7FF000000FF989898FF1717
      17FF5E5E5EFFCFCFCFFF000000FFFFFFFFFFFFFFFFFF000000FF808080FF6666
      66FFB7B7B7FFFFFFFFFF000000FF3F3F3FFFF0F0F000C88D5100F9F4F000FCE6
      D300FCE6D400FDE7D300FCE4D100FBE3CD00FAE0C800F8DCC200F5D6BB00F3D4
      B500F1D2B300F8F4F000C6864C00F0F0F00000000000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000000000F0F0F000FFFFFF0000000000FFFF
      000000000000FFFFFF0000000000F0F0F000F0F0F00080808000808080008080
      8000808080008080800080808000F0F0F0000000000080808000FFFFFF000000
      0000008000000000000080808000F0F0F000C3C3C3FF1F1F1FFF000000FFF7F7
      F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF1F1F1FFF000000FFDFDFDFFFF0F0F000C88D5100F9F5F100FCE3
      CF00FBE4D000FCE4CF00FCE3CD00FAE1CA00F9DDC400F6D9BC00F4E9DF00F7F2
      EC00FBF7F300F5EFE900C3804800F0F0F00000000000FFFFFF00F0F0F000BF00
      BF00BF00BF00BF00BF00F0F0F00000000000F0F0F000FFFFFF00FFFFFF000000
      0000FFFF00000000000000000000F0F0F000F0F0F00080808000F0F0F000FFFF
      FF0000FFFF00F0F0F0008080800000000000FFFFFF0080808000000000000000
      000000FF00000000000000000000F0F0F000C3C3C3FFC3C3C3FF1F1F1FFF0000
      00FF000000FF7E7E7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7FF2727
      27FF000000FF000000FFDFDFDFFFC3C3C3FFF0F0F000C88D5200F9F5F100FCE3
      CD00FBE3CE00FBE3CD00FBE2CB00F9E0C800F8DCC200F5D6BA00FDFBF800FCE6
      CD00FAE5C900E2B68400D5A88400F0F0F00000000000FFFFFF00F0F0F000BF00
      BF00F0F0F000F0F0F000F0F0F00000000000BF000000BF000000BF000000BF00
      000000000000FFFF000000000000F0F0F000F0F0F00080808000000000000000
      0000000000000000000000000000F0F0F00080000000008080000080000000FF
      000000FF000000FF000000000000F0F0F000C3C3C3FFC3C3C3FFC3C3C3FFD7D7
      D7FF272727FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF7E7E7EFFC3C3C3FFC3C3C3FFC3C3C3FFF0F0F000CA925A00FAF6F200FAE0
      C700FBE1C900FBE2C900FBE0C800F9DFC500F8DBC100F4D6B800FFFBF800F6D8
      B400E1B07D00DC966900FDFBFA00F0F0F00000000000FFFFFF00F0F0F000BF00
      BF00F0F0F000F0F0F000F0F0F000000000000000000000000000000000000000
      00000000000000000000FFFF000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000FFFFFF000000000080808000F0F0F00000808000000000000000
      000000FF00000000000080008000F0F0F000C3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FF6E6E6EFF7E7E7EFF7E7E7EFF767676FFCFCFCFFFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFF0F0F000D2A27400F8F3ED00F8F4
      EE00F8F4ED00F8F3ED00F8F3ED00F8F3ED00F8F2EC00F7F2EC00F2E6D700E2B2
      7D00DC986B00FDFBFA00F0F0F000F0F0F000F0F0F00000000000FFFFFF00FFFF
      FF00FFFFFF00F0F0F00000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F0000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F00080808000808080008080800080808000F0F0F0000000
      00000000000080008000F0F0F000F0F0F000C3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFF0F0F000E8CEB900D7AA7C00CC94
      5B00CA905500CA905500CA905500CA915500CB905500C98F5500CF9D6900DDB1
      9000FDFBFA00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000
      00000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000C3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFF0F0F000E2C0AA00CC8D6600C071
      4000BC6B3600BC6B3600BC6B3600BC6A3600BC6A3600BB6A3500BB6A3500BB69
      3500BD6E3B00CA8B6300E3C2AE00F0F0F000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000E5C5B000D6A58500D096
      7200C9895D00CA8A6000CA8A5F00CA895E00CB8C6300CA8C6200CA8B6100CA8B
      6300CC8F6700D4A18100D7A88C00F6ECE500F0F0F000C57C4D00F8F2EB00F7EC
      DF00F6EBDE00F6EADE00F6EADC00F6EADC00FAF3EB00FAF3EB00FAF2EA00FCF7
      F300FCF8F400FEFEFD00C37A4D00F0F0F000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDBFFF3F3F3FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F000DFB49300D59D7400D196
      6800CE926300CB8E5E00C98A5B00C7875600C3845200C3845200C3845200C384
      5200C3845200C3845200D0A17D00F0F0F000F0F0F000CD906800F0F0F000FAFB
      F900FFFFFA00FFFEFA00FFFCF400FFFAF300F0F0F000F0F0F000FEFFFF00F0F0
      F000F0F0F000F0F0F000B45A2300EFDCD100F0F0F000C2774000F5EBDF00FDBF
      6800FCBD6700FBBE6500FCBE6400FCBE6400FCBD6200FBBD6300FBBC6100FCBE
      6000FCBC6200FDFBF800BC6B3700F0F0F000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFDFDFDFFB8B8B8FF5C5C5CFF000000FF20201FFF1D2428FF5653
      55FF9F9F9FFFE7E7E7FFFFFFFFFFFFFFFFFFF0F0F000D7A17500F8F2ED00F7F0
      EA00F6EDE600F4EAE200F3E7DE00F1E4DB00F0E2D800F0E2D800F0E2D800F0E2
      D800F0E2D800F0E2D800C58B5E00F0F0F000F0F0F000CD906300F8F7F400FFCE
      8300B08B4C00BB995A00CAAA7100CCAC6D00F9BB5F00FABC6100FCBC5E00FDBD
      5E00FBAE4200FFF7DD00AD4D1100EED9CB00F0F0F000C37C4200F7EDE300FDC2
      6E00FFD8A000FFD79E00FFD69B00FFD79800FFD69600FFD69500FFD59400FFD4
      9300FBBE6500FBF7F400BD6C3700F0F0F000FFFFFFFFFFFFFFFFFFFFFFFFF9F9
      F9FFADACADFF878786FF5D5D5DFF141414FF3C3D3CFF000000FF62A1A6FF4138
      38FF111011FF121011FF49575FFFFFFEFDFFF0F0F000D9A47A00F9F3EE00EBD2
      BE00F0F0F000EBD3BF00F0F0F000F0F0F000F0F0F000EAC7AD00F0F0F000F0F0
      F000F0F0F000F0E2D800C68C5F00F0F0F000F0F0F000CD946400FAF9F800FFDD
      9100001D4200033F67003982C6004D91BB00FFD99800FFDC9B00FFDA9B00FFDB
      A000FAB65100FFF7E000AF4F1300EED9CC00F0F0F000C6804600F7F0E600F8B4
      5500F7B45600F7B55400F8B45300F8B25300F7B35200F7B35200F7B25100F7B2
      4F00F7B24F00FCF9F500C1743C00F0F0F000FFFFFFFFF6F6F6FF515151FF6564
      64FF3B3C3CFF000000FF000000FF000000FF474746FF191717FF313336FF1616
      18FF2E2E30FF252021FF457A85FFF4EAE7FFF0F0F000DDA87E00F9F3EF00EBD0
      BA00EBD0BB00EBD0BB00EBD0BB00EBD0BB00EBD1BD00EACDB500EACDB500EACD
      B500EACDB500F0E2D800C68A5C00F0F0F000F0F0F000D1976900FAFDFB00FFD9
      95001460870097C4E7008CC8FD004A94D9000B63AF0071888B00FABB6900F4B9
      6B00F7B96400FFF8E500B55D1C00EFDDCE00F0F0F000C7844800F8F1E800FEE5
      D500FDE5D300FDE5D300FCE5D300FCE5D300FCE4D100FCE2CE00FCE2CC00FBE0
      C900FBE1C800FDFAF700C37A4100F0F0F000FFFFFFFF6F6F6FFF5D5D5CFF0000
      00FF030303FF040000FF150800FF050505FF0C0C0DFF2A2B2AFF040508FF8577
      6EFF83786FFF5F5854FF000000FFFFFFFFFFF0F0F000DFAA8200F9F3EF00EACE
      B700F0F0F000EBD0BB00F0F0F000F0F0F000F0F0F000EACFBA00FBF6F200F0F0
      F000F0F0F000F0E2D800C88D5F00F0F0F000F0F0F000D19A6900FBFAF500FFF6
      E600106F9C00CAE3EF00428ED6001675C0004C96C1002A7DC100F6E0D600FCE2
      D200FDE4CD00F0F0F000B65F1C00EFDECF00F0F0F000C7864B00F8F2EB00FEE7
      D600FDE7D600FDE7D600FDE7D600FDE6D500FDE5D300FCE4D100FCE2CD00FBE1
      CB00FBE1C900FBF7F200C7804500F0F0F000FFFFFFFF000000FF2F2D2AFF1F19
      13FF31210FFF37506EFF3081DFFF282425FF000000FF2C2927FF272726FF4241
      41FF2A2A2EFF4C494AFF000000FFFFFFFFFFF0F0F000E1AE8700FAF4F000EACB
      B200EACCB300EACCB300EACCB300EACCB300EACEB700E8C7AC00E8C7AC00E8C8
      B000E8C8AE00F0E2D800C4865400F0F0F000F0F0F000D19C6C00FBFBF900FFEF
      DE00C9C6C40096BACC008EB7CF0086D4E6005AEAFE0071E5F900439DE0008AB5
      D600FEDFC300FFFCF800BD692300F1E0D000F0F0F000C8884D00F9F3EC00FEE8
      D600FEE8D700FDE7D600FDE7D600FDE7D500FDE5D300FBE4D000FBE3CC00FADF
      C700FADFC600FAF2EA00C8844800F0F0F000FFFFFFFF000000FF394861FF2341
      60FF025AD3FF0650B6FF0E69D7FF080506FF726A63FF41403EFF46403EFF9E8F
      81FF5B544CFF4B4844FF4C4B4AFFF9F9F9FFF0F0F000E3B18C00FAF6F100EAC9
      AE00F0F0F000EAC9B000F0F0F000F0F0F000F0F0F000E8C7AC00F0F0F000F0F0
      F000F0F0F000F1E5DB00C6865500F0F0F000F0F0F000D19D6C00FCFCFA00FCEB
      DB00FFEED900CFD0CD0058AED400BEECF60052DCF70053E3F90087D9F2003A9A
      E100FFDBBE00FFFBF300BF6D2400F2E0D000F0F0F000C88C4F00F9F4ED00FEE8
      D800FEE8D800FEE8D700FEE7D600FDE5D300FCE4D100FBE1CC00FAE0C700F9DD
      C300F8DCC200FAF4ED00C8864B00F0F0F000FFFFFFFF6D93DBFF0045BAFF072D
      50FF0D53B9FF0B4EACFF0D64D0FF06070AFF938C85FF3D3C3BFF5B5754FF8D87
      80FF9C9995FFB9B9B5FF706F6EFFB9B8B9FFF0F0F000E5B48F00FAF6F200E9C6
      AA00E9C6AC00EAC7AC00E9C7AD00E9C9AE00E9C9B000E8C7AC00E9C9B000E8C8
      B000E8CCB500F2E7DE00C88A5900F0F0F000F0F0F000D1A06F00FCFDFB00FCEB
      DE00FDE7D600FFEDD800CCCECA0094C7D700C1F3FD0094E7F8004FE0F70070E4
      F7003D9BE10087C7F700C1753200EFE1D300F0F0F000C88C5000F9F4EF00FEE7
      D700FDE7D600FDE7D500FDE6D400FCE6D200FBE1CC00FADFC700F8DCC200F6DA
      BD00F6D8BB00FAF4EF00C8874C00F0F0F000FFFFFFFF6182BDFF0041ABFF0A2D
      50FF0045B1FF0044A6FF0056CCFF1F1E1DFF141316FF020204FF323234FF2929
      2CFF454546FF6A696AFF868686FFFFFFFFFFF0F0F000E7B79400FBF7F400E9C3
      A600F0F0F000E8C4A900F0F0F000F0F0F000F0F0F000E8C7AC00F0F0F000F0F0
      F000F0F0F000F7F1EB00CB8F5F00F0F0F000F0F0F000D1A06E00FCFDFD00FCEA
      DE00FDE6D500FCE7D500FFEAD400D8DBD20055CBF200C1F3FD004CD7F3004FE2
      F60085E0F50048B1F500B5733A00F1E2D500F0F0F000C88D5100F9F4F000FCE6
      D300FCE6D400FDE7D300FCE4D100FBE3CD00FAE0C800F8DCC200F5D6BB00F3D4
      B500F1D2B300F8F4F000C6864C00F0F0F000FFFFFFFF617AB9FF0033A3FF0A30
      54FF0040ADFF14469FFF2964BAFF0E2B48FF190000FF2D1D11FF55463DFF4538
      32FF291E18FF121214FFFFFFFFFFFFFFFFFFF0F0F000E9BA9800FBF7F400E9C3
      A600E9C3A600E9C3A600E9C3A600E9C3A600E9C3A600E9C3A600E9C3A600E9C3
      A600E9C3A600FBF7F400CE936400F0F0F000F0F0F000D1A16F00FCFDFF00FBE9
      DA00FBE4D100FCE6D100FBE3CF00FFE5CC00D8D5C60098CDD700C1F3FD0095E6
      F80070C3E90077B7E30074ABE000ABCCEA00F0F0F000C88D5100F9F5F100FCE3
      CF00FBE4D000FCE4CF00FCE3CD00FAE1CA00F9DDC400F6D9BC00F4E9DF00F7F2
      EC00FBF7F300F5EFE900C3804800F0F0F000FFFFFFFF6175B7FF00349FFF061F
      39FF2068C3FF217BCBFF2996DFFF36BDFFFF2BA5F1FF2690D5FF187CC0FF0764
      A4FF51A3E1FFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F000EBBD9B00FBF7F400F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000FBF7F400D1976A00F0F0F000F0F0F000D1A16F00FCFEFF00FBE8
      D800FAE3CE00FCE4CF00FCE3CD00FBE2CB00FFDEC200C9CFC10065CEF000ABE4
      F90086B9E300A3CDF200DEF1FF007FB0DD00F0F0F000C88D5200F9F5F100FCE3
      CD00FBE3CE00FBE3CD00FBE2CB00F9E0C800F8DCC200F5D6BA00FDFBF800FCE6
      CD00FAE5C900E2B68400D5A88400F0F0F000FFFFFFFF3B77BEFF0C77D2FF0B43
      75FF1F7CBEFF1684C0FF0C85D2FF038DE4FF008EF4FF29B2FFFF73CFFFFFC5F0
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F000ECBF9E00FBF7F4009CD5
      A50098D3A10094D09D0090CE98008BCB930087C98E0082C689007EC384007AC1
      800076BE7C00FBF7F400D49B6F00F0F0F000F0F0F000D2A27200FCFFFF00FAE7
      D500FBE1CA00FAE2CB00FBE1C900FAE0C800F7DBC100FFD5B300CBF1FC0097CA
      DF0098C3E900C9DEF40087C0E40077AED900F0F0F000CA925A00FAF6F200FAE0
      C700FBE1C900FBE2C900FBE0C800F9DFC500F8DBC100F4D6B800FFFBF800F6D8
      B400E1B07D00DC966900FDFBFA00F0F0F000FFFFFFFFBCE5FBFF7DD8FFFF7CD9
      FFFF6AD0FFFF4CC1FFFF66BEF5FFB4CADEFFFFFDF4FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F000EFC6A800FBF7F400FBF7
      F400FBF7F400FBF7F400FBF7F400FBF7F400FBF7F400FBF7F400FBF7F400FBF7
      F400FBF7F400FBF7F400D8A37800F0F0F000F0F0F000D2A27300F0F0F000FBE7
      D500FDE1C800FDE4CA00FDE1C900FCE0C700F9DBC100F4D4B200F0F0F000D9E3
      D5002B97DD0067A3D8001785C30089C3E400F0F0F000D2A27400F8F3ED00F8F4
      EE00F8F4ED00F8F3ED00F8F3ED00F8F3ED00F8F2EC00F7F2EC00F2E6D700E2B2
      7D00DC986B00FDFBFA00F0F0F000F0F0F000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F000F7E1D200F1C8AC00EDC0
      9F00EBBE9D00EBBC9A00E9BA9600E7B79300E6B59000E4B28C00E2AF8800E0AC
      8400DDA98000DCA57D00E2B69600F0F0F000F0F0F000E1C2A500EFDFCF00ECDB
      C900E9D8C400EAD8C500EAD8C500EAD9C500EBD8C500EAD8C700E6D0B500E4B6
      8800F4AD7F00FFECDA00F0F0F000F0F0F000F0F0F000E8CEB900D7AA7C00CC94
      5B00CA905500CA905500CA905500CA915500CB905500C98F5500CF9D6900DDB1
      9000FDFBFA00F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F2E2D800D19F6A00CC93
      5A00C5864600C6874800C6874800C6894800C7874800C5844500CB975F00D39F
      7500F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000DFB49300D59D
      7400D1966800CE926300CB8E5E00C98A5B00C7875600C3845200C3845200C384
      5200C3845200C3845200C3845200D0A17D00F0F0F000E2C0AA00CC8D6600C071
      4000BC6B3600BC6B3600BC6B3600BC6A3600BC6A3600BB6A3500646A3600216B
      3700196B3700226D390077946F00F0F0F000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000D7A17500F8F2
      ED00F7F0EA00F6EDE600F4EAE200F3E7DE00F1E4DB00F0E2D800F0E2D800F0E2
      D800F0E2D800F0E2D800F0E2D800C58B5E00F0F0F000C57C4D00F8F2EB00F7EC
      DF00F6EBDE00F6EADE00F6EADC00F6EADC00FAF3EB0086AD8E00288C530064BA
      8D0095D2B20064BA8D00288C530081AE9100FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF8FBF9FF9FC7A5FF33863BFF177522FF14731DFF267C2DFF96BE98FFF6FA
      F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6A18C00C38E6800C08B6600BE88
      6400BB856100B9835F00B47E5C00B27C5A00B17B5800AE795700AD765600AB75
      5400A9735300A9715100C6A18C00F0F0F000F0F0F000F0F0F000D9A47A00F9F3
      EE00EBD2BE00F0F0F000EBD3BF00F0F0F000F0F0F000F0F0F000EAC7AD00F0F0
      F000F0F0F000F0F0F000F0E2D800C68C5F00F0F0F000C2774000F5EBDF00FDBF
      6800FCBD6700FBBE6500FCBE6400FCBE6400FCBD6200226F3A0062BA8B0060BA
      8700F0F0F00060B9870067BC8F0020703D00FFFFFFFFFFFFFFFFFFFFFFFFD0E5
      D4FF368B45FF1C832CFF84C898FFA9DCB8FFAADBBAFF7EC492FF11741DFF1A72
      20FFC7DDC9FFFFFFFFFFFFFFFFFFFFFFFFFFC8926C00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000A9725100F0F0F000F0F0F000F0F0F000DDA87E00F9F3
      EF00EBD0BA00EBD0BB00EBD0BB00EBD0BB00EBD0BB00EBD1BD00EACDB500EACD
      B500EACDB500EACDB500F0E2D800C68A5C00F0F0F000C37C4200F7EDE300FDC2
      6E00FFD8A000FFD79E00FFD69B00FFD79800FFD69600317B4C009CD4B600F0F0
      F000F0F0F000F0F0F00095D2B200196B3700FFFFFFFFFFFFFFFFD1E6D7FF3289
      42FF54AE6CFFCAEDD4FF8CCF9CFF5BB774FF58B472FF8CCF9EFFC9EED6FF4AA5
      61FF0A6710FFC5DDC9FFFFFFFFFFFFFFFFFFCA946E00F0F0F000FFAC4800FDFD
      FD00B2B2B200ADADAD00A8A8A800A4A4A4009F9F9F009D9D9D009B9B9B009999
      990099999900F0F0F000AA735300F0F0F000F0F0F000F0F0F000DFAA8200F9F3
      EF00EACEB700F0F0F000EBD0BB00F0F0F000F0F0F000F0F0F000EACFBA00FBF6
      F200F0F0F000F0F0F000F0E2D800C88D5F00F0F0F000C6804600F7F0E600F8B4
      5500F7B45600F7B55400F8B45300F8B25300F7B352004A885D0090D3B10092D6
      B100F0F0F00065BC8C0067BC8F0020703D00FFFFFFFFFBFCFBFF4B9A5BFF5BB4
      71FFC9EBCEFF4CB367FF54B66BFF40AD5AFF41A959FF4FB067FF47AE63FFCAED
      D4FF4CA562FF1B7521FFF8FBF8FFFFFFFFFFCC976F00F0F0F000FEFEFE00FDFD
      FD00FDFDFD00FDFDFD00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FBFBFB00FBFB
      FB00FBFBFB00F0F0F000AC755400F0F0F000F0F0F000FDFDFD00D8AC8A00E3DE
      DB00D2BBA900DBC2AD00E3C7B000EACCB300EACCB300EACEB700E8C7AC00E8C7
      AC00E8C8B000E8C8AE00F0E2D800C4865400F0F0F000C7844800F8F1E800FEE5
      D500FDE5D300FDE5D300FCE5D300FCE5D300FCE4D100A6B89B0061AB810095D4
      B400BAE6D0006ABB8F002D8F570081AE9100FFFFFFFFAFD4B7FF319A4AFFC9EC
      CFFF50B969FF5BBC6CFF4CB467FFFFFFFFFFFFFFFFFF42AE5CFF54B26AFF48AD
      63FFCAEFD6FF12771DFF94BE98FFFFFFFFFFD19C7300F0F0F000FFB25200FEFE
      FE00B9B9B900B5B5B500B1B1B100ADADAD00A9A9A900A6A6A600A4A4A400A2A2
      A200A1A1A100F0F0F000B07A5800F0F0F000FDFDFD00D9D9D900AFA49C00ABAB
      AA00A4A09C00A7A7A700B6A79C00F3F3F300F0F0F000F0F0F000E8C7AC00F0F0
      F000F0F0F000F0F0F000F1E5DB00C6865500F0F0F000C7864B00F8F2EB00FEE7
      D600FDE7D600FDE7D600FDE7D600FDE6D500FDE5D300FCE4D100ADBC9F006098
      73004F8E66004A8A61007C7C4700F0F0F000FFFFFFFF5CA870FF8ECF9BFF89D4
      96FF65C375FF4EBA5CFF259038FFFFFFFFFFFFFFFFFF2DA54AFF42AE5CFF54B6
      6BFF8AD09BFF82C397FF287D30FFFFFFFFFFD49E7500F0F0F000F0F0F000F0F0
      F000F0F0F000FEFEFE00FEFEFE00FEFEFE00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FCFCFC00F0F0F000B27C5A00F0F0F000C6C6C600CBCBCB00EAEAEA00F0F0
      F000F2F2F200ECECEC00CACACA009A959100E9C9AE00E9C9B000E8C7AC00E9C9
      B000E8C8B000E8CCB500F2E7DE00C88A5900F0F0F000C8884D00F9F3EC00FEE8
      D600FEE8D700FDE7D600FDE7D600FDE7D500FDE5D300FBE4D000FBE3CC00FADF
      C700FADFC600FAF2EA00C8844800F0F0F000FFFFFFFF4BA064FFB7E5BFFF73CC
      81FF61C56EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF40AD
      5AFF5CB873FFB1E2C0FF12711BFFFFFFFFFFD5A07600F0F0F000FFB95E00F0F0
      F000C1C1C100BEBEBE00BABABA00B7B7B700B5B5B500B2B2B200B0B0B000AEAE
      AE00ADADAD00F0F0F000B57E5C00F0F0F000B1B1B100FAFAFA00D7D7D700E2E2
      E200CACACA00CFCFCF00F0F0F00093939300F0F0F000F0F0F000E8C7AC00F0F0
      F000F0F0F000F0F0F000F7F1EB00CB8F5F00F0F0F000C88C4F00F9F4ED00FEE8
      D800FEE8D800FEE8D700FEE7D600FDE5D300FCE4D100FBE1CC00FAE0C700F9DD
      C300F8DCC200FAF4ED00C8864B00F0F0F000FFFFFFFF4EA468FFC7EACCFF85D4
      91FF65BF72FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FAC
      5AFF5EBD75FFB2E0BDFF167421FFFFFFFFFFD8A27900F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FEFEFE00FEFEFE00FEFEFE00FDFD
      FD00FDFDFD00F0F0F000B7815E00F0F0F000B5B5B500F8F8F800D1D1D100ECEC
      EC00C5C5C500C6C6C600F0F0F0009A9A9A00E9C3A600E9C3A600E9C3A600E9C3
      A600E9C3A600E9C3A600FBF7F400CE936400F0F0F000C88C5000F9F4EF00FEE7
      D700FDE7D600FDE7D500FDE6D400FCE6D200FBE1CC00FADFC700F8DCC200F6DA
      BD00F6D8BB00FAF4EF00C8874C00F0F0F000FFFFFFFF66AF7EFFB4E2BCFFA6E1
      AFFF79C785FF69C174FF43A851FFFFFFFFFFFFFFFFFF2B903DFF49B465FF51B4
      6AFF91D59DFF86CB9AFF36883FFFFFFFFFFFD9A37900F0F0F000FFBF6800F0F0
      F000C7C7C700C6C6C600C3C3C300C1C1C100BFBFBF00BDBDBD00BBBBBB00B9B9
      B900B9B9B900F0F0F000BA856000F0F0F000B8B8B800F8F8F800D5D5D500EFEF
      EF00CBCBCB00CBCBCB00F0F0F0009E9E9E00F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000FBF7F400D1976A00F0F0F000C88D5100F9F4F000FCE6
      D300FCE6D400FDE7D300FCE4D100FBE3CD00FAE0C800F8DCC200F5D6BB00F3D4
      B500F1D2B300F8F4F000C6864C00F0F0F000FFFFFFFFB4DAC1FF6EBC85FFEDF9
      EEFF87D594FF89D493FF6CBF77FFFFFFFFFFFFFFFFFF69CB76FF65BF77FF60C2
      6FFFCCF0D2FF208A35FFA0C8A5FFFFFFFFFFDBA47A00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000BD876300F0F0F000BBBBBB00F8F8F800DBDBDB00EFEF
      EF00D0D0D000D0D0D000F0F0F000A2A2A2008BCB930087C98E0082C689007EC3
      84007AC1800076BE7C00FBF7F400D49B6F00F0F0F000C88D5100F9F5F100FCE3
      CF00FBE4D000FCE4CF00FCE3CD00FAE1CA00F9DDC400F6D9BC00F4E9DF00F7F2
      EC00FBF7F300F5EFE900C3804800F0F0F000FFFFFFFFFBFDFBFF5FAD77FFAADB
      B7FFF4FCF4FF81D38EFF81C98DFF6EC179FF7ACF87FF88D393FF76CF82FFCBED
      D0FF5CB472FF3B8E47FFF9FCFAFFFFFFFFFFDCA77B00DCA77B00DCA77B00DCA7
      7B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA7
      7B00DCA77B00DCA77B00C08B6600F0F0F000BCBCBC00F2F2F200D9D9D900E4E4
      E400E2E2E200C8C8C800F1F1F100A5A5A500FBF7F400FBF7F400FBF7F400FBF7
      F400FBF7F400FBF7F400FBF7F400D8A37800F0F0F000C88D5200F9F5F100FCE3
      CD00FBE3CE00FBE3CD00FBE2CB00F9E0C800F8DCC200F5D6BA00FDFBF800FCE6
      CD00FAE5C900E2B68400D5A88400F0F0F000FFFFFFFFFFFFFFFFDBEEE1FF4FA6
      6BFFB0DEBCFFF8FEF8FFB7E6BEFF93DA9EFF8DD698FFA4E0AFFFDEF6DEFF6DBF
      82FF348A43FFD1E4D5FFFFFFFFFFFFFFFFFFDDAD8600E8B99200E8B99200E8B9
      9200E8B99200E8B99200E8B99200E8B99200E8B99200E8B99200E8B99200E8B9
      9200E8B99200E8B99200C1917000F0F0F000BDBDBD00F6F6F600F4F4F400F9F9
      F900FBFBFB00F6F6F600F6F6F600A8A8A800E7B79300E6B59000E4B28C00E2AF
      8800E0AC8400DDA98000DCA57D00E2B69600F0F0F000CA925A00FAF6F200FAE0
      C700FBE1C900FBE2C900FBE0C800F9DFC500F8DBC100F4D6B800FFFBF800F6D8
      B400E1B07D00DC966900FDFBFA00F0F0F000FFFFFFFFFFFFFFFFFFFFFFFFDBEE
      E1FF5CAC75FF82C594FFD1EDD7FFE3F4E5FFDDF2DFFFBBE4C2FF50AB66FF479A
      59FFD2E6D8FFFFFFFFFFFFFFFFFFFFFFFFFFDBC3B600DEB49200DCA77B00DCA6
      7A00DAA47A00D8A27900D5A07600D49E7500D29D7300CF9A7200CE997000CB96
      6F00C9946C00C79E8000DBC3B600F0F0F000D3D3D300D6D6D600EDEDED00F9F9
      F900FBFBFB00F0F0F000D9D9D900B8B8B800F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000D2A27400F8F3ED00F8F4
      EE00F8F4ED00F8F3ED00F8F3ED00F8F3ED00F8F2EC00F7F2EC00F2E6D700E2B2
      7D00DC986B00FDFBFA00F0F0F000F0F0F000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFBFDFBFFB4DBC1FF63AF7AFF4FA569FF4CA365FF59A76EFFAED4B7FFFAFC
      FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FBFBFB00E2E2E200CACACA00BDBD
      BD00B8B8B800C0C0C000D4D4D400F3F3F300F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000E8CEB900D7AA7C00CC94
      5B00CA905500CA905500CA905500CA915500CB905500C98F5500CF9D6900DDB1
      9000FDFBFA00F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF424D3E000000000000003E000000
      2800000040000000800000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF0080008000000000000000000000000000
      8000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFC7C1FFFFFFFFFFFF8080FFFFF9FF
      E3818000FFFFF0FFF1808000FFFFE07FF1000000FFFFC03FF8000000FFFF801F
      F8000000C007000FFC000001C0030007C0038001C0038603003FE003C007CF01
      001FF001FFFFFF80101FF801FFFFFFC0000FFC03FFFFFFE1018FFE07FFFFFFF3
      81C7FF0FFFFFFFFFFFFFFF9FFFFFFFFFE007FFFFFFFFE0030000FFBFE7E78001
      0000FF1FC3C380010000FE1F818180010000804F800180010000B8A7C0038003
      0000A1B7E007F00F0000BFBBF00FE03F0000A0BDF00FE07F0000BFBEE007C03F
      8001A7BFC003C03FC003BC3F8001C03FE007A57F8180C03FE007BCFFC3C1E03F
      E00781FFE7E3E03FE01FFFFFFFF7F07FFFC780028001E007FFC3000080019501
      FC01000080012A8180000000800155018000000080012A810000000080015501
      0001000080012A81000100008001550100010000800128010001000080014007
      00010000C3C3280100010000C3C31507001F0000C0038DFF001F0000C003A6FF
      FFFF0000E0076FFFFFFF0000F00F67FFFF3FFFFFFFFF8000F03FE7FFE0030000
      8001C3FDC00300000000E3F9800300000000C3F1800300000000E3E180030000
      000FC3C3C00300000007E207C00300000001C40FC00300000003801FC0030000
      0001001FC00300000403051FC00300007FC7081FC00300003FC7883FC0030000
      060FC8FFC0070000801FFFFFC00F00008001FFFFFFFF000080008001FFF30000
      8000B89180330000801CB89186830000800081B5A00100008000B891961D0000
      8001B811993500008001823D8005000080018011808100008001BC8180010000
      80017E818101000080012281A401000080012E018101000080012E00F8810000
      800385FCFC2300008007C3FFFFFF000080010000FFFF8000800100008001A0DC
      8001000080018000800100008BB980008001000080018000800100008B998004
      8001000080018000800100008BB980008001000080018000800100008BB98000
      8001000080018000800100009FF980008001000080018000800100008001A020
      800300008001800380070000FFFF800FFFFFC00080010000FFFFC00080000000
      0001C5DC800800007FFDC000801C00004005C5CC800800004005800080000000
      400500DC800100007805000080010000500502DC800100007F05020080010000
      500502FC800100007FFD02008001000000010000800100000001000080010000
      000100FF80030000FFFF00FF8007000000000000000000000000000000000000
      000000000000}
  end
  object PropStorageEh1: TPropStorageEh
    StorageManager = RegPropStorageManEh1
    StoredProps.Strings = (
      
        'PageControl1.Tab_ActWo_Do2.Grid_GurWhOut.<P>.Columns.ColumnsInde' +
        'x'
      
        'PageControl1.Tab_ActWo_Do2.Grid_GurWhOut.<P>.Columns.<ForAllItem' +
        's>.Width'
      
        'PageControl1.Tab_Do1.Panel_DO.Panel15.Panel16.GridDo2.<P>.Column' +
        's.ColumnsIndex'
      
        'PageControl1.Tab_Do1.Panel_DO.Panel15.Panel16.GridDo2.<P>.Column' +
        's.<ForAllItems>.Width'
      
        'PageControl1.Tab_Do1.Panel_DO.Panel15.Panel16.GridDoTovar.<P>.Co' +
        'lumns.ColumnsIndex'
      
        'PageControl1.Tab_Do1.Panel_DO.Panel15.Panel16.GridDoTovar.<P>.Co' +
        'lumns.<ForAllItems>.Width'
      
        'PageControl1.Tab_Do1.Panel_DO.Panel15.Panel16.GridDoTrand.<P>.Co' +
        'lumns.ColumnsIndex'
      
        'PageControl1.Tab_Do1.Panel_DO.Panel15.Panel16.GridDoTrand.<P>.Co' +
        'lumns.<ForAllItems>.Width'
      
        'PageControl1.Tab_Do1.Panel_DO.Panel15.Panel17.GridDo1.<P>.Column' +
        's.ColumnsIndex'
      
        'PageControl1.Tab_Do1.Panel_DO.Panel15.Panel17.GridDo1.<P>.Column' +
        's.<ForAllItems>.Width'
      
        'PageControl1.Tab_Do2.Panel1.Grid_Do2Sheet.<P>.Columns.ColumnsInd' +
        'ex'
      
        'PageControl1.Tab_Do2.Panel1.Grid_Do2Sheet.<P>.Columns.<ForAllIte' +
        'ms>.Width'
      'PageControl1.Tab_TpWo_Do1.Grid_TpWoDo1.<P>.Columns.ColumnsIndex'
      
        'PageControl1.Tab_TpWo_Do1.Grid_TpWoDo1.<P>.Columns.<ForAllItems>' +
        '.Width')
    Left = 592
    Top = 224
  end
  object RegPropStorageManEh1: TRegPropStorageManEh
    Left = 536
    Top = 224
  end
  object PopMn_DoArc: TPopupMenu
    Left = 48
    Top = 304
    object N3: TMenuItem
      Action = A_FromArc
      Bitmap.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000F4F4F4E2E2E2
        D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9
        D9D9D9D9DFDFDFF0F0F0E9E9E9C5C5C544607F2A4C722A4C722A4C722A4C722A
        4C722A4C722A4C722A4C722A4C722A4C7244607FC0C0C0E0E0E0F4F4F4E2E2E2
        2A4C7248829D48829D48829D48829D48829D48829D48829D48829D48829D4882
        9D2A4C72DFDFDFF0F0F0FFFFFFFFFFFF2A4C725594AF5594AF5594AF5594AF55
        94AF5594AF5594AF5594AF5594AF5594AF2A4C72FFFFFFFFFFFFFFFFFFFFFFFF
        2A4C7267A7C067A7C067A7C067A7C067A7C067A7C067A7C067A7C067A7C067A7
        C02A4C72FFFFFFFFFFFFFFFFFFF5F6F7305173659BB3679EB5679EB5679EB567
        9EB5679EB5679EB5679EB5679EB5679EB5294B6EEFF2F3FCFDFDFFFFFFA3B0BF
        254468284A6C284A6C284A6C284A6C284A6C284A6C284A6C284A6C284A6C284A
        6C2243668F9FB1FAFBFBFCFDFD23446870A2BC76AAC376AAC376AAC376AAC376
        AAC376AAC376AAC376AAC376AAC376AAC376AAC335597BD6DCE3FFFFFF7A8DA3
        4272925A97B35A97B35A97B35A97B35A97B35A97B35A97B35A97B35A97B35A97
        B34E85A3405C7CFCFDFDA3B1C021426823486C295C7F295C7F295C7F295C7F29
        5C7F295C7F295C7F295C7F295C7F295C7F244C7027496D20426722436949758F
        517C98234469194A73184A74184A74184A74184A74184A74184A74184A741D45
        6D365C7C4D78945F7792A3B1C0395E8082B5CB5885A1144C7809568709568709
        56870956870956870956870956872142686998B1375D7FBBC5D1FFFFFF8C9DB0
        2B4E734870903151743958793958793958793958793958793958793857782648
        6D284A6FA8B5C4FFFFFFFFFFFFFFFFFFEDEFF299A8BA5071907DAFC37DAFC37D
        AFC37DAFC37DAFC37DAFC35C84A07D92A9F2F4F6FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF69839E446385446385446385446385446385446385416082F2F4
        F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEEF1EAEEF1EA
        EEF1EAEEF1EAEEF1EAEEF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
  end
end
