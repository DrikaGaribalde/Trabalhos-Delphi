program P_exemplo4;

uses
  Forms,
  U_exemplo4 in 'U_exemplo4.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
