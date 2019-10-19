object FNacinObradeDlg: TFNacinObradeDlg
  Left = 365
  Top = 160
  BorderStyle = bsDialog
  Caption = 'Naèin obrade podataka'
  ClientHeight = 211
  ClientWidth = 310
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 310
    Height = 211
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 2
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 110
      Top = 171
      Width = 75
      Height = 25
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
    object RadioGroup1: TRadioGroup
      Left = 16
      Top = 17
      Width = 113
      Height = 139
      Caption = ' Jedinica mjere '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 2
      Items.Strings = (
        'kg'
        'zrna'
        'kom'
        'g')
      ParentFont = False
      TabOrder = 1
    end
    object RadioGroup2: TRadioGroup
      Left = 144
      Top = 17
      Width = 153
      Height = 140
      Caption = ' Zbroji po koloni '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'kolièina po prijavi'
        'kolièina pregled prvi'
        'kolièina pregled drugi'
        'kolièina na uvjerenju'
        'kolièina broj stabala'
        'kolièina pupova preg. 1')
      ParentFont = False
      TabOrder = 2
    end
  end
end
