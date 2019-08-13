unit Problema1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    edtFatorial: TEdit;
    btnCalcular: TButton;
    pnlFatorial: TPanel;
    mmo1: TMemo;
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
var
    nNumero, nFatorial,i: Integer;
begin
  try
    nNumero := StrToInt(edtFatorial.text);
  except
    begin
    MessageDlg('Aten��o, o n�mero informado � inv�lido', mtError,[mbOk],0);
    Abort;
    end;
  end;
  //
  if(nNumero <0) then
    begin
      MessageDlg('Apenas n�meros positivos s�o aceitos', mtError,[mbOK],0);
      Abort;
    end;
  //
  nFatorial := 1;
  for i:= 2 to nNumero do
    begin
    nFatorial:= nFatorial * i;
    mmo1.Lines.Add( IntToStr(i)) ;
    mmo1.Lines.Add( '*') ;
    end;

    pnlFatorial.Caption := IntToStr(nFatorial);
end;
end.
