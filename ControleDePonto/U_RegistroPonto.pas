unit U_RegistroPonto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Mask,DateUtils,U_dmPrincipal;

type
  TfrmRegistroPonto = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    dtpMarcacao: TDateTimePicker;
    grp1: TGroupBox;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    btnGravar: TButton;
    btnCancelar: TButton;
    mskEntrada: TMaskEdit;
    mskSaidaAlmoco: TMaskEdit;
    mskRetornoAlmoco: TMaskEdit;
    mskSaida: TMaskEdit;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Verifica;
    procedure VerificaVazio;

  end;

var
  frmRegistroPonto: TfrmRegistroPonto;
 
implementation

{$R *.dfm}

procedure TfrmRegistroPonto.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRegistroPonto.btnGravarClick(Sender: TObject);
 var
    h,m,s,ss : Word;
    valor1, valor2,valor3, valor4,resultado : TDateTime;
    total_minutos, hora_extra, atraso : Integer;
begin
  if (dtpMarcacao.Date) > Date then
    ShowMessage('Data selecionada � maior que a data atual')
  else
  begin
    VerificaVazio;
    Verifica;
    if dmPrincipal.cds1.Locate('data_ponto',datetostr(dtpMarcacao.Date),[]) then
       ShowMessage('Essa data j� foi cadastrada')
    else
    begin
      with dmPrincipal.cds1 do
      begin
        Open;
        Append;
        FieldByName('id_funcionario').AsInteger := 1;
        FieldByName('data_ponto').AsDateTime :=  dtpMarcacao.Date;
        FieldByName('entrada').AsString := mskEntrada.Text;
        FieldByName('saida_almoco').AsString := mskSaidaAlmoco.Text;
        FieldByName('retorno_almoco').AsString := mskRetornoAlmoco.Text;
        FieldByName('saida').AsString := mskSaida.Text;

        // ------------------------------------------------------------
        valor1 := StrToTime(mskEntrada.Text);
        valor2:= StrToTime(mskSaidaAlmoco.Text);
        valor3:= StrToTime(mskRetornoAlmoco.Text);
        valor4:= StrToTime(mskSaida.Text);
        resultado := ((valor2 - valor1) + (valor4 - valor3));

        DecodeTime(resultado,h,m,s,ss);
        total_minutos := (h * 60) + m;

        if (total_minutos > 480) then
        begin
          hora_extra := total_minutos - 480;
        end
        else
        begin
          atraso := 480 - total_minutos;
        end;
        //
        FieldByName('hora_extra').AsInteger := hora_extra;
        FieldByName('atraso').AsInteger := atraso;
        // ------------------------------------------------------------
        Post;
        if dmPrincipal.cds1.ApplyUpdates(0) <> 0 then
          dmPrincipal.cds1.CancelUpdates
        else
          ShowMessage('Funcion�rio salvo com sucesso!');
      end;
    end;
  end;

end;

procedure TfrmRegistroPonto.Verifica;
var
  entrada, saidaAlmoco, retornoAlmoco, saida : string;
  entrada1, saidaAlmoco1, retornoAlmoco1, saida1 : string;
begin
  entrada       := Copy(mskEntrada.Text,1,2);
  saidaAlmoco   := Copy(mskSaidaAlmoco.Text,1,2);
  retornoAlmoco := Copy(mskRetornoAlmoco.Text,1,2);
  saida         := Copy(mskSaida.Text,1,2);

  entrada1      := Copy(mskEntrada.Text,4,2);
  saidaAlmoco1  := Copy(mskEntrada.Text,4,2);
  retornoAlmoco1:= Copy(mskEntrada.Text,4,2);
  saida1        := Copy(mskEntrada.Text,4,2);
  //

  //
   if ((StrToInt(entrada) < 6) or (StrToInt(entrada) >23) or (StrToInt(entrada1) > 59 )) then
    begin
      ShowMessage('Hor�rio da entrada inv�lido');
      mskEntrada.SetFocus;
      Abort;
    end
    else if ((StrToInt(saidaAlmoco) < 6) or (StrToInt(saidaAlmoco) >23) or (StrToInt(saidaAlmoco1) > 59 )) then
    begin
      ShowMessage('Hor�rio da sa�da para o almo�o inv�lido');
      mskSaidaAlmoco.SetFocus;
      Abort;
    end
    else if ((StrToInt(retornoAlmoco) < 6) or (StrToInt(retornoAlmoco) >23) or (StrToInt(retornoAlmoco1) > 59 )) then
    begin
      ShowMessage('Hor�rio do retorno do almo�o inv�lido');
      mskRetornoAlmoco.SetFocus;
      Abort;
    end
    else if ((StrToInt(saida) < 6) or (StrToInt(saida) >23) or (StrToInt(saida1) > 59 )) then
    begin
      ShowMessage('Hor�rio de sa�da inv�lido');
      mskSaida.SetFocus;
      Abort;
    end
    else  if (entrada > saidaAlmoco) or (saidaAlmoco > retornoAlmoco) or (retornoAlmoco > saida) then
    begin
      ShowMessage('As horas n�o s�o compat�veis ou a entrada ou sa�da');
      Abort;
    end;
end;

procedure TfrmRegistroPonto.VerificaVazio;
begin
  if (mskEntrada.Text = '  :  ') then
  begin
    ShowMessage('Preencha o campo entrada');
    mskEntrada.SetFocus;
    Abort;
  end
  else if (mskSaidaAlmoco.Text = '  :  ')then
  begin
    ShowMessage('Preencha o campo Sa�da Almo�o');
    mskSaidaAlmoco.SetFocus;
    Abort;
  end
  else if (mskRetornoAlmoco.Text = '  :  ')then
  begin
    ShowMessage('Preencha o campo Retorno Almo�o');
    mskRetornoAlmoco.SetFocus;
    Abort;
  end
  else if (mskSaida.Text = '  :  ')then
  begin
    ShowMessage('Preencha o campo Sa�da ');
    mskSaida.SetFocus;
    Abort;
  end;
end;

procedure TfrmRegistroPonto.FormCreate(Sender: TObject);
begin
  if not Assigned(dmPrincipal) then
    dmPrincipal.Create(Self);
    //
    dmPrincipal.cds1.Open;
    dtpMarcacao.Date := Date;
end;

end.
