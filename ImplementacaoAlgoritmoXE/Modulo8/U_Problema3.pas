unit U_Problema3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TForm1 = class(TForm)
    strgrInfo: TStringGrid;
    btnCalcular: TButton;
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
    strgrInfo.Cells[0,0] := 'Casa';
    strgrInfo.Cells[1,0] := 'Consumo';
    strgrInfo.Cells[2,0] := '20%';
    strgrInfo.Cells[0,11]:= 'Total:';
end;

procedure TForm1.btnCalcularClick(Sender: TObject);
var
  i: Integer;
  consumo, desconto, totalConsumo, totalDesconto : Extended;
begin
  totalConsumo := 0;
  totalDesconto:= 0;
  for i := 1 to 5 do
  begin
     strgrInfo.Cells[0,i] := IntToStr(i);
     try
       consumo := StrToFloat(InputBox('Digite o consumo: ' + IntToStr(i) +
                             'ª casa, de 5','Consumo: ','0'));
     except
       consumo := 0;
       MessageDlg('Atenção, valor informado inválido',mtError,[mbOk],0);
     end;
     desconto := consumo * 0.20;
     strgrInfo.Cells[1,i] := FormatFloat('###,##0.00', consumo);
     strgrInfo.Cells[2,i] := FormatFloat('###,##0.00', desconto);
     totalDesconto := totalDesconto + desconto;
     totalConsumo := totalConsumo + consumo;

  end;
  strgrInfo.Cells[2,11] := FormatFloat('###,##0.00', (totalConsumo - totalDesconto));

end;

end.
