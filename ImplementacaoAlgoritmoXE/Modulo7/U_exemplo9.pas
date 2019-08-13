unit U_exemplo9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    edtSalarioMinimo: TEdit;
    edtHorasTrabalhadas: TEdit;
    rgCategoria: TRadioGroup;
    rgTurno: TRadioGroup;
    pnl2: TPanel;
    pnlSituacao: TPanel;
    btnCalcular: TButton;
    lblCoeficiente: TLabel;
    lblSalarioBruto: TLabel;
    lblImposto: TLabel;
    lblGratificacao: TLabel;
    lblAuxilio: TLabel;
    lblSalarioLiquido: TLabel;
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
  Horas: Integer;
  SalarioMinimo, Coeficiente, SalarioBruto, Imposto, Gratificacao, Auxilio,
  SalarioLiquido: Extended;
begin
  try
    Horas := StrToInt(edtHorasTrabalhadas.Text);
  except
    MessageDlg('Atenção, a quantidade de horas informada é inválida', mtError,[mbOK],0);
    Abort;
  end;

  try
    SalarioMinimo := StrToInt(edtSalarioMinimo.Text);
  except
    MessageDlg('Atenção, o valor do salário mínimo informado é inválido', mtError,[mbOK],0);
    Abort;
  end;

  case rgTurno.ItemIndex of
    0: Coeficiente := 0.10;  //Matutino
    1: Coeficiente := 0.15;  //Vespertino
    2: Coeficiente := 0.12;  //Noturno
  end;

  Coeficiente := SalarioMinimo * Coeficiente;
  lblCoeficiente.Caption := 'Coeficiente -> ' + FormatFloat('###,##0.00',Coeficiente);

  SalarioBruto := Coeficiente * Horas;
  lblSalarioBruto.Caption := 'Salario Bruto -> ' + FormatFloat('###,##0.00', SalarioBruto);

  case rgCategoria.ItemIndex of
    0: //Operário
    begin
      if(SalarioBruto>= 300.00) then
        Imposto := 0.05
      else
        Imposto := 0.03;
    end;
    1: //Gerente
    begin
      if(SalarioBruto >= 400.00) then
        Imposto := 0.06
      else
        Imposto := 0.00;
    end;
  end;
  Imposto:= (SalarioMinimo * Imposto);
  lblImposto.Caption:= 'Imposto -> ' + FormatFloat('###,##0.00' , Imposto);
  //
  if (rgTurno.ItemIndex = 2) and (Horas >80) then
    Gratificacao := 50.00
  else
    Gratificacao := 30.00;

  lblGratificacao.Caption := 'Gratificação -> ' + FormatFloat('###,##0.00' , Gratificacao);
  //
  if (rgCategoria.ItemIndex = 0) and (Coeficiente <=25.00) then
    Auxilio := (SalarioMinimo /3)
  else
    Auxilio := (SalarioBruto/2);

  lblAuxilio.Caption := 'Auxilio -> ' + FormatFloat('###,##0.00' , Auxilio);
  //

  SalarioLiquido := SalarioBruto - Imposto + Gratificacao + Auxilio;
  lblSalarioLiquido.Caption := 'Salário Líquido -> ' + FormatFloat('###,##0.00', SalarioLiquido);

  if (SalarioLiquido < 350.00) then
    pnlSituacao.Caption:= 'Mal Remunerado'
  else if (SalarioLiquido <= 600.00) then
    pnlSituacao.Caption := 'Normal'
  else
    begin
      pnlSituacao.Caption := 'Bem Remunerado';
      pnlSituacao.Color := clGreen;
    end;

end;

end.
