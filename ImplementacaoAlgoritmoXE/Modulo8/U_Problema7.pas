unit U_Problema7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmCalcados = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lblDia: TLabel;
    lblQuantidadeDia: TLabel;
    lblTotal: TLabel;
    btnIniciar: TButton;
    procedure btnIniciarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     nDia, nDiaMaior, nMaiorQuantidade, nTotalPares : Integer;
  end;

var
  frmCalcados: TfrmCalcados;

implementation

uses U_Problema7_1;

{$R *.dfm}

procedure TfrmCalcados.btnIniciarClick(Sender: TObject);
begin
  if(btnIniciar.Tag =0 ) then
  begin
    btnIniciar.Tag  := 1;
    frmLancaValores := TfrmLancaValores.Create(Self);
    nDia := 0;
    nTotalPares :=0;
    repeat
      Inc(nDia);
      frmLancaValores.edtPares.Text := '0';
      frmLancaValores.ShowModal;
      //
      nTotalPares:= nTotalPares + frmLancaValores.nQuantidade;
      if(nDia = 1) or (frmLancaValores.nQuantidade > nMaiorQuantidade) then
      begin
        nDiaMaior        := nDia;
        nMaiorQuantidade := frmLancaValores.nQuantidade;
      end;
      //
      lblDia.Caption           := IntToStr(nDiaMaior);
      lblQuantidadeDia.Caption := IntToStr(nMaiorQuantidade);
      lblTotal.Caption         := IntToStr(nTotalPares);
    until(nDia = 5);
    //
    lblDia.Font.Color := clBlue;
    lblQuantidadeDia.Font.Color := clBlue;
    lblTotal.Font.Color := clBlue;
    //
    frmLancaValores.Free;
    btnIniciar.Caption := 'Novo Lançamento';
  end
  else
  begin
    btnIniciar.Tag := 0;
    lblDia.Font.Color := clWindowText;
    lblQuantidadeDia.Font.Color := clWindowText;
    lblTotal.Font.Color := clWindowText;

    lblDia.Caption := '0';
    lblQuantidadeDia.Caption := '0';
    lblTotal.Caption := '0';

    btnIniciar.Caption := 'Iniciar o Lançamento';
  end;
end;

end.
