unit U_dmRelatorios;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, RpCon, RpConDS, RpBase, RpSystem,
  RpDefine, RpRave;

type
  TdmRelatorios = class(TDataModule)
    rvprjctExtrato: TRvProject;
    RvSystem1: TRvSystem;
    RvDataSetConnection1: TRvDataSetConnection;
    IBDataSetRelatorio: TIBDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRelatorios: TdmRelatorios;

implementation

uses U_dmPrincipal;

{$R *.dfm}

end.
