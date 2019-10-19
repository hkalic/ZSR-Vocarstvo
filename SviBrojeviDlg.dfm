object FSviBrojeviDlg: TFSviBrojeviDlg
  Left = 318
  Top = 151
  BorderStyle = bsToolWindow
  Caption = 'Pregled svih izdanih brojeva'
  ClientHeight = 438
  ClientWidth = 478
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Tag = 2
    Left = 0
    Top = 0
    Width = 237
    Height = 438
    IniAttributes.Enabled = True
    IniAttributes.FileName = 'dok.ini'
    IniAttributes.Delimiter = ';;'
    IniAttributes.CheckNewFields = True
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = False
    Align = alLeft
    Color = clWhite
    DataSource = dsNotRepro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = wwDBGrid1DblClick
  end
  object wwDBGrid2: TwwDBGrid
    Tag = 1
    Left = 241
    Top = 0
    Width = 237
    Height = 438
    Selected.Strings = (
      'PraviBrojUvjerenja'#9'12'#9'Broj Uvjerenja'
      'Datum'#9'14'#9'Datum izd.'
      'Dodatak'#9'5'#9' ')
    IniAttributes.Enabled = True
    IniAttributes.FileName = 'dok.ini'
    IniAttributes.Delimiter = ';;'
    IniAttributes.CheckNewFields = True
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = False
    Align = alRight
    Color = clWhite
    DataSource = dsRepro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = wwDBGrid1DblClick
  end
  object qRepro: TQuery
    Active = True
    DatabaseName = 'DBVoc'
    SQL.Strings = (
      'SELECT PraviBrojUvjerenja, Datum, Dodatak'
      'FROM "BrojeviUvjerenja.DB" Brojeviuvjerenja'
      'WHERE Dodatak like '#39'R%'#39
      'ORDER BY PraviBrojUvjerenja')
    Left = 304
    Top = 168
    object qReproPraviBrojUvjerenja: TStringField
      DisplayLabel = 'Broj Uvjerenja'
      DisplayWidth = 12
      FieldName = 'PraviBrojUvjerenja'
      Origin = 'DBVOC."BrojeviUvjerenja.DB".PraviBrojUvjerenja'
      Size = 10
    end
    object qReproDatum: TDateField
      DisplayLabel = 'Datum izd.'
      DisplayWidth = 14
      FieldName = 'Datum'
      Origin = 'DBVOC."BrojeviUvjerenja.DB".Datum'
    end
    object qReproDodatak: TStringField
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'Dodatak'
      Origin = 'DBVOC."BrojeviUvjerenja.DB".Dodatak'
      Size = 5
    end
  end
  object dsRepro: TDataSource
    DataSet = qRepro
    Left = 336
    Top = 168
  end
  object dsNotRepro: TDataSource
    DataSet = qNotRepro
    Left = 120
    Top = 208
  end
  object qNotRepro: TQuery
    Active = True
    DatabaseName = 'DBVoc'
    SQL.Strings = (
      'SELECT PraviBrojUvjerenja, Datum, Dodatak'
      'FROM "BrojeviUvjerenja.DB" Brojeviuvjerenja'
      'WHERE Dodatak not like '#39'R%'#39
      'ORDER BY PraviBrojUvjerenja')
    Left = 88
    Top = 208
    object StringField1: TStringField
      DisplayLabel = 'Broj Uvjerenja'
      DisplayWidth = 12
      FieldName = 'PraviBrojUvjerenja'
      Origin = 'DBVOC."BrojeviUvjerenja.DB".PraviBrojUvjerenja'
      Size = 10
    end
    object DateField1: TDateField
      DisplayLabel = 'Datum izd.'
      DisplayWidth = 14
      FieldName = 'Datum'
      Origin = 'DBVOC."BrojeviUvjerenja.DB".Datum'
    end
    object StringField2: TStringField
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'Dodatak'
      Origin = 'DBVOC."BrojeviUvjerenja.DB".Dodatak'
      Size = 5
    end
  end
end
