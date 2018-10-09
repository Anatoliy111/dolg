object Form10: TForm10
  Left = 0
  Top = 0
  Caption = 'Form10'
  ClientHeight = 599
  ClientWidth = 982
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
    Left = 0
    Top = 0
    Width = 982
    Height = 89
    Align = alTop
    TabOrder = 0
    object Button10: TButton
      Left = 748
      Top = 47
      Width = 177
      Height = 25
      Caption = #1045#1082#1089#1087#1086#1088#1090' '#1074' '#1077#1082#1089#1077#1083#1100
      TabOrder = 0
      OnClick = Button10Click
    end
    object cxProgressBar1: TcxProgressBar
      Left = 208
      Top = 16
      TabOrder = 1
      Width = 497
    end
    object Button2: TButton
      Left = 16
      Top = 16
      Width = 177
      Height = 48
      Caption = #1047#1074#1110#1090'185 '#1087#1086' '#1087#1077#1088#1110#1086#1076#1072#1084' '
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 208
      Top = 43
      Width = 177
      Height = 25
      Caption = #1055#1088#1080#1087#1080#1085#1080#1090#1080
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 89
    Width = 982
    Height = 510
    Align = alClient
    TabOrder = 1
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = Form1.DSREP2
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skCount
          Position = spFooter
        end
        item
          Kind = skSum
          Position = spFooter
        end
        item
          Kind = skSum
          Position = spFooter
        end
        item
          Kind = skSum
          Position = spFooter
        end
        item
          Kind = skSum
          Position = spFooter
        end
        item
          Kind = skSum
          Position = spFooter
        end
        item
          Kind = skSum
          Position = spFooter
        end
        item
          Kind = skSum
          Position = spFooter
        end
        item
          Kind = skSum
          Position = spFooter
        end
        item
          Kind = skSum
          Position = spFooter
        end
        item
          Kind = skSum
          Position = spFooter
        end
        item
          Kind = skSum
          Position = spFooter
        end
        item
          Kind = skSum
        end
        item
          Kind = skCount
        end
        item
          Kind = skSum
          Position = spFooter
        end
        item
          Kind = skSum
          Position = spFooter
        end
        item
          Kind = skSum
          Position = spFooter
        end
        item
          Kind = skSum
          Position = spFooter
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
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
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      FilterRow.InfoText = #1053#1072#1090#1080#1089#1085#1110#1090#1100' '#1089#1102#1076#1080' '#1097#1086#1073' '#1087#1088#1080#1084#1110#1085#1080#1090#1080' '#1092#1110#1083#1100#1090#1088
      FilterRow.Visible = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.ShowEditButtons = gsebForFocusedRecord
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfAlwaysVisible
      OptionsView.Indicator = True
      object cxGridDBTableView1PERIOD: TcxGridDBColumn
        Caption = #1055#1077#1088#1110#1086#1076
        DataBinding.FieldName = 'PERIOD'
        Width = 179
      end
      object cxGridDBTableView1SCHET: TcxGridDBColumn
        Caption = #1056#1072#1093#1091#1085#1086#1082
        DataBinding.FieldName = 'SCHET'
      end
      object cxGridDBTableView1FIO: TcxGridDBColumn
        Caption = #1055#1030#1041
        DataBinding.FieldName = 'FIO'
      end
      object cxGridDBTableView1DOLG: TcxGridDBColumn
        Caption = #1041#1086#1088#1075' '#1085#1072' '#1087#1086#1095'. '#1087#1077#1088#1110#1086#1076#1091
        DataBinding.FieldName = 'DOLG'
      end
      object cxGridDBTableView1NACH: TcxGridDBColumn
        Caption = #1053#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103
        DataBinding.FieldName = 'NACH'
      end
      object cxGridDBTableView1OPL: TcxGridDBColumn
        Caption = #1054#1087#1083#1072#1090#1072
        DataBinding.FieldName = 'OPL'
      end
      object cxGridDBTableView1ZADOLG: TcxGridDBColumn
        Caption = #1041#1086#1088#1075' '#1079#1072' '#1087#1077#1088#1110#1086#1076
        DataBinding.FieldName = 'ZADOLG'
      end
      object cxGridDBTableView1ZADOLGP: TcxGridDBColumn
        Caption = #1055#1077#1088#1077#1093#1110#1076#1085#1080#1081' '#1073#1086#1088#1075
        DataBinding.FieldName = 'ZADOLGP'
      end
      object cxGridDBTableView1ZADOLGK: TcxGridDBColumn
        Caption = #1047#1072#1075#1072#1083#1100#1085#1080#1081' '#1073#1086#1088#1075
        DataBinding.FieldName = 'ZADOLGK'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
end
