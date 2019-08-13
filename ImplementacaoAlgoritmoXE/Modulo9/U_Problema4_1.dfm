object frmLanca: TfrmLanca
  Left = 256
  Top = 319
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lan'#231'ar produto em estoque'
  ClientHeight = 159
  ClientWidth = 404
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
  object pnl1: TPanel
    Left = -1
    Top = -1
    Width = 404
    Height = 113
    BorderStyle = bsSingle
    TabOrder = 0
    object lbl1: TLabel
      Left = 19
      Top = 16
      Width = 37
      Height = 13
      Caption = 'Nome : '
    end
    object lbl2: TLabel
      Left = 8
      Top = 64
      Width = 72
      Height = 13
      Caption = 'Valor Unit'#225'rio : '
    end
    object lbl3: TLabel
      Left = 230
      Top = 64
      Width = 48
      Height = 13
      Caption = 'Estoque : '
    end
    object edtNome: TEdit
      Left = 60
      Top = 16
      Width = 337
      Height = 21
      TabOrder = 0
      OnKeyPress = edtNomeKeyPress
    end
    object edtValorUnitario: TEdit
      Left = 82
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 1
      OnKeyPress = edtValorUnitarioKeyPress
    end
    object edtEstoque: TEdit
      Left = 276
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 2
      OnKeyPress = edtEstoqueKeyPress
    end
  end
  object btnInserir: TButton
    Left = 168
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 1
    OnClick = btnInserirClick
  end
end
