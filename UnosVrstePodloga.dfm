inherited FUnosVrstePodloga: TFUnosVrstePodloga
  Caption = 'Šifarnik vrste podloga'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pregled: TPageControl
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
        Height = 417
        inherited LbLStanje: TLabel
          Width = 711
        end
        object Label2: TLabel [1]
          Left = 78
          Top = 123
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
        inherited Panel2: TPanel
          Left = 619
          Height = 390
        end
        object DBEdit1: TDBEdit
          Tag = 128
          Left = 112
          Top = 120
          Width = 249
          Height = 21
          DataField = 'Naziv'
          DataSource = DS
          TabOrder = 1
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = TBaza
  end
  object TBaza: TTable
    AutoCalcFields = False
    AfterInsert = TsAfterEdit
    AfterEdit = TsAfterEdit
    DatabaseName = 'DBVoc'
    Filter = '2 / Vrste podloga'
    SessionName = 'Default'
    TableName = 'VrstePodloga'
    TableType = ttParadox
    Left = 600
    Top = 236
    object TBazaSifra: TAutoIncField
      FieldName = 'Sifra'
    end
    object TBazaNaziv: TStringField
      FieldName = 'Naziv'
      Size = 30
    end
  end
end
