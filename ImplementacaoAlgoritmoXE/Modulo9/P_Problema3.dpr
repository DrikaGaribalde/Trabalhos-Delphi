program P_Problema3;

uses
  Forms,
  U_Problema3 in 'U_Problema3.pas' {frmRegistroNota};

{$R *.res}


begin
  Application.Initialize;
  Application.CreateForm(TfrmRegistroNota, frmRegistroNota);
  Application.Run;
end.
