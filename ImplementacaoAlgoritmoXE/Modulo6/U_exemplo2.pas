unit U_exemplo2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    edtDespesa: TEdit;
    lbl2: TLabel;
    edtTotal: TEdit;
    btnCalcular: TBitBtn;
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

procedure TForm1.btnCalcularClick(Sender: TObject);
var teste : Double;
begin
  edtTotal.Text := FormatFloat('###,##0.00',StrToFloat(edtDespesa.Text)*1.10)
//  teste := StrToFloat(edtDespesa.text) * 0.10;
//  edtTotal.Text := FloatToStr(teste);
end;

end.
