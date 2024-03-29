inherited ControleFichas: TControleFichas
  OnCreate = IWAppFormCreate
  OnShow = IWAppFormShow
  DesignLeft = 2
  DesignTop = 2
  object combo_ficha_status: TIWComboBox [2]
    Left = 24
    Top = 96
    Width = 121
    Height = 21
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderVisibility = False
    StyleRenderOptions.RenderStatus = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    StyleRenderOptions.UseDisplay = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    ItemsHaveValues = True
    OnAsyncChange = combo_ficha_statusAsyncChange
    TabOrder = 2
    ItemIndex = 0
    Items.Strings = (
      'Todos=T'
      'Sem Aprovacao=S'
      'Sem Aprova'#231#227'o Gerente=G'
      'Sem Aprova'#231#227'o Operador=O'
      'Sem Aprova'#231#227'o Operado/Aprovado AC=AC'
      'Sem Aprova'#231#227'o Acess'#243'rios=A'
      'Aprovado Gerente e Operador=GO'
      'Aprovado TODOS=AT')
    FriendlyName = 'combo_ficha_status'
    NoSelectionText = '-- No Selection --'
  end
  object combo_vendedor: TIWDBLookupComboBox [3]
    Left = 24
    Top = 136
    Width = 121
    Height = 21
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderVisibility = False
    StyleRenderOptions.RenderStatus = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    StyleRenderOptions.UseDisplay = True
    Enabled = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    OnAsyncChange = combo_vendedorAsyncChange
    TabOrder = 3
    AutoEditable = False
    FriendlyName = 'combo_vendedor'
    KeyField = 'NOME'
    ListField = 'VENDEDOR'
    ListSource = ds_q_vendedores
    DisableWhenEmpty = True
    NoSelectionText = 'Todos'
  end
  object combo_empresas: TIWDBLookupComboBox [4]
    Left = 24
    Top = 184
    Width = 121
    Height = 21
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderVisibility = False
    StyleRenderOptions.RenderStatus = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Enabled = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    OnAsyncChange = combo_empresasAsyncChange
    TabOrder = 4
    AutoEditable = False
    FriendlyName = 'combo_empresas'
    KeyField = 'COD_EMPRESA'
    ListField = 'NOME'
    ListSource = ds_q_empresas
    DisableWhenEmpty = True
    NoSelectionText = 'Todas'
  end
  object data_ini: TIWEdit [5]
    Left = 24
    Top = 211
    Width = 105
    Height = 25
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderVisibility = False
    StyleRenderOptions.RenderStatus = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'data_ini'
    SubmitOnAsyncEvent = True
    TabOrder = 5
    OnAsyncChange = data_iniAsyncChange
    Enabled = False
    DataType = stDate
  end
  object data_fim: TIWEdit [6]
    Left = 24
    Top = 242
    Width = 105
    Height = 25
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderVisibility = False
    StyleRenderOptions.RenderStatus = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'data_ini'
    SubmitOnAsyncEvent = True
    TabOrder = 6
    OnAsyncChange = data_fimAsyncChange
    Enabled = False
    DataType = stDate
  end
  object ck_data_ini: TIWCheckBox [7]
    Left = 24
    Top = 273
    Width = 25
    Height = 21
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderVisibility = False
    StyleRenderOptions.RenderStatus = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 7
    OnAsyncChange = ck_data_iniAsyncChange
    Checked = False
    FriendlyName = 'ck_data_ini'
  end
  object ck_data_fim: TIWCheckBox [8]
    Left = 24
    Top = 289
    Width = 25
    Height = 21
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderVisibility = False
    StyleRenderOptions.RenderStatus = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 8
    OnAsyncChange = ck_data_fimAsyncChange
    Checked = False
    FriendlyName = 'ck_data_ini'
  end
  object combo_origens: TIWDBLookupComboBox [9]
    Left = 24
    Top = 328
    Width = 121
    Height = 21
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderVisibility = False
    StyleRenderOptions.RenderStatus = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    OnAsyncChange = combo_origensAsyncChange
    TabOrder = 9
    AutoEditable = False
    FriendlyName = 'combo_origens'
    KeyField = 'ORIGEM'
    ListField = 'ORIGEM'
    ListSource = ds_q_origens
    DisableWhenEmpty = True
    NoSelectionText = 'Todas'
  end
  object combo_status_finan: TIWDBLookupComboBox [10]
    Left = 24
    Top = 368
    Width = 121
    Height = 21
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    OnAsyncChange = combo_status_finanAsyncChange
    TabOrder = 10
    AutoEditable = False
    FriendlyName = 'combo_status_finan'
    KeyField = 'DESCRICAO'
    ListField = 'DESCRICAO'
    ListSource = ds_q_status_finan
    DisableWhenEmpty = True
    NoSelectionText = 'Todos'
  end
  object lb_id: TIWLabel [11]
    Left = 64
    Top = 408
    Width = 7
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'lb_id'
    Caption = '0'
  end
  object combo_operador: TIWDBLookupComboBox [12]
    Left = 568
    Top = 16
    Width = 121
    Height = 21
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderVisibility = False
    StyleRenderOptions.RenderStatus = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    OnAsyncChange = combo_operadorAsyncChange
    TabOrder = 11
    AutoEditable = False
    FriendlyName = 'combo_operador'
    KeyField = 'NOME'
    ListField = 'NOME_COMPLETO'
    ListSource = ds_q_operadores
    DisableWhenEmpty = True
    NoSelectionText = 'Selecione um Operador'
  end
  object combo_tipo: TIWComboBox [13]
    Left = 24
    Top = 430
    Width = 121
    Height = 21
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderVisibility = False
    StyleRenderOptions.RenderStatus = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    ItemsHaveValues = True
    OnAsyncChange = combo_tipoAsyncChange
    TabOrder = 12
    ItemIndex = -1
    Items.Strings = (
      'Novo=N'
      'Usado=U'
      'VD=V')
    FriendlyName = 'combo_tipo'
    NoSelectionText = 'Todos'
  end
  object edit_proposta: TIWEdit [14]
    Left = 24
    Top = 457
    Width = 105
    Height = 22
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderVisibility = False
    StyleRenderOptions.RenderStatus = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Editable = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'edit_proposta'
    SubmitOnAsyncEvent = True
    TabOrder = 13
    Text = '0'
  end
  object edit_id: TIWEdit [15]
    Left = 24
    Top = 485
    Width = 105
    Height = 25
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderVisibility = False
    StyleRenderOptions.RenderStatus = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Editable = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'edit_id'
    SubmitOnAsyncEvent = True
    TabOrder = 14
  end
  inherited IWTemplateProcessorHTML1: TIWTemplateProcessorHTML
    Top = 424
  end
  object q_datatable: TFDQuery
    Connection = DM.banco
    Left = 432
    Top = 40
  end
  object q_geral: TFDQuery
    Connection = DM.banco
    Left = 512
    Top = 40
  end
  object q_vendedores: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select '#39'Todos'#39' as Vendedor, '#39'Todos'#39' as nome from dual'
      'union'
      ''
      
        'SELECT empresas_usuarios.cod_empresa||'#39'-'#39'|| empresas_usuarios.no' +
        'me_completo '
      '         as VENDEDOR,'
      '       EMPRESAS_USUARIOS.Nome'
      '        '
      '  FROM "EMPRESAS_USUARIOS" EMPRESAS_USUARIOS, empresas'
      ' WHERE ((EMPRESAS_USUARIOS."COD_FUNCAO" = :cod_gerente ) or'
      '       (EMPRESAS_USUARIOS."COD_FUNCAO" = :cod_supervisor ) or'
      '       (EMPRESAS_USUARIOS."COD_FUNCAO" = :cod_vendedor ))'
      '   and (EMPRESAS_USUARIOS."COD_EMPRESA" = empresas.cOD_EMPRESA)'
      '   and nvl(demitido, '#39'N'#39') = '#39'N'#39
      'order by vendedor'
      ' '
      '')
    Left = 176
    Top = 136
    ParamData = <
      item
        Name = 'COD_GERENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COD_SUPERVISOR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COD_VENDEDOR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object q_vendedoresVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 81
    end
    object q_vendedoresNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
  end
  object ds_q_vendedores: TDataSource
    DataSet = q_vendedores
    Left = 176
    Top = 192
  end
  object q_funcao_vendedor_veic: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      
        ' select pm.cod_gerente_vendas,pm.cod_supervisor_veiculo,pm.cod_v' +
        'endedor_veiculo from parm_sys pm where cod_empresa= :cod_empresa'
      '')
    Left = 184
    Top = 264
    ParamData = <
      item
        Name = 'COD_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object q_funcao_vendedor_veicCOD_GERENTE_VENDAS: TFMTBCDField
      FieldName = 'COD_GERENTE_VENDAS'
      Origin = 'COD_GERENTE_VENDAS'
      Precision = 38
      Size = 0
    end
    object q_funcao_vendedor_veicCOD_SUPERVISOR_VEICULO: TFMTBCDField
      FieldName = 'COD_SUPERVISOR_VEICULO'
      Origin = 'COD_SUPERVISOR_VEICULO'
      Precision = 38
      Size = 0
    end
    object q_funcao_vendedor_veicCOD_VENDEDOR_VEICULO: TFMTBCDField
      FieldName = 'COD_VENDEDOR_VEICULO'
      Origin = 'COD_VENDEDOR_VEICULO'
      Precision = 38
      Size = 0
    end
  end
  object q_empresas: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      
        'select cod_empresa,cod_empresa||'#39'-'#39'||nome as nome from empresas ' +
        'where cod_matriz is not null and status='#39'S'#39
      ''
      'union'
      ''
      'select 0 as cod_empresa, '#39'Todas'#39' as nome from dual')
    Left = 384
    Top = 208
    object q_empresasCOD_EMPRESA: TFMTBCDField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object q_empresasNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 30
    end
  end
  object ds_q_empresas: TDataSource
    DataSet = q_empresas
    Left = 464
    Top = 208
  end
  object q_origens: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select origem from wc_usuarios_origem where usuario= user')
    Left = 200
    Top = 40
    object q_origensORIGEM: TStringField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
      Required = True
      Size = 50
    end
  end
  object ds_q_origens: TDataSource
    DataSet = q_origens
    Left = 288
    Top = 40
  end
  object q_status_finan: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select descricao,id from wc_status_finan')
    Left = 376
    Top = 296
    object q_status_finanDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object q_status_finanID: TFMTBCDField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
  end
  object ds_q_status_finan: TDataSource
    DataSet = q_status_finan
    Left = 480
    Top = 296
  end
  object q_operadores: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select 0 cod_empresa, '#39'Todos'#39' nome, '#39'Todos'#39' nome_completo'
      '  from dual'
      'union'
      ''
      'select cod_empresa, nome, nome_completo'
      '  from empresas_usuarios'
      ' where cod_funcao in ('
      '                      '
      '                      select cod_funcao'
      '                        from empresas_funcoes'
      
        '                       where UPPER(descricao) like ('#39'%CREDITO%'#39')' +
        ')'
      ''
      ' order by nome desc')
    Left = 624
    Top = 56
    object q_operadoresCOD_EMPRESA: TFMTBCDField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Precision = 38
      Size = 38
    end
    object q_operadoresNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 10
    end
    object q_operadoresNOME_COMPLETO: TStringField
      FieldName = 'NOME_COMPLETO'
      Origin = 'NOME_COMPLETO'
      Size = 40
    end
  end
  object ds_q_operadores: TDataSource
    DataSet = q_operadores
    Left = 720
    Top = 56
  end
end
