unit U_frmLancamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls;

type
  TfrmLancamento = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    dbedtNUMERODOCUMENT: TDBEdit;
    lbl4: TLabel;
    dbedtHISTORICO: TDBEdit;
    lbl5: TLabel;
    dbedtDATA: TDBEdit;
    lbl6: TLabel;
    dbedtVALOR: TDBEdit;
    dbnvgr1: TDBNavigator;
    dbgCONTA: TDBLookupComboBox;
    dbgCODIGOTIPOOPER: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLancamento: TfrmLancamento;

implementation

uses U_dmPrincipal;

{$R *.dfm}

procedure TfrmLancamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmLancamento.FormCreate(Sender: TObject);
begin
 try
   if not Assigned(dmModulo)then
    dmModulo := TdmModulo.Create(Self);
    //
    with dmModulo do
    begin
       IBDataSetLancamento.Open;
       IBDataSetConta.Open;
       IBDataSetTipos.Open;
    end;
 except
    dmModulo.Free;
    dmModulo:= nil;
 end;  
end;

end.
