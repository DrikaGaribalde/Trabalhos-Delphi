unit U_Problema4_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmAlteraDados = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    lbl1: TLabel;
    cbbAlterarProduto: TComboBox;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edtNomeAlterar: TEdit;
    edtValorUnitarioAlterar: TEdit;
    edtEstoqueAlterar: TEdit;
    btnAlterar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure cbbAlterarProdutoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlteraDados: TfrmAlteraDados;

implementation

uses U_Problema4;

{$R *.dfm}

procedure TfrmAlteraDados.FormCreate(Sender: TObject);
var
  i : integer;
begin
  for i := 0 to qtdeLancada-1 do
  cbbAlterarProduto.Items.Add(nome[i]);
end;

procedure TfrmAlteraDados.cbbAlterarProdutoChange(Sender: TObject);
begin
edtNomeAlterar.Text := nome[cbbAlterarProduto.ItemIndex];
edtValorUnitarioAlterar.Text := FloatToStr(valor[cbbAlterarProduto.ItemIndex]);
edtEstoqueAlterar.Text := IntToStr(quantidade[cbbAlterarProduto.ItemIndex]);

end;

end.
