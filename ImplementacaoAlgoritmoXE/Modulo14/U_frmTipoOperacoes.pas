unit U_frmTipoOperacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  TfrmTipoOperacoes = class(TForm)
    grpTipoOperacao: TGroupBox;
    lbl1: TLabel;
    dbedtCODIGOTIPOOPER: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    dbrgrpTIPO: TDBRadioGroup;
    dbnvgr1: TDBNavigator;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoOperacoes: TfrmTipoOperacoes;

implementation

uses U_dmPrincipal;

{$R *.dfm}

procedure TfrmTipoOperacoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TfrmTipoOperacoes.FormCreate(Sender: TObject);
begin
  try
    if not Assigned(dmModulo) then
      dmModulo := TdmModulo.Create(Self);
      //
      dmModulo.IBDataSetTipos.Open;
  except
      dmModulo.Free;
      dmModulo := nil;
  end;  
end;

end.
