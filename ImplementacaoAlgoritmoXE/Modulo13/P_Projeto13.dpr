program P_Projeto13;

uses
  Forms,
  U_Exercicio13 in 'U_Exercicio13.pas' {frmFolhaDePagamento},
  U_Funcionario in 'U_Funcionario.pas',
  U_Administrativo in 'U_Administrativo.pas',
  U_Gerente in 'U_Gerente.pas',
  U_Vendedor in 'U_Vendedor.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmFolhaDePagamento, frmFolhaDePagamento);
  Application.Run;
end.
