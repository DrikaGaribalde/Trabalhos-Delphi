unit U_Problema4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls;

type
  TfrmControle = class(TForm)
    img1: TImage;
    mm1: TMainMenu;
    LanaremEstoque1: TMenuItem;
    AlterarDados1: TMenuItem;
    Sair1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure LanaremEstoque1Click(Sender: TObject);
    procedure AlterarDados1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControle: TfrmControle;
  codigo,nome : array[0..19] of string;
  valor       : array[0..19] of Real;
  quantidade  : array[0..19] of integer;
  qtdeLancada : Integer;


implementation

uses U_Problema4_1, U_Problema4_2;

{$R *.dfm}

procedure TfrmControle.FormCreate(Sender: TObject);
begin
qtdeLancada := 0;
end;

procedure TfrmControle.LanaremEstoque1Click(Sender: TObject);
begin
  if (qtdeLancada > 19) then
  begin
    MessageDlg('Não exite espaço para novos produtos', mtWarning,[mbOK],0);
    Abort;
  end;
  frmLanca := TfrmLanca.Create(Self);
  frmLanca.ShowModal;
  frmLanca.Free;
end;

procedure TfrmControle.AlterarDados1Click(Sender: TObject);
begin
  if (qtdeLancada =0 ) then
  begin
    MessageDlg('Não existem produtos lançados', mtWarning, [mbOK],0);
    Abort;
  end;
  frmAlteraDados := TfrmAlteraDados.Create(Self);
  frmAlteraDados.ShowModal;
  frmAlteraDados.Free;
end;

procedure TfrmControle.Sair1Click(Sender: TObject);
begin
if MessageDlg('Deseja sair do sistema', mtInformation, [mbYes,mbNo],0) = mrYes then
  close;
end;

end.
