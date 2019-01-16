object Form4: TForm4
  Left = 0
  Top = 0
  Caption = #1040#1076#1088#1077#1089#1080
  ClientHeight = 525
  ClientWidth = 451
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
    Top = 468
    Width = 451
    Height = 57
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 309
      Top = 18
      Width = 125
      Height = 25
      Caption = #1054#1050
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 57
    Width = 451
    Height = 411
    Align = alClient
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = Form1.DSSP_ADRES
      DataController.MasterKeyFieldNames = 'KL'
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
      object cxGridDBTableView1CH: TcxGridDBColumn
        Caption = #1055#1055
        DataBinding.FieldName = 'CH'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayChecked = 'true'
        Properties.DisplayUnchecked = 'false'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Width = 30
      end
      object cxGridDBTableView1UL: TcxGridDBColumn
        Caption = #1042#1091#1083#1080#1094#1103
        DataBinding.FieldName = 'UL'
        Options.Editing = False
        Width = 301
      end
      object cxGridDBTableView1DOM: TcxGridDBColumn
        Caption = #1041#1091#1076#1080#1085#1086#1082
        DataBinding.FieldName = 'DOM'
        Options.Editing = False
        Width = 106
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 451
    Height = 57
    Align = alTop
    TabOrder = 2
    object cxLabel1: TcxLabel
      Left = 16
      Top = 16
      Caption = #1055#1086#1084#1110#1076#1100#1090#1077' '#1075#1072#1083#1086#1095#1082#1072#1084#1080' '#1072#1076#1088#1077#1089#1080' '#1103#1082#1110' '#1073#1072#1078#1072#1108#1090#1077' '#1074#1080#1073#1088#1072#1090#1080
    end
  end
end
