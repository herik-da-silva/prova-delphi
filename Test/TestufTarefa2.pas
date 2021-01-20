unit TestufTarefa2;

interface

uses
  TestFramework, Vcl.Dialogs, Winapi.Windows, Vcl.StdCtrls, Vcl.Forms, Vcl.ComCtrls,
  Vcl.Graphics, System.Variants, ufTarefa2, Winapi.Messages, System.SysUtils,
  Vcl.Controls, Vcl.ExtCtrls, System.Classes;

type

  TestTfTarefa2 = class(TTestCase)
  strict private
    FfTarefa2: TfTarefa2;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestsomenteNumeros;
  end;

implementation

procedure TestTfTarefa2.SetUp;
begin
  FfTarefa2 := TfTarefa2.Create(nil);
end;

procedure TestTfTarefa2.TearDown;
begin
  FfTarefa2.Free;
  FfTarefa2 := nil;
end;

procedure TestTfTarefa2.TestsomenteNumeros;
var
  ReturnValue: Char;
  value: Char;
begin
  value := 'a';

  ReturnValue := FfTarefa2.somenteNumeros(value);

  CheckNotEquals(value, ReturnValue, 'Char de entrada devia retornar diferente de '+value+', mas retornou '+ReturnValue);
end;

initialization
  RegisterTest(TestTfTarefa2.Suite);
end.

