unit U_Problema6_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmLancaValores = class(TForm)
    lbl1: TLabel;
    edtNome: TEdit;
    lbl2: TLabel;
    edtSalario: TEdit;
    btnConfirmar: TButton;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nSalarioAnterior, nSalarioAtual: Extended;
  end;

var
  frmLancaValores: TfrmLancaValores;

implementation

uses U_Problema6;

{$R *.dfm}

procedure TfrmLancaValores.btnConfirmarClick(Sender: TObject);
begin
  try
    nSalarioAnterior := StrToFloat(edtSalario.Text);
  except
    MessageDlg('Atenção, valor informado como salário é inválido', mtError,[mbOk],0);
    Abort;
  end;
  //
  if(Length(Trim(edtNome.Text))=0) then
  begin
    MessageDlg('Nome do jogador não pode estar vazio',mtWarning,[mbOk],0);
    Abort;
  end;
  //
  if(nSalarioAnterior <= 1000) then
    nSalarioAtual := (nSalarioAnterior * 1.20)
  else if (nSalarioAnterior <=5000) then
    nSalarioAtual:= (nSalarioAnterior *1.10)
  else
    nSalarioAtual:= nSalarioAnterior;
  //
  Close;
end;

procedure TfrmLancaValores.FormShow(Sender: TObject);
begin
frmLancaValores.Caption := 'Jogador ' + IntToStr(frmReajuste.nQuantidade) + ' de 3';
end;

end.
