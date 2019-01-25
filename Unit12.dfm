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
    object cxTextEdit1: TcxTextEdit
      Left = 72
      Top = 11
      TabOrder = 0
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
      Left = 337
      Top = 53
      Width = 36
      Height = 13
      Alignment = taCenter
      Caption = #1042#1091#1083#1080#1094#1103
    end
    object Label5: TLabel
      Left = 592
      Top = 53
      Width = 43
      Height = 13
      Alignment = taCenter
      Caption = #1041#1091#1076#1080#1085#1086#1082
    end
    object Label7: TLabel
      Left = 647
      Top = 53
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
    object Label16: TLabel
      Left = 510
      Top = 139
      Width = 140
      Height = 23
      Alignment = taCenter
      Caption = #1055#1086#1090#1086#1095#1085#1080#1081' '#1087#1077#1088#1110#1086#1076
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 656
      Top = 139
      Width = 42
      Height = 23
      Alignment = taCenter
      Caption = #1076#1072#1090#1072
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 241
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
      Left = 337
      Top = 72
      DataBinding.DataField = 'UL'
      DataBinding.DataSource = DSKART
      Properties.ReadOnly = True
      TabOrder = 3
      Width = 249
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
      Left = 592
      Top = 72
      DataBinding.DataField = 'DOM'
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
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 24
      Top = 27
      DataBinding.DataField = 'SCHET'
      DataBinding.DataSource = DSKART
      Properties.ReadOnly = True
      TabOrder = 8
      Width = 201
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 181
      Top = 120
      DataBinding.DataField = 'KOLI_P'
      DataBinding.DataSource = DSKART
      Properties.ReadOnly = True
      TabOrder = 9
      Width = 79
    end
  end
  object IBKART: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from kart'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into kart'
      
        '  (SCHET, NUMB, FIO, IM, OT, FIO_V, IDCOD, CEX, TABN, FIO_TABN, ' +
        'LG_NOFAM, '
      
        '   KOLI_LG, KOLI_P, KOLI_PF, KOLI_K, PLOS_BB, PLOS_OB, PRIV, ETA' +
        'G, LGOTA, '
      
        '   LG_POSV, LG_SER, LG_FIO, LG_DATE, LG_KAT, FL_CHERN, FL_LIFTE,' +
        ' FL_LIFTO, '
      
        '   FL_KLET, FL_MUSO, FL_OSV, FL_UBOR, FL_VENT, FL_ZIMA, FL_REM, ' +
        'FL_DITM, '
      
        '   FL_TUAL, FL_NOLIFT, FL_NOKAN, MAX_UD, NOM, ORG, D_DOG, N_DOG,' +
        ' ZAYA, '
      
        '   RESTR, NOTE, NOTE1, FLAG, WOZW_OT_, TELEF, KL_UL, ULNAIM, NOM' +
        'DOM, NOMKV, '
      '   VAL, KL, UPD)'
      'values'
      
        '  (:SCHET, :NUMB, :FIO, :IM, :OT, :FIO_V, :IDCOD, :CEX, :TABN, :' +
        'FIO_TABN, '
      
        '   :LG_NOFAM, :KOLI_LG, :KOLI_P, :KOLI_PF, :KOLI_K, :PLOS_BB, :P' +
        'LOS_OB, '
      
        '   :PRIV, :ETAG, :LGOTA, :LG_POSV, :LG_SER, :LG_FIO, :LG_DATE, :' +
        'LG_KAT, '
      
        '   :FL_CHERN, :FL_LIFTE, :FL_LIFTO, :FL_KLET, :FL_MUSO, :FL_OSV,' +
        ' :FL_UBOR, '
      
        '   :FL_VENT, :FL_ZIMA, :FL_REM, :FL_DITM, :FL_TUAL, :FL_NOLIFT, ' +
        ':FL_NOKAN, '
      
        '   :MAX_UD, :NOM, :ORG, :D_DOG, :N_DOG, :ZAYA, :RESTR, :NOTE, :N' +
        'OTE1, :FLAG, '
      
        '   :WOZW_OT_, :TELEF, :KL_UL, :ULNAIM, :NOMDOM, :NOMKV, :VAL, :K' +
        'L, :UPD)')
    RefreshSQL.Strings = (
      'Select * '
      'from kart '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select *  from kart where upd=1 order by schet')
    ModifySQL.Strings = (
      'update kart'
      'set'
      '  SCHET = :SCHET,'
      '  NUMB = :NUMB,'
      '  FIO = :FIO,'
      '  IM = :IM,'
      '  OT = :OT,'
      '  FIO_V = :FIO_V,'
      '  IDCOD = :IDCOD,'
      '  CEX = :CEX,'
      '  TABN = :TABN,'
      '  FIO_TABN = :FIO_TABN,'
      '  LG_NOFAM = :LG_NOFAM,'
      '  KOLI_LG = :KOLI_LG,'
      '  KOLI_P = :KOLI_P,'
      '  KOLI_PF = :KOLI_PF,'
      '  KOLI_K = :KOLI_K,'
      '  PLOS_BB = :PLOS_BB,'
      '  PLOS_OB = :PLOS_OB,'
      '  PRIV = :PRIV,'
      '  ETAG = :ETAG,'
      '  LGOTA = :LGOTA,'
      '  LG_POSV = :LG_POSV,'
      '  LG_SER = :LG_SER,'
      '  LG_FIO = :LG_FIO,'
      '  LG_DATE = :LG_DATE,'
      '  LG_KAT = :LG_KAT,'
      '  FL_CHERN = :FL_CHERN,'
      '  FL_LIFTE = :FL_LIFTE,'
      '  FL_LIFTO = :FL_LIFTO,'
      '  FL_KLET = :FL_KLET,'
      '  FL_MUSO = :FL_MUSO,'
      '  FL_OSV = :FL_OSV,'
      '  FL_UBOR = :FL_UBOR,'
      '  FL_VENT = :FL_VENT,'
      '  FL_ZIMA = :FL_ZIMA,'
      '  FL_REM = :FL_REM,'
      '  FL_DITM = :FL_DITM,'
      '  FL_TUAL = :FL_TUAL,'
      '  FL_NOLIFT = :FL_NOLIFT,'
      '  FL_NOKAN = :FL_NOKAN,'
      '  MAX_UD = :MAX_UD,'
      '  NOM = :NOM,'
      '  ORG = :ORG,'
      '  D_DOG = :D_DOG,'
      '  N_DOG = :N_DOG,'
      '  ZAYA = :ZAYA,'
      '  RESTR = :RESTR,'
      '  NOTE = :NOTE,'
      '  NOTE1 = :NOTE1,'
      '  FLAG = :FLAG,'
      '  WOZW_OT_ = :WOZW_OT_,'
      '  TELEF = :TELEF,'
      '  KL_UL = :KL_UL,'
      '  ULNAIM = :ULNAIM,'
      '  NOMDOM = :NOMDOM,'
      '  NOMKV = :NOMKV,'
      '  VAL = :VAL,'
      '  KL = :KL,'
      '  UPD = :UPD'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_KART_ID'
    Left = 368
    Top = 8
    object IBKARTSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"KART"."SCHET"'
      Size = 10
    end
    object IBKARTNUMB: TIBStringField
      FieldName = 'NUMB'
      Origin = '"KART"."NUMB"'
      Size = 8
    end
    object IBKARTFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"KART"."FIO"'
      Size = 45
    end
    object IBKARTIM: TIBStringField
      FieldName = 'IM'
      Origin = '"KART"."IM"'
      Size = 15
    end
    object IBKARTOT: TIBStringField
      FieldName = 'OT'
      Origin = '"KART"."OT"'
      Size = 15
    end
    object IBKARTFIO_V: TIBStringField
      FieldName = 'FIO_V'
      Origin = '"KART"."FIO_V"'
      Size = 35
    end
    object IBKARTIDCOD: TIBStringField
      FieldName = 'IDCOD'
      Origin = '"KART"."IDCOD"'
      Size = 32
    end
    object IBKARTCEX: TIBStringField
      FieldName = 'CEX'
      Origin = '"KART"."CEX"'
      Size = 3
    end
    object IBKARTTABN: TIBStringField
      FieldName = 'TABN'
      Origin = '"KART"."TABN"'
      Size = 5
    end
    object IBKARTFIO_TABN: TIBStringField
      FieldName = 'FIO_TABN'
      Origin = '"KART"."FIO_TABN"'
    end
    object IBKARTLG_NOFAM: TIBStringField
      FieldName = 'LG_NOFAM'
      Origin = '"KART"."LG_NOFAM"'
      Size = 1
    end
    object IBKARTKOLI_LG: TIBStringField
      FieldName = 'KOLI_LG'
      Origin = '"KART"."KOLI_LG"'
      Size = 8
    end
    object IBKARTKOLI_P: TFloatField
      FieldName = 'KOLI_P'
      Origin = '"KART"."KOLI_P"'
    end
    object IBKARTKOLI_PF: TFloatField
      FieldName = 'KOLI_PF'
      Origin = '"KART"."KOLI_PF"'
    end
    object IBKARTKOLI_K: TFloatField
      FieldName = 'KOLI_K'
      Origin = '"KART"."KOLI_K"'
    end
    object IBKARTPLOS_BB: TFloatField
      FieldName = 'PLOS_BB'
      Origin = '"KART"."PLOS_BB"'
    end
    object IBKARTPLOS_OB: TFloatField
      FieldName = 'PLOS_OB'
      Origin = '"KART"."PLOS_OB"'
    end
    object IBKARTPRIV: TIBStringField
      FieldName = 'PRIV'
      Origin = '"KART"."PRIV"'
      Size = 1
    end
    object IBKARTETAG: TFloatField
      FieldName = 'ETAG'
      Origin = '"KART"."ETAG"'
    end
    object IBKARTLGOTA: TIBStringField
      FieldName = 'LGOTA'
      Origin = '"KART"."LGOTA"'
      Size = 9
    end
    object IBKARTLG_POSV: TIBStringField
      FieldName = 'LG_POSV'
      Origin = '"KART"."LG_POSV"'
      Size = 25
    end
    object IBKARTLG_SER: TIBStringField
      FieldName = 'LG_SER'
      Origin = '"KART"."LG_SER"'
      Size = 12
    end
    object IBKARTLG_FIO: TIBStringField
      FieldName = 'LG_FIO'
      Origin = '"KART"."LG_FIO"'
      Size = 45
    end
    object IBKARTLG_DATE: TIBStringField
      FieldName = 'LG_DATE'
      Origin = '"KART"."LG_DATE"'
      Size = 33
    end
    object IBKARTLG_KAT: TIBStringField
      FieldName = 'LG_KAT'
      Origin = '"KART"."LG_KAT"'
      Size = 12
    end
    object IBKARTFL_CHERN: TIBStringField
      FieldName = 'FL_CHERN'
      Origin = '"KART"."FL_CHERN"'
      Size = 1
    end
    object IBKARTFL_LIFTE: TIBStringField
      FieldName = 'FL_LIFTE'
      Origin = '"KART"."FL_LIFTE"'
      Size = 1
    end
    object IBKARTFL_LIFTO: TIBStringField
      FieldName = 'FL_LIFTO'
      Origin = '"KART"."FL_LIFTO"'
      Size = 1
    end
    object IBKARTFL_KLET: TIBStringField
      FieldName = 'FL_KLET'
      Origin = '"KART"."FL_KLET"'
      Size = 1
    end
    object IBKARTFL_MUSO: TIBStringField
      FieldName = 'FL_MUSO'
      Origin = '"KART"."FL_MUSO"'
      Size = 1
    end
    object IBKARTFL_OSV: TIBStringField
      FieldName = 'FL_OSV'
      Origin = '"KART"."FL_OSV"'
      Size = 1
    end
    object IBKARTFL_UBOR: TIBStringField
      FieldName = 'FL_UBOR'
      Origin = '"KART"."FL_UBOR"'
      Size = 1
    end
    object IBKARTFL_VENT: TIBStringField
      FieldName = 'FL_VENT'
      Origin = '"KART"."FL_VENT"'
      Size = 1
    end
    object IBKARTFL_ZIMA: TIBStringField
      FieldName = 'FL_ZIMA'
      Origin = '"KART"."FL_ZIMA"'
      Size = 1
    end
    object IBKARTFL_REM: TIBStringField
      FieldName = 'FL_REM'
      Origin = '"KART"."FL_REM"'
      Size = 1
    end
    object IBKARTFL_DITM: TIBStringField
      FieldName = 'FL_DITM'
      Origin = '"KART"."FL_DITM"'
      Size = 1
    end
    object IBKARTFL_TUAL: TIBStringField
      FieldName = 'FL_TUAL'
      Origin = '"KART"."FL_TUAL"'
      Size = 1
    end
    object IBKARTFL_NOLIFT: TIBStringField
      FieldName = 'FL_NOLIFT'
      Origin = '"KART"."FL_NOLIFT"'
      Size = 1
    end
    object IBKARTFL_NOKAN: TIBStringField
      FieldName = 'FL_NOKAN'
      Origin = '"KART"."FL_NOKAN"'
      Size = 1
    end
    object IBKARTMAX_UD: TFloatField
      FieldName = 'MAX_UD'
      Origin = '"KART"."MAX_UD"'
    end
    object IBKARTNOM: TFloatField
      FieldName = 'NOM'
      Origin = '"KART"."NOM"'
    end
    object IBKARTORG: TFloatField
      FieldName = 'ORG'
      Origin = '"KART"."ORG"'
    end
    object IBKARTD_DOG: TIBStringField
      FieldName = 'D_DOG'
      Origin = '"KART"."D_DOG"'
      Size = 8
    end
    object IBKARTN_DOG: TIBStringField
      FieldName = 'N_DOG'
      Origin = '"KART"."N_DOG"'
    end
    object IBKARTZAYA: TIBStringField
      FieldName = 'ZAYA'
      Origin = '"KART"."ZAYA"'
      Size = 1
    end
    object IBKARTRESTR: TIBStringField
      FieldName = 'RESTR'
      Origin = '"KART"."RESTR"'
      Size = 1
    end
    object IBKARTNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"KART"."NOTE"'
      Size = 64
    end
    object IBKARTNOTE1: TIBStringField
      FieldName = 'NOTE1'
      Origin = '"KART"."NOTE1"'
      Size = 64
    end
    object IBKARTFLAG: TIBStringField
      FieldName = 'FLAG'
      Origin = '"KART"."FLAG"'
      Size = 1
    end
    object IBKARTWOZW_OT_: TFloatField
      FieldName = 'WOZW_OT_'
      Origin = '"KART"."WOZW_OT_"'
    end
    object IBKARTTELEF: TIBStringField
      FieldName = 'TELEF'
      Origin = '"KART"."TELEF"'
    end
    object IBKARTKL_UL: TFloatField
      FieldName = 'KL_UL'
      Origin = '"KART"."KL_UL"'
    end
    object IBKARTULNAIM: TIBStringField
      FieldName = 'ULNAIM'
      Origin = '"KART"."ULNAIM"'
      Size = 64
    end
    object IBKARTNOMDOM: TIBStringField
      FieldName = 'NOMDOM'
      Origin = '"KART"."NOMDOM"'
      Size = 5
    end
    object IBKARTNOMKV: TIBStringField
      FieldName = 'NOMKV'
      Origin = '"KART"."NOMKV"'
      Size = 5
    end
    object IBKARTVAL: TFloatField
      FieldName = 'VAL'
      Origin = '"KART"."VAL"'
    end
    object IBKARTKL: TIntegerField
      FieldName = 'KL'
      Origin = '"KART"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBKARTUPD: TIntegerField
      FieldName = 'UPD'
      Origin = '"KART"."UPD"'
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
      'delete from obor'
      'where'
      '  SCHET = :OLD_SCHET and'
      '  WID = :OLD_WID and'
      '  DOLG = :OLD_DOLG and'
      '  NACH = :OLD_NACH and'
      '  OPL = :OLD_OPL and'
      '  SUBS = :OLD_SUBS and'
      '  UDER = :OLD_UDER and'
      '  SAL = :OLD_SAL')
    InsertSQL.Strings = (
      'insert into obor'
      '  (SCHET, WID, DOLG, NACH, OPL, SUBS, UDER, SAL)'
      'values'
      '  (:SCHET, :WID, :DOLG, :NACH, :OPL, :SUBS, :UDER, :SAL)')
    RefreshSQL.Strings = (
      'Select * '
      'from obor '
      'where'
      '  SCHET = :SCHET and'
      '  WID = :WID and'
      '  DOLG = :DOLG and'
      '  NACH = :NACH and'
      '  OPL = :OPL and'
      '  SUBS = :SUBS and'
      '  UDER = :UDER and'
      '  SAL = :SAL')
    SelectSQL.Strings = (
      'select'
      'obor.schet,'
      'obor.wid, '
      'wid.naim as poslug,'
      'obor.dolg,'
      'obor.nach,'
      'obor.opl,'
      'obor.subs,'
      'obor.uder,'
      'obor.sal'
      ' from obor '
      ' left outer join wid on (obor.wid = wid.wid)'
      'where schet=:sch and period=:dt')
    ModifySQL.Strings = (
      'update obor'
      'set'
      '  SCHET = :SCHET,'
      '  WID = :WID,'
      '  DOLG = :DOLG,'
      '  NACH = :NACH,'
      '  OPL = :OPL,'
      '  SUBS = :SUBS,'
      '  UDER = :UDER,'
      '  SAL = :SAL'
      'where'
      '  SCHET = :OLD_SCHET and'
      '  WID = :OLD_WID and'
      '  DOLG = :OLD_DOLG and'
      '  NACH = :OLD_NACH and'
      '  OPL = :OLD_OPL and'
      '  SUBS = :OLD_SUBS and'
      '  UDER = :OLD_UDER and'
      '  SAL = :OLD_SAL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_PERIOD_ID'
    Active = True
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
    Active = True
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
    RefreshSQL.Strings = (
      'Select'
      '  KL,'
      '  PERIOD,'
      '  SCHET,'
      '  WID,'
      '  N_DOG,'
      '  D_DOG,'
      '  TARIF,'
      '  DOLG,'
      '  NACH,'
      '  SUBS,'
      '  OPL,'
      '  UDER,'
      '  KOMP,'
      '  WZMZ,'
      '  WOZW,'
      '  MOVW,'
      '  PERE,'
      '  SAL,'
      '  BGST,'
      '  PRST,'
      '  BGEND,'
      '  PREND,'
      '  FULLNACH,'
      '  FULLOPL,'
      '  OPLNOTSUBS'
      'from VW_OBOR '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select VW_OBOR.*,wid.naim as poslug  from VW_OBOR'
      ' left outer join wid on (VW_OBOR.wid = wid.wid) '
      'where VW_OBOR.schet=:sch and period <> :dt order by period')
    ModifySQL.Strings = (
      '')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_PERIOD_ID'
    Active = True
    Left = 600
    Top = 8
    object IBKOBORKL: TIntegerField
      FieldName = 'KL'
      Origin = '"VW_OBOR"."KL"'
    end
    object IBKOBORPERIOD: TDateField
      FieldName = 'PERIOD'
      Origin = '"VW_OBOR"."PERIOD"'
    end
    object IBKOBORSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"VW_OBOR"."SCHET"'
      Size = 10
    end
    object IBKOBORWID: TIBStringField
      FieldName = 'WID'
      Origin = '"VW_OBOR"."WID"'
      Size = 2
    end
    object IBKOBORN_DOG: TIBStringField
      FieldName = 'N_DOG'
      Origin = '"VW_OBOR"."N_DOG"'
      Size = 10
    end
    object IBKOBORD_DOG: TIBStringField
      FieldName = 'D_DOG'
      Origin = '"VW_OBOR"."D_DOG"'
      Size = 8
    end
    object IBKOBORTARIF: TFloatField
      FieldName = 'TARIF'
      Origin = '"VW_OBOR"."TARIF"'
    end
    object IBKOBORDOLG: TFloatField
      FieldName = 'DOLG'
      Origin = '"VW_OBOR"."DOLG"'
    end
    object IBKOBORNACH: TFloatField
      FieldName = 'NACH'
      Origin = '"VW_OBOR"."NACH"'
    end
    object IBKOBORSUBS: TFloatField
      FieldName = 'SUBS'
      Origin = '"VW_OBOR"."SUBS"'
    end
    object IBKOBOROPL: TFloatField
      FieldName = 'OPL'
      Origin = '"VW_OBOR"."OPL"'
    end
    object IBKOBORUDER: TFloatField
      FieldName = 'UDER'
      Origin = '"VW_OBOR"."UDER"'
    end
    object IBKOBORKOMP: TFloatField
      FieldName = 'KOMP'
      Origin = '"VW_OBOR"."KOMP"'
    end
    object IBKOBORWZMZ: TFloatField
      FieldName = 'WZMZ'
      Origin = '"VW_OBOR"."WZMZ"'
    end
    object IBKOBORWOZW: TFloatField
      FieldName = 'WOZW'
      Origin = '"VW_OBOR"."WOZW"'
    end
    object IBKOBORMOVW: TFloatField
      FieldName = 'MOVW'
      Origin = '"VW_OBOR"."MOVW"'
    end
    object IBKOBORPERE: TFloatField
      FieldName = 'PERE'
      Origin = '"VW_OBOR"."PERE"'
    end
    object IBKOBORSAL: TFloatField
      FieldName = 'SAL'
      Origin = '"VW_OBOR"."SAL"'
    end
    object IBKOBORBGST: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'BGST'
      Origin = '"VW_OBOR"."BGST"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBKOBORPRST: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PRST'
      Origin = '"VW_OBOR"."PRST"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBKOBORBGEND: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'BGEND'
      Origin = '"VW_OBOR"."BGEND"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBKOBORPREND: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PREND'
      Origin = '"VW_OBOR"."PREND"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBKOBORFULLNACH: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'FULLNACH'
      Origin = '"VW_OBOR"."FULLNACH"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBKOBORFULLOPL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'FULLOPL'
      Origin = '"VW_OBOR"."FULLOPL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBKOBOROPLNOTSUBS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'OPLNOTSUBS'
      Origin = '"VW_OBOR"."OPLNOTSUBS"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBKOBORPOSLUG: TIBStringField
      FieldName = 'POSLUG'
      Origin = '"WID"."NAIM"'
      Size = 15
    end
  end
  object DSKOBOR: TDataSource
    DataSet = IBKOBOR
    Left = 600
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
    Active = True
    Left = 672
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
    Left = 672
    Top = 72
  end
  object IBQuery1: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 536
    Top = 112
  end
end
