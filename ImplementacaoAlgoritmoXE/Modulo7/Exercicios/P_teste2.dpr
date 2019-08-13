program P_teste2;

uses
  Forms,
  U_teste2 in 'U_teste2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
