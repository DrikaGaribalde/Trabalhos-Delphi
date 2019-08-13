unit U_Gerente;

interface

uses U_Funcionario;

type
  Gerente = class(Funcionario)
private
  gratificacao : Real;
public
  constructor create; overload;
  destructor destroy; override;
  function calcularSalario : Real; override;
  procedure setGratificacao(newVal:Real);
  function getGratificacao: Real;
end;

implementation
{ Gerente }

constructor Gerente.create;
begin
  inherited create;
end;

destructor Gerente.destroy;
begin
  inherited destroy;
end;

function Gerente.calcularSalario: Real;
begin
   Result := (gratificacao + getSalario());
end;

function Gerente.getGratificacao: Real;
begin
  Result := gratificacao;
end;

procedure Gerente.setGratificacao(newVal: Real);
begin
  gratificacao := newVal;
end;

end.
