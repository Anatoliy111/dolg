object Form5: TForm5
  Left = 0
  Top = 0
  Caption = #1053#1086#1090#1072#1090#1082#1080
  ClientHeight = 659
  ClientWidth = 651
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 321
    Top = 73
    Width = 32
    Height = 586
    Align = alLeft
    TabOrder = 0
  end
  object cxGrid2: TcxGrid
    Left = 353
    Top = 73
    Width = 298
    Height = 586
    Align = alClient
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = Form1.DSNOTE2
      DataController.DetailKeyFieldNames = 'KL'
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
      object cxGridDBTableView1NOTE: TcxGridDBColumn
        Caption = #1053#1086#1090#1072#1090#1082#1080'2'
        DataBinding.FieldName = 'NOTE'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 73
    Width = 321
    Height = 586
    Align = alLeft
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = Form1.DSNOTE1
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
      object cxGrid1DBTableView1NOTE: TcxGridDBColumn
        Caption = #1053#1086#1090#1072#1090#1082#1080'1'
        DataBinding.FieldName = 'NOTE'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 651
    Height = 73
    Align = alTop
    TabOrder = 3
    object DBNavigator1: TDBNavigator
      Left = 10
      Top = 42
      Width = 240
      Height = 25
      DataSource = Form1.DSNOTE1
      TabOrder = 0
    end
    object DBNavigator2: TDBNavigator
      Left = 378
      Top = 42
      Width = 240
      Height = 25
      DataSource = Form1.DSNOTE2
      TabOrder = 1
    end
  end
end
