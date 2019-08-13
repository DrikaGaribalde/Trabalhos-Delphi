unit U_exemplo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edtDividendo: TEdit;
    edtDivisor: TEdit;
    edtResto: TEdit;
    btnCalculo: TBitBtn;
    procedure btnCalculoClick(Sender: TObject);
    procedure edtDividendoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalculoClick(Sender: TObject);
var
  valor : Integer;
begin
  if ((edtDividendo.Text)<> '') and ((edtDivisor.Text)<>'')then
  begin
     valor := StrToInt(edtDividendo.Text)mod StrToInt(edtDivisor.Text);
     edtResto.Text := IntToStr(valor);
  end
  else
    MessageDlg('Digite números sem casas decimais', mtWarning,[mbYes,mbNo],0);
    if (edtDivisor.Tag)=1 then
    edtDividendo.SetFocus;
    if (edtDivisor.Tag)=2 then
    edtDivisor.SetFocus;
    
  end;


procedure TForm1.edtDividendoKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8,#13])then
    begin
      ShowMessage('Digite apenas números');
      Key := #0;
    end;
end;

end.
