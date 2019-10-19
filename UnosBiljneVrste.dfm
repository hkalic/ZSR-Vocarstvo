inherited FUnosBiljneVrste: TFUnosBiljneVrste
  Caption = 'Šifarnik biljnih vrsta'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pregled: TPageControl
    ActivePage = Tunos
    inherited Tpregled: TTabSheet
      inherited TBar: TToolBar
        inherited DBNavigator3: TDBNavigator
          Hints.Strings = ()
        end
      end
    end
    inherited Tunos: TTabSheet
      inherited Panel1: TPanel
        Width = 725
        Height = 410
        inherited LbLStanje: TLabel
          Width = 711
        end
        object Label2: TLabel [1]
          Left = 138
          Top = 91
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'Naziv'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel [2]
          Left = 129
          Top = 131
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = 'Latinski'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel [3]
          Tag = 1
          Left = 109
          Top = 166
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Biljna grupa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label6: TLabel [4]
          Left = 96
          Top = 203
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = 'Naziv engleski'
          FocusControl = DBEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        inherited Panel2: TPanel
          Left = 619
          Height = 383
        end
        object DBEdit1: TDBEdit
          Tag = 128
          Left = 168
          Top = 88
          Width = 321
          Height = 21
          DataField = 'Naziv'
          DataSource = DS
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 168
          Top = 128
          Width = 385
          Height = 21
          DataField = 'Latinski'
          DataSource = DS
          TabOrder = 2
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Tag = 1
          Left = 168
          Top = 163
          Width = 200
          Height = 20
          DropDownCount = 8
          DropDownWidth = 200
          Color = clInfoBk
          DataField = 'BiljnaGrupa'
          DataSource = DS
          LookupField = 'Sifra'
          LookupDisplay = 'Naziv;Sifra'
          LookupSource = DVrsta
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Visible = False
          OnKeyPress = Kpress
        end
        object DBEdit5: TDBEdit
          Left = 168
          Top = 200
          Width = 313
          Height = 21
          DataField = 'NazivEngleski'
          DataSource = DS
          TabOrder = 4
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = Table1
  end
  object Table1: TTable
    AfterInsert = TsAfterEdit
    AfterEdit = TsAfterEdit
    DatabaseName = 'DBVoc'
    Filter = '2 / Biljne vrste'
    TableName = 'BiljnaVrstaVOC.DB'
    Left = 604
    Top = 282
    object Table1Sifra: TAutoIncField
      FieldName = 'Sifra'
      ReadOnly = True
    end
    object Table1Naziv: TStringField
      FieldName = 'Naziv'
      Size = 45
    end
    object Table1Latinski: TStringField
      FieldName = 'Latinski'
      Size = 50
    end
    object Table1BiljnaGrupa: TIntegerField
      DisplayLabel = 'Biljna grupa'
      FieldName = 'BiljnaGrupa'
      Visible = False
    end
    object Table1NazivEngleski: TStringField
      FieldName = 'NazivEngleski'
      Visible = False
      Size = 45
    end
  end
  object TGrupaBilja: TTable
    DatabaseName = 'DBVoc'
    IndexFieldNames = 'Naziv'
    ReadOnly = True
    TableName = 'GrupeBiljaVOC.DB'
    Left = 244
    Top = 273
  end
  object DVrsta: TDataSource
    DataSet = TGrupaBilja
    Left = 276
    Top = 273
  end
end
