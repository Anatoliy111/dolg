object Form29: TForm29
  Left = 0
  Top = 0
  Caption = #1047#1072#1073#1086#1088#1075#1086#1074#1072#1085#1110#1089#1090#1100' '#1087#1110#1083#1100#1075#1080
  ClientHeight = 491
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object cxButton1: TcxButton
    Left = 519
    Top = 40
    Width = 161
    Height = 25
    Caption = #1042#1080#1073#1077#1088#1110#1090#1100' '#1092#1072#1081#1083
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object cxTextEdit1: TcxTextEdit
    Left = 39
    Top = 40
    TabOrder = 1
    Text = #1060#1072#1081#1083
    Width = 474
  end
  object cxButton2: TcxButton
    Left = 39
    Top = 183
    Width = 554
    Height = 25
    Caption = #1047#1072#1074#1072#1085#1090#1072#1078#1080#1090#1080
    TabOrder = 2
    OnClick = cxButton2Click
  end
  object cxLabel2: TcxLabel
    Left = 47
    Top = 100
  end
  object cxLabel5: TcxLabel
    Left = 39
    Top = 8
    Caption = #1042#1080#1073#1077#1088#1110#1090#1100' '#1092#1072#1081#1083#1080' '#1103#1082#1110' '#1087#1088#1080#1089#1080#1083#1072#1108' '#1087#1077#1085#1089#1110#1081#1085#1080#1081' '#1092#1086#1085#1076' *.zip - query '#1087#1110#1083#1100#1075#1072
  end
  object MemoLog: TMemo
    Left = 0
    Top = 250
    Width = 708
    Height = 241
    Align = alBottom
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 5
    WordWrap = False
  end
  object cxLabel1: TcxLabel
    Left = 47
    Top = 70
    Caption = #1047#1072#1073#1086#1088#1075#1086#1074#1072#1085#1110#1089#1090#1100' '#1085#1072' '
  end
  object cxLookupComboBox1: TcxLookupComboBox
    Left = 169
    Top = 70
    Properties.KeyFieldNames = 'PERIOD'
    Properties.ListColumns = <
      item
        FieldName = 'PERIOD'
      end>
    Properties.ListSource = Form1.DSPERIOD
    Properties.ReadOnly = True
    Properties.OnChange = cxLookupComboBox1PropertiesChange
    TabOrder = 7
    Width = 129
  end
  object cxLabel4: TcxLabel
    Left = 48
    Top = 98
    Caption = #1047#1072#1073#1086#1088#1075#1086#1074#1072#1085#1110#1089#1090#1100' ='
  end
  object cxLabel3: TcxLabel
    Left = 169
    Top = 98
    Caption = #1041#1086#1088#1075
  end
  object cxLabel7: TcxLabel
    Left = 48
    Top = 126
    Caption = 
      #1047#1072#1087#1086#1074#1085#1102#1108#1090#1100#1089#1103' '#1079#1072#1073#1086#1088#1075#1086#1074#1072#1085#1110#1089#1100' '#1089#1091#1084#1072' '#1073#1086#1088#1075#1091' '#1103#1082#1080#1093', '#1087#1086' '#1074#1089#1080#1084' '#1087#1086#1089#1083#1091#1075#1072#1084', '#1073#1110 +
      #1083#1100#1096#1077' 680 '#1075#1088#1085'.'
    Visible = False
  end
  object OpenDialog1: TOpenDialog
    Left = 552
    Top = 288
  end
  object DSQuery1: TDataSource
    Left = 471
    Top = 274
  end
  object IBWID: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from WID'
      'where'
      '  WID = :OLD_WID and'
      '  COD = :OLD_COD')
    InsertSQL.Strings = (
      'insert into WID'
      '  (WID, COD)'
      'values'
      '  (:WID, :COD)')
    RefreshSQL.Strings = (
      'Select '
      '  WID,'
      '  ID_ORG,'
      '  NAIM,'
      '  SNAIM,'
      '  PAR,'
      '  FL0,'
      '  FL,'
      '  COD,'
      '  NPP,'
      '  FL_NONACH,'
      '  FL_NOOPL,'
      '  FL_VTCH,'
      '  FL_NOOBOR,'
      '  FL_GROPL,'
      '  FL_SUBS,'
      '  VAL,'
      '  UPD'
      'from WID '
      'where'
      '  WID = :WID and'
      '  COD = :COD')
    SelectSQL.Strings = (
      ' select wid,cod from WID')
    ModifySQL.Strings = (
      'update WID'
      'set'
      '  WID = :WID,'
      '  COD = :COD'
      'where'
      '  WID = :OLD_WID and'
      '  COD = :OLD_COD')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_WID_ID'
    Left = 309
    Top = 281
    object IBWIDWID: TIBStringField
      FieldName = 'WID'
      Origin = '"WID"."WID"'
      Size = 2
    end
    object IBWIDCOD: TIBStringField
      FieldName = 'COD'
      Origin = '"WID"."COD"'
      Size = 5
    end
  end
  object DSWID: TDataSource
    DataSet = IBWID
    Left = 309
    Top = 337
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'xls'
    Filter = 'Excel file|*.xls'
    Left = 480
    Top = 352
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select wid.cod, t2.wid, trim(t2.schet) as sch, oo.tarsubs,vo.dol' +
        'g,t2.fullopl,vo.dolg-t2.fullopl as summa from'
      
        '                        (select wid, schet, sum(fullopl) fullopl' +
        ' from vw_obor where period>=:d3 and period<=:d4'
      '                        group by wid, schet) t2'
      '                        left join wid on t2.wid=wid.wid'
      
        '                        left join vw_obor vo on vo.wid=t2.wid an' +
        'd vo.schet=t2.schet and vo.period=:d0'
      
        '                        left join obor oo on oo.wid=t2.wid and o' +
        'o.schet=t2.schet and oo.period=:d4'
      '                        where wid.cod is not null'
      '                        order by t2.schet, t2.wid')
    Left = 415
    Top = 274
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'd3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd4'
        ParamType = ptUnknown
      end>
    object IBQuery1COD: TIBStringField
      FieldName = 'COD'
      Origin = '"WID"."COD"'
      Size = 5
    end
    object IBQuery1WID: TIBStringField
      FieldName = 'WID'
      ProviderFlags = []
      Size = 2
    end
    object IBQuery1SCH: TIBStringField
      FieldName = 'SCH'
      ProviderFlags = []
      Size = 10
    end
    object IBQuery1TARSUBS: TFloatField
      FieldName = 'TARSUBS'
      Origin = '"OBOR"."TARSUBS"'
    end
    object IBQuery1DOLG: TFloatField
      FieldName = 'DOLG'
      Origin = '"VW_OBOR"."DOLG"'
    end
    object IBQuery1FULLOPL: TFloatField
      FieldName = 'FULLOPL'
      ProviderFlags = []
    end
    object IBQuery1SUMMA: TFloatField
      FieldName = 'SUMMA'
      ProviderFlags = []
    end
  end
end
