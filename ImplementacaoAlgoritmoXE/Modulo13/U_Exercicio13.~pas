 unit U_Exercicio13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, U_Funcionario, U_Administrativo, U_Gerente, U_Vendedor;

type
  TfrmFolhaDePagamento = class(TForm)
    rgTipoFuncionario: TRadioGroup;
    grpDadosFuncionario: TGroupBox;
    lbl1: TLabel;
    edtNome: TEdit;
    lbl2: TLabel;
    edtSalario: TEdit;
    btnRegistrar: TButton;
    btnPrimeiro: TButton;
    btnProximo: TButton;
    btnUltimo: TButton;
    btnCalcularFolha: TButton;
    lblComplemento: TLabel;
    edtComplemento: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure rgTipoFuncionarioClick(Sender: TObject);
    procedure btnRegistrarClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnCalcularFolhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
//  não faz parte do formulário
  function movimentarRegistro(direcao : Integer): Boolean;
  function exibeDados(registro: Integer):Boolean;

var
  frmFolhaDePagamento: TfrmFolhaDePagamento;
  //
  funcionarios: array[1..3] of Funcionario;
  registroAtual, qtdeFuncionarios : Integer;

implementation

{$R *.dfm}

procedure TfrmFolhaDePagamento.FormCreate(Sender: TObject);
begin
 qtdeFuncionarios := 0;

end;

procedure TfrmFolhaDePagamento.rgTipoFuncionarioClick(Sender: TObject);
begin
  lblComplemento.Visible := False;
  edtComplemento.Visible := False;
  //
  if (rgTipoFuncionario.ItemIndex = 1) then
    lblComplemento.Caption := 'Gratificação'
  else if (rgTipoFuncionario.ItemIndex = 2) then
    lblComplemento.Caption := 'Comissões';
  //
  if(rgTipoFuncionario.ItemIndex =1) or (rgTipoFuncionario.ItemIndex =2)then
  begin
    lblComplemento.Visible := True;
    edtComplemento.Visible := True;
  end;
  //
  grpDadosFuncionario.Enabled := True;

end;

function movimentarRegistro(direcao:Integer):Boolean;
begin
  if (qtdeFuncionarios =0)then
    Result := false
  else if (direcao = 0) then
    Result := exibeDados(1)
  else if (direcao = 1) then
    Result := exibeDados(registroAtual + 1)
  else if (direcao = 3) then
    Result := exibeDados(qtdeFuncionarios);
end;

function exibeDados(registro:Integer):Boolean;
begin
  registroAtual := registro;
  if(registroAtual < 1) or (registroAtual > qtdeFuncionarios)then
    Result := False
  else
    begin
      frmFolhaDePagamento.edtNome.Text    := funcionarios[registroAtual].getNome();
      frmFolhaDePagamento.edtSalario.Text := FloatToStr(funcionarios[registroAtual].getSalario());
      //
      if (funcionarios[registroAtual].ClassName = 'Administrativo') then
        frmFolhaDePagamento.rgTipoFuncionario.ItemIndex := 0
      else if(funcionarios[registroAtual].ClassName = 'Gerente') then
        begin
          frmFolhaDePagamento.rgTipoFuncionario.ItemIndex := 1;
          frmFolhaDePagamento.edtComplemento.Text := FloatToStr((funcionarios[registroAtual] as Gerente).getGratificacao());
        end
      else if(funcionarios[registroAtual].ClassName = 'Vendedor') then
        begin
          frmFolhaDePagamento.rgTipoFuncionario.ItemIndex := 2;
          frmFolhaDePagamento.edtComplemento.Text := FloatToStr((funcionarios[registroAtual] as Vendedor).getComissoes());
        end;
      //
      Result := True;
    end;
end;

procedure TfrmFolhaDePagamento.btnRegistrarClick(Sender: TObject);
var
  ger: Gerente;
  ven: Vendedor;
begin
  if (edtNome.Text = '') or (edtSalario.Text = '') then
  begin
    MessageDlg('Preencha o nome e o salário do funcionário', mtInformation, [mbok],0);
    Abort;
  end;
  //
  inc(qtdeFuncionarios);
  if(rgTipoFuncionario.ItemIndex=0)then
    funcionarios[qtdeFuncionarios] := Administrativo.create
  else if(rgTipoFuncionario.ItemIndex=1)then
    begin
      ger := Gerente.create;
      ger.setGratificacao(StrToFloat(edtComplemento.Text));
      funcionarios[qtdeFuncionarios] := ger;
    end
    else if (rgTipoFuncionario.ItemIndex = 2) then
    begin
      ven := Vendedor.create;
      ven.setComissoes(StrToFloat(edtComplemento.Text));
      funcionarios[qtdeFuncionarios] := ven;
    end;
    //
    funcionarios[qtdeFuncionarios].setNome((edtNome.Text));
    funcionarios[qtdeFuncionarios].setSalario(StrToFloat(edtSalario.Text));
    //
    {Após o registro de cada funcionário, os objetos respectivos à entrada são
    limpos, esperando os dados para o registro de um novo funcionário}
    rgTipoFuncionario.ItemIndex := -1;
    grpDadosFuncionario.Enabled := false;
    edtNome.Text                := '';
    edtSalario.Text             := '';
    edtComplemento.Text         := '';
    if (qtdeFuncionarios = 3 )then
    begin
      MessageDlg('Limite máximo atingido', mtInformation,[mbOK],0);
      btnRegistrar.Enabled := False;
    end;

end;

procedure TfrmFolhaDePagamento.btnPrimeiroClick(Sender: TObject);
begin
  if (not movimentarRegistro(0))then
    MessageDlg('Registro fora dos limites. Movendo-se para o último registro', mtWarning,[mbOK],0);
end;

procedure TfrmFolhaDePagamento.btnProximoClick(Sender: TObject);
begin
  if(not movimentarRegistro(1)) then
    MessageDlg('Registro fora dos limites, movendo-se para o último registro', mtWarning,[mbOK],0);
end;

procedure TfrmFolhaDePagamento.btnUltimoClick(Sender: TObject);
begin
  if(not movimentarRegistro(3))then
    MessageDlg('Registro fora dos limites, movendo-se para o último registro', mtWarning,[mbOK],0);
end;

procedure TfrmFolhaDePagamento.btnCalcularFolhaClick(Sender: TObject);
var
  i, contador: integer;
  totalFoha : Real;
begin
  i:= 0;
  contador := 1;
  totalFoha := 0;
  while(movimentarRegistro(i))do
  begin
    i:= 1;
    {Uso do Polimorfismo}
    totalFoha := totalFoha + funcionarios[contador].calcularSalario();
    inc(contador);
  end;
  MessageDlg('O total da folha a ser pago para todos os funcionários registrados é de :' +
            FormatFloat('###,##0.00', totalFoha),mtInformation,[mbOK],0);

end;

end.
