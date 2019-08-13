object Form1: TForm1
  Left = 229
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'C'#225'lculo de Renda Familiar'
  ClientHeight = 389
  ClientWidth = 319
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grpDadosFamilia: TGroupBox
    Left = 0
    Top = 0
    Width = 319
    Height = 389
    Align = alClient
    Caption = 'Dados da Fam'#237'lia'
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
      Width = 40
      Height = 16
      Caption = 'Nome:'
    end
    object lbl2: TLabel
      Left = 24
      Top = 81
      Width = 132
      Height = 16
      Caption = 'Data de Nascimento : '
    end
    object lbl3: TLabel
      Left = 24
      Top = 130
      Width = 101
      Height = 16
      Caption = 'Renda Familiar : '
    end
    object lbl4: TLabel
      Left = 24
      Top = 179
      Width = 217
      Height = 16
      Caption = 'Quantidade de Pessoas na Fam'#237'lia: '
    end
    object edtNome: TEdit
      Left = 24
      Top = 53
      Width = 250
      Height = 24
      TabOrder = 0
    end
    object edtRendaFamiliar: TEdit
      Left = 24
      Top = 151
      Width = 250
      Height = 24
      TabOrder = 2
    end
    object edtQuantPessoas: TEdit
      Left = 24
      Top = 200
      Width = 121
      Height = 24
      TabOrder = 3
    end
    object pnlResultado: TPanel
      Left = 8
      Top = 236
      Width = 301
      Height = 65
      TabOrder = 4
      object lbl5: TLabel
        Left = 13
        Top = 16
        Width = 44
        Height = 16
        Caption = 'Idade : '
      end
      object lbl6: TLabel
        Left = 13
        Top = 40
        Width = 102
        Height = 16
        Caption = 'Renda Percapta:'
      end
      object lblIdade: TLabel
        Left = 152
        Top = 16
        Width = 7
        Height = 16
        Caption = '0'
      end
      object lblRendaPercapita: TLabel
        Left = 152
        Top = 40
        Width = 7
        Height = 16
        Caption = '0'
      end
    end
    object btn1: TButton
      Left = 24
      Top = 324
      Width = 105
      Height = 25
      Caption = 'Calcular Idade'
      TabOrder = 5
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 136
      Top = 324
      Width = 169
      Height = 25
      Caption = 'Calcular Renda Percapita'
      TabOrder = 6
      OnClick = btn2Click
    end
    object dtpNascimento: TDateTimePicker
      Left = 24
      Top = 102
      Width = 186
      Height = 24
      Date = 42884.798483969910000000
      Time = 42884.798483969910000000
      TabOrder = 1
    end
  end
end
