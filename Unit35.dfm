object Form35: TForm35
  Left = 0
  Top = 0
  Caption = #1058#1072#1088#1080#1092#1080' '#1087#1086' '#1074#1091#1083#1080#1094#1103#1084
  ClientHeight = 480
  ClientWidth = 737
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 737
    Height = 89
    Align = alTop
    TabOrder = 0
    object cxGroupBox1: TcxGroupBox
      Left = 8
      Top = 8
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1074#1110#1076#1073#1086#1088#1091
      TabOrder = 0
      Height = 73
      Width = 185
      object cxLookupComboBox1: TcxLookupComboBox
        Left = 3
        Top = 38
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
        TabOrder = 0
        Width = 169
      end
      object cxLabel3: TcxLabel
        Left = 43
        Top = 15
        Caption = #1042#1080#1073#1077#1088#1110#1090#1100' '#1087#1077#1088#1110#1086#1076
      end
    end
    object cxButton4: TcxButton
      Left = 799
      Top = 108
      Width = 154
      Height = 25
      Caption = #1042#1110#1076#1087#1088#1072#1074#1082#1072' SMS'
      TabOrder = 1
    end
    object cxButton2: TcxButton
      Left = 199
      Top = 25
      Width = 129
      Height = 41
      Caption = #1047#1092#1086#1088#1084#1091#1074#1072#1090#1080' '#1079#1074#1110#1090
      TabOrder = 2
      OnClick = cxButton2Click
    end
    object cxButton3: TcxButton
      Left = 342
      Top = 25
      Width = 115
      Height = 42
      Caption = #1042' '#1045#1082#1089#1077#1083#1100
      TabOrder = 3
      OnClick = cxButton3Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 89
    Width = 737
    Height = 391
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSREPT
      DataController.DetailKeyFieldNames = 'KL_NTAR'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '0.00'
          Kind = skSum
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          VisibleForCustomization = False
        end
        item
          Format = '0.00'
          Kind = skSum
          VisibleForCustomization = False
        end
        item
          Format = '0'
          Kind = skSum
        end
        item
          Format = '0'
          Kind = skSum
        end
        item
          Format = '0.00'
          Kind = skSum
        end
        item
          Format = '0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '0'
          Kind = skCount
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skCount
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      object cxGrid1DBTableView1NAIM: TcxGridDBColumn
        Caption = #1055#1086#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'NAIM'
      end
      object cxGrid1DBTableView1ULNAIM: TcxGridDBColumn
        Caption = #1042#1091#1083#1080#1094#1103
        DataBinding.FieldName = 'ULNAIM'
      end
      object cxGrid1DBTableView1NOMDOM: TcxGridDBColumn
        Caption = #1041#1091#1076#1080#1085#1086#1082
        DataBinding.FieldName = 'NOMDOM'
      end
      object cxGrid1DBTableView1KL_NTAR: TcxGridDBColumn
        Caption = #1050#1083#1102#1095
        DataBinding.FieldName = 'KL_NTAR'
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        Caption = #1030#1084#39#1103' '#1090#1072#1088#1080#1092#1091
        DataBinding.FieldName = 'NAME'
      end
      object cxGrid1DBTableView1TARIF: TcxGridDBColumn
        Caption = #1058#1072#1088#1080#1092
        DataBinding.FieldName = 'TARIF'
      end
      object cxGrid1DBTableView1TARIF_BL: TcxGridDBColumn
        Caption = #1058#1072#1088#1080#1092' '#1073#1077#1079' '#1083#1110#1092#1090#1072
        DataBinding.FieldName = 'TARIF_BL'
      end
      object cxGrid1DBTableView1NORMA: TcxGridDBColumn
        Caption = #1053#1086#1088#1084#1072
        DataBinding.FieldName = 'NORMA'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object IBREPT: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    FieldOptions.AutoCreateMode = acCombineAlways
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select * from'
      '(select'
      'wid.naim,'
      'wid.npp,'
      'kart.ULNAIM,'
      'kart.NOMDOM,'
      'kart.NDOM,'
      'obor.KL_NTAR,'
      'ntarif.NAME,'
      'ntarif.TARIF,'
      'ntarif.tarif_bl,'
      'ntarif.NORMA'
      'from obor'
      'join kart on (kart.schet=obor.schet)'
      
        'left join ntarif on (ntarif.KL=obor.KL_NTAR and ntarif.period=:d' +
        't)'
      'join wid on (wid.wid=obor.wid)'
      'where obor.period=:dt'
      'group by wid.naim,'
      'wid.npp,'
      'kart.ULNAIM,'
      'kart.NOMDOM,'
      'kart.NDOM,'
      'obor.KL_NTAR,'
      'ntarif.NAME,'
      'ntarif.TARIF,'
      'ntarif.tarif_bl,'
      'ntarif.NORMA)'
      'order by ULNAIM,NDOM,npp')
    ParamCheck = True
    UniDirectional = False
    Left = 488
    Top = 24
    object IBREPTNAIM: TIBStringField
      FieldName = 'NAIM'
      ProviderFlags = []
      Size = 15
    end
    object IBREPTNPP: TFloatField
      FieldName = 'NPP'
      ProviderFlags = []
    end
    object IBREPTULNAIM: TIBStringField
      FieldName = 'ULNAIM'
      ProviderFlags = []
      Size = 64
    end
    object IBREPTNOMDOM: TIBStringField
      FieldName = 'NOMDOM'
      ProviderFlags = []
      Size = 5
    end
    object IBREPTNDOM: TIntegerField
      FieldName = 'NDOM'
      ProviderFlags = []
    end
    object IBREPTKL_NTAR: TFloatField
      FieldName = 'KL_NTAR'
      ProviderFlags = []
    end
    object IBREPTNAME: TIBStringField
      FieldName = 'NAME'
      ProviderFlags = []
      Size = 50
    end
    object IBREPTTARIF: TFloatField
      FieldName = 'TARIF'
      ProviderFlags = []
    end
    object IBREPTTARIF_BL: TFloatField
      FieldName = 'TARIF_BL'
      ProviderFlags = []
    end
    object IBREPTNORMA: TFloatField
      FieldName = 'NORMA'
      ProviderFlags = []
    end
  end
  object DSREPT: TDataSource
    DataSet = IBREPT
    Left = 560
    Top = 24
  end
end
