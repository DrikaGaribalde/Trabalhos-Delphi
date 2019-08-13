unit U_Problema2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmNumerosPares = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edtNumero: TEdit;
    grpNumeroPares: TGroupBox;
    btnAceita: TButton;
    btnPares: TButton;
    lstPares: TListBox;
    procedure edtNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnAceitaClick(Sender: TObject);
    procedure btnParesClick(Sender: TObject);
  
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNumerosPares: TfrmNumerosPares;
  QtdeNumeros : Integer;
  Numeros: array[1..10] of Integer;


implementation

{$R *.dfm}

procedure TfrmNumerosPares.edtNumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
if not(Key in ['0'..'9',#8]) then
begin
  MessageDlg('Caracter inválido',mtError,[mbOK],0);
  Key:= #0;
end;
end;

procedure TfrmNumerosPares.FormCreate(Sender: TObject);
begin
QtdeNumeros := 0;
end;

procedure TfrmNumerosPares.btnAceitaClick(Sender: TObject);

begin
if Length(Trim(edtNumero.Text)) = 0 then
begin
  MessageDlg('Digite um número inteiro e positivo',mtError,[mbOK],0);
  edtNumero.SetFocus;
  Abort;
end;
inc(QtdeNumeros);
Numeros[QtdeNumeros]:= StrToInt(edtNumero.Text);
edtNumero.SetFocus;
if QtdeNumeros = 10 then
begin
  MessageDlg('Quantidade concluída', mtInformation,[mbOK],0);
  edtNumero.Enabled := False;
  btnAceita.Enabled := False;
  btnPares.Enabled  := True;
end;
edtNumero.Text := #0;
end;

procedure TfrmNumerosPares.btnParesClick(Sender: TObject);
var
  i : Integer;
begin
for i:= 1 to QtdeNumeros do
begin
  if (Numeros[i] mod 2 = 0) then
    lstPares.Items.Add(IntToStr(Numeros[i]));
end;
end;

end.
