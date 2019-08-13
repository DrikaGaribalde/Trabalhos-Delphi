unit U_frmRelatorioPonto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TfrmRelatorioPonto = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    dtpRefPonto: TDateTimePicker;
    btnVisualizar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioPonto: TfrmRelatorioPonto;

implementation

uses U_Relatorio, U_dmPrincipal, U_Relatorio1;

{$R *.dfm}

procedure TfrmRelatorioPonto.FormCreate(Sender: TObject);
begin
  if not Assigned(dmPrincipal) then
     dmPrincipal.Create(Self);
  //
  dmPrincipal.sdsRelPonto.Open;
  dtpRefPonto.Format:= 'MM/yyyy';
  dtpRefPonto.Date := Date;
end;

procedure TfrmRelatorioPonto.btnVisualizarClick(Sender: TObject);
var
  data,mes : string;
begin
  data := DateToStr(dtpRefPonto.Date);
  mes := Copy(data,4,2);
  try
    with dmPrincipal.cdsRelPonto do
    begin
      Close;
      FetchParams;
      Params.ParamByName('mes').AsString := mes;
      Open;
    end;
    frmRelatorio1 := TfrmRelatorio1.Create(self);
    frmRelatorio1.qckrp1.Preview;
  except
    frmRelatorio1.Free;
    frmRelatorio1 := nil;
  end;
end;

end.
