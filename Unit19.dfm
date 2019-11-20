object Form19: TForm19
  Left = 0
  Top = 0
  Caption = #1056#1077#1108#1089#1090#1088#1080' '#1084#1086#1085#1077#1090#1080#1079#1072#1094#1110#1111
  ClientHeight = 638
  ClientWidth = 606
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton1: TcxButton
    Left = 343
    Top = 7
    Width = 161
    Height = 25
    Caption = #1042#1080#1073#1077#1088#1110#1090#1100' '#1092#1072#1081#1083
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object cxTextEdit1: TcxTextEdit
    Left = 31
    Top = 8
    TabOrder = 1
    Text = #1060#1072#1081#1083
    Width = 306
  end
  object cxButton2: TcxButton
    Left = 31
    Top = 125
    Width = 554
    Height = 25
    Caption = #1047#1072#1074#1072#1085#1090#1072#1078#1080#1090#1080
    TabOrder = 2
    OnClick = cxButton2Click
  end
  object cxProgressBar1: TcxProgressBar
    Left = 31
    Top = 204
    TabOrder = 3
    Width = 554
  end
  object Memo1: TMemo
    Left = 343
    Top = 38
    Width = 185
    Height = 70
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
  end
  object cxTextEdit2: TcxTextEdit
    Left = 136
    Top = 38
    Properties.ReadOnly = True
    TabOrder = 5
    Width = 201
  end
  object cxTextEdit3: TcxTextEdit
    Left = 136
    Top = 65
    Properties.ReadOnly = True
    TabOrder = 6
    Width = 201
  end
  object cxLabel1: TcxLabel
    Left = 39
    Top = 65
    Caption = #1055#1077#1088#1110#1086#1076
  end
  object cxLabel2: TcxLabel
    Left = 39
    Top = 39
    Caption = #1055#1086#1089#1083#1091#1075#1072
  end
  object cxTextEdit4: TcxTextEdit
    Left = 136
    Top = 92
    Properties.ReadOnly = True
    TabOrder = 9
    Width = 201
  end
  object cxLabel3: TcxLabel
    Left = 39
    Top = 92
    Caption = #1058#1080#1087' '#1088#1077#1108#1089#1090#1088#1091
  end
  object cxGrid1: TcxGrid
    Left = 72
    Top = 256
    Width = 481
    Height = 337
    TabOrder = 11
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSADOTAB
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1schet: TcxGridDBColumn
        DataBinding.FieldName = 'schet'
      end
      object cxGrid1DBTableView1ym: TcxGridDBColumn
        DataBinding.FieldName = 'ym'
      end
      object cxGrid1DBTableView1subs_k: TcxGridDBColumn
        DataBinding.FieldName = 'subs_k'
      end
      object cxGrid1DBTableView1subs_e: TcxGridDBColumn
        DataBinding.FieldName = 'subs_e'
      end
      object cxGrid1DBTableView1rsubs_k: TcxGridDBColumn
        DataBinding.FieldName = 'rsubs_k'
      end
      object cxGrid1DBTableView1rsubs_e: TcxGridDBColumn
        DataBinding.FieldName = 'rsubs_e'
      end
      object cxGrid1DBTableView1s_el: TcxGridDBColumn
        DataBinding.FieldName = 's_el'
      end
      object cxGrid1DBTableView1s_hv: TcxGridDBColumn
        DataBinding.FieldName = 's_hv'
      end
      object cxGrid1DBTableView1s_kv: TcxGridDBColumn
        DataBinding.FieldName = 's_kv'
      end
      object cxGrid1DBTableView1s_om: TcxGridDBColumn
        DataBinding.FieldName = 's_om'
      end
      object cxGrid1DBTableView1s_ot: TcxGridDBColumn
        DataBinding.FieldName = 's_ot'
      end
      object cxGrid1DBTableView1s_rs: TcxGridDBColumn
        DataBinding.FieldName = 's_rs'
      end
      object cxGrid1DBTableView1s_sm: TcxGridDBColumn
        DataBinding.FieldName = 's_sm'
      end
      object cxGrid1DBTableView1s_sn: TcxGridDBColumn
        DataBinding.FieldName = 's_sn'
      end
      object cxGrid1DBTableView1s_su: TcxGridDBColumn
        DataBinding.FieldName = 's_su'
      end
      object cxGrid1DBTableView1s_ub: TcxGridDBColumn
        DataBinding.FieldName = 's_ub'
      end
      object cxGrid1DBTableView1ob_el: TcxGridDBColumn
        DataBinding.FieldName = 'ob_el'
      end
      object cxGrid1DBTableView1ob_hv: TcxGridDBColumn
        DataBinding.FieldName = 'ob_hv'
      end
      object cxGrid1DBTableView1ob_kv: TcxGridDBColumn
        DataBinding.FieldName = 'ob_kv'
      end
      object cxGrid1DBTableView1ob_om: TcxGridDBColumn
        DataBinding.FieldName = 'ob_om'
      end
      object cxGrid1DBTableView1ob_ot: TcxGridDBColumn
        DataBinding.FieldName = 'ob_ot'
      end
      object cxGrid1DBTableView1ob_rs: TcxGridDBColumn
        DataBinding.FieldName = 'ob_rs'
      end
      object cxGrid1DBTableView1ob_sm: TcxGridDBColumn
        DataBinding.FieldName = 'ob_sm'
      end
      object cxGrid1DBTableView1ob_sn: TcxGridDBColumn
        DataBinding.FieldName = 'ob_sn'
      end
      object cxGrid1DBTableView1ob_su: TcxGridDBColumn
        DataBinding.FieldName = 'ob_su'
      end
      object cxGrid1DBTableView1ob_ub: TcxGridDBColumn
        DataBinding.FieldName = 'ob_ub'
      end
      object cxGrid1DBTableView1sfio: TcxGridDBColumn
        DataBinding.FieldName = 'sfio'
      end
      object cxGrid1DBTableView1sul: TcxGridDBColumn
        DataBinding.FieldName = 'sul'
      end
      object cxGrid1DBTableView1sdom: TcxGridDBColumn
        DataBinding.FieldName = 'sdom'
      end
      object cxGrid1DBTableView1skv: TcxGridDBColumn
        DataBinding.FieldName = 'skv'
      end
      object cxGrid1DBTableView1snorm: TcxGridDBColumn
        DataBinding.FieldName = 'snorm'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton3: TcxButton
    Left = 31
    Top = 173
    Width = 554
    Height = 25
    Caption = 'copy'
    TabOrder = 12
    OnClick = cxButton3Click
  end
  object OpenDialog1: TOpenDialog
    Left = 568
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select trim(schet) as schet, nach+pere+wozw as nach, bgend as sa' +
        'l from vw_obor where period=:dt and wid=:wid')
    Left = 463
    Top = 2
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dt'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wid'
        ParamType = ptUnknown
      end>
    object IBQuery1SCHET: TIBStringField
      FieldName = 'SCHET'
      ProviderFlags = []
      Size = 10
    end
    object IBQuery1NACH: TFloatField
      FieldName = 'NACH'
      ProviderFlags = []
    end
    object IBQuery1SAL: TFloatField
      FieldName = 'SAL'
      Origin = '"OBOR"."SAL"'
    end
  end
  object DSQuery1: TDataSource
    DataSet = IBQuery1
    Left = 519
    Top = 2
  end
  object ADOQueryTAB: TADOQuery
    Connection = ADOConnectionDBF
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from subs order by schet')
    Left = 112
  end
  object DSADOQueryTAB: TDataSource
    DataSet = ADOQueryTAB
    Enabled = False
    Left = 112
    Top = 48
  end
  object ADOQueryOBOR: TADOQuery
    Connection = ADOConnectionDBF
    ParamCheck = False
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from obor where wid='#39'ot'#39)
    Left = 184
  end
  object DSADOQueryOBOR: TDataSource
    DataSet = ADOQueryOBOR
    Enabled = False
    Left = 184
    Top = 48
  end
  object ADOTAB: TADODataSet
    ConnectionString = 
      'Provider=VFPOLEDB.1;Data Source=c:\tmpdolg\;Mode=ReadWrite;Passw' +
      'ord="";Collating Sequence=MACHINE;CODEPAGE=866;ANSI=False'
    CursorType = ctStatic
    CommandText = 'select * from SUBS'
    Parameters = <>
    Left = 312
  end
  object DSADOTAB: TDataSource
    DataSet = ADOTAB
    Left = 312
    Top = 56
  end
  object ADOConnectionDBF: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=d:\WO' +
      'RK\KOMUN\kvpl\dbf\;Mode=Read;Jet OLEDB:System database="";Jet OL' +
      'EDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:En' +
      'gine Type=16;Jet OLEDB:Database Locking Mode=0;Jet OLEDB:Global ' +
      'Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLED' +
      'B:New Database Password="";Jet OLEDB:Create System Database=Fals' +
      'e;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale o' +
      'n Compact=False;Jet OLEDB:Compact Without Replica Repair=False;J' +
      'et OLEDB:SFP=False;'
    LoginPrompt = False
    Mode = cmRead
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 40
  end
  object ADOEDIT: TADODataSet
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=c:\tm' +
      'pdolg\;Mode=ReadWrite;Extended Properties=dBase IV;Persist Secur' +
      'ity Info=False;Jet OLEDB:System database="";Jet OLEDB:Registry P' +
      'ath="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=16;J' +
      'et OLEDB:Database Locking Mode=0;Jet OLEDB:Global Partial Bulk O' +
      'ps=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database' +
      ' Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:En' +
      'crypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=Fals' +
      'e;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=F' +
      'alse'
    CursorType = ctStatic
    CommandText = 'select *  from subs'
    Parameters = <>
    Left = 248
    Top = 8
  end
  object DSADOEDIT: TDataSource
    DataSet = ADOEDIT
    Enabled = False
    Left = 248
    Top = 64
  end
end
