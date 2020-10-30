object Form21: TForm21
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Form21'
  ClientHeight = 475
  ClientWidth = 658
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
    Width = 658
    Height = 175
    Align = alClient
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 0
    WordWrap = False
    ExplicitWidth = 1111
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 658
    Height = 281
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 1111
    object ButtonOK: TButton
      Left = 535
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
      Left = 535
      Top = 49
      Width = 113
      Height = 33
      Caption = #1042#1110#1076#1082#1088#1080#1090#1080' '#1092#1072#1081#1083
      TabOrder = 1
      OnClick = ButtonOpenClick
    end
    object GroupBox1: TGroupBox
      Left = -2
      Top = 14
      Width = 515
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
        Left = 344
        Top = 16
        Width = 161
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = #1042#1080#1073#1077#1088#1110#1090#1100' '#1089#1090#1086#1074#1073#1077#1094#1100' '#1079#1072#1087#1086#1074#1085#1077#1085#1085#1103
        WordWrap = True
      end
      object Label1: TLabel
        Left = 263
        Top = 76
        Width = 42
        Height = 13
        Caption = #1055#1077#1088#1110#1086#1076' '#1079
      end
      object Label2: TLabel
        Left = 263
        Top = 122
        Width = 12
        Height = 13
        Caption = #1087#1086
      end
      object Label6: TLabel
        Left = 367
        Top = 76
        Width = 42
        Height = 13
        Caption = #1055#1077#1088#1110#1086#1076' '#1079
      end
      object Label7: TLabel
        Left = 367
        Top = 122
        Width = 12
        Height = 13
        Caption = #1087#1086
      end
      object Label8: TLabel
        Left = 176
        Top = 16
        Width = 161
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = #1042#1080#1073#1077#1088#1110#1090#1100' '#1089#1090#1086#1074#1073#1077#1094#1100' '#1082#1086#1076' '#1087#1086#1089#1083#1091#1075#1080
        WordWrap = True
      end
      object cxComboBox2: TcxComboBox
        Left = 367
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
        Width = 200
        Height = 17
        Caption = #1053#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103' - '#1086#1087#1083#1072#1090#1072' '#1079#1072' '#1087#1077#1088#1110#1086#1076
        TabOrder = 4
        OnClick = RadioButton3Click
      end
      object RadioButton2: TRadioButton
        Left = 8
        Top = 74
        Width = 201
        Height = 17
        Caption = #1041#1086#1088#1075' ('#1085#1072' '#1087#1077#1088#1110#1086#1076') ('#1085#1072' '#1087#1077#1088#1096#1077' '#1095#1080#1089#1083#1086')'
        TabOrder = 5
        OnClick = RadioButton2Click
      end
      object cxLookupComboBox1: TcxLookupComboBox
        Left = 263
        Top = 95
        Properties.KeyFieldNames = 'PERIOD'
        Properties.ListColumns = <
          item
            FieldName = 'PERIOD'
          end>
        Properties.ListSource = Form1.DSPERIOD
        TabOrder = 6
        Width = 98
      end
      object cxLookupComboBox2: TcxLookupComboBox
        Left = 263
        Top = 141
        Properties.KeyFieldNames = 'PERIOD'
        Properties.ListColumns = <
          item
            FieldName = 'PERIOD'
          end>
        Properties.ListSource = Form1.DSPERIOD
        TabOrder = 7
        Width = 98
      end
      object cxLookupComboBox3: TcxLookupComboBox
        Left = 367
        Top = 95
        Properties.KeyFieldNames = 'PERIOD'
        Properties.ListColumns = <
          item
            FieldName = 'PERIOD'
          end>
        Properties.ListSource = Form1.DSPERIOD
        TabOrder = 8
        Width = 98
      end
      object cxLookupComboBox4: TcxLookupComboBox
        Left = 367
        Top = 141
        Properties.KeyFieldNames = 'PERIOD'
        Properties.ListColumns = <
          item
            FieldName = 'PERIOD'
          end>
        Properties.ListSource = Form1.DSPERIOD
        TabOrder = 9
        Width = 98
      end
      object cxComboBox3: TcxComboBox
        Left = 199
        Top = 35
        TabOrder = 10
        Width = 121
      end
      object RadioButton1: TRadioButton
        Left = 9
        Top = 166
        Width = 248
        Height = 17
        Caption = #1041#1086#1088#1075' ('#1085#1072' '#1087#1077#1088#1096#1077' '#1095#1080#1089#1083#1086') - '#1054#1087#1083#1072#1090#1072' ('#1079#1072' '#1087#1077#1088#1110#1086#1076')'
        TabOrder = 11
        OnClick = RadioButton1Click
      end
    end
    object cxProgressBar1: TcxProgressBar
      Left = 16
      Top = 242
      TabOrder = 3
      Width = 536
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 456
    Width = 658
    Height = 19
    Panels = <>
    ExplicitWidth = 1111
  end
  object CheckBox1: TCheckBox
    Left = 261
    Top = 182
    Width = 240
    Height = 17
    Caption = #1074#1110#1076#1108#1084#1085#1080#1081' '#1088#1077#1079#1091#1083#1100#1090#1072#1090' '#1079#1072#1087#1086#1074#1085#1102#1074#1072#1090#1080' '#1103#1082' '#1085#1091#1083#1100
    TabOrder = 3
  end
  object FileOpenDialog: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = #1042#1089#1077' '#1092#1072#1081#1083#1099
        FileMask = '*.*'
      end>
    Options = []
    Left = 48
    Top = 288
  end
  object ADOQuery: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 216
    Top = 288
  end
  object ADODataSet1: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from 36188893.dbf'
    Parameters = <>
    Left = 120
    Top = 344
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 120
    Top = 392
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select ob.schet as sch, lg.cod, ob.sal as summa from vw_obor ob'
      'left join lg_cod lg on ob.wid=lg.wid')
    Left = 288
    Top = 288
    object IBQuery1SCH: TIBStringField
      FieldName = 'SCH'
      Origin = '"VW_OBOR"."SCHET"'
      Size = 10
    end
    object IBQuery1COD: TIntegerField
      FieldName = 'COD'
      Origin = '"LG_COD"."COD"'
    end
    object IBQuery1SUMMA: TFloatField
      FieldName = 'SUMMA'
      Origin = '"VW_OBOR"."SAL"'
    end
  end
  object DSIBQuery1: TDataSource
    DataSet = IBQuery1
    Left = 288
    Top = 344
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dBASE' +
      ' Files;Initial Catalog=d:\WORK\KOMUN\'
    LoginPrompt = False
    Left = 120
    Top = 296
  end
end
