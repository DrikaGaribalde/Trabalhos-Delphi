unit U_exemplo4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    edtIdade: TEdit;
    btn1: TButton;
    pnlVoto: TPanel;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var idade: Integer;
begin
  idade := StrToInt(edtIdade.Text);
  if (idade <16) then
    pnlVoto.Caption := 'Você ainda não pode votar'
  else if (idade >=18) and (idade <=70) then
    pnlVoto.Caption := 'Você é obrigado a votar'
  else if (idade <=17) or(idade >70) then
    pnlVoto.Caption := 'Seu voto é facultativo'
end;

end.
