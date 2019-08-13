unit U_Administrativo;

interface

uses U_Funcionario;

type
  Administrativo = class(Funcionario)
public
  constructor create; overload;
  destructor destroy; override;
  function calcularSalario : Real; override;
end;

implementation


constructor administrativo.create;
begin
  inherited create;
end;

destructor administrativo.destroy;
begin
  inherited destroy;
end;

function Administrativo.calcularSalario: Real;
begin
  Result:= getSalario();
end;


end.


