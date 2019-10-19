inherited FUnosSorte: TFUnosSorte
  Caption = 'Šifarnik sorti'
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
          Left = 80
          Top = 80
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
        object Label11: TLabel [2]
          Tag = 1
          Left = 48
          Top = 110
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = 'Za vrstu bilja'
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
          Left = 113
          Top = 76
          Width = 214
          Height = 21
          DataField = 'Naziv'
          DataSource = DS
          TabOrder = 1
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Tag = 1
          Left = 112
          Top = 107
          Width = 200
          Height = 20
          DropDownCount = 8
          DropDownWidth = 200
          Color = clInfoBk
          DataField = 'SifraBiljnaVrsta'
          DataSource = DS
          LookupField = 'Sifra'
          LookupDisplay = 'Naziv;Sifra'
          LookupSource = DVrsta
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnKeyPress = Kpress
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
    Filter = '2 / Sorte'
    TableName = 'SortaVOC.DB'
    Left = 604
    Top = 282
    object Table1Sifra: TAutoIncField
      FieldName = 'Sifra'
      ReadOnly = True
    end
    object Table1Naziv: TStringField
      FieldName = 'Naziv'
      Required = True
      Size = 35
    end
    object Table1SifraBiljnaVrsta: TIntegerField
      FieldName = 'SifraBiljnaVrsta'
      Required = True
      Visible = False
    end
  end
  object Tvrsta: TTable
    DatabaseName = 'DBVoc'
    IndexFieldNames = 'Naziv'
    ReadOnly = True
    TableName = 'BiljnaVrstaVOC.DB'
    Left = 236
    Top = 145
  end
  object DVrsta: TDataSource
    DataSet = Tvrsta
    Left = 268
    Top = 145
  end
end
