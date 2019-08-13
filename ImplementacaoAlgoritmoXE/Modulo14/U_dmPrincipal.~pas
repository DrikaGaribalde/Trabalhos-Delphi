unit U_dmPrincipal;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBDatabase, IBSQL;

type
  TdmModulo = class(TDataModule)
    ibdtbsDB: TIBDatabase;
    DML: TIBSQL;
    ibtrnsctnT: TIBTransaction;
    IBDataSetConta: TIBDataSet;
    dtsConta: TDataSource;
    IBDataSetLancamento: TIBDataSet;
    dtsLancamento: TDataSource;
    IBDataSetTipos: TIBDataSet;
    dtsTipos: TDataSource;
    ibstrngfldIBDataSetContaNUMEROCONTA: TIBStringField;
    ibstrngfldIBDataSetContaCORRENTISTA: TIBStringField;
    cdsIBDataSetContaSALDO: TFloatField;
    ibstrngfldIBDataSetLancamentoNUMEROCONTA: TIBStringField;
    ibstrngfldIBDataSetLancamentoCODIGOTIPOOPER: TIBStringField;
    ibstrngfldIBDataSetLancamentoNUMERODOCUMENT: TIBStringField;
    ibstrngfldIBDataSetLancamentoHISTORICO: TIBStringField;
    IBDataSetLancamentoDATA: TDateField;
    cdsIBDataSetLancamentoVALOR: TFloatField;
    ibstrngfldIBDataSetTiposCODIGOTIPOOPER: TIBStringField;
    ibstrngfldIBDataSetTiposNOME: TIBStringField;
    ibstrngfldIBDataSetTiposTIPO: TIBStringField;
    IBDataSetConsultaLancamento: TIBDataSet;
    dtsConsultaLancamento: TDataSource;
    IBDataSetConsultaLancamentoDATA: TDateField;
    ibstrngfldIBDataSetConsultaLancamentoDOCUMENTO: TIBStringField;
    ibstrngfldIBDataSetConsultaLancamentoHISTRICO: TIBStringField;
    cdsIBDataSetConsultaLancamentoVALOR: TFloatField;
    procedure IBDataSetContaAfterInsert(DataSet: TDataSet);
    procedure IBDataSetContaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmModulo: TdmModulo;

implementation

uses U_frmContas;

{$R *.dfm}

procedure TdmModulo.IBDataSetContaAfterInsert(DataSet: TDataSet);
begin
  frmContas.dbedtNUMEROCONTA.SetFocus;
end;

procedure TdmModulo.IBDataSetContaNewRecord(DataSet: TDataSet);
begin
  IBDataSetConta.FieldByName('saldo').AsFloat := 0;
end;

end.
