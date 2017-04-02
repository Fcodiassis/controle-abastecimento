object frmReport: TfrmReport
  Left = 0
  Top = 0
  Caption = 'frmReport'
  ClientHeight = 659
  ClientWidth = 833
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pgcrtReport: TPageControl
    Left = 0
    Top = 0
    Width = 833
    Height = 659
    Align = alClient
    TabOrder = 0
  end
  object RLReport1: TRLReport
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    DataSource = DMReport.dsReport
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand2: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 56
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Color = clSilver
      ParentColor = False
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 3
        Top = 3
        Width = 303
        Height = 24
        Caption = 'Movimentos de Abastecimentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 595
        Top = 31
        Width = 113
        Height = 16
        Alignment = taRightJustify
        Text = 'Extra'#237'do em:'
        Transparent = False
      end
      object RLLabel17: TRLLabel
        Left = 245
        Top = 31
        Width = 142
        Height = 16
        Alignment = taRightJustify
        Caption = 'Per'#237'odo Selecionado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText8: TRLDBText
        Left = 395
        Top = 31
        Width = 60
        Height = 16
        Alignment = taRightJustify
        DataField = 'DATA_INI'
        DataSource = DMReport.dsReport
        DisplayMask = '0.00'
        Text = ''
      end
      object RLLabel18: TRLLabel
        Left = 459
        Top = 31
        Width = 11
        Height = 16
        Alignment = taCenter
        Caption = 'a'
        Transparent = False
      end
      object RLDBText9: TRLDBText
        Left = 475
        Top = 31
        Width = 67
        Height = 16
        Alignment = taRightJustify
        DataField = 'DATA_FIM'
        DataSource = DMReport.dsReport
        DisplayMask = '0.00'
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 586
        Top = 7
        Width = 122
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
        Text = 'Pag.: '
        Transparent = False
      end
      object RLLabel2: TRLLabel
        Left = 7
        Top = 31
        Width = 94
        Height = 16
        Alignment = taRightJustify
        Caption = 'Agrupamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object rlLabTipoGrupo: TRLLabel
        Left = 105
        Top = 31
        Width = 85
        Height = 16
        Caption = 'Agrupamento:'
        Transparent = False
      end
    end
    object FooterReport: TRLBand
      Left = 38
      Top = 234
      Width = 718
      Height = 31
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel16: TRLLabel
        Left = 170
        Top = 6
        Width = 165
        Height = 16
        Caption = 'Totais Gerais no Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult4: TRLDBResult
        Left = 341
        Top = 6
        Width = 121
        Height = 16
        Alignment = taRightJustify
        DataField = 'QTD_LITROS'
        DataSource = DMReport.dsReport
        DisplayMask = '0.00'
        Info = riSum
        ResetAfterPrint = True
        Text = ''
      end
      object RLDBResult5: TRLDBResult
        Left = 452
        Top = 6
        Width = 136
        Height = 16
        Alignment = taRightJustify
        DataField = 'VLR_ABASTEC'
        DataSource = DMReport.dsReport
        DisplayMask = '0.00'
        Info = riSum
        ResetAfterPrint = True
        Text = ''
      end
      object RLDBResult6: TRLDBResult
        Left = 581
        Top = 6
        Width = 134
        Height = 16
        Alignment = taRightJustify
        DataField = 'VLR_IMPOSTO'
        DataSource = DMReport.dsReport
        DisplayMask = '0.00'
        Info = riSum
        ResetAfterPrint = True
        Text = ''
      end
    end
    object HeaderReport: TRLBand
      Left = 38
      Top = 94
      Width = 718
      Height = 24
      BandType = btHeader
    end
    object rlGrupo: TRLGroup
      Left = 38
      Top = 118
      Width = 718
      Height = 116
      DataFields = 'DESC_COMBUST'
      object Detalhe: TRLBand
        Left = 0
        Top = 60
        Width = 718
        Height = 23
        object rldbDbDetalhe: TRLDBText
          Left = 240
          Top = 6
          Width = 95
          Height = 16
          DataField = 'DESC_BOMBA'
          DataSource = DMReport.dsReport
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 381
          Top = 6
          Width = 82
          Height = 16
          Alignment = taRightJustify
          DataField = 'QTD_LITROS'
          DataSource = DMReport.dsReport
          DisplayMask = '0.00'
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 492
          Top = 6
          Width = 97
          Height = 16
          Alignment = taRightJustify
          DataField = 'VLR_ABASTEC'
          DataSource = DMReport.dsReport
          DisplayMask = '0.00'
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 128
          Top = 6
          Width = 106
          Height = 16
          DataField = 'DT_MOVIMENTO'
          DataSource = DMReport.dsReport
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 620
          Top = 6
          Width = 95
          Height = 16
          Alignment = taRightJustify
          DataField = 'VLR_IMPOSTO'
          DataSource = DMReport.dsReport
          DisplayMask = '0.00'
          Text = ''
        end
        object RLDBText10: TRLDBText
          Left = 27
          Top = 6
          Width = 102
          Height = 16
          DataField = 'ID_MOVIMENTO'
          DataSource = DMReport.dsReport
          Text = ''
        end
      end
      object HeaderGrupo: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 60
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLDraw1: TRLDraw
          Left = 30
          Top = 9
          Width = 627
          Height = 26
        end
        object rlLabGrupo: TRLLabel
          Left = 40
          Top = 13
          Width = 131
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Tipo Combust'#237'vel: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rldbDbGrupo: TRLDBText
          Left = 174
          Top = 13
          Width = 111
          Height = 16
          DataField = 'DESC_COMBUST'
          DataSource = DMReport.dsReport
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel8: TRLLabel
          Left = 128
          Top = 41
          Width = 33
          Height = 16
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rlLabDetalhe: TRLLabel
          Left = 240
          Top = 41
          Width = 49
          Height = 16
          Caption = 'Bomba'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 367
          Top = 40
          Width = 95
          Height = 16
          Caption = 'Qtd. Litros (lts)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 468
          Top = 40
          Width = 124
          Height = 16
          Caption = 'Vlr.Abastecido (R$)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 633
          Top = 40
          Width = 82
          Height = 16
          Caption = 'Imposto (R$)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rlLabGrupTanq: TRLLabel
          Left = 396
          Top = 13
          Width = 127
          Height = 16
          Caption = 'Tanque Armazenado:'
        end
        object rlDbGrupTanq: TRLDBText
          Left = 526
          Top = 13
          Width = 99
          Height = 16
          DataField = 'DESC_TANQUE'
          DataSource = DMReport.dsReport
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel3: TRLLabel
          Left = 27
          Top = 40
          Width = 83
          Height = 16
          Caption = 'Lan'#231'amento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object FooterGrupo: TRLBand
        Left = 0
        Top = 83
        Width = 718
        Height = 32
        BandType = btFooter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDBResult1: TRLDBResult
          Left = 342
          Top = 4
          Width = 121
          Height = 16
          Alignment = taRightJustify
          DataField = 'QTD_LITROS'
          DataSource = DMReport.dsReport
          DisplayMask = '0.00'
          Info = riSum
          ResetAfterPrint = True
          Text = ''
        end
        object RLDBResult2: TRLDBResult
          Left = 453
          Top = 4
          Width = 136
          Height = 16
          Alignment = taRightJustify
          DataField = 'VLR_ABASTEC'
          DataSource = DMReport.dsReport
          DisplayMask = '0.00'
          Info = riSum
          ResetAfterPrint = True
          Text = ''
        end
        object RLDBResult3: TRLDBResult
          Left = 581
          Top = 4
          Width = 134
          Height = 16
          Alignment = taRightJustify
          DataField = 'VLR_IMPOSTO'
          DataSource = DMReport.dsReport
          DisplayMask = '0.00'
          Info = riSum
          ResetAfterPrint = True
          Text = ''
        end
        object RLLabel15: TRLLabel
          Left = 171
          Top = 4
          Width = 165
          Height = 16
          Caption = 'Subtotais p/ Combust'#237'vel:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
end
