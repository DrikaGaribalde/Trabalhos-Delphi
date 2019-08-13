unit U_dmPrincipal;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBTable, IBDatabase, DBXpress,
  FMTBcd, Provider, DBClient, SqlExpr;

type
  TdmPrincipal = class(TDataModule)
    sql1: TSQLConnection;
    sds1: TSQLDataSet;
    cds1: TClientDataSet;
    dsp1: TDataSetProvider;
    sqlqryPonto: TSQLQuery;
    sdsPontoNOVONUMERO: TFMTBCDField;
    sdsFuncionario: TSQLDataSet;
    dspFuncionario: TDataSetProvider;
    cdsFuncionario: TClientDataSet;
    cdsFuncionarioID_FUNCIONARIO: TIntegerField;
    cdsFuncionarioNOME_FUNCIONARIO: TStringField;
    cdsFuncionarioFUNCAO_FUNCIONARIO: TStringField;
    cds1ID_PONTO: TIntegerField;
    cds1ID_FUNCIONARIO: TIntegerField;
    cds1DATA_PONTO: TDateField;
    cds1ENTRADA: TStringField;
    cds1SAIDA_ALMOCO: TStringField;
    cds1RETORNO_ALMOCO: TStringField;
    cds1SAIDA: TStringField;
    cds1HORA_EXTRA: TIntegerField;
    cds1ATRASO: TIntegerField;
    sdsPesq: TSQLDataSet;
    cdsPesq: TClientDataSet;
    dspPesq: TDataSetProvider;
    cdsPesqDATA_PONTO: TDateField;
    cdsPesqHORA_EXTRA: TIntegerField;
    cdsPesqATRASO: TIntegerField;
    sdsSoma: TSQLDataSet;
    dspSoma: TDataSetProvider;
    cdsSoma: TClientDataSet;
    cdsSomaHORAEXTRA: TFMTBCDField;
    cdsSomaATRASO: TFMTBCDField;
    sdsSomaHORAEXTRA2: TFMTBCDField;
    sdsSomaATRASO2: TFMTBCDField;
    sdsRelPonto: TSQLDataSet;
    dspRelPonto: TDataSetProvider;
    cdsRelPonto: TClientDataSet;
    procedure DataModuleCreate(Sender: TObject);
    procedure cds1NewRecord(DataSet: TDataSet);
    procedure dsp1BeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
  private
    { Private declarations }
    vNum: Integer;
    vNumFuncionario : integer;
  public
    { Public declarations }
  end;

var
  dmPrincipal: TdmPrincipal;

implementation

{$R *.dfm}

procedure TdmPrincipal.DataModuleCreate(Sender: TObject);
begin
  vNum := 0; 
end;

procedure TdmPrincipal.cds1NewRecord(DataSet: TDataSet);
begin
  Dec(vNum);
  cds1.FieldByName('id_ponto').AsInteger := vNum;
  //sem problema se cancelar a gravação
end;

procedure TdmPrincipal.dsp1BeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if UpdateKind = ukinsert then
    begin
      if SourceDS = sds1 then
      begin
        sqlqryPonto.Open;
        try
          vNumFuncionario := sqlqryPonto.fieldbyname('novonumero').AsInteger;
        finally
          sqlqryPonto.Close;
        end;
        DeltaDS.FieldByName('id_ponto').NewValue := vNumFuncionario;
      end;  
    end;
end;

end.
