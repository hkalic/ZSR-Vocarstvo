inherited FUnosPartneri: TFUnosPartneri
  Width = 738
  Height = 500
  Caption = 'Partneri'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pregled: TPageControl
    Width = 730
    Height = 473
    ActivePage = Tunos
    inherited Tpregled: TTabSheet
      inherited PanelGlava: TPanel
        Width = 722
      end
      inherited TBar: TToolBar
        Width = 722
        inherited DBNavigator3: TDBNavigator
          Hints.Strings = ()
        end
      end
      inherited PanelGrid: TPanel
        Width = 722
        Height = 361
        inherited DBGrid11: TRxDBGrid
          Width = 708
          Height = 347
        end
      end
    end
    inherited Tunos: TTabSheet
      inherited Panel1: TPanel
        Width = 722
        Height = 444
        inherited LbLStanje: TLabel
          Width = 708
        end
        object Label2: TLabel [1]
          Left = 105
          Top = 52
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
          Left = 108
          Top = 85
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'MBO'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel [3]
          Left = 119
          Top = 125
          Width = 13
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ptt'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel [4]
          Left = 58
          Top = 165
          Width = 74
          Height = 13
          Alignment = taRightJustify
          Caption = 'Mjesto / država'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel [5]
          Left = 108
          Top = 205
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ulica'
          FocusControl = DBEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel [6]
          Left = 96
          Top = 245
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = 'Telefon'
          FocusControl = DBEdit6
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel [7]
          Left = 115
          Top = 285
          Width = 17
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fax'
          FocusControl = DBEdit7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel [8]
          Left = 80
          Top = 322
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Napomena'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel [9]
          Left = 83
          Top = 361
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Upisni broj'
          FocusControl = DBEdit9
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel [10]
          Left = 73
          Top = 394
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'Datum upisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        inherited Panel2: TPanel
          Left = 616
          Height = 417
        end
        object DBEdit1: TDBEdit
          Tag = 128
          Left = 136
          Top = 48
          Width = 417
          Height = 21
          DataField = 'Naziv'
          DataSource = DS
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 136
          Top = 81
          Width = 82
          Height = 21
          DataField = 'Mb'
          DataSource = DS
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 136
          Top = 121
          Width = 64
          Height = 21
          DataField = 'Ptt'
          DataSource = DS
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 136
          Top = 161
          Width = 124
          Height = 21
          DataField = 'Mjesto'
          DataSource = DS
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 136
          Top = 201
          Width = 297
          Height = 21
          DataField = 'Ulica'
          DataSource = DS
          TabOrder = 5
        end
        object DBEdit6: TDBEdit
          Left = 136
          Top = 241
          Width = 124
          Height = 21
          DataField = 'Telefon'
          DataSource = DS
          TabOrder = 6
        end
        object DBEdit7: TDBEdit
          Left = 136
          Top = 281
          Width = 124
          Height = 21
          DataField = 'Fax'
          DataSource = DS
          TabOrder = 7
        end
        object DBEdit8: TDBEdit
          Left = 136
          Top = 321
          Width = 244
          Height = 21
          DataField = 'Napomena'
          DataSource = DS
          TabOrder = 8
        end
        object DBEdit9: TDBEdit
          Left = 136
          Top = 357
          Width = 124
          Height = 21
          DataField = 'UpisniBroj'
          DataSource = DS
          TabOrder = 9
        end
        object DBEdit10: TDBEdit
          Left = 136
          Top = 393
          Width = 123
          Height = 21
          DataField = 'DatumUpisa'
          DataSource = DS
          TabOrder = 10
        end
      end
    end
  end
  inherited DQ: TDataSource
    Top = 213
  end
  inherited DS: TDataSource
    DataSet = Table1
  end
  object Table1: TTable
    AfterInsert = TsAfterEdit
    AfterEdit = TsAfterEdit
    DatabaseName = 'DBVoc'
    Filter = '2 / Partneri'
    TableName = 'PartneriVOC.DB'
    Left = 604
    Top = 274
    object Table1Sifra: TAutoIncField
      FieldName = 'Sifra'
      ReadOnly = True
    end
    object Table1Naziv: TStringField
      FieldName = 'Naziv'
      Required = True
      Size = 65
    end
    object Table1Mb: TStringField
      FieldName = 'Mb'
      Size = 13
    end
    object Table1Ptt: TIntegerField
      FieldName = 'Ptt'
    end
    object Table1Mjesto: TStringField
      FieldName = 'Mjesto'
    end
    object Table1Ulica: TStringField
      FieldName = 'Ulica'
      Size = 50
    end
    object Table1Telefon: TStringField
      FieldName = 'Telefon'
    end
    object Table1Fax: TStringField
      FieldName = 'Fax'
    end
    object Table1Napomena: TStringField
      FieldName = 'Napomena'
      Size = 40
    end
    object Table1UpisniBroj: TStringField
      FieldName = 'UpisniBroj'
      Size = 10
    end
    object Table1DatumUpisa: TDateField
      FieldName = 'DatumUpisa'
    end
  end
end
