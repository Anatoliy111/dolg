object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1041#1086#1088#1078#1085#1080#1082#1080
  ClientHeight = 638
  ClientWidth = 972
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
    Top = 209
    Width = 972
    Height = 429
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
          Format = '0'
          Kind = skSum
          Column = cxGrid1DBTableView1KOLI_P
        end
        item
          Format = '0'
          Kind = skSum
          Column = cxGrid1DBTableView1KOLI_PF
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1DOLG
        end
        item
          Format = '0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1NACH1
        end
        item
          Format = '0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1DOLG
        end
        item
          Format = '0'
          Kind = skCount
          Column = cxGrid1DBTableView1SCHET
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGrid1DBTableView1NACH1
        end
        item
          Kind = skSum
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
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1DOLG
        end
        item
          Kind = skCount
          Column = cxGrid1DBTableView1NOTE1
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      object cxGrid1DBTableView1WID: TcxGridDBColumn
        Caption = #1055#1086#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'WID'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 33
      end
      object cxGrid1DBTableView1POSLUG: TcxGridDBColumn
        Caption = #1055#1086#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'POSLUG'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
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
        Properties.ReadOnly = False
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
      object cxGrid1DBTableView1N_DOG: TcxGridDBColumn
        Caption = #8470' '#1076#1086#1075#1086#1074'.'
        DataBinding.FieldName = 'N_DOG'
      end
      object cxGrid1DBTableView1D_DOG: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1076#1086#1075#1086#1074'.'
        DataBinding.FieldName = 'D_DOG'
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
        Width = 46
      end
      object cxGrid1DBTableView1KV: TcxGridDBColumn
        Caption = #1050#1074#1072#1088#1090#1080#1088#1072
        DataBinding.FieldName = 'KV'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGrid1DBTableView1KOEF: TcxGridDBColumn
        DataBinding.FieldName = 'KOEF'
      end
      object cxGrid1DBTableView1KL_NTAR: TcxGridDBColumn
        Caption = #1050#1083#1102#1095' '#1090#1072#1088#1080#1092#1091
        DataBinding.FieldName = 'KL_NTAR'
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
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGrid1DBTableView1KOLI_PF: TcxGridDBColumn
        Caption = #1055#1088#1086#1078#1080#1074#1072#1108
        DataBinding.FieldName = 'KOLI_PF'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGrid1DBTableView1PLOS_OB: TcxGridDBColumn
        Caption = #1047#1072#1075'.'#1087#1083#1086#1097
        DataBinding.FieldName = 'PLOS_OB'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGrid1DBTableView1PLOS_BB: TcxGridDBColumn
        Caption = #1054#1087'.'#1087#1083#1086#1097
        DataBinding.FieldName = 'PLOS_BB'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGrid1DBTableView1PRIV: TcxGridDBColumn
        Caption = #1055#1088#1080#1074#1072#1090#1080#1079#1072#1094#1110#1103
        DataBinding.FieldName = 'PRIV'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGrid1DBTableView1DOLG: TcxGridDBColumn
        Caption = #1057#1072#1083#1100#1076#1086' '#1085#1072' '#1087#1086#1095#1072#1090#1086#1082
        DataBinding.FieldName = 'DOLG'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
        Width = 83
      end
      object cxGrid1DBTableView1NACH1: TcxGridDBColumn
        Caption = #1053#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103
        DataBinding.FieldName = 'NACH'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
        Width = 83
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
        Caption = #1057#1072#1083#1100#1076#1086' '#1085#1072' '#1082#1110#1085'.'
        DataBinding.FieldName = 'ENDDOLG'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
        Width = 89
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
    Width = 972
    Height = 181
    Align = alTop
    TabOrder = 1
    object Label16: TLabel
      Left = 630
      Top = 0
      Width = 133
      Height = 23
      Alignment = taCenter
      Caption = #1055#1086#1090#1086#1095#1085#1080#1081' '#1087#1077#1088#1110#1086#1076
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 630
      Top = 20
      Width = 34
      Height = 20
      Alignment = taCenter
      Caption = #1076#1072#1090#1072
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object cxGroupBox1: TcxGroupBox
      Left = 8
      Top = 8
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1074#1110#1076#1073#1086#1088#1091
      TabOrder = 0
      Height = 145
      Width = 594
      object cxLabel2: TcxLabel
        Left = 189
        Top = 15
        Caption = #1057#1091#1084#1072' '#1087#1086#1095#1072#1090#1082#1086#1074#1086#1075#1086' '#1073#1086#1088#1075#1091
      end
      object cxCheckBox2: TcxCheckBox
        Left = 189
        Top = 85
        TabOrder = 1
      end
      object cxButton2: TcxButton
        Left = 19
        Top = 65
        Width = 129
        Height = 41
        Caption = #1047#1092#1086#1088#1084#1091#1074#1072#1090#1080' '#1079#1074#1110#1090
        TabOrder = 2
        OnClick = cxButton2Click
      end
      object cxComboBox1: TcxComboBox
        Left = 216
        Top = 38
        Properties.Items.Strings = (
          '='
          '<>'
          '>='
          '<=')
        TabOrder = 3
        Text = '>='
        Width = 44
      end
      object cxLabel1: TcxLabel
        Left = 189
        Top = 63
        Caption = #1057#1091#1084#1072' '#1082#1110#1085#1094#1077#1074#1086#1075#1086' '#1073#1086#1088#1075#1091
      end
      object cxCheckBox1: TcxCheckBox
        Left = 189
        Top = 38
        TabOrder = 5
      end
      object cxComboBox2: TcxComboBox
        Left = 216
        Top = 86
        Properties.Items.Strings = (
          '='
          '<>'
          '>='
          '<=')
        TabOrder = 6
        Text = '>='
        Width = 44
      end
      object cxButton5: TcxButton
        Left = 3
        Top = 117
        Width = 85
        Height = 25
        Caption = #1044#1088#1091#1082
        TabOrder = 7
      end
      object cxTextEdit3: TcxTextEdit
        Left = 328
        Top = 121
        Properties.OnChange = cxTextEdit3PropertiesChange
        TabOrder = 8
        OnKeyDown = cxTextEdit3KeyDown
        Width = 233
      end
      object cxLabel5: TcxLabel
        Left = 404
        Top = 105
        Caption = #1060#1110#1083#1100#1090#1088' '#1087#1086' '#1055#1030#1041
      end
      object cxLabel6: TcxLabel
        Left = 204
        Top = 105
        Caption = #1060#1110#1083#1100#1090#1088' '#1087#1086' '#1088#1072#1093#1091#1085#1082#1091
      end
      object cxLookupComboBox1: TcxLookupComboBox
        Left = 3
        Top = 38
        Properties.KeyFieldNames = 'PERIOD'
        Properties.ListColumns = <
          item
            FieldName = 'PERIOD'
          end>
        Properties.ListSource = DSPERIOD
        TabOrder = 11
        Width = 169
      end
      object cxLabel3: TcxLabel
        Left = 43
        Top = 15
        Caption = #1042#1080#1073#1077#1088#1110#1090#1100' '#1087#1077#1088#1110#1086#1076
      end
      object cxButton3: TcxButton
        Left = 94
        Top = 117
        Width = 74
        Height = 25
        Caption = #1042' '#1045#1082#1089#1077#1083#1100
        TabOrder = 13
        OnClick = cxButton3Click
      end
      object cxCalcEdit2: TcxCalcEdit
        Left = 266
        Top = 86
        EditValue = 0.000000000000000000
        TabOrder = 14
        Width = 121
      end
      object cxTextEdit1: TcxTextEdit
        Left = 189
        Top = 121
        Properties.OnChange = cxTextEdit1PropertiesChange
        TabOrder = 15
        OnKeyDown = cxTextEdit1KeyDown
        Width = 121
      end
    end
    object cxLabel4: TcxLabel
      Left = 263
      Top = 158
      Caption = #1047#1074#1110#1090' '#1079#1092#1086#1088#1084#1086#1074#1072#1085#1086' '#1079#1072' '
    end
    object cxLabel7: TcxLabel
      Left = 367
      Top = 158
      Caption = #1076#1072#1090#1072' '
    end
    object cxButton4: TcxButton
      Left = 799
      Top = 108
      Width = 154
      Height = 25
      Caption = #1042#1110#1076#1087#1088#1072#1074#1082#1072' SMS'
      TabOrder = 3
      OnClick = cxButton4Click
    end
    object cxButton10: TcxButton
      Left = 608
      Top = 46
      Width = 185
      Height = 25
      Caption = #1053#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103' '#1074' '#1088#1077#1108#1089#1090#1088' '#1084#1086#1085#1077#1090#1080#1079#1072#1094#1110#1111
      TabOrder = 4
      OnClick = cxButton10Click
    end
    object cxButton6: TcxButton
      Left = 608
      Top = 77
      Width = 185
      Height = 25
      Caption = #1054#1087#1083#1072#1090#1072' '#1079' '#1088#1077#1108#1089#1090#1088#1091' '#1084#1086#1085#1077#1090#1080#1079#1072#1094#1110#1111
      TabOrder = 5
      OnClick = cxButton6Click
    end
    object cxButton8: TcxButton
      Left = 608
      Top = 108
      Width = 185
      Height = 25
      Caption = #1047#1072#1074#1072#1085#1090#1072#1078#1077#1085#1085#1103' '#1086#1087#1083#1072#1090#1080
      TabOrder = 6
      OnClick = cxButton8Click
    end
  end
  object cxCalcEdit1: TcxCalcEdit
    Left = 274
    Top = 74
    EditValue = 0c
    TabOrder = 2
    Width = 121
  end
  object cxButton7: TcxButton
    Left = 799
    Top = 105
    Width = 154
    Height = 25
    Caption = 'Viber '#1087#1086#1074#1110#1076#1086#1084#1083#1077#1085#1085#1103
    TabOrder = 7
    OnClick = cxButton7Click
  end
  object IBDatabase1: TIBDatabase
    DatabaseName = 'D:\WORK\KOMUN\dolg\DOLG.GDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    AllowStreamedConnected = False
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
      '  (FIO, KL, PW, SMS)'
      'values'
      '  (:FIO, :KL, :PW, :SMS)')
    RefreshSQL.Strings = (
      'Select '
      '  FIO,'
      '  KL,'
      '  PW,'
      '  SMS'
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
      '  PW = :PW,'
      '  SMS = :SMS'
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
    object IBUSERSMS: TIntegerField
      FieldName = 'SMS'
      Origin = '"USERS"."SMS"'
    end
  end
  object DSUSER: TDataSource
    DataSet = IBUSER
    Left = 176
    Top = 416
  end
  object DSADRESKR: TDataSource
    DataSet = IBADRESKR
    Left = 104
    Top = 416
  end
  object IBADRESKR: TIBDataSet
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
      '  (KL, DOM, UL, KL_KONTROL, KOL_KV, KL_UL, KL_RAION)'
      'values'
      '  (:KL, :DOM, :UL, :KL_KONTROL, :KOL_KV, :KL_UL, :KL_RAION)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  DOM,'
      '  UL,'
      '  KL_KONTROL,'
      '  KOL_KV,'
      '  KL_UL,'
      '  KL_RAION'
      'from ADRES '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select'
      'adres.*,'
      
        'iif(right(trim(adres.dom),1) BETWEEN '#39'0'#39' AND '#39'9'#39', cast(adres.dom' +
        ' as int), cast(LEFT(trim(adres.dom),CHAR_LENGTH(trim(adres.dom))' +
        '-1) as int)) dom2'
      'from ADRES '
      'where adres.KL_KONTROL=:kl'
      'order by ul,dom2,dom')
    ModifySQL.Strings = (
      'update ADRES'
      'set'
      '  KL = :KL,'
      '  DOM = :DOM,'
      '  UL = :UL,'
      '  KL_KONTROL = :KL_KONTROL,'
      '  KOL_KV = :KOL_KV,'
      '  KL_UL = :KL_UL,'
      '  KL_RAION = :KL_RAION'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_ADRES_ID'
    DataSource = DSKONTROL
    Left = 104
    Top = 360
    object IBADRESKRKL: TIntegerField
      FieldName = 'KL'
      Origin = '"ADRES"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBADRESKRDOM: TIBStringField
      FieldName = 'DOM'
      Origin = '"ADRES"."DOM"'
      Size = 10
    end
    object IBADRESKRUL: TIBStringField
      FieldName = 'UL'
      Origin = '"ADRES"."UL"'
      Size = 70
    end
    object IBADRESKRKL_KONTROL: TIntegerField
      FieldName = 'KL_KONTROL'
      Origin = '"ADRES"."KL_KONTROL"'
    end
    object IBADRESKRKOL_KV: TIntegerField
      FieldName = 'KOL_KV'
      Origin = '"ADRES"."KOL_KV"'
    end
    object IBADRESKRKL_UL: TIntegerField
      FieldName = 'KL_UL'
      Origin = '"ADRES"."KL_UL"'
    end
    object IBADRESKRKL_RAION: TSmallintField
      FieldName = 'KL_RAION'
      Origin = '"ADRES"."KL_RAION"'
    end
  end
  object DSNOTE: TDataSource
    DataSet = IBNOTE
    Left = 280
    Top = 424
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
    Left = 280
    Top = 376
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
    Left = 656
    Top = 288
  end
  object IBSPRADRES: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from kart'
      'where'
      '  ULNAIM = :OLD_ULNAIM and'
      '  NOMDOM = :OLD_NOMDOM')
    InsertSQL.Strings = (
      'insert into kart'
      '  (ULNAIM, NOMDOM)'
      'values'
      '  (:ULNAIM, :NOMDOM)')
    RefreshSQL.Strings = (
      'Select * '
      'from kart '
      'where'
      '  ULNAIM = :ULNAIM and'
      '  NOMDOM = :NOMDOM')
    SelectSQL.Strings = (
      
        'select ulnaim,nomdom from kart group by ulnaim,nomdom order by u' +
        'lnaim,nomdom')
    ModifySQL.Strings = (
      'update kart'
      'set'
      '  ULNAIM = :ULNAIM,'
      '  NOMDOM = :NOMDOM'
      'where'
      '  ULNAIM = :OLD_ULNAIM and'
      '  NOMDOM = :OLD_NOMDOM')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_SPRADRES_ID'
    Left = 576
    Top = 288
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
      '  (KL, WID, SCHET, NOTE1, NOTE2, NOTE3, KL_USERS)'
      'values'
      '  (:KL, :WID, :SCHET, :NOTE1, :NOTE2, :NOTE3, :KL_USERS)')
    RefreshSQL.Strings = (
      'Select *  '
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
      'vw_obkr.poslug,'
      'vw_obkr.dolg as dolg,'
      'vw_obkr.fio,'
      'vw_obkr.n_dog,'
      'vw_obkr.d_dog,'
      'vw_obkr.idcod,'
      'vw_obkr.ulnaim ul,'
      'vw_obkr.nomdom dom,'
      'vw_obkr.nomkv kv,'
      'vw_obkr.koli_p,'
      'vw_obkr.koli_pf,'
      'vw_obkr.plos_bb,'
      'vw_obkr.plos_ob,'
      'vw_obkr.priv,'
      'vw_obkr.kl_ntar,'
      'vw_obkr.koef,'
      'vw_obkr.nach,'
      'vw_obkr.opl,'
      'vw_obkr.subs,'
      'vw_obkr.uder,'
      'vw_obkr.komp,'
      'vw_obkr.wzmz,'
      'vw_obkr.wozw,'
      'vw_obkr.movw,'
      'vw_obkr.pere,'
      'vw_obkr.sal as enddolg'
      ' from note'
      
        ' inner join vw_obkr on (note.wid = vw_obkr.wid) and (note.schet ' +
        '= vw_obkr.schet) and (vw_obkr.period=:dt)'
      ' where note.kl_users =:kluser'
      '')
    ModifySQL.Strings = (
      'update note'
      'set'
      '  KL = :KL,'
      '  WID = :WID,'
      '  SCHET = :SCHET,'
      '  NOTE1 = :NOTE1,'
      '  NOTE2 = :NOTE2,'
      '  NOTE3 = :NOTE3,'
      '  KL_USERS = :KL_USERS'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    OnFilterRecord = IBREPDFilterRecord
    Left = 360
    Top = 360
    object IBREPDKL: TIntegerField
      FieldName = 'KL'
      Origin = '"NOTE"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object IBREPDPOSLUG: TIBStringField
      FieldName = 'POSLUG'
      Origin = '"WID"."NAIM"'
      Size = 15
    end
    object IBREPDDOLG: TFloatField
      FieldName = 'DOLG'
      Origin = '"VW_OBKR"."DOLG"'
    end
    object IBREPDFIO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FIO'
      Origin = '"VW_OBKR"."FIO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 77
    end
    object IBREPDIDCOD: TIBStringField
      FieldName = 'IDCOD'
      Origin = '"VW_OBKR"."IDCOD"'
      Size = 32
    end
    object IBREPDUL: TIBStringField
      FieldName = 'UL'
      Origin = '"VW_OBKR"."ULNAIM"'
      Size = 64
    end
    object IBREPDDOM: TIBStringField
      FieldName = 'DOM'
      Origin = '"VW_OBKR"."NOMDOM"'
      Size = 5
    end
    object IBREPDKV: TIBStringField
      FieldName = 'KV'
      Origin = '"VW_OBKR"."NOMKV"'
      Size = 5
    end
    object IBREPDKOLI_P: TFloatField
      FieldName = 'KOLI_P'
      Origin = '"VW_OBKR"."KOLI_P"'
    end
    object IBREPDKOLI_PF: TFloatField
      FieldName = 'KOLI_PF'
      Origin = '"VW_OBKR"."KOLI_PF"'
    end
    object IBREPDNACH: TFloatField
      FieldName = 'NACH'
      Origin = '"VW_OBKR"."NACH"'
    end
    object IBREPDOPL: TFloatField
      FieldName = 'OPL'
      Origin = '"VW_OBKR"."OPL"'
    end
    object IBREPDSUBS: TFloatField
      FieldName = 'SUBS'
      Origin = '"VW_OBKR"."SUBS"'
    end
    object IBREPDUDER: TFloatField
      FieldName = 'UDER'
      Origin = '"VW_OBKR"."UDER"'
    end
    object IBREPDKOMP: TFloatField
      FieldName = 'KOMP'
      Origin = '"VW_OBKR"."KOMP"'
    end
    object IBREPDWZMZ: TFloatField
      FieldName = 'WZMZ'
      Origin = '"VW_OBKR"."WZMZ"'
    end
    object IBREPDWOZW: TFloatField
      FieldName = 'WOZW'
      Origin = '"VW_OBKR"."WOZW"'
    end
    object IBREPDMOVW: TFloatField
      FieldName = 'MOVW'
      Origin = '"VW_OBKR"."MOVW"'
    end
    object IBREPDPERE: TFloatField
      FieldName = 'PERE'
      Origin = '"VW_OBKR"."PERE"'
    end
    object IBREPDENDDOLG: TFloatField
      FieldName = 'ENDDOLG'
      Origin = '"VW_OBKR"."SAL"'
    end
    object IBREPDN_DOG: TIBStringField
      FieldName = 'N_DOG'
      Origin = '"VW_OBKR"."N_DOG"'
      Size = 10
    end
    object IBREPDD_DOG: TIBStringField
      FieldName = 'D_DOG'
      Origin = '"VW_OBKR"."D_DOG"'
      Size = 8
    end
    object IBREPDPLOS_BB: TFloatField
      FieldName = 'PLOS_BB'
      Origin = '"VW_OBKR"."PLOS_BB"'
    end
    object IBREPDPLOS_OB: TFloatField
      FieldName = 'PLOS_OB'
      Origin = '"VW_OBKR"."PLOS_OB"'
    end
    object IBREPDPRIV: TIBStringField
      FieldName = 'PRIV'
      Origin = '"VW_OBKR"."PRIV"'
      Size = 1
    end
    object IBREPDKL_NTAR: TFloatField
      FieldName = 'KL_NTAR'
      Origin = '"VW_OBKR"."KL_NTAR"'
    end
    object IBREPDKOEF: TFloatField
      FieldName = 'KOEF'
      Origin = '"VW_OBKR"."KOEF"'
    end
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      '')
    Left = 784
    Top = 312
  end
  object DSQuery1: TDataSource
    DataSet = IBQuery1
    Left = 792
    Top = 360
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
      'delete from adres'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into adres'
      '  (KL, UL, DOM, KL_KONTROL)'
      'values'
      '  (:KL, :UL, :DOM, :KL_KONTROL)')
    RefreshSQL.Strings = (
      'Select *'
      'from adres '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select'
      'kl,ul,dom,kl_kontrol, 0 as CH,'
      
        'iif(right(trim(adres.dom),1) BETWEEN '#39'0'#39' AND '#39'9'#39', cast(adres.dom' +
        ' as int), cast(LEFT(trim(adres.dom),CHAR_LENGTH(trim(adres.dom))' +
        '-1) as int)) dom2'
      'from ADRES'
      'WHERE (kl_kontrol is null or kl_kontrol=0) '
      'order by ul,dom2,dom')
    ModifySQL.Strings = (
      'update adres'
      'set'
      '  KL = :KL,'
      '  UL = :UL,'
      '  DOM = :DOM,'
      '  KL_KONTROL = :KL_KONTROL'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_SP_ADRES_ID'
    Left = 480
    Top = 360
    object IBSP_ADRESUL: TIBStringField
      FieldName = 'UL'
      Origin = '"ADRES"."UL"'
      Size = 70
    end
    object IBSP_ADRESDOM: TIBStringField
      FieldName = 'DOM'
      Origin = '"ADRES"."DOM"'
      Size = 10
    end
    object IBSP_ADRESKL_KONTROL: TIntegerField
      FieldName = 'KL_KONTROL'
      Origin = '"ADRES"."KL_KONTROL"'
    end
    object IBSP_ADRESCH: TIntegerField
      FieldName = 'CH'
      ProviderFlags = []
    end
    object IBSP_ADRESKL: TIntegerField
      FieldName = 'KL'
      Origin = '"ADRES"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
      
        '  (KL, DATA, UPDATES, SMSLOGIN, SMSPW, SMSTRANSLIT, SMSALPHA, SM' +
        'SCENA)'
      'values'
      
        '  (:KL, :DATA, :UPDATES, :SMSLOGIN, :SMSPW, :SMSTRANSLIT, :SMSAL' +
        'PHA, :SMSCENA)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  DATA,'
      '  UPDATES,'
      '  SMSLOGIN,'
      '  SMSPW,'
      '  SMSTRANSLIT,'
      '  SMSALPHA,'
      '  SMSCENA'
      'from SERVICES '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select * from SERVICES')
    ModifySQL.Strings = (
      'update SERVICES'
      'set'
      '  KL = :KL,'
      '  DATA = :DATA,'
      '  UPDATES = :UPDATES,'
      '  SMSLOGIN = :SMSLOGIN,'
      '  SMSPW = :SMSPW,'
      '  SMSTRANSLIT = :SMSTRANSLIT,'
      '  SMSALPHA = :SMSALPHA,'
      '  SMSCENA = :SMSCENA'
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
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object IBSERVICESSMSLOGIN: TIBStringField
      FieldName = 'SMSLOGIN'
      Origin = '"SERVICES"."SMSLOGIN"'
    end
    object IBSERVICESSMSPW: TIBStringField
      FieldName = 'SMSPW'
      Origin = '"SERVICES"."SMSPW"'
      Size = 60
    end
    object IBSERVICESSMSTRANSLIT: TSmallintField
      FieldName = 'SMSTRANSLIT'
      Origin = '"SERVICES"."SMSTRANSLIT"'
    end
    object IBSERVICESSMSALPHA: TIBStringField
      FieldName = 'SMSALPHA'
      Origin = '"SERVICES"."SMSALPHA"'
      Size = 11
    end
    object IBSERVICESSMSCENA: TFloatField
      FieldName = 'SMSCENA'
      Origin = '"SERVICES"."SMSCENA"'
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
      FloatLeft = 507
      FloatTop = 0
      FloatClientWidth = 99
      FloatClientHeight = 69
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
          ItemName = 'dxBarSubItem27'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem28'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem30'
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
          ItemName = 'dxBarButton95'
        end
        item
          Visible = True
          ItemName = 'dxBarButton135'
        end
        item
          Visible = True
          ItemName = 'dxBarButton136'
        end
        item
          Visible = True
          ItemName = 'dxBarButton101'
        end
        item
          Visible = True
          ItemName = 'dxBarButton114'
        end
        item
          Visible = True
          ItemName = 'dxBarButton129'
        end
        item
          Visible = True
          ItemName = 'dxBarButton133'
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
    object dxBarButton95: TdxBarButton
      Caption = #1044#1086#1074#1110#1076#1085#1080#1082' '#1072#1073#1086#1085#1077#1085#1090#1110#1074
      Category = 0
      Hint = #1044#1086#1074#1110#1076#1085#1080#1082' '#1072#1073#1086#1085#1077#1085#1090#1110#1074
      Visible = ivAlways
      OnClick = dxBarButton95Click
    end
    object dxBarButton119: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarSubItem27: TdxBarSubItem
      Caption = #1047#1074#1110#1090#1080
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton120'
        end
        item
          Visible = True
          ItemName = 'dxBarButton121'
        end
        item
          Visible = True
          ItemName = 'dxBarButton122'
        end
        item
          Visible = True
          ItemName = 'dxBarButton127'
        end
        item
          Visible = True
          ItemName = 'dxBarButton137'
        end>
    end
    object dxBarButton120: TdxBarButton
      Caption = #1047#1074#1110#1090#1080' - '#1087#1086#1073#1091#1076#1080#1085#1082#1086#1074#1086
      Category = 0
      Hint = #1047#1074#1110#1090#1080' - '#1087#1086#1073#1091#1076#1080#1085#1082#1086#1074#1086
      Visible = ivAlways
      OnClick = dxBarButton120Click
    end
    object dxBarButton121: TdxBarButton
      Caption = #1059#1085#1110#1074#1077#1088#1089#1072#1083#1100#1085#1080#1081' '#1079#1074#1110#1090' '#1087#1086' '#1073#1086#1088#1078#1085#1080#1082#1072#1084' ('#1086#1073#1086#1088#1086#1090' '#1079#1072' '#1087#1077#1088#1110#1086#1076')'
      Category = 0
      Hint = #1059#1085#1110#1074#1077#1088#1089#1072#1083#1100#1085#1080#1081' '#1079#1074#1110#1090' '#1087#1086' '#1073#1086#1088#1078#1085#1080#1082#1072#1084' ('#1086#1073#1086#1088#1086#1090' '#1079#1072' '#1087#1077#1088#1110#1086#1076')'
      Visible = ivAlways
      OnClick = dxBarButton121Click
    end
    object dxBarButton122: TdxBarButton
      Caption = #1040#1085#1072#1083#1110#1079' '#1073#1086#1088#1078#1085#1080#1082#1110#1074' ('#1087#1086#1084#1110#1089#1103#1095#1085#1086')'
      Category = 0
      Hint = #1040#1085#1072#1083#1110#1079' '#1073#1086#1088#1078#1085#1080#1082#1110#1074' ('#1087#1086#1084#1110#1089#1103#1095#1085#1086')'
      Visible = ivAlways
      OnClick = dxBarButton122Click
    end
    object dxBarButton123: TdxBarButton
      Caption = #1047#1074#1110#1090' '#1087#1086' '#1086#1088#1075#1072#1085#1110#1079#1072#1094#1110#1103#1084' ('#1086#1073#1086#1088#1086#1090' '#1079#1072' '#1087#1077#1088#1110#1086#1076') '
      Category = 0
      Hint = #1047#1074#1110#1090' '#1087#1086' '#1086#1088#1075#1072#1085#1110#1079#1072#1094#1110#1103#1084' ('#1086#1073#1086#1088#1086#1090' '#1079#1072' '#1087#1077#1088#1110#1086#1076') '
      Visible = ivAlways
    end
    object dxBarButton124: TdxBarButton
      Caption = #1059#1055#1057#1047#1053
      Category = 0
      Hint = #1059#1055#1057#1047#1053
      Visible = ivAlways
    end
    object dxBarSubItem28: TdxBarSubItem
      Caption = #1059#1055#1057#1047#1053
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton125'
        end
        item
          Visible = True
          ItemName = 'dxBarButton126'
        end>
    end
    object dxBarButton125: TdxBarButton
      Caption = #1060#1086#1088#1084#1091#1074#1072#1085#1085#1103' '#1079#1072#1073#1086#1088#1075#1086#1074#1072#1085#1086#1089#1090#1110'  *.DBF - '#1089#1091#1073#1089#1080#1076#1110#1103
      Category = 0
      Hint = #1060#1086#1088#1084#1091#1074#1072#1085#1085#1103' '#1079#1072#1073#1086#1088#1075#1086#1074#1072#1085#1086#1089#1090#1110'  *.DBF - '#1089#1091#1073#1089#1080#1076#1110#1103
      Visible = ivAlways
      OnClick = dxBarButton125Click
    end
    object dxBarButton126: TdxBarButton
      Caption = #1060#1086#1088#1084#1091#1074#1072#1085#1085#1103' '#1079#1072#1073#1086#1088#1075#1086#1074#1072#1085#1086#1089#1090#1110'  *.M09, *.S01 *.P01 '#1087#1110#1083#1100#1075#1072
      Category = 0
      Hint = #1060#1086#1088#1084#1091#1074#1072#1085#1085#1103' '#1079#1072#1073#1086#1088#1075#1086#1074#1072#1085#1086#1089#1090#1110'  *.M09, *.S01 *.P01 '#1087#1110#1083#1100#1075#1072
      Visible = ivAlways
      OnClick = dxBarButton126Click
    end
    object dxBarButton127: TdxBarButton
      Caption = #1055#1088#1080#1084#1110#1088#1085#1072' '#1092#1086#1088#1084#1072' '#1087#1088#1086' '#1079#1072#1073#1086#1088#1075#1086#1074#1072#1085#1110#1089#1090#1100' '#1085#1072#1089#1077#1083#1077#1085#1085#1103' '#1079#1072' '#1087#1086#1089#1083#1091#1075#1080
      Category = 0
      Hint = #1055#1088#1080#1084#1110#1088#1085#1072' '#1092#1086#1088#1084#1072' '#1087#1088#1086' '#1079#1072#1073#1086#1088#1075#1086#1074#1072#1085#1110#1089#1090#1100' '#1085#1072#1089#1077#1083#1077#1085#1085#1103' '#1079#1072' '#1087#1086#1089#1083#1091#1075#1080
      Visible = ivNever
      OnClick = dxBarButton127Click
    end
    object dxBarButton128: TdxBarButton
      Caption = #1053#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103' '#1087#1086' '#1089#1091#1073#1089#1080#1076#1110#1072#1085#1090#1072#1084' '#1079#1072' '#1087#1077#1088#1110#1086#1076
      Category = 0
      Hint = #1053#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103' '#1087#1086' '#1089#1091#1073#1089#1080#1076#1110#1072#1085#1090#1072#1084' '#1079#1072' '#1087#1077#1088#1110#1086#1076
      Visible = ivAlways
    end
    object dxBarButton129: TdxBarButton
      Caption = #1044#1086#1074#1110#1076#1085#1080#1082' '#1041#1072#1085#1082#1110#1074' '#1076#1083#1103' '#1074#1080#1087#1080#1089#1086#1082
      Category = 0
      Hint = #1044#1086#1074#1110#1076#1085#1080#1082' '#1041#1072#1085#1082#1110#1074' '#1076#1083#1103' '#1074#1080#1087#1080#1089#1086#1082
      Visible = ivAlways
      OnClick = dxBarButton129Click
    end
    object dxBarButton130: TdxBarButton
      Caption = #1055#1077#1085#1089#1110#1081#1085#1080#1081' '#1092#1086#1085#1076
      Category = 0
      Hint = #1055#1077#1085#1089#1110#1081#1085#1080#1081' '#1092#1086#1085#1076
      Visible = ivAlways
    end
    object dxBarSubItem29: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton131: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarSubItem30: TdxBarSubItem
      Caption = #1055#1077#1085#1089#1110#1081#1085#1080#1081' '#1092#1086#1085#1076
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton132'
        end>
    end
    object dxBarButton132: TdxBarButton
      Caption = #1056#1077#1108#1089#1090#1088' '#1087#1086' '#1079#1072#1073#1086#1088#1075#1086#1074#1072#1085#1086#1089#1090#1110
      Category = 0
      Hint = #1056#1077#1108#1089#1090#1088' '#1087#1086' '#1079#1072#1073#1086#1088#1075#1086#1074#1072#1085#1086#1089#1090#1110
      Visible = ivAlways
      OnClick = dxBarButton132Click
    end
    object dxBarButton133: TdxBarButton
      Caption = #1044#1086#1074#1110#1076#1085#1080#1082' '#1087#1072#1088#1072#1084#1077#1090#1088#1110#1074' '#1074#1080#1087#1080#1089#1086#1082
      Category = 0
      Hint = #1044#1086#1074#1110#1076#1085#1080#1082' '#1087#1072#1088#1072#1084#1077#1090#1088#1110#1074' '#1074#1080#1087#1080#1089#1086#1082
      Visible = ivAlways
      OnClick = dxBarButton133Click
    end
    object dxBarButton134: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton135: TdxBarButton
      Caption = #1044#1086#1074#1110#1076#1085#1080#1082' '#1073#1091#1076#1080#1085#1082#1110#1074
      Category = 0
      Hint = #1044#1086#1074#1110#1076#1085#1080#1082' '#1073#1091#1076#1080#1085#1082#1110#1074
      Visible = ivAlways
      OnClick = dxBarButton135Click
    end
    object dxBarButton136: TdxBarButton
      Caption = #1044#1086#1074#1110#1076#1085#1080#1082' '#1088#1072#1081#1086#1085#1110#1074
      Category = 0
      Hint = #1044#1086#1074#1110#1076#1085#1080#1082' '#1088#1072#1081#1086#1085#1110#1074
      Visible = ivAlways
      OnClick = dxBarButton136Click
    end
    object dxBarButton137: TdxBarButton
      Caption = #1058#1072#1088#1080#1092#1080' '#1087#1086' '#1074#1091#1083#1080#1094#1103#1084
      Category = 0
      Hint = #1058#1072#1088#1080#1092#1080' '#1087#1086' '#1074#1091#1083#1080#1094#1103#1084
      Visible = ivAlways
      OnClick = dxBarButton137Click
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
      'delete from aboninf'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into aboninf'
      '  (TEL)'
      'values'
      '  (:TEL)')
    RefreshSQL.Strings = (
      'select vw_kart.*,aboninf.id,aboninf.tel from aboninf '
      'inner join vw_kart on (vw_kart.schet=aboninf.schet)'
      'where'
      '  aboninf.ID = :ID')
    SelectSQL.Strings = (
      'select vw_kart.*,aboninf.id,aboninf.tel from aboninf '
      'inner join vw_kart on (vw_kart.schet=aboninf.schet)')
    ModifySQL.Strings = (
      'update aboninf'
      'set'
      '  TEL = :TEL'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_KART_ID'
    Left = 96
    Top = 472
    object IBKARTKONTROL: TIBStringField
      FieldName = 'KONTROL'
      Origin = '"VW_KART"."KONTROL"'
      Size = 40
    end
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
    object IBKARTTEL: TIBStringField
      FieldName = 'TEL'
      Origin = '"ABONINF"."TEL"'
      Size = 10
    end
    object IBKARTTELEF: TIBStringField
      FieldName = 'TELEF'
      Origin = '"VW_KART"."TELEF"'
    end
    object IBKARTID: TIntegerField
      FieldName = 'ID'
      Origin = '"ABONINF"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSKART: TDataSource
    DataSet = IBKART
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
      
        '  (KL, PERIOD, SCHET, WID, N_DOG, D_DOG, TARIF, DOLG, NACH, SUBS' +
        ', OPL, '
      '   UDER, KOMP, WZMZ, WOZW, MOVW, PERE, SAL)'
      'values'
      
        '  (:KL, :PERIOD, :SCHET, :WID, :N_DOG, :D_DOG, :TARIF, :DOLG, :N' +
        'ACH, :SUBS, '
      '   :OPL, :UDER, :KOMP, :WZMZ, :WOZW, :MOVW, :PERE, :SAL)')
    RefreshSQL.Strings = (
      'Select * '
      'from obor '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select *  from vw_obor')
    ModifySQL.Strings = (
      'update obor'
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
    GeneratorField.Generator = 'GEN_OBOR_ID'
    Left = 160
    Top = 472
    object IBOBORKL: TIntegerField
      FieldName = 'KL'
      Origin = '"VW_OBOR"."KL"'
    end
    object IBOBORPERIOD: TDateField
      FieldName = 'PERIOD'
      Origin = '"VW_OBOR"."PERIOD"'
    end
    object IBOBORSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"VW_OBOR"."SCHET"'
      Size = 10
    end
    object IBOBORWID: TIBStringField
      FieldName = 'WID'
      Origin = '"VW_OBOR"."WID"'
      Size = 2
    end
    object IBOBORN_DOG: TIBStringField
      FieldName = 'N_DOG'
      Origin = '"VW_OBOR"."N_DOG"'
      Size = 10
    end
    object IBOBORD_DOG: TIBStringField
      FieldName = 'D_DOG'
      Origin = '"VW_OBOR"."D_DOG"'
      Size = 8
    end
    object IBOBORTARIF: TFloatField
      FieldName = 'TARIF'
      Origin = '"VW_OBOR"."TARIF"'
    end
    object IBOBORDOLG: TFloatField
      FieldName = 'DOLG'
      Origin = '"VW_OBOR"."DOLG"'
    end
    object IBOBORNACH: TFloatField
      FieldName = 'NACH'
      Origin = '"VW_OBOR"."NACH"'
    end
    object IBOBORSUBS: TFloatField
      FieldName = 'SUBS'
      Origin = '"VW_OBOR"."SUBS"'
    end
    object IBOBOROPL: TFloatField
      FieldName = 'OPL'
      Origin = '"VW_OBOR"."OPL"'
    end
    object IBOBORUDER: TFloatField
      FieldName = 'UDER'
      Origin = '"VW_OBOR"."UDER"'
    end
    object IBOBORKOMP: TFloatField
      FieldName = 'KOMP'
      Origin = '"VW_OBOR"."KOMP"'
    end
    object IBOBORWZMZ: TFloatField
      FieldName = 'WZMZ'
      Origin = '"VW_OBOR"."WZMZ"'
    end
    object IBOBORWOZW: TFloatField
      FieldName = 'WOZW'
      Origin = '"VW_OBOR"."WOZW"'
    end
    object IBOBORMOVW: TFloatField
      FieldName = 'MOVW'
      Origin = '"VW_OBOR"."MOVW"'
    end
    object IBOBORPERE: TFloatField
      FieldName = 'PERE'
      Origin = '"VW_OBOR"."PERE"'
    end
    object IBOBORSAL: TFloatField
      FieldName = 'SAL'
      Origin = '"VW_OBOR"."SAL"'
    end
    object IBOBORBGST: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'BGST'
      Origin = '"VW_OBOR"."BGST"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBOBORPRST: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PRST'
      Origin = '"VW_OBOR"."PRST"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBOBORBGEND: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'BGEND'
      Origin = '"VW_OBOR"."BGEND"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBOBORPREND: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PREND'
      Origin = '"VW_OBOR"."PREND"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBOBORFULLNACH: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'FULLNACH'
      Origin = '"VW_OBOR"."FULLNACH"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBOBORFULLOPL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'FULLOPL'
      Origin = '"VW_OBOR"."FULLOPL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBOBOROPLNOTSUBS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'OPLNOTSUBS'
      Origin = '"VW_OBOR"."OPLNOTSUBS"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSOBOR: TDataSource
    DataSet = IBOBOR
    Enabled = False
    Left = 160
    Top = 520
  end
  object IBTMPOPL: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from OPL'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into OPL'
      '  (DT, KL, SCHET, OPL)'
      'values'
      '  (:DT, :KL, :SCHET, :OPL)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  SCHET,'
      '  DT,'
      '  OPL'
      'from OPL '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      ' select * from OPL')
    ModifySQL.Strings = (
      'update OPL'
      'set'
      '  DT = :DT,'
      '  KL = :KL,'
      '  SCHET = :SCHET,'
      ' OPL = :OPL'
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
  object IBTransaction1: TIBTransaction
    DefaultDatabase = IBDatabase1
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommitRetaining
    Left = 64
    Top = 296
  end
  object IBWID: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from WID'
      'where'
      '  WID = :OLD_WID')
    InsertSQL.Strings = (
      'insert into WID'
      
        '  (WID, ID_ORG, NAIM, SNAIM, PAR, FL0, FL, NPP, FL_NONACH, FL_NO' +
        'OPL, FL_VTCH, '
      '   FL_NOOBOR, FL_GROPL, FL_SUBS, VAL)'
      'values'
      
        '  (:WID, :ID_ORG, :NAIM, :SNAIM, :PAR, :FL0, :FL, :NPP, :FL_NONA' +
        'CH, :FL_NOOPL, '
      '   :FL_VTCH, :FL_NOOBOR, :FL_GROPL, :FL_SUBS, :VAL)')
    RefreshSQL.Strings = (
      'Select '
      '  WID,'
      '  ID_ORG,'
      '  NAIM,'
      '  SNAIM,'
      '  PAR,'
      '  FL0,'
      '  FL,'
      '  NPP,'
      '  FL_NONACH,'
      '  FL_NOOPL,'
      '  FL_VTCH,'
      '  FL_NOOBOR,'
      '  FL_GROPL,'
      '  FL_SUBS,'
      '  VAL'
      'from WID '
      'where'
      '  WID = :WID')
    SelectSQL.Strings = (
      ' select * from WID where upd=1')
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
      '  NPP = :NPP,'
      '  FL_NONACH = :FL_NONACH,'
      '  FL_NOOPL = :FL_NOOPL,'
      '  FL_VTCH = :FL_VTCH,'
      '  FL_NOOBOR = :FL_NOOBOR,'
      '  FL_GROPL = :FL_GROPL,'
      '  FL_SUBS = :FL_SUBS,'
      '  VAL = :VAL'
      'where'
      '  WID = :OLD_WID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_WID_ID'
    Left = 616
    Top = 472
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
  end
  object DSTMPWID: TDataSource
    DataSet = IBWID
    Enabled = False
    Left = 616
    Top = 520
  end
  object IBORGAN: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from organ'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into organ'
      '  (KL, ORG, NAME)'
      'values'
      '  (:KL, :ORG, :NAME)')
    RefreshSQL.Strings = (
      'Select * '
      'from organ '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select *  from organ')
    ModifySQL.Strings = (
      'update organ'
      'set'
      '  KL = :KL,'
      '  ORG = :ORG,'
      '  NAME = :NAME'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_ORGAN_ID'
    Left = 280
    Top = 472
    object IBORGANORG: TFloatField
      FieldName = 'ORG'
      Origin = '"ORGAN"."ORG"'
    end
    object IBORGANNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"ORGAN"."NAME"'
      Size = 55
    end
    object IBORGANRUK: TIBStringField
      FieldName = 'RUK'
      Origin = '"ORGAN"."RUK"'
      Size = 35
    end
    object IBORGANDOLGR: TIBStringField
      FieldName = 'DOLGR'
      Origin = '"ORGAN"."DOLGR"'
      Size = 15
    end
    object IBORGANNAMER: TIBStringField
      FieldName = 'NAMER'
      Origin = '"ORGAN"."NAMER"'
      Size = 55
    end
    object IBORGANRUKR: TIBStringField
      FieldName = 'RUKR'
      Origin = '"ORGAN"."RUKR"'
      Size = 25
    end
    object IBORGANUD_K: TIBStringField
      FieldName = 'UD_K'
      Origin = '"ORGAN"."UD_K"'
      Size = 1
    end
    object IBORGANUD_E: TIBStringField
      FieldName = 'UD_E'
      Origin = '"ORGAN"."UD_E"'
      Size = 1
    end
    object IBORGANADR: TIBStringField
      FieldName = 'ADR'
      Origin = '"ORGAN"."ADR"'
      Size = 25
    end
    object IBORGANGRP: TFloatField
      FieldName = 'GRP'
      Origin = '"ORGAN"."GRP"'
    end
    object IBORGANVAL: TFloatField
      FieldName = 'VAL'
      Origin = '"ORGAN"."VAL"'
    end
    object IBORGANKL: TIntegerField
      FieldName = 'KL'
      Origin = '"ORGAN"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBORGANUPD: TIntegerField
      FieldName = 'UPD'
      Origin = '"ORGAN"."UPD"'
    end
  end
  object DSORGAN: TDataSource
    DataSet = IBORGAN
    Enabled = False
    Left = 280
    Top = 520
  end
  object IBDataSet1: TIBDataSet
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
      
        '  (KL, PERIOD, SCHET, WID, N_DOG, D_DOG, TARIF, DOLG, NACH, SUBS' +
        ', OPL, '
      '   UDER, KOMP, WZMZ, WOZW, MOVW, PERE, SAL)'
      'values'
      
        '  (:KL, :PERIOD, :SCHET, :WID, :N_DOG, :D_DOG, :TARIF, :DOLG, :N' +
        'ACH, :SUBS, '
      '   :OPL, :UDER, :KOMP, :WZMZ, :WOZW, :MOVW, :PERE, :SAL)')
    RefreshSQL.Strings = (
      'Select * '
      'from obor '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select period,fio,ulnaim,nomdom,nomkv,'
      
        'COALESCE(max(case wid when '#39'ot'#39' then dolg else null end),0) as o' +
        't,'
      
        'COALESCE(max(case wid when '#39'ub'#39' then dolg else null end),0) as u' +
        'b,'
      
        'COALESCE(max(case wid when '#39'sn'#39' then dolg else null end),0) as s' +
        'n'
      'from vw_oborkart where schet='#39'0092125'#39
      'group by period,schet,fio,ulnaim,nomdom,nomkv'
      '')
    ModifySQL.Strings = (
      'update obor'
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
    GeneratorField.Generator = 'GEN_OBOR_ID'
    Left = 688
    Top = 472
    object IntegerField1: TIntegerField
      FieldName = 'KL'
      Origin = '"VW_OBOR"."KL"'
    end
    object DateField1: TDateField
      FieldName = 'PERIOD'
      Origin = '"VW_OBOR"."PERIOD"'
    end
    object IBStringField1: TIBStringField
      FieldName = 'SCHET'
      Origin = '"VW_OBOR"."SCHET"'
      Size = 10
    end
    object IBStringField2: TIBStringField
      FieldName = 'WID'
      Origin = '"VW_OBOR"."WID"'
      Size = 2
    end
    object IBStringField3: TIBStringField
      FieldName = 'N_DOG'
      Origin = '"VW_OBOR"."N_DOG"'
      Size = 10
    end
    object IBStringField4: TIBStringField
      FieldName = 'D_DOG'
      Origin = '"VW_OBOR"."D_DOG"'
      Size = 8
    end
    object FloatField1: TFloatField
      FieldName = 'TARIF'
      Origin = '"VW_OBOR"."TARIF"'
    end
    object FloatField2: TFloatField
      FieldName = 'DOLG'
      Origin = '"VW_OBOR"."DOLG"'
    end
    object FloatField3: TFloatField
      FieldName = 'NACH'
      Origin = '"VW_OBOR"."NACH"'
    end
    object FloatField4: TFloatField
      FieldName = 'SUBS'
      Origin = '"VW_OBOR"."SUBS"'
    end
    object FloatField5: TFloatField
      FieldName = 'OPL'
      Origin = '"VW_OBOR"."OPL"'
    end
    object FloatField6: TFloatField
      FieldName = 'UDER'
      Origin = '"VW_OBOR"."UDER"'
    end
    object FloatField7: TFloatField
      FieldName = 'KOMP'
      Origin = '"VW_OBOR"."KOMP"'
    end
    object FloatField8: TFloatField
      FieldName = 'WZMZ'
      Origin = '"VW_OBOR"."WZMZ"'
    end
    object FloatField9: TFloatField
      FieldName = 'WOZW'
      Origin = '"VW_OBOR"."WOZW"'
    end
    object FloatField10: TFloatField
      FieldName = 'MOVW'
      Origin = '"VW_OBOR"."MOVW"'
    end
    object FloatField11: TFloatField
      FieldName = 'PERE'
      Origin = '"VW_OBOR"."PERE"'
    end
    object FloatField12: TFloatField
      FieldName = 'SAL'
      Origin = '"VW_OBOR"."SAL"'
    end
    object FloatField13: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'BGST'
      Origin = '"VW_OBOR"."BGST"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FloatField14: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PRST'
      Origin = '"VW_OBOR"."PRST"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FloatField15: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'BGEND'
      Origin = '"VW_OBOR"."BGEND"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FloatField16: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PREND'
      Origin = '"VW_OBOR"."PREND"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FloatField17: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'FULLNACH'
      Origin = '"VW_OBOR"."FULLNACH"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FloatField18: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'FULLOPL'
      Origin = '"VW_OBOR"."FULLOPL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FloatField19: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'OPLNOTSUBS'
      Origin = '"VW_OBOR"."OPLNOTSUBS"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    DataSet = IBDataSet1
    Enabled = False
    Left = 688
    Top = 520
  end
  object HTTPSoapPascalInvoker1: THTTPSoapPascalInvoker
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 168
    Top = 280
  end
  object IBSMSORDEREDS: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from smsordereds'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into smsordereds'
      
        '  (ID, DATA, SEND, CONTROL, PERIOD, DOLG, KOL_SENDSMS, KOL_SEND,' +
        ' KOL_ERR, '
      
        '   KOL_DOST, KOL_DOSTSMS, ID_USER, POSL, TRANSLIT, VID_SMS, TEXT' +
        '_SMS)'
      'values'
      
        '  (:ID, :DATA, :SEND, :CONTROL, :PERIOD, :DOLG, :KOL_SENDSMS, :K' +
        'OL_SEND, '
      
        '   :KOL_ERR, :KOL_DOST, :KOL_DOSTSMS, :ID_USER, :POSL, :TRANSLIT' +
        ', :VID_SMS, '
      '   :TEXT_SMS)')
    RefreshSQL.Strings = (
      'Select *'
      'from smsordereds '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select smsordereds.*,users.fio from smsordereds'
      'left join users on users.kl=smsordereds.id_user'
      'order by smsordereds.id desc')
    ModifySQL.Strings = (
      'update smsordereds'
      'set'
      '  ID = :ID,'
      '  DATA = :DATA,'
      '  SEND = :SEND,'
      '  CONTROL = :CONTROL,'
      '  PERIOD = :PERIOD,'
      '  DOLG = :DOLG,'
      '  KOL_SENDSMS = :KOL_SENDSMS,'
      '  KOL_SEND = :KOL_SEND,'
      '  KOL_ERR = :KOL_ERR,'
      '  KOL_DOST = :KOL_DOST,'
      '  KOL_DOSTSMS = :KOL_DOSTSMS,'
      '  ID_USER = :ID_USER,'
      '  POSL = :POSL,'
      '  TRANSLIT = :TRANSLIT,'
      '  VID_SMS = :VID_SMS,'
      '  TEXT_SMS = :TEXT_SMS'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_SMSORDEREDS_ID'
    Left = 472
    Top = 264
    object IBSMSORDEREDSID: TIntegerField
      FieldName = 'ID'
      Origin = '"SMSORDEREDS"."ID"'
    end
    object IBSMSORDEREDSDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"SMSORDEREDS"."DATA"'
    end
    object IBSMSORDEREDSSEND: TIntegerField
      FieldName = 'SEND'
      Origin = '"SMSORDEREDS"."SEND"'
    end
    object IBSMSORDEREDSPERIOD: TDateField
      FieldName = 'PERIOD'
      Origin = '"SMSORDEREDS"."PERIOD"'
    end
    object IBSMSORDEREDSDOLG: TFloatField
      FieldName = 'DOLG'
      Origin = '"SMSORDEREDS"."DOLG"'
    end
    object IBSMSORDEREDSKOL_SENDSMS: TIntegerField
      FieldName = 'KOL_SENDSMS'
      Origin = '"SMSORDEREDS"."KOL_SENDSMS"'
    end
    object IBSMSORDEREDSKOL_DOST: TIntegerField
      FieldName = 'KOL_DOST'
      Origin = '"SMSORDEREDS"."KOL_DOST"'
    end
    object IBSMSORDEREDSFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"USERS"."FIO"'
      Size = 30
    end
    object IBSMSORDEREDSID_USER: TIntegerField
      FieldName = 'ID_USER'
      Origin = '"SMSORDEREDS"."ID_USER"'
    end
    object IBSMSORDEREDSCONTROL: TIntegerField
      FieldName = 'CONTROL'
      Origin = '"SMSORDEREDS"."CONTROL"'
    end
    object IBSMSORDEREDSPOSL: TIBStringField
      FieldName = 'POSL'
      Origin = '"SMSORDEREDS"."POSL"'
      Size = 30
    end
    object IBSMSORDEREDSTRANSLIT: TIntegerField
      FieldName = 'TRANSLIT'
      Origin = '"SMSORDEREDS"."TRANSLIT"'
    end
    object IBSMSORDEREDSKOL_SEND: TIntegerField
      FieldName = 'KOL_SEND'
      Origin = '"SMSORDEREDS"."KOL_SEND"'
    end
    object IBSMSORDEREDSKOL_ERR: TIntegerField
      FieldName = 'KOL_ERR'
      Origin = '"SMSORDEREDS"."KOL_ERR"'
    end
    object IBSMSORDEREDSKOL_DOSTSMS: TIntegerField
      FieldName = 'KOL_DOSTSMS'
      Origin = '"SMSORDEREDS"."KOL_DOSTSMS"'
    end
    object IBSMSORDEREDSVID_SMS: TIntegerField
      FieldName = 'VID_SMS'
      Origin = '"SMSORDEREDS"."VID_SMS"'
    end
    object IBSMSORDEREDSTEXT_SMS: TIBStringField
      FieldName = 'TEXT_SMS'
      Origin = '"SMSORDEREDS"."TEXT_SMS"'
      Size = 1000
    end
  end
  object DSSMSORDEREDS: TDataSource
    DataSet = IBSMSORDEREDS
    Left = 472
    Top = 312
  end
  object IBABONINF: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ABONINF'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into ABONINF'
      '  (ID, SCHET, TEL)'
      'values'
      '  (:ID, :SCHET, :TEL)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  SCHET,'
      '  TEL'
      'from ABONINF '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from  ABONINF')
    ModifySQL.Strings = (
      'update ABONINF'
      'set'
      '  ID = :ID,'
      '  SCHET = :SCHET,'
      '  TEL = :TEL'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    Left = 896
    Top = 400
    object IBABONINFID: TIntegerField
      FieldName = 'ID'
      Origin = '"ABONINF"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBABONINFSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"ABONINF"."SCHET"'
      Required = True
      Size = 10
    end
    object IBABONINFTEL: TIBStringField
      FieldName = 'TEL'
      Origin = '"ABONINF"."TEL"'
      Size = 10
    end
  end
  object DSABONINF: TDataSource
    DataSet = IBABONINF
    Left = 896
    Top = 448
  end
  object IBSMSLIST: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SMSLIST'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into SMSLIST'
      
        '  (ID, ID_SMSORDER, SCHET, FIO, ULNAIM, NOMDOM, NOMKV, TEL, TEXT' +
        ', TEXTNOTTR, '
      
        '   ALPHANAME, WAPPUSH, DOLG, STATUS, MESSAGEID, KOL_SMS, KOL_ABO' +
        'N)'
      'values'
      
        '  (:ID, :ID_SMSORDER, :SCHET, :FIO, :ULNAIM, :NOMDOM, :NOMKV, :T' +
        'EL, :TEXT, '
      
        '   :TEXTNOTTR, :ALPHANAME, :WAPPUSH, :DOLG, :STATUS, :MESSAGEID,' +
        ' :KOL_SMS, '
      '   :KOL_ABON)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ID_SMSORDER,'
      '  SCHET,'
      '  FIO,'
      '  ULNAIM,'
      '  NOMDOM,'
      '  NOMKV,'
      '  TEL,'
      '  TEXT,'
      '  TEXTNOTTR,'
      '  ALPHANAME,'
      '  WAPPUSH,'
      '  DOLG,'
      '  STATUS,'
      '  MESSAGEID,'
      '  KOL_SMS,'
      '  KOL_ABON'
      'from SMSLIST '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from SMSLIST')
    ModifySQL.Strings = (
      'update SMSLIST'
      'set'
      '  ID = :ID,'
      '  ID_SMSORDER = :ID_SMSORDER,'
      '  SCHET = :SCHET,'
      '  FIO = :FIO,'
      '  ULNAIM = :ULNAIM,'
      '  NOMDOM = :NOMDOM,'
      '  NOMKV = :NOMKV,'
      '  TEL = :TEL,'
      '  TEXT = :TEXT,'
      '  TEXTNOTTR = :TEXTNOTTR,'
      '  ALPHANAME = :ALPHANAME,'
      '  WAPPUSH = :WAPPUSH,'
      '  DOLG = :DOLG,'
      '  STATUS = :STATUS,'
      '  MESSAGEID = :MESSAGEID,'
      '  KOL_SMS = :KOL_SMS,'
      '  KOL_ABON = :KOL_ABON'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    Left = 384
    Top = 264
    object IBSMSLISTID: TIntegerField
      FieldName = 'ID'
      Origin = '"SMSLIST"."ID"'
    end
    object IBSMSLISTID_SMSORDER: TIntegerField
      FieldName = 'ID_SMSORDER'
      Origin = '"SMSLIST"."ID_SMSORDER"'
    end
    object IBSMSLISTSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"SMSLIST"."SCHET"'
      Size = 10
    end
    object IBSMSLISTULNAIM: TIBStringField
      FieldName = 'ULNAIM'
      Origin = '"SMSLIST"."ULNAIM"'
      Size = 64
    end
    object IBSMSLISTNOMDOM: TIBStringField
      FieldName = 'NOMDOM'
      Origin = '"SMSLIST"."NOMDOM"'
      Size = 5
    end
    object IBSMSLISTNOMKV: TIBStringField
      FieldName = 'NOMKV'
      Origin = '"SMSLIST"."NOMKV"'
      Size = 5
    end
    object IBSMSLISTALPHANAME: TIBStringField
      FieldName = 'ALPHANAME'
      Origin = '"SMSLIST"."ALPHANAME"'
      Size = 11
    end
    object IBSMSLISTWAPPUSH: TIBStringField
      FieldName = 'WAPPUSH'
      Origin = '"SMSLIST"."WAPPUSH"'
    end
    object IBSMSLISTDOLG: TFloatField
      FieldName = 'DOLG'
      Origin = '"SMSLIST"."DOLG"'
    end
    object IBSMSLISTSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"SMSLIST"."STATUS"'
      Size = 250
    end
    object IBSMSLISTTEXT: TIBStringField
      FieldName = 'TEXT'
      Origin = '"SMSLIST"."TEXT"'
      Size = 300
    end
    object IBSMSLISTKOL_SMS: TIntegerField
      FieldName = 'KOL_SMS'
      Origin = '"SMSLIST"."KOL_SMS"'
    end
    object IBSMSLISTTEL: TIBStringField
      FieldName = 'TEL'
      Origin = '"SMSLIST"."TEL"'
      Size = 13
    end
    object IBSMSLISTMESSAGEID: TIBStringField
      FieldName = 'MESSAGEID'
      Origin = '"SMSLIST"."MESSAGEID"'
      Size = 41
    end
    object IBSMSLISTFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"SMSLIST"."FIO"'
      Size = 100
    end
    object IBSMSLISTTEXTNOTTR: TIBStringField
      FieldName = 'TEXTNOTTR'
      Origin = '"SMSLIST"."TEXTNOTTR"'
      Size = 300
    end
    object IBSMSLISTKOL_ABON: TIntegerField
      FieldName = 'KOL_ABON'
      Origin = '"SMSLIST"."KOL_ABON"'
    end
  end
  object DSSMSLIST: TDataSource
    DataSet = IBSMSLIST
    Left = 384
    Top = 312
  end
  object cxLocalizer1: TcxLocalizer
    Left = 472
    Top = 80
  end
  object IBVIBER_SEND: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from VIBER_SEND'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into VIBER_SEND'
      '  (ID, DATA, DATE_SEND, KOLSEND, TEXT, SMALLTEXT)'
      'values'
      '  (:ID, :DATA, :DATE_SEND, :KOLSEND, :TEXT, :SMALLTEXT)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  DATA,'
      '  DATE_SEND,'
      '  KOLSEND,'
      '  TEXT,'
      '  SMALLTEXT'
      'from VIBER_SEND '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select *  from VIBER_SEND order by ID desc'
      '')
    ModifySQL.Strings = (
      'update VIBER_SEND'
      'set'
      '  ID = :ID,'
      '  DATA = :DATA,'
      '  DATE_SEND = :DATE_SEND,'
      '  KOLSEND = :KOLSEND,'
      '  TEXT = :TEXT,'
      '  SMALLTEXT = :SMALLTEXT'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_VIBER_SEND_ID'
    Left = 784
    Top = 464
    object IBVIBER_SENDID: TIntegerField
      FieldName = 'ID'
      Origin = '"VIBER_SEND"."ID"'
      Required = True
    end
    object IBVIBER_SENDDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VIBER_SEND"."DATA"'
    end
    object IBVIBER_SENDDATE_SEND: TDateTimeField
      FieldName = 'DATE_SEND'
      Origin = '"VIBER_SEND"."DATE_SEND"'
    end
    object IBVIBER_SENDKOLSEND: TIntegerField
      FieldName = 'KOLSEND'
      Origin = '"VIBER_SEND"."KOLSEND"'
    end
    object IBVIBER_SENDTEXT: TWideMemoField
      FieldName = 'TEXT'
      Origin = '"VIBER_SEND"."TEXT"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object IBVIBER_SENDSMALLTEXT: TIBStringField
      FieldName = 'SMALLTEXT'
      Origin = '"VIBER_SEND"."SMALLTEXT"'
      Size = 50
    end
  end
  object DSVIBER_SEND: TDataSource
    DataSet = IBVIBER_SEND
    Left = 784
    Top = 520
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
      '  (KL, DOM, UL, KL_KONTROL, KOL_KV, KL_UL, KL_RAION)'
      'values'
      '  (:KL, :DOM, :UL, :KL_KONTROL, :KOL_KV, :KL_UL, :KL_RAION)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  DOM,'
      '  UL,'
      '  KL_KONTROL,'
      '  KOL_KV,'
      '  KL_UL,'
      '  KL_RAION'
      'from ADRES '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select'
      'adres.*,'
      
        'iif(right(trim(adres.dom),1) BETWEEN '#39'0'#39' AND '#39'9'#39', cast(adres.dom' +
        ' as int), cast(LEFT(trim(adres.dom),CHAR_LENGTH(trim(adres.dom))' +
        '-1) as int)) dom2'
      'from ADRES order by ul,dom2,dom')
    ModifySQL.Strings = (
      'update ADRES'
      'set'
      '  KL = :KL,'
      '  DOM = :DOM,'
      '  UL = :UL,'
      '  KL_KONTROL = :KL_KONTROL,'
      '  KOL_KV = :KOL_KV,'
      '  KL_UL = :KL_UL,'
      '  KL_RAION = :KL_RAION'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_ADRES_ID'
    Left = 256
    Top = 272
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
    object IBADRESKOL_KV: TIntegerField
      FieldName = 'KOL_KV'
      Origin = '"ADRES"."KOL_KV"'
    end
    object IBADRESKL_UL: TIntegerField
      FieldName = 'KL_UL'
      Origin = '"ADRES"."KL_UL"'
    end
    object IBADRESKL_RAION: TSmallintField
      FieldName = 'KL_RAION'
      Origin = '"ADRES"."KL_RAION"'
    end
  end
  object IBRAION: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SPR_RAION'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into SPR_RAION'
      '  (KL, NAME)'
      'values'
      '  (:KL, :NAME)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  NAME'
      'from SPR_RAION '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select * from SPR_RAION')
    ModifySQL.Strings = (
      'update SPR_RAION'
      'set'
      '  KL = :KL,'
      '  NAME = :NAME'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_SPR_RAION_ID'
    Left = 312
    Top = 272
    object IBRAIONKL: TIntegerField
      FieldName = 'KL'
      Origin = '"SPR_RAION"."KL"'
      Required = True
    end
    object IBRAIONNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"SPR_RAION"."NAME"'
      Size = 30
    end
  end
  object DSADRES: TDataSource
    DataSet = IBADRES
    Left = 256
    Top = 328
  end
  object DSRAION: TDataSource
    DataSet = IBRAION
    Left = 312
    Top = 328
  end
end
