object Form1: TForm1
  Left = 487
  Top = 125
  Width = 379
  Height = 480
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Pa'#237'ses'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 40
    Width = 28
    Height = 13
    Caption = 'Name'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 80
    Width = 32
    Height = 13
    Caption = 'Capital'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 120
    Width = 45
    Height = 13
    Caption = 'Continent'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 24
    Top = 160
    Width = 22
    Height = 13
    Caption = 'Area'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 24
    Top = 200
    Width = 50
    Height = 13
    Caption = 'Population'
    FocusControl = DBEdit5
  end
  object Label8: TLabel
    Left = 24
    Top = 0
    Width = 33
    Height = 13
    Caption = 'Codigo'
    FocusControl = DBEdit6
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 56
    Width = 316
    Height = 21
    DataField = 'Name'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 96
    Width = 316
    Height = 21
    DataField = 'Capital'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 136
    Width = 316
    Height = 21
    DataField = 'Continent'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 176
    Width = 134
    Height = 21
    DataField = 'Area'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 24
    Top = 216
    Width = 134
    Height = 21
    DataField = 'Population'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBNavigator1: TDBNavigator
    Left = 64
    Top = 248
    Width = 240
    Height = 25
    DataSource = DataSource1
    Hints.Strings = (
      'Primeiro Registro'
      'Registro Anterior'
      'Pr'#243'ximo Registro'
      #218'ltimo Registro'
      'Inserir Registro'
      'Apagar Registro'
      'Editar Registro'
      'Gravar Registro / Edi'#231#227'o'
      'Cancelar Edi'#231#227'o'
      'Atualiza'#231#227'o de Dados')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 312
    Width = 353
    Height = 97
    Caption = 'Pesquisas'
    TabOrder = 7
    object SpeedButton1: TSpeedButton
      Left = 152
      Top = 40
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333FF3FF3333333333CC30003333333333773777333333333C33
        3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
        33003377333337F33377333333333C333300333F333337F33377339333333C33
        3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
        330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
        330077F377F337F33377993399333C33330077FF773337F33377399993333C33
        33333777733337F333FF333333333C33300033333333373FF7773333333333CC
        3000333333333377377733333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object Label6: TLabel
      Left = 24
      Top = 24
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label7: TLabel
      Left = 208
      Top = 24
      Width = 28
      Height = 13
      Caption = 'Nome'
    end
    object Edit1: TEdit
      Left = 24
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 208
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 1
      OnChange = Edit2Change
    end
  end
  object DBEdit6: TDBEdit
    Left = 24
    Top = 16
    Width = 134
    Height = 21
    DataField = 'Codigo'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 0
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=dbdemos.mdb;Persist' +
      ' Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 176
    Top = 184
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 312
    Top = 184
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'country'
    Left = 248
    Top = 184
    object ADOTable1Name: TWideStringField
      FieldName = 'Name'
      Size = 24
    end
    object ADOTable1Capital: TWideStringField
      FieldName = 'Capital'
      Size = 24
    end
    object ADOTable1Continent: TWideStringField
      FieldName = 'Continent'
      Size = 24
    end
    object ADOTable1Area: TFloatField
      FieldName = 'Area'
    end
    object ADOTable1Population: TFloatField
      FieldName = 'Population'
    end
    object ADOTable1Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
  end
end
