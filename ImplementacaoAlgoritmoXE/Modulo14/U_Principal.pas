unit U_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ComCtrls, ToolWin, ActnMan, ActnCtrls, ActnMenus,
  XPStyleActnCtrls, ImgList;

type
  TfrmPrincipal = class(TForm)
    ilFiguras: TImageList;
    actmgr1: TActionManager;
    actmmb1: TActionMainMenuBar;
    tlb1: TToolBar;
    actLancamentos: TAction;
    actExtrato: TAction;
    actTipoOperacoes: TAction;
    actContas: TAction;
    btnLancamentos: TToolButton;
    btn2: TToolButton;
    btnExtrato: TToolButton;
    procedure actContasExecute(Sender: TObject);
    procedure actTipoOperacoesExecute(Sender: TObject);
    procedure actLancamentosExecute(Sender: TObject);
    procedure actExtratoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses U_frmContas, U_frmExtrato, U_frmLancamento, U_frmTipoOperacoes,
  U_dmPrincipal;

{$R *.dfm}

procedure TfrmPrincipal.actContasExecute(Sender: TObject);
begin
try
  frmContas := TfrmContas.Create(Self);
  frmContas.ShowModal;
except
  frmContas.Free;
  frmContas := nil;
end;
end;

procedure TfrmPrincipal.actTipoOperacoesExecute(Sender: TObject);
begin
try
  frmTipoOperacoes := TfrmTipoOperacoes.Create(Self);
  frmTipoOperacoes.ShowModal;
except
  frmTipoOperacoes.Free;
  frmTipoOperacoes:=nil;
end;
end;

procedure TfrmPrincipal.actLancamentosExecute(Sender: TObject);
begin
try
  frmLancamento := TfrmLancamento.Create(Self);
  frmLancamento.ShowModal;
except
  frmLancamento.Free;
  frmLancamento := nil;
end;
end;

procedure TfrmPrincipal.actExtratoExecute(Sender: TObject);
begin
  try
    frmExtrato := TfrmExtrato.Create(Self);
    frmExtrato.ShowModal;
  except
    frmExtrato.Free;
    frmExtrato:= nil;
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
 if not Assigned(dmModulo) then
  dmModulo := TdmModulo.Create(Self);
end;

procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  //
end;

procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
  dmModulo.Free;
  dmModulo:= nil;
end;

end.
