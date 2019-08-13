object frmReajuste: TfrmReajuste
  Left = 230
  Top = 165
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Reajuste de Formul'#225'rio'
  ClientHeight = 219
  ClientWidth = 327
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 327
    Height = 161
    Align = alTop
    TabOrder = 0
    object lbl1: TLabel
      Left = 19
      Top = 32
      Width = 118
      Height = 13
      Caption = 'Folha antes do Reajuste:'
    end
    object lbl2: TLabel
      Left = 19
      Top = 64
      Width = 100
      Height = 13
      Caption = 'Folha ap'#243's Reajuste:'
    end
    object lbl3: TLabel
      Left = 19
      Top = 96
      Width = 142
      Height = 13
      Caption = 'Percentual Geral do Reajuste:'
    end
    object lblAntes: TLabel
      Left = 248
      Top = 32
      Width = 6
      Height = 13
      Caption = '0'
    end
    object lblApos: TLabel
      Left = 248
      Top = 64
      Width = 6
      Height = 13
      Caption = '0'
    end
    object lblPercentual: TLabel
      Left = 248
      Top = 96
      Width = 6
      Height = 13
      Caption = '0'
    end
  end
  object btnIniciar: TButton
    Left = 43
    Top = 176
    Width = 241
    Height = 25
    Caption = 'Iniciar Lan'#231'amento'
    TabOrder = 1
    OnClick = btnIniciarClick
  end
end
