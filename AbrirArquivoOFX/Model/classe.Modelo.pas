unit classe.Modelo;

interface

uses YMOFXReader_2, Dialogs, SysUtils, Data.DB, UDados;

type
  TModeloItem = class(TOFXItem)
  private
  public
    procedure Salvar(const objModeloItem: TModeloItem);
  end;

type
  TModelo = class(TYMOFXReader)
  private
  public
  end;

implementation

procedure TModeloItem.Salvar(const objModeloItem: TModeloItem);

begin
  dmMovimento.tblMovimento.AppendRecord([objModeloItem.MovDate,
    objModeloItem.Desc, objModeloItem.Value]);
end;

end.
