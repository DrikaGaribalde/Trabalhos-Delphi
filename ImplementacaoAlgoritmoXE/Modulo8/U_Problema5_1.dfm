object frmLancaSalario: TfrmLancaSalario
  Left = 241
  Top = 488
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Lan'#231'ar Sal'#225'rios'
  ClientHeight = 125
  ClientWidth = 320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 24
    Top = 16
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object lbl2: TLabel
    Left = 24
    Top = 56
    Width = 35
    Height = 13
    Caption = '&Sal'#225'rio:'
  end
  object edtCodigo: TEdit
    Left = 128
    Top = 16
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object edtSalario: TEdit
    Left = 128
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 152
    Top = 56
    Width = 1
    Height = 21
    TabOrder = 2
    Text = 'edt3'
  end
  object btnConfirma: TBitBtn
    Left = 88
    Top = 96
    Width = 209
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 3
    OnClick = btnConfirmaClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000555
      55555555008880055555555088CCC880555555508C888C8055555508CCCCCCC8
      05555508CECCCCC805555508CEECCCC8055555508C444C805555555088FFF880
      5555555508FFF80555555555508F805555555555508F805555555555508F8055
      55555555508F8055555555550888880555555555500000555555}
  end
end
