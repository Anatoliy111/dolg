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
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1WID: TcxGridDBColumn
        Caption = #1055#1086#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'POSLUG'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGrid1DBTableView1DOLG: TcxGridDBColumn
        Caption = #1041#1086#1088#1075' '#1085#1072' '#1087#1086#1095#1072#1090#1086#1082
        DataBinding.FieldName = 'DOLG'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
      end
      object cxGrid1DBTableView1NACH1: TcxGridDBColumn
        Caption = #1053#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103
        DataBinding.FieldName = 'NACH1'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
      end
      object cxGrid1DBTableView1OPL: TcxGridDBColumn
        Caption = #1054#1087#1083#1072#1090#1072
        DataBinding.FieldName = 'OPL'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
      end
      object cxGrid1DBTableView1SUBS: TcxGridDBColumn
        Caption = #1057#1091#1073#1089#1080#1076#1110#1103
        DataBinding.FieldName = 'SUBS'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
      end
      object cxGrid1DBTableView1UDER: TcxGridDBColumn
        Caption = #1059#1090#1088#1080#1084#1072#1085#1085#1103
        DataBinding.FieldName = 'UDER'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
      end
      object cxGrid1DBTableView1ENDDOLG: TcxGridDBColumn
        Caption = #1041#1086#1088#1075' '#1085#1072' '#1082#1110#1085#1077#1094#1100
        DataBinding.FieldName = 'ENDDOLG'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
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
      
        '  (DOM, FIO, IDCOD, KL, KOLI_P, KV, LGOTA, PLOS_BB, PLOS_OB, PRI' +
        'VAT, SCHET, '
      '   UL, VAL, WID)'
      'values'
      
        '  (:DOM, :FIO, :IDCOD, :KL, :KOLI_P, :KV, :LGOTA, :PLOS_BB, :PLO' +
        'S_OB, :PRIVAT, '
      '   :SCHET, :UL, :VAL, :WID)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  SCHET,'
      '  WID,'
      '  FIO,'
      '  IDCOD,'
      '  UL,'
      '  DOM,'
      '  KV,'
      '  LGOTA,'
      '  KOLI_P,'
      '  PLOS_OB,'
      '  PLOS_BB,'
      '  PRIVAT,'
      '  VAL'
      'from kart '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select *  from kart')
    ModifySQL.Strings = (
      'update kart'
      'set'
      '  DOM = :DOM,'
      '  FIO = :FIO,'
      '  IDCOD = :IDCOD,'
      '  KL = :KL,'
      '  KOLI_P = :KOLI_P,'
      '  KV = :KV,'
      '  LGOTA = :LGOTA,'
      '  PLOS_BB = :PLOS_BB,'
      '  PLOS_OB = :PLOS_OB,'
      '  PRIVAT = :PRIVAT,'
      '  SCHET = :SCHET,'
      '  UL = :UL,'
      '  VAL = :VAL,'
      '  WID = :WID'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_KART_ID'
    Active = True
    Left = 376
    Top = 8
    object IBKARTKL: TIntegerField
      FieldName = 'KL'
      Origin = '"KART"."KL"'
      Required = True
    end
    object IBKARTSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"KART"."SCHET"'
      Size = 10
    end
    object IBKARTWID: TIBStringField
      FieldName = 'WID'
      Origin = '"KART"."WID"'
      Size = 10
    end
    object IBKARTFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"KART"."FIO"'
      Size = 70
    end
    object IBKARTIDCOD: TIBStringField
      FieldName = 'IDCOD'
      Origin = '"KART"."IDCOD"'
      Size = 40
    end
    object IBKARTUL: TIBStringField
      FieldName = 'UL'
      Origin = '"KART"."UL"'
      Size = 70
    end
    object IBKARTDOM: TIBStringField
      FieldName = 'DOM'
      Origin = '"KART"."DOM"'
      Size = 10
    end
    object IBKARTKV: TIBStringField
      FieldName = 'KV'
      Origin = '"KART"."KV"'
      Size = 10
    end
    object IBKARTLGOTA: TIBStringField
      FieldName = 'LGOTA'
      Origin = '"KART"."LGOTA"'
      Size = 10
    end
    object IBKARTKOLI_P: TIntegerField
      FieldName = 'KOLI_P'
      Origin = '"KART"."KOLI_P"'
    end
    object IBKARTPLOS_OB: TIBBCDField
      FieldName = 'PLOS_OB'
      Origin = '"KART"."PLOS_OB"'
      Precision = 9
      Size = 2
    end
    object IBKARTPLOS_BB: TIBBCDField
      FieldName = 'PLOS_BB'
      Origin = '"KART"."PLOS_BB"'
      Precision = 9
      Size = 2
    end
    object IBKARTPRIVAT: TIBStringField
      FieldName = 'PRIVAT'
      Origin = '"KART"."PRIVAT"'
      Size = 10
    end
    object IBKARTVAL: TIntegerField
      FieldName = 'VAL'
      Origin = '"KART"."VAL"'
    end
    object IBKARTKOLI_PF: TIntegerField
      FieldName = 'KOLI_PF'
      Origin = '"KART"."KOLI_PF"'
    end
  end
  object DSKART: TDataSource
    DataSet = IBKART
    Left = 376
    Top = 56
  end
  object IBKOBORMES: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from obormes'
      'where'
      '  SCHET = :OLD_SCHET and'
      '  WID = :OLD_WID')
    InsertSQL.Strings = (
      'insert into obormes'
      '  (SCHET, WID)'
      'values'
      '  (:SCHET, :WID)')
    RefreshSQL.Strings = (
      'Select '
      '  SCHET,'
      '  WID'
      'from obormes '
      'where'
      '  SCHET = :SCHET and'
      '  WID = :WID')
    SelectSQL.Strings = (
      'select'
      'obormes.schet,'
      'obormes.wid, '
      'wid.naim as poslug,'
      'obormes.dolg as dolg,'
      'obormes.nach as nach1,'
      'obormes.opl,'
      'obormes.subs,'
      'obormes.uder,'
      'obormes.sal as enddolg'
      ' from obormes '
      ' left outer join wid on (obormes .wid = wid.wid)'
      'where schet=:sch')
    ModifySQL.Strings = (
      'update obormes'
      'set'
      '  SCHET = :SCHET,'
      '  WID = :WID'
      'where'
      '  SCHET = :OLD_SCHET and'
      '  WID = :OLD_WID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_PERIOD_ID'
    Active = True
    Left = 424
    Top = 8
    object IBKOBORMESSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"OBORMES"."SCHET"'
      Size = 10
    end
    object IBKOBORMESWID: TIBStringField
      FieldName = 'WID'
      Origin = '"OBORMES"."WID"'
      Size = 10
    end
    object IBKOBORMESPOSLUG: TIBStringField
      FieldName = 'POSLUG'
      Origin = '"TMPWID"."NAIM"'
    end
    object IBKOBORMESDOLG: TIBBCDField
      FieldName = 'DOLG'
      Origin = '"OBORMES"."DOLG"'
      Precision = 18
      Size = 2
    end
    object IBKOBORMESNACH1: TIBBCDField
      FieldName = 'NACH1'
      Origin = '"OBORMES"."NACH"'
      Precision = 18
      Size = 2
    end
    object IBKOBORMESOPL: TIBBCDField
      FieldName = 'OPL'
      Origin = '"OBORMES"."OPL"'
      Precision = 18
      Size = 2
    end
    object IBKOBORMESSUBS: TIBBCDField
      FieldName = 'SUBS'
      Origin = '"OBORMES"."SUBS"'
      Precision = 18
      Size = 2
    end
    object IBKOBORMESUDER: TIBBCDField
      FieldName = 'UDER'
      Origin = '"OBORMES"."UDER"'
      Precision = 18
      Size = 2
    end
    object IBKOBORMESENDDOLG: TIBBCDField
      FieldName = 'ENDDOLG'
      Origin = '"OBORMES"."SAL"'
      Precision = 18
      Size = 2
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
      'delete from TMPOPL'
      'where'
      '  DT = :OLD_DT and'
      '  KL = :OLD_KL and'
      '  SCHET = :OLD_SCHET and'
      '  SUMM = :OLD_SUMM and'
      '  WID = :OLD_WID')
    InsertSQL.Strings = (
      'insert into TMPOPL'
      '  (DT, KL, SCHET, SUMM, WID)'
      'values'
      '  (:DT, :KL, :SCHET, :SUMM, :WID)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  SCHET,'
      '  DT,'
      '  WID,'
      '  SUMM'
      'from TMPOPL '
      'where'
      '  DT = :DT and'
      '  KL = :KL and'
      '  SCHET = :SCHET and'
      '  SUMM = :SUMM and'
      '  WID = :WID')
    SelectSQL.Strings = (
      'select TMPOPL.*  from  TMPOPL'
      ' where TMPOPL.schet =:sch order by dt')
    ModifySQL.Strings = (
      'update TMPOPL'
      'set'
      '  DT = :DT,'
      '  KL = :KL,'
      '  SCHET = :SCHET,'
      '  SUMM = :SUMM,'
      '  WID = :WID'
      'where'
      '  DT = :OLD_DT and'
      '  KL = :OLD_KL and'
      '  SCHET = :OLD_SCHET and'
      '  SUMM = :OLD_SUMM and'
      '  WID = :OLD_WID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_PERIOD_ID'
    Active = True
    Left = 472
    Top = 8
  end
  object DSKTMPOPL: TDataSource
    DataSet = IBKTMPOPL
    Left = 472
    Top = 56
  end
  object IBKTMPUDER: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TMPUDER'
      'where'
      '  KL = :OLD_KL and'
      '  SCHET = :OLD_SCHET and'
      '  SUMM = :OLD_SUMM and'
      '  WID = :OLD_WID')
    InsertSQL.Strings = (
      'insert into TMPUDER'
      '  (KL, SCHET, SUMM, WID)'
      'values'
      '  (:KL, :SCHET, :SUMM, :WID)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  SCHET,'
      '  WID,'
      '  SUMM'
      'from TMPUDER '
      'where'
      '  KL = :KL and'
      '  SCHET = :SCHET and'
      '  SUMM = :SUMM and'
      '  WID = :WID')
    SelectSQL.Strings = (
      'select TMPUDER.*,wid.naim as poslug  from TMPUDER'
      ' left join wid on (TMPUDER.wid = wid.wid) '
      'where TMPUDER.schet =:sch')
    ModifySQL.Strings = (
      'update TMPUDER'
      'set'
      '  KL = :KL,'
      '  SCHET = :SCHET,'
      '  SUMM = :SUMM,'
      '  WID = :WID'
      'where'
      '  KL = :OLD_KL and'
      '  SCHET = :OLD_SCHET and'
      '  SUMM = :OLD_SUMM and'
      '  WID = :OLD_WID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_PERIOD_ID'
    Active = True
    Left = 544
    object IBKTMPUDERKL: TIntegerField
      FieldName = 'KL'
      Origin = '"TMPUDER"."KL"'
      Required = True
    end
    object IBKTMPUDERSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"TMPUDER"."SCHET"'
      Size = 10
    end
    object IBKTMPUDERWID: TIBStringField
      FieldName = 'WID'
      Origin = '"TMPUDER"."WID"'
      Size = 10
    end
    object IBKTMPUDERSUMM: TIBBCDField
      FieldName = 'SUMM'
      Origin = '"TMPUDER"."SUMM"'
      Precision = 18
      Size = 2
    end
    object IBKTMPUDERPOSLUG: TIBStringField
      FieldName = 'POSLUG'
      Origin = '"TMPWID"."NAIM"'
    end
  end
  object DSKTMPUDER: TDataSource
    DataSet = IBKTMPUDER
    Left = 544
    Top = 56
  end
  object IBKOBOR: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from VW_OBOR'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into VW_OBOR'
      
        '  (KL, PERIOD, SCHET, WID, N_DOG, D_DOG, TARIF, DOLG, NACH, SUBS' +
        ', OPL, '
      '   UDER, KOMP, WZMZ, WOZW, MOVW, PERE, SAL)'
      'values'
      
        '  (:KL, :PERIOD, :SCHET, :WID, :N_DOG, :D_DOG, :TARIF, :DOLG, :N' +
        'ACH, :SUBS, '
      '   :OPL, :UDER, :KOMP, :WZMZ, :WOZW, :MOVW, :PERE, :SAL)')
    RefreshSQL.Strings = (
      'Select '
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
      '  FULLOPL,'
      '  OPLNOTSUBS'
      'from VW_OBOR '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select VW_OBOR.*,wid.naim as poslug  from VW_OBOR'
      ' left outer join wid on (VW_OBOR.wid = wid.wid) '
      'where VW_OBOR.schet=:sch order by period')
    ModifySQL.Strings = (
      'update VW_OBOR'
      'set'
      '  KL = :KL,'
      '  PERIOD = :PERIOD,'
      '  SCHET = :SCHET,'
      '  WID = :WID,'
      '  N_DOG = :N_DOG,'
      '  D_DOG = :D_DOG,'
      '  TARIF = :TARIF,'
      '  DOLG = :DOLG,'
      '  NACH = :NACH,'
      '  SUBS = :SUBS,'
      '  OPL = :OPL,'
      '  UDER = :UDER,'
      '  KOMP = :KOMP,'
      '  WZMZ = :WZMZ,'
      '  WOZW = :WOZW,'
      '  MOVW = :MOVW,'
      '  PERE = :PERE,'
      '  SAL = :SAL'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_PERIOD_ID'
    Left = 592
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
      Size = 10
    end
    object IBKOBORN_DOG: TIBStringField
      FieldName = 'N_DOG'
      Origin = '"VW_OBOR"."N_DOG"'
      Size = 10
    end
    object IBKOBORD_DOG: TIBStringField
      FieldName = 'D_DOG'
      Origin = '"VW_OBOR"."D_DOG"'
      Size = 10
    end
    object IBKOBORTARIF: TIBBCDField
      FieldName = 'TARIF'
      Origin = '"VW_OBOR"."TARIF"'
      Precision = 18
      Size = 2
    end
    object IBKOBORDOLG: TIBBCDField
      FieldName = 'DOLG'
      Origin = '"VW_OBOR"."DOLG"'
      Precision = 18
      Size = 2
    end
    object IBKOBORNACH: TIBBCDField
      FieldName = 'NACH'
      Origin = '"VW_OBOR"."NACH"'
      Precision = 18
      Size = 2
    end
    object IBKOBORSUBS: TIBBCDField
      FieldName = 'SUBS'
      Origin = '"VW_OBOR"."SUBS"'
      Precision = 18
      Size = 2
    end
    object IBKOBOROPL: TIBBCDField
      FieldName = 'OPL'
      Origin = '"VW_OBOR"."OPL"'
      Precision = 18
      Size = 2
    end
    object IBKOBORUDER: TIBBCDField
      FieldName = 'UDER'
      Origin = '"VW_OBOR"."UDER"'
      Precision = 18
      Size = 2
    end
    object IBKOBORKOMP: TIBBCDField
      FieldName = 'KOMP'
      Origin = '"VW_OBOR"."KOMP"'
      Precision = 18
      Size = 2
    end
    object IBKOBORWZMZ: TIBBCDField
      FieldName = 'WZMZ'
      Origin = '"VW_OBOR"."WZMZ"'
      Precision = 18
      Size = 2
    end
    object IBKOBORWOZW: TIBBCDField
      FieldName = 'WOZW'
      Origin = '"VW_OBOR"."WOZW"'
      Precision = 18
      Size = 2
    end
    object IBKOBORMOVW: TIBBCDField
      FieldName = 'MOVW'
      Origin = '"VW_OBOR"."MOVW"'
      Precision = 18
      Size = 2
    end
    object IBKOBORPERE: TIBBCDField
      FieldName = 'PERE'
      Origin = '"VW_OBOR"."PERE"'
      Precision = 18
      Size = 2
    end
    object IBKOBORSAL: TIBBCDField
      FieldName = 'SAL'
      Origin = '"VW_OBOR"."SAL"'
      Precision = 18
      Size = 2
    end
    object IBKOBORBGST: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'BGST'
      Origin = '"VW_OBOR"."BGST"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object IBKOBORPRST: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'PRST'
      Origin = '"VW_OBOR"."PRST"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object IBKOBORBGEND: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'BGEND'
      Origin = '"VW_OBOR"."BGEND"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object IBKOBORPREND: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'PREND'
      Origin = '"VW_OBOR"."PREND"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object IBKOBORFULLOPL: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'FULLOPL'
      Origin = '"VW_OBOR"."FULLOPL"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object IBKOBOROPLNOTSUBS: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'OPLNOTSUBS'
      Origin = '"VW_OBOR"."OPLNOTSUBS"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object IBKOBORPOSLUG: TIBStringField
      FieldName = 'POSLUG'
      Origin = '"WID"."NAIM"'
    end
  end
  object DSKOBOR: TDataSource
    DataSet = IBKOBOR
    Left = 600
    Top = 56
  end
  object IBDataSet5: TIBDataSet
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
      'select *  from PERIOD order by PERIOD')
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
    Left = 672
    Top = 8
    object IntegerField9: TIntegerField
      FieldName = 'KL'
      Origin = '"PERIOD"."KL"'
      Required = True
    end
    object DateField5: TDateField
      FieldName = 'PERIOD'
      Origin = '"PERIOD"."PERIOD"'
    end
    object IntegerField10: TIntegerField
      FieldName = 'AKTIV'
      Origin = '"PERIOD"."AKTIV"'
    end
  end
  object DataSource5: TDataSource
    DataSet = IBDataSet5
    Left = 672
    Top = 48
  end
  object IBQuery1: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 536
    Top = 112
  end
end
