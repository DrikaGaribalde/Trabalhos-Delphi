program ProjetoAlterdata;

uses
  Vcl.Forms,
  P_Principal in 'P_Principal.pas' {Form1},
  YMOFXReader_2 in 'YMOFXReader_2.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
