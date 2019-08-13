unit U_Relatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, FMTBcd, DB, SqlExpr;

type
  TfrmRelatorio = class(TForm)
    qckrp1: TQuickRep;
    qrlbl1: TQRLabel;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    qrbndDetailBand1: TQRBand;
    qrdbtxtENTRADA: TQRDBText;
    qrdbtxtRETORNO_ALMOCO: TQRDBText;
    qrlbl6: TQRLabel;
    qrsysdt1: TQRSysData;
    qrlbl7: TQRLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorio: TfrmRelatorio;

implementation

uses U_dmPrincipal;

{$R *.dfm}

procedure TfrmRelatorio.FormCreate(Sender: TObject);
begin
  if not Assigned(dmPrincipal) then
    dmPrincipal:= TdmPrincipal.Create(Self);
end;

end.
