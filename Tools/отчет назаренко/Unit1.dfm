object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 538
  ClientWidth = 605
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 589
    Height = 209
    DataSource = DataSource1
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    TabOrder = 0
    object RowDetailData: TRowDetailPanelControlEh
      object DBGridEh2: TDBGridEh
        Left = -589
        Top = -209
        Width = 589
        Height = 209
        DataSource = DataSource1
        DynProps = <>
        IndicatorOptions = [gioShowRowIndicatorEh]
        TabOrder = 0
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Button1: TButton
    Left = 8
    Top = 440
    Width = 217
    Height = 25
    Caption = 'Rep 1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGridEh3: TDBGridEh
    Left = 8
    Top = 215
    Width = 589
    Height = 209
    DataSource = DataSource2
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    TabOrder = 2
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Button2: TButton
    Left = 8
    Top = 480
    Width = 217
    Height = 25
    Caption = 'Rep 2'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 511
    Width = 217
    Height = 25
    Caption = 'Rep 3'
    TabOrder = 4
    OnClick = Button3Click
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 520
    Top = 24
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    SQL.Strings = (
      '        select distinct c.id ,c.zayv'
      '        from ticket_parts a'
      '        left join ticket b on a.id_ticket = b.id'
      '        left join reg_ti c on a.id_owner = c.id'
      
        '        where cast(b.dt_is as date) between '#39'01.10.2016'#39' and '#39'31' +
        '.12.2016'#39' ORDER BY C.zayv'
      ''
      '')
    Left = 472
    Top = 24
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = '192.168.3.251:e:\db_2013\sirius_25.fdb'
    Params.Strings = (
      'user_name=sysdba'
      'password=mkey'
      'lc_ctype=UTF8')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    Left = 520
    Top = 104
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 464
    Top = 152
  end
  object IBQuery2: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    SQL.Strings = (
      ' select distinct c.id ,c.zayv'
      '        from ticket_parts a'
      '        left join ticket b on a.id_ticket = b.id'
      '        left join reg_ti c on a.id_owner = c.id'
      
        '        where cast(b.dt_is as date) between '#39'01.04.2016'#39' and '#39'30' +
        '.06.2016'#39)
    Left = 472
    Top = 232
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 520
    Top = 240
  end
  object qry: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    SQL.Strings = (
      'select  count(a.id_owner)'
      'from ticket_parts a'
      'left join ticket b on a.id_ticket = b.id'
      
        'where cast(b.dt_is as date) between '#39'01.04.2016'#39' and '#39'30.06.2016' +
        #39
      'and a.id_owner = :po'
      ''
      '')
    Left = 296
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'po'
        ParamType = ptUnknown
      end>
  end
  object qry1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    SQL.Strings = (
      'select  count(a.id_owner)'
      'from ticket_parts a'
      'left join ticket b on a.id_ticket = b.id'
      
        'where cast(b.dt_is as date) between '#39'01.10.2016'#39' and '#39'31.12.2016' +
        #39
      'and a.id_owner = :po')
    Left = 296
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'po'
        ParamType = ptUnknown
      end>
  end
end
