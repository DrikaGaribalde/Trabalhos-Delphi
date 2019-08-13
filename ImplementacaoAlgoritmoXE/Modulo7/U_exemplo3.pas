unit U_exemplo3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    edtSaldo: TEdit;
    btnCalcular: TButton;
    pnlCredito: TPanel;
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
var nCredito, nSaldo : Real;
begin
  nCredito :=0;
  try
    nSaldo := StrToFloat(edtSaldo.Text);
  except
//    on E:EConvertError do
//    Raise EConvertError.Create('Valor informado Inválido');
      on EConvertError do
      ShowMessage('Valor inválido!');


  end;

  if(nSaldo >200) and (nSaldo <=400) then
    nCredito := 20
  else if (nSaldo > 400) and (nSaldo <= 600) then
    nCredito := 30
  else if (nSaldo > 600) then
    nCredito := 40;
  //
   pnlCredito.Caption := FormatFloat('###,##0.00',(nSaldo*nCredito)/100);


end;

end.
