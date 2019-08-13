object frmNumerosPares: TfrmNumerosPares
  Left = 229
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Problema 2 - N'#250'meros Pares'
  ClientHeight = 259
  ClientWidth = 403
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
    Left = 17
    Top = 32
    Width = 43
    Height = 13
    Caption = 'N'#250'mero: '
  end
  object edtNumero: TEdit
    Left = 73
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = edtNumeroKeyPress
  end
  object lst1: TListBox
    Left = 217
    Top = 24
    Width = 161
    Height = 209
    Columns = 2
    Enabled = False
    ItemHeight = 13
    TabOrder = 1
  end
  object btnAceitaNumeros: TButton
    Left = 103
    Top = 56
    Width = 91
    Height = 25
    Caption = 'Aceita N'#250'meros'
    TabOrder = 2
    OnClick = btnAceitaNumerosClick
  end
  object btnExibe: TButton
    Left = 103
    Top = 96
    Width = 91
    Height = 25
    Caption = 'Exibir os Pares'
    TabOrder = 3
    OnClick = btnExibeClick
  end
end
