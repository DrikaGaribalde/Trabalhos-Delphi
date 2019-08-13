object frmPrincipal: TfrmPrincipal
  Left = 242
  Top = 149
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Controle de Ponto Individual'
  ClientHeight = 450
  ClientWidth = 277
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
    Width = 273
    Height = 449
    TabOrder = 0
    object btnRegistrarPonto: TButton
      Left = 28
      Top = 24
      Width = 217
      Height = 89
      Caption = 'Registrar Ponto'
      TabOrder = 0
      OnClick = btnRegistrarPontoClick
    end
    object btnConsultaHoras: TButton
      Left = 28
      Top = 125
      Width = 217
      Height = 89
      Caption = 'Consulta de Horas Extras'
      TabOrder = 1
      OnClick = btnConsultaHorasClick
    end
    object btnRelatorioPonto: TButton
      Left = 28
      Top = 227
      Width = 217
      Height = 89
      Caption = 'Relat'#243'rio de Ponto'
      TabOrder = 2
      OnClick = btnRelatorioPontoClick
    end
    object btnConfiguracoes: TButton
      Left = 28
      Top = 328
      Width = 217
      Height = 89
      Caption = 'Configura'#231#245'es'
      TabOrder = 3
      OnClick = btnConfiguracoesClick
    end
  end
end
