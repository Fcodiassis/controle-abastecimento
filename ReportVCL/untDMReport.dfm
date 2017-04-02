object DMReport: TDMReport
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 217
  Width = 333
  object fdConexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Diassis\Documents\Embarcadero\Studio\Projects\' +
        'Abastecimento\database\Abastecimento.db3'
      'OpenMode=ReadWrite'
      'LockingMode=Normal'
      'SharedCache=False'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 80
    Top = 24
  end
  object qryReport: TFDQuery
    Connection = fdConexao
    SQL.Strings = (
      'SELECT'
      'A.ID_MOVIMENTO,'
      'A.DT_MOVIMENTO, '
      'C.DESC_TANQUE,'
      'B.DESC_BOMBA,'
      'D.DESC_COMBUST,'
      'A.QTD_LITROS,'
      'A.VLR_ABASTEC,'
      'A.VLR_IMPOSTO,'
      'SUBSTR(DATE(A.DT_MOVIMENTO),1,7) ANO_MES,'
      'R.DATA_FIM, R.DATA_INI'
      'FROM MOVIMENTO A '
      'INNER JOIN BOMBA B ON A.ID_BOMBA = B.ID_BOMBA'
      'INNER JOIN TANQUE C ON B.ID_TANQUE = C.ID_TANQUE   '
      'INNER JOIN COMBUSTIVEL D ON C.ID_cOMBUST = D.ID_COMBUST'
      
        'INNER JOIN REPORT R ON A.DT_MOVIMENTO >= R.DATA_INI AND A.DT_MOV' +
        'IMENTO <= R.DATA_FIM ')
    Left = 80
    Top = 136
    object qryReportID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      Origin = 'ID_MOVIMENTO'
      Required = True
    end
    object qryReportDT_MOVIMENTO: TDateField
      FieldName = 'DT_MOVIMENTO'
      Origin = 'DT_MOVIMENTO'
    end
    object qryReportDESC_TANQUE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_TANQUE'
      Origin = 'DESC_TANQUE'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object qryReportDESC_BOMBA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_BOMBA'
      Origin = 'DESC_BOMBA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryReportDESC_COMBUST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_COMBUST'
      Origin = 'DESC_COMBUST'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryReportQTD_LITROS: TFloatField
      FieldName = 'QTD_LITROS'
      Origin = 'QTD_LITROS'
    end
    object qryReportVLR_ABASTEC: TFloatField
      FieldName = 'VLR_ABASTEC'
      Origin = 'VLR_ABASTEC'
    end
    object qryReportVLR_IMPOSTO: TFloatField
      FieldName = 'VLR_IMPOSTO'
      Origin = 'VLR_IMPOSTO'
    end
    object qryReportDATA_FIM: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_FIM'
      Origin = 'DATA_FIM'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryReportDATA_INI: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_INI'
      Origin = 'DATA_INI'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryReportANO_MES: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ANO_MES'
      Origin = 'ANO_MES'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object dsReport: TDataSource
    DataSet = qryReport
    Left = 80
    Top = 80
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 224
    Top = 88
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel 97-2013'
    Left = 224
    Top = 32
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 224
    Top = 136
  end
end
