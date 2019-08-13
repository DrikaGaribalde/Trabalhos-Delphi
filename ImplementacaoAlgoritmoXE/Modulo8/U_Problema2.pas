unit U_Problema2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    mmoNumero: TMemo;
    pnlResultado: TPanel;
    procedure btn1Click(Sender: TObject);
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
  i: Integer;
  nNumero, nMedia : Extended;
begin
  nMedia:=0;
  mmoNumero.Lines.Clear;
  mmoNumero.Lines.Add('');
  //
  for i:=1 to 3 do
  begin
    try
      nNumero := StrToFloat(InputBox('Digite o valor: ' + IntToStr(i)+
                            ', dos 3 a serem informados','Valor: ', '0'));
    except
      nNumero:=0;
      MessageDlg('Atenção, o número informado é inválido', mtError,[mbOk],0);
    end;
    //
    nMedia := nMedia + nNumero;
    mmoNumero.Lines[0] := mmoNumero.Lines[0]+ ' ' + FloatToStr(nNumero);
  end;
  //
  pnlResultado.Caption:= FormatFloat('###,##0.00',(nMedia/3));

end;

end.
