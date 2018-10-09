object Form11: TForm11
  Left = 0
  Top = 0
  Caption = #1042#1093#1110#1076
  ClientHeight = 222
  ClientWidth = 311
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 37
    Width = 60
    Height = 13
    Caption = #1050#1086#1088#1080#1089#1090#1091#1074#1072#1095
  end
  object Label2: TLabel
    Left = 56
    Top = 93
    Width = 37
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object cxButton1: TcxButton
    Left = 56
    Top = 152
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 174
    Top = 152
    Width = 75
    Height = 25
    Caption = #1042#1080#1093#1110#1076
    TabOrder = 1
    OnClick = cxButton2Click
  end
  object cxMaskEdit1: TcxMaskEdit
    Left = 56
    Top = 112
    TabOrder = 2
    Width = 193
  end
  object cxLookupComboBox1: TcxLookupComboBox
    Left = 56
    Top = 56
    Properties.KeyFieldNames = 'KL'
    Properties.ListColumns = <
      item
        FieldName = 'FIO'
      end>
    Properties.ListSource = Form1.DSUSER
    TabOrder = 3
    Width = 193
  end
end
