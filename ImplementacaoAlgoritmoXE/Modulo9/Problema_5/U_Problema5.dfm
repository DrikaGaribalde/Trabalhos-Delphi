object frmDvd: TfrmDvd
  Left = 229
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Problema 5 - Cole'#231#227'o de DVD'
  ClientHeight = 427
  ClientWidth = 351
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 32
    Width = 43
    Height = 13
    Caption = 'T'#237'tulo :   '
  end
  object lbl2: TLabel
    Left = 18
    Top = 64
    Width = 41
    Height = 13
    Caption = 'G'#234'nero: '
  end
  object edtTitulo: TEdit
    Left = 56
    Top = 32
    Width = 273
    Height = 21
    TabOrder = 0
  end
  object cbbGenero: TComboBox
    Left = 56
    Top = 64
    Width = 273
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      'Romance'
      'Suspense'
      'Terror'
      'Fic'#231#227'o')
  end
  object rgAcao: TRadioGroup
    Left = 56
    Top = 91
    Width = 273
    Height = 78
    Caption = 'A'#231#227'o : '
    Columns = 3
    Items.Strings = (
      '&Inserir'
      '&Alterar'
      '&Excluir')
    TabOrder = 2
  end
  object grpDados: TGroupBox
    Left = 56
    Top = 224
    Width = 273
    Height = 193
    Caption = 'DVDs Existentes :'
    TabOrder = 3
    object lstDadosExistentes: TListBox
      Left = 8
      Top = 17
      Width = 257
      Height = 169
      ItemHeight = 13
      TabOrder = 0
      OnClick = lstDadosExistentesClick
    end
  end
  object btnAcao: TButton
    Left = 136
    Top = 184
    Width = 105
    Height = 25
    Caption = 'Executar a A'#231#227'o'
    TabOrder = 4
    WordWrap = True
    OnClick = btnAcaoClick
  end
end
