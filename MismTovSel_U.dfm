object MismTovSel_F: TMismTovSel_F
  Left = 249
  Top = 163
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1042#1099#1076#1077#1083#1080#1090#1077' '#1085#1091#1078#1085#1099#1077' '#1090#1086#1074#1072#1088#1099
  ClientHeight = 233
  ClientWidth = 888
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Grid_Tov: TDBGridEh
    Left = 0
    Top = 40
    Width = 888
    Height = 193
    Align = alBottom
    DataSource = DM.DS_DoTovar
    DynProps = <>
    Flat = True
    FooterRowCount = 1
    FooterParams.Color = clWhite
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ReadOnly = True
    SumList.Active = True
    TabOrder = 0
    TitleParams.RowLines = 2
    OnDrawColumnCell = Grid_TovDrawColumnCell
    Columns = <
      item
        Alignment = taCenter
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
  object SaveBtn: TBitBtn
    Left = 13
    Top = 6
    Width = 188
    Height = 25
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1077' '#1090#1086#1074#1072#1088#1099
    DoubleBuffered = True
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
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = SaveBtnClick
  end
end
