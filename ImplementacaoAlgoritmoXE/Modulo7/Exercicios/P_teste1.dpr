program P_teste1;

uses
  Forms,
  U_teste1 in 'U_teste1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
