object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Tarefa 02'
  ClientHeight = 450
  ClientWidth = 750
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object lTempo1: TLabel
    Left = 40
    Top = 81
    Width = 68
    Height = 16
    Caption = 'Tempo (ms)'
  end
  object lTempo2: TLabel
    Left = 40
    Top = 182
    Width = 68
    Height = 16
    Caption = 'Tempo (ms)'
  end
  object lPorcentagemTD1: TLabel
    Left = 648
    Top = 103
    Width = 63
    Height = 33
    Alignment = taCenter
    AutoSize = False
    Caption = '%'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lPorcentagemTD2: TLabel
    Left = 648
    Top = 204
    Width = 63
    Height = 33
    Alignment = taCenter
    AutoSize = False
    Caption = '%'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lTituloThread1: TLabel
    Left = 153
    Top = 81
    Width = 90
    Height = 19
    Caption = 'THREAD 01'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lTituloThread2: TLabel
    Left = 153
    Top = 179
    Width = 90
    Height = 19
    Caption = 'THREAD 02'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btCriarThreads: TButton
    Left = 40
    Top = 306
    Width = 671
    Height = 63
    Caption = 'Criar Threads'
    TabOrder = 0
    OnClick = btCriarThreadsClick
  end
  object pbThead1: TProgressBar
    Left = 153
    Top = 103
    Width = 489
    Height = 33
    TabOrder = 1
  end
  object txtTempoThead1: TEdit
    Left = 40
    Top = 103
    Width = 98
    Height = 33
    AutoSize = False
    TabOrder = 2
    OnKeyPress = txtTempoThead1KeyPress
  end
  object pbThead2: TProgressBar
    Left = 153
    Top = 204
    Width = 489
    Height = 33
    BarColor = clGreen
    TabOrder = 3
  end
  object txtTempoThead2: TEdit
    Left = 40
    Top = 204
    Width = 98
    Height = 33
    AutoSize = False
    TabOrder = 4
    OnKeyPress = txtTempoThead2KeyPress
  end
end
