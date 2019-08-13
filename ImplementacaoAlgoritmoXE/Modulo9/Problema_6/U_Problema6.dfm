object frmProblema6: TfrmProblema6
  Left = 229
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lan'#231'amento de Notas'
  ClientHeight = 364
  ClientWidth = 721
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl4: TLabel
    Left = 328
    Top = 344
    Width = 86
    Height = 13
    Caption = 'M'#233'dia da Turma : '
  end
  object lblResultadoMedia: TLabel
    Left = 596
    Top = 344
    Width = 6
    Height = 13
    Caption = '0'
  end
  object grp1: TGroupBox
    Left = 3
    Top = 8
    Width = 319
    Height = 139
    Caption = 'Alunos e Notas : '
    TabOrder = 0
    object lbl1: TLabel
      Left = 6
      Top = 22
      Width = 36
      Height = 13
      Caption = 'Aluno : '
    end
    object lbl2: TLabel
      Left = 6
      Top = 54
      Width = 37
      Height = 13
      Caption = 'Notas : '
    end
    object lbl3: TLabel
      Left = 5
      Top = 112
      Width = 309
      Height = 20
      Caption = 'As notas devem estar  entre 0 e 100 [Zero e Cem pontos]'
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object edtNomeAluno: TEdit
      Left = 41
      Top = 22
      Width = 265
      Height = 21
      TabOrder = 0
      OnExit = edtNomeAlunoExit
    end
    object edtNota1: TEdit
      Left = 41
      Top = 54
      Width = 65
      Height = 21
      TabOrder = 1
      OnKeyPress = edtNota1KeyPress
    end
    object edtNota2: TEdit
      Left = 108
      Top = 54
      Width = 65
      Height = 21
      TabOrder = 2
      OnKeyPress = edtNota1KeyPress
    end
    object edtNota3: TEdit
      Left = 175
      Top = 54
      Width = 65
      Height = 21
      TabOrder = 3
      OnKeyPress = edtNota1KeyPress
    end
    object edtNota4: TEdit
      Left = 242
      Top = 54
      Width = 65
      Height = 21
      TabOrder = 4
      OnKeyPress = edtNota1KeyPress
    end
    object btnInserir: TButton
      Left = 122
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Inserir'
      TabOrder = 5
      OnClick = btnInserirClick
    end
  end
  object btnNotasInferiores: TBitBtn
    Left = 8
    Top = 168
    Width = 309
    Height = 34
    Caption = 'Identificar notas inferiores a m'#233'dia da turma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnNotasInferioresClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333FFF333333333333000333333333
      3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
      3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
      0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
      BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
      33337777773FF733333333333300033333333333337773333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object lstMediaInferior: TListBox
    Left = 8
    Top = 232
    Width = 309
    Height = 125
    ItemHeight = 13
    TabOrder = 2
  end
  object hdrcntrl1: THeaderControl
    Left = 8
    Top = 213
    Width = 309
    Height = 17
    Align = alCustom
    Sections = <
      item
        Alignment = taCenter
        AllowClick = False
        ImageIndex = -1
        Text = 'Alunos com notas inferior a m'#233'dia da turma'
        Width = 309
      end>
  end
  object lstNomeAluno: TListBox
    Left = 328
    Top = 35
    Width = 265
    Height = 304
    ItemHeight = 13
    TabOrder = 4
  end
  object lstMedia: TListBox
    Left = 596
    Top = 35
    Width = 121
    Height = 304
    ItemHeight = 13
    TabOrder = 5
  end
  object hdrcntrl2: THeaderControl
    Left = 328
    Top = 16
    Width = 389
    Height = 17
    Align = alCustom
    Sections = <
      item
        ImageIndex = -1
        Text = 'Nome do aluno'
        Width = 267
      end
      item
        ImageIndex = -1
        Text = 'M'#233'dia'
        Width = 120
      end>
  end
end
