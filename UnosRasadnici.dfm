inherited FUnosRasadnici: TFUnosRasadnici
  Left = 48
  Top = 169
  Caption = 'Šifarnik rasadnika'
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
        object Label6: TLabel [2]
          Left = 84
          Top = 139
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Mjesto'
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
          Left = 120
          Top = 96
          Width = 369
          Height = 21
          DataField = 'Naziv'
          DataSource = DS
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 120
          Top = 136
          Width = 209
          Height = 21
          DataField = 'Mjseto'
          DataSource = DS
          TabOrder = 2
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = Table1
    Left = 508
    Top = 249
  end
  object Table1: TTable
    AfterInsert = TsAfterEdit
    AfterEdit = TsAfterEdit
    DatabaseName = 'DBVoc'
    Filter = '2 / Rasadnici'
    TableName = 'RasadniciVOC.DB'
    Left = 548
    Top = 268
    object Table1Sifra: TAutoIncField
      FieldName = 'Sifra'
      ReadOnly = True
    end
    object Table1Naziv: TStringField
      FieldName = 'Naziv'
      Required = True
      Size = 60
    end
    object Table1Mjseto: TStringField
      DisplayLabel = 'Mjesto'
      FieldName = 'Mjseto'
      Size = 30
    end
  end
end
