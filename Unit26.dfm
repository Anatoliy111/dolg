object Form26: TForm26
  Left = 0
  Top = 0
  Caption = #1053#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103
  ClientHeight = 289
  ClientWidth = 617
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 299
    Top = 11
    Width = 12
    Height = 13
    Caption = #1087#1086
  end
  object cxButton1: TcxButton
    Left = 343
    Top = 35
    Width = 161
    Height = 25
    Caption = #1042#1080#1073#1077#1088#1110#1090#1100' '#1092#1072#1081#1083
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object cxTextEdit1: TcxTextEdit
    Left = 31
    Top = 35
    TabOrder = 1
    Text = #1056#1077#1108#1089#1090#1088' '#1089#1091#1073#1089#1080#1076#1110#1111
    Width = 306
  end
  object cxButton2: TcxButton
    Left = 31
    Top = 223
    Width = 554
    Height = 25
    Caption = #1047#1092#1086#1088#1084#1091#1074#1072#1090#1080' '#1079#1074#1110#1090
    TabOrder = 2
    OnClick = cxButton2Click
  end
  object Memo1: TMemo
    Left = 343
    Top = 66
    Width = 185
    Height = 51
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
  end
  object cxTextEdit2: TcxTextEdit
    Left = 112
    Top = 65
    Properties.ReadOnly = True
    TabOrder = 4
    Width = 225
  end
  object cxLabel1: TcxLabel
    Left = 119
    Top = 8
    Caption = #1055#1077#1088#1110#1086#1076
  end
  object cxLabel2: TcxLabel
    Left = 39
    Top = 66
    Caption = #1055#1086#1089#1083#1091#1075#1072
  end
  object cxTextEdit4: TcxTextEdit
    Left = 112
    Top = 92
    Properties.ReadOnly = True
    TabOrder = 7
    Width = 225
  end
  object cxLabel3: TcxLabel
    Left = 39
    Top = 92
    Caption = #1058#1080#1087' '#1088#1077#1108#1089#1090#1088#1091
  end
  object cxLookupComboBox1: TcxLookupComboBox
    Left = 192
    Top = 8
    Properties.KeyFieldNames = 'PERIOD'
    Properties.ListColumns = <
      item
        FieldName = 'STRPERIOD'
      end
      item
        MinWidth = 0
        Sorting = False
        Width = 0
        FieldName = 'PERIOD'
      end>
    Properties.ListSource = Form1.DSPERIOD
    TabOrder = 9
    Width = 98
  end
  object cxLookupComboBox2: TcxLookupComboBox
    Left = 319
    Top = 8
    Properties.KeyFieldNames = 'PERIOD'
    Properties.ListColumns = <
      item
        FieldName = 'STRPERIOD'
      end
      item
        MinWidth = 0
        Sorting = False
        Width = 0
        FieldName = 'PERIOD'
      end>
    Properties.ListSource = Form1.DSPERIOD
    TabOrder = 10
    Width = 98
  end
  object cxTextEdit3: TcxTextEdit
    Left = 31
    Top = 123
    TabOrder = 11
    Text = #1056#1077#1108#1089#1090#1088' '#1087#1110#1083#1100#1075#1080
    Width = 306
  end
  object cxButton3: TcxButton
    Left = 343
    Top = 123
    Width = 161
    Height = 25
    Caption = #1042#1080#1073#1077#1088#1110#1090#1100' '#1092#1072#1081#1083
    TabOrder = 12
    OnClick = cxButton3Click
  end
  object cxTextEdit5: TcxTextEdit
    Left = 112
    Top = 153
    Properties.ReadOnly = True
    TabOrder = 13
    Width = 225
  end
  object cxLabel4: TcxLabel
    Left = 39
    Top = 154
    Caption = #1055#1086#1089#1083#1091#1075#1072
  end
  object cxLabel5: TcxLabel
    Left = 39
    Top = 180
    Caption = #1058#1080#1087' '#1088#1077#1108#1089#1090#1088#1091
  end
  object cxTextEdit6: TcxTextEdit
    Left = 112
    Top = 180
    Properties.ReadOnly = True
    TabOrder = 16
    Width = 225
  end
  object cxLabel6: TcxLabel
    Left = 31
    Top = 262
    Caption = '* - '#1092#1072#1081#1083#1080' '#1088#1077#1108#1089#1090#1088#1110#1074' '#1087#1086#1074#1080#1085#1085#1110' '#1073#1091#1090#1080' '#1087#1086' '#1086#1076#1085#1110#1081' '#1087#1086#1089#1083#1091#1079#1110
  end
  object Memo2: TMemo
    Left = 343
    Top = 154
    Width = 185
    Height = 51
    Lines.Strings = (
      'Memo1')
    TabOrder = 18
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
    Left = 423
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
    Left = 423
    Top = 50
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select trim(schet) as schet, nach+pere+wozw as nach, bgend as sa' +
        'l from vw_obor where period=:dt and wid=:wid')
    Left = 471
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
    object IBStringField1: TIBStringField
      FieldName = 'SCHET'
      ProviderFlags = []
      Size = 10
    end
    object FloatField1: TFloatField
      FieldName = 'NACH'
      ProviderFlags = []
    end
    object FloatField2: TFloatField
      FieldName = 'SAL'
      Origin = '"OBOR"."SAL"'
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery2
    Left = 471
    Top = 58
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select trim(schet) as schet, nach+pere+wozw as nach, bgend as sa' +
        'l from vw_obor where period=:dt and wid=:wid')
    Left = 519
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
    object IBStringField2: TIBStringField
      FieldName = 'SCHET'
      ProviderFlags = []
      Size = 10
    end
    object FloatField3: TFloatField
      FieldName = 'NACH'
      ProviderFlags = []
    end
    object FloatField4: TFloatField
      FieldName = 'SAL'
      Origin = '"OBOR"."SAL"'
    end
  end
  object DataSource2: TDataSource
    DataSet = IBQuery3
    Left = 519
    Top = 58
  end
end
