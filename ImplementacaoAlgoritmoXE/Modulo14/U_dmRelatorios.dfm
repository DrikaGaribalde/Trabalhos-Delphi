object dmRelatorios: TdmRelatorios
  OldCreateOrder = False
  Left = 212
  Top = 246
  Height = 281
  Width = 386
  object rvprjctExtrato: TRvProject
    LoadDesigner = True
    ProjectFile = 'D:\Delphi\livroImplAlgoritmo\Exercicios\Modulo14\RelContas1.rav'
    Left = 64
    Top = 80
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 152
    Top = 80
  end
  object RvDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = IBDataSetRelatorio
    Left = 96
    Top = 16
  end
  object IBDataSetRelatorio: TIBDataSet
    Database = dmModulo.ibdtbsDB
    Transaction = dmModulo.ibtrnsctnT
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select l.data, l.numerodocument, t.nome, l.historico,l.valor'
      'from conta c'
      'inner join lancamentos l'
      'on c.numeroconta = l.numeroconta'
      'inner join tiposdeoperacoes t'
      'on l.codigotipooper = t.codigotipooper'
      'where (l.numeroconta =:conta) and'
      '(l.data>=:inicio) and (l.data <=:termino)'
      'order by l.data')
    Active = True
    DataSource = dmModulo.dtsLancamento
    Left = 64
    Top = 144
  end
end
