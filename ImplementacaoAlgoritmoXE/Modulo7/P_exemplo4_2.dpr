program P_exemplo4_2;

uses
  Forms,
  U_exemplo4_2 in 'U_exemplo4_2.pas' {frmEleitor};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmEleitor, frmEleitor);
  Application.Run;
end.
