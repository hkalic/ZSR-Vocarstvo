object FZahtjevVocarstvo: TFZahtjevVocarstvo
  Left = 211
  Top = 159
  Width = 915
  Height = 608
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Vo'#263'arski dio'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 907
    Height = 581
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = ' Podaci o prijavama  '
      object Splitter2: TSplitter
        Left = 0
        Top = 209
        Width = 899
        Height = 6
        Cursor = crVSplit
        Align = alTop
        Beveled = True
        ResizeStyle = rsLine
      end
      object Panel3: TPanel
        Left = 0
        Top = 215
        Width = 899
        Height = 335
        Align = alClient
        TabOrder = 0
        object ToolBar1: TToolBar
          Left = 1
          Top = 1
          Width = 897
          Height = 25
          AutoSize = True
          ButtonWidth = 43
          Caption = 'ToolBar2'
          EdgeInner = esNone
          Images = Podaci.Images
          List = True
          ShowCaptions = True
          TabOrder = 0
          Wrapable = False
          object wwDBNavigator1: TwwDBNavigator
            Left = 0
            Top = 2
            Width = 275
            Height = 21
            DataSource = DZahtDetail
            Flat = False
            ShowHint = True
            RepeatInterval.InitialDelay = 500
            RepeatInterval.Interval = 100
            Align = alLeft
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentShowHint = False
            object wwNavButton6: TwwNavButton
              Left = 0
              Top = 0
              Width = 69
              Height = 21
              Hint = 'Unos novog'
              ImageIndex = 0
              NumGlyphs = 2
              ShowText = True
              Spacing = 4
              Transparent = False
              Caption = 'Novi'
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 0
              Style = nbsInsert
            end
            object wwNavButton7: TwwNavButton
              Left = 69
              Top = 0
              Width = 69
              Height = 21
              Hint = 'Brisanje ozna'#263'enog podatka'
              ImageIndex = 0
              NumGlyphs = 2
              ShowText = True
              Spacing = 4
              Transparent = False
              Caption = 'Obri'#353'i'
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 1
              Style = nbsDelete
            end
            object wwNavButton8: TwwNavButton
              Left = 138
              Top = 0
              Width = 69
              Height = 21
              Hint = 'Izmjena ozna'#263'enog podatka'
              ImageIndex = 0
              NumGlyphs = 2
              ShowText = True
              Spacing = 4
              Transparent = False
              Caption = 'Izmjena'
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 2
              Style = nbsEdit
            end
            object wwNavButton9: TwwNavButton
              Left = 207
              Top = 0
              Width = 68
              Height = 21
              Hint = 'Obnovi podatke'
              ImageIndex = 0
              NumGlyphs = 2
              ShowText = True
              Spacing = 4
              Transparent = False
              Caption = 'Obnovi'
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 3
              Style = nbsRefresh
            end
          end
        end
        object dxDBGrid3: TdxDBGrid
          Left = 1
          Top = 26
          Width = 897
          Height = 308
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'Sifra'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Color = clBtnFace
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnDblClick = dxDBGrid3DblClick
          BandFont.Charset = EASTEUROPE_CHARSET
          BandFont.Color = clBlack
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = DZahtDetail
          Filter.Criteria = {00000000}
          GridLineColor = clGray
          HeaderColor = clSkyBlue
          HeaderFont.Charset = EASTEUROPE_CHARSET
          HeaderFont.Color = clNavy
          HeaderFont.Height = -11
          HeaderFont.Name = 'MS Sans Serif'
          HeaderFont.Style = []
          OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoSyncSelection, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
          PreviewFont.Charset = EASTEUROPE_CHARSET
          PreviewFont.Color = clBlack
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          OnCustomDrawCell = dxDBGrid3CustomDrawCell
          object dxDBGrid3LookBiljnaVrsta: TdxDBGridColumn
            HeaderAlignment = taCenter
            Sorted = csUp
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LookBiljnaVrsta'
            SortedOrder = 0
          end
          object dxDBGrid3LookNazSadMat: TdxDBGridColumn
            HeaderAlignment = taCenter
            Sorted = csUp
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LookNazSadMat'
            SortedOrder = 5
          end
          object dxDBGrid3LookSorta: TdxDBGridColumn
            HeaderAlignment = taCenter
            Sorted = csUp
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LookSorta'
            SortedOrder = 1
          end
          object dxDBGrid3LookKlonSorte: TdxDBGridColumn
            HeaderAlignment = taCenter
            Sorted = csUp
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LookKlonSorte'
            SortedOrder = 2
          end
          object dxDBGrid3LookPodloga: TdxDBGridColumn
            HeaderAlignment = taCenter
            Sorted = csUp
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LookPodloga'
            SortedOrder = 3
          end
          object dxDBGrid3LookKlonPodloge: TdxDBGridColumn
            HeaderAlignment = taCenter
            Sorted = csUp
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LookKlonPodloge'
            SortedOrder = 4
          end
          object dxDBGrid3LookKategorija: TdxDBGridColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LookKategorija'
          end
          object dxDBGrid3KolicinaPrijava: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KolicinaPrijava'
          end
          object dxDBGrid3KolicinaPreg1: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KolicinaPreg1'
          end
          object dxDBGrid3KolicinaPreg2: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KolicinaPreg2'
          end
          object dxDBGrid3KolUvjerenje: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KolUvjerenje'
          end
          object dxDBGrid3KolicinaPupovaPreg1: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KolicinaPupovaPreg1'
          end
          object dxDBGrid3KolicinaStabala: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KolicinaStabala'
          end
          object dxDBGrid3BrojUvjerenja: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'BrojUvjerenja'
          end
          object dxDBGrid3JedMj: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'JedMj'
          end
          object dxDBGrid3SortaDokumentUvoza: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SortaDokumentUvoza'
          end
          object dxDBGrid3PodlogaDokumentUvoza: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PodlogaDokumentUvoza'
          end
          object dxDBGrid3LookSortaDobav: TdxDBGridColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LookSortaDobav'
          end
          object dxDBGrid3LookPodlogaDobav: TdxDBGridColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LookPodlogaDobav'
          end
          object dxDBGrid3Sifra: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Sifra'
          end
          object dxDBGrid3SifraZahtMast: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SifraZahtMast'
          end
          object dxDBGrid3SifraBiljnaVrsta: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SifraBiljnaVrsta'
          end
          object dxDBGrid3SifraSorta: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SifraSorta'
          end
          object dxDBGrid3SifraKlonSorte: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SifraKlonSorte'
          end
          object dxDBGrid3SifraPodloga: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SifraPodloga'
          end
          object dxDBGrid3SifraKlonPodloge: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SifraKlonPodloge'
          end
          object dxDBGrid3SifraKategorija: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SifraKategorija'
          end
          object dxDBGrid3SortaUvoz: TdxDBGridCheckColumn
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SortaUvoz'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object dxDBGrid3SortaZemljaUvoza: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SortaZemljaUvoza'
          end
          object dxDBGrid3PodlogaUvoz: TdxDBGridCheckColumn
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PodlogaUvoz'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object dxDBGrid3PodlogazemljaUvoza: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PodlogazemljaUvoza'
          end
          object dxDBGrid3PodlogaDobavljac: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PodlogaDobavljac'
          end
          object dxDBGrid3SortaDobavljac: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SortaDobavljac'
          end
          object dxDBGrid3NeideNaUvj: TdxDBGridCheckColumn
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NeideNaUvj'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object dxDBGrid3Napomena: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Napomena'
          end
          object dxDBGrid3SifraNazSadMat: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SifraNazSadMat'
          end
          object dxDBGrid3JedMjPerg1: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'JedMjPerg1'
          end
          object dxDBGrid3JedMjPreg2: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'JedMjPreg2'
          end
          object dxDBGrid3JedMjKolUvjer: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'JedMjKolUvjer'
          end
          object dxDBGrid3PodlogaKolVlastita: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PodlogaKolVlastita'
          end
          object dxDBGrid3PodlogaKolNabav: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PodlogaKolNabav'
          end
          object dxDBGrid3SortaKolVlastita: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SortaKolVlastita'
          end
          object dxDBGrid3SortaKolNabav: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SortaKolNabav'
          end
        end
        object wwDBLookupCombo2: TwwDBLookupCombo
          Left = 72
          Top = 40
          Width = 105
          Height = 24
          DropDownAlignment = taLeftJustify
          DataField = 'LookBiljnaVrsta'
          DataSource = DZahtDetail
          LookupTable = wwTable1
          LookupField = 'Sifra'
          TabOrder = 2
          Visible = False
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = True
          ShowMatchText = True
        end
        object wwDBLookupCombo3: TwwDBLookupCombo
          Left = 256
          Top = 48
          Width = 105
          Height = 24
          DropDownAlignment = taLeftJustify
          DataField = 'LookSorta'
          DataSource = DZahtDetail
          LookupTable = wwTable7
          LookupField = 'Sifra'
          TabOrder = 3
          Visible = False
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = True
          ShowMatchText = True
        end
        object wwDBLookupCombo5: TwwDBLookupCombo
          Left = 520
          Top = 40
          Width = 105
          Height = 24
          DropDownAlignment = taLeftJustify
          DataField = 'LookKlonSorte'
          DataSource = DZahtDetail
          LookupTable = wwTable4
          LookupField = 'Sifra'
          TabOrder = 4
          Visible = False
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = True
          ShowMatchText = True
        end
        object wwDBLookupCombo6: TwwDBLookupCombo
          Left = 640
          Top = 40
          Width = 105
          Height = 24
          DropDownAlignment = taLeftJustify
          DataField = 'LookPodloga'
          DataSource = DZahtDetail
          LookupTable = wwTable5
          LookupField = 'Sifra'
          TabOrder = 5
          Visible = False
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = True
          ShowMatchText = True
        end
        object wwDBLookupCombo7: TwwDBLookupCombo
          Left = 472
          Top = 112
          Width = 105
          Height = 24
          DropDownAlignment = taLeftJustify
          DataField = 'LookKlonPodloge'
          DataSource = DZahtDetail
          LookupTable = wwTable6
          LookupField = 'Sifra'
          TabOrder = 6
          Visible = False
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = True
          ShowMatchText = True
        end
        object wwDBLookupCombo4: TwwDBLookupCombo
          Left = 392
          Top = 40
          Width = 105
          Height = 24
          DropDownAlignment = taLeftJustify
          DataField = 'LookKategorija'
          DataSource = DZahtDetail
          LookupTable = wwTable3
          LookupField = 'Sifra'
          TabOrder = 7
          Visible = False
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = True
          ShowMatchText = True
        end
        object wwDBLookupCombo10: TwwDBLookupCombo
          Left = 584
          Top = 112
          Width = 105
          Height = 24
          DropDownAlignment = taLeftJustify
          DataField = 'LookSortaDobav'
          DataSource = DZahtDetail
          LookupTable = wwTable10
          LookupField = 'Sifra'
          TabOrder = 8
          Visible = False
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = True
          ShowMatchText = True
        end
        object wwDBLookupCombo11: TwwDBLookupCombo
          Left = 624
          Top = 152
          Width = 105
          Height = 24
          DropDownAlignment = taLeftJustify
          DataField = 'LookPodlogaDobav'
          DataSource = DZahtDetail
          LookupTable = wwTable11
          LookupField = 'Sifra'
          TabOrder = 9
          Visible = False
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = True
          ShowMatchText = True
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 899
        Height = 209
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 1
        object Splitter1: TSplitter
          Left = 345
          Top = 2
          Width = 7
          Height = 205
          Cursor = crHSplit
          Beveled = True
          ResizeStyle = rsLine
        end
        object Panel4: TPanel
          Left = 2
          Top = 2
          Width = 343
          Height = 205
          Align = alLeft
          TabOrder = 0
          object ToolBar3: TToolBar
            Left = 1
            Top = 1
            Width = 341
            Height = 26
            ButtonWidth = 43
            Caption = 'ToolBar2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Images = Podaci.Images
            List = True
            ParentFont = False
            ShowCaptions = True
            TabOrder = 0
            object wwDBNavigator2: TwwDBNavigator
              Left = 0
              Top = 2
              Width = 217
              Height = 22
              AutosizeStyle = asSizeNavButtons
              DataSource = DUvjerenje
              Flat = False
              ShowHint = True
              RepeatInterval.InitialDelay = 500
              RepeatInterval.Interval = 100
              Align = alRight
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentShowHint = False
              object wwNavButton1: TwwNavButton
                Left = 0
                Top = 0
                Width = 73
                Height = 22
                Hint = 'Unos novog'
                ImageIndex = 0
                NumGlyphs = 2
                ShowText = True
                Spacing = 4
                Transparent = False
                Caption = 'Novi'
                DisabledTextColors.ShadeColor = clGray
                DisabledTextColors.HighlightColor = clBtnHighlight
                Index = 0
                Style = nbsInsert
              end
              object wwNavButton3: TwwNavButton
                Left = 73
                Top = 0
                Width = 72
                Height = 22
                Hint = 'Izmjena ozna'#263'enog podatka'
                ImageIndex = 0
                NumGlyphs = 2
                ShowText = True
                Spacing = 4
                Transparent = False
                Caption = 'Izmjena'
                DisabledTextColors.ShadeColor = clGray
                DisabledTextColors.HighlightColor = clBtnHighlight
                Index = 1
                Style = nbsEdit
              end
              object wwNavButton4: TwwNavButton
                Left = 145
                Top = 0
                Width = 72
                Height = 22
                Hint = 'Obnovi podatke'
                ImageIndex = 0
                NumGlyphs = 2
                ShowText = True
                Spacing = 4
                Transparent = False
                Caption = 'Obnovi'
                DisabledTextColors.ShadeColor = clGray
                DisabledTextColors.HighlightColor = clBtnHighlight
                Index = 2
                Style = nbsRefresh
              end
            end
          end
          object dxDBGrid1: TdxDBGrid
            Left = 1
            Top = 27
            Width = 341
            Height = 177
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'LookPodnositelj'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            Color = clBtnFace
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnDblClick = wwDBGrid3DblClick
            BandFont.Charset = EASTEUROPE_CHARSET
            BandFont.Color = clBlack
            BandFont.Height = -13
            BandFont.Name = 'Arial'
            BandFont.Style = []
            DataSource = DUvjerenje
            Filter.Criteria = {00000000}
            GridLineColor = clGray
            HeaderColor = clSkyBlue
            HeaderFont.Charset = EASTEUROPE_CHARSET
            HeaderFont.Color = clNavy
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = []
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlack
            PreviewFont.Height = -13
            PreviewFont.Name = 'Arial'
            PreviewFont.Style = [fsBold, fsItalic]
            object dxDBGrid1Sifra: TdxDBGridMaskColumn
              Alignment = taCenter
              HeaderAlignment = taCenter
              Width = 51
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Sifra'
            end
            object dxDBGrid1DatumPodnosenja: TdxDBGridDateColumn
              Alignment = taLeftJustify
              HeaderAlignment = taCenter
              Width = 89
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DatumPodnosenja'
              ShowButtonStyle = sbNone
            end
            object dxDBGrid1LookPodnositelj: TdxDBGridColumn
              Alignment = taLeftJustify
              Caption = 'Podnositelj prijave'
              HeaderAlignment = taCenter
              Sorted = csUp
              Width = 274
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LookPodnositelj'
            end
            object dxDBGrid1ZdravUvje: TdxDBGridMemoColumn
              Visible = False
              Width = 182
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ZdravUvje'
            end
            object dxDBGrid1Domaca: TdxDBGridCheckColumn
              Visible = False
              Width = 105
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Domaca'
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object dxDBGrid1SifraPodnositeljZaht: TdxDBGridMaskColumn
              Visible = False
              Width = 105
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SifraPodnositeljZaht'
            end
            object dxDBGrid1UpisniBroj: TdxDBGridMaskColumn
              Visible = False
              Width = 67
              BandIndex = 0
              RowIndex = 0
              FieldName = 'UpisniBroj'
            end
            object dxDBGrid1DatumUpisa: TdxDBGridDateColumn
              Visible = False
              Width = 68
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DatumUpisa'
            end
            object dxDBGrid1Column9: TdxDBGridColumn
              Caption = 'Datum podno'#353'enja'
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'lookDatumX'
            end
          end
        end
        object Panel5: TPanel
          Left = 352
          Top = 2
          Width = 545
          Height = 205
          Align = alClient
          TabOrder = 1
          object dxDBGrid2: TdxDBGrid
            Left = 1
            Top = 28
            Width = 543
            Height = 176
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'LookRasadnik'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            Color = clBtnFace
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnDblClick = dxDBGrid2DblClick
            BandFont.Charset = EASTEUROPE_CHARSET
            BandFont.Color = clNavy
            BandFont.Height = -13
            BandFont.Name = 'Arial'
            BandFont.Style = [fsBold, fsItalic]
            DataSource = DzahtMaster
            Filter.Criteria = {00000000}
            GridLineColor = clGray
            HeaderColor = clSkyBlue
            HeaderFont.Charset = EASTEUROPE_CHARSET
            HeaderFont.Color = clNavy
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = []
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -13
            PreviewFont.Name = 'Arial'
            PreviewFont.Style = [fsBold, fsItalic]
            object dxDBGrid2LookRasadnik: TdxDBGridColumn
              HeaderAlignment = taCenter
              Sorted = csUp
              Width = 330
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LookRasadnik'
            end
            object dxDBGrid2Sifra: TdxDBGridMaskColumn
              Visible = False
              Width = 84
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Sifra'
            end
            object dxDBGrid2SifraRasadnik: TdxDBGridMaskColumn
              Visible = False
              Width = 95
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SifraRasadnik'
            end
            object dxDBGrid2Zapisnik1: TdxDBGridMaskColumn
              Visible = False
              Width = 164
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Zapisnik1'
            end
            object dxDBGrid2DatumZap1: TdxDBGridDateColumn
              Visible = False
              Width = 108
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DatumZap1'
            end
            object dxDBGrid2Zapisnik2: TdxDBGridMaskColumn
              Visible = False
              Width = 164
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Zapisnik2'
            end
            object dxDBGrid2DatumZap2: TdxDBGridDateColumn
              Visible = False
              Width = 108
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DatumZap2'
            end
            object dxDBGrid2SifraUvjerenje: TdxDBGridMaskColumn
              Visible = False
              Width = 95
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SifraUvjerenje'
            end
          end
          object ToolBar4: TToolBar
            Left = 1
            Top = 1
            Width = 543
            Height = 27
            ButtonWidth = 67
            Caption = 'ToolBar2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Images = Podaci.Images
            List = True
            ParentFont = False
            ShowCaptions = True
            TabOrder = 0
            object wwDBNavigator4: TwwDBNavigator
              Left = 0
              Top = 2
              Width = 198
              Height = 22
              AutosizeStyle = asSizeNavButtons
              DataSource = DzahtMaster
              Flat = False
              ShowHint = True
              RepeatInterval.InitialDelay = 500
              RepeatInterval.Interval = 100
              Align = alRight
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentShowHint = False
              object wwNavButton5: TwwNavButton
                Left = 0
                Top = 0
                Width = 50
                Height = 22
                Hint = 'Unos novog'
                ImageIndex = 0
                NumGlyphs = 2
                ShowText = True
                Spacing = 4
                Transparent = False
                Caption = 'Novi'
                DisabledTextColors.ShadeColor = clGray
                DisabledTextColors.HighlightColor = clBtnHighlight
                Index = 0
                Style = nbsInsert
              end
              object wwNavButton13: TwwNavButton
                Left = 50
                Top = 0
                Width = 50
                Height = 22
                Hint = 'Brisanje ozna'#263'enog podatka'
                ImageIndex = 0
                NumGlyphs = 2
                ShowText = True
                Spacing = 4
                Transparent = False
                Caption = 'Obri'#353'i'
                DisabledTextColors.ShadeColor = clGray
                DisabledTextColors.HighlightColor = clBtnHighlight
                Index = 1
                Style = nbsDelete
              end
              object wwNavButton14: TwwNavButton
                Left = 100
                Top = 0
                Width = 49
                Height = 22
                Hint = 'Izmjena ozna'#263'enog podatka'
                ImageIndex = 0
                NumGlyphs = 2
                ShowText = True
                Spacing = 4
                Transparent = False
                Caption = 'Izmjena'
                DisabledTextColors.ShadeColor = clGray
                DisabledTextColors.HighlightColor = clBtnHighlight
                Index = 2
                Style = nbsEdit
              end
              object wwNavButton15: TwwNavButton
                Left = 149
                Top = 0
                Width = 49
                Height = 22
                Hint = 'Obnovi podatke'
                ImageIndex = 0
                NumGlyphs = 2
                ShowText = True
                Spacing = 4
                Transparent = False
                Caption = 'Obnovi'
                DisabledTextColors.ShadeColor = clGray
                DisabledTextColors.HighlightColor = clBtnHighlight
                Index = 3
                Style = nbsRefresh
              end
            end
            object ToolButton5: TToolButton
              Left = 198
              Top = 2
              Width = 8
              Caption = 'ToolButton5'
              ImageIndex = 12
              Style = tbsSeparator
            end
            object ToolButton3: TToolButton
              Left = 206
              Top = 2
              Caption = 'Zapisnik'
              DropdownMenu = PopupMenu1
              ImageIndex = 7
              OnClick = ToolButton3Click
            end
            object ToolButton4: TToolButton
              Left = 273
              Top = 2
              Caption = 'Otvori'
              ImageIndex = 11
              OnClick = ToolButton4Click
            end
            object ToolButton7: TToolButton
              Left = 340
              Top = 2
              Width = 8
              Caption = 'ToolButton7'
              ImageIndex = 27
              Style = tbsSeparator
            end
            object ToolButton6: TToolButton
              Left = 348
              Top = 2
              Caption = 'RePrint'
              ImageIndex = 26
              OnClick = ToolButton6Click
            end
          end
          object wwDBComboBox2: TwwDBComboBox
            Left = 199
            Top = 160
            Width = 121
            Height = 24
            ShowButton = True
            Style = csDropDown
            MapList = False
            AllowClearKey = False
            DataField = 'Dodatak'
            DataSource = DBrUvjerenja
            DropDownCount = 8
            HistoryList.FileName = 'aa.ini.ini'
            ItemHeight = 0
            Items.Strings = (
              'VS'
              'LC'
              'R')
            Sorted = False
            TabOrder = 2
            UnboundDataType = wwDefault
            Visible = False
          end
        end
        object wwDBLookupCombo8: TwwDBLookupCombo
          Left = 520
          Top = 104
          Width = 73
          Height = 24
          DropDownAlignment = taLeftJustify
          DataField = 'LookRasadnik'
          DataSource = DzahtMaster
          LookupTable = wwTable8
          LookupField = 'Sifra'
          TabOrder = 2
          Visible = False
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = True
          ShowMatchText = True
        end
        object wwDBLookupCombo1: TwwDBLookupCombo
          Left = 256
          Top = 64
          Width = 177
          Height = 24
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Naziv'#9'65'#9'Naziv'#9'F')
          DataField = 'LookPodnositelj'
          DataSource = DUvjerenje
          LookupTable = wwTable2
          LookupField = 'Sifra'
          TabOrder = 3
          Visible = False
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = True
          ShowMatchText = True
        end
        object wwDBLookupCombo9: TwwDBLookupCombo
          Left = 424
          Top = 176
          Width = 105
          Height = 24
          DropDownAlignment = taLeftJustify
          DataField = 'LookNazSadMat'
          DataSource = DZahtDetail
          LookupTable = wwTable9
          LookupField = 'Sifra'
          TabOrder = 4
          Visible = False
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = True
          ShowMatchText = True
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = ' Podaci o uvjerenjima  '
      ImageIndex = 1
      object Splitter3: TSplitter
        Left = 361
        Top = 0
        Width = 7
        Height = 550
        Cursor = crHSplit
        Beveled = True
        ResizeStyle = rsLine
      end
      object Panel6: TPanel
        Left = 368
        Top = 0
        Width = 531
        Height = 550
        Align = alClient
        TabOrder = 0
        object ToolBar2: TToolBar
          Left = 1
          Top = 1
          Width = 529
          Height = 26
          ButtonWidth = 72
          Caption = 'ToolBar2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Images = Podaci.Images
          List = True
          ParentFont = False
          ShowCaptions = True
          TabOrder = 0
          object wwDBNavigator3: TwwDBNavigator
            Left = 0
            Top = 2
            Width = 113
            Height = 22
            AutosizeStyle = asSizeNavButtons
            DataSource = DBrUvjerenja
            Flat = False
            ShowHint = True
            RepeatInterval.InitialDelay = 500
            RepeatInterval.Interval = 100
            Align = alRight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentShowHint = False
            object wwNavButton2: TwwNavButton
              Left = 0
              Top = 0
              Width = 57
              Height = 22
              Hint = 'Unos novog'
              ImageIndex = 0
              NumGlyphs = 2
              ShowText = True
              Spacing = 4
              Transparent = False
              Caption = 'Novi'
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 0
              Style = nbsInsert
            end
            object wwNavButton10: TwwNavButton
              Left = 57
              Top = 0
              Width = 56
              Height = 22
              Hint = 'Brisanje ozna'#263'enog podatka'
              ImageIndex = 0
              NumGlyphs = 2
              ShowText = True
              Spacing = 4
              Transparent = False
              Caption = 'Obri'#353'i'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 1
              Style = nbsDelete
            end
          end
          object ToolButton2: TToolButton
            Left = 113
            Top = 2
            Caption = 'Uvjerenja'
            DropdownMenu = PopupMenu2
            ImageIndex = 42
          end
          object ToolButton9: TToolButton
            Left = 185
            Top = 2
            Caption = 'Rje'#353'enje'
            DropdownMenu = PopupMenu3
            ImageIndex = 49
          end
        end
        object wwDBGrid1: TwwDBGrid
          Left = 1
          Top = 27
          Width = 529
          Height = 522
          Selected.Strings = (
            'Datum'#9'21'#9'Datum izdavanja'#9#9
            'Dodatak'#9'8'#9' '#9#9
            'PraviBrojUvjerenja'#9'25'#9'Broj uvjerenja'#9#9)
          IniAttributes.Enabled = True
          IniAttributes.FileName = 'dok.ini'
          IniAttributes.Delimiter = ';;'
          IniAttributes.CheckNewFields = True
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          Color = clBtnFace
          DataSource = DBrUvjerenja
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 1
          TitleAlignment = taCenter
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnCalcTitleAttributes = wwDBGrid2CalcTitleAttributes
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 361
        Height = 550
        Align = alLeft
        TabOrder = 1
        object wwDBGrid5: TwwDBGrid
          Left = 9
          Top = 353
          Width = 312
          Height = 128
          Selected.Strings = (
            'Sifra'#9'6'#9'R.br.'
            'DatumPodnosenja'#9'13'#9'Dat.podno'#353'enja'
            'LookPodnositelj'#9'45'#9'LookPodnositelj'
            'lookDatumX'#9'18'#9'lookDatumX')
          IniAttributes.Enabled = True
          IniAttributes.FileName = 'dok.ini'
          IniAttributes.Delimiter = ';;'
          IniAttributes.CheckNewFields = True
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Color = clBtnFace
          DataSource = DUvjerenje
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taCenter
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnCalcTitleAttributes = wwDBGrid2CalcTitleAttributes
          object wwIButton1: TwwIButton
            Left = 0
            Top = 0
            Width = 13
            Height = 22
            AllowAllUp = True
          end
        end
        object dxUvjerenje: TdxDBGrid
          Left = 1
          Top = 1
          Width = 359
          Height = 548
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'LookPodnositelj'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Color = clBtnFace
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          BandFont.Charset = EASTEUROPE_CHARSET
          BandFont.Color = clBlack
          BandFont.Height = -13
          BandFont.Name = 'Arial'
          BandFont.Style = [fsBold, fsItalic]
          DataSource = DUvjerenje
          Filter.Criteria = {00000000}
          GridLineColor = clGray
          HeaderColor = clSkyBlue
          HeaderFont.Charset = EASTEUROPE_CHARSET
          HeaderFont.Color = clNavy
          HeaderFont.Height = -11
          HeaderFont.Name = 'MS Sans Serif'
          HeaderFont.Style = []
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -13
          PreviewFont.Name = 'Arial'
          PreviewFont.Style = [fsBold, fsItalic]
          object dxUvjerenjeSifra: TdxDBGridMaskColumn
            Alignment = taCenter
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 36
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Sifra'
          end
          object dxUvjerenjeDatumPodnosenja: TdxDBGridDateColumn
            Alignment = taCenter
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 98
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DatumPodnosenja'
          end
          object dxUvjerenjeLookPodnositelj: TdxDBGridColumn
            Alignment = taLeftJustify
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            HeaderAlignment = taCenter
            Sorted = csUp
            Width = 231
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LookPodnositelj'
          end
        end
      end
    end
  end
  object TZahtMaster: TwwTable
    Active = True
    AfterInsert = TZahtMasterAfterInsert
    AfterEdit = TZahtMasterAfterEdit
    DatabaseName = 'DBVoc'
    FieldDefs = <
      item
        Name = 'Sifra'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'SifraUvjerenje'
        DataType = ftInteger
      end
      item
        Name = 'SifraRasadnik'
        DataType = ftInteger
      end
      item
        Name = 'Zapisnik1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DatumZap1'
        DataType = ftDate
      end
      item
        Name = 'Zapisnik2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DatumZap2'
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Fields = 'Sifra'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'IxSifuvj'
        Fields = 'SifraUvjerenje'
        Options = [ixCaseInsensitive]
      end>
    IndexName = 'IxSifuvj'
    MasterFields = 'Sifra'
    MasterSource = DUvjerenje
    StoreDefs = True
    TableName = 'ZahtVocariMaster.DB'
    LookupFields.Strings = (
      'LookRasadnik;DBVoc;RasadniciVOC.DB;Naziv;;Sifra;Y')
    LookupLinks.Strings = (
      'SifraRasadnik;Sifra')
    ControlType.Strings = (
      'LookRasadnik;CustomEdit;wwDBLookupCombo8;F')
    PictureMasks.Strings = (
      'DatumPodnosenja'#9'##.##.####'#9'T'#9'T'
      'RokVazenjaZahtjev'#9'##.##.####'#9'T'#9'T'
      'DatumVaziDoDekl'#9'##.##.####'#9'T'#9'T'
      'DatumSvjed'#9'##.##.####'#9'T'#9'T'
      'DatumIzdavanjaDekl'#9'##.##.####'#9'T'#9'T')
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 696
    Top = 120
    object TZahtMasterLookRasadnik: TStringField
      DisplayLabel = 'Rasadnik'
      DisplayWidth = 41
      FieldKind = fkCalculated
      FieldName = 'LookRasadnik'
      Size = 60
      Calculated = True
    end
    object TZahtMasterSifra: TAutoIncField
      DisplayLabel = 'Broj evid.'
      DisplayWidth = 10
      FieldName = 'Sifra'
      ReadOnly = True
      Visible = False
    end
    object TZahtMasterSifraRasadnik: TIntegerField
      DisplayWidth = 10
      FieldName = 'SifraRasadnik'
      Visible = False
    end
    object TZahtMasterZapisnik1: TStringField
      DisplayLabel = 'Zapisnik pregled PRVI'
      DisplayWidth = 20
      FieldName = 'Zapisnik1'
      Visible = False
    end
    object TZahtMasterDatumZap1: TDateField
      DisplayLabel = 'Datum'
      DisplayWidth = 13
      FieldName = 'DatumZap1'
      Visible = False
    end
    object TZahtMasterZapisnik2: TStringField
      DisplayLabel = 'Zapisnik pregled DRUGI'
      DisplayWidth = 20
      FieldName = 'Zapisnik2'
      Visible = False
    end
    object TZahtMasterDatumZap2: TDateField
      DisplayLabel = 'Datum'
      DisplayWidth = 13
      FieldName = 'DatumZap2'
      Visible = False
    end
    object TZahtMasterSifraUvjerenje: TIntegerField
      FieldName = 'SifraUvjerenje'
      Visible = False
    end
  end
  object DzahtMaster: TwwDataSource
    DataSet = TZahtMaster
    Left = 664
    Top = 120
  end
  object TZahtDetail: TwwTable
    Active = True
    AfterInsert = TZahtDetailAfterInsert
    AfterEdit = TZahtDetailAfterEdit
    BeforePost = TZahtDetailBeforePost
    DatabaseName = 'DBVoc'
    Filter = 'NeideNaZap<>True'
    FieldDefs = <
      item
        Name = 'Sifra'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'SifraZahtMast'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SifraBiljnaVrsta'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SifraSorta'
        DataType = ftInteger
      end
      item
        Name = 'SifraKlonSorte'
        DataType = ftInteger
      end
      item
        Name = 'SifraPodloga'
        DataType = ftInteger
      end
      item
        Name = 'SifraKlonPodloge'
        DataType = ftInteger
      end
      item
        Name = 'SifraKategorija'
        DataType = ftInteger
      end
      item
        Name = 'SifraNazSadMat'
        DataType = ftInteger
      end
      item
        Name = 'JedMj'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'KolicinaPrijava'
        DataType = ftFloat
      end
      item
        Name = 'KolicinaPreg1'
        DataType = ftFloat
      end
      item
        Name = 'JedMjPerg1'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'KolicinaPreg2'
        DataType = ftFloat
      end
      item
        Name = 'JedMjPreg2'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'KolicinaStabala'
        DataType = ftInteger
      end
      item
        Name = 'KolicinaPupovaPreg1'
        DataType = ftFloat
      end
      item
        Name = 'JedMJPupova'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'SortaKolVlastita'
        DataType = ftFloat
      end
      item
        Name = 'SortaKolNabav'
        DataType = ftFloat
      end
      item
        Name = 'SortaUvoz'
        DataType = ftBoolean
      end
      item
        Name = 'SortaDobavljac'
        DataType = ftInteger
      end
      item
        Name = 'SortaZemljaUvoza'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PodlogaKolVlastita'
        DataType = ftFloat
      end
      item
        Name = 'PodlogaKolNabav'
        DataType = ftFloat
      end
      item
        Name = 'PodlogaUvoz'
        DataType = ftBoolean
      end
      item
        Name = 'PodlogaDobavljac'
        DataType = ftInteger
      end
      item
        Name = 'PodlogazemljaUvoza'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'SortaDokumentUvoza'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PodlogaDokumentUvoza'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'KolUvjerenje'
        DataType = ftFloat
      end
      item
        Name = 'JedMjKolUvjer'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'NeideNaUvj'
        DataType = ftBoolean
      end
      item
        Name = 'NeideNaZap'
        DataType = ftBoolean
      end
      item
        Name = 'Napomena'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'BrojUvjerenja'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Zap5'
        DataType = ftBoolean
      end
      item
        Name = 'Zap6'
        DataType = ftBoolean
      end
      item
        Name = 'Printano'
        DataType = ftBoolean
      end
      item
        Name = 'Printano2'
        DataType = ftBoolean
      end
      item
        Name = 'NeKakvoca'
        DataType = ftFloat
      end
      item
        Name = 'JMKakvoca'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'NePrirast'
        DataType = ftFloat
      end
      item
        Name = 'JMPrirast'
        DataType = ftString
        Size = 4
      end>
    IndexDefs = <
      item
        Fields = 'Sifra'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'IxSifraZahtMast'
        Fields = 'SifraZahtMast;SifraNazSadMat'
      end
      item
        Name = 'SifraZahtMast'
        Fields = 'SifraZahtMast'
      end>
    IndexName = 'SifraZahtMast'
    MasterFields = 'Sifra'
    MasterSource = DzahtMaster
    StoreDefs = True
    TableName = 'ZahtVocariDetail.DB'
    LookupFields.Strings = (
      'LookBiljnaVrsta;DBVoc;BiljnaVrstaVOC.DB;Naziv;;Sifra;Y'
      'LookSorta;DBVoc;SortaVOC.DB;Naziv;;Sifra;Y'
      'LookKlonSorte;DBVoc;VrsteKlonova.DB;Naziv;;Sifra;Y'
      'LookPodloga;DBVoc;VrstePodloga.DB;Naziv;;Sifra;Y'
      'LookKlonPodloge;DBVoc;VrsteKlonova.DB;Naziv;;Sifra;Y'
      'LookKategorija;DBVoc;KategorijaVOC.DB;Naziv;;Sifra;Y'
      'LookSortaDobav;DBVoc;PartneriVOC.DB;Naziv;;Sifra;Y'
      'LookPodlogaDobav;DBVoc;PartneriVOC.DB;Naziv;;Sifra;Y'
      'LookNazSadMat;DBVoc;NazivSadMatVOC.DB;Naziv;;Sifra;Y')
    LookupLinks.Strings = (
      'SifraBiljnaVrsta;Sifra'
      'SifraSorta;Sifra'
      'SifraKlonSorte;Sifra'
      'SifraPodloga;Sifra'
      'SifraKlonPodloge;Sifra'
      'SifraKategorija;Sifra'
      'SortaDobavljac;Sifra'
      'PodlogaDobavljac;Sifra'
      'SifraNazSadMat;Sifra')
    PictureMasks.Strings = (
      'DatumIzvjesca'#9'##.##.####'#9'T'#9'T')
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 332
    Top = 384
    object TZahtDetailLookNazSadMat: TStringField
      DisplayLabel = 'Naz. sadnog mat.'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'LookNazSadMat'
      Size = 35
      Calculated = True
    end
    object TZahtDetailLookBiljnaVrsta: TStringField
      DisplayLabel = 'Biljna vrsta'
      DisplayWidth = 21
      FieldKind = fkCalculated
      FieldName = 'LookBiljnaVrsta'
      Size = 45
      Calculated = True
    end
    object TZahtDetailLookSorta: TStringField
      DisplayLabel = 'Sorta'
      DisplayWidth = 17
      FieldKind = fkCalculated
      FieldName = 'LookSorta'
      Size = 35
      Calculated = True
    end
    object TZahtDetailLookKlonSorte: TStringField
      DisplayLabel = 'Klon sorte'
      DisplayWidth = 18
      FieldKind = fkCalculated
      FieldName = 'LookKlonSorte'
      Size = 30
      Calculated = True
    end
    object TZahtDetailLookPodloga: TStringField
      DisplayLabel = 'Podloga'
      DisplayWidth = 17
      FieldKind = fkCalculated
      FieldName = 'LookPodloga'
      Size = 30
      Calculated = True
    end
    object TZahtDetailLookKlonPodloge: TStringField
      DisplayLabel = 'Klon podloge'
      DisplayWidth = 17
      FieldKind = fkCalculated
      FieldName = 'LookKlonPodloge'
      Size = 30
      Calculated = True
    end
    object TZahtDetailLookKategorija: TStringField
      DisplayLabel = 'Kategorija'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'LookKategorija'
      Size = 30
      Calculated = True
    end
    object TZahtDetailKolicinaPrijava: TFloatField
      DisplayLabel = 'Kol.prijava'
      DisplayWidth = 10
      FieldName = 'KolicinaPrijava'
    end
    object TZahtDetailKolicinaPreg1: TFloatField
      DisplayLabel = 'Kol.pregled 1'
      DisplayWidth = 10
      FieldName = 'KolicinaPreg1'
    end
    object TZahtDetailKolicinaPreg2: TFloatField
      DisplayLabel = 'Kol.pregled 2'
      DisplayWidth = 10
      FieldName = 'KolicinaPreg2'
    end
    object TZahtDetailKolUvjerenje: TFloatField
      DisplayLabel = 'Kol. uvjerenje'
      DisplayWidth = 10
      FieldName = 'KolUvjerenje'
    end
    object TZahtDetailKolicinaPupovaPreg1: TFloatField
      FieldName = 'KolicinaPupovaPreg1'
    end
    object TZahtDetailJedMJPupova: TStringField
      DisplayLabel = 'Jed.mj.'
      FieldName = 'JedMJPupova'
      Size = 4
    end
    object TZahtDetailKolicinaStabala: TIntegerField
      DisplayLabel = 'Kol. stabla'
      DisplayWidth = 10
      FieldName = 'KolicinaStabala'
    end
    object TZahtDetailBrojUvjerenja: TStringField
      DisplayLabel = 'Broj uvjerenja'
      DisplayWidth = 10
      FieldName = 'BrojUvjerenja'
      Size = 10
    end
    object TZahtDetailZap5: TBooleanField
      DisplayLabel = 'Na zap.5'
      FieldName = 'Zap5'
    end
    object TZahtDetailZap6: TBooleanField
      DisplayLabel = 'Na zap.6'
      FieldName = 'Zap6'
    end
    object TZahtDetailPrintano: TBooleanField
      DisplayLabel = 'I put'
      DisplayWidth = 5
      FieldName = 'Printano'
    end
    object TZahtDetailPrintano2: TBooleanField
      DisplayLabel = 'II put'
      DisplayWidth = 5
      FieldName = 'Printano2'
    end
    object TZahtDetailJedMj: TStringField
      DisplayLabel = 'Jed.mj.'
      DisplayWidth = 5
      FieldName = 'JedMj'
      Visible = False
      Size = 4
    end
    object TZahtDetailSortaDokumentUvoza: TStringField
      DisplayLabel = 'Sorta dokument uvoza'
      DisplayWidth = 40
      FieldName = 'SortaDokumentUvoza'
      Visible = False
      Size = 40
    end
    object TZahtDetailPodlogaDokumentUvoza: TStringField
      DisplayLabel = 'Podloga dokument uvoza'
      DisplayWidth = 40
      FieldName = 'PodlogaDokumentUvoza'
      Visible = False
      Size = 40
    end
    object TZahtDetailLookSortaDobav: TStringField
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'LookSortaDobav'
      Visible = False
      Size = 50
      Calculated = True
    end
    object TZahtDetailLookPodlogaDobav: TStringField
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'LookPodlogaDobav'
      Visible = False
      Size = 50
      Calculated = True
    end
    object TZahtDetailSifra: TAutoIncField
      FieldName = 'Sifra'
      ReadOnly = True
      Visible = False
    end
    object TZahtDetailSifraZahtMast: TIntegerField
      FieldName = 'SifraZahtMast'
      Visible = False
    end
    object TZahtDetailSifraBiljnaVrsta: TIntegerField
      FieldName = 'SifraBiljnaVrsta'
      Required = True
      Visible = False
    end
    object TZahtDetailSifraSorta: TIntegerField
      FieldName = 'SifraSorta'
      Required = True
      Visible = False
    end
    object TZahtDetailSifraKlonSorte: TIntegerField
      FieldName = 'SifraKlonSorte'
      Visible = False
    end
    object TZahtDetailSifraPodloga: TIntegerField
      FieldName = 'SifraPodloga'
      Visible = False
    end
    object TZahtDetailSifraKlonPodloge: TIntegerField
      FieldName = 'SifraKlonPodloge'
      Visible = False
    end
    object TZahtDetailSifraKategorija: TIntegerField
      FieldName = 'SifraKategorija'
      Visible = False
    end
    object TZahtDetailSortaUvoz: TBooleanField
      DisplayLabel = 'Uvoz'
      FieldName = 'SortaUvoz'
      Visible = False
    end
    object TZahtDetailSortaZemljaUvoza: TStringField
      DisplayLabel = 'Zemlja uvoza'
      FieldName = 'SortaZemljaUvoza'
      Visible = False
      Size = 30
    end
    object TZahtDetailPodlogaUvoz: TBooleanField
      DisplayLabel = 'Uvoz'
      FieldName = 'PodlogaUvoz'
      Visible = False
    end
    object TZahtDetailPodlogazemljaUvoza: TStringField
      DisplayLabel = 'Zemlja uvoza'
      FieldName = 'PodlogazemljaUvoza'
      Visible = False
      Size = 30
    end
    object TZahtDetailPodlogaDobavljac: TIntegerField
      FieldName = 'PodlogaDobavljac'
      Visible = False
    end
    object TZahtDetailSortaDobavljac: TIntegerField
      FieldName = 'SortaDobavljac'
      Visible = False
    end
    object TZahtDetailNeideNaUvj: TBooleanField
      FieldName = 'NeideNaUvj'
      Visible = False
    end
    object TZahtDetailNeideNaZap: TBooleanField
      FieldName = 'NeideNaZap'
      Visible = False
    end
    object TZahtDetailNapomena: TStringField
      FieldName = 'Napomena'
      Visible = False
      Size = 35
    end
    object TZahtDetailSifraNazSadMat: TIntegerField
      FieldName = 'SifraNazSadMat'
      Visible = False
    end
    object TZahtDetailJedMjPerg1: TStringField
      FieldName = 'JedMjPerg1'
      Visible = False
      Size = 4
    end
    object TZahtDetailJedMjPreg2: TStringField
      FieldName = 'JedMjPreg2'
      Visible = False
      Size = 4
    end
    object TZahtDetailJedMjKolUvjer: TStringField
      FieldName = 'JedMjKolUvjer'
      Visible = False
      Size = 4
    end
    object TZahtDetailPodlogaKolVlastita: TFloatField
      DisplayLabel = 'Kol. vlastita'
      FieldName = 'PodlogaKolVlastita'
      Visible = False
    end
    object TZahtDetailPodlogaKolNabav: TFloatField
      DisplayLabel = 'Kol. nabav.'
      FieldName = 'PodlogaKolNabav'
      Visible = False
    end
    object TZahtDetailSortaKolVlastita: TFloatField
      DisplayLabel = 'Kol. vlastita'
      FieldName = 'SortaKolVlastita'
      Visible = False
    end
    object TZahtDetailSortaKolNabav: TFloatField
      DisplayLabel = 'Kol. nabav.'
      FieldName = 'SortaKolNabav'
      Visible = False
    end
    object TZahtDetailNeKakvoca: TFloatField
      DisplayWidth = 10
      FieldName = 'NeKakvoca'
    end
    object TZahtDetailJMKakvoca: TStringField
      DisplayWidth = 4
      FieldName = 'JMKakvoca'
      Size = 4
    end
    object TZahtDetailNePrirast: TFloatField
      DisplayWidth = 10
      FieldName = 'NePrirast'
    end
    object TZahtDetailJMPrirast: TStringField
      DisplayWidth = 4
      FieldName = 'JMPrirast'
      Size = 4
    end
  end
  object DZahtDetail: TwwDataSource
    DataSet = TZahtDetail
    Left = 300
    Top = 385
  end
  object wwRecordViewDialog3: TwwRecordViewDialog
    ControlType.Strings = (
      'LookPreparat;CustomEdit;wwDBLookupCombo2'
      'LookBiljnaVrsta;CustomEdit;wwDBLookupCombo2;F'
      'LookSorte;CustomEdit;wwDBLookupCombo3;F'
      'LookKategorije;CustomEdit;wwDBLookupCombo4;F'
      'LookKlon;CustomEdit;wwDBLookupCombo5;F'
      'LookPodloga;CustomEdit;wwDBLookupCombo6;F'
      'LookKlonPodloga;CustomEdit;wwDBLookupCombo7;F'
      'LookSorta;CustomEdit;wwDBLookupCombo3;F'
      'LookKategorija;CustomEdit;wwDBLookupCombo4;F'
      'LookKlonSorte;CustomEdit;wwDBLookupCombo5;F'
      'LookKlonPodloge;CustomEdit;wwDBLookupCombo7;F'
      'SortaUvoz;CheckBox;True;False'
      'LookSortaDobav;CustomEdit;wwDBLookupCombo10;F'
      'LookPodlogaDobav;CustomEdit;wwDBLookupCombo11;F'
      'PodlogaUvoz;CheckBox;True;False'
      'NeideNaUvj;CheckBox;True;False'
      'LookRasadnik;CustomEdit;wwDBLookupCombo8;F'
      'LookNazSadMat;CustomEdit;wwDBLookupCombo9;F'
      'NeideNaZap;CheckBox;True;False'
      'Printano;CheckBox;True;False'
      'Printano2;CheckBox;True;False'
      'Zap5;CheckBox;True;False'
      'Zap6;CheckBox;True;False')
    ControlInfoInDataset = False
    DataSource = DZahtDetail
    EditSpacing.HorizontalView.BetweenEditsInRow = 9
    EditSpacing.HorizontalView.BetweenRow = 15
    EditSpacing.VerticalView.BetweenRow = 8
    BorderStyle = bsDialog
    FormPosition.Left = 0
    FormPosition.Top = 0
    FormPosition.Width = 750
    FormPosition.Height = 550
    NavigatorButtons = [nbsFirst, nbsPrior, nbsNext, nbsLast, nbsInsert, nbsDelete, nbsEdit, nbsPost, nbsCancel, nbsRefresh, nbsPriorPage, nbsNextPage, nbsSaveBookmark, nbsRestoreBookmark]
    Style = rvsHorizontal
    Options = [rvoHideNavigator, rvoUseCustomControls, rvoModalForm, rvoEnterToTab, rvoCloseIsCancel, rvoMaximizeMemoWidth]
    ControlOptions = []
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clNavy
    LabelFont.Height = -11
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    OnBeforeCreateControl = wwRecordViewDialog1BeforeCreateControl
    OnCloseDialog = wwRecordViewDialog1CloseDialog
    Caption = 'Podatak'
    Selected.Strings = (
      'LookBiljnaVrsta'#9'30'#9'Biljna vrsta'#9#9
      'LookSorta'#9'35'#9'Sorta'#9#9
      'LookKlonSorte'#9'30'#9'Klon sorte'#9#9
      'LookPodloga'#9'24'#9'Podloga'#9#9
      'LookKlonPodloge'#9'30'#9'Klon podloge'#9#9
      'LookKategorija'#9'30'#9'Kategorija'#9#9
      'LookNazSadMat'#9'35'#9'Naziv sadnog materijala'#9'F'
      'NeideNaUvj'#9'5'#9'Ne ispisuj na uvjerenje'#9'F'
      'NeideNaZap'#9'5'#9'Ne ispisuj na zapisnik'#9'F'
      'KolicinaPrijava'#9'13'#9'Kol.prijava'#9'F'
      'JedMj'#9'4'#9'Jed.mj.'#9#9
      '<New Line>'
      'KolicinaPreg1'#9'13'#9'Kol.pregled 1'#9'F'
      'JedMjPerg1'#9'4'#9'Jed.mj.'#9'F'
      'KolicinaPreg2'#9'13'#9'Kol.pregled 2'#9'F'
      'JedMjPreg2'#9'4'#9'Jed.mj.'#9'F'
      'KolUvjerenje'#9'12'#9'Kol. uvjerenje'#9'F'
      'JedMjKolUvjer'#9'4'#9'Jed.mj.'#9'F'
      'KolicinaStabala'#9'13'#9'Kol. stabla'#9'F'
      'KolicinaPupovaPreg1'#9'13'#9'Kol. repro pregled'#9'F'
      'JedMJPupova'#9'4'#9'Jed.mj.'#9'F'
      '<New Line>'
      'SortaKolVlastita'#9'14'#9'Sorta kol. vlastita'#9'F'
      'SortaKolNabav'#9'14'#9'Sorta kol. nabav.'#9'F'
      'SortaUvoz'#9'5'#9'Sorta uvoz'#9'F'
      'LookSortaDobav'#9'50'#9'Sorta dobavlja'#269#9'F'
      'SortaZemljaUvoza'#9'30'#9'Sorta zemlja uvoza'#9'F'
      'SortaDokumentUvoza'#9'40'#9'Sorta dokument uvoza'#9'F'
      '<New Line>'
      'PodlogaKolVlastita'#9'15'#9'Podloga kol. vlastita'#9'F'
      'PodlogaKolNabav'#9'15'#9'Podloga kol. nabav.'#9'F'
      'PodlogaUvoz'#9'5'#9'Podloga uvoz'#9'F'
      'LookPodlogaDobav'#9'50'#9'Podloga dobavlja'#269#9'F'
      'PodlogazemljaUvoza'#9'30'#9'Zemlja uvoza'#9'F'
      'PodlogaDokumentUvoza'#9'40'#9'Podloga dokument uvoza'#9'F'
      'Napomena'#9'35'#9'Napomena'#9'F'
      'BrojUvjerenja'#9'10'#9'Broj uvjerenja'#9'F'
      'Zap5'#9'5'#9'Na zap.5'#9'T'
      'Zap6'#9'5'#9'Na zap.6'#9'T'
      'Printano'#9'5'#9'1.put'#9'T'
      'Printano2'#9'5'#9'2.put'#9'T'
      'NeKakvoca'#9'10'#9'Ne kakvo'#269'a'#9'F'
      'JMKakvoca'#9'4'#9'JM'#9'F'
      'NePrirast'#9'10'#9'Ne prirast'#9'F'
      'JMPrirast'#9'4'#9'JM'#9'F')
    NavigatorFlat = True
    Left = 268
    Top = 385
  end
  object wwTable2: TwwTable
    Active = True
    DatabaseName = 'DBVoc'
    TableName = 'PartneriVOC.DB'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 228
    Top = 89
    object wwTable2Sifra: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Sifra'
      ReadOnly = True
    end
    object wwTable2Naziv: TStringField
      DisplayWidth = 65
      FieldName = 'Naziv'
      Required = True
      Size = 65
    end
    object wwTable2DatumUpisa: TDateField
      DisplayWidth = 10
      FieldName = 'DatumUpisa'
    end
    object wwTable2Mjesto: TStringField
      FieldName = 'Mjesto'
    end
    object wwTable2Ulica: TStringField
      FieldName = 'Ulica'
      Size = 50
    end
  end
  object wwRecordViewDialog1: TwwRecordViewDialog
    DataSource = DzahtMaster
    EditSpacing.HorizontalView.BetweenEditsInRow = 9
    EditSpacing.HorizontalView.BetweenRow = 15
    EditSpacing.VerticalView.BetweenRow = 8
    BorderStyle = bsDialog
    FormPosition.Left = 0
    FormPosition.Top = 0
    FormPosition.Width = 600
    FormPosition.Height = 0
    NavigatorButtons = [nbsFirst, nbsPrior, nbsNext, nbsLast, nbsInsert, nbsDelete, nbsEdit, nbsPost, nbsCancel, nbsRefresh, nbsPriorPage, nbsNextPage, nbsSaveBookmark, nbsRestoreBookmark]
    Style = rvsHorizontal
    Options = [rvoHideNavigator, rvoUseCustomControls, rvoModalForm, rvoEnterToTab, rvoCloseIsCancel, rvoMaximizeMemoWidth]
    ControlOptions = []
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clNavy
    LabelFont.Height = -11
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    OnBeforeCreateControl = wwRecordViewDialog1BeforeCreateControl
    OnCloseDialog = wwRecordViewDialog1CloseDialog
    Caption = 'Podatak'
    Selected.Strings = (
      'LookRasadnik'#9'45'#9'Rasadnik'#9'F'
      '<New Line>'
      'Zapisnik1'#9'20'#9'Zapisnik pregled PRVI'#9'F'
      'DatumZap1'#9'15'#9'Datum'#9'F'
      '<New Line>'
      'Zapisnik2'#9'20'#9'Zapisnik pregled DRUGI'#9'F'
      'DatumZap2'#9'15'#9'Datum'#9'F')
    NavigatorFlat = True
    Left = 636
    Top = 120
  end
  object wwTable1: TwwTable
    DatabaseName = 'DBVoc'
    TableName = 'BiljnaVrstaVOC.DB'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 108
    Top = 313
  end
  object wwTable7: TwwTable
    DatabaseName = 'DBVoc'
    IndexName = 'SifraBiljnaVrsta'
    MasterFields = 'Sifra'
    MasterSource = wwDataTable1
    TableName = 'SortaVOC.DB'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 292
    Top = 297
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredValues = <>
    Left = 432
    Top = 65528
  end
  object ZahtjevDetail: TfrDBDataSet
    DataSource = dsTemp
    OpenDataSource = False
    Left = 336
    Top = 464
  end
  object ZahtjevMaster: TfrDBDataSet
    DataSource = DzahtMaster
    Left = 656
    Top = 152
  end
  object wwTable3: TwwTable
    DatabaseName = 'DBVoc'
    TableName = 'KategorijaVOC.DB'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 420
    Top = 297
  end
  object wwDataTable1: TwwDataSource
    DataSet = wwTable1
    Left = 392
    Top = 336
  end
  object wwTable4: TwwTable
    DatabaseName = 'DBVoc'
    TableName = 'VrsteKlonova.DB'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 540
    Top = 273
  end
  object wwTable5: TwwTable
    DatabaseName = 'DBVoc'
    TableName = 'VrstePodloga.DB'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 668
    Top = 273
  end
  object frPrintTable1: TfrPrintTable
    DataSet = TZahtDetail
    FitWidth.Enabled = False
    FitWidth.ShrinkOptions = [frsoProportional, frsoShrinkOnly]
    FitWidth.ResizePercent = 30
    FitWidth.ApplyBeforeOnCustomize = False
    PageSize = 9
    PageWidth = 0
    PageHeight = 0
    PageMargins.Left = 10
    PageMargins.Top = 14
    PageMargins.Right = 10
    PageMargins.Bottom = 14
    Orientation = poLandscape
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clWindowText
    Title.Font.Height = -19
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold]
    Title.Color = clWhite
    Title.Frame = []
    Title.FrameWidth = 1
    Title.Align = taRightJustify
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -13
    PageHeader.Font.Name = 'Arial'
    PageHeader.Font.Style = [fsBold]
    PageHeader.Color = clWhite
    PageHeader.Frame = [frBottom]
    PageHeader.FrameWidth = 2
    PageHeader.Align = taLeftJustify
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -7
    PageFooter.Font.Name = 'Arial'
    PageFooter.Font.Style = []
    PageFooter.Color = clWhite
    PageFooter.Frame = []
    PageFooter.FrameWidth = 1
    PageFooter.Align = taLeftJustify
    PageFooter.Text = 'DoK   by POINT Osijek'
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clBlack
    Header.Font.Height = -8
    Header.Font.Name = 'Arial'
    Header.Font.Style = [fsBold]
    Header.Color = clWhite
    Header.Frame = [frLeft, frTop, frRight, frBottom]
    Header.FrameWidth = 1
    Footer.Font.Charset = RUSSIAN_CHARSET
    Footer.Font.Color = clWindowText
    Footer.Font.Height = -13
    Footer.Font.Name = 'Arial'
    Footer.Font.Style = [fsItalic]
    Footer.Color = clSilver
    Footer.Frame = [frLeft, frTop, frRight, frBottom]
    Footer.FrameWidth = 1
    Summary.Font.Charset = RUSSIAN_CHARSET
    Summary.Font.Color = clWindowText
    Summary.Font.Height = -16
    Summary.Font.Name = 'Arial'
    Summary.Font.Style = [fsItalic]
    Summary.Color = clWhite
    Summary.Frame = []
    Summary.FrameWidth = 1
    Body.Font.Charset = DEFAULT_CHARSET
    Body.Font.Color = clWindowText
    Body.Font.Height = -9
    Body.Font.Name = 'Arial'
    Body.Font.Style = []
    Body.Color = clWhite
    Body.Frame = [frLeft, frTop, frRight, frBottom]
    Body.FrameWidth = 1
    PrintOptions = [frpoHeader, frpoHeaderOnEveryPage]
    AutoOrientation.Enabled = True
    AutoOrientation.ResizePercent = 20
    DoublePassReport = False
    PreviewButtons = [pbZoom, pbSave, pbPrint, pbFind, pbHelp, pbExit, pbPageSetup]
    Left = 204
    Top = 362
  end
  object wwTable6: TwwTable
    DatabaseName = 'DBVoc'
    TableName = 'VrsteKlonova.DB'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 516
    Top = 345
  end
  object wwTable8: TwwTable
    DatabaseName = 'DBVoc'
    TableName = 'RasadniciVOC.DB'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 540
    Top = 105
  end
  object wwTable9: TwwTable
    DatabaseName = 'DBVoc'
    TableName = 'NazivSadMatVOC.DB'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 476
    Top = 185
  end
  object PopupMenu2: TPopupMenu
    Images = Podaci.Images
    Left = 536
    Top = 64
    object Ispisotpremnicenaekran1: TMenuItem
      Tag = 1
      Caption = 'Ispis na ekran'
      ImageIndex = 28
      OnClick = Ispisotpremnicenaekran1Click
    end
    object Ureivanjeotpremnice1: TMenuItem
      Tag = 2
      Caption = 'Ure'#273'ivanje'
      ImageIndex = 20
      OnClick = Ispisotpremnicenaekran1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Pogledajsnimljeno1: TMenuItem
      Caption = 'Pogledaj snimljeno'
      ImageIndex = 29
      OnClick = batonClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Brojevi1: TMenuItem
      Caption = 'Brojevi'
      ImageIndex = 37
      OnClick = brojevi
    end
  end
  object wwTable10: TwwTable
    DatabaseName = 'DBVoc'
    TableName = 'PartneriVOC.DB'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 612
    Top = 345
  end
  object wwTable11: TwwTable
    DatabaseName = 'DBVoc'
    TableName = 'PartneriVOC.DB'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 668
    Top = 385
  end
  object TUvjerenje: TwwTable
    Active = True
    AfterInsert = TUvjerenjeAfterInsert
    AfterEdit = TUvjerenjeAfterEdit
    BeforePost = TUvjerenjeBeforePost
    DatabaseName = 'DBVoc'
    FieldDefs = <
      item
        Name = 'Sifra'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'Dodatak'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DatumPodnosenja'
        DataType = ftDate
      end
      item
        Name = 'DatumIzdavUvjerenja'
        DataType = ftDate
      end
      item
        Name = 'SifraPodnositeljZaht'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'Domaca'
        DataType = ftBoolean
      end
      item
        Name = 'Prebaceno'
        DataType = ftBoolean
      end
      item
        Name = 'UpisniBroj'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DatumUpisa'
        DataType = ftDate
      end
      item
        Name = 'ZdravUvje'
        DataType = ftMemo
        Size = 100
      end>
    IndexDefs = <
      item
        Fields = 'Sifra'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'Sifra'
    StoreDefs = True
    TableName = 'Uvjerenje.DB'
    LookupFields.Strings = (
      'LookPodnositelj;DBVoc;PartneriVOC.DB;Naziv;;Sifra;Y')
    LookupLinks.Strings = (
      'SifraPodnositeljZaht;Sifra')
    ControlType.Strings = (
      'Domaca;CheckBox;True;False'
      'LookPodnositelj;CustomEdit;wwDBLookupCombo1;F')
    PictureMasks.Strings = (
      'DatumPodnosenja'#9'##.##.####'#9'T'#9'T'
      'RokVazenjaZahtjev'#9'##.##.####'#9'T'#9'T'
      'DatumVaziDoDekl'#9'##.##.####'#9'T'#9'T'
      'DatumSvjed'#9'##.##.####'#9'T'#9'T'
      'DatumIzdavanjaDekl'#9'##.##.####'#9'T'#9'T')
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 256
    Top = 144
    object TUvjerenjeSifra: TAutoIncField
      Alignment = taCenter
      DisplayLabel = 'R.br.'
      DisplayWidth = 6
      FieldName = 'Sifra'
      ReadOnly = True
    end
    object TUvjerenjeDatumPodnosenja: TDateField
      DisplayLabel = 'Dat.podno'#353'enja'
      DisplayWidth = 13
      FieldName = 'DatumPodnosenja'
    end
    object TUvjerenjeLookPodn: TStringField
      DisplayWidth = 45
      FieldKind = fkCalculated
      FieldName = 'LookPodnositelj'
      Size = 50
      Calculated = True
    end
    object TUvjerenjelookDatumX: TDateTimeField
      DisplayWidth = 18
      FieldKind = fkLookup
      FieldName = 'lookDatumX'
      LookupDataSet = wwTable2
      LookupKeyFields = 'Sifra'
      LookupResultField = 'DatumUpisa'
      KeyFields = 'SifraPodnositeljZaht'
      Lookup = True
    end
    object TUvjerenjeZdravUvje: TMemoField
      DisplayLabel = 'Broj i datum zdravstvenog uvjerenja'
      DisplayWidth = 10
      FieldName = 'ZdravUvje'
      Visible = False
      BlobType = ftMemo
      Size = 100
    end
    object TUvjerenjeDomaca: TBooleanField
      DisplayLabel = 'Doma'#263'a'
      DisplayWidth = 6
      FieldName = 'Domaca'
      Visible = False
    end
    object TUvjerenjeSifraPodnositelja: TIntegerField
      DisplayWidth = 10
      FieldName = 'SifraPodnositeljZaht'
      Required = True
      Visible = False
    end
    object TUvjerenjeUpisniBroj: TStringField
      DisplayLabel = 'Upisni broj'
      FieldName = 'UpisniBroj'
      Visible = False
      Size = 10
    end
    object TUvjerenjeDatumUpisa: TDateField
      DisplayLabel = 'Datum upisa'
      FieldName = 'DatumUpisa'
      Visible = False
    end
  end
  object DUvjerenje: TwwDataSource
    DataSet = TUvjerenje
    Left = 288
    Top = 144
  end
  object Uvjerenje: TfrDBDataSet
    CloseDataSource = True
    DataSource = dsUvj
    Left = 256
    Top = 192
  end
  object wwRecordViewDialog2: TwwRecordViewDialog
    DataSource = DUvjerenje
    EditSpacing.HorizontalView.BetweenEditsInRow = 9
    EditSpacing.HorizontalView.BetweenRow = 15
    EditSpacing.VerticalView.BetweenRow = 8
    BorderStyle = bsDialog
    FormPosition.Left = 0
    FormPosition.Top = 0
    FormPosition.Width = 600
    FormPosition.Height = 0
    NavigatorButtons = [nbsFirst, nbsPrior, nbsNext, nbsLast, nbsInsert, nbsDelete, nbsEdit, nbsPost, nbsCancel, nbsRefresh, nbsPriorPage, nbsNextPage, nbsSaveBookmark, nbsRestoreBookmark]
    Style = rvsHorizontal
    Options = [rvoHideNavigator, rvoUseCustomControls, rvoModalForm, rvoEnterToTab, rvoCloseIsCancel, rvoMaximizeMemoWidth]
    ControlOptions = []
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clNavy
    LabelFont.Height = -11
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    OnBeforeCreateControl = wwRecordViewDialog1BeforeCreateControl
    OnCloseDialog = wwRecordViewDialog1CloseDialog
    Caption = 'Podatak'
    Selected.Strings = (
      'Sifra'#9'17'#9'R.br. prijave'#9'T'
      'DatumPodnosenja'#9'14'#9'Datum podno'#353'enja'#9#9
      'Domaca'#9'6'#9'Doma'#263'a'#9#9
      '<New Line>'
      'LookPodnositelj'#9'50'#9'Podnositelj prijave'#9'F'
      'UpisniBroj'#9'10'#9'Upisni broj'#9'T'
      'lookDatumX'#9'18'#9'Datum upisa'#9'T'
      '<New Line>'
      'ZdravUvje'#9'10'#9'Broj i datum zdravstvenog uvjerenja'#9'F')
    NavigatorFlat = True
    LinesPerMemoControl = 4
    Left = 228
    Top = 144
  end
  object TBrUvjerenja: TwwTable
    Active = True
    AfterInsert = TBrUvjerenjaAfterInsert
    AfterEdit = TBrUvjerenjaAfterEdit
    BeforePost = TBrUvjerenjaBeforePost
    AfterPost = TBrUvjerenjaAfterPost
    BeforeDelete = TBrUvjerenjaBeforeDelete
    DatabaseName = 'DBVoc'
    FieldDefs = <
      item
        Name = 'Sifra'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'PraviBrojUvjerenja'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Datum'
        DataType = ftDate
      end
      item
        Name = 'SifraRbr'
        DataType = ftInteger
      end
      item
        Name = 'Dodatak'
        DataType = ftString
        Size = 5
      end>
    IndexDefs = <
      item
        Fields = 'Sifra'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'IxSifRbr'
        Fields = 'SifraRbr'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'IxPraviBrojUv'
        Fields = 'PraviBrojUvjerenja'
        Options = [ixCaseInsensitive]
      end>
    IndexName = 'IxSifRbr'
    MasterFields = 'Sifra'
    MasterSource = DUvjerenje
    StoreDefs = True
    TableName = 'BrojeviUvjerenja.db'
    ControlType.Strings = (
      'Dodatak;CustomEdit;wwDBComboBox2;F')
    PictureMasks.Strings = (
      'DatumPodnosenja'#9'##.##.####'#9'T'#9'T'
      'RokVazenjaZahtjev'#9'##.##.####'#9'T'#9'T'
      'DatumVaziDoDekl'#9'##.##.####'#9'T'#9'T'
      'DatumSvjed'#9'##.##.####'#9'T'#9'T'
      'DatumIzdavanjaDekl'#9'##.##.####'#9'T'#9'T')
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 608
    Top = 192
    object TBrUvjerenjaDatum: TDateField
      DisplayLabel = 'Datum izdavanja'
      DisplayWidth = 21
      FieldName = 'Datum'
    end
    object TBrUvjerenjaDodatak: TStringField
      DisplayLabel = ' '
      DisplayWidth = 8
      FieldName = 'Dodatak'
      Size = 5
    end
    object TBrUvjerenjaPraviBrojUvjerenja: TStringField
      DisplayLabel = 'Broj uvjerenja'
      DisplayWidth = 25
      FieldName = 'PraviBrojUvjerenja'
      Size = 10
    end
    object TBrUvjerenjaSifra: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Sifra'
      ReadOnly = True
      Visible = False
    end
    object TBrUvjerenjaSifraRbr: TIntegerField
      DisplayWidth = 13
      FieldName = 'SifraRbr'
      Visible = False
    end
  end
  object DBrUvjerenja: TwwDataSource
    DataSet = TBrUvjerenja
    Left = 576
    Top = 192
  end
  object BrUvjerenja: TfrDBDataSet
    DataSource = DBrUvjerenja
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    Left = 608
    Top = 224
  end
  object wwRecordViewDialog4: TwwRecordViewDialog
    DataSource = DBrUvjerenja
    EditSpacing.HorizontalView.BetweenEditsInRow = 9
    EditSpacing.HorizontalView.BetweenRow = 15
    EditSpacing.VerticalView.BetweenRow = 8
    BorderStyle = bsDialog
    FormPosition.Left = 0
    FormPosition.Top = 0
    FormPosition.Width = 600
    FormPosition.Height = 0
    NavigatorButtons = [nbsFirst, nbsPrior, nbsNext, nbsLast, nbsInsert, nbsDelete, nbsEdit, nbsPost, nbsCancel, nbsRefresh, nbsPriorPage, nbsNextPage, nbsSaveBookmark, nbsRestoreBookmark]
    Style = rvsHorizontal
    Options = [rvoHideNavigator, rvoUseCustomControls, rvoModalForm, rvoEnterToTab, rvoCloseIsCancel, rvoMaximizeMemoWidth]
    ControlOptions = []
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clNavy
    LabelFont.Height = -11
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    OnBeforeCreateControl = wwRecordViewDialog1BeforeCreateControl
    OnCloseDialog = wwRecordViewDialog1CloseDialog
    Caption = 'Podatak'
    Selected.Strings = (
      'Datum'#9'20'#9'Datum izdavanja'#9#9
      'Dodatak'#9'7'#9' '#9#9
      'PraviBrojUvjerenja'#9'25'#9'Broj uvjerenja'#9#9)
    NavigatorFlat = True
    Left = 548
    Top = 192
  end
  object DaNePrint: TQuery
    DatabaseName = 'DBVoc'
    DataSource = DzahtMaster
    SQL.Strings = (
      'UPDATE zahtvocaridetail'
      'SET printano=False'
      'WHERE sifraZahtMast = :Sifra ')
    Left = 856
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Sifra'
        ParamType = ptUnknown
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 580
    Top = 109
    object Prikai1: TMenuItem
      Tag = 4
      Caption = 'Prika'#382'i'
      OnClick = ToolButton3Click
    end
    object Uredi1: TMenuItem
      Caption = 'Uredi Zap0'
      OnClick = ToolButton3Click
    end
    object Uredi2: TMenuItem
      Tag = 1
      Caption = 'Uredi Zap1'
      OnClick = ToolButton3Click
    end
  end
  object DajCrvene: TQuery
    DatabaseName = 'DBVoc'
    Filter = 'NeideNaZap=False'
    Filtered = True
    DataSource = DzahtMaster
    SQL.Strings = (
      'SELECT '
      'b.naziv vrsta, s.naziv sorta,'
      'z.napomena, z.sifrapodloga,'
      'z.NeideNaZap'
      'FROM zahtvocaridetail z, '
      'biljnavrstavoc b, '
      'sortavoc s,'
      'NazivSadMatVOC sm'
      'WHERE z.sifrabiljnavrsta=b.sifra'
      'AND z.sifrasorta=s.sifra'
      'AND z.napomena<>'#39#39
      'AND z.sifraZahtMast=:Sifra'
      'AND z.SifraNazSadMat = sm.sifra'
      'AND sm.zap5=True'
      'ORDER BY b.naziv, s.naziv')
    Left = 212
    Top = 434
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'Sifra'
        ParamType = ptUnknown
      end>
    object DajCrvenevrsta: TStringField
      DisplayWidth = 29
      FieldName = 'vrsta'
      Origin = 'DBVOC."BiljnaVrstaVOC.DB".Naziv'
      Size = 45
    end
    object DajCrvenesorta: TStringField
      DisplayWidth = 22
      FieldName = 'sorta'
      Origin = 'DBVOC."SortaVOC.DB".Naziv'
      Size = 35
    end
    object DajCrvenepodloga: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'podloga'
      LookupDataSet = wwTable5
      LookupKeyFields = 'Sifra'
      LookupResultField = 'Naziv'
      KeyFields = 'sifrapodloga'
      Lookup = True
    end
    object DajCrvenenapomena: TStringField
      DisplayWidth = 23
      FieldName = 'napomena'
      Origin = 'DBVOC."ZahtVocariDetail.DB".Napomena'
      Size = 35
    end
    object DajCrvenesifrapodloga: TIntegerField
      DisplayWidth = 13
      FieldName = 'sifrapodloga'
      Origin = 'DBVOC."ZahtVocariDetail.DB".SifraPodloga'
      Visible = False
    end
    object DajCrveneNeideNaZap: TBooleanField
      DisplayWidth = 13
      FieldName = 'NeideNaZap'
      Origin = 'DBVOC."ZahtVocariDetail.DB".NeideNaZap'
      Visible = False
    end
  end
  object dsCrveni: TDataSource
    DataSet = DajCrvene
    Left = 180
    Top = 434
  end
  object frCrveni: TfrDBDataSet
    CloseDataSource = True
    DataSource = dsCrveni
    Left = 212
    Top = 466
  end
  object qTemp: TQuery
    DatabaseName = 'DBVoc'
    Filter = 'NeideNaZap=False'
    Filtered = True
    DataSource = DzahtMaster
    SQL.Strings = (
      'SELECT b.naziv vrsta, s.naziv sorta, '
      'v2.naziv ksorte, '
      'p.naziv podloga, '
      'v1.naziv kpodloge, '
      'k.naziv kategorija, '
      
        'z.kolicinastabala, z.koluvjerenje, z.jedmjkoluvjer, z.neidenaZap' +
        ','
      'z.sifra'
      'FROM zahtvocaridetail z'
      
        '   INNER JOIN biljnavrstavoc b  ON  (z.sifrabiljnavrsta = b.sifr' +
        'a)  '
      '   INNER JOIN sortavoc s  ON  (z.sifrasorta = s.sifra)'
      
        '   LEFT OUTER JOIN kategorijavoc k ON (z.SifraKategorija = k.sif' +
        'ra)'
      
        '   LEFT OUTER JOIN vrsteklonova v1 ON (z.SifraKlonPodloge = v1.s' +
        'ifra)'
      '   LEFT OUTER JOIN vrstepodloga p ON (z.SifraPodloga = p.sifra)'
      
        '   LEFT OUTER JOIN vrsteklonova v2 ON (z.SifraKlonSorte = v2.sif' +
        'ra)'
      
        '   LEFT OUTER JOIN NazivSadMatVOC sm ON (z.SifraNazSadMat = sm.s' +
        'ifra)'
      'WHERE  z.sifraZahtMast = :Sifra'
      'AND z.neidenazap=False'
      'AND sm.zap6=True'
      'AND z.printano=False'
      'ORDER BY vrsta, sorta, ksorte, podloga, kpodloge')
    Left = 332
    Top = 434
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'Sifra'
        ParamType = ptUnknown
      end>
    object qTempvrsta: TStringField
      FieldName = 'vrsta'
      Size = 45
    end
    object qTempsorta: TStringField
      FieldName = 'sorta'
      Size = 35
    end
    object qTempksorte: TStringField
      FieldName = 'ksorte'
      Size = 30
    end
    object qTemppodloga: TStringField
      FieldName = 'podloga'
      Size = 30
    end
    object qTempkpodloge: TStringField
      FieldName = 'kpodloge'
      Size = 30
    end
    object qTempkategorija: TStringField
      FieldName = 'kategorija'
      Size = 30
    end
    object qTempkolicinastabala: TIntegerField
      FieldName = 'kolicinastabala'
    end
    object qTempkoluvjerenje: TFloatField
      FieldName = 'koluvjerenje'
    end
    object qTempjedmjkoluvjer: TStringField
      FieldName = 'jedmjkoluvjer'
      Size = 4
    end
    object qTempneidenaZap: TBooleanField
      FieldName = 'neidenaZap'
    end
    object qTempsifra: TIntegerField
      FieldName = 'sifra'
    end
  end
  object dsTemp: TDataSource
    DataSet = qTemp
    Left = 300
    Top = 434
  end
  object frUvjer: TfrDBDataSet
    DataSource = DZahtDetail
    Left = 380
    Top = 394
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'frp'
    Filter = 'Snimljeni zapisnici|*.frp'
    Options = [ofReadOnly, ofHideReadOnly, ofEnableSizing]
    Left = 748
    Top = 69
  end
  object Query1: TQuery
    DatabaseName = 'DBVoc'
    Left = 512
    Top = 8
  end
  object qUvj: TQuery
    DatabaseName = 'DBVoc'
    DataSource = DzahtMaster
    SQL.Strings = (
      'SELECT b.naziv vrsta, '
      's.naziv sorta, '
      'v2.naziv ksorte, '
      'p.naziv podloga, '
      'v1.naziv kpodloge, '
      'k.naziv kategorija, '
      'z.kolicinastabala, '
      'z.koluvjerenje, z.jedmjkoluvjer'
      'FROM zahtvocaridetail z'
      
        '   INNER JOIN biljnavrstavoc b  ON  (z.sifrabiljnavrsta = b.sifr' +
        'a)  '
      '   INNER JOIN sortavoc s  ON  (z.sifrasorta = s.sifra)'
      
        '   LEFT OUTER JOIN kategorijavoc k ON (z.SifraKategorija = k.sif' +
        'ra)'
      
        '   LEFT OUTER JOIN vrsteklonova v1 ON (z.SifraKlonPodloge = v1.s' +
        'ifra)'
      '   LEFT OUTER JOIN vrstepodloga p ON (z.SifraPodloga = p.sifra)'
      
        '   LEFT OUTER JOIN vrsteklonova v2 ON (z.SifraKlonSorte = v2.sif' +
        'ra)'
      'WHERE  z.sifraZahtMast = :Sifra'
      'AND z.NeideNaUvj=False'
      'AND z.KolUvjerenje<>0')
    Left = 292
    Top = 195
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'Sifra'
        ParamType = ptUnknown
      end>
  end
  object dsUvj: TDataSource
    DataSet = qUvj
    Left = 292
    Top = 227
  end
  object PopupMenu3: TPopupMenu
    Images = Podaci.Images
    Left = 628
    Top = 61
    object MenuItem1: TMenuItem
      Tag = 1
      Caption = 'Prika'#382'i na ekran'
      ImageIndex = 28
      OnClick = Rjesenje
    end
    object MenuItem2: TMenuItem
      Caption = 'Ure'#273'ivanje'
      ImageIndex = 20
      OnClick = Rjesenje
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Pogledajsnimljeno2: TMenuItem
      Caption = 'Pogledaj snimljeno'
      ImageIndex = 29
      OnClick = Pogledajsnimljeno2Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Brojevi2: TMenuItem
      Caption = 'Brojevi'
      ImageIndex = 37
    end
  end
  object qRjesenje: TQuery
    DatabaseName = 'DBVoc'
    Filtered = True
    DataSource = DUvjerenje
    SQL.Strings = (
      'SELECT b.naziv vrsta, s.naziv sorta, '
      'v2.naziv ksorte, '
      'p.naziv podloga, '
      'v1.naziv kpodloge, '
      'k.naziv kategorija, '
      'z.kolicinastabala, '
      'z.nekakvoca, z.jmkakvoca,'
      'r.naziv rasadnik, z.SifraNazSadMat, sm.naziv'
      'FROM zahtvocaridetail z'
      
        '   INNER JOIN biljnavrstavoc b  ON  (z.sifrabiljnavrsta = b.sifr' +
        'a)  '
      '   INNER JOIN sortavoc s  ON  (z.sifrasorta = s.sifra)'
      
        '   LEFT OUTER JOIN kategorijavoc k ON (z.SifraKategorija = k.sif' +
        'ra)'
      
        '   LEFT OUTER JOIN vrsteklonova v1 ON (z.SifraKlonPodloge = v1.s' +
        'ifra)'
      '   LEFT OUTER JOIN vrstepodloga p ON (z.SifraPodloga = p.sifra)'
      
        '   LEFT OUTER JOIN vrsteklonova v2 ON (z.SifraKlonSorte = v2.sif' +
        'ra)'
      
        '   LEFT OUTER JOIN NazivSadMatVOC sm ON (z.SifraNazSadMat = sm.s' +
        'ifra),'
      
        '   rasadnicivoc r INNER JOIN zahtvocarimaster m ON (r.sifra = m.' +
        'sifrarasadnik) '
      '   INNER JOIN uvjerenje u ON (m.sifrauvjerenje = u.sifra)'
      'WHERE  z.sifraZahtMast = m.sifra'
      'AND u.sifrapodnositeljzaht = :SifraPodnositeljZaht'
      'AND z.nekakvoca<>0'
      'ORDER BY rasadnik, vrsta, sorta, ksorte, podloga, kpodloge')
    Left = 428
    Top = 434
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SifraPodnositeljZaht'
        ParamType = ptUnknown
      end>
    object qRjesenjevrsta: TStringField
      FieldName = 'vrsta'
      Size = 45
    end
    object qRjesenjesorta: TStringField
      FieldName = 'sorta'
      Size = 35
    end
    object qRjesenjeksorte: TStringField
      FieldName = 'ksorte'
      Size = 30
    end
    object qRjesenjepodloga: TStringField
      FieldName = 'podloga'
      Size = 30
    end
    object qRjesenjekpodloge: TStringField
      FieldName = 'kpodloge'
      Size = 30
    end
    object qRjesenjekategorija: TStringField
      FieldName = 'kategorija'
      Size = 30
    end
    object qRjesenjekolicinastabala: TIntegerField
      FieldName = 'kolicinastabala'
    end
    object qRjesenjenekakvoca: TFloatField
      FieldName = 'nekakvoca'
    end
    object qRjesenjejmkakvoca: TStringField
      FieldName = 'jmkakvoca'
      Size = 4
    end
    object qRjesenjerasadnik: TStringField
      FieldName = 'rasadnik'
      Size = 60
    end
    object qRjesenjeSifraNazSadMat: TIntegerField
      FieldName = 'SifraNazSadMat'
    end
    object qRjesenjenaziv: TStringField
      FieldName = 'naziv'
      Size = 35
    end
  end
  object frRjesenje: TfrDBDataSet
    CloseDataSource = True
    DataSource = dsRjesenje
    Left = 432
    Top = 464
  end
  object dsRjesenje: TDataSource
    DataSet = qRjesenje
    Left = 396
    Top = 434
  end
  object frPrirast: TfrDBDataSet
    CloseDataSource = True
    DataSource = dsPrirast
    Left = 504
    Top = 464
  end
  object qPrirast: TQuery
    DatabaseName = 'DBVoc'
    Filtered = True
    DataSource = DUvjerenje
    SQL.Strings = (
      'SELECT b.naziv vrsta, s.naziv sorta, '
      'v2.naziv ksorte, '
      'p.naziv podloga, '
      'v1.naziv kpodloge, '
      'k.naziv kategorija, '
      'z.kolicinastabala, '
      'z.neprirast, z.jmprirast,'
      'r.naziv rasadnik, z.SifraNazSadMat, sm.naziv'
      'FROM zahtvocaridetail z'
      
        '   INNER JOIN biljnavrstavoc b  ON  (z.sifrabiljnavrsta = b.sifr' +
        'a)  '
      '   INNER JOIN sortavoc s  ON  (z.sifrasorta = s.sifra)'
      
        '   LEFT OUTER JOIN kategorijavoc k ON (z.SifraKategorija = k.sif' +
        'ra)'
      
        '   LEFT OUTER JOIN vrsteklonova v1 ON (z.SifraKlonPodloge = v1.s' +
        'ifra)'
      '   LEFT OUTER JOIN vrstepodloga p ON (z.SifraPodloga = p.sifra)'
      
        '   LEFT OUTER JOIN vrsteklonova v2 ON (z.SifraKlonSorte = v2.sif' +
        'ra)'
      
        '   LEFT OUTER JOIN NazivSadMatVOC sm ON (z.SifraNazSadMat = sm.s' +
        'ifra),'
      
        '   rasadnicivoc r INNER JOIN zahtvocarimaster m ON (r.sifra = m.' +
        'sifrarasadnik) '
      '   INNER JOIN uvjerenje u ON (m.sifrauvjerenje = u.sifra)'
      'WHERE  z.sifraZahtMast = m.sifra'
      'AND u.sifrapodnositeljzaht = :SifraPodnositeljZaht'
      'AND z.neprirast<>0'
      'ORDER BY rasadnik, vrsta, sorta, ksorte, podloga, kpodloge')
    Left = 500
    Top = 434
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SifraPodnositeljZaht'
        ParamType = ptUnknown
      end>
    object qPrirastvrsta: TStringField
      FieldName = 'vrsta'
      Size = 45
    end
    object qPrirastsorta: TStringField
      FieldName = 'sorta'
      Size = 35
    end
    object qPrirastksorte: TStringField
      FieldName = 'ksorte'
      Size = 30
    end
    object qPrirastpodloga: TStringField
      FieldName = 'podloga'
      Size = 30
    end
    object qPrirastkpodloge: TStringField
      FieldName = 'kpodloge'
      Size = 30
    end
    object qPrirastkategorija: TStringField
      FieldName = 'kategorija'
      Size = 30
    end
    object qPrirastkolicinastabala: TIntegerField
      FieldName = 'kolicinastabala'
    end
    object qPrirastneprirast: TFloatField
      FieldName = 'neprirast'
    end
    object qPrirastjmprirast: TStringField
      FieldName = 'jmprirast'
      Size = 4
    end
    object qPrirastrasadnik: TStringField
      FieldName = 'rasadnik'
      Size = 60
    end
    object qPrirastSifraNazSadMat: TIntegerField
      FieldName = 'SifraNazSadMat'
    end
    object qPrirastnaziv: TStringField
      FieldName = 'naziv'
      Size = 35
    end
  end
  object dsPrirast: TDataSource
    DataSet = qPrirast
    Left = 468
    Top = 434
  end
end
