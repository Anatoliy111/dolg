object Form13: TForm13
  Left = 0
  Top = 0
  Caption = 'Form13'
  ClientHeight = 642
  ClientWidth = 963
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 963
    Height = 642
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet3
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 638
    ClientRectLeft = 4
    ClientRectRight = 959
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = #1047#1074#1110#1090' '#1087#1086#1073#1091#1076#1080#1085#1082#1086#1074#1080#1081' ('#1079#1072#1075#1072#1083#1100#1085#1080#1081')'
      ImageIndex = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 955
        Height = 145
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
              FieldName = 'STRPERIOD'
            end
            item
              MinWidth = 0
              Width = 0
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
              FieldName = 'STRPERIOD'
            end
            item
              MinWidth = 0
              Width = 0
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
          Left = 8
          Top = 66
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
        object cxGrid4: TcxGrid
          Left = 533
          Top = 0
          Width = 166
          Height = 144
          TabOrder = 10
          object cxGridDBTableView4: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DSWID
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object cxGridDBTableView1CH: TcxGridDBColumn
              DataBinding.FieldName = 'CH'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ImmediatePost = True
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Width = 60
            end
            object cxGridDBTableView1NAIM: TcxGridDBColumn
              Caption = #1055#1086#1089#1083#1091#1075#1080
              DataBinding.FieldName = 'NAIM'
              Options.Editing = False
              Width = 227
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = cxGridDBTableView4
          end
        end
        object cxLabel13: TcxLabel
          Left = 407
          Top = 14
          Caption = ' - '#1042#1110#1076#1084#1110#1090#1080#1090#1080' '#1074#1089#1110' '#1087#1086#1089#1083#1091#1075#1080
        end
        object cxCheckBox3: TcxCheckBox
          Left = 390
          Top = 12
          Properties.OnChange = cxCheckBox3PropertiesChange
          TabOrder = 12
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 145
        Width = 955
        Height = 469
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
            end
            item
              Kind = skSum
              Column = cxGridDBTableView1KOLI_PF
            end
            item
              Kind = skSum
              Column = cxGridDBTableView1KOLI_P
            end
            item
              Kind = skSum
              Column = cxGridDBTableView1KOL_KV
            end
            item
              Kind = skAverage
              Column = cxGridDBTableView1PROCENT2
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsView.CellEndEllipsis = True
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.Indicator = True
          Preview.AutoHeight = False
          object cxGridDBTableView1NAME: TcxGridDBColumn
            Caption = #1056#1072#1081#1086#1085
            DataBinding.FieldName = 'NAME'
            Width = 89
          end
          object cxGridDBTableView1UL: TcxGridDBColumn
            Caption = #1042#1091#1083#1080#1094#1103
            DataBinding.FieldName = 'UL'
            Width = 315
          end
          object cxGridDBTableView1DOM: TcxGridDBColumn
            Caption = #1041#1091#1076#1080#1085#1086#1082
            DataBinding.FieldName = 'DOM'
          end
          object cxGridDBTableView1KOL_KV: TcxGridDBColumn
            Caption = #1050#1110#1083#1100'.'#1082#1074'.'
            DataBinding.FieldName = 'KOL_KV'
          end
          object cxGridDBTableView1KOLI_P: TcxGridDBColumn
            Caption = #1047#1072#1088#1077#1108#1089#1090#1088#1086#1074#1072#1085#1086
            DataBinding.FieldName = 'KOLI_P'
          end
          object cxGridDBTableView1KOLI_PF: TcxGridDBColumn
            Caption = #1055#1088#1086#1078#1080#1074#1072#1108
            DataBinding.FieldName = 'KOLI_PF'
          end
          object cxGridDBTableView1DOLG: TcxGridDBColumn
            Caption = #1057#1072#1083#1100#1076#1086' '#1085#1072' '#1087#1086#1095'.'
            DataBinding.FieldName = 'DOLG'
            Width = 90
          end
          object cxGridDBTableView1BGST: TcxGridDBColumn
            Caption = #1041#1086#1088#1075' '#1085#1072' '#1087#1086#1095'.'
            DataBinding.FieldName = 'BGST'
            Width = 90
          end
          object cxGridDBTableView1PRST: TcxGridDBColumn
            Caption = #1055#1077#1088#1077#1087#1083#1072#1090#1072' '#1085#1072' '#1087#1086#1095'.'
            DataBinding.FieldName = 'PRST'
            Width = 90
          end
          object cxGridDBTableView1NACH: TcxGridDBColumn
            Caption = #1053#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103
            DataBinding.FieldName = 'NACH'
            Width = 90
          end
          object cxGridDBTableView1PERE: TcxGridDBColumn
            Caption = #1055#1077#1088#1077#1088#1072#1093#1091#1085#1086#1082
            DataBinding.FieldName = 'PERE'
            Width = 90
          end
          object cxGridDBTableView1SUBS: TcxGridDBColumn
            Caption = #1057#1091#1073#1089#1080#1076#1110#1103
            DataBinding.FieldName = 'SUBS'
            Width = 90
          end
          object cxGridDBTableView1OPLNOTSUBS: TcxGridDBColumn
            Caption = #1057#1087#1083#1072#1090#1072
            DataBinding.FieldName = 'OPLNOTSUBS'
            Width = 90
          end
          object cxGridDBTableView1SAL: TcxGridDBColumn
            Caption = #1057#1072#1083#1100#1076#1086' '#1085#1072' '#1082#1110#1085'.'
            DataBinding.FieldName = 'SAL'
            Width = 90
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
          object cxGridDBTableView1PROCENT2: TcxGridDBColumn
            Caption = #1042#1110#1076#1089#1086#1090#1086#1082' '#1089#1087#1083#1072#1090#1080' '#1079' '#1073#1086#1088#1075#1086#1084
            DataBinding.FieldName = 'PROCENT'
            Width = 141
          end
          object cxGridDBTableView1PROCENT: TcxGridDBColumn
            Caption = #1042#1110#1076#1089#1086#1090#1086#1082' '#1089#1087#1083#1072#1090#1080' '#1073#1077#1079' '#1073#1086#1088#1075#1091
            DataBinding.FieldName = 'PROCENT2'
            Width = 142
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
        Width = 955
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
              FieldName = 'STRPERIOD'
            end
            item
              MinWidth = 0
              Sorting = False
              Width = 0
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
              FieldName = 'STRPERIOD'
            end
            item
              MinWidth = 0
              Sorting = False
              Width = 0
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
        object RadioButton2: TRadioButton
          Left = 536
          Top = 14
          Width = 121
          Height = 17
          Caption = #1055#1086#1089#1083#1091#1075#1072
          TabOrder = 10
        end
        object RadioButton6: TRadioButton
          Left = 536
          Top = 40
          Width = 121
          Height = 17
          Caption = #1040#1076#1088#1077#1089#1072
          TabOrder = 11
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 89
        Width = 955
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
            end
            item
              Kind = skAverage
              Column = cxGridDBTableView2PROCENT2
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsView.CellEndEllipsis = True
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.Indicator = True
          Preview.AutoHeight = False
          object cxGridDBTableView2POSL: TcxGridDBColumn
            Caption = #1055#1086#1089#1083#1091#1075#1072
            DataBinding.FieldName = 'POSL'
          end
          object cxGridDBTableView2NAME: TcxGridDBColumn
            Caption = #1056#1072#1081#1086#1085
            DataBinding.FieldName = 'NAME'
            Width = 120
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = #1042#1091#1083#1080#1094#1103
            DataBinding.FieldName = 'UL'
            Width = 409
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = #1041#1091#1076#1080#1085#1086#1082
            DataBinding.FieldName = 'DOM'
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = #1050#1110#1083#1100'.'#1082#1074'.'
            DataBinding.FieldName = 'KOL_KV'
            Visible = False
          end
          object cxGridDBTableView2KOLI_P: TcxGridDBColumn
            Caption = #1047#1072#1088#1077#1108#1089#1090#1088#1086#1074#1072#1085#1086
            DataBinding.FieldName = 'KOLI_P'
            Visible = False
          end
          object cxGridDBTableView2KOLI_PF: TcxGridDBColumn
            Caption = #1055#1088#1086#1078#1080#1074#1072#1108
            DataBinding.FieldName = 'KOLI_PF'
            Visible = False
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = #1057#1072#1083#1100#1076#1086' '#1085#1072' '#1087#1086#1095'.'
            DataBinding.FieldName = 'DOLG'
            Width = 90
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = #1041#1086#1088#1075' '#1085#1072' '#1087#1086#1095'.'
            DataBinding.FieldName = 'BGST'
            Width = 90
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = #1055#1077#1088#1077#1087#1083#1072#1090#1072' '#1085#1072' '#1087#1086#1095'.'
            DataBinding.FieldName = 'PRST'
            Width = 90
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = #1053#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103
            DataBinding.FieldName = 'NACH'
            Width = 90
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = #1055#1077#1088#1077#1088#1072#1093#1091#1085#1086#1082
            DataBinding.FieldName = 'PERE'
            Width = 90
          end
          object cxGridDBColumn10: TcxGridDBColumn
            Caption = #1057#1091#1073#1089#1080#1076#1110#1103
            DataBinding.FieldName = 'SUBS'
            Width = 90
          end
          object cxGridDBColumn11: TcxGridDBColumn
            Caption = #1057#1087#1083#1072#1090#1072
            DataBinding.FieldName = 'OPLNOTSUBS'
            Width = 90
          end
          object cxGridDBColumn12: TcxGridDBColumn
            Caption = #1057#1072#1083#1100#1076#1086' '#1085#1072' '#1082#1110#1085'.'
            DataBinding.FieldName = 'SAL'
            Width = 90
          end
          object cxGridDBColumn13: TcxGridDBColumn
            Caption = #1041#1086#1088#1075' '#1085#1072' '#1082#1110#1085'.'
            DataBinding.FieldName = 'BGEND'
            Width = 90
          end
          object cxGridDBColumn14: TcxGridDBColumn
            Caption = #1055#1077#1088#1077#1087#1083#1072#1090#1072' '#1085#1072' '#1082#1110#1085'.'
            DataBinding.FieldName = 'PREND'
            Width = 90
          end
          object cxGridDBColumn15: TcxGridDBColumn
            Caption = #1050#1110#1083#1100'. '#1073#1086#1088#1078#1085#1080#1082#1110#1074
            DataBinding.FieldName = 'BORGNIKI'
            Width = 90
          end
          object cxGridDBTableView2PROCENT2: TcxGridDBColumn
            Caption = #1042#1110#1076#1089#1086#1090#1086#1082' '#1089#1087#1083#1072#1090#1080' '#1079' '#1073#1086#1088#1075#1086#1084
            DataBinding.FieldName = 'PROCENT'
            Width = 164
          end
          object cxGridDBColumn16: TcxGridDBColumn
            Caption = #1042#1110#1076#1089#1086#1090#1086#1082' '#1089#1087#1083#1072#1090#1080' '#1073#1077#1079' '#1073#1086#1088#1075#1091
            DataBinding.FieldName = 'PROCENT2'
            Width = 170
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
        Width = 955
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
              FieldName = 'STRPERIOD'
            end
            item
              MinWidth = 0
              Sorting = False
              Width = 0
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
              FieldName = 'STRPERIOD'
            end
            item
              MinWidth = 0
              Sorting = False
              Width = 0
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
        object RadioButton4: TRadioButton
          Left = 536
          Top = 14
          Width = 121
          Height = 17
          Caption = #1055#1086#1089#1083#1091#1075#1072
          TabOrder = 10
        end
        object RadioButton5: TRadioButton
          Left = 536
          Top = 37
          Width = 121
          Height = 17
          Caption = #1040#1076#1088#1077#1089#1072
          TabOrder = 11
        end
      end
      object cxGrid3: TcxGrid
        Left = 0
        Top = 89
        Width = 955
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
              Kind = skAverage
              Column = cxGridDBColumn33
            end
            item
              Kind = skAverage
              Column = cxGridDBTableView3PROCENT2
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
            Width = 133
          end
          object cxGridDBColumn18: TcxGridDBColumn
            Caption = #1055#1086#1089#1083#1091#1075#1072
            DataBinding.FieldName = 'POSL'
          end
          object cxGridDBTableView3NAME: TcxGridDBColumn
            Caption = #1056#1072#1081#1086#1085
            DataBinding.FieldName = 'NAME'
            Width = 121
          end
          object cxGridDBColumn19: TcxGridDBColumn
            Caption = #1042#1091#1083#1080#1094#1103
            DataBinding.FieldName = 'UL'
            Width = 434
          end
          object cxGridDBColumn20: TcxGridDBColumn
            Caption = #1041#1091#1076#1080#1085#1086#1082
            DataBinding.FieldName = 'DOM'
          end
          object cxGridDBColumn21: TcxGridDBColumn
            Caption = #1050#1110#1083#1100'.'#1082#1074'.'
            DataBinding.FieldName = 'KOL_KV'
            Visible = False
          end
          object cxGridDBTableView3KOLI_P: TcxGridDBColumn
            Caption = #1047#1072#1088#1077#1108#1089#1090#1088#1086#1074#1072#1085#1086
            DataBinding.FieldName = 'KOLI_P'
            Visible = False
          end
          object cxGridDBTableView3KOLI_PF: TcxGridDBColumn
            Caption = #1055#1088#1086#1078#1080#1074#1072#1108
            DataBinding.FieldName = 'KOLI_PF'
            Visible = False
          end
          object cxGridDBColumn22: TcxGridDBColumn
            Caption = #1057#1072#1083#1100#1076#1086' '#1085#1072' '#1087#1086#1095'.'
            DataBinding.FieldName = 'DOLG'
            Width = 90
          end
          object cxGridDBColumn23: TcxGridDBColumn
            Caption = #1041#1086#1088#1075' '#1085#1072' '#1087#1086#1095'.'
            DataBinding.FieldName = 'BGST'
            Width = 90
          end
          object cxGridDBColumn24: TcxGridDBColumn
            Caption = #1055#1077#1088#1077#1087#1083#1072#1090#1072' '#1085#1072' '#1087#1086#1095'.'
            DataBinding.FieldName = 'PRST'
            Width = 90
          end
          object cxGridDBColumn25: TcxGridDBColumn
            Caption = #1053#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103
            DataBinding.FieldName = 'NACH'
            Width = 90
          end
          object cxGridDBColumn26: TcxGridDBColumn
            Caption = #1055#1077#1088#1077#1088#1072#1093#1091#1085#1086#1082
            DataBinding.FieldName = 'PERE'
            Width = 90
          end
          object cxGridDBColumn27: TcxGridDBColumn
            Caption = #1057#1091#1073#1089#1080#1076#1110#1103
            DataBinding.FieldName = 'SUBS'
            Width = 90
          end
          object cxGridDBColumn28: TcxGridDBColumn
            Caption = #1057#1087#1083#1072#1090#1072
            DataBinding.FieldName = 'OPLNOTSUBS'
            Width = 90
          end
          object cxGridDBColumn29: TcxGridDBColumn
            Caption = #1057#1072#1083#1100#1076#1086' '#1085#1072' '#1082#1110#1085'.'
            DataBinding.FieldName = 'SAL'
            Width = 90
          end
          object cxGridDBColumn30: TcxGridDBColumn
            Caption = #1041#1086#1088#1075' '#1085#1072' '#1082#1110#1085'.'
            DataBinding.FieldName = 'BGEND'
            Width = 90
          end
          object cxGridDBColumn31: TcxGridDBColumn
            Caption = #1055#1077#1088#1077#1087#1083#1072#1090#1072' '#1085#1072' '#1082#1110#1085'.'
            DataBinding.FieldName = 'PREND'
            Width = 90
          end
          object cxGridDBColumn32: TcxGridDBColumn
            Caption = #1050#1110#1083#1100'. '#1073#1086#1088#1078#1085#1080#1082#1110#1074
            DataBinding.FieldName = 'BORGNIKI'
            Width = 90
          end
          object cxGridDBTableView3PROCENT2: TcxGridDBColumn
            Caption = #1042#1110#1076#1089#1086#1090#1086#1082' '#1089#1087#1083#1072#1090#1080' '#1079' '#1073#1086#1088#1075#1086#1084
            DataBinding.FieldName = 'PROCENT'
            Width = 150
          end
          object cxGridDBColumn33: TcxGridDBColumn
            Caption = #1042#1110#1076#1089#1086#1090#1086#1082' '#1089#1087#1083#1072#1090#1080' '#1073#1077#1079' '#1073#1086#1088#1075#1091
            DataBinding.FieldName = 'PROCENT2'
            Width = 157
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
      ' select qq.*,spr_raion.name'
      ' from'
      ' (select'
      '    kart.ulnaim ul,'
      '    kart.nomdom dom,'
      
        '    iif(right(trim(kart.nomdom),1) BETWEEN '#39'0'#39' AND '#39'9'#39', cast(kar' +
        't.nomdom as int), cast(LEFT(trim(kart.nomdom),CHAR_LENGTH(trim(k' +
        'art.nomdom))-1) as int)) dom2,'
      '    kontrol.fio fio,'
      '    adres.kol_kv,'
      '    sum(kart.koli_p) koli_p,'
      '    sum(kart.koli_pf) koli_pf,'
      '    sum(dolg) dolg,'
      '    sum(bgst) bgst,'
      '    sum(prst) prst,'
      '    sum(nach) nach,'
      '    sum(pere) pere,'
      '    sum(subs) subs,'
      '    sum(oplnotsubs) oplnotsubs,'
      '    sum(sal) sal,'
      '    sum(bgend) as bgend,'
      '    sum(prend) as prend,'
      '    sum(borgniki) borgniki,'
      
        '    (case when (sum(nach)+sum(pere))>0 and (sum(oplnotsubs)+sum(' +
        'subs))>0 then'
      
        '          case when round((sum(oplnotsubs)+sum(subs))/(sum(nach)' +
        '+sum(pere))*100,2)>100 then 100'
      
        '               else round((sum(oplnotsubs)+sum(subs))/(sum(nach)' +
        '+sum(pere))*100,2) end'
      
        '     else case when (sum(nach)+sum(pere))<=0 and (sum(oplnotsubs' +
        ')+sum(subs))>0 then 100'
      
        '          when (sum(nach)+sum(pere))>0 and (sum(oplnotsubs)+sum(' +
        'subs))<=0 then 0'
      
        '          when (sum(nach)+sum(pere))<=0 and (sum(oplnotsubs)+sum' +
        '(subs))<=0 then 0 end'
      '     end) AS procent2,'
      
        '    (case when (sum(nach)+sum(pere)+sum(dolg))>0 and (sum(oplnot' +
        'subs)+sum(subs))>0 then'
      
        '          case when round((sum(oplnotsubs)+sum(subs))/(sum(nach)' +
        '+sum(pere)+sum(dolg))*100,2)>100 then 100'
      
        '               else round((sum(oplnotsubs)+sum(subs))/(sum(nach)' +
        '+sum(pere)+sum(dolg))*100,2) end'
      
        '     else case when (sum(nach)+sum(pere)+sum(dolg))<=0 and (sum(' +
        'oplnotsubs)+sum(subs))>0 then 100'
      
        '          when (sum(nach)+sum(pere)+sum(dolg))>0 and (sum(oplnot' +
        'subs)+sum(subs))<=0 then 0'
      
        '          when (sum(nach)+sum(pere)+sum(dolg))<=0 and (sum(oplno' +
        'tsubs)+sum(subs))<=0 then 0 end'
      '     end) AS procent'
      'from'
      '(select'
      '    aa.schet,'
      '    sum(aa.dolg) dolg,'
      '    sum(aa.bgst) bgst,'
      '    sum(aa.prst) prst,'
      '    sum(aa.nach) nach,'
      '    sum(aa.pere) pere,'
      '    sum(aa.subs) subs,'
      '    sum(aa.oplnotsubs) oplnotsubs,'
      '    sum(aa.sal) sal,'
      '    sum( aa.bgend) as bgend,'
      '    sum( aa.prend) as prend,'
      '    sum(aa.borgniki) borgniki'
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
      'where vw_obor.period=:dt1 @w'
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
      'where vw_obor.period>=:dt1 and vw_obor.period<=:dt2 @w'
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
      'where vw_obor.period=:dt2 @w'
      'group by schet) aa'
      'group by aa.schet) bb'
      '   inner join kart on (bb.schet = kart.schet)'
      
        '   left join adres on (kart.ulnaim = adres.ul) and (kart.nomdom ' +
        '= adres.dom)'
      '   left join kontrol on (adres.kl_kontrol = kontrol.kl)'
      '   where kart.ulnaim is not null'
      'group by ul, dom, fio, kol_kv'
      'order by ul,dom2,dom) qq'
      ' left join adres on (qq.ul = adres.ul) and (qq.dom = adres.dom)'
      ' left join spr_raion on (adres.kl_raion = spr_raion.kl)'
      '')
    ParamCheck = True
    UniDirectional = False
    Left = 56
    Top = 448
    object IBORDERALLFIO: TIBStringField
      FieldName = 'FIO'
      ProviderFlags = []
      Size = 40
    end
    object IBORDERALLKOL_KV: TIntegerField
      FieldName = 'KOL_KV'
      ProviderFlags = []
    end
    object IBORDERALLDOLG: TFloatField
      FieldName = 'DOLG'
      ProviderFlags = []
    end
    object IBORDERALLBGST: TFloatField
      FieldName = 'BGST'
      ProviderFlags = []
    end
    object IBORDERALLPRST: TFloatField
      FieldName = 'PRST'
      ProviderFlags = []
    end
    object IBORDERALLNACH: TFloatField
      FieldName = 'NACH'
      ProviderFlags = []
    end
    object IBORDERALLPERE: TFloatField
      FieldName = 'PERE'
      ProviderFlags = []
    end
    object IBORDERALLSUBS: TFloatField
      FieldName = 'SUBS'
      ProviderFlags = []
    end
    object IBORDERALLOPLNOTSUBS: TFloatField
      FieldName = 'OPLNOTSUBS'
      ProviderFlags = []
    end
    object IBORDERALLSAL: TFloatField
      FieldName = 'SAL'
      ProviderFlags = []
    end
    object IBORDERALLBGEND: TFloatField
      FieldName = 'BGEND'
      ProviderFlags = []
    end
    object IBORDERALLPREND: TFloatField
      FieldName = 'PREND'
      ProviderFlags = []
    end
    object IBORDERALLBORGNIKI: TLargeintField
      FieldName = 'BORGNIKI'
      ProviderFlags = []
    end
    object IBORDERALLPROCENT: TFloatField
      FieldName = 'PROCENT'
      ProviderFlags = []
    end
    object IBORDERALLUL: TIBStringField
      FieldName = 'UL'
      ProviderFlags = []
      Size = 64
    end
    object IBORDERALLDOM: TIBStringField
      FieldName = 'DOM'
      ProviderFlags = []
      Size = 5
    end
    object IBORDERALLKOLI_P: TFloatField
      FieldName = 'KOLI_P'
      ProviderFlags = []
    end
    object IBORDERALLKOLI_PF: TFloatField
      FieldName = 'KOLI_PF'
      ProviderFlags = []
    end
    object IBORDERALLNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"SPR_RAION"."NAME"'
      Size = 30
    end
    object IBORDERALLPROCENT2: TFloatField
      FieldName = 'PROCENT2'
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
      ' select qq.*,spr_raion.name'
      ' from'
      ' (select'
      '    wid.naim posl,'
      '    kart.ulnaim ul,'
      '    kart.nomdom dom,'
      
        '    iif(right(trim(kart.nomdom),1) BETWEEN '#39'0'#39' AND '#39'9'#39', cast(kar' +
        't.nomdom as int), cast(LEFT(trim(kart.nomdom),CHAR_LENGTH(trim(k' +
        'art.nomdom))-1) as int)) dom2,'
      '    kontrol.fio fio,'
      '    adres.kol_kv,'
      '    sum(kart.koli_p) koli_p,'
      '    sum(kart.koli_pf) koli_pf,'
      '    sum(dolg) dolg,'
      '    sum(bgst) bgst,'
      '    sum(prst) prst,'
      '    sum(nach) nach,'
      '    sum(pere) pere,'
      '    sum(subs) subs,'
      '    sum(oplnotsubs) oplnotsubs,'
      '    sum(sal) sal,'
      '    sum(bgend) as bgend,'
      '    sum(prend) as prend,'
      '    sum(borgniki) borgniki,'
      
        '    (case when (sum(nach)+sum(pere))>0 and (sum(oplnotsubs)+sum(' +
        'subs))>0 then'
      
        '          case when round((sum(oplnotsubs)+sum(subs))/(sum(nach)' +
        '+sum(pere))*100,2)>100 then 100'
      
        '               else round((sum(oplnotsubs)+sum(subs))/(sum(nach)' +
        '+sum(pere))*100,2) end'
      
        '     else case when (sum(nach)+sum(pere))<=0 and (sum(oplnotsubs' +
        ')+sum(subs))>0 then 100'
      
        '          when (sum(nach)+sum(pere))>0 and (sum(oplnotsubs)+sum(' +
        'subs))<=0 then 0'
      
        '          when (sum(nach)+sum(pere))<=0 and (sum(oplnotsubs)+sum' +
        '(subs))<=0 then 0 end'
      '     end) AS procent2,'
      
        '    (case when (sum(nach)+sum(pere)+sum(dolg))>0 and (sum(oplnot' +
        'subs)+sum(subs))>0 then'
      
        '          case when round((sum(oplnotsubs)+sum(subs))/(sum(nach)' +
        '+sum(pere)+sum(dolg))*100,2)>100 then 100'
      
        '               else round((sum(oplnotsubs)+sum(subs))/(sum(nach)' +
        '+sum(pere)+sum(dolg))*100,2) end'
      
        '     else case when (sum(nach)+sum(pere)+sum(dolg))<=0 and (sum(' +
        'oplnotsubs)+sum(subs))>0 then 100'
      
        '          when (sum(nach)+sum(pere)+sum(dolg))>0 and (sum(oplnot' +
        'subs)+sum(subs))<=0 then 0'
      
        '          when (sum(nach)+sum(pere)+sum(dolg))<=0 and (sum(oplno' +
        'tsubs)+sum(subs))<=0 then 0 end'
      '     end) AS procent'
      'from'
      '(select'
      '    schet,'
      '    wid,'
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
      '    sum(aa.borgniki) borgniki'
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
      'group by aa.schet,aa.wid'
      
        'having (ABS(sum(aa.dolg))+ABS(sum(aa.nach))+ABS(sum(aa.pere))+AB' +
        'S(sum(aa.subs))+ABS(sum(aa.oplnotsubs))+ABS(sum(aa.sal)))<>0) bb'
      '   inner join kart on (bb.schet = kart.schet)'
      
        '   left join adres on (kart.ulnaim = adres.ul) and (kart.nomdom ' +
        '= adres.dom)'
      '   left join kontrol on (adres.kl_kontrol = kontrol.kl)'
      '   left join wid on (bb.wid = wid.wid)'
      '   where kart.ulnaim is not null'
      '   group by posl, ul, dom,dom2, fio, kol_kv'
      '   order by ul,dom2,dom,posl) qq'
      ' left join adres on (qq.ul = adres.ul) and (qq.dom = adres.dom)'
      ' left join spr_raion on (adres.kl_raion = spr_raion.kl)'
      '')
    ParamCheck = True
    UniDirectional = False
    Left = 128
    Top = 448
    object IBORDERUL: TIBStringField
      FieldName = 'UL'
      ProviderFlags = []
      Size = 64
    end
    object IBORDERDOM: TIBStringField
      FieldName = 'DOM'
      ProviderFlags = []
      Size = 5
    end
    object IBORDERFIO: TIBStringField
      FieldName = 'FIO'
      ProviderFlags = []
      Size = 40
    end
    object IBORDERKOL_KV: TIntegerField
      FieldName = 'KOL_KV'
      ProviderFlags = []
    end
    object IBORDERPOSL: TIBStringField
      FieldName = 'POSL'
      ProviderFlags = []
      Size = 15
    end
    object IBORDERDOLG: TFloatField
      FieldName = 'DOLG'
      ProviderFlags = []
    end
    object IBORDERBGST: TFloatField
      FieldName = 'BGST'
      ProviderFlags = []
    end
    object IBORDERPRST: TFloatField
      FieldName = 'PRST'
      ProviderFlags = []
    end
    object IBORDERNACH: TFloatField
      FieldName = 'NACH'
      ProviderFlags = []
    end
    object IBORDERPERE: TFloatField
      FieldName = 'PERE'
      ProviderFlags = []
    end
    object IBORDERSUBS: TFloatField
      FieldName = 'SUBS'
      ProviderFlags = []
    end
    object IBORDEROPLNOTSUBS: TFloatField
      FieldName = 'OPLNOTSUBS'
      ProviderFlags = []
    end
    object IBORDERSAL: TFloatField
      FieldName = 'SAL'
      ProviderFlags = []
    end
    object IBORDERBGEND: TFloatField
      FieldName = 'BGEND'
      ProviderFlags = []
    end
    object IBORDERPREND: TFloatField
      FieldName = 'PREND'
      ProviderFlags = []
    end
    object IBORDERBORGNIKI: TLargeintField
      FieldName = 'BORGNIKI'
      ProviderFlags = []
    end
    object IBORDERPROCENT: TFloatField
      FieldName = 'PROCENT'
      ProviderFlags = []
    end
    object IBORDERKOLI_P: TFloatField
      FieldName = 'KOLI_P'
      ProviderFlags = []
    end
    object IBORDERKOLI_PF: TFloatField
      FieldName = 'KOLI_PF'
      ProviderFlags = []
    end
    object IBORDERNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"SPR_RAION"."NAME"'
      Size = 30
    end
    object IBORDERPROCENT2: TFloatField
      FieldName = 'PROCENT2'
      ProviderFlags = []
    end
  end
  object DSORDER: TDataSource
    DataSet = IBORDER
    Left = 128
    Top = 504
  end
  object IBREPALL: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      '')
    ParamCheck = True
    UniDirectional = False
    Left = 304
    Top = 416
    object IBREPALLFIO: TIBStringField
      FieldName = 'FIO'
      ProviderFlags = []
      Size = 40
    end
    object IBREPALLKOL_KV: TIntegerField
      FieldName = 'KOL_KV'
      ProviderFlags = []
    end
    object IBREPALLDOLG: TFloatField
      FieldName = 'DOLG'
      ProviderFlags = []
    end
    object IBREPALLBGST: TFloatField
      FieldName = 'BGST'
      ProviderFlags = []
    end
    object IBREPALLPRST: TFloatField
      FieldName = 'PRST'
      ProviderFlags = []
    end
    object IBREPALLNACH: TFloatField
      FieldName = 'NACH'
      ProviderFlags = []
    end
    object IBREPALLPERE: TFloatField
      FieldName = 'PERE'
      ProviderFlags = []
    end
    object IBREPALLSUBS: TFloatField
      FieldName = 'SUBS'
      ProviderFlags = []
    end
    object IBREPALLOPLNOTSUBS: TFloatField
      FieldName = 'OPLNOTSUBS'
      ProviderFlags = []
    end
    object IBREPALLSAL: TFloatField
      FieldName = 'SAL'
      ProviderFlags = []
    end
    object IBREPALLBGEND: TFloatField
      FieldName = 'BGEND'
      ProviderFlags = []
    end
    object IBREPALLPREND: TFloatField
      FieldName = 'PREND'
      ProviderFlags = []
    end
    object IBREPALLBORGNIKI: TLargeintField
      FieldName = 'BORGNIKI'
      ProviderFlags = []
    end
    object IBREPALLPROCENT: TFloatField
      FieldName = 'PROCENT'
      ProviderFlags = []
    end
    object IBREPALLUL: TIBStringField
      FieldName = 'UL'
      ProviderFlags = []
      Size = 64
    end
    object IBREPALLDOM: TIBStringField
      FieldName = 'DOM'
      ProviderFlags = []
      Size = 5
    end
    object IBREPALLKOLI_P: TFloatField
      FieldName = 'KOLI_P'
      ProviderFlags = []
    end
    object IBREPALLKOLI_PF: TFloatField
      FieldName = 'KOLI_PF'
      ProviderFlags = []
    end
    object IBREPALLPROCENT2: TFloatField
      FieldName = 'PROCENT2'
      ProviderFlags = []
    end
  end
  object IBREP: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    UniDirectional = False
    Left = 360
    Top = 416
    object IBREPUL: TIBStringField
      FieldName = 'UL'
      ProviderFlags = []
      Size = 64
    end
    object IBREPDOM: TIBStringField
      FieldName = 'DOM'
      ProviderFlags = []
      Size = 5
    end
    object IBREPFIO: TIBStringField
      FieldName = 'FIO'
      ProviderFlags = []
      Size = 40
    end
    object IBREPKOL_KV: TIntegerField
      FieldName = 'KOL_KV'
      ProviderFlags = []
    end
    object IBREPPOSL: TIBStringField
      FieldName = 'POSL'
      ProviderFlags = []
      Size = 15
    end
    object IBREPDOLG: TFloatField
      FieldName = 'DOLG'
      ProviderFlags = []
    end
    object IBREPBGST: TFloatField
      FieldName = 'BGST'
      ProviderFlags = []
    end
    object IBREPPRST: TFloatField
      FieldName = 'PRST'
      ProviderFlags = []
    end
    object IBREPNACH: TFloatField
      FieldName = 'NACH'
      ProviderFlags = []
    end
    object IBREPPERE: TFloatField
      FieldName = 'PERE'
      ProviderFlags = []
    end
    object IBREPSUBS: TFloatField
      FieldName = 'SUBS'
      ProviderFlags = []
    end
    object IBREPOPLNOTSUBS: TFloatField
      FieldName = 'OPLNOTSUBS'
      ProviderFlags = []
    end
    object IBREPSAL: TFloatField
      FieldName = 'SAL'
      ProviderFlags = []
    end
    object IBREPBGEND: TFloatField
      FieldName = 'BGEND'
      ProviderFlags = []
    end
    object IBREPPREND: TFloatField
      FieldName = 'PREND'
      ProviderFlags = []
    end
    object IBREPBORGNIKI: TLargeintField
      FieldName = 'BORGNIKI'
      ProviderFlags = []
    end
    object IBREPPROCENT: TFloatField
      FieldName = 'PROCENT'
      ProviderFlags = []
    end
    object IBREPKOLI_P: TFloatField
      FieldName = 'KOLI_P'
      ProviderFlags = []
    end
    object IBREPKOLI_PF: TFloatField
      FieldName = 'KOLI_PF'
      ProviderFlags = []
    end
    object IBREPPROCENT2: TFloatField
      FieldName = 'PROCENT2'
      ProviderFlags = []
    end
  end
  object IBORDERMES: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      '      select qq.*,spr_raion.name'
      ' from'
      ' (select'
      '    period,'
      '    wid.naim posl,'
      '    kart.ulnaim ul,'
      '    kart.nomdom dom,'
      
        '    iif(right(trim(kart.nomdom),1) BETWEEN '#39'0'#39' AND '#39'9'#39', cast(kar' +
        't.nomdom as int), cast(LEFT(trim(kart.nomdom),CHAR_LENGTH(trim(k' +
        'art.nomdom))-1) as int)) dom2,'
      '    kontrol.fio fio,'
      '    adres.kol_kv,'
      '    sum(kart.koli_p) koli_p,'
      '    sum(kart.koli_pf) koli_pf,'
      '    sum(dolg) dolg,'
      '    sum(bgst) bgst,'
      '    sum(prst) prst,'
      '    sum(nach) nach,'
      '    sum(pere) pere,'
      '    sum(subs) subs,'
      '    sum(oplnotsubs) oplnotsubs,'
      '    sum(sal) sal,'
      '    sum(bgend) as bgend,'
      '    sum(prend) as prend,'
      '    sum(borgniki) borgniki,'
      
        '    (case when (sum(nach)+sum(pere))>0 and (sum(oplnotsubs)+sum(' +
        'subs))>0 then'
      
        '          case when round((sum(oplnotsubs)+sum(subs))/(sum(nach)' +
        '+sum(pere))*100,2)>100 then 100'
      
        '               else round((sum(oplnotsubs)+sum(subs))/(sum(nach)' +
        '+sum(pere))*100,2) end'
      
        '     else case when (sum(nach)+sum(pere))<=0 and (sum(oplnotsubs' +
        ')+sum(subs))>0 then 100'
      
        '          when (sum(nach)+sum(pere))>0 and (sum(oplnotsubs)+sum(' +
        'subs))<=0 then 0'
      
        '          when (sum(nach)+sum(pere))<=0 and (sum(oplnotsubs)+sum' +
        '(subs))<=0 then 0 end'
      '     end) AS procent2,'
      
        '    (case when (sum(nach)+sum(pere)+sum(dolg))>0 and (sum(oplnot' +
        'subs)+sum(subs))>0 then'
      
        '          case when round((sum(oplnotsubs)+sum(subs))/(sum(nach)' +
        '+sum(pere)+sum(dolg))*100,2)>100 then 100'
      
        '               else round((sum(oplnotsubs)+sum(subs))/(sum(nach)' +
        '+sum(pere)+sum(dolg))*100,2) end'
      
        '     else case when (sum(nach)+sum(pere)+sum(dolg))<=0 and (sum(' +
        'oplnotsubs)+sum(subs))>0 then 100'
      
        '          when (sum(nach)+sum(pere)+sum(dolg))>0 and (sum(oplnot' +
        'subs)+sum(subs))<=0 then 0'
      
        '          when (sum(nach)+sum(pere)+sum(dolg))<=0 and (sum(oplno' +
        'tsubs)+sum(subs))<=0 then 0 end'
      '     end) AS procent'
      'from'
      '(select'
      '    schet,'
      '    wid,'
      '    period, '
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
      '    sum(aa.borgniki) borgniki'
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
      '    vw_obor.sal sal,'
      '    vw_obor.bgend bgend,'
      '    vw_obor.prend prend,'
      '    case when vw_obor.bgend >:bg then 1 else 0 end AS borgniki'
      'from vw_obor'
      'where vw_obor.period>=:dt1 and vw_obor.period<=:dt2'
      ') aa'
      'group by period,wid,schet'
      
        'having (ABS(sum(aa.dolg))+ABS(sum(aa.nach))+ABS(sum(aa.pere))+AB' +
        'S(sum(aa.subs))+ABS(sum(aa.oplnotsubs))+ABS(sum(aa.sal)))<>0) bb'
      '   inner join kart on (bb.schet = kart.schet)'
      
        '   left join adres on (kart.ulnaim = adres.ul) and (kart.nomdom ' +
        '= adres.dom)'
      '   left join kontrol on (adres.kl_kontrol = kontrol.kl)'
      '   left join wid on (bb.wid = wid.wid)'
      '   where kart.ulnaim is not null'
      'group by period, posl, ul, dom, fio, kol_kv'
      'order by ul,dom2, dom, posl,period) qq'
      ' left join adres on (qq.ul = adres.ul) and (qq.dom = adres.dom)'
      ' left join spr_raion on (adres.kl_raion = spr_raion.kl)')
    ParamCheck = True
    UniDirectional = False
    Left = 200
    Top = 448
    object IBORDERMESPERIOD: TDateField
      FieldName = 'PERIOD'
      ProviderFlags = []
    end
    object IBORDERMESUL: TIBStringField
      FieldName = 'UL'
      ProviderFlags = []
      Size = 64
    end
    object IBORDERMESDOM: TIBStringField
      FieldName = 'DOM'
      ProviderFlags = []
      Size = 5
    end
    object IBORDERMESFIO: TIBStringField
      FieldName = 'FIO'
      ProviderFlags = []
      Size = 40
    end
    object IBORDERMESKOL_KV: TIntegerField
      FieldName = 'KOL_KV'
      ProviderFlags = []
    end
    object IBORDERMESPOSL: TIBStringField
      FieldName = 'POSL'
      ProviderFlags = []
      Size = 15
    end
    object IBORDERMESDOLG: TFloatField
      FieldName = 'DOLG'
      ProviderFlags = []
    end
    object IBORDERMESBGST: TFloatField
      FieldName = 'BGST'
      ProviderFlags = []
    end
    object IBORDERMESPRST: TFloatField
      FieldName = 'PRST'
      ProviderFlags = []
    end
    object IBORDERMESNACH: TFloatField
      FieldName = 'NACH'
      ProviderFlags = []
    end
    object IBORDERMESPERE: TFloatField
      FieldName = 'PERE'
      ProviderFlags = []
    end
    object IBORDERMESSUBS: TFloatField
      FieldName = 'SUBS'
      ProviderFlags = []
    end
    object IBORDERMESOPLNOTSUBS: TFloatField
      FieldName = 'OPLNOTSUBS'
      ProviderFlags = []
    end
    object IBORDERMESSAL: TFloatField
      FieldName = 'SAL'
      ProviderFlags = []
    end
    object IBORDERMESBGEND: TFloatField
      FieldName = 'BGEND'
      ProviderFlags = []
    end
    object IBORDERMESPREND: TFloatField
      FieldName = 'PREND'
      ProviderFlags = []
    end
    object IBORDERMESBORGNIKI: TLargeintField
      FieldName = 'BORGNIKI'
      ProviderFlags = []
    end
    object IBORDERMESPROCENT: TFloatField
      FieldName = 'PROCENT'
      ProviderFlags = []
    end
    object IBORDERMESKOLI_P: TFloatField
      FieldName = 'KOLI_P'
      ProviderFlags = []
    end
    object IBORDERMESKOLI_PF: TFloatField
      FieldName = 'KOLI_PF'
      ProviderFlags = []
    end
    object IBORDERMESNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"SPR_RAION"."NAME"'
      Size = 30
    end
    object IBORDERMESPROCENT2: TFloatField
      FieldName = 'PROCENT2'
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
    ParamCheck = True
    UniDirectional = False
    Left = 416
    Top = 416
    object IBREPMESPERIOD: TDateField
      FieldName = 'PERIOD'
      ProviderFlags = []
    end
    object IBREPMESUL: TIBStringField
      FieldName = 'UL'
      ProviderFlags = []
      Size = 64
    end
    object IBREPMESDOM: TIBStringField
      FieldName = 'DOM'
      ProviderFlags = []
      Size = 5
    end
    object IBREPMESFIO: TIBStringField
      FieldName = 'FIO'
      ProviderFlags = []
      Size = 40
    end
    object IBREPMESKOL_KV: TIntegerField
      FieldName = 'KOL_KV'
      ProviderFlags = []
    end
    object IBREPMESPOSL: TIBStringField
      FieldName = 'POSL'
      ProviderFlags = []
      Size = 15
    end
    object IBREPMESDOLG: TFloatField
      FieldName = 'DOLG'
      ProviderFlags = []
    end
    object IBREPMESBGST: TFloatField
      FieldName = 'BGST'
      ProviderFlags = []
    end
    object IBREPMESPRST: TFloatField
      FieldName = 'PRST'
      ProviderFlags = []
    end
    object IBREPMESNACH: TFloatField
      FieldName = 'NACH'
      ProviderFlags = []
    end
    object IBREPMESPERE: TFloatField
      FieldName = 'PERE'
      ProviderFlags = []
    end
    object IBREPMESSUBS: TFloatField
      FieldName = 'SUBS'
      ProviderFlags = []
    end
    object IBREPMESOPLNOTSUBS: TFloatField
      FieldName = 'OPLNOTSUBS'
      ProviderFlags = []
    end
    object IBREPMESSAL: TFloatField
      FieldName = 'SAL'
      ProviderFlags = []
    end
    object IBREPMESBGEND: TFloatField
      FieldName = 'BGEND'
      ProviderFlags = []
    end
    object IBREPMESPREND: TFloatField
      FieldName = 'PREND'
      ProviderFlags = []
    end
    object IBREPMESBORGNIKI: TLargeintField
      FieldName = 'BORGNIKI'
      ProviderFlags = []
    end
    object IBREPMESPROCENT: TFloatField
      FieldName = 'PROCENT'
      ProviderFlags = []
    end
    object IBREPMESKOLI_P: TFloatField
      FieldName = 'KOLI_P'
      ProviderFlags = []
    end
    object IBREPMESKOLI_PF: TFloatField
      FieldName = 'KOLI_PF'
      ProviderFlags = []
    end
    object IBREPMESPROCENT2: TFloatField
      FieldName = 'PROCENT2'
      ProviderFlags = []
    end
    object IBREPMESNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"SPR_RAION"."NAME"'
      Size = 30
    end
  end
  object frxReport1: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43425.596407557900000000
    ReportOptions.LastChange = 44938.370540208300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 260
    Top = 360
    Datasets = <
      item
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'Dolgn'
        Value = Null
      end
      item
        Name = 'Fio'
        Value = Null
      end
      item
        Name = 'datemes'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Top = 15.118120000000000000
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1042#1030#1058' '#1087#1086' '#1073#1086#1088#1078#1085#1080#1082#1072#1093)
          ParentFont = False
        end
        object datemes: TfrxMemoView
          Top = 64.252010000000000000
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072' '#1087#1077#1088#1110#1086#1076' '#1079' [datemes1] '#1087#1086' [datemes2]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo60: TfrxMemoView
          Top = 41.574830000000000000
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1086#1073#1091#1076#1080#1085#1082#1086#1074#1080#1081' '#1074' '#1088#1086#1079#1088#1110#1079#1110' '#1087#1086#1089#1083#1091#1075' '#1090#1072' '#1084#1110#1089#1103#1094#1110#1074')'#9#9#9#9)
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 139.842610000000000000
        Width = 1046.929810000000000000
        object Memo3: TfrxMemoView
          Width = 196.535560000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1077#1088#1110#1086#1076)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 196.535560000000000000
          Width = 75.590551180000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1072#1083#1100#1076#1086' '#1085#1072' '#1087#1086#1095'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 347.716760000000000000
          Width = 75.590551180000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1077#1088#1077#1087#1083'. '#1085#1072' '#1087#1086#1095'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 423.307360000000000000
          Width = 75.590551180000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 574.488560000000000000
          Width = 75.590551180000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1091#1073#1089#1080#1076'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 650.079160000000000000
          Width = 75.590551180000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1087#1083#1072#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 272.126160000000000000
          Width = 75.590551180000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1041#1086#1088#1075' '#1085#1072' '#1087#1086#1095'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 498.897960000000000000
          Width = 75.590551180000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1077#1088#1077#1088#1072#1093'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 725.669760000000000000
          Width = 75.590551180000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1072#1083#1100#1076#1086' '#1085#1072' '#1082#1110#1085'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 876.850960000000000000
          Width = 75.590600000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1077#1088#1077#1087#1083'. '#1085#1072' '#1082#1110#1085'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 801.260360000000000000
          Width = 75.590600000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1041#1086#1088#1075' '#1085#1072' '#1082#1110#1085'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 1005.354980000000000000
          Width = 41.574830000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '% '#1089#1087#1083#1072#1090'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 952.441560000000000000
          Width = 52.913420000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1110#1083#1100'.  '#1073#1086#1088#1078#1085'.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 340.157700000000000000
        Width = 1046.929810000000000000
        AllowSplit = True
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        Stretched = True
        object frxDBDataset1DOLG: TfrxMemoView
          Left = 196.535560000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."DOLG"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 272.126160000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."BGST"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1PRST: TfrxMemoView
          Left = 347.716760000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."PRST"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1NACH: TfrxMemoView
          Left = 423.307360000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."NACH"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1PERE: TfrxMemoView
          Left = 498.897960000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."PERE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1SUBS: TfrxMemoView
          Left = 574.488560000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."SUBS"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1OPLNOTSUBS: TfrxMemoView
          Left = 650.079160000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."OPLNOTSUBS"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1SAL: TfrxMemoView
          Left = 725.669760000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."SAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1BGEND: TfrxMemoView
          Left = 801.260360000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."BGEND"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1PREND: TfrxMemoView
          Left = 876.850960000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."PREND"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1BORGNIKI: TfrxMemoView
          Left = 952.441560000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."BORGNIKI"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 1005.354980000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."PROCENT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1PERIOD: TfrxMemoView
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."PERIOD"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 600.945270000000000000
        Width = 1046.929810000000000000
        object Page: TfrxMemoView
          Left = 963.780150000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1057#1090#1086#1088'. [Page]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 464.882190000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000190000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1042#1089#1100#1086#1075#1086' '#1087#1086' '#1079#1074#1110#1090#1091)
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 423.307360000000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."NACH">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 498.897960000000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."PERE">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo37: TfrxMemoView
          Left = 574.488560000000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."SUBS">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo38: TfrxMemoView
          Left = 650.079160000000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."OPLNOTSUBS">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo42: TfrxMemoView
          Left = 952.441560000000000000
          Top = 22.677180000000190000
          Width = 52.913371180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."BORGNIKI">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo59: TfrxMemoView
          Left = 1005.354980000000000000
          Top = 22.677180000000020000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[round(AVG(<frxDBDataset3."PROCENT">,MasterData1))]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo19: TfrxMemoView
        Top = 15.118120000000000000
        Width = 521.575140000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          '[org]')
        ParentFont = False
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 241.889920000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBDataset3."DOM"'
        object Memo13: TfrxMemoView
          Left = 37.795300000000000000
          Top = 11.338590000000010000
          Width = 1009.134510000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            
              '[frxDBDataset3."UL"] [frxDBDataset3."DOM"] '#1082#1074#1072#1088#1090#1080#1088' - [frxDBDatas' +
              'et3."KOL_KV"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
      end
      object GroupFooter3: TfrxGroupFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 423.307360000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object Memo45: TfrxMemoView
          Left = 3.779530000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1042#1089#1100#1086#1075#1086' '#1087#1086' [frxDBDataset3."UL"] [frxDBDataset3."DOM"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 423.307360000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."NACH">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 498.897960000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."PERE">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo51: TfrxMemoView
          Left = 574.488560000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."SUBS">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo52: TfrxMemoView
          Left = 650.079160000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."OPLNOTSUBS">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo56: TfrxMemoView
          Left = 952.441560000000000000
          Width = 52.913371180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."BORGNIKI">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 1005.354980000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[round(AVG(<frxDBDataset3."PROCENT">,MasterData1))]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 294.803340000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBDataset3."POSL"'
        object frxDBDataset1UL: TfrxMemoView
          Top = 3.779530000000022000
          Width = 1035.591220000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '[frxDBDataset3."POSL"]    -    [frxDBDataset3."UL"] [frxDBDatase' +
              't3."DOM"] ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 381.732530000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object Memo61: TfrxMemoView
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1042#1089#1100#1086#1075#1086' '#1087#1086' [frxDBDataset3."POSL"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo65: TfrxMemoView
          Left = 423.307360000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."NACH">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 498.897960000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."PERE">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo67: TfrxMemoView
          Left = 574.488560000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."SUBS">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo68: TfrxMemoView
          Left = 650.079160000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."OPLNOTSUBS">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo72: TfrxMemoView
          Left = 952.441560000000000000
          Width = 52.913371180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."BORGNIKI">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 1005.354980000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[round(AVG(<frxDBDataset3."PROCENT">,MasterData1))]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
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
      'PROCENT=PROCENT'
      'UL=UL'
      'DOM=DOM'
      'KOLI_P=KOLI_P'
      'KOLI_PF=KOLI_PF'
      'PROCENT2=PROCENT2')
    DataSet = IBREPALL
    BCDToCurrency = False
    Left = 44
    Top = 296
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'UL=UL'
      'DOM=DOM'
      'FIO=FIO'
      'KOL_KV=KOL_KV'
      'POSL=POSL'
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
      'PROCENT=PROCENT'
      'KOLI_P=KOLI_P'
      'KOLI_PF=KOLI_PF'
      'PROCENT2=PROCENT2')
    DataSet = IBREP
    BCDToCurrency = False
    Left = 116
    Top = 296
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PERIOD=PERIOD'
      'UL=UL'
      'DOM=DOM'
      'FIO=FIO'
      'KOL_KV=KOL_KV'
      'POSL=POSL'
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
      'PROCENT=PROCENT'
      'KOLI_P=KOLI_P'
      'KOLI_PF=KOLI_PF'
      'PROCENT2=PROCENT2'
      'NAME=NAME')
    DataSet = IBREPMES
    BCDToCurrency = False
    Left = 188
    Top = 296
  end
  object IBWID: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from WID'
      'where'
      '  WID = :OLD_WID')
    InsertSQL.Strings = (
      'insert into WID'
      '  (WID, NAIM)'
      'values'
      '  (:WID, :NAIM)')
    RefreshSQL.Strings = (
      'Select '
      '  WID,'
      '  ID_ORG,'
      '  NAIM,'
      '  SNAIM,'
      '  PAR,'
      '  FL0,'
      '  FL,'
      '  COD,'
      '  ABONPL,'
      '  VNESK,'
      '  NPP,'
      '  FL_NONACH,'
      '  FL_NOOPL,'
      '  FL_VTCH,'
      '  FL_NOOBOR,'
      '  FL_GROPL,'
      '  FL_SUBS,'
      '  VAL,'
      '  UPD'
      'from WID '
      'where'
      '  WID = :WID')
    SelectSQL.Strings = (
      ' select wid,naim, 0 as ch from WID')
    ModifySQL.Strings = (
      'update WID'
      'set'
      '  WID = :WID,'
      '  NAIM = :NAIM'
      'where'
      '  WID = :OLD_WID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_WID_ID'
    Left = 480
    Top = 416
    object IBWIDWID: TIBStringField
      FieldName = 'WID'
      Origin = '"WID"."WID"'
      Size = 2
    end
    object IBWIDNAIM: TIBStringField
      FieldName = 'NAIM'
      Origin = '"WID"."NAIM"'
      Size = 15
    end
    object IBWIDCH: TIntegerField
      FieldName = 'CH'
      ProviderFlags = []
    end
  end
  object DSWID: TDataSource
    DataSet = IBWID
    Left = 480
    Top = 472
  end
end
