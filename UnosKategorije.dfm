inherited FUnosKategorije: TFUnosKategorije
  Caption = 'Šifarnik kategorija'
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
          Left = 88
          Top = 99
          Width = 27
          Height = 13
          Caption = 'Naziv'
          FocusControl = DBEdit1
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
          Left = 120
          Top = 96
          Width = 209
          Height = 21
          DataField = 'Naziv'
          DataSource = DS
          TabOrder = 1
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
    Filter = '2 / Kategorije'
    TableName = 'KategorijaVOC.DB'
    Left = 580
    Top = 217
    object Table1Sifra: TAutoIncField
      FieldName = 'Sifra'
      ReadOnly = True
    end
    object Table1Naziv: TStringField
      FieldName = 'Naziv'
      Size = 30
    end
  end
end
