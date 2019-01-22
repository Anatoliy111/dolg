object Form13: TForm13
  Left = 0
  Top = 0
  Caption = 'Form13'
  ClientHeight = 642
  ClientWidth = 914
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 914
    Height = 642
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 638
    ClientRectLeft = 4
    ClientRectRight = 910
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = #1047#1074#1110#1090' '#1087#1086#1073#1091#1076#1080#1085#1082#1086#1074#1080#1081' ('#1079#1072#1075#1072#1083#1100#1085#1080#1081')'
      ImageIndex = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 906
        Height = 65
        Align = alTop
        TabOrder = 0
        object cxLabel3: TcxLabel
          Left = 8
          Top = 11
          Caption = #1055#1077#1088#1110#1086#1076' '#1079
        end
        object cxLookupComboBox3: TcxLookupComboBox
          Left = 60
          Top = 12
          ParentShowHint = False
          Properties.KeyFieldNames = 'PERIOD'
          Properties.ListColumns = <
            item
              FieldName = 'PERIOD'
            end>
          Properties.ListSource = Form1.DSPERIOD
          ShowHint = False
          TabOrder = 1
          Width = 145
        end
        object cxLabel4: TcxLabel
          Left = 211
          Top = 11
          Caption = #1087#1086
        end
        object cxLookupComboBox4: TcxLookupComboBox
          Left = 233
          Top = 12
          Properties.KeyFieldNames = 'PERIOD'
          Properties.ListColumns = <
            item
              FieldName = 'PERIOD'
            end>
          Properties.ListSource = Form1.DSPERIOD
          TabOrder = 3
          Width = 145
        end
        object cxButton1: TcxButton
          Left = 719
          Top = 21
          Width = 85
          Height = 25
          Caption = #1044#1088#1091#1082
          TabOrder = 4
          OnClick = cxButton1Click
        end
        object cxButton2: TcxButton
          Left = 384
          Top = 8
          Width = 145
          Height = 25
          Caption = #1047#1092#1086#1088#1084#1091#1074#1072#1090#1080
          TabOrder = 5
          OnClick = cxButton2Click
        end
        object cxButton3: TcxButton
          Left = 810
          Top = 21
          Width = 85
          Height = 25
          Caption = 'E'#1082#1089#1077#1083#1100
          TabOrder = 6
          OnClick = cxButton3Click
        end
        object cxLabel7: TcxLabel
          Left = 8
          Top = 39
          Caption = #1057#1091#1084#1072' '#1073#1086#1088#1075#1091
        end
        object cxCalcEdit1: TcxCalcEdit
          Left = 75
          Top = 39
          EditValue = 0.000000000000000000
          TabOrder = 8
          Width = 45
        end
        object cxLabel8: TcxLabel
          Left = 126
          Top = 39
          Caption = ' - '#1079#1085#1072#1095#1077#1085#1085#1103' '#1074#1087#1083#1080#1074#1072#1108' '#1085#1072'  '#1082#1110#1083#1100#1082#1110#1089#1090#1100' '#1073#1086#1088#1078#1085#1080#1082#1110#1074
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 65
        Width = 906
        Height = 549
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DSORDERALL
          DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting, dcoGroupsAlwaysExpanded, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGridDBTableView1DOLG
            end
            item
              Kind = skSum
              Column = cxGridDBTableView1BGST
            end
            item
              Kind = skSum
              Column = cxGridDBTableView1PRST
            end
            item
              Kind = skSum
              Column = cxGridDBTableView1NACH
            end
            item
              Kind = skSum
              Column = cxGridDBTableView1PERE
            end
            item
              Kind = skSum
              Column = cxGridDBTableView1SUBS
            end
            item
              Kind = skSum
              Column = cxGridDBTableView1OPLNOTSUBS
            end
            item
              Kind = skSum
              Column = cxGridDBTableView1SAL
            end
            item
              Kind = skSum
              Column = cxGridDBTableView1BGEND
            end
            item
              Kind = skSum
              Column = cxGridDBTableView1PREND
            end
            item
              Kind = skSum
              Column = cxGridDBTableView1BORGNIKI
            end
            item
              Kind = skAverage
              Column = cxGridDBTableView1PROCENT
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsView.CellEndEllipsis = True
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.Indicator = True
          Preview.AutoHeight = False
          object cxGridDBTableView1FIO: TcxGridDBColumn
            Caption = #1050#1086#1085#1090#1088#1086#1083#1077#1088
            DataBinding.FieldName = 'FIO'
            Width = 118
          end
          object cxGridDBTableView1UL: TcxGridDBColumn
            Caption = #1042#1091#1083#1080#1094#1103
            DataBinding.FieldName = 'UL'
            Width = 157
          end
          object cxGridDBTableView1DOM: TcxGridDBColumn
            Caption = #1041#1091#1076#1080#1085#1086#1082
            DataBinding.FieldName = 'DOM'
          end
          object cxGridDBTableView1KOL_KV: TcxGridDBColumn
            Caption = #1050#1110#1083#1100'.'#1082#1074'.'
            DataBinding.FieldName = 'KOL_KV'
          end
          object cxGridDBTableView1DOLG: TcxGridDBColumn
            Caption = #1057#1072#1083#1100#1076#1086' '#1085#1072' '#1087#1086#1095'.'
            DataBinding.FieldName = 'DOLG'
          end
          object cxGridDBTableView1BGST: TcxGridDBColumn
            Caption = #1041#1086#1088#1075' '#1085#1072' '#1087#1086#1095'.'
            DataBinding.FieldName = 'BGST'
          end
          object cxGridDBTableView1PRST: TcxGridDBColumn
            Caption = #1055#1077#1088#1077#1087#1083#1072#1090#1072' '#1085#1072' '#1087#1086#1095'.'
            DataBinding.FieldName = 'PRST'
          end
          object cxGridDBTableView1NACH: TcxGridDBColumn
            Caption = #1053#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103
            DataBinding.FieldName = 'NACH'
          end
          object cxGridDBTableView1PERE: TcxGridDBColumn
            Caption = #1055#1077#1088#1077#1087#1083#1072#1090#1072
            DataBinding.FieldName = 'PERE'
          end
          object cxGridDBTableView1SUBS: TcxGridDBColumn
            Caption = #1057#1091#1073#1089#1080#1076#1110#1103
            DataBinding.FieldName = 'SUBS'
          end
          object cxGridDBTableView1OPLNOTSUBS: TcxGridDBColumn
            Caption = #1057#1087#1083#1072#1090#1072
            DataBinding.FieldName = 'OPLNOTSUBS'
          end
          object cxGridDBTableView1SAL: TcxGridDBColumn
            Caption = #1057#1072#1083#1100#1076#1086' '#1085#1072' '#1082#1110#1085'.'
            DataBinding.FieldName = 'SAL'
          end
          object cxGridDBTableView1BGEND: TcxGridDBColumn
            Caption = #1041#1086#1088#1075' '#1085#1072' '#1082#1110#1085'.'
            DataBinding.FieldName = 'BGEND'
          end
          object cxGridDBTableView1PREND: TcxGridDBColumn
            Caption = #1055#1077#1088#1077#1087#1083#1072#1090#1072' '#1085#1072' '#1082#1110#1085'.'
            DataBinding.FieldName = 'PREND'
          end
          object cxGridDBTableView1BORGNIKI: TcxGridDBColumn
            Caption = #1050#1110#1083#1100'. '#1073#1086#1088#1078#1085#1080#1082#1110#1074
            DataBinding.FieldName = 'BORGNIKI'
          end
          object cxGridDBTableView1PROCENT: TcxGridDBColumn
            Caption = #1042#1110#1076#1089#1086#1090#1086#1082' '#1089#1087#1083#1072#1090#1080
            DataBinding.FieldName = 'PROCENT'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1047#1074#1110#1090' '#1087#1086#1073#1091#1076#1080#1085#1082#1086#1074#1080#1081' ('#1074' '#1088#1086#1079#1088#1110#1079#1110' '#1087#1086#1089#1083#1091#1075')'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 906
        Height = 89
        Align = alTop
        TabOrder = 0
        object cxLabel1: TcxLabel
          Left = 8
          Top = 11
          Caption = #1055#1077#1088#1110#1086#1076' '#1079
        end
        object cxLookupComboBox1: TcxLookupComboBox
          Left = 60
          Top = 12
          Properties.KeyFieldNames = 'PERIOD'
          Properties.ListColumns = <
            item
              FieldName = 'PERIOD'
            end>
          Properties.ListSource = Form1.DSPERIOD
          TabOrder = 1
          Width = 145
        end
        object cxLabel2: TcxLabel
          Left = 211
          Top = 11
          Caption = #1087#1086
        end
        object cxLookupComboBox2: TcxLookupComboBox
          Left = 233
          Top = 12
          Properties.KeyFieldNames = 'PERIOD'
          Properties.ListColumns = <
            item
              FieldName = 'PERIOD'
            end>
          Properties.ListSource = Form1.DSPERIOD
          TabOrder = 3
          Width = 145
        end
        object cxButton4: TcxButton
          Left = 676
          Top = 31
          Width = 85
          Height = 25
          Caption = #1044#1088#1091#1082
          TabOrder = 4
          OnClick = cxButton4Click
        end
        object cxButton5: TcxButton
          Left = 384
          Top = 8
          Width = 129
          Height = 25
          Caption = #1047#1092#1086#1088#1084#1091#1074#1072#1090#1080
          TabOrder = 5
          OnClick = cxButton5Click
        end
        object cxButton6: TcxButton
          Left = 799
          Top = 31
          Width = 85
          Height = 25
          Caption = 'E'#1082#1089#1077#1083#1100
          TabOrder = 6
          OnClick = cxButton6Click
        end
        object cxLabel5: TcxLabel
          Left = 9
          Top = 39
          Caption = #1057#1091#1084#1072' '#1073#1086#1088#1075#1091
        end
        object cxLabel6: TcxLabel
          Left = 127
          Top = 39
          Caption = ' - '#1079#1085#1072#1095#1077#1085#1085#1103' '#1074#1087#1083#1080#1074#1072#1108' '#1085#1072'  '#1082#1110#1083#1100#1082#1110#1089#1090#1100' '#1073#1086#1088#1078#1085#1080#1082#1110#1074
        end
        object cxCalcEdit2: TcxCalcEdit
          Left = 76
          Top = 39
          EditValue = 0.000000000000000000
          TabOrder = 9
          Width = 45
        end
        object RadioButton1: TRadioButton
          Left = 536
          Top = 12
          Width = 121
          Height = 17
          Caption = #1050#1086#1085#1090#1088#1086#1083#1077#1088' - '#1087#1086#1089#1083#1091#1075#1072
          Checked = True
          TabOrder = 10
          TabStop = True
        end
        object RadioButton2: TRadioButton
          Left = 536
          Top = 35
          Width = 121
          Height = 17
          Caption = #1055#1086#1089#1083#1091#1075#1072' - '#1082#1086#1085#1090#1088#1086#1083#1077#1088
          TabOrder = 11
        end
        object RadioButton6: TRadioButton
          Left = 536
          Top = 58
          Width = 121
          Height = 17
          Caption = #1050#1086#1085#1090#1088#1086#1083#1077#1088' - '#1072#1076#1088#1077#1089#1072
          TabOrder = 12
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 89
        Width = 906
        Height = 525
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DSORDER
          DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting, dcoGroupsAlwaysExpanded, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGridDBColumn5
            end
            item
              Kind = skSum
              Column = cxGridDBColumn6
            end
            item
              Kind = skSum
              Column = cxGridDBColumn7
            end
            item
              Kind = skSum
              Column = cxGridDBColumn8
            end
            item
              Kind = skSum
              Column = cxGridDBColumn9
            end
            item
              Kind = skSum
              Column = cxGridDBColumn10
            end
            item
              Kind = skSum
              Column = cxGridDBColumn11
            end
            item
              Kind = skSum
              Column = cxGridDBColumn12
            end
            item
              Kind = skSum
              Column = cxGridDBColumn13
            end
            item
              Kind = skSum
              Column = cxGridDBColumn14
            end
            item
              Kind = skSum
              Column = cxGridDBColumn15
            end
            item
              Kind = skAverage
              Column = cxGridDBColumn16
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsView.CellEndEllipsis = True
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.Indicator = True
          Preview.AutoHeight = False
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = #1050#1086#1085#1090#1088#1086#1083#1077#1088
            DataBinding.FieldName = 'FIO'
            Width = 118
          end
          object cxGridDBTableView2POSL: TcxGridDBColumn
            Caption = #1055#1086#1089#1083#1091#1075#1072
            DataBinding.FieldName = 'POSL'
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = #1042#1091#1083#1080#1094#1103
            DataBinding.FieldName = 'UL'
            Width = 223
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = #1041#1091#1076#1080#1085#1086#1082
            DataBinding.FieldName = 'DOM'
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = #1050#1110#1083#1100'.'#1082#1074'.'
            DataBinding.FieldName = 'KOL_KV'
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = #1057#1072#1083#1100#1076#1086' '#1085#1072' '#1087#1086#1095'.'
            DataBinding.FieldName = 'DOLG'
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = #1041#1086#1088#1075' '#1085#1072' '#1087#1086#1095'.'
            DataBinding.FieldName = 'BGST'
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = #1055#1077#1088#1077#1087#1083#1072#1090#1072' '#1085#1072' '#1087#1086#1095'.'
            DataBinding.FieldName = 'PRST'
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = #1053#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103
            DataBinding.FieldName = 'NACH'
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = #1055#1077#1088#1077#1087#1083#1072#1090#1072
            DataBinding.FieldName = 'PERE'
          end
          object cxGridDBColumn10: TcxGridDBColumn
            Caption = #1057#1091#1073#1089#1080#1076#1110#1103
            DataBinding.FieldName = 'SUBS'
          end
          object cxGridDBColumn11: TcxGridDBColumn
            Caption = #1057#1087#1083#1072#1090#1072
            DataBinding.FieldName = 'OPLNOTSUBS'
          end
          object cxGridDBColumn12: TcxGridDBColumn
            Caption = #1057#1072#1083#1100#1076#1086' '#1085#1072' '#1082#1110#1085'.'
            DataBinding.FieldName = 'SAL'
          end
          object cxGridDBColumn13: TcxGridDBColumn
            Caption = #1041#1086#1088#1075' '#1085#1072' '#1082#1110#1085'.'
            DataBinding.FieldName = 'BGEND'
          end
          object cxGridDBColumn14: TcxGridDBColumn
            Caption = #1055#1077#1088#1077#1087#1083#1072#1090#1072' '#1085#1072' '#1082#1110#1085'.'
            DataBinding.FieldName = 'PREND'
          end
          object cxGridDBColumn15: TcxGridDBColumn
            Caption = #1050#1110#1083#1100'. '#1073#1086#1088#1078#1085#1080#1082#1110#1074
            DataBinding.FieldName = 'BORGNIKI'
          end
          object cxGridDBColumn16: TcxGridDBColumn
            Caption = #1042#1110#1076#1089#1086#1090#1086#1082' '#1089#1087#1083#1072#1090#1080
            DataBinding.FieldName = 'PROCENT'
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #1047#1074#1110#1090' '#1087#1086#1073#1091#1076#1080#1085#1082#1086#1074#1080#1081' '#1055#1054' '#1052#1030#1057#1071#1063#1053#1054' ('#1074' '#1088#1086#1079#1088#1110#1079#1110' '#1087#1086#1089#1083#1091#1075')'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 906
        Height = 89
        Align = alTop
        TabOrder = 0
        object cxLabel9: TcxLabel
          Left = 8
          Top = 11
          Caption = #1055#1077#1088#1110#1086#1076' '#1079
        end
        object cxLookupComboBox5: TcxLookupComboBox
          Left = 60
          Top = 12
          Properties.KeyFieldNames = 'PERIOD'
          Properties.ListColumns = <
            item
              FieldName = 'PERIOD'
            end>
          Properties.ListSource = Form1.DSPERIOD
          TabOrder = 1
          Width = 145
        end
        object cxLabel10: TcxLabel
          Left = 211
          Top = 11
          Caption = #1087#1086
        end
        object cxLookupComboBox6: TcxLookupComboBox
          Left = 233
          Top = 12
          Properties.KeyFieldNames = 'PERIOD'
          Properties.ListColumns = <
            item
              FieldName = 'PERIOD'
            end>
          Properties.ListSource = Form1.DSPERIOD
          TabOrder = 3
          Width = 145
        end
        object cxButton7: TcxButton
          Left = 676
          Top = 31
          Width = 85
          Height = 25
          Caption = #1044#1088#1091#1082
          TabOrder = 4
          OnClick = cxButton7Click
        end
        object cxButton8: TcxButton
          Left = 384
          Top = 8
          Width = 129
          Height = 25
          Caption = #1047#1092#1086#1088#1084#1091#1074#1072#1090#1080
          TabOrder = 5
          OnClick = cxButton8Click
        end
        object cxButton9: TcxButton
          Left = 807
          Top = 31
          Width = 85
          Height = 25
          Caption = 'E'#1082#1089#1077#1083#1100
          TabOrder = 6
          OnClick = cxButton9Click
        end
        object cxLabel11: TcxLabel
          Left = 9
          Top = 39
          Caption = #1057#1091#1084#1072' '#1073#1086#1088#1075#1091
        end
        object cxLabel12: TcxLabel
          Left = 127
          Top = 39
          Caption = ' - '#1079#1085#1072#1095#1077#1085#1085#1103' '#1074#1087#1083#1080#1074#1072#1108' '#1085#1072'  '#1082#1110#1083#1100#1082#1110#1089#1090#1100' '#1073#1086#1088#1078#1085#1080#1082#1110#1074
        end
        object cxCalcEdit3: TcxCalcEdit
          Left = 76
          Top = 39
          EditValue = 0.000000000000000000
          TabOrder = 9
          Width = 45
        end
        object RadioButton3: TRadioButton
          Left = 536
          Top = 12
          Width = 121
          Height = 17
          Caption = #1050#1086#1085#1090#1088#1086#1083#1077#1088' - '#1087#1086#1089#1083#1091#1075#1072
          Checked = True
          TabOrder = 10
          TabStop = True
        end
        object RadioButton4: TRadioButton
          Left = 536
          Top = 35
          Width = 121
          Height = 17
          Caption = #1055#1086#1089#1083#1091#1075#1072' - '#1082#1086#1085#1090#1088#1086#1083#1077#1088
          TabOrder = 11
        end
        object RadioButton5: TRadioButton
          Left = 536
          Top = 58
          Width = 121
          Height = 17
          Caption = #1050#1086#1085#1090#1088#1086#1083#1077#1088' - '#1072#1076#1088#1077#1089#1072
          TabOrder = 12
        end
      end
      object cxGrid3: TcxGrid
        Left = 0
        Top = 89
        Width = 906
        Height = 525
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView3: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DSORDERMES
          DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting, dcoGroupsAlwaysExpanded, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGridDBColumn22
            end
            item
              Kind = skSum
              Column = cxGridDBColumn23
            end
            item
              Kind = skSum
              Column = cxGridDBColumn24
            end
            item
              Kind = skSum
              Column = cxGridDBColumn25
            end
            item
              Kind = skSum
              Column = cxGridDBColumn26
            end
            item
              Kind = skSum
              Column = cxGridDBColumn27
            end
            item
              Kind = skSum
              Column = cxGridDBColumn28
            end
            item
              Kind = skSum
              Column = cxGridDBColumn29
            end
            item
              Kind = skSum
              Column = cxGridDBColumn30
            end
            item
              Kind = skSum
              Column = cxGridDBColumn31
            end
            item
              Kind = skSum
              Column = cxGridDBColumn32
            end
            item
              Kind = skAverage
              Column = cxGridDBColumn33
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsView.CellEndEllipsis = True
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.Indicator = True
          Preview.AutoHeight = False
          object cxGridDBTableView3PERIOD: TcxGridDBColumn
            Caption = #1055#1077#1088#1110#1086#1076
            DataBinding.FieldName = 'PERIOD'
          end
          object cxGridDBColumn17: TcxGridDBColumn
            Caption = #1050#1086#1085#1090#1088#1086#1083#1077#1088
            DataBinding.FieldName = 'FIO'
            Width = 118
          end
          object cxGridDBColumn18: TcxGridDBColumn
            Caption = #1055#1086#1089#1083#1091#1075#1072
            DataBinding.FieldName = 'POSL'
          end
          object cxGridDBColumn19: TcxGridDBColumn
            Caption = #1042#1091#1083#1080#1094#1103
            DataBinding.FieldName = 'UL'
            Width = 223
          end
          object cxGridDBColumn20: TcxGridDBColumn
            Caption = #1041#1091#1076#1080#1085#1086#1082
            DataBinding.FieldName = 'DOM'
          end
          object cxGridDBColumn21: TcxGridDBColumn
            Caption = #1050#1110#1083#1100'.'#1082#1074'.'
            DataBinding.FieldName = 'KOL_KV'
          end
          object cxGridDBColumn22: TcxGridDBColumn
            Caption = #1057#1072#1083#1100#1076#1086' '#1085#1072' '#1087#1086#1095'.'
            DataBinding.FieldName = 'DOLG'
          end
          object cxGridDBColumn23: TcxGridDBColumn
            Caption = #1041#1086#1088#1075' '#1085#1072' '#1087#1086#1095'.'
            DataBinding.FieldName = 'BGST'
          end
          object cxGridDBColumn24: TcxGridDBColumn
            Caption = #1055#1077#1088#1077#1087#1083#1072#1090#1072' '#1085#1072' '#1087#1086#1095'.'
            DataBinding.FieldName = 'PRST'
          end
          object cxGridDBColumn25: TcxGridDBColumn
            Caption = #1053#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103
            DataBinding.FieldName = 'NACH'
          end
          object cxGridDBColumn26: TcxGridDBColumn
            Caption = #1055#1077#1088#1077#1087#1083#1072#1090#1072
            DataBinding.FieldName = 'PERE'
          end
          object cxGridDBColumn27: TcxGridDBColumn
            Caption = #1057#1091#1073#1089#1080#1076#1110#1103
            DataBinding.FieldName = 'SUBS'
          end
          object cxGridDBColumn28: TcxGridDBColumn
            Caption = #1057#1087#1083#1072#1090#1072
            DataBinding.FieldName = 'OPLNOTSUBS'
          end
          object cxGridDBColumn29: TcxGridDBColumn
            Caption = #1057#1072#1083#1100#1076#1086' '#1085#1072' '#1082#1110#1085'.'
            DataBinding.FieldName = 'SAL'
          end
          object cxGridDBColumn30: TcxGridDBColumn
            Caption = #1041#1086#1088#1075' '#1085#1072' '#1082#1110#1085'.'
            DataBinding.FieldName = 'BGEND'
          end
          object cxGridDBColumn31: TcxGridDBColumn
            Caption = #1055#1077#1088#1077#1087#1083#1072#1090#1072' '#1085#1072' '#1082#1110#1085'.'
            DataBinding.FieldName = 'PREND'
          end
          object cxGridDBColumn32: TcxGridDBColumn
            Caption = #1050#1110#1083#1100'. '#1073#1086#1088#1078#1085#1080#1082#1110#1074
            DataBinding.FieldName = 'BORGNIKI'
          end
          object cxGridDBColumn33: TcxGridDBColumn
            Caption = #1042#1110#1076#1089#1086#1090#1086#1082' '#1089#1087#1083#1072#1090#1080
            DataBinding.FieldName = 'PROCENT'
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
    end
  end
  object IBORDERALL: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select *'
      'from'
      '(select'
      '    kart.ul,'
      '    kart.dom,'
      '    kontrol.fio fio,'
      '    adres.kol_kv,'
      '    sum(aa.dolg) dolg,'
      '    sum( aa.bgst) bgst,'
      '    sum( aa.prst) prst,'
      '    sum(aa.nach) nach,'
      '    sum(aa.pere) pere,'
      '    sum(aa.subs) subs,'
      '    sum(aa.oplnotsubs) oplnotsubs,'
      '    sum(aa.sal) sal,'
      '    sum( aa.bgend) as bgend,'
      '    sum( aa.prend) as prend,'
      '    sum(aa.borgniki) borgniki,'
      
        '    (case when (sum(aa.nach)+sum(aa.pere))>0 then case when roun' +
        'd(((sum(aa.oplnotsubs)+sum(aa.subs))*100)/(sum(aa.nach)+sum(aa.p' +
        'ere)))>100 then 100 else round(((sum(aa.oplnotsubs)+sum(aa.subs)' +
        ')*100)/(sum(aa.nach)+sum(aa.pere))) end'
      
        '        else case when (sum(aa.oplnotsubs)+sum(aa.subs))>0 then ' +
        '100 else null end'
      '        end) AS procent'
      'from'
      '(select'
      '    schet,'
      '    sum( vw_obor.dolg) dolg,'
      '    sum( vw_obor.bgst) bgst,'
      '    sum( vw_obor.prst) prst,'
      '    0.00 as nach,'
      '    0.00 pere,'
      '    0.00 as subs,'
      '    0.00 as oplnotsubs,'
      '    0.00 as sal,'
      '    0.00 as bgend,'
      '    0.00 as prend,'
      '    0 AS borgniki'
      'from vw_obor'
      'where vw_obor.period=:dt1'
      'group by schet'
      'union all'
      'select'
      '    schet,'
      '    0.00 as dolg,'
      '    0.00 as bgst,'
      '    0.00 as prst,'
      '    sum( vw_obor.nach) nach,'
      '    sum( vw_obor.pere+vw_obor.wozw) pere,'
      '    sum( vw_obor.subs) subs,'
      '    sum( vw_obor.oplnotsubs) oplnotsubs,'
      '    0.00 as sal,'
      '    0.00 as bgend,'
      '    0.00 as prend,'
      '    0 AS borgniki'
      'from vw_obor'
      'where vw_obor.period>=:dt1 and vw_obor.period<=:dt2'
      'group by schet'
      'union all'
      'select'
      '    schet,'
      '    0.00 as dolg,'
      '    0.00 as bgst,'
      '    0.00 as prst,'
      '    0.00 as nach,'
      '    0.00 as pere,'
      '    0.00 as subs,'
      '    0.00 as oplnotsubs,'
      '    sum( vw_obor.sal) as sal,'
      '    sum( vw_obor.bgend) as bgend,'
      '    sum( vw_obor.prend) as prend,'
      
        '    case when sum( vw_obor.bgend) >:bg then 1 else 0 end AS borg' +
        'niki'
      'from vw_obor'
      'where vw_obor.period=:dt2'
      'group by schet) aa'
      '   inner join kart on (aa.schet = kart.schet)'
      
        '   left join adres on (kart.ul = adres.ul) and (kart.dom = adres' +
        '.dom)'
      '   left join kontrol on (adres.kl_kontrol = kontrol.kl)'
      '   where kart.ul is not null'
      'group by kart.ul, kart.dom, kontrol.fio, adres.kol_kv'
      
        'having (ABS(sum(aa.dolg))+ABS(sum(aa.nach))+ABS(sum(aa.pere))+AB' +
        'S(sum(aa.subs))+ABS(sum(aa.oplnotsubs))+ABS(sum(aa.sal)))<>0'
      'order by kontrol.fio,kart.ul, kart.dom)')
    ParamCheck = True
    UniDirectional = False
    Left = 56
    Top = 448
    object IBORDERALLUL: TIBStringField
      FieldName = 'UL'
      Origin = '"KART"."UL"'
      Size = 70
    end
    object IBORDERALLDOM: TIBStringField
      FieldName = 'DOM'
      Origin = '"KART"."DOM"'
      Size = 10
    end
    object IBORDERALLFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"KONTROL"."FIO"'
      Size = 40
    end
    object IBORDERALLKOL_KV: TIntegerField
      FieldName = 'KOL_KV'
      Origin = '"ADRES"."KOL_KV"'
    end
    object IBORDERALLDOLG: TIBBCDField
      FieldName = 'DOLG'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBORDERALLBGST: TIBBCDField
      FieldName = 'BGST'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBORDERALLPRST: TIBBCDField
      FieldName = 'PRST'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBORDERALLNACH: TIBBCDField
      FieldName = 'NACH'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBORDERALLPERE: TIBBCDField
      FieldName = 'PERE'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBORDERALLSUBS: TIBBCDField
      FieldName = 'SUBS'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBORDERALLOPLNOTSUBS: TIBBCDField
      FieldName = 'OPLNOTSUBS'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBORDERALLSAL: TIBBCDField
      FieldName = 'SAL'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBORDERALLBGEND: TIBBCDField
      FieldName = 'BGEND'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBORDERALLPREND: TIBBCDField
      FieldName = 'PREND'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBORDERALLBORGNIKI: TLargeintField
      FieldName = 'BORGNIKI'
      ProviderFlags = []
    end
    object IBORDERALLPROCENT: TLargeintField
      FieldName = 'PROCENT'
      ProviderFlags = []
    end
  end
  object DSORDERALL: TDataSource
    DataSet = IBORDERALL
    Left = 56
    Top = 504
  end
  object IBORDER: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select *'
      'from'
      '(select'
      '    kart.ul,'
      '    kart.dom,'
      '    kontrol.fio,'
      '    adres.kol_kv,'
      '    wid.naim posl,'
      '    sum(aa.dolg) dolg,'
      '    sum( aa.bgst) bgst,'
      '    sum( aa.prst) prst,'
      '    sum(aa.nach) nach,'
      '    sum(aa.pere) pere,'
      '    sum(aa.subs) subs,'
      '    sum(aa.oplnotsubs) oplnotsubs,'
      '    sum(aa.sal) sal,'
      '    sum( aa.bgend) as bgend,'
      '    sum( aa.prend) as prend,'
      '    sum(aa.borgniki) borgniki,'
      
        '    (case when (sum(aa.nach)+sum(aa.pere))>0 then case when roun' +
        'd(((sum(aa.oplnotsubs)+sum(aa.subs))*100)/(sum(aa.nach)+sum(aa.p' +
        'ere)))>100 then 100 else round(((sum(aa.oplnotsubs)+sum(aa.subs)' +
        ')*100)/(sum(aa.nach)+sum(aa.pere))) end'
      
        '        else case when (sum(aa.oplnotsubs)+sum(aa.subs))>0 then ' +
        '100 else null end'
      '        end) AS procent'
      'from'
      '(select'
      '    schet,'
      '    wid,'
      '    sum( vw_obor.dolg) dolg,'
      '    sum( vw_obor.bgst) bgst,'
      '    sum( vw_obor.prst) prst,'
      '    0.00 as nach,'
      '    0.00 pere,'
      '    0.00 as subs,'
      '    0.00 as oplnotsubs,'
      '    0.00 as sal,'
      '    0.00 as bgend,'
      '    0.00 as prend,'
      '    0 AS borgniki'
      'from vw_obor'
      'where vw_obor.period=:dt1'
      'group by schet,wid'
      'union all'
      'select'
      '    schet,'
      '    wid,'
      '    0.00 as dolg,'
      '    0.00 as bgst,'
      '    0.00 as prst,'
      '    sum( vw_obor.nach) nach,'
      '    sum( vw_obor.pere+vw_obor.wozw) pere,'
      '    sum( vw_obor.subs) subs,'
      '    sum( vw_obor.oplnotsubs) oplnotsubs,'
      '    0.00 as sal,'
      '    0.00 as bgend,'
      '    0.00 as prend,'
      '    0 AS borgniki'
      'from vw_obor'
      'where vw_obor.period>=:dt1 and vw_obor.period<=:dt2'
      'group by schet,wid'
      'union all'
      'select'
      '    schet,'
      '    wid,'
      '    0.00 as dolg,'
      '    0.00 as bgst,'
      '    0.00 as prst,'
      '    0.00 as nach,'
      '    0.00 as pere,'
      '    0.00 as subs,'
      '    0.00 as oplnotsubs,'
      '    sum( vw_obor.sal) as sal,'
      '    sum( vw_obor.bgend) as bgend,'
      '    sum( vw_obor.prend) as prend,'
      
        '    case when sum( vw_obor.bgend) >:bg then 1 else 0 end AS borg' +
        'niki'
      'from vw_obor'
      'where vw_obor.period=:dt2'
      'group by schet,wid) aa'
      '   inner join kart on (aa.schet = kart.schet)'
      
        '   left join adres on (kart.ul = adres.ul) and (kart.dom = adres' +
        '.dom)'
      '   left join kontrol on (adres.kl_kontrol = kontrol.kl)'
      '   left join wid on (aa.wid = wid.wid)'
      '   where kart.ul is not null'
      'group by wid.naim,kart.ul, kart.dom, kontrol.fio, adres.kol_kv'
      
        'having (ABS(sum(aa.dolg))+ABS(sum(aa.nach))+ABS(sum(aa.pere))+AB' +
        'S(sum(aa.subs))+ABS(sum(aa.oplnotsubs))+ABS(sum(aa.sal)))<>0'
      'order by kontrol.fio,wid.naim,kart.ul, kart.dom)')
    ParamCheck = True
    UniDirectional = False
    Left = 128
    Top = 448
    object IBStringField1: TIBStringField
      FieldName = 'UL'
      Origin = '"KART"."UL"'
      Size = 70
    end
    object IBStringField2: TIBStringField
      FieldName = 'DOM'
      Origin = '"KART"."DOM"'
      Size = 10
    end
    object IBStringField3: TIBStringField
      FieldName = 'FIO'
      Origin = '"KONTROL"."FIO"'
      Size = 40
    end
    object IntegerField1: TIntegerField
      FieldName = 'KOL_KV'
      Origin = '"ADRES"."KOL_KV"'
    end
    object IBBCDField1: TIBBCDField
      FieldName = 'DOLG'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField2: TIBBCDField
      FieldName = 'BGST'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField3: TIBBCDField
      FieldName = 'PRST'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField4: TIBBCDField
      FieldName = 'NACH'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField5: TIBBCDField
      FieldName = 'PERE'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField6: TIBBCDField
      FieldName = 'SUBS'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField7: TIBBCDField
      FieldName = 'OPLNOTSUBS'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField8: TIBBCDField
      FieldName = 'SAL'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField9: TIBBCDField
      FieldName = 'BGEND'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField10: TIBBCDField
      FieldName = 'PREND'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object LargeintField1: TLargeintField
      FieldName = 'BORGNIKI'
      ProviderFlags = []
    end
    object IBORDERPOSL: TIBStringField
      FieldName = 'POSL'
      ProviderFlags = []
    end
    object IBORDERPROCENT: TLargeintField
      FieldName = 'PROCENT'
      ProviderFlags = []
    end
  end
  object DSORDER: TDataSource
    DataSet = IBORDER
    Left = 128
    Top = 504
  end
  object frxReport1: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'HP LaserJet P2015 Series PCL 6'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38434.646071875000000000
    ReportOptions.LastChange = 43476.642997083300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure DialogPage1OnShow(Sender: TfrxComponent);'
      'begin'
      '  Query2.Open;                                 '
      '//  ComboBox1.ItemIndex := 0;'
      '  ClName.KeyValue := 0;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 340
    Top = 360
    Datasets = <
      item
        DataSetName = 'DM.GlobSet'
      end
      item
        DataSetName = 'Query1'
      end
      item
        DataSetName = 'Query2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 7.937500000000000000
      RightMargin = 7.937500000000000000
      TopMargin = 7.937500000000000000
      BottomMargin = 7.937500000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 478.000000000000000000
        Top = 18.897650000000000000
        Width = 733.701261250000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSetName = 'Query1'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 29.000000000000000000
          Top = 84.000000000000000000
          Width = 672.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047' '#1040' '#1071' '#1042' '#1050' '#1040'   '#8470' [NumberEdit.Text]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 429.000000000000000000
          Top = 12.000000000000000000
          Width = 272.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DM.GlobSet."GlName"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 429.000000000000000000
          Top = 32.000000000000000000
          Width = 272.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DM.GlobSet."OfficeName"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 429.000000000000000000
          Top = 52.000000000000000000
          Width = 272.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1053#1072#1095#1072#1083#1100#1085#1080#1082#1091' '#1056#1045#1052' ___________________')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 29.000000000000000000
          Top = 104.000000000000000000
          Width = 672.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              #1055#1088#1086#1096#1091' '#1042#1072#1089' [IIF(TypeCB.ItemIndex = -1, '#39#1074'i'#1076#1082#1083#1102#1095#1080#1090#1080'/'#1087'i'#1076#1082#1083#1102#1095#1080#1090#1080#39', '#39 +
              #39')][IIF(TypeCB.ItemIndex = 0, '#39#1074'i'#1076#1082#1083#1102#1095#1080#1090#1080'/'#1087'i'#1076#1082#1083#1102#1095#1080#1090#1080#39', '#39#39')][IIF(' +
              'TypeCB.ItemIndex = 1, '#39#1074'i'#1076#1082#1083#1102#1095#1080#1090#1080#39', '#39#39')][IIF(TypeCB.ItemIndex = ' +
              '2, '#39#1074'i'#1076#1082#1083#1102#1095#1080#1090#1080#39', '#39#39')][IIF(TypeCB.ItemIndex = 3, '#39#1074'i'#1076#1082#1083#1102#1095#1080#1090#1080#39', '#39#39 +
              ')][IIF(TypeCB.ItemIndex = 4, '#39#1087'i'#1076#1082#1083#1102#1095#1080#1090#1080#39', '#39#39')][IIF(TypeCB.ItemI' +
              'ndex = 5, '#39#1087'i'#1076#1082#1083#1102#1095#1080#1090#1080#39', '#39#39')][IIF(TypeCB.ItemIndex = 6, '#39#1087'i'#1076#1082#1083#1102#1095#1080 +
              #1090#1080#39', '#39#39')][IIF(TypeCB.ItemIndex = 7, '#39#1076#1077#1084#1086#1085#1090#1091#1074#1072#1090#1080#39', '#39#39')]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 57.000000000000000000
          Top = 132.000000000000000000
          Width = 644.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1040#1076#1088#1077#1089#1072': [Query1."Addr"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 57.000000000000000000
          Top = 152.000000000000000000
          Width = 644.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1055'.I.'#1041'.: [Query1."AbName"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 57.000000000000000000
          Top = 172.000000000000000000
          Width = 308.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1054#1089#1086#1073#1086#1074#1080#1081' '#1088#1072#1093#1091#1085#1086#1082': [Query1."Lsc"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 57.000000000000000000
          Top = 192.000000000000000000
          Width = 644.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #1045#1083#1077#1082#1090#1088#1080#1095#1085#1072' '#1072#1076#1088#1077#1089#1072': [Query1."ElAddr"]   '#1054#1087#1086#1088#1072': [Query1."TargetTow' +
              'er"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 57.000000000000000000
          Top = 212.000000000000000000
          Width = 644.000000000000000000
          Height = 18.000000000000000000
          DataSetName = 'Query1'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1072': [Query1."CntNumber"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 57.000000000000000000
          Top = 281.000000000000000000
          Width = 230.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '"_____"__________________20____'#1088'.')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 311.000000000000000000
          Top = 280.000000000000000000
          Width = 392.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1047#1072#1089#1090#1091#1087#1085#1080#1082' '#1085#1072#1095#1072#1083#1100#1085#1080#1082#1072' '#1056#1045#1052' _______________________________')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 29.000000000000000000
          Top = 308.000000000000000000
          Width = 672.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #1056#1077#1079#1086#1083#1102#1094'i'#1103' '#1085#1072#1095#1072#1083#1100#1085#1080#1082#1072' '#1056#1045#1052': [IIF(TypeCB.ItemIndex = -1, '#39#39', '#39#39')][I' +
              'IF(TypeCB.ItemIndex = 0, '#39#39', '#39#39')][IIF(TypeCB.ItemIndex = 1, '#39#1074'i'#1076 +
              #1082#1083#1102#1095#1080#1090#1080#39', '#39#39')][IIF(TypeCB.ItemIndex = 2, '#39#1074'i'#1076#1082#1083#1102#1095#1080#1090#1080' '#1085#1072' '#1086#1087#1086#1088'i'#39', ' +
              #39#39')][IIF(TypeCB.ItemIndex = 3, '#39#1074'i'#1076#1082#1083#1102#1095#1080#1090#1080' '#1074' '#1083'i'#1095#1080#1083#1100#1085#1080#1082#1091#39', '#39#39')][I' +
              'IF(TypeCB.ItemIndex = 4, '#39#1087'i'#1076#1082#1083#1102#1095#1080#1090#1080#39', '#39#39')][IIF(TypeCB.ItemIndex' +
              ' = 5, '#39#1087'i'#1076#1082#1083#1102#1095#1080#1090#1080' '#1085#1072' '#1086#1087#1086#1088'i'#39', '#39#39')][IIF(TypeCB.ItemIndex = 6, '#39#1087'i'#1076 +
              #1082#1083#1102#1095#1080#1090#1080' '#1074' '#1083'i'#1095#1080#1083#1100#1085#1080#1082#1091#39', '#39#39')][IIF(TypeCB.ItemIndex = 7, '#39#1076#1077#1084#1086#1085#1090#1091#1074#1072 +
              #1090#1080#39', '#39#39')] _________________________________')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 29.000000000000000000
          Top = 328.000000000000000000
          Width = 232.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '"_____"__________________20____'#1088'.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 305.000000000000000000
          Top = 328.000000000000000000
          Width = 232.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1055'i'#1076#1087#1080#1089'_________________')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 29.000000000000000000
          Top = 356.000000000000000000
          Width = 672.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1054#1042#1041'  "_____"__________________20____'#1088'.')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 29.000000000000000000
          Top = 380.000000000000000000
          Width = 672.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1055#1086#1082#1072#1079#1085#1080#1082' '#1083'i'#1095#1080#1083#1100#1085#1080#1082#1072': __________')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 29.000000000000000000
          Top = 400.000000000000000000
          Width = 672.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 29.000000000000000000
          Top = 420.000000000000000000
          Width = 672.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 29.000000000000000000
          Top = 444.000000000000000000
          Width = 672.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            #1045#1083'. '#1084#1086#1085#1090#1077#1088':  [Query2."ClerkName"]      '#1055'i'#1076#1087#1080#1089' ______________')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 29.000000000000000000
          Top = 472.000000000000000000
          Width = 672.000000000000000000
          Color = clBlack
          Frame.Style = fsDash
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo21: TfrxMemoView
          Left = 389.000000000000000000
          Top = 172.000000000000000000
          Width = 312.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #1041#1086#1088#1075' / '#1041#1086#1088#1075' '#1087#1086' '#1072#1082#1090#1091': [Query1."Debt"] '#1075#1088#1085'. / [Query1."PenaltyDebt' +
              '"] '#1075#1088#1085'.')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 57.000000000000000000
          Top = 232.000000000000000000
          Width = 644.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #1054#1089#1090#1072#1085#1085'i'#1081' '#1087#1086#1082#1072#1079#1085#1080#1082' '#1083'i'#1095#1080#1083#1100#1085#1080#1082#1072': [Query1."LastValue"] '#1089#1090#1072#1085#1086#1084' '#1085#1072' [Qu' +
              'ery1."LastDate"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 55.000000000000000000
          Top = 256.000000000000000000
          Width = 644.000000000000000000
          Height = 18.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #1054#1089#1090#1072#1085#1085#1103' '#1086#1087#1083#1072#1090#1072':  [Query1."LastDate_p"],  '#1087#1086#1082#1072#1079#1085#1080#1082' '#1083'i'#1095#1080#1083#1100#1085#1080#1082#1072' [Qu' +
              'ery1."LastValue_p"], '#1089#1091#1084#1072' [Query1."Lastpaysum"] '#1075#1088#1085'.')
          ParentFont = False
        end
      end
    end
    object DialogPage1: TfrxDialogPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      BorderStyle = bsDialog
      Caption = #1047#1072#1103#1074#1082#1072
      Height = 179.000000000000000000
      ClientHeight = 141.000000000000000000
      Left = 699.000000000000000000
      Top = 167.000000000000000000
      Width = 204.000000000000000000
      ClientWidth = 188.000000000000000000
      OnShow = 'DialogPage1OnShow'
      object Label1: TfrxLabelControl
        Left = 8.000000000000000000
        Top = 12.000000000000000000
        Width = 51.000000000000000000
        Height = 13.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -2147483640
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Caption = #1047#1072#1103#1074#1082#1072' '#8470
        Color = -2147483633
      end
      object NumberEdit: TfrxEditControl
        Left = 64.000000000000000000
        Top = 8.000000000000000000
        Width = 121.000000000000000000
        Height = 21.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -2147483640
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Color = -2147483643
        MaxLength = 0
        PasswordChar = #0
      end
      object Label2: TfrxLabelControl
        Left = 8.000000000000000000
        Top = 40.000000000000000000
        Width = 12.000000000000000000
        Height = 13.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -2147483640
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Caption = #1085#1072
        Color = -2147483633
      end
      object TypeCB: TfrxComboBoxControl
        Left = 32.000000000000000000
        Top = 36.000000000000000000
        Width = 153.000000000000000000
        Height = 21.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -2147483640
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Color = -2147483643
        Items.Strings = (
          ''
          #1042'i'#1076#1082#1083#1102#1095#1077#1085#1085#1103
          #1042'i'#1076#1082#1083#1102#1095#1077#1085#1085#1103' '#1085#1072' '#1086#1087#1086#1088'i'
          #1042'i'#1076#1082#1083#1102#1095#1077#1085#1085#1103' '#1074' '#1083'i'#1095#1080#1083#1100#1085#1080#1082#1091
          #1055'i'#1076#1082#1083#1102#1095#1077#1085#1085#1103
          #1055'i'#1076#1082#1083#1102#1095#1077#1085#1085#1103' '#1085#1072' '#1086#1087#1086#1088'i'
          #1055'i'#1076#1082#1083#1102#1095#1077#1085#1085#1103' '#1074' '#1083'i'#1095#1080#1083#1100#1085#1080#1082#1091
          #1044#1077#1084#1086#1085#1090#1072#1078
          #1055#1077#1088#1077#1074'i'#1088#1082#1072' '#1087#1072#1088#1072#1084#1077#1090#1088#1080#1079#1072#1094'i'#1111)
        ItemIndex = 0
      end
      object ClName: TfrxDBLookupComboBox
        Left = 8.000000000000000000
        Top = 88.000000000000000000
        Width = 177.000000000000000000
        Height = 21.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -2147483640
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        DataSetName = 'Query2'
        ListField = 'ClerkName'
        KeyField = 'ClerkId'
        DropDownWidth = 0
        DropDownRows = 7
      end
      object Label3: TfrxLabelControl
        Left = 8.000000000000000000
        Top = 68.000000000000000000
        Width = 61.000000000000000000
        Height = 13.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -2147483640
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Caption = #1042#1080#1082#1086#1085#1072#1074#1077#1094#1100
        Color = -2147483633
      end
      object Button1: TfrxButtonControl
        Left = 20.000000000000000000
        Top = 116.000000000000000000
        Width = 75.000000000000000000
        Height = 25.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -2147483640
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Caption = #1054#1050
        Default = True
        ModalResult = 1
      end
      object Button2: TfrxButtonControl
        Left = 100.000000000000000000
        Top = 116.000000000000000000
        Width = 75.000000000000000000
        Height = 25.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -2147483640
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Cancel = True
        Caption = #1042'i'#1076#1084'i'#1085#1080#1090#1080
        ModalResult = 2
      end
    end
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 556
    Top = 448
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 636
    Top = 448
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'UL=UL'
      'DOM=DOM'
      'FIO=FIO'
      'KOL_KV=KOL_KV'
      'DOLG=DOLG'
      'BGST=BGST'
      'PRST=PRST'
      'NACH=NACH'
      'PERE=PERE'
      'SUBS=SUBS'
      'OPLNOTSUBS=OPLNOTSUBS'
      'SAL=SAL'
      'BGEND=BGEND'
      'PREND=PREND'
      'BORGNIKI=BORGNIKI'
      'PROCENT=PROCENT')
    DataSet = IBREPALL
    BCDToCurrency = False
    Left = 52
    Top = 360
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'UL=UL'
      'DOM=DOM'
      'FIO=FIO'
      'KOL_KV=KOL_KV'
      'DOLG=DOLG'
      'BGST=BGST'
      'PRST=PRST'
      'NACH=NACH'
      'PERE=PERE'
      'SUBS=SUBS'
      'OPLNOTSUBS=OPLNOTSUBS'
      'SAL=SAL'
      'BGEND=BGEND'
      'PREND=PREND'
      'BORGNIKI=BORGNIKI'
      'POSL=POSL'
      'PROCENT=PROCENT')
    DataSet = IBREP
    BCDToCurrency = False
    Left = 140
    Top = 360
  end
  object IBREPALL: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select *'
      'from'
      '(select'
      '    kart.ul,'
      '    kart.dom,'
      '    kontrol.fio fio,'
      '    adres.kol_kv,'
      '    sum(aa.dolg) dolg,'
      '    sum( aa.bgst) bgst,'
      '    sum( aa.prst) prst,'
      '    sum(aa.nach) nach,'
      '    sum(aa.pere) pere,'
      '    sum(aa.subs) subs,'
      '    sum(aa.oplnotsubs) oplnotsubs,'
      '    sum(aa.sal) sal,'
      '    sum( aa.bgend) as bgend,'
      '    sum( aa.prend) as prend,'
      '    sum(aa.borgniki) borgniki,'
      
        '    (case when (sum(aa.nach)+sum(aa.pere))>0 then round(((sum(aa' +
        '.oplnotsubs)+sum(aa.subs))*100)/(sum(aa.nach)+sum(aa.pere)))'
      
        '        else case when (sum(aa.oplnotsubs)+sum(aa.subs))>0 then ' +
        '100 else 0 end'
      '        end) AS procent'
      'from'
      '(select'
      '    schet,'
      '    sum( vw_obor.dolg) dolg,'
      '    sum( vw_obor.bgst) bgst,'
      '    sum( vw_obor.prst) prst,'
      '    0.00 as nach,'
      '    0.00 pere,'
      '    0.00 as subs,'
      '    0.00 as oplnotsubs,'
      '    0.00 as sal,'
      '    0.00 as bgend,'
      '    0.00 as prend,'
      '    0 AS borgniki'
      'from vw_obor'
      'where vw_obor.period=:dt1'
      'group by schet'
      'union all'
      'select'
      '    schet,'
      '    0.00 as dolg,'
      '    0.00 as bgst,'
      '    0.00 as prst,'
      '    sum( vw_obor.nach) nach,'
      '    sum( vw_obor.pere+vw_obor.wozw) pere,'
      '    sum( vw_obor.subs) subs,'
      '    sum( vw_obor.oplnotsubs) oplnotsubs,'
      '    0.00 as sal,'
      '    0.00 as bgend,'
      '    0.00 as prend,'
      '    0 AS borgniki'
      'from vw_obor'
      'where vw_obor.period>=:dt1 and vw_obor.period<=:dt2'
      'group by schet'
      'union all'
      'select'
      '    schet,'
      '    0.00 as dolg,'
      '    0.00 as bgst,'
      '    0.00 as prst,'
      '    0.00 as nach,'
      '    0.00 as pere,'
      '    0.00 as subs,'
      '    0.00 as oplnotsubs,'
      '    sum( vw_obor.sal) as sal,'
      '    sum( vw_obor.bgend) as bgend,'
      '    sum( vw_obor.prend) as prend,'
      
        '    case when sum( vw_obor.bgend) >:bg then 1 else 0 end AS borg' +
        'niki'
      'from vw_obor'
      'where vw_obor.period=:dt2'
      'group by schet) aa'
      '   inner join kart on (aa.schet = kart.schet)'
      
        '   left join adres on (kart.ul = adres.ul) and (kart.dom = adres' +
        '.dom)'
      '   left join kontrol on (adres.kl_kontrol = kontrol.kl)'
      '   where kart.ul is not null'
      'group by kart.ul, kart.dom, kontrol.fio, adres.kol_kv'
      
        'having (ABS(sum(aa.dolg))+ABS(sum(aa.nach))+ABS(sum(aa.pere))+AB' +
        'S(sum(aa.subs))+ABS(sum(aa.oplnotsubs))+ABS(sum(aa.sal)))<>0'
      'order by kontrol.fio,kart.ul, kart.dom)')
    ParamCheck = True
    UniDirectional = False
    Left = 304
    Top = 416
    object IBStringField4: TIBStringField
      FieldName = 'UL'
      Origin = '"KART"."UL"'
      Size = 70
    end
    object IBStringField5: TIBStringField
      FieldName = 'DOM'
      Origin = '"KART"."DOM"'
      Size = 10
    end
    object IBStringField6: TIBStringField
      FieldName = 'FIO'
      Origin = '"KONTROL"."FIO"'
      Size = 40
    end
    object IntegerField2: TIntegerField
      FieldName = 'KOL_KV'
      Origin = '"ADRES"."KOL_KV"'
    end
    object IBBCDField11: TIBBCDField
      FieldName = 'DOLG'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField12: TIBBCDField
      FieldName = 'BGST'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField13: TIBBCDField
      FieldName = 'PRST'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField14: TIBBCDField
      FieldName = 'NACH'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField15: TIBBCDField
      FieldName = 'PERE'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField16: TIBBCDField
      FieldName = 'SUBS'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField17: TIBBCDField
      FieldName = 'OPLNOTSUBS'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField18: TIBBCDField
      FieldName = 'SAL'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField19: TIBBCDField
      FieldName = 'BGEND'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField20: TIBBCDField
      FieldName = 'PREND'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object LargeintField2: TLargeintField
      FieldName = 'BORGNIKI'
      ProviderFlags = []
    end
    object IBREPALLPROCENT: TLargeintField
      FieldName = 'PROCENT'
      ProviderFlags = []
    end
  end
  object IBREP: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select *'
      'from'
      '(select'
      '    kart.ul,'
      '    kart.dom,'
      '    kontrol.fio,'
      '    adres.kol_kv,'
      '    wid.naim posl,'
      '    sum(aa.dolg) dolg,'
      '    sum( aa.bgst) bgst,'
      '    sum( aa.prst) prst,'
      '    sum(aa.nach) nach,'
      '    sum(aa.pere) pere,'
      '    sum(aa.subs) subs,'
      '    sum(aa.oplnotsubs) oplnotsubs,'
      '    sum(aa.sal) sal,'
      '    sum( aa.bgend) as bgend,'
      '    sum( aa.prend) as prend,'
      '    sum(aa.borgniki) borgniki,'
      
        '    (case when (sum(aa.nach)+sum(aa.pere))>0 then round(((sum(aa' +
        '.oplnotsubs)+sum(aa.subs))*100)/(sum(aa.nach)+sum(aa.pere)))'
      
        '        else case when (sum(aa.oplnotsubs)+sum(aa.subs))>0 then ' +
        '100 else 0 end'
      '        end) AS procent'
      'from'
      '(select'
      '    schet,'
      '    wid,'
      '    sum( vw_obor.dolg) dolg,'
      '    sum( vw_obor.bgst) bgst,'
      '    sum( vw_obor.prst) prst,'
      '    0.00 as nach,'
      '    0.00 pere,'
      '    0.00 as subs,'
      '    0.00 as oplnotsubs,'
      '    0.00 as sal,'
      '    0.00 as bgend,'
      '    0.00 as prend,'
      '    0 AS borgniki'
      'from vw_obor'
      'where vw_obor.period=:dt1'
      'group by schet,wid'
      'union all'
      'select'
      '    schet,'
      '    wid,'
      '    0.00 as dolg,'
      '    0.00 as bgst,'
      '    0.00 as prst,'
      '    sum( vw_obor.nach) nach,'
      '    sum( vw_obor.pere+vw_obor.wozw) pere,'
      '    sum( vw_obor.subs) subs,'
      '    sum( vw_obor.oplnotsubs) oplnotsubs,'
      '    0.00 as sal,'
      '    0.00 as bgend,'
      '    0.00 as prend,'
      '    0 AS borgniki'
      'from vw_obor'
      'where vw_obor.period>=:dt1 and vw_obor.period<=:dt2'
      'group by schet,wid'
      'union all'
      'select'
      '    schet,'
      '    wid,'
      '    0.00 as dolg,'
      '    0.00 as bgst,'
      '    0.00 as prst,'
      '    0.00 as nach,'
      '    0.00 as pere,'
      '    0.00 as subs,'
      '    0.00 as oplnotsubs,'
      '    sum( vw_obor.sal) as sal,'
      '    sum( vw_obor.bgend) as bgend,'
      '    sum( vw_obor.prend) as prend,'
      
        '    case when sum( vw_obor.bgend) >:bg then 1 else 0 end AS borg' +
        'niki'
      'from vw_obor'
      'where vw_obor.period=:dt2'
      'group by schet,wid) aa'
      '   inner join kart on (aa.schet = kart.schet)'
      
        '   left join adres on (kart.ul = adres.ul) and (kart.dom = adres' +
        '.dom)'
      '   left join kontrol on (adres.kl_kontrol = kontrol.kl)'
      '   left join wid on (aa.wid = wid.wid)'
      '   where kart.ul is not null'
      'group by wid.naim,kart.ul, kart.dom, kontrol.fio, adres.kol_kv'
      
        'having (ABS(sum(aa.dolg))+ABS(sum(aa.nach))+ABS(sum(aa.pere))+AB' +
        'S(sum(aa.subs))+ABS(sum(aa.oplnotsubs))+ABS(sum(aa.sal)))<>0'
      'order by kontrol.fio,wid.naim,kart.ul, kart.dom)')
    ParamCheck = True
    UniDirectional = False
    Left = 360
    Top = 416
    object IBStringField7: TIBStringField
      FieldName = 'UL'
      Origin = '"KART"."UL"'
      Size = 70
    end
    object IBStringField8: TIBStringField
      FieldName = 'DOM'
      Origin = '"KART"."DOM"'
      Size = 10
    end
    object IBStringField9: TIBStringField
      FieldName = 'FIO'
      Origin = '"KONTROL"."FIO"'
      Size = 40
    end
    object IntegerField3: TIntegerField
      FieldName = 'KOL_KV'
      Origin = '"ADRES"."KOL_KV"'
    end
    object IBBCDField21: TIBBCDField
      FieldName = 'DOLG'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField22: TIBBCDField
      FieldName = 'BGST'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField23: TIBBCDField
      FieldName = 'PRST'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField24: TIBBCDField
      FieldName = 'NACH'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField25: TIBBCDField
      FieldName = 'PERE'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField26: TIBBCDField
      FieldName = 'SUBS'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField27: TIBBCDField
      FieldName = 'OPLNOTSUBS'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField28: TIBBCDField
      FieldName = 'SAL'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField29: TIBBCDField
      FieldName = 'BGEND'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField30: TIBBCDField
      FieldName = 'PREND'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object LargeintField3: TLargeintField
      FieldName = 'BORGNIKI'
      ProviderFlags = []
    end
    object IBStringField10: TIBStringField
      FieldName = 'POSL'
      ProviderFlags = []
    end
    object IBREPPROCENT: TLargeintField
      FieldName = 'PROCENT'
      ProviderFlags = []
    end
  end
  object IBORDERMES: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select *'
      'from'
      '(select'
      '    period, '
      '    kart.ul,'
      '    kart.dom,'
      '    kontrol.fio,'
      '    adres.kol_kv,'
      '    wid.naim posl,'
      '    sum(aa.dolg) dolg,'
      '    sum( aa.bgst) bgst,'
      '    sum( aa.prst) prst,'
      '    sum(aa.nach) nach,'
      '    sum(aa.pere) pere,'
      '    sum(aa.subs) subs,'
      '    sum(aa.oplnotsubs) oplnotsubs,'
      '    sum(aa.sal) sal,'
      '    sum( aa.bgend) as bgend,'
      '    sum( aa.prend) as prend,'
      '    sum(aa.borgniki) borgniki,'
      
        '    (case when (sum(aa.nach)+sum(aa.pere))>0 then case when roun' +
        'd(((sum(aa.oplnotsubs)+sum(aa.subs))*100)/(sum(aa.nach)+sum(aa.p' +
        'ere)))>100 then 100 else round(((sum(aa.oplnotsubs)+sum(aa.subs)' +
        ')*100)/(sum(aa.nach)+sum(aa.pere))) end'
      
        '        else case when (sum(aa.oplnotsubs)+sum(aa.subs))>0 then ' +
        '100 else null end'
      '        end) AS procent'
      'from'
      '('
      'select'
      '    schet,'
      '    wid,'
      '    period, '
      '    vw_obor.dolg dolg,'
      '    vw_obor.bgst bgst,'
      '    vw_obor.prst prst,'
      '    vw_obor.nach nach,'
      '    vw_obor.pere+vw_obor.wozw pere,'
      '    vw_obor.subs subs,'
      '    vw_obor.oplnotsubs oplnotsubs,'
      '    vw_obor.sal as sal,'
      '    vw_obor.bgend as bgend,'
      '    vw_obor.prend as prend,'
      '    case when vw_obor.bgend >:bg then 1 else 0 end AS borgniki'
      'from vw_obor'
      'where vw_obor.period>=:dt1 and vw_obor.period<=:dt2'
      ') aa'
      '   inner join kart on (aa.schet = kart.schet)'
      
        '   left join adres on (kart.ul = adres.ul) and (kart.dom = adres' +
        '.dom)'
      '   left join kontrol on (adres.kl_kontrol = kontrol.kl)'
      '   left join wid on (aa.wid = wid.wid)'
      '   where kart.ul is not null'
      
        'group by period,wid.naim,kart.ul, kart.dom, kontrol.fio, adres.k' +
        'ol_kv'
      
        'having (ABS(sum(aa.dolg))+ABS(sum(aa.nach))+ABS(sum(aa.pere))+AB' +
        'S(sum(aa.subs))+ABS(sum(aa.oplnotsubs))+ABS(sum(aa.sal)))<>0'
      'order by wid.naim, kontrol.fio,kart.ul, kart.dom, period )')
    ParamCheck = True
    UniDirectional = False
    Left = 200
    Top = 448
    object IBStringField11: TIBStringField
      FieldName = 'UL'
      Origin = '"KART"."UL"'
      Size = 70
    end
    object IBStringField12: TIBStringField
      FieldName = 'DOM'
      Origin = '"KART"."DOM"'
      Size = 10
    end
    object IBStringField13: TIBStringField
      FieldName = 'FIO'
      Origin = '"KONTROL"."FIO"'
      Size = 40
    end
    object IntegerField4: TIntegerField
      FieldName = 'KOL_KV'
      Origin = '"ADRES"."KOL_KV"'
    end
    object IBBCDField31: TIBBCDField
      FieldName = 'DOLG'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField32: TIBBCDField
      FieldName = 'BGST'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField33: TIBBCDField
      FieldName = 'PRST'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField34: TIBBCDField
      FieldName = 'NACH'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField35: TIBBCDField
      FieldName = 'PERE'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField36: TIBBCDField
      FieldName = 'SUBS'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField37: TIBBCDField
      FieldName = 'OPLNOTSUBS'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField38: TIBBCDField
      FieldName = 'SAL'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField39: TIBBCDField
      FieldName = 'BGEND'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField40: TIBBCDField
      FieldName = 'PREND'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object LargeintField4: TLargeintField
      FieldName = 'BORGNIKI'
      ProviderFlags = []
    end
    object IBStringField14: TIBStringField
      FieldName = 'POSL'
      ProviderFlags = []
    end
    object IBORDERMESPERIOD: TDateField
      FieldName = 'PERIOD'
      ProviderFlags = []
    end
    object IBORDERMESPROCENT: TLargeintField
      FieldName = 'PROCENT'
      ProviderFlags = []
    end
  end
  object DSORDERMES: TDataSource
    DataSet = IBORDERMES
    Left = 200
    Top = 504
  end
  object IBREPMES: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select *'
      'from'
      '(select'
      '    period, '
      '    kart.ul,'
      '    kart.dom,'
      '    kontrol.fio,'
      '    adres.kol_kv,'
      '    wid.naim posl,'
      '    sum(aa.dolg) dolg,'
      '    sum( aa.bgst) bgst,'
      '    sum( aa.prst) prst,'
      '    sum(aa.nach) nach,'
      '    sum(aa.pere) pere,'
      '    sum(aa.subs) subs,'
      '    sum(aa.oplnotsubs) oplnotsubs,'
      '    sum(aa.sal) sal,'
      '    sum( aa.bgend) as bgend,'
      '    sum( aa.prend) as prend,'
      '    sum(aa.borgniki) borgniki,'
      
        '    (case when (sum(aa.nach)+sum(aa.pere))>0 then round(((sum(aa' +
        '.oplnotsubs)+sum(aa.subs))*100)/(sum(aa.nach)+sum(aa.pere)))'
      
        '        else case when (sum(aa.oplnotsubs)+sum(aa.subs))>0 then ' +
        '100 else 0 end'
      '        end) AS procent'
      'from'
      '('
      'select'
      '    schet,'
      '    wid,'
      '    period, '
      '    vw_obor.dolg dolg,'
      '    vw_obor.bgst bgst,'
      '    vw_obor.prst prst,'
      '    vw_obor.nach nach,'
      '    vw_obor.pere+vw_obor.wozw pere,'
      '    vw_obor.subs subs,'
      '    vw_obor.oplnotsubs oplnotsubs,'
      '    vw_obor.sal as sal,'
      '    vw_obor.bgend as bgend,'
      '    vw_obor.prend as prend,'
      '    case when vw_obor.bgend >:bg then 1 else 0 end AS borgniki'
      'from vw_obor'
      'where vw_obor.period>=:dt1 and vw_obor.period<=:dt2'
      ') aa'
      '   inner join kart on (aa.schet = kart.schet)'
      
        '   left join adres on (kart.ul = adres.ul) and (kart.dom = adres' +
        '.dom)'
      '   left join kontrol on (adres.kl_kontrol = kontrol.kl)'
      '   left join wid on (aa.wid = wid.wid)'
      '   where kart.ul is not null'
      
        'group by period,wid.naim,kart.ul, kart.dom, kontrol.fio, adres.k' +
        'ol_kv'
      
        'having (ABS(sum(aa.dolg))+ABS(sum(aa.nach))+ABS(sum(aa.pere))+AB' +
        'S(sum(aa.subs))+ABS(sum(aa.oplnotsubs))+ABS(sum(aa.sal)))<>0'
      'order by wid.naim, kontrol.fio,kart.ul, kart.dom, period )')
    ParamCheck = True
    UniDirectional = False
    Left = 416
    Top = 416
    object IBStringField15: TIBStringField
      FieldName = 'UL'
      Origin = '"KART"."UL"'
      Size = 70
    end
    object IBStringField16: TIBStringField
      FieldName = 'DOM'
      Origin = '"KART"."DOM"'
      Size = 10
    end
    object IBStringField17: TIBStringField
      FieldName = 'FIO'
      Origin = '"KONTROL"."FIO"'
      Size = 40
    end
    object IntegerField5: TIntegerField
      FieldName = 'KOL_KV'
      Origin = '"ADRES"."KOL_KV"'
    end
    object IBBCDField41: TIBBCDField
      FieldName = 'DOLG'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField42: TIBBCDField
      FieldName = 'BGST'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField43: TIBBCDField
      FieldName = 'PRST'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField44: TIBBCDField
      FieldName = 'NACH'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField45: TIBBCDField
      FieldName = 'PERE'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField46: TIBBCDField
      FieldName = 'SUBS'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField47: TIBBCDField
      FieldName = 'OPLNOTSUBS'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField48: TIBBCDField
      FieldName = 'SAL'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField49: TIBBCDField
      FieldName = 'BGEND'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField50: TIBBCDField
      FieldName = 'PREND'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object LargeintField5: TLargeintField
      FieldName = 'BORGNIKI'
      ProviderFlags = []
    end
    object IBStringField18: TIBStringField
      FieldName = 'POSL'
      ProviderFlags = []
    end
    object IBREPMESPERIOD: TDateField
      FieldName = 'PERIOD'
      ProviderFlags = []
    end
    object IBREPMESPROCENT: TLargeintField
      FieldName = 'PROCENT'
      ProviderFlags = []
    end
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'UL=UL'
      'DOM=DOM'
      'FIO=FIO'
      'KOL_KV=KOL_KV'
      'DOLG=DOLG'
      'BGST=BGST'
      'PRST=PRST'
      'NACH=NACH'
      'PERE=PERE'
      'SUBS=SUBS'
      'OPLNOTSUBS=OPLNOTSUBS'
      'SAL=SAL'
      'BGEND=BGEND'
      'PREND=PREND'
      'BORGNIKI=BORGNIKI'
      'POSL=POSL'
      'PERIOD=PERIOD'
      'PROCENT=PROCENT')
    DataSet = IBREPMES
    BCDToCurrency = False
    Left = 228
    Top = 360
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 596
    Top = 376
  end
end
