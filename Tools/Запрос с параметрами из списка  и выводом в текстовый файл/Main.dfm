object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 536
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 432
    Top = 480
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DB: TIBDatabase
    Connected = True
    DatabaseName = '192.168.3.251:e:\db_2013\sirius_25.fdb'
    Params.Strings = (
      'user_name=sysdba'
      'password=mkey'
      'lc_ctype=UTF8')
    LoginPrompt = False
    DefaultTransaction = IBTR
    TraceFlags = [tfQExecute, tfError, tfStmt, tfTransact, tfService, tfMisc]
    AllowStreamedConnected = False
    Left = 14
    Top = 16
  end
  object IBTR: TIBTransaction
    DefaultDatabase = DB
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version')
    Left = 14
    Top = 112
  end
  object IBTW: TIBTransaction
    DefaultDatabase = DB
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 14
    Top = 64
  end
  object Sql: TIBSQL
    Database = DB
    Transaction = IBTW
    Left = 16
    Top = 160
  end
  object Qry: TIBQuery
    Database = DB
    Transaction = IBTR
    SQL.Strings = (
      
        'select b.n_ticket,b.dt_is, c.n_ts, c.n_trailer_human, a.dt_actio' +
        'n, a.place, a.action_name, a.username'
      'from park_log a'
      'left join ticket b on a.id_ticket = b.id'
      'left join first_ts c on a.id_ts = c.id'
      'where b.n_ticket = :p0')
    Left = 16
    Top = 217
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
  end
end
