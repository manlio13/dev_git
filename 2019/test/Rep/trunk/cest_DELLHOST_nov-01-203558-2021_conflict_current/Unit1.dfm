object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Il Cesto'
  ClientHeight = 370
  ClientWidth = 1091
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnMouseUp = FormMouseUp
  OnMouseWheel = FormMouseWheel
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 683
    Top = 3
    Width = 400
    Height = 350
    Stretch = True
    OnDblClick = Image1DblClick
    OnMouseDown = Image1MouseDown
    OnMouseEnter = Image1MouseEnter
    OnMouseMove = Image1MouseMove
  end
  object Label1: TLabel
    Left = 16
    Top = 293
    Width = 427
    Height = 13
    Caption = 
      'Date from                  to                          che cosa ' +
      '                                                        dove'
  end
  object Label2: TLabel
    Left = 314
    Top = 255
    Width = 47
    Height = 32
    Alignment = taCenter
    AutoSize = False
    Color = clYellow
    Constraints.MaxHeight = 32
    Constraints.MaxWidth = 47
    Constraints.MinHeight = 25
    Constraints.MinWidth = 47
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    WordWrap = True
  end
  object Label3: TLabel
    Left = 553
    Top = 197
    Width = 124
    Height = 53
    AutoSize = False
    Caption = 
      'Mouse over the image to        Pan/Zoom/Drag                 Dbl' +
      ' Click to exit             Widen the form to zoom'
    WordWrap = True
  end
  object lbl1: TLabel
    Left = 218
    Top = 337
    Width = 225
    Height = 16
    Caption = 'Attenzione al maiuscolo/minuscolo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 0
    Width = 353
    Height = 250
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'datelog'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'what'
        Title.Alignment = taCenter
        Title.Caption = 'Che cosa'
        Width = 152
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Keyword'
        Title.Alignment = taCenter
        Title.Caption = 'Dove'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Note'
        Width = 43
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 51
    Top = 256
    Width = 240
    Height = 25
    DataSource = DataSource1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = DBNavigator1Click
  end
  object DBMemo1: TDBMemo
    Left = 372
    Top = 9
    Width = 305
    Height = 177
    DataField = 'note'
    DataSource = DataSource1
    TabOrder = 2
    OnEnter = DBMemo1Enter
    OnExit = DBMemo1Exit
  end
  object Button1: TButton
    Left = 561
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Filter'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 458
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Load JPG'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 377
    Top = 223
    Width = 75
    Height = 25
    Caption = 'Table'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 0
    Top = 310
    Width = 81
    Height = 21
    TabOrder = 6
  end
  object Edit3: TEdit
    Left = 175
    Top = 310
    Width = 211
    Height = 21
    TabOrder = 7
  end
  object Edit4: TEdit
    Left = 392
    Top = 310
    Width = 105
    Height = 21
    TabOrder = 8
  end
  object Edit2: TEdit
    Left = 87
    Top = 310
    Width = 82
    Height = 21
    TabOrder = 9
  end
  object Button4: TButton
    Left = 561
    Top = 318
    Width = 75
    Height = 21
    Caption = 'Reset'
    TabOrder = 10
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 458
    Top = 223
    Width = 75
    Height = 25
    Caption = 'Remove JPG'
    TabOrder = 11
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 377
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Done'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 377
    Top = 254
    Width = 75
    Height = 25
    Caption = 'Log Reset'
    TabOrder = 13
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 458
    Top = 254
    Width = 75
    Height = 25
    Caption = 'Save2dsk JPG'
    TabOrder = 14
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 27
    Top = 337
    Width = 75
    Height = 25
    Caption = 'New record'
    TabOrder = 15
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 128
    Top = 337
    Width = 75
    Height = 25
    Caption = 'Backup'
    TabOrder = 16
    OnClick = Button10Click
  end
  object ABSTable1: TABSTable
    CurrentVersion = '7.80 '
    DatabaseName = 'cesto.abs'
    InMemory = False
    ReadOnly = False
    AfterPost = ABSTable1AfterPost
    AfterScroll = ABSTable1AfterScroll
    StoreDefs = True
    IndexDefs = <
      item
        Name = 'IndexName'
        CaseInsFields = 'what'
        Fields = 'datelog;what'
        Options = [ixPrimary]
      end>
    IndexName = 'IndexName'
    FieldDefs = <
      item
        Name = 'datelog'
        DataType = ftDate
      end
      item
        Name = 'what'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Keyword'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'note'
        DataType = ftMemo
      end
      item
        Name = 'view'
        DataType = ftBlob
      end>
    TableName = 'data'
    Exclusive = False
    Left = 760
    Top = 160
  end
  object ABSDatabase1: TABSDatabase
    CurrentVersion = '7.80 '
    DatabaseFileName = './cesto.ABS'
    DatabaseName = 'cesto.abs'
    Exclusive = False
    MaxConnections = 20
    MultiUser = False
    SessionName = 'Default'
    Left = 760
    Top = 208
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'jpg'
    FileName = 'image'
    Left = 752
    Top = 272
  end
  object DataSource1: TDataSource
    DataSet = ABSQuery1
    Left = 760
    Top = 112
  end
  object OpenJPG: TOpenDialog
    Left = 832
    Top = 224
  end
  object ABSQuery1: TABSQuery
    CurrentVersion = '7.80 '
    DatabaseName = 'cesto.abs'
    InMemory = False
    ReadOnly = False
    AfterScroll = ABSQuery1AfterScroll
    Left = 760
    Top = 64
  end
  object jvshfile1: TJvSHFileOperation
    SourceFiles.Strings = (
      'cesto.abs')
    DestFiles.Strings = (
      'cesto.bkp')
    Left = 864
    Top = 64
  end
end