object Form37: TForm37
  Left = 0
  Top = 0
  Caption = #1042#1080#1087#1080#1089#1082#1072' '#1087#1086' '#1086#1089#1086#1073#1086#1074#1086#1084#1091' '#1088#1072#1093#1091#1085#1082#1091
  ClientHeight = 341
  ClientWidth = 515
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 515
    Height = 65
    Align = alTop
    TabOrder = 0
    object cxLabel2: TcxLabel
      Left = 22
      Top = 39
      Caption = ' - '#1042#1110#1076#1084#1110#1090#1080#1090#1080' '#1074#1089#1110
    end
    object cxButton3: TcxButton
      Left = 347
      Top = 9
      Width = 97
      Height = 33
      BiDiMode = bdLeftToRight
      Caption = #1044#1088#1091#1082
      ParentBiDiMode = False
      PopupAlignment = paCenter
      TabOrder = 1
      WordWrap = True
    end
    object cxLabel1: TcxLabel
      Left = 22
      Top = 16
      Caption = #1054#1089#1086#1073#1086#1074#1080#1081' '#1088#1072#1093#1091#1085#1086#1082
    end
    object cxLabel3: TcxLabel
      Left = 126
      Top = 16
      Caption = 'sch'
    end
    object cxCheckBox1: TcxCheckBox
      Left = 4
      Top = 36
      TabOrder = 4
    end
    object cxLabel4: TcxLabel
      Left = 126
      Top = 36
      Caption = 'fio'
    end
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 65
    Width = 515
    Height = 276
    Align = alClient
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    ExplicitTop = 63
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSOBOR
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting, dcoGroupsAlwaysExpanded, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
      DataController.Summary.DefaultGroupSummaryItems = <>
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
          Column = cxGridDBTableView1SALREP
        end
        item
          Kind = skSum
          Column = cxGridDBTableView1SAL
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.CellEndEllipsis = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Preview.AutoHeight = False
      object cxGridDBTableView1CH: TcxGridDBColumn
        Caption = #1042#1080#1073#1088'.'
        DataBinding.FieldName = 'CH'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayChecked = '1'
        Properties.DisplayUnchecked = '0'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 31
      end
      object cxGridDBTableView1NAIM: TcxGridDBColumn
        Caption = #1055#1086#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'NAIM'
        Options.Editing = False
      end
      object cxGridDBTableView1SAL: TcxGridDBColumn
        Caption = #1041#1086#1088#1075
        DataBinding.FieldName = 'SAL'
        Options.Editing = False
        Width = 135
      end
      object cxGridDBTableView1SALREP: TcxGridDBColumn
        Caption = #1047#1084#1110#1085#1080#1090#1080' '#1073#1086#1088#1075
        DataBinding.FieldName = 'SALREP'
        Width = 133
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object IBOBOR: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    InsertSQL.Strings = (
      '')
    RefreshSQL.Strings = (
      'Select *'
      'from obor '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select obor.sal, obor.sal salrep,wid.naim, '
      'case when (COALESCE(obor.sal,0)<>0) then 1 else 0 end as ch '
      'from obor'
      'left join wid on (wid.wid=obor.wid) '
      'where obor.period=:dt and obor.schet=:sch and obor.upd=1')
    ModifySQL.Strings = (
      '')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_OBOR_ID'
    Left = 208
    Top = 177
    object IBOBORSAL: TFloatField
      FieldName = 'SAL'
      Origin = '"OBOR"."SAL"'
    end
    object IBOBORSALREP: TFloatField
      FieldName = 'SALREP'
      Origin = '"OBOR"."SAL"'
    end
    object IBOBORNAIM: TIBStringField
      FieldName = 'NAIM'
      Origin = '"WID"."NAIM"'
      Size = 15
    end
    object IBOBORCH: TIntegerField
      FieldName = 'CH'
      ProviderFlags = []
    end
  end
  object DSOBOR: TDataSource
    DataSet = IBOBOR
    Left = 208
    Top = 225
  end
end
