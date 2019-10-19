inherited FUnosNazSadMat: TFUnosNazSadMat
  Caption = 'Šifarnik naziva sadnog mat.'
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
        Height = 417
        inherited LbLStanje: TLabel
          Width = 711
        end
        object Label2: TLabel [1]
          Left = 105
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
          Height = 390
        end
        object DBEdit1: TDBEdit
          Tag = 128
          Left = 140
          Top = 96
          Width = 209
          Height = 21
          DataField = 'Naziv'
          DataSource = DS
          TabOrder = 1
        end
        object DBCheckBox1: TDBCheckBox
          Left = 48
          Top = 136
          Width = 105
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Ide na Zapisnik 5 '
          DataField = 'Zap5'
          DataSource = DS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox2: TDBCheckBox
          Left = 48
          Top = 168
          Width = 105
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Ide na Zapisnik 6 '
          DataField = 'Zap6'
          DataSource = DS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox3: TDBCheckBox
          Left = 240
          Top = 136
          Width = 49
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Voæe'
          DataField = 'Voce'
          DataSource = DS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox4: TDBCheckBox
          Left = 240
          Top = 168
          Width = 49
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Loza'
          DataField = 'Loza'
          DataSource = DS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = Table1
  end
  inherited frPrintTable1: TfrPrintTable
    Left = 460
    Top = 66
  end
  object Table1: TTable
    AfterInsert = TsAfterEdit
    AfterEdit = TsAfterEdit
    DatabaseName = 'DBVoc'
    Filter = '2 / Naziv sad. mat.'
    TableName = 'NazivSadMatVOC.DB'
    Left = 556
    Top = 292
    object Table1Sifra: TAutoIncField
      FieldName = 'Sifra'
      ReadOnly = True
    end
    object Table1Naziv: TStringField
      FieldName = 'Naziv'
      Size = 35
    end
    object Table1Zap5: TBooleanField
      Alignment = taCenter
      DisplayLabel = 'Zap. br. 5'
      FieldName = 'Zap5'
    end
    object Table1Zap6: TBooleanField
      Alignment = taCenter
      DisplayLabel = 'Zap. br. 6'
      FieldName = 'Zap6'
    end
    object Table1Voce: TBooleanField
      DisplayLabel = 'Voæe'
      FieldName = 'Voce'
    end
    object Table1Loza: TBooleanField
      FieldName = 'Loza'
    end
  end
end
