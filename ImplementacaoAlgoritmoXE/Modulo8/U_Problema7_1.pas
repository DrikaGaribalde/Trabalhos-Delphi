unit U_Problema7_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmLancaValores = class(TForm)
    lbl1: TLabel;
    edtPares: TEdit;
    btnConfirmar: TButton;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   nQuantidade : Integer;
  end;

var
  frmLancaValores: TfrmLancaValores;

implementation

{$R *.dfm}

procedure TfrmLancaValores.btnConfirmarClick(Sender: TObject);
begin
  try
    nQuantidade := StrToInt(edtPares.Text);
  except
    MessageDlg('Aviso, valor informado como quantidade n�o � v�lido', mtError,[mbOk],0);
    Abort;
  end;
  //
  if (nQuantidade <0) then
  begin
    MessageDlg('N�o s�o aceitas quantidades negativas', mtWarning,[mbOk],0);
    Abort;
  end;
  Close;
end;

procedure TfrmLancaValores.FormShow(Sender: TObject);
begin
  edtPares.SetFocus;
end;

end.
