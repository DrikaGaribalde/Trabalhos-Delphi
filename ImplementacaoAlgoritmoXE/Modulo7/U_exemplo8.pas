unit U_exemplo8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    grpDadosProduto: TGroupBox;
    edtCodigo: TEdit;
    edtPeso: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    rgEstado: TRadioGroup;
    btnCalcular: TButton;
    pnl1: TPanel;
    procedure btnCalcularClick(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    Carga: Integer;
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
var
Carga,Peso: Integer;
Imposto, Preco, ValorImposto: Extended;
begin
try
  Carga:= StrToInt(edtCodigo.Text);
except
   MessageDlg('Atenção, o código informado não é um valor válido', mtError,[mbOk],0);
   Abort;
end;

if (Carga<10) or (Carga > 40) then
begin
  MessageDlg('Atenção, o código deve estar entre 10 e 40', mtError,[mbOk],0);
  edtCodigo.Clear();
  edtCodigo.SetFocus();
  Abort;
end;
//
try
  Peso:= StrToInt(edtPeso.Text);
except
  MessageDlg('Atenção, o Peso informado não é um valor válido', mtError,[mbOk],0);
  Abort;
end;
//

case rgEstado.ItemIndex of
0: Imposto := 0.35;
1: Imposto := 0.25;
2: Imposto := 0.15;
3: Imposto := 0.05;
4: Imposto := 0.00;
end;

case Carga of
10..20 : Preco := 100;
21..30 : Preco := 250;
31..40 : Preco := 340;
end;

ValorImposto := ((Peso * 1000) * Preco)* Imposto;
pnl1.Caption := 'Imposto à pagar ->' + FormatFloat('###,##0.00', ValorImposto);

end;

procedure TForm1.edtCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) then
begin
  try
    Carga := StrToInt(edtCodigo.Text);
  except
    edtCodigo.Text:='0';
  end;
end;
end;
end.


