unit U_frmContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Grids, DBGrids, DB,
  IBCustomDataSet;

type
  TfrmContas = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    lbl1: TLabel;
    dbedtNUMEROCONTA: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    dbgrd1: TDBGrid;
    dbnvgr1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure dbedtNUMEROCONTAKeyPress(Sender: TObject; var Key: Char);
    procedure pgc1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContas: TfrmContas;

implementation

uses U_dmPrincipal;

{$R *.dfm}

procedure TfrmContas.FormCreate(Sender: TObject);
begin
try
  if not Assigned(dmModulo) then
    dmModulo := TdmModulo.Create(self);
    //
    dmModulo.IBDataSetConta.Open;
    dmModulo.IBDataSetConsultaLancamento.Open;
    pgc1.ActivePage := ts1;
except
    dmModulo.Free;
    dmModulo:= nil;
end;
end;

procedure TfrmContas.dbedtNUMEROCONTAKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (Key in ['0'..'9',#8]) then
  begin
    Key:= #0;
    ShowMessage('Digite apenas números');
  end;


end;

procedure TfrmContas.pgc1Change(Sender: TObject);
begin
if pgc1.ActivePage = ts2 then
begin
try
  StrToInt(dbedtNUMEROCONTA.Text);

  with dmModulo.IBDataSetConsultaLancamento do
  begin
   Close;
   ParamByName('CONTA').AsInteger:= StrToInt(dbedtNUMEROCONTA.Text);
   Prepare;
   Open;
  end;
except
  MessageDlg('Selecione uma conta para visualizar o lançamento',mtWarning,[mbOK],0);
  pgc1.ActivePage := ts1;
end;

end;
end;

procedure TfrmContas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
end;

end.
