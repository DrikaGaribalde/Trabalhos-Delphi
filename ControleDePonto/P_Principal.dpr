program P_Principal;

uses
  Forms,
  U_Principal in 'U_Principal.pas' {frmPrincipal},
  U_dmPrincipal in 'U_dmPrincipal.pas' {dmPrincipal: TDataModule},
  U_RegistroPonto in 'U_RegistroPonto.pas' {frmRegistroPonto},
  U_frmConsulta in 'U_frmConsulta.pas' {frmConsulta},
  U_frmRelatorioPonto in 'U_frmRelatorioPonto.pas' {frmRelatorioPonto},
  U_frmConfiguracao in 'U_frmConfiguracao.pas' {frmConfiguracao},
  U_Relatorio1 in 'U_Relatorio1.pas' {frmRelatorio1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
