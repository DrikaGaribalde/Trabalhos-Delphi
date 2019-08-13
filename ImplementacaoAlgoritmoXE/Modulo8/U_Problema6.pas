unit U_Problema6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmReajuste = class(TForm)
    pnl1: TPanel;
    btnIniciar: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lblNome: TLabel;
    lblAnterior: TLabel;
    lblAtual: TLabel;
    pnl2: TPanel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lblTotalAnterior: TLabel;
    lblTotalAtual: TLabel;
    lblVariacao: TLabel;
    procedure btnIniciarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nQuantidade   : Integer;
    nTotalAnterior, nTotalAtual: Extended;
  end;

var
  frmReajuste: TfrmReajuste;

implementation

uses U_Problema6_1;

{$R *.dfm}

procedure TfrmReajuste.btnIniciarClick(Sender: TObject);
var
  nVariacao : Extended;
begin
  //Inicia Lançamento
  if(btnIniciar.Tag =0) then
  begin
    btnIniciar.Tag  := 1;
    frmLancaValores := TfrmLancaValores.Create(Self);
    nQuantidade     := 0;
    nTotalAnterior  := 0;
    nTotalAtual     := 0;
    //
    repeat
      inc(nQuantidade);
      frmLancaValores.edtNome.Clear;
      frmLancaValores.edtSalario.Clear;
      frmLancaValores.ShowModal;
      //
      nTotalAnterior:= nTotalAnterior + frmLancaValores.nSalarioAnterior;
      nTotalAtual   := nTotalAtual + frmLancaValores.nSalarioAtual;
      //
      lblNome.Caption     := frmLancaValores.edtNome.Text;
      lblAnterior.Caption := FormatFloat('###,##0.00', frmLancaValores.nSalarioAnterior);
      lblAtual.Caption    := FormatFloat('###,##0.00', frmLancaValores.nSalarioAtual);
      //
      lblTotalAnterior.Caption := FormatFloat('###,##0.00', nTotalAnterior);
      lblTotalAtual.Caption    := FormatFloat('###,##0.00', nTotalAtual);

    until(nQuantidade=3);
    //
    lblNome.Caption    := '';
    lblAnterior.Caption:= '';
    lblAtual.Caption   := '';
    lblTotalAnterior.Font.Color := clBlue;
    lblTotalAtual.Font.Color    := clBlue;

    nVariacao:= (nTotalAtual * 100 / nTotalAnterior) - 100;
    lblVariacao.Caption := FormatFloat('###,##0.00', nVariacao) + ' % ';

    frmLancaValores.Free;
    btnIniciar.Caption := 'Novo Lançamento';
  end
  else
  begin
    btnIniciar.Tag := 0;
    lblTotalAnterior.Font.Color := clWindowText;
    lblTotalAtual.Font.Color    := clWindowText;
    lblNome.Caption             := 'Não iniciado';
    lblAnterior.Caption         := '0';
    lblAtual.Caption            := '0';
    lblTotalAnterior.Caption    := '0';
    lblTotalAtual.Caption       := '0';

    btnIniciar.Caption          :='Iniciar Lançamento';
  end;


end;

end.
