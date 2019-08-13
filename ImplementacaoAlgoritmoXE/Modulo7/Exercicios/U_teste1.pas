unit U_teste1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edtSalarioBruto: TEdit;
    edtValorPrestacao: TEdit;
    btnCalcular: TButton;
    pnlInformacao: TPanel;
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
  SalarioBruto, Prestacao : Extended;
begin
  try
    SalarioBruto := StrToFloat(edtSalarioBruto.Text);
  except
    MessageDlg('Atenção, o valor informado é inválido', mtError,[mbOk],0);
    Abort;
  end;
  //
  Prestacao := SalarioBruto * 0.30;
  if (StrToFloat(edtValorPrestacao.Text))> Prestacao then
    begin
      pnlInformacao.Caption:= 'Empréstimo NÃO APROVADO';
      pnlInformacao.Color:= clRed;
    end
  else
    begin
      pnlInformacao.Caption:= 'Empréstimo APROVADO';
      pnlInformacao.Color:= clAqua;
    end;


end;

end.
