object Form25: TForm25
  Left = 0
  Top = 0
  Caption = 'Form25'
  ClientHeight = 211
  ClientWidth = 419
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel3: TcxLabel
    Left = 163
    Top = 55
    Caption = #1042#1080#1073#1077#1088#1110#1090#1100' '#1087#1077#1088#1110#1086#1076
  end
  object cxLookupComboBox1: TcxLookupComboBox
    Left = 163
    Top = 78
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
    TabOrder = 1
    Width = 129
  end
  object cxLabel1: TcxLabel
    Left = 187
    Top = 23
    Caption = 'Label1'
    Properties.Alignment.Horz = taCenter
    Properties.Orientation = cxoTop
    AnchorX = 205
  end
  object cxButton1: TcxButton
    Left = 129
    Top = 128
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 3
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 210
    Top = 128
    Width = 75
    Height = 25
    Caption = #1042#1110#1076#1084#1110#1085#1072
    TabOrder = 4
    OnClick = cxButton2Click
  end
  object cxLookupComboBox2: TcxLookupComboBox
    Left = 28
    Top = 78
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
    TabOrder = 5
    Width = 129
  end
  object frxReport1: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1047#1072' '#1079#1072#1084#1086#1074#1095#1091#1074#1072#1085#1085#1103#1084
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39025.734005347200000000
    ReportOptions.LastChange = 45973.033182511570000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo32OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '                                           '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 76
    Top = 23
    Datasets = <
      item
        DataSet = Form37.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'schet'
        Value = #39#39
      end
      item
        Name = 'fio'
        Value = #39#39
      end
      item
        Name = 'ul'
        Value = #39#39
      end
      item
        Name = 'dom'
        Value = #39#39
      end
      item
        Name = 'koli_k'
        Value = '0'
      end
      item
        Name = 'plos_bb'
        Value = #39#39
      end
      item
        Name = 'koli_p'
        Value = '0'
      end
      item
        Name = 'dolg_dt'
        Value = #39#39
      end
      item
        Name = 'dolg'
        Value = '0'
      end
      item
        Name = 'dolg_hv'
        Value = '0'
      end
      item
        Name = 'dolg_ot'
        Value = '0'
      end
      item
        Name = 'dolg_an'
        Value = '0'
      end
      item
        Name = 'dolg_kv'
        Value = '0'
      end
      item
        Name = 'dolg_el'
        Value = '0'
      end
      item
        Name = 'opl_dt'
        Value = '0'
      end
      item
        Name = 'opl'
        Value = '0'
      end
      item
        Name = 'dt'
        Value = #39#39
      end
      item
        Name = 'kv'
        Value = #39#39
      end
      item
        Name = 'buhg'
        Value = #39#39
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        DataSet = Form37.frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1NAIM: TfrxMemoView
          Left = 298.582870000000000000
          Width = 241.889920000000000000
          Height = 22.677180000000000000
          DataField = 'NAIM'
          DataSet = Form37.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."NAIM"]')
          ParentFont = False
        end
        object frxDBDataset1SALREP: TfrxMemoView
          Left = 540.472790000000000000
          Width = 173.858380000000000000
          Height = 22.677180000000000000
          DataField = 'SALREP'
          DataSet = Form37.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."SALREP"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 230.551330000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."SCHET"'
        object Memo21: TfrxMemoView
          Left = 60.472480000000000000
          Top = 185.196970000000000000
          Width = 302.362400000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1042#1057#1068#1054#1043#1054' '#1087#1086' '#1082#1086#1084#1091#1085#1072#1083#1100#1085#1080#1084' '#1087#1086#1089#1083#1091#1075#1072#1084':')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 370.393940000000000000
          Top = 185.196970000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[iif(Int(<salrep>)<>0,Int(<salrep>),IIF(<salrep><0,'#39'-0'#39','#39'0'#39'))] ')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 442.205010000000000000
          Top = 185.196970000000000000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1075#1088#1085)
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 476.220780000000000000
          Top = 185.196970000000000000
          Width = 52.913420000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<salrep><>0,IIF(abs((<salrep>-Int(<salrep>))*100)>9,Round(a' +
              'bs((<salrep>-Int(<salrep>))*100)),'#39'0'#39'+inttostr(Round(abs((<salre' +
              'p>-Int(<salrep>))*100)))),'#39'00'#39')]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 529.134200000000000000
          Top = 185.196970000000000000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1082#1086#1087)
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 60.472480000000000000
          Top = 207.874150000000000000
          Width = 45.354360000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1074' '#1090'.'#1095'.')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 154.910336270000000000
          Top = 3.779530000000000000
          Width = 279.685220000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1042#1080#1087#1080#1089#1082#1072' '#1079' '#1086#1089#1086#1073#1086#1074#1086#1075#1086' '#1088#1072#1093#1091#1085#1082#1091)
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 60.472480000000000000
          Top = 41.574830000000000000
          Width = 147.401670000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1050#1074#1072#1088#1090#1080#1088#1086#1085#1072#1081#1084#1072#1095)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 60.472480000000000000
          Top = 68.031540000000000000
          Width = 181.417440000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1055#1088#1086#1078#1080#1074#1072#1108' '#1079#1072' '#1072#1076#1088#1077#1089#1086#1102' :')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 241.889920000000000000
          Top = 68.031540000000000000
          Width = 430.866420000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ul]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 211.653680000000000000
          Top = 41.574830000000000000
          Width = 461.102660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fio]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 60.472480000000000000
          Top = 94.488250000000000000
          Width = 192.756030000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1050#1074#1072#1088#1090#1080#1088#1072' '#1089#1082#1083#1072#1076#1072#1108#1090#1100#1089#1103' '#1110#1079)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 253.228510000000000000
          Top = 94.488250000000000000
          Width = 45.354360000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[koli_k]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 298.582870000000000000
          Top = 94.488250000000000000
          Width = 215.433210000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1082#1110#1084#1085#1072#1090', '#1087#1083#1086#1097#1072' ')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 574.488560000000000000
          Top = 94.488250000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1084'. '#1082#1074'.')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 514.016080000000000000
          Top = 94.488250000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[plos_ob]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 60.472480000000000000
          Top = 120.944960000000000000
          Width = 158.740260000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1057#1110#1084#39#1103' '#1089#1082#1083#1072#1076#1072#1108#1090#1100#1089#1103' '#1110#1079)
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 219.212740000000000000
          Top = 120.944960000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[koli_p]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 275.905690000000000000
          Top = 120.944960000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1095#1086#1083#1086#1074#1110#1082)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 60.472480000000000000
          Top = 154.960730000000000000
          Width = 211.653680000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1047#1072#1073#1088#1075#1086#1074#1072#1085#1110#1089#1090#1100' '#1089#1090#1072#1085#1086#1084' '#1085#1072)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 275.905690000000000000
          Top = 154.960730000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dolg_dt]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 404.409710000000000000
          Top = 154.960730000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1089#1082#1083#1072#1076#1072#1108)
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 438.425480000000000000
          Top = 3.779530000000000000
          Width = 173.858380000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[schet]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 120.944960000000000000
        ParentFont = False
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        object Memo37: TfrxMemoView
          Left = 60.472480000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1080)
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 166.299320000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[opl_dt]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 294.803340000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1089#1091#1084#1072' '#1086#1087#1083#1072#1090#1080)
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 400.630180000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[iif(Int(<opl>)<>0,Int(<opl>),IIF(<opl><0,'#39'-0'#39','#39'0'#39'))] ')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 472.441250000000000000
          Top = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1075#1088#1085)
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 506.457020000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<opl><>0,IIF(abs((<opl>-Int(<opl>))*100)>9,Round(abs((<opl>' +
              '-Int(<opl>))*100)),'#39'0'#39'+inttostr(Round(abs((<opl>-Int(<opl>))*100' +
              ')))),'#39#39')]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 559.370440000000000000
          Top = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1082#1086#1087)
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 60.472480000000000000
          Top = 26.456710000000000000
          Width = 430.866420000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1042#1080#1087#1080#1089#1082#1072' '#1074#1080#1076#1072#1085#1072' '#1076#1083#1103' '#1087#1088#1077#1076#39#1103#1074#1083#1077#1085#1085#1103' '#1087#1086' '#1084#1110#1089#1094#1102' '#1074#1080#1084#1086#1075#1080'.')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 173.858380000000000000
          Top = 49.133890000000000000
          Width = 162.519790000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1053#1072#1095#1072#1083#1100#1085#1080#1082)
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 173.858380000000000000
          Top = 83.149660000000000000
          Width = 162.519790000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1041#1091#1093#1075#1072#1083#1090#1077#1088)
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 60.472480000000000000
          Top = 83.149660000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[dt]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 347.716760000000000000
          Top = 52.913420000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
        end
        object Memo98: TfrxMemoView
          Left = 347.716760000000000000
          Top = 86.929190000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
        end
        object Memo100: TfrxMemoView
          Left = 544.252320000000000000
          Top = 86.929190000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Buhg]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 7.559060000000000000
          Top = 120.944960000000000000
          Width = 702.992580000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 714.331170000000000000
        Width = 718.110700000000000000
        DataSet = Form37.frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 298.582870000000000000
          Width = 241.889920000000000000
          Height = 22.677180000000000000
          DataField = 'NAIM'
          DataSet = Form37.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."NAIM"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 540.472790000000000000
          Width = 173.858380000000000000
          Height = 22.677180000000000000
          DataField = 'SALREP'
          DataSet = Form37.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."SALREP"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 230.551330000000000000
        Top = 461.102660000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."SCHET"'
        object Memo7: TfrxMemoView
          Left = 60.472480000000000000
          Top = 185.196970000000000000
          Width = 302.362400000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1042#1057#1068#1054#1043#1054' '#1087#1086' '#1082#1086#1084#1091#1085#1072#1083#1100#1085#1080#1084' '#1087#1086#1089#1083#1091#1075#1072#1084':')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 370.393940000000000000
          Top = 185.196970000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[iif(Int(<salrep>)<>0,Int(<salrep>),IIF(<salrep><0,'#39'-0'#39','#39'0'#39'))] ')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 442.205010000000000000
          Top = 185.196970000000000000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1075#1088#1085)
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 476.220780000000000000
          Top = 185.196970000000000000
          Width = 52.913420000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<salrep><>0,IIF(abs((<salrep>-Int(<salrep>))*100)>9,Round(a' +
              'bs((<salrep>-Int(<salrep>))*100)),'#39'0'#39'+inttostr(Round(abs((<salre' +
              'p>-Int(<salrep>))*100)))),'#39'00'#39')]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 529.134200000000000000
          Top = 185.196970000000000000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1082#1086#1087)
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 60.472480000000000000
          Top = 207.874150000000000000
          Width = 45.354360000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1074' '#1090'.'#1095'.')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 154.910336270000000000
          Top = 3.779530000000000000
          Width = 279.685220000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1042#1080#1087#1080#1089#1082#1072' '#1079' '#1086#1089#1086#1073#1086#1074#1086#1075#1086' '#1088#1072#1093#1091#1085#1082#1091)
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 60.472480000000000000
          Top = 41.574830000000000000
          Width = 147.401670000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1050#1074#1072#1088#1090#1080#1088#1086#1085#1072#1081#1084#1072#1095)
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 60.472480000000000000
          Top = 68.031540000000000000
          Width = 181.417440000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1055#1088#1086#1078#1080#1074#1072#1108' '#1079#1072' '#1072#1076#1088#1077#1089#1086#1102' :')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 241.889920000000000000
          Top = 68.031540000000000000
          Width = 430.866420000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ul]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 211.653680000000000000
          Top = 41.574830000000000000
          Width = 461.102660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fio]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 60.472480000000000000
          Top = 94.488250000000000000
          Width = 192.756030000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1050#1074#1072#1088#1090#1080#1088#1072' '#1089#1082#1083#1072#1076#1072#1108#1090#1100#1089#1103' '#1110#1079)
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 253.228510000000000000
          Top = 94.488250000000000000
          Width = 45.354360000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[koli_k]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 298.582870000000000000
          Top = 94.488250000000000000
          Width = 215.433210000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1082#1110#1084#1085#1072#1090', '#1087#1083#1086#1097#1072' ')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 574.488560000000000000
          Top = 94.488250000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1084'. '#1082#1074'.')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 514.016080000000000000
          Top = 94.488250000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[plos_ob]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 60.472480000000000000
          Top = 120.944960000000000000
          Width = 158.740260000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1057#1110#1084#39#1103' '#1089#1082#1083#1072#1076#1072#1108#1090#1100#1089#1103' '#1110#1079)
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 219.212740000000000000
          Top = 120.944960000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[koli_p]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 275.905690000000000000
          Top = 120.944960000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1095#1086#1083#1086#1074#1110#1082)
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 60.472480000000000000
          Top = 154.960730000000000000
          Width = 211.653680000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1047#1072#1073#1088#1075#1086#1074#1072#1085#1110#1089#1090#1100' '#1089#1090#1072#1085#1086#1084' '#1085#1072)
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 275.905690000000000000
          Top = 154.960730000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dolg_dt]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 404.409710000000000000
          Top = 154.960730000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1089#1082#1083#1072#1076#1072#1108)
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 438.425480000000000000
          Top = 3.779530000000000000
          Width = 173.858380000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[schet]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 120.944960000000000000
        ParentFont = False
        Top = 759.685530000000000000
        Width = 718.110700000000000000
        object Memo60: TfrxMemoView
          Left = 60.472480000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1080)
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 166.299320000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[opl_dt]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 294.803340000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1089#1091#1084#1072' '#1086#1087#1083#1072#1090#1080)
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 400.630180000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[iif(Int(<opl>)<>0,Int(<opl>),IIF(<opl><0,'#39'-0'#39','#39'0'#39'))] ')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 472.441250000000000000
          Top = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1075#1088#1085)
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 506.457020000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<opl><>0,IIF(abs((<opl>-Int(<opl>))*100)>9,Round(abs((<opl>' +
              '-Int(<opl>))*100)),'#39'0'#39'+inttostr(Round(abs((<opl>-Int(<opl>))*100' +
              ')))),'#39#39')]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 559.370440000000000000
          Top = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1082#1086#1087)
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 60.472480000000000000
          Top = 26.456710000000000000
          Width = 430.866420000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1042#1080#1087#1080#1089#1082#1072' '#1074#1080#1076#1072#1085#1072' '#1076#1083#1103' '#1087#1088#1077#1076#39#1103#1074#1083#1077#1085#1085#1103' '#1087#1086' '#1084#1110#1089#1094#1102' '#1074#1080#1084#1086#1075#1080'.')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 173.858380000000000000
          Top = 49.133890000000000000
          Width = 162.519790000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1053#1072#1095#1072#1083#1100#1085#1080#1082)
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 173.858380000000000000
          Top = 83.149660000000000000
          Width = 162.519790000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1041#1091#1093#1075#1072#1083#1090#1077#1088)
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 60.472480000000000000
          Top = 83.149660000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[dt]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 347.716760000000000000
          Top = 52.913420000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
        end
        object Memo72: TfrxMemoView
          Left = 347.716760000000000000
          Top = 86.929190000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
        end
        object Memo73: TfrxMemoView
          Left = 544.252320000000000000
          Top = 86.929190000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Buhg]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SCHET=SCHET'
      'NUMB=NUMB'
      'FIO=FIO'
      'IM=IM'
      'OT=OT'
      'FIO_V=FIO_V'
      'IDCOD=IDCOD'
      'CEX=CEX'
      'TABN=TABN'
      'FIO_TABN=FIO_TABN'
      'LG_NOFAM=LG_NOFAM'
      'KOLI_LG=KOLI_LG'
      'KOLI_P=KOLI_P'
      'KOLI_PF=KOLI_PF'
      'KOLI_K=KOLI_K'
      'PLOS_BB=PLOS_BB'
      'PLOS_OB=PLOS_OB'
      'PRIV=PRIV'
      'ETAG=ETAG'
      'LGOTA=LGOTA'
      'LG_POSV=LG_POSV'
      'LG_SER=LG_SER'
      'LG_FIO=LG_FIO'
      'LG_DATE=LG_DATE'
      'LG_KAT=LG_KAT'
      'FL_CHERN=FL_CHERN'
      'FL_LIFTE=FL_LIFTE'
      'FL_LIFTO=FL_LIFTO'
      'FL_KLET=FL_KLET'
      'FL_MUSO=FL_MUSO'
      'FL_OSV=FL_OSV'
      'FL_UBOR=FL_UBOR'
      'FL_VENT=FL_VENT'
      'FL_ZIMA=FL_ZIMA'
      'FL_REM=FL_REM'
      'FL_DITM=FL_DITM'
      'FL_TUAL=FL_TUAL'
      'FL_NOLIFT=FL_NOLIFT'
      'FL_NOKAN=FL_NOKAN'
      'MAX_UD=MAX_UD'
      'NOM=NOM'
      'ORG=ORG'
      'D_DOG=D_DOG'
      'N_DOG=N_DOG'
      'ZAYA=ZAYA'
      'RESTR=RESTR'
      'NOTE=NOTE'
      'NOTE1=NOTE1'
      'FLAG=FLAG'
      'WOZW_OT_=WOZW_OT_'
      'TELEF=TELEF'
      'KL_UL=KL_UL'
      'ULNAIM=ULNAIM'
      'NOMDOM=NOMDOM'
      'NOMKV=NOMKV'
      'VAL=VAL'
      'LIFT=LIFT'
      'KL=KL'
      'UPD=UPD')
    DataSet = IBQuery1
    BCDToCurrency = False
    Left = 236
    Top = 7
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ORD=ORD'
      'WID=WID'
      'POSLUG=POSLUG'
      'SCHET=SCHET'
      'DOLG=DOLG')
    DataSet = IBQuery2
    BCDToCurrency = False
    Left = 300
    Top = 7
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from kart where schet=:sch')
    Left = 280
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sch'
        ParamType = ptUnknown
      end>
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select 1 as ord, wid, poslug, schet, round(COALESCE(dolg,0),2) d' +
        'olg from vw_obkr where schet=:sch and dolg>0 and period=:dat'
      'union all'
      
        'select 2 as ord, tt1.wid , tt1.poslug, tt1.schet, round((COALESC' +
        'E(tt1.dolg,0)-COALESCE(tt2.dolg,0)),2) dolg from vw_obkr tt1'
      
        'left join obor tt2 on (tt2.schet=tt1.schet and tt2.wid=tt1.wid a' +
        'nd tt2.period=dateadd(year, -3, :dat))'
      'where tt1.schet=:sch and tt1.dolg>0 and tt1.period=:dat'
      'union all'
      
        'select 3 as ord, tt1.wid , tt1.poslug, tt1.schet, round(COALESCE' +
        '(tt2.dolg,0),2) dolg from vw_obkr tt1'
      
        'left join obor tt2 on (tt2.schet=tt1.schet and tt2.wid=tt1.wid a' +
        'nd tt2.period=dateadd(year, -3, :dat))'
      'where tt1.schet=:sch and tt1.dolg>0 and tt1.period=:dat')
    Left = 328
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sch'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sch'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sch'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat'
        ParamType = ptUnknown
      end>
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from'
      '(select 2 as ord, wid,poslug,schet, fullnach, fullopl,'
      ' round((COALESCE(fullnach,0)-COALESCE(fullopl,0)),2)  as dolg'
      'from'
      '(select tt1.wid , tt1.poslug, tt1.schet,'
      'sum(tt1.fullnach) fullnach, sum(tt1.fullopl) fullopl'
      'from vw_obkr tt1'
      'where tt1.schet=:sch and tt1.period>=:dat1 and tt1.period<=:dat2'
      'group by schet, wid, poslug'
      '))'
      '')
    Left = 376
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sch'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat2'
        ParamType = ptUnknown
      end>
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ORD=ORD'
      'WID=WID'
      'POSLUG=POSLUG'
      'SCHET=SCHET'
      'DOLG=DOLG')
    DataSet = IBQuery3
    BCDToCurrency = False
    Left = 372
    Top = 7
  end
end
