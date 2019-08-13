unit U_teste2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    edtValorProduto: TEdit;
    btnCalcular: TButton;
    pnlValorProduto: TPanel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
var
  ValorProduto, NovoValor : Extended;
begin
  try
    ValorProduto := StrToFloat(edtValorProduto.Text);
  except
    MessageDlg('Atenção, valor informado para o produto é inválido',mtError,[mbOk],0);
    Abort;
  end;
  //
  if (ValorProduto > 20)then
    NovoValor := ValorProduto + (ValorProduto * 0.30)
  else
    NovoValor := ValorProduto +(ValorProduto * 0.45);

  //
 // pnlValorProduto.Caption:= FloatToStr(NovoValor);
   pnlValorProduto.Caption := FormatFloat('###.##0,00',NovoValor);
end;

end.
