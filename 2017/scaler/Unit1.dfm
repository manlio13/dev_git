object Form1: TForm1
  Left = 640
  Top = 374
  Caption = 'Form1'
  ClientHeight = 311
  ClientWidth = 643
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object label1: TLabel
    Left = 64
    Top = 16
    Width = 505
    Height = 26
    AutoSize = False
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object label2: TLabel
    Left = 64
    Top = 120
    Width = 362
    Height = 25
    AutoSize = False
    Color = clYellow
    ParentColor = False
  end
  object Label3: TLabel
    Left = 64
    Top = 168
    Width = 362
    Height = 25
    AutoSize = False
    Color = clYellow
    ParentColor = False
  end
  object Edit1: TEdit
    Left = 64
    Top = 48
    Width = 362
    Height = 21
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 432
    Top = 48
    Width = 65
    Height = 25
    Caption = 'Invio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object chk1: TCheckBox
    Left = 456
    Top = 128
    Width = 33
    Height = 17
    TabOrder = 2
  end
  object chk2: TCheckBox
    Left = 456
    Top = 176
    Width = 33
    Height = 17
    TabOrder = 3
  end
  object Button2: TButton
    Left = 503
    Top = 48
    Width = 66
    Height = 25
    Caption = 'Valutazione'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 480
    Top = 145
    Width = 57
    Height = 25
    Caption = 'scegli'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 560
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Reset'
    TabOrder = 6
    OnClick = Button4Click
  end
  object ABSTable1: TABSTable
    CurrentVersion = '7.80 '
    DatabaseName = 'scaler.abs'
    InMemory = False
    ReadOnly = False
    StoreDefs = True
    FieldDefs = <
      item
        Name = 'cosa'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'punti'
        DataType = ftInteger
      end>
    TableName = 'scaler'
    Exclusive = False
    Left = 440
    Top = 256
  end
  object ABSDatabase1: TABSDatabase
    CurrentVersion = '7.80 '
    DatabaseName = 'scaler.abs'
    Exclusive = False
    MaxConnections = 500
    MultiUser = False
    SessionName = 'Default'
    Left = 488
    Top = 256
  end
  object ABSQuery1: TABSQuery
    CurrentVersion = '7.80 '
    DatabaseName = 'scaler.abs'
    InMemory = False
    ReadOnly = False
    Left = 368
    Top = 240
  end
  object frxReport1: TfrxReport
    Version = '4.13.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42874.930636307900000000
    ReportOptions.LastChange = 42874.930636307900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 96
    Top = 224
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 181.417440000000000000
          Top = 18.897650000000000000
          Width = 336.378170000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            ' Scala delle priorit'#224' o delle rilevanze')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 41.574830000000000000
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1cosa: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 612.283860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'cosa'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."cosa"]')
          ParentFont = False
        end
        object frxDBDataset1punti: TfrxMemoView
          Left = 627.401980000000000000
          Top = 7.559059999999988000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'punti'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."punti"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ABSTable1
    BCDToCurrency = False
    Left = 208
    Top = 232
  end
  object frxPDFExport1: TfrxPDFExport
    FileName = 'Scaler'
    UseFileCache = True
    DefaultPath = '.\'
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 280
    Top = 256
  end
end