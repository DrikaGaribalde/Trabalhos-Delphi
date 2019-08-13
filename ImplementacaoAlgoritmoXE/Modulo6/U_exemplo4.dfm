object Form1: TForm1
  Left = 229
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Calculo de Idade - Completo'
  ClientHeight = 275
  ClientWidth = 320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 76
    Top = 16
    Width = 53
    Height = 13
    Caption = 'Data Atual:'
  end
  object lbl2: TLabel
    Left = 32
    Top = 39
    Width = 97
    Height = 13
    Caption = 'Data de Nascimento'
  end
  object lblDataAtual: TLabel
    Left = 154
    Top = 16
    Width = 3
    Height = 13
  end
  object medtNascimento: TMaskEdit
    Left = 152
    Top = 39
    Width = 120
    Height = 21
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 0
    Text = '  /  /  '
  end
  object btnCalcular: TButton
    Left = 160
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = btnCalcularClick
  end
  object grp1: TGroupBox
    Left = 48
    Top = 136
    Width = 241
    Height = 105
    Caption = 'Idade Completa'
    TabOrder = 2
    object lbl3: TLabel
      Left = 24
      Top = 32
      Width = 27
      Height = 13
      Caption = 'Anos:'
    end
    object lbl4: TLabel
      Left = 24
      Top = 52
      Width = 34
      Height = 13
      Caption = 'Meses:'
    end
    object lbl5: TLabel
      Left = 24
      Top = 72
      Width = 24
      Height = 13
      Caption = 'Dias:'
    end
    object lblAno: TLabel
      Left = 72
      Top = 32
      Width = 144
      Height = 13
      Caption = 'Informe a Data de Nascimento'
    end
    object lblMeses: TLabel
      Left = 72
      Top = 53
      Width = 144
      Height = 13
      Caption = 'Informe a Data de Nascimento'
    end
    object lblDias: TLabel
      Left = 72
      Top = 73
      Width = 144
      Height = 13
      Caption = 'Informe a Data de Nascimento'
    end
  end
end
