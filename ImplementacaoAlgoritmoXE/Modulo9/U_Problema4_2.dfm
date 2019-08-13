object frmAlteraDados: TfrmAlteraDados
  Left = 240
  Top = 264
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Alterar Dados'
  ClientHeight = 209
  ClientWidth = 425
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 425
    Height = 41
    TabOrder = 0
    object lbl1: TLabel
      Left = 29
      Top = 12
      Width = 88
      Height = 13
      Caption = 'Produto a Alterar : '
    end
    object cbbAlterarProduto: TComboBox
      Left = 120
      Top = 8
      Width = 292
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = cbbAlterarProdutoChange
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 48
    Width = 425
    Height = 113
    TabOrder = 1
    object lbl2: TLabel
      Left = 56
      Top = 16
      Width = 37
      Height = 13
      Caption = 'Nome : '
    end
    object lbl3: TLabel
      Left = 21
      Top = 44
      Width = 72
      Height = 13
      Caption = 'Valor Unit'#225'rio : '
    end
    object lbl4: TLabel
      Left = 45
      Top = 72
      Width = 48
      Height = 13
      Caption = 'Estoque : '
    end
    object edtNomeAlterar: TEdit
      Left = 96
      Top = 16
      Width = 313
      Height = 21
      TabOrder = 0
    end
    object edtValorUnitarioAlterar: TEdit
      Left = 96
      Top = 44
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edtEstoqueAlterar: TEdit
      Left = 96
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 2
    end
  end
  object btnAlterar: TBitBtn
    Left = 175
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 2
  end
end
