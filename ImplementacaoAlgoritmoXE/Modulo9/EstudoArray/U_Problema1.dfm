object frmDiaDaSemana: TfrmDiaDaSemana
  Left = 242
  Top = 149
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Problema 1 - Dia da Semana'
  ClientHeight = 137
  ClientWidth = 262
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
    Left = 40
    Top = 80
    Width = 79
    Height = 13
    Caption = 'lblDiaDaSemana'
    Visible = False
  end
  object msk1: TMaskEdit
    Left = 32
    Top = 24
    Width = 120
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
  end
  object btnVerifica: TBitBtn
    Left = 168
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Verificar'
    TabOrder = 1
    OnClick = btnVerificaClick
  end
  object btnSair: TBitBtn
    Left = 168
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
    OnClick = btnSairClick
  end
end
