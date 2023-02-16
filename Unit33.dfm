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
    OnKeyPress = cxTextEdit1KeyPress
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
          Kind = skSum
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
      object cxGridDBTableView1wid: TcxGridDBColumn
        DataBinding.FieldName = 'wid'
        Width = 60
      end
      object cxGridDBTableView1schet: TcxGridDBColumn
        DataBinding.FieldName = 'schet'
        Width = 93
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
      object cxGridDBTableView1wnaim: TcxGridDBColumn
        Caption = #1055#1086#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'wnaim'
        Options.Editing = False
        Width = 68
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
        Width = 78
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
  object cxButton5: TcxButton
    Left = 295
    Top = 8
    Width = 161
    Height = 25
    Caption = 'ADO'
    TabOrder = 15
    OnClick = cxButton5Click
  end
  object ADOQueryOBOR: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=VFPOLEDB.1;Data Source=d:\WORK\KOMUN\kvpl\dbf\;Mode=Rea' +
      'dWrite;Extended Properties=dBase V;Password="";Collating Sequenc' +
      'e=MACHINE;CODEPAGE=866;ANSI=False'
    CursorType = ctStatic
    Filter = 'schet='#39'0123133'#1072#39
    LockType = ltBatchOptimistic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      
        'select wids.wid, wids.wnaim, obor.schet, obor.sal, 0 as ch, 0000' +
        '0.00 as sumpl from wids,obor where wids.wid=obor.wid order by wi' +
        'ds.npp')
    Left = 480
    Top = 408
  end
  object DSADOQueryOBOR: TDataSource
    DataSet = ADOQueryOBOR
    Left = 552
    Top = 408
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 552
    Top = 320
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dBASE' +
      ' Files;Mode=ReadWrite;Initial Catalog=d:\WORK\KOMUN\kvpl\dbf\'
    IsolationLevel = ilBrowse
    LoginPrompt = False
    Mode = cmReadWrite
    Left = 464
    Top = 272
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    LockType = ltPessimistic
    CommandText = 
      'select obor.schet from OBOR,WIDS where OBOR.wid=WIDS.wid into ta' +
      'ble c:\ttt.dbf'
    IndexFieldNames = 'schet'
    ParamCheck = False
    Parameters = <>
    Left = 464
    Top = 336
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = ADOConnection1
    Parameters = <>
    Left = 528
    Top = 272
  end
end
