object Form9: TForm9
  Left = 0
  Top = 0
  Caption = #1057#1090#1088#1086#1082#1080' '#1076#1072#1074#1085#1086#1089#1090#1110
  ClientHeight = 632
  ClientWidth = 972
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
    Width = 972
    Height = 81
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 16
      Top = 8
      Width = 177
      Height = 25
      Caption = #1030#1084#1087#1086#1088#1090' '#1057#1090#1088#1086#1082#1080' '#1076#1072#1074#1085#1086#1089#1090#1110'  (326)'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 736
      Top = 50
      Width = 177
      Height = 25
      Caption = #1054#1095#1080#1089#1090#1080#1090#1080' '#1090#1072#1073#1083#1080#1094#1102
      TabOrder = 1
      OnClick = Button2Click
    end
    object DBNavigator1: TDBNavigator
      Left = 16
      Top = 50
      Width = 240
      Height = 25
      DataSource = Form1.DSSUD
      TabOrder = 2
    end
    object cxProgressBar1: TcxProgressBar
      Left = 391
      Top = 8
      TabOrder = 3
      Width = 554
    end
    object Button3: TButton
      Left = 262
      Top = 50
      Width = 177
      Height = 25
      Caption = #1055#1088#1080#1087#1080#1085#1080#1090#1080' '#1110#1084#1087#1086#1088#1090
      TabOrder = 4
      OnClick = Button3Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 199
      Top = 8
      Width = 186
      Height = 21
      Date = 42864.003262615740000000
      Format = 'M-yyyy'
      Time = 42864.003262615740000000
      ParentShowHint = False
      ShowHint = False
      TabOrder = 5
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 81
    Width = 972
    Height = 551
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = Form1.DSSTROKD
      DataController.DetailKeyFieldNames = 'ID'
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
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ShowEditButtons = gsebForFocusedRecord
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfAlwaysVisible
      OptionsView.Indicator = True
      object cxGrid1DBTableView1PERIOD: TcxGridDBColumn
        DataBinding.FieldName = 'PERIOD'
        Width = 115
      end
      object cxGrid1DBTableView1SCHET: TcxGridDBColumn
        DataBinding.FieldName = 'SCHET'
      end
      object cxGrid1DBTableView1BORG01: TcxGridDBColumn
        DataBinding.FieldName = 'BORG01'
      end
      object cxGrid1DBTableView1NARAH: TcxGridDBColumn
        DataBinding.FieldName = 'NARAH'
      end
      object cxGrid1DBTableView1BORG31: TcxGridDBColumn
        DataBinding.FieldName = 'BORG31'
      end
      object cxGrid1DBTableView1NOMVL: TcxGridDBColumn
        DataBinding.FieldName = 'NOMVL'
      end
      object cxGrid1DBTableView1DATAVL: TcxGridDBColumn
        DataBinding.FieldName = 'DATAVL'
      end
      object cxGrid1DBTableView1PERVL: TcxGridDBColumn
        DataBinding.FieldName = 'PERVL'
      end
      object cxGrid1DBTableView1SUMVL: TcxGridDBColumn
        DataBinding.FieldName = 'SUMVL'
      end
      object cxGrid1DBTableView1NOMDR: TcxGridDBColumn
        DataBinding.FieldName = 'NOMDR'
      end
      object cxGrid1DBTableView1DATADR: TcxGridDBColumn
        DataBinding.FieldName = 'DATADR'
      end
      object cxGrid1DBTableView1PERDR: TcxGridDBColumn
        DataBinding.FieldName = 'PERDR'
      end
      object cxGrid1DBTableView1SUMDR: TcxGridDBColumn
        DataBinding.FieldName = 'SUMDR'
      end
      object cxGrid1DBTableView1ZABORG: TcxGridDBColumn
        DataBinding.FieldName = 'ZABORG'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = #1060#1072#1081#1083#1099' DBF|*.dbf'
    Left = 80
    Top = 528
  end
end
