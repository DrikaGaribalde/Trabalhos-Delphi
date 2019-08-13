unit U_Problema6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TfrmProblema6 = class(TForm)
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    edtNomeAluno: TEdit;
    edtNota1: TEdit;
    edtNota2: TEdit;
    edtNota3: TEdit;
    edtNota4: TEdit;
    btnInserir: TButton;
    lbl3: TLabel;
    btnNotasInferiores: TBitBtn;
    lstMediaInferior: TListBox;
    hdrcntrl1: THeaderControl;
    lstNomeAluno: TListBox;
    lstMedia: TListBox;
    hdrcntrl2: THeaderControl;
    lbl4: TLabel;
    lblResultadoMedia: TLabel;
    procedure edtNomeAlunoExit(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure edtNota1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnNotasInferioresClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProblema6: TfrmProblema6;
  Notas: array[1..3, 1..4] of Integer;
  MediaDaTurma : Real;

implementation

{$R *.dfm}

procedure TfrmProblema6.edtNomeAlunoExit(Sender: TObject);
begin
 if (Length(Trim(edtNomeAluno.Text))=0) then
  begin
    MessageDlg('O campo nome deve ser preenchido', mtWarning,[mbOK],0);
    edtNomeAluno.SetFocus;
  end;
end;

procedure TfrmProblema6.btnInserirClick(Sender: TObject);
begin
  if (Length(Trim(edtNota1.Text))=0) or (StrToInt(edtNota1.Text)>100) then
  begin
    MessageDlg('Valor inválido, ou vazio', mtWarning,[mbOK],0);

    edtNota1.SetFocus;
     edtNota1.Clear;
    Abort;
  end;
  if (Length(Trim(edtNota2.Text))= 0 ) or (StrToInt(edtNota2.Text)>100) then
  begin
    MessageDlg('Valor inválido, ou vazio', mtWarning,[mbOK],0);

    edtNota2.SetFocus;
    edtNota2.Clear;
    Abort;
  end;
  if (Length(Trim(edtNota3.Text))=0) or (StrToInt(edtNota3.Text)>100) then
  begin
    MessageDlg('Valor inválido, ou vazio', mtWarning,[mbOK],0);

    edtNota3.SetFocus;
     edtNota3.Clear;
    Abort;
  end;
  if (Length(Trim(edtNota4.Text))=0) or (StrToInt(edtNota4.Text)>100) then
  begin
    MessageDlg('Valor inválido, ou vazio', mtWarning,[mbOK],0);

    edtNota4.SetFocus;
    edtNota4.Clear;
    Abort;
  end;
  // Acrescenta os dados na matriz
  lstNomeAluno.Items.Add(edtNomeAluno.Text);
  Notas[lstNomeAluno.Count,1] := StrToInt(edtNota1.Text);
  Notas[lstNomeAluno.Count,2] := StrToInt(edtNota2.Text);
  Notas[lstNomeAluno.Count,3] := StrToInt(edtNota3.Text);
  Notas[lstNomeAluno.Count,4] := StrToInt(edtNota4.Text);
  //
  lstMedia.Items.Add(FloatToStr((Notas[lstNomeAluno.Count,1]+
                                Notas[lstNomeAluno.Count,2]+
                                Notas[lstNomeAluno.Count,3]+
                                Notas[lstNomeAluno.Count,4])/4));
  //media da turma
  MediaDaTurma := MediaDaTurma + StrToFloat(lstMedia.Items.Strings[lstMedia.Count-1]);
  lblResultadoMedia.Caption := FloatToStr(MediaDaTurma/lstNomeAluno.Count);


  //Verificando a quantidade de alunos
  if (lstNomeAluno.Count = 4) then
  begin
    MessageDlg('Lançamento concluído', mtWarning, [mbOK],0);
    grp1.Enabled       := True;
    btnInserir.Enabled := False;
    btnNotasInferiores.Enabled := True;
  end
  else
  //limpa campos
  edtNomeAluno.SetFocus;
  edtNomeAluno.Clear;
  edtNota1.Clear;
  edtNota2.Clear;
  edtNota3.Clear;
  edtNota4.Clear;

end;

procedure TfrmProblema6.edtNota1KeyPress(Sender: TObject; var Key: Char);
begin
if not(Key in ['0'..'9', #8]) then
  begin
  MessageDlg('Somente números são válidos', mtWarning,[mbOK],0);
  Key := #0;
  end;
end;

procedure TfrmProblema6.FormCreate(Sender: TObject);
begin
btnNotasInferiores.Enabled := False;
end;

procedure TfrmProblema6.btnNotasInferioresClick(Sender: TObject);
var i,j : Integer;
begin
  for i := 1 to 4 do
  begin
    j := 1;
    while(j <=4) and (Notas[i,j] >= (MediaDaTurma / lstNomeAluno.Count)) do
      inc(j);
      if (j<=4) then
        lstMediaInferior.Items.Add(lstNomeAluno.Items.Strings[i-1]);
  end;
end;

end.
