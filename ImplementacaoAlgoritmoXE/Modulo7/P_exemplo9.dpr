program P_exemplo9;

uses
  Forms,
  U_exemplo9 in 'U_exemplo9.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
