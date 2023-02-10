object Form33: TForm33
  Left = 0
  Top = 0
  Caption = #1054#1073#1088#1086#1073#1082#1072' '#1087#1083#1072#1090#1110#1078#1082#1080
  ClientHeight = 525
  ClientWidth = 594
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton1: TcxButton
    Left = 215
    Top = 492
    Width = 161
    Height = 25
    Caption = #1055#1088#1086#1087#1091#1089#1090#1080#1090#1080
    TabOrder = 2
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 31
    Top = 492
    Width = 161
    Height = 25
    Caption = #1054#1073#1088#1086#1073#1080#1090#1080
    TabOrder = 3
    OnClick = cxButton2Click
  end
  object CheckBox1: TCheckBox
    Left = 223
    Top = 474
    Width = 138
    Height = 17
    Caption = #1055#1086#1084#1110#1090#1080#1090#1080' '#1103#1082' '#1086#1073#1088#1086#1073#1083#1077#1085#1086
    TabOrder = 4
  end
  object Memo1: TMemo
    Left = 31
    Top = 69
    Width = 546
    Height = 70
    Lines.Strings = (
      'Memo1')
    ReadOnly = True
    TabOrder = 5
  end
  object cxLabel3: TcxLabel
    Left = 31
    Top = 46
    Caption = #1055#1088#1080#1079#1085#1072#1095#1077#1085#1085#1103' '#1087#1083#1072#1090#1077#1078#1091
  end
  object cxLabel1: TcxLabel
    Left = 31
    Top = 14
    Caption = #1055#1086#1084#1080#1083#1082#1072
  end
  object cxTextEdit1: TcxTextEdit
    Left = 135
    Top = 152
    Properties.ReadOnly = True
    Properties.OnEditValueChanged = cxTextEdit1PropertiesEditValueChanged
    TabOrder = 0
    OnEnter = cxTextEdit1Enter
    Width = 121
  end
  object cxLabel2: TcxLabel
    Left = 31
    Top = 153
    Caption = #1054#1089#1086#1073#1086#1074#1080#1081' '#1088#1072#1093#1091#1085#1086#1082
  end
  object cxGrid2: TcxGrid
    Left = 31
    Top = 208
    Width = 410
    Height = 252
    TabOrder = 9
    LookAndFeel.NativeStyle = False
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSADOQueryOBOR
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting, dcoGroupsAlwaysExpanded, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGridDBTableView1sumpl
        end
        item
          Kind = skCount
          Column = cxGridDBTableView1ch
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.CellEndEllipsis = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Preview.AutoHeight = False
      object cxGridDBTableView1ch: TcxGridDBColumn
        Caption = #1042#1080#1073#1088#1072#1090#1080
        DataBinding.FieldName = 'ch'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 66
      end
      object cxGridDBTableView1wnaim: TcxGridDBColumn
        Caption = #1055#1086#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'wnaim'
        Options.Editing = False
        Width = 114
      end
      object cxGridDBTableView1sal: TcxGridDBColumn
        Caption = #1041#1086#1088#1075
        DataBinding.FieldName = 'sal'
        Options.Editing = False
        Width = 85
      end
      object cxGridDBTableView1sumpl: TcxGridDBColumn
        Caption = #1057#1091#1084#1072' '#1086#1087#1083#1072#1090#1080
        DataBinding.FieldName = 'sumpl'
        Width = 131
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object cxLabel4: TcxLabel
    Left = 31
    Top = 185
    Caption = #1057#1091#1084#1072' '#1087#1083#1072#1090#1077#1078#1091
  end
  object cxCalcEdit1: TcxCalcEdit
    Left = 135
    Top = 181
    EditValue = 0.000000000000000000
    Properties.ReadOnly = True
    TabOrder = 1
    Width = 121
  end
  object cxLabel5: TcxLabel
    Left = 271
    Top = 153
    Caption = #1044#1072#1090#1072' '#1087#1083#1072#1090#1077#1078#1091
  end
  object cxDateEdit1: TcxDateEdit
    Left = 354
    Top = 152
    Properties.ReadOnly = True
    TabOrder = 12
    Width = 121
  end
  object cxButton3: TcxButton
    Left = 458
    Top = 208
    Width = 119
    Height = 49
    Caption = #1044#1086#1076#1072#1090#1080' '#1087#1088#1080#1079#1085#1072#1082' '#1087#1086#1089#1083#1091#1075#1080
    ParentShowHint = False
    ShowHint = False
    TabOrder = 13
    WordWrap = True
    OnClick = cxButton3Click
  end
  object cxButton4: TcxButton
    Left = 399
    Top = 492
    Width = 161
    Height = 25
    Caption = #1055#1088#1080#1087#1080#1085#1080#1090#1080' '#1086#1073#1088#1086#1073#1082#1091
    TabOrder = 14
    OnClick = cxButton4Click
  end
  object ADOQueryOBOR: TADOQuery
    ConnectionString = 
      'Provider=VFPOLEDB.1;Data Source=D:\WORK\KOMUN\kvpl\dbf;Password=' +
      '"";Collating Sequence=RUSSIAN'
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    Left = 480
    Top = 408
    object ADOQueryOBORwid: TStringField
      FieldName = 'wid'
      FixedChar = True
      Size = 2
    end
    object ADOQueryOBORwnaim: TStringField
      FieldName = 'wnaim'
      FixedChar = True
    end
    object ADOQueryOBORschet: TStringField
      FieldName = 'schet'
      FixedChar = True
      Size = 10
    end
    object ADOQueryOBORsal: TBCDField
      FieldName = 'sal'
      Precision = 9
      Size = 2
    end
    object ADOQueryOBORch: TIntegerField
      FieldName = 'ch'
    end
    object ADOQueryOBORsumpl: TBCDField
      FieldName = 'sumpl'
      Precision = 3
      Size = 2
    end
  end
  object DSADOQueryOBOR: TDataSource
    DataSet = ADOQueryOBOR
    Left = 552
    Top = 408
  end
end
