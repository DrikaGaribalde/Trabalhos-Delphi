object Form1: TForm1
  Left = 229
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'C'#225'lculo do Peso'
  ClientHeight = 188
  ClientWidth = 231
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
    Left = 22
    Top = 16
    Width = 30
    Height = 13
    Caption = 'Altura:'
  end
  object lbl2: TLabel
    Left = 22
    Top = 53
    Width = 53
    Height = 13
    Caption = 'Peso Ideal:'
  end
  object lblPeso: TLabel
    Left = 86
    Top = 53
    Width = 34
    Height = 13
    Caption = 'lblPeso'
    Visible = False
  end
  object edtAltura: TEdit
    Left = 86
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object rgSexo: TRadioGroup
    Left = 22
    Top = 76
    Width = 185
    Height = 49
    Caption = 'Sexo'
    Columns = 2
    Items.Strings = (
      'Masculino'
      'Feminino')
    TabOrder = 1
  end
  object btnCalcular: TButton
    Left = 102
    Top = 136
    Width = 107
    Height = 25
    Caption = 'Calcular Peso'
    TabOrder = 2
    OnClick = btnCalcularClick
  end
end
