object Form1: TForm1
  Left = 227
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Problema 1'
  ClientHeight = 160
  ClientWidth = 326
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
    Left = 40
    Top = 56
    Width = 26
    Height = 13
    Caption = 'Data:'
  end
  object lblDiaDaSemana: TLabel
    Left = 72
    Top = 116
    Width = 55
    Height = 13
  end
  object btnVerificar: TButton
    Left = 216
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Verificar'
    TabOrder = 0
    OnClick = btnVerificarClick
  end
  object btnSair: TButton
    Left = 216
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 1
    OnClick = btnSairClick
  end
  object edtData: TEdit
    Left = 72
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object mskData: TMaskEdit
    Left = 72
    Top = 88
    Width = 120
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
  end
end
