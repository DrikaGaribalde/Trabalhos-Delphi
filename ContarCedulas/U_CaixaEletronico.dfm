object frmCaixaEletronico: TfrmCaixaEletronico
  Left = 269
  Top = 151
  BorderStyle = bsDialog
  Caption = 'Caixa Eletr'#244'nico'
  ClientHeight = 400
  ClientWidth = 629
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 22
  object edtValor: TEdit
    Left = 0
    Top = 16
    Width = 513
    Height = 49
    Hint = 'Digite o valor'
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    MaxLength = 4
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    Text = '0'
    OnKeyPress = edtValorKeyPress
  end
  object btnSacar: TButton
    Left = 520
    Top = 16
    Width = 105
    Height = 49
    Caption = 'Sacar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnSacarClick
  end
  object mmoMostrar: TMemo
    Left = 0
    Top = 72
    Width = 629
    Height = 328
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    TabOrder = 2
  end
end
