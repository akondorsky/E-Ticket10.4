object Buh_F: TBuh_F
  Left = 0
  Top = 0
  Caption = #1041#1091#1093#1075#1072#1083#1090#1077#1088' / '#1082#1072#1089#1089#1080#1088
  ClientHeight = 637
  ClientWidth = 1244
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object StatusBar1: TStatusBar
    Left = 0
    Top = 616
    Width = 1244
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Panels = <>
    UseSystemFont = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1244
    Height = 225
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 14
      Top = 8
      Width = 189
      Height = 16
      Caption = #1055#1086#1080#1089#1082' '#1092#1080#1088#1084#1099' '#1087#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1102
    end
    object E_Find: TButtonedEdit
      Left = 209
      Top = 5
      Width = 185
      Height = 24
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077' '#1079#1072#1087#1080#1089#1080' -'#13#10#1087#1091#1089#1090#1072#1103' '#1089#1090#1088#1086#1082#1072' + Enter'
      Images = Main_F.ImL_Buttons16
      ParentShowHint = False
      RightButton.ImageIndex = 2
      RightButton.Visible = True
      ShowHint = True
      TabOrder = 0
      OnKeyPress = E_FindKeyPress
      OnRightButtonClick = E_FindRightButtonClick
    end
    object Grid_firm: TDBGridEh
      Left = 1
      Top = 37
      Width = 1242
      Height = 187
      Align = alBottom
      DataSource = DM.DS_Regti_Buh
      DynProps = <>
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterParams.Color = clWindow
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
      ParentFont = False
      PopupMenu = PopMn_Firm
      RowDetailPanel.Height = 150
      TabOrder = 1
      TitleParams.RowLines = 3
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
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'START_SALDO'
          Footers = <>
          Title.Caption = #1053#1072#1095'. '#1089#1072#1083#1100#1076#1086
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 225
    Width = 1244
    Height = 391
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 1242
      Height = 389
      ActivePage = Tab_Reports
      Align = alClient
      TabOrder = 0
      object Tab_DirectToCash: TTabSheet
        Caption = #1050#1058' '#1085#1072' '#1086#1087#1083#1072#1090#1091
        ImageIndex = 2
        object Grid_KTForPay: TDBGridEh
          Left = 0
          Top = 29
          Width = 1234
          Height = 329
          Align = alClient
          DataSource = DM.Ds_AllPartsForPay
          DynProps = <>
          Flat = True
          FooterParams.Color = clWindow
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = PopMn_AllKT
          TabOrder = 0
          TitleParams.RowLines = 2
          OnDblClick = Grid_KTForPayDblClick
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PART_NOMER'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #8470' '#1090#1072#1083#1086#1085#1072
              Width = 115
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ZAYV'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100' '#1075#1088#1091#1079#1072
              Width = 625
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object ToolBar4: TToolBar
          Left = 0
          Top = 0
          Width = 1234
          Height = 29
          Caption = 'ToolBar1'
          Images = Main_F.ImL_16
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          object ToolButton21: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            Style = tbsSeparator
          end
          object ToolButton25: TToolButton
            Left = 8
            Top = 0
            Hint = #1054#1073#1085#1086#1074#1080#1090#1100
            Caption = #1054#1073#1085#1086#1074#1080#1090#1100
            ImageIndex = 12
            OnClick = ToolButton25Click
          end
        end
      end
      object Tab_Invoice: TTabSheet
        Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1089#1095#1077#1090#1086#1074'-'#1092#1072#1082#1090#1091#1088
        object ToolBar2: TToolBar
          Left = 0
          Top = 0
          Width = 1234
          Height = 26
          ButtonHeight = 25
          ButtonWidth = 25
          Caption = 'ToolBar2'
          DrawingStyle = dsGradient
          Images = Main_F.ImL_16
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object ToolButton13: TToolButton
            Left = 0
            Top = 0
            Action = A_TicketFaktura
          end
          object ToolButton5: TToolButton
            Left = 25
            Top = 0
            Action = A_FHeadDel
          end
          object ToolButton12: TToolButton
            Left = 50
            Top = 0
            Width = 8
            Caption = 'ToolButton12'
            ImageIndex = 23
            Style = tbsSeparator
          end
          object ToolButton10: TToolButton
            Left = 58
            Top = 0
            Action = A_FakturaPass
          end
          object ToolButton3: TToolButton
            Left = 83
            Top = 0
            Action = A_FakturaCancel
          end
          object ToolButton14: TToolButton
            Left = 108
            Top = 0
            Width = 8
            Caption = 'ToolButton14'
            ImageIndex = 23
            Style = tbsSeparator
          end
          object ToolButton15: TToolButton
            Left = 116
            Top = 0
            Action = A_PlatChange
          end
          object ToolButton16: TToolButton
            Left = 141
            Top = 0
            Action = A_DiscChange
          end
          object ToolButton20: TToolButton
            Left = 166
            Top = 0
            Action = A_NewFiscalBill
          end
          object ToolButton17: TToolButton
            Left = 191
            Top = 0
            Width = 8
            Caption = 'ToolButton17'
            ImageIndex = 25
            Style = tbsSeparator
          end
          object ToolButton18: TToolButton
            Left = 199
            Top = 0
            Action = A_FakturaPrint
          end
          object ToolButton22: TToolButton
            Left = 224
            Top = 0
            Hint = #1054#1073#1085#1086#1074#1080#1090#1100
            Caption = #1054#1073#1085#1086#1074#1080#1090#1100
            ImageIndex = 12
            OnClick = ToolButton22Click
          end
          object ToolButton19: TToolButton
            Left = 249
            Top = 0
            Width = 8
            Caption = 'ToolButton19'
            ImageIndex = 13
            Style = tbsSeparator
          end
          object ToolButton23: TToolButton
            Left = 257
            Top = 0
            Action = A_KassirMark
          end
          object ToolButton24: TToolButton
            Left = 282
            Top = 0
            Width = 8
            Caption = 'ToolButton24'
            ImageIndex = 10
            Style = tbsSeparator
          end
          object ToolButton26: TToolButton
            Left = 290
            Top = 0
            Width = 8
            Caption = 'ToolButton26'
            ImageIndex = 11
            Style = tbsSeparator
          end
          object ToolButton27: TToolButton
            Left = 298
            Top = 0
            Hint = #1057#1091#1084#1084#1072' '#1089#1095#1077#1090#1086#1074'-'#1092#1072#1082#1090#1091#1088
            Caption = 'ToolButton27'
            ImageIndex = 29
            OnClick = ToolButton27Click
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 26
          Width = 153
          Height = 332
          Align = alLeft
          Caption = 'Panel3'
          TabOrder = 1
          object Grid_Parts: TDBGridEh
            Left = 1
            Top = 1
            Width = 151
            Height = 258
            Align = alClient
            AutoFitColWidths = True
            DataSource = DM.Ds_PartForPay
            DrawGraphicData = True
            DrawMemoText = True
            DynProps = <>
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            FooterParams.Color = clWindow
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
            ParentFont = False
            PopupMenu = PopMn_KT
            ReadOnly = True
            RowHeight = 1
            RowLines = 1
            TabOrder = 0
            TitleParams.RowLines = 1
            OnDblClick = Grid_PartsDblClick
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PART_NOMER'
                Footers = <>
                Title.Caption = #1053#1086#1084#1077#1088' '#1095#1072#1089#1090#1080' '#1050#1058
                Width = 112
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object RG_KT: TRadioGroup
            Left = 1
            Top = 259
            Width = 151
            Height = 72
            Align = alBottom
            Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1090#1072#1083#1086#1085#1099
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemIndex = 0
            Items.Strings = (
              #1055#1086#1076#1083#1077#1078#1072#1097#1080#1077' '#1086#1087#1083#1072#1090#1077
              #1042#1089#1077)
            ParentFont = False
            TabOrder = 1
            OnClick = RG_KTClick
          end
        end
        object Panel5: TPanel
          Left = 153
          Top = 26
          Width = 1081
          Height = 332
          Align = alClient
          TabOrder = 2
          object Grid_FHead: TDBGridEh
            Left = 1
            Top = 1
            Width = 1079
            Height = 144
            Align = alTop
            DataSource = DM.DS_FHead
            DynProps = <>
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            FooterRowCount = 1
            FooterParams.Color = clYellow
            IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
            Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghExtendVertLines]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleParams.RowLines = 2
            Columns = <
              item
                Alignment = taCenter
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PASS_FLAG'
                Footers = <>
                ImageList = Main_F.ImL_Check
                KeyList.Strings = (
                  '1')
                Title.Alignment = taCenter
                Title.Caption = #1055#1088#1086#1074#1077#1076#1077#1085#1072' '
                Width = 72
              end
              item
                Alignment = taCenter
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'NOMER'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #1053#1086#1084#1077#1088' '#1089'-'#1092
                Width = 72
              end
              item
                Alignment = taCenter
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DATA_F'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #1044#1072#1090#1072
                Width = 83
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'POLUCH'
                Footers = <
                  item
                    Alignment = taRightJustify
                    Value = #1057#1072#1083#1100#1076#1086' '#1087#1083#1072#1090#1077#1083#1100#1097#1080#1082#1072':'
                    ValueType = fvtStaticText
                  end>
                Title.Alignment = taCenter
                Title.Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100' '#1075#1088#1091#1079#1072
                Width = 195
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PLAT'
                Footers = <
                  item
                    Alignment = taRightJustify
                    ValueType = fvtStaticText
                  end>
                Title.Alignment = taCenter
                Title.Caption = #1055#1083#1072#1090#1077#1083#1100#1097#1080#1082
                Width = 215
              end
              item
                Alignment = taCenter
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DISC_PLAT'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #1057#1082#1080#1076#1082#1072', % '
                Width = 49
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
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'HOLDING'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #1061#1086#1083#1076#1080#1085#1075' '#1087#1083#1072#1090#1077#1083#1100#1097#1080#1082#1072
                Width = 202
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
                Width = 82
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'USER_NAME'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #1057#1086#1079#1076#1072#1083
                Width = 134
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object Grid_FItems: TDBGridEh
            Left = 1
            Top = 199
            Width = 1079
            Height = 132
            Align = alClient
            AutoFitColWidths = True
            DataSource = DM.Ds_FItems
            DynProps = <>
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            FooterRowCount = 1
            FooterParams.Color = clPurple
            FooterParams.Font.Charset = DEFAULT_CHARSET
            FooterParams.Font.Color = clWhite
            FooterParams.Font.Height = -13
            FooterParams.Font.Name = 'Tahoma'
            FooterParams.Font.Style = []
            FooterParams.ParentFont = False
            IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
            Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghAutoFitRowHeight, dghExtendVertLines]
            ParentFont = False
            RowHeight = 1
            RowLines = 2
            SumList.Active = True
            TabOrder = 1
            TitleParams.RowLines = 2
            OnDrawColumnCell = Grid_FItemsDrawColumnCell
            Columns = <
              item
                Alignment = taCenter
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'NPP_STR'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #8470' '#1087'/'#1087
                Width = 38
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'USLUGA'
                Footers = <
                  item
                    Alignment = taRightJustify
                    FieldName = 'USLUGA'
                    Value = #1048#1090#1086#1075#1086' '#1082' '#1086#1087#1083#1072#1090#1077':'
                    ValueType = fvtStaticText
                  end>
                Title.Alignment = taCenter
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
                Width = 511
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'TOTAL_SUM'
                Footers = <
                  item
                    Alignment = taRightJustify
                    FieldName = 'TOTAL_SUM'
                    ValueType = fvtSum
                  end>
                Title.Alignment = taCenter
                Title.Caption = #1057#1091#1084#1084#1072' '#1082' '#1086#1087#1083#1072#1090#1077
                Width = 86
              end
              item
                Alignment = taRightJustify
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'STOIM'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1087#1086' '#1087#1088#1072#1081#1089#1091
                Width = 66
              end
              item
                Alignment = taCenter
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'KOL'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #1050#1086#1083'-'#1074#1086
                Width = 54
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DISCOUNT'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #1057#1082#1080#1076#1082#1072' %'
              end
              item
                Alignment = taRightJustify
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'SUM_VAT'
                Footers = <
                  item
                    Alignment = taRightJustify
                    FieldName = 'SUM_VAT'
                    ValueType = fvtSum
                  end>
                Title.Alignment = taCenter
                Title.Caption = #1057#1091#1084#1084#1072' '#1053#1044#1057
              end
              item
                Alignment = taCenter
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'VAT'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #1057#1090#1072#1074#1082#1072' '#1053#1044#1057
              end
              item
                Alignment = taRightJustify
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'SUMMA'
                Footers = <
                  item
                    Alignment = taRightJustify
                    FieldName = 'SUMMA'
                    ValueType = fvtSum
                  end>
                Title.Alignment = taCenter
                Title.Caption = #1057#1091#1084#1084#1072' '#1073#1077#1079' '#1053#1044#1057
                Width = 72
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'USERNAME'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
                Width = 85
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object ToolBar3: TToolBar
            Left = 1
            Top = 173
            Width = 1079
            Height = 26
            ButtonHeight = 25
            ButtonWidth = 25
            Caption = 'ToolBar3'
            DrawingStyle = dsGradient
            Images = Main_F.ImL_16
            TabOrder = 2
            object ToolButton7: TToolButton
              Left = 0
              Top = 0
              Action = A_FItemNew
            end
            object ToolButton9: TToolButton
              Left = 25
              Top = 0
              Action = A_FItemEdit
            end
            object ToolButton11: TToolButton
              Left = 50
              Top = 0
              Action = A_FItemDel
              Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1077' '#1091#1089#1083#1091#1075#1080
            end
          end
          object Panel_SumFaktura: TPanel
            Left = 1
            Top = 145
            Width = 1079
            Height = 28
            Align = alTop
            Color = clMoneyGreen
            ParentBackground = False
            TabOrder = 3
            object Label4: TLabel
              Left = 21
              Top = 6
              Width = 221
              Height = 16
              Caption = #1054#1073#1097#1072#1103' '#1089#1091#1084#1084#1072' '#1089#1095#1077#1090#1086#1074'-'#1092#1072#1082#1090#1091#1088'  = '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label_Summa: TLabel
              Left = 246
              Top = 6
              Width = 8
              Height = 16
              Caption = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
      end
      object Tab_Accounts: TTabSheet
        Caption = #1057#1095#1077#1090#1072' '#1082#1083#1080#1077#1085#1090#1086#1074
        ImageIndex = 1
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 1234
          Height = 358
          Align = alClient
          Caption = 'Panel4'
          TabOrder = 0
          object DBGridEh3: TDBGridEh
            Left = 1
            Top = 30
            Width = 1232
            Height = 327
            Align = alClient
            DataSource = DM.DS_ClAc
            DynProps = <>
            Flat = True
            FooterRowCount = 1
            FooterParams.Color = clWindow
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            SumList.Active = True
            TabOrder = 0
            TitleParams.RowLines = 2
            Columns = <
              item
                CellButtons = <>
                DisplayFormat = 'DD.MM.YY'
                DynProps = <>
                EditButtons = <>
                FieldName = 'DT'
                Footers = <
                  item
                    Color = clYellow
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    Value = #1057#1072#1083#1100#1076#1086':'
                    ValueType = fvtStaticText
                  end>
                Title.Caption = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
                Width = 104
              end
              item
                CellButtons = <>
                DisplayFormat = '0.00'
                DynProps = <>
                EditButtons = <>
                FieldName = 'MONEY'
                Footers = <
                  item
                    Color = clYellow
                    DisplayFormat = '0.00'
                    FieldName = 'MONEY'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ValueType = fvtSum
                  end>
                Title.Caption = #1057#1091#1084#1084#1072' ('#1088#1091#1073'.)'
                Width = 115
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'N_DOC'
                Footers = <>
                Title.Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
                Width = 151
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'KODDOC'
                Footers = <>
                Title.Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'KODOP'
                Footers = <>
                Title.Caption = #1042#1080#1076' '#1086#1087#1077#1088#1072#1094#1080#1080
              end
              item
                CellButtons = <>
                Checkboxes = True
                DynProps = <>
                EditButtons = <>
                FieldName = 'FISCAL_FLAG'
                Footers = <>
                KeyList.Strings = (
                  'Y'
                  'N')
                Title.Caption = #1060#1080#1089#1082#1072#1083#1100#1085#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
                Width = 72
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRIM'
                Footers = <>
                Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
                Width = 159
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object ToolBar1: TToolBar
            Left = 1
            Top = 1
            Width = 1232
            Height = 29
            Caption = 'ToolBar1'
            Images = Main_F.ImL_16
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            object ToolButton1: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton1'
              Style = tbsSeparator
            end
            object ToolButton2: TToolButton
              Left = 8
              Top = 0
              Action = A_AddDoc
            end
            object ToolButton4: TToolButton
              Left = 31
              Top = 0
              Action = A_EditDoc
              ParentShowHint = False
              ShowHint = True
            end
            object ToolButton6: TToolButton
              Left = 54
              Top = 0
              Action = A_DelDoc
            end
            object ToolButton8: TToolButton
              Left = 77
              Top = 0
              Action = A_RefrDoc
            end
          end
        end
      end
      object Tab_Reports: TTabSheet
        Caption = #1054#1090#1095#1077#1090#1099
        ImageIndex = 3
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 1234
          Height = 41
          Align = alTop
          TabOrder = 0
          object Label2: TLabel
            Left = 9
            Top = 9
            Width = 53
            Height = 16
            Caption = #1055#1077#1088#1080#1086#1076' '#1089
          end
          object Label3: TLabel
            Left = 172
            Top = 9
            Width = 14
            Height = 16
            Caption = #1087#1086
          end
          object Dt1: TDateTimePicker
            Left = 68
            Top = 8
            Width = 98
            Height = 21
            Date = 40778.000000000000000000
            Time = 0.830743090278701900
            TabOrder = 0
          end
          object Dt2: TDateTimePicker
            Left = 192
            Top = 8
            Width = 105
            Height = 21
            Date = 40778.000000000000000000
            Time = 0.830743090278701900
            TabOrder = 1
          end
        end
        object Panel10: TPanel
          Left = 0
          Top = 41
          Width = 1234
          Height = 105
          Align = alTop
          TabOrder = 1
          object RadioGroup1: TRadioGroup
            Left = 8
            Top = 8
            Width = 417
            Height = 57
            Caption = #1058#1080#1087' '#1086#1090#1095#1077#1090#1072
            ItemIndex = 0
            Items.Strings = (
              #1054#1090#1095#1077#1090' '#1087#1086' '#1074#1099#1087#1080#1089#1072#1085#1085#1099#1084' '#1080' '#1087#1088#1086#1074#1077#1076#1077#1085#1085#1099#1084'  '#1089#1095#1077#1090#1072#1084'-'#1092#1072#1082#1090#1091#1088#1072#1084)
            TabOrder = 0
          end
          object Button1: TButton
            Left = 8
            Top = 70
            Width = 106
            Height = 25
            Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
            TabOrder = 1
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 128
            Top = 70
            Width = 94
            Height = 25
            Caption = #1056#1072#1089#1087#1077#1095#1072#1090#1072#1090#1100
            TabOrder = 2
            OnClick = Button2Click
          end
        end
        object ScrollBox1: TScrollBox
          Left = 0
          Top = 146
          Width = 1234
          Height = 212
          HorzScrollBar.Visible = False
          Align = alClient
          TabOrder = 2
          object Grid_Reports: TDBGridEh
            Left = 0
            Top = 0
            Width = 1230
            Height = 208
            Align = alClient
            DataSource = DM.Ds_BuhRep_FakturaSumma
            DynProps = <>
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            FooterRowCount = 2
            FooterParams.Color = 16776176
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            SumList.Active = True
            TabOrder = 0
            TitleParams.RowLines = 3
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'NOMER'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #1053#1086#1084#1077#1088' '#1057'-'#1060
                Width = 65
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DATE_IS'
                Footers = <
                  item
                    FieldName = 'DT'
                    Value = #1050#1086#1083'-'#1074#1086
                    ValueType = fvtStaticText
                  end
                  item
                    Alignment = taRightJustify
                    FieldName = 'DT'
                    ValueType = fvtCount
                  end>
                Title.Alignment = taCenter
                Title.Caption = #1044#1072#1090#1072' '#1057'-'#1060
                Width = 73
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'TOTAL_SUM'
                Footers = <
                  item
                    FieldName = 'TOTAL_SUM'
                    Value = #1057#1091#1084#1084#1072
                    ValueType = fvtStaticText
                  end
                  item
                    Alignment = taRightJustify
                    FieldName = 'TOTAL_SUM'
                    ValueType = fvtSum
                  end>
                Title.Alignment = taCenter
                Title.Caption = #1057#1091#1084#1084#1072' '#1057'-'#1060
                Width = 72
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'N_DOC'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #1053#1086#1084#1077#1088' '#1057'-'#1060' '#1074' '#1089#1095#1077#1090#1077' '#1082#1083#1080#1077#1085#1090#1072
                Width = 80
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DT'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1057'-'#1060
                Width = 78
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'MONEY'
                Footers = <
                  item
                    FieldName = 'MONEY'
                    Value = #1057#1091#1084#1084#1072
                    ValueType = fvtStaticText
                  end
                  item
                    Alignment = taRightJustify
                    FieldName = 'MONEY'
                    ValueType = fvtSum
                  end>
                Title.Alignment = taCenter
                Title.Caption = #1057#1091#1084#1084#1072' '#1087#1088#1080' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1080' C-'#1060
                Width = 83
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ZAYV'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #1055#1083#1072#1090#1077#1083#1100#1097#1080#1082
                Width = 191
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
    end
  end
  object ActionManager1: TActionManager
    Images = Main_F.ImL_16
    Left = 672
    StyleName = 'Platform Default'
    object A_AddDoc: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 2
      OnExecute = A_AddDocExecute
    end
    object A_EditDoc: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 7
      OnExecute = A_EditDocExecute
    end
    object A_DelDoc: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 8
      OnExecute = A_DelDocExecute
    end
    object A_RefrDoc: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      ImageIndex = 12
      OnExecute = A_RefrDocExecute
    end
    object A_FakturaPass: TAction
      Caption = #1055#1088#1086#1074#1077#1089#1090#1080' '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1091
      Hint = #1055#1088#1086#1074#1077#1089#1090#1080' '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1091
      ImageIndex = 21
      OnExecute = A_FakturaPassExecute
      OnUpdate = A_FakturaPassUpdate
    end
    object A_FakturaCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1091
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1091
      ImageIndex = 22
      OnExecute = A_FakturaCancelExecute
      OnUpdate = A_FakturaCancelUpdate
    end
    object A_TicketFaktura: TAction
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1089'-'#1092' '#1085#1072' '#1086#1089#1085#1086#1074#1077' '#1050#1058
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1089'-'#1092' '#1085#1072' '#1086#1089#1085#1086#1074#1077' '#1050#1058
      ImageIndex = 2
      OnExecute = A_TicketFakturaExecute
      OnUpdate = A_TicketFakturaUpdate
    end
    object A_SingleFaktura: TAction
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1089'-'#1092' '#1076#1083#1103' '#1076#1086#1087'. '#1091#1089#1083#1091#1075
      OnExecute = A_SingleFakturaExecute
      OnUpdate = A_SingleFakturaUpdate
    end
    object A_SingleActWorks: TAction
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1040#1082#1090' '#1088#1072#1073#1086#1090' '#1076#1083#1103' '#1076#1086#1087'.'#1091#1089#1083#1091#1075
      OnExecute = A_SingleActWorksExecute
      OnUpdate = A_SingleActWorksUpdate
    end
    object A_FHeadDel: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089'-'#1092
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1089'-'#1092
      ImageIndex = 8
      OnExecute = A_FHeadDelExecute
      OnUpdate = A_FHeadDelUpdate
    end
    object A_FItemNew: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1091#1089#1083#1091#1075#1091
      ImageIndex = 2
      OnExecute = A_FItemNewExecute
      OnUpdate = A_FItemNewUpdate
    end
    object A_FItemEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1091#1089#1083#1091#1075#1091
      ImageIndex = 7
      OnExecute = A_FItemEditExecute
      OnUpdate = A_FItemEditUpdate
    end
    object A_FItemDel: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1091#1089#1083#1091#1075#1091
      ImageIndex = 8
      OnExecute = A_FItemDelExecute
      OnUpdate = A_FItemDelUpdate
    end
    object A_PlatChange: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1087#1083#1072#1090#1077#1083#1100#1097#1080#1082#1072
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1087#1083#1072#1090#1077#1083#1100#1097#1080#1082#1072
      ImageIndex = 23
      OnExecute = A_PlatChangeExecute
      OnUpdate = A_PlatChangeUpdate
    end
    object A_DiscChange: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1089#1082#1080#1076#1082#1091
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1089#1082#1080#1076#1082#1091
      ImageIndex = 24
      OnExecute = A_DiscChangeExecute
      OnUpdate = A_DiscChangeUpdate
    end
    object A_FakturaPrint: TAction
      Caption = #1056#1072#1089#1087#1077#1095#1072#1090#1072#1090#1100' '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1091
      Hint = #1056#1072#1089#1087#1077#1095#1072#1090#1072#1090#1100' '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1091
      ImageIndex = 20
      OnExecute = A_FakturaPrintExecute
      OnUpdate = A_FakturaPrintUpdate
    end
    object A_KassirMark: TAction
      Caption = #1055#1088#1086#1089#1090#1072#1074#1080#1090#1100' '#1089#1083#1091#1078#1077#1073#1085#1091#1102' '#1086#1090#1084#1077#1090#1082#1091' '#1074' '#1050#1058
      ImageIndex = 9
      OnExecute = A_KassirMarkExecute
      OnUpdate = A_KassirMarkUpdate
    end
    object A_NewFiscalBill: TAction
      Caption = #1055#1088#1086#1073#1080#1090#1100' '#1095#1077#1082' '#1087#1086' '#1082#1072#1089#1089#1077
      Hint = #1055#1088#1086#1073#1080#1090#1100' '#1095#1077#1082' '#1087#1086' '#1082#1072#1089#1089#1077
      ImageIndex = 25
      OnExecute = A_NewFiscalBillExecute
      OnUpdate = A_NewFiscalBillUpdate
    end
    object A_RefreshAllKT: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      ImageIndex = 12
      OnExecute = A_RefreshAllKTExecute
    end
    object A_BuhPrim: TAction
      Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      OnExecute = A_BuhPrimExecute
    end
    object A_Negativesaldo: TAction
      Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1079#1072#1082#1072#1079#1095#1080#1082#1072#1084'  '#1089' '#1086#1090#1088#1080#1094#1072#1090#1077#1083#1100#1085#1099#1084' '#1089#1072#1083#1100#1076#1086
      OnExecute = A_NegativesaldoExecute
    end
    object A_NegativeSaldoDate: TAction
      Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1079#1072#1082#1072#1079#1095#1080#1082#1072#1084'  '#1089' '#1086#1090#1088#1080#1094#1072#1090#1077#1083#1100#1085#1099#1084' '#1089#1072#1083#1100#1076#1086' '#1085#1072' '#1076#1072#1090#1091
      OnExecute = A_NegativeSaldoDateExecute
    end
    object A_OpenTicketPart: TAction
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1090#1072#1083#1086#1085
      ImageIndex = 14
      OnExecute = A_OpenTicketPartExecute
    end
    object A_RepPositiveSaldo: TAction
      Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1079#1072#1082#1072#1079#1095#1080#1082#1072#1084' '#1089' '#1087#1086#1083#1086#1078#1080#1090#1077#1083#1100#1085#1099#1084' '#1089#1072#1083#1100#1076#1086
      OnExecute = A_RepPositiveSaldoExecute
    end
    object A_RepPositiveSaldoDate: TAction
      Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1079#1072#1082#1072#1079#1095#1080#1082#1072#1084' '#1089' '#1087#1086#1083#1086#1078#1080#1090#1077#1083#1100#1085#1099#1084' '#1089#1072#1083#1100#1076#1086' '#1085#1072' '#1076#1072#1090#1091
      OnExecute = A_RepPositiveSaldoDateExecute
    end
  end
  object ImageList3: TImageList
    Left = 744
    Top = 65528
    Bitmap = {
      494C010101009400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  object PopMn_KT: TPopupMenu
    Images = Main_F.ImL_16
    Left = 544
    Top = 312
    object N1: TMenuItem
      Action = A_KassirMark
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object N12: TMenuItem
      Action = A_OpenTicketPart
    end
  end
  object PopMn_AllKT: TPopupMenu
    Images = Main_F.ImL_16
    Left = 144
    Top = 320
    object N3: TMenuItem
      Action = A_RefreshAllKT
    end
  end
  object PopMn_Firm: TPopupMenu
    Images = ImageList3
    Left = 48
    Top = 120
    object N2: TMenuItem
      Caption = #1054#1090#1095#1077#1090#1099
      object N4: TMenuItem
        Caption = #1041#1072#1085#1082
        OnClick = N4Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object N9: TMenuItem
        Caption = #1057' '#1076#1077#1090#1072#1083#1080#1079#1072#1094#1080#1077#1081' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1082#1072#1079#1095#1080#1082#1072#1084
        OnClick = N9Click
      end
      object N5: TMenuItem
        Caption = #1057' '#1076#1077#1090#1072#1083#1080#1079#1072#1094#1080#1077#1081' '#1087#1086' '#1074#1099#1073#1088#1072#1085#1085#1086#1084#1091' '#1079#1072#1082#1072#1079#1095#1080#1082#1091
        OnClick = N5Click
      end
      object N14: TMenuItem
        Action = A_RepPositiveSaldo
      end
      object N15: TMenuItem
        Action = A_RepPositiveSaldoDate
      end
      object N8: TMenuItem
        Action = A_Negativesaldo
      end
      object N10: TMenuItem
        Action = A_NegativeSaldoDate
      end
      object N13: TMenuItem
        Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1076#1077#1073#1080#1090#1086#1088#1072#1084'('#1085#1086#1074#1099#1081')'
        OnClick = N13Click
      end
    end
    object N7: TMenuItem
      Caption = #1041#1091#1093#1075#1072#1083#1090#1077#1088
      object Ghb1: TMenuItem
        Action = A_BuhPrim
      end
    end
  end
  object Qry_RepClRegTi: TIBQuery
    Database = DM.DB
    Transaction = DM.IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select id, zayv from reg_ti ')
    Left = 600
    Top = 104
  end
  object Qry_RepClDetail: TIBQuery
    Database = DM.DB
    Transaction = DM.IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select B.ZAYV, B.dt, B.MONEY, B.N_DOC, C.NAME as DOC, D.NAME as ' +
        'ACTION'
      'FROM CL_ACCOUNTS B LEFT JOIN VID_PL_DOC C ON B.KOD_DOC=C.ID'
      'LEFT JOIN vid_oper D ON B.kod_vid=D.ID')
    Left = 592
    Top = 168
  end
  object Ds_RepClRegTi: TDataSource
    DataSet = Qry_RepClRegTi
    Left = 688
    Top = 112
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = Grid_Reports
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Tahoma'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Tahoma'
    PageHeader.Font.Style = []
    Units = MM
    Left = 640
    Top = 320
  end
  object PropStorageEh1: TPropStorageEh
    StorageManager = RegPropStorageManEh1
    StoredProps.Strings = (
      
        'Panel1.PageControl1.Tab_Accounts.Panel4.DBGridEh3.<P>.Columns.Co' +
        'lumnsIndex'
      
        'Panel1.PageControl1.Tab_Accounts.Panel4.DBGridEh3.<P>.Columns.<F' +
        'orAllItems>.Width'
      
        'Panel1.PageControl1.Tab_DirectToCash.Grid_KTForPay.<P>.Columns.C' +
        'olumnsIndex'
      
        'Panel1.PageControl1.Tab_DirectToCash.Grid_KTForPay.<P>.Columns.<' +
        'ForAllItems>.Width'
      
        'Panel1.PageControl1.Tab_Invoice.Panel3.Grid_Parts.<P>.Columns.Co' +
        'lumnsIndex'
      
        'Panel1.PageControl1.Tab_Invoice.Panel3.Grid_Parts.<P>.Columns.<F' +
        'orAllItems>.Width'
      
        'Panel1.PageControl1.Tab_Invoice.Panel5.Grid_FHead.<P>.Columns.Co' +
        'lumnsIndex'
      
        'Panel1.PageControl1.Tab_Invoice.Panel5.Grid_FHead.<P>.Columns.<F' +
        'orAllItems>.Width'
      
        'Panel1.PageControl1.Tab_Invoice.Panel5.Grid_FItems.<P>.Columns.C' +
        'olumnsIndex'
      
        'Panel1.PageControl1.Tab_Invoice.Panel5.Grid_FItems.<P>.Columns.<' +
        'ForAllItems>.Width'
      'Panel2.Grid_firm.<P>.Columns.ColumnsIndex'
      'Panel2.Grid_firm.<P>.Columns.<ForAllItems>.Width')
    Left = 120
    Top = 120
  end
  object RegPropStorageManEh1: TRegPropStorageManEh
    Left = 176
    Top = 120
  end
end
