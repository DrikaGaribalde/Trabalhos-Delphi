program P_exemplo7;

uses
  Forms,
  U_exemplo7 in 'U_exemplo7.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
