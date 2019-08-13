unit U_Problema5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmDvd = class(TForm)
    lbl1: TLabel;
    edtTitulo: TEdit;
    cbbGenero: TComboBox;
    rgAcao: TRadioGroup;
    grpDados: TGroupBox;
    lstDadosExistentes: TListBox;
    btnAcao: TButton;
    lbl2: TLabel;
    procedure btnAcaoClick(Sender: TObject);
    procedure lstDadosExistentesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDvd: TfrmDvd;
  Genero: array[0..2] of Integer;
const
  Tamanho : Integer = 3;

implementation

{$R *.dfm}


procedure TfrmDvd.btnAcaoClick(Sender: TObject);
var
  i : Integer;
begin
  if (Length(edtTitulo.Text) = 0 ) then
  begin
    MessageDlg('Atenção, o campo título deve ser preenchido', mtWarning, [mbOk],0);
    edtTitulo.SetFocus;
    Abort;
  end;
  //
  if (rgAcao.ItemIndex) <0 then
  begin
    MessageDlg('Atenção, deve informar qual Ação será executada', mtWarning, [mbOK],0);
    rgAcao.SetFocus;
    Abort;
  end;
  // <<<<<<<<<<<--------Incluir
  if (rgAcao.ItemIndex) = 0 then
  begin
    if (lstDadosExistentes.Items.Count = Tamanho) then
    begin
      MessageDlg('Não existe mais disponibilidade para inserção', mtWarning,[mbOK],0);
      Abort;
    end;
    Genero[lstDadosExistentes.Items.Count] := cbbGenero.ItemIndex;
    lstDadosExistentes.Items.Add(edtTitulo.Text);
    ShowMessage('Inserção Concluída');
  end
  else if(rgAcao.ItemIndex =1) then //Alterar
  begin
    if(lstDadosExistentes.Items.Count = 0) then
    begin
      MessageDlg('Não existem items para serem alterados', mtWarning, [mbok],0);
      Abort;
    end;
    Genero[lstDadosExistentes.Items.Count] := cbbGenero.ItemIndex;
    lstDadosExistentes.Items.Strings[lstDadosExistentes.Items.Count] := edtTitulo.Text;
    ShowMessage('Alteração Concluída');
  end
  else if (rgAcao.ItemIndex = 2) then // Excluir
  begin
    if (lstDadosExistentes.Items.Count = 0) then
    begin
      MessageDlg('Não existem items para serem deletados', mtWarning,[mbOK],0);
      Abort;
    end;
    if MessageDlg('Deseja realmente excluir este item', mtConfirmation, [mbYes,mbNo],0) = mrYes then
    begin
      for i:= lstDadosExistentes.ItemIndex to (lstDadosExistentes.Items.Count -2) do
        Genero[i] := Genero[i + 1];
        lstDadosExistentes.Items.Delete(lstDadosExistentes.ItemIndex);
        ShowMessage('Exclusão concluída!');
    end;
  end;
  edtTitulo.Text := '';
  cbbGenero.ItemIndex := -1;
  rgAcao.ItemIndex := -1;
  edtTitulo.SetFocus;
  //

end;

procedure TfrmDvd.lstDadosExistentesClick(Sender: TObject);
begin
edtTitulo.Text := lstDadosExistentes.Items.Strings[lstDadosExistentes.ItemIndex];
cbbGenero.ItemIndex := Genero[lstDadosExistentes.ItemIndex];
end;

end.
