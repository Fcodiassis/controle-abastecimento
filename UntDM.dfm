object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 253
  Width = 410
  object FDConexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Diassis\Documents\Embarcadero\Studio\Projects\' +
        'Abastecimento\database\Abastecimento.db3'
      'OpenMode=ReadWrite'
      'LockingMode=Normal'
      'SharedCache=False'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 32
    Top = 24
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 328
    Top = 24
  end
  object qryTanque: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'SELECT '
      'ID_TANQUE,'
      'DESC_TANQUE,'
      'TNQ_CAPACIDADE,'
      'ID_COMBUST '
      'FROM TANQUE')
    Left = 152
    Top = 120
    object qryTanqueID_TANQUE: TSmallintField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTanqueDESC_TANQUE: TStringField
      FieldName = 'DESC_TANQUE'
      Origin = 'DESC_TANQUE'
      Size = 30
    end
    object qryTanqueTNQ_CAPACIDADE: TIntegerField
      FieldName = 'TNQ_CAPACIDADE'
      Origin = 'TNQ_CAPACIDADE'
    end
    object qryTanqueID_COMBUST: TSmallintField
      FieldName = 'ID_COMBUST'
      Origin = 'ID_COMBUST'
      Required = True
    end
    object qryTanqueCOMBUSTIVEL: TStringField
      FieldKind = fkLookup
      FieldName = 'COMBUSTIVEL'
      LookupDataSet = qryCombustivel
      LookupKeyFields = 'ID_COMBUST'
      LookupResultField = 'DESC_COMBUST'
      KeyFields = 'ID_COMBUST'
      Lookup = True
    end
  end
  object qryCombustivel: TFDQuery
    Connection = FDConexao
    FetchOptions.AssignedValues = [evItems]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    SQL.Strings = (
      'SELECT '
      'ID_COMBUST,'
      'DESC_COMBUST,'
      'VLR_LT_COMBUST'
      'FROM COMBUSTIVEL')
    Left = 56
    Top = 120
    object qryCombustivelID_COMBUST: TSmallintField
      FieldName = 'ID_COMBUST'
      Required = True
    end
    object qryCombustivelDESC_COMBUST: TStringField
      FieldName = 'DESC_COMBUST'
    end
    object qryCombustivelVLR_LT_COMBUST: TFloatField
      FieldName = 'VLR_LT_COMBUST'
      DisplayFormat = '0.00'
    end
  end
  object qryBomba: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'SELECT '
      'ID_BOMBA,'
      'DESC_BOMBA,'
      'ID_TANQUE'
      'FROM BOMBA')
    Left = 256
    Top = 120
    object qryBombaID_BOMBA: TSmallintField
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryBombaDESC_BOMBA: TStringField
      FieldName = 'DESC_BOMBA'
      Origin = 'DESC_BOMBA'
    end
    object qryBombaID_TANQUE: TSmallintField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      Required = True
    end
    object qryBombaCAPACIDADE: TIntegerField
      FieldKind = fkLookup
      FieldName = 'CAPACIDADE'
      LookupDataSet = qryTanque
      LookupKeyFields = 'ID_TANQUE'
      LookupResultField = 'TNQ_CAPACIDADE'
      KeyFields = 'ID_TANQUE'
      Lookup = True
    end
    object qryBombaDESCR_TANQUE: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCR_TANQUE'
      LookupDataSet = qryTanque
      LookupKeyFields = 'ID_TANQUE'
      LookupResultField = 'DESC_TANQUE'
      KeyFields = 'ID_TANQUE'
      Size = 30
      Lookup = True
    end
  end
  object qryMovimento: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'SELECT '
      'ID_MOVIMENTO,'
      'DT_MOVIMENTO,'
      'ID_BOMBA,'
      'QTD_LITROS,'
      'VLR_ABASTEC,'
      'VLR_IMPOSTO,'
      'VLR_TOTAL'
      'FROM MOVIMENTO')
    Left = 344
    Top = 120
    object qryMovimentoID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      Origin = 'ID_MOVIMENTO'
      Required = True
    end
    object qryMovimentoDT_MOVIMENTO: TDateField
      FieldName = 'DT_MOVIMENTO'
      Origin = 'DT_MOVIMENTO'
    end
    object qryMovimentoID_BOMBA: TSmallintField
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      Required = True
    end
    object qryMovimentoQTD_LITROS: TFloatField
      FieldName = 'QTD_LITROS'
      Origin = 'QTD_LITROS'
      DisplayFormat = '0.00'
    end
    object qryMovimentoVLR_ABASTEC: TFloatField
      FieldName = 'VLR_ABASTEC'
      Origin = 'VLR_ABASTEC'
      DisplayFormat = '0.00'
    end
    object qryMovimentoVLR_IMPOSTO: TFloatField
      FieldName = 'VLR_IMPOSTO'
      Origin = 'VLR_IMPOSTO'
      DisplayFormat = '0.00'
    end
    object qryMovimentoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      Origin = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object qryMovimentoBOMBA: TStringField
      FieldKind = fkLookup
      FieldName = 'BOMBA'
      LookupDataSet = qryBomba
      LookupKeyFields = 'ID_BOMBA'
      LookupResultField = 'DESC_BOMBA'
      KeyFields = 'ID_BOMBA'
      Size = 30
      Lookup = True
    end
    object qryMovimentoVALOR_UNIT: TFloatField
      FieldKind = fkLookup
      FieldName = 'VALOR_UNIT'
      LookupDataSet = qryVlrUntBomb
      LookupKeyFields = 'ID_BOMBA'
      LookupResultField = 'VLR_LT_COMBUST'
      KeyFields = 'ID_BOMBA'
      DisplayFormat = '0.00'
      Lookup = True
    end
    object qryMovimentoCOMBUSTIVEL: TStringField
      FieldKind = fkLookup
      FieldName = 'COMBUSTIVEL'
      LookupDataSet = qryVlrUntBomb
      LookupKeyFields = 'ID_BOMBA'
      LookupResultField = 'DESC_COMBUST'
      KeyFields = 'ID_BOMBA'
      Size = 30
      Lookup = True
    end
  end
  object qryApoio: TFDQuery
    Connection = FDConexao
    Left = 144
    Top = 184
  end
  object qryVlrUntBomb: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'SELECT'
      'B.ID_BOMBA,'
      'B.DESC_BOMBA,'
      'C.ID_TANQUE,'
      'D.VLR_LT_COMBUST,'
      'D.DESC_COMBUST'
      'FROM BOMBA B '
      'INNER JOIN TANQUE C ON B.ID_TANQUE = C.ID_TANQUE   '
      'INNER JOIN COMBUSTIVEL D ON C.ID_cOMBUST = D.ID_COMBUST')
    Left = 256
    Top = 184
    object qryVlrUntBombID_BOMBA: TSmallintField
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVlrUntBombDESC_BOMBA: TStringField
      FieldName = 'DESC_BOMBA'
      Origin = 'DESC_BOMBA'
      Required = True
    end
    object qryVlrUntBombID_TANQUE: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryVlrUntBombVLR_LT_COMBUST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VLR_LT_COMBUST'
      Origin = 'VLR_LT_COMBUST'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object qryVlrUntBombDESC_COMBUST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_COMBUST'
      Origin = 'DESC_COMBUST'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
