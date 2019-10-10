unit classe.VisaoPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, classe.Modelo,
  classe.Controle, UDados, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmPrincipal = class(TForm)
    btnCarregaOFX: TButton;
    sg: TStringGrid;
    edtSaldoFinal: TEdit;
    Label1: TLabel;
    btnSalvar: TButton;
    Label2: TLabel;
    DBESaldoInicial: TDBEdit;
    OpenDialog1: TOpenDialog;
    procedure btnCarregaOFXClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure CriarArquivo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    YMOFXReader1: TModelo;
    saldoInicial: double;
    total: double;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCarregaOFXClick(Sender: TObject);
var
  i: integer;
  objTeste: TModeloItem;

begin
  if OpenDialog1.Execute then
  begin
    try
      CriarArquivo;
      saldoInicial := 0;
      total := 0;
      DBESaldoInicial.Text := StringReplace(StringReplace(DBESaldoInicial.Text,
        'R$', '', []), '.', '', [rfReplaceAll]);
      saldoInicial := StrToFloat(DBESaldoInicial.Text);
      DBESaldoInicial.Text := Format('%m ', [saldoInicial]);

      for i := 0 to Pred(YMOFXReader1.Count) do
      begin
        sg.RowCount := sg.RowCount + 1;

        sg.Cells[0, 0] := 'Data';
        sg.Cells[0, i + 1] := dateToStr(YMOFXReader1.Get(i).MovDate);
        sg.Cells[1, 0] := 'Descri��o';
        sg.ColWidths[1] := 490;
        sg.Cells[1, i + 1] := YMOFXReader1.Get(i).Desc;
        sg.Cells[2, 0] := 'Valor';
        sg.Cells[2, i + 1] := FormatFloat('R$ ###,###,#0.00',
          YMOFXReader1.Get(i).Value);

        total := total + (YMOFXReader1.Get(i).Value);
      end;

      total := total + saldoInicial;
      edtSaldoFinal.Text := Format('%m ', [total]);
      btnSalvar.Enabled := true;
    finally
      FreeAndNil(YMOFXReader1);
    end;
  end;
end;

procedure TfrmPrincipal.btnSalvarClick(Sender: TObject);
var
  objControle: TControle;
  objTeste: TModeloItem;
  i: integer;
begin
  try
    CriarArquivo;
    objControle := TControle.Create();
    objTeste := TModeloItem.Create;
    // preenche os dados
    for i := 0 to Pred(YMOFXReader1.Count) do
    begin
      objTeste.MovDate := YMOFXReader1.Get(i).MovDate;
      objTeste.Desc := YMOFXReader1.Get(i).Desc;
      objTeste.Value := YMOFXReader1.Get(i).Value;
      objControle.Salvar(objTeste);
    end;
    showmessage('Registro salvo com sucesso!');
    btnSalvar.Enabled := false;
    DBESaldoInicial.Text := Format('%m ', [total]); // recebendo o novo total
    showmessage('Novo Saldo Inicial ' + DBESaldoInicial.Text);
  finally
    FreeAndNil(objTeste);
    FreeAndNil(objControle);
    FreeAndNil(YMOFXReader1);
  end;
end;

procedure TfrmPrincipal.CriarArquivo;
begin
  YMOFXReader1 := TModelo.Create(self);
  YMOFXReader1.OFXFile := OpenDialog1.FileName;
  YMOFXReader1.Process;

end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  if not Assigned(dmMovimento) then
    dmMovimento := TdmMovimento.Create(self);
  //
  btnSalvar.Enabled := false;
  if DBESaldoInicial.Text = '' then
    DBESaldoInicial.Text := '0';
end;

end.
