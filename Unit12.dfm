object Form12: TForm12
  Left = 0
  Top = 0
  Caption = #1050#1072#1088#1090#1082#1072' '#1072#1073#1086#1085#1077#1085#1090#1072
  ClientHeight = 681
  ClientWidth = 897
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 897
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 14
      Width = 42
      Height = 13
      Alignment = taCenter
      Caption = #1056#1072#1093#1091#1085#1086#1082
    end
    object Label19: TLabel
      Left = 401
      Top = 14
      Width = 322
      Height = 13
      Alignment = taCenter
      Caption = #1050#1085#1086#1087#1082#1080' PageUp '#1090#1072' PageDown - '#1087#1077#1088#1077#1093#1110#1076' '#1085#1072' '#1089#1083#1110#1076#1091#1102#1095#1086#1075#1086' '#1072#1073#1086#1085#1077#1085#1090#1072
    end
    object cxTextEdit1: TcxTextEdit
      Left = 72
      Top = 11
      TabOrder = 0
      OnKeyDown = cxTextEdit1KeyDown
      Width = 201
    end
    object cxButton1: TcxButton
      Left = 279
      Top = 9
      Width = 75
      Height = 25
      Caption = #1055#1086#1096#1091#1082
      TabOrder = 1
      OnClick = cxButton1Click
    end
  end
  object cxDBTextEdit7: TcxDBTextEdit
    Left = 647
    Top = 121
    DataBinding.DataField = 'KV'
    DataBinding.DataSource = DSKART
    Properties.ReadOnly = True
    TabOrder = 1
    Width = 49
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 217
    Width = 897
    Height = 120
    Align = alTop
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSKOBORMES
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1POSLUG: TcxGridDBColumn
        Caption = #1055#1086#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'POSLUG'
      end
      object cxGrid1DBTableView1DOLG: TcxGridDBColumn
        Caption = #1057#1072#1083#1100#1076#1086' '#1085#1072' '#1087#1086#1095#1072#1090#1086#1082
        DataBinding.FieldName = 'DOLG'
      end
      object cxGrid1DBTableView1NACH: TcxGridDBColumn
        Caption = #1053#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103
        DataBinding.FieldName = 'NACH'
      end
      object cxGrid1DBTableView1OPL: TcxGridDBColumn
        Caption = #1054#1087#1083#1072#1090#1072
        DataBinding.FieldName = 'OPL'
      end
      object cxGrid1DBTableView1SUBS: TcxGridDBColumn
        Caption = #1057#1091#1073#1089#1080#1076#1110#1103
        DataBinding.FieldName = 'SUBS'
      end
      object cxGrid1DBTableView1UDER: TcxGridDBColumn
        Caption = #1059#1090#1088#1080#1084#1072#1085#1085#1103
        DataBinding.FieldName = 'UDER'
      end
      object cxGrid1DBTableView1SAL: TcxGridDBColumn
        Caption = #1057#1072#1083#1100#1076#1086' '#1085#1072' '#1082#1110#1085'.'
        DataBinding.FieldName = 'SAL'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 337
    Width = 897
    Height = 111
    Align = alTop
    TabOrder = 3
    object cxGrid2: TcxGrid
      Left = 1
      Top = 14
      Width = 895
      Height = 96
      Align = alClient
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DSKTMPOPL
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 895
      Height = 13
      Align = alTop
      TabOrder = 1
      object Label12: TLabel
        Left = 17
        Top = -1
        Width = 38
        Height = 13
        Alignment = taCenter
        Caption = #1054#1087#1083#1072#1090#1072
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 448
    Width = 897
    Height = 16
    Align = alTop
    TabOrder = 4
    object Label13: TLabel
      Left = 18
      Top = 0
      Width = 160
      Height = 13
      Alignment = taCenter
      Caption = #1054#1073#1086#1088#1086#1090#1082#1072' '#1079#1072' '#1087#1086#1087#1077#1088#1077#1076#1085#1110' '#1087#1077#1088#1110#1086#1076#1080
    end
  end
  object cxGrid4: TcxGrid
    Left = 0
    Top = 464
    Width = 897
    Height = 217
    Align = alClient
    TabOrder = 5
    object cxGridDBTableView3: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSKOBOR
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView3PERIOD: TcxGridDBColumn
        Caption = #1055#1077#1088#1110#1086#1076
        DataBinding.FieldName = 'PERIOD'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGridDBTableView3WID: TcxGridDBColumn
        Caption = #1055#1086#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'POSLUG'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGridDBTableView3DOLG: TcxGridDBColumn
        Caption = #1041#1086#1088#1075' '#1085#1072' '#1087#1086#1095#1072#1090#1086#1082
        DataBinding.FieldName = 'DOLG'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGridDBTableView3NACH: TcxGridDBColumn
        Caption = #1053#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103
        DataBinding.FieldName = 'NACH'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGridDBTableView3OPL: TcxGridDBColumn
        Caption = #1054#1087#1083#1072#1090#1072
        DataBinding.FieldName = 'OPL'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGridDBTableView3SUBS: TcxGridDBColumn
        Caption = #1057#1091#1073#1089#1080#1076#1110#1103
        DataBinding.FieldName = 'SUBS'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGridDBTableView3UDER: TcxGridDBColumn
        Caption = #1059#1090#1088#1080#1084#1072#1085#1085#1103
        DataBinding.FieldName = 'UDER'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGridDBTableView3KOMP: TcxGridDBColumn
        Caption = #1050#1086#1084#1087#1077#1085#1089#1072#1094#1110#1111
        DataBinding.FieldName = 'KOMP'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGridDBTableView3WZMZ: TcxGridDBColumn
        Caption = #1042#1079#1072#1077#1084#1086#1079#1072#1083#1110#1082
        DataBinding.FieldName = 'WZMZ'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGridDBTableView3WOZW: TcxGridDBColumn
        Caption = #1055#1086#1074#1077#1088#1085#1077#1085#1085#1103
        DataBinding.FieldName = 'WOZW'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGridDBTableView3PERE: TcxGridDBColumn
        Caption = #1055#1077#1088#1077#1088#1072#1093#1091#1085#1086#1082
        DataBinding.FieldName = 'PERE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGridDBTableView3SAL: TcxGridDBColumn
        Caption = #1041#1086#1088#1075' '#1085#1072' '#1082#1110#1085#1077#1094#1100
        DataBinding.FieldName = 'SAL'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
    end
    object cxGridLevel3: TcxGridLevel
      GridView = cxGridDBTableView3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 897
    Height = 168
    Align = alTop
    TabOrder = 6
    object Label2: TLabel
      Left = 241
      Top = 8
      Width = 17
      Height = 13
      Alignment = taCenter
      Caption = #1055#1030#1041
    end
    object Label3: TLabel
      Left = 24
      Top = 54
      Width = 52
      Height = 13
      Alignment = taCenter
      Caption = #1030#1076#1077#1085#1090'.'#1082#1086#1076
    end
    object Label6: TLabel
      Left = 84
      Top = 99
      Width = 92
      Height = 13
      Alignment = taCenter
      Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1079#1072#1088#1077#1108#1089#1090'.'
    end
    object Label4: TLabel
      Left = 510
      Top = 7
      Width = 36
      Height = 13
      Alignment = taCenter
      Caption = #1042#1091#1083#1080#1094#1103
    end
    object Label5: TLabel
      Left = 672
      Top = 7
      Width = 43
      Height = 13
      Alignment = taCenter
      Caption = #1041#1091#1076#1080#1085#1086#1082
    end
    object Label7: TLabel
      Left = 727
      Top = 7
      Width = 49
      Height = 13
      Alignment = taCenter
      Caption = #1050#1074#1072#1088#1090#1080#1088#1072
    end
    object Label8: TLabel
      Left = 24
      Top = 99
      Width = 36
      Height = 13
      Alignment = taCenter
      Caption = #1051#1100#1075#1086#1090#1072
    end
    object Label9: TLabel
      Left = 268
      Top = 99
      Width = 83
      Height = 13
      Alignment = taCenter
      Caption = #1055#1083#1086#1097#1072' '#1079#1072#1075#1072#1083#1100#1085#1072
    end
    object Label10: TLabel
      Left = 357
      Top = 99
      Width = 106
      Height = 13
      Alignment = taCenter
      Caption = #1055#1083#1086#1097#1072' '#1086#1087#1072#1083#1102#1074#1072#1083#1100#1085#1072
    end
    object Label11: TLabel
      Left = 15
      Top = 149
      Width = 148
      Height = 13
      Alignment = taCenter
      Caption = #1054#1073#1086#1088#1086#1090#1082#1072' '#1087#1086#1090#1086#1095#1085#1086#1075#1086' '#1087#1077#1088#1110#1086#1076#1091
    end
    object Label15: TLabel
      Left = 24
      Top = 8
      Width = 42
      Height = 13
      Alignment = taCenter
      Caption = #1056#1072#1093#1091#1085#1086#1082
    end
    object Label14: TLabel
      Left = 181
      Top = 99
      Width = 79
      Height = 13
      Alignment = taCenter
      Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1087#1088#1086#1078'.'
    end
    object Label17: TLabel
      Left = 181
      Top = 146
      Width = 40
      Height = 21
      Alignment = taCenter
      Caption = #1076#1072#1090#1072
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 656
      Top = 53
      Width = 100
      Height = 13
      Alignment = taCenter
      Caption = #1054#1073#1086#1088#1086#1090#1082#1072' '#1079#1072' '#1087#1077#1088#1110#1086#1076
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 135
      Top = 26
      DataBinding.DataField = 'FIO'
      DataBinding.DataSource = DSKART
      Properties.ReadOnly = True
      TabOrder = 0
      Width = 289
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 24
      Top = 72
      DataBinding.DataField = 'IDCOD'
      DataBinding.DataSource = DSKART
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 289
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 84
      Top = 118
      DataBinding.DataField = 'KOLI_P'
      DataBinding.DataSource = DSKART
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 79
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 441
      Top = 26
      DataBinding.DataField = 'ULNAIM'
      DataBinding.DataSource = DSKART
      Properties.ReadOnly = True
      TabOrder = 3
      Width = 216
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 24
      Top = 118
      DataBinding.DataField = 'LGOTA'
      DataBinding.DataSource = DSKART
      Properties.ReadOnly = True
      TabOrder = 4
      Width = 52
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 672
      Top = 26
      DataBinding.DataField = 'NOMDOM'
      DataBinding.DataSource = DSKART
      Properties.ReadOnly = True
      TabOrder = 5
      Width = 49
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 268
      Top = 118
      DataBinding.DataField = 'PLOS_OB'
      DataBinding.DataSource = DSKART
      Properties.ReadOnly = True
      TabOrder = 6
      Width = 83
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 357
      Top = 118
      DataBinding.DataField = 'PLOS_BB'
      DataBinding.DataSource = DSKART
      Properties.ReadOnly = True
      TabOrder = 7
      Width = 106
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 181
      Top = 120
      DataBinding.DataField = 'KOLI_PF'
      DataBinding.DataSource = DSKART
      Properties.ReadOnly = True
      TabOrder = 8
      Width = 79
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 561
      Top = 72
      Properties.KeyFieldNames = 'PERIOD'
      Properties.ListColumns = <
        item
          FieldName = 'PERIOD'
        end>
      TabOrder = 9
      Width = 135
    end
    object cxLookupComboBox2: TcxLookupComboBox
      Left = 715
      Top = 72
      Properties.KeyFieldNames = 'PERIOD'
      Properties.ListColumns = <
        item
          FieldName = 'PERIOD'
        end>
      TabOrder = 10
      Width = 135
    end
    object cxDBTextEdit12: TcxDBTextEdit
      Left = 727
      Top = 26
      DataBinding.DataField = 'NOMKV'
      DataBinding.DataSource = DSKART
      Properties.ReadOnly = True
      TabOrder = 11
      Width = 49
    end
    object cxButton2: TcxButton
      Left = 672
      Top = 99
      Width = 75
      Height = 25
      Caption = #1044#1088#1091#1082
      TabOrder = 12
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 15
      Top = 27
      DataBinding.DataField = 'SCHET'
      DataBinding.DataSource = DSKART
      Properties.ReadOnly = True
      TabOrder = 13
      Width = 114
    end
  end
  object IBKART: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    InsertSQL.Strings = (
      '')
    RefreshSQL.Strings = (
      'Select * '
      'from vw_kart '
      'where'
      '  SCHET = :SCHET')
    SelectSQL.Strings = (
      'select *  from vw_kart')
    ModifySQL.Strings = (
      '')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_KART_ID'
    Left = 368
    Top = 8
    object IBKARTSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"VW_KART"."SCHET"'
      Size = 10
    end
    object IBKARTFIO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FIO'
      Origin = '"VW_KART"."FIO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 77
    end
    object IBKARTIDCOD: TIBStringField
      FieldName = 'IDCOD'
      Origin = '"VW_KART"."IDCOD"'
      Size = 32
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
  end
  object DSKART: TDataSource
    DataSet = IBKART
    Left = 368
    Top = 56
  end
  object IBKOBORMES: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      '')
    InsertSQL.Strings = (
      '')
    RefreshSQL.Strings = (
      'Select * '
      'from vw_obkr '
      'where'
      '  SCHET = :SCHET')
    SelectSQL.Strings = (
      'select'
      'schet,'
      'wid, '
      'poslug,'
      'dolg,'
      'nach,'
      'opl,'
      'subs,'
      'uder,'
      'sal'
      ' from vw_obkr '
      'where schet=:sch and period=:dt')
    ModifySQL.Strings = (
      '')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_PERIOD_ID'
    Left = 424
    Top = 8
    object IBKOBORMESSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"OBOR"."SCHET"'
      Size = 10
    end
    object IBKOBORMESWID: TIBStringField
      FieldName = 'WID'
      Origin = '"OBOR"."WID"'
      Size = 2
    end
    object IBKOBORMESPOSLUG: TIBStringField
      FieldName = 'POSLUG'
      Origin = '"WID"."NAIM"'
      Size = 15
    end
    object IBKOBORMESDOLG: TFloatField
      FieldName = 'DOLG'
      Origin = '"OBOR"."DOLG"'
    end
    object IBKOBORMESNACH: TFloatField
      FieldName = 'NACH'
      Origin = '"OBOR"."NACH"'
    end
    object IBKOBORMESOPL: TFloatField
      FieldName = 'OPL'
      Origin = '"OBOR"."OPL"'
    end
    object IBKOBORMESSUBS: TFloatField
      FieldName = 'SUBS'
      Origin = '"OBOR"."SUBS"'
    end
    object IBKOBORMESUDER: TFloatField
      FieldName = 'UDER'
      Origin = '"OBOR"."UDER"'
    end
    object IBKOBORMESSAL: TFloatField
      FieldName = 'SAL'
      Origin = '"OBOR"."SAL"'
    end
  end
  object DSKOBORMES: TDataSource
    DataSet = IBKOBORMES
    Left = 424
    Top = 56
  end
  object IBKTMPOPL: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from opl'
      'where'
      '  SCHET = :OLD_SCHET and'
      '  OPL = :OLD_OPL and'
      '  DT = :OLD_DT and'
      '  UPD = :OLD_UPD')
    InsertSQL.Strings = (
      'insert into opl'
      '  (SCHET, OPL, DT, UPD)'
      'values'
      '  (:SCHET, :OPL, :DT, :UPD)')
    RefreshSQL.Strings = (
      'Select * '
      'from opl '
      'where'
      '  SCHET = :SCHET and'
      '  OPL = :OPL and'
      '  DT = :DT and'
      '  UPD = :UPD')
    SelectSQL.Strings = (
      
        'select * from opl where upd=1 and EXTRACT(MONTH FROM opl.dt) = :' +
        'mes and EXTRACT(YEAR FROM opl.dt) = :year and OPL.schet =:sch or' +
        'der by dt')
    ModifySQL.Strings = (
      'update opl'
      'set'
      '  SCHET = :SCHET,'
      '  OPL = :OPL,'
      '  DT = :DT,'
      '  UPD = :UPD'
      'where'
      '  SCHET = :OLD_SCHET and'
      '  OPL = :OLD_OPL and'
      '  DT = :OLD_DT and'
      '  UPD = :OLD_UPD')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_PERIOD_ID'
    Left = 496
    Top = 8
  end
  object DSKTMPOPL: TDataSource
    DataSet = IBKTMPOPL
    Left = 496
    Top = 56
  end
  object IBKOBOR: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    InsertSQL.Strings = (
      '')
    RefreshSQL.Strings = (
      'Select * '
      'from vw_obkr '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select * from vw_obkr'
      'where schet=:sch and period <> :dt order by period desc')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_PERIOD_ID'
    Left = 552
    Top = 8
    object IBKOBORKL: TIntegerField
      FieldName = 'KL'
      Origin = '"VW_OBKR"."KL"'
    end
    object IBKOBORPERIOD: TDateField
      FieldName = 'PERIOD'
      Origin = '"VW_OBKR"."PERIOD"'
    end
    object IBKOBORSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"VW_OBKR"."SCHET"'
      Size = 10
    end
    object IBKOBORWID: TIBStringField
      FieldName = 'WID'
      Origin = '"VW_OBKR"."WID"'
      Size = 2
    end
    object IBKOBORPOSLUG: TIBStringField
      FieldName = 'POSLUG'
      Origin = '"VW_OBKR"."POSLUG"'
      Size = 15
    end
    object IBKOBORFIO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FIO'
      Origin = '"VW_OBKR"."FIO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 77
    end
    object IBKOBORULNAIM: TIBStringField
      FieldName = 'ULNAIM'
      Origin = '"VW_OBKR"."ULNAIM"'
      Size = 64
    end
    object IBKOBORNOMDOM: TIBStringField
      FieldName = 'NOMDOM'
      Origin = '"VW_OBKR"."NOMDOM"'
      Size = 5
    end
    object IBKOBORNOMKV: TIBStringField
      FieldName = 'NOMKV'
      Origin = '"VW_OBKR"."NOMKV"'
      Size = 5
    end
    object IBKOBORORG: TFloatField
      FieldName = 'ORG'
      Origin = '"VW_OBKR"."ORG"'
    end
    object IBKOBORIDCOD: TIBStringField
      FieldName = 'IDCOD'
      Origin = '"VW_OBKR"."IDCOD"'
      Size = 32
    end
    object IBKOBORKOLI_P: TFloatField
      FieldName = 'KOLI_P'
      Origin = '"VW_OBKR"."KOLI_P"'
    end
    object IBKOBORKOLI_PF: TFloatField
      FieldName = 'KOLI_PF'
      Origin = '"VW_OBKR"."KOLI_PF"'
    end
    object IBKOBORLGOTA: TIBStringField
      FieldName = 'LGOTA'
      Origin = '"VW_OBKR"."LGOTA"'
      Size = 9
    end
    object IBKOBORN_DOG: TIBStringField
      FieldName = 'N_DOG'
      Origin = '"VW_OBKR"."N_DOG"'
      Size = 10
    end
    object IBKOBORD_DOG: TIBStringField
      FieldName = 'D_DOG'
      Origin = '"VW_OBKR"."D_DOG"'
      Size = 8
    end
    object IBKOBORTARIF: TFloatField
      FieldName = 'TARIF'
      Origin = '"VW_OBKR"."TARIF"'
    end
    object IBKOBORDOLG: TFloatField
      FieldName = 'DOLG'
      Origin = '"VW_OBKR"."DOLG"'
    end
    object IBKOBORNACH: TFloatField
      FieldName = 'NACH'
      Origin = '"VW_OBKR"."NACH"'
    end
    object IBKOBORSUBS: TFloatField
      FieldName = 'SUBS'
      Origin = '"VW_OBKR"."SUBS"'
    end
    object IBKOBOROPL: TFloatField
      FieldName = 'OPL'
      Origin = '"VW_OBKR"."OPL"'
    end
    object IBKOBORUDER: TFloatField
      FieldName = 'UDER'
      Origin = '"VW_OBKR"."UDER"'
    end
    object IBKOBORKOMP: TFloatField
      FieldName = 'KOMP'
      Origin = '"VW_OBKR"."KOMP"'
    end
    object IBKOBORWZMZ: TFloatField
      FieldName = 'WZMZ'
      Origin = '"VW_OBKR"."WZMZ"'
    end
    object IBKOBORWOZW: TFloatField
      FieldName = 'WOZW'
      Origin = '"VW_OBKR"."WOZW"'
    end
    object IBKOBORMOVW: TFloatField
      FieldName = 'MOVW'
      Origin = '"VW_OBKR"."MOVW"'
    end
    object IBKOBORPERE: TFloatField
      FieldName = 'PERE'
      Origin = '"VW_OBKR"."PERE"'
    end
    object IBKOBORSAL: TFloatField
      FieldName = 'SAL'
      Origin = '"VW_OBKR"."SAL"'
    end
    object IBKOBORBGST: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'BGST'
      Origin = '"VW_OBKR"."BGST"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBKOBORPRST: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PRST'
      Origin = '"VW_OBKR"."PRST"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBKOBORBGEND: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'BGEND'
      Origin = '"VW_OBKR"."BGEND"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBKOBORPREND: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PREND'
      Origin = '"VW_OBKR"."PREND"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBKOBORFULLNACH: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'FULLNACH'
      Origin = '"VW_OBKR"."FULLNACH"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBKOBORFULLOPL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'FULLOPL'
      Origin = '"VW_OBKR"."FULLOPL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBKOBOROPLNOTSUBS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'OPLNOTSUBS'
      Origin = '"VW_OBKR"."OPLNOTSUBS"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSKOBOR: TDataSource
    DataSet = IBKOBOR
    Left = 544
    Top = 56
  end
  object IBPER: TIBDataSet
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
      'select *  from PERIOD order by PERIOD desc')
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
    Left = 592
    Top = 8
    object IBPERKL: TIntegerField
      FieldName = 'KL'
      Origin = '"PERIOD"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBPERPERIOD: TDateField
      FieldName = 'PERIOD'
      Origin = '"PERIOD"."PERIOD"'
    end
    object IBPERAKTIV: TIntegerField
      FieldName = 'AKTIV'
      Origin = '"PERIOD"."AKTIV"'
    end
  end
  object DSPER: TDataSource
    DataSet = IBPER
    Left = 592
    Top = 56
  end
  object IBQuery1: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 536
    Top = 112
  end
end
