unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfTarefa2 = class(TForm)
    btCriarThreads: TButton;
    pbThead1: TProgressBar;
    txtTempoThead1: TEdit;
    lTempo1: TLabel;
    pbThead2: TProgressBar;
    txtTempoThead2: TEdit;
    lTempo2: TLabel;
    lPorcentagemTD1: TLabel;
    lPorcentagemTD2: TLabel;
    lTituloThread1: TLabel;
    lTituloThread2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCriarThreadsClick(Sender: TObject);
    procedure txtTempoThead1KeyPress(Sender: TObject; var Key: Char);
    procedure txtTempoThead2KeyPress(Sender: TObject; var Key: Char);
  private
    Thread1, Thread2 : TThread;
    pnMilisegundos1, pnMilisegundos2 : Integer;
  public
    procedure ExecutaThread1(value : Integer);
    procedure ExecutaThread2(value : Integer);
    function somenteNumeros(value : Char): Char;
  end;

var
  fTarefa2: TfTarefa2;

implementation

{$R *.dfm}

function TfTarefa2.somenteNumeros(value: Char): Char;
begin // Função para Aceitar Apenas Números
  if ((value in ['0'..'9'] = false) and (word(value) <> vk_back)) then
    Result := #0
  else
    Result := value;
end;

procedure TfTarefa2.txtTempoThead1KeyPress(Sender: TObject; var Key: Char);
begin // Evento KeyPress
  Key := somenteNumeros(Key); // Função para Aceitar Apenas Números
end;

procedure TfTarefa2.txtTempoThead2KeyPress(Sender: TObject; var Key: Char);
begin // Evento KeyPress
  Key := somenteNumeros(Key);
end;

procedure TfTarefa2.ExecutaThread1(value : Integer);
begin
  pnMilisegundos1 := value;
  Thread1 := TThread.CreateAnonymousThread( // Executa Thread 1
    procedure
    var
      i: Integer;
    begin
      for i := 0 to 100 do
      begin
         TThread.Synchronize( // Solicita a Thread Principal para Atualizar o View
          TThread.CurrentThread,
            procedure ()
            begin // Alimenta na View o ProgressBar e o Label com o Contador
              pbThead1.Position := i;
              lPorcentagemTD1.Caption := IntToStr(i);
            end
        );
        Sleep(pnMilisegundos1); // Espera em Milisegundos do Loop da Thead
      end;
    end
  );

  Thread1.FreeOnTerminate := True; // Limpa a Memória
  Thread1.start(); // Inicía a Thread
end;

procedure TfTarefa2.ExecutaThread2(value: Integer);
begin
  pnMilisegundos2 := value;
  Thread2 := TThread.CreateAnonymousThread( // Executa Thread 2
    procedure
    var
      i: Integer;
    begin
      for i := 0 to 100 do
      begin
         TThread.Synchronize(
          TThread.CurrentThread,
            procedure ()
            begin
              pbThead2.Position := i;
              lPorcentagemTD2.Caption := IntToStr(i);
            end
        );
        Sleep(pnMilisegundos2);
      end;
    end
  );

  Thread2.FreeOnTerminate := True;
  Thread2.start();
end;

procedure TfTarefa2.btCriarThreadsClick(Sender: TObject);
begin // Botão Criar Threads
  ExecutaThread1(StrToInt(txtTempoThead1.Text));

  ExecutaThread2(StrToInt(txtTempoThead2.Text));
end;

procedure TfTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin // Limpa Memória
  Action := caFree;
  fTarefa2 := nil;
end;

end.
