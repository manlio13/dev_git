object Form4: TForm4
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Anagrafica Discipline'
  ClientHeight = 307
  ClientWidth = 458
  Color = clOlive
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 205
    Width = 129
    Height = 19
    Alignment = taCenter
    AutoSize = False
    Caption = 'Descrizione'
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 240
    Top = 230
    Width = 205
    Height = 29
    AutoSize = False
    Caption = 
      '   TMAX = 00:00:00,000 =  hh:nn:ss,zzz             Al termine pr' +
      'emere "enter/invio"'
    Color = clYellow
    ParentColor = False
    WordWrap = True
  end
  object dbgrd4: TDBGrid
    Left = 8
    Top = 8
    Width = 438
    Height = 177
    DataSource = ds4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColExit = dbgrd4ColExit
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODDSPL'
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCR'
        Title.Alignment = taCenter
        Title.Caption = 'DESCRIZIONE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 288
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TMAX'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 65
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 16
    Top = 230
    Width = 193
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 16
    Top = 265
    Width = 75
    Height = 25
    Caption = 'Cerca'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 97
    Top = 265
    Width = 75
    Height = 25
    Caption = 'Annulla'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 178
    Top = 265
    Width = 75
    Height = 25
    Caption = 'Stampa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 259
    Top = 265
    Width = 75
    Height = 25
    Caption = 'Azzera'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 370
    Top = 265
    Width = 75
    Height = 25
    Caption = 'Esci'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button5Click
  end
  object dbnvgr4: TDBNavigator
    Left = 206
    Top = 199
    Width = 240
    Height = 25
    DataSource = ds4
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = dbnvgr4Click
  end
  object ds4: TDataSource
    DataSet = Form2.ABSTable4
    Left = 272
    Top = 120
  end
  object ABSQuery4: TABSQuery
    CurrentVersion = '7.60 '
    DatabaseName = 'corbi.abs'
    InMemory = False
    ReadOnly = False
    Left = 369
    Top = 104
  end
  object frxReport4: TfrxReport
    Version = '4.13.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42098.567725057900000000
    ReportOptions.LastChange = 42134.817485127310000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 64
    Top = 80
    Datasets = <
      item
        DataSet = frxDBDataset4
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
      end
      object Memo1: TfrxMemoView
        Left = 200.315090000000000000
        Top = 11.338590000000000000
        Width = 162.519790000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          'Anagrafica Discipline al  ')
        ParentFont = False
      end
      object Date: TfrxMemoView
        Left = 362.834880000000000000
        Top = 11.338590000000000000
        Width = 98.267780000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[Date]')
        ParentFont = False
      end
      object MasterData1: TfrxMasterData
        Height = 56.692950000000000000
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 15.118120000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CODDSPL'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CODDSPL"]')
        end
        object Memo3: TfrxMemoView
          Left = 105.826840000000000000
          Top = 22.677180000000000000
          Width = 427.086890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DESCR'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."DESCR"]')
        end
        object Memo4: TfrxMemoView
          Left = 26.456710000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Codice')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 245.669450000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRIZIONE')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 578.268090000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'T_Max')
        end
        object Memo7: TfrxMemoView
          Left = 578.268090000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TMAX'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = 'nn:ss,zzz'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8W = (
            '[frxDBDataset1."TMAX"]')
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Top = 49.133890000000000000
          Width = 691.653990000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 3.000000000000000000
        end
      end
      object Picture1: TfrxPictureView
        Left = 7.559060000000000000
        Top = 3.779530000000000000
        Width = 56.692950000000000000
        Height = 49.133890000000000000
        ShowHint = False
        Picture.Data = {
          055449636F6E0000010001003030000001002000A82500001600000028000000
          3000000060000000010020000000000000000000000000000000000000000000
          00000000FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          0000FFFF0000FFFF0000FFFF0000FFFF0000FFFFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          0000FFFFFF9900FFFF9900FFFF9900FFFF9900FF0000FFFFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF0000FFFFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF0000FFFFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF0000FFFFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FF0000FFFFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          0000FFFF0000FFFF0000FFFF0000FFFF0000FFFFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          0000FFFF0000FFFF0000FFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          0000FFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          0000FFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FF560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FF560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FF560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FF9DDBFFFF9DDBFFFF9DDBFFFF9DDBFFFF
          9DDBFFFF9DDBFFFFFF9900FFFF9900FFFF9900FFFF9900FF9DDBFFFF9DDBFFFF
          9DDBFFFF9DDBFFFF9DDBFFFFFF9900FFFF9900FFFF9900FF9DDBFFFF9DDBFFFF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          9DDBFFFF9DDBFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FF560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FF9DDBFFFF9DDBFFFFFF9900FFFF9900FFFF9900FF
          FF9900FF9DDBFFFF9DDBFFFFFF9900FFFF9900FF9DDBFFFF9DDBFFFFFF9900FF
          FF9900FFFF9900FF9DDBFFFF9DDBFFFFFF9900FFFF9900FF9DDBFFFF9DDBFFFF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          9DDBFFFF9DDBFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FF560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FF9DDBFFFF9DDBFFFFFF9900FF9DDBFFFF9DDBFFFFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FF9DDBFFFF9DDBFFFFFF9900FF9DDBFFFF9DDBFFFF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          9DDBFFFF9DDBFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FF560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          9DDBFFFF9DDBFFFF9DDBFFFFFF9900FF9DDBFFFFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FF9DDBFFFF9DDBFFFFFF9900FF9DDBFFFF9DDBFFFF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          9DDBFFFF9DDBFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FF560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FF9DDBFFFF9DDBFFFF9DDBFFFF9DDBFFFF
          9DDBFFFF9DDBFFFFFF9900FFFF9900FF9DDBFFFFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FF9DDBFFFF9DDBFFFFFF9900FF9DDBFFFF9DDBFFFF
          9DDBFFFF9DDBFFFF9DDBFFFF9DDBFFFFFF9900FFFF9900FFFF9900FFFF9900FF
          9DDBFFFF9DDBFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FF560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FF9DDBFFFF9DDBFFFFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FF9DDBFFFFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FF9DDBFFFF9DDBFFFFFF9900FF9DDBFFFF9DDBFFFF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          9DDBFFFF9DDBFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FF560EFFFFFF9900FF560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FF9DDBFFFF9DDBFFFFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FF9DDBFFFF9DDBFFFFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FF9DDBFFFF9DDBFFFFFF9900FF9DDBFFFF9DDBFFFF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          9DDBFFFF9DDBFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FF560EFFFF560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FF9DDBFFFF9DDBFFFFFF9900FFFF9900FFFF9900FF
          FF9900FF9DDBFFFF9DDBFFFFFF9900FFFF9900FF9DDBFFFF9DDBFFFFFF9900FF
          FF9900FFFF9900FF9DDBFFFF9DDBFFFFFF9900FFFF9900FF9DDBFFFF9DDBFFFF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          9DDBFFFF9DDBFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FF560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FF9DDBFFFF9DDBFFFF9DDBFFFF9DDBFFFF
          9DDBFFFF9DDBFFFFFF9900FFFF9900FFFF9900FFFF9900FF9DDBFFFF9DDBFFFF
          9DDBFFFF9DDBFFFF9DDBFFFFFF9900FFFF9900FFFF9900FF9DDBFFFF9DDBFFFF
          9DDBFFFF9DDBFFFF9DDBFFFF9DDBFFFF9DDBFFFF9DDBFFFF9DDBFFFF9DDBFFFF
          9DDBFFFF9DDBFFFF9DDBFFFF9DDBFFFF9DDBFFFFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FF560EFFFF560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FF560EFFFF560EFFFFFF9900FF560EFFFF560EFFFFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFF
          560EFFFF560EFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFF560EFFFF
          560EFFFF560EFFFF560EFFFF560EFFFF560EFFFF560EFFFF560EFFFF560EFFFF
          560EFFFF560EFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFF
          560EFFFF560EFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFF560EFFFF
          560EFFFF560EFFFF560EFFFF560EFFFF560EFFFF560EFFFF560EFFFF560EFFFF
          560EFFFF560EFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFF
          560EFFFF560EFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFF560EFFFF
          560EFFFF560EFFFF560EFFFF560EFFFF560EFFFF560EFFFF560EFFFF560EFFFF
          560EFFFF560EFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFF
          560EFFFF560EFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFF560EFFFF
          560EFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FF560EFFFF560EFFFFFF9900FF560EFFFF560EFFFFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFF
          560EFFFF560EFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF560EFFFF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFF560EFFFF
          560EFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FF560EFFFF560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFF
          560EFFFF560EFFFFFF9900FFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFF
          560EFFFFFF9900FFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFF560EFFFF
          560EFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFF
          560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFFFF9900FF
          560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFF560EFFFF
          560EFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF560EFFFF
          560EFFFF560EFFFF560EFFFF560EFFFF560EFFFF560EFFFF560EFFFFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFF
          560EFFFF560EFFFFFF9900FFFF9900FF560EFFFF560EFFFFFF9900FFFF9900FF
          FF9900FF560EFFFF560EFFFFFF9900FFFF9900FF560EFFFF560EFFFF560EFFFF
          560EFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          560EFFFF560EFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFF
          560EFFFF560EFFFFFF9900FF560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FF560EFFFF560EFFFFFF9900FF560EFFFF560EFFFF560EFFFF
          560EFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FF560EFFFF560EFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFF
          560EFFFF560EFFFF560EFFFF560EFFFFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FF560EFFFF560EFFFF560EFFFF560EFFFF560EFFFF
          560EFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FF560EFFFF560EFFFFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFF
          560EFFFF560EFFFF560EFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFF560EFFFF560EFFFF
          560EFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FF560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF560EFFFF560EFFFFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          560EFFFF560EFFFFFF9900FFFF9900FFFF9900FF560EFFFFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FF560EFFFF560EFFFF560EFFFF560EFFFF560EFFFFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF
          FF9900FF000000000000A84C000000000000A84C000000000000A84C00000000
          0000A84C000000000000A84C000000000000A84C000000000000A84C00000000
          0000A84C000000000000A84C000000000000A84C000000000000A84C00000000
          0000A84C000000000000A84C000000000000A84C000000000000A84C00000000
          0000A84C000000000000A84C000000000000A84C000000000000A84C00000000
          0000A84C000000000000A84C000000000000A84C000000000000A84C00000000
          0000A84C000000000000A84C000000000000A84C000000000000A84C00000000
          0000A84C000000000000A84C000000000000A84C000000000000A84C00000000
          0000A84C000000000000A84C000000000000A84C000000000000A84C00000000
          0000A84C000000000000A84C000000000000A84C000000000000A84C00000000
          0000A84C000000000000A84C000000000000A84C000000000000A84C00000000
          0000A84C000000000000A84C000000000000A84C000000000000A84C00000000
          0000A84C}
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
    end
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = Form2.ABSTable4
    BCDToCurrency = False
    Left = 136
    Top = 88
  end
  object frxPDFExport4: TfrxPDFExport
    FileName = 'AnagraficaDiscipln'
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
    Author = 'MLSoft'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 232
    Top = 80
  end
end