object Form17: TForm17
  Left = 0
  Top = 0
  Caption = 'Form17'
  ClientHeight = 624
  ClientWidth = 901
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 901
    Height = 233
    Align = alTop
    TabOrder = 0
    object cxGroupBox1: TcxGroupBox
      Left = 14
      Top = 0
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1074#1110#1076#1073#1086#1088#1091
      TabOrder = 0
      Height = 177
      Width = 881
      object Label1: TLabel
        Left = 559
        Top = 8
        Width = 106
        Height = 13
        Caption = #1064#1072#1073#1083#1086#1085' '#1090#1077#1082#1089#1090#1072' '#1074' '#1089#1084#1089
      end
      object Label2: TLabel
        Left = 347
        Top = 72
        Width = 144
        Height = 13
        Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1089#1080#1084#1074#1086#1083#1110#1074' '#1074' '#1096#1072#1073#1083#1086#1085#1110
        WordWrap = True
      end
      object Label3: TLabel
        Left = 347
        Top = 90
        Width = 123
        Height = 13
        Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1057#1052#1057' '#1074' '#1096#1072#1073#1083#1086#1085#1110
        WordWrap = True
      end
      object Label4: TLabel
        Left = 504
        Top = 72
        Width = 31
        Height = 13
        Caption = 'Label4'
      end
      object Label5: TLabel
        Left = 504
        Top = 90
        Width = 31
        Height = 13
        Caption = 'Label5'
      end
      object Label6: TLabel
        Left = 448
        Top = 8
        Width = 87
        Height = 13
        Caption = #1060#1086#1088#1084#1091#1074#1072#1085#1085#1103' '#1057#1052#1057
      end
      object Label7: TLabel
        Left = 646
        Top = 118
        Width = 126
        Height = 13
        Caption = #1050#1083#1102#1095#1086#1074#1110' '#1089#1083#1086#1074#1072' '#1074' '#1096#1072#1073#1083#1086#1085#1110
        WordWrap = True
      end
      object cxButton2: TcxButton
        Left = 3
        Top = 14
        Width = 86
        Height = 56
        Caption = #1044#1086#1076#1072#1090#1080' '#1072#1073#1086#1085#1077#1085#1090#1110#1074
        TabOrder = 0
        WordWrap = True
        OnClick = cxButton2Click
      end
      object cxLabel6: TcxLabel
        Left = 14
        Top = 131
        Caption = #1055#1086#1096#1091#1082' '#1087#1086' '#1088#1072#1093#1091#1085#1082#1091
      end
      object cxTextEdit4: TcxTextEdit
        Left = 3
        Top = 148
        TabOrder = 2
        Width = 121
      end
      object cxButton1: TcxButton
        Left = 130
        Top = 149
        Width = 71
        Height = 25
        Caption = #1055#1086#1096#1091#1082
        TabOrder = 3
        OnClick = cxButton1Click
      end
      object cxButton5: TcxButton
        Left = 235
        Top = 14
        Width = 87
        Height = 56
        Caption = #1042#1110#1076#1087#1088#1072#1074#1082#1072' '#1057#1052#1057
        TabOrder = 4
        WordWrap = True
        OnClick = cxButton5Click
      end
      object cxButton4: TcxButton
        Left = 350
        Top = 14
        Width = 82
        Height = 56
        Caption = #1055#1077#1088#1077#1074#1110#1088#1080#1090#1080' '#1089#1090#1072#1090#1091#1089
        TabOrder = 5
        WordWrap = True
        OnClick = cxButton4Click
      end
      object cxButton6: TcxButton
        Left = 118
        Top = 14
        Width = 92
        Height = 56
        BiDiMode = bdLeftToRight
        Caption = #1055#1077#1088#1077#1074#1110#1088#1080#1090#1080' '#1090#1072' '#1079#1092#1086#1088#1084#1091#1074#1072#1090#1080' '#1057#1052#1057
        ParentBiDiMode = False
        PopupAlignment = paCenter
        TabOrder = 6
        WordWrap = True
        OnClick = cxButton6Click
      end
      object cxLabel7: TcxLabel
        Left = 216
        Top = 34
        Caption = '->'
      end
      object cxLabel10: TcxLabel
        Left = 328
        Top = 34
        Caption = '->'
      end
      object cxLabel12: TcxLabel
        Left = 98
        Top = 34
        Caption = '->'
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 3
        Top = 74
        AutoSize = False
        Caption = 
          #1090#1088#1072#1085#1089#1083#1110#1090#1077#1088#1072#1094#1110#1103' ('#1087#1077#1088#1077#1074#1086#1076#1077' '#1090#1077#1082#1089#1090' '#1085#1072' '#1083#1072#1090#1080#1085#1089#1100#1082#1110' '#1083#1110#1090#1077#1088#1080' '#1103#1082#1097#1086' '#1089#1084#1089' '#1073#1110#1083#1100 +
          #1096#1077' 70 '#1089#1080#1084#1074#1086#1083#1110#1074', '#1074#1087#1083#1080#1074#1072#1108' '#1085#1072' '#1082'-'#1090#1100' '#1057#1052#1057')'
        DataBinding.DataField = 'TRANSLIT'
        DataBinding.DataSource = DSSMSORDEREDS
        ParentBackground = False
        Properties.Alignment = taLeftJustify
        Properties.DisplayChecked = '1'
        Properties.DisplayUnchecked = '0'
        Properties.ImmediatePost = True
        Properties.MultiLine = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Properties.OnChange = cxDBCheckBox1PropertiesChange
        Style.Shadow = False
        TabOrder = 10
        Visible = False
        Height = 29
        Width = 327
      end
      object DBMemo1: TDBMemo
        Left = 559
        Top = 27
        Width = 308
        Height = 89
        DataField = 'TEXT_SMS'
        DataSource = DSSMSORDEREDS
        ParentShowHint = False
        ScrollBars = ssVertical
        ShowHint = False
        TabOrder = 11
        OnChange = DBMemo1Change
      end
      object cxButton7: TcxButton
        Left = 456
        Top = 27
        Width = 97
        Height = 24
        Caption = #1042#1080#1073#1088#1072#1090#1080' '#1096#1072#1073#1083#1086#1085
        TabOrder = 12
        WordWrap = True
        OnClick = cxButton7Click
      end
      object cxLabel5: TcxLabel
        Left = 150
        Top = 126
        Caption = #1050'-'#1089#1090#1100' '#1079#1092#1086#1088#1084#1086#1074#1072#1085#1086' '#1057#1052#1057':'
        Style.TextColor = clWindowText
      end
      object cxLabel18: TcxLabel
        Left = 281
        Top = 126
        Caption = '0'
      end
      object cxLabel2: TcxLabel
        Left = 281
        Top = 107
        Caption = '0'
      end
      object cxLabel17: TcxLabel
        Left = 150
        Top = 107
        Caption = #1041#1072#1083#1072#1085#1089' '#1076#1086#1089#1090#1091#1087#1085#1080#1093' '#1057#1052#1057':'
      end
      object cxButton9: TcxButton
        Left = 14
        Top = 104
        Width = 26
        Height = 24
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000030000000B00000013000000190000001A0000
          00140000000B0000000300000000000000000000000000000000000000000000
          000000000000000000060402011C4827118B7C431ED2A65927FFA55927FF7E44
          1ED442230F7B0100000F0000000E000000070000000000000000000000000000
          000000000005120A05348A4F26DDC58A53FFDCB37CFFEFD298FFEFD198FFB676
          43FF2E1A0C62100904398F5127E10E05013A0000000600000000000000000000
          0002040201198D552BDCD1A169FFF1D6A5FFCE9E6EFFC08656FFBD8251FF613A
          1DA6000000227D4B26CBE2B97BFF5F290FCF0101001900000003000000000000
          00074C2F1B82C99765FFECD2A3FFB98154FB5238238A120C07300F0A06270201
          01194C2F1B88CE9D66FFF6DC9BFFBA8657FF3F1C0C910000000D000000000000
          000A8C5B36D0E3C598FFCB9D75FF573B258C0000000C00000003000000062014
          0C43BD875AFBF8E5BCFFF8DFA5FFF7E4BAFFA16540FC1C0E074C000000080000
          0014B37A4BFAF5E6BDFFBC8356FF0D0704300000000C00000003000000079666
          3FD5B87D4DFFBB8153FFF2D9A1FFB87D4DFFB87C4DFF9C6941DE845331D3A263
          3BFFBB8557FFF6E7BFFFBF8B5EFFA06238FF87522FDC00000006000000020000
          000B0D08042FA1653CFFF4DEAEFFB68155FA000000180000000A1F170F34C79D
          75FBFBF5DCFFFCF3CCFFFAF4DAFFB3855FFB21150C4100000004000000020000
          0009492C1886BA8B5EFFE7CEA7FF926B48CB0000000900000000000000045540
          2D77DDC1A2FFFDF7D9FFD4B598FF5037227F0202010C0D08041F110A05274B2D
          1986A1683EFAF3E4C3FFD8B692FF533F2C780000000400000000000000000000
          00058F6F50BCEFE1CDFF886343C20202010D58382091A3693CFFA66F43FFBE94
          6DFFF4E9D1FFE3CAADFFA47E5BD60504030E0000000100000000000000000000
          0001130F0B1DAB8863DA18130E242C1E1248B78B63FDF8F3E2FFF9F3E4FFEDDE
          C7FFDCC1A1FFA3815ED215110C22000000020000000000000000000000000000
          000000000001000000010101000342301E629A7B5CC2C6A078F9C6A078F9997B
          5DC3564634710504030A00000001000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000002000000020000
          0002000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 17
        WordWrap = True
        OnClick = cxButton9Click
      end
      object cxLabel4: TcxLabel
        Left = 312
        Top = 106
        Caption = '* '#1084#1072#1082#1089'. '#1082'-'#1089#1090#1100' '#1089#1080#1084#1074#1086#1083#1110#1074' '#1074' '#1086#1076#1085#1086#1084#1091' '#1057#1052#1057' 661 '#1089#1080#1084#1074#1086#1083
      end
    end
    object cxButton3: TcxButton
      Left = 14
      Top = 202
      Width = 74
      Height = 25
      Caption = #1042' '#1045#1082#1089#1077#1083#1100
      TabOrder = 1
      OnClick = cxButton3Click
    end
    object cxButton8: TcxButton
      Left = 14
      Top = 183
      Width = 74
      Height = 21
      Hint = #1042#1080#1076#1072#1083#1080#1090#1080
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OptionsImage.Layout = blGlyphRight
      TabOrder = 2
      OnClick = cxButton8Click
    end
    object cxLabel11: TcxLabel
      Left = 94
      Top = 183
      Caption = '-- '#1074#1080#1076#1072#1083#1080#1090#1080' '#1079#1072#1087#1080#1089
    end
    object cxLabel1: TcxLabel
      Left = 98
      Top = 199
      Caption = #1050'-'#1089#1090#1100' '#1074#1110#1076#1087#1088#1072#1074'. '#1057#1052#1057':'
    end
    object cxDBLabel1: TcxDBLabel
      Left = 205
      Top = 199
      DataBinding.DataField = 'KOL_SENDSMS'
      DataBinding.DataSource = DSSMSORDEREDS
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.Orientation = cxoLeft
      Height = 17
      Width = 58
      AnchorY = 208
    end
    object cxLabel21: TcxLabel
      Left = 101
      Top = 214
      Caption = #1050'-'#1089#1090#1100' '#1076#1086#1089#1090#1072#1074'. '#1057#1052#1057':'
    end
    object cxDBLabel2: TcxDBLabel
      Left = 205
      Top = 215
      DataBinding.DataField = 'KOL_DOSTSMS'
      DataBinding.DataSource = DSSMSORDEREDS
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.Orientation = cxoLeft
      Height = 17
      Width = 59
      AnchorY = 224
    end
    object cxLabel15: TcxLabel
      Left = 294
      Top = 184
      Caption = #1050'-'#1089#1090#1100' '#1074#1110#1076#1087#1088#1072#1074#1083#1077#1085#1080#1093' '#1072#1073#1086#1085':'
    end
    object cxDBLabel3: TcxDBLabel
      Left = 437
      Top = 183
      DataBinding.DataField = 'KOL_SEND'
      DataBinding.DataSource = DSSMSORDEREDS
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.Orientation = cxoLeft
      Height = 17
      Width = 59
      AnchorY = 192
    end
    object cxLabel19: TcxLabel
      Left = 299
      Top = 200
      Caption = #1050'-'#1089#1090#1100' '#1076#1086#1089#1090#1072#1074#1083#1077#1085#1080#1093' '#1072#1073#1086#1085':'
    end
    object cxDBLabel4: TcxDBLabel
      Left = 437
      Top = 199
      DataBinding.DataField = 'KOL_DOST'
      DataBinding.DataSource = DSSMSORDEREDS
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.Orientation = cxoLeft
      Height = 17
      Width = 59
      AnchorY = 208
    end
    object cxLabel13: TcxLabel
      Left = 270
      Top = 216
      Caption = #1057#1091#1084#1072' '#1073#1086#1088#1075#1091' '#1076#1086#1089#1090#1072#1074#1083#1077#1085#1080#1093' '#1072#1073#1086#1085':'
    end
    object cxDBLabel5: TcxDBLabel
      Left = 437
      Top = 215
      DataBinding.DataField = 'DOLG'
      DataBinding.DataSource = DSSMSORDEREDS
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.Orientation = cxoLeft
      Height = 17
      Width = 59
      AnchorY = 224
    end
    object cxMemo1: TcxMemo
      Left = 573
      Top = 134
      Lines.Strings = (
        '[date] - '#1087#1086#1090#1086#1095#1085#1072' '#1076#1072#1090#1072' "12.01.2020"'
        '[datefirst] - '#1087#1086#1095#1072#1090#1086#1082' '#1084#1110#1089#1103#1094#1103' '#1086#1073#1083#1110#1082#1091'  "01.01.2020"'
        '[datemes] - '#1087#1086#1090#1086#1095#1085#1110' '#1095#1080#1089#1083#1086' '#1110' '#1084#1110#1089#1103#1094#1100' "12 '#1089#1110#1095#1085#1103' 2020"'
        '[datefirstmes] - '#1095#1080#1089#1083#1086' '#1087#1086#1095#1072#1090#1086#1082' '#1110' '#1084#1110#1089#1103#1094#1100' '#1086#1073#1083#1110#1082#1091' "01 '#1089#1110#1095#1085#1103' '
        '2020"'
        '[datemesstr] - '#1084#1110#1089#1103#1094#1100' '#1086#1073#1083#1110#1082#1091' "'#1089#1110#1095#1077#1085#1100' 2020"'
        '[dolg] - '#1079#1072#1075#1072#1083#1100#1085#1080#1081' '#1073#1086#1088#1075' '#1087#1086' '#1074#1080#1073#1088#1072#1085#1080#1084' '#1087#1086#1089#1083#1091#1075#1072#1084' '#1085#1072' '
        #1087#1086#1090#1086#1095#1085#1091' '#1076#1072#1090#1091
        '[poslnamsum] - '#1073#1086#1088#1075' '#1087#1086#1089#1083#1091#1075#1072'-'#1089#1091#1084#1072'  "'#1054#1087#1072#1083#1077#1085#1085#1103' - '
        '1000,00"'
        '[schet] - '#1086#1089#1086#1073#1086#1074#1080#1081' '#1088#1072#1093#1091#1085#1086#1082' '
        ''
        ''
        '')
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      TabOrder = 14
      Height = 93
      Width = 308
    end
  end
  object cxGrid3: TcxGrid
    Left = 0
    Top = 233
    Width = 901
    Height = 391
    Align = alClient
    TabOrder = 1
    object cxGridDBTableView2: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.CustomizeDialog = False
      FilterBox.Visible = fvNever
      OnCustomDrawCell = cxGridDBTableView2CustomDrawCell
      DataController.DataSource = DSSMSLIST
      DataController.DetailKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGridDBTableView2DOLG
        end
        item
          Kind = skSum
          OnGetText = cxGridDBTableView2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText
          Column = cxGridDBTableView2KOL_SMS
        end
        item
          Kind = skCount
          OnGetText = cxGridDBTableView2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText
          Column = cxGridDBTableView2SCHET
        end
        item
          Kind = skMax
          OnGetText = cxGridDBTableView2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText
          Column = cxGridDBTableView2KOL_CHAR
        end>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnAddValueItems = False
      Filtering.ColumnMRUItemsList = False
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsData.Appending = True
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      object cxGridDBTableView2SCHET: TcxGridDBColumn
        Caption = #1056#1072#1093#1091#1085#1086#1082
        DataBinding.FieldName = 'SCHET'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Options.Editing = False
        Width = 88
      end
      object cxGridDBTableView2FIO: TcxGridDBColumn
        Caption = #1055#1030#1055
        DataBinding.FieldName = 'FIO'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Options.Editing = False
        Width = 171
      end
      object cxGridDBTableView2ULNAIM: TcxGridDBColumn
        Caption = #1042#1091#1083#1080#1094#1103
        DataBinding.FieldName = 'ULNAIM'
        Options.Editing = False
        Width = 167
      end
      object cxGridDBTableView2NOMDOM: TcxGridDBColumn
        Caption = #1041#1091#1076#1080#1085#1086#1082
        DataBinding.FieldName = 'NOMDOM'
        Options.Editing = False
        Width = 35
      end
      object cxGridDBTableView2NOMKV: TcxGridDBColumn
        Caption = #1050#1074'.'
        DataBinding.FieldName = 'NOMKV'
        Options.Editing = False
        Width = 35
      end
      object cxGridDBTableView2TEL: TcxGridDBColumn
        Caption = #1058#1077#1083#1077#1092#1086#1085
        DataBinding.FieldName = 'TEL'
        Width = 93
      end
      object cxGridDBTableView2DOLG: TcxGridDBColumn
        Caption = #1041#1086#1088#1075
        DataBinding.FieldName = 'DOLG'
        Options.Editing = False
        Width = 100
      end
      object cxGridDBTableView2STATUS: TcxGridDBColumn
        Caption = #1057#1090#1072#1090#1091#1089
        DataBinding.FieldName = 'STATUS'
        Options.Editing = False
        Width = 163
      end
      object cxGridDBTableView2KOL_SMS: TcxGridDBColumn
        Caption = #1050'-'#1089#1090#1100' '#1089#1084#1089
        DataBinding.FieldName = 'KOL_SMS'
        Options.Editing = False
        Width = 68
      end
      object cxGridDBTableView2KOL_CHAR: TcxGridDBColumn
        Caption = #1050'-'#1089#1090#1100' '#1089#1080#1084#1074'.'
        DataBinding.FieldName = 'KOL_CHAR'
        Options.Editing = False
        Width = 68
      end
      object cxGridDBTableView2TEXT: TcxGridDBColumn
        Caption = #1058#1077#1082#1089#1090' '#1057#1052#1057
        DataBinding.FieldName = 'TEXT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.AutoSelect = False
        Properties.UseLeftAlignmentOnEditing = False
        Properties.UseNullString = True
        HeaderAlignmentVert = vaTop
        Options.AutoWidthSizable = False
        Width = 500
      end
      object cxGridDBTableView2MESSAGEID: TcxGridDBColumn
        DataBinding.FieldName = 'MESSAGEID'
        MinWidth = 1
        Width = 1
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = cxGridDBTableView2
    end
  end
  object cxLabel3: TcxLabel
    Left = 54
    Top = 108
    Caption = #1041#1072#1083#1072#1085#1089' '#1075#1088#1085'.:'
  end
  object cxLabel8: TcxLabel
    Left = 121
    Top = 108
    Caption = '0'
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
      ' select wid,naim, 0 as ch, snaim from WID')
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
    Left = 616
    Top = 472
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
    object IBWIDSNAIM: TIBStringField
      FieldName = 'SNAIM'
      Origin = '"WID"."SNAIM"'
      Size = 8
    end
  end
  object DSWID: TDataSource
    DataSet = IBWID
    Left = 616
    Top = 528
  end
  object IBSEND: TIBDataSet
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from obor'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into obor'
      
        '  (KL, PERIOD, SCHET, WID, N_DOG, D_DOG, TARIF, DOLG, NACH, SUBS' +
        ', OPL, '
      '   UDER, KOMP, WZMZ, WOZW, MOVW, PERE, SAL)'
      'values'
      
        '  (:KL, :PERIOD, :SCHET, :WID, :N_DOG, :D_DOG, :TARIF, :DOLG, :N' +
        'ACH, :SUBS, '
      '   :OPL, :UDER, :KOMP, :WZMZ, :WOZW, :MOVW, :PERE, :SAL)')
    RefreshSQL.Strings = (
      'Select * '
      'from obor '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      
        'select period,kontrol,schet,fio,ulnaim,nomdom,nomkv,COALESCE(max' +
        '(kv),0)+COALESCE(max(el),0)+COALESCE(max(sm),0)+COALESCE(max(om)' +
        ',0)+COALESCE(max(ot),0)+COALESCE(max(hv),0)+COALESCE(max(sn),0)+' +
        'COALESCE(max(ub),0) as SAL,COALESCE(max(kv),0) kv,COALESCE(max(o' +
        'pl_kv),0) opl_kv,COALESCE(max(el),0) el,COALESCE(max(opl_el),0) ' +
        'opl_el,COALESCE(max(sm),0) sm,COALESCE(max(opl_sm),0) opl_sm,COA' +
        'LESCE(max(om),0) om,COALESCE(max(opl_om),0) opl_om,COALESCE(max(' +
        'ot),0) ot,COALESCE(max(opl_ot),0) opl_ot,COALESCE(max(hv),0) hv,' +
        'COALESCE(max(opl_hv),0) opl_hv,COALESCE(max(sn),0) sn,COALESCE(m' +
        'ax(opl_sn),0) opl_sn,COALESCE(max(ub),0) ub,COALESCE(max(opl_ub)' +
        ',0) opl_ub from(select period,kontrol,schet,fio,ulnaim,nomdom,no' +
        'mkv,case wid when '#39'kv'#39' then sal else null end as kv,case wid whe' +
        'n '#39'kv'#39' then fullopl else null end as opl_kv,case wid when '#39'el'#39' t' +
        'hen sal else null end as el,case wid when '#39'el'#39' then fullopl else' +
        ' null end as opl_el,case wid when '#39'sm'#39' then sal else null end as' +
        ' sm,case wid when '#39'sm'#39' then fullopl else null end as opl_sm,case' +
        ' wid when '#39'om'#39' then sal else null end as om,case wid when '#39'om'#39' t' +
        'hen fullopl else null end as opl_om,case wid when '#39'ot'#39' then sal ' +
        'else null end as ot,case wid when '#39'ot'#39' then fullopl else null en' +
        'd as opl_ot,case wid when '#39'hv'#39' then sal else null end as hv,case' +
        ' wid when '#39'hv'#39' then fullopl else null end as opl_hv,case wid whe' +
        'n '#39'sn'#39' then sal else null end as sn,case wid when '#39'sn'#39' then full' +
        'opl else null end as opl_sn,case wid when '#39'ub'#39' then sal else nul' +
        'l end as ub,case wid when '#39'ub'#39' then fullopl else null end as opl' +
        '_ub from vw_obkr where period=:dt) group by period,schet,fio,uln' +
        'aim,nomdom,nomkv,kontrol having COALESCE(max(kv),0)+COALESCE(max' +
        '(el),0)+COALESCE(max(sm),0)+COALESCE(max(om),0)+COALESCE(max(ot)' +
        ',0)+COALESCE(max(hv),0)+COALESCE(max(sn),0)+COALESCE(max(ub),0) ' +
        '<> 0')
    ModifySQL.Strings = (
      'update obor'
      'set'
      '  KL = :KL,'
      '  PERIOD = :PERIOD,'
      '  SCHET = :SCHET,'
      '  WID = :WID,'
      '  N_DOG = :N_DOG,'
      '  D_DOG = :D_DOG,'
      '  TARIF = :TARIF,'
      '  DOLG = :DOLG,'
      '  NACH = :NACH,'
      '  SUBS = :SUBS,'
      '  OPL = :OPL,'
      '  UDER = :UDER,'
      '  KOMP = :KOMP,'
      '  WZMZ = :WZMZ,'
      '  WOZW = :WOZW,'
      '  MOVW = :MOVW,'
      '  PERE = :PERE,'
      '  SAL = :SAL'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_OBOR_ID'
    Left = 760
    Top = 472
  end
  object DSSEND: TDataSource
    DataSet = IBSEND
    Left = 760
    Top = 520
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      '')
    Left = 568
    Top = 408
  end
  object IBSMSLIST: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SMSLIST'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into SMSLIST'
      
        '  (ID, ID_SMSORDER, SCHET, FIO, ULNAIM, NOMDOM, NOMKV, TEL, TEXT' +
        ', TEXTNOTTR, '
      
        '   ALPHANAME, WAPPUSH, DOLG, STATUS, MESSAGEID, KOL_SMS, KOL_CHA' +
        'R, KOL_ABON)'
      'values'
      
        '  (:ID, :ID_SMSORDER, :SCHET, :FIO, :ULNAIM, :NOMDOM, :NOMKV, :T' +
        'EL, :TEXT, '
      
        '   :TEXTNOTTR, :ALPHANAME, :WAPPUSH, :DOLG, :STATUS, :MESSAGEID,' +
        ' :KOL_SMS, '
      '   :KOL_CHAR, :KOL_ABON)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ID_SMSORDER,'
      '  SCHET,'
      '  FIO,'
      '  ULNAIM,'
      '  NOMDOM,'
      '  NOMKV,'
      '  TEL,'
      '  TEXT,'
      '  TEXTNOTTR,'
      '  ALPHANAME,'
      '  WAPPUSH,'
      '  DOLG,'
      '  STATUS,'
      '  MESSAGEID,'
      '  KOL_SMS,'
      '  KOL_CHAR,'
      '  KOL_ABON'
      'from SMSLIST '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from SMSLIST where ID_SMSORDER=:idord')
    ModifySQL.Strings = (
      'update SMSLIST'
      'set'
      '  ID = :ID,'
      '  ID_SMSORDER = :ID_SMSORDER,'
      '  SCHET = :SCHET,'
      '  FIO = :FIO,'
      '  ULNAIM = :ULNAIM,'
      '  NOMDOM = :NOMDOM,'
      '  NOMKV = :NOMKV,'
      '  TEL = :TEL,'
      '  TEXT = :TEXT,'
      '  TEXTNOTTR = :TEXTNOTTR,'
      '  ALPHANAME = :ALPHANAME,'
      '  WAPPUSH = :WAPPUSH,'
      '  DOLG = :DOLG,'
      '  STATUS = :STATUS,'
      '  MESSAGEID = :MESSAGEID,'
      '  KOL_SMS = :KOL_SMS,'
      '  KOL_CHAR = :KOL_CHAR,'
      '  KOL_ABON = :KOL_ABON'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    Left = 504
    Top = 472
    object IBSMSLISTID: TIntegerField
      FieldName = 'ID'
      Origin = '"SMSLIST"."ID"'
    end
    object IBSMSLISTID_SMSORDER: TIntegerField
      FieldName = 'ID_SMSORDER'
      Origin = '"SMSLIST"."ID_SMSORDER"'
    end
    object IBSMSLISTSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"SMSLIST"."SCHET"'
      Size = 10
    end
    object IBSMSLISTULNAIM: TIBStringField
      FieldName = 'ULNAIM'
      Origin = '"SMSLIST"."ULNAIM"'
      Size = 64
    end
    object IBSMSLISTNOMDOM: TIBStringField
      FieldName = 'NOMDOM'
      Origin = '"SMSLIST"."NOMDOM"'
      Size = 5
    end
    object IBSMSLISTNOMKV: TIBStringField
      FieldName = 'NOMKV'
      Origin = '"SMSLIST"."NOMKV"'
      Size = 5
    end
    object IBSMSLISTALPHANAME: TIBStringField
      FieldName = 'ALPHANAME'
      Origin = '"SMSLIST"."ALPHANAME"'
      Size = 11
    end
    object IBSMSLISTWAPPUSH: TIBStringField
      FieldName = 'WAPPUSH'
      Origin = '"SMSLIST"."WAPPUSH"'
    end
    object IBSMSLISTDOLG: TFloatField
      FieldName = 'DOLG'
      Origin = '"SMSLIST"."DOLG"'
    end
    object IBSMSLISTSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"SMSLIST"."STATUS"'
      Size = 250
    end
    object IBSMSLISTKOL_SMS: TIntegerField
      FieldName = 'KOL_SMS'
      Origin = '"SMSLIST"."KOL_SMS"'
    end
    object IBSMSLISTTEL: TIBStringField
      FieldName = 'TEL'
      Origin = '"SMSLIST"."TEL"'
      Size = 13
    end
    object IBSMSLISTMESSAGEID: TIBStringField
      FieldName = 'MESSAGEID'
      Origin = '"SMSLIST"."MESSAGEID"'
      Size = 41
    end
    object IBSMSLISTFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"SMSLIST"."FIO"'
      Size = 100
    end
    object IBSMSLISTKOL_ABON: TIntegerField
      FieldName = 'KOL_ABON'
      Origin = '"SMSLIST"."KOL_ABON"'
    end
    object IBSMSLISTTEXT: TIBStringField
      FieldName = 'TEXT'
      Origin = '"SMSLIST"."TEXT"'
      OnChange = IBSMSLISTTEXTChange
      Size = 1000
    end
    object IBSMSLISTTEXTNOTTR: TIBStringField
      FieldName = 'TEXTNOTTR'
      Origin = '"SMSLIST"."TEXTNOTTR"'
      Size = 1000
    end
    object IBSMSLISTKOL_CHAR: TIntegerField
      FieldName = 'KOL_CHAR'
      Origin = '"SMSLIST"."KOL_CHAR"'
    end
  end
  object DSSMSLIST: TDataSource
    DataSet = IBSMSLIST
    Left = 504
    Top = 520
  end
  object IBSMSORDEREDS: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from smsordereds'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into smsordereds'
      
        '  (ID, DATA, SEND, CONTROL, PERIOD, DOLG, KOL_SENDSMS, KOL_SEND,' +
        ' KOL_ERR, '
      
        '   KOL_DOST, KOL_DOSTSMS, ID_USER, POSL, TRANSLIT, VID_SMS, TEXT' +
        '_SMS)'
      'values'
      
        '  (:ID, :DATA, :SEND, :CONTROL, :PERIOD, :DOLG, :KOL_SENDSMS, :K' +
        'OL_SEND, '
      
        '   :KOL_ERR, :KOL_DOST, :KOL_DOSTSMS, :ID_USER, :POSL, :TRANSLIT' +
        ', :VID_SMS, '
      '   :TEXT_SMS)')
    RefreshSQL.Strings = (
      'Select *'
      'from smsordereds '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select smsordereds.*,users.fio from smsordereds'
      'left join users on users.kl=smsordereds.id_user'
      'order by id desc')
    ModifySQL.Strings = (
      'update smsordereds'
      'set'
      '  ID = :ID,'
      '  DATA = :DATA,'
      '  SEND = :SEND,'
      '  CONTROL = :CONTROL,'
      '  PERIOD = :PERIOD,'
      '  DOLG = :DOLG,'
      '  KOL_SENDSMS = :KOL_SENDSMS,'
      '  KOL_SEND = :KOL_SEND,'
      '  KOL_ERR = :KOL_ERR,'
      '  KOL_DOST = :KOL_DOST,'
      '  KOL_DOSTSMS = :KOL_DOSTSMS,'
      '  ID_USER = :ID_USER,'
      '  POSL = :POSL,'
      '  TRANSLIT = :TRANSLIT,'
      '  VID_SMS = :VID_SMS,'
      '  TEXT_SMS = :TEXT_SMS'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    Left = 432
    Top = 472
    object IBSMSORDEREDSID: TIntegerField
      FieldName = 'ID'
      Origin = '"SMSORDEREDS"."ID"'
    end
    object IBSMSORDEREDSDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"SMSORDEREDS"."DATA"'
    end
    object IBSMSORDEREDSSEND: TIntegerField
      FieldName = 'SEND'
      Origin = '"SMSORDEREDS"."SEND"'
    end
    object IBSMSORDEREDSPERIOD: TDateField
      FieldName = 'PERIOD'
      Origin = '"SMSORDEREDS"."PERIOD"'
    end
    object IBSMSORDEREDSDOLG: TFloatField
      FieldName = 'DOLG'
      Origin = '"SMSORDEREDS"."DOLG"'
    end
    object IBSMSORDEREDSKOL_SENDSMS: TIntegerField
      FieldName = 'KOL_SENDSMS'
      Origin = '"SMSORDEREDS"."KOL_SENDSMS"'
    end
    object IBSMSORDEREDSKOL_DOST: TIntegerField
      FieldName = 'KOL_DOST'
      Origin = '"SMSORDEREDS"."KOL_DOST"'
    end
    object IBSMSORDEREDSFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"USERS"."FIO"'
      Size = 30
    end
    object IBSMSORDEREDSID_USER: TIntegerField
      FieldName = 'ID_USER'
      Origin = '"SMSORDEREDS"."ID_USER"'
    end
    object IBSMSORDEREDSCONTROL: TIntegerField
      FieldName = 'CONTROL'
      Origin = '"SMSORDEREDS"."CONTROL"'
    end
    object IBSMSORDEREDSPOSL: TIBStringField
      FieldName = 'POSL'
      Origin = '"SMSORDEREDS"."POSL"'
      Size = 30
    end
    object IBSMSORDEREDSTRANSLIT: TIntegerField
      FieldName = 'TRANSLIT'
      Origin = '"SMSORDEREDS"."TRANSLIT"'
    end
    object IBSMSORDEREDSKOL_SEND: TIntegerField
      FieldName = 'KOL_SEND'
      Origin = '"SMSORDEREDS"."KOL_SEND"'
    end
    object IBSMSORDEREDSKOL_ERR: TIntegerField
      FieldName = 'KOL_ERR'
      Origin = '"SMSORDEREDS"."KOL_ERR"'
    end
    object IBSMSORDEREDSKOL_DOSTSMS: TIntegerField
      FieldName = 'KOL_DOSTSMS'
      Origin = '"SMSORDEREDS"."KOL_DOSTSMS"'
    end
    object IBSMSORDEREDSVID_SMS: TIntegerField
      FieldName = 'VID_SMS'
      Origin = '"SMSORDEREDS"."VID_SMS"'
    end
    object IBSMSORDEREDSTEXT_SMS: TIBStringField
      FieldName = 'TEXT_SMS'
      Origin = '"SMSORDEREDS"."TEXT_SMS"'
      Size = 1000
    end
  end
  object DSSMSORDEREDS: TDataSource
    DataSet = IBSMSORDEREDS
    Left = 432
    Top = 520
  end
end
