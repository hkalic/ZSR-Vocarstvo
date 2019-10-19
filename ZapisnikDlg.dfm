object KojiZapDlg: TKojiZapDlg
  Left = 362
  Top = 230
  BorderStyle = bsDialog
  Caption = 'Odaberite zapisnik'
  ClientHeight = 201
  ClientWidth = 219
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 219
    Height = 201
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 2
    TabOrder = 0
    object Edit1: TEdit
      Left = 8
      Top = 160
      Width = 33
      Height = 21
      Enabled = False
      TabOrder = 6
      Visible = False
    end
    object Button1: TButton
      Left = 24
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Odabir'
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      Left = 120
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Odustani'
      ModalResult = 2
      TabOrder = 1
    end
    object rZap5: TRadioButton
      Left = 80
      Top = 32
      Width = 73
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Zapisnik 5'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = rZap5Click
    end
    object rZap6: TRadioButton
      Left = 80
      Top = 56
      Width = 73
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Zapisnik 6'
      TabOrder = 3
      OnClick = rZap5Click
    end
    object rSve: TRadioButton
      Left = 56
      Top = 80
      Width = 97
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Sve na zapisnik'
      TabOrder = 4
      OnClick = rZap5Click
    end
    object Panel2: TPanel
      Left = 8
      Top = 96
      Width = 201
      Height = 33
      BevelOuter = bvNone
      TabOrder = 5
      object RadioLeft: TRadioButton
        Left = 16
        Top = 8
        Width = 73
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Repro voæe'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RadioRight: TRadioButton
        Left = 112
        Top = 8
        Width = 73
        Height = 17
        Caption = 'Repro loza'
        TabOrder = 1
      end
    end
    object Snimi: TCheckBox
      Left = 8
      Top = 10
      Width = 49
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Snimi'
      TabOrder = 7
      Visible = False
    end
    object Panel3: TPanel
      Left = 8
      Top = 120
      Width = 201
      Height = 33
      BevelOuter = bvNone
      TabOrder = 8
      Visible = False
      object RadioButton1: TRadioButton
        Left = 24
        Top = 8
        Width = 65
        Height = 17
        Alignment = taLeftJustify
        Caption = 'I zapisnik'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RadioButton2: TRadioButton
        Left = 112
        Top = 8
        Width = 73
        Height = 17
        Caption = 'II zapisnik'
        TabOrder = 1
      end
    end
  end
end
