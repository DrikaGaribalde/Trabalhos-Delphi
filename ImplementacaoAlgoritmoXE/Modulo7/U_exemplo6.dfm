object Form1: TForm1
  Left = 229
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'N'#250'meros em Ordem'
  ClientHeight = 500
  ClientWidth = 330
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl4: TLabel
    Left = 0
    Top = 162
    Width = 53
    Height = 22
    Align = alCustom
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight]
    BiDiMode = bdLeftToRight
    Caption = 'lbl4'
    Color = clFuchsia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Copperplate Gothic Light'
    Font.Style = []
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
  end
  object grp1: TGroupBox
    Left = 8
    Top = 8
    Width = 121
    Height = 105
    Caption = 'Informe os N'#250'meros:'
    TabOrder = 0
    object lbl1: TLabel
      Left = 12
      Top = 21
      Width = 16
      Height = 13
      Caption = '1'#186' :'
    end
    object lbl2: TLabel
      Left = 12
      Top = 49
      Width = 16
      Height = 13
      Caption = '2'#186' :'
    end
    object lbl3: TLabel
      Left = 12
      Top = 77
      Width = 16
      Height = 13
      Caption = '3'#186' :'
    end
    object edt1: TEdit
      Left = 31
      Top = 21
      Width = 53
      Height = 21
      TabOrder = 0
    end
    object edt2: TEdit
      Left = 31
      Top = 49
      Width = 53
      Height = 21
      TabOrder = 1
    end
    object edt3: TEdit
      Left = 31
      Top = 77
      Width = 53
      Height = 21
      TabOrder = 2
    end
  end
  object btnOrdenar: TButton
    Left = 88
    Top = 120
    Width = 145
    Height = 25
    Caption = 'Ordenar'
    TabOrder = 1
    OnClick = btnOrdenarClick
  end
  object pnl1: TPanel
    Left = 38
    Top = 214
    Width = 77
    Height = 41
    Caption = 'pnl1'
    TabOrder = 2
  end
  object pnl2: TPanel
    Left = 125
    Top = 214
    Width = 77
    Height = 41
    Caption = 'pnl2'
    TabOrder = 3
  end
  object pnl3: TPanel
    Left = 212
    Top = 214
    Width = 77
    Height = 41
    Caption = 'pnl3'
    TabOrder = 4
  end
  object rgOpcao: TRadioGroup
    Left = 136
    Top = 8
    Width = 185
    Height = 105
    Caption = 'Op'#231#227'o de ordena'#231#227'o'
    Items.Strings = (
      '&Crescente'
      '&Decrescente'
      '&Maior entre os dois')
    TabOrder = 5
  end
end
