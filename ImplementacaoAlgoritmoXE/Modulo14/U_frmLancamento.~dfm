object frmLancamento: TfrmLancamento
  Left = 619
  Top = 198
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmLancamento'
  ClientHeight = 327
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 527
    Height = 273
    Align = alTop
    TabOrder = 0
    object lbl1: TLabel
      Left = 51
      Top = 40
      Width = 43
      Height = 13
      Caption = 'CONTA: '
    end
    object lbl2: TLabel
      Left = 29
      Top = 80
      Width = 65
      Height = 13
      Caption = 'OPERA'#199#195'O: '
    end
    object lbl3: TLabel
      Left = 18
      Top = 120
      Width = 76
      Height = 13
      Caption = 'DOCUMENTO: '
      FocusControl = dbedtNUMERODOCUMENT
    end
    object lbl4: TLabel
      Left = 29
      Top = 160
      Width = 65
      Height = 13
      Caption = 'HIST'#211'RICO: '
      FocusControl = dbedtHISTORICO
    end
    object lbl5: TLabel
      Left = 62
      Top = 200
      Width = 32
      Height = 13
      Caption = 'DATA:'
      FocusControl = dbedtDATA
    end
    object lbl6: TLabel
      Left = 52
      Top = 240
      Width = 42
      Height = 13
      Caption = 'VALOR: '
      FocusControl = dbedtVALOR
    end
    object dbedtNUMERODOCUMENT: TDBEdit
      Left = 101
      Top = 116
      Width = 199
      Height = 21
      DataField = 'NUMERODOCUMENT'
      DataSource = dmModulo.dtsLancamento
      TabOrder = 0
    end
    object dbedtHISTORICO: TDBEdit
      Left = 101
      Top = 156
      Width = 420
      Height = 21
      DataField = 'HISTORICO'
      DataSource = dmModulo.dtsLancamento
      TabOrder = 1
    end
    object dbedtDATA: TDBEdit
      Left = 101
      Top = 196
      Width = 134
      Height = 21
      DataField = 'DATA'
      DataSource = dmModulo.dtsLancamento
      TabOrder = 2
    end
    object dbedtVALOR: TDBEdit
      Left = 101
      Top = 236
      Width = 134
      Height = 21
      DataField = 'VALOR'
      DataSource = dmModulo.dtsLancamento
      TabOrder = 3
    end
    object dbgCONTA: TDBLookupComboBox
      Left = 101
      Top = 36
      Width = 145
      Height = 21
      DataField = 'NUMEROCONTA'
      DataSource = dmModulo.dtsLancamento
      KeyField = 'NUMEROCONTA'
      ListField = 'CORRENTISTA'
      ListSource = dmModulo.dtsConta
      TabOrder = 4
    end
    object dbgCODIGOTIPOOPER: TDBLookupComboBox
      Left = 101
      Top = 75
      Width = 145
      Height = 21
      DataField = 'CODIGOTIPOOPER'
      DataSource = dmModulo.dtsLancamento
      KeyField = 'CODIGOTIPOOPER'
      ListField = 'NOME'
      ListSource = dmModulo.dtsTipos
      TabOrder = 5
    end
  end
  object dbnvgr1: TDBNavigator
    Left = 143
    Top = 288
    Width = 240
    Height = 25
    DataSource = dmModulo.dtsLancamento
    TabOrder = 1
  end
end
