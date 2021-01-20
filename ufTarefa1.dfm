object fTarefa1: TfTarefa1
  Left = 0
  Top = 0
  Caption = 'Tarefa 01'
  ClientHeight = 450
  ClientWidth = 749
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object lColunas: TLabel
    Left = 38
    Top = 47
    Width = 47
    Height = 16
    Caption = 'Colunas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lTabelas: TLabel
    Left = 235
    Top = 47
    Width = 44
    Height = 16
    Caption = 'Tabelas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lCondicoes: TLabel
    Left = 431
    Top = 47
    Width = 61
    Height = 16
    Caption = 'Condi'#231#245'es'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lSqlGerado: TLabel
    Left = 38
    Top = 268
    Width = 72
    Height = 16
    Caption = 'SQL Gerado'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object mColunas: TMemo
    Left = 38
    Top = 69
    Width = 170
    Height = 166
    TabOrder = 0
  end
  object mCondicoes: TMemo
    Left = 431
    Top = 69
    Width = 170
    Height = 166
    TabOrder = 2
  end
  object mTabelas: TMemo
    Left = 235
    Top = 69
    Width = 170
    Height = 166
    TabOrder = 1
  end
  object btGeraSql: TButton
    Left = 619
    Top = 128
    Width = 91
    Height = 33
    Caption = 'GerarSQL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btGeraSqlClick
  end
  object mSqlGerado: TMemo
    Left = 38
    Top = 290
    Width = 672
    Height = 103
    ReadOnly = True
    TabOrder = 4
  end
  object spQuery1: TspQuery
    Connection = coneccao
    Left = 648
    Top = 232
  end
  object coneccao: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    Left = 648
    Top = 176
  end
end
