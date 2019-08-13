unit U_Problema3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ComCtrls, Buttons;

type
  TfrmRegistroNota = class(TForm)
    grpDadosNota: TGroupBox;
    lblDtEntrada: TLabel;
    lblFornecedor: TLabel;
    lblDtEmissao: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edtFornecedor: TEdit;
    edtCNPJ: TEdit;
    grpProdutosNota: TGroupBox;
    ud1: TUpDown;
    edtQtdeItens: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl6: TLabel;
    edtCodigo: TEdit;
    edtPrecoUnitario: TEdit;
    edtDescricao: TEdit;
    edtQtdeNota: TEdit;
    btnAceitaProduto: TBitBtn;
    grpTotais: TGroupBox;
    lbl7: TLabel;
    lblVolume: TLabel;
    lbl9: TLabel;
    lblTotalNota: TLabel;
    grpConsulta: TGroupBox;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lblCodigo: TLabel;
    lblPrecoUnitario: TLabel;
    lblQtdeConsulta: TLabel;
    lblSubTotal: TLabel;
    cbbProduto: TComboBox;
    dtpEmissao: TDateTimePicker;
    dtpEntrada: TDateTimePicker;
    procedure edtFornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure edtCNPJKeyPress(Sender: TObject; var Key: Char);
    procedure edtQtdeItensKeyPress(Sender: TObject; var Key: Char);
    procedure edtPrecoUnitarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoEnter(Sender: TObject);
    procedure btnAceitaProdutoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtQtdeItensChange(Sender: TObject);
    procedure cbbProdutoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRegistroNota: TfrmRegistroNota;
  // 
  Codigo, Descricao : array[0..19] of string;
  Quantidade        : array[0..19] of Integer;
  Preco             : array[0..19] of Real;
  Volume, QtdeProd  : Integer;
  Total             : Real;


implementation

{$R *.dfm}

procedure TfrmRegistroNota.edtFornecedorKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (Key in ['a'..'z','A'..'Z',#8,#32]) then
  Key := #0;
end;

procedure TfrmRegistroNota.edtCNPJKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9', '-','.','/',#8]) then
  Key := #0;
end;

procedure TfrmRegistroNota.edtQtdeItensKeyPress(Sender: TObject;
  var Key: Char);
begin
if not(Key in ['0'..'9',#8]) then
  Key := #0;
end;

procedure TfrmRegistroNota.edtPrecoUnitarioKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (Key in ['0'..'9', ',', #8] )then
  Key := #0;
end;

procedure TfrmRegistroNota.edtCodigoEnter(Sender: TObject);
begin
if (Length(edtFornecedor.Text) =0) or (Length(edtCNPJ.Text) = 0) or(StrToInt(edtQtdeItens.Text)< 1) then
   begin
    MessageDlg('� preciso informar o Fornecedor, seu respectivo CNPJ e a ' +
              ' quantidade de Itens deve ser maior do que Zero.' , mtWarning,[mbOk],0);
    edtFornecedor.SetFocus;
    Abort;
   end;
if (dtpEmissao.Date > dtpEntrada.Date) then
begin
  MessageDlg('A data de entrada deve ser igual ou superior a data de emiss�o', mtError, [mbOK],0);
  dtpEmissao.SetFocus;
  Abort;
end;




end;

procedure TfrmRegistroNota.btnAceitaProdutoClick(Sender: TObject);
var
  nPreco: Real;
begin
  if (Length(edtCodigo.Text) = 0) or (Length(edtDescricao.Text)=0) or
     (StrToInt(edtQtdeNota.Text)<1) then
     begin
       MessageDlg('O c�digo deve ser preenchido, como a descri��o e a quantidade do produto', mtWarning, [mbok],0);
       edtCodigo.SetFocus;
       Abort;
     end;
  try
    nPreco := StrToInt(edtPrecoUnitario.Text);
  except
    begin
      MessageDlg('Preencha o pre�o do produto', mtWarning,[mbOK],0);
      edtPrecoUnitario.SetFocus;
      Abort;
    end;
  end;
  //
  if(QtdeProd = 0) then
  begin
    grpProdutosNota.Enabled := False;
    grpDadosNota.Color := clWhite;
  end;
  //
  Codigo[QtdeProd]:= edtCodigo.Text;
  Descricao[QtdeProd]:= edtDescricao.Text;
  Preco[QtdeProd]:= StrToFloat(edtPrecoUnitario.Text);
  Quantidade[QtdeProd]:= StrToInt(edtQtdeNota.Text);
  Volume:= Volume + Quantidade[QtdeProd];
  Total := Total + (Quantidade[QtdeProd] * Preco[QtdeProd]);
  lblVolume.Caption := IntToStr(Volume);
  lblTotalNota.Caption := FormatFloat('###,##0.00',Total);
  //
  cbbProduto.Items.Add(edtDescricao.Text);
  inc(QtdeProd);
  //
  if(QtdeProd = StrToInt(edtQtdeNota.Text)) then
  begin
    MessageDlg('Digita��o Conclu�da',mtWarning,[mbOK],0);
    grpProdutosNota.Enabled := False;
    grpProdutosNota.Color := clWhite;
    grpConsulta.Enabled := True;
    cbbProduto.SetFocus;
  end
  else
  begin
    edtCodigo.Text := '';
    edtDescricao.Text := '';
    edtPrecoUnitario.Text := '';
    edtQtdeNota.Text := '';
  end;
end;

procedure TfrmRegistroNota.FormCreate(Sender: TObject);
begin
QtdeProd := 0;
Volume   := 0;
Total    := 0;
end;

procedure TfrmRegistroNota.edtQtdeItensChange(Sender: TObject);
begin
//ud1.Position := StrToInt(edtQtdeItens.Text);
end;

procedure TfrmRegistroNota.cbbProdutoChange(Sender: TObject);
//C�digo que exibe os dados do produto consultado no comboBox.
begin
lblCodigo.Caption := Codigo[cbbProduto.ItemIndex];
lblPrecoUnitario.Caption := FormatFloat('###,##0.00', Preco[cbbProduto.ItemIndex]);
lblQtdeConsulta.Caption  := IntToStr(Quantidade[cbbProduto.ItemIndex]);
lblSubTotal.Caption      := FormatFloat('###,##0.00',Preco[cbbProduto.ItemIndex]* Quantidade[cbbProduto.ItemIndex]);
end;

end.
