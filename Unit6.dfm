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
    ExplicitTop = -6
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
end
