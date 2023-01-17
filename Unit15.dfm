object Form15: TForm15
  Left = 0
  Top = 0
  Caption = 'Form15'
  ClientHeight = 642
  ClientWidth = 962
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 962
    Height = 49
    Align = alTop
    TabOrder = 0
    object cxButton3: TcxButton
      Left = 14
      Top = 15
      Width = 74
      Height = 25
      Caption = #1042' '#1045#1082#1089#1077#1083#1100
      TabOrder = 0
      OnClick = cxButton3Click
    end
    object cxLabel6: TcxLabel
      Left = 118
      Top = 0
      Caption = #1055#1086#1096#1091#1082' '#1087#1086' '#1088#1072#1093#1091#1085#1082#1091
      Visible = False
    end
    object cxButton1: TcxButton
      Left = 234
      Top = 14
      Width = 71
      Height = 25
      Caption = #1055#1086#1096#1091#1082
      TabOrder = 2
      WordWrap = True
      OnClick = cxButton1Click
    end
    object cxTextEdit1: TcxTextEdit
      Left = 107
      Top = 16
      TabOrder = 3
      Width = 121
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 49
    Width = 962
    Height = 593
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvAlways
      FindPanel.DisplayMode = fpdmAlways
      FindPanel.FocusViewOnApplyFilter = True
      FindPanel.InfoText = #1055#1086#1096#1091#1082'...'
      FindPanel.Position = fppBottom
      DataController.DataSource = Form1.DSKART
      DataController.DetailKeyFieldNames = 'KL'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '0'
          Kind = skCount
          Column = cxGrid1DBTableView1SCHET
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1KOLI_P
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1KOLI_PF
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1PLOS_BB
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1PLOS_OB
        end
        item
          Format = '0'
          Kind = skMax
          Column = cxGrid1DBTableView1LIFT
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skCount
          Column = cxGrid1DBTableView1SCHET
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1KOLI_P
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1KOLI_PF
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1PLOS_BB
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1PLOS_OB
        end
        item
          Format = '0'
          Kind = skMax
          Column = cxGrid1DBTableView1LIFT
        end>
      DataController.Summary.SummaryGroups = <>
      EditForm.DefaultStretch = fsHorizontal
      Filtering.ColumnFilteredItemsList = True
      FilterRow.Visible = True
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      object cxGrid1DBTableView1KONTROL: TcxGridDBColumn
        Caption = #1050#1086#1085#1090#1088#1086#1083#1077#1088
        DataBinding.FieldName = 'KONTROL'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 97
      end
      object cxGrid1DBTableView1SCHET: TcxGridDBColumn
        Caption = #1056#1072#1093#1091#1085#1086#1082
        DataBinding.FieldName = 'SCHET'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = '...'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGrid1DBTableView1Column1PropertiesButtonClick
        Options.ShowEditButtons = isebAlways
        Options.Sorting = False
        Width = 24
      end
      object cxGrid1DBTableView1FIO: TcxGridDBColumn
        Caption = #1055#1030#1041
        DataBinding.FieldName = 'FIO'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 173
      end
      object cxGrid1DBTableView1ULNAIM: TcxGridDBColumn
        Caption = #1042#1091#1083#1080#1094#1103
        DataBinding.FieldName = 'ULNAIM'
        Width = 227
      end
      object cxGrid1DBTableView1NOMDOM: TcxGridDBColumn
        Caption = #1041#1091#1076#1080#1085#1086#1082
        DataBinding.FieldName = 'NOMDOM'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.EditMask = '!\(999\)000-0000;0;_'
        Width = 49
      end
      object cxGrid1DBTableView1NOMKV: TcxGridDBColumn
        Caption = #1050#1074#1072#1088#1090#1080#1088#1072
        DataBinding.FieldName = 'NOMKV'
      end
      object cxGrid1DBTableView1TEL: TcxGridDBColumn
        Caption = #1058#1077#1083#1077#1092#1086#1085
        DataBinding.FieldName = 'TEL'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.EditMask = '!\(999\)000-0000;0;_'
        Properties.OnValidate = cxGrid1DBTableView1TELPropertiesValidate
        Width = 169
      end
      object cxGrid1DBTableView1IDCOD: TcxGridDBColumn
        Caption = #1030#1076#1077#1085#1090'.'#1082#1086#1076
        DataBinding.FieldName = 'IDCOD'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 108
      end
      object cxGrid1DBTableView1KOLI_P: TcxGridDBColumn
        Caption = #1047#1072#1088#1077#1077#1089#1090#1088#1086#1074#1072#1085#1086
        DataBinding.FieldName = 'KOLI_P'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGrid1DBTableView1KOLI_PF: TcxGridDBColumn
        Caption = #1055#1088#1086#1078#1080#1074#1072#1108
        DataBinding.FieldName = 'KOLI_PF'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGrid1DBTableView1ORGAN: TcxGridDBColumn
        Caption = #1054#1088#1075#1072#1085#1110#1079#1072#1094#1110#1103
        DataBinding.FieldName = 'ORGAN'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 191
      end
      object cxGrid1DBTableView1KOLI_LG: TcxGridDBColumn
        Caption = #1050#1110#1083#1100'.'#1087#1110#1083#1100#1075#1086#1074#1080#1082#1110#1074
        DataBinding.FieldName = 'KOLI_LG'
        Width = 64
      end
      object cxGrid1DBTableView1KOLI_K: TcxGridDBColumn
        DataBinding.FieldName = 'KOLI_K'
      end
      object cxGrid1DBTableView1PLOS_BB: TcxGridDBColumn
        Caption = #1054#1087#1072#1083#1102#1074#1072#1083#1100#1085#1072' '#1087#1083#1086#1097#1072
        DataBinding.FieldName = 'PLOS_BB'
      end
      object cxGrid1DBTableView1PLOS_OB: TcxGridDBColumn
        Caption = #1047#1072#1075#1072#1083#1100#1085#1072' '#1087#1083#1086#1097#1072
        DataBinding.FieldName = 'PLOS_OB'
      end
      object cxGrid1DBTableView1LGOTA: TcxGridDBColumn
        Caption = #1055#1110#1083#1100#1075#1072
        DataBinding.FieldName = 'LGOTA'
      end
      object cxGrid1DBTableView1LG_POSV: TcxGridDBColumn
        Caption = #1055#1086#1089#1074#1110#1076#1095#1077#1085#1085#1103
        DataBinding.FieldName = 'LG_POSV'
      end
      object cxGrid1DBTableView1LG_SER: TcxGridDBColumn
        Caption = #1057#1077#1088#1110#1103
        DataBinding.FieldName = 'LG_SER'
      end
      object cxGrid1DBTableView1LG_FIO: TcxGridDBColumn
        Caption = #1055#1030#1055
        DataBinding.FieldName = 'LG_FIO'
      end
      object cxGrid1DBTableView1LG_DATE: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1087#1110#1083#1100#1075#1080
        DataBinding.FieldName = 'LG_DATE'
      end
      object cxGrid1DBTableView1LG_KAT: TcxGridDBColumn
        Caption = #1050#1072#1090#1077#1075#1086#1088#1110#1103
        DataBinding.FieldName = 'LG_KAT'
      end
      object cxGrid1DBTableView1LIFT: TcxGridDBColumn
        Caption = #1051#1110#1092#1090
        DataBinding.FieldName = 'LIFT'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
end
