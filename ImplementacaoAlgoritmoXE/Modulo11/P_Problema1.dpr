program P_Problema1;

uses
  Forms,
  U_Problema1 in 'U_Problema1.pas' {frmOrdenacao};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmOrdenacao, frmOrdenacao);
  Application.Run;
end.
