unit U_teste3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    edtValorReais: TEdit;
    rgMoeda: TRadioGroup;
    btnCalcular: TButton;
    pnlValor: TPanel;
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
  ValorReal,ValorConvertido : Extended;
begin
  try
    ValorReal:= StrToFloat(edtValorReais.Text);
  except
    MessageDlg('Aten��o, o Valor digitado informado � inv�lido',mtError,[mbOk],0);
    Abort;
  end;
  //
  case rgMoeda.ItemIndex of
  0:
  begin
    ValorConvertido := ValorReal / 0.51;
    pnlValor.Caption := FormatFloat('###,##0.0', ValorConvertido);
  end;
  1:
  begin
   ValorConvertido := ValorReal / 3.81;
   pnlValor.Caption := FormatFloat('###,##0.0', ValorConvertido);
  end;
  2:
  begin
    ValorConvertido := ValorReal / 3.15;
    pnlValor.Caption := FormatFloat('###,##0.0', ValorConvertido);
  end;
  3:
  begin
    ValorConvertido := ValorReal / 0.03;
    pnlValor.Caption := FormatFloat('###,##0.0', ValorConvertido);
  end;
  4:
  begin
    ValorConvertido := ValorReal / 3.35;
    pnlValor.Caption := FormatFloat('###,##0.0', ValorConvertido);9OO
  end;
  end;
end;
end.
