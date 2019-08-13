program P_Problema12_2_3;

uses
  Forms,
  U_Problema12_2_3 in 'U_Problema12_2_3.pas' {frmPoupanca};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPoupanca, frmPoupanca);
  Application.Run;
end.
