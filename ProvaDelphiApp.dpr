program ProvaDelphiApp;

uses
  Vcl.Forms,
  ufMenuPrincipal in 'ufMenuPrincipal.pas' {fMenuPrincipal},
  ufTarefa1 in 'ufTarefa1.pas' {fTarefa1},
  ufTarefa2 in 'ufTarefa2.pas' {fTarefa2},
  ufTarefa3 in 'ufTarefa3.pas' {fTarefa3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMenuPrincipal, fMenuPrincipal);
  Application.Run;
end.
