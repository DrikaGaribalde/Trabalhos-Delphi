unit U_frmExtrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls;

type
  TfrmExtrato = class(TForm)
    grp1: TGroupBox;
    dbgEmissaoExtrato: TDBLookupComboBox;
    mskInicio: TMaskEdit;
    mskTermino: TMaskEdit;
    bvl1: TBevel;
    btn1: TBitBtn;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExtrato: TfrmExtrato;

implementation

uses U_dmPrincipal, U_dmRelatorios;

{$R *.dfm}

procedure TfrmExtrato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;

end;

procedure TfrmExtrato.FormCreate(Sender: TObject);
begin
  if not Assigned(dmModulo) then
    dmModulo:= TdmModulo.Create(self);

    dmModulo.IBDataSetConta.Open;
   ///////////////
   if not Assigned(dmRelatorios) then
    dmRelatorios := TdmRelatorios.Create(self);

    dmRelatorios.IBDataSetRelatorio.Open;
end;

procedure TfrmExtrato.btn1Click(Sender: TObject);
var dInicio, dTermino : TDateTime;
begin
  if (dbgEmissaoExtrato.KeyValue=null) then
  begin
    MessageDlg('É preciso selecionar uma conta para a emissão do extrato', mtInformation, [mbok],0);
    Abort;
  end;
  //
  try
    dInicio  := StrToDate(mskInicio.Text);
    dTermino := StrToDate(mskTermino.Text);
  except
    MessageDlg('Exite(m) erro(s) na(s) data(s) informadada(s), verifique', mtError,[mbOK],0);
    Abort;
  end;

  //A data de término não pode ser maior que a data de início
  if(dTermino < dInicio)then
  begin
    MessageDlg('A data de final deve ser superior a data inicial', mtError, [mbOK],0);
    Abort;
  end;

  //realiza a consulta atribuindo os parâmetros e chama o preview
   with dmRelatorios.IBDataSetRelatorio do
   begin
     close;
     ParamByName('conta').AsString := dbgEmissaoExtrato.KeyValue;
     ParamByName('inicio').AsDate  := StrToDate(mskInicio.Text);
     ParamByName('termino').AsDate := StrToDate(mskTermino.Text);
     Open;
   end;
   dmRelatorios.rvprjctExtrato.Open;
   dmRelatorios.rvprjctExtrato.ExecuteReport('Report2');
   dmRelatorios.rvprjctExtrato.Close;
end;

end.
