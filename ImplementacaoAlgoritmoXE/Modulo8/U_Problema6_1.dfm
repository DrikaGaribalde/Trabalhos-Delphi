object frmLancaValores: TfrmLancaValores
  Left = 229
  Top = 449
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  ClientHeight = 158
  ClientWidth = 320
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
    Left = 8
    Top = 16
    Width = 50
    Height = 18
    Caption = 'Nome: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 8
    Top = 56
    Width = 54
    Height = 18
    Caption = 'Sal'#225'rio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object edtNome: TEdit
    Left = 72
    Top = 16
    Width = 241
    Height = 21
    TabOrder = 0
  end
  object edtSalario: TEdit
    Left = 72
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnConfirmar: TButton
    Left = 72
    Top = 88
    Width = 241
    Height = 25
    Caption = 'Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnConfirmarClick
  end
end
