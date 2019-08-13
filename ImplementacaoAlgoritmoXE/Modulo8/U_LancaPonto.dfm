object frmLancaPonto: TfrmLancaPonto
  Left = 251
  Top = 506
  Width = 326
  Height = 132
  Caption = 'Lan'#231'a Ponto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlLancamento: TPanel
    Left = 0
    Top = 0
    Width = 310
    Height = 73
    Align = alTop
    TabOrder = 0
    object lbl1: TLabel
      Left = 32
      Top = 16
      Width = 41
      Height = 13
      Caption = 'Jogador:'
    end
    object edtJogador: TEdit
      Left = 88
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
      OnKeyDown = edtJogadorKeyDown
    end
  end
end
