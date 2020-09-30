object Form21: TForm21
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Form21'
  ClientHeight = 475
  ClientWidth = 1111
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MemoLog: TMemo
    Left = 0
    Top = 281
    Width = 1111
    Height = 175
    Align = alClient
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 0
    WordWrap = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1111
    Height = 281
    Align = alTop
    TabOrder = 1
    object Label5: TLabel
      Left = 16
      Top = 223
      Width = 488
      Height = 13
      Caption = 
        '* '#1047#1072#1073#1086#1088#1075#1086#1074#1072#1085#1110#1089#1090#1100' '#1088#1086#1079#1088#1072#1093#1086#1074#1091#1108#1090#1100#1089#1103' '#1103#1082' '#1089#1091#1084#1072' '#1085#1072#1088#1072#1093#1091#1074#1072#1085#1100' ('#1079#1072' '#1087#1077#1088#1110#1086#1076'), ' +
        #1084#1110#1085#1091#1089' '#1089#1091#1084#1072' '#1086#1087#1083#1072#1090#1080' ('#1079#1072' '#1087#1077#1088#1110#1086#1076')'
    end
    object ButtonOK: TButton
      Left = 439
      Top = 125
      Width = 113
      Height = 34
      Caption = #1047#1072#1087#1086#1074#1085#1080#1090#1080
      Default = True
      Enabled = False
      TabOrder = 0
      OnClick = ButtonOKClick
    end
    object ButtonOpen: TButton
      Left = 439
      Top = 48
      Width = 113
      Height = 33
      Caption = #1042#1110#1076#1082#1088#1080#1090#1080' '#1092#1072#1081#1083
      TabOrder = 1
      OnClick = ButtonOpenClick
    end
    object GroupBox1: TGroupBox
      Left = -2
      Top = 14
      Width = 425
      Height = 203
      Caption = ' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1079#1072#1087#1086#1074#1085#1077#1085#1085#1103' DBF '#1092#1072#1081#1083#1091
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label3: TLabel
        Left = 8
        Top = 16
        Width = 154
        Height = 13
        Caption = #1042#1080#1073#1077#1088#1110#1090#1100' '#1089#1090#1086#1074#1073#1077#1094#1100' '#1086#1089'.'#1088#1072#1093#1091#1085#1082#1091
      end
      object Label4: TLabel
        Left = 183
        Top = 16
        Width = 161
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = #1042#1080#1073#1077#1088#1110#1090#1100' '#1089#1090#1086#1074#1073#1077#1094#1100' '#1079#1072#1087#1086#1074#1085#1077#1085#1085#1103
        WordWrap = True
      end
      object Label1: TLabel
        Left = 183
        Top = 76
        Width = 42
        Height = 13
        Caption = #1055#1077#1088#1110#1086#1076' '#1079
      end
      object Label2: TLabel
        Left = 183
        Top = 122
        Width = 12
        Height = 13
        Caption = #1087#1086
      end
      object Label6: TLabel
        Left = 287
        Top = 76
        Width = 42
        Height = 13
        Caption = #1055#1077#1088#1110#1086#1076' '#1079
      end
      object Label7: TLabel
        Left = 287
        Top = 122
        Width = 12
        Height = 13
        Caption = #1087#1086
      end
      object cxComboBox2: TcxComboBox
        Left = 200
        Top = 35
        TabOrder = 0
        Width = 121
      end
      object cxComboBox1: TcxComboBox
        Left = 16
        Top = 35
        TabOrder = 1
        Width = 121
      end
      object RadioButton4: TRadioButton
        Left = 9
        Top = 143
        Width = 153
        Height = 17
        Caption = #1054#1087#1083#1072#1090#1072' '#1079#1072' '#1087#1077#1088#1110#1086#1076
        TabOrder = 2
        OnClick = RadioButton4Click
      end
      object RadioButton5: TRadioButton
        Left = 9
        Top = 120
        Width = 153
        Height = 17
        Caption = #1053#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103' '#1079#1072' '#1087#1077#1088#1110#1086#1076
        TabOrder = 3
        OnClick = RadioButton5Click
      end
      object RadioButton3: TRadioButton
        Left = 9
        Top = 97
        Width = 153
        Height = 17
        Caption = #1047#1072#1073#1086#1088#1075#1086#1074#1072#1085#1110#1089#1090#1100' '#1079#1072' '#1087#1077#1088#1110#1086#1076
        TabOrder = 4
        OnClick = RadioButton3Click
      end
      object RadioButton2: TRadioButton
        Left = 8
        Top = 74
        Width = 169
        Height = 17
        Caption = #1041#1086#1088#1075' ('#1085#1072' '#1087#1077#1088#1110#1086#1076')'
        TabOrder = 5
        OnClick = RadioButton2Click
      end
      object cxLookupComboBox1: TcxLookupComboBox
        Left = 183
        Top = 95
        Properties.KeyFieldNames = 'ddd'
        Properties.ListColumns = <
          item
            FieldName = 'ddd'
          end>
        Properties.ListSource = Form1.DSPERIOD
        TabOrder = 6
        Width = 98
      end
      object cxLookupComboBox2: TcxLookupComboBox
        Left = 183
        Top = 141
        Properties.KeyFieldNames = 'ddd'
        Properties.ListColumns = <
          item
            FieldName = 'ddd'
          end>
        Properties.ListSource = Form1.DSPERIOD
        TabOrder = 7
        Width = 98
      end
      object cxLookupComboBox3: TcxLookupComboBox
        Left = 287
        Top = 95
        Properties.KeyFieldNames = 'ddd'
        Properties.ListColumns = <
          item
            FieldName = 'ddd'
          end>
        Properties.ListSource = Form1.DSPERIOD
        TabOrder = 8
        Width = 98
      end
      object cxLookupComboBox4: TcxLookupComboBox
        Left = 287
        Top = 141
        Properties.KeyFieldNames = 'ddd'
        Properties.ListColumns = <
          item
            FieldName = 'ddd'
          end>
        Properties.ListSource = Form1.DSPERIOD
        TabOrder = 9
        Width = 98
      end
    end
    object cxGrid1: TcxGrid
      Left = 655
      Top = 49
      Width = 456
      Height = 200
      TabOrder = 3
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DetailKeyFieldNames = 'AbonentId'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1AbonentId: TcxGridDBColumn
          DataBinding.FieldName = 'AbonentId'
        end
        object cxGrid1DBTableView1sch: TcxGridDBColumn
          DataBinding.FieldName = 'sch'
        end
        object cxGrid1DBTableView1summa: TcxGridDBColumn
          DataBinding.FieldName = 'summa'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxProgressBar1: TcxProgressBar
      Left = 16
      Top = 242
      TabOrder = 4
      Width = 536
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 456
    Width = 1111
    Height = 19
    Panels = <
      item
        Text = 'RenamePack v1.4'
        Width = 120
      end
      item
        Text = #1044#1086#1094#1077#1085#1082#1086' '#1056'.'#1042'. dotsenko.rv@gmail.com'
        Width = 50
      end>
  end
  object CheckBox1: TCheckBox
    Left = 183
    Top = 188
    Width = 240
    Height = 17
    Caption = #1074#1110#1076#1108#1084#1085#1080#1081' '#1088#1077#1079#1091#1083#1100#1090#1072#1090' '#1079#1072#1087#1086#1074#1085#1102#1074#1072#1090#1080' '#1103#1082' '#1085#1091#1083#1100
    TabOrder = 3
  end
  object FileOpenDialog: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'dbf-'#1092#1072#1081#1083
        FileMask = '*.dbf'
      end
      item
        DisplayName = #1042#1089#1077' '#1092#1072#1081#1083#1099
        FileMask = '*.*'
      end>
    Options = []
    Left = 64
    Top = 280
  end
  object ADOQuery: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 184
    Top = 280
  end
  object ADOConnection: TADOConnection
    ConnectionString = 
      #39'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dBAS' +
      'E Files;Initial Catalog=G:\!'#1055#1059#1055'\!IN - !'#1055#1059#1055'\'#1059#1057#1047#1053'\11\;'
    LoginPrompt = False
    Left = 120
    Top = 280
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection
    CursorType = ctStatic
    CommandText = 'select * from 42132581.dbf'
    Parameters = <>
    Left = 112
    Top = 336
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 112
    Top = 384
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select schet as sch, sal as summa from vw_obor')
    Left = 264
    Top = 296
    object IBQuery1SCH: TIBStringField
      FieldName = 'SCH'
      Origin = '"VW_OBOR"."SCHET"'
      Size = 10
    end
    object IBQuery1SUMMA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SUMMA'
      Origin = '"VW_OBOR"."BGEND"'
      ReadOnly = True
    end
  end
  object DSQuery1: TDataSource
    DataSet = IBQuery1
    Left = 272
    Top = 344
  end
end
