object Form1: TForm1
  Left = 226
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Problema 9 '
  ClientHeight = 516
  ClientWidth = 322
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
    Left = 24
    Top = 56
    Width = 73
    Height = 13
    Caption = 'Sal'#225'rio M'#237'nimo:'
  end
  object lbl2: TLabel
    Left = 24
    Top = 80
    Width = 93
    Height = 13
    Caption = 'Horas Trabalhadas:'
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 329
    Height = 41
    Caption = 'Identifica'#231#227'o de Reajuste e Caracter'#237'sticas para um Funcion'#225'rio:'
    TabOrder = 0
  end
  object edtSalarioMinimo: TEdit
    Left = 126
    Top = 56
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object edtHorasTrabalhadas: TEdit
    Left = 126
    Top = 80
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object rgCategoria: TRadioGroup
    Left = 0
    Top = 128
    Width = 321
    Height = 49
    Caption = 'Categoria:'
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Items.Strings = (
      'Oper'#225'rio'
      'Gerente')
    ParentFont = False
    TabOrder = 3
  end
  object rgTurno: TRadioGroup
    Left = 0
    Top = 181
    Width = 321
    Height = 57
    Caption = 'Turno:'
    Columns = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Items.Strings = (
      'Matutino'
      'Vespertino'
      'Noturno')
    ParentFont = False
    TabOrder = 4
  end
  object pnl2: TPanel
    Left = 0
    Top = 240
    Width = 321
    Height = 203
    TabOrder = 5
    object lblCoeficiente: TLabel
      Left = 3
      Top = 8
      Width = 3
      Height = 13
    end
    object lblSalarioBruto: TLabel
      Left = 3
      Top = 32
      Width = 3
      Height = 13
    end
    object lblImposto: TLabel
      Left = 3
      Top = 56
      Width = 3
      Height = 13
    end
    object lblGratificacao: TLabel
      Left = 3
      Top = 80
      Width = 3
      Height = 13
    end
    object lblAuxilio: TLabel
      Left = 3
      Top = 104
      Width = 3
      Height = 13
    end
    object lblSalarioLiquido: TLabel
      Left = 3
      Top = 128
      Width = 3
      Height = 13
    end
  end
  object pnlSituacao: TPanel
    Left = 0
    Top = 472
    Width = 321
    Height = 41
    TabOrder = 6
  end
  object btnCalcular: TButton
    Left = 0
    Top = 445
    Width = 321
    Height = 25
    Caption = 'Calcular'
    TabOrder = 7
    OnClick = btnCalcularClick
  end
end
