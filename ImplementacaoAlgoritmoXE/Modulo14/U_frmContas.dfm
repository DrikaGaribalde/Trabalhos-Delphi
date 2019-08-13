object frmContas: TfrmContas
  Left = 432
  Top = 192
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmContas'
  ClientHeight = 365
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pgc1: TPageControl
    Left = 0
    Top = 0
    Width = 447
    Height = 365
    ActivePage = ts2
    Align = alClient
    TabOrder = 0
    OnChange = pgc1Change
    object ts1: TTabSheet
      Caption = 'DADOS'
      object lbl1: TLabel
        Left = 9
        Top = 9
        Width = 106
        Height = 13
        Caption = 'NUMERO DA CONTA'
        FocusControl = dbedtNUMEROCONTA
      end
      object Label2: TLabel
        Left = 9
        Top = 49
        Width = 77
        Height = 13
        Caption = 'CORRENTISTA'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 9
        Top = 89
        Width = 36
        Height = 13
        Caption = 'SALDO'
        FocusControl = DBEdit3
      end
      object dbedtNUMEROCONTA: TDBEdit
        Left = 9
        Top = 25
        Width = 199
        Height = 21
        DataField = 'NUMEROCONTA'
        DataSource = dmModulo.dtsConta
        MaxLength = 3
        TabOrder = 0
        OnKeyPress = dbedtNUMEROCONTAKeyPress
      end
      object DBEdit2: TDBEdit
        Left = 9
        Top = 65
        Width = 420
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CORRENTISTA'
        DataSource = dmModulo.dtsConta
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 9
        Top = 105
        Width = 134
        Height = 21
        CharCase = ecUpperCase
        DataField = 'SALDO'
        DataSource = dmModulo.dtsConta
        TabOrder = 2
      end
      object dbnvgr1: TDBNavigator
        Left = 56
        Top = 144
        Width = 240
        Height = 25
        DataSource = dmModulo.dtsConta
        TabOrder = 3
      end
    end
    object ts2: TTabSheet
      Caption = 'LAN'#199'AMENTOS NA CONTA'
      ImageIndex = 1
      object dbgrd1: TDBGrid
        Left = 0
        Top = 0
        Width = 439
        Height = 161
        Align = alTop
        DataSource = dmModulo.dtsConsultaLancamento
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
end
