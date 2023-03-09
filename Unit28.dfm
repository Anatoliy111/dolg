object Form28: TForm28
  Left = 0
  Top = 0
  Caption = 'Form28'
  ClientHeight = 359
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
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 359
    Top = 21
    DataBinding.DataField = 'RAH'
    DataBinding.DataSource = DSBANK
    TabOrder = 2
    Width = 273
  end
  object cxLabel1: TcxLabel
    Left = 274
    Top = 22
    Caption = #1056#1072#1093#1091#1085#1086#1082' '#1073#1072#1085#1082#1072
  end
  object cxButton1: TcxButton
    Left = 469
    Top = 326
    Width = 161
    Height = 25
    Caption = #1047#1072#1087#1080#1089#1072#1090#1080
    TabOrder = 4
    OnClick = cxButton1Click
  end
  object cxLabel2: TcxLabel
    Left = 272
    Top = 106
    Caption = #1055#1088#1080#1079#1085#1072#1082' '#1088#1103#1076#1082#1072' '#1087#1086#1095#1072#1090#1082#1091' '#1087#1086#1096#1091#1082#1091' '#1076#1072#1085#1080#1093
  end
  object cxDBTextEdit2: TcxDBTextEdit
    Left = 478
    Top = 106
    DataBinding.DataField = 'STR_PRIZN_STARTDATA'
    DataBinding.DataSource = DSBANK
    TabOrder = 6
    Width = 87
  end
  object cxLabel3: TcxLabel
    Left = 272
    Top = 133
    Caption = #8470' '#1082#1086#1083#1086#1085#1082#1080' '#1087#1086#1095#1072#1090#1082#1091' '#1087#1086#1096#1091#1082#1091' '#1082#1110#1085#1094#1103' '#1076#1072#1085#1080#1093
  end
  object cxDBTextEdit3: TcxDBTextEdit
    Left = 489
    Top = 133
    DataBinding.DataField = 'COL_POISK_ENDDATA'
    DataBinding.DataSource = DSBANK
    TabOrder = 8
    Width = 36
  end
  object cxLabel4: TcxLabel
    Left = 272
    Top = 160
    AutoSize = False
    Caption = #1055#1088#1080#1079#1085#1072#1082' '#1082#1110#1085#1094#1103' '#1076#1072#1085#1080#1093', '#1103#1082#1097#1086' '#1087#1091#1089#1090#1086' '#1090#1086' '#1096#1091#1082#1072' '#1087#1086' '#1079#1072#1087#1086#1074#1085#1077#1085#1086#1089#1090#1110
    ParentShowHint = False
    ShowHint = False
    Properties.WordWrap = True
    Height = 41
    Width = 166
  end
  object cxDBTextEdit4: TcxDBTextEdit
    Left = 455
    Top = 165
    DataBinding.DataField = 'STR_PRIZN_ENDDATA'
    DataBinding.DataSource = DSBANK
    TabOrder = 10
    Width = 175
  end
  object cxLabel5: TcxLabel
    Left = 272
    Top = 195
    Caption = #8470' '#1082#1086#1083#1086#1085#1082#1080' '#1087#1088#1080#1079#1085#1072#1095#1077#1085#1085#1103' '#1087#1083#1072#1090#1077#1078#1091
  end
  object cxDBTextEdit5: TcxDBTextEdit
    Left = 455
    Top = 195
    DataBinding.DataField = 'COL_PRIZN'
    DataBinding.DataSource = DSBANK
    TabOrder = 12
    Width = 36
  end
  object cxLabel6: TcxLabel
    Left = 272
    Top = 218
    Caption = #8470' '#1082#1086#1083#1086#1085#1082#1080' '#1089#1091#1084#1080
  end
  object cxDBTextEdit6: TcxDBTextEdit
    Left = 366
    Top = 218
    DataBinding.DataField = 'COL_SUM'
    DataBinding.DataSource = DSBANK
    TabOrder = 14
    Width = 36
  end
  object cxLabel7: TcxLabel
    Left = 424
    Top = 219
    Caption = #8470' '#1082#1086#1083#1086#1085#1082#1080' '#1076#1072#1090#1080
  end
  object cxDBTextEdit7: TcxDBTextEdit
    Left = 520
    Top = 218
    DataBinding.DataField = 'COL_DT'
    DataBinding.DataSource = DSBANK
    TabOrder = 16
    Width = 36
  end
  object cxLabel8: TcxLabel
    Left = 272
    Top = 48
    Caption = #8470' '#1088#1103#1076#1082#1072' '#1087#1086#1096#1091#1082#1091' '#1088#1072#1093#1091#1085#1082#1072
  end
  object cxDBTextEdit8: TcxDBTextEdit
    Left = 413
    Top = 48
    DataBinding.DataField = 'STR_POISK_RAH'
    DataBinding.DataSource = DSBANK
    TabOrder = 18
    Width = 36
  end
  object cxLabel9: TcxLabel
    Left = 455
    Top = 48
    Caption = #8470' '#1082#1086#1083#1086#1085#1082#1080' '#1087#1086#1096#1091#1082#1091' '#1088#1072#1093#1091#1085#1082#1072
  end
  object cxDBTextEdit9: TcxDBTextEdit
    Left = 596
    Top = 48
    DataBinding.DataField = 'COL_POISK_RAH'
    DataBinding.DataSource = DSBANK
    TabOrder = 20
    Width = 36
  end
  object cxLabel10: TcxLabel
    Left = 272
    Top = 241
    Caption = #8470' '#1082#1086#1083#1086#1085#1082#1080' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  end
  object cxDBTextEdit10: TcxDBTextEdit
    Left = 392
    Top = 240
    DataBinding.DataField = 'COL_DOK'
    DataBinding.DataSource = DSBANK
    TabOrder = 22
    Width = 36
  end
  object cxLabel11: TcxLabel
    Left = 432
    Top = 242
    Caption = #8470' '#1086#1089#1090#1072#1085#1085#1100#1086#1111' '#1082#1086#1083#1086#1085#1082#1080' '#1076#1072#1085#1080#1093
  end
  object cxDBTextEdit11: TcxDBTextEdit
    Left = 586
    Top = 241
    DataBinding.DataField = 'COL_END'
    DataBinding.DataSource = DSBANK
    TabOrder = 24
    Width = 36
  end
  object cxLabel12: TcxLabel
    Left = 272
    Top = 294
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
    Left = 469
    Top = 299
    DataBinding.DataField = 'STR_EDRPOU'
    DataBinding.DataSource = DSBANK
    TabOrder = 26
    Width = 163
  end
  object cxLabel13: TcxLabel
    Left = 272
    Top = 267
    Caption = #8470' '#1082#1086#1083#1086#1085#1082#1080' '#1028#1044#1056#1055#1054#1059
  end
  object cxDBTextEdit13: TcxDBTextEdit
    Left = 392
    Top = 266
    DataBinding.DataField = 'COL_EDRPOU'
    DataBinding.DataSource = DSBANK
    TabOrder = 28
    Width = 36
  end
  object cxLabel14: TcxLabel
    Left = 274
    Top = 75
    Caption = #8470' '#1088#1103#1076#1082#1072' '#1076#1072#1090#1080' '#1074#1080#1087#1080#1089#1082#1080
  end
  object cxDBTextEdit14: TcxDBTextEdit
    Left = 415
    Top = 75
    DataBinding.DataField = 'STR_DT_VIP'
    DataBinding.DataSource = DSBANK
    TabOrder = 30
    Width = 36
  end
  object cxLabel15: TcxLabel
    Left = 457
    Top = 75
    Caption = #8470' '#1082#1086#1083#1086#1085#1082#1080' '#1076#1072#1090#1080' '#1074#1080#1087#1080#1089#1082#1080
  end
  object cxDBTextEdit15: TcxDBTextEdit
    Left = 598
    Top = 75
    DataBinding.DataField = 'COL_DT_VIP'
    DataBinding.DataSource = DSBANK
    TabOrder = 32
    Width = 36
  end
  object cxLabel16: TcxLabel
    Left = 435
    Top = 266
    Caption = #8470' '#1082#1086#1083#1086#1085#1082#1080' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
  end
  object cxDBTextEdit16: TcxDBTextEdit
    Left = 586
    Top = 265
    DataBinding.DataField = 'COL_KONTR'
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
        ')'
      'values'
      
        '  (:KL, :NAIM, :RAH, :STR_PRIZN_STARTDATA, :COL_POISK_ENDDATA, :' +
        'STR_PRIZN_ENDDATA, '
      
        '   :COL_PRIZN, :COL_SUM, :COL_DT, :COL_DOK, :COL_END, :COL_KONTR' +
        ', :STR_POISK_RAH, '
      
        '   :COL_POISK_RAH, :COL_EDRPOU, :STR_EDRPOU, :COL_DT_VIP, :STR_D' +
        'T_VIP)')
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
      '  STR_DT_VIP'
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
      '  STR_DT_VIP = :STR_DT_VIP'
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
    object IBBANKCOL_KONTR: TIntegerField
      FieldName = 'COL_KONTR'
      Origin = '"SPR_BANK"."COL_KONTR"'
    end
    object IBBANKSTR_PRIZN_STARTDATA: TIBStringField
      FieldName = 'STR_PRIZN_STARTDATA'
      Origin = '"SPR_BANK"."STR_PRIZN_STARTDATA"'
      Size = 10
    end
  end
  object DSBANK: TDataSource
    DataSet = IBBANK
    Left = 80
    Top = 295
  end
end
