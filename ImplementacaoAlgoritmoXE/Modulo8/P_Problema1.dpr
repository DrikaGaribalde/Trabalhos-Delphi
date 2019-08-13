program P_Problema1;

uses
  Forms,
  Problema1 in 'Problema1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
