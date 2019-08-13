unit U_exemplo6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    lbl4: TLabel;
    btnOrdenar: TButton;
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    rgOpcao: TRadioGroup;
    procedure btnOrdenarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnOrdenarClick(Sender: TObject);
var Primeiro,Segundo,Terceiro,Auxiliar : Extended;
begin
  try
    Primeiro:= StrToFloat(edt1.Text);
  except
    MessageDlg('Atenção, o primeiro valor informado não é um número real', mtError,[mbOk],0);
    Abort;
  end;

  try
    Segundo:= StrToFloat(edt2.Text);
  except
    MessageDlg('Atenção, o segundo valor informado não é um número real',mtError,[mbOk],0);
    Abort;
  end;

  try
    Terceiro:= StrToFloat(edt3.Text);
  except
    MessageDlg('Atenção, o terceiro valor informado não é um número real', mtError,[mbOk],0);
  end;

  case rgOpcao.ItemIndex of
    0:
    begin
      lbl4.Caption:= 'Ordenação Crescente';
      if(Primeiro > Segundo)then
      begin
        Auxiliar:= Primeiro;
        Primeiro:= Segundo;
        Segundo:= Auxiliar;
      end;
      if(Primeiro > Terceiro)then
      begin
        Auxiliar := Primeiro;
        Primeiro := Terceiro;
        Terceiro := Auxiliar;
      end;
      if(Segundo > Terceiro)then
      begin
        Auxiliar:= Segundo;
        Segundo := Terceiro;
        Terceiro:= Auxiliar;
      end;
    end;

    1:
    begin
      lbl4.Caption:='Ordenação Decrescente';
      if (Primeiro < Segundo)then
      begin
        Auxiliar:= Primeiro;
        Primeiro:= Segundo;
        Segundo:= Auxiliar;
      end;
      if(Primeiro < Terceiro)then
      begin
        Auxiliar:= Primeiro;
        Primeiro:= Terceiro;
        Terceiro:= Auxiliar;
      end;
      if(Segundo < Terceiro)then
      begin
        Auxiliar:= Segundo;
        Segundo:= Terceiro;
        Terceiro:= Auxiliar;
      end;
    end;
    else
    begin
      lbl4.Caption:= 'Maior número entre os outros';
      if(Primeiro > Segundo)then
      begin
        Auxiliar:= Primeiro;
        Primeiro := Segundo;
        Segundo := Auxiliar;
      end;
      if(Segundo < Terceiro)then
      begin
        Auxiliar:= Segundo;
        Segundo:= Terceiro;
        Terceiro:= Auxiliar;
      end;
    end;
  end;
  pnl1.Caption := FloatToStr(Primeiro);
  pnl2.Caption := FloatToStr(Segundo);
  pnl3.Caption := FloatToStr(Terceiro);

end;

end.
