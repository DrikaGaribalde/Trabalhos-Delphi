program P_Principal;

uses
  Forms,
  U_Principal in 'U_Principal.pas' {frmPrincipal},
  U_dmPrincipal in 'U_dmPrincipal.pas' {dmModulo: TDataModule},
  U_frmContas in 'U_frmContas.pas' {frmContas},
  U_frmTipoOperacoes in 'U_frmTipoOperacoes.pas' {frmTipoOperacoes},
  U_frmLancamento in 'U_frmLancamento.pas' {frmLancamento},
  U_frmExtrato in 'U_frmExtrato.pas' {frmExtrato},
  U_dmRelatorios in 'U_dmRelatorios.pas' {dmRelatorios: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
