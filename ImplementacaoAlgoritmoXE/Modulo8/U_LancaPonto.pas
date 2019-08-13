unit U_LancaPonto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmLancaPonto = class(TForm)
    pnlLancamento: TPanel;
    lbl1: TLabel;
    edtJogador: TEdit;
    procedure edtJogadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLancaPonto: TfrmLancaPonto;

implementation

uses U_Problema4;

{$R *.dfm}

procedure TfrmLancaPonto.edtJogadorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  nJogador, nJogador1, nJogador2 : Integer;
begin
   if (Key = VK_RETURN) then
   begin
     try
       nJogador := StrToInt(edtJogador.Text);
     except
       MessageDlg('Valor informado para o jogador inválido', mtError,[mbOk],0);
       Abort;
     end;
     //
     if(nJogador <1) and (nJogador >2) then
      MessageDlg('Atenção apenas números número 1 e 2 são aceitos', mtWarning,[mbOk],0)
     else if (nJogador = 1) then
      frmPingPong.pnlJogador1.Caption:= IntToStr(StrToInt(frmPingPong.pnlJogador1.Caption)+1)
     else
      frmPingPong.pnlJogador2.Caption:= IntToStr(StrToInt(frmPingPong.pnlJogador2.Caption)+1);
     //
     nJogador1 := StrToInt(frmPingPong.pnlJogador1.Caption);
     nJogador2 := StrToInt(frmPingPong.pnlJogador2.Caption);
     //
     if(nJogador1 >= frmPingPong.nQuantidade) and ((nJogador1 - nJogador2)>= 2)then
      frmPingPong.pnlJogador1.Tag :=1
     else if (nJogador2 >= frmPingPong.nQuantidade) and ((nJogador2 - nJogador1) >= 2) then
           frmPingPong.pnlJogador2.Tag := 1;
     //
     edtJogador.Clear;
     frmLancaPonto.Close;
   end;
end;

end.
