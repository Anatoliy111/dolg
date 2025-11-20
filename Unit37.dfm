object Form37: TForm37
  Left = 0
  Top = 0
  Caption = #1042#1080#1087#1080#1089#1082#1072' '#1087#1086' '#1086#1089#1086#1073#1086#1074#1086#1084#1091' '#1088#1072#1093#1091#1085#1082#1091
  ClientHeight = 485
  ClientWidth = 514
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
    Width = 514
    Height = 161
    Align = alTop
    TabOrder = 0
    object cxButton3: TcxButton
      Left = 325
      Top = 9
      Width = 97
      Height = 33
      BiDiMode = bdLeftToRight
      Caption = #1044#1088#1091#1082
      ParentBiDiMode = False
      PopupAlignment = paCenter
      TabOrder = 0
      WordWrap = True
      OnClick = cxButton3Click
    end
    object cxLabel1: TcxLabel
      Left = 22
      Top = 16
      Caption = #1054#1089#1086#1073#1086#1074#1080#1081' '#1088#1072#1093#1091#1085#1086#1082
    end
    object cxLabel3: TcxLabel
      Left = 126
      Top = 16
      Caption = 'sch'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel4: TcxLabel
      Left = 22
      Top = 39
      Caption = 'fio'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel5: TcxLabel
      Left = 22
      Top = 62
      Caption = 'adr'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel6: TcxLabel
      Left = 22
      Top = 85
      Caption = #1082#1110#1084#1085#1072#1090
    end
    object cxLabel7: TcxLabel
      Left = 58
      Top = 85
      Caption = 'kim'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel8: TcxLabel
      Left = 89
      Top = 85
      Caption = #1087#1083#1086#1097#1072
    end
    object cxLabel9: TcxLabel
      Left = 128
      Top = 85
      Caption = 'plos'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel10: TcxLabel
      Left = 161
      Top = 85
      Caption = #1079#1072#1073#1086#1088#1075#1086#1074#1072#1085#1110#1089#1090#1100' '#1089#1090#1072#1085#1086#1084' '#1085#1072
    end
    object cxDateEdit1: TcxDateEdit
      Left = 301
      Top = 84
      TabOrder = 10
      Width = 121
    end
    object cxLabel13: TcxLabel
      Left = 22
      Top = 109
      Caption = #1076#1072#1090#1072' '#1074#1080#1087#1080#1089#1082#1080
    end
    object cxDateEdit3: TcxDateEdit
      Left = 96
      Top = 109
      TabOrder = 12
      Width = 121
    end
    object cxLabel14: TcxLabel
      Left = 227
      Top = 112
      Caption = #1053#1072#1095#1072#1083#1100#1085#1080#1082
    end
    object cxTextEdit2: TcxTextEdit
      Left = 301
      Top = 108
      TabOrder = 14
      Width = 204
    end
    object cxLabel15: TcxLabel
      Left = 228
      Top = 132
      Caption = #1041#1091#1093#1075#1072#1083#1090#1077#1088
    end
    object cxTextEdit3: TcxTextEdit
      Left = 301
      Top = 131
      TabOrder = 16
      Width = 204
    end
    object cxLabel16: TcxLabel
      Left = 334
      Top = 61
      Caption = #1087#1088#1086#1087#1080#1089#1072#1085#1086
    end
    object cxLabel17: TcxLabel
      Left = 392
      Top = 61
      Caption = 'prop'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 161
    Width = 514
    Height = 324
    Align = alClient
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    ExplicitTop = 185
    ExplicitWidth = 635
    ExplicitHeight = 300
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellClick = cxGridDBTableView1CellClick
      DataController.DataSource = DSOBOR
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems.OnSummary = cxGridDBTableView1DataControllerSummaryFooterSummaryItemsSummary
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
          FieldName = 'DOLGREP'
          Column = cxGridDBTableView1DOLGREP
        end
        item
          Kind = skSum
          FieldName = 'OPLREP'
          Column = cxGridDBTableView1OPLREP
        end
        item
          Kind = skMax
          Column = cxGridDBTableView1DATEREP
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGridDBTableView1CH: TcxGridDBColumn
        Caption = #1042#1080#1073#1088'.'
        DataBinding.FieldName = 'CH'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayChecked = '1'
        Properties.DisplayUnchecked = '0'
        Properties.ImmediatePost = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 45
      end
      object cxGridDBTableView1NAIM: TcxGridDBColumn
        Caption = #1055#1086#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'NAIM'
        Options.Editing = False
        Width = 136
      end
      object cxGridDBTableView1DATEREP: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1080
        DataBinding.FieldName = 'DATEREP'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 102
      end
      object cxGridDBTableView1OPLREP: TcxGridDBColumn
        Caption = #1054#1087#1083#1072#1090#1072
        DataBinding.FieldName = 'OPLREP'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 108
      end
      object cxGridDBTableView1DOLGREP: TcxGridDBColumn
        Caption = #1041#1086#1088#1075
        DataBinding.FieldName = 'DOLGREP'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 109
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object IBOBOR: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from obor'
      'where'
      '  SCHET = :OLD_SCHET')
    InsertSQL.Strings = (
      'insert into obor'
      '  (SCHET, WID)'
      'values'
      '  (:SCHET, :WID)')
    RefreshSQL.Strings = (
      'Select *'
      'from obor '
      'where'
      '  SCHET = :SCHET')
    SelectSQL.Strings = (
      
        'select obor.schet,  obor.wid, obor.dolg dolgrep,wid.naim, 0.00 a' +
        's oplrep, CAST(NULL AS DATE) AS daterep,'
      'case when (COALESCE(obor.dolg,0)<>0) then 1 else 0 end as ch '
      'from obor'
      'left join wid on (wid.wid=obor.wid) '
      'where obor.period=:dt and obor.schet=:sch and obor.upd=1')
    ModifySQL.Strings = (
      'update obor'
      'set'
      '  SCHET = :SCHET,'
      '  WID = :WID'
      'where'
      '  SCHET = :OLD_SCHET')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_OBOR_ID'
    Left = 208
    Top = 177
    object IBOBORSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"OBOR"."SCHET"'
      Size = 10
    end
    object IBOBORDOLGREP: TFloatField
      FieldName = 'DOLGREP'
      Origin = '"OBOR"."DOLG"'
    end
    object IBOBORNAIM: TIBStringField
      FieldName = 'NAIM'
      Origin = '"WID"."NAIM"'
      Size = 15
    end
    object IBOBOROPLREP: TIBBCDField
      FieldName = 'OPLREP'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBOBORCH: TIntegerField
      FieldName = 'CH'
      ProviderFlags = []
    end
    object IBOBORWID: TIBStringField
      FieldName = 'WID'
      Origin = '"OBOR"."WID"'
      Size = 2
    end
    object IBOBORDATEREP: TDateField
      FieldName = 'DATEREP'
      ProviderFlags = []
    end
  end
  object DSOBOR: TDataSource
    DataSet = IBOBOR
    Left = 208
    Top = 225
  end
  object frxReport1: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1047#1072' '#1079#1072#1084#1086#1074#1095#1091#1074#1072#1085#1085#1103#1084
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39025.734005347200000000
    ReportOptions.LastChange = 45979.896551817130000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo32OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '                                           '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 436
    Top = 295
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'schet'
        Value = #39'0014001'#39
      end
      item
        Name = 'fio'
        Value = #39#1044#1080#1084#1080#1085#1090#1110#1108#1085#1082#1086' '#1052#1080#1082#1086#1083#1072' '#1052#1080#1082#1086#1083#1072#1081#1086#1074#1080#1095#39
      end
      item
        Name = 'ul'
        Value = #39#1074#1091#1083'.'#1044#1088#1091#1078#1073#1080' '#1085#1072#1088#1086#1076#1110#1074' '#1073#1091#1076'.14 '#1082#1074'.1'#39
      end
      item
        Name = 'org'
        Value = #39#39
      end
      item
        Name = 'koli_k'
        Value = '4'
      end
      item
        Name = 'plos_bb'
        Value = #39#39
      end
      item
        Name = 'koli_p'
        Value = '6'
      end
      item
        Name = 'dolg_dt'
        Value = #39'1 '#1083#1080#1089#1090#1086#1087#1072#1076#1072' 2025'#39
      end
      item
        Name = 'dolg'
        Value = '0'
      end
      item
        Name = 'dolg_hv'
        Value = '0'
      end
      item
        Name = 'dolg_ot'
        Value = '0'
      end
      item
        Name = 'dolg_an'
        Value = '0'
      end
      item
        Name = 'dolg_kv'
        Value = '0'
      end
      item
        Name = 'dolg_el'
        Value = '0'
      end
      item
        Name = 'opl_dt'
        Value = #39'13.11.2025'#39
      end
      item
        Name = 'opl'
        Value = '123,68'
      end
      item
        Name = 'dt'
        Value = #39'18.11.2025'#39
      end
      item
        Name = 'kv'
        Value = #39#39
      end
      item
        Name = 'buhg'
        Value = #39'bbbbbbb'#39
      end
      item
        Name = 'nach'
        Value = #39'nnnnn'#39
      end
      item
        Name = 'plos_ob'
        Value = '83,1'
      end
      item
        Name = 'sum'
        Value = '123,68'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Filter = '<frxDBDataset1."CH">=1'
        RowCount = 0
        object frxDBDataset1NAIM: TfrxMemoView
          Left = 298.582870000000000000
          Width = 241.889920000000000000
          Height = 22.677180000000000000
          DataField = 'NAIM'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."NAIM"]')
          ParentFont = False
        end
        object frxDBDataset1SALREP: TfrxMemoView
          Left = 540.472790000000000000
          Width = 173.858380000000000000
          Height = 22.677180000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."DOLGREP"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 257.008040000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."SCHET"'
        object Memo21: TfrxMemoView
          Left = 56.692950000000000000
          Top = 207.874150000000000000
          Width = 302.362400000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1042#1057#1068#1054#1043#1054' '#1087#1086' '#1082#1086#1084#1091#1085#1072#1083#1100#1085#1080#1084' '#1087#1086#1089#1083#1091#1075#1072#1084':')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 366.614410000000000000
          Top = 207.874150000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[iif(Int(<sum>)<>0,Int(<sum>),IIF(<sum><0,'#39'-0'#39','#39'0'#39'))] ')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 438.425480000000000000
          Top = 207.874150000000000000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1075#1088#1085)
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 472.441250000000000000
          Top = 207.874150000000000000
          Width = 52.913420000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<sum><>0,IIF(abs((<sum>-Int(<sum>))*100)>9,Round(abs((<sum>' +
              '-Int(<sum>))*100)),'#39'0'#39'+inttostr(Round(abs((<sum>-Int(<sum>))*100' +
              ')))),'#39'00'#39')]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 525.354670000000000000
          Top = 207.874150000000000000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1082#1086#1087)
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 56.692950000000000000
          Top = 230.551330000000000000
          Width = 45.354360000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1074' '#1090'.'#1095'.')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 151.130806270000000000
          Top = 26.456710000000000000
          Width = 279.685220000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1042#1080#1087#1080#1089#1082#1072' '#1079' '#1086#1089#1086#1073#1086#1074#1086#1075#1086' '#1088#1072#1093#1091#1085#1082#1091)
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 56.692950000000000000
          Top = 64.252010000000000000
          Width = 147.401670000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1050#1074#1072#1088#1090#1080#1088#1086#1085#1072#1081#1084#1072#1095)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 56.692950000000000000
          Top = 90.708720000000000000
          Width = 181.417440000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1055#1088#1086#1078#1080#1074#1072#1108' '#1079#1072' '#1072#1076#1088#1077#1089#1086#1102' :')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 245.669450000000000000
          Top = 90.708720000000000000
          Width = 457.323130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ul]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 56.692950000000000000
          Top = 117.165430000000000000
          Width = 192.756030000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1050#1074#1072#1088#1090#1080#1088#1072' '#1089#1082#1083#1072#1076#1072#1108#1090#1100#1089#1103' '#1110#1079)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 249.448980000000000000
          Top = 117.165430000000000000
          Width = 45.354360000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[koli_k]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 294.803340000000000000
          Top = 117.165430000000000000
          Width = 215.433210000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1082#1110#1084#1085#1072#1090', '#1087#1083#1086#1097#1072' ')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 570.709030000000000000
          Top = 117.165430000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1084'. '#1082#1074'.')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 510.236550000000000000
          Top = 117.165430000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[plos_ob]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 56.692950000000000000
          Top = 143.622140000000000000
          Width = 158.740260000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1057#1110#1084#39#1103' '#1089#1082#1083#1072#1076#1072#1108#1090#1100#1089#1103' '#1110#1079)
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 215.433210000000000000
          Top = 143.622140000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[koli_p]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 272.126160000000000000
          Top = 143.622140000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1095#1086#1083#1086#1074#1110#1082)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 56.692950000000000000
          Top = 177.637910000000000000
          Width = 211.653680000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1047#1072#1073#1088#1075#1086#1074#1072#1085#1110#1089#1090#1100' '#1089#1090#1072#1085#1086#1084' '#1085#1072)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 272.126160000000000000
          Top = 177.637910000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dolg_dt]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 400.630180000000000000
          Top = 177.637910000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1089#1082#1083#1072#1076#1072#1108)
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 434.645950000000000000
          Top = 26.456710000000000000
          Width = 173.858380000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[schet]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 245.669450000000000000
          Top = 64.252010000000000000
          Width = 457.323130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fio]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[org]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 151.181200000000000000
        ParentFont = False
        Top = 343.937230000000000000
        Width = 718.110700000000000000
        object Memo37: TfrxMemoView
          Left = 60.472480000000000000
          Top = 22.677180000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1080)
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 166.299320000000000000
          Top = 22.677180000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[opl_dt]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 294.803340000000000000
          Top = 22.677180000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1089#1091#1084#1072' '#1086#1087#1083#1072#1090#1080)
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 400.630180000000000000
          Top = 22.677180000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[iif(Int(<opl>)<>0,Int(<opl>),IIF(<opl><0,'#39'-0'#39','#39'0'#39'))] ')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 472.441250000000000000
          Top = 22.677180000000000000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1075#1088#1085)
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 506.457020000000000000
          Top = 22.677180000000000000
          Width = 52.913420000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<opl><>0,IIF(abs((<opl>-Int(<opl>))*100)>9,Round(abs((<opl>' +
              '-Int(<opl>))*100)),'#39'0'#39'+inttostr(Round(abs((<opl>-Int(<opl>))*100' +
              ')))),'#39#39')]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 559.370440000000000000
          Top = 22.677180000000000000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1082#1086#1087)
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 60.472480000000000000
          Top = 54.354360000000000000
          Width = 430.866420000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1042#1080#1087#1080#1089#1082#1072' '#1074#1080#1076#1072#1085#1072' '#1076#1083#1103' '#1087#1088#1077#1076#39#1103#1074#1083#1077#1085#1085#1103' '#1087#1086' '#1084#1110#1089#1094#1102' '#1074#1080#1084#1086#1075#1080'.')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 173.858380000000000000
          Top = 77.031540000000000000
          Width = 162.519790000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1053#1072#1095#1072#1083#1100#1085#1080#1082)
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 173.858380000000000000
          Top = 111.047310000000000000
          Width = 162.519790000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1041#1091#1093#1075#1072#1083#1090#1077#1088)
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 37.795300000000000000
          Top = 111.047310000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[dt]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 347.716760000000000000
          Top = 80.811070000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 347.716760000000000000
          Top = 114.826840000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
        end
        object Memo100: TfrxMemoView
          Left = 461.102660000000000000
          Top = 114.826840000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Buhg]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 461.102660000000000000
          Top = 80.811070000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Nach]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 147.401670000000000000
          Width = 702.992580000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 801.260360000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Filter = '<frxDBDataset1."CH">=1'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 298.582870000000000000
          Width = 241.889920000000000000
          Height = 22.677180000000000000
          DataField = 'NAIM'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."NAIM"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 540.472790000000000000
          Width = 173.858380000000000000
          Height = 22.677180000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."DOLGREP"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 260.787570000000000000
        Top = 517.795610000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."SCHET"'
        object Memo7: TfrxMemoView
          Left = 60.472480000000000000
          Top = 215.433210000000000000
          Width = 302.362400000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1042#1057#1068#1054#1043#1054' '#1087#1086' '#1082#1086#1084#1091#1085#1072#1083#1100#1085#1080#1084' '#1087#1086#1089#1083#1091#1075#1072#1084':')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 370.393940000000000000
          Top = 215.433210000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[iif(Int(<sum>)<>0,Int(<sum>),IIF(<sum><0,'#39'-0'#39','#39'0'#39'))] ')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 442.205010000000000000
          Top = 215.433210000000000000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1075#1088#1085)
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 476.220780000000000000
          Top = 215.433210000000000000
          Width = 52.913420000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<sum><>0,IIF(abs((<sum>-Int(<sum>))*100)>9,Round(abs((<sum>' +
              '-Int(<sum>))*100)),'#39'0'#39'+inttostr(Round(abs((<sum>-Int(<sum>))*100' +
              ')))),'#39'00'#39')]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 529.134200000000000000
          Top = 215.433210000000000000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1082#1086#1087)
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 60.472480000000000000
          Top = 238.110390000000000000
          Width = 45.354360000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1074' '#1090'.'#1095'.')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 154.910336270000000000
          Top = 34.015770000000000000
          Width = 279.685220000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1042#1080#1087#1080#1089#1082#1072' '#1079' '#1086#1089#1086#1073#1086#1074#1086#1075#1086' '#1088#1072#1093#1091#1085#1082#1091)
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 60.472480000000000000
          Top = 71.811070000000000000
          Width = 147.401670000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1050#1074#1072#1088#1090#1080#1088#1086#1085#1072#1081#1084#1072#1095)
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 60.472480000000000000
          Top = 98.267780000000000000
          Width = 181.417440000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1055#1088#1086#1078#1080#1074#1072#1108' '#1079#1072' '#1072#1076#1088#1077#1089#1086#1102' :')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 249.448980000000000000
          Top = 71.811070000000000000
          Width = 457.323130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fio]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 60.472480000000000000
          Top = 124.724490000000000000
          Width = 192.756030000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1050#1074#1072#1088#1090#1080#1088#1072' '#1089#1082#1083#1072#1076#1072#1108#1090#1100#1089#1103' '#1110#1079)
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 253.228510000000000000
          Top = 124.724490000000000000
          Width = 45.354360000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[koli_k]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 298.582870000000000000
          Top = 124.724490000000000000
          Width = 215.433210000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1082#1110#1084#1085#1072#1090', '#1087#1083#1086#1097#1072' ')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 574.488560000000000000
          Top = 124.724490000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1084'. '#1082#1074'.')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 514.016080000000000000
          Top = 124.724490000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[plos_ob]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 60.472480000000000000
          Top = 151.181200000000000000
          Width = 158.740260000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1057#1110#1084#39#1103' '#1089#1082#1083#1072#1076#1072#1108#1090#1100#1089#1103' '#1110#1079)
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 219.212740000000000000
          Top = 151.181200000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[koli_p]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 275.905690000000000000
          Top = 151.181200000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1095#1086#1083#1086#1074#1110#1082)
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 60.472480000000000000
          Top = 185.196970000000000000
          Width = 211.653680000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1047#1072#1073#1088#1075#1086#1074#1072#1085#1110#1089#1090#1100' '#1089#1090#1072#1085#1086#1084' '#1085#1072)
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 275.905690000000000000
          Top = 185.196970000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dolg_dt]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 404.409710000000000000
          Top = 185.196970000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1089#1082#1083#1072#1076#1072#1108)
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 438.425480000000000000
          Top = 34.015770000000000000
          Width = 173.858380000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[schet]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 249.448980000000000000
          Top = 98.267780000000000000
          Width = 457.323130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ul]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 7.559060000000000000
          Width = 434.645950000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[org]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 147.401670000000000000
        ParentFont = False
        Top = 846.614720000000000000
        Width = 718.110700000000000000
        object Memo60: TfrxMemoView
          Left = 60.472480000000000000
          Top = 22.677180000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1080)
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 166.299320000000000000
          Top = 22.677180000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[opl_dt]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 294.803340000000000000
          Top = 22.677180000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1089#1091#1084#1072' '#1086#1087#1083#1072#1090#1080)
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 400.630180000000000000
          Top = 22.677180000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[iif(Int(<opl>)<>0,Int(<opl>),IIF(<opl><0,'#39'-0'#39','#39'0'#39'))] ')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 472.441250000000000000
          Top = 22.677180000000000000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1075#1088#1085)
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 506.457020000000000000
          Top = 22.677180000000000000
          Width = 52.913420000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<opl><>0,IIF(abs((<opl>-Int(<opl>))*100)>9,Round(abs((<opl>' +
              '-Int(<opl>))*100)),'#39'0'#39'+inttostr(Round(abs((<opl>-Int(<opl>))*100' +
              ')))),'#39#39')]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 559.370440000000000000
          Top = 22.677180000000000000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1082#1086#1087)
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 60.472480000000000000
          Top = 58.354360000000000000
          Width = 430.866420000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1042#1080#1087#1080#1089#1082#1072' '#1074#1080#1076#1072#1085#1072' '#1076#1083#1103' '#1087#1088#1077#1076#39#1103#1074#1083#1077#1085#1085#1103' '#1087#1086' '#1084#1110#1089#1094#1102' '#1074#1080#1084#1086#1075#1080'.')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 173.858380000000000000
          Top = 81.031540000000000000
          Width = 162.519790000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1053#1072#1095#1072#1083#1100#1085#1080#1082)
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 173.858380000000000000
          Top = 115.047310000000000000
          Width = 162.519790000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1041#1091#1093#1075#1072#1083#1090#1077#1088)
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 37.795300000000000000
          Top = 115.047310000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[dt]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 347.716760000000000000
          Top = 84.811070000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 347.716760000000000000
          Top = 118.826840000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
        end
        object Memo73: TfrxMemoView
          Left = 461.102660000000000000
          Top = 118.826840000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Buhg]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 461.102660000000000000
          Top = 84.811070000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Nach]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PERIOD=PERIOD'
      'SCHET=SCHET'
      'UPD=UPD'
      'NAIM=NAIM'
      'CH=CH'
      'DOLG=DOLG'
      'DOLGREP=DOLGREP')
    DataSource = DSOBOR
    BCDToCurrency = False
    Left = 388
    Top = 295
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select schet,max(dt) maxdt,sum(opl) from opl where period=:dt an' +
        'd schet=:sch group by schet')
    Left = 263
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dt'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sch'
        ParamType = ptUnknown
      end>
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
    Left = 264
    Top = 232
  end
end
