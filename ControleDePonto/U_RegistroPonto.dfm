object frmRegistroPonto: TfrmRegistroPonto
  Left = 621
  Top = 226
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Registro de ponto'
  ClientHeight = 258
  ClientWidth = 459
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
    Width = 459
    Height = 257
    Align = alTop
    DockSite = True
    TabOrder = 0
    object lbl1: TLabel
      Left = 32
      Top = 40
      Width = 95
      Height = 13
      Caption = 'Data de Marca'#231#227'o: '
    end
    object dtpMarcacao: TDateTimePicker
      Left = 128
      Top = 40
      Width = 186
      Height = 21
      Date = 43219.000000000000000000
      Time = 43219.000000000000000000
      TabOrder = 0
    end
    object grp1: TGroupBox
      Left = 16
      Top = 88
      Width = 425
      Height = 105
      Caption = 'Marca'#231#245'es : '
      TabOrder = 1
      object lbl2: TLabel
        Left = 24
        Top = 24
        Width = 37
        Height = 13
        Caption = 'Entrada'
      end
      object lbl3: TLabel
        Left = 118
        Top = 24
        Width = 67
        Height = 13
        Caption = 'Sa'#237'da Almo'#231'o'
      end
      object lbl4: TLabel
        Left = 216
        Top = 24
        Width = 79
        Height = 13
        Caption = 'Retorno Almo'#231'o '
      end
      object lbl5: TLabel
        Left = 314
        Top = 24
        Width = 29
        Height = 13
        Caption = 'Sa'#237'da'
      end
      object mskEntrada: TMaskEdit
        Left = 24
        Top = 44
        Width = 86
        Height = 21
        EditMask = '!90:00;1;_'
        MaxLength = 5
        TabOrder = 0
        Text = '  :  '
      end
      object mskSaidaAlmoco: TMaskEdit
        Left = 118
        Top = 44
        Width = 90
        Height = 21
        EditMask = '!90:00;1;_'
        MaxLength = 5
        TabOrder = 1
        Text = '  :  '
      end
      object mskRetornoAlmoco: TMaskEdit
        Left = 216
        Top = 44
        Width = 90
        Height = 21
        EditMask = '!90:00;1;_'
        MaxLength = 5
        TabOrder = 2
        Text = '  :  '
      end
      object mskSaida: TMaskEdit
        Left = 314
        Top = 44
        Width = 90
        Height = 21
        EditMask = '!90:00;1;_'
        MaxLength = 5
        TabOrder = 3
        Text = '  :  '
      end
    end
    object btnGravar: TButton
      Left = 284
      Top = 216
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 2
      OnClick = btnGravarClick
    end
    object btnCancelar: TButton
      Tag = 1
      Left = 366
      Top = 216
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = btnCancelarClick
    end
  end
end
