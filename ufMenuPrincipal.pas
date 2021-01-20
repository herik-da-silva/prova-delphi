unit ufMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfMenuPrincipal = class(TForm)
    MainMenu: TMainMenu;
    miTarefas: TMenuItem;
    miTarefa1: TMenuItem;
    miTarefa2: TMenuItem;
    miTarefa3: TMenuItem;
    procedure miTarefa1Click(Sender: TObject);
    procedure miTarefa3Click(Sender: TObject);
    procedure miTarefa2Click(Sender: TObject);
  private

  public

  end;

var
  fMenuPrincipal: TfMenuPrincipal;

implementation

{$R *.dfm}

uses ufTarefa1, ufTarefa2, ufTarefa3;

procedure TfMenuPrincipal.miTarefa1Click(Sender: TObject);
begin {Seleção Menu Tarefa 01}
  if fTarefa1 = nil then // Permite Somente 1 Form Aberto
    fTarefa1 := TfTarefa1.Create(Self);
  fTarefa1.Show;
end;

procedure TfMenuPrincipal.miTarefa2Click(Sender: TObject);
begin {Seleção Menu Tarefa 02}
  if fTarefa2 = nil then
    fTarefa2 := TfTarefa2.Create(Self);
  fTarefa2.Show;
end;

procedure TfMenuPrincipal.miTarefa3Click(Sender: TObject);
begin {Seleção Menu Tarefa 03}
  if fTarefa3 = nil then
    fTarefa3 := TfTarefa3.Create(Self);
  fTarefa3.Show;
end;

end.
