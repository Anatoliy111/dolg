object Form27: TForm27
  Left = 0
  Top = 0
  Caption = 'Form27'
  ClientHeight = 429
  ClientWidth = 577
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
  object cxTextEdit1: TcxTextEdit
    Left = 23
    Top = 32
    Properties.ReadOnly = True
    TabOrder = 0
    Text = #1060#1072#1081#1083
    Width = 306
  end
  object cxLabel3: TcxLabel
    Left = 31
    Top = 116
    Caption = #1041#1072#1085#1082
  end
  object cxTextEdit4: TcxTextEdit
    Left = 125
    Top = 116
    Properties.ReadOnly = True
    TabOrder = 2
    Width = 282
  end
  object cxLabel1: TcxLabel
    Left = 31
    Top = 89
    Caption = #1044#1072#1090#1072
  end
  object cxButton2: TcxButton
    Left = 14
    Top = 149
    Width = 554
    Height = 25
    Caption = #1047#1072#1074#1072#1085#1090#1072#1078#1080#1090#1080
    TabOrder = 4
    OnClick = cxButton2Click
  end
  object cxButton1: TcxButton
    Left = 335
    Top = 31
    Width = 161
    Height = 25
    Caption = #1042#1080#1073#1077#1088#1110#1090#1100' '#1092#1072#1081#1083
    TabOrder = 5
    OnClick = cxButton1Click
  end
  object MemoLog: TMemo
    Left = 0
    Top = 188
    Width = 577
    Height = 241
    Align = alBottom
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 6
    WordWrap = False
  end
  object cxDateEdit1: TcxDateEdit
    Left = 137
    Top = 89
    Properties.ReadOnly = True
    TabOrder = 7
    Width = 121
  end
  object cxDateEdit2: TcxDateEdit
    Left = 286
    Top = 89
    Properties.ReadOnly = True
    TabOrder = 8
    Width = 121
  end
  object cxLabel2: TcxLabel
    Left = 125
    Top = 90
    Caption = #1079
  end
  object cxLabel4: TcxLabel
    Left = 264
    Top = 90
    Caption = #1087#1086
  end
  object ADOCommand1: TADOCommand
    CommandText = 'delete from subsree where len(schet) is null'#13#10
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=d:\WORK\KOMUN\kvpl\' +
      'subs\;Mode=ReadWrite;Extended Properties=dBase IV;Persist Securi' +
      'ty Info=False'
    Parameters = <>
    Left = 136
    Top = 8
  end
  object DSADOQueryOBOR: TDataSource
    DataSet = ADOQueryOBOR
    Enabled = False
    Left = 96
    Top = 56
  end
  object ADOQueryOBOR: TADOQuery
    CursorType = ctStatic
    ParamCheck = False
    Parameters = <>
    Prepared = True
    Left = 80
    Top = 8
  end
  object DSADOQueryTAB: TDataSource
    DataSet = ADOQueryTAB
    Enabled = False
    Left = 16
    Top = 56
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
    Left = 24
    Top = 8
  end
  object DSQueryBank: TDataSource
    DataSet = IBQueryBank
    Left = 495
    Top = 306
  end
  object IBQueryBank: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from SPR_BANK')
    Left = 423
    Top = 306
    object IBQueryBankKL: TIntegerField
      FieldName = 'KL'
      Origin = '"SPR_BANK"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQueryBankNAIM: TIBStringField
      FieldName = 'NAIM'
      Origin = '"SPR_BANK"."NAIM"'
      Size = 30
    end
    object IBQueryBankRAH: TIBStringField
      FieldName = 'RAH'
      Origin = '"SPR_BANK"."RAH"'
      Size = 50
    end
    object IBQueryBankSTR_ST: TIntegerField
      FieldName = 'STR_ST'
      Origin = '"SPR_BANK"."STR_ST"'
    end
    object IBQueryBankCOL_POISK_ENDDATA: TIntegerField
      FieldName = 'COL_POISK_ENDDATA'
      Origin = '"SPR_BANK"."COL_POISK_ENDDATA"'
    end
    object IBQueryBankSTR_PRIZN_ENDDATA: TIBStringField
      FieldName = 'STR_PRIZN_ENDDATA'
      Origin = '"SPR_BANK"."STR_PRIZN_ENDDATA"'
      Size = 50
    end
    object IBQueryBankCOL_PRIZN: TIntegerField
      FieldName = 'COL_PRIZN'
      Origin = '"SPR_BANK"."COL_PRIZN"'
    end
    object IBQueryBankCOL_SUM: TIntegerField
      FieldName = 'COL_SUM'
      Origin = '"SPR_BANK"."COL_SUM"'
    end
    object IBQueryBankCOL_DT: TIntegerField
      FieldName = 'COL_DT'
      Origin = '"SPR_BANK"."COL_DT"'
    end
    object IBQueryBankCOL_DOK: TIntegerField
      FieldName = 'COL_DOK'
      Origin = '"SPR_BANK"."COL_DOK"'
    end
    object IBQueryBankCOL_END: TIntegerField
      FieldName = 'COL_END'
      Origin = '"SPR_BANK"."COL_END"'
    end
    object IBQueryBankSTR_POISK_RAH: TIntegerField
      FieldName = 'STR_POISK_RAH'
      Origin = '"SPR_BANK"."STR_POISK_RAH"'
    end
    object IBQueryBankCOL_POISK_RAH: TIntegerField
      FieldName = 'COL_POISK_RAH'
      Origin = '"SPR_BANK"."COL_POISK_RAH"'
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 516
    Top = 8
  end
  object IBQueryVipiska: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *  from SPR_VIPISKA')
    Left = 423
    Top = 354
    object IBQueryVipiskaKL: TIntegerField
      FieldName = 'KL'
      Origin = '"SPR_VIPISKA"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQueryVipiskaKL_BANK: TIntegerField
      FieldName = 'KL_BANK'
      Origin = '"SPR_VIPISKA"."KL_BANK"'
    end
    object IBQueryVipiskaWID: TIBStringField
      FieldName = 'WID'
      Origin = '"SPR_VIPISKA"."WID"'
      Size = 2
    end
    object IBQueryVipiskaVIDPOISK: TIBStringField
      FieldName = 'VIDPOISK'
      Origin = '"SPR_VIPISKA"."VIDPOISK"'
      Size = 5
    end
    object IBQueryVipiskaPOISK: TIBStringField
      FieldName = 'POISK'
      Origin = '"SPR_VIPISKA"."POISK"'
      Size = 100
    end
  end
  object DSQueryVipiska: TDataSource
    DataSet = IBQueryVipiska
    Left = 495
    Top = 354
  end
end
