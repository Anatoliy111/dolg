object Form19: TForm19
  Left = 0
  Top = 0
  Caption = #1056#1077#1108#1089#1090#1088#1080' '#1084#1086#1085#1077#1090#1080#1079#1072#1094#1110#1111
  ClientHeight = 174
  ClientWidth = 603
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
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
  object OpenDialog1: TOpenDialog
    Left = 16
    Top = 120
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
end
