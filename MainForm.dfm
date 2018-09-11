object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Win 10 Kontrakt'
  ClientHeight = 349
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnExit: TButton
    Left = 613
    Top = 316
    Width = 75
    Height = 25
    Caption = 'Zav'#345#237't'
    TabOrder = 0
    OnClick = btnExitClick
  end
  object btnSdilet: TButton
    Left = 112
    Top = 316
    Width = 98
    Height = 25
    Caption = 'Sd'#237'let'
    TabOrder = 1
    OnClick = btnSdiletClick
  end
  object btnKontrakt: TButton
    Left = 8
    Top = 316
    Width = 98
    Height = 25
    Caption = 'Nastav Kontrakt'
    TabOrder = 2
    OnClick = btnKontraktClick
  end
  object sc1: TSharingContract
    IconFile = 'C:\EmbtDema\Delphi\Zdroje\delphi_red.png'
    LogoFile = 'C:\EmbtDema\Delphi\Zdroje\delphi_red.png'
    Left = 648
    Top = 16
  end
end
