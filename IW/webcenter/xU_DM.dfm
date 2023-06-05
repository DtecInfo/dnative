object DM: TDM
  OldCreateOrder = False
  Height = 520
  Width = 868
  object ConexaoBD: TFDConnection
    Params.Strings = (
      
        'Database=C:\Marcelo Giratto - Cursos Online\Fontes das Aulas\Sis' +
        'HelpDesk\Win32\Debug\BancoDados\HELPDESK.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Server=localhost'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 8
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 144
    Top = 8
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 264
    Top = 8
  end
  object FDQMenu: TFDQuery
    Connection = ConexaoBD
    SQL.Strings = (
      'Select * from Menu'
      'Order by Item')
    Left = 32
    Top = 72
    object FDQMenuIDMODULO: TIntegerField
      FieldName = 'IDMODULO'
      Origin = 'IDMODULO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQMenuITEM: TStringField
      FieldName = 'ITEM'
      Origin = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object FDQMenuDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object FDQMenuNIVELMENU: TStringField
      FieldName = 'NIVELMENU'
      Origin = 'NIVELMENU'
      Size = 15
    end
    object FDQMenuICONE: TStringField
      FieldName = 'ICONE'
      Origin = 'ICONE'
      Size = 50
    end
    object FDQMenuNOMEFORM: TStringField
      FieldName = 'NOMEFORM'
      Origin = 'NOMEFORM'
      Size = 50
    end
  end
  object FDQQuery: TFDQuery
    Connection = ConexaoBD
    Left = 128
    Top = 72
  end
  object FDQQuery1: TFDQuery
    Connection = ConexaoBD
    Left = 232
    Top = 72
  end
  object FDQQuery2: TFDQuery
    Connection = ConexaoBD
    Left = 336
    Top = 72
  end
  object FDQQuery3: TFDQuery
    Connection = ConexaoBD
    Left = 448
    Top = 72
  end
end
