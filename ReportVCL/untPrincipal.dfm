object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rios'
  ClientHeight = 180
  ClientWidth = 388
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object spbSair: TSpeedButton
    Left = 276
    Top = 127
    Width = 89
    Height = 26
    Caption = 'Sair'
    OnClick = spbSairClick
  end
  object spbGrafico: TSpeedButton
    Left = 181
    Top = 127
    Width = 89
    Height = 26
    Caption = 'Gr'#225'fico Mensal'
    OnClick = spbGraficoClick
  end
  object spbReport: TSpeedButton
    Left = 276
    Top = 71
    Width = 89
    Height = 26
    Caption = 'Exibir Relat'#243'rio'
    OnClick = spbReportClick
  end
  object rfgAgrReport: TRadioGroup
    Left = 24
    Top = 8
    Width = 233
    Height = 89
    Caption = ' Agrupamentos por: '
    ItemIndex = 0
    Items.Strings = (
      'Tipo de Combust'#237'vel'
      'Bomba'
      'M'#234's/Ano')
    TabOrder = 0
  end
end
