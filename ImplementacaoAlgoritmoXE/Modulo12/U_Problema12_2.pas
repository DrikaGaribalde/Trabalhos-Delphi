unit U_Problema12_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    grpDadosFamilia: TGroupBox;
    lbl1: TLabel;
    edtNome: TEdit;
    lbl2: TLabel;
    edtRendaFamiliar: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    edtQuantPessoas: TEdit;
    btn1: TButton;
    btn2: TButton;
    dtpNascimento: TDateTimePicker;
    lbl5: TLabel;
    lbl6: TLabel;
    lblIdade: TLabel;
    lblRendaPercapita: TLabel;
    pnlResultado: TPanel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure calcularIdade;
    procedure calcularRendaPercapita;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.calcularIdade;
var
  idade : Extended;
begin
   lblIdade.Visible := False;
   if (dtpNascimento.Date > Date) then
   begin
     MessageDlg('Data de nascimento deve ser inferior a data atual', mtWarning,[mbOK],0);
     Abort;
   end;
   idade := (Date - dtpNascimento.Date) /365;
   lblIdade.Caption := FormatFloat('##0 ', idade);
   lblIdade.Visible := True;

end;

procedure TForm1.calcularRendaPercapita;
var
  renda : Extended;
begin
  lblRendaPercapita.Visible := False;
  try
    renda := StrToFloat(edtRendaFamiliar.Text)/strtofloat(edtQuantPessoas.Text);
    lblRendaPercapita.Caption:= FormatFloat('###,##0.00 ', renda);
    lblRendaPercapita.Visible:= True;
  except
    MessageDlg('Erro no cálculo da renda', mtError,[mbok],0);
    Abort;
  end;

end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  calcularIdade;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
calcularRendaPercapita;
end;

end.
