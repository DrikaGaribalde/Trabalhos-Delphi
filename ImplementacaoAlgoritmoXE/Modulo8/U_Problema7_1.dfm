object frmLancaValores: TfrmLancaValores
  Left = 257
  Top = 541
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Pares Vendidos'
  ClientHeight = 121
  ClientWidth = 250
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 32
    Top = 35
    Width = 61
    Height = 13
    Caption = 'Quantidade: '
  end
  object edtPares: TEdit
    Left = 104
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnConfirmar: TButton
    Left = 32
    Top = 67
    Width = 193
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 1
    OnClick = btnConfirmarClick
  end
end
