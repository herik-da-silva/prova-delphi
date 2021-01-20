unit uspQuery;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TspQuery = class(TFDQuery)
  private
    { Somente Visível Dentro da Unit que se Encontra a Classe }
    FspCondicoes: TStrings;
    FspColunas: TStrings;
    FspTabelas: TStrings;
    procedure SetspColunas(const Value: TStrings);
    procedure SetspCondicoes(const Value: TStrings);
    procedure SetspTabelas(const Value: TStrings);
  protected
    { Somente Visível Dentro da Unit que se Encontra a Classe }
  public
    { Visivel a Todos }
    Constructor Create(AOwner : TComponent); Override;
    Destructor Destroy; Override;
    function GeraSQL() : String;
  published
    { Propriedades de Valores }
    Property spColunas: TStrings read FspColunas write SetspColunas;
    Property spTabelas: TStrings read FspTabelas write SetspTabelas;
    Property spCondicoes: TStrings read FspCondicoes write SetspCondicoes;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('spComponentes', [TspQuery]);
end;

{ TspQuery }

constructor TspQuery.Create(AOwner: TComponent);
begin // Cria as Propriedades como TStringList
  inherited;
  FspColunas := TStringList.Create;
  FspTabelas := TStringList.Create;
  FspCondicoes := TStringList.Create;
end;

destructor TspQuery.Destroy;
begin // Limpa a Memória
  inherited;
  FspColunas.Free;
  FspTabelas.Free;
  FspCondicoes.Free;
end;

function TspQuery.GeraSQL(): String;
begin
  // StringReplace Remove as Quebras de Linha do SQL
  //Adiciona SQL gerado a Propiedade SQL
  SQL.Add(StringReplace('SELECT '+FspColunas.Text+'FROM '+FspTabelas.Text+'WHERE '+FspCondicoes.Text+';', #$D#$A, ' ', [rfReplaceAll]));
  Result := SQL.Text;
end;

procedure TspQuery.SetspColunas(const Value: TStrings);
begin // Write Recebe Valores
  FspColunas.Assign(Value);
end;

procedure TspQuery.SetspCondicoes(const Value: TStrings);
begin
  FspCondicoes.Assign(Value);
end;

procedure TspQuery.SetspTabelas(const Value: TStrings);
begin
  FspTabelas.Assign(Value);
end;

end.
