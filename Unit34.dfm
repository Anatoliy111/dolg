object Form34: TForm34
  Left = 0
  Top = 0
  Caption = #1064#1072#1073#1083#1086#1085#1080' '#1090#1077#1082#1089#1090#1091' '#1057#1052#1057
  ClientHeight = 350
  ClientWidth = 638
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 221
    Top = 0
    Width = 417
    Height = 350
    Align = alRight
    TabOrder = 0
    ExplicitLeft = 320
    ExplicitHeight = 529
    object Label1: TLabel
      Left = 22
      Top = 24
      Width = 106
      Height = 13
      Caption = #1064#1072#1073#1083#1086#1085' '#1090#1077#1082#1089#1090#1072' '#1074' '#1089#1084#1089
    end
    object DBMemo1: TDBMemo
      Left = 22
      Top = 43
      Width = 379
      Height = 222
      DataField = 'TEXT_SMS'
      DataSource = DSIBQuery1
      ParentShowHint = False
      ScrollBars = ssVertical
      ShowHint = False
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 22
      Top = 271
      Width = 371
      Height = 50
      Caption = #1042#1080#1073#1088#1072#1090#1080' '#1096#1072#1073#1083#1086#1085
      TabOrder = 1
      OnClick = cxButton2Click
    end
  end
  object cxGrid3: TcxGrid
    Left = 0
    Top = 0
    Width = 221
    Height = 350
    Align = alClient
    TabOrder = 1
    ExplicitLeft = -235
    ExplicitTop = 79
    ExplicitWidth = 901
    ExplicitHeight = 407
    object cxGridDBTableView2: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.CustomizeDialog = False
      FilterBox.Visible = fvNever
      DataController.DataSource = DSIBQuery1
      DataController.DetailKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
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
      Filtering.MRUItemsList = False
      Filtering.ColumnAddValueItems = False
      Filtering.ColumnMRUItemsList = False
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      object cxGridDBTableView2ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
      end
      object cxGridDBTableView2DATA: TcxGridDBColumn
        DataBinding.FieldName = 'DATA'
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = cxGridDBTableView2
    end
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select ID,DATA, TEXT_SMS from SMSORDEREDS where id<>:id')
    Left = 568
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object IBQuery1TEXT_SMS: TIBStringField
      FieldName = 'TEXT_SMS'
      Origin = '"SMSORDEREDS"."TEXT_SMS"'
      Size = 1000
    end
    object IBQuery1DATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"SMSORDEREDS"."DATA"'
    end
    object IBQuery1ID: TIntegerField
      FieldName = 'ID'
      Origin = '"SMSORDEREDS"."ID"'
    end
  end
  object DSIBQuery1: TDataSource
    DataSet = IBQuery1
    Left = 568
    Top = 352
  end
end
