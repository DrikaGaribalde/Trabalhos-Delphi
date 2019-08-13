program P_Problema2;

uses
  Forms,
  U_Problema2 in 'U_Problema2.pas' {frmNumerosPares};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmNumerosPares, frmNumerosPares);
  Application.Run;
end.
