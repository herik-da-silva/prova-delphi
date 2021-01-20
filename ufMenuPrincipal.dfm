object fMenuPrincipal: TfMenuPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 450
  ClientWidth = 750
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu: TMainMenu
    Left = 696
    Top = 16
    object miTarefas: TMenuItem
      Caption = 'Tarefas'
      object miTarefa1: TMenuItem
        Caption = 'Tarefa 1'
        OnClick = miTarefa1Click
      end
      object miTarefa2: TMenuItem
        Caption = 'Tarefa 2'
        OnClick = miTarefa2Click
      end
      object miTarefa3: TMenuItem
        Caption = 'Tarefa 3'
        OnClick = miTarefa3Click
      end
    end
  end
end
