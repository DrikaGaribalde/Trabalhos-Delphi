program P_Problema7;

uses
  Forms,
  U_Problema7 in 'U_Problema7.pas' {frmCalcados},
  U_Problema7_1 in 'U_Problema7_1.pas' {frmLancaValores};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmCalcados, frmCalcados);
  Application.Run;
end.
