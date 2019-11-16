object Form19: TForm19
  Left = 0
  Top = 0
  Caption = #1056#1077#1108#1089#1090#1088#1080' '#1084#1086#1085#1077#1090#1080#1079#1072#1094#1110#1111
  ClientHeight = 540
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
  object cxLookupComboBox1: TcxLookupComboBox
    Left = 231
    Top = 31
    Properties.KeyFieldNames = 'WID'
    Properties.ListColumns = <
      item
        FieldName = 'NAIM'
      end>
    Properties.ListSource = Form1.DSTMPWID
    TabOrder = 0
    Width = 209
  end
  object cxLabel2: TcxLabel
    Left = 285
    Top = 8
    Caption = #1042#1080#1073#1077#1088#1110#1090#1100' '#1087#1086#1089#1083#1091#1075#1091
  end
  object cxButton1: TcxButton
    Left = 343
    Top = 83
    Width = 161
    Height = 25
    Caption = #1042#1080#1073#1077#1088#1110#1090#1100' '#1110#1092#1072#1081#1083
    TabOrder = 2
    OnClick = cxButton1Click
  end
  object cxTextEdit1: TcxTextEdit
    Left = 31
    Top = 87
    TabOrder = 3
    Text = #1060#1072#1081#1083
    Width = 306
  end
  object cxButton2: TcxButton
    Left = 159
    Top = 114
    Width = 249
    Height = 25
    Caption = #1047#1072#1074#1072#1085#1090#1072#1078#1080#1090#1080
    TabOrder = 4
    OnClick = cxButton2Click
  end
  object cxProgressBar1: TcxProgressBar
    Left = 31
    Top = 145
    TabOrder = 5
    Width = 554
  end
  object cxLabel3: TcxLabel
    Left = 83
    Top = 8
    Caption = #1042#1080#1073#1077#1088#1110#1090#1100' '#1087#1077#1088#1110#1086#1076
  end
  object cxLookupComboBox2: TcxLookupComboBox
    Left = 43
    Top = 31
    Properties.KeyFieldNames = 'PERIOD'
    Properties.ListColumns = <
      item
        FieldName = 'PERIOD'
      end>
    Properties.ListSource = Form1.DSPERIOD
    TabOrder = 7
    Width = 169
  end
  object cxButton3: TcxButton
    Left = 31
    Top = 193
    Width = 161
    Height = 25
    Caption = 'ins'
    TabOrder = 8
    OnClick = cxButton3Click
  end
  object cxButton4: TcxButton
    Left = 215
    Top = 193
    Width = 161
    Height = 25
    Caption = 'ed'
    TabOrder = 9
    OnClick = cxButton4Click
  end
  object cxButton5: TcxButton
    Left = 407
    Top = 193
    Width = 161
    Height = 25
    Caption = 'ed2'
    TabOrder = 10
    OnClick = cxButton5Click
  end
  object cxButton6: TcxButton
    Left = 408
    Top = 257
    Width = 161
    Height = 25
    Caption = 'ap'
    TabOrder = 11
    OnClick = cxButton6Click
  end
  object cxGrid1: TcxGrid
    Left = 56
    Top = 320
    Width = 448
    Height = 200
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSADOSUBS
      DataController.DetailKeyFieldNames = 'SCHET'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1schet: TcxGridDBColumn
        DataBinding.FieldName = 'schet'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton7: TcxButton
    Left = 407
    Top = 288
    Width = 161
    Height = 25
    Caption = 'Ind'
    TabOrder = 13
    OnClick = cxButton7Click
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
  object ADOOBOR: TADODataSet
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=D:\WO' +
      'RK\KOMUN\kvpl\dbf\;Mode=Share Deny Read|Share Deny Write;Persist' +
      ' Security Info=False;Jet OLEDB:System database="";Jet OLEDB:Regi' +
      'stry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Typ' +
      'e=16;Jet OLEDB:Database Locking Mode=0;Jet OLEDB:Global Partial ' +
      'Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Da' +
      'tabase Password="";Jet OLEDB:Create System Database=False;Jet OL' +
      'EDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Compac' +
      't=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB' +
      ':SFP=False'
    CursorType = ctStatic
    CommandText = 'select * from obor'
    IndexFieldNames = 'schet'
    ParamCheck = False
    Parameters = <>
    Left = 304
    Top = 176
  end
  object DSADOOBOR: TDataSource
    DataSet = ADOOBOR
    Left = 216
    Top = 184
  end
  object ADOConnectionDBF1: TADOConnection
    Attributes = [xaCommitRetaining]
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=d:\WO' +
      'RK\KOMUN\kvpl\dbf\;Mode=ReadWrite;Persist Security Info=False;Je' +
      't OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:' +
      'Database Password="";Jet OLEDB:Engine Type=16;Jet OLEDB:Database' +
      ' Locking Mode=0;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Gl' +
      'obal Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet ' +
      'OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=Fa' +
      'lse;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compa' +
      'ct Without Replica Repair=False;Jet OLEDB:SFP=False;'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 64
    Top = 8
  end
  object ADOQuerySUBS: TADOQuery
    Connection = ADOConnectionDBF2
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select * from subs')
    Left = 176
    Top = 8
  end
  object DSADOQuerySUBS: TDataSource
    DataSet = ADOQuerySUBS
    Enabled = False
    Left = 264
    Top = 8
  end
  object ADOConnectionDBF2: TADOConnection
    Attributes = [xaCommitRetaining]
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=d:\WO' +
      'RK\KOMUN\kvpl\dbf\;Mode=Share Deny Read|Share Deny Write;Persist' +
      ' Security Info=False;Jet OLEDB:System database="";Jet OLEDB:Regi' +
      'stry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Typ' +
      'e=16;Jet OLEDB:Database Locking Mode=0;Jet OLEDB:Global Partial ' +
      'Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Da' +
      'tabase Password="";Jet OLEDB:Create System Database=False;Jet OL' +
      'EDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Compac' +
      't=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB' +
      ':SFP=False;'
    LoginPrompt = False
    Mode = cmShareExclusive
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 64
    Top = 56
  end
  object ADOQuerySLGOT: TADOQuery
    Connection = ADOConnectionDBF1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from slgot')
    Left = 176
    Top = 56
  end
  object DSADOQuerySLGOT: TDataSource
    DataSet = ADOQuerySLGOT
    Enabled = False
    Left = 264
    Top = 56
  end
  object ADOQueryOBOR: TADOQuery
    Connection = ADOConnectionDBF1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from obor')
    Left = 184
    Top = 96
  end
  object DSADOQueryOBOR: TDataSource
    DataSet = ADOOBOR
    Left = 264
    Top = 112
  end
  object ADOConnectionDBF: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=Admin;Dat' +
      'a Source=dBASE Files;Mode=ReadWrite;Initial Catalog=d:\WORK\KOMU' +
      'N\kvpl\dbf\'
    LoginPrompt = False
    Mode = cmReadWrite
    Left = 48
    Top = 232
  end
  object ADOSUBS: TADODataSet
    AutoCalcFields = False
    Connection = ADOConnectionDBF
    CursorType = ctStatic
    CommandText = 'select * from SUBS'
    ParamCheck = False
    Parameters = <>
    Left = 152
    Top = 216
  end
  object DSADOSUBS: TDataSource
    DataSet = ADOSUBS
    Left = 152
    Top = 264
  end
  object ADOCommand1: TADOCommand
    CommandText = 'CREATE INDEX subs111 ON subs (schet)'
    Connection = ADOConnectionDBF
    Parameters = <>
    ParamCheck = False
    Left = 224
    Top = 248
  end
end
