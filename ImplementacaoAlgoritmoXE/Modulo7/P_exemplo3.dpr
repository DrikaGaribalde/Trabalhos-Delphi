program P_exemplo3;

uses
  Forms,
  U_exemplo3 in 'U_exemplo3.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
