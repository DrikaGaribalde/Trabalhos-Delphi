program P_Problema6;

uses
  Forms,
  U_Problema6 in 'U_Problema6.pas' {frmProblema6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmProblema6, frmProblema6);
  Application.Run;
end.
