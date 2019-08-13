object frmConsulta: TfrmConsulta
  Left = 605
  Top = 185
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Consulta Horas Extras e Atrasos'
  ClientHeight = 355
  ClientWidth = 515
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
  object lbl4: TLabel
    Left = 8
    Top = 320
    Width = 103
    Height = 13
    Caption = 'Totais na refer'#234'ncia : '
  end
  object lbl5: TLabel
    Left = 172
    Top = 304
    Width = 69
    Height = 13
    Caption = 'Horas Extras : '
  end
  object lbl6: TLabel
    Left = 320
    Top = 304
    Width = 44
    Height = 13
    Caption = 'Atrasos : '
  end
  object grp1: TGroupBox
    Left = 0
    Top = 0
    Width = 515
    Height = 81
    Align = alTop
    Caption = ' Filtro  '
    TabOrder = 0
    object dbtxtNOME_FUNCIONARIO: TDBText
      Left = 61
      Top = 18
      Width = 84
      Height = 13
      AutoSize = True
      DataField = 'NOME_FUNCIONARIO'
      DataSource = dts1
    end
    object dbtxtFUNCAO_FUNCIONARIO: TDBText
      Left = 61
      Top = 40
      Width = 46
      Height = 13
      AutoSize = True
      DataField = 'FUNCAO_FUNCIONARIO'
      DataSource = dts1
    end
    object lbl1: TLabel
      Left = 8
      Top = 18
      Width = 34
      Height = 13
      Caption = 'Nome :'
    end
    object lbl2: TLabel
      Left = 8
      Top = 40
      Width = 42
      Height = 13
      Caption = 'Fun'#231#227'o :'
    end
    object lbl3: TLabel
      Left = 200
      Top = 18
      Width = 61
      Height = 13
      Caption = 'Refer'#234'ncia : '
    end
    object dtpReferencia: TDateTimePicker
      Left = 200
      Top = 34
      Width = 121
      Height = 21
      Date = 43219.637859108800000000
      Time = 43219.637859108800000000
      TabOrder = 0
    end
    object btnConsultar: TButton
      Left = 328
      Top = 30
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 1
      OnClick = btnConsultarClick
    end
  end
  object dbgrd1: TDBGrid
    Left = 0
    Top = 81
    Width = 515
    Height = 224
    Align = alTop
    DataSource = dts2
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA_PONTO'
        Title.Caption = 'Data da Marca'#231#227'o'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA_EXTRA'
        Title.Caption = 'Horas Extras'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ATRASO'
        Title.Caption = 'Atrasos'
        Width = 150
        Visible = True
      end>
  end
  object dbedtHORAEXTRA: TDBEdit
    Left = 172
    Top = 320
    Width = 121
    Height = 21
    DataField = 'HORAEXTRA'
    DataSource = dts3
    ReadOnly = True
    TabOrder = 2
  end
  object dbedtHORAEXTRA1: TDBEdit
    Left = 320
    Top = 320
    Width = 121
    Height = 21
    DataField = 'ATRASO'
    DataSource = dts3
    ReadOnly = True
    TabOrder = 3
  end
  object dts1: TDataSource
    DataSet = dmPrincipal.cdsFuncionario
    Left = 480
    Top = 24
  end
  object dts2: TDataSource
    DataSet = dmPrincipal.cdsPesq
    Left = 480
    Top = 272
  end
  object dts3: TDataSource
    DataSet = dmPrincipal.cdsSoma
    Left = 480
    Top = 312
  end
end
