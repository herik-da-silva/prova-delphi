program ProvaDelphiAppTests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  TestufTarefa2 in 'TestufTarefa2.pas',
  ufTarefa2 in '..\ufTarefa2.pas',
  TestufTarefa3 in 'TestufTarefa3.pas',
  ufTarefa3 in '..\ufTarefa3.pas',
  TestufTarefa1 in 'TestufTarefa1.pas',
  ufTarefa1 in '..\ufTarefa1.pas';

{$R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

