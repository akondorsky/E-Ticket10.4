object Reports_F: TReports_F
  Left = 0
  Top = 0
  Caption = 'Reports_F'
  ClientHeight = 590
  ClientWidth = 1007
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Rep1: TfrxReport
    Version = '6.9.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Copies = 2
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40403.703565092600000000
    ReportOptions.LastChange = 44769.407892430560000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      '      '
      '                                                  '
      '  '
      'var'
      ' sum_w_vat,stoim_w_vat,DTotalSum,dTotalSumVat:Double;'
      ' vat,sum_vat:String;                           '
      '                                         '
      '          '
      '  '
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                             '
      
        ' stoim_w_vat:=<frxDBRepInfaktura."SUMMA">/<frxDBRepInfaktura."KO' +
        'L">;'
      
        ' if <frxDBRepInfaktura."VAT"> > 0 then vat:=IntToStr(<frxDBRepIn' +
        'faktura."VAT">)+'#39'%'#39' else'
      '    vat:='#39#1073#1077#1079' '#1053#1044#1057#39';'
      
        ' if <frxDBRepInfaktura."SUM_VAT"> > 0 then sum_vat:=FloatToStr(<' +
        'frxDBRepInfaktura."SUM_VAT">) else'
      '    sum_vat:='#39#39';                              '
      '         dTotalSum:=dTotalSum+<frxDBRepInfaktura."TOTAL_SUM">;'
      
        ' dTotalSumVat:=dTotalSumVat+<frxDBRepInfaktura."SUM_VAT">;      ' +
        '               '
      'end;'
      'procedure MasterFooter3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                                        '
      'end;'
      ''
      'begin          '
      ' dTotalSum:=0;  '
      ' dTotalSumVat:=0;'
      ' //TotalSumProp:='#39#39';               '
      'end.')
    OnGetValue = Rep1GetValue
    Left = 25
    Top = 16
    Datasets = <
      item
        DataSet = frxDB_SVH
        DataSetName = 'frxDB_SVH'
      end
      item
        DataSet = frxDBRepInfaktura
        DataSetName = 'frxDBRepInfaktura'
      end>
    Variables = <
      item
        Name = ' MyVar'
        Value = Null
      end
      item
        Name = 'TotalSumProp'
        Value = Null
      end
      item
        Name = 'Disp'
        Value = Null
      end
      item
        Name = 'Repactworks_Nts'
        Value = Null
      end
      item
        Name = 'Dolj_Disp'
        Value = Null
      end
      item
        Name = 'VAT_Rate'
        Value = Null
      end
      item
        Name = 'VAT_Sum'
        Value = Null
      end
      item
        Name = 'N_contract'
        Value = Null
      end
      item
        Name = 'Status'
        Value = Null
      end
      item
        Name = 'Doc_5a'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      LargeDesignHeight = True
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 15.874015750000000000
        Top = 842.835190000000000000
        Width = 1065.827460000000000000
        OnAfterCalcHeight = 'MasterData1OnAfterCalcHeight'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        AllowSplit = True
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frxDBRepInfaktura
        DataSetName = 'frxDBRepInfaktura'
        RowCount = 0
        Stretched = True
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 908.598425196850000000
          Width = 34.771643780000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '--')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 841.700787401575000000
          Width = 66.519685039370100000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRepInfaktura."TOTAL_SUM1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 988.346473780000000000
          Width = 75.322820000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '--')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 942.992125980000000000
          Width = 44.976377952755900000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '--')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 109.228346460000000000
          Width = 295.937007874016000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            
              ' [frxDBRepInfaktura."USLUGA"]  ('#1087'. [frxDBRepInfaktura."NPP_STR"]' +
              ') ')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 435.779527560000000000
          Width = 22.677162910000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '--')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 513.259874250000000000
          Width = 45.000000000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRepInfaktura."KOL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 558.236252200000000000
          Width = 57.881880000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[stoim_w_vat]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063023860000000000
          Width = 82.322820000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRepInfaktura."SUMMA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 698.456724650000000000
          Width = 37.000000000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1073#1077#1079
            #1072#1082#1094#1080#1079#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 734.842610000000000000
          Width = 41.574803150000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<frxDBRepInfaktura."VAT"> = 0,'#39#1073#1077#1079' '#1053#1044#1057#39',<frxDBRepInfaktura.' +
              '"VAT">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 776.314960630000000000
          Width = 65.385826770000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[IIF(<frxDBRepInfaktura."SUM_VAT"> = 0 ,'#39#1073#1077#1079' '#1053#1044#1057#39',<frxDBRepInfak' +
              'tura."SUM_VAT">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 458.456692910000000000
          Width = 54.425196850000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '--')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 108.094488190000000000
          Width = 7.559060000000000000
          Height = 15.873954720000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Width = 45.000000000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 45.000000000000000000
          Width = 61.661410000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo222: TfrxMemoView
          AllowVectorExport = True
          Left = 405.165354330000000000
          Width = 30.614173228346500000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '-')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 515.543492600000000000
        Top = 18.897650000000000000
        Width = 1065.827460000000000000
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 121.779530000000000000
          Top = 244.559060000000000000
          Width = 80.000000000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 201.779530000000000000
          Top = 244.559060000000000000
          Width = 818.425170000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBRepInfaktura."ZAYV"]')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 121.779530000000000000
          Top = 262.559060000000000000
          Width = 48.000000000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1040#1076#1088#1077#1089)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 169.779530000000000000
          Top = 262.559060000000000000
          Width = 850.425170000000000000
          Height = 15.874015750000000000
          StretchMode = smActualHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBRepInfaktura."FULLADRESSZAYV"]')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 276.779530000000000000
          Top = 280.559060000000000000
          Width = 743.425170000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '  [frxDBRepInfaktura."INN"] /  [frxDBRepInfaktura."KPP"] ')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 121.779530000000000000
          Top = 280.559060000000000000
          Width = 154.000000000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1053#1053'/'#1050#1055#1055' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 259.779530000000000000
          Top = 129.559060000000000000
          Width = 759.425170000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_SVH."INN"] / [frxDB_SVH."KPP"]')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 121.779530000000000000
          Top = 111.559060000000000000
          Width = 52.000000000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1040#1076#1088#1077#1089)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 173.779530000000000000
          Top = 111.559060000000000000
          Width = 846.425170000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_SVH."FULL_ADRESS"]')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 121.779530000000000000
          Top = 129.559060000000000000
          Width = 135.000000000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1053#1053'/'#1050#1055#1055' '#1087#1088#1086#1076#1072#1074#1094#1072)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 121.779530000000000000
          Top = 93.559060000000000000
          Width = 72.000000000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1055#1088#1086#1076#1072#1074#1077#1094)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 121.779530000000000000
          Top = 147.559060000000000000
          Width = 199.559060000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1043#1088#1091#1079#1086#1086#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100' '#1080' '#1077#1075#1086' '#1072#1076#1088#1077#1089)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 317.779530000000000000
          Top = 147.559060000000000000
          Width = 702.425170000000000000
          Height = 15.874015750000000000
          StretchMode = smActualHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1086#1085' '#1078#1077)
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 121.779530000000000000
          Top = 165.559060000000000000
          Width = 199.559060000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1043#1088#1091#1079#1086#1087#1086#1083#1091#1095#1072#1090#1077#1083#1100' '#1080' '#1077#1075#1086' '#1072#1076#1088#1077#1089)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 317.779530000000000000
          Top = 164.559060000000000000
          Width = 702.425170000000000000
          Height = 42.330725750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ' [frxDBRepInfaktura."ZAYV"],[frxDBRepInfaktura."FULLADRESSZAYV"]')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 121.779530000000000000
          Top = 205.559060000000000000
          Width = 252.000000000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1050' '#1087#1083#1072#1090#1077#1078#1085#1086'-'#1088#1072#1089#1095#1105#1090#1085#1086#1084#1091' '#1076#1086#1082#1091#1084#1077#1085#1090#1091' '#8470)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 373.779530000000000000
          Top = 205.559060000000000000
          Width = 646.425170000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          VAlign = vaCenter
        end
        object frxDBDataset_SVHG142: TfrxMemoView
          AllowVectorExport = True
          Left = 197.149660000000000000
          Top = 90.385900000000000000
          Width = 823.937540000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset_SVH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDB_SVH."FULL_NAME"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 124.929190000000000000
          Top = 35.149660000000000000
          Width = 158.834260000000000000
          Height = 20.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1057#1063#1025#1058'-'#1060#1040#1050#1058#1059#1056#1040' '#8470'  ')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 597.338900000000000000
          Top = 0.086580000000001400
          Width = 442.433210000000000000
          Height = 56.015770000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#8470'1'
            
              #1082'  '#1087#1086#1089#1090#1072#1085#1086#1074#1083#1077#1085#1080#1102' '#1055#1088#1072#1074#1080#1090#1077#1083#1100#1089#1090#1074#1072' '#1056#1086#1089#1089#1080#1081#1089#1082#1086#1081' '#1060#1077#1076#1077#1088#1072#1094#1080#1080' '#1086#1090' 26 '#1076#1077#1082#1072#1073#1088 +
              #1103' 2011 '#1075'. N 1137'
            
              '('#1074' '#1088#1077#1076'. '#1087#1086#1089#1090#1072#1085#1086#1074#1083#1077#1085#1080#1081' '#1055#1088#1072#1074#1080#1090#1077#1083#1100#1089#1090#1074#1072' '#1056#1086#1089#1089#1080#1081#1089#1082#1086#1081' '#1060#1077#1076#1077#1088#1072#1094#1080#1080' '#1086#1090' 25 '#1084 +
              #1072#1103' 2017 '#1075'. '#8470' 625,'
            #1086#1090' 19 '#1072#1074#1075#1091#1089#1090#1072' 2017 '#1075'. '#8470' 981, '#1086#1090' 2 '#1072#1087#1088#1077#1083#1103' 2021 '#1075'. '#8470' 534)')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 1024.984850000000000000
          Top = 58.929190000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(1)')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 93.724490000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(2)')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 111.622140000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(2'#1072')')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 126.740260000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(2'#1073')')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 145.637910000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(3)')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 164.535560000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(4)')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 197.874150000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(5)')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 241.551330000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(6)')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 1025.882500000000000000
          Top = 260.448980000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(6'#1072')')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 1025.882500000000000000
          Top = 275.567100000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(6'#1073')')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 121.779530000000000000
          Top = 299.685220000000000000
          Width = 184.236240000000000000
          Height = 19.653545750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1042#1072#1083#1102#1090#1072': '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077', '#1082#1086#1076' ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 310.756030000000000000
          Top = 301.464566930000000000
          Width = 709.409400000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1088#1086#1089#1089#1080#1081#1089#1082#1080#1081' '#1088#1091#1073#1083#1100', 643')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 1023.882500000000000000
          Top = 292.126160000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(7)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 291.228510000000000000
          Top = 35.149660000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            '[FormatMaskText('#39'########'#39',<frxDBRepInfaktura."NOMER">)]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 381.393940000000000000
          Top = 35.149660000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1086#1090)
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 404.071120000000000000
          Top = 35.149660000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBRepInfaktura."DATE_IS"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 124.929190000000000000
          Top = 57.606370000000000000
          Width = 158.834260000000000000
          Height = 20.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1057#1055#1056#1040#1042#1051#1045#1053#1048#1045' '#8470'  ')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 1025.205320000000000000
          Top = 74.047310000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(1'#1072')')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 291.228510000000000000
          Top = 57.606370000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '--')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 381.393940000000000000
          Top = 57.606370000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1086#1090)
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 404.071120000000000000
          Top = 57.606370000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '--')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          AllowVectorExport = True
          Left = 108.094488190000000000
          Top = 25.354360000000000000
          Width = 7.559060000000000000
          Height = 318.992169920000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Top = 344.685220000000000000
          Width = 45.000000000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470
            #1087'/'#1087)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 45.000000000000000000
          Top = 344.685220000000000000
          Width = 61.661410000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076' '#1090#1086#1074#1072#1088#1072'/'
            #1088#1072#1073#1086#1090', '#1091#1089#1083#1091#1075)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          AllowVectorExport = True
          Left = 108.118110240000000000
          Top = 344.212740000000000000
          Width = 7.559060000000000000
          Height = 170.834684720000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 51.133890000000000000
          Width = 94.488250000000000000
          Height = 45.354360000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1059#1085#1080#1074#1077#1088#1089#1072#1083#1100#1085#1099#1081' '
            #1087#1077#1088#1077#1076#1072#1090#1086#1095#1085#1099#1081' '
            #1076#1086#1082#1091#1084#1077#1085#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Left = 9.779530000000000000
          Top = 115.826840000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1057#1090#1072#1090#1091#1089':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          AllowVectorExport = True
          Left = 65.252010000000000000
          Top = 113.047310000000000000
          Width = 26.456710000000000000
          Height = 26.456710000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Status]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 146.960730000000000000
          Width = 94.488250000000000000
          Height = 75.590600000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '1 - '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1072' '#1080
            #1087#1077#1088#1077#1076#1072#1090#1086#1095#1085#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
            '('#1072#1082#1090')'
            '2 - '#1087#1077#1088#1077#1076#1072#1090#1086#1095#1085#1099#1081' '
            #1076#1086#1082#1091#1084#1077#1085#1090' ('#1072#1082#1090')')
          ParentFont = False
        end
        object Memo215: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 121.732351810000000000
          Top = 321.724490000000000000
          Width = 524.126160000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088' '#1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1082#1086#1085#1090#1088#1072#1082#1090#1072', '#1076#1086#1075#1086#1074#1086#1088#1072' ('#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103') ' +
              '('#1087#1088#1080' '#1085#1072#1083#1080#1095#1080#1080'):')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo216: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 649.638041810000000000
          Top = 321.724490000000000000
          Width = 370.519480000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          VAlign = vaCenter
        end
        object Memo217: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.835321810000000000
          Top = 317.598640000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(8)')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 109.228346460000000000
          Top = 344.779732600000000000
          Width = 295.937007870000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072'('#1086#1087#1080#1089#1072#1085#1080#1077
            #1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1093' '#1088#1072#1073#1086#1090', '#1086#1082#1072#1079#1072#1085#1085#1099#1093
            #1091#1089#1083#1091#1075'), '#1080#1084#1091#1097#1077#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1087#1088#1072#1074#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 435.944960000000000000
          Top = 344.779732600000000000
          Width = 77.102362200000000000
          Height = 28.724409450000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1076#1080#1085#1080#1094#1072
            #1080#1079#1084#1077#1088#1077#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 513.283550000000000000
          Top = 344.779732600000000000
          Width = 45.000000000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083#1080'-'
            #1095#1077#1089#1090#1074#1086
            '('#1086#1073#1098#1077#1084')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 776.590600000000000000
          Top = 344.779732600000000000
          Width = 65.338590000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1091#1084#1084#1072' '#1085#1072#1083#1086#1075#1072', '#1087#1088#1077#1076#1098#1103#1074#1083#1103#1077#1084#1072#1103' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1102)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 735.488250000000000000
          Top = 344.779732600000000000
          Width = 41.102350000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1083#1086'- '
            #1075#1086#1074#1072#1103' '
            #1089#1090#1072#1074#1082#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 698.488250000000000000
          Top = 344.779732600000000000
          Width = 37.000000000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042' '#1090#1086#1084' '#1095#1080#1089#1083#1077' '#1089#1091#1084#1084#1072' '#1072#1082#1094#1080#1079#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 616.165430000000000000
          Top = 344.779732600000000000
          Width = 82.322820000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1086#1080#1084#1086#1089#1090#1100
            #1090#1086#1074#1072#1088#1086#1074' ('#1088#1072#1073#1086#1090','
            #1091#1089#1083#1091#1075'), '
            #1080#1084#1091#1097#1077#1089#1090'-'
            #1074#1077#1085#1085#1099#1093' '#1087#1088#1072#1074' '
            #1073#1077#1079' '#1085#1072#1083#1086#1075#1072' - '
            #1074#1089#1077#1075#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 558.283550000000000000
          Top = 344.779732600000000000
          Width = 57.881880000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1062#1077#1085#1072
            '('#1090#1072#1088#1080#1092')'
            #1079#1072' '
            #1077#1076#1080#1085#1080#1094#1091' '
            #1080#1079#1084#1077#1088#1077#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 842.047310000000000000
          Top = 344.779732600000000000
          Width = 66.645640000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1086#1080#1084#1086#1089#1090#1100
            #1090#1086#1074#1072#1088#1086#1074' ('#1088#1072#1073#1086#1090','
            #1091#1089#1083#1091#1075'), '
            #1080#1084#1091#1097#1077#1089#1090'-'
            #1074#1077#1085#1085#1099#1093' '#1087#1088#1072#1074)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 908.708720000000000000
          Top = 344.779732600000000000
          Width = 79.897650000000000000
          Height = 50.645679060000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1088#1072#1085#1072
            #1087#1088#1086#1080#1089#1093#1086#1078#1076#1077#1085#1080#1103
            #1090#1086#1074#1072#1088#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 988.606370000000000000
          Top = 344.779732600000000000
          Width = 75.322820000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1099#1081
            #1085#1086#1084#1077#1088' '#1076#1077#1082#1083#1072#1088#1072#1094#1080#1080
            #1085#1072' '#1090#1086#1074#1072#1088#1099' '#1080#1083#1080' '#1088#1077#1075#1080#1089#1090'-'
            #1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1087#1072#1088'-'
            #1090#1080#1080' '#1090#1086#1074#1072#1088#1072', '#1087#1086#1076#1083#1077#1078#1072#1097#1077#1075#1086
            #1087#1088#1086#1089#1083#1077#1078#1080#1074#1072#1077#1084#1086#1089#1090#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Left = 908.818895200000000000
          Top = 395.693152600000000000
          Width = 34.771653540000000000
          Height = 103.937039610000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1094#1080#1092'-'
            #1088#1086'-'
            #1074#1086#1081
            #1082#1086#1076)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          AllowVectorExport = True
          Left = 943.590570710000000000
          Top = 395.693152600000000000
          Width = 44.976373070000000000
          Height = 103.937039610000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1088#1072#1090#1082#1086#1077
            #1085#1072#1080#1084#1077'-'
            #1085#1086#1074#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 436.071120000000000000
          Top = 373.504139610000000000
          Width = 22.299212600000000000
          Height = 126.236264410000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1050#1086#1076)
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 458.614248900000000000
          Top = 373.504139610000000000
          Width = 54.425196850000000000
          Height = 126.236264410000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1091#1089#1083#1086#1074#1085#1086#1077
            #1086#1073#1086#1079#1085#1072'-'
            #1095#1077#1085#1080#1077
            '('#1085#1072#1094#1080#1086'-'
            #1085#1072#1083#1100#1085#1086#1077')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo220: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 405.630180000000000000
          Top = 344.700990000000000000
          Width = 30.236240000000000000
          Height = 154.960668980000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076
            #1074#1080#1076#1072
            #1090#1086#1074#1072
            #1088#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo223: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 120.944960000000000000
          Top = 224.456710000000000000
          Width = 138.614100000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1044#1086#1082#1091#1084#1077#1085#1090' '#1086#1073' '#1086#1090#1075#1088#1091#1079#1082#1077)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo225: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.047930000000000000
          Top = 224.330860000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(5'#1072')')
          ParentFont = False
        end
        object Memo226: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 385.732530000000000000
          Top = 222.992270000000000000
          Width = 21.448670000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #8470)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo227: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 411.968770000000000000
          Top = 224.637795280000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[FormatMaskText('#39'########'#39',<frxDBRepInfaktura."NOMER">)]')
          ParentFont = False
        end
        object Memo228: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 557.370440000000000000
          Top = 223.771800000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1086#1090)
          ParentFont = False
        end
        object Memo229: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 577.047620000000000000
          Top = 224.637795280000000000
          Width = 442.205010000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBRepInfaktura."DATE_IS"]')
          ParentFont = False
        end
        object Memo224: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 268.346630000000000000
          Top = 224.637795280000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[Doc_5a]')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          AllowVectorExport = True
          Top = 499.323022600000000000
          Width = 45.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1040)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          AllowVectorExport = True
          Left = 45.000000000000000000
          Top = 499.543492600000000000
          Width = 61.661410000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1041)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606299212598000000
          Top = 499.189178980000000000
          Width = 295.937007870000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 435.944960000000000000
          Top = 499.189178980000000000
          Width = 22.677162910000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 513.283550000000000000
          Top = 499.189178980000000000
          Width = 45.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 558.283550000000000000
          Top = 499.189178980000000000
          Width = 57.881880000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 908.818895200000000000
          Top = 499.267924020000000000
          Width = 34.771653540000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '10')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 616.165430000000000000
          Top = 499.189178980000000000
          Width = 82.322820000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 698.488250000000000000
          Top = 499.189178980000000000
          Width = 37.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 735.488250000000000000
          Top = 499.189178980000000000
          Width = 41.102350000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 776.590600000000000000
          Top = 499.189178980000000000
          Width = 65.338590000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '8')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 842.047310000000000000
          Top = 499.267924020000000000
          Width = 66.645640000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '9')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 988.606370000000000000
          Top = 499.267924020000000000
          Width = 75.322820000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '11')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          AllowVectorExport = True
          Left = 943.370100710000000000
          Top = 499.267982600000000000
          Width = 44.976377950000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '10'#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          AllowVectorExport = True
          Left = 458.614248900000000000
          Top = 499.189178980000000000
          Width = 54.425196850000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '2'#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo221: TfrxMemoView
          AllowVectorExport = True
          Left = 405.165354330709000000
          Top = 499.189178980000000000
          Width = 30.614173228346500000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '1'#1072)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 526.110504720000000000
        Top = 880.630490000000000000
        Width = 1065.827460000000000000
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 118.559060000000000000
          Top = 87.338589999999900000
          Width = 207.000000000000000000
          Height = 34.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1085#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1099#1081' '#1087#1088#1077#1076#1087#1088#1080#1085#1080#1084#1072#1090#1077#1083#1100
            #1080#1083#1080' '#1080#1085#1086#1077' '#1091#1087#1086#1083#1085#1086#1084#1086#1095#1077#1085#1085#1086#1077' '#1083#1080#1094#1086'  ')
          ParentFont = False
          WordWrap = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 332.338590000000000000
          Top = 105.338590000000000000
          Width = 73.322820000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1086#1076#1087#1080#1089#1100')')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 411.440940000000000000
          Top = 105.338590000000000000
          Width = 145.425170000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1092'.'#1080'.'#1086'.)')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 602.338900000000000000
          Top = 105.881880000001000000
          Width = 364.141620000000000000
          Height = 26.559060000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              #1056#1077#1082#1074#1080#1079#1080#1090#1099' '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1072' '#1086' '#1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1086#1081' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1080#1085#1076#1080#1074#1080#1076#1091#1072#1083 +
              #1100#1085#1086#1075#1086' '#1087#1088#1077#1076#1087#1088#1080#1085#1080#1084#1072#1090#1077#1083#1103)
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 568.629870000000000000
          Top = 86.354301420000100000
          Width = 430.385900000000000000
          Height = 19.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 118.559060000000000000
          Top = 44.779530000000000000
          Width = 206.739950000000000000
          Height = 34.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
            
              #1080#1083#1080' '#1080#1085#1086#1077' '#1091#1087#1086#1083#1085#1086#1084#1086#1095#1077#1085#1085#1086#1077' '#1083#1080#1094#1086'                                    ' +
              '                                ')
          ParentFont = False
          WordWrap = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 326.433210000000000000
          Top = 66.897650000000300000
          Width = 80.881880000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1086#1076#1087#1080#1089#1100')')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 413.094620000000000000
          Top = 66.897650000000300000
          Width = 145.425170000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1092'.'#1080'.'#1086'.)')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 568.323130000000000000
          Top = 44.779530000000000000
          Width = 187.842300000000000000
          Height = 34.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1043#1083#1072#1074#1085#1099#1081' '#1073#1091#1093#1075#1072#1083#1090#1077#1088' '
            
              #1080#1083#1080' '#1080#1085#1086#1077' '#1091#1087#1086#1083#1085#1086#1084#1086#1095#1077#1085#1085#1086#1077' '#1083#1080#1094#1086'                                    ' +
              '                                           ')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 757.047620000000000000
          Top = 67.677180000000100000
          Width = 92.220470000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1086#1076#1087#1080#1089#1100')')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 855.047620000000000000
          Top = 67.677180000000100000
          Width = 141.645640000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1092'.'#1080'.'#1086'.)')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 855.315400000000000000
          Top = 48.779530000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRepInfaktura."USERNAME"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 415.582870000000000000
          Top = 47.897650000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_SVH."FIO_RUK"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 109.228346460000000000
          Width = 506.834677400000000000
          Height = 34.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            #1042#1089#1077#1075#1086' '#1082' '#1086#1087#1083#1072#1090#1077': [TotalSumProp]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 841.700819130000000000
          Width = 66.519675280000000000
          Height = 34.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBRepInfaktura."TOTAL_SUM1">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 776.314960629921000000
          Width = 65.385826770000000000
          Height = 34.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBRepInfaktura."SUM_VAT">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063023860000000000
          Width = 82.393686140000000000
          Height = 34.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBRepInfaktura."SUMMA">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 698.456724650000000000
          Width = 77.858267716535400000
          Height = 34.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Width = 107.015770000000000000
          Height = 34.771653540000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 108.094488190000000000
          Width = 7.559060000000000000
          Height = 34.771604720000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          AllowVectorExport = True
          Left = 907.866730000000000000
          Width = 156.149660000000000000
          Height = 34.771653540000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 108.094488190000000000
          Top = 34.015770000000000000
          Width = 7.559060000000000000
          Height = 114.141734720000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 147.401670000000000000
          Width = 956.221090000000000000
          Height = 7.559060000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 45.574830000000000000
          Width = 94.488250000000000000
          Height = 45.354360000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1044#1086#1082#1091#1084#1077#1085#1090' '
            #1089#1086#1089#1090#1072#1074#1083#1077#1085' '#1085#1072
            '[TotalPages#] '#1083#1080#1089#1090#1072#1093)
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          AllowVectorExport = True
          Left = 554.709030000000000000
          Top = 241.889920000000000000
          Width = 3.779530000000000000
          Height = 284.220584720000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 158.740260000000000000
          Width = 306.141930000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1087#1077#1088#1077#1076#1072#1095#1080' ('#1089#1076#1072#1095#1080') / '#1087#1086#1083#1091#1095#1077#1085#1080#1103' ('#1087#1088#1080#1077#1084#1082#1080') ')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480520000000000000
          Top = 158.740260000000000000
          Width = 702.992580000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1044#1086#1075#1086#1074#1086#1088' '#1086#1073' '#1086#1082#1072#1079#1072#1085#1080#1080' '#1089#1082#1083#1072#1076#1089#1082#1080#1093' '#1091#1089#1083#1091#1075' [N_contract]')
          ParentFont = False
        end
        object Memo129: TfrxMemoView
          AllowVectorExport = True
          Left = 1024.252630000000000000
          Top = 162.519790000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 8 )')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          AllowVectorExport = True
          Left = 539.897960000000000000
          Top = 185.196970000000000000
          Width = 192.756030000000000000
          Height = 11.338590000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1076#1086#1075#1086#1074#1086#1088', '#1076#1086#1074#1077#1088#1077#1085#1085#1086#1089#1090#1100' '#1080' '#1076#1088'.)')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 194.315090000000000000
          Width = 204.094620000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1044#1072#1085#1085#1099#1077' '#1086' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1080#1088#1086#1074#1082#1077' '#1080' '#1075#1088#1091#1079#1077)
          ParentFont = False
        end
        object Memo160: TfrxMemoView
          AllowVectorExport = True
          Left = 215.480520000000000000
          Top = 194.315090000000000000
          Width = 805.039890000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[Repactworks_Nts]')
          ParentFont = False
        end
        object Memo161: TfrxMemoView
          AllowVectorExport = True
          Left = 1024.252630000000000000
          Top = 196.094620000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 9 )')
          ParentFont = False
        end
        object Memo162: TfrxMemoView
          AllowVectorExport = True
          Left = 211.078850000000000000
          Top = 220.771800000000000000
          Width = 805.039890000000000000
          Height = 15.118120000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '('#1090#1088#1072#1085#1089#1087#1086#1088#1090#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103', '#1087#1086#1088#1091#1095#1077#1085#1080#1077' '#1101#1082#1089#1087#1077#1076#1080#1090#1086#1088#1091', '#1101#1082#1089#1087#1077#1076#1080#1090#1086#1088#1089#1082#1072#1103' /' +
              ' '#1089#1082#1083#1072#1076#1089#1082#1072#1103' '#1088#1072#1089#1087#1080#1089#1082#1072' '#1080' '#1076#1088'. / '#1084#1072#1089#1089#1072' '#1085#1077#1090#1090#1086'/'#1073#1088#1091#1090#1090#1086' '#1075#1088#1091#1079#1072', '#1077#1089#1083#1080' '#1085#1077' '#1087#1088 +
              #1080#1074#1077#1076#1077#1085#1099' '#1089#1089#1099#1083#1082#1080' '#1085#1072' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099', '#1089#1086#1076#1077#1088#1078#1072#1097#1080#1077' '#1101#1090#1080' '#1089#1074#1077#1076#1077#1085#1080 +
              #1103'))')
          ParentFont = False
        end
        object Memo163: TfrxMemoView
          AllowVectorExport = True
          Left = 9.559060000000000000
          Top = 241.889920000000000000
          Width = 374.173470000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1058#1086#1074#1072#1088' ('#1075#1088#1091#1079') '#1087#1077#1088#1077#1076#1072#1083' / '#1091#1089#1083#1091#1075#1080', '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1088#1072#1073#1086#1090', '#1087#1088#1072#1074#1072' '#1089#1076#1072#1083)
          ParentFont = False
        end
        object Memo164: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 241.889920000000000000
          Width = 374.173470000000000000
          Height = 15.118120000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1058#1086#1074#1072#1088' ('#1075#1088#1091#1079') '#1087#1086#1083#1091#1095#1080#1083' / '#1091#1089#1083#1091#1075#1080', '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1088#1072#1073#1086#1090', '#1087#1088#1072#1074#1072' '#1087#1088#1080#1085#1103#1083)
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          AllowVectorExport = True
          Left = 173.582870000000000000
          Top = 281.126160000000000000
          Width = 133.795300000000000000
          Height = 14.220470000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1086#1076#1087#1080#1089#1100')')
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          AllowVectorExport = True
          Left = 325.244280000000000000
          Top = 281.126160000000000000
          Width = 145.425170000000000000
          Height = 14.220470000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1092'.'#1080'.'#1086'.)')
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          AllowVectorExport = True
          Left = 327.732530000000000000
          Top = 262.126160000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_SVH."FIO_RUK"]')
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 281.126160000000000000
          Width = 145.425170000000000000
          Height = 14.220470000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1076#1086#1083#1078#1085#1086#1089#1090#1100')')
          ParentFont = False
        end
        object Memo169: TfrxMemoView
          AllowVectorExport = True
          Left = 10.047310000000000000
          Top = 262.126160000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_SVH."DOLJ_RUK"]')
          ParentFont = False
        end
        object Memo170: TfrxMemoView
          AllowVectorExport = True
          Left = 774.866730000000000000
          Top = 280.126160000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1086#1076#1087#1080#1089#1100')')
          ParentFont = False
        end
        object Memo171: TfrxMemoView
          AllowVectorExport = True
          Left = 877.394250000000000000
          Top = 280.126160000000000000
          Width = 141.645640000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1092'.'#1080'.'#1086'.)')
          ParentFont = False
        end
        object Memo172: TfrxMemoView
          AllowVectorExport = True
          Left = 876.102970000000000000
          Top = 261.126160000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRepInfaktura."CHIEF_FAM"]')
          ParentFont = False
        end
        object Memo173: TfrxMemoView
          AllowVectorExport = True
          Left = 567.268090000000000000
          Top = 280.126160000000000000
          Width = 202.118120000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1076#1086#1083#1078#1085#1086#1089#1090#1100')')
          ParentFont = False
        end
        object Memo174: TfrxMemoView
          AllowVectorExport = True
          Left = 569.756340000000000000
          Top = 261.126160000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRepInfaktura."CHIEF_DOLJ"]')
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 262.126160000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 10 )')
          ParentFont = False
        end
        object Memo176: TfrxMemoView
          AllowVectorExport = True
          Left = 1020.811690000000000000
          Top = 264.905690000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 15 )')
          ParentFont = False
        end
        object Memo177: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 298.480520000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBRepInfaktura."DATE_IS"]')
          ParentFont = False
        end
        object Memo178: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 299.700990000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1086#1090#1075#1088#1091#1079#1082#1080', '#1087#1077#1088#1077#1076#1072#1095#1080' ('#1089#1076#1072#1095#1080')')
          ParentFont = False
        end
        object Memo180: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 299.921460000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' ('#1087#1088#1080#1077#1084#1082#1080')')
          ParentFont = False
        end
        object Memo181: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 299.700990000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 11 )')
          ParentFont = False
        end
        object Memo182: TfrxMemoView
          AllowVectorExport = True
          Left = 1024.252630000000000000
          Top = 298.700990000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 16 )')
          ParentFont = False
        end
        object Memo183: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 321.937230000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1080#1103' '#1086#1073' '#1086#1090#1075#1088#1091#1079#1082#1077', '#1087#1077#1088#1077#1076#1072#1095#1077)
          ParentFont = False
        end
        object Memo184: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 341.173470000000000000
          Width = 464.882190000000000000
          Height = 15.118120000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo185: TfrxMemoView
          AllowVectorExport = True
          Left = 479.000310000000000000
          Top = 337.614410000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 12 )')
          ParentFont = False
        end
        object Memo186: TfrxMemoView
          AllowVectorExport = True
          Left = 18.322820000000000000
          Top = 356.071120000000000000
          Width = 404.409710000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '('#1089#1089#1099#1083#1082#1080' '#1085#1072' '#1085#1077#1086#1090#1098#1077#1084#1083#1077#1084#1099#1077' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103', '#1089#1086#1087#1091#1090#1089#1090#1074#1091#1102#1097#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099', '#1080#1085#1099 +
              #1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099' '#1080' '#1090'.'#1087'.)')
          ParentFont = False
        end
        object Memo187: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 320.716760000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1087#1086#1083#1091#1095#1077#1085#1080#1080', '#1087#1088#1080#1077#1084#1082#1077)
          ParentFont = False
        end
        object Memo188: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 340.953000000000000000
          Width = 453.543600000000000000
          Height = 15.118120000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo189: TfrxMemoView
          AllowVectorExport = True
          Left = 1023.252630000000000000
          Top = 337.393940000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 17 )')
          ParentFont = False
        end
        object Memo190: TfrxMemoView
          AllowVectorExport = True
          Left = 566.354670000000000000
          Top = 356.850650000000000000
          Width = 457.323130000000000000
          Height = 15.118120000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '('#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1085#1072#1083#1080#1095#1080#1080'/'#1086#1090#1089#1091#1090#1089#1090#1074#1080#1080' '#1087#1088#1077#1090#1077#1085#1079#1080#1081', '#1089#1089#1099#1083#1082#1080' '#1085#1072' '#1085#1077#1086#1090#1098#1077#1084#1083#1077#1084 +
              #1099#1077' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103', '#1080' '#1076#1088'. '#1076#1086#1082#1091#1084#1077#1085#1090#1099' )')
          ParentFont = False
        end
        object Memo192: TfrxMemoView
          AllowVectorExport = True
          Left = 0.881880000000000000
          Top = 370.409710000000000000
          Width = 438.425480000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081' '#1079#1072' '#1087#1088#1072#1074#1080#1083#1100#1085#1086#1089#1090#1100' '#1086#1092#1086#1088#1084#1083#1077#1085#1080#1103' '#1092#1072#1082#1090#1072' '#1093#1086#1079#1103#1081#1089#1090#1074#1077#1085#1085#1086#1081' '#1078#1080#1079 +
              #1085#1080)
          ParentFont = False
        end
        object Memo193: TfrxMemoView
          AllowVectorExport = True
          Left = 167.244280000000000000
          Top = 416.645950000000000000
          Width = 133.795300000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1086#1076#1087#1080#1089#1100')')
          ParentFont = False
        end
        object Memo194: TfrxMemoView
          AllowVectorExport = True
          Left = 318.905690000000000000
          Top = 416.645950000000000000
          Width = 134.086580000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1092'.'#1080'.'#1086'.)')
          ParentFont = False
        end
        object Memo195: TfrxMemoView
          AllowVectorExport = True
          Left = 321.393940000000000000
          Top = 397.645950000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRepInfaktura."USERNAME"]')
          ParentFont = False
        end
        object Memo196: TfrxMemoView
          AllowVectorExport = True
          Left = 1.220470000000000000
          Top = 416.645950000000000000
          Width = 145.425170000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1076#1086#1083#1078#1085#1086#1089#1090#1100')')
          ParentFont = False
        end
        object Memo197: TfrxMemoView
          AllowVectorExport = True
          Left = 3.708720000000000000
          Top = 397.645950000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRepInfaktura."USERDOLJ"]')
          ParentFont = False
        end
        object Memo198: TfrxMemoView
          AllowVectorExport = True
          Left = 477.441250000000000000
          Top = 401.425480000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 13 )')
          ParentFont = False
        end
        object Memo191: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 372.189240000000000000
          Width = 438.425480000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081' '#1079#1072' '#1087#1088#1072#1074#1080#1083#1100#1085#1086#1089#1090#1100' '#1086#1092#1086#1088#1084#1083#1077#1085#1080#1103' '#1092#1072#1082#1090#1072' '#1093#1086#1079#1103#1081#1089#1090#1074#1077#1085#1085#1086#1081' '#1078#1080#1079 +
              #1085#1080)
          ParentFont = False
        end
        object Memo204: TfrxMemoView
          AllowVectorExport = True
          Left = 1020.811690000000000000
          Top = 403.205010000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 18 )')
          ParentFont = False
        end
        object Memo205: TfrxMemoView
          AllowVectorExport = True
          Top = 439.220780000000000000
          Width = 555.590910000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1101#1082#1086#1085#1086#1084#1080#1095#1077#1089#1082#1086#1075#1086' '#1089#1091#1073#1098#1077#1082#1090#1072' - '#1089#1086#1089#1090#1072#1074#1080#1090#1077#1083#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072'( '#1074' ' +
              #1090'.'#1095'. '#1082#1086#1084#1080#1089#1089#1080#1086#1085#1077#1088#1072' / '#1072#1075#1077#1085#1090#1072')')
          ParentFont = False
        end
        object Memo206: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 440.220780000000000000
          Width = 555.590910000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1101#1082#1086#1085#1086#1084#1080#1095#1077#1089#1082#1086#1075#1086' '#1089#1091#1073#1098#1077#1082#1090#1072' - '#1089#1086#1089#1090#1072#1074#1080#1090#1077#1083#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072)
          ParentFont = False
        end
        object Memo207: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 461.897960000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset_SVH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              '[frxDB_SVH."SVH_OWNER"], '#1048#1053#1053'/'#1050#1055#1055'  [frxDB_SVH."INN"] / [frxDB_SVH' +
              '."KPP"] ')
          ParentFont = False
        end
        object Memo208: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 461.897960000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 14 )')
          ParentFont = False
        end
        object Memo209: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 480.016080000000000000
          Width = 404.409710000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '( '#1084#1086#1078#1077#1090' '#1085#1077' '#1079#1072#1087#1086#1083#1085#1103#1090#1100#1089#1103' '#1087#1088#1080' '#1087#1088#1086#1089#1090#1072#1074#1083#1077#1085#1080#1080' '#1087#1077#1095#1072#1090#1080' '#1074' '#1052'.'#1055'., '#1084#1086#1078#1077#1090' '#1073#1099#1090 +
              #1100' '#1091#1082#1072#1079#1072#1085' '#1048#1053#1053' / '#1050#1055#1055' )')
          ParentFont = False
        end
        object Memo210: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 462.897960000000000000
          Width = 453.543600000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset_SVH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              '[frxDBRepInfaktura."ZAYV"], '#1048#1053#1053'/'#1050#1055#1055'  [frxDBRepInfaktura."INN"]/[' +
              'frxDBRepInfaktura."KPP"] ')
          ParentFont = False
        end
        object Memo211: TfrxMemoView
          AllowVectorExport = True
          Left = 1024.252630000000000000
          Top = 462.897960000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 19 )')
          ParentFont = False
        end
        object Memo212: TfrxMemoView
          AllowVectorExport = True
          Left = 593.724800000000000000
          Top = 481.016080000000000000
          Width = 404.409710000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '( '#1084#1086#1078#1077#1090' '#1085#1077' '#1079#1072#1087#1086#1083#1085#1103#1090#1100#1089#1103' '#1087#1088#1080' '#1087#1088#1086#1089#1090#1072#1074#1083#1077#1085#1080#1080' '#1087#1077#1095#1072#1090#1080' '#1074' '#1052'.'#1055'., '#1084#1086#1078#1077#1090' '#1073#1099#1090 +
              #1100' '#1091#1082#1072#1079#1072#1085' '#1048#1053#1053' / '#1050#1055#1055' )')
          ParentFont = False
        end
        object Memo213: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 499.693260000000000000
          Width = 30.236240000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1052'.'#1055'.')
          ParentFont = False
        end
        object Memo214: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 500.693260000000000000
          Width = 30.236240000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1052'.'#1055'.')
          ParentFont = False
        end
        object Memo179: TfrxMemoView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Top = 298.700990000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBRepInfaktura."DATE_IS"]')
          ParentFont = False
        end
        object Memo199: TfrxMemoView
          AllowVectorExport = True
          Left = 770.748610000000000000
          Top = 421.425480000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1086#1076#1087#1080#1089#1100')')
          ParentFont = False
        end
        object Memo200: TfrxMemoView
          AllowVectorExport = True
          Left = 873.276130000000000000
          Top = 421.425480000000000000
          Width = 141.645640000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1092'.'#1080'.'#1086'.)')
          ParentFont = False
        end
        object Memo201: TfrxMemoView
          AllowVectorExport = True
          Left = 871.984850000000000000
          Top = 402.425480000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRepInfaktura."CHIEF_FAM"]')
          ParentFont = False
        end
        object Memo202: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 421.425480000000000000
          Width = 202.118120000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1076#1086#1083#1078#1085#1086#1089#1090#1100')')
          ParentFont = False
        end
        object Memo203: TfrxMemoView
          AllowVectorExport = True
          Left = 565.638220000000000000
          Top = 402.425480000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRepInfaktura."CHIEF_DOLJ"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 228.267780000000000000
        Top = 555.590910000000000000
        Width = 1065.827460000000000000
        PrintOnFirstPage = False
        object Memo132: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606299210000000000
          Top = 212.188976380000000000
          Width = 295.937007870000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          AllowVectorExport = True
          Left = 435.724490000000000000
          Top = 212.188976380000000000
          Width = 22.677162910000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          AllowVectorExport = True
          Left = 513.063080000000000000
          Top = 212.188976377953000000
          Width = 45.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          AllowVectorExport = True
          Left = 558.063080000000000000
          Top = 212.188976380000000000
          Width = 57.881880000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          AllowVectorExport = True
          Left = 908.598425200000000000
          Top = 212.267721420000000000
          Width = 34.771653540000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '10')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          AllowVectorExport = True
          Left = 615.944960000000000000
          Top = 212.188976377953000000
          Width = 82.322820000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          AllowVectorExport = True
          Left = 698.267780000000000000
          Top = 212.188976377953000000
          Width = 37.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          AllowVectorExport = True
          Left = 735.267780000000000000
          Top = 212.188976377953000000
          Width = 41.102350000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo140: TfrxMemoView
          AllowVectorExport = True
          Left = 776.370130000000000000
          Top = 212.188976380000000000
          Width = 65.338590000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '8')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          AllowVectorExport = True
          Left = 841.826840000000000000
          Top = 212.267721420000000000
          Width = 66.645640000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '9')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          AllowVectorExport = True
          Left = 988.385900000000000000
          Top = 212.267721420000000000
          Width = 75.322820000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '11')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          AllowVectorExport = True
          Left = 109.385900000000000000
          Top = 56.779530000000000000
          Width = 295.937007870000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072'('#1086#1087#1080#1089#1072#1085#1080#1077
            #1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1093' '#1088#1072#1073#1086#1090', '#1086#1082#1072#1079#1072#1085#1085#1099#1093
            #1091#1089#1083#1091#1075'), '#1080#1084#1091#1097#1077#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1087#1088#1072#1074#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          AllowVectorExport = True
          Left = 435.724490000000000000
          Top = 56.779530000000100000
          Width = 77.102362200000000000
          Height = 28.724409450000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1076#1080#1085#1080#1094#1072
            #1080#1079#1084#1077#1088#1077#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          AllowVectorExport = True
          Left = 513.259842520000000000
          Top = 56.779530000000000000
          Width = 45.000000000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083#1080'-'
            #1095#1077#1089#1090#1074#1086
            '('#1086#1073#1098#1077#1084')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo146: TfrxMemoView
          AllowVectorExport = True
          Left = 776.370130000000000000
          Top = 56.779530000000000000
          Width = 65.338590000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1091#1084#1084#1072' '#1085#1072#1083#1086#1075#1072', '#1087#1088#1077#1076#1098#1103#1074#1083#1103#1077#1084#1072#1103' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1102)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          AllowVectorExport = True
          Left = 735.267780000000000000
          Top = 56.779530000000000000
          Width = 41.102350000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1083#1086'- '
            #1075#1086#1074#1072#1103' '
            #1089#1090#1072#1074#1082#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          AllowVectorExport = True
          Left = 698.267780000000000000
          Top = 56.779530000000000000
          Width = 37.000000000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042' '#1090#1086#1084' '#1095#1080#1089#1083#1077' '#1089#1091#1084#1084#1072' '#1072#1082#1094#1080#1079#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo149: TfrxMemoView
          AllowVectorExport = True
          Left = 615.944960000000000000
          Top = 56.779530000000000000
          Width = 82.322820000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1086#1080#1084#1086#1089#1090#1100
            #1090#1086#1074#1072#1088#1086#1074' ('#1088#1072#1073#1086#1090','
            #1091#1089#1083#1091#1075'), '
            #1080#1084#1091#1097#1077#1089#1090'-'
            #1074#1077#1085#1085#1099#1093' '#1087#1088#1072#1074' '
            #1073#1077#1079' '#1085#1072#1083#1086#1075#1072' - '
            #1074#1089#1077#1075#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo150: TfrxMemoView
          AllowVectorExport = True
          Left = 558.063080000000000000
          Top = 56.779530000000000000
          Width = 57.881880000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1062#1077#1085#1072
            '('#1090#1072#1088#1080#1092')'
            #1079#1072' '
            #1077#1076#1080#1085#1080#1094#1091' '
            #1080#1079#1084#1077#1088#1077#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo151: TfrxMemoView
          AllowVectorExport = True
          Left = 841.826840000000000000
          Top = 56.779530000000000000
          Width = 66.645640000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1086#1080#1084#1086#1089#1090#1100
            #1090#1086#1074#1072#1088#1086#1074' ('#1088#1072#1073#1086#1090','
            #1091#1089#1083#1091#1075'), '
            #1080#1084#1091#1097#1077#1089#1090'-'
            #1074#1077#1085#1085#1099#1093' '#1087#1088#1072#1074)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo152: TfrxMemoView
          AllowVectorExport = True
          Left = 908.488250000000000000
          Top = 56.779530000000100000
          Width = 79.897650000000000000
          Height = 39.307089060000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1088#1072#1085#1072
            #1087#1088#1086#1080#1089#1093#1086#1078#1076#1077#1085#1080#1103
            #1090#1086#1074#1072#1088#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo153: TfrxMemoView
          AllowVectorExport = True
          Left = 988.385900000000000000
          Top = 56.779530000000000000
          Width = 75.322820000000000000
          Height = 154.960629921260000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1085#1086#1084#1077#1088
            #1076#1077#1082#1083#1072#1088#1072#1094#1080#1080' '#1085#1072' '#1090#1086#1074#1072#1088#1099
            #1080#1083#1080' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1099#1081
            #1085#1086#1084#1077#1088' '#1087#1072#1088#1090#1080#1080' '#1090#1086#1074#1072#1088#1072','
            #1087#1086#1076#1083#1077#1078#1072#1097#1077#1075#1086' '#1087#1088#1086#1089#1083#1077'-'
            #1078#1080#1074#1072#1077#1084#1086#1089#1090#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo154: TfrxMemoView
          AllowVectorExport = True
          Left = 908.598425200000000000
          Top = 96.354360000000000000
          Width = 34.771653540000000000
          Height = 115.275629610000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1094#1080#1092'-'
            #1088#1086'-'
            #1074#1086#1081
            #1082#1086#1076)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo155: TfrxMemoView
          AllowVectorExport = True
          Left = 943.370100710000000000
          Top = 96.354360000000000000
          Width = 44.976373070000000000
          Height = 115.275629610000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1088#1072#1090#1082#1086#1077
            #1085#1072#1080#1084#1077'-'
            #1085#1086#1074#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo156: TfrxMemoView
          AllowVectorExport = True
          Left = 943.149630710000000000
          Top = 212.267780000000000000
          Width = 44.976377950000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '10'#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo157: TfrxMemoView
          AllowVectorExport = True
          Left = 435.850650000000000000
          Top = 85.503937010000000000
          Width = 22.677165350000000000
          Height = 126.236264410000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1050#1086#1076)
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          AllowVectorExport = True
          Left = 458.393778900000000000
          Top = 212.188976380000000000
          Width = 54.425196850000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '2'#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo159: TfrxMemoView
          AllowVectorExport = True
          Left = 458.393778900000000000
          Top = 85.503937010000000000
          Width = 54.425196850000000000
          Height = 126.236264410000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1091#1089#1083#1086#1074#1085#1086#1077
            #1086#1073#1086#1079#1085#1072'-'
            #1095#1077#1085#1080#1077
            '('#1085#1072#1094#1080#1086'-'
            #1085#1072#1083#1100#1085#1086#1077')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 212.188976380000000000
          Width = 45.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1040)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 45.000000000000000000
          Top = 212.188976380000000000
          Width = 61.661410000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1041)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = 56.779530000000000000
          Width = 45.000000000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470
            #1087'/'#1087)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 45.000000000000000000
          Top = 56.779530000000000000
          Width = 61.661410000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076' '#1090#1086#1074#1072#1088#1072'/'
            #1088#1072#1073#1086#1090', '#1091#1089#1083#1091#1075)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 108.118110240000000000
          Top = 56.834570000000000000
          Width = 3.779530000000000000
          Height = 170.834684720000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 2.645640000000000000
          Top = 34.779530000000100000
          Width = 653.858690000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1059#1085#1080#1074#1077#1088#1089#1072#1083#1100#1085#1099#1081' '#1087#1077#1088#1077#1076#1072#1090#1086#1095#1085#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090' '#8470' [FormatMaskText('#39'########'#39 +
              ',<frxDBRepInfaktura."NOMER">)] '#1086#1090' [frxDBRepInfaktura."DATE_IS"]')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Left = 965.559680000000000000
          Top = 34.779530000000100000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1051#1080#1089#1090' [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo218: TfrxMemoView
          AllowVectorExport = True
          Left = 405.409710000000000000
          Top = 56.700787400000000000
          Width = 30.614173230000000000
          Height = 154.960668980000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076
            #1074#1080#1076#1072
            #1090#1086#1074#1072
            #1088#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo219: TfrxMemoView
          AllowVectorExport = True
          Left = 405.165354330000000000
          Top = 212.188976380000000000
          Width = 30.614173230000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '1'#1072)
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDB_TS: TfrxDBDataset
    UserName = 'frxDB_TS'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_TICKET=ID_TICKET'
      'N_TS=N_TS'
      'KOD_TS=KOD_TS'
      'FIO_DRIVER=FIO_DRIVER'
      'TARGET=TARGET'
      'PHONE=PHONE'
      'CRASHES=CRASHES'
      'N_TRAILER=N_TRAILER'
      'N_TRAILER1=N_TRAILER1'
      'NAME=NAME'
      'NAME1=NAME1'
      'NUM_PARK=NUM_PARK')
    OpenDataSource = False
    DataSet = DM.Qry_Rep_TS
    BCDToCurrency = False
    Left = 33
    Top = 111
  end
  object frxDB_Parts: TfrxDBDataset
    UserName = 'frxDB_Parts'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_TICKET=ID_TICKET'
      'ID_OWNER=ID_OWNER'
      'NPP=NPP'
      'STEP_CTRL=STEP_CTRL'
      'PAY_CONTROL=PAY_CONTROL'
      'ID1=ID1'
      'N_TICKET=N_TICKET'
      'DT_IS=DT_IS'
      'USERNAME=USERNAME'
      'STATUS=STATUS'
      'STEP_CTRL1=STEP_CTRL1'
      'ID_CARRIER=ID_CARRIER'
      'CUST_PROC=CUST_PROC'
      'POP=POP'
      'CUST_USER=CUST_USER'
      'DELETE_FLAG=DELETE_FLAG'
      'ELECTRICITY=ELECTRICITY'
      'PART_NOMER=PART_NOMER'
      'ZAYV=ZAYV'
      'INN=INN')
    OpenDataSource = False
    DataSet = DM.Qry_Rep_Part
    BCDToCurrency = False
    Left = 33
    Top = 63
  end
  object frxDB_TP: TfrxDBDataset
    UserName = 'frxDB_TP'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_PART=ID_PART'
      'ID_TICKET=ID_TICKET'
      'NPP=NPP'
      'STOIMOST=STOIMOST'
      'GOODS_CAT=GOODS_CAT'
      'VALUTA=VALUTA'
      'BROKER=BROKER'
      'BRUTTO=BRUTTO'
      'TRAN=TRAN'
      'ID_SHIPPER=ID_SHIPPER'
      'ID_SCALE=ID_SCALE'
      'TP_MOVE_CBX_CODE=TP_MOVE_CBX_CODE'
      'PLACES=PLACES'
      'GOODS=GOODS'
      'VAL=VAL'
      'DT_ACTION=DT_ACTION'
      'USERNAME=USERNAME'
      'ACTION_NAME=ACTION_NAME')
    DataSet = DM.Qry_Rep_TP
    BCDToCurrency = False
    Left = 33
    Top = 159
  end
  object frxDB_Step1: TfrxDBDataset
    UserName = 'frxDB_Step1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ACTION_CODE=ACTION_CODE'
      'USERNAME=USERNAME'
      'DT_ACTION=DT_ACTION')
    OpenDataSource = False
    DataSet = DM.Qry_Rep_Step1
    BCDToCurrency = False
    Left = 33
    Top = 207
  end
  object frxDB_Step2: TfrxDBDataset
    UserName = 'frxDB_Step2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ACTION_CODE=ACTION_CODE'
      'USERNAME=USERNAME'
      'DT_ACTION=DT_ACTION')
    OpenDataSource = False
    DataSet = DM.Qry_Rep_Step2
    BCDToCurrency = False
    Left = 33
    Top = 260
  end
  object frxPDFExport1: TfrxPDFExport
    FileName = 'C:\Users\akondorsky\Desktop\'#1054#1090#1095#1077#1090' '#1087#1086' '#1076#1077#1073#1080#1090#1086#1088#1072#1084'.pdf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 465
    Top = 24
  end
  object frxXLSExport1: TfrxXLSExport
    FileName = 
      'C:\Users\akondorsky\Documents\RAD Studio\Projects\E-TICKET\Win32' +
      '\Debug\rep_kpp1.xls'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = False
    SuppressPageHeadersFooters = True
    Left = 569
    Top = 24
  end
  object frxDB_SVH: TfrxDBDataset
    UserName = 'frxDB_SVH'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'CUST_KOD=CUST_KOD'
      'CUST_NAME=CUST_NAME'
      'LIC_NUM=LIC_NUM'
      'LIC_DATE=LIC_DATE'
      'SVH_NAME=SVH_NAME'
      'SVH_POST=SVH_POST'
      'SVH_REGION=SVH_REGION'
      'SVH_CITY=SVH_CITY'
      'SVH_HOUSE=SVH_HOUSE'
      'SVH_PHONES=SVH_PHONES'
      'SVH_FAXES=SVH_FAXES'
      'SVH_OWNER=SVH_OWNER'
      'KPP=KPP'
      'INN=INN'
      'OKPO=OKPO'
      'OGRN=OGRN'
      'DOLJ_RUK=DOLJ_RUK'
      'FIO_RUK_FULL=FIO_RUK_FULL'
      'FIO_RUK=FIO_RUK'
      'SCHET_R=SCHET_R'
      'KORSCHET_R=KORSCHET_R'
      'BIK=BIK'
      'BANK=BANK'
      'STATUS_LIC=STATUS_LIC'
      'SVH_STREET=SVH_STREET'
      'FULL_NAME=FULL_NAME'
      'FULL_ADRESS=FULL_ADRESS')
    DataSet = DM.Qry_SVH
    BCDToCurrency = False
    Left = 33
    Top = 311
  end
  object frxDB_WhActIn: TfrxDBDataset
    UserName = 'frxDB_WhActIn'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DT=DT'
      'WH_TYPE=WH_TYPE'
      'NOMER_TP=NOMER_TP'
      'GOODS_NAME=GOODS_NAME'
      'PLACES_KOL_DOC=PLACES_KOL_DOC'
      'PLACES_KOL_FACT=PLACES_KOL_FACT'
      'WEIGHT_DOC=WEIGHT_DOC'
      'WEIGHT_FACT=WEIGHT_FACT'
      'PLOMBS=PLOMBS'
      'NOTE=NOTE'
      'CLIENT_NAME=CLIENT_NAME'
      'CLIENT_DOLJ=CLIENT_DOLJ'
      'CLIENT_PHONE=CLIENT_PHONE'
      'KEEPER_NAME=KEEPER_NAME'
      'KEEPER_DOLJ=KEEPER_DOLJ'
      'SROK=SROK'
      'PLACE_NUM=PLACE_NUM'
      'N_TS=N_TS'
      'DEL_FLAG=DEL_FLAG'
      'SIGN_NUMBER=SIGN_NUMBER'
      'ID_TP=ID_TP'
      'ZAYV=ZAYV')
    DataSet = DM.Qry_RepWhIn
    BCDToCurrency = False
    Left = 33
    Top = 367
  end
  object frxDB_RepDo1: TfrxDBDataset
    UserName = 'frxDB_RepDo1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_DO1=ID_DO1'
      'N_TTN=N_TTN'
      'SVH_NUM=SVH_NUM'
      'SVH_PLACE=SVH_PLACE'
      'G31_1=G31_1'
      'G31_2=G31_2'
      'G32=G32'
      'G33=G33'
      'G221=G221'
      'G42=G42'
      'PRIM=PRIM'
      'G31_D2=G31_D2'
      'G35=G35'
      'UNSHIPPED=UNSHIPPED'
      'G31_2_P=G31_2_P'
      'G31_2_OST=G31_2_OST'
      'G35_OST=G35_OST'
      'G42_OST=G42_OST'
      'DATE_IN=DATE_IN'
      'TIME_IN=TIME_IN'
      'G073=G073'
      'G072=G072'
      'G14FAM=G14FAM'
      'G14DOLJ=G14DOLJ'
      'C_NAME=C_NAME'
      'SVH_OWNER=SVH_OWNER'
      'LIC_NUM=LIC_NUM'
      'LIC_DATE=LIC_DATE'
      'VIDTRANS=VIDTRANS'
      'NTRANS=NTRANS'
      'ID1=ID1'
      'ID_DO11=ID_DO11'
      'N_TD=N_TD'
      'NAME=NAME'
      'NDOC=NDOC'
      'DDOC=DDOC'
      'TYPE_DOC=TYPE_DOC')
    DataSet = DM.Qry_RepDo1
    BCDToCurrency = False
    Left = 33
    Top = 415
  end
  object frxDB_raspiska: TfrxDBDataset
    UserName = 'frxDB_raspiska'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_DO1=ID_DO1'
      'NAME=NAME'
      'NDOC=NDOC'
      'DDOC=DDOC'
      'G073=G073')
    DataSet = DM.Qry_raspiska
    BCDToCurrency = False
    Left = 33
    Top = 463
  end
  object frxDBRepDo2: TfrxDBDataset
    UserName = 'frxDBRepDo2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_DO2=ID_DO2'
      'G31_1=G31_1'
      'G32=G32'
      'G32_N=G32_N'
      'G33=G33'
      'G221=G221'
      'G31_2=G31_2'
      'G42=G42'
      'G35=G35'
      'G31_2_P=G31_2_P'
      'PRIM=PRIM'
      'ID_TOV_DO1=ID_TOV_DO1'
      'G073=G073'
      'G072=G072'
      'R_NAME=R_NAME'
      'G321=G321'
      'SVH_NUM=SVH_NUM'
      'G31_11=G31_11'
      'G351=G351'
      'G421=G421'
      'G31_21=G31_21'
      'G31_D2=G31_D2'
      'G2211=G2211'
      'G31_2_OST=G31_2_OST'
      'G35_OST=G35_OST'
      'G42_OST=G42_OST'
      'DATE_IN=DATE_IN'
      'TIME_IN=TIME_IN'
      'LIC_NUM=LIC_NUM'
      'LIC_DATE=LIC_DATE'
      'SVH_OWNER=SVH_OWNER'
      'ID1=ID1'
      'ID_DO1=ID_DO1'
      'DO2_STATN=DO2_STATN'
      'G02_2=G02_2'
      'G02_3=G02_3'
      'ID_SVH=ID_SVH'
      'G0721=G0721'
      'ID_ACT_OUT=ID_ACT_OUT')
    DataSet = DM.Qry_RepDo2
    BCDToCurrency = False
    Left = 81
    Top = 63
  end
  object frxDB_Usl: TfrxDBDataset
    UserName = 'frxDB_Usl'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_PART=ID_PART'
      'ID_TICKET=ID_TICKET'
      'ID_USL=ID_USL'
      'KOL_USLUG=KOL_USLUG'
      'NOTE=NOTE'
      'USERNAME=USERNAME'
      'DT_ACTION=DT_ACTION'
      'DAYS=DAYS'
      'CHECKED=CHECKED'
      'DEL_FLAG=DEL_FLAG'
      'TS_FLAG=TS_FLAG'
      'USLUGA=USLUGA'
      'USL_CHECK=USL_CHECK'
      'DEL_FLAG_HUMAN=DEL_FLAG_HUMAN'
      'COST=COST')
    OpenDataSource = False
    DataSet = DM.Qry_Usl
    BCDToCurrency = False
    Left = 81
    Top = 111
  end
  object frx_RepWhOut: TfrxDBDataset
    UserName = 'frx_RepWhOut'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NPP=NPP'
      'DT=DT'
      'CLIENT_NAME=CLIENT_NAME'
      'CLIENT_DOLJ=CLIENT_DOLJ'
      'KEEPER_NAME=KEEPER_NAME'
      'KEEPER_DOLJ=KEEPER_DOLJ'
      'WEIGHT=WEIGHT'
      'PLACES_KOL=PLACES_KOL'
      'ID_DO2=ID_DO2'
      'NOTE=NOTE'
      'ID_TP=ID_TP'
      'ID_ACTIN=ID_ACTIN'
      'CBXTOCBX=CBXTOCBX'
      'DT_PRINT=DT_PRINT'
      'DATE_ACT=DATE_ACT'
      'NOMER_TP=NOMER_TP'
      'GOODS_NAME=GOODS_NAME'
      'SIGN_NUMBER=SIGN_NUMBER'
      'WH_TYPE=WH_TYPE'
      'ZAYV=ZAYV')
    OpenDataSource = False
    DataSet = DM.Qry_RepWhOut
    BCDToCurrency = False
    Left = 81
    Top = 159
  end
  object frxDB_Step4: TfrxDBDataset
    UserName = 'frxDB_Step4'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ACTION_CODE=ACTION_CODE'
      'USERNAME=USERNAME'
      'DT_ACTION=DT_ACTION')
    OpenDataSource = False
    DataSet = DM.Qry_Rep_Step4
    BCDToCurrency = False
    Left = 81
    Top = 212
  end
  object frxDB_Step5: TfrxDBDataset
    UserName = 'frxDB_Step5'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ACTION_CODE1=ACTION_CODE1'
      'USERNAME=USERNAME'
      'DT_ACTION=DT_ACTION'
      'NPP_TP=NPP_TP'
      'ACTION_NAME=ACTION_NAME')
    OpenDataSource = False
    DataSet = DM.Qry_Rep_Step5
    BCDToCurrency = False
    Left = 89
    Top = 260
  end
  object frxDBRepInfaktura: TfrxDBDataset
    UserName = 'frxDBRepInfaktura'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NOMER=NOMER'
      'DATE_IS=DATE_IS'
      'PASS_FLAG=PASS_FLAG'
      'TOTAL_SUM=TOTAL_SUM'
      'TOTAL_VAT=TOTAL_VAT'
      'EXP_FLAG=EXP_FLAG'
      'USER_NAME=USER_NAME'
      'R_NAME=R_NAME'
      'PLAT_NAME=PLAT_NAME'
      'TYPE_F=TYPE_F'
      'USER_DOLJ=USER_DOLJ'
      'IS_ACTWORK=IS_ACTWORK'
      'D_FAKTURA=D_FAKTURA'
      'ID1=ID1'
      'ID_F_HEAD=ID_F_HEAD'
      'USLUGA=USLUGA'
      'STOIM=STOIM'
      'SUMMA=SUMMA'
      'VAT=VAT'
      'SUM_VAT=SUM_VAT'
      'TOTAL_SUM1=TOTAL_SUM1'
      'DISCOUNT=DISCOUNT'
      'EDIZM=EDIZM'
      'KOL=KOL'
      'ID_USL=ID_USL'
      'NPP_STR=NPP_STR'
      'ID_TICKETMONEY=ID_TICKETMONEY'
      'DT=DT'
      'USERNAME=USERNAME'
      'USERDOLJ=USERDOLJ'
      'TS_FLAG=TS_FLAG'
      'STOIM_W_VAT=STOIM_W_VAT'
      'ID2=ID2'
      'ZAYV=ZAYV'
      'INN=INN'
      'KPP=KPP'
      'CHIEF_FAM=CHIEF_FAM'
      'CHIEF_DOLJ=CHIEF_DOLJ'
      'FULLADRESSZAYV=FULLADRESSZAYV')
    DataSet = DM.Qry_RepInFaktura
    BCDToCurrency = False
    Left = 81
    Top = 313
  end
  object frxDB_Step6: TfrxDBDataset
    UserName = 'frxDB_Step6'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ACTION_CODE=ACTION_CODE'
      'USERNAME=USERNAME'
      'DT_ACTION=DT_ACTION'
      'ACTION_NAME=ACTION_NAME')
    OpenDataSource = False
    DataSet = DM.Qry_Rep_Step6
    BCDToCurrency = False
    Left = 89
    Top = 372
  end
  object frxDB_Step7: TfrxDBDataset
    UserName = 'frxDB_Step7'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ACTION_CODE1=ACTION_CODE1'
      'USERNAME=USERNAME'
      'DT_ACTION=DT_ACTION'
      'ACTION_NAME=ACTION_NAME'
      'NPP_TP=NPP_TP')
    OpenDataSource = False
    DataSet = DM.Qry_Rep_Step7
    BCDToCurrency = False
    Left = 89
    Top = 420
  end
  object frxDBPztkLog: TfrxDBDataset
    UserName = 'frxDBPztkLog'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_TICKET=ID_TICKET'
      'N_TS=N_TS'
      'KOD_TS=KOD_TS'
      'FIO_DRIVER=FIO_DRIVER'
      'TARGET=TARGET'
      'PHONE=PHONE'
      'CRASHES=CRASHES'
      'TS_ACTION_CODE=TS_ACTION_CODE'
      'MARKA=MARKA'
      'OUT_FLAG=OUT_FLAG'
      'N_TRAILER=N_TRAILER'
      'NAME=NAME'
      'N_TICKET=N_TICKET'
      'CUST_PROC=CUST_PROC'
      'DT_IS=DT_IS'
      'USERNAME=USERNAME'
      'POP=POP'
      'CUST_USER=CUST_USER'
      'OWNER=OWNER'
      'DT_FINISHED=DT_FINISHED')
    DataSet = DM.Qry_Pztk
    BCDToCurrency = False
    Left = 97
    Top = 464
  end
  object frxDBPztkOutDocs: TfrxDBDataset
    UserName = 'frxDBPztkOutDocs'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_TICKET=ID_TICKET'
      'TYPE_DOC=TYPE_DOC'
      'NAME=NAME'
      'NDOC=NDOC'
      'DDOC=DDOC')
    DataSet = DM.Qry_PztkOutDocs
    BCDToCurrency = False
    Left = 153
    Top = 64
  end
  object frxDBTtn_In: TfrxDBDataset
    UserName = 'frxDBTtn_In'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_TICKET=ID_TICKET'
      'TYPE_DOC=TYPE_DOC'
      'NAME=NAME'
      'NDOC=NDOC'
      'DDOC=DDOC')
    DataSet = DM.Qry_TtnIn
    BCDToCurrency = False
    Left = 145
    Top = 112
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 512
    Top = 24
  end
  object Rep2: TfrxReport
    Version = '6.9.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Copies = 2
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40403.703565092600000000
    ReportOptions.LastChange = 42928.446596793980000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      '      '
      '                                                  '
      '  '
      'var'
      ' sum_w_vat,stoim_w_vat,DTotalSum,dTotalSumVat:Double;'
      ' vat,sum_vat:String;                           '
      '                                         '
      '          '
      '  '
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                             '
      ' stoim_w_vat:=<frxDBDataset1."SUMMA">/<frxDBDataset1."KOL">;'
      
        ' if <frxDBDataset1."VAT"> > 0 then vat:=IntToStr(<frxDBDataset1.' +
        '"VAT">)+'#39'%'#39' else'
      '    vat:='#39#1073#1077#1079' '#1053#1044#1057#39';'
      
        ' if <frxDBDataset1."SUM_VAT"> > 0 then sum_vat:=FloatToStr(<frxD' +
        'BDataset1."SUM_VAT">) else'
      '    sum_vat:='#39#39';                              '
      '         dTotalSum:=dTotalSum+<frxDBDataset1."TOTAL_SUM">;'
      
        ' dTotalSumVat:=dTotalSumVat+<frxDBDataset1."SUM_VAT">;          ' +
        '           '
      'end;'
      'procedure MasterFooter3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                                        '
      'end;'
      ''
      'begin          '
      ' dTotalSum:=0;  '
      ' dTotalSumVat:=0;'
      ' //TotalSumProp:='#39#39';               '
      'end.')
    OnGetValue = Rep2GetValue
    Left = 72
    Top = 16
    Datasets = <
      item
        DataSet = frxDB_SVH
        DataSetName = 'frxDB_SVH'
      end
      item
        DataSet = frxDBRepInfaktura
        DataSetName = 'frxDBRepInfaktura'
      end>
    Variables = <
      item
        Name = ' MyVar'
        Value = Null
      end
      item
        Name = 'TotalSumProp'
        Value = Null
      end
      item
        Name = 'Disp'
        Value = Null
      end
      item
        Name = 'Repactworks_Nts'
        Value = Null
      end
      item
        Name = 'Dolj_Disp'
        Value = Null
      end
      item
        Name = 'VAT_Rate'
        Value = Null
      end
      item
        Name = 'VAT_Sum'
        Value = Null
      end
      item
        Name = 'N_contract'
        Value = Null
      end
      item
        Name = 'Status'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      LargeDesignHeight = True
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 15.874015750000000000
        Top = 661.417750000000000000
        Width = 1065.827460000000000000
        OnAfterCalcHeight = 'MasterData1OnAfterCalcHeight'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        AllowSplit = True
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frxDBRepInfaktura
        DataSetName = 'frxDBRepInfaktura'
        RowCount = 0
        Stretched = True
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 873.913420000000000000
          Width = 34.771643780000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '--')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 792.566929130000000000
          Width = 81.763760000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataSet1."TOTAL_SUM1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 961.889763779527000000
          Width = 101.779530000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '--')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 908.866730000000000000
          Width = 52.913385830000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '--')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 109.228346460000000000
          Width = 278.551181100000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ' [frxDBDataset1."USLUGA"]  ('#1087'. [frxDBDataset1."NPP_STR"]) ')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 387.779527560000000000
          Width = 22.677162910000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '--')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 464.125984251969000000
          Width = 45.000000000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."KOL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 509.102362200000000000
          Width = 57.881880000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[stoim_w_vat]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929133860000000000
          Width = 82.322820000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."SUMMA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 649.322834650000000000
          Width = 37.000000000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1073#1077#1079
            #1072#1082#1094#1080#1079#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 685.708720000000000000
          Width = 41.574803150000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[IIF(<frxDBDataSet1."VAT"> = 0,'#39#1073#1077#1079' '#1053#1044#1057#39',<frxDBDataSet1."VAT">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 727.559055120000000000
          Width = 65.385826770000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[IIF(<frxDBDataSet1."SUM_VAT"> = 0 ,'#39#1073#1077#1079' '#1053#1044#1057#39',<frxDBDataSet1."SU' +
              'M_VAT">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 410.456692913386000000
          Width = 53.291328820000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '--')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 108.094488190000000000
          Width = 7.559060000000000000
          Height = 15.873954720000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Width = 45.000000000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 45.000000000000000000
          Width = 61.661410000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 424.559055120000000000
        Top = 18.897650000000000000
        Width = 1065.827460000000000000
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 121.779530000000000000
          Top = 214.559060000000000000
          Width = 80.000000000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 201.779530000000000000
          Top = 214.559060000000000000
          Width = 818.425170000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataSet1."ZAYV"]')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 121.779530000000000000
          Top = 232.559060000000000000
          Width = 48.000000000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1040#1076#1088#1077#1089)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 169.779530000000000000
          Top = 232.559060000000000000
          Width = 850.425170000000000000
          Height = 15.874015750000000000
          StretchMode = smActualHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataSet1."FULLADRESSZAYV"]')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 276.779530000000000000
          Top = 250.559060000000000000
          Width = 743.425170000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '  [frxDBDataset1."INN"] /  [frxDBDataset1."KPP"] ')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 121.779530000000000000
          Top = 250.559060000000000000
          Width = 154.000000000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1053#1053'/'#1050#1055#1055' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 259.779530000000000000
          Top = 142.559060000000000000
          Width = 759.425170000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_SVH."INN"] / [frxDB_SVH."KPP"]')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 121.779530000000000000
          Top = 124.559060000000000000
          Width = 52.000000000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1040#1076#1088#1077#1089)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 173.779530000000000000
          Top = 124.559060000000000000
          Width = 846.425170000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_SVH."FULL_ADRESS"]')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 121.779530000000000000
          Top = 142.559060000000000000
          Width = 135.000000000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1053#1053'/'#1050#1055#1055' '#1087#1088#1086#1076#1072#1074#1094#1072)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 121.779530000000000000
          Top = 106.559060000000000000
          Width = 72.000000000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1055#1088#1086#1076#1072#1074#1077#1094)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 121.779530000000000000
          Top = 160.559060000000000000
          Width = 199.559060000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1043#1088#1091#1079#1086#1086#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100' '#1080' '#1077#1075#1086' '#1072#1076#1088#1077#1089)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 317.779530000000000000
          Top = 160.559060000000000000
          Width = 702.425170000000000000
          Height = 15.874015750000000000
          StretchMode = smActualHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1086#1085' '#1078#1077)
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 121.779530000000000000
          Top = 178.559060000000000000
          Width = 199.559060000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1043#1088#1091#1079#1086#1087#1086#1083#1091#1095#1072#1090#1077#1083#1100' '#1080' '#1077#1075#1086' '#1072#1076#1088#1077#1089)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 317.779530000000000000
          Top = 178.559060000000000000
          Width = 702.425170000000000000
          Height = 15.874015750000000000
          StretchMode = smActualHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ' [frxDBDataSet1."ZAYV"],[frxDBDataSet1."FULLADRESSZAYV"]')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 121.779530000000000000
          Top = 196.559060000000000000
          Width = 252.000000000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1050' '#1087#1083#1072#1090#1077#1078#1085#1086'-'#1088#1072#1089#1095#1105#1090#1085#1086#1084#1091' '#1076#1086#1082#1091#1084#1077#1085#1090#1091' '#8470)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 373.779530000000000000
          Top = 196.559060000000000000
          Width = 646.425170000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          VAlign = vaCenter
        end
        object frxDBDataset_SVHG142: TfrxMemoView
          AllowVectorExport = True
          Left = 197.149660000000000000
          Top = 103.385900000000000000
          Width = 823.937540000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset_SVH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDB_SVH."FULL_NAME"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 124.929190000000000000
          Top = 45.149660000000000000
          Width = 158.834260000000000000
          Height = 20.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1057#1063#1025#1058'-'#1060#1040#1050#1058#1059#1056#1040' '#8470'  ')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 665.370440000000000000
          Top = 0.086580000000001430
          Width = 374.401670000000000000
          Height = 40.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#8470'1'
            #1082'  '#1087#1086#1089#1090#1072#1085#1086#1074#1083#1077#1085#1080#1102' '#1055#1088#1072#1074#1080#1090#1077#1083#1100#1089#1090#1074#1072' '#1056#1086#1089#1089#1080#1081#1089#1082#1086#1081' '#1060#1077#1076#1077#1088#1072#1094#1080#1080' '
            #1086#1090' 26 '#1076#1077#1082#1072#1073#1088#1103' 2011 '#1075'. N 1137')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 1028.984850000000000000
          Top = 48.929190000000010000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(1)')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 105.165430000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(2)')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 124.063080000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(2'#1072')')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 139.181200000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(2'#1073')')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 158.078850000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(3)')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 176.976500000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(4)')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 195.874150000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(5)')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 214.771800000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(6)')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 229.889920000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(6'#1072')')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 245.008040000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(6'#1073')')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 121.779530000000000000
          Top = 269.685220000000000000
          Width = 184.236240000000000000
          Height = 19.653545750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1042#1072#1083#1102#1090#1072': '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077', '#1082#1086#1076' ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 310.756030000000000000
          Top = 273.464566930000000000
          Width = 709.409400000000000000
          Height = 12.094485750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1088#1086#1089#1089#1080#1081#1089#1082#1080#1081' '#1088#1091#1073#1083#1100', 643')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 1023.882500000000000000
          Top = 262.126160000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(7)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 291.228510000000000000
          Top = 45.149660000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            '[FormatMaskText('#39'########'#39',<frxDBDataset1."NOMER">)]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 381.393940000000000000
          Top = 45.149660000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1086#1090)
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 404.071120000000000000
          Top = 45.149660000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."DATE_IS"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 124.929190000000000000
          Top = 67.606370000000000000
          Width = 158.834260000000000000
          Height = 20.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1057#1055#1056#1040#1042#1051#1045#1053#1048#1045' '#8470'  ')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 1028.984850000000000000
          Top = 71.606370000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(1'#1072')')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 291.228510000000000000
          Top = 67.606370000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '--')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 381.393940000000000000
          Top = 67.606370000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1086#1090)
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 404.071120000000000000
          Top = 67.606370000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '--')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          AllowVectorExport = True
          Left = 108.094488190000000000
          Top = 62.354360000000000000
          Width = 7.559060000000000000
          Height = 250.960629920000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 109.385900000000000000
          Top = 408.551361730000000000
          Width = 278.338590000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 387.724490000000000000
          Top = 408.559055118110000000
          Width = 22.677162910000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 464.063080000000000000
          Top = 408.559055118110000000
          Width = 45.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 509.063080000000000000
          Top = 408.543492600000000000
          Width = 57.881880000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 874.204724410000000000
          Top = 408.559055120000000000
          Width = 35.149606299212600000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '10')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 566.944960000000100000
          Top = 408.559055118110000000
          Width = 82.322820000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 649.267780000000000000
          Top = 408.559055118110000000
          Width = 37.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 686.267780000000000000
          Top = 408.559055118110000000
          Width = 41.102350000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 727.370130000000000000
          Top = 408.559055120000000000
          Width = 65.338590000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '8')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 792.708720000000000000
          Top = 408.559055120000000000
          Width = 81.637795275590600000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '9')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 961.929190000000000000
          Top = 408.559055118110000000
          Width = 101.779530000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '11')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 109.385900000000000000
          Top = 313.685220000000000000
          Width = 278.338590000000000000
          Height = 94.488193860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072'('#1086#1087#1080#1089#1072#1085#1080#1077
            #1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1093' '#1088#1072#1073#1086#1090', '#1086#1082#1072#1079#1072#1085#1085#1099#1093
            #1091#1089#1083#1091#1075'), '#1080#1084#1091#1097#1077#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1087#1088#1072#1074#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 387.724490000000000000
          Top = 313.685220000000000000
          Width = 76.118120000000000000
          Height = 28.724409450000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1076#1080#1085#1080#1094#1072
            #1080#1079#1084#1077#1088#1077#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 464.063080000000000000
          Top = 313.685220000000000000
          Width = 45.000000000000000000
          Height = 94.488193860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083#1080'-'
            #1095#1077#1089#1090#1074#1086
            '('#1086#1073#1098#1077#1084')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 727.370130000000000000
          Top = 313.685220000000000000
          Width = 65.338590000000000000
          Height = 94.488193860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1091#1084#1084#1072' '#1085#1072#1083#1086#1075#1072', '#1087#1088#1077#1076#1098#1103#1074#1083#1103#1077#1084#1072#1103' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1102)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 686.267780000000000000
          Top = 313.685220000000000000
          Width = 41.102350000000000000
          Height = 94.488193860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1083#1086'- '
            #1075#1086#1074#1072#1103' '
            #1089#1090#1072#1074#1082#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 649.267780000000000000
          Top = 313.685220000000000000
          Width = 37.000000000000000000
          Height = 94.488193860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042' '#1090#1086#1084' '#1095#1080#1089#1083#1077' '#1089#1091#1084#1084#1072' '#1072#1082#1094#1080#1079#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 566.944960000000100000
          Top = 313.685220000000000000
          Width = 82.322820000000000000
          Height = 94.488193860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1086#1080#1084#1086#1089#1090#1100
            #1090#1086#1074#1072#1088#1086#1074' ('#1088#1072#1073#1086#1090','
            #1091#1089#1083#1091#1075'), '
            #1080#1084#1091#1097#1077#1089#1090'-'
            #1074#1077#1085#1085#1099#1093' '#1087#1088#1072#1074' '
            #1073#1077#1079' '#1085#1072#1083#1086#1075#1072' - '
            #1074#1089#1077#1075#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 509.063080000000000000
          Top = 313.685220000000000000
          Width = 57.881880000000000000
          Height = 94.488193860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1062#1077#1085#1072
            '('#1090#1072#1088#1080#1092')'
            #1079#1072' '
            #1077#1076#1080#1085#1080#1094#1091' '
            #1080#1079#1084#1077#1088#1077#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 792.708720000000000000
          Top = 313.685220000000000000
          Width = 81.763760000000000000
          Height = 94.488193860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1086#1080#1084#1086#1089#1090#1100
            #1090#1086#1074#1072#1088#1086#1074' ('#1088#1072#1073#1086#1090','
            #1091#1089#1083#1091#1075'), '
            #1080#1084#1091#1097#1077#1089#1090'-'
            #1074#1077#1085#1085#1099#1093' '#1087#1088#1072#1074)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 874.472480000000000000
          Top = 313.685220000000000000
          Width = 87.456710000000000000
          Height = 39.307089060000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1088#1072#1085#1072
            #1087#1088#1086#1080#1089#1093#1086#1078#1076#1077#1085#1080#1103
            #1090#1086#1074#1072#1088#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Left = 961.929190000000000000
          Top = 313.685220000000000000
          Width = 101.779530000000000000
          Height = 94.488193860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088' '
            #1090#1072#1084#1086#1078#1077#1085#1085#1086#1081' '
            #1076#1077#1082#1083#1072#1088#1072#1094#1080#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Left = 874.204724410000000000
          Top = 353.260050000000000000
          Width = 35.149606299212600000
          Height = 55.181102360000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1094#1080#1092'-'
            #1088#1086'-'
            #1074#1086#1081
            #1082#1086#1076)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          AllowVectorExport = True
          Left = 909.354330710000000000
          Top = 353.260050000000000000
          Width = 52.535433070866100000
          Height = 55.181102360000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1088#1072#1090#1082#1086#1077
            #1085#1072#1080#1084#1077'-'
            #1085#1086#1074#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          AllowVectorExport = True
          Left = 909.425790000000000000
          Top = 408.559055120000000000
          Width = 52.535433070866100000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '10'#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          AllowVectorExport = True
          Left = 387.850650000000000000
          Top = 342.409627010000000000
          Width = 22.677165350000000000
          Height = 65.763784410000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1050#1086#1076)
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          AllowVectorExport = True
          Left = 410.393778900000000000
          Top = 408.559055118110000000
          Width = 53.291328820000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '2'#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          AllowVectorExport = True
          Left = 410.393778900000000000
          Top = 342.409627010000000000
          Width = 53.291328820000000000
          Height = 65.763784410000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1091#1089#1083#1086#1074#1085#1086#1077
            #1086#1073#1086#1079#1085#1072'-'
            #1095#1077#1085#1080#1077
            '('#1085#1072#1094#1080#1086'-'
            #1085#1072#1083#1100#1085#1086#1077')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          AllowVectorExport = True
          Top = 408.323022600000000000
          Width = 45.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1040)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          AllowVectorExport = True
          Left = 45.000000000000000000
          Top = 408.543492600000000000
          Width = 61.661410000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1041)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          Top = 313.685220000000000000
          Width = 45.000000000000000000
          Height = 94.488193860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470
            #1087'/'#1087)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          AllowVectorExport = True
          Left = 45.000000000000000000
          Top = 313.685220000000000000
          Width = 61.661410000000000000
          Height = 94.488193860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076' '#1090#1086#1074#1072#1088#1072'/'
            #1088#1072#1073#1086#1090', '#1091#1089#1083#1091#1075)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          AllowVectorExport = True
          Left = 108.118110240000000000
          Top = 313.685220000000000000
          Width = 7.559060000000000000
          Height = 110.362204720000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 41.133890000000000000
          Width = 94.488250000000000000
          Height = 45.354360000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1059#1085#1080#1074#1077#1088#1089#1072#1083#1100#1085#1099#1081' '
            #1087#1077#1088#1077#1076#1072#1090#1086#1095#1085#1099#1081' '
            #1076#1086#1082#1091#1084#1077#1085#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Left = 9.779530000000000000
          Top = 105.826840000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1057#1090#1072#1090#1091#1089':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          AllowVectorExport = True
          Left = 65.252010000000000000
          Top = 103.047310000000000000
          Width = 26.456710000000000000
          Height = 26.456710000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Status]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 136.960730000000000000
          Width = 94.488250000000000000
          Height = 75.590600000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '1 - '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1072' '#1080
            #1087#1077#1088#1077#1076#1072#1090#1086#1095#1085#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
            '('#1072#1082#1090')'
            '2 - '#1087#1077#1088#1077#1076#1072#1090#1086#1095#1085#1099#1081' '
            #1076#1086#1082#1091#1084#1077#1085#1090' ('#1072#1082#1090')')
          ParentFont = False
        end
        object Memo215: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 121.732351810000000000
          Top = 291.724490000000000000
          Width = 433.417440000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088' '#1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1082#1086#1085#1090#1088#1072#1082#1090#1072', '#1076#1086#1075#1086#1074#1086#1088#1072' ('#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103'):')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo216: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 558.929321810000100000
          Top = 291.724490000000000000
          Width = 461.228200000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftBottom]
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          VAlign = vaCenter
        end
        object Memo217: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.835321810000000000
          Top = 287.039580000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(8)')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 563.905804720000000000
        Top = 699.213050000000000000
        Width = 1065.827460000000000000
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 118.559060000000000000
          Top = 87.338589999999950000
          Width = 207.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1085#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1099#1081' '#1087#1088#1077#1076#1087#1088#1080#1085#1080#1084#1072#1090#1077#1083#1100)
          ParentFont = False
          WordWrap = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 332.338590000000000000
          Top = 105.338590000000000000
          Width = 73.322820000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1086#1076#1087#1080#1089#1100')')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 411.440940000000000000
          Top = 105.338590000000000000
          Width = 145.425170000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1092'.'#1080'.'#1086'.)')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 602.338900000000000000
          Top = 105.881880000000000000
          Width = 364.141620000000000000
          Height = 26.559060000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              #1056#1077#1082#1074#1080#1079#1080#1090#1099' '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1072' '#1086' '#1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1086#1081' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1080#1085#1076#1080#1074#1080#1076#1091#1072#1083 +
              #1100#1085#1086#1075#1086' '#1087#1088#1077#1076#1087#1088#1080#1085#1080#1084#1072#1090#1077#1083#1103)
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 568.629870000000000000
          Top = 86.354301419999960000
          Width = 430.385900000000000000
          Height = 19.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 118.559060000000000000
          Top = 44.779530000000030000
          Width = 206.739950000000000000
          Height = 34.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
            
              #1080#1083#1080' '#1080#1085#1086#1077' '#1091#1087#1086#1083#1085#1086#1084#1086#1095#1077#1085#1085#1086#1077' '#1083#1080#1094#1086'                                    ' +
              '                                ')
          ParentFont = False
          WordWrap = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 326.433210000000000000
          Top = 66.897650000000000000
          Width = 80.881880000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1086#1076#1087#1080#1089#1100')')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 413.094620000000000000
          Top = 66.897650000000000000
          Width = 145.425170000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1092'.'#1080'.'#1086'.)')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 568.323130000000000000
          Top = 44.779530000000030000
          Width = 187.842300000000000000
          Height = 34.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1043#1083#1072#1074#1085#1099#1081' '#1073#1091#1093#1075#1072#1083#1090#1077#1088' '
            
              #1080#1083#1080' '#1080#1085#1086#1077' '#1091#1087#1086#1083#1085#1086#1084#1086#1095#1077#1085#1085#1086#1077' '#1083#1080#1094#1086'                                    ' +
              '                                           ')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 757.047620000000000000
          Top = 67.677180000000030000
          Width = 92.220470000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1086#1076#1087#1080#1089#1100')')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 855.047620000000000000
          Top = 67.677180000000030000
          Width = 141.645640000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1092'.'#1080'.'#1086'.)')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 855.315400000000000000
          Top = 48.779530000000030000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataSet1."USERNAME"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 415.582870000000000000
          Top = 47.897650000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_SVH."FIO_RUK"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 109.228346460000000000
          Width = 457.700787400000000000
          Height = 34.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            #1042#1089#1077#1075#1086' '#1082' '#1086#1087#1083#1072#1090#1077': [TotalSumProp]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 792.566929130000000000
          Width = 81.637795280000000000
          Height = 34.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."TOTAL_SUM1">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 727.559055120000000000
          Width = 65.385826770000000000
          Height = 34.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."SUM_VAT">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929133860000000000
          Width = 82.393686140000000000
          Height = 34.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."SUMMA">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 649.322834650000000000
          Width = 78.236220470000000000
          Height = 34.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Width = 107.015770000000000000
          Height = 34.771653540000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 108.094488190000000000
          Width = 7.559060000000000000
          Height = 34.771604720000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          AllowVectorExport = True
          Left = 873.850960000000000000
          Width = 190.165430000000000000
          Height = 34.771653540000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 108.094488190000000000
          Top = 34.015769999999970000
          Width = 7.559060000000000000
          Height = 114.141734720000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 147.401670000000000000
          Width = 956.221090000000000000
          Height = 7.559060000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 45.574830000000020000
          Width = 94.488250000000000000
          Height = 45.354360000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1044#1086#1082#1091#1084#1077#1085#1090' '
            #1089#1086#1089#1090#1072#1074#1083#1077#1085' '#1085#1072
            '[TotalPages#] '#1083#1080#1089#1090#1072#1093)
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          AllowVectorExport = True
          Left = 558.488560000000000000
          Top = 241.889920000000000000
          Width = 7.559060000000000000
          Height = 318.236354720000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 158.740260000000000000
          Width = 306.141930000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1087#1077#1088#1077#1076#1072#1095#1080' ('#1089#1076#1072#1095#1080') / '#1087#1086#1083#1091#1095#1077#1085#1080#1103' ('#1087#1088#1080#1077#1084#1082#1080') ')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480520000000000000
          Top = 158.740260000000000000
          Width = 702.992580000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1044#1086#1075#1086#1074#1086#1088' '#1086#1073' '#1086#1082#1072#1079#1072#1085#1080#1080' '#1089#1082#1083#1072#1076#1089#1082#1080#1093' '#1091#1089#1083#1091#1075' [N_contract]')
          ParentFont = False
        end
        object Memo129: TfrxMemoView
          AllowVectorExport = True
          Left = 1024.252630000000000000
          Top = 162.519789999999900000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 8 )')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          AllowVectorExport = True
          Left = 539.897960000000000000
          Top = 185.196970000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1076#1086#1075#1086#1074#1086#1088', '#1076#1086#1074#1077#1088#1077#1085#1085#1086#1089#1090#1100' '#1080' '#1076#1088'.)')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 200.315090000000100000
          Width = 204.094620000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1044#1072#1085#1085#1099#1077' '#1086' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1080#1088#1086#1074#1082#1077' '#1080' '#1075#1088#1091#1079#1077)
          ParentFont = False
        end
        object Memo160: TfrxMemoView
          AllowVectorExport = True
          Left = 215.480520000000000000
          Top = 200.315090000000100000
          Width = 805.039890000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[Repactworks_Nts]')
          ParentFont = False
        end
        object Memo161: TfrxMemoView
          AllowVectorExport = True
          Left = 1024.252630000000000000
          Top = 204.094620000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 9 )')
          ParentFont = False
        end
        object Memo162: TfrxMemoView
          AllowVectorExport = True
          Left = 211.078850000000000000
          Top = 226.771800000000000000
          Width = 805.039890000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '('#1090#1088#1072#1085#1089#1087#1086#1088#1090#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103', '#1087#1086#1088#1091#1095#1077#1085#1080#1077' '#1101#1082#1089#1087#1077#1076#1080#1090#1086#1088#1091', '#1101#1082#1089#1087#1077#1076#1080#1090#1086#1088#1089#1082#1072#1103' /' +
              ' '#1089#1082#1083#1072#1076#1089#1082#1072#1103' '#1088#1072#1089#1087#1080#1089#1082#1072' '#1080' '#1076#1088'. / '#1084#1072#1089#1089#1072' '#1085#1077#1090#1090#1086'/'#1073#1088#1091#1090#1090#1086' '#1075#1088#1091#1079#1072', '#1077#1089#1083#1080' '#1085#1077' '#1087#1088 +
              #1080#1074#1077#1076#1077#1085#1099' '#1089#1089#1099#1083#1082#1080' '#1085#1072' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099', '#1089#1086#1076#1077#1088#1078#1072#1097#1080#1077' '#1101#1090#1080' '#1089#1074#1077#1076#1077#1085#1080 +
              #1103'))')
          ParentFont = False
        end
        object Memo163: TfrxMemoView
          AllowVectorExport = True
          Left = 9.559060000000000000
          Top = 241.889920000000000000
          Width = 374.173470000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1058#1086#1074#1072#1088' ('#1075#1088#1091#1079') '#1087#1077#1088#1077#1076#1072#1083' / '#1091#1089#1083#1091#1075#1080', '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1088#1072#1073#1086#1090', '#1087#1088#1072#1074#1072' '#1089#1076#1072#1083)
          ParentFont = False
        end
        object Memo164: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 241.889920000000000000
          Width = 374.173470000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1058#1086#1074#1072#1088' ('#1075#1088#1091#1079') '#1087#1086#1083#1091#1095#1080#1083' / '#1091#1089#1083#1091#1075#1080', '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1088#1072#1073#1086#1090', '#1087#1088#1072#1074#1072' '#1087#1088#1080#1085#1103#1083)
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          AllowVectorExport = True
          Left = 173.582870000000000000
          Top = 291.126160000000000000
          Width = 133.795300000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1086#1076#1087#1080#1089#1100')')
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          AllowVectorExport = True
          Left = 325.244280000000000000
          Top = 291.126160000000000000
          Width = 145.425170000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1092'.'#1080'.'#1086'.)')
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          AllowVectorExport = True
          Left = 327.732530000000000000
          Top = 272.126160000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_SVH."FIO_RUK"]')
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 291.126160000000000000
          Width = 145.425170000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1076#1086#1083#1078#1085#1086#1089#1090#1100')')
          ParentFont = False
        end
        object Memo169: TfrxMemoView
          AllowVectorExport = True
          Left = 10.047310000000000000
          Top = 272.126160000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_SVH."DOLJ_RUK"]')
          ParentFont = False
        end
        object Memo170: TfrxMemoView
          AllowVectorExport = True
          Left = 733.291900000000000000
          Top = 291.126160000000000000
          Width = 133.795300000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1086#1076#1087#1080#1089#1100')')
          ParentFont = False
        end
        object Memo171: TfrxMemoView
          AllowVectorExport = True
          Left = 884.953310000000000000
          Top = 291.126160000000000000
          Width = 134.086580000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1092'.'#1080'.'#1086'.)')
          ParentFont = False
        end
        object Memo172: TfrxMemoView
          AllowVectorExport = True
          Left = 887.441560000000000000
          Top = 272.126160000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo173: TfrxMemoView
          AllowVectorExport = True
          Left = 567.268090000000000000
          Top = 291.126160000000000000
          Width = 145.425170000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1076#1086#1083#1078#1085#1086#1089#1090#1100')')
          ParentFont = False
        end
        object Memo174: TfrxMemoView
          AllowVectorExport = True
          Left = 569.756340000000000000
          Top = 272.126160000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 272.126160000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 10 )')
          ParentFont = False
        end
        object Memo176: TfrxMemoView
          AllowVectorExport = True
          Left = 1020.811690000000000000
          Top = 275.905690000000100000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 15 )')
          ParentFont = False
        end
        object Memo177: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 312.480519999999900000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."DATE_IS"]')
          ParentFont = False
        end
        object Memo178: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 313.700990000000200000
          Width = 188.976500000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1086#1090#1075#1088#1091#1079#1082#1080', '#1087#1077#1088#1077#1076#1072#1095#1080' ('#1089#1076#1072#1095#1080')')
          ParentFont = False
        end
        object Memo179: TfrxMemoView
          AllowVectorExport = True
          Left = 732.228820000000000000
          Top = 314.700990000000200000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            
              '"          "                                         20        '#1075 +
              #1086#1076#1072)
          ParentFont = False
        end
        object Memo180: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 314.921459999999900000
          Width = 154.960730000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' ('#1087#1088#1080#1077#1084#1082#1080')')
          ParentFont = False
        end
        object Memo181: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 313.700990000000200000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 11 )')
          ParentFont = False
        end
        object Memo182: TfrxMemoView
          AllowVectorExport = True
          Left = 1024.252630000000000000
          Top = 313.700990000000200000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 16 )')
          ParentFont = False
        end
        object Memo183: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 343.937230000000300000
          Width = 222.992270000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1080#1103' '#1086#1073' '#1086#1090#1075#1088#1091#1079#1082#1077', '#1087#1077#1088#1077#1076#1072#1095#1077)
          ParentFont = False
        end
        object Memo184: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 370.173470000000100000
          Width = 464.882190000000000000
          Height = 15.118120000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo185: TfrxMemoView
          AllowVectorExport = True
          Left = 479.000310000000000000
          Top = 366.614410000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 12 )')
          ParentFont = False
        end
        object Memo186: TfrxMemoView
          AllowVectorExport = True
          Left = 18.322820000000000000
          Top = 389.071119999999900000
          Width = 404.409710000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '('#1089#1089#1099#1083#1082#1080' '#1085#1072' '#1085#1077#1086#1090#1098#1077#1084#1083#1077#1084#1099#1077' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103', '#1089#1086#1087#1091#1090#1089#1090#1074#1091#1102#1097#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099', '#1080#1085#1099 +
              #1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099' '#1080' '#1090'.'#1087'.)')
          ParentFont = False
        end
        object Memo187: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 347.716760000000100000
          Width = 222.992270000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1087#1086#1083#1091#1095#1077#1085#1080#1080', '#1087#1088#1080#1077#1084#1082#1077)
          ParentFont = False
        end
        object Memo188: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 373.953000000000300000
          Width = 453.543600000000000000
          Height = 15.118120000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo189: TfrxMemoView
          AllowVectorExport = True
          Left = 1023.252630000000000000
          Top = 370.393940000000300000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 17 )')
          ParentFont = False
        end
        object Memo190: TfrxMemoView
          AllowVectorExport = True
          Left = 566.354670000000000000
          Top = 392.850650000000200000
          Width = 457.323130000000000000
          Height = 15.118120000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '('#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1085#1072#1083#1080#1095#1080#1080'/'#1086#1090#1089#1091#1090#1089#1090#1074#1080#1080' '#1087#1088#1077#1090#1077#1085#1079#1080#1081', '#1089#1089#1099#1083#1082#1080' '#1085#1072' '#1085#1077#1086#1090#1098#1077#1084#1083#1077#1084 +
              #1099#1077' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103', '#1080' '#1076#1088'. '#1076#1086#1082#1091#1084#1077#1085#1090#1099' )')
          ParentFont = False
        end
        object Memo192: TfrxMemoView
          AllowVectorExport = True
          Left = 0.881880000000000000
          Top = 407.409710000000300000
          Width = 438.425480000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081' '#1079#1072' '#1087#1088#1072#1074#1080#1083#1100#1085#1086#1089#1090#1100' '#1086#1092#1086#1088#1084#1083#1077#1085#1080#1103' '#1092#1072#1082#1090#1072' '#1093#1086#1079#1103#1081#1089#1090#1074#1077#1085#1085#1086#1081' '#1078#1080#1079 +
              #1085#1080)
          ParentFont = False
        end
        object Memo193: TfrxMemoView
          AllowVectorExport = True
          Left = 167.244280000000000000
          Top = 453.645950000000000000
          Width = 133.795300000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1086#1076#1087#1080#1089#1100')')
          ParentFont = False
        end
        object Memo194: TfrxMemoView
          AllowVectorExport = True
          Left = 318.905690000000000000
          Top = 453.645950000000000000
          Width = 134.086580000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1092'.'#1080'.'#1086'.)')
          ParentFont = False
        end
        object Memo195: TfrxMemoView
          AllowVectorExport = True
          Left = 321.393940000000000000
          Top = 434.645950000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataSet1."USERNAME"]')
          ParentFont = False
        end
        object Memo196: TfrxMemoView
          AllowVectorExport = True
          Left = 1.220470000000000000
          Top = 453.645950000000000000
          Width = 145.425170000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1076#1086#1083#1078#1085#1086#1089#1090#1100')')
          ParentFont = False
        end
        object Memo197: TfrxMemoView
          AllowVectorExport = True
          Left = 3.708720000000000000
          Top = 434.645950000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataSet1."USERDOLJ"]')
          ParentFont = False
        end
        object Memo198: TfrxMemoView
          AllowVectorExport = True
          Left = 477.441250000000000000
          Top = 438.425480000000200000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 13 )')
          ParentFont = False
        end
        object Memo191: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 408.189240000000100000
          Width = 438.425480000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081' '#1079#1072' '#1087#1088#1072#1074#1080#1083#1100#1085#1086#1089#1090#1100' '#1086#1092#1086#1088#1084#1083#1077#1085#1080#1103' '#1092#1072#1082#1090#1072' '#1093#1086#1079#1103#1081#1089#1090#1074#1077#1085#1085#1086#1081' '#1078#1080#1079 +
              #1085#1080)
          ParentFont = False
        end
        object Memo199: TfrxMemoView
          AllowVectorExport = True
          Left = 729.512370000000000000
          Top = 454.425480000000200000
          Width = 133.795300000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1086#1076#1087#1080#1089#1100')')
          ParentFont = False
        end
        object Memo200: TfrxMemoView
          AllowVectorExport = True
          Left = 881.173780000000000000
          Top = 454.425480000000200000
          Width = 134.086580000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1092'.'#1080'.'#1086'.)')
          ParentFont = False
        end
        object Memo201: TfrxMemoView
          AllowVectorExport = True
          Left = 883.662030000000000000
          Top = 435.425480000000200000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo202: TfrxMemoView
          AllowVectorExport = True
          Left = 563.488560000000000000
          Top = 454.425480000000200000
          Width = 145.425170000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1076#1086#1083#1078#1085#1086#1089#1090#1100')')
          ParentFont = False
        end
        object Memo203: TfrxMemoView
          AllowVectorExport = True
          Left = 565.976810000000000000
          Top = 435.425480000000200000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo204: TfrxMemoView
          AllowVectorExport = True
          Left = 1020.811690000000000000
          Top = 439.205010000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 18 )')
          ParentFont = False
        end
        object Memo205: TfrxMemoView
          AllowVectorExport = True
          Top = 476.220780000000000000
          Width = 555.590910000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1101#1082#1086#1085#1086#1084#1080#1095#1077#1089#1082#1086#1075#1086' '#1089#1091#1073#1098#1077#1082#1090#1072' - '#1089#1086#1089#1090#1072#1074#1080#1090#1077#1083#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072'( '#1074' ' +
              #1090'.'#1095'. '#1082#1086#1084#1080#1089#1089#1080#1086#1085#1077#1088#1072' / '#1072#1075#1077#1085#1090#1072')')
          ParentFont = False
        end
        object Memo206: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 476.220780000000000000
          Width = 555.590910000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1101#1082#1086#1085#1086#1084#1080#1095#1077#1089#1082#1086#1075#1086' '#1089#1091#1073#1098#1077#1082#1090#1072' - '#1089#1086#1089#1090#1072#1074#1080#1090#1077#1083#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072)
          ParentFont = False
        end
        object Memo207: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 498.897960000000100000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset_SVH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              '[frxDB_SVH."SVH_OWNER"], '#1048#1053#1053'/'#1050#1055#1055'  [frxDB_SVH."INN"] / [frxDB_SVH' +
              '."KPP"] ')
          ParentFont = False
        end
        object Memo208: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 498.897960000000100000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 14 )')
          ParentFont = False
        end
        object Memo209: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 517.016080000000200000
          Width = 404.409710000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '( '#1084#1086#1078#1077#1090' '#1085#1077' '#1079#1072#1087#1086#1083#1085#1103#1090#1100#1089#1103' '#1087#1088#1080' '#1087#1088#1086#1089#1090#1072#1074#1083#1077#1085#1080#1080' '#1087#1077#1095#1072#1090#1080' '#1074' '#1052'.'#1055'., '#1084#1086#1078#1077#1090' '#1073#1099#1090 +
              #1100' '#1091#1082#1072#1079#1072#1085' '#1048#1053#1053' / '#1050#1055#1055' )')
          ParentFont = False
        end
        object Memo210: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 498.897960000000100000
          Width = 453.543600000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset_SVH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              '[frxDBDataset1."ZAYV"], '#1048#1053#1053'/'#1050#1055#1055'  [frxDBDataset1."INN"]/[frxDBDat' +
              'aset1."KPP"] ')
          ParentFont = False
        end
        object Memo211: TfrxMemoView
          AllowVectorExport = True
          Left = 1024.252630000000000000
          Top = 498.897960000000100000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 19 )')
          ParentFont = False
        end
        object Memo212: TfrxMemoView
          AllowVectorExport = True
          Left = 593.724800000000000000
          Top = 517.016080000000200000
          Width = 404.409710000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '( '#1084#1086#1078#1077#1090' '#1085#1077' '#1079#1072#1087#1086#1083#1085#1103#1090#1100#1089#1103' '#1087#1088#1080' '#1087#1088#1086#1089#1090#1072#1074#1083#1077#1085#1080#1080' '#1087#1077#1095#1072#1090#1080' '#1074' '#1052'.'#1055'., '#1084#1086#1078#1077#1090' '#1073#1099#1090 +
              #1100' '#1091#1082#1072#1079#1072#1085' '#1048#1053#1053' / '#1050#1055#1055' )')
          ParentFont = False
        end
        object Memo213: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 536.693259999999900000
          Width = 30.236240000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1052'.'#1055'.')
          ParentFont = False
        end
        object Memo214: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 536.693259999999900000
          Width = 30.236240000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1052'.'#1055'.')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 136.440944880000000000
        Top = 464.882190000000000000
        Width = 1065.827460000000000000
        PrintOnFirstPage = False
        object Memo132: TfrxMemoView
          AllowVectorExport = True
          Left = 109.385900000000000000
          Top = 120.188976377953000000
          Width = 278.338590000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          AllowVectorExport = True
          Left = 387.724490000000000000
          Top = 120.188976377953000000
          Width = 22.677162910000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          AllowVectorExport = True
          Left = 464.063080000000000000
          Top = 120.188976377953000000
          Width = 45.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          AllowVectorExport = True
          Left = 509.063080000000000000
          Top = 120.188976379999800000
          Width = 57.881880000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          AllowVectorExport = True
          Left = 874.472480000000000000
          Top = 120.267721419999900000
          Width = 34.771653540000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '10')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          AllowVectorExport = True
          Left = 566.944960000000000000
          Top = 120.188976377953000000
          Width = 82.322820000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          AllowVectorExport = True
          Left = 649.267780000000000000
          Top = 120.188976377953000000
          Width = 37.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          AllowVectorExport = True
          Left = 686.267780000000000000
          Top = 120.188976377953000000
          Width = 41.102350000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo140: TfrxMemoView
          AllowVectorExport = True
          Left = 727.370130000000000000
          Top = 120.188976379999800000
          Width = 65.338590000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '8')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          AllowVectorExport = True
          Left = 792.708720000000000000
          Top = 120.267721419999900000
          Width = 81.763760000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '9')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          AllowVectorExport = True
          Left = 961.929190000000000000
          Top = 120.267721419999900000
          Width = 101.779530000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '11')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          AllowVectorExport = True
          Left = 109.385900000000000000
          Top = 25.779529999999960000
          Width = 278.338590000000000000
          Height = 94.488193860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072'('#1086#1087#1080#1089#1072#1085#1080#1077
            #1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1093' '#1088#1072#1073#1086#1090', '#1086#1082#1072#1079#1072#1085#1085#1099#1093
            #1091#1089#1083#1091#1075'), '#1080#1084#1091#1097#1077#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1087#1088#1072#1074#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          AllowVectorExport = True
          Left = 387.724490000000000000
          Top = 25.779529999999960000
          Width = 76.118120000000000000
          Height = 28.724409450000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1076#1080#1085#1080#1094#1072
            #1080#1079#1084#1077#1088#1077#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          AllowVectorExport = True
          Left = 464.063080000000000000
          Top = 25.779529999999960000
          Width = 45.000000000000000000
          Height = 94.488193860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083#1080'-'
            #1095#1077#1089#1090#1074#1086
            '('#1086#1073#1098#1077#1084')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo146: TfrxMemoView
          AllowVectorExport = True
          Left = 727.370130000000000000
          Top = 25.779529999999960000
          Width = 65.338590000000000000
          Height = 94.488193860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1091#1084#1084#1072' '#1085#1072#1083#1086#1075#1072', '#1087#1088#1077#1076#1098#1103#1074#1083#1103#1077#1084#1072#1103' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1102)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          AllowVectorExport = True
          Left = 686.267780000000000000
          Top = 25.779529999999960000
          Width = 41.102350000000000000
          Height = 94.488193860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1083#1086'- '
            #1075#1086#1074#1072#1103' '
            #1089#1090#1072#1074#1082#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          AllowVectorExport = True
          Left = 649.267780000000000000
          Top = 25.779529999999960000
          Width = 37.000000000000000000
          Height = 94.488193860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042' '#1090#1086#1084' '#1095#1080#1089#1083#1077' '#1089#1091#1084#1084#1072' '#1072#1082#1094#1080#1079#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo149: TfrxMemoView
          AllowVectorExport = True
          Left = 566.944960000000000000
          Top = 25.779529999999960000
          Width = 82.322820000000000000
          Height = 94.488193860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1086#1080#1084#1086#1089#1090#1100
            #1090#1086#1074#1072#1088#1086#1074' ('#1088#1072#1073#1086#1090','
            #1091#1089#1083#1091#1075'), '
            #1080#1084#1091#1097#1077#1089#1090'-'
            #1074#1077#1085#1085#1099#1093' '#1087#1088#1072#1074' '
            #1073#1077#1079' '#1085#1072#1083#1086#1075#1072' - '
            #1074#1089#1077#1075#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo150: TfrxMemoView
          AllowVectorExport = True
          Left = 509.063080000000000000
          Top = 25.779529999999960000
          Width = 57.881880000000000000
          Height = 94.488193860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1062#1077#1085#1072
            '('#1090#1072#1088#1080#1092')'
            #1079#1072' '
            #1077#1076#1080#1085#1080#1094#1091' '
            #1080#1079#1084#1077#1088#1077#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo151: TfrxMemoView
          AllowVectorExport = True
          Left = 792.708720000000000000
          Top = 25.779529999999960000
          Width = 81.763760000000000000
          Height = 94.488193860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1086#1080#1084#1086#1089#1090#1100
            #1090#1086#1074#1072#1088#1086#1074' ('#1088#1072#1073#1086#1090','
            #1091#1089#1083#1091#1075'), '
            #1080#1084#1091#1097#1077#1089#1090'-'
            #1074#1077#1085#1085#1099#1093' '#1087#1088#1072#1074)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo152: TfrxMemoView
          AllowVectorExport = True
          Left = 874.472480000000000000
          Top = 25.779529999999960000
          Width = 87.456710000000000000
          Height = 39.307089060000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1088#1072#1085#1072
            #1087#1088#1086#1080#1089#1093#1086#1078#1076#1077#1085#1080#1103
            #1090#1086#1074#1072#1088#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo153: TfrxMemoView
          AllowVectorExport = True
          Left = 961.929190000000000000
          Top = 25.779529999999960000
          Width = 101.779530000000000000
          Height = 94.488193860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088' '
            #1090#1072#1084#1086#1078#1077#1085#1085#1086#1081' '
            #1076#1077#1082#1083#1072#1088#1072#1094#1080#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo154: TfrxMemoView
          AllowVectorExport = True
          Left = 874.582677170000000000
          Top = 65.354360000000100000
          Width = 34.771643780000000000
          Height = 54.803149606299200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1094#1080#1092'-'
            #1088#1086'-'
            #1074#1086#1081
            #1082#1086#1076)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo155: TfrxMemoView
          AllowVectorExport = True
          Left = 909.354330710000000000
          Top = 65.354360000000100000
          Width = 52.535433070866100000
          Height = 54.803149610000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1088#1072#1090#1082#1086#1077
            #1085#1072#1080#1084#1077'-'
            #1085#1086#1074#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo156: TfrxMemoView
          AllowVectorExport = True
          Left = 909.354330710000000000
          Top = 120.267780000000000000
          Width = 52.913385826771700000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '10'#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo157: TfrxMemoView
          AllowVectorExport = True
          Left = 387.850650000000000000
          Top = 54.503937010000130000
          Width = 22.677165350000000000
          Height = 65.763784410000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1050#1086#1076)
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          AllowVectorExport = True
          Left = 410.393778900000000000
          Top = 120.188976377953000000
          Width = 53.291328820000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '2'#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo159: TfrxMemoView
          AllowVectorExport = True
          Left = 410.393778900000000000
          Top = 54.503937010000130000
          Width = 53.291328820000000000
          Height = 65.763784410000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1091#1089#1083#1086#1074#1085#1086#1077
            #1086#1073#1086#1079#1085#1072'-'
            #1095#1077#1085#1080#1077
            '('#1085#1072#1094#1080#1086'-'
            #1085#1072#1083#1100#1085#1086#1077')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 120.417332599999800000
          Width = 45.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1040)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 45.000000000000000000
          Top = 120.188976379999800000
          Width = 61.661410000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1041)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = 25.779529999999960000
          Width = 45.000000000000000000
          Height = 94.488193860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470
            #1087'/'#1087)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 45.000000000000000000
          Top = 25.779529999999960000
          Width = 61.661410000000000000
          Height = 94.488193860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076' '#1090#1086#1074#1072#1088#1072'/'
            #1088#1072#1073#1086#1090', '#1091#1089#1083#1091#1075)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 108.118110240000000000
          Top = 25.779529999999960000
          Width = 7.559060000000000000
          Height = 110.362204720000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000022000
          Width = 653.858690000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1059#1085#1080#1074#1077#1088#1089#1072#1083#1100#1085#1099#1081' '#1087#1077#1088#1077#1076#1072#1090#1086#1095#1085#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090' '#8470' [FormatMaskText('#39'########'#39 +
              ',<frxDBDataset1."NOMER">)] '#1086#1090' [frxDBDataset1."DATE_IS"]')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Left = 965.559680000000000000
          Top = 3.779530000000022000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1051#1080#1089#1090' [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBRepCheck: TfrxDBDataset
    UserName = 'frxDBRepCheck'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_PART=ID_PART'
      'ID_TICKET=ID_TICKET'
      'NPP=NPP'
      'STOIMOST=STOIMOST'
      'GOODS_CAT=GOODS_CAT'
      'VALUTA=VALUTA'
      'BROKER=BROKER'
      'BRUTTO=BRUTTO'
      'TRAN=TRAN'
      'ID_SHIPPER=ID_SHIPPER'
      'ID_SCALE=ID_SCALE'
      'TP_MOVE_CBX_CODE=TP_MOVE_CBX_CODE'
      'PLACES=PLACES'
      'GOODS=GOODS'
      'VAL=VAL'
      'SHIPPER=SHIPPER'
      'N_PART=N_PART'
      'POLUCH=POLUCH'
      'ID1=ID1'
      'N_TICKET=N_TICKET'
      'DT_IS=DT_IS'
      'USERNAME=USERNAME'
      'STATUS=STATUS'
      'STEP_CTRL=STEP_CTRL'
      'ID_CARRIER=ID_CARRIER'
      'CUST_PROC=CUST_PROC'
      'POP=POP'
      'CUST_USER=CUST_USER'
      'N_TS=N_TS'
      'N_TRAILER_HUMAN=N_TRAILER_HUMAN'
      'DRIVER=DRIVER')
    DataSet = DM.Qry_RepCheck
    BCDToCurrency = False
    Left = 225
    Top = 112
  end
  object frxCBXOutDocs: TfrxDBDataset
    UserName = 'frxCBXOutDocs'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_TICKET=ID_TICKET'
      'TYPE_DOC=TYPE_DOC'
      'NAME=NAME'
      'NDOC=NDOC'
      'DDOC=DDOC')
    DataSet = DM.Qry_WhDocOut
    BCDToCurrency = False
    Left = 297
    Top = 112
  end
  object frxDB_QryRepCheckKpp: TfrxDBDataset
    UserName = 'frxDB_QryRepCheckKpp'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_TICKET=ID_TICKET'
      'N_TS=N_TS'
      'N_TRAILER=N_TRAILER'
      'N_TRAILER_HUMAN=N_TRAILER_HUMAN'
      'DRIVER=DRIVER'
      'PHONE=PHONE'
      'KOD_TS=KOD_TS'
      'KOD_TS_HUMAN=KOD_TS_HUMAN'
      'TARGET=TARGET'
      'TARGET_HUMAN=TARGET_HUMAN'
      'CRASHES=CRASHES'
      'TS_ACTION_CODE=TS_ACTION_CODE'
      'MARKA=MARKA'
      'VES=VES'
      'VESOVSHIK=VESOVSHIK'
      'DT_VES=DT_VES'
      'VES_TS=VES_TS'
      'VES_TR=VES_TR'
      'VES_GRUZA=VES_GRUZA'
      'N_TICKET=N_TICKET'
      'DT_IS=DT_IS'
      'USERNAME=USERNAME'
      'NUM_PARK=NUM_PARK')
    DataSet = DM.Qry_RepCheckKpp
    BCDToCurrency = False
    Left = 144
    Top = 160
  end
  object frxDB_PayList: TfrxDBDataset
    UserName = 'frxDB_PayList'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_TICKET=ID_TICKET'
      'N_PART=N_PART'
      'N_TICKET=N_TICKET'
      'DT_IS=DT_IS'
      'ZAYV=ZAYV')
    DataSet = DM.Qry_PayList
    BCDToCurrency = False
    Left = 144
    Top = 208
  end
  object frxDBReppassOut: TfrxDBDataset
    UserName = 'frxDBReppassOut'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ID=ID'
      'ID_TS=ID_TS'
      'DT_OUT=DT_OUT'
      'DT_FINISHED=DT_FINISHED'
      'USER_OUT=USER_OUT'
      'USER_FINISHED=USER_FINISHED'
      'TYPE_PASS=TYPE_PASS'
      'N_PASS=N_PASS'
      'N_TS=N_TS'
      'N_TRAILER=N_TRAILER'
      'N_TICKET=N_TICKET'
      'N_ZTK=N_ZTK'
      'DT_CHECKOUT=DT_CHECKOUT'
      'LOCKED=LOCKED'
      'DOVER=DOVER'
      'DATE_DOVER=DATE_DOVER'
      'FIO=FIO'
      'ID1=ID1'
      'ID_PASS=ID_PASS'
      'TYPE_DOC=TYPE_DOC'
      'NAME=NAME'
      'NDOC=NDOC'
      'DDOC=DDOC'
      'CUST_PROC=CUST_PROC')
    DataSet = DM.Qry_RepPassOut
    BCDToCurrency = False
    Left = 160
    Top = 256
  end
  object frxRepTsPassout: TfrxDBDataset
    UserName = 'frxRepTsPassout'
    CloseDataSource = False
    FieldAliases.Strings = (
      'N_TS=N_TS'
      'DT_IN=DT_IN'
      'N_TRAILER=N_TRAILER')
    DataSet = DM.Qry_RepPassOutTs
    BCDToCurrency = False
    Left = 144
    Top = 312
  end
  object Rep3: TfrxReport
    Version = '6.9.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41745.822557453700000000
    ReportOptions.LastChange = 44217.623500277770000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnGetValue = Rep3GetValue
    Left = 120
    Top = 16
    Datasets = <>
    Variables = <
      item
        Name = ' My_date'
        Value = Null
      end
      item
        Name = 'D1'
        Value = Null
      end
      item
        Name = 'D2'
        Value = Null
      end
      item
        Name = 'Ts_Smena'
        Value = Null
      end
      item
        Name = 'Ts_Period'
        Value = Null
      end
      item
        Name = 'Ts_Avg'
        Value = Null
      end
      item
        Name = 'Ts_Ztk'
        Value = Null
      end
      item
        Name = 'Ts_CbxO'
        Value = Null
      end
      item
        Name = 'Pl_CbxC'
        Value = Null
      end
      item
        Name = 'Ts_Moving'
        Value = Null
      end
      item
        Name = 'Tp_Smena'
        Value = Null
      end
      item
        Name = 'Tp_Period'
        Value = Null
      end
      item
        Name = 'Tp_Import'
        Value = Null
      end
      item
        Name = 'Tp_SmenaOff'
        Value = Null
      end
      item
        Name = 'Tp_PeriodOff'
        Value = Null
      end
      item
        Name = 'Tp_ReImp'
        Value = Null
      end
      item
        Name = 'SumUslug_Smena'
        Value = Null
      end
      item
        Name = 'SumUslug_Period'
        Value = Null
      end
      item
        Name = 'Ts_Transit'
        Value = Null
      end
      item
        Name = 'Cheque_Avg'
        Value = Null
      end
      item
        Name = 'D_Prev'
        Value = Null
      end
      item
        Name = 'D_StartMonth'
        Value = Null
      end
      item
        Name = 'Usr'
        Value = Null
      end
      item
        Name = 'Faktur_Total'
        Value = Null
      end
      item
        Name = 'Faktur_NotPass'
        Value = Null
      end
      item
        Name = 'Tp_Avg'
        Value = Null
      end
      item
        Name = 'Dt_Period'
        Value = ''
      end
      item
        Name = 'Dt_Avg'
        Value = ''
      end
      item
        Name = 'Sum_TamSklad'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 7.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 910.866730000000000000
        Top = 18.897650000000000000
        Width = 748.346940000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 113.385900000000000000
          Width = 600.945270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1090#1095#1077#1090' '#1087#1086' '#1076#1074#1080#1078#1077#1085#1080#1102' '#1058#1057' '#1095#1077#1088#1077#1079' '#1050#1055#1055' '#1085#1072' [D1]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 68.031540000000010000
          Width = 642.520100000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1058#1063#1045#1058
            #1087#1086' '#1058#1051#1058' '#1079#1072' '#1087#1077#1088#1080#1086#1076' '#1089' [D1] '#1087#1086' [D2]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 7.559059999999999000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1054#1090#1095#1077#1090' '#1089#1092#1086#1088#1084#1080#1088#1086#1074#1072#1083' '#1080' '#1087#1088#1086#1074#1077#1088#1080#1083' '#1076#1080#1089#1087#1077#1090#1095#1077#1088':  ')
          ParentFont = False
        end
        object Date: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 7.559059999999999000
          Width = 438.425480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Usr]    [Date] [Time]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Top = 139.842610000000000000
          Width = 230.551330000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1088'. '#1080#1085#1090#1077#1088#1074#1072#1083)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 139.842610000000000000
          Width = 124.724490000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1073#1099#1083#1086' '#1058#1057' '
            #1085#1072' '#1086#1092#1086#1088#1084#1083#1077#1085#1080#1077)
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Top = 139.842610000000000000
          Width = 381.732530000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1058#1051#1058)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Top = 173.858380000000000000
          Width = 120.944960000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1058#1050
            '('#1058#1057')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Top = 173.858380000000000000
          Width = 230.551330000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1077#1088#1080#1086#1076'  '
            #1089'   [D1]'
            #1087#1086' [D2]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 173.858380000000000000
          Width = 124.724490000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Ts_Period]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Top = 226.771800000000000000
          Width = 120.944960000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 173.858380000000000000
          Width = 260.787570000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1042#1061)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 226.771800000000000000
          Width = 132.283550000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Top = 226.771800000000000000
          Width = 230.551330000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083'-'#1074#1086' '#1058#1057' '#1074
            #1089#1088#1077#1076#1085#1077#1084'  '#1079#1072' '#1089#1091#1090#1082#1080' ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 226.771800000000000000
          Width = 124.724490000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Ts_Avg]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 196.535560000000000000
          Width = 132.283550000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1090#1082#1088#1099#1090#1099#1081
            '('#1087#1072#1088#1082'. '#1084#1077#1089#1090')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Top = 196.535560000000000000
          Width = 128.504020000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1082#1088#1099#1090#1099#1081
            '('#1079#1072#1085#1103#1090#1086' '#1103#1095#1077#1077#1082')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 296.228510000000000000
          Width = 597.165740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1074#1086#1076' '#1076#1072#1085#1085#1099#1093' '#1087#1086' '#1080#1090#1086#1075#1072#1084' '#1088#1072#1073#1086#1090#1099' '#1058#1051#1058' '#1089' [D1] '#1087#1086' [D2]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Top = 226.771800000000000000
          Width = 128.504020000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Top = 332.732530000000000000
          Width = 230.551330000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1088'. '#1080#1085#1090#1077#1088#1074#1072#1083)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Top = 370.543600000000000000
          Width = 230.551330000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1077#1088#1080#1086#1076' '#1089' '
            #1089'   [D1] '
            #1087#1086' [D2]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 332.732530000000000000
          Width = 204.094620000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1086
            #1058#1055)
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 332.732530000000000000
          Width = 120.944960000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1087#1080#1089#1072#1085#1086
            #1058#1055)
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 332.732530000000000000
          Width = 181.417440000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1091#1084#1084#1072' '#1086#1082#1072#1079#1072#1085#1085#1099#1093' '#1091#1089#1083#1091#1075', '#1088#1091#1073'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 370.543600000000000000
          Width = 204.094620000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Tp_Period]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 370.543600000000000000
          Width = 120.944960000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Tp_PeriodOff]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 370.543600000000000000
          Width = 181.417440000000000000
          Height = 52.913420000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Sum_Mon]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 529.354670000000100000
          Width = 120.944960000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1088#1077#1076#1085#1080#1081' "'#1095#1077#1082'" '#1079#1072' 1  '#1089#1087#1080#1089#1072#1085#1085#1091#1102' '#1058#1055'  '#1079#1072' '#1087#1077#1088#1080#1086#1076)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 529.354670000000100000
          Width = 181.417440000000000000
          Height = 52.913420000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Cheque_Avg]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 423.354670000000100000
          Width = 204.094620000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1048#1084#1087#1086#1088#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 423.354670000000100000
          Width = 120.944960000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1077#1080#1084#1087#1086#1088#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 423.354670000000100000
          Width = 181.417440000000000000
          Height = 52.913420000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1088#1072#1085#1079#1080#1090#1085#1099#1077' '#1058#1057)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 476.268090000000000000
          Width = 204.094620000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Tp_Import]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 476.268090000000000000
          Width = 120.944960000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Tp_ReImp]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 476.268090000000000000
          Width = 181.417440000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Top = 423.354670000000000000
          Width = 230.551330000000000000
          Height = 105.826840000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1058#1055' '#1087#1086' '#1080#1084#1087#1086#1088#1090#1091','
            ' '#1088#1077#1080#1084#1087#1086#1088#1090#1091';'#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1090#1088#1072#1085#1079#1080#1090#1085#1099#1093#1058#1057)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 529.181510000000000000
          Width = 230.551330000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1088#1077#1076#1085#1077#1077' '#1082#1086#1083'-'#1074#1086' '#1089#1087#1080#1089#1072#1085#1085#1099#1093' '
            #1058#1055' '#1079#1072' '#1089#1084#1077#1085#1091)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 529.181510000000000000
          Width = 204.094620000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Tp_Avg]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 582.449290000000000000
          Width = 230.551330000000000000
          Height = 90.708720000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1072#1084#1086#1078#1077#1085#1085#1099#1081
            #1089#1082#1083#1072#1076)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 582.449290000000000000
          Width = 204.094620000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1086
            #1076#1077#1082#1083#1072#1088#1072#1094#1080#1081' '#1085#1072' '#1090#1086#1074#1072#1088#1099'('#1044#1058')')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 582.449290000000000000
          Width = 120.944960000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1088#1077#1076#1085#1080#1081
            '"'#1095#1077#1082'" '#1085#1072' '#1044#1058)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 582.449290000000000000
          Width = 181.417440000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1091#1084#1084#1072' '#1086#1082#1072#1079#1072#1085#1085#1099#1093' '#1091#1089#1083#1091#1075', '#1088#1091#1073'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 620.260360000000000000
          Width = 204.094620000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Dt_Period]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 620.260360000000000000
          Width = 120.944960000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Dt_Avg]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 620.260360000000000000
          Width = 181.417440000000000000
          Height = 52.913420000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Sum_TamSklad]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBBank: TfrxDBDataset
    UserName = 'frxDBBank'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ZAYV=ZAYV'
      'MONEY=MONEY'
      'N_DOC=N_DOC'
      'ID_DOC=ID_DOC'
      'DT=DT'
      'KOD_VID=KOD_VID'
      'KOD_DOC=KOD_DOC'
      'FISCAL_FLAG=FISCAL_FLAG'
      'PRIM=PRIM'
      'EXP_FLAG=EXP_FLAG'
      'NAME=NAME'
      'ZAYV1=ZAYV1'
      'DATE_OP=DATE_OP')
    DataSet = DM.Qry_Bank
    BCDToCurrency = False
    Left = 144
    Top = 368
  end
  object Rep_buh: TfrxReport
    Version = '6.9.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Copies = 2
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40403.703565092600000000
    ReportOptions.LastChange = 44397.448589363420000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      '      '
      '                                                  '
      '  '
      'var'
      ' sum_w_vat,stoim_w_vat,DTotalSum,dTotalSumVat:Double;'
      ' vat,sum_vat:String;                           '
      '                                         '
      '          '
      '  '
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                             '
      
        ' stoim_w_vat:=<frxDBRepInfaktura."SUMMA">/<frxDBRepInfaktura."KO' +
        'L">;'
      
        ' if <frxDBRepInfaktura."VAT"> > 0 then vat:=IntToStr(<frxDBRepIn' +
        'faktura."VAT">)+'#39'%'#39' else'
      '    vat:='#39#1073#1077#1079' '#1053#1044#1057#39';'
      
        ' if <frxDBRepInfaktura."SUM_VAT"> > 0 then sum_vat:=FloatToStr(<' +
        'frxDBRepInfaktura."SUM_VAT">) else'
      '    sum_vat:='#39#39';                              '
      '         dTotalSum:=dTotalSum+<frxDBRepInfaktura."TOTAL_SUM">;'
      
        ' dTotalSumVat:=dTotalSumVat+<frxDBRepInfaktura."SUM_VAT">;      ' +
        '               '
      'end;'
      'procedure MasterFooter3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                                        '
      'end;'
      ''
      'begin          '
      ' dTotalSum:=0;  '
      ' dTotalSumVat:=0;'
      ' //TotalSumProp:='#39#39';               '
      'end.')
    OnGetValue = Rep_buhGetValue
    Left = 168
    Top = 16
    Datasets = <
      item
        DataSet = frxDB_SVH
        DataSetName = 'frxDB_SVH'
      end
      item
        DataSet = frxDBRepInfaktura
        DataSetName = 'frxDBRepInfaktura'
      end>
    Variables = <
      item
        Name = ' MyVar'
        Value = Null
      end
      item
        Name = 'TotalSumProp'
        Value = Null
      end
      item
        Name = 'Disp'
        Value = Null
      end
      item
        Name = 'Repactworks_Nts'
        Value = Null
      end
      item
        Name = 'Dolj_Disp'
        Value = Null
      end
      item
        Name = 'VAT_Rate'
        Value = Null
      end
      item
        Name = 'VAT_Sum'
        Value = Null
      end
      item
        Name = 'N_contract'
        Value = Null
      end
      item
        Name = 'Status'
        Value = Null
      end
      item
        Name = 'Doc_5a'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      LargeDesignHeight = True
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 15.874015750000000000
        Top = 842.835190000000000000
        Width = 1065.827460000000000000
        OnAfterCalcHeight = 'MasterData1OnAfterCalcHeight'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        AllowSplit = True
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frxDBRepInfaktura
        DataSetName = 'frxDBRepInfaktura'
        RowCount = 0
        Stretched = True
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 908.598425196850000000
          Width = 34.771643780000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '--')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 841.700787401575000000
          Width = 66.519685039370100000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRepInfaktura."TOTAL_SUM1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 988.346473780000000000
          Width = 75.322820000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '--')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 942.992125980000000000
          Width = 44.976377952755900000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '--')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 109.228346460000000000
          Width = 295.937007874016000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            
              ' [frxDBRepInfaktura."USLUGA"]  ('#1087'. [frxDBRepInfaktura."NPP_STR"]' +
              ') ')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 435.779527560000000000
          Width = 22.677162910000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '--')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 513.259874250000000000
          Width = 45.000000000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRepInfaktura."KOL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 558.236252200000000000
          Width = 57.881880000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[stoim_w_vat]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063023860000000000
          Width = 82.322820000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRepInfaktura."SUMMA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 698.456724650000000000
          Width = 37.000000000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1073#1077#1079
            #1072#1082#1094#1080#1079#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 734.842610000000000000
          Width = 41.574803150000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<frxDBRepInfaktura."VAT"> = 0,'#39#1073#1077#1079' '#1053#1044#1057#39',<frxDBRepInfaktura.' +
              '"VAT">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 776.314960630000000000
          Width = 65.385826770000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[IIF(<frxDBRepInfaktura."SUM_VAT"> = 0 ,'#39#1073#1077#1079' '#1053#1044#1057#39',<frxDBRepInfak' +
              'tura."SUM_VAT">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 458.456692910000000000
          Width = 54.425196850000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '--')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 108.094488190000000000
          Width = 7.559060000000000000
          Height = 15.873954720000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Width = 45.000000000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 45.000000000000000000
          Width = 61.661410000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo222: TfrxMemoView
          AllowVectorExport = True
          Left = 405.165354330000000000
          Width = 30.614173228346500000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '-')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 515.543492600000100000
        Top = 18.897650000000000000
        Width = 1065.827460000000000000
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 121.779530000000000000
          Top = 245.559060000000000000
          Width = 80.000000000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 201.779530000000000000
          Top = 245.559060000000000000
          Width = 818.425170000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBRepInfaktura."ZAYV"]')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 121.779530000000000000
          Top = 263.559060000000000000
          Width = 48.000000000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1040#1076#1088#1077#1089)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 169.779530000000000000
          Top = 263.559060000000000000
          Width = 850.425170000000000000
          Height = 15.874015750000000000
          StretchMode = smActualHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBRepInfaktura."FULLADRESSZAYV"]')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 276.779530000000000000
          Top = 281.559060000000000000
          Width = 743.425170000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '  [frxDBRepInfaktura."INN"] /  [frxDBRepInfaktura."KPP"] ')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 121.779530000000000000
          Top = 281.559060000000000000
          Width = 154.000000000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1053#1053'/'#1050#1055#1055' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 259.779530000000000000
          Top = 152.559060000000000000
          Width = 759.425170000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_SVH."INN"] / [frxDB_SVH."KPP"]')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 121.779530000000000000
          Top = 134.559060000000000000
          Width = 52.000000000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1040#1076#1088#1077#1089)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 173.779530000000000000
          Top = 134.559060000000000000
          Width = 846.425170000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_SVH."FULL_ADRESS"]')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 121.779530000000000000
          Top = 152.559060000000000000
          Width = 135.000000000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1053#1053'/'#1050#1055#1055' '#1087#1088#1086#1076#1072#1074#1094#1072)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 121.779530000000000000
          Top = 116.559060000000000000
          Width = 72.000000000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1055#1088#1086#1076#1072#1074#1077#1094)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 121.779530000000000000
          Top = 170.559060000000000000
          Width = 199.559060000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1043#1088#1091#1079#1086#1086#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100' '#1080' '#1077#1075#1086' '#1072#1076#1088#1077#1089)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 317.779530000000000000
          Top = 170.559060000000000000
          Width = 702.425170000000000000
          Height = 15.874015750000000000
          StretchMode = smActualHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1086#1085' '#1078#1077)
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 121.779530000000000000
          Top = 188.559060000000000000
          Width = 199.559060000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1043#1088#1091#1079#1086#1087#1086#1083#1091#1095#1072#1090#1077#1083#1100' '#1080' '#1077#1075#1086' '#1072#1076#1088#1077#1089)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 317.779530000000000000
          Top = 188.559060000000000000
          Width = 702.425170000000000000
          Height = 15.874015750000000000
          StretchMode = smActualHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ' [frxDBRepInfaktura."ZAYV"],[frxDBRepInfaktura."FULLADRESSZAYV"]')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 121.779530000000000000
          Top = 206.559060000000000000
          Width = 252.000000000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1050' '#1087#1083#1072#1090#1077#1078#1085#1086'-'#1088#1072#1089#1095#1105#1090#1085#1086#1084#1091' '#1076#1086#1082#1091#1084#1077#1085#1090#1091' '#8470)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 373.779530000000000000
          Top = 206.559060000000000000
          Width = 646.425170000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          VAlign = vaCenter
        end
        object frxDBDataset_SVHG142: TfrxMemoView
          AllowVectorExport = True
          Left = 197.149660000000000000
          Top = 113.385900000000000000
          Width = 823.937540000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset_SVH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDB_SVH."FULL_NAME"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 124.929190000000000000
          Top = 55.149660000000000000
          Width = 158.834260000000000000
          Height = 20.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1057#1063#1025#1058'-'#1060#1040#1050#1058#1059#1056#1040' '#8470'  ')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 597.338900000000000000
          Top = 0.086580000000001430
          Width = 442.433210000000000000
          Height = 56.015770000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#8470'1'
            
              #1082'  '#1087#1086#1089#1090#1072#1085#1086#1074#1083#1077#1085#1080#1102' '#1055#1088#1072#1074#1080#1090#1077#1083#1100#1089#1090#1074#1072' '#1056#1086#1089#1089#1080#1081#1089#1082#1086#1081' '#1060#1077#1076#1077#1088#1072#1094#1080#1080' '#1086#1090' 26 '#1076#1077#1082#1072#1073#1088 +
              #1103' 2011 '#1075'. N 1137'
            
              '('#1074' '#1088#1077#1076'. '#1087#1086#1089#1090#1072#1085#1086#1074#1083#1077#1085#1080#1081' '#1055#1088#1072#1074#1080#1090#1077#1083#1100#1089#1090#1074#1072' '#1056#1086#1089#1089#1080#1081#1089#1082#1086#1081' '#1060#1077#1076#1077#1088#1072#1094#1080#1080' '#1086#1090' 25 '#1084 +
              #1072#1103' 2017 '#1075'. '#8470' 625,'
            #1086#1090' 19 '#1072#1074#1075#1091#1089#1090#1072' 2017 '#1075'. '#8470' 981, '#1086#1090' 2 '#1072#1087#1088#1077#1083#1103' 2021 '#1075'. '#8470' 534)')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 1028.984850000000000000
          Top = 58.929190000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(1)')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 115.165430000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(2)')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 134.063080000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(2'#1072')')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 149.181200000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(2'#1073')')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 168.078850000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(3)')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 186.976500000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(4)')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 205.874150000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(5)')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 245.771800000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(6)')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 260.889920000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(6'#1072')')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.882500000000000000
          Top = 276.008040000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(6'#1073')')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 121.779530000000000000
          Top = 300.685220000000000000
          Width = 184.236240000000000000
          Height = 19.653545750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1042#1072#1083#1102#1090#1072': '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077', '#1082#1086#1076' ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 310.756030000000000000
          Top = 304.464566930000000000
          Width = 709.409400000000000000
          Height = 12.094485750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1088#1086#1089#1089#1080#1081#1089#1082#1080#1081' '#1088#1091#1073#1083#1100', 643')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 1023.882500000000000000
          Top = 293.126160000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(7)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 291.228510000000000000
          Top = 55.149660000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            '[FormatMaskText('#39'########'#39',<frxDBRepInfaktura."NOMER">)]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 381.393940000000000000
          Top = 55.149660000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1086#1090)
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 404.071120000000000000
          Top = 55.149660000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBRepInfaktura."DATE_IS"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 124.929190000000000000
          Top = 77.606370000000000000
          Width = 158.834260000000000000
          Height = 20.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1057#1055#1056#1040#1042#1051#1045#1053#1048#1045' '#8470'  ')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 1028.984850000000000000
          Top = 81.606370000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(1'#1072')')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 291.228510000000000000
          Top = 77.606370000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '--')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 381.393940000000000000
          Top = 77.606370000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1086#1090)
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 404.071120000000000000
          Top = 77.606370000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '--')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          AllowVectorExport = True
          Left = 108.094488190000000000
          Top = 25.354360000000000000
          Width = 7.559060000000000000
          Height = 318.992169920000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          Top = 344.685220000000000000
          Width = 45.000000000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470
            #1087'/'#1087)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          AllowVectorExport = True
          Left = 45.000000000000000000
          Top = 344.685220000000000000
          Width = 61.661410000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076' '#1090#1086#1074#1072#1088#1072'/'
            #1088#1072#1073#1086#1090', '#1091#1089#1083#1091#1075)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          AllowVectorExport = True
          Left = 108.118110240000000000
          Top = 344.212740000000000000
          Width = 7.559060000000000000
          Height = 170.834684720000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 51.133889999999990000
          Width = 94.488250000000000000
          Height = 45.354360000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1059#1085#1080#1074#1077#1088#1089#1072#1083#1100#1085#1099#1081' '
            #1087#1077#1088#1077#1076#1072#1090#1086#1095#1085#1099#1081' '
            #1076#1086#1082#1091#1084#1077#1085#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Left = 9.779530000000000000
          Top = 115.826840000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1057#1090#1072#1090#1091#1089':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          AllowVectorExport = True
          Left = 65.252010000000000000
          Top = 113.047310000000000000
          Width = 26.456710000000000000
          Height = 26.456710000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Status]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 146.960730000000000000
          Width = 94.488250000000000000
          Height = 75.590600000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '1 - '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1072' '#1080
            #1087#1077#1088#1077#1076#1072#1090#1086#1095#1085#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
            '('#1072#1082#1090')'
            '2 - '#1087#1077#1088#1077#1076#1072#1090#1086#1095#1085#1099#1081' '
            #1076#1086#1082#1091#1084#1077#1085#1090' ('#1072#1082#1090')')
          ParentFont = False
        end
        object Memo215: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 121.732351810000000000
          Top = 322.724490000000000000
          Width = 524.126160000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088' '#1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1082#1086#1085#1090#1088#1072#1082#1090#1072', '#1076#1086#1075#1086#1074#1086#1088#1072' ('#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103') ' +
              '('#1087#1088#1080' '#1085#1072#1083#1080#1095#1080#1080'):')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo216: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 649.638041810000000000
          Top = 322.724490000000000000
          Width = 370.519480000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
          VAlign = vaCenter
        end
        object Memo217: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.835321810000000000
          Top = 318.039580000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(8)')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 109.228346460000000000
          Top = 344.779732600000000000
          Width = 295.937007870000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072'('#1086#1087#1080#1089#1072#1085#1080#1077
            #1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1093' '#1088#1072#1073#1086#1090', '#1086#1082#1072#1079#1072#1085#1085#1099#1093
            #1091#1089#1083#1091#1075'), '#1080#1084#1091#1097#1077#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1087#1088#1072#1074#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 435.944960000000000000
          Top = 344.779732600000000000
          Width = 77.102362200000000000
          Height = 28.724409450000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1076#1080#1085#1080#1094#1072
            #1080#1079#1084#1077#1088#1077#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 513.283550000000000000
          Top = 344.779732600000000000
          Width = 45.000000000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083#1080'-'
            #1095#1077#1089#1090#1074#1086
            '('#1086#1073#1098#1077#1084')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 776.590600000000000000
          Top = 344.779732600000000000
          Width = 65.338590000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1091#1084#1084#1072' '#1085#1072#1083#1086#1075#1072', '#1087#1088#1077#1076#1098#1103#1074#1083#1103#1077#1084#1072#1103' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1102)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 735.488250000000000000
          Top = 344.779732600000000000
          Width = 41.102350000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1083#1086'- '
            #1075#1086#1074#1072#1103' '
            #1089#1090#1072#1074#1082#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 698.488250000000000000
          Top = 344.779732600000000000
          Width = 37.000000000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042' '#1090#1086#1084' '#1095#1080#1089#1083#1077' '#1089#1091#1084#1084#1072' '#1072#1082#1094#1080#1079#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 616.165430000000000000
          Top = 344.779732600000000000
          Width = 82.322819999999990000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1086#1080#1084#1086#1089#1090#1100
            #1090#1086#1074#1072#1088#1086#1074' ('#1088#1072#1073#1086#1090','
            #1091#1089#1083#1091#1075'), '
            #1080#1084#1091#1097#1077#1089#1090'-'
            #1074#1077#1085#1085#1099#1093' '#1087#1088#1072#1074' '
            #1073#1077#1079' '#1085#1072#1083#1086#1075#1072' - '
            #1074#1089#1077#1075#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 558.283550000000000000
          Top = 344.779732600000000000
          Width = 57.881880000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1062#1077#1085#1072
            '('#1090#1072#1088#1080#1092')'
            #1079#1072' '
            #1077#1076#1080#1085#1080#1094#1091' '
            #1080#1079#1084#1077#1088#1077#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 842.047310000000000000
          Top = 344.779732600000000000
          Width = 66.645640000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1086#1080#1084#1086#1089#1090#1100
            #1090#1086#1074#1072#1088#1086#1074' ('#1088#1072#1073#1086#1090','
            #1091#1089#1083#1091#1075'), '
            #1080#1084#1091#1097#1077#1089#1090'-'
            #1074#1077#1085#1085#1099#1093' '#1087#1088#1072#1074)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 908.708720000000000000
          Top = 344.779732600000000000
          Width = 79.897650000000000000
          Height = 50.645679060000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1088#1072#1085#1072
            #1087#1088#1086#1080#1089#1093#1086#1078#1076#1077#1085#1080#1103
            #1090#1086#1074#1072#1088#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Left = 988.606370000000000000
          Top = 344.779732600000000000
          Width = 75.322819999999990000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1099#1081
            #1085#1086#1084#1077#1088' '#1076#1077#1082#1083#1072#1088#1072#1094#1080#1080
            #1085#1072' '#1090#1086#1074#1072#1088#1099' '#1080#1083#1080' '#1088#1077#1075#1080#1089#1090'-'
            #1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1087#1072#1088'-'
            #1090#1080#1080' '#1090#1086#1074#1072#1088#1072', '#1087#1086#1076#1083#1077#1078#1072#1097#1077#1075#1086
            #1087#1088#1086#1089#1083#1077#1078#1080#1074#1072#1077#1084#1086#1089#1090#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Left = 908.818895200000000000
          Top = 395.693152600000000000
          Width = 34.771653540000000000
          Height = 103.937039610000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1094#1080#1092'-'
            #1088#1086'-'
            #1074#1086#1081
            #1082#1086#1076)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          AllowVectorExport = True
          Left = 943.590570710000000000
          Top = 395.693152600000000000
          Width = 44.976373070000000000
          Height = 103.937039610000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1088#1072#1090#1082#1086#1077
            #1085#1072#1080#1084#1077'-'
            #1085#1086#1074#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          AllowVectorExport = True
          Left = 436.071120000000000000
          Top = 373.504139610000000000
          Width = 22.299212600000000000
          Height = 126.236264410000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1050#1086#1076)
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          AllowVectorExport = True
          Left = 458.614248900000000000
          Top = 373.504139610000000000
          Width = 54.425196850000000000
          Height = 126.236264410000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1091#1089#1083#1086#1074#1085#1086#1077
            #1086#1073#1086#1079#1085#1072'-'
            #1095#1077#1085#1080#1077
            '('#1085#1072#1094#1080#1086'-'
            #1085#1072#1083#1100#1085#1086#1077')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo220: TfrxMemoView
          AllowVectorExport = True
          Left = 405.630180000000000000
          Top = 344.700990000000000000
          Width = 30.236240000000000000
          Height = 154.960668980000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076
            #1074#1080#1076#1072
            #1090#1086#1074#1072
            #1088#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo223: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 120.944960000000000000
          Top = 225.456710000000000000
          Width = 138.614100000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1044#1086#1082#1091#1084#1077#1085#1090' '#1086#1073' '#1086#1090#1075#1088#1091#1079#1082#1077)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo225: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.047930000000000000
          Top = 224.771800000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(5'#1072')')
          ParentFont = False
        end
        object Memo226: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 385.732530000000000000
          Top = 223.992270000000000000
          Width = 21.448670000000000000
          Height = 15.874015750000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #8470)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo227: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 225.637795280000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[FormatMaskText('#39'########'#39',<frxDBRepInfaktura."NOMER">)]')
          ParentFont = False
        end
        object Memo228: TfrxMemoView
          AllowVectorExport = True
          Left = 557.370440000000000000
          Top = 224.771800000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1086#1090)
          ParentFont = False
        end
        object Memo229: TfrxMemoView
          AllowVectorExport = True
          Left = 577.047620000000000000
          Top = 225.637795280000000000
          Width = 442.205010000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBRepInfaktura."DATE_IS"]')
          ParentFont = False
        end
        object Memo224: TfrxMemoView
          AllowVectorExport = True
          Left = 268.346630000000000000
          Top = 225.637795280000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[Doc_5a]')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          AllowVectorExport = True
          Top = 499.323022599999900000
          Width = 45.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1040)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          AllowVectorExport = True
          Left = 45.000000000000000000
          Top = 499.543492599999900000
          Width = 61.661410000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1041)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606299212598000000
          Top = 499.189178980000100000
          Width = 295.937007870000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 435.944960000000000000
          Top = 499.189178980000100000
          Width = 22.677162910000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 513.283550000000000000
          Top = 499.189178980000100000
          Width = 45.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 558.283550000000000000
          Top = 499.189178980000100000
          Width = 57.881880000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 908.818895200000000000
          Top = 499.267924020000000000
          Width = 34.771653540000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '10')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 616.165430000000000000
          Top = 499.189178980000100000
          Width = 82.322820000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 698.488250000000000000
          Top = 499.189178980000100000
          Width = 37.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 735.488250000000000000
          Top = 499.189178980000100000
          Width = 41.102350000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 776.590600000000000000
          Top = 499.189178980000100000
          Width = 65.338590000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '8')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 842.047310000000000000
          Top = 499.267924020000000000
          Width = 66.645640000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '9')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 988.606370000000000000
          Top = 499.267924020000000000
          Width = 75.322820000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '11')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          AllowVectorExport = True
          Left = 943.370100710000000000
          Top = 499.267982600000000000
          Width = 44.976377950000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '10'#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          AllowVectorExport = True
          Left = 458.614248900000000000
          Top = 499.189178980000100000
          Width = 54.425196850000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '2'#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo221: TfrxMemoView
          AllowVectorExport = True
          Left = 405.165354330709000000
          Top = 499.189178980000100000
          Width = 30.614173228346500000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '1'#1072)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 526.110504720000000000
        Top = 880.630490000000000000
        Width = 1065.827460000000000000
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 118.559060000000000000
          Top = 87.338589999999950000
          Width = 207.000000000000000000
          Height = 34.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1085#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1099#1081' '#1087#1088#1077#1076#1087#1088#1080#1085#1080#1084#1072#1090#1077#1083#1100
            #1080#1083#1080' '#1080#1085#1086#1077' '#1091#1087#1086#1083#1085#1086#1084#1086#1095#1077#1085#1085#1086#1077' '#1083#1080#1094#1086'  ')
          ParentFont = False
          WordWrap = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 332.338590000000000000
          Top = 105.338590000000400000
          Width = 73.322820000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1086#1076#1087#1080#1089#1100')')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 411.440940000000000000
          Top = 105.338590000000400000
          Width = 145.425170000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1092'.'#1080'.'#1086'.)')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 602.338900000000000000
          Top = 105.881880000000600000
          Width = 364.141620000000000000
          Height = 26.559060000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              #1056#1077#1082#1074#1080#1079#1080#1090#1099' '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1072' '#1086' '#1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1086#1081' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1080#1085#1076#1080#1074#1080#1076#1091#1072#1083 +
              #1100#1085#1086#1075#1086' '#1087#1088#1077#1076#1087#1088#1080#1085#1080#1084#1072#1090#1077#1083#1103)
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 568.629870000000000000
          Top = 86.354301420000060000
          Width = 430.385900000000000000
          Height = 19.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 118.559060000000000000
          Top = 44.779530000000030000
          Width = 206.739950000000000000
          Height = 34.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
            
              #1080#1083#1080' '#1080#1085#1086#1077' '#1091#1087#1086#1083#1085#1086#1084#1086#1095#1077#1085#1085#1086#1077' '#1083#1080#1094#1086'                                    ' +
              '                                ')
          ParentFont = False
          WordWrap = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 326.433210000000000000
          Top = 66.897650000000350000
          Width = 80.881880000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1086#1076#1087#1080#1089#1100')')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 413.094620000000000000
          Top = 66.897650000000350000
          Width = 145.425170000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1092'.'#1080'.'#1086'.)')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 568.323130000000000000
          Top = 44.779530000000030000
          Width = 187.842300000000000000
          Height = 34.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1043#1083#1072#1074#1085#1099#1081' '#1073#1091#1093#1075#1072#1083#1090#1077#1088' '
            
              #1080#1083#1080' '#1080#1085#1086#1077' '#1091#1087#1086#1083#1085#1086#1084#1086#1095#1077#1085#1085#1086#1077' '#1083#1080#1094#1086'                                    ' +
              '                                           ')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 757.047620000000000000
          Top = 67.677180000000140000
          Width = 92.220470000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1086#1076#1087#1080#1089#1100')')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 855.047620000000000000
          Top = 67.677180000000140000
          Width = 141.645640000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1092'.'#1080'.'#1086'.)')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 855.315400000000000000
          Top = 48.779530000000030000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRepInfaktura."USERNAME"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 415.582870000000000000
          Top = 47.897650000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_SVH."FIO_RUK"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 109.228346460000000000
          Width = 506.834677400000000000
          Height = 34.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            #1042#1089#1077#1075#1086' '#1082' '#1086#1087#1083#1072#1090#1077': [TotalSumProp]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 841.700819130000000000
          Width = 66.519675280000000000
          Height = 34.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBRepInfaktura."TOTAL_SUM1">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 776.314960629921000000
          Width = 65.385826770000000000
          Height = 34.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBRepInfaktura."SUM_VAT">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063023860000000000
          Width = 82.393686140000000000
          Height = 34.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBRepInfaktura."SUMMA">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 698.456724650000000000
          Width = 77.858267716535400000
          Height = 34.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Width = 107.015770000000000000
          Height = 34.771653540000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 108.094488190000000000
          Width = 7.559060000000000000
          Height = 34.771604720000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          AllowVectorExport = True
          Left = 907.866730000000000000
          Width = 156.149660000000000000
          Height = 34.771653540000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 108.094488190000000000
          Top = 34.015769999999970000
          Width = 7.559060000000000000
          Height = 114.141734720000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 147.401670000000200000
          Width = 956.221090000000000000
          Height = 7.559060000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 45.574830000000020000
          Width = 94.488250000000000000
          Height = 45.354360000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1044#1086#1082#1091#1084#1077#1085#1090' '
            #1089#1086#1089#1090#1072#1074#1083#1077#1085' '#1085#1072
            '[TotalPages#] '#1083#1080#1089#1090#1072#1093)
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          AllowVectorExport = True
          Left = 554.709030000000000000
          Top = 241.889920000000100000
          Width = 3.779530000000000000
          Height = 284.220584720000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 158.740260000000500000
          Width = 306.141930000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1087#1077#1088#1077#1076#1072#1095#1080' ('#1089#1076#1072#1095#1080') / '#1087#1086#1083#1091#1095#1077#1085#1080#1103' ('#1087#1088#1080#1077#1084#1082#1080') ')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480520000000000000
          Top = 158.740260000000500000
          Width = 702.992580000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1044#1086#1075#1086#1074#1086#1088' '#1086#1073' '#1086#1082#1072#1079#1072#1085#1080#1080' '#1089#1082#1083#1072#1076#1089#1082#1080#1093' '#1091#1089#1083#1091#1075' [N_contract]')
          ParentFont = False
        end
        object Memo129: TfrxMemoView
          AllowVectorExport = True
          Left = 1024.252630000000000000
          Top = 162.519790000000300000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 8 )')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          AllowVectorExport = True
          Left = 539.897960000000000000
          Top = 185.196970000000000000
          Width = 192.756030000000000000
          Height = 11.338590000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1076#1086#1075#1086#1074#1086#1088', '#1076#1086#1074#1077#1088#1077#1085#1085#1086#1089#1090#1100' '#1080' '#1076#1088'.)')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 194.315090000000100000
          Width = 204.094620000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1044#1072#1085#1085#1099#1077' '#1086' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1080#1088#1086#1074#1082#1077' '#1080' '#1075#1088#1091#1079#1077)
          ParentFont = False
        end
        object Memo160: TfrxMemoView
          AllowVectorExport = True
          Left = 215.480520000000000000
          Top = 194.315090000000100000
          Width = 805.039890000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[Repactworks_Nts]')
          ParentFont = False
        end
        object Memo161: TfrxMemoView
          AllowVectorExport = True
          Left = 1024.252630000000000000
          Top = 196.094620000000100000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 9 )')
          ParentFont = False
        end
        object Memo162: TfrxMemoView
          AllowVectorExport = True
          Left = 211.078850000000000000
          Top = 220.771800000000000000
          Width = 805.039890000000000000
          Height = 15.118120000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '('#1090#1088#1072#1085#1089#1087#1086#1088#1090#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103', '#1087#1086#1088#1091#1095#1077#1085#1080#1077' '#1101#1082#1089#1087#1077#1076#1080#1090#1086#1088#1091', '#1101#1082#1089#1087#1077#1076#1080#1090#1086#1088#1089#1082#1072#1103' /' +
              ' '#1089#1082#1083#1072#1076#1089#1082#1072#1103' '#1088#1072#1089#1087#1080#1089#1082#1072' '#1080' '#1076#1088'. / '#1084#1072#1089#1089#1072' '#1085#1077#1090#1090#1086'/'#1073#1088#1091#1090#1090#1086' '#1075#1088#1091#1079#1072', '#1077#1089#1083#1080' '#1085#1077' '#1087#1088 +
              #1080#1074#1077#1076#1077#1085#1099' '#1089#1089#1099#1083#1082#1080' '#1085#1072' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099', '#1089#1086#1076#1077#1088#1078#1072#1097#1080#1077' '#1101#1090#1080' '#1089#1074#1077#1076#1077#1085#1080 +
              #1103'))')
          ParentFont = False
        end
        object Memo163: TfrxMemoView
          AllowVectorExport = True
          Left = 9.559060000000000000
          Top = 241.889920000000100000
          Width = 374.173470000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1058#1086#1074#1072#1088' ('#1075#1088#1091#1079') '#1087#1077#1088#1077#1076#1072#1083' / '#1091#1089#1083#1091#1075#1080', '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1088#1072#1073#1086#1090', '#1087#1088#1072#1074#1072' '#1089#1076#1072#1083)
          ParentFont = False
        end
        object Memo164: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929499999999900000
          Top = 241.889920000000100000
          Width = 374.173470000000000000
          Height = 15.118120000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1058#1086#1074#1072#1088' ('#1075#1088#1091#1079') '#1087#1086#1083#1091#1095#1080#1083' / '#1091#1089#1083#1091#1075#1080', '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1088#1072#1073#1086#1090', '#1087#1088#1072#1074#1072' '#1087#1088#1080#1085#1103#1083)
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          AllowVectorExport = True
          Left = 173.582870000000000000
          Top = 281.126160000000000000
          Width = 133.795300000000000000
          Height = 14.220470000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1086#1076#1087#1080#1089#1100')')
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          AllowVectorExport = True
          Left = 325.244280000000000000
          Top = 281.126160000000000000
          Width = 145.425170000000000000
          Height = 14.220470000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1092'.'#1080'.'#1086'.)')
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          AllowVectorExport = True
          Left = 327.732530000000000000
          Top = 262.126160000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_SVH."FIO_RUK"]')
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 281.126160000000000000
          Width = 145.425170000000000000
          Height = 14.220470000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1076#1086#1083#1078#1085#1086#1089#1090#1100')')
          ParentFont = False
        end
        object Memo169: TfrxMemoView
          AllowVectorExport = True
          Left = 10.047310000000000000
          Top = 262.126160000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_SVH."DOLJ_RUK"]')
          ParentFont = False
        end
        object Memo170: TfrxMemoView
          AllowVectorExport = True
          Left = 774.866730000000000000
          Top = 280.126160000000300000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1086#1076#1087#1080#1089#1100')')
          ParentFont = False
        end
        object Memo171: TfrxMemoView
          AllowVectorExport = True
          Left = 877.394250000000000000
          Top = 280.126160000000300000
          Width = 141.645640000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1092'.'#1080'.'#1086'.)')
          ParentFont = False
        end
        object Memo172: TfrxMemoView
          AllowVectorExport = True
          Left = 876.102970000000000000
          Top = 261.126160000000300000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRepInfaktura."CHIEF_FAM"]')
          ParentFont = False
        end
        object Memo173: TfrxMemoView
          AllowVectorExport = True
          Left = 567.268090000000000000
          Top = 280.126160000000300000
          Width = 202.118120000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1076#1086#1083#1078#1085#1086#1089#1090#1100')')
          ParentFont = False
        end
        object Memo174: TfrxMemoView
          AllowVectorExport = True
          Left = 569.756340000000000000
          Top = 261.126160000000300000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRepInfaktura."CHIEF_DOLJ"]')
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 262.126160000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 10 )')
          ParentFont = False
        end
        object Memo176: TfrxMemoView
          AllowVectorExport = True
          Left = 1020.811690000000000000
          Top = 264.905690000000100000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 15 )')
          ParentFont = False
        end
        object Memo177: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 298.480520000000100000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBRepInfaktura."DATE_IS"]')
          ParentFont = False
        end
        object Memo178: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 299.700990000000100000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1086#1090#1075#1088#1091#1079#1082#1080', '#1087#1077#1088#1077#1076#1072#1095#1080' ('#1089#1076#1072#1095#1080')')
          ParentFont = False
        end
        object Memo180: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929499999999900000
          Top = 299.921460000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' ('#1087#1088#1080#1077#1084#1082#1080')')
          ParentFont = False
        end
        object Memo181: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 299.700990000000100000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 11 )')
          ParentFont = False
        end
        object Memo182: TfrxMemoView
          AllowVectorExport = True
          Left = 1024.252630000000000000
          Top = 298.700990000000300000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 16 )')
          ParentFont = False
        end
        object Memo183: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 321.937230000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1080#1103' '#1086#1073' '#1086#1090#1075#1088#1091#1079#1082#1077', '#1087#1077#1088#1077#1076#1072#1095#1077)
          ParentFont = False
        end
        object Memo184: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 341.173470000000200000
          Width = 464.882190000000000000
          Height = 15.118120000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo185: TfrxMemoView
          AllowVectorExport = True
          Left = 479.000310000000000000
          Top = 337.614410000000100000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 12 )')
          ParentFont = False
        end
        object Memo186: TfrxMemoView
          AllowVectorExport = True
          Left = 18.322820000000000000
          Top = 356.071120000000100000
          Width = 404.409710000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '('#1089#1089#1099#1083#1082#1080' '#1085#1072' '#1085#1077#1086#1090#1098#1077#1084#1083#1077#1084#1099#1077' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103', '#1089#1086#1087#1091#1090#1089#1090#1074#1091#1102#1097#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099', '#1080#1085#1099 +
              #1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099' '#1080' '#1090'.'#1087'.)')
          ParentFont = False
        end
        object Memo187: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929499999999900000
          Top = 320.716760000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1087#1086#1083#1091#1095#1077#1085#1080#1080', '#1087#1088#1080#1077#1084#1082#1077)
          ParentFont = False
        end
        object Memo188: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929499999999900000
          Top = 340.953000000000000000
          Width = 453.543600000000000000
          Height = 15.118120000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo189: TfrxMemoView
          AllowVectorExport = True
          Left = 1023.252630000000000000
          Top = 337.393939999999900000
          Width = 34.015770000000010000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 17 )')
          ParentFont = False
        end
        object Memo190: TfrxMemoView
          AllowVectorExport = True
          Left = 566.354670000000100000
          Top = 356.850649999999900000
          Width = 457.323130000000000000
          Height = 15.118120000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '('#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1085#1072#1083#1080#1095#1080#1080'/'#1086#1090#1089#1091#1090#1089#1090#1074#1080#1080' '#1087#1088#1077#1090#1077#1085#1079#1080#1081', '#1089#1089#1099#1083#1082#1080' '#1085#1072' '#1085#1077#1086#1090#1098#1077#1084#1083#1077#1084 +
              #1099#1077' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103', '#1080' '#1076#1088'. '#1076#1086#1082#1091#1084#1077#1085#1090#1099' )')
          ParentFont = False
        end
        object Memo192: TfrxMemoView
          AllowVectorExport = True
          Left = 0.881880000000000000
          Top = 370.409709999999900000
          Width = 438.425480000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081' '#1079#1072' '#1087#1088#1072#1074#1080#1083#1100#1085#1086#1089#1090#1100' '#1086#1092#1086#1088#1084#1083#1077#1085#1080#1103' '#1092#1072#1082#1090#1072' '#1093#1086#1079#1103#1081#1089#1090#1074#1077#1085#1085#1086#1081' '#1078#1080#1079 +
              #1085#1080)
          ParentFont = False
        end
        object Memo193: TfrxMemoView
          AllowVectorExport = True
          Left = 167.244280000000000000
          Top = 416.645950000000100000
          Width = 133.795300000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1086#1076#1087#1080#1089#1100')')
          ParentFont = False
        end
        object Memo194: TfrxMemoView
          AllowVectorExport = True
          Left = 318.905690000000000000
          Top = 416.645950000000100000
          Width = 134.086580000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1092'.'#1080'.'#1086'.)')
          ParentFont = False
        end
        object Memo195: TfrxMemoView
          AllowVectorExport = True
          Left = 321.393940000000000000
          Top = 397.645950000000100000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRepInfaktura."USERNAME"]')
          ParentFont = False
        end
        object Memo196: TfrxMemoView
          AllowVectorExport = True
          Left = 1.220470000000000000
          Top = 416.645950000000100000
          Width = 145.425170000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1076#1086#1083#1078#1085#1086#1089#1090#1100')')
          ParentFont = False
        end
        object Memo197: TfrxMemoView
          AllowVectorExport = True
          Left = 3.708720000000000000
          Top = 397.645950000000100000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRepInfaktura."USERDOLJ"]')
          ParentFont = False
        end
        object Memo198: TfrxMemoView
          AllowVectorExport = True
          Left = 477.441250000000000000
          Top = 401.425479999999900000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 13 )')
          ParentFont = False
        end
        object Memo191: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000100000
          Top = 372.189240000000100000
          Width = 438.425480000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081' '#1079#1072' '#1087#1088#1072#1074#1080#1083#1100#1085#1086#1089#1090#1100' '#1086#1092#1086#1088#1084#1083#1077#1085#1080#1103' '#1092#1072#1082#1090#1072' '#1093#1086#1079#1103#1081#1089#1090#1074#1077#1085#1085#1086#1081' '#1078#1080#1079 +
              #1085#1080)
          ParentFont = False
        end
        object Memo204: TfrxMemoView
          AllowVectorExport = True
          Left = 1020.811690000000000000
          Top = 403.205010000000100000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 18 )')
          ParentFont = False
        end
        object Memo205: TfrxMemoView
          AllowVectorExport = True
          Top = 439.220780000000100000
          Width = 555.590910000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1101#1082#1086#1085#1086#1084#1080#1095#1077#1089#1082#1086#1075#1086' '#1089#1091#1073#1098#1077#1082#1090#1072' - '#1089#1086#1089#1090#1072#1074#1080#1090#1077#1083#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072'( '#1074' ' +
              #1090'.'#1095'. '#1082#1086#1084#1080#1089#1089#1080#1086#1085#1077#1088#1072' / '#1072#1075#1077#1085#1090#1072')')
          ParentFont = False
        end
        object Memo206: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000100000
          Top = 440.220780000000100000
          Width = 555.590910000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1101#1082#1086#1085#1086#1084#1080#1095#1077#1089#1082#1086#1075#1086' '#1089#1091#1073#1098#1077#1082#1090#1072' - '#1089#1086#1089#1090#1072#1074#1080#1090#1077#1083#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072)
          ParentFont = False
        end
        object Memo207: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 461.897960000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset_SVH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              '[frxDB_SVH."SVH_OWNER"], '#1048#1053#1053'/'#1050#1055#1055'  [frxDB_SVH."INN"] / [frxDB_SVH' +
              '."KPP"] ')
          ParentFont = False
        end
        object Memo208: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 461.897960000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 14 )')
          ParentFont = False
        end
        object Memo209: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 480.016079999999900000
          Width = 404.409710000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '( '#1084#1086#1078#1077#1090' '#1085#1077' '#1079#1072#1087#1086#1083#1085#1103#1090#1100#1089#1103' '#1087#1088#1080' '#1087#1088#1086#1089#1090#1072#1074#1083#1077#1085#1080#1080' '#1087#1077#1095#1072#1090#1080' '#1074' '#1052'.'#1055'., '#1084#1086#1078#1077#1090' '#1073#1099#1090 +
              #1100' '#1091#1082#1072#1079#1072#1085' '#1048#1053#1053' / '#1050#1055#1055' )')
          ParentFont = False
        end
        object Memo210: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929499999999900000
          Top = 462.897960000000300000
          Width = 453.543600000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset_SVH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              '[frxDBRepInfaktura."ZAYV"], '#1048#1053#1053'/'#1050#1055#1055'  [frxDBRepInfaktura."INN"]/[' +
              'frxDBRepInfaktura."KPP"] ')
          ParentFont = False
        end
        object Memo211: TfrxMemoView
          AllowVectorExport = True
          Left = 1024.252630000000000000
          Top = 462.897960000000300000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '( 19 )')
          ParentFont = False
        end
        object Memo212: TfrxMemoView
          AllowVectorExport = True
          Left = 593.724800000000000000
          Top = 481.016080000000300000
          Width = 404.409710000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '( '#1084#1086#1078#1077#1090' '#1085#1077' '#1079#1072#1087#1086#1083#1085#1103#1090#1100#1089#1103' '#1087#1088#1080' '#1087#1088#1086#1089#1090#1072#1074#1083#1077#1085#1080#1080' '#1087#1077#1095#1072#1090#1080' '#1074' '#1052'.'#1055'., '#1084#1086#1078#1077#1090' '#1073#1099#1090 +
              #1100' '#1091#1082#1072#1079#1072#1085' '#1048#1053#1053' / '#1050#1055#1055' )')
          ParentFont = False
        end
        object Memo213: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 499.693260000000000000
          Width = 30.236240000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1052'.'#1055'.')
          ParentFont = False
        end
        object Memo214: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 500.693260000000000000
          Width = 30.236240000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1052'.'#1055'.')
          ParentFont = False
        end
        object Memo179: TfrxMemoView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Top = 298.700990000000100000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBRepInfaktura."DATE_IS"]')
          ParentFont = False
        end
        object Memo199: TfrxMemoView
          AllowVectorExport = True
          Left = 770.748610000000000000
          Top = 421.425480000000300000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1086#1076#1087#1080#1089#1100')')
          ParentFont = False
        end
        object Memo200: TfrxMemoView
          AllowVectorExport = True
          Left = 873.276130000000000000
          Top = 421.425480000000300000
          Width = 141.645640000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1092'.'#1080'.'#1086'.)')
          ParentFont = False
        end
        object Memo201: TfrxMemoView
          AllowVectorExport = True
          Left = 871.984850000000000000
          Top = 402.425480000000300000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRepInfaktura."CHIEF_FAM"]')
          ParentFont = False
        end
        object Memo202: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000100000
          Top = 421.425480000000300000
          Width = 202.118120000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1076#1086#1083#1078#1085#1086#1089#1090#1100')')
          ParentFont = False
        end
        object Memo203: TfrxMemoView
          AllowVectorExport = True
          Left = 565.638220000000100000
          Top = 402.425480000000300000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRepInfaktura."CHIEF_DOLJ"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 228.267780000000000000
        Top = 555.590910000000000000
        Width = 1065.827460000000000000
        PrintOnFirstPage = False
        object Memo132: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606299210000000000
          Top = 212.188976380000000000
          Width = 295.937007870000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          AllowVectorExport = True
          Left = 435.724490000000000000
          Top = 212.188976380000000000
          Width = 22.677162910000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          AllowVectorExport = True
          Left = 513.063080000000000000
          Top = 212.188976377953100000
          Width = 45.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          AllowVectorExport = True
          Left = 558.063080000000000000
          Top = 212.188976380000000000
          Width = 57.881880000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          AllowVectorExport = True
          Left = 908.598425200000000000
          Top = 212.267721420000000000
          Width = 34.771653540000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '10')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          AllowVectorExport = True
          Left = 615.944960000000000000
          Top = 212.188976377953100000
          Width = 82.322820000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          AllowVectorExport = True
          Left = 698.267780000000000000
          Top = 212.188976377953100000
          Width = 37.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          AllowVectorExport = True
          Left = 735.267780000000000000
          Top = 212.188976377953100000
          Width = 41.102350000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo140: TfrxMemoView
          AllowVectorExport = True
          Left = 776.370130000000000000
          Top = 212.188976380000000000
          Width = 65.338590000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '8')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          AllowVectorExport = True
          Left = 841.826840000000000000
          Top = 212.267721420000000000
          Width = 66.645640000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '9')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          AllowVectorExport = True
          Left = 988.385900000000000000
          Top = 212.267721420000000000
          Width = 75.322820000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '11')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          AllowVectorExport = True
          Left = 109.385900000000000000
          Top = 56.779530000000030000
          Width = 295.937007870000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072'('#1086#1087#1080#1089#1072#1085#1080#1077
            #1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1093' '#1088#1072#1073#1086#1090', '#1086#1082#1072#1079#1072#1085#1085#1099#1093
            #1091#1089#1083#1091#1075'), '#1080#1084#1091#1097#1077#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1087#1088#1072#1074#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          AllowVectorExport = True
          Left = 435.724490000000000000
          Top = 56.779530000000130000
          Width = 77.102362200000000000
          Height = 28.724409450000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1076#1080#1085#1080#1094#1072
            #1080#1079#1084#1077#1088#1077#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          AllowVectorExport = True
          Left = 513.259842520000000000
          Top = 56.779530000000030000
          Width = 45.000000000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083#1080'-'
            #1095#1077#1089#1090#1074#1086
            '('#1086#1073#1098#1077#1084')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo146: TfrxMemoView
          AllowVectorExport = True
          Left = 776.370130000000000000
          Top = 56.779530000000030000
          Width = 65.338590000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1091#1084#1084#1072' '#1085#1072#1083#1086#1075#1072', '#1087#1088#1077#1076#1098#1103#1074#1083#1103#1077#1084#1072#1103' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1102)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          AllowVectorExport = True
          Left = 735.267780000000000000
          Top = 56.779530000000030000
          Width = 41.102350000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1083#1086'- '
            #1075#1086#1074#1072#1103' '
            #1089#1090#1072#1074#1082#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          AllowVectorExport = True
          Left = 698.267780000000000000
          Top = 56.779530000000030000
          Width = 37.000000000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042' '#1090#1086#1084' '#1095#1080#1089#1083#1077' '#1089#1091#1084#1084#1072' '#1072#1082#1094#1080#1079#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo149: TfrxMemoView
          AllowVectorExport = True
          Left = 615.944960000000000000
          Top = 56.779530000000030000
          Width = 82.322819999999990000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1086#1080#1084#1086#1089#1090#1100
            #1090#1086#1074#1072#1088#1086#1074' ('#1088#1072#1073#1086#1090','
            #1091#1089#1083#1091#1075'), '
            #1080#1084#1091#1097#1077#1089#1090'-'
            #1074#1077#1085#1085#1099#1093' '#1087#1088#1072#1074' '
            #1073#1077#1079' '#1085#1072#1083#1086#1075#1072' - '
            #1074#1089#1077#1075#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo150: TfrxMemoView
          AllowVectorExport = True
          Left = 558.063080000000000000
          Top = 56.779530000000030000
          Width = 57.881880000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1062#1077#1085#1072
            '('#1090#1072#1088#1080#1092')'
            #1079#1072' '
            #1077#1076#1080#1085#1080#1094#1091' '
            #1080#1079#1084#1077#1088#1077#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo151: TfrxMemoView
          AllowVectorExport = True
          Left = 841.826840000000000000
          Top = 56.779530000000030000
          Width = 66.645640000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1086#1080#1084#1086#1089#1090#1100
            #1090#1086#1074#1072#1088#1086#1074' ('#1088#1072#1073#1086#1090','
            #1091#1089#1083#1091#1075'), '
            #1080#1084#1091#1097#1077#1089#1090'-'
            #1074#1077#1085#1085#1099#1093' '#1087#1088#1072#1074)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo152: TfrxMemoView
          AllowVectorExport = True
          Left = 908.488250000000000000
          Top = 56.779530000000130000
          Width = 79.897650000000000000
          Height = 39.307089060000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1088#1072#1085#1072
            #1087#1088#1086#1080#1089#1093#1086#1078#1076#1077#1085#1080#1103
            #1090#1086#1074#1072#1088#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo153: TfrxMemoView
          AllowVectorExport = True
          Left = 988.385900000000000000
          Top = 56.779530000000030000
          Width = 75.322819999999990000
          Height = 154.960629921259800000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1085#1086#1084#1077#1088
            #1076#1077#1082#1083#1072#1088#1072#1094#1080#1080' '#1085#1072' '#1090#1086#1074#1072#1088#1099
            #1080#1083#1080' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1099#1081
            #1085#1086#1084#1077#1088' '#1087#1072#1088#1090#1080#1080' '#1090#1086#1074#1072#1088#1072','
            #1087#1086#1076#1083#1077#1078#1072#1097#1077#1075#1086' '#1087#1088#1086#1089#1083#1077'-'
            #1078#1080#1074#1072#1077#1084#1086#1089#1090#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo154: TfrxMemoView
          AllowVectorExport = True
          Left = 908.598425200000000000
          Top = 96.354360000000040000
          Width = 34.771653540000000000
          Height = 115.275629610000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1094#1080#1092'-'
            #1088#1086'-'
            #1074#1086#1081
            #1082#1086#1076)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo155: TfrxMemoView
          AllowVectorExport = True
          Left = 943.370100710000000000
          Top = 96.354360000000040000
          Width = 44.976373070000000000
          Height = 115.275629610000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1088#1072#1090#1082#1086#1077
            #1085#1072#1080#1084#1077'-'
            #1085#1086#1074#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo156: TfrxMemoView
          AllowVectorExport = True
          Left = 943.149630710000000000
          Top = 212.267780000000000000
          Width = 44.976377950000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '10'#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo157: TfrxMemoView
          AllowVectorExport = True
          Left = 435.850650000000000000
          Top = 85.503937009999960000
          Width = 22.677165350000000000
          Height = 126.236264410000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1050#1086#1076)
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          AllowVectorExport = True
          Left = 458.393778900000000000
          Top = 212.188976380000000000
          Width = 54.425196850000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '2'#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo159: TfrxMemoView
          AllowVectorExport = True
          Left = 458.393778900000000000
          Top = 85.503937009999960000
          Width = 54.425196850000000000
          Height = 126.236264410000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1091#1089#1083#1086#1074#1085#1086#1077
            #1086#1073#1086#1079#1085#1072'-'
            #1095#1077#1085#1080#1077
            '('#1085#1072#1094#1080#1086'-'
            #1085#1072#1083#1100#1085#1086#1077')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 212.188976377953100000
          Width = 45.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1040)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 45.000000000000000000
          Top = 212.188976380000000000
          Width = 61.661410000000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1041)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = 56.779530000000030000
          Width = 45.000000000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470
            #1087'/'#1087)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 45.000000000000000000
          Top = 56.779530000000030000
          Width = 61.661410000000000000
          Height = 154.960673860000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076' '#1090#1086#1074#1072#1088#1072'/'
            #1088#1072#1073#1086#1090', '#1091#1089#1083#1091#1075)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 108.118110240000000000
          Top = 56.834569999999990000
          Width = 3.779530000000000000
          Height = 170.834684720000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 2.645640000000000000
          Top = 34.779530000000130000
          Width = 653.858690000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1059#1085#1080#1074#1077#1088#1089#1072#1083#1100#1085#1099#1081' '#1087#1077#1088#1077#1076#1072#1090#1086#1095#1085#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090' '#8470' [FormatMaskText('#39'########'#39 +
              ',<frxDBRepInfaktura."NOMER">)] '#1086#1090' [frxDBRepInfaktura."DATE_IS"]')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Left = 965.559680000000000000
          Top = 34.779530000000130000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1051#1080#1089#1090' [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo218: TfrxMemoView
          AllowVectorExport = True
          Left = 405.409710000000000000
          Top = 56.700787399999970000
          Width = 30.614173230000000000
          Height = 154.960668980000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076
            #1074#1080#1076#1072
            #1090#1086#1074#1072
            #1088#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo219: TfrxMemoView
          AllowVectorExport = True
          Left = 405.165354330000000000
          Top = 212.188976380000000000
          Width = 30.614173230000000000
          Height = 16.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '1'#1072)
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxUslugi: TfrxDBDataset
    UserName = 'frxUslugi'
    CloseDataSource = False
    DataSet = ReportSelect_F.Mt_Rep
    BCDToCurrency = False
    Left = 208
    Top = 64
  end
  object frxDBReg_Ti: TfrxDBDataset
    UserName = 'frxDBReg_Ti'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ZAYV=ZAYV')
    DataSet = Buh_F.Qry_RepClRegTi
    BCDToCurrency = False
    Left = 208
    Top = 160
  end
  object frxCl_ac_detail: TfrxDBDataset
    UserName = 'frxCl_ac_detail'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ZAYV=ZAYV'
      'DT=DT'
      'MONEY=MONEY'
      'N_DOC=N_DOC'
      'DOC=DOC'
      'ACTION=ACTION')
    DataSet = Buh_F.Qry_RepClDetail
    BCDToCurrency = False
    Left = 264
    Top = 160
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 408
    Top = 24
  end
  object frxDBopenCbx: TfrxDBDataset
    UserName = 'frxDBopenCbx'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NUM_PARK=NUM_PARK'
      'COND_PARK=COND_PARK'
      'ID_TS=ID_TS'
      'ID_TICKET=ID_TICKET')
    DataSet = DM.Qry_OpenCbx
    BCDToCurrency = False
    Left = 216
    Top = 216
  end
  object frxDBWhOpenDetailed: TfrxDBDataset
    UserName = 'frxDBWhOpenDetailed'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DT=DT'
      'NOMER_TP=NOMER_TP'
      'N_TS=N_TS'
      'G073=G073')
    DataSet = DM.Qry_WhOpenDetailed
    BCDToCurrency = False
    Left = 280
    Top = 216
  end
  object frxDBClosedCbx: TfrxDBDataset
    UserName = 'frxDBClosedCbx'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'STATE_PLACE=STATE_PLACE'
      'NUM_PLACE=NUM_PLACE')
    DataSet = DM.Qry_ClosedCbx
    BCDToCurrency = False
    Left = 216
    Top = 264
  end
  object frxDBWhClosedDetailed: TfrxDBDataset
    UserName = 'frxDBWhClosedDetailed'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DT=DT'
      'NOMER_TP=NOMER_TP'
      'G073=G073')
    DataSet = DM.Qry_WhClosedDetailed
    BCDToCurrency = False
    Left = 272
    Top = 264
  end
  object frxDBKomisRep: TfrxDBDataset
    UserName = 'frxDBKomisRep'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Npp=Npp'
      'Kol=Kol'
      'Summa1=Summa1'
      'Komis1=Komis1'
      'Cena1=Cena1'
      'Summa1_1=Summa1_1'
      'Summa2=Summa2'
      'Komis2=Komis2'
      'Cena2=Cena2'
      'Summa2_1=Summa2_1')
    DataSet = ReportSelect_F.Mt_Rep
    BCDToCurrency = False
    Left = 216
    Top = 312
  end
  object frxDBMinusSaldo: TfrxDBDataset
    UserName = 'frxDBMinusSaldo'
    CloseDataSource = False
    FieldAliases.Strings = (
      '-ID=ID'
      '-ID_ZAYV=ID_ZAYV'
      'SALDO=SALDO'
      'ZAYV=ZAYV'
      'BUH_NOTE=BUH_NOTE')
    DataSet = DM.Qry_RepNegSaldo
    BCDToCurrency = False
    Left = 144
    Top = 424
  end
  object frxDBdoOstatki: TfrxDBDataset
    UserName = 'frxDBdoOstatki'
    CloseDataSource = False
    FieldAliases.Strings = (
      'G073=G073'
      'G072=G072'
      'G32=G32'
      'G31_1=G31_1'
      'G42_OST=G42_OST'
      'G35_OST=G35_OST'
      'G31_2_OST=G31_2_OST')
    DataSet = DM.Qry_DoOstatki
    BCDToCurrency = False
    Left = 200
    Top = 368
  end
  object frxGoods: TfrxDBDataset
    UserName = 'frxGoods'
    CloseDataSource = False
    DataSet = ReportSelect_F.Mt_Rep
    BCDToCurrency = False
    Left = 200
    Top = 424
  end
  object frxDBMt1: TfrxDBDataset
    UserName = 'frxDBMt1'
    CloseDataSource = False
    DataSet = ReportSelect_F.Mt_Rep
    BCDToCurrency = False
    Left = 272
    Top = 312
  end
  object Qry_KPP: TIBQuery
    Database = DM.DB
    Transaction = DM.IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select t1.n_ticket,t1.dt_is, t2.n_ts||'#39'/'#39'||t2.n_trailer_human as' +
        ' ts_nomer,'
      't2.kod_ts_human,t2.driver,r.zayv,t3.dt_finished'
      'from ticket_parts t'
      'left join reg_ti r on t.id_owner = r.id'
      'left join ticket t1 on t.id_ticket = t1.id'
      'left join first_ts t2 on t1.id = t2.id_ticket'
      'left join ts_out t3 on t2.id = t3.id_ts'
      'where cast (t1.dt_is as date) between :p0'
      'and :p1'
      'order by t1.n_ticket')
    Left = 272
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end>
  end
  object frxDB_KPP: TfrxDBDataset
    UserName = 'frxDB_KPP'
    CloseDataSource = False
    FieldAliases.Strings = (
      'N_TICKET=N_TICKET'
      'DT_IS=DT_IS'
      'TS_NOMER=TS_NOMER'
      'KOD_TS_HUMAN=KOD_TS_HUMAN'
      'DRIVER=DRIVER'
      'ZAYV=ZAYV'
      'DT_FINISHED=DT_FINISHED')
    OpenDataSource = False
    DataSet = Qry_KPP
    BCDToCurrency = False
    Left = 328
    Top = 368
  end
  object frxDB_RegTi_List: TfrxDBDataset
    UserName = 'frxDB_RegTi_List'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ZAYV=ZAYV'
      'INN=INN'
      'ADRESS=ADRESS'
      'TELEFON=TELEFON'
      'OGRN=OGRN'
      'CITY=CITY'
      'STREET=STREET'
      'HOUSE=HOUSE'
      'KPP=KPP'
      'SCHET_R=SCHET_R'
      'KORSCH_R=KORSCH_R'
      'POSTCODE=POSTCODE'
      'OSN_DOC=OSN_DOC'
      'DISCOUNT=DISCOUNT'
      'HOLD_NUM=HOLD_NUM'
      'FIO_REPRES=FIO_REPRES'
      'HAS_DOP=HAS_DOP'
      'DEL_FLAG=DEL_FLAG'
      'ID_PRICE=ID_PRICE'
      'VALID=VALID'
      'ID_HOLD=ID_HOLD'
      'NUM_DOG=NUM_DOG'
      'START_DOG=START_DOG'
      'BUH_NOTE=BUH_NOTE'
      'BUH_DOLG=BUH_DOLG'
      'EMAIL=EMAIL'
      'REGION=REGION'
      'NAME=NAME'
      'DISC_HOLD=DISC_HOLD'
      'PRICENAME=PRICENAME'
      'FULL_ADRESS=FULL_ADRESS')
    OpenDataSource = False
    DataSet = DM.Qry_Regti
    BCDToCurrency = False
    Left = 272
    Top = 424
  end
  object Qry_repHolding: TIBQuery
    Database = DM.DB
    Transaction = DM.IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      'A.*, B.NAME,'
      '(iif (a.POSTCODE is not null, a.postcode, '#39#39'))||'#39' '#39'||'
      '(iif(a.region is not null, a.REGION,'#39#39'))||'#39' '#39'||'
      '(iif (a.CITY is not null, a.city,'#39#39'))||'#39' '#39'||'
      '(iif (a.STREET is not null, a.street,'#39#39'))||'#39' '#39'||'
      '(iif (a.HOUSE is not null, a.house,'#39#39')) AS FULL_ADRESS'
      'FROM REG_TI A'
      'left join holdings b on a.id_hold = b.id'
      'WHERE '
      'A.DEL_FLAG = 0 AND A.ID_HOLD = :p0'
      'ORDER BY A.ZAYV')
    Left = 352
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
  end
  object frxDB_repHolding: TfrxDBDataset
    UserName = 'frxDB_repHolding'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ZAYV=ZAYV'
      'INN=INN'
      'ADRESS=ADRESS'
      'TELEFON=TELEFON'
      'OGRN=OGRN'
      'CITY=CITY'
      'STREET=STREET'
      'HOUSE=HOUSE'
      'KPP=KPP'
      'SCHET_R=SCHET_R'
      'KORSCH_R=KORSCH_R'
      'POSTCODE=POSTCODE'
      'OSN_DOC=OSN_DOC'
      'DISCOUNT=DISCOUNT'
      'HOLD_NUM=HOLD_NUM'
      'FIO_REPRES=FIO_REPRES'
      'HAS_DOP=HAS_DOP'
      'DEL_FLAG=DEL_FLAG'
      'ID_PRICE=ID_PRICE'
      'VALID=VALID'
      'ID_HOLD=ID_HOLD'
      'NUM_DOG=NUM_DOG'
      'START_DOG=START_DOG'
      'BUH_NOTE=BUH_NOTE'
      'BUH_DOLG=BUH_DOLG'
      'EMAIL=EMAIL'
      'REGION=REGION'
      'DISCOUNT_NOTE=DISCOUNT_NOTE'
      'SHOW_DISCOUNT_NOTE=SHOW_DISCOUNT_NOTE'
      'NAME=NAME'
      'FULL_ADRESS=FULL_ADRESS')
    DataSet = Qry_repHolding
    BCDToCurrency = False
    Left = 424
    Top = 112
  end
  object frxDB_ReasonDolgDetaill: TfrxDBDataset
    UserName = 'frxDB_ReasonDolgDetail'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DT_IS=DT_IS'
      'ID_DOC=ID_DOC'
      'USERNAME=USERNAME'
      'CHIEF=CHIEF'
      'ID_PLAT=ID_PLAT'
      'ID_HOLD=ID_HOLD'
      'SALDO_BEFORE=SALDO_BEFORE'
      'CREDIT=CREDIT'
      'SROK=SROK'
      'SUMMA=SUMMA'
      'DOLG_REST=DOLG_REST'
      'CREDIT_BEFORE=CREDIT_BEFORE'
      'SALDO_AFTER=SALDO_AFTER'
      'CREDIT_AFTER=CREDIT_AFTER'
      'SALDO_PLAT_BEFORE=SALDO_PLAT_BEFORE'
      'DELETE_FLAG=DELETE_FLAG'
      'DATE_DEL=DATE_DEL'
      'IDDOC_DEL=IDDOC_DEL'
      'ZAYV=ZAYV'
      'NAME=NAME')
    DataSet = DM.Qry_ReasonDolgDetail
    BCDToCurrency = False
    Left = 160
    Top = 464
  end
  object frxDB_ReasonDolgMaster: TfrxDBDataset
    UserName = 'frxDB_ReasonDolgMaster'
    CloseDataSource = False
    DataSet = DM.Qry_ReasonDolgMaster
    BCDToCurrency = False
    Left = 224
    Top = 464
  end
  object frxDB_VesCheque: TfrxDBDataset
    UserName = 'frxDB_VesCheque'
    CloseDataSource = False
    FieldAliases.Strings = (
      'N_TICKET=N_TICKET'
      'N_TS=N_TS'
      'N_TRAILER=N_TRAILER'
      'FIO_DRIVER=FIO_DRIVER'
      'VES_TS=VES_TS'
      'VES_TR=VES_TR'
      'VES_CONTROL=VES_CONTROL'
      'USER_CONTROL=USER_CONTROL'
      'DT_CONTROL=DT_CONTROL'
      'TR_FLAG=TR_FLAG'
      'VES_GRUZA=VES_GRUZA')
    DataSet = DM.Qry_VesCheque
    BCDToCurrency = False
    Left = 320
    Top = 160
  end
end
