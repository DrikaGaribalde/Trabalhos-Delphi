program P_exemplo1;

uses
  Forms,
  U_exemplo1 in 'U_exemplo1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
