object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Info'
  ClientHeight = 175
  ClientWidth = 546
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 18
    Width = 72
    Height = 13
    Alignment = taCenter
    Caption = '111111111111'
  end
  object Label2: TLabel
    Left = 192
    Top = 37
    Width = 78
    Height = 13
    Caption = '2222222222222'
    Visible = False
  end
  object cxProgressBar1: TcxProgressBar
    Left = 80
    Top = 56
    TabOrder = 0
    Width = 345
  end
  object Button11: TButton
    Left = 424
    Top = 111
    Width = 97
    Height = 25
    Caption = #1042#1080#1093#1110#1076
    TabOrder = 1
    Visible = False
    OnClick = Button11Click
  end
  object cxProgressBar2: TcxProgressBar
    Left = 80
    Top = 84
    TabOrder = 2
    Visible = False
    Width = 345
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 8
    Top = 8
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 48
    Top = 8
  end
end
