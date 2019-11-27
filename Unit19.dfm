object Form19: TForm19
  Left = 0
  Top = 0
  Caption = #1056#1077#1108#1089#1090#1088#1080' '#1084#1086#1085#1077#1090#1080#1079#1072#1094#1110#1111
  ClientHeight = 185
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
    Top = 156
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
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=d:\WORK\KOMUN\kvpl\' +
      'subs\;Mode=ReadWrite;Extended Properties=dBase IV;Persist Securi' +
      'ty Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select schet, len(schet) from subsree')
    Left = 112
  end
  object DSADOQueryTAB: TDataSource
    DataSet = ADOQueryTAB
    Enabled = False
    Left = 112
    Top = 48
  end
  object ADOQueryOBOR: TADOQuery
    CursorType = ctStatic
    ParamCheck = False
    Parameters = <>
    Prepared = True
    Left = 184
  end
  object DSADOQueryOBOR: TDataSource
    DataSet = ADOQueryOBOR
    Enabled = False
    Left = 184
    Top = 48
  end
  object ADOCommand1: TADOCommand
    CommandText = 'delete from subsree where len(schet) is null'#13#10
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=d:\WORK\KOMUN\kvpl\' +
      'subs\;Mode=ReadWrite;Extended Properties=dBase IV;Persist Securi' +
      'ty Info=False'
    Parameters = <>
    Left = 272
    Top = 8
  end
end
