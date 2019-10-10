unit UDados;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmMovimento = class(TDataModule)
    conPostgres: TADOConnection;
    tblMovimento: TADOTable;
    dsConsulta: TDataSource;
    qryConsulta: TADOQuery;
    qryConsultavalor: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMovimento: TdmMovimento;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
