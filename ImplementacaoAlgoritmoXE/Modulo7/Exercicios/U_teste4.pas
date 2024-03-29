unit U_teste4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    edtJogador1: TEdit;
    lbl2: TLabel;
    edtJogador2: TEdit;
    lbl3: TLabel;
    edtJogador3: TEdit;
    rgEstado: TRadioGroup;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure edtJogador1Exit(Sender: TObject);
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
var
  Jogador1, Jogador2, Jogador3, Auxiliar : Integer;
  Media, Pontos : Extended;
  Msg : string;
begin


  case rgEstado.ItemIndex of
    0:
    begin
      Jogador1 := StrToInt(edtJogador1.Text);
      Jogador2 := StrToInt(edtJogador2.Text);
      Jogador3 := StrToInt(edtJogador3.Text);

      if (Jogador1 > Jogador2) then
      begin
        Auxiliar := Jogador1;
        Jogador1 := Jogador2;
        Jogador2 := Auxiliar;
      end;
      if (Jogador1 > Jogador3) then
      begin
        Auxiliar := Jogador1;
        Jogador1 := Jogador3;
        Jogador3 := Auxiliar;
      end;
      if (Jogador2 > Jogador3) then
      begin
        Auxiliar := Jogador2;
        Jogador2 := Jogador3;
        Jogador3 := Auxiliar;
      end;
      //

      Pontos := (Jogador1 + Jogador2 + Jogador3);
      if (Pontos > 100 ) then
      begin
        Media := Pontos /3;
        Msg := 'Equipe Classificada';
      end
      else
        Msg := 'Equipe foi desclassificada';
      //
      ShowMessage( 'Jogador 1 = ' + edtJogador1.Text + #13 +
                   'Jogador 2 = ' + edtJogador2.Text + #13 +
                   'Jogador 3 = ' + edtJogador3.Text + #13 +
                   'Pontos em ordem crescente' + #13 +
                   IntToStr(Jogador1) + ' - ' + IntToStr(Jogador2) + ' - ' + IntToStr(Jogador3) + #13+
                   'Media com a soma acima de 100 pontos ' +  #13 +
                   FormatFloat('###,##0.00' , Media) + #13 +
                   Msg
                   );

    end;
//    1:
//    begin
//      Jogador1 := StrToInt(edtJogador1.Text);
//      Jogador2 := StrToInt(edtJogador2.Text);
//      Jogador3 := StrToInt(edtJogador3.Text);
//
//      ShowMessage( 'Jogador 1 = ' + edtJogador1.Text + #13 +
//                   'Jogador 2 = ' + edtJogador2.Text + #13 +
//                   'Jogador 3 = ' + edtJogador3.Text);
//    end;
 end;
 end;

procedure TForm1.edtJogador1Exit(Sender: TObject);
begin
if ((StrToInt(edtJogador1.Text)<0) or(StrToInt(edtJogador1.Text)>100))then
    begin
     ShowMessage('Valor inv�lido');
     edtJogador1.SetFocus;
    end;
end;

end.
