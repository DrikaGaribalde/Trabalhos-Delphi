unit U_exemplo7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    edtcodigo: TEdit;
    edtPeso: TEdit;
    rgPais: TRadioGroup;
    btncalcular: TButton;
    pnl1: TPanel;
    procedure btncalcularClick(Sender: TObject);
    procedure edtcodigoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btncalcularClick(Sender: TObject);
var
  Produto, Peso : Integer;
  Imposto, Preco, ValorImposto : Extended;
begin
  try
    Produto := StrToInt(edtcodigo.Text);
  except
    MessageDlg('Aten��o, o c�digo informado n�o � um valor v�lido',mtError,[mbOk],0);
    Abort;
  end;

  if (Produto <1) or (Produto > 10) then
    begin
      MessageDlg('Aten��o, o c�digo deve estar entre 1 e 10', mtError,[mbOk],0);
      edtcodigo.Clear();
      edtcodigo.SetFocus();
      Abort;

    end;

  try
    Peso:= StrToInt(edtPeso.Text);
  except
    begin
    MessageDlg('Aten��o, o Peso informado n�o � um valor v�lido',mtError,[mbOk],0);
    Abort;
    end;
  end;

  case rgPais.ItemIndex of
    0: Imposto :=0.00;
    1: Imposto :=0.15;
    2: Imposto :=0.25;
  end;

  case Produto of
    1..4: Preco := 10;
    5..7: Preco := 25;
    8..10: Preco:= 35;
  end;

  ValorImposto:= (Peso * Preco) * Imposto;
  pnl1.Caption := 'Imposto � pagar --> ' + FormatFloat('###,##0.00', ValorImposto);
  end;

procedure TForm1.edtcodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9']) then
    Key:= #0;
end;

end.
