unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uspQuery, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait;

type
  TfTarefa1 = class(TForm)
    lColunas: TLabel;
    lTabelas: TLabel;
    lCondicoes: TLabel;
    mColunas: TMemo;
    mCondicoes: TMemo;
    mTabelas: TMemo;
    btGeraSql: TButton;
    lSqlGerado: TLabel;
    mSqlGerado: TMemo;
    spQuery1: TspQuery;
    coneccao: TFDConnection;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btGeraSqlClick(Sender: TObject);
  private

  public
    function criaSQL(string1, string2, string3 : String): String;
  end;

var
  fTarefa1: TfTarefa1;

implementation

{$R *.dfm}

function TfTarefa1.criaSQL(string1, string2, string3 : String): String;
begin
  spQuery1.spColunas.Add(string1); // Salva os Valores nas Propriedades
  spQuery1.spTabelas.Add(string2);
  spQuery1.spCondicoes.Add(string3);

  Result := spQuery1.GeraSQL; // Executa o método GeraSQL do Componente TsqQuery
end;

procedure TfTarefa1.btGeraSqlClick(Sender: TObject);
begin
  if mTabelas.lines.Count > 1 then // Tratamento de exceção
  begin // Se Possuir Mais de Uma Tabela Emite Erro
    MessageDlg('ERRO! È permitido informar apenas uma tabela para geração do SQL!', mtError, [mbOk], 0);
  end else
  begin
    mSqlGerado.Lines.Add(criaSQL(mColunas.Text, mTabelas.Text, mCondicoes.Text)); // Chama função de Gerar SQL
  end;
end;

procedure TfTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin // Limpa Memória
  Action := caFree;
  fTarefa1 := nil;
end;

end.
