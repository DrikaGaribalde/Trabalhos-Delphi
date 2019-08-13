program P_teste4;

uses
  Forms,
  U_teste4 in 'U_teste4.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
