object Form17: TForm17
  Left = 0
  Top = 0
  Caption = 'Form17'
  ClientHeight = 624
  ClientWidth = 900
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 900
    Height = 209
    Align = alTop
    TabOrder = 0
    object cxGroupBox1: TcxGroupBox
      Left = 8
      Top = 8
      Alignment = alTopCenter
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1074#1110#1076#1073#1086#1088#1091
      TabOrder = 0
      Height = 172
      Width = 601
      object cxButton2: TcxButton
        Left = 3
        Top = 15
        Width = 86
        Height = 56
        Caption = #1047#1072#1074#1072#1085#1090#1072#1078'. '#1073#1086#1088#1078#1085#1080#1082#1110#1074
        TabOrder = 0
        WordWrap = True
        OnClick = cxButton2Click
      end
      object cxLabel1: TcxLabel
        Left = 3
        Top = 77
        Caption = #1057#1091#1084#1072' '#1079#1072#1075'. '#1073#1086#1088#1075#1091' '#1085#1072' '#1087#1086#1095'. '#1087#1086#1090#1086#1095'. '#1087#1077#1088#1110#1086#1076#1091
      end
      object cxComboBox2: TcxComboBox
        Left = 19
        Top = 100
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
        Left = 69
        Top = 100
        EditValue = 0.000000000000000000
        TabOrder = 6
        Width = 121
      end
      object cxButton5: TcxButton
        Left = 356
        Top = 15
        Width = 87
        Height = 56
        Caption = #1042#1110#1076#1087#1088#1072#1074#1082#1072' '#1057#1052#1057
        TabOrder = 7
        WordWrap = True
        OnClick = cxButton5Click
      end
      object cxButton4: TcxButton
        Left = 471
        Top = 15
        Width = 82
        Height = 56
        Caption = #1055#1077#1088#1077#1074#1110#1088#1080#1090#1080' '#1089#1090#1072#1090#1091#1089
        TabOrder = 8
        WordWrap = True
      end
      object cxButton6: TcxButton
        Left = 236
        Top = 15
        Width = 92
        Height = 56
        BiDiMode = bdLeftToRight
        Caption = #1055#1077#1088#1077#1074#1110#1088#1080#1090#1080' '#1090#1072' '#1079#1092#1086#1088#1084#1091#1074#1072#1090#1080' '#1057#1052#1057
        ParentBiDiMode = False
        PopupAlignment = paCenter
        TabOrder = 9
        WordWrap = True
        OnClick = cxButton6Click
      end
      object cxLabel2: TcxLabel
        Left = 248
        Top = 88
        Caption = #1055#1077#1088#1077#1074#1110#1088#1082#1072
      end
      object cxLabel3: TcxLabel
        Left = 224
        Top = 147
        Caption = #1055#1077#1088#1077#1074#1110#1088#1082#1072
      end
      object cxLabel5: TcxLabel
        Left = 95
        Top = 33
        Caption = '->'
      end
      object cxLabel7: TcxLabel
        Left = 334
        Top = 33
        Caption = '->'
      end
      object cxLabel10: TcxLabel
        Left = 449
        Top = 33
        Caption = '->'
      end
      object cxButton7: TcxButton
        Left = 117
        Top = 15
        Width = 92
        Height = 56
        BiDiMode = bdLeftToRight
        Caption = #1042#1080#1076#1072#1083#1080#1090#1080' '#1079#1072#1087#1080#1089#1080' '#1073#1077#1079' '#1090#1077#1083#1077#1092#1086#1085#1110#1074
        ParentBiDiMode = False
        PopupAlignment = paCenter
        TabOrder = 15
        WordWrap = True
        OnClick = cxButton6Click
      end
      object cxLabel12: TcxLabel
        Left = 214
        Top = 33
        Caption = '->'
      end
    end
    object cxLabel4: TcxLabel
      Left = 303
      Top = 186
      Caption = #1041#1086#1088#1078#1085#1080#1082#1080' '#1085#1072' '#1087#1086#1095#1072#1090#1086#1082
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
      Left = 423
      Top = 186
      Caption = #1076#1072#1090#1072' '
    end
    object cxCheckBox3: TcxCheckBox
      Left = 615
      Top = 1
      Properties.OnChange = cxCheckBox3PropertiesChange
      TabOrder = 5
    end
    object cxButton3: TcxButton
      Left = 535
      Top = 181
      Width = 74
      Height = 25
      Caption = #1042' '#1045#1082#1089#1077#1083#1100
      TabOrder = 6
      OnClick = cxButton3Click
    end
    object cxButton8: TcxButton
      Left = 14
      Top = 183
      Width = 57
      Height = 21
      Hint = #1042#1080#1076#1072#1083#1080#1090#1080
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OptionsImage.Layout = blGlyphRight
      TabOrder = 7
      OnClick = cxButton8Click
    end
    object cxLabel11: TcxLabel
      Left = 71
      Top = 185
      Caption = '-- '#1074#1080#1076#1072#1083#1080#1090#1080' '#1079#1072#1087#1080#1089
    end
  end
  object cxGrid1: TcxGrid
    Left = 8
    Top = 215
    Width = 399
    Height = 362
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
      OnEditValueChanged = cxGrid1DBTableView1EditValueChanged
      DataController.DataSource = DSREP
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
  object cxGrid3: TcxGrid
    Left = 413
    Top = 215
    Width = 487
    Height = 362
    TabOrder = 2
    object cxGridDBTableView2: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.CustomizeDialog = False
      FilterBox.Visible = fvNever
      DataController.DataSource = DSSMSLIST
      DataController.DetailKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGridDBTableView2DOLG
        end
        item
          Kind = skSum
          OnGetText = cxGridDBTableView2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText
          Column = cxGridDBTableView2KOL_SMS
        end>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnAddValueItems = False
      Filtering.ColumnMRUItemsList = False
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsData.Editing = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      object cxGridDBTableView2SCHET: TcxGridDBColumn
        Caption = #1056#1072#1093#1091#1085#1086#1082
        DataBinding.FieldName = 'SCHET'
      end
      object cxGridDBTableView2FIO: TcxGridDBColumn
        Caption = #1055#1030#1055
        DataBinding.FieldName = 'FIO'
        Width = 157
      end
      object cxGridDBTableView2ULNAIM: TcxGridDBColumn
        Caption = #1042#1091#1083#1080#1094#1103
        DataBinding.FieldName = 'ULNAIM'
        Width = 168
      end
      object cxGridDBTableView2NOMDOM: TcxGridDBColumn
        Caption = #1041#1091#1076#1080#1085#1086#1082
        DataBinding.FieldName = 'NOMDOM'
      end
      object cxGridDBTableView2NOMKV: TcxGridDBColumn
        Caption = #1050#1074'.'
        DataBinding.FieldName = 'NOMKV'
      end
      object cxGridDBTableView2TEL: TcxGridDBColumn
        Caption = #1058#1077#1083#1077#1092#1086#1085
        DataBinding.FieldName = 'TEL'
        Width = 99
      end
      object cxGridDBTableView2DOLG: TcxGridDBColumn
        Caption = #1041#1086#1088#1075
        DataBinding.FieldName = 'DOLG'
      end
      object cxGridDBTableView2STATUS: TcxGridDBColumn
        Caption = #1057#1090#1072#1090#1091#1089
        DataBinding.FieldName = 'STATUS'
        Width = 192
      end
      object cxGridDBTableView2KOL_SMS: TcxGridDBColumn
        Caption = #1050'-'#1089#1090#1100' '#1089#1084#1089
        DataBinding.FieldName = 'KOL_SMS'
      end
      object cxGridDBTableView2TEXT: TcxGridDBColumn
        Caption = #1058#1077#1082#1089#1090' '#1057#1052#1057
        DataBinding.FieldName = 'TEXT'
        Width = 360
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = cxGridDBTableView2
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
    object IBWIDSNAIM: TIBStringField
      FieldName = 'SNAIM'
      Origin = '"WID"."SNAIM"'
      Size = 8
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
      
        'select vw_obkr.period,vw_obkr.schet,vw_obkr.fio,vw_obkr.ulnaim,v' +
        'w_obkr.nomdom,vw_obkr.nomkv,'
      'aboninf.tel'
      ' from vw_obkr'
      'join aboninf on (aboninf.schet=vw_obkr.schet)'
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
    OnFilterRecord = IBREPFilterRecord
    Left = 688
    Top = 472
  end
  object DSREP: TDataSource
    DataSet = IBREP
    Left = 688
    Top = 520
  end
  object IBSEND: TIBDataSet
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
    Left = 760
    Top = 472
  end
  object DSSEND: TDataSource
    DataSet = IBSEND
    Left = 760
    Top = 520
  end
  object IBSMSLIST: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction3
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SMSLIST'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into SMSLIST'
      
        '  (ID, ID_SMSORDER, SCHET, FIO, ULNAIM, NOMDOM, NOMKV, TEL, TEXT' +
        ', ALPHANAME, '
      '   WAPPUSH, DOLG, STATUS, MESSAGEID, KOL_SMS)'
      'values'
      
        '  (:ID, :ID_SMSORDER, :SCHET, :FIO, :ULNAIM, :NOMDOM, :NOMKV, :T' +
        'EL, :TEXT, '
      '   :ALPHANAME, :WAPPUSH, :DOLG, :STATUS, :MESSAGEID, :KOL_SMS)')
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
      '  ALPHANAME,'
      '  WAPPUSH,'
      '  DOLG,'
      '  STATUS,'
      '  MESSAGEID,'
      '  KOL_SMS'
      'from SMSLIST '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from SMSLIST where ID_SMSORDER=:idord')
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
      '  ALPHANAME = :ALPHANAME,'
      '  WAPPUSH = :WAPPUSH,'
      '  DOLG = :DOLG,'
      '  STATUS = :STATUS,'
      '  MESSAGEID = :MESSAGEID,'
      '  KOL_SMS = :KOL_SMS'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    Left = 568
    Top = 472
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
  end
  object DSSMSLIST: TDataSource
    DataSet = IBSMSLIST
    Left = 568
    Top = 520
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction3
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      '')
    Left = 568
    Top = 408
  end
end
