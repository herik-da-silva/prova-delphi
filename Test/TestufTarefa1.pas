unit TestufTarefa1;

interface

uses
  TestFramework, uspQuery, FireDAC.Stan.Option, FireDAC.DApt.Intf, FireDAC.DatS,
  FireDAC.Stan.Def, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, System.Classes,
  Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Error, System.SysUtils, Vcl.Graphics,
  FireDAC.Phys.Intf, FireDAC.Comp.Client, Winapi.Windows, System.Variants,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.Phys, FireDAC.Stan.Pool,
  Winapi.Messages, Vcl.Dialogs, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.SQLite,
  Vcl.Forms, FireDAC.UI.Intf, Data.DB, Vcl.Controls, ufTarefa1, FireDAC.Comp.DataSet,
  FireDAC.Phys.SQLiteWrapper.Stat;

type

  TestTfTarefa1 = class(TTestCase)
  strict private
    FfTarefa1: TfTarefa1;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestCriaSQL;
  end;

implementation

procedure TestTfTarefa1.SetUp;
begin
  FfTarefa1 := TfTarefa1.Create(nil);
end;

procedure TestTfTarefa1.TearDown;
begin
  FfTarefa1.Free;
  FfTarefa1 := nil;
end;

procedure TestTfTarefa1.TestCriaSQL;
var
  ReturnValue: string;
  string3: string;
  string2: string;
  string1: string;
begin
  string1 := 'coluna1, coluna2';
  string2 := 'tabela';
  string3 := 'condicao1 = condicao2';

  ReturnValue := FfTarefa1.CriaSQL(string1, string2, string3);

  CheckEquals('SELECT '+string1+' FROM '+string2+' WHERE '+string3+' ;', ReturnValue, 'String de entrada deveria retornar SELECT '+string1+' FROM '+string2+' WHERE '+string3+' ; mas retornou '+ReturnValue);
end;

initialization
  RegisterTest(TestTfTarefa1.Suite);
end.

