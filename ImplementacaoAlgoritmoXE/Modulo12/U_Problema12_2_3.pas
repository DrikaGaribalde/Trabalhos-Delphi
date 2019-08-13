unit U_Problema12_2_3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
  TfrmPoupanca = class(TForm)
    grpDados: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    edtDeposito: TEdit;
    edtTaxaAnual: TEdit;
    btnProjecao: TButton;
    lvDados: TListView;
    procedure btnProjecaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

 function calcularGanho(valor,taxa : Real) : Real;
 procedure inserirExtrato(mes:string; inicio, ganho, final:Real);
 //
var
  frmPoupanca: TfrmPoupanca;
  meses : array[1..12]of string = ('Janeiro','Fevereiro','Março','Abril','Maio',
                                   'Junho','Julho','Agosto','Setembro','Outubro',
                                   'Novembro','Dezembro');


implementation

{$R *.dfm}

function calcularGanho(valor,taxa : Real):Real;
begin
  Result:= (valor*taxa)/100;
end;

procedure inserirExtrato(mes:string; inicio,ganho,final: Real);
var
  listItem : TListItem;
begin
  listItem:= frmPoupanca.lvDados.Items.Add;
  listItem.Caption := mes;
  listItem.SubItems.Add(FormatFloat('###,##0.00', inicio));
  listItem.SubItems.Add(FormatFloat('###,##0.00',ganho));
  listItem.SubItems.Add(FormatFloat('###,##0.00',final));
end;
procedure TfrmPoupanca.btnProjecaoClick(Sender: TObject);
var
  saldoIncial, taxa, ganho : Real;
  i : Integer;
begin
  try
    saldoIncial:= StrToFloat(edtDeposito.Text);
    taxa := StrToFloat(edtTaxaAnual.Text);
    lvDados.Clear;
  except
    MessageDlg('Erro na conversão de dados', mtWarning, [mbok],0);
    Abort;
  end;
  for i := 1 to 12 do
  begin
    ganho := calcularGanho(saldoIncial,taxa);
    inserirExtrato(meses[i],saldoIncial, ganho, (saldoIncial+ganho));
    saldoIncial:= (saldoIncial + ganho);
  end;


end;

end.
