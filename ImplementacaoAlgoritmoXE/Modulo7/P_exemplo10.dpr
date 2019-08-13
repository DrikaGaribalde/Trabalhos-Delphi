program P_exemplo10;

uses
  Forms,
  U_exemplo10 in 'U_exemplo10.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
