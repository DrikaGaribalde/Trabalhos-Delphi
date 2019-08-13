program P_Problema1;

uses
  Forms,
  U_Problema1 in 'U_Problema1.pas' {frmDiaDaSemana};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmDiaDaSemana, frmDiaDaSemana);
  Application.Run;
end.
