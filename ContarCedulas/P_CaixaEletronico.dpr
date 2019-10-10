program P_CaixaEletronico;

uses
  Forms,
  U_CaixaEletronico in 'U_CaixaEletronico.pas' {frmCaixaEletronico};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmCaixaEletronico, frmCaixaEletronico);
  Application.Run;
end.
