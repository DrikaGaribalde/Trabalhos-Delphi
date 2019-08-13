unit U_exemplo3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DateUtils;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edtNascimento: TEdit;
    edtNiver: TEdit;
    edtIdade: TEdit;
    btnCalcular: TButton;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function verificaData(dataN: Tdate) : integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
var
  anoA,mesA,diaA,anoN,mesN,diaN : Word;
  dataN,dateA : TDate;
begin
//  03/02/1976
//edtIdade.Text:= IntToStr(StrToInt(edtNiver.Text) - StrToInt(edtNascimento.Text));
   dataN := StrToDate(edtNascimento.Text);
   edtIdade.Text := IntToStr(verificaData(dataN));

end;

function TForm1.verificaData(dataN: Tdate): integer;
  var
  anoA,mesA,diaA,anoN,mesN,diaN : Word;
begin
   DecodeDate(dataN, anoN,mesN,diaN);
   DecodeDate(Date,anoA,mesA,diaA);
   Result := anoA - anoN;
end;

end.
