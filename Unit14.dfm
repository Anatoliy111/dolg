object Form14: TForm14
  Left = 0
  Top = 0
  Caption = 'Form14'
  ClientHeight = 656
  ClientWidth = 947
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 947
    Height = 209
    Align = alTop
    TabOrder = 0
    object cxGroupBox1: TcxGroupBox
      Left = 8
      Top = 8
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1074#1110#1076#1073#1086#1088#1091
      TabOrder = 0
      Height = 172
      Width = 601
      object cxLabel2: TcxLabel
        Left = 204
        Top = 13
        Caption = #1057#1091#1084#1072' '#1073#1086#1088#1075#1091' '#1087#1086' '#1087#1086#1089#1083#1091#1075#1072#1084
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
        Left = 204
        Top = 63
        Caption = #1057#1091#1084#1072' '#1079#1072#1075#1072#1083#1100#1085#1086#1075#1086' '#1073#1086#1088#1075#1091
      end
      object cxCheckBox1: TcxCheckBox
        Left = 189
        Top = 36
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
      object cxTextEdit3: TcxTextEdit
        Left = 392
        Top = 121
        TabOrder = 7
        Width = 121
      end
      object cxButton9: TcxButton
        Left = 519
        Top = 117
        Width = 71
        Height = 25
        Caption = #1055#1088#1080#1084#1110#1085#1080#1090#1080
        TabOrder = 8
        OnClick = cxButton1Click
      end
      object cxLabel5: TcxLabel
        Left = 412
        Top = 105
        Caption = #1060#1110#1083#1100#1090#1088' '#1087#1086' '#1055#1030#1041
      end
      object cxLabel6: TcxLabel
        Left = 204
        Top = 105
        Caption = #1060#1110#1083#1100#1090#1088' '#1087#1086' '#1088#1072#1093#1091#1085#1082#1091
      end
      object cxTextEdit4: TcxTextEdit
        Left = 189
        Top = 121
        TabOrder = 11
        Width = 121
      end
      object cxLookupComboBox1: TcxLookupComboBox
        Left = 3
        Top = 38
        Properties.KeyFieldNames = 'PERIOD'
        Properties.ListColumns = <
          item
            FieldName = 'PERIOD'
          end>
        Properties.ListSource = Form1.DSPERIOD
        TabOrder = 12
        Width = 169
      end
      object cxLabel3: TcxLabel
        Left = 43
        Top = 15
        Caption = #1042#1080#1073#1077#1088#1110#1090#1100' '#1087#1077#1088#1110#1086#1076
      end
      object cxButton1: TcxButton
        Left = 316
        Top = 117
        Width = 71
        Height = 25
        Caption = #1055#1088#1080#1084#1110#1085#1080#1090#1080
        TabOrder = 14
        OnClick = cxButton1Click
      end
      object Memo1: TMemo
        Left = 412
        Top = 23
        Width = 170
        Height = 57
        BorderStyle = bsNone
        Lines.Strings = (
          #1056#1086#1079#1088#1072#1093#1091#1085#1086#1082' '#1079#1072#1075#1072#1083#1100#1085#1086#1075#1086' '#1073#1086#1088#1075#1091' '
          #1090#1072' '#1073#1086#1088#1075#1091' '#1087#1086' '#1087#1086#1089#1083#1091#1075#1072#1084' - '#1085#1072' '
          #1082#1110#1085#1077#1094#1100' '#1074#1080#1073#1088#1072#1085#1086#1075#1086' '#1087#1077#1088#1110#1086#1076#1091'!!!')
        ReadOnly = True
        TabOrder = 15
        StyleElements = [seFont, seBorder]
      end
      object cxCalcEdit1: TcxCalcEdit
        Left = 266
        Top = 38
        EditValue = 0.000000000000000000
        TabOrder = 16
        Width = 121
      end
      object cxCalcEdit2: TcxCalcEdit
        Left = 266
        Top = 86
        EditValue = 0.000000000000000000
        TabOrder = 17
        Width = 121
      end
      object cxButton5: TcxButton
        Left = 42
        Top = 112
        Width = 85
        Height = 25
        Caption = #1044#1088#1091#1082
        TabOrder = 18
        Visible = False
        OnClick = cxButton5Click
      end
      object cxButton3: TcxButton
        Left = 43
        Top = 143
        Width = 74
        Height = 25
        Caption = #1042' '#1045#1082#1089#1077#1083#1100
        TabOrder = 19
        OnClick = cxButton3Click
      end
    end
    object cxLabel4: TcxLabel
      Left = 303
      Top = 186
      Caption = #1047#1074#1110#1090' '#1079#1092#1086#1088#1084#1086#1074#1072#1085#1086
    end
    object cxGrid2: TcxGrid
      Left = 613
      Top = 22
      Width = 289
      Height = 181
      TabOrder = 2
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DSWID
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGridDBTableView1CH: TcxGridDBColumn
          DataBinding.FieldName = 'CH'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 60
        end
        object cxGridDBTableView1NAIM: TcxGridDBColumn
          DataBinding.FieldName = 'NAIM'
          Options.Editing = False
          Width = 227
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object cxLabel8: TcxLabel
      Left = 635
      Top = 3
      Caption = ' - '#1042#1110#1076#1084#1110#1090#1080#1090#1080' '#1074#1089#1110' '#1087#1086#1089#1083#1091#1075#1080
    end
    object cxLabel9: TcxLabel
      Left = 397
      Top = 186
      Caption = #1076#1072#1090#1072' '
    end
    object cxCheckBox3: TcxCheckBox
      Left = 615
      Top = 1
      Properties.OnChange = cxCheckBox3PropertiesChange
      TabOrder = 5
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 209
    Width = 947
    Height = 447
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSREP
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '0'
          Kind = skCount
          FieldName = 'NOTE1'
          DisplayText = 'note1'
        end
        item
          Format = '0.00'
          Kind = skSum
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          VisibleForCustomization = False
        end
        item
          Format = '0'
          Kind = skSum
        end
        item
          Format = '0'
          Kind = skSum
        end
        item
          Format = '0'
          Kind = skCount
          Position = spFooter
        end
        item
          Format = '0'
          Kind = skCount
        end
        item
          Format = '0.00'
          Kind = skSum
        end
        item
          Format = '0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '0.00'
          Kind = skSum
          Position = spFooter
        end>
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
          Kind = skCount
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object IBWID: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
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
      ' select wid,naim, 0 as ch from WID')
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
    object IBWIDNAIM: TIBStringField
      FieldName = 'NAIM'
      Origin = '"WID"."NAIM"'
      Size = 15
    end
    object IBWIDCH: TIntegerField
      FieldName = 'CH'
      ProviderFlags = []
    end
  end
  object DSWID: TDataSource
    DataSet = IBWID
    Left = 616
    Top = 528
  end
  object IBREP: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
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
      
        'select period,schet,fio,ulnaim,nomdom,nomkv,+max(kv)+max(el)+max' +
        '(sm)+max(om)+max(ot)+max(hv)+max(sn)+max(ub) as SAL,max(kv) kv,m' +
        'ax(el) el,max(sm) sm,max(om) om,max(ot) ot,max(hv) hv,max(sn) sn' +
        ',max(ub) ub from(select period,schet,fio,ulnaim,nomdom,nomkv,COA' +
        'LESCE(case wid when '#39'kv'#39' then sal else null end,0) as kv,COALESC' +
        'E(case wid when '#39'el'#39' then sal else null end,0) as el,COALESCE(ca' +
        'se wid when '#39'sm'#39' then sal else null end,0) as sm,COALESCE(case w' +
        'id when '#39'om'#39' then sal else null end,0) as om,COALESCE(case wid w' +
        'hen '#39'ot'#39' then sal else null end,0) as ot,COALESCE(case wid when ' +
        #39'hv'#39' then sal else null end,0) as hv,COALESCE(case wid when '#39'sn'#39 +
        ' then sal else null end,0) as sn,COALESCE(case wid when '#39'ub'#39' the' +
        'n sal else null end,0) as ub from vw_obkr where period=:dt) grou' +
        'p by period,schet,fio,ulnaim,nomdom,nomkv')
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
    OnFilterRecord = IBREPFilterRecord
    Left = 688
    Top = 472
  end
  object DSREP: TDataSource
    DataSet = IBREP
    Left = 688
    Top = 520
  end
  object IBPRINT: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
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
      
        'select period,kontrol,schet,fio,ulnaim,nomdom,nomkv,COALESCE(max' +
        '(kv),0)+COALESCE(max(el),0)+COALESCE(max(sm),0)+COALESCE(max(om)' +
        ',0)+COALESCE(max(ot),0)+COALESCE(max(hv),0)+COALESCE(max(sn),0)+' +
        'COALESCE(max(ub),0) as SAL,COALESCE(max(kv),0) kv,COALESCE(max(o' +
        'pl_kv),0) opl_kv,COALESCE(max(el),0) el,COALESCE(max(opl_el),0) ' +
        'opl_el,COALESCE(max(sm),0) sm,COALESCE(max(opl_sm),0) opl_sm,COA' +
        'LESCE(max(om),0) om,COALESCE(max(opl_om),0) opl_om,COALESCE(max(' +
        'ot),0) ot,COALESCE(max(opl_ot),0) opl_ot,COALESCE(max(hv),0) hv,' +
        'COALESCE(max(opl_hv),0) opl_hv,COALESCE(max(sn),0) sn,COALESCE(m' +
        'ax(opl_sn),0) opl_sn,COALESCE(max(ub),0) ub,COALESCE(max(opl_ub)' +
        ',0) opl_ub from(select period,kontrol,schet,fio,ulnaim,nomdom,no' +
        'mkv,case wid when '#39'kv'#39' then sal else null end as kv,case wid whe' +
        'n '#39'kv'#39' then fullopl else null end as opl_kv,case wid when '#39'el'#39' t' +
        'hen sal else null end as el,case wid when '#39'el'#39' then fullopl else' +
        ' null end as opl_el,case wid when '#39'sm'#39' then sal else null end as' +
        ' sm,case wid when '#39'sm'#39' then fullopl else null end as opl_sm,case' +
        ' wid when '#39'om'#39' then sal else null end as om,case wid when '#39'om'#39' t' +
        'hen fullopl else null end as opl_om,case wid when '#39'ot'#39' then sal ' +
        'else null end as ot,case wid when '#39'ot'#39' then fullopl else null en' +
        'd as opl_ot,case wid when '#39'hv'#39' then sal else null end as hv,case' +
        ' wid when '#39'hv'#39' then fullopl else null end as opl_hv,case wid whe' +
        'n '#39'sn'#39' then sal else null end as sn,case wid when '#39'sn'#39' then full' +
        'opl else null end as opl_sn,case wid when '#39'ub'#39' then sal else nul' +
        'l end as ub,case wid when '#39'ub'#39' then fullopl else null end as opl' +
        '_ub from vw_obkr where period=:dt) group by period,schet,fio,uln' +
        'aim,nomdom,nomkv,kontrol having COALESCE(max(kv),0)+COALESCE(max' +
        '(el),0)+COALESCE(max(sm),0)+COALESCE(max(om),0)+COALESCE(max(ot)' +
        ',0)+COALESCE(max(hv),0)+COALESCE(max(sn),0)+COALESCE(max(ub),0) ' +
        '<> 0')
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
    OnFilterRecord = IBREPFilterRecord
    Left = 760
    Top = 472
  end
  object DSPRINT: TDataSource
    DataSet = IBPRINT
    Left = 760
    Top = 520
  end
  object frxReport1: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43425.596407557900000000
    ReportOptions.LastChange = 43492.721173495370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnAfterPrint(Sender: TfrxComponent);'
      'var i,fl:integer;                                       '
      'begin'
      '      fl:=0;            '
      '      for i := 0 to frxDBDataset1.FieldAliases.Count - 1 do'
      '      if Pos('#39'-'#39', frxDBDataset1.FieldAliases.Names[i]) <> 1 then'
      '        begin'
      '           if fl>0 then'
      '           begin'
      '             '
      '           end;                     '
      '           if frxDBDataset1.FieldAliases.Names[i]='#39'SAL'#39' then'
      '              fl:=1;'
      '                                                     '
      '        end;                  '
      'end;'
      ''
      'begin'
      ''
      'frxDBDataset1.                              '
      ''
      'end.')
    Left = 528
    Top = 320
    Datasets = <
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
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
        Name = 'Dolgn'
        Value = Null
      end
      item
        Name = 'Fio'
        Value = Null
      end
      item
        Name = 'datemes'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnAfterPrint = 'Page1OnAfterPrint'
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 16.000000000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Top = 15.118120000000000000
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1042#1030#1058' '#1087#1086' '#1072#1073#1086#1085#1077#1085#1090#1072#1093)
          ParentFont = False
        end
        object datemes: TfrxMemoView
          Top = 64.252010000000000000
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1079#1074#1110#1090' '#1079#1092#1086#1088#1084#1086#1074#1072#1085#1086' [datenow] '#1079#1072' '#1087#1077#1088#1110#1086#1076' [datemes]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo60: TfrxMemoView
          Top = 41.574830000000000000
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1074' '#1088#1086#1079#1088#1110#1079#1110' '#1087#1086#1089#1083#1091#1075')'#9#9#9#9)
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 136.000000000000000000
        Width = 1046.929810000000000000
        object Memo3: TfrxMemoView
          Width = 71.811070000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1072#1093#1091#1085#1086#1082)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 72.031540000000000000
          Width = 117.165381180000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1030#1055)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 259.448980000000000000
          Width = 49.133858270000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[nameposl1]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 309.362400000000000000
          Width = 49.133858270000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[nameoplposl1]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 408.409710000000000000
          Width = 49.133858270000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[nameoplposl2]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 457.543600000000000000
          Width = 49.133858270000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[nameposl3]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 188.756030000000000000
          Width = 69.921259840000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1041#1086#1088#1075' '#1085#1072' '#1082#1110#1085'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 358.496290000000000000
          Width = 49.133858270000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[nameposl2]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 507.457020000000000000
          Width = 49.133858270000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[nameoplposl3]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 605.724800000000000000
          Width = 49.133858270000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[nameoplposl4]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 556.590910000000000000
          Width = 49.133858270000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[nameposl4]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 654.638220000000000000
          Width = 49.133858270000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[nameposl5]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 704.213050000000000000
          Width = 49.133858270000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[nameoplposl5]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 753.126470000000000000
          Width = 49.133858270000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[nameposl6]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 802.260360000000000000
          Width = 49.133858270000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[nameoplposl6]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 851.394250000000000000
          Width = 49.133858270000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[nameposl7]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 900.528140000000000000
          Width = 49.133858270000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[nameoplposl7]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 950.441560000000000000
          Width = 49.133858270000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[nameposl7]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 999.795920000000000000
          Width = 49.133858270000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[nameoplposl7]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 196.000000000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBDataset1."KONTROL"'
        object Memo2: TfrxMemoView
          Top = 15.118120000000010000
          Width = 884.410020000000000000
          Height = 26.456710000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1050#1086#1085#1090#1088#1086#1083#1077#1088' "[frxDBDataset1."kontrol"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 300.000000000000000000
        Width = 1046.929810000000000000
        AllowSplit = True
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object frxDBDataset1DOLG: TfrxMemoView
          Left = 68.031540000000000000
          Width = 120.944884330000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'FIO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."FIO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 188.976500000000000000
          Width = 69.921259842519710000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'SAL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."SAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1PRST: TfrxMemoView
          Left = 259.567100000000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[posl1]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1PERIOD: TfrxMemoView
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'SCHET'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."SCHET"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 309.141930000000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[opl1]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 358.275820000000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[posl2]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 407.409710000000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[opl2]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 456.543600000000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[posl3]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 505.677490000000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[opl3]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 554.811380000000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[posl4]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 603.945270000000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[opl4]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 653.079160000000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[posl5]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 702.213050000000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[opl5]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 751.346940000000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[posl6]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 800.480830000000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[opl6]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 849.614720000000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[posl7]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 898.748610000000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[opl7]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 947.882500000000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[posl8]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 997.016390000000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[opl8]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 380.000000000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object frxDBDataset1VID1: TfrxMemoView
          Left = 3.779530000000000000
          Width = 374.173470000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1042#1089#1100#1086#1075#1086' '#1087#1086' "[frxDBDataset."kontrol"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 516.000000000000000000
        Width = 1046.929810000000000000
        object Page: TfrxMemoView
          Left = 963.780150000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1057#1090#1086#1088'. [Page]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 420.000000000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000020000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1042#1089#1100#1086#1075#1086' '#1087#1086' '#1079#1074#1110#1090#1091)
          ParentFont = False
        end
      end
      object Memo19: TfrxMemoView
        Top = 15.118120000000000000
        Width = 521.575140000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          '[org]')
        ParentFont = False
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 256.000000000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBDataset1."DOM"'
        object frxDBDataset1UL: TfrxMemoView
          Top = 3.779530000000022000
          Width = 1035.591220000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = Form13.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."UL"] [frxDBDataset1."DOM"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 340.000000000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object Memo61: TfrxMemoView
          Width = 381.732530000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = Form13.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1042#1089#1100#1086#1075#1086' '#1087#1086' [frxDBDataset1."UL"] [frxDBDataset1."DOM"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PERIOD=PERIOD'
      'KONTROL=KONTROL'
      'SCHET=SCHET'
      'FIO=FIO'
      'ULNAIM=ULNAIM'
      'NOMDOM=NOMDOM'
      'NOMKV=NOMKV'
      'SAL=SAL'
      'KV=KV'
      'OPL_KV=OPL_KV'
      'EL=EL'
      'OPL_EL=OPL_EL'
      'SM=SM'
      'OPL_SM=OPL_SM'
      'OM=OM'
      'OPL_OM=OPL_OM'
      'OT=OT'
      'OPL_OT=OPL_OT'
      'HV=HV'
      'OPL_HV=OPL_HV'
      'SN=SN'
      'OPL_SN=OPL_SN'
      'UB=UB'
      'OPL_UB=OPL_UB')
    DataSet = IBPRINT
    BCDToCurrency = False
    Left = 616
    Top = 320
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'WID=WID'
      'NAIM=NAIM'
      'CH=CH')
    DataSet = IBWID
    BCDToCurrency = False
    Left = 696
    Top = 320
  end
end
