object Form22: TForm22
  Left = 0
  Top = 0
  Caption = 'Form22'
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
    Left = 351
    Top = 39
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
    Width = 306
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
  object cxLabel1: TcxLabel
    Left = 47
    Top = 70
    Caption = #1055#1077#1088#1110#1086#1076' '#1073#1086#1088#1075#1091' '#1085#1072' '#1087#1086#1095#1072#1090#1086#1082
  end
  object cxTextEdit4: TcxTextEdit
    Left = 158
    Top = 153
    Properties.ReadOnly = True
    TabOrder = 4
    Width = 201
  end
  object cxLabel3: TcxLabel
    Left = 47
    Top = 152
    Caption = #1058#1080#1087' '#1088#1077#1108#1089#1090#1088#1091
  end
  object cxLookupComboBox1: TcxLookupComboBox
    Left = 216
    Top = 70
    Properties.KeyFieldNames = 'PERIOD'
    Properties.ListColumns = <
      item
        FieldName = 'PERIOD'
      end>
    TabOrder = 6
    Width = 129
  end
  object cxLabel28: TcxLabel
    Left = 48
    Top = 126
    Caption = ' '#1079
  end
  object cxLabel29: TcxLabel
    Left = 208
    Top = 122
    Caption = #1087#1086
  end
  object cxLookupComboBox3: TcxLookupComboBox
    Left = 70
    Top = 123
    Properties.KeyFieldNames = 'PERIOD'
    Properties.ListColumns = <
      item
        FieldName = 'PERIOD'
      end>
    TabOrder = 9
    Width = 129
  end
  object cxLookupComboBox4: TcxLookupComboBox
    Left = 230
    Top = 122
    Properties.KeyFieldNames = 'PERIOD'
    Properties.ListColumns = <
      item
        FieldName = 'PERIOD'
      end>
    TabOrder = 10
    Width = 129
  end
  object cxLabel2: TcxLabel
    Left = 47
    Top = 100
  end
  object cxLabel4: TcxLabel
    Left = 48
    Top = 100
    Caption = #1055#1077#1088#1110#1086#1076' '#1086#1087#1083#1072#1090#1080' ('#1079#1072#1073#1086#1088#1075#1086#1074#1072#1085#1086#1089#1090#1110')'
  end
  object cxLabel5: TcxLabel
    Left = 39
    Top = 8
    Caption = 
      #1042#1080#1073#1077#1088#1110#1090#1100' '#1092#1072#1081#1083#1080' '#1103#1082#1110' '#1087#1088#1080#1089#1080#1083#1072#1108' '#1059#1055#1057#1047#1053' *.DBF - '#1089#1091#1073#1089#1080#1076#1110#1103', *.S01 *.P01 ' +
      '- '#1087#1110#1083#1100#1075#1072
  end
  object cxLabel6: TcxLabel
    Left = 39
    Top = 224
    Caption = '* - '#1073#1086#1088#1075#1080' '#1076#1086#1073#1072#1074#1083#1103#1102#1090#1100#1089#1103' '#1074' '#1082#1110#1085#1077#1094#1100' '#1090#1072#1073#1083#1080#1094#1110
  end
  object CheckBox1: TCheckBox
    Left = 373
    Top = 130
    Width = 240
    Height = 17
    Caption = #1074#1110#1076#1108#1084#1085#1080#1081' '#1088#1077#1079#1091#1083#1100#1090#1072#1090' '#1079#1072#1087#1086#1074#1085#1102#1074#1072#1090#1080' '#1103#1082' '#1085#1091#1083#1100
    TabOrder = 15
  end
  object OpenDialog1: TOpenDialog
    Left = 520
    Top = 272
  end
  object IBQuery1: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select trim(vo.schet) schet, vo.dolg, op.opl from vw_obkr vo inn' +
        'er join (select schet, sum(fullopl) opl from vw_obkr where wid=w' +
        'id=:wid and period>=:dt2 and period<=:dt3 group by schet) op on ' +
        'op.schet=vo.schet where vo.wid=:wid and vo.period=:dt1 and op.op' +
        'l=0 and vo.dolg>0')
    Left = 415
    Top = 274
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'wid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt1'
        ParamType = ptUnknown
      end>
  end
  object DSQuery1: TDataSource
    DataSet = IBQuery1
    Left = 471
    Top = 274
  end
  object ADOCommand1: TADOCommand
    CommandText = 'delete from subsree where len(schet) is null'#13#10
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=d:\WORK\KOMUN\kvpl\' +
      'subs\;Mode=ReadWrite;Extended Properties=dBase IV;Persist Securi' +
      'ty Info=False'
    Parameters = <>
    Left = 232
    Top = 280
  end
  object IBWID: TIBDataSet
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from WID'
      'where'
      '  WID = :OLD_WID')
    InsertSQL.Strings = (
      'insert into WID'
      
        '  (WID, ID_ORG, NAIM, SNAIM, PAR, FL0, FL, NPP, FL_NONACH, FL_NO' +
        'OPL, FL_VTCH, '
      '   FL_NOOBOR, FL_GROPL, FL_SUBS, VAL)'
      'values'
      
        '  (:WID, :ID_ORG, :NAIM, :SNAIM, :PAR, :FL0, :FL, :NPP, :FL_NONA' +
        'CH, :FL_NOOPL, '
      '   :FL_VTCH, :FL_NOOBOR, :FL_GROPL, :FL_SUBS, :VAL)')
    RefreshSQL.Strings = (
      'Select '
      '  WID,'
      '  ID_ORG,'
      '  NAIM,'
      '  SNAIM,'
      '  PAR,'
      '  FL0,'
      '  FL,'
      '  NPP,'
      '  FL_NONACH,'
      '  FL_NOOPL,'
      '  FL_VTCH,'
      '  FL_NOOBOR,'
      '  FL_GROPL,'
      '  FL_SUBS,'
      '  VAL'
      'from WID '
      'where'
      '  WID = :WID')
    SelectSQL.Strings = (
      ' select wid,naim, 0 as ch from WID')
    ModifySQL.Strings = (
      'update WID'
      'set'
      '  WID = :WID,'
      '  ID_ORG = :ID_ORG,'
      '  NAIM = :NAIM,'
      '  SNAIM = :SNAIM,'
      '  PAR = :PAR,'
      '  FL0 = :FL0,'
      '  FL = :FL,'
      '  NPP = :NPP,'
      '  FL_NONACH = :FL_NONACH,'
      '  FL_NOOPL = :FL_NOOPL,'
      '  FL_VTCH = :FL_VTCH,'
      '  FL_NOOBOR = :FL_NOOBOR,'
      '  FL_GROPL = :FL_GROPL,'
      '  FL_SUBS = :FL_SUBS,'
      '  VAL = :VAL'
      'where'
      '  WID = :OLD_WID')
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
    object IBWIDNAIM: TIBStringField
      FieldName = 'NAIM'
      Origin = '"WID"."NAIM"'
      Size = 15
    end
    object IBWIDCH: TIntegerField
      FieldName = 'CH'
      ProviderFlags = []
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
end
