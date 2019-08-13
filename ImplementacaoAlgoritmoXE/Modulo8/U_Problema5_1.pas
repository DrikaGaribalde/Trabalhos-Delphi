unit U_Problema5_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmLancaSalario = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edtCodigo: TEdit;
    edtSalario: TEdit;
    edt3: TEdit;
    btnConfirma: TBitBtn;
    procedure btnConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nSalario : Extended;
  end;

var
  frmLancaSalario: TfrmLancaSalario;

implementation

{$R *.dfm}

procedure TfrmLancaSalario.btnConfirmaClick(Sender: TObject);
begin
try
  nSalario:= StrToFloat(edtSalario.Text);
except
  MessageDlg('Atenção, valor informado como salário é inválido', mtError,[mbOk],0);
  Abort;
end;
//
if (Length(edtCodigo.Text)=0) then
  begin
    MessageDlg('Atenção, o código não deve estar em branco', mtWarning,[mbOk],0);
    //Abort;
    edtCodigo.SetFocus;
  end;
  Close;
end;

procedure TfrmLancaSalario.FormShow(Sender: TObject);
begin
  edtCodigo.SetFocus;
end;

end.
