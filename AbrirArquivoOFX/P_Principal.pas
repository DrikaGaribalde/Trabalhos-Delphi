unit P_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, YMOFXReader_2, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ListBox1: TListBox;
    StringGrid1: TStringGrid;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  YMOFXReader1: TYMOFXReader;
  i:integer;
  total : double;
begin
  YMOFXReader1:= TYMOFXReader.create(self);
  YMOFXReader1.OFXFile := 'D:\Delphi\TrabalhoAlterdata\Bradesco.ofx';
  YMOFXReader1.Process;
  ListBox1.Clear;
  for i := 0 to YMOFXReader1.Count-1 do
  begin
    ListBox1.Items.Add(
                       inttostr(i) + ' ' +
                       YMOFXReader1.Get(i).Desc + ' ' +
                       FloatToStr(YMOFXReader1.Get(i).Value) + ' ' +
                       YMOFXReader1.Get(i).MovType + ' ' +
                       dateToStr(YMOFXReader1.Get(i).MovDate) + ' ' +
                       YMOFXReader1.Get(i).ID + ' ' +
                       YMOFXReader1.Get(i).Document + ' ');
  end;
  //teste
  total := 0;
  for i := 0 to YMOFXReader1.Count-1 do

  begin
        StringGrid1.RowCount := StringGrid1.RowCount +1;

        StringGrid1.Cells[0,0] := 'Data';
        StringGrid1.Cells[0,i+1] := dateToStr(YMOFXReader1.Get(i).MovDate);
        StringGrid1.Cells[1,0] := 'Descri��o';
        StringGrid1.Cells[1,i+1] := YMOFXReader1.Get(i).Desc;
        StringGrid1.Cells[2,0] := 'Valor';
        StringGrid1.Cells[2,i+1] := 'R$ '+ FormatFloat('##0.00',YMOFXReader1.Get(i).Value);

        StringGrid1.Cells[3,0] := 'Data';
        StringGrid1.Cells[3,i+1]:= IntToStr(i);
        total := total + (YMOFXReader1.Get(i).Value);
  end;
   edit1.Text :=  FormatFloat('##0.00',total);
end;
end.
