object Form30: TForm30
  Left = 0
  Top = 0
  Caption = 'Form30'
  ClientHeight = 480
  ClientWidth = 962
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 962
    Height = 73
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 658
    object DBNavigator1: TDBNavigator
      Left = 602
      Top = 24
      Width = 240
      Height = 25
      DataSource = DSSPR_VIPISKA
      TabOrder = 0
    end
    object cxLabel1: TcxLabel
      Left = 61
      Top = 50
      Caption = #1041#1072#1085#1082
    end
    object cxLabel2: TcxLabel
      Left = 357
      Top = 50
      Caption = #1055#1086#1089#1083#1091#1075#1072
    end
    object cxLabel3: TcxLabel
      Left = 194
      Top = 50
      Caption = #1042#1080#1076' '#1087#1086#1096#1091#1082#1091
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 73
    Width = 137
    Height = 407
    Align = alLeft
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSSPR_BANK
      DataController.DetailKeyFieldNames = 'KL'
      DataController.KeyFieldNames = 'KL'
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting, dcoGroupsAlwaysExpanded, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellEndEllipsis = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Preview.AutoHeight = False
      object cxGrid1DBTableView1NAIM: TcxGridDBColumn
        Caption = #1041#1072#1085#1082
        DataBinding.FieldName = 'NAIM'
        Options.Editing = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGrid2: TcxGrid
    Left = 434
    Top = 73
    Width = 128
    Height = 407
    Align = alLeft
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    ExplicitLeft = 385
    ExplicitTop = 65
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSWID
      DataController.DetailKeyFieldNames = 'WID'
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting, dcoGroupsAlwaysExpanded, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellEndEllipsis = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Preview.AutoHeight = False
      object cxGridDBTableView1NAIM: TcxGridDBColumn
        Caption = #1055#1086#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'NAIM'
        Options.Editing = False
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object Panel2: TPanel
    Left = 402
    Top = 73
    Width = 32
    Height = 407
    Align = alLeft
    TabOrder = 3
    ExplicitLeft = 265
    ExplicitTop = 79
  end
  object Panel3: TPanel
    Left = 137
    Top = 73
    Width = 32
    Height = 407
    Align = alLeft
    TabOrder = 4
    ExplicitLeft = 17
    ExplicitTop = 1
    ExplicitHeight = 468
  end
  object cxGrid3: TcxGrid
    Left = 169
    Top = 73
    Width = 233
    Height = 407
    Align = alLeft
    TabOrder = 5
    LookAndFeel.NativeStyle = False
    object cxGridDBTableView2: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSSPR_VIDPOISK
      DataController.DetailKeyFieldNames = 'KL'
      DataController.MasterKeyFieldNames = 'KL'
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting, dcoGroupsAlwaysExpanded, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellEndEllipsis = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Preview.AutoHeight = False
      object cxGridDBTableView2NAME_VID: TcxGridDBColumn
        Caption = #1042#1080#1076' '#1087#1086#1096#1091#1082#1091
        DataBinding.FieldName = 'NAME_VID'
        Options.Editing = False
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = cxGridDBTableView2
    end
  end
  object Panel4: TPanel
    Left = 562
    Top = 73
    Width = 32
    Height = 407
    Align = alLeft
    TabOrder = 6
    ExplicitLeft = 769
    ExplicitTop = 79
    ExplicitHeight = 420
  end
  object cxGrid4: TcxGrid
    Left = 594
    Top = 73
    Width = 368
    Height = 407
    Align = alClient
    TabOrder = 7
    LookAndFeel.NativeStyle = False
    ExplicitLeft = 849
    ExplicitTop = 79
    ExplicitWidth = 192
    ExplicitHeight = 420
    object cxGridDBTableView3: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSSPR_VIPISKA
      DataController.DetailKeyFieldNames = 'KL'
      DataController.MasterKeyFieldNames = 'KL'
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting, dcoGroupsAlwaysExpanded, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellEndEllipsis = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Preview.AutoHeight = False
      object cxGridDBTableView3POISK: TcxGridDBColumn
        Caption = #1055#1072#1088#1072#1084#1077#1090#1088' '#1087#1086#1096#1091#1082#1091
        DataBinding.FieldName = 'POISK'
      end
    end
    object cxGridLevel3: TcxGridLevel
      GridView = cxGridDBTableView3
    end
  end
  object cxLabel4: TcxLabel
    Left = 669
    Top = 50
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088' '#1087#1086#1096#1091#1082#1091
  end
  object IBSPR_BANK: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterScroll = IBSPR_BANKAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SPR_BANK'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into SPR_BANK'
      
        '  (KL, NAIM, RAH, STR_ST, COL_POISK_ENDDATA, STR_PRIZN_ENDDATA, ' +
        'COL_PRIZN, '
      
        '   COL_SUM, COL_DT, COL_DOK, COL_END, STR_POISK_RAH, COL_POISK_R' +
        'AH)'
      'values'
      
        '  (:KL, :NAIM, :RAH, :STR_ST, :COL_POISK_ENDDATA, :STR_PRIZN_END' +
        'DATA, :COL_PRIZN, '
      
        '   :COL_SUM, :COL_DT, :COL_DOK, :COL_END, :STR_POISK_RAH, :COL_P' +
        'OISK_RAH)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  NAIM,'
      '  RAH,'
      '  STR_ST,'
      '  COL_POISK_ENDDATA,'
      '  STR_PRIZN_ENDDATA,'
      '  COL_PRIZN,'
      '  COL_SUM,'
      '  COL_DT,'
      '  COL_DOK,'
      '  COL_END,'
      '  STR_POISK_RAH,'
      '  COL_POISK_RAH'
      'from SPR_BANK '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select * from  SPR_BANK')
    ModifySQL.Strings = (
      'update SPR_BANK'
      'set'
      '  KL = :KL,'
      '  NAIM = :NAIM,'
      '  RAH = :RAH,'
      '  STR_ST = :STR_ST,'
      '  COL_POISK_ENDDATA = :COL_POISK_ENDDATA,'
      '  STR_PRIZN_ENDDATA = :STR_PRIZN_ENDDATA,'
      '  COL_PRIZN = :COL_PRIZN,'
      '  COL_SUM = :COL_SUM,'
      '  COL_DT = :COL_DT,'
      '  COL_DOK = :COL_DOK,'
      '  COL_END = :COL_END,'
      '  STR_POISK_RAH = :STR_POISK_RAH,'
      '  COL_POISK_RAH = :COL_POISK_RAH'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_SPR_BANK_ID'
    Left = 664
    Top = 152
    object IBSPR_BANKKL: TIntegerField
      FieldName = 'KL'
      Origin = '"SPR_BANK"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBSPR_BANKNAIM: TIBStringField
      FieldName = 'NAIM'
      Origin = '"SPR_BANK"."NAIM"'
      Size = 30
    end
    object IBSPR_BANKRAH: TIBStringField
      FieldName = 'RAH'
      Origin = '"SPR_BANK"."RAH"'
      Size = 50
    end
    object IBSPR_BANKSTR_ST: TIntegerField
      FieldName = 'STR_ST'
      Origin = '"SPR_BANK"."STR_ST"'
    end
    object IBSPR_BANKCOL_POISK_ENDDATA: TIntegerField
      FieldName = 'COL_POISK_ENDDATA'
      Origin = '"SPR_BANK"."COL_POISK_ENDDATA"'
    end
    object IBSPR_BANKSTR_PRIZN_ENDDATA: TIBStringField
      FieldName = 'STR_PRIZN_ENDDATA'
      Origin = '"SPR_BANK"."STR_PRIZN_ENDDATA"'
      Size = 50
    end
    object IBSPR_BANKCOL_PRIZN: TIntegerField
      FieldName = 'COL_PRIZN'
      Origin = '"SPR_BANK"."COL_PRIZN"'
    end
    object IBSPR_BANKCOL_SUM: TIntegerField
      FieldName = 'COL_SUM'
      Origin = '"SPR_BANK"."COL_SUM"'
    end
    object IBSPR_BANKCOL_DT: TIntegerField
      FieldName = 'COL_DT'
      Origin = '"SPR_BANK"."COL_DT"'
    end
    object IBSPR_BANKCOL_DOK: TIntegerField
      FieldName = 'COL_DOK'
      Origin = '"SPR_BANK"."COL_DOK"'
    end
    object IBSPR_BANKCOL_END: TIntegerField
      FieldName = 'COL_END'
      Origin = '"SPR_BANK"."COL_END"'
    end
    object IBSPR_BANKSTR_POISK_RAH: TIntegerField
      FieldName = 'STR_POISK_RAH'
      Origin = '"SPR_BANK"."STR_POISK_RAH"'
    end
    object IBSPR_BANKCOL_POISK_RAH: TIntegerField
      FieldName = 'COL_POISK_RAH'
      Origin = '"SPR_BANK"."COL_POISK_RAH"'
    end
  end
  object DSSPR_BANK: TDataSource
    DataSet = IBSPR_BANK
    Left = 664
    Top = 200
  end
  object IBWID: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterScroll = IBWIDAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from WID'
      'where'
      '  WID = :OLD_WID')
    InsertSQL.Strings = (
      'insert into WID'
      
        '  (WID, ID_ORG, NAIM, SNAIM, PAR, FL0, FL, COD, NPP, FL_NONACH, ' +
        'FL_NOOPL, '
      '   FL_VTCH, FL_NOOBOR, FL_GROPL, FL_SUBS, VAL, UPD)'
      'values'
      
        '  (:WID, :ID_ORG, :NAIM, :SNAIM, :PAR, :FL0, :FL, :COD, :NPP, :F' +
        'L_NONACH, '
      
        '   :FL_NOOPL, :FL_VTCH, :FL_NOOBOR, :FL_GROPL, :FL_SUBS, :VAL, :' +
        'UPD)')
    RefreshSQL.Strings = (
      'Select '
      '  WID,'
      '  ID_ORG,'
      '  NAIM,'
      '  SNAIM,'
      '  PAR,'
      '  FL0,'
      '  FL,'
      '  COD,'
      '  NPP,'
      '  FL_NONACH,'
      '  FL_NOOPL,'
      '  FL_VTCH,'
      '  FL_NOOBOR,'
      '  FL_GROPL,'
      '  FL_SUBS,'
      '  VAL,'
      '  UPD'
      'from WID '
      'where'
      '  WID = :WID')
    SelectSQL.Strings = (
      'select *  from WID')
    ModifySQL.Strings = (
      'update WID'
      'set'
      '  WID = :WID,'
      '  ID_ORG = :ID_ORG,'
      '  NAIM = :NAIM,'
      '  SNAIM = :SNAIM,'
      '  PAR = :PAR,'
      '  FL0 = :FL0,'
      '  FL = :FL,'
      '  COD = :COD,'
      '  NPP = :NPP,'
      '  FL_NONACH = :FL_NONACH,'
      '  FL_NOOPL = :FL_NOOPL,'
      '  FL_VTCH = :FL_VTCH,'
      '  FL_NOOBOR = :FL_NOOBOR,'
      '  FL_GROPL = :FL_GROPL,'
      '  FL_SUBS = :FL_SUBS,'
      '  VAL = :VAL,'
      '  UPD = :UPD'
      'where'
      '  WID = :OLD_WID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_USERS_ID'
    Left = 728
    Top = 152
    object IBWIDWID: TIBStringField
      FieldName = 'WID'
      Origin = '"WID"."WID"'
      Size = 2
    end
    object IBWIDID_ORG: TFloatField
      FieldName = 'ID_ORG'
      Origin = '"WID"."ID_ORG"'
    end
    object IBWIDNAIM: TIBStringField
      FieldName = 'NAIM'
      Origin = '"WID"."NAIM"'
      Size = 15
    end
    object IBWIDSNAIM: TIBStringField
      FieldName = 'SNAIM'
      Origin = '"WID"."SNAIM"'
      Size = 8
    end
    object IBWIDPAR: TIBStringField
      FieldName = 'PAR'
      Origin = '"WID"."PAR"'
      Size = 10
    end
    object IBWIDFL0: TIBStringField
      FieldName = 'FL0'
      Origin = '"WID"."FL0"'
      Size = 1
    end
    object IBWIDFL: TIBStringField
      FieldName = 'FL'
      Origin = '"WID"."FL"'
      Size = 1
    end
    object IBWIDCOD: TIBStringField
      FieldName = 'COD'
      Origin = '"WID"."COD"'
      Size = 5
    end
    object IBWIDNPP: TFloatField
      FieldName = 'NPP'
      Origin = '"WID"."NPP"'
    end
    object IBWIDFL_NONACH: TIBStringField
      FieldName = 'FL_NONACH'
      Origin = '"WID"."FL_NONACH"'
      Size = 1
    end
    object IBWIDFL_NOOPL: TIBStringField
      FieldName = 'FL_NOOPL'
      Origin = '"WID"."FL_NOOPL"'
      Size = 1
    end
    object IBWIDFL_VTCH: TIBStringField
      FieldName = 'FL_VTCH'
      Origin = '"WID"."FL_VTCH"'
      Size = 1
    end
    object IBWIDFL_NOOBOR: TIBStringField
      FieldName = 'FL_NOOBOR'
      Origin = '"WID"."FL_NOOBOR"'
      Size = 1
    end
    object IBWIDFL_GROPL: TFloatField
      FieldName = 'FL_GROPL'
      Origin = '"WID"."FL_GROPL"'
    end
    object IBWIDFL_SUBS: TFloatField
      FieldName = 'FL_SUBS'
      Origin = '"WID"."FL_SUBS"'
    end
    object IBWIDVAL: TFloatField
      FieldName = 'VAL'
      Origin = '"WID"."VAL"'
    end
    object IBWIDUPD: TIntegerField
      FieldName = 'UPD'
      Origin = '"WID"."UPD"'
    end
  end
  object DSWID: TDataSource
    DataSet = IBWID
    Left = 728
    Top = 200
  end
  object IBSPR_VIDPOISK: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterScroll = IBSPR_VIDPOISKAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SPR_VIDPOISK'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into SPR_VIDPOISK'
      '  (KL, NAME_VID, VIDPOISK)'
      'values'
      '  (:KL, :NAME_VID, :VIDPOISK)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  NAME_VID,'
      '  VIDPOISK'
      'from SPR_VIDPOISK '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select *  from SPR_VIDPOISK')
    ModifySQL.Strings = (
      'update SPR_VIDPOISK'
      'set'
      '  KL = :KL,'
      '  NAME_VID = :NAME_VID,'
      '  VIDPOISK = :VIDPOISK'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_SPR_VIDPOISK_ID'
    Left = 800
    Top = 152
    object IBSPR_VIDPOISKKL: TIntegerField
      FieldName = 'KL'
      Origin = '"SPR_VIDPOISK"."KL"'
      Required = True
    end
    object IBSPR_VIDPOISKNAME_VID: TIBStringField
      FieldName = 'NAME_VID'
      Origin = '"SPR_VIDPOISK"."NAME_VID"'
      Size = 10
    end
    object IBSPR_VIDPOISKVIDPOISK: TIBStringField
      FieldName = 'VIDPOISK'
      Origin = '"SPR_VIDPOISK"."VIDPOISK"'
      Size = 5
    end
  end
  object DSSPR_VIDPOISK: TDataSource
    DataSet = IBSPR_VIDPOISK
    Left = 800
    Top = 200
  end
  object IBSPR_VIPISKA: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterInsert = IBSPR_VIPISKAAfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SPR_VIPISKA'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into SPR_VIPISKA'
      '  (KL, KL_BANK, WID, VIDPOISK, POISK)'
      'values'
      '  (:KL, :KL_BANK, :WID, :VIDPOISK, :POISK)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  KL_BANK,'
      '  WID,'
      '  VIDPOISK,'
      '  POISK'
      'from SPR_VIPISKA '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select *   from SPR_VIPISKA ')
    ModifySQL.Strings = (
      'update SPR_VIPISKA'
      'set'
      '  KL = :KL,'
      '  KL_BANK = :KL_BANK,'
      '  WID = :WID,'
      '  VIDPOISK = :VIDPOISK,'
      '  POISK = :POISK'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_USERS_ID'
    Left = 880
    Top = 152
    object IBSPR_VIPISKAKL: TIntegerField
      FieldName = 'KL'
      Origin = '"SPR_VIPISKA"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBSPR_VIPISKAKL_BANK: TIntegerField
      FieldName = 'KL_BANK'
      Origin = '"SPR_VIPISKA"."KL_BANK"'
    end
    object IBSPR_VIPISKAWID: TIBStringField
      FieldName = 'WID'
      Origin = '"SPR_VIPISKA"."WID"'
      Size = 2
    end
    object IBSPR_VIPISKAPOISK: TIBStringField
      FieldName = 'POISK'
      Origin = '"SPR_VIPISKA"."POISK"'
      Size = 100
    end
    object IBSPR_VIPISKAVIDPOISK: TIBStringField
      FieldName = 'VIDPOISK'
      Origin = '"SPR_VIPISKA"."VIDPOISK"'
      Size = 5
    end
  end
  object DSSPR_VIPISKA: TDataSource
    DataSet = IBSPR_VIPISKA
    Left = 880
    Top = 200
  end
end