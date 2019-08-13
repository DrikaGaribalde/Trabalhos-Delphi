object frmPoupanca: TfrmPoupanca
  Left = 229
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Rendimentos Caderneta de Poupan'#231'a'
  ClientHeight = 442
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
  object grpDados: TGroupBox
    Left = 0
    Top = 0
    Width = 327
    Height = 145
    Align = alTop
    Caption = 'Dados de Abertura da Conta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lbl1: TLabel
      Left = 24
      Top = 32
      Width = 61
      Height = 16
      Caption = 'Dep'#243'sito :'
    end
    object lbl2: TLabel
      Left = 24
      Top = 64
      Width = 74
      Height = 16
      Caption = 'Taxa Anual :'
    end
    object edtDeposito: TEdit
      Left = 106
      Top = 32
      Width = 168
      Height = 24
      TabOrder = 0
    end
    object edtTaxaAnual: TEdit
      Left = 106
      Top = 64
      Width = 168
      Height = 24
      TabOrder = 1
    end
    object btnProjecao: TButton
      Left = 106
      Top = 104
      Width = 168
      Height = 25
      Caption = 'Realizar Proje'#231#227'o'
      TabOrder = 2
      OnClick = btnProjecaoClick
    end
  end
  object lvDados: TListView
    Left = 0
    Top = 192
    Width = 327
    Height = 250
    Align = alBottom
    Columns = <
      item
        AutoSize = True
        Caption = 'M'#234's'
      end
      item
        Alignment = taCenter
        AutoSize = True
        Caption = 'Saldo Inicial'
      end
      item
        Alignment = taCenter
        AutoSize = True
        Caption = 'Ganho'
      end
      item
        Alignment = taCenter
        AutoSize = True
        Caption = 'Saldo Final'
      end>
    TabOrder = 1
    ViewStyle = vsReport
  end
end
