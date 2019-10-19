object FPozivSifDlg: TFPozivSifDlg
  Left = 219
  Top = 116
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Poziv šifarnika'
  ClientHeight = 295
  ClientWidth = 192
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 192
    Height = 295
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 2
    TabOrder = 0
    object Button1: TButton
      Tag = 1
      Left = 27
      Top = 16
      Width = 143
      Height = 25
      Caption = 'Partneri'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Tag = 2
      Left = 27
      Top = 41
      Width = 143
      Height = 25
      Caption = 'Biljne vrste'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button3: TButton
      Tag = 3
      Left = 27
      Top = 66
      Width = 143
      Height = 25
      Caption = 'Sorte'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button4: TButton
      Tag = 4
      Left = 27
      Top = 91
      Width = 143
      Height = 25
      Caption = 'Kategorije'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button5: TButton
      Tag = 5
      Left = 27
      Top = 116
      Width = 143
      Height = 25
      Caption = 'Rasadnici'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button6: TButton
      Tag = 6
      Left = 27
      Top = 141
      Width = 143
      Height = 25
      Caption = 'Naziv sadnog mat.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = Button1Click
    end
    object Button7: TButton
      Left = 29
      Top = 256
      Width = 137
      Height = 25
      Caption = 'Izlaz'
      TabOrder = 8
      OnClick = Button7Click
    end
    object Button8: TButton
      Tag = 7
      Left = 27
      Top = 166
      Width = 143
      Height = 25
      Caption = 'Vrste klonova'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = Button1Click
    end
    object Button9: TButton
      Tag = 8
      Left = 27
      Top = 191
      Width = 143
      Height = 25
      Caption = 'Vrste podloga'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = Button1Click
    end
  end
end
