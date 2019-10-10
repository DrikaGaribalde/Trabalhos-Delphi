program P_Movimento;

uses
  Vcl.Forms,
  classe.VisaoPrincipal in 'View\classe.VisaoPrincipal.pas' {frmPrincipal},
  YMOFXReader_2 in 'Model\YMOFXReader_2.pas',
  classe.Modelo in 'Model\classe.Modelo.pas',
  classe.Controle in 'Controller\classe.Controle.pas',
  UDados in 'Model\UDados.pas' {dmMovimento: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmMovimento, dmMovimento);
  Application.Run;
end.
