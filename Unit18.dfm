object Form18: TForm18
  Left = 0
  Top = 0
  Caption = 'Form18'
  ClientHeight = 536
  ClientWidth = 661
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 661
    Height = 209
    Align = alTop
    TabOrder = 0
    object cxLabel4: TcxLabel
      Left = 138
      Top = 186
      Caption = #1041#1086#1088#1078#1085#1080#1082#1080' '#1085#1072' '#1087#1086#1095#1072#1090#1086#1082
    end
    object cxGrid2: TcxGrid
      Left = 367
      Top = 22
      Width = 289
      Height = 181
      TabOrder = 1
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DSWID
        DataController.DetailKeyFieldNames = 'WID'
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
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
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
      Left = 402
      Top = 3
      Caption = ' - '#1042#1110#1076#1084#1110#1090#1080#1090#1080' '#1074#1089#1110' '#1087#1086#1089#1083#1091#1075#1080
    end
    object cxLabel9: TcxLabel
      Left = 258
      Top = 186
      Caption = #1076#1072#1090#1072' '
    end
    object cxCheckBox3: TcxCheckBox
      Left = 375
      Top = 1
      Properties.OnChange = cxCheckBox3PropertiesChange
      TabOrder = 4
    end
    object cxGroupBox1: TcxGroupBox
      Left = 8
      Top = 8
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1074#1110#1076#1073#1086#1088#1091
      TabOrder = 5
      Height = 172
      Width = 353
      object cxButton2: TcxButton
        Left = 3
        Top = 14
        Width = 94
        Height = 56
        Caption = #1047#1072#1074#1072#1085#1090#1072#1078'. '#1073#1086#1088#1078#1085#1080#1082#1110#1074
        TabOrder = 0
        WordWrap = True
        OnClick = cxButton2Click
      end
      object cxLabel1: TcxLabel
        Left = 3
        Top = 88
        Caption = #1057#1091#1084#1072' '#1079#1072#1075'. '#1073#1086#1088#1075#1091' '#1085#1072' '#1087#1086#1095'. '#1087#1086#1090#1086#1095'. '#1087#1077#1088#1110#1086#1076#1091
      end
      object cxComboBox2: TcxComboBox
        Left = 6
        Top = 105
        Properties.Items.Strings = (
          '='
          '<>'
          '>='
          '<=')
        TabOrder = 2
        Text = '>='
        Width = 44
      end
      object cxLabel6: TcxLabel
        Left = 14
        Top = 127
        Caption = #1055#1086#1096#1091#1082' '#1087#1086' '#1088#1072#1093#1091#1085#1082#1091
      end
      object cxTextEdit4: TcxTextEdit
        Left = 3
        Top = 148
        TabOrder = 4
        Width = 121
      end
      object cxButton1: TcxButton
        Left = 130
        Top = 144
        Width = 71
        Height = 25
        Caption = #1055#1086#1096#1091#1082
        TabOrder = 5
        OnClick = cxButton1Click
      end
      object cxCalcEdit2: TcxCalcEdit
        Left = 62
        Top = 105
        EditValue = 0.000000000000000000
        TabOrder = 6
        Width = 121
      end
      object cxButton7: TcxButton
        Left = 120
        Top = 14
        Width = 97
        Height = 56
        BiDiMode = bdLeftToRight
        Caption = #1044#1086#1073#1072#1074#1080#1090#1080' '#1074#1110#1076#1084#1110#1095#1077#1085#1110
        ParentBiDiMode = False
        PopupAlignment = paCenter
        TabOrder = 7
        WordWrap = True
        OnClick = cxButton7Click
      end
      object cxLabel12: TcxLabel
        Left = 98
        Top = 34
        Caption = '->'
      end
      object cxButton4: TcxButton
        Left = 220
        Top = 144
        Width = 74
        Height = 25
        Caption = #1042' '#1045#1082#1089#1077#1083#1100
        TabOrder = 9
        OnClick = cxButton4Click
      end
    end
    object cxLabel2: TcxLabel
      Left = 22
      Top = 186
      Caption = ' - '#1042#1110#1076#1084#1110#1090#1080#1090#1080' '#1074#1089#1110
    end
    object cxCheckBox1: TcxCheckBox
      Left = 8
      Top = 183
      Properties.OnChange = cxCheckBox1PropertiesChange
      TabOrder = 7
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 209
    Width = 661
    Height = 327
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 323
    ClientRectLeft = 4
    ClientRectRight = 657
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = #1055#1086' '#1072#1073#1086#1085#1077#1085#1090#1072#1084
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 653
        Height = 299
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
          OnEditValueChanged = cxGrid1DBTableView1EditValueChanged
          DataController.DataSource = DSREP
          DataController.DetailKeyFieldNames = 'SCHET'
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
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
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1055#1086' '#1073#1091#1076#1080#1085#1082#1072#1084
      ImageIndex = 1
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 653
        Height = 299
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
          OnEditValueChanged = cxGrid1DBTableView1EditValueChanged
          DataController.DataSource = DSREPDOM
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          OptionsView.Indicator = True
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
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
      ' select wid,naim, 0 as ch, snaim from WID')
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
    Top = 264
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
    object IBWIDSNAIM: TIBStringField
      FieldName = 'SNAIM'
      Origin = '"WID"."SNAIM"'
      Size = 8
    end
  end
  object DSWID: TDataSource
    DataSet = IBWID
    Left = 616
    Top = 312
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
      'select 0 as ch from OBOR'
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
    Left = 566
    Top = 264
  end
  object DSREP: TDataSource
    DataSet = IBREP
    Left = 566
    Top = 312
  end
  object IBREPDOM: TIBDataSet
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
      'select 0 as ch from OBOR'
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
    Left = 510
    Top = 264
  end
  object DSREPDOM: TDataSource
    DataSet = IBREPDOM
    Left = 510
    Top = 320
  end
end
