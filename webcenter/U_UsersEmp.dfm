inherited FormUsersEmp: TFormUsersEmp
  OnCreate = IWAppFormCreate
  OnShow = IWAppFormShow
  DesignLeft = 2
  DesignTop = 2
  inherited IWBTNACAO: TIWButton
    OnClick = IWBTNACAOClick
  end
  object listempresas: TIWListbox [2]
    Left = 416
    Top = 16
    Width = 81
    Height = 65
    Css = 'form-control'
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
    RequireSelection = False
    TabOrder = 2
    FriendlyName = 'listempresas'
    Items.Strings = (
      'EMPRESA 1 =1'
      'EMPRESA 2 = 2'
      'EMPRESA 3 = 3')
    MultiSelect = True
    NoSelectionText = '-- No Selection --'
  end
  object IWBSCheckBox1: TIWBSCheckBox [3]
    Left = 552
    Top = 416
    Width = 121
    Height = 25
    FriendlyName = 'IWBSCheckBox1'
    Caption = 'IWBSCheckBox1'
    Text = 'false'
    ValueChecked = 'true'
    ValueUnchecked = 'false'
  end
  object combo_usuarios: TIWDBLookupComboBox [4]
    Left = 416
    Top = 87
    Width = 89
    Height = 21
    Css = 'form-control'
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
    TabOrder = 3
    AutoEditable = False
    FriendlyName = 'combo_usuarios'
    KeyField = 'NOME'
    ListField = 'NOME'
    ListSource = ds_q_usuarios
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object list_sel_empresas: TIWListbox [5]
    Left = 592
    Top = 16
    Width = 81
    Height = 65
    Css = 'form-control'
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
    RequireSelection = False
    TabOrder = 4
    FriendlyName = 'listempresas'
    Items.Strings = (
      '')
    MultiSelect = True
    NoSelectionText = '-- No Selection --'
  end
  object btn_add_emp: TIWButton [6]
    Left = 519
    Top = 16
    Width = 50
    Height = 30
    Css = 'form-control'
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
    Caption = '>>'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btn_add_emp'
    TabOrder = 5
    OnAsyncClick = btn_add_empAsyncClick
  end
  object btn_rem_emp: TIWButton [7]
    Left = 519
    Top = 52
    Width = 50
    Height = 30
    Css = 'form-control'
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
    Caption = '<<'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btn_add_emp'
    TabOrder = 6
    OnAsyncClick = btn_rem_empAsyncClick
  end
  object ck_novo: TIWCheckBox [8]
    Left = 679
    Top = 20
    Width = 57
    Height = 21
    Css = 'form-control'
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
    Caption = 'Novo'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 7
    Checked = True
    FriendlyName = 'ck_novo'
  end
  object ck_usado: TIWCheckBox [9]
    Left = 679
    Top = 47
    Width = 57
    Height = 21
    Css = 'form-control'
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
    Caption = 'Usado'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 8
    Checked = True
    FriendlyName = 'ck_novo'
  end
  object btn_salvar: TIWButton [10]
    Left = 519
    Top = 88
    Width = 50
    Height = 30
    Css = ' btn btn-default'
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
    Caption = 'Salvar'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btn_add_emp'
    TabOrder = 9
    OnClick = btn_salvarClick
  end
  object combo_tipo: TIWComboBox [11]
    Left = 416
    Top = 114
    Width = 89
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
    TabOrder = 10
    ItemIndex = 0
    Items.Strings = (
      'Todos=T'
      'Novos=N'
      'Usados=U')
    FriendlyName = 'combo_tipo'
    NoSelectionText = '-- No Selection --'
  end
  object btn_deletar: TIWButton [12]
    Left = 519
    Top = 124
    Width = 50
    Height = 30
    Css = ' btn btn-default'
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
    Caption = 'Deletar'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btn_add_emp'
    TabOrder = 11
    OnClick = btn_deletarClick
  end
  object q_datatable: TFDQuery
    Connection = DM.banco
    Left = 264
    Top = 40
  end
  object q_empresas: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      
        'select cod_empresa,nome from empresas where cod_matriz is not nu' +
        'll and status='#39'S'#39
      ' order by cod_empresa')
    Left = 264
    Top = 96
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
  object q_usuarios: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select cod_empresa,nome,nome_completo from empresas_usuarios'
      ' order by nome')
    Left = 264
    Top = 160
    object q_usuariosCOD_EMPRESA: TFMTBCDField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Required = True
      Precision = 38
      Size = 0
    end
    object q_usuariosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object q_usuariosNOME_COMPLETO: TStringField
      FieldName = 'NOME_COMPLETO'
      Origin = 'NOME_COMPLETO'
      Size = 40
    end
  end
  object ds_q_usuarios: TDataSource
    DataSet = q_usuarios
    Left = 336
    Top = 160
  end
  object q_geral: TFDQuery
    Connection = DM.banco
    Left = 264
    Top = 216
  end
  object q_aux: TFDQuery
    Connection = DM.banco
    Left = 272
    Top = 280
  end
end
