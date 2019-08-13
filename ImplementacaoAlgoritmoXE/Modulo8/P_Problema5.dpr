program P_Problema5;

uses
  Forms,
  U_Problema5 in 'U_Problema5.pas' {frmReajuste},
  U_Problema5_1 in 'U_Problema5_1.pas' {frmLancaSalario};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmReajuste, frmReajuste);
  Application.Run;
end.
