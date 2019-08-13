unit U_Problema1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmOrdenacao = class(TForm)
    pnl1: TPanel;
    btnInserir: TButton;
    btnLimpar: TButton;
    btnCrescente: TButton;
    btnDecrescente: TButton;
    btnSair: TButton;
    lstDigitados: TListBox;
    pnl2: TPanel;
    lstOrdenados: TListBox;
    procedure btnSairClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnCrescenteClick(Sender: TObject);
    procedure btnDecrescenteClick(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrdenacao: TfrmOrdenacao;
  vetor : array[1..8] of Integer; 

implementation

{$R *.dfm}

procedure TfrmOrdenacao.btnSairClick(Sender: TObject);
begin
if MessageDlg('Deseja sair do programa', mtConfirmation,[mbYes,mbNo],0)= mrYes then
  Close;
end;

procedure TfrmOrdenacao.btnInserirClick(Sender: TObject);
var
  i : Integer;
begin
  // insere oito elementos em um vetor e mostr-os em um Listbox
  for i := 1 to 8 do
  begin
    vetor[i] := StrToInt(InputBox('Digite o ' + IntToStr(i) + 'º valor', 'Valor : ','0'));
    lstDigitados.Items.Add(FormatFloat('0',vetor[i]));
  end;
  // habilita os botões que estão desbilitados após a inserção
  btnLimpar.Enabled      := True;
  btnCrescente.Enabled   := true;
  btnDecrescente.Enabled := True;
  btnInserir.Enabled     := False;
end;

procedure TfrmOrdenacao.btnLimparClick(Sender: TObject);
begin
lstDigitados.Clear;
lstOrdenados.Clear;
btnLimpar.Enabled      := False;
btnCrescente.Enabled   := False;
btnDecrescente.Enabled := False;
btnInserir.Enabled     := True;
end;

procedure TfrmOrdenacao.btnCrescenteClick(Sender: TObject);
var
  n,i,bolha,aux : integer;
begin
  lstOrdenados.Clear;
  n := 8;
  while n > 1 do
  begin
    bolha := 0;
    for i := 1 to n-1 do
    begin
      if (vetor[i] > vetor[i+1]) then
      begin
        //realiza a troca dos elementos
        aux := vetor[i];
        vetor[i]:= vetor[i+1];
        vetor[i+1] := aux;
        bolha := i;
      end;
    end;
    n:= bolha;
  end;
  for i := 1 to 8 do
    lstOrdenados.Items.Add(FormatFloat('0',vetor[i]));

    btnCrescente.Enabled  := False;
    btnDecrescente.Enabled:= True;
end;



procedure TfrmOrdenacao.btnDecrescenteClick(Sender: TObject);
var
  n,i,bolha,aux : integer;
begin
  lstOrdenados.Clear;
  n := 8;
  while n > 1 do
  begin
    bolha := 0;
    for i := 1 to n-1 do
    begin
      if (vetor[i] < vetor[i+1]) then
      begin
        //realiza a troca dos elementos
        aux := vetor[i];
        vetor[i]:= vetor[i+1];
        vetor[i+1] := aux;
        bolha := i;
      end;
    end;
    n:= bolha;
  end;
  for i := 1 to 8 do
    lstOrdenados.Items.Add(FormatFloat('0',vetor[i]));

    btnCrescente.Enabled  := False;
    btnDecrescente.Enabled:= True;
end;
end.
