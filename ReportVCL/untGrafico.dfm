object frmGrafico: TfrmGrafico
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Gr'#225'fico'
  ClientHeight = 527
  ClientWidth = 837
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBChart1: TDBChart
    Left = 0
    Top = 0
    Width = 837
    Height = 527
    Title.Font.Height = -21
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'Gr'#225'fico Mensal de Qtd. de litros Vendidos')
    BottomAxis.Title.Caption = 'Ano-M'#234's'
    BottomAxis.Title.Font.Height = -13
    BottomAxis.Title.Font.Style = [fsBold]
    LeftAxis.Title.Caption = 'Quantidade (lts)'
    LeftAxis.Title.Font.Height = -13
    LeftAxis.Title.Font.Style = [fsBold]
    Legend.Title.Text.Strings = (
      'Combust'#237'veis')
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 827
    ExplicitHeight = 517
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      20
      15
      20)
    ColorPaletteIndex = 13
    object Series1: TBarSeries
      Legend.Text = 'Combust'#237'veis:'
      LegendTitle = 'Combust'#237'veis:'
      Active = False
      Marks.Emboss.Visible = True
      Marks.Style = smsValue
      Marks.Symbol.Visible = True
      DataSource = DBCrossTabSource1
      XLabelsSource = 'DT_MOVIMENTO'
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'DT_MOVIMENTO'
      YValues.Name = 'Bar'
      YValues.Order = loNone
      YValues.ValueSource = 'QTD_LITROS'
    end
  end
  object DBCrossTabSource1: TDBCrossTabSource
    GroupField = 'DESC_COMBUST'
    LabelField = 'ANO_MES'
    Series = Series1
    ValueField = 'QTD_LITROS'
    DataSet = DMReport.qryReport
    Left = 760
    Top = 192
  end
end
