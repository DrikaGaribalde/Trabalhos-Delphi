unit U_CaixaEletronico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type
  TfrmCaixaEletronico = class(TForm)
    edtValor: TEdit;
    btnSacar: TButton;
    mmoMostrar: TMemo;
    procedure edtValorKeyPress(Sender: TObject; var Key: Char);
    procedure btnSacarClick(Sender: TObject);
    procedure Limpar;
    procedure Foco;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCaixaEletronico: TfrmCaixaEletronico;

implementation

{$R *.dfm}

procedure TfrmCaixaEletronico.edtValorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9',#8,#13]) then
  begin
    MessageDlg('Digite apenas números', mtInformation,[mbOK],0);
    Key := #0;
  end;
  //
  if Key = #13 then
    btnSacarClick(Self);
end;

procedure TfrmCaixaEletronico.btnSacarClick(Sender: TObject);
var
  valor : real;
  n : integer;
begin
  if edtValor.Text = '' then
  begin
    MessageDlg('Digite um valor valido',mtInformation,[mbOK],0);
    Foco;
    Abort;
  end;
  //
  if StrToFloat(edtValor.Text) > 1500 then
  begin
    MessageDlg('Valores acima de R$ 1.500,00, não serão permitidos',mtInformation,[mbOK],0);
    Limpar;
    Foco;
    Abort;
  end;
  //
  valor := StrToFloat(edtValor.text);
  if (Trunc(valor) mod 10)<> 0 then
  begin
    MessageDlg('Digite apenas valores múltiplos de 10',mtInformation,[mbOK],0);
    Limpar;
    Foco;
    Abort;
  end;
  //
   if valor = 0 then
  begin
    MessageDlg('Digite um valor para sacar',mtInformation,[mbOK],0);
    Limpar;
    Foco;
    Abort;
  end;

  mmoMostrar.Lines.Clear;
  n := trunc(valor);
  mmoMostrar.Lines.Add('Notas para o valor de R$ ' + FormatCurr('#,##0.00',valor));

  if (n div 100 <> 0)then
  begin
    mmoMostrar.Lines.Add(IntToStr(n div 100) + ' nota(s) de R$ 100,00');
    n:= n mod 100;
  end;
  //
  if (n div 50 <> 0)then
  begin
    mmoMostrar.Lines.Add(IntToStr(n div 50)+ ' nota(s) de R$ 50,00');
    n:= n mod 50;
  end;
  //
  if (n div 20 <> 0)then
  begin
    mmoMostrar.Lines.Add(IntToStr(n div 20)+ ' nota(s) de R$ 20,00');
    n:= n mod 20;
  end;
  //
  if (n div 10 <> 0)then
  begin
    mmoMostrar.Lines.Add(IntToStr(n div 10)+ ' nota(s) de R$ 10,00');
  end;
  //
  Limpar;
  Foco;
end;

procedure TfrmCaixaEletronico.Limpar;
begin
  edtValor.Clear;
end;

procedure TfrmCaixaEletronico.Foco;
begin
  edtValor.SetFocus;
end;

end.
