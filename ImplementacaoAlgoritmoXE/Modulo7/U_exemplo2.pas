unit U_exemplo2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edtAltura: TEdit;
    lblPeso: TLabel;
    rgSexo: TRadioGroup;
    btnCalcular: TButton;
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
var _peso : Real;
begin
  _peso :=0;

  if(rgSexo.ItemIndex=0) then
    begin
      try
        _peso := (72.7 * StrToFloat(edtAltura.Text))-58;
      except
        on E:EConvertError do
          raise EConvertError.Create('Valor informado na altura é inválido');
      end;
    end
    else
    begin
      try
        _peso := (62.1 * StrToFloat(edtAltura.Text))-44.7;
      except
        on E:EConvertError do
          raise EConvertError.Create('Valor informado na altura é inválido');
      end;
    end;
    lblPeso.Visible := (_peso >0);
    lblPeso.Caption := FloatToStr(_peso);
end;

end.
