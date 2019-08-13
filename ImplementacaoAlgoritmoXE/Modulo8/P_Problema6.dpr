program P_Problema6;

uses
  Forms,
  U_Problema6 in 'U_Problema6.pas' {frmReajuste},
  U_Problema6_1 in 'U_Problema6_1.pas' {frmLancaValores};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmReajuste, frmReajuste);
  Application.Run;
end.
