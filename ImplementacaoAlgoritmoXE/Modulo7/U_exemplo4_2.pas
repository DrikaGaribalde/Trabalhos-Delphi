unit U_exemplo4_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls;

type
  TfrmEleitor = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    ud1: TUpDown;
    TrackBar1: TTrackBar;
    pnlNao: TPanel;
    pnlFacultativo: TPanel;
    pnlAtivo: TPanel;
    procedure edt1Enter(Sender: TObject);
    procedure edt1Exit(Sender: TObject);
    procedure ud1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edt1Change(Sender: TObject);
    procedure ud1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEleitor: TfrmEleitor;
  Origem:Integer;

implementation

{$R *.dfm}

procedure TfrmEleitor.edt1Enter(Sender: TObject);
begin
  Origem:= 0;
end;

procedure TfrmEleitor.edt1Exit(Sender: TObject);
begin
  Origem:=1;
end;

procedure TfrmEleitor.ud1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Origem:=0;
end;

procedure TfrmEleitor.edt1Change(Sender: TObject);
begin
  try
     ud1.Position := StrToInt(edt1.Text);
  except
      edt1.Text := '0';
  end;
end;

procedure TfrmEleitor.ud1Changing(Sender: TObject;
  var AllowChange: Boolean);
var nIdade: Integer;
begin
  nIdade:= StrToInt(edt1.Text);
  if(Origem <>1) then
  TrackBar1.Position := StrToInt(edt1.Text) div 2;
  //
  if(nIdade < 16) then
  begin
    pnlNao.Visible:= True;
    pnlNao.Caption:= 'Você ainda não pode votar';
  end
  else if (nIdade <18) then
  begin
    pnlFacultativo.Visible:= True;
    pnlFacultativo.Caption:= 'Você já pode votar';
    pnlNao.Visible:= False;
  end
  else if (nIdade < 70) then
  begin
    pnlAtivo.Visible := True;
    pnlAtivo.Caption:= 'Você tem que votar';
    pnlFacultativo.Visible:= False;
  end;



end;

procedure TfrmEleitor.FormCreate(Sender: TObject);
begin
pnlNao.Visible:= False;
pnlFacultativo.Visible := False;
pnlAtivo.Visible:= False;
end;

end.
