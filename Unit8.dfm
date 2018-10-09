object Form8: TForm8
  Left = 0
  Top = 0
  Caption = #1044#1042#1057
  ClientHeight = 606
  ClientWidth = 901
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 49
    Width = 901
    Height = 557
    Align = alClient
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = Form1.DSDVS
      DataController.DetailKeyFieldNames = 'ID'
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting, dcoGroupsAlwaysExpanded, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          FieldName = 'NACH'
        end
        item
          FieldName = 'DOLG'
        end
        item
          FieldName = 'OPL'
        end
        item
          FieldName = 'ZADOLG'
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellEndEllipsis = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.Indicator = True
      Preview.AutoHeight = False
      object cxGrid1DBTableView1DATE_POD: TcxGridDBColumn
        DataBinding.FieldName = 'DATE_POD'
        Width = 112
      end
      object cxGrid1DBTableView1SCHET: TcxGridDBColumn
        DataBinding.FieldName = 'SCHET'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.CaseSensitiveSearch = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'SCHET'
        Properties.ListColumns = <
          item
            FieldName = 'SCHET'
          end>
        Properties.ListSource = Form1.DSKART
        Properties.OnEditValueChanged = cxGrid1DBTableView1SCHETPropertiesEditValueChanged
        Width = 137
      end
      object cxGrid1DBTableView1FIO: TcxGridDBColumn
        DataBinding.FieldName = 'FIO'
        Options.Editing = False
        Width = 199
      end
      object cxGrid1DBTableView1SUMMA: TcxGridDBColumn
        DataBinding.FieldName = 'SUMMA'
        Width = 205
      end
      object cxGrid1DBTableView1DATE_POV: TcxGridDBColumn
        DataBinding.FieldName = 'DATE_POV'
        Width = 111
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 901
    Height = 49
    Align = alTop
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 16
      Top = 12
      Width = 240
      Height = 25
      DataSource = Form1.DSDVS
      TabOrder = 0
    end
  end
end
