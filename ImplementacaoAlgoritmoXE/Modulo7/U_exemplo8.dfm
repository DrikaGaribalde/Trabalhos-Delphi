object Form1: TForm1
  Left = 229
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Problema 8 - C'#225'lculo de Imposto Baseado em Peso e Estado'
  ClientHeight = 310
  ClientWidth = 263
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grpDadosProduto: TGroupBox
    Left = 8
    Top = 16
    Width = 249
    Height = 105
    Caption = 'Dados do Produto:'
    TabOrder = 0
    object lbl1: TLabel
      Left = 8
      Top = 25
      Width = 82
      Height = 13
      Caption = 'C'#243'digo da Carga:'
    end
    object lbl2: TLabel
      Left = 8
      Top = 65
      Width = 97
      Height = 13
      Caption = 'Peso em Toneladas:'
    end
    object edtCodigo: TEdit
      Left = 110
      Top = 25
      Width = 121
      Height = 21
      MaxLength = 2
      TabOrder = 0
      OnKeyDown = edtCodigoKeyDown
    end
    object edtPeso: TEdit
      Left = 110
      Top = 65
      Width = 121
      Height = 21
      MaxLength = 3
      TabOrder = 1
    end
  end
  object rgEstado: TRadioGroup
    Left = 8
    Top = 127
    Width = 249
    Height = 65
    Caption = 'Estado de Origem:'
    Columns = 5
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5')
    TabOrder = 1
  end
  object btnCalcular: TButton
    Left = 8
    Top = 200
    Width = 249
    Height = 41
    Caption = 'Calcular Imposto'
    TabOrder = 2
    OnClick = btnCalcularClick
  end
  object pnl1: TPanel
    Left = 8
    Top = 256
    Width = 249
    Height = 41
    TabOrder = 3
  end
end
