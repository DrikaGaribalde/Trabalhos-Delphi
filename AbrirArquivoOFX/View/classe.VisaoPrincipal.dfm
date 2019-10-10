object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Consulta de saldo'
  ClientHeight = 369
  ClientWidth = 736
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 519
    Top = 267
    Width = 67
    Height = 13
    Caption = 'Saldo Final:'
  end
  object Label2: TLabel
    Left = 519
    Top = 21
    Width = 75
    Height = 13
    Caption = 'Saldo Inicial:'
  end
  object btnCarregaOFX: TButton
    Left = 8
    Top = 16
    Width = 113
    Height = 25
    Caption = 'Carregar OFX'
    TabOrder = 0
    OnClick = btnCarregaOFXClick
  end
  object sg: TStringGrid
    Left = 8
    Top = 56
    Width = 713
    Height = 177
    ColCount = 3
    DefaultColWidth = 100
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
    TabOrder = 1
  end
  object edtSaldoFinal: TEdit
    Left = 600
    Top = 264
    Width = 121
    Height = 21
    Alignment = taRightJustify
    Enabled = False
    TabOrder = 2
  end
  object btnSalvar: TButton
    Left = 646
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = btnSalvarClick
  end
  object DBESaldoInicial: TDBEdit
    Left = 600
    Top = 18
    Width = 121
    Height = 21
    DataField = 'valor'
    DataSource = dmMovimento.dsConsulta
    Enabled = False
    TabOrder = 4
  end
  object OpenDialog1: TOpenDialog
    Filter = 'OFX(*.ofx)|*.ofx'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Title = 'Abrir arquivo .OFX'
    Left = 144
    Top = 8
  end
end
