program P_exemplo5;

uses
  Forms,
  U_exemplo5 in 'U_exemplo5.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
