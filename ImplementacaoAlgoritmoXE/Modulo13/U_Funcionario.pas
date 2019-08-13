unit U_Funcionario;

interface

type
  Funcionario = class
private
  nome: string;
  salario : Real;
public
  function calcularSalario : Real; virtual;
  function getSalario : Real;
  function getNome    : string;
  procedure setNome(newVal : String);
  procedure setSalario(newVal : Real);

  constructor create; overload;
  destructor  destroy; override;
end;

implementation

constructor funcionario.create;
begin
  inherited create;
end;
//
destructor funcionario.destroy;
begin
  inherited destroy;
end;
//

function Funcionario.getNome: string;
begin
  Result := nome;
end;

function Funcionario.getSalario(): Real;
begin
  Result := salario;
end;

procedure Funcionario.setNome(newVal: String);
begin
  nome := newVal;
end;

procedure Funcionario.setSalario(newVal: Real);
begin
  salario := newVal;
end;

function Funcionario.calcularSalario: Real;
begin
  Result := getSalario();
end;

end.
