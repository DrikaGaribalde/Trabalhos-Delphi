unit U_Problema1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask;

type
  TfrmDiaDaSemana = class(TForm)
    msk1: TMaskEdit;
    btnVerifica: TBitBtn;
    lbl1: TLabel;
    btnSair: TBitBtn;
    procedure btnSairClick(Sender: TObject);
    procedure btnVerificaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDiaDaSemana: TfrmDiaDaSemana;

implementation

{$R *.dfm}

procedure TfrmDiaDaSemana.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmDiaDaSemana.btnVerificaClick(Sender: TObject);
var
  DiaExtenso : array[1..7] of string;
  DiaNumero  : Integer;
begin
  DiaExtenso[1] := 'Domingo';
  DiaExtenso[2] := 'Segunda-feira';
  DiaExtenso[3] := 'Terça-feira';
  DiaExtenso[4] := 'Quarta-feira';
  DiaExtenso[5] := 'Quinta-feira';
  DiaExtenso[6] := 'Sexta-feira';
  DiaExtenso[7] := 'Sábado';
  //
  DiaNumero := DayOfWeek(StrToDate(msk1.Text));
 //ShowMessage(IntToStr(DiaNumero));
  lbl1.Caption := diaextenso[dianumero];
  lbl1.Visible := True;

end;

end.
