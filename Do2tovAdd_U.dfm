object Do2tovAdd_F: TDo2tovAdd_F
  Left = 281
  Top = 129
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1054'2.'#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1090#1086#1074#1072#1088#1086#1074
  ClientHeight = 411
  ClientWidth = 911
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 911
    Height = 361
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    object DbGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 909
      Height = 359
      Align = alClient
      DataSource = DM.DS_DoTovar
      DynProps = <>
      Flat = True
      FooterRowCount = 1
      FooterParams.Color = clWhite
      IndicatorOptions = [gioShowRowIndicatorEh]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      SumList.Active = True
      TabOrder = 0
      TitleParams.MultiTitle = True
      TitleParams.RowLines = 2
      OnDrawColumnCell = DBGridEh1DrawColumnCell
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
          Title.Caption = #8470' '#1087'/'#1087
          Width = 25
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'G33'
          Footers = <
            item
              Color = clBtnShadow
            end>
          Title.Caption = #1050#1086#1076' '#1058#1053#1042#1069#1044
          Width = 50
        end
        item
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
  end
  object SaveBtn: TBitBtn
    Left = 350
    Top = 378
    Width = 96
    Height = 25
    Caption = #1054#1082
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
    ModalResult = 1
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = SaveBtnClick
  end
  object CancBtn: TBitBtn
    Left = 462
    Top = 378
    Width = 88
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    DoubleBuffered = True
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
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = CancBtnClick
  end
end
