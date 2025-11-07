object Form37: TForm37
  Left = 0
  Top = 0
  Caption = 'Form37'
  ClientHeight = 630
  ClientWidth = 959
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
    Width = 959
    Height = 209
    Align = alTop
    TabOrder = 0
    ExplicitTop = -6
    ExplicitWidth = 672
    object cxLabel4: TcxLabel
      Left = 138
      Top = 186
      Caption = #1041#1086#1088#1078#1085#1080#1082#1080' '#1085#1072' '#1087#1086#1095#1072#1090#1086#1082
    end
    object cxGrid2: TcxGrid
      Left = 375
      Top = 28
      Width = 289
      Height = 181
      TabOrder = 1
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DetailKeyFieldNames = 'WID'
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
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 60
        end
        object cxGridDBTableView1NAIM: TcxGridDBColumn
          DataBinding.FieldName = 'NAIM'
          Options.Editing = False
          Width = 227
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object cxLabel8: TcxLabel
      Left = 402
      Top = 3
      Caption = ' - '#1042#1110#1076#1084#1110#1090#1080#1090#1080' '#1074#1089#1110' '#1087#1086#1089#1083#1091#1075#1080
    end
    object cxLabel9: TcxLabel
      Left = 258
      Top = 186
      Caption = #1076#1072#1090#1072' '
    end
    object cxCheckBox3: TcxCheckBox
      Left = 375
      Top = 1
      TabOrder = 4
    end
    object cxGroupBox1: TcxGroupBox
      Left = 16
      Top = 5
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1074#1110#1076#1073#1086#1088#1091
      TabOrder = 5
      Height = 172
      Width = 353
      object cxButton2: TcxButton
        Left = 3
        Top = 14
        Width = 94
        Height = 56
        Caption = #1047#1072#1074#1072#1085#1090#1072#1078'. '#1073#1086#1088#1078#1085#1080#1082#1110#1074
        TabOrder = 0
        WordWrap = True
      end
      object cxLabel1: TcxLabel
        Left = 3
        Top = 88
        Caption = #1057#1091#1084#1072' '#1079#1072#1075'. '#1073#1086#1088#1075#1091' '#1085#1072' '#1087#1086#1095'. '#1087#1086#1090#1086#1095'. '#1087#1077#1088#1110#1086#1076#1091
      end
      object cxComboBox2: TcxComboBox
        Left = 6
        Top = 105
        Properties.Items.Strings = (
          '='
          '<>'
          '>='
          '<=')
        TabOrder = 2
        Text = '>='
        Width = 44
      end
      object cxLabel6: TcxLabel
        Left = 14
        Top = 127
        Caption = #1055#1086#1096#1091#1082' '#1087#1086' '#1088#1072#1093#1091#1085#1082#1091
      end
      object cxTextEdit4: TcxTextEdit
        Left = 3
        Top = 148
        TabOrder = 4
        Width = 121
      end
      object cxButton1: TcxButton
        Left = 130
        Top = 144
        Width = 71
        Height = 25
        Caption = #1055#1086#1096#1091#1082
        TabOrder = 5
      end
      object cxCalcEdit2: TcxCalcEdit
        Left = 62
        Top = 105
        EditValue = 0.000000000000000000
        TabOrder = 6
        Width = 121
      end
      object cxButton7: TcxButton
        Left = 120
        Top = 14
        Width = 97
        Height = 56
        BiDiMode = bdLeftToRight
        Caption = #1044#1086#1073#1072#1074#1080#1090#1080' '#1074#1110#1076#1084#1110#1095#1077#1085#1110
        ParentBiDiMode = False
        PopupAlignment = paCenter
        TabOrder = 7
        WordWrap = True
      end
      object cxLabel12: TcxLabel
        Left = 98
        Top = 34
        Caption = '->'
      end
      object cxButton4: TcxButton
        Left = 220
        Top = 144
        Width = 74
        Height = 25
        Caption = #1042' '#1045#1082#1089#1077#1083#1100
        TabOrder = 9
      end
    end
    object cxLabel2: TcxLabel
      Left = 22
      Top = 186
      Caption = ' - '#1042#1110#1076#1084#1110#1090#1080#1090#1080' '#1074#1089#1110
    end
    object cxCheckBox1: TcxCheckBox
      Left = 4
      Top = 183
      TabOrder = 7
    end
  end
end
