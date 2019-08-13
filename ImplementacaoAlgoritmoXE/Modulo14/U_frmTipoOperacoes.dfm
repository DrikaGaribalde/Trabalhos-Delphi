object frmTipoOperacoes: TfrmTipoOperacoes
  Left = 259
  Top = 231
  Width = 450
  Height = 286
  Caption = 'frmTipoOperacoes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grpTipoOperacao: TGroupBox
    Left = 2
    Top = 7
    Width = 423
    Height = 178
    Caption = 'Cadastro de tipos de opera'#231#245'es'
    TabOrder = 0
    object lbl1: TLabel
      Left = 16
      Top = 24
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
      FocusControl = dbedtCODIGOTIPOOPER
    end
    object Label2: TLabel
      Left = 16
      Top = 49
      Width = 51
      Height = 13
      Caption = 'Descri'#231#227'o:'
      FocusControl = DBEdit2
    end
    object dbedtCODIGOTIPOOPER: TDBEdit
      Left = 72
      Top = 24
      Width = 43
      Height = 21
      DataField = 'CODIGOTIPOOPER'
      DataSource = dmModulo.dtsTipos
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 72
      Top = 49
      Width = 332
      Height = 21
      DataField = 'NOME'
      DataSource = dmModulo.dtsTipos
      TabOrder = 1
    end
    object dbrgrpTIPO: TDBRadioGroup
      Left = 16
      Top = 72
      Width = 393
      Height = 89
      Caption = 'Tipo de Opera'#231#227'o : '
      Columns = 2
      DataField = 'TIPO'
      DataSource = dmModulo.dtsTipos
      Items.Strings = (
        'Cr'#233'dito'
        'D'#233'bito')
      TabOrder = 2
    end
  end
  object dbnvgr1: TDBNavigator
    Left = 97
    Top = 192
    Width = 240
    Height = 25
    DataSource = dmModulo.dtsTipos
    TabOrder = 1
  end
end
