program P_Problema5;

uses
  Forms,
  U_Problema5 in 'U_Problema5.pas' {frmDvd};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmDvd, frmDvd);
  Application.Run;
end.
