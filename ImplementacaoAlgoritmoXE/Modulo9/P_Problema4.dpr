program P_Problema4;

uses
  Forms,
  U_Problema4 in 'U_Problema4.pas' {frmControle},
  U_Problema4_1 in 'U_Problema4_1.pas' {frmLanca},
  U_Problema4_2 in 'U_Problema4_2.pas' {frmAlteraDados};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmControle, frmControle);
  Application.Run;
end.
