object Form16: TForm16
  Left = 0
  Top = 0
  Caption = #1046#1091#1088#1085#1072#1083' '#1087#1072#1095#1086#1082' '#1074#1110#1076#1087#1088#1072#1074#1083#1077#1085#1080#1093' SMS'
  ClientHeight = 587
  ClientWidth = 967
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 73
    Width = 967
    Height = 514
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = cxGrid1DBTableView1CellDblClick
      DataController.DataSource = Form1.DSSMSORDEREDS
      DataController.DetailKeyFieldNames = 'ID'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <
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
        end
        item
          Format = '0.00'
          Kind = skSum
        end
        item
          Format = '0.00'
          Kind = skSum
        end
        item
          Format = '0'
          Kind = skMax
        end>
      DataController.Summary.FooterSummaryItems = <
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
        end
        item
          Format = '0.00'
          Kind = skSum
        end
        item
          Format = '0.00'
          Kind = skSum
        end
        item
          Format = '0'
          Kind = skMax
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1DOLG
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1KOL_SEND
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1KOL_SENDSMS
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1KOL_DOST
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1KOL_ERR
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        Caption = #8470' '#1087#1072#1095#1082#1080
        DataBinding.FieldName = 'ID'
        Width = 53
      end
      object cxGrid1DBTableView1SEND: TcxGridDBColumn
        Caption = #1042#1110#1076#1087#1088'.'
        DataBinding.FieldName = 'SEND'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Styles.Content = cxStyle1
        Width = 38
      end
      object cxGrid1DBTableView1DATA: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'DATA'
        Width = 148
      end
      object cxGrid1DBTableView1PERIOD: TcxGridDBColumn
        Caption = #1055#1077#1088#1110#1086#1076' '#1073#1086#1088#1075#1091
        DataBinding.FieldName = 'PERIOD'
        Width = 99
      end
      object cxGrid1DBTableView1KOL_SENDSMS: TcxGridDBColumn
        Caption = #1050'-'#1089#1090#1100' '#1072#1073#1086#1085'.'
        DataBinding.FieldName = 'KOL_SENDSMS'
        Width = 98
      end
      object cxGrid1DBTableView1KOL_DOST: TcxGridDBColumn
        Caption = #1044#1086#1089#1090#1072#1074#1083#1077#1085#1110
        DataBinding.FieldName = 'KOL_DOST'
        Width = 110
      end
      object cxGrid1DBTableView1KOL_ERR: TcxGridDBColumn
        Caption = #1042' '#1076#1086#1088#1086#1079#1110'/'#1087#1086#1084#1080#1083#1082#1086#1074#1110
        DataBinding.FieldName = 'KOL_ERR'
        Width = 131
      end
      object cxGrid1DBTableView1DOLG: TcxGridDBColumn
        Caption = #1057#1091#1084#1072' '#1073#1086#1088#1075#1091' ('#1076#1086#1089#1090') '
        DataBinding.FieldName = 'DOLG'
        Width = 108
      end
      object cxGrid1DBTableView1KOL_SEND: TcxGridDBColumn
        Caption = #1057#1052#1057'('#1074#1110#1076#1087#1088')'
        DataBinding.FieldName = 'KOL_SEND'
        Width = 77
      end
      object cxGrid1DBTableView1KOL_DOSTSMS: TcxGridDBColumn
        Caption = #1057#1052#1057'('#1076#1086#1089#1090')'
        DataBinding.FieldName = 'KOL_DOSTSMS'
      end
      object cxGrid1DBTableView1FIO: TcxGridDBColumn
        Caption = #1056#1077#1076#1072#1082#1090#1086#1088
        DataBinding.FieldName = 'FIO'
        Width = 91
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 967
    Height = 73
    Align = alTop
    TabOrder = 1
    object cxButton9: TcxButton
      Left = 0
      Top = 31
      Width = 40
      Height = 39
      Hint = #1044#1086#1076#1072#1090#1080
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
        000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
        4DFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
        4DFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
        4DFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
        4DFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
        4DFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
        4DFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
        4DFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
        4DFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
        4DFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
        4DFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
        4DFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
        4DFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
        4DFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
        4DFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
        4DFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
        4DFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
        4DFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
        4DFF000000000000000000000000000000000000000000000000000000000000
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
      TabOrder = 0
      OnClick = cxButton9Click
    end
    object cxButton8: TcxButton
      Left = 44
      Top = 31
      Width = 40
      Height = 39
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
      TabOrder = 1
      OnClick = cxButton8Click
    end
    object cxButton5: TcxButton
      Left = 88
      Top = 31
      Width = 42
      Height = 39
      Hint = #1056#1077#1076#1072#1075#1091#1074#1072#1090#1080
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000030000
        000B000000160000001A000000140000000D0000000700000004000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000100000002000000060000
        0016452E26FF241510DA100A0788020101350000001C00000011000000090000
        0004000000020000000100000001000000010000000100000001000000010000
        0001000000000000000000000000000000000000000000000000000000000000
        00000000000100000002000000040000000600000007000000080000000D0000
        001E4E382FD8A07C6FFF544649FF292C47F716254FB5070C1A5C0000001E0000
        00120000000B0000000800000008000000080000000800000008000000070000
        0005000000020000000100000000000000000000000000000000000000000000
        000000000002000000070000000F00000017000000190000001B0000001F0000
        002B281D188D82706CFFADCAE6FF7492BFFF425D99FF2E478AFF101D3FA50000
        003600000027000000200000001E0000001D0000001E0000001D0000001A0000
        0012000000080000000200000000000000000000000000000000000000000000
        0001000000040000000F78564AC1A57765FFA67666FFA57564FFA47363FFAE88
        7CFFB49D96FF5C5F7AFFDBE3EFFFA2C2E2FF7896C2FF536DA2FF315194FF5962
        88FFB9A49CFFAF8D81FF9D6C5CFF9D6E5DFF9E6D5CFF9E6C5BFF9E6C5BFF704C
        41C3000000130000000400000001000000000000000000000000000000000000
        00010000000500000015A87968FFF9F4F0FFF9F4F0FFF9F3EFFFF8F2EDFFF2EC
        E7FFE6E4E2FF7C8EB5FF8B9FC7FFCED9E9FF2084DBFF51A9E2FF1552AAFF154B
        9EFF6C7EA5FFE1DDDAFFEDE7E2FFF2E8E2FFF4EBE3FFF4EBE4FFF4EAE3FF9E6D
        5CFF000000190000000700000001000000000000000000000000000000000000
        00010000000600000016AA7B6AFFF9F4F1FFF3E9E2FFF3E9E1FFF2E8E0FFF0E5
        DEFFEBE4DFFFB9BEC8FF4B6CABFFFFFFFFFF4DA3E5FF2389DFFF56ADE3FF1658
        ACFF174FA0FF6D7FA5FFE1DAD7FFEBE3DDFFEEE2D9FFF1E4DBFFF5EBE5FF9E6F
        5EFF0000001B0000000700000001000000000000000000000000000000000000
        00010000000500000016AC7D6DFFFAF5F2FFF3EAE2FFF3EAE2FFF4E9E2FFF3E8
        E0FFEFE6E0FFE7E3DFFF8B9BBAFF6990C2FFC2E5F8FF50A7E6FF2791E0FF5DB1
        E5FF1A5DAFFF1953A4FF6F82A8FFE2DBD8FFEBE3DDFFEFE2D9FFF4EBE4FFA170
        60FF0000001B0000000700000001000000000000000000000000000000000000
        00010000000500000015AE8071FFFAF6F3FFF4EAE3FFF4EAE3FFF3EAE2FFF2E8
        E1FFF1E7E0FFF0E7E3FFE5E1DDFF81A1C1FF4590D0FFC7E8F8FF56AEE7FF2C97
        E1FF62B5E6FF1B62B2FF1B57A6FF7185ACFFE4DEDAFFECE4DEFFF2EAE4FFA272
        62FF0000001A0000000700000001000000000000000000000000000000000000
        00000000000500000014B08373FFFAF7F4FFF4EBE4FFF4EAE4FFF4EAE3FFF4EA
        E3FFF2E9E2FFF2E8E1FFEFE7E3FFE6E3DFFF83A4C5FF4895D2FFCBEBFAFF5AB4
        EBFF319DE4FF67BAE7FF1E65B6FF1D5DA9FF7389AEFFE4E0DBFFEFE9E5FFA473
        63FF0000001A0000000600000001000000000000000000000000000000000000
        00000000000500000013B18475FFFBF7F5FFF4ECE5FFF6EBE4FFF6EBE4FFF4EB
        E4FFF4EBE3FFF3EAE2FFF2E8E1FFEFE8E3FFE8E4E0FF86A7C7FF4C9AD4FFCFEE
        FBFF60B9EDFF36A5E9FF6EBEE8FF206BB9FF2061ADFF758CB2FFE8E5E2FFB794
        88FF0000001A0000000700000001000000000000000000000000000000000000
        00000000000400000012B38677FFFCF8F5FFF6ECE6FFF6ECE6FFF6ECE5FFF4EB
        E5FFF4EBE5FFF4EBE4FFF4EBE4FFF2E9E2FFF1E9E4FFE9E6E2FF88AAC9FF4F9F
        D7FFD3F0FCFF64BEEFFF3BABEBFF72C2EAFF2371BCFF2266AFFF7992B7FFC5AF
        A7FF0000001F0000000800000002000000000000000000000000000000000000
        00000000000400000011B58A7AFFFCF8F7FFF7EDE8FFF6ECE6FFF4EDE6FFF4EC
        E6FFF4ECE6FFF6ECE5FFF4ECE4FFF4EBE4FFF2E9E2FFF1EAE4FFEBE7E4FF8BAE
        CCFF52A3D8FFD6F2FCFF6AC5F0FF42B2EBFF77C6ECFF2677C0FF256BB4FF6B7C
        9EFF000000260000000D00000003000000010000000000000000000000000000
        00000000000400000010B78A7BFFFCF9F7FFF7EDE8FFF7EDE9FFF6EDE8FFF6ED
        E6FFF6EDE6FFF6ECE6FFF6ECE5FFF6ECE5FFF6ECE4FFF2E9E2FFF2EBE6FFEDE9
        E6FF8DB1CEFF56A8DAFFD9F4FDFF89D5F6FF47BBEFFF7BCBECFF2A7DC1FF2871
        B7FF191C26990000001400000007000000020000000000000000000000000000
        0000000000040000000FB98D7EFFFCFAF8FFF7EFE9FFF7EFE9FFF7EFE9FFF7EF
        E8FFF6EDE8FFF6EDE8FFF6EDE6FFF6EDE6FFF4ECE6FFF6ECE6FFF3EBE4FFF3EC
        E7FFEEE9E7FF8FB4D0FF5AADDCFFDCF6FDFF74CFF6FF4CC0F0FF80D0EEFF7877
        7BFF794A3AFF29110B900000000F000000060000000200000000000000000000
        0000000000040000000EBB9080FFFCFAF8FFF7F0EAFFF7F0E9FFF6EFE9FFF7EF
        E9FFF7EFE8FFF7EFE9FFF6EDE8FFF7EDE8FFF7EDE6FFF6EDE6FFF6EDE6FFF5EB
        E4FFF3EDE7FFF0EBE8FF91B7D3FF5DB0DEFFDEF8FEFF7AD6F7FF90B9C5FFD8C1
        B3FF996B59FF815141FF190D228D0000000C0000000500000001000000000000
        0000000000030000000DBD9283FFFDFBF9FFF8F1EBFFF8F0EBFFF7F0EBFFF7F0
        EAFFF7F0EAFFF7F0E9FFF7EFE9FFF6EFE9FFF7EDE8FFF6EDE8FFF6EDE8FFF6ED
        E8FFF5EBE5FFF5EEE9FFF1EDE9FF93B9D5FF60B4E0FFE7F7F9FFDBC3B1FFCFB3
        9FFFDBC5B8FF584B8BFF212095FF0A0A3E8B0000000B00000004000000000000
        0000000000030000000DBE9585FFFBF8F7FFF8F2ECFFF8F1EBFFF7F1EBFFF7F1
        EBFFF7F0EBFFF8F0EAFFF7F0EAFFF7EFEAFFF7EFEAFFF7EDE9FFF6EFE8FFF6EF
        E8FFF6EDE8FFF6ECE7FFF5EEE9FFF2EEEBFFA9AEB7FFB58F7EFFFAF0E2FFDFC8
        B6FF9A97C5FF8791E3FF2B2EAAFF25259CFF0F0F458900000006000000000000
        0000000000030000000CC09687FFF8F5F2FFF6EFE9FFF8F2ECFFF8F1ECFFF8F1
        ECFFF7F1ECFFF7F0EBFFF8F1EAFFF8F0EAFFF7F0EAFFF7F0E9FFF7F0E9FFF6EF
        E9FFF6EDE9FFF7EDE9FFF6EEE8FFF6EFECFFF4EFEDFFC2A59DFFBC9788FFF6EE
        E7FF8B9FEDFF6275E1FF98A2E7FF7B85D0FF272A96FF00000007000000000000
        0000000000030000000BC39889FFF6EFEDFFF4EBE6FFF6EFEAFFF8F2EDFFF8F2
        EDFFF8F1EDFFF8F1ECFFF8F1ECFFF8F1EBFFF8F0EBFFF8F0EAFFF7EFEAFFF7F0
        EAFFF7EFEAFFF7F0E9FFF7EFE9FFF5ECE8FFF7EFECFFF5F0EEFFB1A5BDFF6B78
        D4FFDBE7FCFF8BA0EEFFACC0F3FF4E57C3FF21235A8400000004000000000000
        0000000000020000000AC49A8AFFF1E9E6FFF0E6E2FFF4EBE7FFF5EEEBFFF7F1
        ECFFF7F1ECFFF8F2EDFFF7F0EBFFF8F1EDFFF7F1ECFFF8F1ECFFF7F0EBFFF7F0
        EAFFF7F0EBFFF7EFEAFFF7EFEAFFF7EFEAFFF7EFE9FFF6F1ECFFF9F7F6FF928B
        BDFF7180DAFFDCE8FCFF6675D7FF262A60830000000500000002000000000000
        00000000000200000009C69C8CFFE8DDD8FFE8DBD4FFECDFDBFFEFE4E0FFF1E8
        E3FFF4EBE8FFF6EDE9FFF7F1ECFFF8F2EFFFF8F1EDFFF8F1ECFFF8F1ECFFF8F1
        ECFFF8F1EBFFF8F1EBFFF7F0EBFFF7F0EBFFF7EFEAFFF7EFEAFFFBF8F6FFDAC5
        BDFF2B3166885761CEFF2C316681000000040000000200000001000000000000
        00000000000200000008C79E8DFFD9C4BCFFD9C4B9FFDCC6BEFFDECBC4FFE1CF
        C8FFE6D5D0FFEDE0DAFFF4EBE6FFF8F2EDFFF7F1EEFFF9F2EFFFF8F2EFFFF8F2
        EDFFF8F1ECFFF8F1ECFFF7F1ECFFF7F0EBFFF7F0EBFFF7F1EAFFFCF8F5FFCCAB
        9FFF0000000F0000000500000002000000010000000000000000000000000000
        00000000000100000006C8A08FFFCDB1A7FFA37363FFA47363FFA47464FFA475
        64FFA57766FFB38B7CFFEEE3DDFFF7EEECFFF9F3EFFFF9F3EFFFF9F2EFFFF9F3
        EDFFF9F2EDFFF8F1EDFFF8F1ECFFF8F1ECFFF8F1ECFFF8F1ECFFFCF9F7FFBE93
        84FF0000000D0000000300000000000000000000000000000000000000000000
        00000000000100000004563E3683D5B9AEFFFCF9F7FFFEFCFAFFFFFDFCFFFFFE
        FEFFFFFFFFFFAB7E6DFFEADDD7FFF5EEEAFFF9F3F1FFF9F4F0FFF9F3F0FFF9F3
        F0FFF9F3EFFFF9F3EFFFF8F2EFFFF8F2EDFFF8F2EDFFF8F2EDFFFCF9F7FFC096
        87FF0000000C0000000300000000000000000000000000000000000000000000
        000000000000000000020000000559413983D7BAB0FFFCF6F3FFFDF9F7FFFEFB
        FAFFFFFEFEFFB08574FFEADDD6FFF5EEEAFFFAF6F1FFF9F4F1FFF9F4F1FFF9F4
        F1FFF9F4F0FFF9F3EFFFF9F3EFFFF8F3EFFFF9F2EFFFF9F2EFFFFDFAF8FFC298
        88FF0000000B0000000300000000000000000000000000000000000000000000
        0000000000000000000100000002000000055B433B83D8BCB3FFFBF6F3FFFDF9
        F6FFFFFEFEFFB68C7DFFE9DBD5FFF4EBE7FFF7F3F0FFFAF6F2FFF9F4F2FFF9F4
        F1FFF9F4F1FFFAF4F1FFF9F3F0FFF9F3F0FFF9F3F0FFF8F2EFFFFDFAF9FFC499
        89FF0000000A0000000300000000000000000000000000000000000000000000
        000000000000000000000000000000000002000000045D453E83DBC0B5FFFBF6
        F3FFFFFEFEFFBC9584FFE8DCD5FFF0E8E4FFF5EFEBFFF8F3F0FFFAF6F2FFFAF6
        F2FFF9F6F1FFF9F6F1FFF9F4F1FFF9F4F1FFF9F4F0FFF9F4F0FFFDFAF9FFC59B
        8BFF000000090000000200000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000001000000045F484082DDC2
        B8FFFFFEFEFFC19B8BFFE7DAD3FFEEE3DFFFF3EBE6FFF5F0ECFFF8F4F0FFFAF7
        F3FFFAF7F3FFFAF6F2FFF9F4F2FFFAF4F1FFF9F4F1FFFAF4F0FFFDFBFAFFC79D
        8EFF000000080000000200000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000100000003614B
        4382E2CAC2FFDECAC3FFE8DAD6FFEEE4E0FFF2EBE9FFF6F1EFFFFAF7F6FFFFFE
        FEFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFDFDFFFEFDFDFFFEFDFDFFC89F
        8FFF000000070000000200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0003634D4681CEA596FFCEA695FFCDA595FFCDA595FFCDA495FFCDA495FFCDA3
        94FFCDA394FFCDA394FFCBA293FFCBA293FFCBA291FFCBA191FFCAA191FF9677
        6ABF000000040000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000020000000300000003000000040000000400000004000000040000
        0004000000050000000500000005000000050000000500000005000000050000
        0004000000020000000000000000000000000000000000000000}
      OptionsImage.Layout = blGlyphRight
      TabOrder = 2
      OnClick = cxButton5Click
    end
    object cxLabel1: TcxLabel
      Left = 128
      Top = 5
      Caption = #1041#1072#1083#1072#1085#1089' '#1089#1084#1089':'
    end
    object cxLabel2: TcxLabel
      Left = 196
      Top = 5
      Caption = '0'
    end
    object cxButton1: TcxButton
      Left = 4
      Top = 2
      Width = 118
      Height = 25
      Caption = #1055#1077#1088#1077#1074#1110#1088#1080#1090#1080' '#1073#1072#1083#1072#1085#1089
      TabOrder = 5
      OnClick = cxButton1Click
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 32
    Top = 528
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clLime
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlue
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 224
  end
end