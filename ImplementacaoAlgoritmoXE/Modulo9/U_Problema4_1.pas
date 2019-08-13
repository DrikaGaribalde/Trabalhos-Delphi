unit U_Problema4_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmLanca = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edtNome: TEdit;
    edtValorUnitario: TEdit;
    edtEstoque: TEdit;
    btnInserir: TButton;
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure edtValorUnitarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtEstoqueKeyPress(Sender: TObject; var Key: Char);
    procedure btnInserirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLanca: TfrmLanca;

implementation

uses U_Problema4;

{$R *.dfm}

procedure TfrmLanca.edtNomeKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in['a'..'z', 'A'..'Z', #8,#32 ]) then
  Key := #0;
end;

procedure TfrmLanca.edtValorUnitarioKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (Key in['0'..'9', ',',#8] ) then
  Key := #0;
end;

procedure TfrmLanca.edtEstoqueKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9',#8]) then
  Key := #0;
end;

procedure TfrmLanca.btnInserirClick(Sender: TObject);
begin
  //Verificação nome;
  if (Length(edtNome.Text)=0) then
  begin
    MessageDlg('Informe o nome do produto', mtWarning,[mbOK],0);
    edtNome.SetFocus;
    Abort;
  end;
  //Verificação Valor Unitário
  if (StrToFloat(edtValorUnitario.Text) < 0.01) then
  begin
    MessageDlg('Informe um valor Maior que Zero', mtWarning,[mbOK],0);
    edtValorUnitario.SetFocus;
    Abort;
  end;
  //verificação do Estoque;
  if (StrToInt(edtEstoque.Text)<1) then
  begin
    MessageDlg('Informe um valor Maior que Zero', mtWarning,[mbOK],0);
    edtEstoque.SetFocus;
    Abort;
  end;
  //Passando valores para os arrays
  nome[qtdeLancada] := edtNome.Text;
  valor[qtdeLancada]:= StrToFloat(edtValorUnitario.Text);
  quantidade[qtdeLancada]:= StrToInt(edtEstoque.Text);

  inc(qtdeLancada);
  if(qtdeLancada > 20 ) then
  begin
    MessageDlg('Limite de Armazenamento de produtos atingido', mtWarning, [mbOK],0);
    close;
  end;
  //
  if (MessageDlg('Deseja lançar outro produto', mtConfirmation,[mbYes,mbNo],0)) = mrNo then
    close;
  //
  edtNome.Text := '';
  edtValorUnitario.Text := '';
  edtEstoque.Text := '';
  edtNome.SetFocus;
end;

end.
