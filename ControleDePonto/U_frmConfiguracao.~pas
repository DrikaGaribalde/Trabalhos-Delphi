unit U_frmConfiguracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmConfiguracao = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    edtNome: TEdit;
    lbl2: TLabel;
    edtFuncao: TEdit;
    btnGravar: TButton;
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfiguracao: TfrmConfiguracao;

implementation

uses U_dmPrincipal;

{$R *.dfm}

procedure TfrmConfiguracao.btnGravarClick(Sender: TObject);
begin
  if edtNome.Text = '' then
  begin
    ShowMessage('Preencha o nome do funcionário');
    edtNome.SetFocus;
    Abort;
  end;
  if edtFuncao.Text = '' then
  begin
   ShowMessage('Preencha a função do funcionário');
   edtFuncao.SetFocus;
   Abort;
  end;
  if dmPrincipal.cdsFuncionario.Locate('NOME_FUNCIONARIO',edtNome.Text,[])then
     ShowMessage('Esse funcionário já foi cadastrado')
  else
  begin
    with dmPrincipal.cdsFuncionario do
    begin
      Open;
      Edit;
      FieldByName('ID_FUNCIONARIO').AsInteger := 1;
      FieldByName('NOME_FUNCIONARIO').AsString :=  edtNome.Text;
      FieldByName('FUNCAO_FUNCIONARIO').AsString := edtFuncao.Text;
      Post;
      if dmPrincipal.cdsFuncionario.ApplyUpdates(0) <> 0 then
        dmPrincipal.cdsFuncionario.CancelUpdates
      else
        ShowMessage('Funcionário cadastrado com sucesso!');
    end;
  end;
end;


procedure TfrmConfiguracao.FormCreate(Sender: TObject);
begin
  if not Assigned(dmPrincipal)then
    dmPrincipal := TdmPrincipal.Create(self);
  dmPrincipal.sdsFuncionario.Open;
end;

end.
