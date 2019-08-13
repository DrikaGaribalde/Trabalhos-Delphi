unit U_exemplo10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    edtInvestimento: TEdit;
    pnlRelogio: TPanel;
    tmrHora: TTimer;
    rgInvestimento: TRadioGroup;
    btn1: TButton;
    pnlNovoValor: TPanel;
    procedure btn1Click(Sender: TObject);
    procedure tmrHoraTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  Investimento, NovoValor :Extended;
begin
  try
    Investimento := StrToFloat(edtInvestimento.Text);
  except
    MessageDlg('Aviso, o valor do investimento informado não é válido',mtError,[mbOk],0);
    Abort;
  end;
  //
  case rgInvestimento.ItemIndex of
    0: NovoValor := Investimento * 1.03;
    1: NovoValor := Investimento * 1.04;
  end;
  //
  pnlNovoValor.Caption := FormatFloat('###,##0.00' , NovoValor);
end;

procedure TForm1.tmrHoraTimer(Sender: TObject);
begin
  pnlRelogio.Caption := TimeToStr(Time);
end;

end.
