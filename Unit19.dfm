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
  OnShow = FormShow
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
  object cxButton3: TcxButton
    Left = 31
    Top = 173
    Width = 554
    Height = 25
    Caption = #1047#1072#1074#1072#1085#1090#1072#1078#1080#1090#1080'2'
    TabOrder = 11
    OnClick = cxButton3Click
  end
  object cxGrid1: TcxGrid
    Left = 72
    Top = 256
    Width = 481
    Height = 337
    TabOrder = 12
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSADOEDIT
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1SCHET: TcxGridDBColumn
        DataBinding.FieldName = 'SCHET'
      end
      object cxGrid1DBTableView1YM: TcxGridDBColumn
        DataBinding.FieldName = 'YM'
      end
      object cxGrid1DBTableView1SUBS_K: TcxGridDBColumn
        DataBinding.FieldName = 'SUBS_K'
      end
      object cxGrid1DBTableView1SUBS_E: TcxGridDBColumn
        DataBinding.FieldName = 'SUBS_E'
      end
      object cxGrid1DBTableView1RSUBS_K: TcxGridDBColumn
        DataBinding.FieldName = 'RSUBS_K'
      end
      object cxGrid1DBTableView1RSUBS_E: TcxGridDBColumn
        DataBinding.FieldName = 'RSUBS_E'
      end
      object cxGrid1DBTableView1S_EL: TcxGridDBColumn
        DataBinding.FieldName = 'S_EL'
      end
      object cxGrid1DBTableView1S_HV: TcxGridDBColumn
        DataBinding.FieldName = 'S_HV'
      end
      object cxGrid1DBTableView1S_KV: TcxGridDBColumn
        DataBinding.FieldName = 'S_KV'
      end
      object cxGrid1DBTableView1S_OM: TcxGridDBColumn
        DataBinding.FieldName = 'S_OM'
      end
      object cxGrid1DBTableView1S_OT: TcxGridDBColumn
        DataBinding.FieldName = 'S_OT'
      end
      object cxGrid1DBTableView1S_RS: TcxGridDBColumn
        DataBinding.FieldName = 'S_RS'
      end
      object cxGrid1DBTableView1S_SM: TcxGridDBColumn
        DataBinding.FieldName = 'S_SM'
      end
      object cxGrid1DBTableView1S_SN: TcxGridDBColumn
        DataBinding.FieldName = 'S_SN'
      end
      object cxGrid1DBTableView1S_SU: TcxGridDBColumn
        DataBinding.FieldName = 'S_SU'
      end
      object cxGrid1DBTableView1S_UB: TcxGridDBColumn
        DataBinding.FieldName = 'S_UB'
      end
      object cxGrid1DBTableView1OB_EL: TcxGridDBColumn
        DataBinding.FieldName = 'OB_EL'
      end
      object cxGrid1DBTableView1OB_HV: TcxGridDBColumn
        DataBinding.FieldName = 'OB_HV'
      end
      object cxGrid1DBTableView1OB_KV: TcxGridDBColumn
        DataBinding.FieldName = 'OB_KV'
      end
      object cxGrid1DBTableView1OB_OM: TcxGridDBColumn
        DataBinding.FieldName = 'OB_OM'
      end
      object cxGrid1DBTableView1OB_OT: TcxGridDBColumn
        DataBinding.FieldName = 'OB_OT'
      end
      object cxGrid1DBTableView1OB_RS: TcxGridDBColumn
        DataBinding.FieldName = 'OB_RS'
      end
      object cxGrid1DBTableView1OB_SM: TcxGridDBColumn
        DataBinding.FieldName = 'OB_SM'
      end
      object cxGrid1DBTableView1OB_SN: TcxGridDBColumn
        DataBinding.FieldName = 'OB_SN'
      end
      object cxGrid1DBTableView1OB_SU: TcxGridDBColumn
        DataBinding.FieldName = 'OB_SU'
      end
      object cxGrid1DBTableView1OB_UB: TcxGridDBColumn
        DataBinding.FieldName = 'OB_UB'
      end
      object cxGrid1DBTableView1SFIO: TcxGridDBColumn
        DataBinding.FieldName = 'SFIO'
      end
      object cxGrid1DBTableView1SUL: TcxGridDBColumn
        DataBinding.FieldName = 'SUL'
      end
      object cxGrid1DBTableView1SDOM: TcxGridDBColumn
        DataBinding.FieldName = 'SDOM'
      end
      object cxGrid1DBTableView1SKV: TcxGridDBColumn
        DataBinding.FieldName = 'SKV'
      end
      object cxGrid1DBTableView1SNORM: TcxGridDBColumn
        DataBinding.FieldName = 'SNORM'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
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
    CursorLocation = clUseServer
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
    Connection = ADOConnectionDBF
    CommandText = 'select * from SUBS order by schet'
    Parameters = <>
    Left = 312
  end
  object DSADOTAB: TDataSource
    DataSet = ADOTAB
    Enabled = False
    Left = 312
    Top = 56
  end
  object ADOConnectionDBF: TADOConnection
    Connected = True
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
    ConnectionString = 
      'Provider=MSDASQL;Persist Security Info=False;User ID=Admin;Data ' +
      'Source=dBASE Files;Mode=ReadWrite;Initial Catalog=d:\WORK\KOMUN\' +
      'kvpl\dbf\'
    CursorType = ctDynamic
    LockType = ltPessimistic
    CommandText = 'select * from subs'#13#10
    IndexName = 'subs.cdx'
    Parameters = <>
    Left = 248
    Top = 8
  end
  object DSADOEDIT: TDataSource
    DataSet = ADOEDIT
    Left = 248
    Top = 64
  end
end
