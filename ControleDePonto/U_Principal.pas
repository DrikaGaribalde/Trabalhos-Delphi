unit U_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB;

type
  TfrmPrincipal = class(TForm)
    pnl1: TPanel;
    btnRegistrarPonto: TButton;
    btnConsultaHoras: TButton;
    btnRelatorioPonto: TButton;
    btnConfiguracoes: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnRegistrarPontoClick(Sender: TObject);
    procedure btnConsultaHorasClick(Sender: TObject);
    procedure btnRelatorioPontoClick(Sender: TObject);
    procedure btnConfiguracoesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses U_dmPrincipal, U_RegistroPonto, U_frmConsulta, U_frmRelatorioPonto,
  U_frmConfiguracao;

{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  if not Assigned(dmPrincipal)then
    dmPrincipal := TdmPrincipal.Create(Self);
end;

procedure TfrmPrincipal.btnRegistrarPontoClick(Sender: TObject);
begin
  try
    frmRegistroPonto := TfrmRegistroPonto.Create(self);
    frmRegistroPonto.ShowModal;
  except
    frmRegistroPonto.Free;
    frmRegistroPonto := nil;
  end;
end;

procedure TfrmPrincipal.btnConsultaHorasClick(Sender: TObject);
begin
  try
    frmConsulta := TfrmConsulta.Create(self);
    frmConsulta.ShowModal;
  except
    frmConsulta.Free;
    frmConsulta := nil;
  end;
end;

procedure TfrmPrincipal.btnRelatorioPontoClick(Sender: TObject);
begin
  try
    frmRelatorioPonto := TfrmRelatorioPonto.Create(Self);
    frmRelatorioPonto.ShowModal;
  except
    frmRelatorioPonto.Free;
    frmRelatorioPonto := nil;
  end;
end;

procedure TfrmPrincipal.btnConfiguracoesClick(Sender: TObject);
begin
  try
    frmConfiguracao := TfrmConfiguracao.Create(Self);
    frmConfiguracao.ShowModal;
  except
    frmConfiguracao.Free;
    frmConfiguracao := nil;
  end;  
end;

end.
