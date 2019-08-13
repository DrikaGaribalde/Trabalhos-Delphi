unit Uexercicio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type
  TfrmExercicio = class(TForm)
    lbl1: TLabel;
    edtSalarioBase: TEdit;
    lbl2: TLabel;
    edtGratificacao: TEdit;
    lbl3: TLabel;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure edtSalarioBaseKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExercicio: TfrmExercicio;

implementation

{$R *.dfm}

procedure TfrmExercicio.btn1Click(Sender: TObject);
var

  imposto, total: Double;
begin
  imposto :=0;
  if (edtSalarioBase.Text)<> '' then
    imposto:= StrToFloat(edtSalarioBase.Text)*0.1
  else
  begin
    ShowMessage('Preencha o campo do Salário Base');
    edtSalarioBase.SetFocus;
  end;
  //
  if (edtGratificacao.text)<>'' then
  begin
    total:= StrToFloat(edtSalarioBase.text) - imposto + StrToFloat(edtGratificacao.Text);
    MessageDlg('O salário base é: ' + FloatToStr(total), mtInformation,[mbOk],0);
  end;

end;

procedure TfrmExercicio.edtSalarioBaseKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in['0'..'9',#8,#13,',']) then
    begin
      ShowMessage('Apenas valores numéricos');
      Key := #0;
    end;


end;

end.
