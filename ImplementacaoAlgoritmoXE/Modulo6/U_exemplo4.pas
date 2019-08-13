unit U_exemplo4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lblDataAtual: TLabel;
    medtNascimento: TMaskEdit;
    btnCalcular: TButton;
    grp1: TGroupBox;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lblAno: TLabel;
    lblMeses: TLabel;
    lblDias: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  lblDataAtual.Caption := DateToStr(Date);
end;

procedure TForm1.btnCalcularClick(Sender: TObject);
var
  dias : Variant;
  meses,anos :Integer;
begin
  dias:= StrToDate(lblDataAtual.Caption) - StrToDate(medtNascimento.Text);
  anos:= dias div 365;
  dias:= dias mod 365;
  meses:= dias div 30;
  dias := dias mod 30;
  lblAno.Caption := IntToStr(anos);
  lblMeses.Caption := IntToStr(meses);
  lblDias.Caption := IntToStr(dias);
end;

end.
