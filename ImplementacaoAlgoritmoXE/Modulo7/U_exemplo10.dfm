object Form1: TForm1
  Left = 221
  Top = 126
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Problema 10'
  ClientHeight = 296
  ClientWidth = 291
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 28
    Top = 48
    Width = 105
    Height = 13
    Caption = 'Valor de Investimento:'
  end
  object edtInvestimento: TEdit
    Left = 140
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object pnlRelogio: TPanel
    Left = 0
    Top = 0
    Width = 291
    Height = 41
    Align = alTop
    TabOrder = 1
  end
  object rgInvestimento: TRadioGroup
    Left = 28
    Top = 79
    Width = 233
    Height = 105
    Caption = 'Tipo de Investimento:'
    Items.Strings = (
      'Poupan'#231'a'
      'Fundos de Renda Fixa')
    TabOrder = 2
  end
  object btn1: TButton
    Left = 28
    Top = 200
    Width = 233
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btn1Click
  end
  object pnlNovoValor: TPanel
    Left = 28
    Top = 240
    Width = 233
    Height = 41
    TabOrder = 4
  end
  object tmrHora: TTimer
    OnTimer = tmrHoraTimer
    Left = 144
    Top = 9
  end
end
