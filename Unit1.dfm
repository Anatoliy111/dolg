object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1041#1086#1088#1078#1085#1080#1082#1080
  ClientHeight = 638
  ClientWidth = 832
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 187
    Width = 832
    Height = 451
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSREPD
      DataController.DetailKeyFieldNames = 'KL'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '0.00'
          Kind = skSum
          FieldName = 'DOLG'
          Column = cxGrid1DBTableView1DOLG
          DisplayText = 'ljku'
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1ENDDOLG
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1OPL
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1PERE
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1UDER
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1WOZW
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1WZMZ
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1SUBS
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1NACH1
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1KOMP
          VisibleForCustomization = False
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1KOLI_P
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1KOLI_PF
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGrid1DBTableView1NACH1
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1DOLG
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1OPL
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1SUBS
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1UDER
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1ENDDOLG
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1KOMP
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1WZMZ
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1WOZW
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1PERE
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1KOLI_P
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1KOLI_PF
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      object cxGrid1DBTableView1KONTROL: TcxGridDBColumn
        Caption = #1050#1086#1085#1090#1088#1086#1083#1077#1088
        DataBinding.FieldName = 'KONTROL'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 112
      end
      object cxGrid1DBTableView1WID: TcxGridDBColumn
        Caption = #1055#1086#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'WID'
        Width = 33
      end
      object cxGrid1DBTableView1POSLUG: TcxGridDBColumn
        Caption = #1055#1086#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'POSLUG'
      end
      object cxGrid1DBTableView1SCHET: TcxGridDBColumn
        Caption = #1056#1072#1093#1091#1085#1086#1082
        DataBinding.FieldName = 'SCHET'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = '...'
        DataBinding.ValueType = 'Integer'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.CaseInsensitive = False
        Properties.HideSelection = False
        Properties.OnButtonClick = cxGrid1DBTableView1Column1PropertiesButtonClick
        Options.ShowEditButtons = isebAlways
        Width = 20
      end
      object cxGrid1DBTableView1FIO: TcxGridDBColumn
        Caption = #1055#1030#1041
        DataBinding.FieldName = 'FIO'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 232
      end
      object cxGrid1DBTableView1IDCOD: TcxGridDBColumn
        Caption = #1030#1076#1077#1085#1090'.'#1082#1086#1076
        DataBinding.FieldName = 'IDCOD'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 108
      end
      object cxGrid1DBTableView1KOLI_P: TcxGridDBColumn
        Caption = #1047#1072#1088#1077#1077#1089#1090#1088#1086#1074#1072#1085#1086
        DataBinding.FieldName = 'KOLI_P'
      end
      object cxGrid1DBTableView1KOLI_PF: TcxGridDBColumn
        Caption = #1055#1088#1086#1078#1080#1074#1072#1108
        DataBinding.FieldName = 'KOLI_PF'
      end
      object cxGrid1DBTableView1UL: TcxGridDBColumn
        Caption = #1042#1091#1083#1080#1094#1103
        DataBinding.FieldName = 'UL'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 197
      end
      object cxGrid1DBTableView1DOM: TcxGridDBColumn
        Caption = #1041#1091#1076#1080#1085#1086#1082
        DataBinding.FieldName = 'DOM'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGrid1DBTableView1KV: TcxGridDBColumn
        Caption = #1050#1074#1072#1088#1090#1080#1088#1072
        DataBinding.FieldName = 'KV'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGrid1DBTableView1DOLGMES1: TcxGridDBColumn
        DataBinding.FieldName = 'DOLGMES1'
      end
      object cxGrid1DBTableView1MES1: TcxGridDBColumn
        Caption = #1054#1087#1083#1072#1090#1072
        DataBinding.FieldName = 'MES1'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
        Visible = False
      end
      object cxGrid1DBTableView1DOLGMES2: TcxGridDBColumn
        DataBinding.FieldName = 'DOLGMES2'
      end
      object cxGrid1DBTableView1MES2: TcxGridDBColumn
        Caption = #1054#1087#1083#1072#1090#1072
        DataBinding.FieldName = 'MES2'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
        Visible = False
      end
      object cxGrid1DBTableView1DOLGMES3: TcxGridDBColumn
        DataBinding.FieldName = 'DOLGMES3'
      end
      object cxGrid1DBTableView1MES3: TcxGridDBColumn
        Caption = #1054#1087#1083#1072#1090#1072
        DataBinding.FieldName = 'MES3'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
        Visible = False
      end
      object cxGrid1DBTableView1DOLGMES4: TcxGridDBColumn
        DataBinding.FieldName = 'DOLGMES4'
      end
      object cxGrid1DBTableView1MES4: TcxGridDBColumn
        Caption = #1054#1087#1083#1072#1090#1072
        DataBinding.FieldName = 'MES4'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
        Visible = False
      end
      object cxGrid1DBTableView1DOLGMES5: TcxGridDBColumn
        DataBinding.FieldName = 'DOLGMES5'
      end
      object cxGrid1DBTableView1MES5: TcxGridDBColumn
        Caption = #1054#1087#1083#1072#1090#1072
        DataBinding.FieldName = 'MES5'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
        Visible = False
      end
      object cxGrid1DBTableView1DOLGMES6: TcxGridDBColumn
        DataBinding.FieldName = 'DOLGMES6'
      end
      object cxGrid1DBTableView1MES6: TcxGridDBColumn
        Caption = #1054#1087#1083#1072#1090#1072
        DataBinding.FieldName = 'MES6'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
        Visible = False
      end
      object cxGrid1DBTableView1DOLG: TcxGridDBColumn
        Caption = #1055#1086#1095#1072#1090'.'#1073#1086#1088#1075'.'#1087#1086#1090#1086#1095'.'#1087#1077#1088#1110#1086#1076#1091
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
      object cxGrid1DBTableView1KOMP: TcxGridDBColumn
        Caption = #1050#1086#1084#1087#1077#1085#1089#1072#1094#1110#1111
        DataBinding.FieldName = 'KOMP'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
      end
      object cxGrid1DBTableView1WZMZ: TcxGridDBColumn
        Caption = #1042#1079#1072#1077#1084#1086#1079#1072#1083#1110#1082
        DataBinding.FieldName = 'WZMZ'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
      end
      object cxGrid1DBTableView1WOZW: TcxGridDBColumn
        Caption = #1055#1086#1074#1077#1088#1085#1077#1085#1085#1103
        DataBinding.FieldName = 'WOZW'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
      end
      object cxGrid1DBTableView1PERE: TcxGridDBColumn
        Caption = #1055#1077#1088#1077#1088#1072#1093#1091#1085#1086#1082
        DataBinding.FieldName = 'PERE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
      end
      object cxGrid1DBTableView1ENDDOLG: TcxGridDBColumn
        Caption = #1050#1110#1085#1094'.'#1073#1086#1088#1075'.'#1087#1086#1090#1086#1095'.'#1087#1077#1088#1110#1086#1076#1091
        DataBinding.FieldName = 'ENDDOLG'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
      end
      object cxGrid1DBTableView1NOTE1: TcxGridDBColumn
        Caption = #1053#1086#1090#1072#1090#1082#1080'1'
        DataBinding.FieldName = 'NOTE1'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'KL'
        Properties.ListColumns = <
          item
            FieldName = 'NOTE'
          end>
        Properties.ListSource = DSNOTE1
        Width = 99
      end
      object cxGrid1DBTableView1NOTE2: TcxGridDBColumn
        Caption = #1053#1086#1090#1072#1090#1082#1080'2'
        DataBinding.FieldName = 'NOTE2'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'KL'
        Properties.ListColumns = <
          item
            FieldName = 'NOTE'
          end>
        Properties.ListSource = DSNOTE2
        Width = 92
      end
      object cxGrid1DBTableView1NOTE3: TcxGridDBColumn
        Caption = #1053#1086#1090#1072#1090#1082#1080'3'
        DataBinding.FieldName = 'NOTE3'
        Width = 517
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 28
    Width = 832
    Height = 159
    Align = alTop
    TabOrder = 1
    object cxGroupBox1: TcxGroupBox
      Left = 8
      Top = 8
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1074#1110#1076#1073#1086#1088#1091
      TabOrder = 0
      Height = 145
      Width = 537
      object cxLookupComboBox1: TcxLookupComboBox
        Left = 40
        Top = 42
        Properties.KeyFieldNames = 'PERIOD'
        Properties.ListColumns = <
          item
            FieldName = 'PERIOD'
          end>
        Properties.ListSource = DSPERIOD
        TabOrder = 0
        Width = 145
      end
      object cxCheckBox1: TcxCheckBox
        Left = 9
        Top = 42
        TabOrder = 1
      end
      object cxLabel2: TcxLabel
        Left = 40
        Top = 64
        Caption = #1057#1091#1084#1072' '#1087#1086#1095#1072#1090#1082#1086#1074#1086#1075#1086' '#1073#1086#1088#1075#1091' '#1087#1086#1090#1086#1095'.'#1087#1077#1088#1110#1086#1076#1091
      end
      object cxCheckBox2: TcxCheckBox
        Left = 9
        Top = 83
        TabOrder = 3
      end
      object cxButton3: TcxButton
        Left = 12
        Top = 110
        Width = 173
        Height = 25
        Caption = #1045#1082#1089#1087#1086#1088#1090' '#1074' '#1077#1082#1089#1077#1083#1100
        TabOrder = 4
        OnClick = cxButton3Click
      end
    end
    object cxLabel3: TcxLabel
      Left = 664
      Top = -1
      Caption = #1055#1086#1090#1086#1095#1085#1080#1081' '#1087#1077#1088#1110#1086#1076
    end
    object cxLabel4: TcxLabel
      Left = 632
      Top = 12
      Caption = #1055#1086#1090#1086#1095#1085#1080#1081' '#1087#1077#1088#1110#1086#1076
      ParentFont = False
      Style.Font.Charset = RUSSIAN_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Arial Unicode MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxButton1: TcxButton
      Left = 632
      Top = 50
      Width = 173
      Height = 25
      Caption = #1054#1085#1086#1074#1080#1090#1080' '#1087#1086#1090#1086#1095#1085#1110' '#1076#1072#1085#1110
      TabOrder = 3
      OnClick = cxButton1Click
    end
    object cxButton4: TcxButton
      Left = 632
      Top = 81
      Width = 173
      Height = 25
      Caption = #1054#1085#1086#1074#1080#1090#1080' '#1082#1072#1088#1090#1082#1080
      TabOrder = 4
      OnClick = cxButton4Click
    end
  end
  object cxLabel1: TcxLabel
    Left = 48
    Top = 53
    Caption = #1054#1087#1083#1072#1090#1072' '#1079#1072' '#1087#1086#1087#1077#1088#1077#1076#1085#1110' '#1087#1077#1088#1110#1086#1076#1080' '#1079' '
  end
  object cxTextEdit1: TcxTextEdit
    Left = 98
    Top = 117
    TabOrder = 3
    Width = 121
  end
  object cxButton2: TcxButton
    Left = 632
    Top = 144
    Width = 173
    Height = 25
    Caption = #1047#1092#1086#1088#1084#1091#1074#1072#1090#1080' '#1079#1074#1110#1090
    TabOrder = 4
    OnClick = cxButton2Click
  end
  object cxComboBox1: TcxComboBox
    Left = 48
    Top = 117
    Properties.Items.Strings = (
      '='
      '<>'
      '>='
      '<=')
    TabOrder = 9
    Text = '>='
    Width = 44
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'D:\WORK\KOMUN\DOLG\DOLG.GDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    Left = 24
    Top = 240
  end
  object IBUSER: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterInsert = IBUSERAfterInsert
    BeforeDelete = IBUSERBeforeDelete
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from USERS'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into USERS'
      '  (FIO, KL, PW)'
      'values'
      '  (:FIO, :KL, :PW)')
    RefreshSQL.Strings = (
      'Select '
      '  FIO,'
      '  KL,'
      '  PW'
      'from USERS '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select * from USERS')
    ModifySQL.Strings = (
      'update USERS'
      'set'
      '  FIO = :FIO,'
      '  KL = :KL,'
      '  PW = :PW'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_USERS_ID'
    Left = 176
    Top = 360
    object IBUSERFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"USERS"."FIO"'
      Size = 30
    end
    object IBUSERKL: TIntegerField
      FieldName = 'KL'
      Origin = '"USERS"."KL"'
      Required = True
    end
    object IBUSERPW: TIBStringField
      FieldName = 'PW'
      Origin = '"USERS"."PW"'
      Size = 10
    end
  end
  object DSUSER: TDataSource
    DataSet = IBUSER
    Left = 176
    Top = 416
  end
  object DSADRES: TDataSource
    DataSet = IBADRES
    Left = 96
    Top = 416
  end
  object IBADRES: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ADRES'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into ADRES'
      '  (DOM, KL, KL_KONTROL, UL)'
      'values'
      '  (:DOM, :KL, :KL_KONTROL, :UL)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  DOM,'
      '  UL,'
      '  KL_KONTROL'
      'from ADRES '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select *  from ADRES where adres.KL_KONTROL=:kl')
    ModifySQL.Strings = (
      'update ADRES'
      'set'
      '  DOM = :DOM,'
      '  KL = :KL,'
      '  KL_KONTROL = :KL_KONTROL,'
      '  UL = :UL'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_ADRES_ID'
    DataSource = DSKONTROL
    Left = 96
    Top = 360
    object IBADRESKL: TIntegerField
      FieldName = 'KL'
      Origin = '"ADRES"."KL"'
      Required = True
    end
    object IBADRESDOM: TIBStringField
      FieldName = 'DOM'
      Origin = '"ADRES"."DOM"'
      Size = 10
    end
    object IBADRESKL_KONTROL: TIntegerField
      FieldName = 'KL_KONTROL'
      Origin = '"ADRES"."KL_KONTROL"'
    end
    object IBADRESUL: TIBStringField
      FieldName = 'UL'
      Origin = '"ADRES"."UL"'
      Size = 70
    end
  end
  object DSNOTE: TDataSource
    DataSet = IBNOTE
    Left = 248
    Top = 416
  end
  object IBNOTE: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from NOTE'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into NOTE'
      '  (KL, KL_USERS, NOTE1, NOTE2, NOTE3, SCHET, WID)'
      'values'
      '  (:KL, :KL_USERS, :NOTE1, :NOTE2, :NOTE3, :SCHET, :WID)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  WID,'
      '  SCHET,'
      '  NOTE1,'
      '  NOTE2,'
      '  NOTE3,'
      '  KL_USERS'
      'from NOTE '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select *  from NOTE order by schet,wid')
    ModifySQL.Strings = (
      'update NOTE'
      'set'
      '  KL = :KL,'
      '  KL_USERS = :KL_USERS,'
      '  NOTE1 = :NOTE1,'
      '  NOTE2 = :NOTE2,'
      '  NOTE3 = :NOTE3,'
      '  SCHET = :SCHET,'
      '  WID = :WID'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_NOTE_ID'
    Left = 248
    Top = 360
    object IBNOTEWID: TIBStringField
      FieldName = 'WID'
      Origin = '"NOTE"."WID"'
      Size = 10
    end
    object IBNOTESCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"NOTE"."SCHET"'
      Size = 10
    end
    object IBNOTEKL: TIntegerField
      FieldName = 'KL'
      Origin = '"NOTE"."KL"'
      Required = True
    end
    object IBNOTENOTE1: TIntegerField
      FieldName = 'NOTE1'
      Origin = '"NOTE"."NOTE1"'
    end
    object IBNOTENOTE2: TIntegerField
      FieldName = 'NOTE2'
      Origin = '"NOTE"."NOTE2"'
    end
    object IBNOTENOTE3: TIBStringField
      FieldName = 'NOTE3'
      Origin = '"NOTE"."NOTE3"'
      Size = 200
    end
    object IBNOTEKL_USERS: TIntegerField
      FieldName = 'KL_USERS'
      Origin = '"NOTE"."KL_USERS"'
    end
  end
  object DSSPRADRES: TDataSource
    DataSet = IBSPRADRES
    Left = 304
    Top = 416
  end
  object IBSPRADRES: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from kart'
      'where'
      '  DOM = :OLD_DOM and'
      '  UL = :OLD_UL')
    InsertSQL.Strings = (
      'insert into kart'
      '  (DOM, UL)'
      'values'
      '  (:DOM, :UL)')
    RefreshSQL.Strings = (
      'Select '
      '  UL,'
      '  DOM'
      'from kart '
      'where'
      '  DOM = :DOM and'
      '  UL = :UL')
    SelectSQL.Strings = (
      'select ul,dom from kart group by ul,dom order by ul,dom')
    ModifySQL.Strings = (
      'update kart'
      'set'
      '  DOM = :DOM,'
      '  UL = :UL'
      'where'
      '  DOM = :OLD_DOM and'
      '  UL = :OLD_UL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_SPRADRES_ID'
    Left = 304
    Top = 360
    object IBSPRADRESUL: TIBStringField
      FieldName = 'UL'
      Origin = '"KART"."UL"'
      Size = 70
    end
    object IBSPRADRESDOM: TIBStringField
      FieldName = 'DOM'
      Origin = '"KART"."DOM"'
      Size = 10
    end
  end
  object DSREPD: TDataSource
    DataSet = IBREPD
    Left = 360
    Top = 416
  end
  object IBREPD: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from note'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into note'
      '  (KL, KL_USERS, NOTE1, NOTE2, NOTE3, SCHET, WID)'
      'values'
      '  (:KL, :KL_USERS, :NOTE1, :NOTE2, :NOTE3, :SCHET, :WID)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  WID,'
      '  SCHET,'
      '  NOTE1,'
      '  NOTE2,'
      '  NOTE3,'
      '  KL_USERS'
      'from note '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select '
      'note.kl, '
      'note.wid,'
      'note.schet,'
      'note.note1,'
      'note.note2,'
      'note.note3,'
      'note.kl_users,'
      'tmpwid.naim as poslug,'
      'obormes.dolg as dolg,'
      '0.00 as dolgmes1,'
      '0.00 as mes1,'
      '0.00 as dolgmes2,'
      '0.00 as mes2,'
      '0.00 as dolgmes3,'
      '0.00 as mes3,'
      '0.00 as dolgmes4,'
      '0.00 as mes4,'
      '0.00 as dolgmes5,'
      '0.00 as mes5,'
      '0.00 as dolgmes6,'
      '0.00 as mes6,'
      'kart.fio,'
      'kart.idcod,'
      'kart.ul,'
      'kart.dom,'
      'kart.kv,'
      'kart.koli_p,'
      'kart.koli_pf,'
      'kontrol.fio as kontrol,'
      'obormes.nach as nach1,'
      'obormes.opl,'
      'obormes.subs,'
      'obormes.uder,'
      'obormes.komp,'
      'obormes.wzmz,'
      'obormes.wozw,'
      'obormes.movw,'
      'obormes.pere,'
      'obormes.sal as enddolg'
      ' from note'
      
        ' inner join obormes on (note.wid = obormes.wid) and (note.schet ' +
        '= obormes.schet)'
      ' inner join kart on (note.schet = kart.schet)'
      
        ' left outer join adres on (kart.dom = adres.dom) and (kart.ul = ' +
        'adres.ul)'
      ' left outer join kontrol on (adres.kl_kontrol = kontrol.kl)'
      ' left outer join tmpwid on (note.wid = tmpwid.wid)'
      ' where note.kl_users =:kluser')
    ModifySQL.Strings = (
      'update note'
      'set'
      '  KL = :KL,'
      '  KL_USERS = :KL_USERS,'
      '  NOTE1 = :NOTE1,'
      '  NOTE2 = :NOTE2,'
      '  NOTE3 = :NOTE3,'
      '  SCHET = :SCHET,'
      '  WID = :WID'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    Left = 360
    Top = 360
    object IBREPDKL: TIntegerField
      FieldName = 'KL'
      Origin = '"NOTE"."KL"'
      Required = True
    end
    object IBREPDWID: TIBStringField
      FieldName = 'WID'
      Origin = '"NOTE"."WID"'
      Size = 10
    end
    object IBREPDSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"NOTE"."SCHET"'
      Size = 10
    end
    object IBREPDNOTE1: TIntegerField
      FieldName = 'NOTE1'
      Origin = '"NOTE"."NOTE1"'
    end
    object IBREPDNOTE2: TIntegerField
      FieldName = 'NOTE2'
      Origin = '"NOTE"."NOTE2"'
    end
    object IBREPDNOTE3: TIBStringField
      FieldName = 'NOTE3'
      Origin = '"NOTE"."NOTE3"'
      Size = 200
    end
    object IBREPDKL_USERS: TIntegerField
      FieldName = 'KL_USERS'
      Origin = '"NOTE"."KL_USERS"'
    end
    object IBREPDDOLG: TIBBCDField
      FieldName = 'DOLG'
      Origin = '"OBORMES"."DOLG"'
      Precision = 18
      Size = 2
    end
    object IBREPDFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"KART"."FIO"'
      Size = 70
    end
    object IBREPDIDCOD: TIBStringField
      FieldName = 'IDCOD'
      Origin = '"KART"."IDCOD"'
      Size = 40
    end
    object IBREPDUL: TIBStringField
      FieldName = 'UL'
      Origin = '"KART"."UL"'
      Size = 70
    end
    object IBREPDDOM: TIBStringField
      FieldName = 'DOM'
      Origin = '"KART"."DOM"'
      Size = 10
    end
    object IBREPDKV: TIBStringField
      FieldName = 'KV'
      Origin = '"KART"."KV"'
      Size = 10
    end
    object IBREPDKONTROL: TIBStringField
      FieldName = 'KONTROL'
      Origin = '"KONTROL"."FIO"'
      Size = 40
    end
    object IBREPDNACH1: TIBBCDField
      FieldName = 'NACH1'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBREPDOPL: TIBBCDField
      FieldName = 'OPL'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBREPDSUBS: TIBBCDField
      FieldName = 'SUBS'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBREPDUDER: TIBBCDField
      FieldName = 'UDER'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBREPDENDDOLG: TIBBCDField
      FieldName = 'ENDDOLG'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBREPDMES1: TIBBCDField
      FieldName = 'MES1'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBREPDMES2: TIBBCDField
      FieldName = 'MES2'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBREPDMES3: TIBBCDField
      FieldName = 'MES3'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBREPDMES4: TIBBCDField
      FieldName = 'MES4'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBREPDMES5: TIBBCDField
      FieldName = 'MES5'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBREPDMES6: TIBBCDField
      FieldName = 'MES6'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBREPDDOLGMES1: TIBBCDField
      FieldName = 'DOLGMES1'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBREPDDOLGMES2: TIBBCDField
      FieldName = 'DOLGMES2'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBREPDDOLGMES3: TIBBCDField
      FieldName = 'DOLGMES3'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBREPDDOLGMES4: TIBBCDField
      FieldName = 'DOLGMES4'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBREPDDOLGMES5: TIBBCDField
      FieldName = 'DOLGMES5'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBREPDDOLGMES6: TIBBCDField
      FieldName = 'DOLGMES6'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBREPDPOSLUG: TIBStringField
      FieldName = 'POSLUG'
      Origin = '"TMPWID"."NAIM"'
    end
    object IBREPDKOMP: TIBBCDField
      FieldName = 'KOMP'
      Origin = '"OBORMES"."KOMP"'
      Precision = 18
      Size = 2
    end
    object IBREPDWZMZ: TIBBCDField
      FieldName = 'WZMZ'
      Origin = '"OBORMES"."WZMZ"'
      Precision = 18
      Size = 2
    end
    object IBREPDWOZW: TIBBCDField
      FieldName = 'WOZW'
      Origin = '"OBORMES"."WOZW"'
      Precision = 18
      Size = 2
    end
    object IBREPDMOVW: TIBBCDField
      FieldName = 'MOVW'
      Origin = '"OBORMES"."MOVW"'
      Precision = 18
      Size = 2
    end
    object IBREPDPERE: TIBBCDField
      FieldName = 'PERE'
      Origin = '"OBORMES"."PERE"'
      Precision = 18
      Size = 2
    end
    object IBREPDKOLI_P: TIntegerField
      FieldName = 'KOLI_P'
      Origin = '"KART"."KOLI_P"'
    end
    object IBREPDKOLI_PF: TIntegerField
      FieldName = 'KOLI_PF'
      Origin = '"KART"."KOLI_PF"'
    end
  end
  object DSADOKART: TDataSource
    DataSet = ADOKART
    Enabled = False
    Left = 192
    Top = 296
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 600
    Top = 296
  end
  object DSQuery1: TDataSource
    DataSet = IBQuery1
    Left = 648
    Top = 296
  end
  object ADOKART: TADODataSet
    Connection = ADOConnectionDBF
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'select * from kart order by schet'
    Parameters = <>
    Left = 160
    Top = 240
  end
  object ADOConnectionARC: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=d:\WO' +
      'RK\KOMUN\kvpl\arc\201806\;Mode=Read;Persist Security Info=False;' +
      'Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLED' +
      'B:Database Password="";Jet OLEDB:Engine Type=16;Jet OLEDB:Databa' +
      'se Locking Mode=0;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:' +
      'Global Bulk Transactions=1;Jet OLEDB:New Database Password="";Je' +
      't OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=' +
      'False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Com' +
      'pact Without Replica Repair=False;Jet OLEDB:SFP=False;'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 560
    Top = 176
  end
  object DSSP_ADRES: TDataSource
    DataSet = IBSP_ADRES
    Left = 480
    Top = 416
  end
  object IBSP_ADRES: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SPRADRES'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into SPRADRES'
      '  (CH, DOM, KL, UL)'
      'values'
      '  (:CH, :DOM, :KL, :UL)')
    RefreshSQL.Strings = (
      'Select '
      '  UL,'
      '  DOM,'
      '  CH,'
      '  KL'
      'from SPRADRES '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select kkk.ul, kkk.dom, 0 as CH'
      
        'FROM (select ul,dom from kart group by ul,dom order by ul,dom) k' +
        'kk LEFT JOIN ADRES ON kkk.ul = ADRES.ul and kkk.dom = ADRES.dom'
      'WHERE ADRES.ul IS NULL and ADRES.dom IS NULL')
    ModifySQL.Strings = (
      'update SPRADRES'
      'set'
      '  CH = :CH,'
      '  DOM = :DOM,'
      '  KL = :KL,'
      '  UL = :UL'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_SP_ADRES_ID'
    Left = 480
    Top = 360
    object IBSP_ADRESDOM: TIBStringField
      FieldName = 'DOM'
      Origin = '"SP_ADRES"."DOM"'
      Size = 10
    end
    object IBSP_ADRESCH: TSmallintField
      FieldName = 'CH'
      Origin = '"SP_ADRES"."CH"'
    end
    object IBSP_ADRESUL: TIBStringField
      FieldName = 'UL'
      Origin = '"SPRADRES"."UL"'
      Size = 70
    end
  end
  object IBNOTE1: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from NOTE1'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into NOTE1'
      '  (KL, NOTE)'
      'values'
      '  (:KL, :NOTE)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  NOTE'
      'from NOTE1 '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select *  from NOTE1')
    ModifySQL.Strings = (
      'update NOTE1'
      'set'
      '  KL = :KL,'
      '  NOTE = :NOTE'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_NOTE1_ID'
    Left = 544
    Top = 360
    object IBNOTE1KL: TIntegerField
      FieldName = 'KL'
      Origin = '"NOTE1"."KL"'
      Required = True
    end
    object IBNOTE1NOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"NOTE1"."NOTE"'
      Size = 100
    end
  end
  object DSNOTE1: TDataSource
    DataSet = IBNOTE1
    Left = 544
    Top = 416
  end
  object IBNOTE2: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from NOTE2'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into NOTE2'
      '  (KL, NOTE)'
      'values'
      '  (:KL, :NOTE)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  NOTE'
      'from NOTE2 '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select *  from NOTE2')
    ModifySQL.Strings = (
      'update NOTE2'
      'set'
      '  KL = :KL,'
      '  NOTE = :NOTE'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_NOTE2_ID'
    Left = 600
    Top = 360
    object IBNOTE2KL: TIntegerField
      FieldName = 'KL'
      Origin = '"NOTE2"."KL"'
      Required = True
    end
    object IBNOTE2NOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"NOTE2"."NOTE"'
      Size = 100
    end
  end
  object DSNOTE2: TDataSource
    DataSet = IBNOTE2
    Left = 600
    Top = 416
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'cxPropertiesStore1'
    Left = 776
    Top = 208
  end
  object IBDatabaseInfo1: TIBDatabaseInfo
    Database = IBDatabase1
    Left = 72
    Top = 296
  end
  object DSKONTROL: TDataSource
    DataSet = IBKONTROL
    Left = 40
    Top = 416
  end
  object IBKONTROL: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BeforeDelete = IBKONTROLBeforeDelete
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from KONTROL'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into KONTROL'
      '  (FIO, KL)'
      'values'
      '  (:FIO, :KL)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  FIO'
      'from KONTROL '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select * from KONTROL')
    ModifySQL.Strings = (
      'update KONTROL'
      'set'
      '  FIO = :FIO,'
      '  KL = :KL'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_KONTROL_ID'
    Left = 40
    Top = 360
    object IBKONTROLKL: TIntegerField
      FieldName = 'KL'
      Origin = '"KONTROL"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBKONTROLFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"KONTROL"."FIO"'
      Size = 40
    end
  end
  object DSSERVICES: TDataSource
    DataSet = IBSERVICES
    Left = 672
    Top = 416
  end
  object IBSERVICES: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SERVICES'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into SERVICES'
      '  (DATA, KL, UPDATES)'
      'values'
      '  (:DATA, :KL, :UPDATES)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  DATA,'
      '  UPDATES'
      'from SERVICES '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select * from SERVICES')
    ModifySQL.Strings = (
      'update SERVICES'
      'set'
      '  DATA = :DATA,'
      '  KL = :KL,'
      '  UPDATES = :UPDATES'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_SERVICES_ID'
    Left = 664
    Top = 360
    object IBSERVICESKL: TIntegerField
      FieldName = 'KL'
      Origin = '"SERVICES"."KL"'
      Required = True
    end
    object IBSERVICESDATA: TDateField
      FieldName = 'DATA'
      Origin = '"SERVICES"."DATA"'
    end
    object IBSERVICESUPDATES: TIntegerField
      FieldName = 'UPDATES'
      Origin = '"SERVICES"."UPDATES"'
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102)
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 776
    Top = 256
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'MainMenu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 782
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton118'
        end
        item
          Visible = True
          ItemName = 'dxBarButton19'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = #1044#1086#1074#1110#1076#1085#1080#1082#1080
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton101'
        end
        item
          Visible = True
          ItemName = 'dxBarButton114'
        end>
    end
    object dxBarSubItem5: TdxBarSubItem
      Caption = #1054#1090#1095#1077#1090#1099
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton94'
        end>
    end
    object dxBarSubItem6: TdxBarSubItem
      Caption = #1057#1077#1088#1074#1080#1089
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem14'
        end
        item
          Visible = True
          ItemName = 'dxBarButton28'
        end
        item
          Visible = True
          ItemName = 'dxBarButton31'
        end
        item
          Visible = True
          ItemName = 'dxBarButton32'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton36'
        end
        item
          Visible = True
          ItemName = 'dxBarButton34'
        end>
    end
    object dxBarButton1: TdxBarButton
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      Category = 0
      Hint = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      Visible = ivAlways
    end
    object dxBarSeparator1: TdxBarSeparator
      Caption = #1053#1086#1074#1099#1081' '#1088#1072#1079#1076#1077#1083#1080#1090#1077#1083#1100
      Category = 0
      Hint = #1053#1086#1074#1099#1081' '#1088#1072#1079#1076#1077#1083#1080#1090#1077#1083#1100
      Visible = ivAlways
    end
    object dxBarSubItem8: TdxBarSubItem
      Caption = #1069#1082#1089#1087#1086#1088#1090
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton4: TdxBarButton
      Caption = #1044#1086#1074#1110#1076#1085#1080#1082' '#1050#1086#1085#1090#1088#1086#1083#1077#1088#1080
      Category = 0
      Hint = #1044#1086#1074#1110#1076#1085#1080#1082' '#1050#1086#1085#1090#1088#1086#1083#1077#1088#1080
      Visible = ivAlways
      OnClick = dxBarButton4Click
    end
    object dxBarButton5: TdxBarButton
      Caption = #1057#1082#1083#1072#1076#1099
      Category = 0
      Hint = #1057#1082#1083#1072#1076#1099
      Visible = ivAlways
    end
    object dxBarButton6: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object dxBarButton7: TdxBarButton
      Caption = #1050#1083#1080#1077#1085#1090#1099' ('#1050#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099')'
      Category = 0
      Hint = #1050#1083#1080#1077#1085#1090#1099' ('#1050#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099')'
      Visible = ivAlways
    end
    object dxBarButton8: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1090#1077#1085#1076#1077#1088#1085#1072' '#1090#1072#1073#1083#1080#1094#1072
      Category = 0
      Hint = #1053#1086#1074#1072#1103' '#1090#1077#1085#1076#1077#1088#1085#1072' '#1090#1072#1073#1083#1080#1094#1072
      Visible = ivAlways
    end
    object dxBarButton9: TdxBarButton
      Caption = #1046#1091#1088#1085#1072#1083' '#1090#1077#1085#1076#1077#1088#1086#1074
      Category = 0
      Hint = #1046#1091#1088#1085#1072#1083' '#1090#1077#1085#1076#1077#1088#1086#1074
      Visible = ivAlways
    end
    object dxBarButton10: TdxBarButton
      Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103
      Category = 0
      Hint = #1053#1072#1082#1083#1072#1076#1085#1072#1103' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103
      Visible = ivAlways
    end
    object dxBarButton11: TdxBarButton
      Caption = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Category = 0
      Hint = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Visible = ivAlways
    end
    object dxBarButton12: TdxBarButton
      Caption = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Category = 0
      Hint = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Visible = ivAlways
    end
    object dxBarButton13: TdxBarButton
      Caption = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
      Category = 0
      Hint = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
      Visible = ivAlways
    end
    object dxBarButton14: TdxBarButton
      Caption = #1040#1082#1090' '#1080#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1080
      Category = 0
      Hint = #1040#1082#1090' '#1080#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1080
      Visible = ivAlways
    end
    object dxBarButton15: TdxBarButton
      Caption = #1054#1096#1080#1073#1082#1080' '#1087#1088#1080#1093#1086#1076#1072
      Category = 0
      Hint = #1054#1096#1080#1073#1082#1080' '#1087#1088#1080#1093#1086#1076#1072
      Visible = ivAlways
    end
    object dxBarButton16: TdxBarButton
      Caption = #1057#1095#1077#1090
      Category = 0
      Hint = #1057#1095#1077#1090
      Visible = ivAlways
    end
    object dxBarButton17: TdxBarButton
      Caption = #1054#1096#1080#1073#1082#1080' '#1088#1072#1089#1093#1086#1076#1072
      Category = 0
      Hint = #1054#1096#1080#1073#1082#1080' '#1088#1072#1089#1093#1086#1076#1072
      Visible = ivAlways
    end
    object dxBarButton18: TdxBarButton
      Caption = #1053#1086#1074#1099#1081' '#1084#1077#1089#1103#1094
      Category = 0
      Hint = #1053#1086#1074#1099#1081' '#1084#1077#1089#1103#1094
      Visible = ivAlways
    end
    object dxBarButton19: TdxBarButton
      Caption = #1042#1080#1093#1110#1076
      Category = 0
      Hint = #1042#1080#1093#1110#1076
      Visible = ivAlways
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton19Click
    end
    object dxBarButton20: TdxBarButton
      Caption = #1046#1091#1088#1085#1072#1083' '#1087#1088#1080#1093#1086#1076#1085#1099#1093' '#1085#1072#1082#1083#1072#1076#1085#1099#1093
      Category = 0
      Hint = #1046#1091#1088#1085#1072#1083' '#1087#1088#1080#1093#1086#1076#1085#1099#1093' '#1085#1072#1082#1083#1072#1076#1085#1099#1093
      MergeKind = mkMergeByCaption
      Visible = ivAlways
      DropDownEnabled = False
      ImageIndex = 1
      LargeImageIndex = 0
      Lowered = True
    end
    object dxBarButton21: TdxBarButton
      Caption = #1046#1091#1088#1085#1072#1083' '#1088#1072#1089#1093#1086#1076#1085#1099#1093' '#1085#1072#1082#1083#1072#1076#1085#1099#1093
      Category = 0
      Hint = #1046#1091#1088#1085#1072#1083' '#1088#1072#1089#1093#1086#1076#1085#1099#1093' '#1085#1072#1082#1083#1072#1076#1085#1099#1093
      Visible = ivAlways
      ImageIndex = 0
      LargeImageIndex = 0
    end
    object dxBarButton22: TdxBarButton
      Caption = #1046#1091#1088#1085#1072#1083' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1081
      Category = 0
      Hint = #1046#1091#1088#1085#1072#1083' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1081
      Visible = ivAlways
    end
    object dxBarButton23: TdxBarButton
      Caption = #1046#1091#1088#1085#1072#1083' '#1074#1086#1079#1074#1088#1072#1090#1072' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1077#1081
      Category = 0
      Hint = #1046#1091#1088#1085#1072#1083' '#1074#1086#1079#1074#1088#1072#1090#1072' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1077#1081
      Visible = ivAlways
    end
    object dxBarButton24: TdxBarButton
      Caption = #1046#1091#1088#1085#1072#1083' '#1074#1086#1079#1074#1088#1072#1090#1072' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Category = 0
      Hint = #1046#1091#1088#1085#1072#1083' '#1074#1086#1079#1074#1088#1072#1090#1072' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Visible = ivAlways
    end
    object dxBarButton25: TdxBarButton
      Caption = #1046#1091#1088#1085#1072#1083' '#1072#1082#1090#1086#1074' '#1089#1087#1080#1089#1072#1085#1080#1103
      Category = 0
      Hint = #1046#1091#1088#1085#1072#1083' '#1072#1082#1090#1086#1074' '#1089#1087#1080#1089#1072#1085#1080#1103
      Visible = ivAlways
    end
    object dxBarButton26: TdxBarButton
      Caption = #1046#1091#1088#1085#1072#1083' '#1072#1082#1090#1086#1074' '#1080#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1080
      Category = 0
      Hint = #1046#1091#1088#1085#1072#1083' '#1072#1082#1090#1086#1074' '#1080#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1080
      Visible = ivAlways
    end
    object dxBarButton27: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarSubItem14: TdxBarSubItem
      Caption = #1069#1082#1089#1087#1086#1088#1090
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton28: TdxBarButton
      Caption = #1044#1080#1079#1072#1081#1085#1077#1088' '#1086#1090#1095#1077#1090#1086#1074
      Category = 0
      Hint = #1044#1080#1079#1072#1081#1085#1077#1088' '#1086#1090#1095#1077#1090#1086#1074
      Visible = ivAlways
    end
    object dxBarButton29: TdxBarButton
      Caption = #1050#1086#1084#1080#1089#1089#1080#1103' '#1085#1072' '#1080#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1102
      Category = 0
      Hint = #1050#1086#1084#1080#1089#1089#1080#1103' '#1085#1072' '#1080#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1102
      Visible = ivAlways
    end
    object dxBarButton30: TdxBarButton
      Caption = #1044#1086#1074#1110#1076#1085#1080#1082' '#1058#1052#1062
      Category = 0
      Hint = #1044#1086#1074#1110#1076#1085#1080#1082' '#1058#1052#1062
      Visible = ivAlways
    end
    object dxBarButton31: TdxBarButton
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
      Category = 0
      Hint = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
      Visible = ivAlways
    end
    object dxBarButton32: TdxBarButton
      Caption = #1056#1072#1079#1088#1077#1096#1077#1085#1080#1103
      Category = 0
      Hint = #1056#1072#1079#1088#1077#1096#1077#1085#1080#1103
      Visible = ivAlways
    end
    object dxBarButton33: TdxBarButton
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
      Category = 0
      Hint = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
      Visible = ivAlways
      ImageIndex = 3
    end
    object dxBarButton34: TdxBarButton
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      Category = 0
      Hint = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      Visible = ivAlways
    end
    object dxBarButton35: TdxBarButton
      Caption = #1072#1087#1074#1072#1087#1074#1072#1087#1074#1072#1087
      Category = 0
      Hint = #1072#1087#1074#1072#1087#1074#1072#1087#1074#1072#1087
      Visible = ivAlways
    end
    object dxBarButton36: TdxBarButton
      Caption = #1040#1088#1093#1080#1074
      Category = 0
      Hint = #1040#1088#1093#1080#1074
      Visible = ivAlways
    end
    object dxBarSubItem15: TdxBarSubItem
      Caption = #1042#1110#1082#1085#1072
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton37: TdxBarButton
      Caption = #1050#1072#1089#1082#1072#1076
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton38: TdxBarButton
      Caption = #1043#1086#1088#1080#1079#1086#1085#1090#1072#1083#1100
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton39: TdxBarButton
      Caption = 'Arrage'
      Category = 0
      Hint = 'Arrage'
      Visible = ivAlways
    end
    object dxBarButton40: TdxBarButton
      Caption = #1057#1074#1077#1088#1085#1091#1090#1100' '#1074#1089#1077
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Caption = #1042#1077#1088#1090#1080#1082#1072#1083#1100
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton41: TdxBarButton
      Caption = #1059#1087#1086#1088#1103#1076#1086#1095#1080#1090#1100' '#1089#1074#1077#1088#1085#1091#1090#1099#1077
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton42: TdxBarButton
      Caption = #1047#1072#1082#1088#1099#1090#1100' '#1074#1089#1077
      Category = 0
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1074#1089#1077
      Visible = ivAlways
    end
    object dxBarButton43: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object dxBarButton44: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object dxBarSubItem16: TdxBarSubItem
      Caption = #1055#1088#1080#1093#1086#1076
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton45'
        end>
    end
    object dxBarSubItem17: TdxBarSubItem
      Caption = #1056#1072#1089#1093#1086#1076
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton53'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem21'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem23'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton56'
        end
        item
          Visible = True
          ItemName = 'dxBarButton58'
        end
        item
          Visible = True
          ItemName = 'dxBarButton59'
        end
        item
          Visible = True
          ItemName = 'dxBarButton60'
        end>
    end
    object dxBarSubItem18: TdxBarSubItem
      Caption = #1054#1073#1086#1088#1086#1090
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton77'
        end
        item
          Visible = True
          ItemName = 'dxBarButton78'
        end
        item
          Visible = True
          ItemName = 'dxBarButton83'
        end
        item
          Visible = True
          ItemName = 'dxBarButton82'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem24'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem25'
        end>
    end
    object dxBarSubItem19: TdxBarSubItem
      Caption = #1057#1072#1083#1100#1076#1086
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton86'
        end
        item
          Visible = True
          ItemName = 'dxBarButton87'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton88'
        end>
    end
    object dxBarSubItem20: TdxBarSubItem
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton89'
        end>
    end
    object dxBarButton45: TdxBarButton
      Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1087#1086' '#1089#1082#1083#1072#1076#1072#1084
      Category = 0
      Hint = #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1087#1086' '#1089#1082#1083#1072#1076#1072#1084
      Visible = ivAlways
    end
    object dxBarButton46: TdxBarButton
      Caption = #1055#1086' '#1076#1077#1073#1077#1090#1072#1084
      Category = 0
      Hint = #1055#1086' '#1076#1077#1073#1077#1090#1072#1084
      Visible = ivAlways
    end
    object dxBarButton47: TdxBarButton
      Caption = #1055#1086' '#1089#1082#1083#1072#1076#1072#1084
      Category = 0
      Hint = #1055#1086' '#1089#1082#1083#1072#1076#1072#1084
      Visible = ivAlways
    end
    object dxBarButton48: TdxBarButton
      Caption = #1055#1086' '#1082#1088#1077#1076#1080#1090#1072#1084
      Category = 0
      Hint = #1055#1086' '#1082#1088#1077#1076#1080#1090#1072#1084
      Visible = ivAlways
    end
    object dxBarButton49: TdxBarButton
      Caption = #1056#1072#1089#1095#1077#1090' '#1089' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072#1084#1080' '#1087#1086' '#1085#1072#1080#1084'.'
      Category = 0
      Hint = #1056#1072#1089#1095#1077#1090' '#1089' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072#1084#1080' '#1087#1086' '#1085#1072#1080#1084'.'
      Visible = ivAlways
    end
    object dxBarButton50: TdxBarButton
      Caption = #1056#1072#1089#1095#1077#1090' '#1089' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072#1084#1080' '#1087#1086' '#1076#1086#1082'.'
      Category = 0
      Hint = #1056#1072#1089#1095#1077#1090' '#1089' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072#1084#1080' '#1087#1086' '#1076#1086#1082'.'
      Visible = ivAlways
    end
    object dxBarButton51: TdxBarButton
      Caption = #1056#1072#1089#1095#1077#1090' '#1089' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072#1084#1080' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      Category = 0
      Hint = #1056#1072#1089#1095#1077#1090' '#1089' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072#1084#1080' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      Visible = ivAlways
    end
    object dxBarButton52: TdxBarButton
      Caption = #1056#1077#1077#1089#1090#1088' '#1087#1088#1080#1093#1086#1076#1072' '#1087#1086' '#1089#1082#1083#1072#1076#1072#1084
      Category = 0
      Hint = #1056#1077#1077#1089#1090#1088' '#1087#1088#1080#1093#1086#1076#1072' '#1087#1086' '#1089#1082#1083#1072#1076#1072#1084
      Visible = ivAlways
    end
    object dxBarButton53: TdxBarButton
      Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#1088#1072#1089#1093#1086#1076#1072
      Category = 0
      Hint = #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#1088#1072#1089#1093#1086#1076#1072
      Visible = ivAlways
    end
    object dxBarButton54: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object dxBarButton55: TdxBarButton
      Caption = #1057#1074#1086#1076#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100' '
      Category = 0
      Hint = #1057#1074#1086#1076#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100' '
      Visible = ivAlways
    end
    object dxBarButton56: TdxBarButton
      Caption = #1056#1072#1089#1096#1080#1092#1088#1086#1074#1082#1072' '#1087#1086' '#1089#1090#1086#1088'. '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103#1084
      Category = 0
      Hint = #1056#1072#1089#1096#1080#1092#1088#1086#1074#1082#1072' '#1087#1086' '#1089#1090#1086#1088'. '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103#1084
      Visible = ivAlways
    end
    object dxBarButton57: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object dxBarButton58: TdxBarButton
      Caption = #1055#1086' '#1076#1088#1072#1075'. '#1084#1077#1090#1072#1083#1083#1072#1084
      Category = 0
      Hint = #1055#1086' '#1076#1088#1072#1075'. '#1084#1077#1090#1072#1083#1083#1072#1084
      Visible = ivAlways
    end
    object dxBarButton59: TdxBarButton
      Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1058#1052#1062
      Category = 0
      Hint = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1058#1052#1062
      Visible = ivAlways
    end
    object dxBarButton60: TdxBarButton
      Caption = #1056#1072#1089#1093#1086#1076' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      Category = 0
      Hint = #1056#1072#1089#1093#1086#1076' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      Visible = ivAlways
    end
    object dxBarButton61: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object dxBarButton62: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object dxBarSubItem21: TdxBarSubItem
      Caption = #1057#1074#1086#1076#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100' '#1088#1072#1089#1093#1086#1076#1072
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton63'
        end
        item
          Visible = True
          ItemName = 'dxBarButton64'
        end
        item
          Visible = True
          ItemName = 'dxBarButton65'
        end>
    end
    object dxBarButton63: TdxBarButton
      Caption = #1087#1086' '#1076#1077#1073#1077#1090#1072#1084
      Category = 0
      Hint = #1087#1086' '#1076#1077#1073#1077#1090#1072#1084
      Visible = ivAlways
    end
    object dxBarButton64: TdxBarButton
      Caption = #1087#1086' '#1082#1088#1077#1076#1080#1090#1072#1084
      Category = 0
      Hint = #1087#1086' '#1082#1088#1077#1076#1080#1090#1072#1084
      Visible = ivAlways
    end
    object dxBarButton65: TdxBarButton
      Caption = #1087#1086' '#1089#1082#1083#1072#1076#1072#1084
      Category = 0
      Hint = #1087#1086' '#1089#1082#1083#1072#1076#1072#1084
      Visible = ivAlways
    end
    object dxBarSubItem22: TdxBarSubItem
      Caption = #1057#1074#1086#1076#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100' '#1087#1088#1080#1093#1086#1076#1072
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton66'
        end
        item
          Visible = True
          ItemName = 'dxBarButton67'
        end
        item
          Visible = True
          ItemName = 'dxBarButton68'
        end>
    end
    object dxBarButton66: TdxBarButton
      Caption = #1087#1086' '#1076#1077#1073#1077#1090#1072#1084
      Category = 0
      Hint = #1087#1086' '#1076#1077#1073#1077#1090#1072#1084
      Visible = ivAlways
    end
    object dxBarButton67: TdxBarButton
      Caption = #1087#1086' '#1082#1088#1077#1076#1080#1090#1072#1084
      Category = 0
      Hint = #1087#1086' '#1082#1088#1077#1076#1080#1090#1072#1084
      Visible = ivAlways
    end
    object dxBarButton68: TdxBarButton
      Caption = #1087#1086' '#1089#1082#1083#1072#1076#1072#1084
      Category = 0
      Hint = #1087#1086' '#1089#1082#1083#1072#1076#1072#1084
      Visible = ivAlways
    end
    object dxBarSubItem23: TdxBarSubItem
      Caption = #1056#1077#1077#1089#1090#1088' '#1088#1072#1089#1093#1086#1076#1072
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton69'
        end
        item
          Visible = True
          ItemName = 'dxBarButton70'
        end
        item
          Visible = True
          ItemName = 'dxBarButton71'
        end
        item
          Visible = True
          ItemName = 'dxBarButton72'
        end
        item
          Visible = True
          ItemName = 'dxBarButton73'
        end
        item
          Visible = True
          ItemName = 'dxBarButton74'
        end>
    end
    object dxBarButton69: TdxBarButton
      Caption = #1087#1086' '#1089#1082#1083#1072#1076#1072#1084
      Category = 0
      Hint = #1087#1086' '#1089#1082#1083#1072#1076#1072#1084
      Visible = ivAlways
    end
    object dxBarButton70: TdxBarButton
      Caption = #1087#1086' '#1094#1077#1093#1072#1084
      Category = 0
      Hint = #1087#1086' '#1094#1077#1093#1072#1084
      Visible = ivAlways
    end
    object dxBarButton71: TdxBarButton
      Caption = #1085#1072' '#1089#1090#1086#1088#1086#1085#1091' '#1087#1086' '#1089#1082#1083#1072#1076#1072#1084
      Category = 0
      Hint = #1085#1072' '#1089#1090#1086#1088#1086#1085#1091' '#1087#1086' '#1089#1082#1083#1072#1076#1072#1084
      Visible = ivAlways
    end
    object dxBarButton72: TdxBarButton
      Caption = #1085#1072' '#1089#1090#1086#1088#1086#1085#1091' '#1087#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1102
      Category = 0
      Hint = #1085#1072' '#1089#1090#1086#1088#1086#1085#1091' '#1087#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1102
      Visible = ivAlways
    end
    object dxBarButton73: TdxBarButton
      Caption = #1079#1072' '#1085#1072#1083'. '#1088#1072#1089#1095#1077#1090
      Category = 0
      Hint = #1079#1072' '#1085#1072#1083'. '#1088#1072#1089#1095#1077#1090
      Visible = ivAlways
    end
    object dxBarButton74: TdxBarButton
      Caption = #1089#1082#1083#1072#1076#1089#1082#1080#1093' '#1080' '#1088#1077#1075#1080#1089#1090#1088#1072' '#1085#1086#1084#1077#1088#1086#1074
      Category = 0
      Hint = #1089#1082#1083#1072#1076#1089#1082#1080#1093' '#1080' '#1088#1077#1075#1080#1089#1090#1088#1072' '#1085#1086#1084#1077#1088#1086#1074
      Visible = ivAlways
    end
    object dxBarButton75: TdxBarButton
      Caption = #1053#1086#1074#1099#1081' '#1084#1077#1089#1103#1094
      Category = 0
      Hint = #1053#1086#1074#1099#1081' '#1084#1077#1089#1103#1094
      Visible = ivAlways
    end
    object dxBarButton76: TdxBarButton
      Caption = #1053#1086#1074#1099#1081' '#1084#1077#1089#1103#1094
      Category = 0
      Hint = #1053#1086#1074#1099#1081' '#1084#1077#1089#1103#1094
      Visible = ivAlways
    end
    object dxBarButton77: TdxBarButton
      Caption = #1054#1073#1086#1088#1086#1090#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090' '#1076#1074#1080#1078'. '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074
      Category = 0
      Hint = #1054#1073#1086#1088#1086#1090#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090' '#1076#1074#1080#1078'. '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074
      Visible = ivAlways
    end
    object dxBarButton78: TdxBarButton
      Caption = #1054#1073#1086#1088#1086#1090#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090' '#1076#1074#1080#1078'. '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074' ('#1087#1086#1083#1085')'
      Category = 0
      Hint = #1054#1073#1086#1088#1086#1090#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090' '#1076#1074#1080#1078'. '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074' ('#1087#1086#1083#1085')'
      Visible = ivAlways
    end
    object dxBarSubItem24: TdxBarSubItem
      Caption = #1057#1074#1086#1076#1085#1072' '#1074#1077#1076#1086#1084#1086#1089#1090#1100' '#1076#1074#1080#1078#1077#1085#1080#1103
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton79'
        end
        item
          Visible = True
          ItemName = 'dxBarButton80'
        end
        item
          Visible = True
          ItemName = 'dxBarButton81'
        end>
    end
    object dxBarButton79: TdxBarButton
      Caption = #1087#1086' '#1089#1082#1083#1072#1076#1072#1084
      Category = 0
      Hint = #1087#1086' '#1089#1082#1083#1072#1076#1072#1084
      Visible = ivAlways
    end
    object dxBarButton80: TdxBarButton
      Caption = #1087#1086' '#1089#1095#1077#1090#1072#1084
      Category = 0
      Hint = #1087#1086' '#1089#1095#1077#1090#1072#1084
      Visible = ivAlways
    end
    object dxBarButton81: TdxBarButton
      Caption = #1054#1073#1097#1072#1103
      Category = 0
      Hint = #1054#1073#1097#1072#1103
      Visible = ivAlways
    end
    object dxBarButton82: TdxBarButton
      Caption = #1054#1073#1086#1088#1086#1090#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090' '#1076#1074#1080#1078'. '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074' '#1079#1072' '#1087#1077#1088#1080#1086#1076' ('#1087#1086#1083#1085')'
      Category = 0
      Hint = #1054#1073#1086#1088#1086#1090#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090' '#1076#1074#1080#1078'. '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074' '#1079#1072' '#1087#1077#1088#1080#1086#1076' ('#1087#1086#1083#1085')'
      Visible = ivAlways
    end
    object dxBarButton83: TdxBarButton
      Caption = #1054#1073#1086#1088#1086#1090#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090' '#1076#1074#1080#1078'. '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      Category = 0
      Hint = #1054#1073#1086#1088#1086#1090#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090' '#1076#1074#1080#1078'. '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      Visible = ivAlways
    end
    object dxBarSubItem25: TdxBarSubItem
      Caption = #1057#1074#1086#1076#1085#1072' '#1074#1077#1076#1086#1084#1086#1089#1090#1100' '#1076#1074#1080#1078#1077#1085#1080#1103' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton84'
        end
        item
          Visible = True
          ItemName = 'dxBarButton85'
        end>
    end
    object dxBarButton84: TdxBarButton
      Caption = #1087#1086' '#1089#1095#1077#1090#1072#1084
      Category = 0
      Hint = #1087#1086' '#1089#1095#1077#1090#1072#1084
      Visible = ivAlways
    end
    object dxBarButton85: TdxBarButton
      Caption = #1087#1086' '#1089#1082#1083#1072#1076#1072#1084
      Category = 0
      Hint = #1087#1086' '#1089#1082#1083#1072#1076#1072#1084
      Visible = ivAlways
    end
    object dxBarButton86: TdxBarButton
      Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#1087#1086' '#1089#1082#1083#1072#1076#1072#1084
      Category = 0
      Hint = #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#1087#1086' '#1089#1082#1083#1072#1076#1072#1084
      Visible = ivAlways
    end
    object dxBarButton87: TdxBarButton
      Caption = #1055#1086' '#1076#1088#1072#1075#1084#1077#1090#1072#1083#1083#1072#1084
      Category = 0
      Hint = #1055#1086' '#1076#1088#1072#1075#1084#1077#1090#1072#1083#1083#1072#1084
      Visible = ivAlways
    end
    object dxBarButton88: TdxBarButton
      Caption = #1054#1096#1080#1073#1082#1080' '#1087#1086' '#1086#1089#1090#1072#1090#1072#1082#1072#1084
      Category = 0
      Hint = #1054#1096#1080#1073#1082#1080' '#1087#1086' '#1086#1089#1090#1072#1090#1072#1082#1072#1084
      Visible = ivAlways
    end
    object dxBarButton89: TdxBarButton
      Caption = #1048#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1103
      Category = 0
      Hint = #1048#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1103
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1088#1080#1085#1090#1077#1088#1072
      Category = 0
      Hint = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1088#1080#1085#1090#1077#1088#1072
      Visible = ivAlways
    end
    object dxBarButton90: TdxBarButton
      Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
      Category = 0
      Hint = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
      Visible = ivAlways
    end
    object dxBarButton91: TdxBarButton
      Caption = #1053#1072#1080#1084'. '#1090#1086#1074#1072#1088#1072
      Category = 0
      Hint = #1053#1072#1080#1084'. '#1090#1086#1074#1072#1088#1072
      Visible = ivAlways
    end
    object dxBarButton92: TdxBarButton
      Caption = #1045#1076'. '#1080#1079#1084#1077#1088#1077#1085#1080#1103
      Category = 0
      Hint = #1045#1076'. '#1080#1079#1084#1077#1088#1077#1085#1080#1103
      Visible = ivAlways
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1053#1086#1074#1099#1081' '#1087#1086#1076'-'#1101#1083#1077#1084#1077#1085#1090
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton93: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object dxBarSubItem7: TdxBarSubItem
      Caption = #1053#1086#1074#1099#1081' '#1087#1086#1076'-'#1101#1083#1077#1084#1077#1085#1090
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton94: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object dxBarButton96: TdxBarButton
      Caption = #1053#1086#1074#1099#1081' '#1090#1077#1085#1076#1077#1088
      Category = 0
      Hint = #1053#1086#1074#1099#1081' '#1090#1077#1085#1076#1077#1088
      Visible = ivAlways
    end
    object dxBarButton97: TdxBarButton
      Caption = #1046#1091#1088#1085#1072#1083' '#1090#1077#1085#1076#1077#1088#1110#1074
      Category = 0
      Hint = #1046#1091#1088#1085#1072#1083' '#1090#1077#1085#1076#1077#1088#1110#1074
      Visible = ivAlways
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = #1053#1086#1074#1099#1081' '#1087#1086#1076'-'#1101#1083#1077#1084#1077#1085#1090
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton98: TdxBarButton
      Caption = #1053#1086#1074#1080#1081' '#1090#1077#1085#1076#1077#1088
      Category = 0
      Hint = #1053#1086#1074#1080#1081' '#1090#1077#1085#1076#1077#1088
      Visible = ivNever
    end
    object dxBarSubItem9: TdxBarSubItem
      Caption = #1047#1074#1110#1090#1080
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton101: TdxBarButton
      Caption = #1044#1086#1074#1110#1076#1085#1080#1082' '#1053#1086#1090#1072#1090#1082#1080
      Category = 0
      Hint = #1044#1086#1074#1110#1076#1085#1080#1082' '#1053#1086#1090#1072#1090#1082#1080
      Visible = ivAlways
      OnClick = dxBarButton101Click
    end
    object dxBarButton102: TdxBarButton
      Caption = #1044#1086#1074#1110#1076#1085#1080#1082' '#1082#1086#1088#1080#1089#1090#1091#1074#1072#1095#1110
      Category = 0
      Hint = #1044#1086#1074#1110#1076#1085#1080#1082' '#1082#1086#1088#1080#1089#1090#1091#1074#1072#1095#1110
      Visible = ivAlways
    end
    object dxBarButton99: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object dxBarSubItem10: TdxBarSubItem
      Caption = #1053#1086#1074#1099#1081' '#1087#1086#1076'-'#1101#1083#1077#1084#1077#1085#1090
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton100: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object dxBarButton103: TdxBarButton
      Caption = #1047#1074#1110#1090#1080
      Category = 0
      Hint = #1047#1074#1110#1090#1080
      Visible = ivAlways
    end
    object dxBarSubItem11: TdxBarSubItem
      Caption = #1053#1086#1074#1099#1081' '#1087#1086#1076'-'#1101#1083#1077#1084#1077#1085#1090
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton104: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object dxBarButton105: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object dxBarSubItem12: TdxBarSubItem
      Caption = #1053#1086#1074#1099#1081' '#1087#1086#1076'-'#1101#1083#1077#1084#1077#1085#1090
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarSubItem13: TdxBarSubItem
      Caption = #1047#1074#1110#1090#1080
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton106: TdxBarButton
      Caption = #1047#1074#1110#1090' '#1087#1086' '#1087#1077#1088#1077#1084#1086#1078#1094#1103#1084
      Category = 0
      Hint = #1047#1074#1110#1090' '#1087#1086' '#1087#1077#1088#1077#1084#1086#1078#1094#1103#1084
      Visible = ivAlways
    end
    object dxBarButton107: TdxBarButton
      Caption = #1044#1086#1074#1110#1076#1085#1080#1082' '#1079#1072#1103#1074#1086#1082
      Category = 0
      Hint = #1044#1086#1074#1110#1076#1085#1080#1082' '#1079#1072#1103#1074#1086#1082
      Visible = ivAlways
    end
    object dxBarButton108: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object dxBarButton109: TdxBarButton
      Caption = #1059#1084#1086#1074#1080' '#1087#1086#1089#1090#1072#1074#1082#1080
      Category = 0
      Hint = #1059#1084#1086#1074#1080' '#1087#1086#1089#1090#1072#1074#1082#1080
      Visible = ivAlways
    end
    object dxBarButton110: TdxBarButton
      Caption = #1044#1078#1077#1088#1077#1083#1086' '#1110#1085#1092#1086#1088#1084#1072#1094#1110#1111
      Category = 0
      Hint = #1044#1078#1077#1088#1077#1083#1086' '#1110#1085#1092#1086#1088#1084#1072#1094#1110#1111
      Visible = ivAlways
    end
    object dxBarButton111: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object dxBarButton112: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object dxBarSubItem26: TdxBarSubItem
      Caption = #1053#1086#1074#1099#1081' '#1087#1086#1076'-'#1101#1083#1077#1084#1077#1085#1090
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarEdit1: TdxBarEdit
      Caption = #1053#1086#1074#1099#1081' '#1101#1083#1077#1084#1077#1085#1090
      Category = 0
      Description = 'xcbfgb'
      Hint = #1053#1086#1074#1099#1081' '#1101#1083#1077#1084#1077#1085#1090
      Visible = ivAlways
      Text = 'dsfgsdfg'
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = #1053#1086#1074#1099#1081' '#1101#1083#1077#1084#1077#1085#1090
      Category = 0
      Hint = #1053#1086#1074#1099#1081' '#1101#1083#1077#1084#1077#1085#1090
      Visible = ivAlways
      PropertiesClassName = 'TcxTextEditProperties'
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = #1053#1086#1074#1099#1081' '#1101#1083#1077#1084#1077#1085#1090
      Category = 0
      Hint = #1053#1086#1074#1099#1081' '#1101#1083#1077#1084#1077#1085#1090
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object dxBarButton113: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object cxBarEditItem3: TcxBarEditItem
      Caption = #1053#1086#1074#1099#1081' '#1101#1083#1077#1084#1077#1085#1090
      Category = 0
      Hint = #1053#1086#1074#1099#1081' '#1101#1083#1077#1084#1077#1085#1090
      Visible = ivAlways
      PropertiesClassName = 'TcxBlobEditProperties'
      Properties.BlobEditKind = bekBlob
    end
    object cxBarEditItem4: TcxBarEditItem
      Caption = #1053#1086#1074#1099#1081' '#1101#1083#1077#1084#1077#1085#1090
      Category = 0
      Hint = #1053#1086#1074#1099#1081' '#1101#1083#1077#1084#1077#1085#1090
      Visible = ivAlways
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
    end
    object dxBarEdit2: TdxBarEdit
      Caption = #1053#1086#1074#1099#1081' '#1101#1083#1077#1084#1077#1085#1090
      Category = 0
      Hint = #1053#1086#1074#1099#1081' '#1101#1083#1077#1084#1077#1085#1090
      Visible = ivAlways
      Text = '1111111'
    end
    object cxBarEditItem5: TcxBarEditItem
      Align = iaRight
      Caption = #1053#1086#1074#1099#1081' '#1101#1083#1077#1084#1077#1085#1090
      Category = 0
      Hint = #1053#1086#1074#1099#1081' '#1101#1083#1077#1084#1077#1085#1090
      Visible = ivAlways
      PropertiesClassName = 'TcxTextEditProperties'
      InternalEditValue = ''
    end
    object cxBarEditItem6: TcxBarEditItem
      Align = iaRight
      Caption = #1053#1086#1074#1099#1081' '#1101#1083#1077#1084#1077#1085#1090
      Category = 0
      Hint = #1053#1086#1074#1099#1081' '#1101#1083#1077#1084#1077#1085#1090
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object dxBarButton114: TdxBarButton
      Caption = #1044#1086#1074#1110#1076#1085#1080#1082' '#1072#1076#1084#1110#1085#1110#1089#1090#1088#1072#1090#1086#1088#1072
      Category = 0
      Hint = #1044#1086#1074#1110#1076#1085#1080#1082' '#1072#1076#1084#1110#1085#1110#1089#1090#1088#1072#1090#1086#1088#1072
      Visible = ivAlways
      OnClick = dxBarButton114Click
    end
    object dxBarButton115: TdxBarButton
      Caption = #1047#1074#1110#1090' '#1087#1086' '#1058#1052#1062' '
      Category = 0
      Hint = #1047#1074#1110#1090' '#1087#1086' '#1058#1052#1062' '
      Visible = ivAlways
    end
    object dxBarButton116: TdxBarButton
      Caption = #1047#1074#1110#1090' '#1087#1086' '#1079#1072#1103#1074#1082#1072#1084
      Category = 0
      Hint = #1047#1074#1110#1090' '#1087#1086' '#1079#1072#1103#1074#1082#1072#1084
      Visible = ivAlways
    end
    object dxBarButton117: TdxBarButton
      Caption = #1047#1074#1110#1090' '#1087#1086' '#1074#1089#1080#1084' '#1079#1072#1103#1074#1082#1072#1084' '#1079#1072' '#1087#1077#1088#1110#1086#1076
      Category = 0
      Hint = #1047#1074#1110#1090' '#1087#1086' '#1074#1089#1080#1084' '#1079#1072#1103#1074#1082#1072#1084' '#1079#1072' '#1087#1077#1088#1110#1086#1076
      Visible = ivAlways
    end
    object dxBarButton118: TdxBarButton
      Caption = #1050#1072#1088#1090#1082#1072' '#1072#1073#1086#1085#1077#1085#1090#1072
      Category = 0
      Hint = #1050#1072#1088#1090#1082#1072' '#1072#1073#1086#1085#1077#1085#1090#1072
      Visible = ivAlways
      OnClick = dxBarButton118Click
    end
  end
  object IBPERIOD: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
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
      
        'select * from (select FIRST 6 *  from PERIOD order by PERIOD des' +
        'c) order by PERIOD')
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
    Left = 32
    Top = 472
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
    Left = 32
    Top = 520
  end
  object IBKART: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from kart'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into kart'
      
        '  (DOM, FIO, IDCOD, KL, KOLI_P, KOLI_PF, KV, LGOTA, PLOS_BB, PLO' +
        'S_OB, PRIVAT, '
      '   SCHET, UL, VAL, WID)'
      'values'
      
        '  (:DOM, :FIO, :IDCOD, :KL, :KOLI_P, :KOLI_PF, :KV, :LGOTA, :PLO' +
        'S_BB, :PLOS_OB, '
      '   :PRIVAT, :SCHET, :UL, :VAL, :WID)')
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
      '  KOLI_PF,'
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
      '  KOLI_PF = :KOLI_PF,'
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
    Left = 96
    Top = 472
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
      Size = 40
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
    object IBKARTPRIVAT: TIBStringField
      FieldName = 'PRIVAT'
      Origin = '"KART"."PRIVAT"'
      Size = 10
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
    Enabled = False
    Left = 96
    Top = 520
  end
  object IBOBOR: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from obor'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into obor'
      
        '  (D_DOG, DOLG, FULLOPL, KL, KOMP, MOVW, N_DOG, NACH, OPL, PERE,' +
        ' PERIOD, '
      '   SAL, SCHET, SUBS, TARIF, UDER, WID, WOZW, WZMZ)'
      'values'
      
        '  (:D_DOG, :DOLG, :FULLOPL, :KL, :KOMP, :MOVW, :N_DOG, :NACH, :O' +
        'PL, :PERE, '
      
        '   :PERIOD, :SAL, :SCHET, :SUBS, :TARIF, :UDER, :WID, :WOZW, :WZ' +
        'MZ)')
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
      '  FULLOPL,'
      '  SAL'
      'from obor '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select *  from obor')
    ModifySQL.Strings = (
      'update obor'
      'set'
      '  D_DOG = :D_DOG,'
      '  DOLG = :DOLG,'
      '  FULLOPL = :FULLOPL,'
      '  KL = :KL,'
      '  KOMP = :KOMP,'
      '  MOVW = :MOVW,'
      '  N_DOG = :N_DOG,'
      '  NACH = :NACH,'
      '  OPL = :OPL,'
      '  PERE = :PERE,'
      '  PERIOD = :PERIOD,'
      '  SAL = :SAL,'
      '  SCHET = :SCHET,'
      '  SUBS = :SUBS,'
      '  TARIF = :TARIF,'
      '  UDER = :UDER,'
      '  WID = :WID,'
      '  WOZW = :WOZW,'
      '  WZMZ = :WZMZ'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_OBOR_ID'
    Left = 160
    Top = 472
    object IBOBORKL: TIntegerField
      FieldName = 'KL'
      Origin = '"OBOR"."KL"'
      Required = True
    end
    object IBOBORPERIOD: TDateField
      FieldName = 'PERIOD'
      Origin = '"OBOR"."PERIOD"'
    end
    object IBOBORSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"OBOR"."SCHET"'
      Size = 10
    end
    object IBOBORWID: TIBStringField
      FieldName = 'WID'
      Origin = '"OBOR"."WID"'
      Size = 10
    end
    object IBOBORN_DOG: TIBStringField
      FieldName = 'N_DOG'
      Origin = '"OBOR"."N_DOG"'
      Size = 10
    end
    object IBOBORD_DOG: TIBStringField
      FieldName = 'D_DOG'
      Origin = '"OBOR"."D_DOG"'
      Size = 10
    end
    object IBOBORTARIF: TIBBCDField
      FieldName = 'TARIF'
      Origin = '"OBOR"."TARIF"'
      Precision = 18
      Size = 2
    end
    object IBOBORDOLG: TIBBCDField
      FieldName = 'DOLG'
      Origin = '"OBOR"."DOLG"'
      Precision = 18
      Size = 2
    end
    object IBOBORNACH: TIBBCDField
      FieldName = 'NACH'
      Origin = '"OBOR"."NACH"'
      Precision = 18
      Size = 2
    end
    object IBOBORSUBS: TIBBCDField
      FieldName = 'SUBS'
      Origin = '"OBOR"."SUBS"'
      Precision = 18
      Size = 2
    end
    object IBOBOROPL: TIBBCDField
      FieldName = 'OPL'
      Origin = '"OBOR"."OPL"'
      Precision = 18
      Size = 2
    end
    object IBOBORUDER: TIBBCDField
      FieldName = 'UDER'
      Origin = '"OBOR"."UDER"'
      Precision = 18
      Size = 2
    end
    object IBOBORKOMP: TIBBCDField
      FieldName = 'KOMP'
      Origin = '"OBOR"."KOMP"'
      Precision = 18
      Size = 2
    end
    object IBOBORWZMZ: TIBBCDField
      FieldName = 'WZMZ'
      Origin = '"OBOR"."WZMZ"'
      Precision = 18
      Size = 2
    end
    object IBOBORWOZW: TIBBCDField
      FieldName = 'WOZW'
      Origin = '"OBOR"."WOZW"'
      Precision = 18
      Size = 2
    end
    object IBOBORMOVW: TIBBCDField
      FieldName = 'MOVW'
      Origin = '"OBOR"."MOVW"'
      Precision = 18
      Size = 2
    end
    object IBOBORPERE: TIBBCDField
      FieldName = 'PERE'
      Origin = '"OBOR"."PERE"'
      Precision = 18
      Size = 2
    end
    object IBOBORFULLOPL: TIBBCDField
      FieldName = 'FULLOPL'
      Origin = '"OBOR"."FULLOPL"'
      Precision = 18
      Size = 2
    end
    object IBOBORSAL: TIBBCDField
      FieldName = 'SAL'
      Origin = '"OBOR"."SAL"'
      Precision = 18
      Size = 2
    end
  end
  object DSOBOR: TDataSource
    DataSet = IBOBOR
    Enabled = False
    Left = 160
    Top = 520
  end
  object ADOOBOR: TADODataSet
    Connection = ADOConnectionARC
    CursorType = ctStatic
    CommandText = 'select * from obor order by schet, wid'
    Parameters = <>
    Left = 632
    Top = 240
  end
  object DataSourceOBOR: TDataSource
    DataSet = ADOOBOR
    Enabled = False
    Left = 672
    Top = 192
  end
  object ADOConnectionDBF: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=d:\WO' +
      'RK\KOMUN\kvpl\dbf\;Mode=Read;Jet OLEDB:System database="";Jet OL' +
      'EDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:En' +
      'gine Type=16;Jet OLEDB:Database Locking Mode=0;Jet OLEDB:Global ' +
      'Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLED' +
      'B:New Database Password="";Jet OLEDB:Create System Database=Fals' +
      'e;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale o' +
      'n Compact=False;Jet OLEDB:Compact Without Replica Repair=False;J' +
      'et OLEDB:SFP=False;'
    LoginPrompt = False
    Mode = cmRead
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 464
    Top = 200
  end
  object IBTMPKART: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TMPKART'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into TMPKART'
      
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
      'from TMPKART '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      ' select * from TMPKART')
    ModifySQL.Strings = (
      'update TMPKART'
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
    GeneratorField.Generator = 'GEN_TMPKART_ID'
    Left = 304
    Top = 472
    object IBTMPKARTKL: TIntegerField
      FieldName = 'KL'
      Origin = '"TMPKART"."KL"'
      Required = True
    end
    object IBTMPKARTSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"TMPKART"."SCHET"'
      Size = 10
    end
    object IBTMPKARTWID: TIBStringField
      FieldName = 'WID'
      Origin = '"TMPKART"."WID"'
      Size = 10
    end
    object IBTMPKARTFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"TMPKART"."FIO"'
      Size = 70
    end
    object IBTMPKARTIDCOD: TIBStringField
      FieldName = 'IDCOD'
      Origin = '"TMPKART"."IDCOD"'
      Size = 40
    end
    object IBTMPKARTUL: TIBStringField
      FieldName = 'UL'
      Origin = '"TMPKART"."UL"'
      Size = 70
    end
    object IBTMPKARTDOM: TIBStringField
      FieldName = 'DOM'
      Origin = '"TMPKART"."DOM"'
      Size = 10
    end
    object IBTMPKARTKV: TIBStringField
      FieldName = 'KV'
      Origin = '"TMPKART"."KV"'
      Size = 10
    end
    object IBTMPKARTLGOTA: TIBStringField
      FieldName = 'LGOTA'
      Origin = '"TMPKART"."LGOTA"'
      Size = 10
    end
    object IBTMPKARTKOLI_P: TIntegerField
      FieldName = 'KOLI_P'
      Origin = '"TMPKART"."KOLI_P"'
    end
    object IBTMPKARTPLOS_OB: TIBBCDField
      FieldName = 'PLOS_OB'
      Origin = '"TMPKART"."PLOS_OB"'
      Precision = 9
      Size = 2
    end
    object IBTMPKARTPLOS_BB: TIBBCDField
      FieldName = 'PLOS_BB'
      Origin = '"TMPKART"."PLOS_BB"'
      Precision = 9
      Size = 2
    end
    object IBTMPKARTPRIVAT: TIBStringField
      FieldName = 'PRIVAT'
      Origin = '"TMPKART"."PRIVAT"'
      Size = 10
    end
    object IBTMPKARTVAL: TIntegerField
      FieldName = 'VAL'
      Origin = '"TMPKART"."VAL"'
    end
  end
  object DSTMPKART: TDataSource
    DataSet = IBTMPKART
    Enabled = False
    Left = 304
    Top = 520
  end
  object IBTMPNACH: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TMPNACH'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into TMPNACH'
      '  (FIO, KL, LGOTA, SCHET, SUMM, TARIF, WID)'
      'values'
      '  (:FIO, :KL, :LGOTA, :SCHET, :SUMM, :TARIF, :WID)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  SCHET,'
      '  WID,'
      '  FIO,'
      '  LGOTA,'
      '  TARIF,'
      '  SUMM'
      'from TMPNACH '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      ' select * from TMPNACH')
    ModifySQL.Strings = (
      'update TMPNACH'
      'set'
      '  FIO = :FIO,'
      '  KL = :KL,'
      '  LGOTA = :LGOTA,'
      '  SCHET = :SCHET,'
      '  SUMM = :SUMM,'
      '  TARIF = :TARIF,'
      '  WID = :WID'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_TMPNACH_ID'
    Left = 360
    Top = 472
    object IBTMPNACHKL: TIntegerField
      FieldName = 'KL'
      Origin = '"TMPNACH"."KL"'
      Required = True
    end
    object IBTMPNACHSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"TMPNACH"."SCHET"'
      Size = 10
    end
    object IBTMPNACHWID: TIBStringField
      FieldName = 'WID'
      Origin = '"TMPNACH"."WID"'
      Size = 10
    end
    object IBTMPNACHFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"TMPNACH"."FIO"'
      Size = 70
    end
    object IBTMPNACHLGOTA: TIBStringField
      FieldName = 'LGOTA'
      Origin = '"TMPNACH"."LGOTA"'
      Size = 10
    end
    object IBTMPNACHTARIF: TIBBCDField
      FieldName = 'TARIF'
      Origin = '"TMPNACH"."TARIF"'
      Precision = 18
      Size = 2
    end
    object IBTMPNACHSUMM: TIBBCDField
      FieldName = 'SUMM'
      Origin = '"TMPNACH"."SUMM"'
      Precision = 18
      Size = 2
    end
  end
  object DSTMPNACH: TDataSource
    DataSet = IBTMPNACH
    Enabled = False
    Left = 360
    Top = 520
  end
  object IBOBORMES: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from OBORMES'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into OBORMES'
      
        '  (D_DOG, DOLG, FULLOPL, KL, KOMP, MOVW, N_DOG, NACH, OPL, PERE,' +
        ' SAL, SCHET, '
      '   SUBS, TARIF, UDER, WID, WOZW, WZMZ)'
      'values'
      
        '  (:D_DOG, :DOLG, :FULLOPL, :KL, :KOMP, :MOVW, :N_DOG, :NACH, :O' +
        'PL, :PERE, '
      '   :SAL, :SCHET, :SUBS, :TARIF, :UDER, :WID, :WOZW, :WZMZ)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
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
      '  FULLOPL,'
      '  SAL'
      'from OBORMES '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      ' select * from OBORMES')
    ModifySQL.Strings = (
      'update OBORMES'
      'set'
      '  D_DOG = :D_DOG,'
      '  DOLG = :DOLG,'
      '  FULLOPL = :FULLOPL,'
      '  KL = :KL,'
      '  KOMP = :KOMP,'
      '  MOVW = :MOVW,'
      '  N_DOG = :N_DOG,'
      '  NACH = :NACH,'
      '  OPL = :OPL,'
      '  PERE = :PERE,'
      '  SAL = :SAL,'
      '  SCHET = :SCHET,'
      '  SUBS = :SUBS,'
      '  TARIF = :TARIF,'
      '  UDER = :UDER,'
      '  WID = :WID,'
      '  WOZW = :WOZW,'
      '  WZMZ = :WZMZ'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_OBORMES_ID'
    Left = 216
    Top = 472
    object IBOBORMESKL: TIntegerField
      FieldName = 'KL'
      Origin = '"OBORMES"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBOBORMESSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"OBORMES"."SCHET"'
      Size = 10
    end
    object IBOBORMESWID: TIBStringField
      FieldName = 'WID'
      Origin = '"OBORMES"."WID"'
      Size = 10
    end
    object IBOBORMESN_DOG: TIBStringField
      FieldName = 'N_DOG'
      Origin = '"OBORMES"."N_DOG"'
      Size = 10
    end
    object IBOBORMESD_DOG: TIBStringField
      FieldName = 'D_DOG'
      Origin = '"OBORMES"."D_DOG"'
      Size = 10
    end
    object IBOBORMESTARIF: TIBBCDField
      FieldName = 'TARIF'
      Origin = '"OBORMES"."TARIF"'
      Precision = 18
      Size = 2
    end
    object IBOBORMESDOLG: TIBBCDField
      FieldName = 'DOLG'
      Origin = '"OBORMES"."DOLG"'
      Precision = 18
      Size = 2
    end
    object IBOBORMESNACH: TIBBCDField
      FieldName = 'NACH'
      Origin = '"OBORMES"."NACH"'
      Precision = 18
      Size = 2
    end
    object IBOBORMESSUBS: TIBBCDField
      FieldName = 'SUBS'
      Origin = '"OBORMES"."SUBS"'
      Precision = 18
      Size = 2
    end
    object IBOBORMESOPL: TIBBCDField
      FieldName = 'OPL'
      Origin = '"OBORMES"."OPL"'
      Precision = 18
      Size = 2
    end
    object IBOBORMESUDER: TIBBCDField
      FieldName = 'UDER'
      Origin = '"OBORMES"."UDER"'
      Precision = 18
      Size = 2
    end
    object IBOBORMESKOMP: TIBBCDField
      FieldName = 'KOMP'
      Origin = '"OBORMES"."KOMP"'
      Precision = 18
      Size = 2
    end
    object IBOBORMESWZMZ: TIBBCDField
      FieldName = 'WZMZ'
      Origin = '"OBORMES"."WZMZ"'
      Precision = 18
      Size = 2
    end
    object IBOBORMESWOZW: TIBBCDField
      FieldName = 'WOZW'
      Origin = '"OBORMES"."WOZW"'
      Precision = 18
      Size = 2
    end
    object IBOBORMESMOVW: TIBBCDField
      FieldName = 'MOVW'
      Origin = '"OBORMES"."MOVW"'
      Precision = 18
      Size = 2
    end
    object IBOBORMESPERE: TIBBCDField
      FieldName = 'PERE'
      Origin = '"OBORMES"."PERE"'
      Precision = 18
      Size = 2
    end
    object IBOBORMESFULLOPL: TIBBCDField
      FieldName = 'FULLOPL'
      Origin = '"OBORMES"."FULLOPL"'
      Precision = 18
      Size = 2
    end
    object IBOBORMESSAL: TIBBCDField
      FieldName = 'SAL'
      Origin = '"OBORMES"."SAL"'
      Precision = 18
      Size = 2
    end
  end
  object DSOBORMES: TDataSource
    DataSet = IBOBORMES
    Enabled = False
    Left = 216
    Top = 520
  end
  object IBTMPOPL: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TMPOPL'
      'where'
      '  KL = :OLD_KL')
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
      '  KL = :KL')
    SelectSQL.Strings = (
      ' select * from TMPOPL')
    ModifySQL.Strings = (
      'update TMPOPL'
      'set'
      '  DT = :DT,'
      '  KL = :KL,'
      '  SCHET = :SCHET,'
      '  SUMM = :SUMM,'
      '  WID = :WID'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_TMPOPL_ID'
    Left = 432
    Top = 472
  end
  object DSTMPOPL: TDataSource
    DataSet = IBTMPOPL
    Enabled = False
    Left = 432
    Top = 520
  end
  object IBTMPSUBS: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TMPSUBS'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into TMPSUBS'
      '  (KL, OB, SCHET, SUMM, WID)'
      'values'
      '  (:KL, :OB, :SCHET, :SUMM, :WID)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  SCHET,'
      '  WID,'
      '  SUMM,'
      '  OB'
      'from TMPSUBS '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      ' select * from TMPSUBS')
    ModifySQL.Strings = (
      'update TMPSUBS'
      'set'
      '  KL = :KL,'
      '  OB = :OB,'
      '  SCHET = :SCHET,'
      '  SUMM = :SUMM,'
      '  WID = :WID'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_TMPSUBS_ID'
    Left = 488
    Top = 472
    object IBTMPSUBSKL: TIntegerField
      FieldName = 'KL'
      Origin = '"TMPSUBS"."KL"'
      Required = True
    end
    object IBTMPSUBSSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"TMPSUBS"."SCHET"'
      Size = 10
    end
    object IBTMPSUBSWID: TIBStringField
      FieldName = 'WID'
      Origin = '"TMPSUBS"."WID"'
      Size = 10
    end
    object IBTMPSUBSSUMM: TIBBCDField
      FieldName = 'SUMM'
      Origin = '"TMPSUBS"."SUMM"'
      Precision = 18
      Size = 2
    end
    object IBTMPSUBSOB: TIBBCDField
      FieldName = 'OB'
      Origin = '"TMPSUBS"."OB"'
      Precision = 18
      Size = 2
    end
  end
  object DSTMPSUBS: TDataSource
    DataSet = IBTMPSUBS
    Enabled = False
    Left = 488
    Top = 520
  end
  object IBTMPUDER: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TMPUDER'
      'where'
      '  KL = :OLD_KL')
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
      '  KL = :KL')
    SelectSQL.Strings = (
      ' select * from TMPUDER')
    ModifySQL.Strings = (
      'update TMPUDER'
      'set'
      '  KL = :KL,'
      '  SCHET = :SCHET,'
      '  SUMM = :SUMM,'
      '  WID = :WID'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_TMPUDER_ID'
    Left = 552
    Top = 472
    object IBTMPUDERKL: TIntegerField
      FieldName = 'KL'
      Origin = '"TMPUDER"."KL"'
      Required = True
    end
    object IBTMPUDERSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"TMPUDER"."SCHET"'
      Size = 10
    end
    object IBTMPUDERWID: TIBStringField
      FieldName = 'WID'
      Origin = '"TMPUDER"."WID"'
      Size = 10
    end
    object IBTMPUDERSUMM: TIBBCDField
      FieldName = 'SUMM'
      Origin = '"TMPUDER"."SUMM"'
      Precision = 18
      Size = 2
    end
  end
  object DSTMPUDER: TDataSource
    DataSet = IBTMPUDER
    Enabled = False
    Left = 552
    Top = 520
  end
  object ADONACH: TADODataSet
    Connection = ADOConnectionDBF
    CursorType = ctStatic
    CommandText = 'select * from  NACH where sum<>0 order by schet,wid'
    Parameters = <>
    Left = 352
    Top = 248
  end
  object DSADONACH: TDataSource
    DataSet = ADONACH
    Enabled = False
    Left = 352
    Top = 296
  end
  object ADOOBORMES: TADODataSet
    AutoCalcFields = False
    Connection = ADOConnectionDBF
    CursorType = ctStatic
    CommandText = 'select * from obor order by schet, wid'
    Parameters = <>
    Left = 216
    Top = 216
  end
  object DSADOOBORMES: TDataSource
    DataSet = ADOOBORMES
    Enabled = False
    Left = 240
    Top = 296
  end
  object ADOOPL: TADODataSet
    Connection = ADOConnectionDBF
    CursorType = ctStatic
    CommandText = 'select *  from OPL order by schet'
    Parameters = <>
    Left = 400
    Top = 248
  end
  object DSADOOPL: TDataSource
    DataSet = ADOOPL
    Enabled = False
    Left = 400
    Top = 296
  end
  object ADOSUBS: TADODataSet
    Connection = ADOConnectionDBF
    CursorType = ctStatic
    CommandText = 'select *  from SUBS order by schet'
    Parameters = <>
    Left = 456
    Top = 248
  end
  object DSADOSUBS: TDataSource
    DataSet = ADOSUBS
    Enabled = False
    Left = 456
    Top = 296
  end
  object ADOUDER: TADODataSet
    Connection = ADOConnectionDBF
    CursorType = ctStatic
    CommandText = 'select *  from UDER  where sum<>0 order by schet'
    Parameters = <>
    Left = 504
    Top = 248
  end
  object DSADOUDER: TDataSource
    DataSet = ADOUDER
    Enabled = False
    Left = 504
    Top = 296
  end
  object IBDataSet1: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TMPOBOR'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into TMPOBOR'
      
        '  (D_DOG, DOLG, FULLOPL, KL, KOMP, MOVW, N_DOG, NACH, OPL, PERE,' +
        ' SAL, SCHET, '
      '   SUBS, TARIF, UDER, WID, WOZW, WZMZ)'
      'values'
      
        '  (:D_DOG, :DOLG, :FULLOPL, :KL, :KOMP, :MOVW, :N_DOG, :NACH, :O' +
        'PL, :PERE, '
      '   :SAL, :SCHET, :SUBS, :TARIF, :UDER, :WID, :WOZW, :WZMZ)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
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
      '  FULLOPL,'
      '  SAL'
      'from TMPOBOR '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select * from TMPOBOR')
    ModifySQL.Strings = (
      'update TMPOBOR'
      'set'
      '  D_DOG = :D_DOG,'
      '  DOLG = :DOLG,'
      '  FULLOPL = :FULLOPL,'
      '  KL = :KL,'
      '  KOMP = :KOMP,'
      '  MOVW = :MOVW,'
      '  N_DOG = :N_DOG,'
      '  NACH = :NACH,'
      '  OPL = :OPL,'
      '  PERE = :PERE,'
      '  SAL = :SAL,'
      '  SCHET = :SCHET,'
      '  SUBS = :SUBS,'
      '  TARIF = :TARIF,'
      '  UDER = :UDER,'
      '  WID = :WID,'
      '  WOZW = :WOZW,'
      '  WZMZ = :WZMZ'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    Left = 416
    Top = 360
    object IBDataSet1KL: TIntegerField
      FieldName = 'KL'
      Origin = '"TMPOBOR"."KL"'
      Required = True
    end
    object IBDataSet1SCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"TMPOBOR"."SCHET"'
      Size = 10
    end
    object IBDataSet1WID: TIBStringField
      FieldName = 'WID'
      Origin = '"TMPOBOR"."WID"'
      Size = 10
    end
    object IBDataSet1N_DOG: TIBStringField
      FieldName = 'N_DOG'
      Origin = '"TMPOBOR"."N_DOG"'
      Size = 10
    end
    object IBDataSet1D_DOG: TIBStringField
      FieldName = 'D_DOG'
      Origin = '"TMPOBOR"."D_DOG"'
      Size = 10
    end
    object IBDataSet1TARIF: TIBBCDField
      FieldName = 'TARIF'
      Origin = '"TMPOBOR"."TARIF"'
      Precision = 18
      Size = 2
    end
    object IBDataSet1DOLG: TIBBCDField
      FieldName = 'DOLG'
      Origin = '"TMPOBOR"."DOLG"'
      Precision = 18
      Size = 2
    end
    object IBDataSet1NACH: TIBBCDField
      FieldName = 'NACH'
      Origin = '"TMPOBOR"."NACH"'
      Precision = 18
      Size = 2
    end
    object IBDataSet1SUBS: TIBBCDField
      FieldName = 'SUBS'
      Origin = '"TMPOBOR"."SUBS"'
      Precision = 18
      Size = 2
    end
    object IBDataSet1OPL: TIBBCDField
      FieldName = 'OPL'
      Origin = '"TMPOBOR"."OPL"'
      Precision = 18
      Size = 2
    end
    object IBDataSet1UDER: TIBBCDField
      FieldName = 'UDER'
      Origin = '"TMPOBOR"."UDER"'
      Precision = 18
      Size = 2
    end
    object IBDataSet1KOMP: TIBBCDField
      FieldName = 'KOMP'
      Origin = '"TMPOBOR"."KOMP"'
      Precision = 18
      Size = 2
    end
    object IBDataSet1WZMZ: TIBBCDField
      FieldName = 'WZMZ'
      Origin = '"TMPOBOR"."WZMZ"'
      Precision = 18
      Size = 2
    end
    object IBDataSet1WOZW: TIBBCDField
      FieldName = 'WOZW'
      Origin = '"TMPOBOR"."WOZW"'
      Precision = 18
      Size = 2
    end
    object IBDataSet1MOVW: TIBBCDField
      FieldName = 'MOVW'
      Origin = '"TMPOBOR"."MOVW"'
      Precision = 18
      Size = 2
    end
    object IBDataSet1PERE: TIBBCDField
      FieldName = 'PERE'
      Origin = '"TMPOBOR"."PERE"'
      Precision = 18
      Size = 2
    end
    object IBDataSet1FULLOPL: TIBBCDField
      FieldName = 'FULLOPL'
      Origin = '"TMPOBOR"."FULLOPL"'
      Precision = 18
      Size = 2
    end
    object IBDataSet1SAL: TIBBCDField
      FieldName = 'SAL'
      Origin = '"TMPOBOR"."SAL"'
      Precision = 18
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = IBDataSet1
    Left = 416
    Top = 416
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommitRetaining
    Left = 72
    Top = 240
  end
  object IBTransaction2: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = IBDatabase1
    Left = 16
    Top = 296
  end
  object ADOOBORREC: TADODataSet
    Connection = ADOConnectionDBF
    CursorType = ctStatic
    CommandText = 'select * from obor where obor.newrec=0 order by schet, wid'
    Parameters = <>
    Left = 288
    Top = 240
  end
  object DSADOOBORREC: TDataSource
    DataSet = ADOOBORREC
    Enabled = False
    Left = 288
    Top = 296
  end
  object IBTMPDATE: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TMPDATE'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into TMPDATE'
      '  (KL, PERIOD)'
      'values'
      '  (:KL, :PERIOD)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  PERIOD'
      'from TMPDATE '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      ' select * from TMPDATE')
    ModifySQL.Strings = (
      'update TMPDATE'
      'set'
      '  KL = :KL,'
      '  PERIOD = :PERIOD'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_TMPDATE_ID'
    Left = 616
    Top = 472
    object IBTMPDATEKL: TIntegerField
      FieldName = 'KL'
      Origin = '"TMPDATE"."KL"'
      Required = True
    end
    object IBTMPDATEPERIOD: TDateField
      FieldName = 'PERIOD'
      Origin = '"TMPDATE"."PERIOD"'
    end
  end
  object DSTMPDATE: TDataSource
    DataSet = IBTMPDATE
    Enabled = False
    Left = 616
    Top = 520
  end
  object IBDataSet2: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from NACH'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into NACH'
      '  (FIO, KL, LGOTA, SCHET, SUMM, TARIF, WID)'
      'values'
      '  (:FIO, :KL, :LGOTA, :SCHET, :SUMM, :TARIF, :WID)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  SCHET,'
      '  WID,'
      '  FIO,'
      '  LGOTA,'
      '  TARIF,'
      '  SUMM'
      'from NACH '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      ' select * from NACH')
    ModifySQL.Strings = (
      'update NACH'
      'set'
      '  FIO = :FIO,'
      '  KL = :KL,'
      '  LGOTA = :LGOTA,'
      '  SCHET = :SCHET,'
      '  SUMM = :SUMM,'
      '  TARIF = :TARIF,'
      '  WID = :WID'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_NACH_ID'
    Left = 680
    Top = 472
    object IBDataSet2KL: TIntegerField
      FieldName = 'KL'
      Origin = '"NACH"."KL"'
      Required = True
    end
    object IBDataSet2SCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"NACH"."SCHET"'
      Size = 10
    end
    object IBDataSet2WID: TIBStringField
      FieldName = 'WID'
      Origin = '"NACH"."WID"'
      Size = 10
    end
    object IBDataSet2FIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"NACH"."FIO"'
      Size = 70
    end
    object IBDataSet2LGOTA: TIBStringField
      FieldName = 'LGOTA'
      Origin = '"NACH"."LGOTA"'
      Size = 10
    end
    object IBDataSet2TARIF: TIBBCDField
      FieldName = 'TARIF'
      Origin = '"NACH"."TARIF"'
      Precision = 18
      Size = 2
    end
    object IBDataSet2SUMM: TIBBCDField
      FieldName = 'SUMM'
      Origin = '"NACH"."SUMM"'
      Precision = 18
      Size = 2
    end
  end
  object DataSource2: TDataSource
    DataSet = IBDataSet2
    Enabled = False
    Left = 680
    Top = 520
  end
  object ADOWID: TADODataSet
    Connection = ADOConnectionDBF
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'select *  from WIDS'
    Parameters = <>
    Left = 560
    Top = 248
  end
  object DSADOWID: TDataSource
    DataSet = ADOWID
    Enabled = False
    Left = 560
    Top = 296
  end
  object IBTMPWID: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TMPWID'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into TMPWID'
      '  (KL, NAIM, WID)'
      'values'
      '  (:KL, :NAIM, :WID)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  WID,'
      '  NAIM'
      'from TMPWID '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      ' select * from TMPWID')
    ModifySQL.Strings = (
      'update TMPWID'
      'set'
      '  KL = :KL,'
      '  NAIM = :NAIM,'
      '  WID = :WID'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_TMPWID_ID'
    Left = 744
    Top = 472
    object IBTMPWIDKL: TIntegerField
      FieldName = 'KL'
      Origin = '"TMPWID"."KL"'
      Required = True
    end
    object IBTMPWIDWID: TIBStringField
      FieldName = 'WID'
      Origin = '"TMPWID"."WID"'
      Size = 10
    end
    object IBTMPWIDNAIM: TIBStringField
      FieldName = 'NAIM'
      Origin = '"TMPWID"."NAIM"'
    end
  end
  object DSTMPWID: TDataSource
    DataSet = IBTMPWID
    Enabled = False
    Left = 744
    Top = 520
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnectionDBF
    Parameters = <>
    Left = 304
    Top = 176
  end
  object DSADOQuery1: TDataSource
    DataSet = ADOQuery1
    Enabled = False
    Left = 384
    Top = 176
  end
end
