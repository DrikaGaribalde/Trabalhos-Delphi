unit classe.Controle;

interface

uses
  System.SysUtils, classe.Modelo;

type

TControle = class
private
//
public
  procedure Salvar(const objModeloItem: TModeloItem);
end;

implementation


procedure TControle.Salvar(const objModeloItem: TModeloItem);
begin
  //  Validação
    objModeloItem.Salvar(objModeloItem);
end;
end.
