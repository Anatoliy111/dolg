object Form28: TForm28
  Left = 0
  Top = 0
  Caption = 'Form28'
  ClientHeight = 424
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid2: TcxGrid
    Left = 24
    Top = 54
    Width = 217
    Height = 213
    TabOrder = 0
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSBANK
      DataController.DetailKeyFieldNames = 'KL'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView1NAIM: TcxGridDBColumn
        DataBinding.FieldName = 'NAIM'
        PropertiesClassName = 'TcxTextEditProperties'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 18
    Width = 240
    Height = 25
    DataSource = DSBANK
    TabOrder = 1
  end
  object cxButton1: TcxButton
    Left = 465
    Top = 391
    Width = 161
    Height = 25
    Caption = #1047#1072#1087#1080#1089#1072#1090#1080
    TabOrder = 2
    OnClick = cxButton1Click
  end
  object cxLabel2: TcxLabel
    Left = 268
    Top = 142
    Caption = #1055#1088#1080#1079#1085#1072#1082' '#1088#1103#1076#1082#1072' '#1087#1086#1095#1072#1090#1082#1091' '#1087#1086#1096#1091#1082#1091' '#1076#1072#1085#1080#1093' ('#1085#1072#1079#1074#1072' '#1082#1086#1083#1086#1085#1082#1080')'
    Properties.WordWrap = True
    Width = 200
  end
  object cxDBTextEdit2: TcxDBTextEdit
    Left = 474
    Top = 146
    DataBinding.DataField = 'STR_PRIZN_STARTDATA'
    DataBinding.DataSource = DSBANK
    TabOrder = 4
    Width = 148
  end
  object cxLabel3: TcxLabel
    Left = 270
    Top = 123
    Caption = #8470' '#1082#1086#1083#1086#1085#1082#1080' '#1087#1086#1095#1072#1090#1082#1091' '#1087#1086#1096#1091#1082#1091' '#1082#1110#1085#1094#1103' '#1076#1072#1085#1080#1093
  end
  object cxDBTextEdit3: TcxDBTextEdit
    Left = 582
    Top = 123
    DataBinding.DataField = 'COL_POISK_ENDDATA'
    DataBinding.DataSource = DSBANK
    TabOrder = 6
    Width = 36
  end
  object cxLabel4: TcxLabel
    Left = 268
    Top = 171
    AutoSize = False
    Caption = #1055#1088#1080#1079#1085#1072#1082' '#1082#1110#1085#1094#1103' '#1076#1072#1085#1080#1093', '#1103#1082#1097#1086' '#1087#1091#1089#1090#1086' '#1090#1086' '#1096#1091#1082#1072' '#1087#1086' '#1079#1072#1087#1086#1074#1085#1077#1085#1086#1089#1090#1110
    ParentShowHint = False
    ShowHint = False
    Properties.WordWrap = True
    Height = 41
    Width = 166
  end
  object cxDBTextEdit4: TcxDBTextEdit
    Left = 451
    Top = 176
    DataBinding.DataField = 'STR_PRIZN_ENDDATA'
    DataBinding.DataSource = DSBANK
    TabOrder = 8
    Width = 175
  end
  object cxLabel5: TcxLabel
    Left = 268
    Top = 206
    Caption = #8470' '#1082#1086#1083#1086#1085#1082#1080' '#1087#1088#1080#1079#1085#1072#1095#1077#1085#1085#1103' '#1087#1083#1072#1090#1077#1078#1091
  end
  object cxDBTextEdit5: TcxDBTextEdit
    Left = 451
    Top = 206
    DataBinding.DataField = 'COL_PRIZN'
    DataBinding.DataSource = DSBANK
    TabOrder = 10
    Width = 36
  end
  object cxLabel6: TcxLabel
    Left = 268
    Top = 229
    Caption = #8470' '#1082#1086#1083#1086#1085#1082#1080' '#1089#1091#1084#1080
  end
  object cxDBTextEdit6: TcxDBTextEdit
    Left = 362
    Top = 229
    DataBinding.DataField = 'COL_SUM'
    DataBinding.DataSource = DSBANK
    TabOrder = 12
    Width = 36
  end
  object cxLabel7: TcxLabel
    Left = 420
    Top = 230
    Caption = #8470' '#1082#1086#1083#1086#1085#1082#1080' '#1076#1072#1090#1080
  end
  object cxDBTextEdit7: TcxDBTextEdit
    Left = 516
    Top = 229
    DataBinding.DataField = 'COL_DT'
    DataBinding.DataSource = DSBANK
    TabOrder = 14
    Width = 36
  end
  object cxLabel10: TcxLabel
    Left = 268
    Top = 252
    Caption = #8470' '#1082#1086#1083#1086#1085#1082#1080' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  end
  object cxDBTextEdit10: TcxDBTextEdit
    Left = 388
    Top = 251
    DataBinding.DataField = 'COL_DOK'
    DataBinding.DataSource = DSBANK
    TabOrder = 16
    Width = 36
  end
  object cxLabel11: TcxLabel
    Left = 428
    Top = 253
    Caption = #8470' '#1086#1089#1090#1072#1085#1085#1100#1086#1111' '#1082#1086#1083#1086#1085#1082#1080' '#1076#1072#1085#1080#1093
  end
  object cxDBTextEdit11: TcxDBTextEdit
    Left = 582
    Top = 252
    DataBinding.DataField = 'COL_END'
    DataBinding.DataSource = DSBANK
    TabOrder = 18
    Width = 36
  end
  object cxLabel12: TcxLabel
    Left = 268
    Top = 359
    AutoSize = False
    Caption = 
      #8470' '#1028#1044#1056#1055#1054#1059' '#1075#1086#1090#1110#1074#1082#1086#1074#1080#1093' '#1087#1083#1072#1090#1077#1078#1110#1074' '#1087#1088#1080' '#1103#1082#1080#1093' '#1089#1091#1084#1072' '#1073#1077#1088#1077#1090#1100#1089#1103' '#1079' '#1082#1110#1085#1094#1103' '#1087#1088#1080#1079 +
      #1085#1072#1095#1077#1085#1085#1103' '#1087#1083#1072#1090#1077#1078#1091
    ParentShowHint = False
    ShowHint = False
    Properties.WordWrap = True
    Height = 43
    Width = 191
  end
  object cxDBTextEdit12: TcxDBTextEdit
    Left = 465
    Top = 364
    DataBinding.DataField = 'STR_EDRPOU'
    DataBinding.DataSource = DSBANK
    TabOrder = 20
    Width = 163
  end
  object cxLabel13: TcxLabel
    Left = 270
    Top = 331
    Caption = #8470' '#1082#1086#1083#1086#1085#1082#1080' '#1028#1044#1056#1055#1054#1059
  end
  object cxDBTextEdit13: TcxDBTextEdit
    Left = 390
    Top = 330
    DataBinding.DataField = 'COL_EDRPOU'
    DataBinding.DataSource = DSBANK
    TabOrder = 22
    Width = 36
  end
  object cxLabel16: TcxLabel
    Left = 437
    Top = 327
    Caption = #8470' '#1082#1086#1083#1086#1085#1082#1080' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072' ('#1087#1083#1072#1090#1085#1080#1082#1072')'
    Properties.WordWrap = True
    Width = 133
  end
  object cxDBTextEdit16: TcxDBTextEdit
    Left = 584
    Top = 329
    DataBinding.DataField = 'COL_KONTR'
    DataBinding.DataSource = DSBANK
    TabOrder = 24
    Width = 36
  end
  object cxLabel17: TcxLabel
    Left = 270
    Top = 301
    AutoSize = False
    Caption = 
      #8470' '#1082#1086#1083#1086#1085#1082#1080' '#1082#1086#1076#1091' '#1087#1086#1089#1083#1091#1075#1080', '#1087#1088#1080' '#1094#1086#1084#1091' '#1085#1077' '#1073#1091#1076#1077' '#1074#1110#1076#1073#1091#1074#1072#1090#1080#1089#1100' '#1087#1086#1096#1091#1082' '#1087#1086#1089#1083#1091 +
      #1075#1080' '#1074' '#1087#1088#1080#1079#1085#1072#1095#1077#1085#1085#1110' '
    ParentShowHint = False
    ShowHint = False
    Properties.WordWrap = True
    Height = 33
    Width = 308
  end
  object cxDBTextEdit17: TcxDBTextEdit
    Left = 584
    Top = 300
    DataBinding.DataField = 'COL_CODPOSL'
    DataBinding.DataSource = DSBANK
    TabOrder = 26
    Width = 36
  end
  object cxLabel1: TcxLabel
    Left = 270
    Top = 4
    Caption = #1056#1077#1075#1091#1083#1103#1088#1085#1080#1081' '#1074#1080#1088#1072#1079' '#1074#1080#1079#1085#1072#1095#1077#1085#1085#1103' '#1085#1072#1079#1074#1080' '#1092#1072#1081#1083#1091
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 270
    Top = 20
    DataBinding.DataField = 'REGEXP_FILE'
    DataBinding.DataSource = DSBANK
    TabOrder = 28
    Width = 352
  end
  object cxLabel8: TcxLabel
    Left = 270
    Top = 39
    Caption = #1056#1077#1075#1091#1083#1103#1088#1085#1080#1081' '#1074#1080#1088#1072#1079' '#1076#1072#1090#1080' '#1079' '#1085#1072#1079#1074#1080' '#1092#1072#1081#1083#1091
  end
  object cxDBTextEdit8: TcxDBTextEdit
    Left = 270
    Top = 58
    DataBinding.DataField = 'REGEXP_DATE'
    DataBinding.DataSource = DSBANK
    TabOrder = 30
    Width = 352
  end
  object cxLabel9: TcxLabel
    Left = 268
    Top = 78
    Caption = #1060#1086#1088#1084#1072#1090' '#1076#1072#1090#1080' '#1079' '#1085#1072#1079#1074#1080' '#1092#1072#1081#1083#1091
  end
  object cxDBTextEdit9: TcxDBTextEdit
    Left = 268
    Top = 96
    DataBinding.DataField = 'FORMAT_DATE_SEPARATOR'
    DataBinding.DataSource = DSBANK
    TabOrder = 32
    Width = 352
  end
  object cxLabel14: TcxLabel
    Left = 269
    Top = 272
    AutoSize = False
    Caption = 
      #8470' '#1082#1086#1083#1086#1085#1082#1080' '#1086#1089#1086#1073'.'#1088#1072#1093#1091#1085#1082#1091', '#1087#1088#1080' '#1094#1086#1084#1091' '#1085#1077' '#1073#1091#1076#1077' '#1074#1110#1076#1073#1091#1074#1072#1090#1080#1089#1100' '#1087#1086#1096#1091#1082' '#1086#1089#1086#1073'.' +
      #1088#1072#1093#1091#1085#1082#1091' '#1074' '#1087#1088#1080#1079#1085#1072#1095#1077#1085#1085#1110' '
    ParentShowHint = False
    ShowHint = False
    Properties.WordWrap = True
    Height = 33
    Width = 308
  end
  object cxDBTextEdit14: TcxDBTextEdit
    Left = 583
    Top = 278
    DataBinding.DataField = 'COL_RAH'
    DataBinding.DataSource = DSBANK
    TabOrder = 34
    Width = 36
  end
  object IBBANK: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SPR_BANK'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into SPR_BANK'
      
        '  (KL, NAIM, RAH, STR_PRIZN_STARTDATA, COL_POISK_ENDDATA, STR_PR' +
        'IZN_ENDDATA, '
      
        '   COL_PRIZN, COL_SUM, COL_DT, COL_DOK, COL_END, COL_KONTR, STR_' +
        'POISK_RAH, '
      
        '   COL_POISK_RAH, COL_EDRPOU, STR_EDRPOU, COL_DT_VIP, STR_DT_VIP' +
        ', REGEXP_FILE, '
      '   COL_CODPOSL, REGEXP_DATE, FORMAT_DATE_SEPARATOR, COL_RAH)'
      'values'
      
        '  (:KL, :NAIM, :RAH, :STR_PRIZN_STARTDATA, :COL_POISK_ENDDATA, :' +
        'STR_PRIZN_ENDDATA, '
      
        '   :COL_PRIZN, :COL_SUM, :COL_DT, :COL_DOK, :COL_END, :COL_KONTR' +
        ', :STR_POISK_RAH, '
      
        '   :COL_POISK_RAH, :COL_EDRPOU, :STR_EDRPOU, :COL_DT_VIP, :STR_D' +
        'T_VIP, '
      
        '   :REGEXP_FILE, :COL_CODPOSL, :REGEXP_DATE, :FORMAT_DATE_SEPARA' +
        'TOR, :COL_RAH)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  NAIM,'
      '  RAH,'
      '  STR_PRIZN_STARTDATA,'
      '  COL_POISK_ENDDATA,'
      '  STR_PRIZN_ENDDATA,'
      '  COL_PRIZN,'
      '  COL_SUM,'
      '  COL_DT,'
      '  COL_DOK,'
      '  COL_END,'
      '  COL_KONTR,'
      '  STR_POISK_RAH,'
      '  COL_POISK_RAH,'
      '  COL_EDRPOU,'
      '  STR_EDRPOU,'
      '  COL_DT_VIP,'
      '  STR_DT_VIP,'
      '  REGEXP_FILE,'
      '  COL_CODPOSL,'
      '  REGEXP_DATE,'
      '  FORMAT_DATE_SEPARATOR,'
      '  COL_RAH'
      'from SPR_BANK '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select * from SPR_BANK ')
    ModifySQL.Strings = (
      'update SPR_BANK'
      'set'
      '  KL = :KL,'
      '  NAIM = :NAIM,'
      '  RAH = :RAH,'
      '  STR_PRIZN_STARTDATA = :STR_PRIZN_STARTDATA,'
      '  COL_POISK_ENDDATA = :COL_POISK_ENDDATA,'
      '  STR_PRIZN_ENDDATA = :STR_PRIZN_ENDDATA,'
      '  COL_PRIZN = :COL_PRIZN,'
      '  COL_SUM = :COL_SUM,'
      '  COL_DT = :COL_DT,'
      '  COL_DOK = :COL_DOK,'
      '  COL_END = :COL_END,'
      '  COL_KONTR = :COL_KONTR,'
      '  STR_POISK_RAH = :STR_POISK_RAH,'
      '  COL_POISK_RAH = :COL_POISK_RAH,'
      '  COL_EDRPOU = :COL_EDRPOU,'
      '  STR_EDRPOU = :STR_EDRPOU,'
      '  COL_DT_VIP = :COL_DT_VIP,'
      '  STR_DT_VIP = :STR_DT_VIP,'
      '  REGEXP_FILE = :REGEXP_FILE,'
      '  COL_CODPOSL = :COL_CODPOSL,'
      '  REGEXP_DATE = :REGEXP_DATE,'
      '  FORMAT_DATE_SEPARATOR = :FORMAT_DATE_SEPARATOR,'
      '  COL_RAH = :COL_RAH'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_SPR_BANK_ID'
    Left = 32
    Top = 295
    object IBBANKKL: TIntegerField
      FieldName = 'KL'
      Origin = '"SPR_BANK"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBBANKNAIM: TIBStringField
      FieldName = 'NAIM'
      Origin = '"SPR_BANK"."NAIM"'
      Size = 30
    end
    object IBBANKRAH: TIBStringField
      FieldName = 'RAH'
      Origin = '"SPR_BANK"."RAH"'
      Size = 50
    end
    object IBBANKCOL_POISK_ENDDATA: TIntegerField
      FieldName = 'COL_POISK_ENDDATA'
      Origin = '"SPR_BANK"."COL_POISK_ENDDATA"'
    end
    object IBBANKSTR_PRIZN_ENDDATA: TIBStringField
      FieldName = 'STR_PRIZN_ENDDATA'
      Origin = '"SPR_BANK"."STR_PRIZN_ENDDATA"'
      Size = 50
    end
    object IBBANKCOL_PRIZN: TIntegerField
      FieldName = 'COL_PRIZN'
      Origin = '"SPR_BANK"."COL_PRIZN"'
    end
    object IBBANKCOL_SUM: TIntegerField
      FieldName = 'COL_SUM'
      Origin = '"SPR_BANK"."COL_SUM"'
    end
    object IBBANKCOL_DT: TIntegerField
      FieldName = 'COL_DT'
      Origin = '"SPR_BANK"."COL_DT"'
    end
    object IBBANKCOL_DOK: TIntegerField
      FieldName = 'COL_DOK'
      Origin = '"SPR_BANK"."COL_DOK"'
    end
    object IBBANKCOL_END: TIntegerField
      FieldName = 'COL_END'
      Origin = '"SPR_BANK"."COL_END"'
    end
    object IBBANKCOL_KONTR: TIntegerField
      FieldName = 'COL_KONTR'
      Origin = '"SPR_BANK"."COL_KONTR"'
    end
    object IBBANKSTR_POISK_RAH: TIntegerField
      FieldName = 'STR_POISK_RAH'
      Origin = '"SPR_BANK"."STR_POISK_RAH"'
    end
    object IBBANKCOL_POISK_RAH: TIntegerField
      FieldName = 'COL_POISK_RAH'
      Origin = '"SPR_BANK"."COL_POISK_RAH"'
    end
    object IBBANKCOL_EDRPOU: TIntegerField
      FieldName = 'COL_EDRPOU'
      Origin = '"SPR_BANK"."COL_EDRPOU"'
    end
    object IBBANKSTR_EDRPOU: TIBStringField
      FieldName = 'STR_EDRPOU'
      Origin = '"SPR_BANK"."STR_EDRPOU"'
      Size = 10
    end
    object IBBANKCOL_DT_VIP: TIntegerField
      FieldName = 'COL_DT_VIP'
      Origin = '"SPR_BANK"."COL_DT_VIP"'
    end
    object IBBANKSTR_DT_VIP: TIntegerField
      FieldName = 'STR_DT_VIP'
      Origin = '"SPR_BANK"."STR_DT_VIP"'
    end
    object IBBANKREGEXP_FILE: TIBStringField
      FieldName = 'REGEXP_FILE'
      Origin = '"SPR_BANK"."REGEXP_FILE"'
      Required = True
      Size = 100
    end
    object IBBANKCOL_CODPOSL: TIntegerField
      FieldName = 'COL_CODPOSL'
      Origin = '"SPR_BANK"."COL_CODPOSL"'
    end
    object IBBANKREGEXP_DATE: TIBStringField
      FieldName = 'REGEXP_DATE'
      Origin = '"SPR_BANK"."REGEXP_DATE"'
      Required = True
      Size = 100
    end
    object IBBANKFORMAT_DATE_SEPARATOR: TIBStringField
      FieldName = 'FORMAT_DATE_SEPARATOR'
      Origin = '"SPR_BANK"."FORMAT_DATE_SEPARATOR"'
      Required = True
      Size = 50
    end
    object IBBANKCOL_RAH: TIntegerField
      FieldName = 'COL_RAH'
      Origin = '"SPR_BANK"."COL_RAH"'
    end
    object IBBANKSTR_PRIZN_STARTDATA: TIBStringField
      FieldName = 'STR_PRIZN_STARTDATA'
      Origin = '"SPR_BANK"."STR_PRIZN_STARTDATA"'
      Size = 50
    end
  end
  object DSBANK: TDataSource
    DataSet = IBBANK
    Left = 80
    Top = 295
  end
end
