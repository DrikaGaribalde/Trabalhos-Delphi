program P_teste3;

uses
  Forms,
  U_teste3 in 'U_teste3.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
