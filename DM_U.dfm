object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 843
  Width = 1120
  object DB: TIBDatabase
    Connected = True
    DatabaseName = 'C:\FB_DB\SIRIUS_25.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=mkey'
      'lc_ctype=UTF8')
    LoginPrompt = False
    DefaultTransaction = IBTR
    ServerType = 'IBServer'
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
  object Qry_Users: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      ''
      ''
      '')
    Left = 72
    Top = 16
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
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      '')
    Left = 16
    Top = 256
  end
  object Qry_Settings: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select '
      '*'
      'from SETTINGS')
    Left = 72
    Top = 64
  end
  object Qry_CustProc: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CUST_PROC')
    Left = 72
    Top = 112
  end
  object Ds_Custproc: TDataSource
    AutoEdit = False
    DataSet = Qry_CustProc
    Left = 112
    Top = 112
  end
  object Qry_Now: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from db_now')
    Left = 72
    Top = 160
    object Qry_NowDT: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'DT'
      Origin = '"DB_NOW"."DT"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object Qry_Ticket: TIBQuery
    Database = DB
    Transaction = IBTR
    OnCalcFields = Qry_TicketCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select first 200 a.*, b.owner,b.id,b.phone from ticket a'
      'left join carrier b on a.id_carrier = b.id'
      'order by a.n_ticket desc'
      '')
    Left = 71
    Top = 210
    object Qry_TicketID: TIntegerField
      FieldName = 'ID'
      Origin = '"TICKET"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_TicketN_TICKET: TIntegerField
      FieldName = 'N_TICKET'
      Origin = '"TICKET"."N_TICKET"'
      Required = True
    end
    object Qry_TicketDT_IS: TDateTimeField
      FieldName = 'DT_IS'
      Origin = '"TICKET"."DT_IS"'
      Required = True
    end
    object Qry_TicketUSERNAME: TIBStringField
      FieldName = 'USERNAME'
      Origin = '"TICKET"."USERNAME"'
      Required = True
      Size = 50
    end
    object Qry_TicketSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"TICKET"."STATUS"'
      Size = 1
    end
    object Qry_TicketSTEP_CTRL: TIntegerField
      FieldName = 'STEP_CTRL'
      Origin = '"TICKET"."STEP_CTRL"'
    end
    object Qry_TicketCUST_PROC: TIBStringField
      FieldName = 'CUST_PROC'
      Origin = '"TICKET"."CUST_PROC"'
      Size = 25
    end
    object Qry_TicketSTATUS_HUMAN: TIBStringField
      FieldKind = fkCalculated
      FieldName = 'STATUS_HUMAN'
      Size = 40
      Calculated = True
    end
    object Qry_TicketSTEP_HUMAN: TStringField
      FieldKind = fkCalculated
      FieldName = 'STEP_HUMAN'
      Size = 30
      Calculated = True
    end
    object Qry_TicketID_CARRIER: TIntegerField
      FieldName = 'ID_CARRIER'
      Origin = '"TICKET"."ID_CARRIER"'
    end
    object Qry_TicketPOP: TIBStringField
      FieldName = 'POP'
      Origin = '"TICKET"."POP"'
      Size = 92
    end
    object Qry_TicketCUST_USER: TIBStringField
      FieldName = 'CUST_USER'
      Origin = '"TICKET"."CUST_USER"'
      Size = 200
    end
    object Qry_TicketOWNER: TIBStringField
      FieldName = 'OWNER'
      Origin = '"CARRIER"."OWNER"'
      Size = 400
    end
    object Qry_TicketDELETE_FLAG: TIBStringField
      FieldName = 'DELETE_FLAG'
      Origin = '"TICKET"."DELETE_FLAG"'
      FixedChar = True
      Size = 4
    end
    object Qry_TicketELECTRICITY: TSmallintField
      FieldName = 'ELECTRICITY'
      Origin = '"TICKET"."ELECTRICITY"'
    end
    object Qry_TicketVIDTRANS: TIBStringField
      FieldName = 'VIDTRANS'
      Origin = '"TICKET"."VIDTRANS"'
      Size = 8
    end
    object Qry_TicketID1: TIntegerField
      FieldName = 'ID1'
      Origin = '"CARRIER"."ID"'
    end
    object Qry_TicketPHONE: TIBStringField
      FieldName = 'PHONE'
      Origin = '"CARRIER"."PHONE"'
      Size = 60
    end
  end
  object DS_Ticket: TDataSource
    DataSet = Qry_Ticket
    Left = 120
    Top = 210
  end
  object Qry_TSTarget: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CBX_TARGET ORDER BY ID')
    Left = 72
    Top = 256
  end
  object Ds_TsTarget: TDataSource
    AutoEdit = False
    DataSet = Qry_TSTarget
    Left = 120
    Top = 255
  end
  object Qry_TsType: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *  from VID_TS where TRAILER_FLAG = 0 ORDER BY ID')
    Left = 72
    Top = 304
  end
  object Ds_TsType: TDataSource
    AutoEdit = False
    DataSet = Qry_TsType
    Left = 120
    Top = 303
  end
  object Qry_TS: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DS_Ticket
    ParamCheck = True
    SQL.Strings = (
      'select a.*,'
      '(a.country||'#39' '#39'||g.name) as country_human,'
      'coalesce(b.n_trailer,'#39#1055#1088#1080#1094#1077#1087' '#1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090#39') as n_trailer,'
      'b.n_trailer as n_trailer1, b.ves as ves_tr,'
      
        'c.name, d.name,e.num_park ,h.VES_CONTROL,h.USER_CONTROL,h.DT_CON' +
        'TROL, h.tr_flag,'
      '         iif(h.ves_control is null,'#39#1053#1077' '#1074#1079#1074#1077#1096#1077#1085#39','
      
        '             iif(h.tr_flag = 1,coalesce(h.ves_control,0) - coale' +
        'sce (b.ves,0),coalesce(h.ves_control,0) - coalesce(a.ves,0) - co' +
        'alesce (b.ves,0)))'
      '              as ves_gruza'
      'from ts a'
      'left join trailers b on a.id = b.id_truck'
      'left join vid_ts c on a.kod_ts = c.id_ts'
      'left join cbx_target d on a.target=d.id'
      'left join park_ztk e on a.id=e.id_ts'
      'left join country_codes g on a.country = g.alpha2'
      'left join  TS_VES  h on h.TS_IN = a.id'
      'where a.id_ticket=:id '
      'order by a.id')
    Left = 72
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object Qry_TSID: TIntegerField
      FieldName = 'ID'
      Origin = '"TS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_TSID_TICKET: TIntegerField
      FieldName = 'ID_TICKET'
      Origin = '"TS"."ID_TICKET"'
      Required = True
    end
    object Qry_TSN_TS: TIBStringField
      FieldName = 'N_TS'
      Origin = '"TS"."N_TS"'
      Required = True
      Size = 10
    end
    object Qry_TSKOD_TS: TSmallintField
      FieldName = 'KOD_TS'
      Origin = '"TS"."KOD_TS"'
      Required = True
    end
    object Qry_TSFIO_DRIVER: TIBStringField
      FieldName = 'FIO_DRIVER'
      Origin = '"TS"."FIO_DRIVER"'
      Required = True
      Size = 50
    end
    object Qry_TSTARGET2: TIntegerField
      FieldName = 'TARGET'
      Origin = '"TS"."TARGET"'
      Required = True
    end
    object Qry_TSPHONE: TIBStringField
      FieldName = 'PHONE'
      Origin = '"TS"."PHONE"'
      Size = 12
    end
    object Qry_TSCRASHES: TBlobField
      FieldName = 'CRASHES'
      Origin = '"TS"."CRASHES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object Qry_TSNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"VID_TS"."NAME"'
      Size = 60
    end
    object Qry_TSNAME1: TIBStringField
      FieldName = 'NAME1'
      Origin = '"CBX_TARGET"."NAME"'
      Size = 30
    end
    object Qry_TSN_TRAILER: TIBStringField
      DisplayWidth = 25
      FieldName = 'N_TRAILER'
      ProviderFlags = []
      Size = 25
    end
    object Qry_TSN_TRAILER1: TIBStringField
      FieldName = 'N_TRAILER1'
      Origin = '"TRAILERS"."N_TRAILER"'
      Size = 10
    end
    object Qry_TSNUM_PARK: TIBStringField
      DisplayLabel = #8470' '#1084#1077#1089#1090#1072' '#1047#1058#1050
      DisplayWidth = 3
      FieldName = 'NUM_PARK'
      Origin = '"PARK_ZTK"."NUM_PARK"'
      Size = 10
    end
    object Qry_TSTS_ACTION_CODE: TIntegerField
      FieldName = 'TS_ACTION_CODE'
      Origin = '"TS"."TS_ACTION_CODE"'
    end
    object Qry_TSMARKA: TIBStringField
      FieldName = 'MARKA'
      Origin = '"TS"."MARKA"'
      Size = 15
    end
    object Qry_TSOUT_FLAG: TIntegerField
      FieldName = 'OUT_FLAG'
      Origin = '"TS"."OUT_FLAG"'
    end
    object Qry_TSOUT_PZTK: TDateTimeField
      FieldName = 'OUT_PZTK'
      Origin = '"TS"."OUT_PZTK"'
    end
    object Qry_TSDT_IN: TDateTimeField
      FieldName = 'DT_IN'
      Origin = '"TS"."DT_IN"'
    end
    object Qry_TSCOUNTRY: TIBStringField
      FieldName = 'COUNTRY'
      Origin = '"TS"."COUNTRY"'
      Size = 8
    end
    object Qry_TSCOUNTRY_HUMAN: TIBStringField
      FieldName = 'COUNTRY_HUMAN'
      ProviderFlags = []
      Size = 1032
    end
    object Qry_TSVES: TIntegerField
      FieldName = 'VES'
      Origin = '"TS"."VES"'
    end
    object Qry_TSVES_TR: TIntegerField
      FieldName = 'VES_TR'
      Origin = '"TRAILERS"."VES"'
    end
    object Qry_TSVES_CONTROL: TIntegerField
      FieldName = 'VES_CONTROL'
      Origin = '"TS_VES"."VES_CONTROL"'
    end
    object Qry_TSDT_CONTROL: TDateTimeField
      FieldName = 'DT_CONTROL'
      Origin = '"TS_VES"."DT_CONTROL"'
    end
    object Qry_TSUSER_CONTROL: TIBStringField
      FieldName = 'USER_CONTROL'
      Origin = '"TS_VES"."USER_CONTROL"'
      Size = 200
    end
    object Qry_TSOUT_PZTK_FLAG: TSmallintField
      FieldName = 'OUT_PZTK_FLAG'
      Origin = '"TS"."OUT_PZTK_FLAG"'
    end
    object Qry_TSTR_FLAG: TSmallintField
      FieldName = 'TR_FLAG'
      Origin = '"TS_VES"."TR_FLAG"'
    end
    object Qry_TSVES_GRUZA: TIBStringField
      FieldName = 'VES_GRUZA'
      ProviderFlags = []
      Size = 80
    end
  end
  object DS_TS: TDataSource
    AutoEdit = False
    DataSet = Qry_TS
    Left = 120
    Top = 351
  end
  object Qry_Trailer: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DS_TS
    ParamCheck = True
    SQL.Strings = (
      'select *  from trailers where id_truck=:id order by id')
    Left = 72
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object DS_Trailer: TDataSource
    AutoEdit = False
    DataSet = Qry_Trailer
    Left = 120
    Top = 399
  end
  object Qry_ParkZTK: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *  from park_ztk ')
    Left = 72
    Top = 448
  end
  object Ds_ParkZTK: TDataSource
    AutoEdit = False
    DataSet = Qry_ParkZTK
    Left = 120
    Top = 447
  end
  object Qry_Parts: TIBQuery
    Database = DB
    Transaction = IBTR
    OnCalcFields = Qry_PartsCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DS_Ticket
    ParamCheck = True
    SQL.Strings = (
      'select a.*,b.n_ticket || '#39'/'#39' || a.npp as PART_NOMER,c.zayv,c.inn'
      'from TICKET_PARTS A'
      'left join TICKET b on a.id_ticket=b.id'
      'left join reg_ti c on a.id_owner=c.id'
      'where ID_TICKET=:ID'
      'order by  a.npp')
    Left = 72
    Top = 496
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
    object Qry_PartsID: TIntegerField
      FieldName = 'ID'
      Origin = '"TICKET_PARTS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_PartsID_TICKET: TIntegerField
      FieldName = 'ID_TICKET'
      Origin = '"TICKET_PARTS"."ID_TICKET"'
      Required = True
    end
    object Qry_PartsID_OWNER: TIntegerField
      FieldName = 'ID_OWNER'
      Origin = '"TICKET_PARTS"."ID_OWNER"'
      Required = True
    end
    object Qry_PartsNPP: TIntegerField
      FieldName = 'NPP'
      Origin = '"TICKET_PARTS"."NPP"'
      Required = True
    end
    object Qry_PartsSTEP_CTRL: TIntegerField
      FieldName = 'STEP_CTRL'
      Origin = '"TICKET_PARTS"."STEP_CTRL"'
    end
    object Qry_PartsPART_NOMER: TIBStringField
      FieldName = 'PART_NOMER'
      ProviderFlags = []
      Size = 23
    end
    object Qry_PartsZAYV: TIBStringField
      DisplayWidth = 50
      FieldName = 'ZAYV'
      Origin = '"REG_TI"."ZAYV"'
      Size = 100
    end
    object Qry_PartsSTEP_HUMAN: TStringField
      FieldKind = fkCalculated
      FieldName = 'STEP_HUMAN'
      Size = 35
      Calculated = True
    end
    object Qry_PartsPAY_CONTROL: TIntegerField
      FieldName = 'PAY_CONTROL'
      Origin = '"TICKET_PARTS"."PAY_CONTROL"'
    end
    object Qry_PartsINN: TIBStringField
      FieldName = 'INN'
      Origin = '"REG_TI"."INN"'
      Size = 48
    end
    object Qry_PartsTS_FLAG: TSmallintField
      FieldName = 'TS_FLAG'
      Origin = '"TICKET_PARTS"."TS_FLAG"'
    end
  end
  object DS_Parts: TDataSource
    AutoEdit = False
    DataSet = Qry_Parts
    Left = 120
    Top = 495
  end
  object Qry_RegtiDisp: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select  ID, INN, ZAYV,OGRN, VALID,DISCOUNT,'
      '(POSTCODE||'#39' '#39'||CITY||'#39' '#39'||STREET||'#39' '#39'||HOUSE) AS FULL_ADRESS'
      ' from REG_TI order by ZAYV')
    Left = 176
    Top = 16
  end
  object DS_RegtiDisp: TDataSource
    AutoEdit = False
    DataSet = Qry_RegtiDisp
    Left = 216
    Top = 15
  end
  object Qry_Val: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *  from VALNAME order by KR_NAME')
    Left = 176
    Top = 64
  end
  object DS_VAl: TDataSource
    AutoEdit = False
    DataSet = Qry_Val
    Left = 216
    Top = 63
  end
  object Qry_Broker: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from BROKERS  order by NAME')
    Left = 176
    Top = 112
  end
  object DS_Broker: TDataSource
    AutoEdit = False
    DataSet = Qry_Broker
    Left = 216
    Top = 112
  end
  object Qry_TP: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DS_Parts
    ParamCheck = True
    SQL.Strings = (
      
        'select a.*,b.name as goods, c.kr_name as val, d.firm_name as shi' +
        'pper,'
      'f.num_tp as n_part '
      'from PARTIES A '
      'left join goods_cat b on a.goods_cat =b.id'
      'left join valname c on a.valuta = c.id'
      'left join f_otprav d  on a.id_shipper=d.id'
      'left join v_num_docs f on a.id = f.id_tp'
      'where a.id_part = :id order by a.npp')
    Left = 176
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object DS_TP: TDataSource
    AutoEdit = False
    DataSet = Qry_TP
    Left = 216
    Top = 160
  end
  object Qry_Goods: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from GOODS_CAT order by kod')
    Left = 176
    Top = 208
  end
  object DS_Goods: TDataSource
    AutoEdit = False
    DataSet = Qry_Goods
    Left = 216
    Top = 207
  end
  object IBEvents1: TIBEvents
    AutoRegister = True
    Database = DB
    Events.Strings = (
      'ADD_PARTIES'
      'ADD_TICKET'
      'CHANGE_TICKET_PARTS'
      'CHANGE_TRAILERS'
      'CHANGE_TS'
      'DO_HEAD_UPDATED'
      'INSERT WH_ACT_OUT'
      'REFRESH_TS_OUT'
      'UPDATE_PARTIES'
      'UPDATE_PZTKLOG'
      'UPDATE_TICKET')
    Registered = False
    OnEventAlert = IBEvents1EventAlert
    Left = 16
    Top = 208
  end
  object Qry_Rep_Part: TIBQuery
    Database = DB
    Transaction = IBTR
    OnCalcFields = Qry_TicketCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.*,b.*,b.n_ticket || '#39'/'#39' || a.npp as PART_NOMER,'
      'c.zayv,c.inn'
      'from TICKET_PARTS A'
      'left join TICKET b on a.id_ticket=b.id'
      'left join reg_ti c on a.id_owner=c.id'
      'where a.id=:p0')
    Left = 178
    Top = 258
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
  end
  object Qry_Rep_TS: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select first 1 a.*,coalesce(b.n_trailer,'#39#1055#1088#1080#1094#1077#1087' '#1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090#39') as' +
        ' n_trailer,'
      'b.n_trailer as n_trailer1,'
      'c.name, d.name,e.num_park '
      'from ts a'
      'left join trailers b on a.id = b.id_truck'
      'left join vid_ts c on a.kod_ts = c.id_ts'
      'left join cbx_target d on a.target=d.id'
      'left join park_ztk e on a.id=e.id_ts '
      'where a.id_ticket=:id_ticket '
      '')
    Left = 15
    Top = 344
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_TICKET'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object DS_Qry_Rep_Parts: TDataSource
    AutoEdit = False
    DataSet = Qry_Rep_Part
    Left = 224
    Top = 259
  end
  object Qry_Rep_TP: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.*,b.name as goods, c.kr_name as val,'
      'd.dt_action,'
      'd.username,d.action_name'
      ' from PARTIES A '
      'left join goods_cat b on a.goods_cat =b.id'
      'left join valname c on a.valuta = c.id'
      'left join parties_log d on a.id =d.id_tp and d.action_code=3 '
      'where a.id_part = :id ')
    Left = 15
    Top = 392
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object Qry_Rep_Step1: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select  first 1 iif (action_code is null,0,1) as action_code,use' +
        'rname,dt_action'
      'from parties_log where id_ticket=:id_ticket'
      'and action_code = 1')
    Left = 15
    Top = 432
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_TICKET'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object Qry_Rep_Step2: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select  first 1 iif (action_code is null,0,1) as action_code,use' +
        'rname,dt_action  from parties_log where id_ticket=:id_ticket'
      'and action_code = 2')
    Left = 15
    Top = 480
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_TICKET'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object Qry_Shipper: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.*,b.name  from f_otprav a'
      'left join  COUNTRY_CODES b on a.COUNTRY = b.alpha2'
      ' order by firm_name,country')
    Left = 171
    Top = 304
  end
  object DS_Shipper: TDataSource
    AutoEdit = False
    DataSet = Qry_Shipper
    Left = 211
    Top = 303
  end
  object Qry_ScaleTS: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Ds_TpToCbx
    ParamCheck = True
    SQL.Strings = (
      
        'select first 1 a.*,coalesce(b.n_trailer,'#39#1055#1088#1080#1094#1077#1087' '#1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090#39') as' +
        ' n_trailer,'
      'c.n_ticket '
      'from ts a '
      'left join trailers b on a.id = b.id_truck'
      'left join ticket c on a.id_ticket=c.id'
      'where a.id_ticket = :id_ticket'
      'order by a.id')
    Left = 171
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_TICKET'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object DS_Qry_ScaleTS: TDataSource
    AutoEdit = False
    DataSet = Qry_ScaleTS
    Left = 211
    Top = 351
  end
  object DS_ActScales: TDataSource
    AutoEdit = False
    DataSet = Qry_ActScales
    Left = 211
    Top = 400
  end
  object Qry_ActScales: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Ds_TpToCbx
    ParamCheck = True
    SQL.Strings = (
      'select * from act_of_scales where id = :id_scale')
    Left = 171
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_scale'
        ParamType = ptUnknown
      end>
  end
  object Qry_TpToCbx: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.*,b.name as goods, d.firm_name as shipper,e.n_ticket,'
      'e.n_ticket||'#39'/'#39'||f.npp||'#39'/'#39'||a.npp as n_part,g.zayv'
      'from PARTIES A '
      'left join goods_cat b on a.goods_cat =b.id'
      'left join f_otprav d  on a.id_shipper=d.id'
      'left join ticket e on a.id_ticket = e.id'
      'left join ticket_parts f on a.id_part = f.id'
      'left join reg_ti g on f.id_owner=g.id'
      'where a.tp_move_cbx_code =3 or a.tp_move_cbx_code =2 '
      'order by a.id_part,a.npp')
    Left = 171
    Top = 448
  end
  object Ds_TpToCbx: TDataSource
    DataSet = Qry_TpToCbx
    Left = 211
    Top = 448
  end
  object Qry_Warehouse: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select first 50 a.*,b.name as goods, c.kr_name as val, d.firm_na' +
        'me as shipper,'
      
        'f.num_tp as n_part, f.num_part , f.num_ticket,  g.brutto as brut' +
        'to_fact,g.places as places_fact,'
      
        'j.zayv, k.g073,k.g072 , l.cond_park, l.num_park,iif(m.id_ts is n' +
        'ot null, 1,0) as IN_TS,m.id_ts'
      'from PARTIES A '
      'left join goods_cat b on a.goods_cat =b.id'
      'left join valname c on a.valuta = c.id'
      'left join f_otprav d  on a.id_shipper=d.id'
      'left join v_num_docs f on a.id = f.id_tp'
      'left join act_of_scales g on a.id=g.id_tp'
      'left join ticket_parts h on a.id_part=h.id'
      'left join reg_ti j on h.id_owner = j.id'
      'left join do_head k on a.id=k.id_tp'
      'left join park_ztk l on a.id_ticket = l.id_ticket'
      'left join act_of_scales m on a.id_scale = m.id'
      'where a.tp_move_cbx_code =2'
      'order by   f.id_tp desc')
    Left = 171
    Top = 496
  end
  object DS_Warehouse: TDataSource
    AutoEdit = False
    DataSet = Qry_Warehouse
    Left = 211
    Top = 496
  end
  object Qry_WhActIn: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DS_Warehouse
    ParamCheck = True
    SQL.Strings = (
      'select a.*, b.danger '
      'from  WH_ACT_IN a left join parties b on a.id_tp = b.id'
      'where a.id_tp = :id')
    Left = 280
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object DS_WhActIn: TDataSource
    AutoEdit = False
    DataSet = Qry_WhActIn
    Left = 320
    Top = 16
  end
  object Qry_WhActOut: TIBQuery
    Database = DB
    Transaction = IBTR
    OnCalcFields = Qry_WhActOutCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DS_WhActIn
    ParamCheck = True
    SQL.Strings = (
      'select a.*, b.do2_statn, b.g072  from  WH_ACT_OUT a'
      'left join do_outhd b on a.id_do2 = b.id'
      'where id_actin =:id')
    Left = 280
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object Qry_WhActOutID: TIntegerField
      FieldName = 'ID'
      Origin = '"WH_ACT_OUT"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_WhActOutNPP: TIntegerField
      FieldName = 'NPP'
      Origin = '"WH_ACT_OUT"."NPP"'
    end
    object Qry_WhActOutDT: TDateTimeField
      FieldName = 'DT'
      Origin = '"WH_ACT_OUT"."DT"'
    end
    object Qry_WhActOutCLIENT_NAME: TIBStringField
      FieldName = 'CLIENT_NAME'
      Origin = '"WH_ACT_OUT"."CLIENT_NAME"'
      Size = 50
    end
    object Qry_WhActOutCLIENT_DOLJ: TIBStringField
      FieldName = 'CLIENT_DOLJ'
      Origin = '"WH_ACT_OUT"."CLIENT_DOLJ"'
      Size = 40
    end
    object Qry_WhActOutKEEPER_NAME: TIBStringField
      FieldName = 'KEEPER_NAME'
      Origin = '"WH_ACT_OUT"."KEEPER_NAME"'
      Size = 50
    end
    object Qry_WhActOutKEEPER_DOLJ: TIBStringField
      FieldName = 'KEEPER_DOLJ'
      Origin = '"WH_ACT_OUT"."KEEPER_DOLJ"'
      Size = 40
    end
    object Qry_WhActOutWEIGHT: TIBBCDField
      FieldName = 'WEIGHT'
      Origin = '"WH_ACT_OUT"."WEIGHT"'
      Precision = 18
      Size = 3
    end
    object Qry_WhActOutPLACES_KOL: TIntegerField
      FieldName = 'PLACES_KOL'
      Origin = '"WH_ACT_OUT"."PLACES_KOL"'
    end
    object Qry_WhActOutID_DO2: TIntegerField
      FieldName = 'ID_DO2'
      Origin = '"WH_ACT_OUT"."ID_DO2"'
    end
    object Qry_WhActOutNOTE: TBlobField
      FieldName = 'NOTE'
      Origin = '"WH_ACT_OUT"."NOTE"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object Qry_WhActOutID_TP: TIntegerField
      FieldName = 'ID_TP'
      Origin = '"WH_ACT_OUT"."ID_TP"'
    end
    object Qry_WhActOutMestOst: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'MestOst'
      Calculated = True
    end
    object Qry_WhActOutWeightOst: TFloatField
      FieldKind = fkCalculated
      FieldName = 'WeightOst'
      Calculated = True
    end
    object Qry_WhActOutID_ACTIN: TIntegerField
      FieldName = 'ID_ACTIN'
      Origin = '"WH_ACT_OUT"."ID_ACTIN"'
    end
    object Qry_WhActOutDO2_STATN: TIntegerField
      FieldName = 'DO2_STATN'
      Origin = '"DO_OUTHD"."DO2_STATN"'
    end
    object Qry_WhActOutG072: TDateTimeField
      FieldName = 'G072'
      Origin = '"DO_OUTHD"."G072"'
    end
    object Qry_WhActOutCBXTOCBX: TSmallintField
      FieldName = 'CBXTOCBX'
      Origin = '"WH_ACT_OUT"."CBXTOCBX"'
    end
    object Qry_WhActOutDT_PRINT: TDateTimeField
      FieldName = 'DT_PRINT'
      Origin = '"WH_ACT_OUT"."DT_PRINT"'
    end
  end
  object DS_WhOut: TDataSource
    AutoEdit = False
    DataSet = Qry_WhActOut
    Left = 328
    Top = 64
  end
  object Qry_SVH: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select  a.*,'
      
        '(a.svh_post||'#39' '#39'||a.svh_region||'#39' '#39'||a.svh_city||'#39' '#39'||a.svh_stre' +
        'et||'#39' '#39'||a.svh_house) as full_adress'
      'from SVH a where a.STATUS_LIC = 1')
    Left = 280
    Top = 112
  end
  object DS_SVH: TDataSource
    AutoEdit = False
    DataSet = Qry_SVH
    Left = 320
    Top = 112
  end
  object Qry_ClosedCbx: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *  from CLOSED_CBX order by ID')
    Left = 280
    Top = 160
  end
  object DS_ClosedCBX: TDataSource
    AutoEdit = False
    DataSet = Qry_ClosedCbx
    Left = 320
    Top = 160
  end
  object Qry_RepWhIn: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select '
      'a.* ,d.zayv'
      'from wh_act_in a'
      'left join parties b on a.id_tp = b.id'
      'left join ticket_parts c on b.id_part = c.id'
      'left join reg_ti d on c.id_owner = d.id'
      'where a.id=:p0')
    Left = 280
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
  end
  object Qry_DoHead: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.*, b.num_tp, c.svh_name,d.ntrans'
      'from do_head_vw a'
      'left join v_num_docs b on a.id_tp = b.id_tp'
      'left join svh c on a.id_svh=c.id'
      'left join do_trans d on a.id=d.id_do1'
      'left join svh e on a.id_svh=e.id'
      'order by a.id desc')
    Left = 387
    Top = 6
  end
  object Ds_DoHead: TDataSource
    AutoEdit = False
    DataSet = Qry_DoHead
    Left = 427
    Top = 6
  end
  object Qry_DoCust: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Ds_DoHead
    ParamCheck = True
    SQL.Strings = (
      'select * from do_cust '
      'where id_do1=:id'
      ''
      '')
    Left = 387
    Top = 54
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object DS_DoCust: TDataSource
    AutoEdit = False
    DataSet = Qry_DoCust
    Left = 427
    Top = 54
  end
  object Qry_DoTrand: TIBQuery
    Database = DB
    Transaction = IBTR
    OnCalcFields = Qry_DoTrandCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Ds_DoHead
    ParamCheck = True
    SQL.Strings = (
      'select * from do_trand'
      'where id_do1=:id'
      'order by n_td'
      ''
      '')
    Left = 387
    Top = 102
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object Qry_DoTrandID: TIntegerField
      FieldName = 'ID'
      Origin = '"DO_TRAND"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_DoTrandID_DO1: TIntegerField
      FieldName = 'ID_DO1'
      Origin = '"DO_TRAND"."ID_DO1"'
      Required = True
    end
    object Qry_DoTrandN_TD: TIntegerField
      FieldName = 'N_TD'
      Origin = '"DO_TRAND"."N_TD"'
    end
    object Qry_DoTrandNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"DO_TRAND"."NAME"'
      Size = 50
    end
    object Qry_DoTrandNDOC: TIBStringField
      FieldName = 'NDOC'
      Origin = '"DO_TRAND"."NDOC"'
      Size = 50
    end
    object Qry_DoTrandDDOC: TDateField
      FieldName = 'DDOC'
      Origin = '"DO_TRAND"."DDOC"'
    end
    object Qry_DoTrandTYPE_DOC: TIBStringField
      FieldName = 'TYPE_DOC'
      Origin = '"DO_TRAND"."TYPE_DOC"'
      Size = 5
    end
    object Qry_DoTrandKOL_TOV: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'KOL_TOV'
      Calculated = True
    end
  end
  object DS_DoTrand: TDataSource
    AutoEdit = False
    DataSet = Qry_DoTrand
    Left = 427
    Top = 102
  end
  object Qry_DoTrans: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Ds_DoHead
    ParamCheck = True
    SQL.Strings = (
      'select * from do_trans '
      'where id_do1=:id'
      ''
      '')
    Left = 387
    Top = 150
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object DS_DoTrans: TDataSource
    AutoEdit = False
    DataSet = Qry_DoTrans
    Left = 427
    Top = 150
  end
  object Qry_DoTovar: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DS_DoTrand
    ParamCheck = True
    SQL.Strings = (
      'select G221, G31_1, G31_2, G31_2_OST, G31_2_P, G31_D2,'
      
        ' G32, G33, G35, G35_OST, G42, G42_OST, ID, ID_DO1, N_TTN, PRIM, ' +
        'SVH_NUM, SVH_PLACE, UNSHIPPED,'
      'iif(g31_2_P = '#39'T'#39','#39#1063'.'#1052'.'#39',g31_2) as g31_2_human,'
      'g31_2_ost as g31_2_ost_human ,DATE_IN,TIME_IN  '
      'from do_tovar'
      'where id_do1=:id_do1'
      'order by g32'
      ''
      '')
    Left = 387
    Top = 198
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_do1'
        ParamType = ptUnknown
      end>
  end
  object DS_DoTovar: TDataSource
    AutoEdit = False
    DataSet = Qry_DoTovar
    Left = 427
    Top = 198
  end
  object Qry_Oksmt: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from oksmt order by krname')
    Left = 280
    Top = 256
  end
  object DS_Oksmt: TDataSource
    AutoEdit = False
    DataSet = Qry_Oksmt
    Left = 320
    Top = 256
  end
  object Qry_DoOutHd: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Ds_DoHead
    ParamCheck = True
    SQL.Strings = (
      'select a.*,b.LIC_NUM, b.LIC_DATE,c.id'
      ' from do_outhd a'
      'left join svh b on a.id_svh=b.id'
      'left join WH_ACT_OUT c on a.ID_ACT_OUT = c.id'
      'where a.id_do1=:id'
      'order by a.id'
      ''
      '')
    Left = 387
    Top = 246
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object DS_DoOutHd: TDataSource
    AutoEdit = False
    DataSet = Qry_DoOutHd
    Left = 427
    Top = 246
  end
  object DS_DoOutCust: TDataSource
    AutoEdit = False
    DataSet = Qry_DoOutCust
    Left = 427
    Top = 294
  end
  object Qry_DoOutCust: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from do_tovar'
      'where id_do1=:id'
      ''
      '')
    Left = 387
    Top = 294
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object DS_DoOutTovar: TDataSource
    AutoEdit = False
    DataSet = Qry_DoOutTovar
    Left = 427
    Top = 438
  end
  object Qry_DoOutTovar: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DS_DoOutHd
    ParamCheck = True
    SQL.Strings = (
      'select a.*, iif (a.g31_2_p='#39'T'#39','#39#1063'.'#1052'. '#39',a.g31_2) as g31_2_human,'
      '      b.g31_2, b.g31_2_ost,'
      '      b.g35,b.g35_ost,'
      '      b.g42,b.g42_ost'
      ' from do_out a'
      ' left join do_tovar b on a.id_tov_do1=b.id'
      'where a.id_do2=:id'
      'order by a.g32_n')
    Left = 387
    Top = 438
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object Qry_Carrier: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.*,b.NAME from CARRIER  a'
      'left join country_codes b on a.COUNTRY_CODE=b.ALPHA2'
      'order by a.OWNER')
    Left = 280
    Top = 304
  end
  object DS_Carrier: TDataSource
    AutoEdit = False
    DataSet = Qry_Carrier
    Left = 320
    Top = 304
  end
  object Qry_VidTrans: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *  from VID_TRANS order by kod')
    Left = 280
    Top = 352
  end
  object Ds_VidTrans: TDataSource
    AutoEdit = False
    DataSet = Qry_VidTrans
    Left = 320
    Top = 352
  end
  object Qry_TDOC: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *   from CUST_DOC order by kod')
    Left = 280
    Top = 400
  end
  object DS_TDOC: TDataSource
    AutoEdit = False
    DataSet = Qry_TDOC
    Left = 320
    Top = 400
  end
  object Qry_Docg44: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *  from DOCG44 order by kod')
    Left = 280
    Top = 448
  end
  object DS_Docg44: TDataSource
    AutoEdit = False
    DataSet = Qry_Docg44
    Left = 320
    Top = 448
  end
  object SP_DoTrandCountTov: TIBStoredProc
    Database = DB
    Transaction = IBTR
    StoredProcName = 'DO_TRAND_COUNT_TOV'
    Left = 776
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'COUNT_TOV'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'ID_DO1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'N_TD'
        ParamType = ptInput
      end>
  end
  object Qry_Tnved4: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select ID, (GRUPPA||TOV_POS||SUB_POS) as KOD,'
      'NAME from TNVED4 '
      'where date_exp is null'
      'ORDER BY KOD')
    Left = 280
    Top = 496
  end
  object DS_Tnved4: TDataSource
    AutoEdit = False
    DataSet = Qry_Tnved4
    Left = 336
    Top = 496
  end
  object Qry_raspiska: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from raspiska where id_do1=:p0')
    Left = 494
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
  end
  object Qry_RepDo1: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select  a.*, b.g073, b.g072, b.g14fam,b.g14dolj,b.c_name,'
      
        '        c.svh_owner,c.lic_num,c.lic_date, d.vidtrans,d.ntrans, e' +
        '.*'
      '   from do_tovar a'
      '   left join do_head b  on a.id_do1 = b.id'
      '   left join svh c on b.id_svh=c.id'
      '   left join do_trans d on a.id_do1=d.id_do1'
      
        '   left join do_trand e on (a.id_do1=e.id_do1) and  ( e.type_doc' +
        ' like '#39'02%'#39'  or e.type_doc like '#39'2%'#39')'
      '  where a.id_do1=:p0   '
      'order by a.g32')
    Left = 491
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
  end
  object Ibdt_rep_do2: TIBDataSet
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      
        'select  a.g074,a.g072,a.g073,a.do1_g072,a.g31_1,a.g33,a.g221,a.g' +
        '31_2,a.g31_2_p,'
      '  a.g42,a.g35,a.g32,a.g32_n, a.n_doc_out, a.id_num,'
      '  b.svh_num,b.g31_d2,b.g31_2,b.g31_2_p,b.g35,b.g42,'
      
        '  b.g42_ost,b.g35_ost,b.g31_2_ost,  c.g144e,c.do2_g144e,c.do2_g1' +
        '45,c.g02_2,c.g02_3,c.g01_1,c.g01_2, c.do2c_name,do2c_fam,c.g5421' +
        ',c.do2_statn,d.g142,'
      '  d.g071,d.g5421,'
      '  e.type,e.name,e.ndoc,'
      '  f.vidtrans,f.ntrans, c.g01_2'
      ' from do_out a'
      
        '  left join do_tovar b on a.g074=b.g073 and a.do1_g072=b.g072 an' +
        'd a.g32_n=b.g32'
      
        '  left join do_outhd c on a.g074=c.g074 and a.g072=c.g072 and a.' +
        'timeout=c.g5421'
      '  left join do_head d on a.g074=d.g073 and a.do1_g072=d.g072'
      '  left join do_custo e on  a.g074=e.g074 and a.g072=e.g072'
      '  left join do_outts f on a.g074=f.g074 and a.g072=f.g072'
      '   where a.g074=:p0 and a.g072=:p1 and a.timeout=:p3'
      '  order by a.g32'
      '')
    ParamCheck = True
    UniDirectional = False
    Left = 491
    Top = 104
  end
  object DS_QryGtd: TDataSource
    AutoEdit = False
    DataSet = Qry_Gtd
    Left = 523
    Top = 150
  end
  object Qry_Gtd: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DS_DoOutHd
    ParamCheck = True
    SQL.Strings = (
      'select * from do_outdocs'
      'where id_actwh=:id_act_out'
      'order by npp'
      ''
      '')
    Left = 483
    Top = 150
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_act_out'
        ParamType = ptUnknown
      end>
  end
  object Qry_Do2LinkedDocs: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DS_DoOutTovar
    ParamCheck = True
    SQL.Strings = (
      'select b.npp,b.name,b.ndoc,b.ddoc, a.id '
      ' from rel_tov_gtd a'
      ' right join do_outdocs b on a.id_gtd = b.id'
      ' where a.id_tov=:id'
      ' order by b.npp')
    Left = 480
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object DS_Do2LinkedDocs: TDataSource
    AutoEdit = False
    DataSet = Qry_Do2LinkedDocs
    Left = 523
    Top = 198
  end
  object Qry_RepDo2: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select  a.*,'
      '           b. G073, b.G072, b.r_name,'
      
        '           c.G32, c.SVH_NUM, c.G31_1, c.G35, c.G42, c.G31_2, c.G' +
        '31_D2,c.G221, c.G31_2_OST,c.G35_OST, c.G42_OST,c.DATE_IN,c.TIME_' +
        'IN,'
      '           d.LIC_NUM, d.LIC_DATE, d.SVH_OWNER,'
      '           e.*'
      '  from do_out a'
      '  left join do_outhd e on a.id_do2=e.id'
      '  left join do_head b on e.id_do1=b.id'
      '  left join do_tovar c on a.id_tov_do1=c.id'
      '  left join svh d on e.id_svh=d.id'
      '  where a.id_do2=:p0'
      '  order by a.g32_n'
      '')
    Left = 536
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
  end
  object Qry_Do2Sheet: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.*, cast(a.g072 as date),'
      'b.g073,cast(b.g072 as date),b.r_name,c.id as id_act_out'
      ' from do_outhd a'
      'left join do_head b on a.id_do1=b.id'
      'left join wh_act_out c on a.id_act_out = c.id'
      'order by a.id desc'
      ''
      '')
    Left = 387
    Top = 494
  end
  object DS_Do2Sheet: TDataSource
    AutoEdit = False
    DataSet = Qry_Do2Sheet
    Left = 427
    Top = 494
  end
  object Qry_PriceType: TIBQuery
    Database = DB
    Transaction = IBTR
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from PRICES order by id')
    Left = 480
    Top = 248
  end
  object DS_PriceType: TDataSource
    AutoEdit = False
    DataSet = Qry_PriceType
    Left = 523
    Top = 246
  end
  object Qry_PriceList: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.id, a.id_parent, a.npp_num, a.name as usluga,a.krname,'
      'a.order_flag, a.stoim, a.stoim/1.18 as EXC_VAT,'
      'a.npp_str, a.id_type_price, a.edizm, a.vat as STAVKA_VAT,'
      'a.time_flag,a.wh_flag,a.del_flag, a.type_numering,'
      'b.name, b.status '
      '  from price_lists a '
      ' left join  prices b  on a.id_type_price = b.id'
      ' where a.id_type_price = :p0 and a.del_flag <> 1'
      ' order by a.npp_num')
    Left = 480
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
  end
  object DS_PriceList: TDataSource
    AutoEdit = False
    DataSet = MT_PriceList
    Left = 523
    Top = 294
  end
  object MT_PriceList: TMemTableEh
    Params = <>
    DataDriver = DSDriver_PriseList
    ReadOnly = True
    TreeList.Active = True
    TreeList.KeyFieldName = 'ID'
    TreeList.RefParentFieldName = 'ID_PARENT'
    TreeList.DefaultNodeExpanded = True
    Left = 712
    Top = 4
  end
  object DSDriver_PriseList: TDataSetDriverEh
    ProviderDataSet = Qry_PriceList
    Left = 672
    Top = 4
  end
  object Qry_Edizm: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from edizm order by fname')
    Left = 480
    Top = 344
  end
  object DS_Edizm: TDataSource
    AutoEdit = False
    DataSet = Qry_Edizm
    Left = 520
    Top = 344
  end
  object Qry_Usl: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select a.*,b.name as usluga,iif(a.checked = '#39'T'#39',1,0) as usl_chec' +
        'k ,'
      'iif(a.del_flag = '#39'1'#39','#39#1053#1077' '#1087#1088#1080#1084'.'#39','#39#39') as del_flag_human,'
      'b.stoim as cost'
      'from ticket_money a'
      'left join  PRICE_LISTS b on a.id_usl=b.id'
      'where a.id_part = :id'
      'order by id')
    Left = 480
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object DS_usl: TDataSource
    AutoEdit = False
    DataSet = Qry_Usl
    Left = 520
    Top = 392
  end
  object Qry_Dogovors: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Ds_Regti
    ParamCheck = True
    SQL.Strings = (
      'select * from dogovors where id_zayv=:id'
      'order by start_dog ')
    Left = 480
    Top = 496
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object Qry_DogovorsID: TIntegerField
      FieldName = 'ID'
      Origin = '"DOGOVORS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_DogovorsID_ZAYV: TIntegerField
      FieldName = 'ID_ZAYV'
      Origin = '"DOGOVORS"."ID_ZAYV"'
      Required = True
    end
    object Qry_DogovorsNUM_DOG: TIBStringField
      FieldName = 'NUM_DOG'
      Origin = '"DOGOVORS"."NUM_DOG"'
      Required = True
      Size = 12
    end
    object Qry_DogovorsSTART_DOG: TDateField
      FieldName = 'START_DOG'
      Origin = '"DOGOVORS"."START_DOG"'
      Required = True
    end
    object Qry_DogovorsEND_DATE: TDateField
      FieldName = 'END_DATE'
      Origin = '"DOGOVORS"."END_DATE"'
    end
    object Qry_DogovorsNOTE: TBlobField
      FieldName = 'NOTE'
      Origin = '"DOGOVORS"."NOTE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object DS_Dogovors: TDataSource
    AutoEdit = False
    DataSet = Qry_Dogovors
    Left = 520
    Top = 496
  end
  object Qry_Hold: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select h.*, iif(h.name is null,'#39'--'#39',h.name) as name_human  from ' +
        'HOLDINGS h order by name')
    Left = 576
    Top = 8
  end
  object DS_Hold: TDataSource
    DataSet = Qry_Hold
    Left = 616
    Top = 8
  end
  object Qry_ReasDog: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Ds_Regti
    ParamCheck = True
    SQL.Strings = (
      'select * from  REG_TI_LOG'
      'where id_zayv=:id'
      'order by id desc')
    Left = 584
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object DS_ReasDog: TDataSource
    AutoEdit = False
    DataSet = Qry_ReasDog
    Left = 624
    Top = 56
  end
  object Qry_ClAc: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT a.*,'
      'B.NAME as KODOP,C.NAME as KODDOC '
      'from cl_accounts_vw  A'
      'LEFT JOIN VID_OPER B ON A.kod_vid=B.ID'
      'LEFT JOIN VID_PL_DOC C ON A.KOD_DOC=C.ID'
      'WHERE ZAYV=:ID'
      'ORDER BY A.DT DESC,  A.ID DESC')
    Left = 576
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
  object DS_ClAc: TDataSource
    AutoEdit = False
    DataSet = Qry_ClAc
    Left = 624
    Top = 104
  end
  object Qry_VidPlDoc: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from VID_PL_DOC order by id')
    Left = 576
    Top = 152
  end
  object DS_VidPlDoc: TDataSource
    AutoEdit = False
    DataSet = Qry_VidPlDoc
    Left = 624
    Top = 152
  end
  object Qry_VidOp: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from VID_OPER  order by id')
    Left = 576
    Top = 200
  end
  object DS_VidOp: TDataSource
    AutoEdit = False
    DataSet = Qry_VidOp
    Left = 624
    Top = 200
  end
  object DS_WhDocOut: TDataSource
    AutoEdit = False
    DataSet = Qry_WhDocOut
    Left = 427
    Top = 342
  end
  object Qry_WhDocOut: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DS_WhOut
    ParamCheck = True
    SQL.Strings = (
      'select * from do_outdocs'
      'where ID_ACTWH=:id'
      'order by npp'
      ''
      '')
    Left = 387
    Top = 342
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object Ds_ActWithoutDo2: TDataSource
    AutoEdit = False
    DataSet = Qry_ActWithoutDo2
    Left = 427
    Top = 398
  end
  object Qry_ActWithoutDo2: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select a.*, b.num_tp,c.g073,cast(c.g072 as date ) as dt_do1,c.id' +
        ' as id_do1,'
      'd.do2_statn,d.g072'
      'from wh_act_out a'
      'left join v_num_docs b on a.id_tp=b.id_tp'
      'left join do_head c  on a.id_tp=c.id_tp'
      'left join do_outhd d on c.id = d.id_do1'
      'where a.id_do2 is null and a.cbxtocbx <> 1 '
      'and (not a.dt_print is null )'
      'order by b.num_tp,a.npp'
      '')
    Left = 387
    Top = 398
  end
  object Qry_RepWhOut: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.*,cast(a.dt as date) as date_act,'
      ' b.NOMER_TP, b. GOODS_NAME,b.SIGN_NUMBER,b.WH_TYPE,'
      'e.zayv'
      ' from WH_ACT_OUT a'
      'left join  WH_ACT_IN b on a.id_actin = b.id'
      'left join parties c on b.id_tp = c.id'
      'left join ticket_parts d on c.id_part = d.id'
      'left join reg_ti e on d.id_owner = e.id'
      'where a.id=:p0')
    Left = 576
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
  end
  object Ds_RepWhOut: TDataSource
    AutoEdit = False
    DataSet = Qry_RepWhOut
    Left = 624
    Top = 248
  end
  object Qry_Rep_Step4: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select  first 1 iif (action_code is null,0,1) as action_code,'
      'username,dt_action  from parties_log where id_part=:id'
      'and action_code =4')
    Left = 575
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object Qry_Rep_Step5: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select  iif (action_code is null,0,1) as action_code1,username,d' +
        't_action,npp_tp,action_name '
      'from parties_log where id_part=:id'
      'and cast(action_code as varchar(2))  like '#39'5%'#39
      'order by id')
    Left = 623
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object Qry_PartForPay: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.*,b.n_ticket || '#39'/'#39' || a.npp as PART_NOMER'
      'from TICKET_PARTS A'
      'left join TICKET b on a.id_ticket=b.id'
      'where a.pay_control =1 and a.id_owner=:id'
      'order by part_nomer desc'
      '')
    Left = 575
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object Ds_PartForPay: TDataSource
    AutoEdit = False
    DataSet = Qry_PartForPay
    Left = 632
    Top = 344
  end
  object DS_FHead: TDataSource
    DataSet = Qry_FHead
    OnDataChange = DS_FHeadDataChange
    Left = 625
    Top = 400
  end
  object Qry_Daily_SumFaktura: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.nomer,a.date_is, a.total_sum,a.pass_flag, c.zayv,'
      'b.n_doc,b.money,b.dt'
      'from faktura_head a'
      
        'left join cl_accounts_vw b on cast(a.nomer as varchar(10))=b.n_d' +
        'oc'
      'left join reg_ti c on a.plat_name=c.id_num'
      'where cast(a.date_is as date) between :p0 and :p1'
      ' order by a.nomer')
    Left = 779
    Top = 104
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
  object Qry_FHead: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Ds_PartForPay
    ParamCheck = True
    SQL.Strings = (
      'select a.*, b.*, cast(b.date_is as date) as data_f,'
      'c.zayv as poluch, d.zayv as plat, d.discount as disc_plat,'
      'd.discount_note,d.show_discount_note,'
      'd.id_hold, e.name as holding,e.discount as disc_hold,'
      ' iif(f.saldo is null,0,f.saldo ) as SALDO ,'
      ' d.credit, '
      'iif((d.credit > 0) , (d.credit + f.saldo), null) as CREDIT_REST '
      'from rel_kt_inv a'
      'left join faktura_head b on a.id_inv = b.id'
      'left join reg_ti c on b.r_name = c.id'
      'left join reg_ti d on b.plat_name = d.id'
      'left join holdings e on d.id_hold=e.id'
      'left join registr_saldo f on d.id = f.id_zayv'
      'where a.id_kt=:id'
      ' and b.pass_flag <> 2'
      'order by b.nomer')
    Left = 576
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object Ds_FItems: TDataSource
    DataSet = Qry_FItems
    Left = 625
    Top = 448
  end
  object Qry_FItems: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DS_FHead
    ParamCheck = True
    SQL.Strings = (
      'select * from faktura_items'
      'where id_f_head=:id1'
      'order by id')
    Left = 576
    Top = 448
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id1'
        ParamType = ptUnknown
      end>
  end
  object Qry_RepInFaktura: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select A.*,cast(a.date_is as date) as d_faktura,'
      '       B.*, ( (B.TOTAL_SUM-B.SUM_VAT)/B.KOL) as STOIM_W_VAT,'
      '       C.ID,C.zayv,C.inn,C.kpp, c.CHIEF_FAM, c.CHIEF_DOLJ,'
      '       (iif (C.POSTCODE is not null, C.postcode, '#39#39'))||'#39' '#39'|| '
      '       (iif(C.region is not null, C.REGION,'#39#39'))||'#39' '#39'||'
      '       (iif (C.CITY is not null, c.city,'#39#39'))||'#39' '#39'||'
      '       (iif (C.STREET is not null, c.street,'#39#39'))||'#39' '#39'||'
      '       (iif (C.HOUSE is not null, c.house,'#39#39')) AS FULLADRESSZAYV'
      '       from FAKTURA_HEAD A'
      '       LEFT JOIN FAKTURA_ITEMS B ON A.ID=B.ID_F_HEAD'
      '       LEFT JOIN REG_TI C ON A.PLAT_NAME=C.ID'
      '       where a.id=:p0')
    Left = 672
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
  end
  object Qry_Rep_Step6: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select  iif (action_code is null,0,1) as action_code,username,dt' +
        '_action,action_name'
      'from parties_log where id_part=:id'
      'and action_code =6')
    Left = 679
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object Qry_FheadLog: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        '  select a.*, cast(a.date_is as date) as data_f, b.zayv as poluc' +
        'h, c.zayv as plat, c.discount as disc_plat, '
      '  c.id_hold, d.name as holding,d.discount as disc_hold,  '
      '   iif(f.saldo is null,0,f.saldo ) as SALDO , c.credit, '
      
        '  iif((c.credit > 0) , (c.credit + f.saldo), null) as CREDIT_RES' +
        'T '
      '  from faktura_head a left join reg_ti b on a.r_name = b.id '
      
        '  left join reg_ti c on a.plat_name = c.id left join holdings d ' +
        'on c.id_hold=d.id '
      '  left join registr_saldo f on c.id = f.id_zayv '
      '  order by a.id desc')
    Left = 680
    Top = 152
  end
  object Qry_FItemsLog: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DS_FheadLog
    ParamCheck = True
    SQL.Strings = (
      'select * from faktura_items'
      'where id_f_head=:id'
      'order by id')
    Left = 680
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object DS_FheadLog: TDataSource
    DataSet = Qry_FheadLog
    Left = 720
    Top = 152
  end
  object Ds_FItemsLog: TDataSource
    DataSet = Qry_FItemsLog
    Left = 720
    Top = 200
  end
  object Qry_Rep_Step7: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select  iif (action_code is null,0,1) as action_code1,'
      'username,dt_action,action_name, NPP_TP'
      'from parties_log where id_part=:id'
      'and cast(action_code as varchar(2))  like '#39'7%'#39
      'order by id')
    Left = 727
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object Qry_GurTsIn: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.*,'
      'coalesce(b.n_trailer,'#39#1055#1088#1080#1094#1077#1087' '#1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090#39') as n_trailer,'
      'c.name, d.name , '
      'e.n_ticket, e.cust_proc,e.dt_is, e.username,f.num_park'
      'from ts a'
      'left join trailers b on a.id = b.id_truck'
      'left join vid_ts c on a.kod_ts = c.id_ts'
      'left join cbx_target d on a.target=d.id'
      'left join ticket e on a.id_ticket = e.id'
      'left join park_ztk f on a.id=f.id_ts'
      'order by a.id desc')
    Left = 680
    Top = 248
  end
  object Ds_GurTsIn: TDataSource
    AutoEdit = False
    DataSet = Qry_GurTsIn
    Left = 728
    Top = 247
  end
  object Qry_GurTsOut: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        '  select a.*,iif(n_pass = -1,'#39#1054#1096#1080#1073#1086#1095#1085#1099#1081' '#1074#1098#1077#1079#1076#39',n_pass) as n_pass' +
        'human,b.id_ticket,iif(c.cust_proc='#39#1054#1090#1087#1088#1072#1074#1082#1072' '#1056#1060#39','#39#1054#1090#1087#1088#1072#1074#1082#1072' '#1056#1060#39','#39' ' +
        #39')as cust_proc'
      ' from ts_out a'
      
        '  left join ts b on a.id_ts = b.id left join ticket c on b.id_ti' +
        'cket = c.id')
    Left = 680
    Top = 296
  end
  object Ds_GurTsOut: TDataSource
    DataSet = Qry_GurTsOut
    Left = 728
    Top = 296
  end
  object Qry_Pztk: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select a.*, coalesce(b.n_trailer,'#39#1055#1088#1080#1094#1077#1087' '#1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090#39') as n_trai' +
        'ler,d.name , e.n_ticket, e.cust_proc,e.dt_is,'
      'e.username,e.pop,e.cust_user, f.owner'
      'from ts a'
      'left join trailers b on a.id = b.id_truck'
      'left join cbx_target d on a.target=d.id'
      'left join ticket e on a.id_ticket = e.id'
      'left join carrier f on e.id_carrier=f.id'
      'where a.target = 1'
      'order by a.id desc')
    Left = 680
    Top = 344
  end
  object DS_Pztk: TDataSource
    DataSet = Qry_Pztk
    Left = 728
    Top = 344
  end
  object Qry_TtnIn: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DS_TP
    ParamCheck = True
    SQL.Strings = (
      'select a. * from TTN_IN a'
      'where a.id_tp = :id')
    Left = 680
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object Qry_PztkOutDocs: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.*  from OUT_DOCS  a'
      'left join parties b on a.id_tp = b.id'
      'where b.id_ticket = :id_ticket')
    Left = 680
    Top = 448
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_TICKET'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object Ds_TtnIn: TDataSource
    DataSet = Qry_TtnIn
    Left = 728
    Top = 400
  end
  object DS_PztkOutDocs: TDataSource
    DataSet = Qry_PztkOutDocs
    Left = 728
    Top = 448
  end
  object Ds_CustUsers: TDataSource
    DataSet = Qry_CustUsers
    Left = 624
    Top = 496
  end
  object Qry_CustUsers: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from cust_users where valid = '#39'T'#39
      'order by username')
    Left = 576
    Top = 496
  end
  object Qry_Bills: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.*, b.zayv as firma  from cl_accounts_vw a'
      '          left join reg_ti b on a.zayv=b.id      '
      '          where  kod_doc=2 and '
      '         cast(dt as date)  between :p0 and :p1'
      'order by a.id desc')
    Left = 680
    Top = 496
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
  object Ds_Bills: TDataSource
    DataSet = Qry_Bills
    Left = 728
    Top = 496
  end
  object Qry_AllPartsForPay: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.*,b.n_ticket || '#39'/'#39' || a.npp as PART_NOMER,c.zayv'
      'from TICKET_PARTS A'
      'left join TICKET b on a.id_ticket=b.id'
      'left join reg_ti c on a.id_owner=c.id'
      'where a.pay_control =1'
      'order by part_nomer desc')
    Left = 728
    Top = 56
  end
  object Ds_AllPartsForPay: TDataSource
    DataSet = Qry_AllPartsForPay
    Left = 768
    Top = 56
  end
  object Qry_RepCheck: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select a.*,b.name as goods, c.kr_name as val, d.firm_name as shi' +
        'pper,'
      
        'f.num_tp as n_part , h.zayv as poluch,i.*,k.n_ts,k.n_trailer_hum' +
        'an,'
      'k.driver'
      'from PARTIES A '
      'left join goods_cat b on a.goods_cat =b.id'
      'left join valname c on a.valuta = c.id'
      'left join f_otprav d  on a.id_shipper=d.id'
      'left join v_num_docs f on a.id = f.id_tp'
      'left join ticket_parts g on a.id_part = g.id'
      'left join reg_ti h on g.id_owner = h.id'
      'left join ticket i on a.id_ticket = i.id'
      'left join first_ts k on a.id_ticket = k.id_ticket'
      'where a.id = :p0'
      '')
    Left = 872
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
  end
  object Ds_ActOfScalesTs: TDataSource
    AutoEdit = False
    DataSet = Qry_ActOfScalesTs
    Left = 819
    Top = 200
  end
  object Qry_ActOfScalesTs: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Ds_TpToCbx
    ParamCheck = True
    SQL.Strings = (
      'select * from act_of_scales_ts where id = :id_scale')
    Left = 779
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_SCALE'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object Ds_RelTpActIn: TDataSource
    AutoEdit = False
    DataSet = Qry_RelTpActIn
    Left = 827
    Top = 248
  end
  object Qry_RelTpActIn: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DS_Warehouse
    ParamCheck = True
    SQL.Strings = (
      'select  *  from REL_TP_ACTIN where id_tp = :id ')
    Left = 779
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object Qry_OpenCbx: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from PARK_CBX order by ID')
    Left = 784
    Top = 296
  end
  object Ds_OpenCbx: TDataSource
    AutoEdit = False
    DataSet = Qry_OpenCbx
    Left = 824
    Top = 296
  end
  object DS_RepWhIn: TDataSource
    AutoEdit = False
    DataSet = Qry_RepWhIn
    Left = 320
    Top = 208
  end
  object Qry_WhClosedDetailed: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DS_ClosedCBX
    ParamCheck = True
    SQL.Strings = (
      'select c.id, c.dt, c.nomer_tp,d.g073,b.id'
      'from rel_tp_wh b '
      'left join wh_act_in c on b.id_act_in = c.id'
      'left join do_head d on c.id_tp = d.id_tp'
      'where b.id_wh = :id')
    Left = 784
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object Ds_WhClosedDetailed: TDataSource
    AutoEdit = False
    DataSet = Qry_WhClosedDetailed
    Left = 824
    Top = 344
  end
  object Qry_WhOpenDetailed: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Ds_OpenCbx
    ParamCheck = True
    SQL.Strings = (
      'select c.id, c.dt, c.nomer_tp,c.n_ts, d.g073'
      'from rel_tp_wh_open b '
      'left join wh_act_in c on b.id_act_in = c.id'
      'left join do_head d on c.id_tp = d.id_tp'
      'where b.id_wh = :id')
    Left = 784
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object Ds_WhOpenDetailed: TDataSource
    AutoEdit = False
    DataSet = Qry_WhOpenDetailed
    Left = 824
    Top = 392
  end
  object Qry_TPWithoutDo1: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.id as id_tp, c.zayv , d.id_part, d.id_ticket,'
      
        ' d.num_tp,d.num_part, e.id as id_act, e.dt,f.id, f.g073,e.weight' +
        '_doc,e.weight_fact, a.id*0 as weight_dif,'
      
        ' e.weight_doc-e.weight_fact as differ,e.weight_fact/e.weight_doc' +
        '*100-100 as percent'
      'from parties a'
      'left join ticket_parts b on a.id_part = b.id'
      'left join reg_ti c on b.id_owner = c.id'
      'left join v_num_docs d on a.id = d.id_tp'
      'left join wh_act_in e on a.id = e.id_tp'
      'left join do_head f on a.id = f.id_tp'
      'where a.tp_move_cbx_code = 4 and  f.id is null'
      'order by a.id')
    Left = 784
    Top = 440
  end
  object Ds_TPWithoutDo1: TDataSource
    AutoEdit = False
    DataSet = Qry_TPWithoutDo1
    Left = 832
    Top = 440
  end
  object Qry_TicketLog: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from parties_log where id_ticket= :p0'
      'order by id')
    Left = 784
    Top = 496
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
  end
  object Ds_TicketLog: TDataSource
    AutoEdit = False
    DataSet = Qry_TicketLog
    Left = 832
    Top = 496
  end
  object Qry_TovMismatch: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Ds_ActCom
    ParamCheck = True
    SQL.Strings = (
      'select a.* '
      'from  MISMATCH a'
      'where a.id_act=:id'
      '')
    Left = 856
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object Qry_ActCom: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Ds_DoHead
    ParamCheck = True
    SQL.Strings = (
      'select * from act_com where id_do1=:id order by npp')
    Left = 856
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object Ds_ActCom: TDataSource
    DataSet = Qry_ActCom
    Left = 904
    Top = 8
  end
  object Ds_TovMismatch: TDataSource
    DataSet = Qry_TovMismatch
    Left = 904
    Top = 56
  end
  object Qry_RepCheckKpp: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select first 1 a.*, b.n_ticket,b.dt_is,b.username,c.num_park'
      'from first_ts a'
      'left join ticket b  on a.id_ticket = b.id'
      'left join park_ztk c on a.id=c.id_ts'
      'where a.id_ticket = :p0'
      'order by a.id')
    Left = 824
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
  end
  object Qry_PayList: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select a.id,a.id_ticket,  b.num_tp as n_part, c.n_ticket,c.dt_is' +
        ',e.zayv'
      'from PARTIES A '
      'left join v_num_docs b on a.id = b.id_tp'
      'left join ticket c on a.id_ticket = c.id'
      'left join ticket_parts d on a.id_part=d.id'
      'left join reg_ti e on d.id_owner = e.id'
      'where a.id_ticket = :p0'
      'order by a.id')
    Left = 816
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
  end
  object Qry_RepPassOut: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select a.*,b.*,iif(c.cust_proc='#39#1054#1090#1087#1088#1072#1074#1082#1072' '#1056#1060#39','#39#1054#1090#1087#1088#1072#1074#1082#1072' '#1056#1060#39','#39' '#39') ' +
        'as cust_proc'
      'from'
      'ts_out a'
      'left join pass_outdocs b on a.id = b.id_pass'
      'left join ticket c on a.n_ticket=c.n_ticket'
      'where a.id = :p0')
    Left = 920
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
  end
  object Qry_RepPassOutTs: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select a.n_ts,a.dt_in, coalesce(b.n_trailer,'#39#1055#1088#1080#1094#1077#1087' '#1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090#39 +
        ') as n_trailer'
      'from ts a'
      'left join trailers b on a.id = b.id_truck'
      'where a.id_ticket=:p0'
      'order by a.id')
    Left = 776
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
  end
  object Qry_UslDel: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.*,b.kol_uslug,b.username as user_enter,'
      'b.dt_action,b.days,c.name as usluga'
      'from ticket_money_deleted a'
      'left join ticket_money b on a.id_usl_money = b.id'
      'left join  PRICE_LISTS c on b.id_usl=c.id'
      'where b.id_part = :p0'
      'order by a.id')
    Left = 872
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
  end
  object Ds_UslDel: TDataSource
    DataSet = Qry_UslDel
    Left = 920
    Top = 152
  end
  object Qry_Exp_Inv: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT A.*, B.ZAYV, B.INN'
      'FROM FAKTURA_HEAD A'
      'LEFT JOIN REG_TI B ON A.PLAT_NAME = B.ID'
      'ORDER BY A.NOMER')
    Left = 881
    Top = 200
  end
  object Ds_Exp_Inv: TDataSource
    DataSet = Qry_Exp_Inv
    Left = 928
    Top = 200
  end
  object QryExp: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 873
    Top = 248
  end
  object Ds_QryExp: TDataSource
    DataSet = QryExp
    Left = 912
    Top = 248
  end
  object Qry_Bank: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.*,b.name,c.zayv,cast(a.dt as date) as date_op'
      'from cl_accounts_vw a'
      'left join vid_pl_doc b on a.kod_doc = b.id'
      'left join reg_ti c on a.zayv = c.id'
      'where (a.kod_doc = 1 or (a.kod_doc=3))'
      'and (cast(a.dt as date) between :p0 and :p1)'
      'order by c.zayv,a.id'
      ''
      '')
    Left = 824
    Top = 152
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
  object Qry_Rep12: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select a.npp_str, sum(a.total_sum) as tot_sum, sum(a.kol) as kol' +
        ','
      ' sum(a.kol* a.stoim) as sum_price'
      
        ' from faktura_items a left join faktura_head b on a.id_f_head = ' +
        'b.id'
      
        ' where a.id_usl=402 and cast(b.date_is as date) between '#39'01.04.2' +
        '014'#39' and '#39'30.04.2014'#39
      ' group by a.npp_str')
    Left = 816
    Top = 8
  end
  object Qry_RepNegSaldo: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.*, b.zayv,b.buh_note'
      'from registr_saldo a'
      'left join reg_ti b on a.id_zayv = b.id'
      'where a.saldo < 0'
      'order by a.saldo ')
    Left = 128
    Top = 16
  end
  object Qry_BuhRep_FakturaSumma: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.nomer,a.date_is, a.total_sum,a.pass_flag, c.zayv,'
      'b.n_doc,b.money,b.dt'
      'from faktura_head a'
      
        'left join cl_accounts_vw b on cast(a.nomer as varchar(10))=b.n_d' +
        'oc'
      'left join reg_ti c on a.plat_name=c.id'
      'where (b.kod_vid=2 and b.kod_doc=4) and'
      'cast(a.date_is as date) between :p0 and :p1'
      ' order by a.nomer')
    Left = 872
    Top = 296
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
  object Ds_BuhRep_FakturaSumma: TDataSource
    DataSet = Qry_BuhRep_FakturaSumma
    Left = 912
    Top = 296
  end
  object Qry_DoArc: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.*, b.num_tp, c.svh_name,d.ntrans'
      'from do_head_vw_arc a'
      'left join v_num_docs b on a.id_tp = b.id_tp'
      'left join svh c on a.id_svh=c.id'
      'left join do_trans d on a.id=d.id_do1'
      'order by a.id desc')
    Left = 16
    Top = 544
  end
  object Ds_DoArc: TDataSource
    DataSet = Qry_DoArc
    Left = 64
    Top = 544
  end
  object Ds_TicketForFakturaLog: TDataSource
    DataSet = Qry_TicketForFakturaLog
    Left = 168
    Top = 544
  end
  object Qry_TicketForFakturaLog: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DS_FheadLog
    ParamCheck = True
    SQL.Strings = (
      'select b.n_ticket || '#39'/'#39' || a.npp as PART_NOMER,b.dt_is,c.id_kt'
      'from rel_kt_inv c'
      'left join TICKET_PARTS A on c.id_kt = a.id'
      'left join TICKET b on a.id_ticket=b.id'
      'where c.id_inv=:id')
    Left = 120
    Top = 544
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object Qry_DoOstatki: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select b.g073,b.g072,  a.g32,a.g31_1, a.g42_ost,a.g35_ost,a.g31_' +
        '2_ost from do_tovar a'
      'left join do_head b on a.id_do1 = b.id'
      'where (a.g42_ost <> 0) or (a.g35_ost <> 0) or (a.g31_2_ost <> 0)'
      'order by g073')
    Left = 120
    Top = 160
  end
  object Qry_sms_subscr: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Ds_Regti
    ParamCheck = True
    SQL.Strings = (
      'select * from SMS_SUBSCRIPTION'
      'where id_zayv = :id'
      'order by id')
    Left = 224
    Top = 544
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object Ds_Qry_sms: TDataSource
    DataSet = Qry_sms_subscr
    Left = 264
    Top = 544
  end
  object Qry_mail_subscr: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Ds_Regti
    ParamCheck = True
    SQL.Strings = (
      'select * from MAIL_SUBSCRIPTION'
      'where id_zayv = :id'
      'order by id')
    Left = 320
    Top = 544
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object Ds_mail_subscr: TDataSource
    DataSet = Qry_mail_subscr
    Left = 360
    Top = 544
  end
  object Qry_Regti: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        '  SELECT A.*, B.NAME, B.CREDIT,B.SALDO,(B.CREDIT+B.SALDO) AS BAL' +
        'ANCE,B.DISCOUNT AS DISC_HOLD'
      '  FROM REG_TI A  LEFT JOIN HOLDINGS B ON A.ID_HOLD=B.ID '
      'WHERE A.DEL_FLAG = 0 '
      'ORDER BY A.ID DESC')
    Left = 880
    Top = 344
  end
  object Ds_Regti: TDataSource
    AutoEdit = False
    DataSet = Qry_Regti
    Left = 920
    Top = 344
  end
  object Qry_CountryCodes: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select ID,NAME, ALPHA2 from COUNTRY_CODES'
      'order by name')
    Left = 880
    Top = 392
  end
  object DS_CountryCodes: TDataSource
    DataSet = Qry_CountryCodes
    Left = 920
    Top = 392
  end
  object Qry_ReasonDolgDetail: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DS_ReasonDolgMaster
    ParamCheck = True
    SQL.Strings = (
      'select a.*,'
      'b.zayv,c.name'
      'from reasondolg a'
      'left join reg_ti b on a.id_plat = b.id'
      'left join holdings c on a.id_hold = c.id'
      'where iif(a.delete_flag is null,0,a.delete_flag) < 1 '
      'and (a.dolg_rest > 0) and a.id_plat = :id_plat'
      'order by a.dt_is, a.id')
    Left = 512
    Top = 440
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_PLAT'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object Qry_Regti_Buh: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select NAME, ALPHA2 from COUNTRY_CODES'
      'order by name')
    Left = 880
    Top = 440
  end
  object DS_Regti_Buh: TDataSource
    DataSet = Qry_Regti_Buh
    Left = 920
    Top = 440
  end
  object Qry_ReasonDolgMaster: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select sum(a.dolg_rest), b.zayv  ,a.id_plat'
      'from reasondolg a'
      'left join reg_ti b on a.id_plat = b.id'
      
        'where a.dolg_rest > 0 and iif(a.delete_flag is null,0,a.delete_f' +
        'lag) < 1'
      'group by b.zayv , a.id_plat'
      'having sum(a.dolg_rest) > 0'
      'order by sum(a.dolg_rest) desc')
    Left = 408
    Top = 544
  end
  object DS_ReasonDolgMaster: TDataSource
    DataSet = Qry_ReasonDolgMaster
    Left = 448
    Top = 544
  end
  object Qry_BillItems: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select a.*, cast( a.kol*a.stoim as numeric(17,2))  as summa, b.Z' +
        'AYV from bills a'
      '      left join reg_ti b on a.id_plat = b.id'
      '      where pay_flag = 0')
    Left = 488
    Top = 544
  end
  object DS_BillItems: TDataSource
    DataSet = Qry_BillItems
    Left = 528
    Top = 544
  end
  object Qry_BillItemsPayed: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Ds_Bills
    ParamCheck = True
    SQL.Strings = (
      'select a.*, a.kol*a.stoim  as summa from bills a'
      'where a.pay_flag = 1 and a. id_account = :id')
    Left = 584
    Top = 544
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object DS_BillItemsPayed: TDataSource
    DataSet = Qry_BillItemsPayed
    Left = 624
    Top = 544
  end
  object Qry_SelectParts: TIBQuery
    Database = DB
    Transaction = IBTR
    OnCalcFields = Qry_PartsCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.*,b.n_ticket || '#39'/'#39' || a.npp as PART_NOMER,c.zayv,c.inn'
      'from TICKET_PARTS A'
      'left join TICKET b on a.id_ticket=b.id'
      'left join reg_ti c on a.id_owner=c.id'
      'where ID_TICKET=:p0'
      'order by  a.npp')
    Left = 680
    Top = 544
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Origin = '"TICKET_PARTS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_TICKET'
      Origin = '"TICKET_PARTS"."ID_TICKET"'
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'ID_OWNER'
      Origin = '"TICKET_PARTS"."ID_OWNER"'
      Required = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'NPP'
      Origin = '"TICKET_PARTS"."NPP"'
      Required = True
    end
    object IntegerField5: TIntegerField
      FieldName = 'STEP_CTRL'
      Origin = '"TICKET_PARTS"."STEP_CTRL"'
    end
    object IBStringField1: TIBStringField
      FieldName = 'PART_NOMER'
      ProviderFlags = []
      Size = 23
    end
    object IBStringField2: TIBStringField
      DisplayWidth = 50
      FieldName = 'ZAYV'
      Origin = '"REG_TI"."ZAYV"'
      Size = 100
    end
    object StringField1: TStringField
      FieldKind = fkCalculated
      FieldName = 'STEP_HUMAN'
      Size = 35
      Calculated = True
    end
    object IntegerField6: TIntegerField
      FieldName = 'PAY_CONTROL'
      Origin = '"TICKET_PARTS"."PAY_CONTROL"'
    end
    object IBStringField3: TIBStringField
      FieldName = 'INN'
      Origin = '"REG_TI"."INN"'
      Size = 48
    end
  end
  object DS_SelectParts: TDataSource
    AutoEdit = False
    DataSet = Qry_SelectParts
    Left = 728
    Top = 543
  end
  object DS_DogovorsList: TDataSource
    AutoEdit = False
    DataSet = Qry_DogovorsList
    Left = 840
    Top = 543
  end
  object Qry_DogovorsList: TIBQuery
    Database = DB
    Transaction = IBTR
    OnCalcFields = Qry_PartsCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.*, b.zayv from dogovors a'
      'left join reg_ti b on a.id_zayv = b.id'
      'order by a.id desc')
    Left = 784
    Top = 544
  end
  object Ds_FItemsEdited: TDataSource
    AutoEdit = False
    DataSet = Qry_FItemsEdited
    Left = 936
    Top = 495
  end
  object Qry_FItemsEdited: TIBQuery
    Database = DB
    Transaction = IBTR
    OnCalcFields = Qry_PartsCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from  FAKTURA_ITEMS_LOG_VW'
      'where cast(dt as date) between :p0 and :p1'
      'order by id desc')
    Left = 880
    Top = 496
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
  object Qry_VesCheque: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select c.n_ticket, a.n_ts , coalesce(b.n_trailer,'#39#1055#1088#1080#1094#1077#1087' '#1086#1090#1089#1091#1090#1089#1090 +
        #1074#1091#1077#1090#39') as n_trailer,'
      '       a.fio_driver, a.ves as ves_ts, b.ves as ves_tr,'
      '       h.VES_CONTROL,h.USER_CONTROL,h.DT_CONTROL, h.tr_flag,'
      '       iif(h.ves_control is null,'#39#1053#1077' '#1074#1079#1074#1077#1096#1077#1085#39','
      
        '             iif(h.tr_flag = 1,coalesce(h.ves_control,0) - coale' +
        'sce (b.ves,0),coalesce(h.ves_control,0) - coalesce(a.ves,0) - co' +
        'alesce (b.ves,0)))'
      '              as ves_gruza'
      'from ts a'
      'left join trailers b on a.id = b.id_truck'
      'left join ticket c on a.id_ticket = c.id'
      'left join  TS_VES  h on h.TS_IN = a.id'
      'where a.id = :p0')
    Left = 896
    Top = 544
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
  end
  object Qry_InspLog: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.dt,a.username,b.nomer_tp,b.id,'
      
        'iif(a."ACTION" = 0,'#39#1055#1088#1080#1073#1099#1083' '#1089' '#1076#1086#1089#1084#1086#1090#1088#1072#39','#39#1059#1073#1099#1083' '#1085#1072' '#1076#1086#1089#1084#1086#1090#1088#39') as hum' +
        'an_action'
      
        'from inspection_log a left join wh_act_in b on a.id_act = b.id o' +
        'rder by a.id desc'
      '')
    Left = 16
    Top = 600
  end
  object DS_InspLog: TDataSource
    DataSet = Qry_InspLog
    Left = 64
    Top = 600
  end
end
