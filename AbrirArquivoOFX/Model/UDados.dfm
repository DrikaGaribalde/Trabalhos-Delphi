object dmMovimento: TdmMovimento
  OldCreateOrder = False
  Height = 220
  Width = 369
  object conPostgres: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=Postg' +
      'reSQL30;Initial Catalog=Movimento'
    LoginPrompt = False
    Left = 32
    Top = 32
  end
  object tblMovimento: TADOTable
    Active = True
    Connection = conPostgres
    CursorType = ctStatic
    TableName = 'movimento'
    Left = 120
    Top = 32
  end
  object dsConsulta: TDataSource
    DataSet = qryConsulta
    Left = 272
    Top = 32
  end
  object qryConsulta: TADOQuery
    Active = True
    Connection = conPostgres
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(valor) as valor from movimento'
      '')
    Left = 200
    Top = 32
    object qryConsultavalor: TFloatField
      FieldName = 'valor'
      ReadOnly = True
      currency = True
    end
  end
end
