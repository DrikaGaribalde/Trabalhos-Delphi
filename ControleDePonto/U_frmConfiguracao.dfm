object frmConfiguracao: TfrmConfiguracao
  Left = 493
  Top = 192
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Configura'#231#245'es'
  ClientHeight = 151
  ClientWidth = 405
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
    Width = 405
    Height = 153
    Align = alTop
    TabOrder = 0
    object lbl1: TLabel
      Left = 12
      Top = 29
      Width = 37
      Height = 13
      Caption = 'Nome : '
    end
    object lbl2: TLabel
      Left = 12
      Top = 61
      Width = 45
      Height = 13
      Caption = 'Fun'#231#227'o : '
    end
    object edtNome: TEdit
      Left = 59
      Top = 21
      Width = 325
      Height = 21
      TabOrder = 0
    end
    object edtFuncao: TEdit
      Left = 59
      Top = 53
      Width = 325
      Height = 21
      TabOrder = 1
    end
    object btnGravar: TButton
      Left = 309
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 2
      OnClick = btnGravarClick
    end
  end
end
