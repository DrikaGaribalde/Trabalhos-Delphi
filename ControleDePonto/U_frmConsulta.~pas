unit U_frmConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBCtrls, StdCtrls, ExtCtrls, Mask, ComCtrls, Grids, DBGrids;

type
  TfrmConsulta = class(TForm)
    dts1: TDataSource;
    grp1: TGroupBox;
    dbtxtNOME_FUNCIONARIO: TDBText;
    dbtxtFUNCAO_FUNCIONARIO: TDBText;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    dtpReferencia: TDateTimePicker;
    btnConsultar: TButton;
    dbgrd1: TDBGrid;
    dts2: TDataSource;
    lbl4: TLabel;
    dts3: TDataSource;
    lbl5: TLabel;
    lbl6: TLabel;
    dbedtHORAEXTRA: TDBEdit;
    dbedtHORAEXTRA1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmConsulta: TfrmConsulta;
   _sql : string;

implementation

uses U_dmPrincipal;

{$R *.dfm}

procedure TfrmConsulta.FormCreate(Sender: TObject);
begin
  if not Assigned(dmPrincipal) then
    dmPrincipal.Create(Self);
  //
  dmPrincipal.sdsPesq.Open;
  dmPrincipal.sdsSoma.Open;
  dtpReferencia.Format:= 'MM/yyyy';
  dtpReferencia.Date := Date;
  //

end;

procedure TfrmConsulta.btnConsultarClick(Sender: TObject);
var
  data,mes : string;
begin
  data := DateToStr(dtpReferencia.Date);
  mes := Copy(data,4,2);
  with dmPrincipal.cdsPesq do
  begin
    Close;
    FetchParams;
    Params.ParamByName('mes').AsString := mes;
    Open;
  end;
  with dmPrincipal.cdsSoma do
  begin
    Close;
    FetchParams;
    Params.ParamByName('mes').AsString := mes;
    Open;
  end;
  if dmPrincipal.cdsPesq.IsEmpty then
    MessageDlg('Não há registros cadastrados para esse mês',mtInformation,[mbok],0);

end;

procedure TfrmConsulta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmPrincipal.cdsPesq.Close;
end;

end.
