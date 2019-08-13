unit U_Problema4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmPingPong = class(TForm)
    btn1: TButton;
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    lbl1: TLabel;
    lbl3: TLabel;
    pnlJogador1: TPanel;
    pnlJogador2: TPanel;
    pnlLancamento: TPanel;
    lbl2: TLabel;
    edtQuantidade: TEdit;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nQuantidade : Integer;
  end;

var
  frmPingPong: TfrmPingPong;

implementation
uses U_LancaPonto;

{$R *.dfm}


procedure TfrmPingPong.btn1Click(Sender: TObject);

begin
  if ((pnlJogador1.Tag =0) and (pnlJogador2.Tag = 0))then
  begin
    try
      nQuantidade := StrToInt(edtQuantidade.Text);
    except
      MessageDlg('Atenção, valor informado inválido', mtError,[mbOk],0);
      Abort;
    end;
    //
    if (nQuantidade <5) or (nQuantidade >21) then
    begin
      MessageDlg('A quantidade de pontos está fora dos limites', mtWarning,[mbOk],0);
      Abort;
    end;
    //
    frmLancaPonto:= TfrmLancaPonto.Create(Self);
    while ((pnlJogador1.Tag=0) and (pnlJogador2.Tag=0))do
    frmLancaPonto.ShowModal;
    frmLancaPonto.Free;
    //
    if (pnlJogador1.Tag=1) then
    begin
      pnlJogador1.Color:= clBlue;
      pnlJogador1.Font.Color:= clYellow;
    end
    else
    begin
      pnlJogador2.Color := clBlue;
      pnlJogador2.Font.Color := clYellow;
    end;
  end //****
  else
  begin
    if (pnlJogador1.Tag =1) then
    begin
      pnlJogador1.Color:= $00ccffff;
      pnlJogador1.Font.Color := clWindowText;
      pnlJogador1.Tag := 0;
    end
    else
    begin
      pnlJogador2.Color:= $00ccffff;
      pnlJogador2.Font.Color := clWindowText;
      pnlJogador2.Tag:= 0;
    end;
    btn1.Caption:= 'Iniciar Jogo';
    pnlJogador1.Caption:= '';
    pnlJogador2.Caption:= '';
  end;
end;

end.
