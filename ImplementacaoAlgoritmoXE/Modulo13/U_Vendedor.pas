unit U_Vendedor;

interface

uses U_Funcionario;

type
  Vendedor = class(Funcionario)
private
  comissoes : Real;
public
  constructor create;overload;
  destructor destroy;override;
  function calcularSalario: Real; override;
  procedure setComissoes(newVal:Real);
  function getComissoes: Real;
end;

implementation



{ Vendedor }

constructor Vendedor.create;
begin
   inherited create;
end;

destructor Vendedor.destroy;
begin

  inherited destroy;
end;

function Vendedor.calcularSalario: Real;
begin
  Result := (comissoes + getSalario());
end;

function Vendedor.getComissoes: Real;
begin
  Result:= comissoes;
end;

procedure Vendedor.setComissoes(newVal: Real);
begin
  comissoes := newVal;
end;

end.
