object frmCalcados: TfrmCalcados
  Left = 229
  Top = 124
  Width = 375
  Height = 393
  Caption = 'frmCalcados'
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
    Width = 359
    Height = 153
    Align = alTop
    TabOrder = 0
    object lbl1: TLabel
      Left = 80
      Top = 40
      Width = 100
      Height = 13
      Caption = 'Dia de Maior Venda: '
    end
    object lbl2: TLabel
      Left = 80
      Top = 62
      Width = 148
      Height = 13
      Caption = 'Quantidade vendida neste dia: '
    end
    object lbl3: TLabel
      Left = 80
      Top = 84
      Width = 120
      Height = 13
      Caption = 'Total de pares vendidos: '
    end
    object lblDia: TLabel
      Left = 256
      Top = 40
      Width = 6
      Height = 13
      Caption = '0'
    end
    object lblQuantidadeDia: TLabel
      Left = 256
      Top = 62
      Width = 6
      Height = 13
      Caption = '0'
    end
    object lblTotal: TLabel
      Left = 256
      Top = 84
      Width = 6
      Height = 13
      Caption = '0'
    end
  end
  object btnIniciar: TButton
    Left = 0
    Top = 168
    Width = 359
    Height = 49
    Caption = 'Iniciar o lan'#231'amento'
    TabOrder = 1
    OnClick = btnIniciarClick
  end
end
