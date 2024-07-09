object Form36: TForm36
  Left = 0
  Top = 0
  Caption = #1042#1110#1076#1086#1084#1110#1089#1090#1100' '#1087#1088#1086' '#1090#1072#1088#1080#1092#1080
  ClientHeight = 295
  ClientWidth = 320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 27
    Top = 34
    Caption = #1042#1110#1076#1086#1084#1110#1089#1090#1100' '#1079#1072
  end
  object cxButton2: TcxButton
    Left = 14
    Top = 76
    Width = 298
    Height = 25
    Caption = #1047#1092#1086#1088#1084#1091#1074#1072#1090#1080
    TabOrder = 1
    OnClick = cxButton2Click
  end
  object MemoLog: TMemo
    Left = 0
    Top = 142
    Width = 320
    Height = 153
    Align = alBottom
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 2
    WordWrap = False
  end
  object cxLabel2: TcxLabel
    Left = 27
    Top = 8
    Caption = #1042#1080#1073#1077#1088#1090#1100' '#1087#1086#1089#1083#1091#1075#1091
    Visible = False
  end
  object cxLookupComboBox1: TcxLookupComboBox
    Left = 122
    Top = 31
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
    TabOrder = 4
    Width = 190
  end
  object cxLookupComboBox2: TcxLookupComboBox
    Left = 122
    Top = 8
    Properties.KeyFieldNames = 'WID'
    Properties.ListColumns = <
      item
        FieldName = 'NAIM'
      end
      item
        MinWidth = 0
        Sorting = False
        Width = 0
        FieldName = 'WID'
      end
      item
        MinWidth = 0
        Sorting = False
        Width = 0
        FieldName = 'COD'
      end>
    Properties.ListSource = DSTMPWID
    TabOrder = 5
    Visible = False
    Width = 190
  end
  object XMLDocument1: TXMLDocument
    Active = True
    Options = [doNodeAutoCreate, doNodeAutoIndent, doAttrNull, doAutoPrefix, doNamespaceDecl]
    Left = 176
    Top = 128
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *  from VW_OBKR'
      'WHERE (IIF(wid = :w1, 1, 0) = 1'
      '   OR IIF(wid = CASE WHEN :w1 = '#39'sm'#39' THEN '#39'sn'#39
      '                        WHEN :w1 = '#39'sn'#39' THEN '#39'sm'#39
      '                        ELSE NULL END, 1, 0) = 1)'
      '                        and period=:per')
    Left = 112
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'w1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'w1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'w1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'per'
        ParamType = ptUnknown
      end>
    object IBQuery1KL: TIntegerField
      FieldName = 'KL'
      Origin = '"VW_OBKR"."KL"'
    end
    object IBQuery1PERIOD: TDateField
      FieldName = 'PERIOD'
      Origin = '"VW_OBKR"."PERIOD"'
    end
    object IBQuery1SCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"VW_OBKR"."SCHET"'
      Size = 10
    end
    object IBQuery1WID: TIBStringField
      FieldName = 'WID'
      Origin = '"VW_OBKR"."WID"'
      Size = 2
    end
    object IBQuery1COD: TIBStringField
      FieldName = 'COD'
      Origin = '"VW_OBKR"."COD"'
      Size = 5
    end
    object IBQuery1POSLUG: TIBStringField
      FieldName = 'POSLUG'
      Origin = '"VW_OBKR"."POSLUG"'
      Size = 15
    end
    object IBQuery1VID: TIBStringField
      FieldName = 'VID'
      Origin = '"VW_OBKR"."VID"'
      Size = 30
    end
    object IBQuery1NPP: TFloatField
      FieldName = 'NPP'
      Origin = '"VW_OBKR"."NPP"'
    end
    object IBQuery1ED_IZMPFU: TIBStringField
      FieldName = 'ED_IZMPFU'
      Origin = '"VW_OBKR"."ED_IZMPFU"'
      Size = 50
    end
    object IBQuery1FIO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FIO'
      Origin = '"VW_OBKR"."FIO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 77
    end
    object IBQuery1FFF: TIBStringField
      FieldName = 'FFF'
      Origin = '"VW_OBKR"."FFF"'
      Size = 45
    end
    object IBQuery1IM: TIBStringField
      FieldName = 'IM'
      Origin = '"VW_OBKR"."IM"'
      Size = 15
    end
    object IBQuery1OT: TIBStringField
      FieldName = 'OT'
      Origin = '"VW_OBKR"."OT"'
      Size = 15
    end
    object IBQuery1ULNAIM: TIBStringField
      FieldName = 'ULNAIM'
      Origin = '"VW_OBKR"."ULNAIM"'
      Size = 64
    end
    object IBQuery1NOMDOM: TIBStringField
      FieldName = 'NOMDOM'
      Origin = '"VW_OBKR"."NOMDOM"'
      Size = 5
    end
    object IBQuery1NOMKV: TIBStringField
      FieldName = 'NOMKV'
      Origin = '"VW_OBKR"."NOMKV"'
      Size = 5
    end
    object IBQuery1ORG: TFloatField
      FieldName = 'ORG'
      Origin = '"VW_OBKR"."ORG"'
    end
    object IBQuery1IDCOD: TIBStringField
      FieldName = 'IDCOD'
      Origin = '"VW_OBKR"."IDCOD"'
      Size = 32
    end
    object IBQuery1KOLI_P: TFloatField
      FieldName = 'KOLI_P'
      Origin = '"VW_OBKR"."KOLI_P"'
    end
    object IBQuery1KOLI_PF: TFloatField
      FieldName = 'KOLI_PF'
      Origin = '"VW_OBKR"."KOLI_PF"'
    end
    object IBQuery1PLOS_BB: TFloatField
      FieldName = 'PLOS_BB'
      Origin = '"VW_OBKR"."PLOS_BB"'
    end
    object IBQuery1PLOS_OB: TFloatField
      FieldName = 'PLOS_OB'
      Origin = '"VW_OBKR"."PLOS_OB"'
    end
    object IBQuery1PRIV: TIBStringField
      FieldName = 'PRIV'
      Origin = '"VW_OBKR"."PRIV"'
      Size = 1
    end
    object IBQuery1LGOTA: TIBStringField
      FieldName = 'LGOTA'
      Origin = '"VW_OBKR"."LGOTA"'
      Size = 9
    end
    object IBQuery1KOEF: TFloatField
      FieldName = 'KOEF'
      Origin = '"VW_OBKR"."KOEF"'
    end
    object IBQuery1N_DOG: TIBStringField
      FieldName = 'N_DOG'
      Origin = '"VW_OBKR"."N_DOG"'
      Size = 10
    end
    object IBQuery1D_DOG: TIBStringField
      FieldName = 'D_DOG'
      Origin = '"VW_OBKR"."D_DOG"'
      Size = 8
    end
    object IBQuery1TARIF: TFloatField
      FieldName = 'TARIF'
      Origin = '"VW_OBKR"."TARIF"'
    end
    object IBQuery1TARSUBS: TFloatField
      FieldName = 'TARSUBS'
      Origin = '"VW_OBKR"."TARSUBS"'
    end
    object IBQuery1KL_NTAR: TFloatField
      FieldName = 'KL_NTAR'
      Origin = '"VW_OBKR"."KL_NTAR"'
    end
    object IBQuery1DOLG: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'DOLG'
      Origin = '"VW_OBKR"."DOLG"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery1NACH: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'NACH'
      Origin = '"VW_OBKR"."NACH"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery1SUBS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SUBS'
      Origin = '"VW_OBKR"."SUBS"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery1OPL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'OPL'
      Origin = '"VW_OBKR"."OPL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery1UDER: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'UDER'
      Origin = '"VW_OBKR"."UDER"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery1KOMP: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'KOMP'
      Origin = '"VW_OBKR"."KOMP"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery1WZMZ: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'WZMZ'
      Origin = '"VW_OBKR"."WZMZ"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery1WOZW: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'WOZW'
      Origin = '"VW_OBKR"."WOZW"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery1MOVW: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'MOVW'
      Origin = '"VW_OBKR"."MOVW"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery1PERE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PERE'
      Origin = '"VW_OBKR"."PERE"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery1SAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SAL'
      Origin = '"VW_OBKR"."SAL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery1BGST: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'BGST'
      Origin = '"VW_OBKR"."BGST"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery1PRST: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PRST'
      Origin = '"VW_OBKR"."PRST"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery1BGEND: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'BGEND'
      Origin = '"VW_OBKR"."BGEND"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery1PREND: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PREND'
      Origin = '"VW_OBKR"."PREND"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery1FULLNACH: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'FULLNACH'
      Origin = '"VW_OBKR"."FULLNACH"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery1FULLOPL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'FULLOPL'
      Origin = '"VW_OBKR"."FULLOPL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery1OPLNOTSUBS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'OPLNOTSUBS'
      Origin = '"VW_OBKR"."OPLNOTSUBS"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object IBWID: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from WID'
      'where'
      '  WID = :OLD_WID')
    InsertSQL.Strings = (
      'insert into WID'
      '  (WID, NAIM, COD)'
      'values'
      '  (:WID, :NAIM, :COD)')
    RefreshSQL.Strings = (
      'Select '
      '  WID,'
      '  NAIM,'
      '  COD,'
      '  UPD'
      'from WID '
      'where'
      '  WID = :WID')
    SelectSQL.Strings = (
      ' select wid,naim,cod from WID where upd=1 and cod is not null')
    ModifySQL.Strings = (
      'update WID'
      'set'
      '  WID = :WID,'
      '  NAIM = :NAIM,'
      '  COD = :COD'
      'where'
      '  WID = :OLD_WID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_WID_ID'
    Left = 47
    Top = 127
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
    object IBWIDCOD: TIBStringField
      FieldName = 'COD'
      Origin = '"WID"."COD"'
      Size = 5
    end
  end
  object DSTMPWID: TDataSource
    DataSet = IBWID
    Left = 47
    Top = 175
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'zip'
    Filter = 'zip file|*.zip'
    Left = 252
    Top = 123
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *  from VW_OBKR'
      'WHERE (cod<>'#39#39') and period=:per and koef<>0 order by npp'
      '')
    Left = 112
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'per'
        ParamType = ptUnknown
      end>
    object IBQuery2KL: TIntegerField
      FieldName = 'KL'
      Origin = '"VW_OBKR"."KL"'
    end
    object IBQuery2PERIOD: TDateField
      FieldName = 'PERIOD'
      Origin = '"VW_OBKR"."PERIOD"'
    end
    object IBQuery2SCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"VW_OBKR"."SCHET"'
      Size = 10
    end
    object IBQuery2WID: TIBStringField
      FieldName = 'WID'
      Origin = '"VW_OBKR"."WID"'
      Size = 2
    end
    object IBQuery2COD: TIBStringField
      FieldName = 'COD'
      Origin = '"VW_OBKR"."COD"'
      Size = 5
    end
    object IBQuery2POSLUG: TIBStringField
      FieldName = 'POSLUG'
      Origin = '"VW_OBKR"."POSLUG"'
      Size = 15
    end
    object IBQuery2VID: TIBStringField
      FieldName = 'VID'
      Origin = '"VW_OBKR"."VID"'
      Size = 30
    end
    object IBQuery2NPP: TFloatField
      FieldName = 'NPP'
      Origin = '"VW_OBKR"."NPP"'
    end
    object IBQuery2ED_IZMPFU: TIBStringField
      FieldName = 'ED_IZMPFU'
      Origin = '"VW_OBKR"."ED_IZMPFU"'
      Size = 50
    end
    object IBQuery2FIO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FIO'
      Origin = '"VW_OBKR"."FIO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 77
    end
    object IBQuery2FFF: TIBStringField
      FieldName = 'FFF'
      Origin = '"VW_OBKR"."FFF"'
      Size = 45
    end
    object IBQuery2IM: TIBStringField
      FieldName = 'IM'
      Origin = '"VW_OBKR"."IM"'
      Size = 15
    end
    object IBQuery2OT: TIBStringField
      FieldName = 'OT'
      Origin = '"VW_OBKR"."OT"'
      Size = 15
    end
    object IBQuery2ULNAIM: TIBStringField
      FieldName = 'ULNAIM'
      Origin = '"VW_OBKR"."ULNAIM"'
      Size = 64
    end
    object IBQuery2NOMDOM: TIBStringField
      FieldName = 'NOMDOM'
      Origin = '"VW_OBKR"."NOMDOM"'
      Size = 5
    end
    object IBQuery2NOMKV: TIBStringField
      FieldName = 'NOMKV'
      Origin = '"VW_OBKR"."NOMKV"'
      Size = 5
    end
    object IBQuery2ORG: TFloatField
      FieldName = 'ORG'
      Origin = '"VW_OBKR"."ORG"'
    end
    object IBQuery2IDCOD: TIBStringField
      FieldName = 'IDCOD'
      Origin = '"VW_OBKR"."IDCOD"'
      Size = 32
    end
    object IBQuery2KOLI_P: TFloatField
      FieldName = 'KOLI_P'
      Origin = '"VW_OBKR"."KOLI_P"'
    end
    object IBQuery2KOLI_PF: TFloatField
      FieldName = 'KOLI_PF'
      Origin = '"VW_OBKR"."KOLI_PF"'
    end
    object IBQuery2PLOS_BB: TFloatField
      FieldName = 'PLOS_BB'
      Origin = '"VW_OBKR"."PLOS_BB"'
    end
    object IBQuery2PLOS_OB: TFloatField
      FieldName = 'PLOS_OB'
      Origin = '"VW_OBKR"."PLOS_OB"'
    end
    object IBQuery2PRIV: TIBStringField
      FieldName = 'PRIV'
      Origin = '"VW_OBKR"."PRIV"'
      Size = 1
    end
    object IBQuery2LGOTA: TIBStringField
      FieldName = 'LGOTA'
      Origin = '"VW_OBKR"."LGOTA"'
      Size = 9
    end
    object IBQuery2KOEF: TFloatField
      FieldName = 'KOEF'
      Origin = '"VW_OBKR"."KOEF"'
    end
    object IBQuery2N_DOG: TIBStringField
      FieldName = 'N_DOG'
      Origin = '"VW_OBKR"."N_DOG"'
      Size = 10
    end
    object IBQuery2D_DOG: TIBStringField
      FieldName = 'D_DOG'
      Origin = '"VW_OBKR"."D_DOG"'
      Size = 8
    end
    object IBQuery2TARIF: TFloatField
      FieldName = 'TARIF'
      Origin = '"VW_OBKR"."TARIF"'
    end
    object IBQuery2TARSUBS: TFloatField
      FieldName = 'TARSUBS'
      Origin = '"VW_OBKR"."TARSUBS"'
    end
    object IBQuery2KL_NTAR: TFloatField
      FieldName = 'KL_NTAR'
      Origin = '"VW_OBKR"."KL_NTAR"'
    end
    object IBQuery2DOLG: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'DOLG'
      Origin = '"VW_OBKR"."DOLG"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery2NACH: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'NACH'
      Origin = '"VW_OBKR"."NACH"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery2SUBS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SUBS'
      Origin = '"VW_OBKR"."SUBS"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery2OPL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'OPL'
      Origin = '"VW_OBKR"."OPL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery2UDER: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'UDER'
      Origin = '"VW_OBKR"."UDER"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery2KOMP: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'KOMP'
      Origin = '"VW_OBKR"."KOMP"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery2WZMZ: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'WZMZ'
      Origin = '"VW_OBKR"."WZMZ"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery2WOZW: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'WOZW'
      Origin = '"VW_OBKR"."WOZW"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery2MOVW: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'MOVW'
      Origin = '"VW_OBKR"."MOVW"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery2PERE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PERE'
      Origin = '"VW_OBKR"."PERE"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery2SAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SAL'
      Origin = '"VW_OBKR"."SAL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery2BGST: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'BGST'
      Origin = '"VW_OBKR"."BGST"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery2PRST: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PRST'
      Origin = '"VW_OBKR"."PRST"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery2BGEND: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'BGEND'
      Origin = '"VW_OBKR"."BGEND"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery2PREND: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PREND'
      Origin = '"VW_OBKR"."PREND"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery2FULLNACH: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'FULLNACH'
      Origin = '"VW_OBKR"."FULLNACH"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery2FULLOPL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'FULLOPL'
      Origin = '"VW_OBKR"."FULLOPL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery2OPLNOTSUBS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'OPLNOTSUBS'
      Origin = '"VW_OBKR"."OPLNOTSUBS"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object SaveDialog2: TSaveDialog
    DefaultExt = 'xlsx'
    Filter = 'xlsx file|*.xlsx'
    Left = 244
    Top = 179
  end
end
