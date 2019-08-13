object frmExtrato: TfrmExtrato
  Left = 255
  Top = 192
  Width = 415
  Height = 293
  BorderIcons = [biSystemMenu]
  Caption = 'frmExtrato'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 0
    Top = 0
    Width = 399
    Height = 201
    Align = alTop
    Caption = 'Dados necess'#225'rios para emiss'#227'o de extrato'
    TabOrder = 0
    object bvl1: TBevel
      Left = 8
      Top = 122
      Width = 385
      Height = 10
      Shape = bsBottomLine
    end
    object lbl1: TLabel
      Left = 16
      Top = 40
      Width = 31
      Height = 13
      Caption = 'Conta:'
    end
    object lbl2: TLabel
      Left = 24
      Top = 96
      Width = 20
      Height = 13
      Caption = 'De: '
    end
    object lbl3: TLabel
      Left = 192
      Top = 96
      Width = 19
      Height = 13
      Caption = 'At'#233':'
    end
    object dbgEmissaoExtrato: TDBLookupComboBox
      Left = 56
      Top = 40
      Width = 289
      Height = 21
      KeyField = 'NUMEROCONTA'
      ListField = 'CORRENTISTA'
      ListSource = dmModulo.dtsConta
      TabOrder = 0
    end
    object mskInicio: TMaskEdit
      Left = 56
      Top = 96
      Width = 120
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object mskTermino: TMaskEdit
      Left = 219
      Top = 96
      Width = 120
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
    end
    object btn1: TBitBtn
      Left = 120
      Top = 160
      Width = 113
      Height = 25
      Caption = 'Emitir Extrato'
      TabOrder = 3
      OnClick = btn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000000
        055557777777777775F508888888888880557F5FFFFFFFFFF75F080000000000
        88057577777777775F755080FFFFFF05088057F7FFFFFF7575F70000000000F0
        F08077777777775757F70FFFFFFFFF0F008075F5FF5FF57577F750F00F00FFF0
        F08057F775775557F7F750FFFFFFFFF0F08057FF5555555757F7000FFFFFFFFF
        0000777FF5FFFFF577770900F00000F000907F775777775777F7090FFFFFFFFF
        00907F7F555555557757000FFFFFFFFF0F00777F5FFF5FF57F77550F000F00FF
        0F05557F777577557F7F550FFFFFFFFF0005557F555FFFFF7775550FFF000000
        05555575FF777777755555500055555555555557775555555555}
      NumGlyphs = 2
      Spacing = 6
    end
  end
end
