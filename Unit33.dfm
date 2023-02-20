object Form33: TForm33
  Left = 0
  Top = 0
  Caption = #1054#1073#1088#1086#1073#1082#1072' '#1087#1083#1072#1090#1110#1078#1082#1080
  ClientHeight = 534
  ClientWidth = 598
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
    Caption = #1054#1073#1088#1086#1073#1080#1090#1080'\'#1044#1086#1076#1072#1090#1080' '#1087#1083#1072#1090#1110#1078
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
    Top = 60
    Width = 546
    Height = 70
    Lines.Strings = (
      'Memo1')
    ReadOnly = True
    TabOrder = 5
  end
  object cxLabel3: TcxLabel
    Left = 31
    Top = 37
    Caption = #1055#1088#1080#1079#1085#1072#1095#1077#1085#1085#1103' '#1087#1083#1072#1090#1077#1078#1091
  end
  object cxLabel1: TcxLabel
    Left = 31
    Top = 14
    Caption = #1055#1086#1084#1080#1083#1082#1072
  end
  object cxTextEdit1: TcxTextEdit
    Left = 135
    Top = 146
    Properties.ReadOnly = True
    Properties.OnEditValueChanged = cxTextEdit1PropertiesEditValueChanged
    TabOrder = 0
    OnKeyPress = cxTextEdit1KeyPress
    Width = 121
  end
  object cxLabel2: TcxLabel
    Left = 31
    Top = 147
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
        end
        item
          Kind = skSum
          Column = cxGridDBTableView1ch
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
          Column = cxGridDBTableView1sumpl
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
      object cxGridDBTableView1schet: TcxGridDBColumn
        DataBinding.FieldName = 'schet'
      end
      object cxGridDBTableView1ch: TcxGridDBColumn
        Caption = #1042#1080#1073#1088#1072#1090#1080
        DataBinding.FieldName = 'ch'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 47
      end
      object cxGridDBTableView1naim: TcxGridDBColumn
        Caption = #1055#1086#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'naim'
      end
      object cxGridDBTableView1sal: TcxGridDBColumn
        Caption = #1041#1086#1088#1075
        DataBinding.FieldName = 'sal'
        Options.Editing = False
        Width = 50
      end
      object cxGridDBTableView1sumpl: TcxGridDBColumn
        Caption = #1057#1091#1084#1072' '#1086#1087#1083#1072#1090#1080
        DataBinding.FieldName = 'sumpl'
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
    Left = 288
    Top = 185
    Caption = #1044#1072#1090#1072' '#1087#1083#1072#1090#1077#1078#1091
  end
  object cxDateEdit1: TcxDateEdit
    Left = 371
    Top = 181
    Properties.ReadOnly = True
    TabOrder = 12
    Width = 121
  end
  object cxButton3: TcxButton
    Left = 458
    Top = 288
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
  object cxLabel6: TcxLabel
    Left = 263
    Top = 147
    Caption = #1053#1072#1079#1074#1072' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
  end
  object Memo2: TMemo
    Left = 371
    Top = 136
    Width = 206
    Height = 39
    Lines.Strings = (
      '')
    ReadOnly = True
    TabOrder = 16
  end
  object ADOQueryOBOR: TADOQuery
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=Admin;Dat' +
      'a Source=dBASE Files;Mode=ReadWrite;Initial Catalog=C:\TEMP'
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      
        'select wids.wid, wids.naim, obor.schet, obor.sal, 0 as ch, su_do' +
        'lg as sumpl from wids,obor where wids.wid=obor.wid and obor.sche' +
        't='#39'0123133'#1072#39' order by wids.npp')
    Left = 472
    Top = 408
    object ADOQueryOBORwid: TWideStringField
      FieldName = 'wid'
      ReadOnly = True
      Size = 2
    end
    object ADOQueryOBORnaim: TWideStringField
      FieldName = 'naim'
      ReadOnly = True
      Size = 15
    end
    object ADOQueryOBORschet: TWideStringField
      FieldName = 'schet'
      ReadOnly = True
      Size = 10
    end
    object ADOQueryOBORsal: TFloatField
      FieldName = 'sal'
      ReadOnly = True
    end
    object ADOQueryOBORch: TIntegerField
      FieldName = 'ch'
    end
    object ADOQueryOBORsumpl: TFloatField
      FieldName = 'sumpl'
    end
  end
  object DSADOQueryOBOR: TDataSource
    DataSet = ADOQueryOBOR
    Left = 552
    Top = 408
  end
end
