unit TestufTarefa3;

interface

uses
  TestFramework, Vcl.Dialogs, Winapi.Windows, Vcl.StdCtrls, System.SysUtils, ufTarefa3,
  Vcl.Graphics, System.Variants, Vcl.Grids, Vcl.DBGrids, Winapi.Messages,
  Datasnap.DBClient, Vcl.Controls, Vcl.Forms, Data.DB, System.Classes;

type

  TestTfTarefa3 = class(TTestCase)
  strict private
    FfTarefa3: TfTarefa3;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Testsomar;
    procedure Testdividir;
    procedure TestremoveZero;
  end;

implementation

procedure TestTfTarefa3.SetUp;
begin
  FfTarefa3 := TfTarefa3.Create(nil);
end;

procedure TestTfTarefa3.TearDown;
begin
  FfTarefa3.Free;
  FfTarefa3 := nil;
end;

procedure TestTfTarefa3.Testsomar;
var
  ReturnValue: Currency;
  valor: Currency;
begin
  valor := 2;

  ReturnValue := FfTarefa3.somar(valor);

  CheckEquals(valor, ReturnValue, 'Currency de entrada deveria retornar '+FloatToStr(valor)+' mas retornou '+FloatToStr(ReturnValue));
end;

procedure TestTfTarefa3.Testdividir;
var
  ReturnValue: Currency;
  valor2: Currency;
  valor1: Currency;
begin
  valor1 := 2;
  valor2 := 1;

  ReturnValue := FfTarefa3.dividir(valor1, valor2);

  CheckEquals((valor1/valor2), ReturnValue, 'Currency de entrada deveria retornar '+FloatToStr((valor1/valor2))+' mas retornou '+FloatToStr(ReturnValue));
end;

procedure TestTfTarefa3.TestremoveZero;
var
  ReturnValue: Integer;
  valor: Integer;
begin
  valor := 0;

  ReturnValue := FfTarefa3.removeZero(valor);

  CheckNotEquals(valor, ReturnValue, 'Integer de entrada deveria retornar diferente de '+IntToStr(valor)+', mas retornou '+IntToStr(ReturnValue));
end;

initialization
  RegisterTest(TestTfTarefa3.Suite);
end.

