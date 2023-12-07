inherited OWAfterPinSelectForm: TOWAfterPinSelectForm
  Left = 100
  Top = 100
  Caption = 'Pin Selection Dialog'
  ClientHeight = 264
  ClientWidth = 228
  Constraints.MinHeight = 200
  Constraints.MinWidth = 200
  Font.Name = 'MS Sans Serif'
  Position = poOwnerFormCenter
  ExplicitWidth = 244
  ExplicitHeight = 303
  TextHeight = 13
  inherited FooterPanel: TPanel
    Top = 223
    Width = 228
    TabOrder = 1
    inherited OKButton: TButton
      Left = 63
    end
    inherited CancelButton: TButton
      Left = 144
    end
  end
  object ListBox: TListBox
    Left = 0
    Top = 0
    Width = 228
    Height = 223
    Align = alClient
    ItemHeight = 13
    TabOrder = 0
    OnDblClick = ListBoxDblClick
    ExplicitWidth = 299
    ExplicitHeight = 225
  end
end
