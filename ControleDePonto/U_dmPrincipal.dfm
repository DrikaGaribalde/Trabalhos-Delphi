object dmPrincipal: TdmPrincipal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 224
  Top = 176
  Height = 468
  Width = 358
  object sql1: TSQLConnection
    ConnectionName = 'ControlePonto'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=D:\ProjetoDelphi\Dados\Funcionario.gdb'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=masterkey'
      'RoleName=RoleName'
      'ServerCharSet=win1252'
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=sysdba'
      'WaitOnLocks=True')
    VendorLib = 'GDS32.DLL'
    Connected = True
    Left = 24
    Top = 88
  end
  object sds1: TSQLDataSet
    Active = True
    CommandText = 'select * from PONTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sql1
    Left = 24
    Top = 144
  end
  object cds1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp1'
    OnNewRecord = cds1NewRecord
    Left = 104
    Top = 144
    object cds1ID_PONTO: TIntegerField
      FieldName = 'ID_PONTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds1ID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cds1DATA_PONTO: TDateField
      FieldName = 'DATA_PONTO'
    end
    object cds1ENTRADA: TStringField
      FieldName = 'ENTRADA'
      Size = 10
    end
    object cds1SAIDA_ALMOCO: TStringField
      FieldName = 'SAIDA_ALMOCO'
      Size = 10
    end
    object cds1RETORNO_ALMOCO: TStringField
      FieldName = 'RETORNO_ALMOCO'
      Size = 10
    end
    object cds1SAIDA: TStringField
      FieldName = 'SAIDA'
      Size = 10
    end
    object cds1HORA_EXTRA: TIntegerField
      FieldName = 'HORA_EXTRA'
    end
    object cds1ATRASO: TIntegerField
      FieldName = 'ATRASO'
    end
  end
  object dsp1: TDataSetProvider
    DataSet = sds1
    Options = [poPropogateChanges]
    BeforeUpdateRecord = dsp1BeforeUpdateRecord
    Left = 64
    Top = 144
  end
  object sqlqryPonto: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      'gen_id(gen_ponto_id,1) as novonumero'
      'from codigo')
    SQLConnection = sql1
    Left = 64
    Top = 88
    object sdsPontoNOVONUMERO: TFMTBCDField
      FieldName = 'NOVONUMERO'
      Required = True
      Precision = 15
      Size = 0
    end
  end
  object sdsFuncionario: TSQLDataSet
    CommandText = 'select * from FUNCIONARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sql1
    Left = 24
    Top = 304
  end
  object dspFuncionario: TDataSetProvider
    DataSet = sdsFuncionario
    Left = 104
    Top = 304
  end
  object cdsFuncionario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFuncionario'
    Left = 192
    Top = 304
    object cdsFuncionarioID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsFuncionarioNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      Size = 100
    end
    object cdsFuncionarioFUNCAO_FUNCIONARIO: TStringField
      FieldName = 'FUNCAO_FUNCIONARIO'
      Size = 50
    end
  end
  object sdsPesq: TSQLDataSet
    CommandText = 
      'select DATA_PONTO, HORA_EXTRA, ATRASO from PONTO'#13#10'where extract(' +
      'MONTH from data_ponto) = :mes'#13#10'and not(hora_extra = 0  and atras' +
      'o = 0)'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'mes'
        ParamType = ptInput
      end>
    SQLConnection = sql1
    Left = 24
    Top = 200
  end
  object cdsPesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesq'
    Left = 116
    Top = 200
    object cdsPesqDATA_PONTO: TDateField
      FieldName = 'DATA_PONTO'
    end
    object cdsPesqHORA_EXTRA: TIntegerField
      FieldName = 'HORA_EXTRA'
      DisplayFormat = '00:00;1;'
    end
    object cdsPesqATRASO: TIntegerField
      FieldName = 'ATRASO'
      DisplayFormat = '00:00;1;'
    end
  end
  object dspPesq: TDataSetProvider
    DataSet = sdsPesq
    Left = 71
    Top = 200
  end
  object sdsSoma: TSQLDataSet
    CommandText = 
      'select sum(HORA_EXTRA) as horaExtra, sum(ATRASO) as atraso from ' +
      'PONTO '#13#10'where extract(month from data_ponto) = :mes'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'mes'
        ParamType = ptInput
      end>
    SQLConnection = sql1
    Left = 24
    Top = 248
    object sdsSomaHORAEXTRA2: TFMTBCDField
      FieldName = 'HORAEXTRA'
      DisplayFormat = '00:00'
      Precision = 15
      Size = 0
    end
    object sdsSomaATRASO2: TFMTBCDField
      FieldName = 'ATRASO'
      DisplayFormat = '00:00'
      Precision = 15
      Size = 0
    end
  end
  object dspSoma: TDataSetProvider
    DataSet = sdsSoma
    Left = 72
    Top = 248
  end
  object cdsSoma: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSoma'
    Left = 120
    Top = 247
    object cdsSomaHORAEXTRA: TFMTBCDField
      FieldName = 'HORAEXTRA'
      Precision = 15
      Size = 0
    end
    object cdsSomaATRASO: TFMTBCDField
      FieldName = 'ATRASO'
      Precision = 15
      Size = 0
    end
  end
  object sdsRelPonto: TSQLDataSet
    CommandText = 
      'select f.nome_funcionario, f.funcao_funcionario, p.data_ponto, p' +
      '.entrada,'#13#10'p.saida_almoco, p.retorno_almoco, p.saida, p.hora_ext' +
      'ra, p.atraso,'#13#10'extract(MONTH from data_ponto) as mes , extract(Y' +
      'EAR from data_ponto) as ano from PONTO p, FUNCIONARIO f'#13#10'where e' +
      'xtract(MONTH from data_ponto) = :mes'#13#10'and not(p.hora_extra = 0 a' +
      'nd p.atraso =0)'#13#10'order by data_ponto asc'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'mes'
        ParamType = ptInput
      end>
    SQLConnection = sql1
    Left = 24
    Top = 368
  end
  object dspRelPonto: TDataSetProvider
    DataSet = sdsRelPonto
    Left = 89
    Top = 368
  end
  object cdsRelPonto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelPonto'
    Left = 153
    Top = 368
  end
end
