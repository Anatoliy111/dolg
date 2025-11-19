object Form6: TForm6
  Left = 0
  Top = 0
  Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088
  ClientHeight = 495
  ClientWidth = 719
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
    Width = 719
    Height = 161
    Align = alTop
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 10
      Top = 122
      Width = 240
      Height = 25
      DataSource = Form1.DSUSER
      TabOrder = 0
    end
    object cxButton3: TcxButton
      Left = 514
      Top = 18
      Width = 173
      Height = 25
      Caption = #1044#1080#1079#1072#1081#1085#1077#1088
      TabOrder = 1
      OnClick = cxButton3Click
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 32
      Top = 32
      DataBinding.DataField = 'SMSLOGIN'
      DataBinding.DataSource = Form1.DSSERVICES
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 176
      Top = 32
      DataBinding.DataField = 'SMSPW'
      DataBinding.DataSource = Form1.DSSERVICES
      TabOrder = 3
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 56
      Top = 9
      Caption = #1051#1086#1075#1110#1085' SMS'
    end
    object cxLabel2: TcxLabel
      Left = 200
      Top = 9
      Caption = #1055#1072#1088#1086#1083#1100' SMS'
    end
    object cxLabel3: TcxLabel
      Left = 56
      Top = 65
      Caption = #1040#1083#1100#1092#1072' '#1110#1084#39#1103
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 32
      Top = 88
      DataBinding.DataField = 'SMSALPHA'
      DataBinding.DataSource = Form1.DSSERVICES
      TabOrder = 7
      Width = 121
    end
    object cxLabel4: TcxLabel
      Left = 200
      Top = 65
      Caption = #1062#1110#1085#1072' '#1089#1084#1089' '
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 176
      Top = 88
      DataBinding.DataField = 'SMSCENA'
      DataBinding.DataSource = Form1.DSSERVICES
      TabOrder = 9
      Width = 121
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 161
    Width = 337
    Height = 334
    Align = alLeft
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = Form1.DSUSER
      DataController.DetailKeyFieldNames = 'KL'
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting, dcoGroupsAlwaysExpanded, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellEndEllipsis = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.Indicator = True
      Preview.AutoHeight = False
      object cxGrid1DBTableView1KL: TcxGridDBColumn
        DataBinding.FieldName = 'KL'
        Width = 59
      end
      object cxGrid1DBTableView1FIO: TcxGridDBColumn
        DataBinding.FieldName = 'FIO'
        Width = 233
      end
      object cxGrid1DBTableView1PW: TcxGridDBColumn
        DataBinding.FieldName = 'PW'
        Width = 179
      end
      object cxGrid1DBTableView1SMS: TcxGridDBColumn
        DataBinding.FieldName = 'SMS'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGrid2: TcxGrid
    Left = 337
    Top = 161
    Width = 374
    Height = 334
    Align = alLeft
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = Form1.DSTMPWID
      DataController.DetailKeyFieldNames = 'KL'
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting, dcoGroupsAlwaysExpanded, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellEndEllipsis = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.Indicator = True
      Preview.AutoHeight = False
      object cxGridDBTableView1KL: TcxGridDBColumn
        DataBinding.FieldName = 'KL'
      end
      object cxGridDBTableView1WID: TcxGridDBColumn
        DataBinding.FieldName = 'WID'
      end
      object cxGridDBTableView1NAIM: TcxGridDBColumn
        DataBinding.FieldName = 'NAIM'
      end
      object cxGridDBTableView1SNAIM: TcxGridDBColumn
        DataBinding.FieldName = 'SNAIM'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 319
    Top = 18
    Width = 114
    Height = 25
    Caption = 'ExpTel'
    TabOrder = 3
    OnClick = cxButton1Click
  end
  object OpenDialog1: TOpenDialog
    Filter = #1060#1072#1081#1083#1099' DBF|*.dbf'
    Left = 456
    Top = 16
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 544
    Top = 88
  end
  object frxReport1: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43480.378313912030000000
    ReportOptions.LastChange = 43480.378313912030000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 608
    Top = 96
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object IBKART: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      '')
    RefreshSQL.Strings = (
      'Select vw_kart.*'
      'from kart '
      'inner join vw_kart on (kart.kl=vw_kart.kl)'
      'where'
      '  kart.KL = :KL')
    SelectSQL.Strings = (
      'select *  from vw_kart')
    ModifySQL.Strings = (
      'update kart'
      'set'
      '  TELEF = :TELEF,'
      '  TELEF2 = :TELEF2,'
      '  NOTETEL = :NOTETEL, '
      '  NOTETEL2 = :NOTETEL2'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_KART_ID'
    Left = 376
    Top = 64
    object IBKARTKL: TIntegerField
      FieldName = 'KL'
    end
    object IBKARTKONTROL: TIBStringField
      FieldName = 'KONTROL'
      Size = 40
    end
    object IBKARTSCHET: TIBStringField
      FieldName = 'SCHET'
      Size = 10
    end
    object IBKARTFIO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FIO'
      ReadOnly = True
      Size = 77
    end
    object IBKARTIDCOD: TIBStringField
      FieldName = 'IDCOD'
      Origin = '"VW_KART"."IDCOD"'
      Size = 32
    end
    object IBKARTORGAN: TIBStringField
      FieldName = 'ORGAN'
      Origin = '"VW_KART"."ORGAN"'
      Size = 55
    end
    object IBKARTLG_NOFAM: TIBStringField
      FieldName = 'LG_NOFAM'
      Origin = '"VW_KART"."LG_NOFAM"'
      Size = 1
    end
    object IBKARTKOLI_LG: TIBStringField
      FieldName = 'KOLI_LG'
      Origin = '"VW_KART"."KOLI_LG"'
      Size = 8
    end
    object IBKARTKOLI_P: TFloatField
      FieldName = 'KOLI_P'
      Origin = '"VW_KART"."KOLI_P"'
    end
    object IBKARTKOLI_PF: TFloatField
      FieldName = 'KOLI_PF'
      Origin = '"VW_KART"."KOLI_PF"'
    end
    object IBKARTKOLI_K: TFloatField
      FieldName = 'KOLI_K'
      Origin = '"VW_KART"."KOLI_K"'
    end
    object IBKARTPLOS_BB: TFloatField
      FieldName = 'PLOS_BB'
      Origin = '"VW_KART"."PLOS_BB"'
    end
    object IBKARTPLOS_OB: TFloatField
      FieldName = 'PLOS_OB'
      Origin = '"VW_KART"."PLOS_OB"'
    end
    object IBKARTPRIV: TIBStringField
      FieldName = 'PRIV'
      Origin = '"VW_KART"."PRIV"'
      Size = 1
    end
    object IBKARTETAG: TFloatField
      FieldName = 'ETAG'
      Origin = '"VW_KART"."ETAG"'
    end
    object IBKARTLGOTA: TIBStringField
      FieldName = 'LGOTA'
      Origin = '"VW_KART"."LGOTA"'
      Size = 9
    end
    object IBKARTLG_POSV: TIBStringField
      FieldName = 'LG_POSV'
      Origin = '"VW_KART"."LG_POSV"'
      Size = 25
    end
    object IBKARTLG_SER: TIBStringField
      FieldName = 'LG_SER'
      Origin = '"VW_KART"."LG_SER"'
      Size = 12
    end
    object IBKARTLG_FIO: TIBStringField
      FieldName = 'LG_FIO'
      Origin = '"VW_KART"."LG_FIO"'
      Size = 45
    end
    object IBKARTLG_DATE: TIBStringField
      FieldName = 'LG_DATE'
      Origin = '"VW_KART"."LG_DATE"'
      Size = 33
    end
    object IBKARTLG_KAT: TIBStringField
      FieldName = 'LG_KAT'
      Origin = '"VW_KART"."LG_KAT"'
      Size = 12
    end
    object IBKARTFL_NOLIFT: TIBStringField
      FieldName = 'FL_NOLIFT'
      Origin = '"VW_KART"."FL_NOLIFT"'
      Size = 1
    end
    object IBKARTORG: TFloatField
      FieldName = 'ORG'
      Origin = '"VW_KART"."ORG"'
    end
    object IBKARTFLAG: TIBStringField
      FieldName = 'FLAG'
      Origin = '"VW_KART"."FLAG"'
      Size = 1
    end
    object IBKARTTELEF: TIBStringField
      FieldName = 'TELEF'
      Origin = '"VW_KART"."TELEF"'
      Size = 10
    end
    object IBKARTKL_UL: TFloatField
      FieldName = 'KL_UL'
      Origin = '"VW_KART"."KL_UL"'
    end
    object IBKARTULNAIM: TIBStringField
      FieldName = 'ULNAIM'
      Origin = '"VW_KART"."ULNAIM"'
      Size = 64
    end
    object IBKARTNOMDOM: TIBStringField
      FieldName = 'NOMDOM'
      Origin = '"VW_KART"."NOMDOM"'
      Size = 5
    end
    object IBKARTNOMKV: TIBStringField
      FieldName = 'NOMKV'
      Origin = '"VW_KART"."NOMKV"'
      Size = 5
    end
    object IBKARTLIFT: TFloatField
      FieldName = 'LIFT'
      Origin = '"VW_KART"."LIFT"'
    end
    object IBKARTTELEF2: TIBStringField
      FieldName = 'TELEF2'
      Origin = '"VW_KART"."TELEF2"'
      Size = 10
    end
    object IBKARTNOTETEL: TIBStringField
      DisplayWidth = 20
      FieldName = 'NOTETEL'
      Origin = '"VW_KART"."NOTETEL"'
      Size = 25
    end
    object IBKARTNOTETEL2: TIBStringField
      DisplayWidth = 20
      FieldName = 'NOTETEL2'
      Origin = '"VW_KART"."NOTETEL2"'
      Size = 25
    end
  end
  object DSKART: TDataSource
    DataSet = IBKART
    Left = 376
    Top = 112
  end
end
