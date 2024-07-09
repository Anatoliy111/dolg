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
        FieldName = 'PERIOD'
      end>
    Properties.ListSource = Form1.DSPERIOD
    TabOrder = 5
    Width = 129
  end
  object frxReport1: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43425.596407557900000000
    ReportOptions.LastChange = 45099.688815254630000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'function dt2str(dt:TDateTime):string;'
      'var d,m,y:integer;'
      'begin'
      '  result := inttostr(DayOf(dt))+'#39' '#39';'
      '  case MonthOf(dt) of'
      '    1:result:=result+'#39#1089#1110#1095#1085#1103' '#39';'
      '    2:result:=result+'#39#1083#1102#1090#1086#1075#1086' '#39';'
      '    3:result:=result+'#39#1073#1077#1088#1077#1079#1085#1103' '#39';'
      '    4:result:=result+'#39#1082#1074#1110#1090#1085#1103' '#39';'
      '    5:result:=result+'#39#1090#1088#1072#1074#1085#1103' '#39';'
      '    6:result:=result+'#39#1095#1077#1088#1074#1085#1103' '#39';'
      '    7:result:=result+'#39#1083#1080#1087#1085#1103' '#39';'
      '    8:result:=result+'#39#1089#1077#1088#1087#1085#1103' '#39';'
      '    9:result:=result+'#39#1074#1077#1088#1077#1089#1085#1103' '#39';'
      '    10:result:=result+'#39#1078#1086#1074#1090#1085#1103' '#39';'
      '    11:result:=result+'#39#1083#1080#1089#1090#1086#1087#1072#1076#1072' '#39';'
      '    12:result:=result+'#39#1075#1088#1091#1076#1085#1103' '#39';'
      '  end;'
      '  result := result + inttostr(yearof(dt))+'#39' p.'#39';'
      'end;  '
      '  '
      'function DateToPropis(dDate: Extended):string;'
      'var                                         '
      ' d, m, y : word;'
      ' mess:string;'
      'begin'
      ''
      '  if DateToStr(dDate)='#39'30.12.1899'#39' then'
      '     Result := '#39'____ ________ 20 __ '#1088'.'#39'  '
      '  else'
      '  begin            '
      '  '
      '       DecodeDate(dDate,y,m,d);'
      ''
      '       case m of'
      '        1: mess:='#39#1089#1110#1095#1085#1103#39';'
      '        2: mess:='#39#1083#1102#1090#1086#1075#1086#39';'
      '        3: mess:='#39#1073#1077#1088#1077#1079#1085#1103#39';'
      '        4: mess:='#39#1082#1074#1110#1090#1085#1103#39';'
      '        5: mess:='#39#1090#1088#1072#1074#1085#1103#39';'
      '        6: mess:='#39#1095#1077#1088#1074#1085#1103#39';'
      '        7: mess:='#39#1083#1080#1087#1085#1103#39';'
      '        8: mess:='#39#1089#1077#1088#1087#1085#1103#39';'
      '        9: mess:='#39#1074#1077#1088#1077#1089#1085#1103#39';'
      '        10: mess:='#39#1078#1086#1074#1090#1085#1103#39';'
      '        11: mess:='#39#1083#1080#1089#1090#1086#1087#1072#1076#1072#39';'
      '        12: mess:='#39#1075#1088#1091#1076#1085#1103#39';'
      '       end;'
      ''
      
        '        Result := IntToStr(d) + '#39' '#39' + mess + '#39' '#39' + IntToStr(y) +' +
        ' '#39' '#1088'.'#39';'
      
        '      //  Result := Format("%.2d %s %.4d", [d, MonthNames[mess],' +
        ' y]);              '
      '  end;                  '
      'end;  '
      ''
      'function textplos(kv:string;koli_k:double;plos:double):string;'
      'begin'
      '  if (kv<>'#39#39') then'
      
        '    result:='#39#1050#1074#1072#1088#1090#1080#1088#1072' '#1089#1082#1083#1072#1076#1072#1108#1090#1100#1089#1103' '#1079#39'                            ' +
        '       '
      '  else            '
      '    result:='#39#1041#1091#1076#1080#1085#1086#1082' '#1089#1082#1083#1072#1076#1072#1108#1090#1100#1089#1103' '#1079#39';'
      '      '
      '  if (koli_k<>0) then'
      
        '    result:=result+'#39' '#39'+floattostr(koli_k)+'#39' '#1082#1110#1084#1085#1072#1090','#39';           ' +
        '                                '
      ''
      '  if (plos<>0) then'
      '     result:=result+'#39' '#1087#1083#1086#1097#1072' '#39'+FloatToStr(plos);'
      ''
      '  if (int(plos)=0) and (int(koli_k)=0) then'
      '     result:='#39#39';        '
      '  result := result;'
      'end;'
      ''
      'procedure GroupHeader1OnBeforePrint(Sender: TfrxComponent);'
      'var dt1: string;                              '
      'begin'
      '  if Engine.FinalPass then'
      '  begin              '
      '//     Memo4.Text := '#39'Sum: '#39' + Get(<frxDBDataset2."ORD">);'
      '   //  Memo4.Value :=Get(<frxDBDataset2."ORD">);'
      '                '
      '  if (<frxDBDataset2."ORD">=1) then'
      
        '    Memo4.Text :='#39#1047#1072#1073#1086#1088#1075#1086#1074#1072#1085#1110#1089#1090#1100' '#1079#1072' '#1087#1077#1088#1110#1086#1076' '#1079' 1 '#1078#1086#1074#1090#1085#1103' 2015 '#1088'. '#1087#1086 +
        ' '#39'+DateToPropis(<datemes1>)+'#39' '#1089#1082#1083#1072#1076#1072#1108'  '#1074#1089#1100#1086#1075#1086' '#1087#1086' '#1082#1086#1084#1091#1085#1072#1083#1100#1085#1080#1084' '#1087#1086#1089 +
        #1083#1091#1075#1072#1084': '#39'+Format('#39'%2.2f'#39',[Get(<frxDBDataset2."ORD">)])+'#39' '#1075#1088#1085'.,  '#1074 +
        ' '#1090#1086#1084#1091' '#1095#1080#1089#1083#1110':'#39';  '
      
        '//    Memo4.Text :='#39#1047#1072#1073#1086#1088#1075#1086#1074#1072#1085#1110#1089#1090#1100' '#1079#1072' '#1087#1077#1088#1110#1086#1076' '#1079' '#39'+DateToPropis(<d' +
        'atemes4>)+'#39' '#1087#1086' '#39'+DateToPropis(<datemes1>)+'#39' '#1089#1082#1083#1072#1076#1072#1108'  '#1074#1089#1100#1086#1075#1086' '#1087#1086' '#1082 +
        #1086#1084#1091#1085#1072#1083#1100#1085#1080#1084' '#1087#1086#1089#1083#1091#1075#1072#1084': '#39'+Format('#39'%2.2f'#39',[Get(<frxDBDataset2."ORD">' +
        ')])+'#39' '#1075#1088#1085'.,  '#1074' '#1090#1086#1084#1091' '#1095#1080#1089#1083#1110':'#39';  '
      '  '
      '  if (<frxDBDataset2."ORD">=2) then'
      
        '    Memo4.Text:='#39#1047#1072#1073#1086#1088#1075#1086#1074#1072#1085#1110#1089#1090#1100' '#1079#1072' '#1087#1077#1088#1110#1086#1076'  '#1079' '#39'+DateToPropis(<dat' +
        'emes2>)+'#39' '#1087#1086' '#39'+DateToPropis(<datemes1>)+'#39' '#1074' '#1089#1091#1084#1110' '#39'+Format('#39'%2.2f' +
        #39',[Get(<frxDBDataset2."ORD">)])+'#39' '#1075#1088#1085'., '#1074' '#1090#1086#1084#1091' '#1095#1080#1089#1083#1110':'#39';    '
      ''
      '  if (<frxDBDataset2."ORD">=3) then'
      
        '    Memo4.Text:='#39#1058#1072#9' '#1079#1072#1073#1086#1088#1075#1086#1074#1072#1085#1110#1089#1090#1100' '#1079#1072' '#1087#1077#1088#1110#1086#1076' '#1079' 1 '#1078#1086#1074#1090#1085#1103' 2015 '#1088'.' +
        ' '#1087#1086' '#39'+DateToPropis(<datemes3>)+'#39' '#1074' '#1089#1091#1084#1110' '#39'+Format('#39'%2.2f'#39',[Get(<f' +
        'rxDBDataset2."ORD">)])+'#39' '#1075#1088#1085'., '#1074' '#1090#1086#1084#1091' '#1095#1080#1089#1083#1110':'#39';      '
      
        '//    Memo4.Text:='#39#1058#1072#9' '#1079#1072#1073#1086#1088#1075#1086#1074#1072#1085#1110#1089#1090#1100' '#1079#1072' '#1087#1077#1088#1110#1086#1076' '#1079' '#39'+DateToPropis' +
        '(<datemes4>)+'#39' '#1087#1086' '#39'+DateToPropis(<datemes3>)+'#39' '#1074' '#1089#1091#1084#1110' '#39'+Format('#39 +
        '%2.2f'#39',[Get(<frxDBDataset2."ORD">)])+'#39' '#1075#1088#1085'., '#1074' '#1090#1086#1084#1091' '#1095#1080#1089#1083#1110':'#39';'
      '       '
      ' end;'
      'end;'
      ''
      'procedure GroupFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '//  Set(<frxDBDataset2."ORD">,FloatToStr(SUM(<frxDBDataset2."DOL' +
        'G">,MasterData1)));'
      
        '  Set(<frxDBDataset2."ORD">,SUM(<frxDBDataset2."DOLG">,MasterDat' +
        'a1));'
      '      '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 76
    Top = 23
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'Dolgn'
        Value = Null
      end
      item
        Name = 'Fio'
        Value = Null
      end
      item
        Name = 'datemes1'
        Value = Null
      end
      item
        Name = 'datemes2'
        Value = Null
      end
      item
        Name = 'datemes3'
        Value = Null
      end
      item
        Name = 'datemes4'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 211.653680000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 147.401670000000000000
          Top = 34.015770000000010000
          Width = 427.086890000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1080#1087#1080#1089#1082#1072)
          ParentFont = False
        end
        object datemes: TfrxMemoView
          Top = 60.472480000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1110#1079' '#1086#1089#1086#1073#1086#1074#1086#1075#1086' '#1088#1072#1093#1091#1085#1082#1091' '#8470' [frxDBDataset1."SCHET"]')
          ParentFont = False
        end
        object frxDBDataset1SCHET: TfrxMemoView
          Top = 98.267780000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #1040#1076#1088#1077#1089#1072': '#1084'.'#1044#1086#1083#1080#1085#1089#1100#1082#1072', '#1074#1091#1083'.[frxDBDataset1."ULNAIM"] '#1073#1091#1076'.[frxDBData' +
              'set1."NOMDOM"] [iif(trim(<frxDBDataset1."NOMKV">)<>'#39#39','#39#1082#1074'.'#39'+<frx' +
              'DBDataset1."NOMKV">,'#39#39')]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo3: TfrxMemoView
          Top = 132.283550000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[textplos(<frxDBDataset1."NOMKV">,<frxDBDataset1."KOLI_K">,<frxD' +
              'BDataset1."PLOS_BB">)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'GroupHeader1OnBeforePrint'
        Condition = 'frxDBDataset2."ORD"'
        object Memo4: TfrxMemoView
          Width = 718.110700000000000000
          Height = 52.913420000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        AllowSplit = True
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        Stretched = True
        object frxDBDataset2POSLUG: TfrxMemoView
          Left = 113.385900000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[frxDBDataset2."POSLUG"]')
          ParentFont = False
        end
        object frxDBDataset2DOLG: TfrxMemoView
          Left = 434.645950000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[frxDBDataset2."DOLG"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 453.543600000000000000
        Width = 718.110700000000000000
        object Memo27: TfrxMemoView
          Left = 34.015770000000000000
          Top = 11.338590000000010000
          Width = 374.173470000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            #1042#1080#1087#1080#1089#1082#1072' '#1074#1080#1076#1072#1085#1072' '#1076#1083#1103' '#1087#1088#1077#1076#39#1103#1074#1083#1077#1085#1085#1103' '#1087#1086' '#1084#1110#1089#1094#1102' '#1074#1080#1084#1086#1075#1080)
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 34.015770000000000000
          Top = 41.574830000000020000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1053#1072#1095#1072#1083#1100#1085#1080#1082' _______________')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 34.015770000000000000
          Top = 64.252009999999990000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1041#1091#1093#1075#1072#1083#1090#1077#1088'  _______________')
          ParentFont = False
        end
      end
      object Memo19: TfrxMemoView
        Top = 15.118120000000000000
        Width = 211.653680000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          #1050#1055' "'#1044#1086#1083#1080#1085#1089#1100#1082#1080#1081' '#1084#1110#1089#1100#1082#1082#1086#1084#1091#1085#1075#1086#1089#1087'"')
        ParentFont = False
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 408.189240000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'GroupFooter1OnBeforePrint'
        object Memo2: TfrxMemoView
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Visible = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."DOLG">, MasterData1)]')
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
      
        'case when round((COALESCE(fullnach,0)-COALESCE(fullopl,0)),2)>0 ' +
        'then round((COALESCE(fullnach,0)-COALESCE(fullopl,0)),2) else 0 ' +
        'end as dolg'
      'from'
      '(select tt1.wid , tt1.poslug, tt1.schet,'
      'sum(tt1.fullnach) fullnach, sum(tt1.fullopl) fullopl'
      'from vw_obkr tt1'
      'where tt1.schet=:sch and tt1.period>=:dat1 and tt1.period<=:dat2'
      'group by schet, wid, poslug'
      '))'
      'where dolg>0')
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
