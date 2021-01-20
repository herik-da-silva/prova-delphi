unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, Vcl.StdCtrls;

type
  TfTarefa3 = class(TForm)
    lTituloTabela: TLabel;
    btTotal: TButton;
    btTotalDivisao: TButton;
    lTotal: TLabel;
    lTotalDivisao: TLabel;
    txtTotal: TEdit;
    txtTotalDivisao: TEdit;
    gridProjetos: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btTotalDivisaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btTotalClick(Sender: TObject);
  private
    cdsProjetos : TClientDataSet;
    dsProjeto: TDataSource;
  public
    total : Currency;
    function somar(valor : Currency): Currency;
    function dividir(valor1, valor2 : Currency): Currency;
    function removeZero(valor : Integer): Integer;
    procedure somarTotal();
    procedure somarTotalDivisao();
  end;

var
  fTarefa3: TfTarefa3;

implementation

{$R *.dfm}

function TfTarefa3.somar(valor : Currency): Currency;
begin
  total := total + valor;
  Result := total;
end;

function TfTarefa3.dividir(valor1, valor2 : Currency): Currency;
begin
  total := total + (valor1 / valor2);
  Result := total;
end;

function TfTarefa3.removeZero(valor : Integer): Integer;
begin
  while valor = 0 do // Se o Valor Do Random for Igual a Zero, Inícia a Repetição até o Valor ser Diferente de Zero
  begin
    valor := Random(100);
  end;
  Result := valor;
end;

procedure TfTarefa3.somarTotal();
begin
  total := 0; // Inicializa a Váriavel

  cdsProjetos.First; // Inicía ClientDataSet no Primeiro Registro
  while not cdsProjetos.Eof do // Mantem o Laço até Finalizar os Dados
  begin
    somar(cdsProjetos.FieldByName('Valor').Value); // Chama Função de Soma
    cdsProjetos.Next; // Pula para o Próximo Registro
  end;

  txtTotal.Text := FloatToSTrf(total, ffCurrency, 18, 2); // Alimenta o Edit com o Valor Total, Seguido de Duas Casas Decimais
end;

procedure TfTarefa3.somarTotalDivisao();
var
  divisor : Currency;
begin
  total := 0;

  cdsProjetos.First; // Inicía ClientDataSet no Primeiro Registro
  divisor := cdsProjetos.FieldByName('Valor').Value; // Armazena Primeiro Registro na Variável
  cdsProjetos.Next; // Pula para o Próximo Registro

  while not cdsProjetos.Eof  do
  begin
    dividir(cdsProjetos.FieldByName('Valor').Value, divisor); // Chama Função de Divisão

    divisor := cdsProjetos.FieldByName('Valor').Value; // Armazena Novo Registro na Variável
    cdsProjetos.Next; // Pula para o Próximo Registro
  end;

  txtTotalDivisao.Text := FloatToSTrf(total, ffCurrency, 18, 2); // Alimenta o Edit com o Valor Total das Divisões, Seguido de Duas Casas Decimais
end;

procedure TfTarefa3.btTotalClick(Sender: TObject);
begin // Botão Obter Total
  somarTotal();
end;

procedure TfTarefa3.btTotalDivisaoClick(Sender: TObject);
begin // Botão Obter Total Divisão
  somarTotalDivisao();
end;

procedure TfTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin // Limpa Memória
  Action := caFree;
  fTarefa3 := nil;

  cdsProjetos.Close;
  FreeAndNil(cdsProjetos);
  FreeAndNil(dsProjeto);
end;

procedure TfTarefa3.FormCreate(Sender: TObject);
begin // Criando ClientDataSet e DataSource em Tempo de Execução
  cdsProjetos := TClientDataSet.Create(nil);
  cdsProjetos.Close;
  cdsProjetos.FieldDefs.Clear;
  cdsProjetos.FieldDefs.add('idProjeto', ftInteger); // Populando Colunas
  cdsProjetos.FieldDefs.add('nomeProjeto', ftString, 50);
  cdsProjetos.FieldDefs.add('valor', ftCurrency);
  cdsProjetos.CreateDataSet;

  dsProjeto := TDataSource.Create(nil);
  dsProjeto.DataSet := cdsProjetos; // Liga DataSource ao ClientDataSet

  gridProjetos.DataSource := dsProjeto; // Liga Grid ao DataSource
end;

procedure TfTarefa3.FormShow(Sender: TObject);
var // Ao Abrir o Form Popula 10 Registros na Grid
  i : Integer;
begin
  for i := 1 to 10 do
  begin
    cdsProjetos.Insert;
    cdsProjetos.FieldByName('idProjeto').Value := 11-i;
    cdsProjetos.FieldByName('NomeProjeto').Value := 'Projeto '+IntToStr(removeZero(Random(100)));
    cdsProjetos.FieldByName('Valor').Value := removeZero(Random(100)); // Ao Popular a Tabela Chama a Função RemoveZero para Não Permitir Zeros na Tabela
  end;
  cdsProjetos.Open;
end;

end.
