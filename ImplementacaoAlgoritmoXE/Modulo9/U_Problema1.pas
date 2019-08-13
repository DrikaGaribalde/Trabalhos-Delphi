unit U_Problema1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lblDiaDaSemana: TLabel;
    btnVerificar: TButton;
    btnSair: TButton;
    edtData: TEdit;
    mskData: TMaskEdit;
    procedure btnVerificarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnVerificarClick(Sender: TObject);
var
  DiaExtenso : array[1..7] of string;
  DiaSemana  : Integer;

begin
  //Inicializa o array com nomes dos dias da semana
    DiaExtenso[1] := 'Domingo';
    DiaExtenso[2] := 'Segunda-feira';
    DiaExtenso[3] := 'Terça-feira';
    DiaExtenso[4] := 'Quarta-feira';
    DiaExtenso[5] := 'Quinta-feira';
    DiaExtenso[6] := 'Sexta-feira';
    DiaExtenso[7] := 'Sábado';


  //Retorna o número da semana atual;
    DiaSemana := DayOfWeek(StrToDate(mskData.Text));
    lblDiaDaSemana.Caption := DiaExtenso[DiaSemana];
    lblDiaDaSemana.Visible := True;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
mskData.SetFocus;
end;

procedure TForm1.btnSairClick(Sender: TObject);
begin
Close;
end;

end.
