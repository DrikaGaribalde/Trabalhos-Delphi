object frmFolhaDePagamento: TfrmFolhaDePagamento
  Left = 231
  Top = 143
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Trabalhando com Oriente'#231#227'o a Objeto'
  ClientHeight = 253
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object rgTipoFuncionario: TRadioGroup
    Left = 4
    Top = 2
    Width = 432
    Height = 68
    Caption = 'Tipos de Funcion'#225'rios '
    Columns = 3
    Items.Strings = (
      'Administrativo'
      'Gerente'
      'Vendedor')
    TabOrder = 0
    OnClick = rgTipoFuncionarioClick
  end
  object grpDadosFuncionario: TGroupBox
    Left = 4
    Top = 72
    Width = 432
    Height = 76
    Caption = 'Dados dos Funcion'#225'rios '
    Enabled = False
    TabOrder = 1
    object lbl1: TLabel
      Left = 29
      Top = 24
      Width = 34
      Height = 13
      Caption = 'Nome: '
    end
    object lbl2: TLabel
      Left = 25
      Top = 52
      Width = 38
      Height = 13
      Caption = 'Sal'#225'rio: '
    end
    object lblComplemento: TLabel
      Left = 202
      Top = 52
      Width = 70
      Height = 13
      Caption = 'Complemento: '
    end
    object edtNome: TEdit
      Left = 72
      Top = 16
      Width = 337
      Height = 21
      TabOrder = 0
    end
    object edtSalario: TEdit
      Left = 72
      Top = 44
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edtComplemento: TEdit
      Left = 272
      Top = 44
      Width = 136
      Height = 21
      TabOrder = 2
    end
  end
  object btnRegistrar: TButton
    Left = 1
    Top = 194
    Width = 111
    Height = 25
    Caption = 'Registrar Funcion'#225'rio'
    TabOrder = 2
    OnClick = btnRegistrarClick
  end
  object btnPrimeiro: TButton
    Left = 113
    Top = 194
    Width = 67
    Height = 25
    Caption = 'Primeiro'
    TabOrder = 3
    OnClick = btnPrimeiroClick
  end
  object btnProximo: TButton
    Left = 182
    Top = 194
    Width = 67
    Height = 25
    Caption = 'Pr'#243'ximo'
    TabOrder = 4
    OnClick = btnProximoClick
  end
  object btnUltimo: TButton
    Left = 251
    Top = 194
    Width = 67
    Height = 25
    Caption = #218'ltimo'
    TabOrder = 5
    OnClick = btnUltimoClick
  end
  object btnCalcularFolha: TButton
    Left = 320
    Top = 194
    Width = 120
    Height = 25
    Caption = 'Calcular Total da Folha'
    TabOrder = 6
    OnClick = btnCalcularFolhaClick
  end
end
