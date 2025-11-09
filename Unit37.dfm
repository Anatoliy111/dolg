object Form37: TForm37
  Left = 0
  Top = 0
  Caption = #1042#1080#1087#1080#1089#1082#1072' '#1087#1086' '#1086#1089#1086#1073#1086#1074#1086#1084#1091' '#1088#1072#1093#1091#1085#1082#1091
  ClientHeight = 341
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 515
    Height = 65
    Align = alTop
    TabOrder = 0
    object cxLabel2: TcxLabel
      Left = 22
      Top = 39
      Caption = ' - '#1042#1110#1076#1084#1110#1090#1080#1090#1080' '#1074#1089#1110
    end
    object cxButton3: TcxButton
      Left = 347
      Top = 9
      Width = 97
      Height = 33
      BiDiMode = bdLeftToRight
      Caption = #1044#1088#1091#1082
      ParentBiDiMode = False
      PopupAlignment = paCenter
      TabOrder = 1
      WordWrap = True
    end
    object cxLabel1: TcxLabel
      Left = 22
      Top = 16
      Caption = #1054#1089#1086#1073#1086#1074#1080#1081' '#1088#1072#1093#1091#1085#1086#1082
    end
    object cxLabel3: TcxLabel
      Left = 126
      Top = 16
      Caption = 'sch'
    end
    object cxCheckBox1: TcxCheckBox
      Left = 4
      Top = 36
      TabOrder = 4
    end
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 65
    Width = 515
    Height = 276
    Align = alClient
    TabOrder = 1
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
        Width = 101
      end
      object cxGridDBTableView1ch: TcxGridDBColumn
        Caption = #1042#1080#1073#1088#1072#1090#1080
        DataBinding.FieldName = 'ch'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 73
      end
      object cxGridDBTableView1naim: TcxGridDBColumn
        Caption = #1055#1086#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'naim'
        Width = 128
      end
      object cxGridDBTableView1sal: TcxGridDBColumn
        Caption = #1041#1086#1088#1075
        DataBinding.FieldName = 'sal'
        Options.Editing = False
        Width = 87
      end
      object cxGridDBTableView1sumpl: TcxGridDBColumn
        Caption = #1047#1084#1110#1085#1072' '#1089#1091#1084#1080
        DataBinding.FieldName = 'sumpl'
        Width = 112
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object ADOQueryOBOR: TADOQuery
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=Admin;Dat' +
      'a Source=dBASE Files;Mode=ReadWrite;Initial Catalog=c:\TEMP\'
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      
        'select wids.wid, wids.naim, wids.abonpl, obor.fio, obor.schet, o' +
        'bor.sal, 0 as ch, su_dolg as sumpl from wids,obor where wids.wid' +
        '=obor.wid and obor.schet='#39'0014001'#39' order by wids.npp')
    Left = 307
    Top = 153
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
    object ADOQueryOBORfio: TStringField
      FieldName = 'fio'
      Size = 25
    end
    object ADOQueryOBORabonpl: TStringField
      FieldName = 'abonpl'
      Size = 2
    end
  end
  object DSADOQueryOBOR: TDataSource
    DataSet = ADOQueryOBOR
    Left = 403
    Top = 153
  end
end
