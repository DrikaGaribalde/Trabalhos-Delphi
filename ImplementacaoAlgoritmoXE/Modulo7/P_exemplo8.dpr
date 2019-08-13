program P_exemplo8;

uses
  Forms,
  U_exemplo8 in 'U_exemplo8.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
