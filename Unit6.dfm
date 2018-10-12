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
    object DBNavigator1: TDBNavigator
      Left = 10
      Top = 122
      Width = 240
      Height = 25
      DataSource = Form1.DSUSER
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 10
      Top = 18
      Width = 173
      Height = 25
      Caption = #1055#1077#1088#1077#1079#1072#1087#1080#1089#1072#1090#1080' '#1082#1072#1088#1090#1082#1080
      TabOrder = 1
      OnClick = cxButton2Click
    end
    object cxProgressBar1: TcxProgressBar
      Left = 152
      Top = 95
      TabOrder = 2
      Width = 345
    end
    object cxButton1: TcxButton
      Left = 218
      Top = 18
      Width = 173
      Height = 25
      Caption = #1055#1072#1088#1089#1077#1088' DBF'
      TabOrder = 3
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
end
