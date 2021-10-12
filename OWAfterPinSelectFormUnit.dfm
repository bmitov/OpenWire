object OWAfterPinSelectForm: TOWAfterPinSelectForm
  Left = 100
  Top = 100
  Caption = 'Pin Selection Dialog'
  ClientHeight = 267
  ClientWidth = 220
  Color = clBtnFace
  Constraints.MinHeight = 200
  Constraints.MinWidth = 200
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  TextHeight = 13
  object ListBox: TListBox
    Left = 0
    Top = 0
    Width = 220
    Height = 226
    Align = alClient
    ItemHeight = 13
    TabOrder = 0
    OnDblClick = ListBoxDblClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 226
    Width = 220
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Panel2: TPanel
      Left = 34
      Top = 1
      Width = 185
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object CancelButton: TBitBtn
        Left = 96
        Top = 8
        Width = 75
        Height = 25
        Kind = bkCancel
        NumGlyphs = 2
        TabOrder = 0
      end
      object OkButton: TBitBtn
        Left = 8
        Top = 8
        Width = 75
        Height = 25
        Kind = bkOK
        NumGlyphs = 2
        TabOrder = 1
      end
    end
  end
end
