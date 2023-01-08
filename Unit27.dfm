object Form27: TForm27
  Left = 0
  Top = 0
  Caption = 'Form27'
  ClientHeight = 429
  ClientWidth = 577
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
  object cxTextEdit1: TcxTextEdit
    Left = 23
    Top = 32
    Properties.ReadOnly = True
    TabOrder = 0
    Text = #1060#1072#1081#1083
    Width = 306
  end
  object cxLabel3: TcxLabel
    Left = 31
    Top = 116
    Caption = #1041#1072#1085#1082
  end
  object cxTextEdit4: TcxTextEdit
    Left = 125
    Top = 116
    Properties.ReadOnly = True
    TabOrder = 2
    Width = 282
  end
  object cxLabel1: TcxLabel
    Left = 31
    Top = 89
    Caption = #1044#1072#1090#1072
  end
  object cxButton2: TcxButton
    Left = 14
    Top = 149
    Width = 554
    Height = 25
    Caption = #1047#1072#1074#1072#1085#1090#1072#1078#1080#1090#1080
    TabOrder = 4
    OnClick = cxButton2Click
  end
  object cxButton1: TcxButton
    Left = 335
    Top = 31
    Width = 161
    Height = 25
    Caption = #1042#1080#1073#1077#1088#1110#1090#1100' '#1092#1072#1081#1083
    TabOrder = 5
    OnClick = cxButton1Click
  end
  object MemoLog: TMemo
    Left = 0
    Top = 188
    Width = 577
    Height = 241
    Align = alBottom
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 6
    WordWrap = False
  end
  object cxDateEdit1: TcxDateEdit
    Left = 137
    Top = 89
    Properties.ReadOnly = True
    TabOrder = 7
    Width = 121
  end
  object cxDateEdit2: TcxDateEdit
    Left = 286
    Top = 89
    Properties.ReadOnly = True
    TabOrder = 8
    Width = 121
  end
  object cxLabel2: TcxLabel
    Left = 125
    Top = 90
    Caption = #1079
  end
  object cxLabel4: TcxLabel
    Left = 264
    Top = 90
    Caption = #1087#1086
  end
  object ADOCommand1: TADOCommand
    CommandText = 'delete from subsree where len(schet) is null'#13#10
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=d:\WORK\KOMUN\kvpl\' +
      'subs\;Mode=ReadWrite;Extended Properties=dBase IV;Persist Securi' +
      'ty Info=False'
    Parameters = <>
    Left = 136
    Top = 8
  end
  object DSADOQueryOBOR: TDataSource
    DataSet = ADOQueryOBOR
    Enabled = False
    Left = 96
    Top = 56
  end
  object ADOQueryOBOR: TADOQuery
    CursorType = ctStatic
    ParamCheck = False
    Parameters = <>
    Prepared = True
    Left = 80
    Top = 8
  end
  object DSADOQueryTAB: TDataSource
    DataSet = ADOQueryTAB
    Enabled = False
    Left = 16
    Top = 56
  end
  object ADOQueryTAB: TADOQuery
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=d:\WORK\KOMUN\kvpl\' +
      'subs\;Mode=ReadWrite;Extended Properties=dBase IV;Persist Securi' +
      'ty Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select schet, len(schet) from subsree')
    Left = 24
    Top = 8
  end
  object DSQueryBank: TDataSource
    DataSet = IBQueryBank
    Left = 423
    Top = 362
  end
  object IBQueryBank: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from SPR_BANK')
    Left = 423
    Top = 306
    object IBQueryBankKL: TIntegerField
      FieldName = 'KL'
      Origin = '"SPR_BANK"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQueryBankNAIM: TIBStringField
      FieldName = 'NAIM'
      Origin = '"SPR_BANK"."NAIM"'
      Size = 30
    end
    object IBQueryBankRAH: TIBStringField
      FieldName = 'RAH'
      Origin = '"SPR_BANK"."RAH"'
      Size = 50
    end
    object IBQueryBankSTR_ST: TIntegerField
      FieldName = 'STR_ST'
      Origin = '"SPR_BANK"."STR_ST"'
    end
    object IBQueryBankCOL_POISK_ENDDATA: TIntegerField
      FieldName = 'COL_POISK_ENDDATA'
      Origin = '"SPR_BANK"."COL_POISK_ENDDATA"'
    end
    object IBQueryBankSTR_PRIZN_ENDDATA: TIBStringField
      FieldName = 'STR_PRIZN_ENDDATA'
      Origin = '"SPR_BANK"."STR_PRIZN_ENDDATA"'
      Size = 50
    end
    object IBQueryBankCOL_PRIZN: TIntegerField
      FieldName = 'COL_PRIZN'
      Origin = '"SPR_BANK"."COL_PRIZN"'
    end
    object IBQueryBankCOL_SUM: TIntegerField
      FieldName = 'COL_SUM'
      Origin = '"SPR_BANK"."COL_SUM"'
    end
    object IBQueryBankCOL_DT: TIntegerField
      FieldName = 'COL_DT'
      Origin = '"SPR_BANK"."COL_DT"'
    end
    object IBQueryBankCOL_DOK: TIntegerField
      FieldName = 'COL_DOK'
      Origin = '"SPR_BANK"."COL_DOK"'
    end
    object IBQueryBankCOL_END: TIntegerField
      FieldName = 'COL_END'
      Origin = '"SPR_BANK"."COL_END"'
    end
    object IBQueryBankSTR_POISK_RAH: TIntegerField
      FieldName = 'STR_POISK_RAH'
      Origin = '"SPR_BANK"."STR_POISK_RAH"'
    end
    object IBQueryBankCOL_POISK_RAH: TIntegerField
      FieldName = 'COL_POISK_RAH'
      Origin = '"SPR_BANK"."COL_POISK_RAH"'
    end
    object IBQueryBankCOL_EDRPOU: TIntegerField
      FieldName = 'COL_EDRPOU'
      Origin = '"SPR_BANK"."COL_EDRPOU"'
    end
    object IBQueryBankSTR_EDRPOU: TIBStringField
      FieldName = 'STR_EDRPOU'
      Origin = '"SPR_BANK"."STR_EDRPOU"'
      Size = 10
    end
    object IBQueryBankCOL_DT_VIP: TIntegerField
      FieldName = 'COL_DT_VIP'
      Origin = '"SPR_BANK"."COL_DT_VIP"'
    end
    object IBQueryBankSTR_DT_VIP: TIntegerField
      FieldName = 'STR_DT_VIP'
      Origin = '"SPR_BANK"."STR_DT_VIP"'
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 516
    Top = 8
  end
  object IBQueryVipiska: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *  from SPR_VIPISKA')
    Left = 495
    Top = 306
    object IBQueryVipiskaKL: TIntegerField
      FieldName = 'KL'
      Origin = '"SPR_VIPISKA"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQueryVipiskaKL_BANK: TIntegerField
      FieldName = 'KL_BANK'
      Origin = '"SPR_VIPISKA"."KL_BANK"'
    end
    object IBQueryVipiskaWID: TIBStringField
      FieldName = 'WID'
      Origin = '"SPR_VIPISKA"."WID"'
      Size = 2
    end
    object IBQueryVipiskaVIDPOISK: TIBStringField
      FieldName = 'VIDPOISK'
      Origin = '"SPR_VIPISKA"."VIDPOISK"'
      Size = 5
    end
    object IBQueryVipiskaPOISK: TIBStringField
      FieldName = 'POISK'
      Origin = '"SPR_VIPISKA"."POISK"'
      Size = 100
    end
  end
  object DSQueryVipiska: TDataSource
    DataSet = IBQueryVipiska
    Left = 495
    Top = 354
  end
  object IBQueryObor: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *   from OBOR where period=:dt')
    Left = 335
    Top = 306
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dt'
        ParamType = ptUnknown
      end>
    object IBQueryOborSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"OBOR"."SCHET"'
      Size = 10
    end
    object IBQueryOborWID: TIBStringField
      FieldName = 'WID'
      Origin = '"OBOR"."WID"'
      Size = 2
    end
    object IBQueryOborFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"OBOR"."FIO"'
      Size = 25
    end
    object IBQueryOborKOEF: TFloatField
      FieldName = 'KOEF'
      Origin = '"OBOR"."KOEF"'
    end
    object IBQueryOborTARIF: TFloatField
      FieldName = 'TARIF'
      Origin = '"OBOR"."TARIF"'
    end
    object IBQueryOborBL: TIBStringField
      FieldName = 'BL'
      Origin = '"OBOR"."BL"'
      Size = 1
    end
    object IBQueryOborSU_DT: TDateField
      FieldName = 'SU_DT'
      Origin = '"OBOR"."SU_DT"'
    end
    object IBQueryOborSU_DOLG0: TFloatField
      FieldName = 'SU_DOLG0'
      Origin = '"OBOR"."SU_DOLG0"'
    end
    object IBQueryOborSU_DOLG: TFloatField
      FieldName = 'SU_DOLG'
      Origin = '"OBOR"."SU_DOLG"'
    end
    object IBQueryOborSU_DTR: TDateField
      FieldName = 'SU_DTR'
      Origin = '"OBOR"."SU_DTR"'
    end
    object IBQueryOborSU_NR: TIBStringField
      FieldName = 'SU_NR'
      Origin = '"OBOR"."SU_NR"'
      Size = 16
    end
    object IBQueryOborSU_PERIOD: TIBStringField
      FieldName = 'SU_PERIOD'
      Origin = '"OBOR"."SU_PERIOD"'
      Size = 30
    end
    object IBQueryOborSU_VIDM: TFloatField
      FieldName = 'SU_VIDM'
      Origin = '"OBOR"."SU_VIDM"'
    end
    object IBQueryOborN_DOG: TIBStringField
      FieldName = 'N_DOG'
      Origin = '"OBOR"."N_DOG"'
      Size = 10
    end
    object IBQueryOborD_DOG: TIBStringField
      FieldName = 'D_DOG'
      Origin = '"OBOR"."D_DOG"'
      Size = 8
    end
    object IBQueryOborDOLG: TFloatField
      FieldName = 'DOLG'
      Origin = '"OBOR"."DOLG"'
    end
    object IBQueryOborNACH: TFloatField
      FieldName = 'NACH'
      Origin = '"OBOR"."NACH"'
    end
    object IBQueryOborNACH_FULL: TFloatField
      FieldName = 'NACH_FULL'
      Origin = '"OBOR"."NACH_FULL"'
    end
    object IBQueryOborWOZB: TFloatField
      FieldName = 'WOZB'
      Origin = '"OBOR"."WOZB"'
    end
    object IBQueryOborSUBS: TFloatField
      FieldName = 'SUBS'
      Origin = '"OBOR"."SUBS"'
    end
    object IBQueryOborKOMP: TFloatField
      FieldName = 'KOMP'
      Origin = '"OBOR"."KOMP"'
    end
    object IBQueryOborFL1: TIBStringField
      FieldName = 'FL1'
      Origin = '"OBOR"."FL1"'
      Size = 1
    end
    object IBQueryOborOPL: TFloatField
      FieldName = 'OPL'
      Origin = '"OBOR"."OPL"'
    end
    object IBQueryOborOPL_UD: TFloatField
      FieldName = 'OPL_UD'
      Origin = '"OBOR"."OPL_UD"'
    end
    object IBQueryOborOPL_DT: TDateField
      FieldName = 'OPL_DT'
      Origin = '"OBOR"."OPL_DT"'
    end
    object IBQueryOborUDER: TFloatField
      FieldName = 'UDER'
      Origin = '"OBOR"."UDER"'
    end
    object IBQueryOborWOZW: TFloatField
      FieldName = 'WOZW'
      Origin = '"OBOR"."WOZW"'
    end
    object IBQueryOborWOZW_KAS: TFloatField
      FieldName = 'WOZW_KAS'
      Origin = '"OBOR"."WOZW_KAS"'
    end
    object IBQueryOborWZMZ: TFloatField
      FieldName = 'WZMZ'
      Origin = '"OBOR"."WZMZ"'
    end
    object IBQueryOborPERE: TFloatField
      FieldName = 'PERE'
      Origin = '"OBOR"."PERE"'
    end
    object IBQueryOborPLOMB: TIBStringField
      FieldName = 'PLOMB'
      Origin = '"OBOR"."PLOMB"'
      Size = 1
    end
    object IBQueryOborMOVW: TFloatField
      FieldName = 'MOVW'
      Origin = '"OBOR"."MOVW"'
    end
    object IBQueryOborNORMA: TFloatField
      FieldName = 'NORMA'
      Origin = '"OBOR"."NORMA"'
    end
    object IBQueryOborNEWREC: TFloatField
      FieldName = 'NEWREC'
      Origin = '"OBOR"."NEWREC"'
    end
    object IBQueryOborSAL: TFloatField
      FieldName = 'SAL'
      Origin = '"OBOR"."SAL"'
    end
    object IBQueryOborKL_NTAR: TFloatField
      FieldName = 'KL_NTAR'
      Origin = '"OBOR"."KL_NTAR"'
    end
    object IBQueryOborNACH_OLD: TFloatField
      FieldName = 'NACH_OLD'
      Origin = '"OBOR"."NACH_OLD"'
    end
    object IBQueryOborTARSUBS: TFloatField
      FieldName = 'TARSUBS'
      Origin = '"OBOR"."TARSUBS"'
    end
    object IBQueryOborKL: TIntegerField
      FieldName = 'KL'
      Origin = '"OBOR"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQueryOborPERIOD: TDateField
      FieldName = 'PERIOD'
      Origin = '"OBOR"."PERIOD"'
    end
    object IBQueryOborUPD: TIntegerField
      FieldName = 'UPD'
      Origin = '"OBOR"."UPD"'
    end
  end
  object DSQueryObor: TDataSource
    DataSet = IBQueryObor
    Left = 335
    Top = 354
  end
  object IBPERIOD: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PERIOD'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into PERIOD'
      '  (AKTIV, KL, PERIOD)'
      'values'
      '  (:AKTIV, :KL, :PERIOD)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  PERIOD,'
      '  AKTIV'
      'from PERIOD '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select * from PERIOD order by PERIOD desc')
    ModifySQL.Strings = (
      'update PERIOD'
      'set'
      '  AKTIV = :AKTIV,'
      '  KL = :KL,'
      '  PERIOD = :PERIOD'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_PERIOD_ID'
    Left = 24
    Top = 313
    object IBPERIODKL: TIntegerField
      FieldName = 'KL'
      Origin = '"PERIOD"."KL"'
      Required = True
    end
    object IBPERIODPERIOD: TDateField
      FieldName = 'PERIOD'
      Origin = '"PERIOD"."PERIOD"'
    end
    object IBPERIODAKTIV: TIntegerField
      FieldName = 'AKTIV'
      Origin = '"PERIOD"."AKTIV"'
    end
  end
  object DSPERIOD: TDataSource
    DataSet = IBPERIOD
    Left = 24
    Top = 361
  end
  object IBQueryWid: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *  from WID')
    Left = 255
    Top = 306
    object IBQueryWidWID: TIBStringField
      FieldName = 'WID'
      Origin = '"WID"."WID"'
      Size = 2
    end
    object IBQueryWidID_ORG: TFloatField
      FieldName = 'ID_ORG'
      Origin = '"WID"."ID_ORG"'
    end
    object IBQueryWidNAIM: TIBStringField
      FieldName = 'NAIM'
      Origin = '"WID"."NAIM"'
      Size = 15
    end
    object IBQueryWidSNAIM: TIBStringField
      FieldName = 'SNAIM'
      Origin = '"WID"."SNAIM"'
      Size = 8
    end
    object IBQueryWidPAR: TIBStringField
      FieldName = 'PAR'
      Origin = '"WID"."PAR"'
      Size = 10
    end
    object IBQueryWidFL0: TIBStringField
      FieldName = 'FL0'
      Origin = '"WID"."FL0"'
      Size = 1
    end
    object IBQueryWidFL: TIBStringField
      FieldName = 'FL'
      Origin = '"WID"."FL"'
      Size = 1
    end
    object IBQueryWidCOD: TIBStringField
      FieldName = 'COD'
      Origin = '"WID"."COD"'
      Size = 5
    end
    object IBQueryWidABONPL: TIBStringField
      FieldName = 'ABONPL'
      Origin = '"WID"."ABONPL"'
      Size = 2
    end
    object IBQueryWidNPP: TFloatField
      FieldName = 'NPP'
      Origin = '"WID"."NPP"'
    end
    object IBQueryWidFL_NONACH: TIBStringField
      FieldName = 'FL_NONACH'
      Origin = '"WID"."FL_NONACH"'
      Size = 1
    end
    object IBQueryWidFL_NOOPL: TIBStringField
      FieldName = 'FL_NOOPL'
      Origin = '"WID"."FL_NOOPL"'
      Size = 1
    end
    object IBQueryWidFL_VTCH: TIBStringField
      FieldName = 'FL_VTCH'
      Origin = '"WID"."FL_VTCH"'
      Size = 1
    end
    object IBQueryWidFL_NOOBOR: TIBStringField
      FieldName = 'FL_NOOBOR'
      Origin = '"WID"."FL_NOOBOR"'
      Size = 1
    end
    object IBQueryWidFL_GROPL: TFloatField
      FieldName = 'FL_GROPL'
      Origin = '"WID"."FL_GROPL"'
    end
    object IBQueryWidFL_SUBS: TFloatField
      FieldName = 'FL_SUBS'
      Origin = '"WID"."FL_SUBS"'
    end
    object IBQueryWidVAL: TFloatField
      FieldName = 'VAL'
      Origin = '"WID"."VAL"'
    end
    object IBQueryWidUPD: TIntegerField
      FieldName = 'UPD'
      Origin = '"WID"."UPD"'
    end
    object IBQueryWidVNESK: TIBStringField
      FieldName = 'VNESK'
      Origin = '"WID"."VNESK"'
      Size = 2
    end
  end
  object DSQueryWid: TDataSource
    DataSet = IBQueryWid
    Left = 255
    Top = 362
  end
end
