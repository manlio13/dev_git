object Form1: TForm1
  Left = 617
  Top = 540
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 168
    Top = 72
    Width = 281
    Height = 137
    TabOrder = 0
    object Label1: TLabel
      Left = 64
      Top = 88
      Width = 105
      Height = 17
      AutoSize = False
      Caption = '            funziona'
    end
    object btnCancel: TButton
      Left = 160
      Top = 40
      Width = 75
      Height = 25
      Caption = 'btnCancel'
      TabOrder = 0
      OnClick = btnCancelClick
    end
    object btnContinue: TButton
      Left = 24
      Top = 40
      Width = 75
      Height = 25
      Caption = 'btnContinue'
      TabOrder = 1
      OnClick = btnContinueClick
    end
  end
  object PrinteLetters: TButton
    Left = 40
    Top = 8
    Width = 75
    Height = 25
    Caption = 'PrintLetters'
    TabOrder = 1
    OnClick = PrinteLettersClick
  end
end
