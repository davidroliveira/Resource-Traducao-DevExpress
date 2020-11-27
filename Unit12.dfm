object Form12: TForm12
  Left = 0
  Top = 0
  Caption = 'Form12'
  ClientHeight = 344
  ClientWidth = 922
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 24
    Top = 24
    Width = 449
    Height = 200
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvAlways
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 496
    Top = 167
    Width = 121
    Height = 25
    Caption = 'Carga Idiomas'
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object cxListBox1: TcxListBox
    Left = 496
    Top = 64
    Width = 185
    Height = 97
    ItemHeight = 13
    TabOrder = 2
    OnDblClick = cxListBox1DblClick
  end
  object Button1: TButton
    Left = 744
    Top = 64
    Width = 161
    Height = 57
    Caption = 'French'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 744
    Top = 127
    Width = 161
    Height = 57
    Caption = 'Italian'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 744
    Top = 191
    Width = 161
    Height = 57
    Caption = 'Tupiniquim'
    TabOrder = 5
    OnClick = Button3Click
  end
  object cxLocalizer1: TcxLocalizer
    StorageType = lstResource
    Left = 56
    Top = 248
  end
end
