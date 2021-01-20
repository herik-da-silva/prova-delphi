object fTarefa3: TfTarefa3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Tarefa 03'
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object lTituloTabela: TLabel
    Left = 32
    Top = 18
    Width = 114
    Height = 16
    Caption = 'Valores por Projeto:'
  end
  object lTotal: TLabel
    Left = 592
    Top = 311
    Width = 51
    Height = 16
    Caption = 'Total R$:'
  end
  object lTotalDivisao: TLabel
    Left = 592
    Top = 368
    Width = 101
    Height = 16
    Caption = 'Total divis'#245'es R$:'
  end
  object btTotal: TButton
    Left = 480
    Top = 330
    Width = 90
    Height = 24
    Caption = 'Obter Total'
    TabOrder = 0
    OnClick = btTotalClick
  end
  object btTotalDivisao: TButton
    Left = 432
    Top = 387
    Width = 138
    Height = 24
    Caption = 'Obter Total Divis'#245'es'
    TabOrder = 1
    OnClick = btTotalDivisaoClick
  end
  object txtTotal: TEdit
    Left = 592
    Top = 330
    Width = 121
    Height = 24
    ReadOnly = True
    TabOrder = 2
  end
  object txtTotalDivisao: TEdit
    Left = 592
    Top = 387
    Width = 121
    Height = 24
    ReadOnly = True
    TabOrder = 3
  end
  object gridProjetos: TDBGrid
    Left = 32
    Top = 40
    Width = 681
    Height = 249
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
  end
end
