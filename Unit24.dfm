object Form24: TForm24
  Left = 0
  Top = 0
  Caption = 'Form24'
  ClientHeight = 504
  ClientWidth = 701
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 701
    Height = 57
    Align = alTop
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 328
      Top = 28
    end
    object cxButton1: TcxButton
      Left = 16
      Top = 16
      Width = 145
      Height = 25
      Caption = #1042#1110#1076#1087#1088#1072#1074#1080#1090#1080' '#1087#1086#1074#1110#1076#1086#1084#1083#1077#1085#1085#1103
      TabOrder = 1
      OnClick = cxButton1Click
    end
  end
  object cxMemo1: TcxMemo
    Left = 0
    Top = 57
    Align = alClient
    Lines.Strings = (
      '')
    TabOrder = 1
    Height = 447
    Width = 701
  end
end
