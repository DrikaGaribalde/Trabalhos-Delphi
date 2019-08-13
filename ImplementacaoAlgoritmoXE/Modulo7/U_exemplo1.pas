unit U_exemplo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    edtIdade: TEdit;
    lbl2: TLabel;
    lblCategoria: TLabel;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure edtIdadeChange(Sender: TObject);
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
var nIdade : Integer;
begin
  nIdade := StrToInt(edtIdade.Text);
  if (nIdade < 5) then
    begin
      MessageDlg('Idade inferior a 5 anos', mtError, [mbOK],0);
      Abort;
    end
  else if (nIdade <=7) then
    lblCategoria.Caption := 'Infantil A'
  else if (nIdade <=10) then
    lblCategoria.Caption := 'Infantil B'
  else if (nIdade<=13) then
    lblCategoria.Caption := 'Juvenil A'
  else if (nIdade<=17) then
    lblCategoria.Caption := 'Juvenil B'
  else
    lblCategoria.Caption := 'Adulto';
  //
    lblCategoria.Visible := True;

end;

procedure TForm1.edtIdadeChange(Sender: TObject);
begin
//  if (lblCategoria.Visible) then
//    lblCategoria.Visible := True;
end;

end.
