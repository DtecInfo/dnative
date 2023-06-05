inherited FrmSimulacaoVenda: TFrmSimulacaoVenda
  Width = 1084
  Height = 1340
  OnCreate = IWAppFormCreate
  OnDestroy = IWAppFormDestroy
  OnShow = IWAppFormShow
  ExplicitWidth = 1084
  ExplicitHeight = 1340
  DesignLeft = 2
  DesignTop = 2
  inherited IWACAO: TIWEdit
    TabOrder = 8
  end
  inherited IWBTNACAO: TIWButton
    TabOrder = 9
  end
  inherited edit_nova_senha: TIWEdit
    TabOrder = 6
  end
  inherited BTN_TROCAR_SENHA: TIWButton
    TabOrder = 7
  end
  object combo_empresas: TIWDBLookupComboBox [4]
    Left = 416
    Top = 32
    Width = 121
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
    Enabled = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    OnAsyncChange = combo_empresasAsyncChange
    TabOrder = 10
    AutoEditable = False
    FriendlyName = 'combo_empresas'
    KeyField = 'COD_EMPRESA'
    ListField = 'NOME'
    ListSource = ds_q_empresas
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object combo_financiadoras: TIWDBLookupComboBox [5]
    Left = 416
    Top = 59
    Width = 121
    Height = 21
    OnHTMLTag = combo_financiadorasHTMLTag
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
    OnAsyncChange = combo_financiadorasAsyncChange
    TabOrder = 11
    AutoEditable = False
    FriendlyName = 'combo_financiadoras'
    KeyField = 'COD_FINANCIADORA'
    ListField = 'DESCRICAO_INSTITUICAO'
    ListSource = ds_q_financiadoras
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object combo_vendedores: TIWDBLookupComboBox [6]
    Left = 416
    Top = 86
    Width = 121
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
    OnAsyncClick = combo_vendedoresAsyncClick
    TabOrder = 12
    AutoEditable = False
    FriendlyName = 'combo_vendedores'
    KeyField = 'NOME'
    ListField = 'VENDEDOR'
    ListSource = ds_q_vendedores
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object combo_origem: TIWComboBox [7]
    Left = 416
    Top = 113
    Width = 121
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
    OnAsyncChange = combo_origemAsyncChange
    TabOrder = 13
    ItemIndex = -1
    FriendlyName = 'combo_origem'
    NoSelectionText = '-- No Selection --'
  end
  object ck_cliente_cadastro: TIWCheckBox [8]
    Left = 40
    Top = 125
    Width = 121
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
    Caption = 'Cliente Cadastro'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 14
    OnAsyncChange = ck_cliente_cadastroAsyncChange
    Checked = False
    FriendlyName = 'ck_cliente_cadastro'
    OnAsyncExit = ck_cliente_cadastroAsyncExit
  end
  object btn_cliente_busca: TIWButton [9]
    Left = 56
    Top = 364
    Width = 120
    Height = 30
    OnHTMLTag = btn_cliente_buscaHTMLTag
    Css = 'btn btn-primary form-control '
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
    Caption = 'Pesquisar'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btn_cliente_busca'
    TabOrder = 15
    OnAsyncClick = btn_cliente_buscaAsyncClick
  end
  object edit_cliente_busca: TIWEdit [10]
    Left = 56
    Top = 400
    Width = 120
    Height = 25
    Css = 'form-control'
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'edit_cliente_busca'
    SubmitOnAsyncEvent = True
    TabOrder = 16
  end
  object radio_group: TIWRadioGroup [11]
    Left = 56
    Top = 431
    Width = 265
    Height = 50
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
    SubmitOnAsyncEvent = True
    RawText = False
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'radio_group'
    ItemIndex = 0
    Layout = glVertical
    TabOrder = 17
  end
  object rb_busca_por_cpf: TIWRadioButton [12]
    Left = 56
    Top = 448
    Width = 137
    Height = 21
    Cursor = crPointer
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
    Caption = 'CPF/CGC'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RawText = False
    Group = 'no group'
    Value = 'rb_busca_por_cpf'
    FriendlyName = 'rb_busca_por_cpf'
    SubmitOnAsyncEvent = True
  end
  object rb_busca_por_nome: TIWRadioButton [13]
    Left = 184
    Top = 448
    Width = 121
    Height = 21
    Cursor = crPointer
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
    Caption = 'Nome'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RawText = False
    Checked = True
    Group = 'no group'
    Value = 'rb_busca_por_nome'
    FriendlyName = 'rb_busca_por_nome'
    SubmitOnAsyncEvent = True
  end
  object btnaceitar: TIWButton [14]
    Left = 56
    Top = 487
    Width = 120
    Height = 30
    Visible = False
    Caption = 'btnaceitar'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btnaceitar'
    TabOrder = 18
    OnClick = btnaceitarClick
  end
  object edit_cliente_nome: TIWEdit [15]
    Left = 40
    Top = 281
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
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'edit_cliente_nome'
    SubmitOnAsyncEvent = True
    TabOrder = 19
    OnAsyncExit = edit_cliente_nomeAsyncExit
  end
  object edit_cliente_cpf: TIWEdit [16]
    Left = 40
    Top = 308
    Width = 57
    Height = 21
    OnHTMLTag = edit_cliente_cpfHTMLTag
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
    FriendlyName = 'edit_cliente_cpf'
    MaxLength = 14
    SubmitOnAsyncEvent = True
    TabOrder = 20
    OnAsyncExit = edit_cliente_cpfAsyncExit
    DataType = stNumber
  end
  object combo_tipo: TIWComboBox [17]
    Left = 416
    Top = 140
    Width = 121
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
    ItemsHaveValues = True
    OnAsyncChange = combo_tipoAsyncChange
    TabOrder = 21
    ItemIndex = 0
    Items.Strings = (
      'Novo=N'
      'Usado=U'
      'VD=V')
    FriendlyName = 'combo_tipo'
    NoSelectionText = '-- No Selection --'
  end
  object combo_tipo_prop: TIWComboBox [18]
    Left = 416
    Top = 167
    Width = 121
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
    ItemsHaveValues = True
    OnAsyncChange = combo_tipo_propAsyncChange
    TabOrder = 22
    ItemIndex = 0
    Items.Strings = (
      'Montada=M'
      'Progresso=P'
      'Estoque=E')
    FriendlyName = 'combo_tipo_prop'
    NoSelectionText = '-- No Selection --'
  end
  object combo_marcas: TIWDBLookupComboBox [19]
    Left = 416
    Top = 194
    Width = 121
    Height = 21
    Css = 'form-control'
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    OnAsyncChange = combo_marcasAsyncChange
    TabOrder = 23
    AutoEditable = False
    FriendlyName = 'combo_marcas'
    KeyField = 'COD_MARCA'
    ListField = 'DESCRICAO_MARCA'
    ListSource = ds_q_marcas
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object combo_produtos: TIWDBLookupComboBox [20]
    Left = 416
    Top = 221
    Width = 121
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
    OnAsyncChange = combo_produtosAsyncChange
    TabOrder = 24
    AutoEditable = False
    FriendlyName = 'combo_produtos'
    KeyField = 'COD_PRODUTO'
    ListField = 'DESCRICAO_PRODUTO'
    ListSource = ds_q_produtos
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object combo_modelos: TIWDBLookupComboBox [21]
    Left = 416
    Top = 248
    Width = 121
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
    OnAsyncChange = combo_modelosAsyncChange
    TabOrder = 25
    AutoEditable = False
    FriendlyName = 'combo_modelos'
    KeyField = 'COD_MODELO'
    ListField = 'DESCRICAO_MODELO'
    ListSource = ds_q_modelos
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object combo_cores_externas: TIWDBLookupComboBox [22]
    Left = 416
    Top = 275
    Width = 121
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
    OnAsyncChange = combo_cores_externasAsyncChange
    TabOrder = 26
    AutoEditable = False
    FriendlyName = 'combo_cores_externas'
    KeyField = 'COR_EXTERNA'
    ListField = 'DESCRICAO'
    ListSource = ds_q_cores_externas
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object edit_ano_modelo: TIWEdit [23]
    Left = 40
    Top = 192
    Width = 57
    Height = 23
    OnHTMLTag = edit_ano_modeloHTMLTag
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
    FriendlyName = 'edit_ano_modelo'
    SubmitOnAsyncEvent = True
    TabOrder = 27
  end
  object edit_chassi: TIWEdit [24]
    Left = 40
    Top = 221
    Width = 57
    Height = 21
    OnHTMLTag = edit_chassiHTMLTag
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
    FriendlyName = 'edit_chassi'
    SubmitOnAsyncEvent = True
    TabOrder = 28
  end
  object btn_cancelar: TIWButton [25]
    Left = 327
    Top = 537
    Width = 65
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
    Caption = 'Cancelar'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btn_cancelar'
    TabOrder = 29
  end
  object btn_salvar: TIWButton [26]
    Left = 258
    Top = 536
    Width = 63
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
    Caption = 'Salvar'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btn_salvar'
    TabOrder = 30
    OnAsyncClick = btn_salvarAsyncClick
  end
  object edit_valor_veiculo1: TIWEdit [27]
    Left = 847
    Top = 21
    Width = 57
    Height = 20
    OnHTMLTag = edit_valor_veiculo1HTMLTag
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
    FriendlyName = 'edit_valor_veiculo1'
    SubmitOnAsyncEvent = True
    TabOrder = 31
    OnAsyncExit = edit_valor_veiculo1AsyncExit
    Text = '0,00'
  end
  object edit_valor_veiculo2: TIWEdit [28]
    Left = 847
    Top = 229
    Width = 57
    Height = 20
    OnHTMLTag = edit_valor_veiculo2HTMLTag
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 42
    Enabled = False
  end
  object edit_valor_entrada2: TIWEdit [29]
    Left = 847
    Top = 255
    Width = 57
    Height = 20
    OnHTMLTag = edit_valor_entrada2HTMLTag
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 38
    Enabled = False
  end
  object edit_valor_entrada1: TIWEdit [30]
    Left = 847
    Top = 359
    Width = 57
    Height = 20
    OnHTMLTag = edit_valor_entrada1HTMLTag
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
    Editable = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 39
  end
  object edit_perc_entrada1: TIWEdit [31]
    Left = 847
    Top = 177
    Width = 57
    Height = 20
    OnHTMLTag = edit_perc_entrada1HTMLTag
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 40
    Enabled = False
  end
  object edit_perc_entrada2: TIWEdit [32]
    Left = 847
    Top = 203
    Width = 57
    Height = 20
    OnHTMLTag = edit_perc_entrada2HTMLTag
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 41
    Enabled = False
  end
  object edit_valor_finan2: TIWEdit [33]
    Left = 847
    Top = 307
    Width = 57
    Height = 20
    OnHTMLTag = edit_valor_finan2HTMLTag
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 36
    Enabled = False
  end
  object edit_valor_finan1: TIWEdit [34]
    Left = 847
    Top = 281
    Width = 57
    Height = 20
    OnHTMLTag = edit_valor_finan1HTMLTag
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 43
    Enabled = False
  end
  object edit_fipe: TIWEdit [35]
    Left = 847
    Top = 125
    Width = 57
    Height = 20
    OnHTMLTag = edit_fipeHTMLTag
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 37
    OnAsyncExit = edit_fipeAsyncExit
  end
  object edit_prazo: TIWEdit [36]
    Left = 847
    Top = 47
    Width = 57
    Height = 20
    OnHTMLTag = edit_prazoHTMLTag
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 32
    OnAsyncExit = edit_prazoAsyncExit
    Text = '0'
  end
  object edit_parcela: TIWEdit [37]
    Left = 847
    Top = 73
    Width = 57
    Height = 20
    OnHTMLTag = edit_parcelaHTMLTag
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 33
    OnAsyncExit = assinceditparcela
    Text = '0,00'
  end
  object edit_tabela: TIWEdit [38]
    Left = 847
    Top = 151
    Width = 57
    Height = 20
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 35
    OnAsyncExit = edit_tabelaAsyncExit
  end
  object edit_participacao: TIWEdit [39]
    Left = 847
    Top = 99
    Width = 57
    Height = 20
    OnHTMLTag = edit_participacaoHTMLTag
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 34
    OnAsyncExit = edit_participacaoAsyncExit
    Text = '0,00'
  end
  object edit_cof: TIWEdit [40]
    Left = 847
    Top = 333
    Width = 57
    Height = 20
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 44
    Enabled = False
  end
  object edit_opcionais: TIWEdit [41]
    Left = 40
    Top = 248
    Width = 57
    Height = 20
    OnHTMLTag = edit_opcionaisHTMLTag
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 45
  end
  object edit_pgto_c_apresentacao: TIWEdit [42]
    Left = 935
    Top = 21
    Width = 57
    Height = 20
    Hint = 'Valor C. Apresenta'#231#227'o'
    OnHTMLTag = edit_pgto_c_apresentacaoHTMLTag
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
    FriendlyName = 'edit_valor_veiculo1'
    SubmitOnAsyncEvent = True
    TabOrder = 46
    OnAsyncExit = edit_pgto_c_apresentacaoAsyncExit
  end
  object edit_pgto_cartao: TIWEdit [43]
    Left = 935
    Top = 47
    Width = 57
    Height = 20
    Hint = 'Valor Pgto. Cart'#227'o'
    OnHTMLTag = edit_pgto_c_apresentacaoHTMLTag
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 47
    OnAsyncExit = edit_pgto_cartaoAsyncExit
  end
  object edit_pgto_cheque: TIWEdit [44]
    Left = 935
    Top = 73
    Width = 57
    Height = 20
    Hint = 'Valor Pgto. Cheque'
    OnHTMLTag = edit_pgto_c_apresentacaoHTMLTag
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 48
    OnAsyncExit = edit_pgto_chequeAsyncExit
  end
  object edit_pgto_v_usado: TIWEdit [45]
    Left = 935
    Top = 99
    Width = 57
    Height = 20
    Hint = 'Valor Pgto. V. Usado'
    OnHTMLTag = edit_pgto_c_apresentacaoHTMLTag
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 49
    OnAsyncExit = edit_pgto_v_usadoAsyncExit
  end
  object edit_pgto_outras: TIWEdit [46]
    Left = 935
    Top = 125
    Width = 57
    Height = 20
    Hint = 'Valor Pgto. Outras'
    OnHTMLTag = edit_pgto_c_apresentacaoHTMLTag
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 50
    OnAsyncExit = edit_pgto_outrasAsyncExit
  end
  object edit_pgto_consorcio: TIWEdit [47]
    Left = 935
    Top = 151
    Width = 57
    Height = 20
    Hint = 'Valor Pgto. consorcio'
    OnHTMLTag = edit_pgto_c_apresentacaoHTMLTag
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 51
    OnAsyncExit = edit_pgto_consorcioAsyncExit
  end
  object edit_pgto_fin_externo: TIWEdit [48]
    Left = 935
    Top = 177
    Width = 57
    Height = 20
    Hint = 'Valor Pgto. Fin. Externo'
    OnHTMLTag = edit_pgto_c_apresentacaoHTMLTag
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 52
    OnAsyncExit = edit_pgto_fin_externoAsyncExit
  end
  object edit_pgto_tr_usado: TIWEdit [49]
    Left = 935
    Top = 203
    Width = 57
    Height = 20
    Hint = 'Valor Pgto. Troco Usado'
    OnHTMLTag = edit_pgto_c_apresentacaoHTMLTag
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 53
    OnAsyncExit = edit_pgto_tr_usadoAsyncExit
  end
  object edit_pgto_tr_emplacamento: TIWEdit [50]
    Left = 935
    Top = 229
    Width = 57
    Height = 20
    Hint = 'Valor Pgto. Tr. Emplacamento'
    OnHTMLTag = edit_pgto_c_apresentacaoHTMLTag
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 54
    OnAsyncExit = edit_pgto_tr_emplacamentoAsyncExit
  end
  object edit_pgto_tr_ipva: TIWEdit [51]
    Left = 935
    Top = 255
    Width = 57
    Height = 20
    Hint = 'Valor pgto Tr. IPVA'
    OnHTMLTag = edit_pgto_c_apresentacaoHTMLTag
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 55
    OnAsyncExit = edit_pgto_tr_ipvaAsyncExit
  end
  object edit_pgto_tr_seguro_o: TIWEdit [52]
    Left = 935
    Top = 281
    Width = 57
    Height = 20
    Hint = 'Valor Pgto tr Seg. Obri.'
    OnHTMLTag = edit_pgto_c_apresentacaoHTMLTag
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 56
    OnAsyncExit = edit_pgto_tr_seguro_oAsyncExit
  end
  object edit_pgto_tr_outros: TIWEdit [53]
    Left = 935
    Top = 307
    Width = 57
    Height = 20
    Hint = 'Valor pgto tr. Outros'
    OnHTMLTag = edit_pgto_c_apresentacaoHTMLTag
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 57
    OnAsyncExit = edit_pgto_tr_outrosAsyncExit
  end
  object edit_pgto_tr_hn: TIWEdit [54]
    Left = 935
    Top = 333
    Width = 57
    Height = 20
    Hint = 'Valor pgto tr HN'
    OnHTMLTag = edit_pgto_c_apresentacaoHTMLTag
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 58
    OnAsyncExit = edit_pgto_tr_hnAsyncExit
  end
  object EDIT_AGREGADOS: TIWEdit [55]
    Left = 935
    Top = 359
    Width = 57
    Height = 20
    OnHTMLTag = edit_pgto_c_apresentacaoHTMLTag
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
    Editable = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 59
    OnAsyncExit = EDIT_AGREGADOSAsyncExit
  end
  object ck_cnh: TIWCheckBox [56]
    Left = 40
    Top = 152
    Width = 121
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
    Caption = 'Possui CNH'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 60
    Checked = False
    FriendlyName = 'ck_cnh'
  end
  object edit_tac: TIWEdit [57]
    Left = 847
    Top = 385
    Width = 57
    Height = 20
    OnHTMLTag = edit_valor_entrada1HTMLTag
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
    FriendlyName = 'edit_tac'
    SubmitOnAsyncEvent = True
    TabOrder = 61
    OnAsyncExit = edit_tacAsyncExit
    Text = '1100,35'
  end
  object edit_valor_despachante: TIWEdit [58]
    Left = 935
    Top = 385
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 62
    OnAsyncExit = edit_valor_despachanteAsyncExit
    Text = '0,00'
  end
  object edit_obs_despachante: TIWEdit [59]
    Left = 935
    Top = 434
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
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'edit_obs_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 63
    OnAsyncExit = edit_obs_despachanteAsyncExit
    Text = ' '
  end
  object edit_obs_cortesia: TIWEdit [60]
    Left = 935
    Top = 411
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
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'edit_obs_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 64
    OnAsyncExit = edit_obs_cortesiaAsyncExit
    Text = ' '
  end
  object btnrecalc: TIWButton [61]
    Left = 935
    Top = 461
    Width = 57
    Height = 30
    Css = 'btn btn-warning form-control'
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
    Caption = 'Recalc'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btnrecalc'
    TabOrder = 65
    OnAsyncClick = btnrecalcAsyncClick
  end
  object edit_renavan: TIWEdit [62]
    Left = 703
    Top = 21
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
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'edit_obs_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 66
    Text = ' '
  end
  object sql: TIWLabel [63]
    Left = 720
    Top = 168
    Width = 17
    Height = 16
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
    HasTabOrder = False
    FriendlyName = 'sql'
    Caption = 'sql'
    RawText = True
  end
  object reload: TIWButton [64]
    Left = 823
    Top = 536
    Width = 81
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
    Caption = 'reload'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'reload'
    TabOrder = 67
    OnAsyncClick = reloadAsyncClick
  end
  object edit_empresas: TIWDBEdit [65]
    Left = 103
    Top = 186
    Width = 114
    Height = 29
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
    Editable = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'edit_empresas'
    MaxLength = 30
    SubmitOnAsyncEvent = True
    TabOrder = 68
    AutoEditable = False
    DataField = 'NOME'
    DataSource = ds_q_empresas
    PasswordPrompt = False
  end
  object edit_modal_tipo: TIWEdit [66]
    Left = 103
    Top = 221
    Width = 114
    Height = 21
    Css = 'form-control'
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderVisibility = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'edit_modal_tipo'
    SubmitOnAsyncEvent = True
    TabOrder = 69
    Enabled = False
  end
  object BTNAPLYPARAMS: TIWButton [67]
    Left = 56
    Top = 684
    Width = 89
    Height = 30
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
    Caption = 'btnaplyparams'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTNAPLYPARAMS'
    TabOrder = 70
    OnAsyncClick = BTNAPLYPARAMSAsyncClick
  end
  object edit_p_cod_produto: TIWEdit [68]
    Left = 56
    Top = 592
    Width = 105
    Height = 17
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
    FriendlyName = 'edit_p_cod_produto'
    SubmitOnAsyncEvent = True
    TabOrder = 71
  end
  object IWLabel1: TIWLabel [69]
    Left = 56
    Top = 560
    Width = 126
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Edits de par'#226'metros'
  end
  object edit_p_cod_modelo: TIWEdit [70]
    Left = 56
    Top = 615
    Width = 105
    Height = 17
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 72
  end
  object edit_p_chassi_resumido: TIWEdit [71]
    Left = 56
    Top = 638
    Width = 105
    Height = 17
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 73
  end
  object edit_p_cor: TIWEdit [72]
    Left = 56
    Top = 661
    Width = 105
    Height = 17
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 74
  end
  object combo_dendedor_a: TIWDBLookupComboBox [73]
    Left = 416
    Top = 302
    Width = 121
    Height = 21
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    OnAsyncChange = combo_dendedor_aAsyncChange
    TabOrder = 75
    AutoEditable = False
    FriendlyName = 'combo_dendedor_a'
    KeyField = 'NOME'
    ListField = 'NOME_COMPLETO'
    ListSource = ds_q_vendedores_a
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object combo_analista_c: TIWDBLookupComboBox [74]
    Left = 416
    Top = 329
    Width = 121
    Height = 21
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    TabOrder = 76
    AutoEditable = False
    FriendlyName = 'combo_dendedor_a'
    KeyField = 'NOME'
    ListField = 'NOME_COMPLETO'
    ListSource = ds_analista_c
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object edit_s4_valor_veic: TIWEdit [75]
    Left = 935
    Top = 501
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 77
    Text = '0,00'
  end
  object edit_s4_valor_entrada: TIWEdit [76]
    Left = 935
    Top = 523
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 78
    Text = '0,00'
  end
  object edit_s4_valor_finan: TIWEdit [77]
    Left = 935
    Top = 545
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 79
    Text = '0,00'
  end
  object edit_s4_prazo: TIWEdit [78]
    Left = 935
    Top = 567
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 80
    Text = '0,00'
  end
  object edit_s4_parcela: TIWEdit [79]
    Left = 935
    Top = 589
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 81
    Text = '0,00'
  end
  object edit_s4_tabela: TIWEdit [80]
    Left = 935
    Top = 611
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 82
    Text = '0,00'
  end
  object edit_s4_cof: TIWEdit [81]
    Left = 935
    Top = 633
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 83
    Text = '0,00'
  end
  object rb_s4_tab_especial1: TIWRadioButton [82]
    Left = 248
    Top = 600
    Width = 73
    Height = 21
    Cursor = crPointer
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
    Caption = 'Especial'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RawText = False
    Group = 'no group'
    Value = 'rb_s4_tab_especial1'
    FriendlyName = 'rb_s4_tab_especial1'
    SubmitOnAsyncEvent = True
  end
  object rb_s4_tab_normal1: TIWRadioButton [83]
    Left = 248
    Top = 615
    Width = 73
    Height = 21
    Cursor = crPointer
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
    Caption = 'Normal'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RawText = False
    Group = 'no group'
    Value = 'rb_s4_tab_especial'
    FriendlyName = 'rb_s4_tab_especial'
    SubmitOnAsyncEvent = True
  end
  object ck_s4_gmac_plus: TIWCheckBox [84]
    Left = 248
    Top = 642
    Width = 121
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
    Caption = 'GMAC PLUS'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 84
    OnAsyncChange = ck_s4_gmac_plusAsyncChange
    Checked = False
    FriendlyName = 'ck_s4_gmac_plus'
  end
  object CK_S4_PMC: TIWCheckBox [85]
    Left = 248
    Top = 661
    Width = 121
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
    Caption = 'PMC'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 85
    OnAsyncChange = CK_S4_PMCAsyncChange
    Checked = False
    FriendlyName = 'ck_s4_gmac_plus'
  end
  object combo_s4_pmc: TIWComboBox [86]
    Left = 368
    Top = 642
    Width = 121
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
    ItemsHaveValues = True
    TabOrder = 86
    ItemIndex = -1
    Items.Strings = (
      '1 ano=0'
      '2 anos=1'
      '3 anos=2'
      '4 anos=3'
      '5 anos=4')
    FriendlyName = 'combo_s4_pmc'
    NoSelectionText = '-- No Selection --'
  end
  object ck_s4_siga: TIWCheckBox [87]
    Left = 248
    Top = 684
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
    Caption = 'SIGA'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 87
    OnAsyncChange = ck_s4_sigaAsyncChange
    Checked = False
    FriendlyName = 'ck_s4_gmac_plus'
  end
  object edit_s4_gmac_plus: TIWEdit [88]
    Left = 935
    Top = 655
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 88
    OnAsyncExit = edit_s4_gmac_plusAsyncExit
    Text = '0,00'
  end
  object edit_s4_emplacamento: TIWEdit [89]
    Left = 935
    Top = 677
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 89
    Text = '0,00'
  end
  object edit_s4_pmc: TIWEdit [90]
    Left = 935
    Top = 699
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 90
    OnAsyncExit = edit_s4_pmcAsyncExit
    Text = '0,00'
  end
  object edit_s4_siga: TIWEdit [91]
    Left = 935
    Top = 721
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 91
    OnAsyncExit = edit_s4_sigaAsyncExit
    Text = '0,00'
  end
  object ck_s4_gap: TIWCheckBox [92]
    Left = 248
    Top = 699
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
    Caption = 'GAP'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 92
    OnAsyncChange = ck_s4_gapAsyncChange
    Checked = False
    FriendlyName = 'ck_s4_gmac_plus'
  end
  object edit_s4_gap: TIWEdit [93]
    Left = 935
    Top = 743
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 93
    OnAsyncExit = edit_s4_gapAsyncExit
    Text = '0,00'
  end
  object edit_s4_valor_seguro: TIWEdit [94]
    Left = 847
    Top = 655
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 94
    Text = '0,00'
  end
  object combo_s4_gap: TIWComboBox [95]
    Left = 368
    Top = 669
    Width = 121
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
    ItemsHaveValues = True
    TabOrder = 95
    ItemIndex = -1
    Items.Strings = (
      '1 ano=0'
      '2 anos=1'
      '3 anos=2'
      ' ')
    FriendlyName = 'combo_s4_pmc'
    NoSelectionText = '-- No Selection --'
  end
  object COMBO_STATUS_FINAN: TIWDBLookupComboBox [96]
    Left = 368
    Top = 696
    Width = 121
    Height = 21
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    OnAsyncChange = COMBO_STATUS_FINANAsyncChange
    TabOrder = 96
    AutoEditable = False
    FriendlyName = 'COMBO_STATUS_FINAN'
    KeyField = 'ID'
    ListField = 'DESCRICAO'
    ListSource = ds_q_status_finan
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object BTN_STATUS_FINAN: TIWButton [97]
    Left = 495
    Top = 690
    Width = 65
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
    Caption = '...'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_STATUS_FINAN'
    TabOrder = 97
    OnAsyncClick = BTN_STATUS_FINANAsyncClick
  end
  object SALVARSTATUS: TIWButton [98]
    Left = 248
    Top = 726
    Width = 65
    Height = 30
    OnHTMLTag = SALVARSTATUSHTMLTag
    Css = 'btn btn-default'
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
    FriendlyName = 'SALVARSTATUS'
    TabOrder = 98
    OnAsyncClick = SALVARSTATUSAsyncClick
  end
  object btn_refresh_status: TIWButton [99]
    Left = 576
    Top = 695
    Width = 97
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
    Caption = 'Refresh'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btn_refresh_status'
    TabOrder = 99
    OnAsyncClick = btn_refresh_statusAsyncClick
  end
  object BTN_ALT_STATUS_FINAN: TIWButton [100]
    Left = 360
    Top = 580
    Width = 89
    Height = 30
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
    Caption = 'BTN_ALT_STATUS_FINAN'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_ALT_STATUS_FINAN'
    TabOrder = 100
    OnAsyncClick = BTN_ALT_STATUS_FINANAsyncClick
  end
  object EDT_P_ID: TIWEdit [101]
    Left = 360
    Top = 616
    Width = 89
    Height = 20
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
    FriendlyName = 'edit_status_finan_id'
    SubmitOnAsyncEvent = True
    TabOrder = 101
  end
  object edit_status_finan_id: TIWEdit [102]
    Left = 576
    Top = 633
    Width = 73
    Height = 25
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
    FriendlyName = 'edit_status_finan_id'
    SubmitOnAsyncEvent = True
    TabOrder = 102
    Enabled = False
  end
  object edit_status_finan_descricao: TIWEdit [103]
    Left = 576
    Top = 664
    Width = 73
    Height = 25
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
    FriendlyName = 'edit_status_finan_id'
    SubmitOnAsyncEvent = True
    TabOrder = 103
  end
  object exc_reg_status: TIWButton [104]
    Left = 248
    Top = 750
    Width = 65
    Height = 30
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
    Caption = 'exc_reg_status'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'exc_reg_status'
    TabOrder = 104
    OnAsyncClick = exc_reg_statusAsyncClick
  end
  object EDITPARAM: TIWEdit [105]
    Left = 455
    Top = 616
    Width = 82
    Height = 20
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
    FriendlyName = 'EDITPARAM'
    SubmitOnAsyncEvent = True
    TabOrder = 105
  end
  object memo_obs_finan: TIWMemo [106]
    Left = 120
    Top = 275
    Width = 97
    Height = 38
    OnHTMLTag = memo_obs_finanHTMLTag
    Css = 'form-control'
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderBorder = False
    BGColor = clNone
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    TabOrder = 106
    SubmitOnAsyncEvent = True
    FriendlyName = 'memo_obs_finan'
  end
  object LISTDOCSEL: TIWListbox [107]
    Left = 289
    Top = 896
    Width = 89
    Height = 66
    Css = 'form-control'
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    TabOrder = 107
    FriendlyName = 'LISTDOCSEL'
    NoSelectionText = ''
  end
  object IWLabel2: TIWLabel [108]
    Left = 144
    Top = 816
    Width = 124
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'Aba de documentos'
  end
  object BTNADDDOC: TIWButton [109]
    Left = 240
    Top = 896
    Width = 41
    Height = 30
    Hint = 'Adicionar Doc.'
    Css = 'form-control btn btn-primary'
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
    FriendlyName = 'BTNADDDOC'
    TabOrder = 108
    OnAsyncClick = BTNADDDOCAsyncClick
  end
  object BTNDELDOC: TIWButton [110]
    Left = 240
    Top = 932
    Width = 41
    Height = 30
    Visible = False
    Css = 'btn btn-primary'
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
    FriendlyName = 'BTNADDDOC'
    TabOrder = 109
    OnAsyncClick = BTNDELDOCAsyncClick
  end
  object LISTDOC: TIWListbox [111]
    Left = 168
    Top = 896
    Width = 66
    Height = 105
    Css = 'form-control'
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    ItemsHaveValues = True
    OnAsyncChange = LISTDOCAsyncChange
    TabOrder = 110
    FriendlyName = 'LISTDOC'
    NoSelectionText = '-- No Selection --'
  end
  object BTNSHOWDOCS: TIWButton [112]
    Left = 121
    Top = 896
    Width = 41
    Height = 30
    OnHTMLTag = BTNSHOWDOCSHTMLTag
    Css = 'form-control fa fa-fw fa-arrow-right'
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
    Caption = '...'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTNADDDOC'
    TabOrder = 111
    OnAsyncClick = BTNSHOWDOCSAsyncClick
  end
  object rb_cnh_sim1: TIWRadioButton [113]
    Left = 592
    Top = 816
    Width = 57
    Height = 21
    Cursor = crPointer
    Caption = 'Sim'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RawText = False
    Group = 'no group'
    Value = 'rb_cnh_sim1'
    FriendlyName = 'rb_cnh_sim1'
    SubmitOnAsyncEvent = True
  end
  object rb_cnh_nao2: TIWRadioButton [114]
    Left = 632
    Top = 811
    Width = 57
    Height = 21
    Cursor = crPointer
    Caption = 'N'#227'o'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RawText = False
    Group = 'no group'
    Value = 'rb_cnh_sim'
    FriendlyName = 'rb_cnh_sim'
    SubmitOnAsyncEvent = True
  end
  object edit_cliente_fone: TIWEdit [115]
    Left = 40
    Top = 335
    Width = 57
    Height = 21
    OnHTMLTag = edit_cliente_foneHTMLTag
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
    FriendlyName = 'edit_cliente_nome'
    SubmitOnAsyncEvent = True
    TabOrder = 112
    OnAsyncExit = edit_cliente_foneAsyncExit
  end
  object edit_valor_acessorios: TIWEdit [116]
    Left = 847
    Top = 411
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 113
    OnAsyncExit = edit_valor_acessoriosAsyncExit
    Text = '0,00'
  end
  object ck_taxa_zero: TIWCheckBox [117]
    Left = 248
    Top = 573
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
    Caption = 'Taxa Zero'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 114
    Checked = False
    FriendlyName = 'ck_s4_gmac_plus'
  end
  object edit_valor_aumento_parc: TIWEdit [118]
    Left = 847
    Top = 433
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 115
    Enabled = False
    Text = '0,00'
  end
  object ck_status_finan: TIWCheckBox [119]
    Left = 257
    Top = 509
    Width = 64
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
    Caption = 'Ativo'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 116
    Checked = False
    FriendlyName = 'ck_s4_gmac_plus'
  end
  object COMBO_MOTIVOS_R: TIWDBLookupComboBox [120]
    Left = 289
    Top = 992
    Width = 121
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
    TabOrder = 117
    AutoEditable = False
    FriendlyName = 'COMBO_MOTIVOS_R'
    KeyField = 'ID'
    ListField = 'DESCRICAO'
    ListSource = ds_q_motivos_recusa
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object combo_s4_siga: TIWComboBox [121]
    Left = 368
    Top = 723
    Width = 121
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
    ItemsHaveValues = True
    TabOrder = 118
    ItemIndex = -1
    Items.Strings = (
      '3 meses=0'
      '6 meses=1'
      '12 meses=2'
      '24 meses=3'
      '')
    FriendlyName = 'combo_s4_pmc'
    NoSelectionText = '-- No Selection --'
  end
  object IWFileUploader1: TIWFileUploader [122]
    Left = 168
    Top = 999
    Width = 66
    Height = 27
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
    TabOrder = 119
    TextStrings.DragText = 'Drop files here to upload'
    TextStrings.UploadButtonText = 'Upload/Adicionar >>'
    TextStrings.CancelButtonText = 'Cancel'
    TextStrings.UploadErrorText = 'Upload failed'
    TextStrings.MultipleFileDropNotAllowedText = 'You may only drop a single file'
    TextStrings.OfTotalText = 'of'
    TextStrings.RemoveButtonText = 'Remove'
    TextStrings.TypeErrorText = 
      '{file} has an invalid extension. Only {extensions} files are all' +
      'owed.'
    TextStrings.SizeErrorText = '{file} is too large, maximum file size is {sizeLimit}.'
    TextStrings.MinSizeErrorText = '{file} is too small, minimum file size is {minSizeLimit}.'
    TextStrings.EmptyErrorText = '{file} is empty, please select files again without it.'
    TextStrings.NoFilesErrorText = 'No files to upload.'
    TextStrings.OnLeaveWarningText = 
      'The files are being uploaded, if you leave now the upload will b' +
      'e cancelled.'
    Style.ButtonOptions.Alignment = taCenter
    Style.ButtonOptions.Font.Color = clWebWHITE
    Style.ButtonOptions.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonOptions.Font.Size = 10
    Style.ButtonOptions.Font.Style = []
    Style.ButtonOptions.FromColor = clWebMAROON
    Style.ButtonOptions.ToColor = clWebMAROON
    Style.ButtonOptions.Height = 30
    Style.ButtonOptions.Width = 200
    Style.ButtonHoverOptions.Alignment = taCenter
    Style.ButtonHoverOptions.Font.Color = clWebWHITE
    Style.ButtonHoverOptions.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonHoverOptions.Font.Size = 10
    Style.ButtonHoverOptions.Font.Style = []
    Style.ButtonHoverOptions.FromColor = 214
    Style.ButtonHoverOptions.ToColor = 214
    Style.ListOptions.Alignment = taLeftJustify
    Style.ListOptions.Font.Color = clWebBLACK
    Style.ListOptions.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ListOptions.Font.Size = 10
    Style.ListOptions.Font.Style = []
    Style.ListOptions.FromColor = clWebGOLD
    Style.ListOptions.ToColor = clWebGOLD
    Style.ListOptions.Height = 30
    Style.ListOptions.Width = 0
    Style.ListSuccessOptions.Alignment = taLeftJustify
    Style.ListSuccessOptions.Font.Color = clWebWHITE
    Style.ListSuccessOptions.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ListSuccessOptions.Font.Size = 10
    Style.ListSuccessOptions.Font.Style = []
    Style.ListSuccessOptions.FromColor = clWebFORESTGREEN
    Style.ListSuccessOptions.ToColor = clWebFORESTGREEN
    Style.ListErrorOptions.Alignment = taLeftJustify
    Style.ListErrorOptions.Font.Color = clWebWHITE
    Style.ListErrorOptions.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ListErrorOptions.Font.Size = 10
    Style.ListErrorOptions.Font.Style = []
    Style.ListErrorOptions.FromColor = clWebRED
    Style.ListErrorOptions.ToColor = clWebRED
    Style.DropAreaOptions.Alignment = taCenter
    Style.DropAreaOptions.Font.Color = clWebWHITE
    Style.DropAreaOptions.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.DropAreaOptions.Font.Size = 10
    Style.DropAreaOptions.Font.Style = []
    Style.DropAreaOptions.FromColor = clWebDARKORANGE
    Style.DropAreaOptions.ToColor = clWebDARKORANGE
    Style.DropAreaOptions.Height = 60
    Style.DropAreaOptions.Width = 0
    Style.DropAreaActiveOptions.Alignment = taCenter
    Style.DropAreaActiveOptions.Font.Color = clWebWHITE
    Style.DropAreaActiveOptions.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.DropAreaActiveOptions.Font.Size = 10
    Style.DropAreaActiveOptions.Font.Style = []
    Style.DropAreaActiveOptions.FromColor = clWebLIMEGREEN
    Style.DropAreaActiveOptions.ToColor = clWebLIMEGREEN
    Style.DropAreaActiveOptions.Height = 60
    Style.DropAreaActiveOptions.Width = 0
    CssClasses.Strings = (
      'button=btn-primary'
      'button-hover='
      'drop-area='
      'drop-area-active='
      'drop-area-disabled='
      'list='
      'upload-spinner='
      'progress-bar='
      'upload-file='
      'upload-size='
      'upload-listItem='
      'upload-cancel='
      'upload-success='
      'upload-fail='
      'success-icon='
      'fail-icon=')
    OnAsyncUploadCompleted = IWFileUploader1AsyncUploadCompleted
    OnAsyncUploadSuccess = IWFileUploader1AsyncUploadSuccess
    FriendlyName = 'IWFileUploader1'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
  end
  object lb_id: TIWLabel [123]
    Left = 336
    Top = 376
    Width = 0
    Height = 0
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
    HasTabOrder = False
    FriendlyName = 'lb_id'
  end
  object nome_doc: TIWLabel [124]
    Left = 768
    Top = 871
    Width = 0
    Height = 0
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'nome_doc'
  end
  object BTN_EXC_ANEXO: TIWButton [125]
    Left = 248
    Top = 780
    Width = 65
    Height = 30
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
    Caption = 'exc_anexo'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'exc_reg_status'
    TabOrder = 120
    OnAsyncClick = BTN_EXC_ANEXOAsyncClick
  end
  object edit_param1: TIWEdit [126]
    Left = 24
    Top = 808
    Width = 89
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
    FriendlyName = 'edit_param1'
    SubmitOnAsyncEvent = True
    TabOrder = 121
    Enabled = False
  end
  object edit_param2: TIWEdit [127]
    Left = 24
    Top = 839
    Width = 89
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 122
  end
  object ck_ativo: TIWCheckBox [128]
    Left = 24
    Top = 888
    Width = 57
    Height = 21
    Caption = 'Ativo'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 123
    Checked = False
    FriendlyName = 'ck_ativo'
  end
  object SALVAREDICAODOC: TIWButton [129]
    Left = 24
    Top = 932
    Width = 65
    Height = 30
    OnHTMLTag = SALVARSTATUSHTMLTag
    Css = 'btn btn-default'
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
    FriendlyName = 'SALVAREDICAODOC'
    TabOrder = 124
    OnAsyncClick = SALVAREDICAODOCAsyncClick
  end
  object SALVAR_FORM: TIWButton [130]
    Left = 24
    Top = 968
    Width = 65
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
    Caption = 'Salvar'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'SALVAR_FORM'
    TabOrder = 125
    OnAsyncClick = SALVAR_FORMAsyncClick
  end
  object BTNSAIR: TIWButton [131]
    Left = 24
    Top = 1048
    Width = 89
    Height = 30
    Caption = 'BTNSAIR'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTNSAIR'
    TabOrder = 126
    OnAsyncClick = BTNSAIRAsyncClick
  end
  object combo_tabela: TIWComboBox [132]
    Left = 416
    Top = 356
    Width = 121
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
    OnAsyncExit = combo_tabelaAsyncExit
    TabOrder = 127
    ItemIndex = 0
    Items.Strings = (
      '0AA'
      '0BB'
      '0CC'
      '0DD'
      '0EE'
      'OFF')
    FriendlyName = 'combo_tipo_prop'
    NoSelectionText = '-- No Selection --'
  end
  object edit_s4_despachante: TIWEdit [133]
    Left = 847
    Top = 455
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 128
    OnAsyncExit = edit_valor_despachanteAsyncExit
    Enabled = False
    Text = '0,00'
  end
  object edit_a_entrada: TIWEdit [134]
    Left = 680
    Top = 910
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 129
    Enabled = False
    Text = '0,00'
  end
  object edit_a_finan: TIWEdit [135]
    Left = 680
    Top = 932
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 130
    Enabled = False
    Text = '0,00'
  end
  object edit_a_perc_entrada: TIWEdit [136]
    Left = 680
    Top = 954
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 131
    Enabled = False
    Text = '0,00'
  end
  object edit_a_prazo: TIWEdit [137]
    Left = 680
    Top = 976
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 132
    Enabled = False
    Text = '0,00'
  end
  object edit_a_parcela: TIWEdit [138]
    Left = 680
    Top = 998
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 133
    Enabled = False
    Text = '0,00'
  end
  object edit_a_cof: TIWEdit [139]
    Left = 680
    Top = 1020
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 134
    Enabled = False
    Text = '0,00'
  end
  object edit_a_tabela: TIWEdit [140]
    Left = 680
    Top = 1042
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 135
    Enabled = False
    Text = '0,00'
  end
  object edit_a_cod_tabela: TIWEdit [141]
    Left = 680
    Top = 1062
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 136
    Enabled = False
    Text = '0,00'
  end
  object edit_a_valor_veic: TIWEdit [142]
    Left = 680
    Top = 888
    Width = 57
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 137
    Enabled = False
    Text = '0,00'
  end
  object edit_entrada_acessorios: TIWEdit [143]
    Left = 743
    Top = 888
    Width = 82
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 138
    Enabled = False
    Text = '0,00'
  end
  object edit_s4_valor_acessorio: TIWEdit [144]
    Left = 743
    Top = 910
    Width = 82
    Height = 16
    OnHTMLTag = edit_valor_despachanteHTMLTag
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
    FriendlyName = 'edit_valor_despachante'
    SubmitOnAsyncEvent = True
    TabOrder = 139
    Enabled = False
    Text = '0,00'
  end
  object btn_aprovar_acessorios: TIWButton [145]
    Left = 24
    Top = 1004
    Width = 65
    Height = 25
    Css = 'btn btn-success'
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
    Caption = 'Aprovar'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btn_aprovar_acessorios'
    TabOrder = 140
    OnAsyncClick = btn_aprovar_acessoriosAsyncClick
  end
  object rb_cnh_nao: TIWCheckBox [146]
    Left = 600
    Top = 784
    Width = 49
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
    Caption = 'N'#227'o'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 141
    OnAsyncClick = rb_cnh_naoAsyncClick
    Checked = False
    FriendlyName = 'rb_cnh_nao'
  end
  object rb_cnh_sim: TIWCheckBox [147]
    Left = 600
    Top = 759
    Width = 49
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
    Caption = 'Sim'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 142
    OnAsyncClick = rb_cnh_simAsyncClick
    Checked = False
    FriendlyName = 'rb_cnh_sim'
    OnAsyncExit = rb_cnh_simAsyncExit
  end
  object rb_s4_tab_normal: TIWCheckBox [148]
    Left = 511
    Top = 784
    Width = 74
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
    Caption = 'Normal'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 143
    OnAsyncClick = rb_s4_tab_normalAsyncClick
    Checked = False
    FriendlyName = 'rb_cnh_nao'
  end
  object rb_s4_tab_especial: TIWCheckBox [149]
    Left = 511
    Top = 759
    Width = 83
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
    Caption = 'Especial'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 144
    OnAsyncClick = rb_s4_tab_especialAsyncClick
    Checked = False
    FriendlyName = 'rb_cnh_sim'
  end
  object ck_doc_obrigatorio: TIWCheckBox [150]
    Left = 304
    Top = 24
    Width = 88
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
    Caption = 'Obrigat'#243'rio'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 145
    Checked = False
    FriendlyName = 'ck_doc_obrigatorio'
  end
  object combo_prazo: TIWComboBox [151]
    Left = 368
    Top = 752
    Width = 121
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
    OnAsyncExit = combo_prazoAsyncExit
    TabOrder = 146
    ItemIndex = -1
    Items.Strings = (
      '6'
      '12'
      '18'
      '24'
      '30'
      '36'
      '42'
      '48'
      '60'
      '72')
    FriendlyName = 'combo_prazo'
    NoSelectionText = '---'
  end
  object combo_s4_prazo: TIWComboBox [152]
    Left = 368
    Top = 779
    Width = 121
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
    TabOrder = 147
    ItemIndex = -1
    Items.Strings = (
      '6'
      '12'
      '18'
      '24'
      '30'
      '36'
      '42'
      '48'
      '60'
      '72')
    FriendlyName = 'combo_prazo'
    NoSelectionText = '--------'
  end
  object edit_placa_usado: TIWEdit [153]
    Left = 289
    Top = 867
    Width = 89
    Height = 23
    OnHTMLTag = edit_placa_usadoHTMLTag
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'edit_placa_usado'
    SubmitOnAsyncEvent = True
    TabOrder = 148
  end
  object lb_cor: TIWLabel [154]
    Left = 328
    Top = 384
    Width = 16
    Height = 16
    Css = 'label label-danger'
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
    HasTabOrder = False
    FriendlyName = 'lb_cor'
    Caption = '---'
  end
  object BTNAPRGER: TIWButton [155]
    Left = 119
    Top = 1048
    Width = 89
    Height = 30
    Caption = 'BTNAPRGER'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTNSAIR'
    TabOrder = 149
    OnAsyncClick = BTNAPRGERAsyncClick
  end
  object btn_salvar_fi: TIWButton [156]
    Left = 240
    Top = 392
    Width = 96
    Height = 30
    Css = 'btn  btn-primary form-control'
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
    FriendlyName = 'btn_salvar_fi'
    TabOrder = 150
    OnAsyncClick = btn_salvar_fiAsyncClick
  end
  object edit_pgto_placa: TIWEdit [157]
    Left = 289
    Top = 1019
    Width = 89
    Height = 23
    OnHTMLTag = edit_pgto_placaHTMLTag
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'edit_placa_usado'
    SubmitOnAsyncEvent = True
    TabOrder = 151
  end
  object ck_aprovar_acessorios: TIWCheckBox [158]
    Left = 368
    Top = 487
    Width = 121
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
    Caption = 'Aprovar ao salvar'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 152
    OnAsyncChange = ck_aprovar_acessoriosAsyncChange
    Checked = False
    FriendlyName = 'ck_aprovar_acessorios'
  end
  object btn_fin_check_add: TIWButton [159]
    Left = 352
    Top = 1144
    Width = 40
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
    Caption = '>>'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btn_fin_check_add'
    TabOrder = 153
    OnAsyncClick = btn_fin_check_addAsyncClick
  end
  object btn_fin_check_del: TIWButton [160]
    Left = 352
    Top = 1175
    Width = 40
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
    Caption = '<<'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btn_fin_check_add'
    TabOrder = 154
    OnAsyncClick = btn_fin_check_delAsyncClick
  end
  object list_fin_check: TIWListbox [161]
    Left = 264
    Top = 1128
    Width = 72
    Height = 89
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
    TabOrder = 155
    FriendlyName = 'list_fin_check'
    NoSelectionText = '-- No Selection --'
  end
  object list_fin_check_list: TIWListbox [162]
    Left = 398
    Top = 1128
    Width = 72
    Height = 89
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
    TabOrder = 156
    FriendlyName = 'list_fin_check'
    NoSelectionText = '-- No Selection --'
  end
  object ck_fin_check_doc: TIWCheckBox [163]
    Left = 497
    Top = 1168
    Width = 97
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
    Caption = 'Permitir Doc'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 157
    Checked = False
    FriendlyName = 'ck_fin_check_doc'
  end
  object combo_origem_doc: TIWDBLookupComboBox [164]
    Left = 24
    Top = 1128
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
    TabOrder = 158
    AutoEditable = False
    FriendlyName = 'combo_origem_doc'
    KeyField = 'DESCRICAO'
    ListField = 'DESCRICAO'
    ListSource = ds_q_origem_doc
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object N1_EDIT_SPMC: TIWEdit [165]
    Left = 728
    Top = 1160
    Width = 97
    Height = 29
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
    FriendlyName = 'N1_EDIT_SPMC'
    SubmitOnAsyncEvent = True
    TabOrder = 159
    OnAsyncExit = N1_EDIT_SPMCAsyncExit
    Enabled = False
    Text = '0,00'
    DataTypeOptions.NumberType = ntCurrency
  end
  object N1_EDIT_GAP: TIWEdit [166]
    Left = 728
    Top = 1195
    Width = 97
    Height = 29
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 160
    OnAsyncExit = N1_EDIT_GAPAsyncExit
    Enabled = False
    Text = '0,00'
  end
  object N1_EDIT_GMAC_PLUS: TIWEdit [167]
    Left = 728
    Top = 1230
    Width = 97
    Height = 29
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 161
    Enabled = False
    Text = '0,00'
  end
  object N1_EDIT_PERC: TIWEdit [168]
    Left = 728
    Top = 1265
    Width = 97
    Height = 29
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
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 162
    Text = '3'
  end
  object N1_CK_SPMC: TIWCheckBox [169]
    Left = 624
    Top = 1160
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
    Caption = 'SPMC'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 163
    OnAsyncChange = N1_CK_SPMCAsyncChange
    Checked = False
    FriendlyName = 'N1_CK_SPMC'
  end
  object N1_CK_GAP: TIWCheckBox [170]
    Left = 624
    Top = 1187
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
    Caption = 'GAP'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 164
    OnAsyncChange = N1_CK_GAPAsyncChange
    Checked = False
    FriendlyName = 'IWCheckBox1'
  end
  object N1_CK_GMAC_PLUS: TIWCheckBox [171]
    Left = 624
    Top = 1214
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
    Caption = 'GMAC PLUS'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 165
    OnAsyncChange = N1_CK_GMAC_PLUSAsyncChange
    Checked = False
    FriendlyName = 'IWCheckBox1'
  end
  object N1_BTN_LANCAR: TIWButton [172]
    Left = 632
    Top = 1256
    Width = 73
    Height = 30
    Visible = False
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
    Caption = 'Lan'#231'ar'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'N1_BTN_LANCAR'
    TabOrder = 166
    OnAsyncClick = N1_BTN_LANCARAsyncClick
  end
  inherited IWTemplateProcessorHTML1: TIWTemplateProcessorHTML
    Left = 760
    Top = 824
  end
  object ds_q_empresas: TDataSource
    DataSet = DM.q_empresas
    Left = 640
    Top = 32
  end
  object ds_q_financiadoras: TDataSource
    DataSet = DM.q_financiadoras
    Left = 648
    Top = 88
  end
  object q_funcao_vendedor_veic: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      
        ' select pm.cod_gerente_vendas,pm.cod_supervisor_veiculo,pm.cod_v' +
        'endedor_veiculo from parm_sys pm where cod_empresa= :cod_empresa')
    Left = 560
    Top = 32
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
  object q_vendedores_veic: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      
        'SELECT empresas_usuarios.cod_empresa||'#39'-'#39'|| empresas_usuarios.no' +
        'me_completo '
      '         as VENDEDOR,'
      '       EMPRESAS_USUARIOS.Nome,'
      '       empresas_usuarios.nome_completo,'
      '       empresas_usuarios.cod_empresa_departamento,'
      '       empresas_usuarios.cod_empresa,'
      '       empresas_usuarios.cod_funcao,'
      '       empresas.nome Empresa,'
      '       empresas.cod_empresa'
      '  FROM "EMPRESAS_USUARIOS" EMPRESAS_USUARIOS, empresas'
      ' WHERE ((EMPRESAS_USUARIOS."COD_FUNCAO" = :cod_gerente ) or'
      '       (EMPRESAS_USUARIOS."COD_FUNCAO" = :cod_supervisor ) or'
      '       (EMPRESAS_USUARIOS."COD_FUNCAO" = :cod_vendedor ))'
      '   and (EMPRESAS_USUARIOS."COD_EMPRESA" = empresas.cOD_EMPRESA)'
      '   and nvl(demitido, '#39'N'#39') = '#39'N'#39
      ' order by nome_completo')
    Left = 568
    Top = 216
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
    object q_vendedores_veicVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 82
    end
    object q_vendedores_veicNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object q_vendedores_veicNOME_COMPLETO: TStringField
      FieldName = 'NOME_COMPLETO'
      Origin = 'NOME_COMPLETO'
      Size = 40
    end
    object q_vendedores_veicCOD_EMPRESA_DEPARTAMENTO: TFMTBCDField
      FieldName = 'COD_EMPRESA_DEPARTAMENTO'
      Origin = 'COD_EMPRESA_DEPARTAMENTO'
      Required = True
      Precision = 38
      Size = 0
    end
    object q_vendedores_veicCOD_EMPRESA: TFMTBCDField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Required = True
      Precision = 38
      Size = 0
    end
    object q_vendedores_veicCOD_FUNCAO: TFMTBCDField
      FieldName = 'COD_FUNCAO'
      Origin = 'COD_FUNCAO'
      Precision = 38
      Size = 0
    end
    object q_vendedores_veicEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
      Size = 30
    end
    object q_vendedores_veicCOD_EMPRESA_1: TFMTBCDField
      FieldName = 'COD_EMPRESA_1'
      Origin = 'COD_EMPRESA'
      Required = True
      Precision = 38
      Size = 0
    end
  end
  object ds_q_vendedores: TDataSource
    DataSet = q_vendedores_veic
    Left = 656
    Top = 216
  end
  object q_busca_clientes: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select cod_cliente,'
      '       nome,'
      '       bairro_res      as bairro,'
      '       rua_res         as rua,'
      '       cep_res         as cep,'
      '       fachada_res     as nr,'
      '       complemento_res as complemento'
      '  from clientes')
    Left = 568
    Top = 176
  end
  object ds_q_busca_clientes: TDataSource
    DataSet = q_busca_clientes
    Left = 648
    Top = 168
  end
  object q_clientes: TFDQuery
    Connection = DM.banco
    Left = 264
    Top = 160
  end
  object ds_q_marcas: TDataSource
    DataSet = q_marcas
    Left = 656
    Top = 264
  end
  object q_produtos: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select cod_produto,descricao_produto,cod_marca from produtos'
      ' '
      'where cod_marca= :cod_marca'
      'and novo_usado= :novo_usado'
      ''
      'and ativo ='#39'S'#39
      'order by descricao_produto')
    Left = 568
    Top = 408
    ParamData = <
      item
        Name = 'COD_MARCA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NOVO_USADO'
        ParamType = ptInput
      end>
    object q_produtosCOD_PRODUTO: TFMTBCDField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object q_produtosDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'DESCRICAO_PRODUTO'
      Required = True
      Size = 50
    end
    object q_produtosCOD_MARCA: TBCDField
      FieldName = 'COD_MARCA'
      Origin = 'COD_MARCA'
      Required = True
      Precision = 10
      Size = 0
    end
  end
  object ds_q_produtos: TDataSource
    DataSet = q_produtos
    Left = 656
    Top = 408
  end
  object q_marcas: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select cod_marca, m.descricao_marca'
      '  from marcas m'
      
        ' where exists (select 1 from produtos p where p.cod_marca = m.co' +
        'd_marca)'
      ' order by descricao_marca')
    Left = 568
    Top = 264
    object q_marcasCOD_MARCA: TBCDField
      FieldName = 'COD_MARCA'
      Origin = 'COD_MARCA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 10
      Size = 0
    end
    object q_marcasDESCRICAO_MARCA: TStringField
      FieldName = 'DESCRICAO_MARCA'
      Origin = 'DESCRICAO_MARCA'
      Required = True
      Size = 30
    end
  end
  object q_modelos: TFDQuery
    AfterOpen = q_modelosAfterOpen
    Connection = DM.banco
    SQL.Strings = (
      'select cod_produto,'
      '       cod_modelo,'
      '       descricao_modelo,'
      '       pm.preco_tabela,'
      '       pm.ano_modelo,'
      '       pm.renavam'
      '  from produtos_modelos pm'
      ' where ativo = '#39'S'#39
      '   and cod_produto = :cod_produto'
      ' order by descricao_modelo')
    Left = 568
    Top = 464
    ParamData = <
      item
        Name = 'COD_PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object q_modelosCOD_PRODUTO: TFMTBCDField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object q_modelosCOD_MODELO: TFMTBCDField
      FieldName = 'COD_MODELO'
      Origin = 'COD_MODELO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object q_modelosDESCRICAO_MODELO: TStringField
      FieldName = 'DESCRICAO_MODELO'
      Origin = 'DESCRICAO_MODELO'
      Required = True
      Size = 50
    end
    object q_modelosPRECO_TABELA: TBCDField
      FieldName = 'PRECO_TABELA'
      Origin = 'PRECO_TABELA'
      Required = True
      Precision = 14
      Size = 2
    end
    object q_modelosANO_MODELO: TStringField
      FieldName = 'ANO_MODELO'
      Origin = 'ANO_MODELO'
      Required = True
      Size = 6
    end
    object q_modelosRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Origin = 'RENAVAM'
      Size = 15
    end
  end
  object ds_q_modelos: TDataSource
    DataSet = q_modelos
    Left = 656
    Top = 456
  end
  object q_cores_externas: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'SELECT CRUZAMENTO_VEIC_COR_EXT.COD_PRODUTO,'
      '       CRUZAMENTO_VEIC_COR_EXT.desativou,'
      '       CRUZAMENTO_VEIC_COR_EXT.COD_MODELO,'
      '       CRUZAMENTO_VEIC_COR_EXT.COR_EXTERNA,'
      '       CORES_EXTERNAS.DESCRICAO,'
      '       CORES_EXTERNAS.FOTO'
      '  FROM CORES_EXTERNAS, CRUZAMENTO_VEIC_COR_EXT'
      
        ' WHERE (CRUZAMENTO_VEIC_COR_EXT.COR_EXTERNA = CORES_EXTERNAS.COR' +
        '_EXTERNA)'
      '   AND (CRUZAMENTO_VEIC_COR_EXT.COD_PRODUTO = 20520)'
      '   AND (CRUZAMENTO_VEIC_COR_EXT.COD_MODELO = 60250)')
    Left = 568
    Top = 360
    object q_cores_externasCOD_PRODUTO: TFMTBCDField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
      Required = True
      Precision = 38
      Size = 0
    end
    object q_cores_externasDESATIVOU: TStringField
      FieldName = 'DESATIVOU'
      Origin = 'DESATIVOU'
      Size = 1
    end
    object q_cores_externasCOD_MODELO: TFMTBCDField
      FieldName = 'COD_MODELO'
      Origin = 'COD_MODELO'
      Required = True
      Precision = 38
      Size = 0
    end
    object q_cores_externasCOR_EXTERNA: TFMTBCDField
      FieldName = 'COR_EXTERNA'
      Origin = 'COR_EXTERNA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object q_cores_externasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object q_cores_externasFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
  end
  object ds_q_cores_externas: TDataSource
    DataSet = q_cores_externas
    Left = 656
    Top = 360
  end
  object q_opcionais: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      ''
      'SELECT pr.descricao_produto '
      '      ,p.descricao_modelo '
      '      ,c.cod_produto '
      '      ,c.cod_modelo '
      '      ,c.cod_opcional '
      '      ,c.preco_custo '
      '      ,c.descricao_detalhada '
      '      ,c.preco_venda '
      '      ,c.preco_venda_internet '
      '      ,c.preco_usd '
      '      ,c.cod_pacote_opcionais '
      '      ,po.descricao AS pacote_opcionais_descricao '
      '      ,c.descricao '
      '      ,0 AS novo_preco '
      '      ,c.ativo '
      '      ,c.seqopcional '
      '      ,c.controle_venda '
      '      ,c.eh_cambio_automatico '
      '  FROM produtos_modelos    p '
      '      ,cruzamento_veic_opc c '
      '      ,produtos            pr '
      '      ,pacote_opcionais    po '
      ' WHERE pr.cod_produto = c.cod_produto '
      '   AND c.cod_produto = p.cod_produto '
      '   AND c.cod_modelo = p.cod_modelo '
      '   AND c.cod_pacote_opcionais = po.cod_pacote_opcionais(+) '
      '   AND c.cod_produto = :cod_produto '
      '   AND c.cod_modelo = :cod_modelo'
      'and c.ativo = '#39'S'#39
      'and upper(c.descricao) like '#39'%%'#39
      'order by c.descricao')
    Left = 568
    Top = 312
    ParamData = <
      item
        Name = 'COD_PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COD_MODELO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object q_opcionaisDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'DESCRICAO_PRODUTO'
      Required = True
      Size = 50
    end
    object q_opcionaisDESCRICAO_MODELO: TStringField
      FieldName = 'DESCRICAO_MODELO'
      Origin = 'DESCRICAO_MODELO'
      Required = True
      Size = 50
    end
    object q_opcionaisCOD_PRODUTO: TFMTBCDField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object q_opcionaisCOD_MODELO: TFMTBCDField
      FieldName = 'COD_MODELO'
      Origin = 'COD_MODELO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object q_opcionaisCOD_OPCIONAL: TStringField
      FieldName = 'COD_OPCIONAL'
      Origin = 'COD_OPCIONAL'
      Required = True
      Size = 6
    end
    object q_opcionaisPRECO_CUSTO: TBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Precision = 12
      Size = 2
    end
    object q_opcionaisDESCRICAO_DETALHADA: TMemoField
      FieldName = 'DESCRICAO_DETALHADA'
      Origin = 'DESCRICAO_DETALHADA'
      BlobType = ftMemo
    end
    object q_opcionaisPRECO_VENDA: TBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      Precision = 12
      Size = 2
    end
    object q_opcionaisPRECO_VENDA_INTERNET: TFMTBCDField
      FieldName = 'PRECO_VENDA_INTERNET'
      Origin = 'PRECO_VENDA_INTERNET'
      Precision = 38
      Size = 2
    end
    object q_opcionaisPRECO_USD: TBCDField
      FieldName = 'PRECO_USD'
      Origin = 'PRECO_USD'
      Precision = 12
      Size = 2
    end
    object q_opcionaisCOD_PACOTE_OPCIONAIS: TBCDField
      FieldName = 'COD_PACOTE_OPCIONAIS'
      Origin = 'COD_PACOTE_OPCIONAIS'
      Precision = 10
      Size = 0
    end
    object q_opcionaisPACOTE_OPCIONAIS_DESCRICAO: TStringField
      FieldName = 'PACOTE_OPCIONAIS_DESCRICAO'
      Origin = 'PACOTE_OPCIONAIS_DESCRICAO'
      Size = 100
    end
    object q_opcionaisDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object q_opcionaisNOVO_PRECO: TFMTBCDField
      FieldName = 'NOVO_PRECO'
      Origin = 'NOVO_PRECO'
      Precision = 38
      Size = 38
    end
    object q_opcionaisATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object q_opcionaisSEQOPCIONAL: TFMTBCDField
      FieldName = 'SEQOPCIONAL'
      Origin = 'SEQOPCIONAL'
      Precision = 38
      Size = 0
    end
    object q_opcionaisCONTROLE_VENDA: TStringField
      FieldName = 'CONTROLE_VENDA'
      Origin = 'CONTROLE_VENDA'
      Size = 1
    end
    object q_opcionaisEH_CAMBIO_AUTOMATICO: TStringField
      FieldName = 'EH_CAMBIO_AUTOMATICO'
      Origin = 'EH_CAMBIO_AUTOMATICO'
      Size = 1
    end
  end
  object ds_q_opcionais: TDataSource
    DataSet = q_opcionais
    Left = 656
    Top = 312
  end
  object q_estoque_veic: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select v.cod_empresa,'
      '       pm.descricao_modelo,'
      '       ce.descricao,'
      '       cob.combustivel,'
      '       v.ano_modelo,'
      '       v.renavam,'
      '       v.cod_produto,'
      '       v.cod_modelo,'
      '       v.chassi_resumido,'
      '       v.chassi_completo,'
      '       v.cor_externa,'
      '       v.placa_usado,'
      '       v.novo_usado,'
      '       v.preco_tabela'
      
        '  from veiculos v, produtos_modelos pm, cores_externas ce, combu' +
        'stivel cob'
      ' where status = '#39'E'#39
      '   and cod_proposta = 0'
      '      '
      '   and v.cod_produto = pm.cod_produto'
      '   and v.cod_modelo = pm.cod_modelo'
      '   and v.cor_externa = ce.cor_externa'
      '   and v.cod_combustivel = cob.cod_combustivel'
      '   and cod_empresa = :cod_empresa')
    Left = 264
    Top = 64
    ParamData = <
      item
        Name = 'COD_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object q_estoque_veicCOD_EMPRESA: TFMTBCDField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object q_estoque_veicDESCRICAO_MODELO: TStringField
      FieldName = 'DESCRICAO_MODELO'
      Origin = 'DESCRICAO_MODELO'
      Required = True
      Size = 50
    end
    object q_estoque_veicDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object q_estoque_veicCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
      Required = True
      Size = 10
    end
    object q_estoque_veicANO_MODELO: TStringField
      FieldName = 'ANO_MODELO'
      Origin = 'ANO_MODELO'
      Size = 5
    end
    object q_estoque_veicRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Origin = 'RENAVAM'
      Size = 15
    end
    object q_estoque_veicCOD_PRODUTO: TFMTBCDField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object q_estoque_veicCOD_MODELO: TFMTBCDField
      FieldName = 'COD_MODELO'
      Origin = 'COD_MODELO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object q_estoque_veicCHASSI_RESUMIDO: TStringField
      FieldName = 'CHASSI_RESUMIDO'
      Origin = 'CHASSI_RESUMIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 7
    end
    object q_estoque_veicCHASSI_COMPLETO: TStringField
      FieldName = 'CHASSI_COMPLETO'
      Origin = 'CHASSI_COMPLETO'
      Required = True
      Size = 17
    end
    object q_estoque_veicCOR_EXTERNA: TFMTBCDField
      FieldName = 'COR_EXTERNA'
      Origin = 'COR_EXTERNA'
      Required = True
      Precision = 38
      Size = 0
    end
    object q_estoque_veicPLACA_USADO: TStringField
      FieldName = 'PLACA_USADO'
      Origin = 'PLACA_USADO'
      Size = 8
    end
    object q_estoque_veicNOVO_USADO: TStringField
      FieldName = 'NOVO_USADO'
      Origin = 'NOVO_USADO'
      Required = True
      Size = 1
    end
    object q_estoque_veicPRECO_TABELA: TBCDField
      FieldName = 'PRECO_TABELA'
      Origin = 'PRECO_TABELA'
      Precision = 12
      Size = 2
    end
  end
  object q_veiculos: TFDQuery
    AfterOpen = q_veiculosAfterOpen
    Connection = DM.banco
    Left = 264
    Top = 112
  end
  object timer: TIWTimer
    Enabled = False
    Interval = 200
    ShowAsyncLock = False
    OnAsyncTimer = timerAsyncTimer
    Left = 256
    Top = 328
  end
  object q_vendedores_a: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select cod_empresa, nome, nome_completo'
      '  from empresas_usuarios'
      ' where cod_funcao in ('
      '                      '
      '                      select cod_funcao'
      '                        from empresas_funcoes'
      '                       where UPPER(descricao) like ('#39'%ACESS%'#39'))'
      ''
      ' ')
    Left = 568
    Top = 520
    object q_vendedores_aCOD_EMPRESA: TFMTBCDField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Required = True
      Precision = 38
      Size = 0
    end
    object q_vendedores_aNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object q_vendedores_aNOME_COMPLETO: TStringField
      FieldName = 'NOME_COMPLETO'
      Origin = 'NOME_COMPLETO'
      Size = 40
    end
  end
  object ds_q_vendedores_a: TDataSource
    DataSet = q_vendedores_a
    Left = 664
    Top = 520
  end
  object q_analista_c: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select cod_empresa, nome, nome_completo'
      '  from empresas_usuarios'
      ' where cod_funcao in ('
      '                      '
      '                      select cod_funcao'
      '                        from empresas_funcoes'
      
        '                       where UPPER(descricao) like ('#39'%CREDITO%'#39')' +
        ')'
      ''
      ' ')
    Left = 568
    Top = 576
    object FMTBCDField1: TFMTBCDField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Required = True
      Precision = 38
      Size = 0
    end
    object StringField1: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'NOME_COMPLETO'
      Origin = 'NOME_COMPLETO'
      Size = 40
    end
  end
  object ds_analista_c: TDataSource
    DataSet = q_analista_c
    Left = 664
    Top = 576
  end
  object q_status_finan: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select * from wc_status_finan'
      'where ativo='#39'S'#39)
    Left = 160
    Top = 64
    object q_status_finanID: TFMTBCDField
      FieldName = 'ID'
      Origin = 'ID'
      Precision = 38
      Size = 0
    end
    object q_status_finanDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object q_status_finanATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object q_status_finanCOR: TStringField
      FieldName = 'COR'
      Origin = 'COR'
      Size = 30
    end
    object q_status_finanDOC: TStringField
      FieldName = 'DOC'
      Origin = 'DOC'
      Size = 1
    end
  end
  object ds_q_status_finan: TDataSource
    DataSet = q_status_finan
    Left = 232
    Top = 32
  end
  object q_status_finan_aux: TFDQuery
    Connection = DM.banco
    Left = 424
    Top = 424
  end
  object q_docs: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select doc'
      '  from wc_origens_doc c'
      ' where origem = :origem'
      '      '
      '   and not exists ('
      '        '
      '        select 1'
      '          from WC_LISTA_DOCUMENTOS a, wc_fin_documentos b'
      '         where a.id = b.id_documento'
      '           and a.descricao = c.doc'
      '           and id_finan = :id_finan'
      '        '
      '        )')
    Left = 424
    Top = 848
    ParamData = <
      item
        Name = 'ORIGEM'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_FINAN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object q_docsDOC: TStringField
      FieldName = 'DOC'
      Origin = 'DOC'
      Size = 100
    end
  end
  object ds_q_docs: TDataSource
    DataSet = q_docs
    Left = 424
    Top = 904
  end
  object q_datatable: TFDQuery
    Connection = DM.banco
    Left = 568
    Top = 872
  end
  object q_geral: TFDQuery
    Connection = DM.banco
    Left = 48
    Top = 744
  end
  object q_motivos_recusa: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select * from wc_motivos_recusa order by id, descricao')
    Left = 456
    Top = 976
    object q_motivos_recusaID: TFMTBCDField
      FieldName = 'ID'
      Origin = 'ID'
      Precision = 38
      Size = 0
    end
    object q_motivos_recusaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object q_motivos_recusaATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
  end
  object ds_q_motivos_recusa: TDataSource
    DataSet = q_motivos_recusa
    Left = 528
    Top = 976
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 952
    Top = 848
    object cdsFileName: TStringField
      FieldName = 'FileName'
      Size = 100
    end
    object cdsFileSize: TIntegerField
      FieldName = 'FileSize'
    end
    object cdsfilecontent: TBlobField
      FieldName = 'filecontent'
    end
  end
  object q_doc: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select id,id_finan,descricao,imagem from wc_imagens')
    Left = 912
    Top = 848
    object q_docID: TFMTBCDField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object q_docID_FINAN: TFMTBCDField
      FieldName = 'ID_FINAN'
      Origin = 'ID_FINAN'
      Required = True
      Precision = 38
      Size = 0
    end
    object q_docIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      Origin = 'IMAGEM'
      BlobType = ftOraBlob
    end
    object q_docDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
  end
  object q_formulario: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select *'
      '  from wc_simulacao_venda a'
      ' where id= :id')
    Left = 312
    Top = 232
    ParamData = <
      item
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object q_formularioID: TFMTBCDField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object q_formularioCOD_EMPRESA: TFMTBCDField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Precision = 38
      Size = 0
    end
    object q_formularioVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 100
    end
    object q_formularioORIGEM: TStringField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
    end
    object q_formularioCOD_CLIENTE: TFMTBCDField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
      Precision = 38
      Size = 0
    end
    object q_formularioNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Origin = 'NOME_CLIENTE'
      Size = 100
    end
    object q_formularioFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 11
    end
    object q_formularioCLIENTE_CADASTRO: TStringField
      FieldName = 'CLIENTE_CADASTRO'
      Origin = 'CLIENTE_CADASTRO'
      Size = 5
    end
    object q_formularioCNH: TStringField
      FieldName = 'CNH'
      Origin = 'CNH'
      Size = 5
    end
    object q_formularioTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object q_formularioTIPO_PROPOSTA: TStringField
      FieldName = 'TIPO_PROPOSTA'
      Origin = 'TIPO_PROPOSTA'
      Size = 1
    end
    object q_formularioCOD_MARCA: TFMTBCDField
      FieldName = 'COD_MARCA'
      Origin = 'COD_MARCA'
      Precision = 38
      Size = 0
    end
    object q_formularioCOD_PRODUTO: TFMTBCDField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
      Precision = 38
      Size = 0
    end
    object q_formularioCOD_MODELO: TFMTBCDField
      FieldName = 'COD_MODELO'
      Origin = 'COD_MODELO'
      Precision = 38
      Size = 0
    end
    object q_formularioANO_MODELO: TStringField
      FieldName = 'ANO_MODELO'
      Origin = 'ANO_MODELO'
      Size = 10
    end
    object q_formularioCOR_EXTERNA: TFMTBCDField
      FieldName = 'COR_EXTERNA'
      Origin = 'COR_EXTERNA'
      Precision = 38
      Size = 0
    end
    object q_formularioRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Origin = 'RENAVAM'
      Size = 30
    end
    object q_formularioCHASSI: TStringField
      FieldName = 'CHASSI'
      Origin = 'CHASSI'
      Size = 30
    end
    object q_formularioOPCIONAIS: TStringField
      FieldName = 'OPCIONAIS'
      Origin = 'OPCIONAIS'
      Size = 100
    end
    object q_formularioS_VALOR_VEIC: TBCDField
      FieldName = 'S_VALOR_VEIC'
      Origin = 'S_VALOR_VEIC'
      Precision = 9
      Size = 2
    end
    object q_formularioS_ENTRADA: TBCDField
      FieldName = 'S_ENTRADA'
      Origin = 'S_ENTRADA'
      Precision = 9
      Size = 2
    end
    object q_formularioS_VALOR_FIN: TBCDField
      FieldName = 'S_VALOR_FIN'
      Origin = 'S_VALOR_FIN'
      Precision = 9
      Size = 2
    end
    object q_formularioS_PRAZO: TFMTBCDField
      FieldName = 'S_PRAZO'
      Origin = 'S_PRAZO'
      Precision = 38
      Size = 0
    end
    object q_formularioS_PARCELA: TBCDField
      FieldName = 'S_PARCELA'
      Origin = 'S_PARCELA'
      Precision = 9
      Size = 2
    end
    object q_formularioS_TABELA: TStringField
      FieldName = 'S_TABELA'
      Origin = 'S_TABELA'
      Size = 30
    end
    object q_formularioS_COD_FIPE: TStringField
      FieldName = 'S_COD_FIPE'
      Origin = 'S_COD_FIPE'
      Size = 30
    end
    object q_formularioS_COEFICIENTE: TFMTBCDField
      FieldName = 'S_COEFICIENTE'
      Origin = 'S_COEFICIENTE'
      Precision = 38
      Size = 38
    end
    object q_formularioS2_VALOR_VEIC: TBCDField
      FieldName = 'S2_VALOR_VEIC'
      Origin = 'S2_VALOR_VEIC'
      Precision = 9
      Size = 2
    end
    object q_formularioS2_ENTRADA: TBCDField
      FieldName = 'S2_ENTRADA'
      Origin = 'S2_ENTRADA'
      Precision = 9
      Size = 2
    end
    object q_formularioS2_VALOR_FIN: TBCDField
      FieldName = 'S2_VALOR_FIN'
      Origin = 'S2_VALOR_FIN'
      Precision = 9
      Size = 2
    end
    object q_formularioS_PARTICIPACAO: TBCDField
      FieldName = 'S_PARTICIPACAO'
      Origin = 'S_PARTICIPACAO'
      Precision = 9
      Size = 2
    end
    object q_formularioS_DESPACHANTE: TBCDField
      FieldName = 'S_DESPACHANTE'
      Origin = 'S_DESPACHANTE'
      Precision = 9
      Size = 2
    end
    object q_formularioPG_CONTRA_APRESENTACAO: TBCDField
      FieldName = 'PG_CONTRA_APRESENTACAO'
      Origin = 'PG_CONTRA_APRESENTACAO'
      Precision = 9
      Size = 2
    end
    object q_formularioPG_CARTAO: TBCDField
      FieldName = 'PG_CARTAO'
      Origin = 'PG_CARTAO'
      Precision = 9
      Size = 2
    end
    object q_formularioPB_CHEQUE: TBCDField
      FieldName = 'PB_CHEQUE'
      Origin = 'PB_CHEQUE'
      Precision = 9
      Size = 2
    end
    object q_formularioPG_USADO: TBCDField
      FieldName = 'PG_USADO'
      Origin = 'PG_USADO'
      Precision = 9
      Size = 2
    end
    object q_formularioPG_OUTRAS_PG: TBCDField
      FieldName = 'PG_OUTRAS_PG'
      Origin = 'PG_OUTRAS_PG'
      Precision = 9
      Size = 2
    end
    object q_formularioPG_CONSORCIO: TBCDField
      FieldName = 'PG_CONSORCIO'
      Origin = 'PG_CONSORCIO'
      Precision = 9
      Size = 2
    end
    object q_formularioPG_FIN_EXTERNO: TBCDField
      FieldName = 'PG_FIN_EXTERNO'
      Origin = 'PG_FIN_EXTERNO'
      Precision = 9
      Size = 2
    end
    object q_formularioPG_TR_USADO: TBCDField
      FieldName = 'PG_TR_USADO'
      Origin = 'PG_TR_USADO'
      Precision = 9
      Size = 2
    end
    object q_formularioPG_TR_ACESSORIO: TBCDField
      FieldName = 'PG_TR_ACESSORIO'
      Origin = 'PG_TR_ACESSORIO'
      Precision = 9
      Size = 2
    end
    object q_formularioPG_TR_EMPLACAMENTO: TBCDField
      FieldName = 'PG_TR_EMPLACAMENTO'
      Origin = 'PG_TR_EMPLACAMENTO'
      Precision = 9
      Size = 2
    end
    object q_formularioPG_TR_IPVA: TBCDField
      FieldName = 'PG_TR_IPVA'
      Origin = 'PG_TR_IPVA'
      Precision = 9
      Size = 2
    end
    object q_formularioPG_TR_OUTROS: TBCDField
      FieldName = 'PG_TR_OUTROS'
      Origin = 'PG_TR_OUTROS'
      Precision = 9
      Size = 2
    end
    object q_formularioPG_TR_HN: TBCDField
      FieldName = 'PG_TR_HN'
      Origin = 'PG_TR_HN'
      Precision = 9
      Size = 2
    end
    object q_formularioCORTESIA: TStringField
      FieldName = 'CORTESIA'
      Origin = 'CORTESIA'
      Size = 200
    end
    object q_formularioOBS_CORTESIA: TStringField
      FieldName = 'OBS_CORTESIA'
      Origin = 'OBS_CORTESIA'
      Size = 300
    end
    object q_formularioVENDEDOR_ACESSORIO: TStringField
      FieldName = 'VENDEDOR_ACESSORIO'
      Origin = 'VENDEDOR_ACESSORIO'
      Size = 50
    end
    object q_formularioVALOR_ELEGIVEL: TBCDField
      FieldName = 'VALOR_ELEGIVEL'
      Origin = 'VALOR_ELEGIVEL'
      Precision = 9
      Size = 2
    end
    object q_formularioTAXA_ZERO: TStringField
      FieldName = 'TAXA_ZERO'
      Origin = 'TAXA_ZERO'
      Size = 1
    end
    object q_formularioVALOR_ACESSORIOS: TBCDField
      FieldName = 'VALOR_ACESSORIOS'
      Origin = 'VALOR_ACESSORIOS'
      Precision = 9
      Size = 2
    end
    object q_formularioGMAC_PLUS: TStringField
      FieldName = 'GMAC_PLUS'
      Origin = 'GMAC_PLUS'
      Size = 1
    end
    object q_formularioGMAC_PLUS_VALOR: TBCDField
      FieldName = 'GMAC_PLUS_VALOR'
      Origin = 'GMAC_PLUS_VALOR'
      Precision = 9
      Size = 2
    end
    object q_formularioEMPLACAMENTO: TBCDField
      FieldName = 'EMPLACAMENTO'
      Origin = 'EMPLACAMENTO'
      Precision = 9
      Size = 2
    end
    object q_formularioPMC: TStringField
      FieldName = 'PMC'
      Origin = 'PMC'
      Size = 1
    end
    object q_formularioPMC_TIPO: TStringField
      FieldName = 'PMC_TIPO'
      Origin = 'PMC_TIPO'
      Size = 30
    end
    object q_formularioPMC_VALOR: TBCDField
      FieldName = 'PMC_VALOR'
      Origin = 'PMC_VALOR'
      Precision = 9
      Size = 2
    end
    object q_formularioGAP: TStringField
      FieldName = 'GAP'
      Origin = 'GAP'
      Size = 1
    end
    object q_formularioGAP_TIPO: TStringField
      FieldName = 'GAP_TIPO'
      Origin = 'GAP_TIPO'
      Size = 30
    end
    object q_formularioGAP_VALOR: TBCDField
      FieldName = 'GAP_VALOR'
      Origin = 'GAP_VALOR'
      Precision = 9
      Size = 2
    end
    object q_formularioSIGA: TStringField
      FieldName = 'SIGA'
      Origin = 'SIGA'
      Size = 1
    end
    object q_formularioSIGA_TIPO: TStringField
      FieldName = 'SIGA_TIPO'
      Origin = 'SIGA_TIPO'
      Size = 30
    end
    object q_formularioSIGA_VALOR: TBCDField
      FieldName = 'SIGA_VALOR'
      Origin = 'SIGA_VALOR'
      Precision = 9
      Size = 2
    end
    object q_formularioVALOR_SEGURO: TBCDField
      FieldName = 'VALOR_SEGURO'
      Origin = 'VALOR_SEGURO'
      Precision = 9
      Size = 2
    end
    object q_formularioDATA_INCLUSAO: TDateTimeField
      FieldName = 'DATA_INCLUSAO'
      Origin = 'DATA_INCLUSAO'
    end
    object q_formularioUSUARIO_INCLUSAO: TStringField
      FieldName = 'USUARIO_INCLUSAO'
      Origin = 'USUARIO_INCLUSAO'
      Size = 30
    end
    object q_formularioRASCUNHO: TStringField
      FieldName = 'RASCUNHO'
      Origin = 'RASCUNHO'
      Size = 1
    end
    object q_formularioS_PERC_ENTRADA: TFMTBCDField
      FieldName = 'S_PERC_ENTRADA'
      Origin = 'S_PERC_ENTRADA'
      Precision = 38
      Size = 38
    end
    object q_formularioS_PERC_ENTRADA2: TFMTBCDField
      FieldName = 'S_PERC_ENTRADA2'
      Origin = 'S_PERC_ENTRADA2'
      Precision = 38
      Size = 38
    end
    object q_formularioVALOR_AUMENTO_PARC: TFMTBCDField
      FieldName = 'VALOR_AUMENTO_PARC'
      Origin = 'VALOR_AUMENTO_PARC'
      Precision = 38
      Size = 38
    end
    object q_formularioGERENTE: TStringField
      FieldName = 'GERENTE'
      Origin = 'GERENTE'
      Size = 100
    end
    object q_formularioOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Origin = 'OPERADOR'
      Size = 100
    end
    object q_formularioDATA_AP_GERENTE: TDateTimeField
      FieldName = 'DATA_AP_GERENTE'
      Origin = 'DATA_AP_GERENTE'
    end
    object q_formularioDATA_AP_OPERADOR: TDateTimeField
      FieldName = 'DATA_AP_OPERADOR'
      Origin = 'DATA_AP_OPERADOR'
    end
    object q_formularioCOD_PROPOSTA: TFMTBCDField
      FieldName = 'COD_PROPOSTA'
      Origin = 'COD_PROPOSTA'
      Precision = 38
      Size = 0
    end
    object q_formularioACESSORIOS: TStringField
      FieldName = 'ACESSORIOS'
      Origin = 'ACESSORIOS'
      Size = 50
    end
    object q_formularioDATA_APROVACAO_ACESS: TDateTimeField
      FieldName = 'DATA_APROVACAO_ACESS'
      Origin = 'DATA_APROVACAO_ACESS'
    end
    object q_formularioOBS_DESPACHANTE: TStringField
      FieldName = 'OBS_DESPACHANTE'
      Origin = 'OBS_DESPACHANTE'
      Size = 300
    end
    object q_formularioFIN_VALOR_VEICULO: TBCDField
      FieldName = 'FIN_VALOR_VEICULO'
      Origin = 'FIN_VALOR_VEICULO'
      Precision = 9
      Size = 2
    end
    object q_formularioFIN_ENTRADA: TBCDField
      FieldName = 'FIN_ENTRADA'
      Origin = 'FIN_ENTRADA'
      Precision = 9
      Size = 2
    end
    object q_formularioFIN_FINANCIADO: TBCDField
      FieldName = 'FIN_FINANCIADO'
      Origin = 'FIN_FINANCIADO'
      Precision = 9
      Size = 2
    end
    object q_formularioFIN_PRAZO: TFMTBCDField
      FieldName = 'FIN_PRAZO'
      Origin = 'FIN_PRAZO'
      Precision = 38
      Size = 0
    end
    object q_formularioFIN_PARCELA: TBCDField
      FieldName = 'FIN_PARCELA'
      Origin = 'FIN_PARCELA'
      Precision = 9
      Size = 2
    end
    object q_formularioFIN_TABELA: TStringField
      FieldName = 'FIN_TABELA'
      Origin = 'FIN_TABELA'
      Size = 30
    end
    object q_formularioFIN_COD_TABELA: TStringField
      FieldName = 'FIN_COD_TABELA'
      Origin = 'FIN_COD_TABELA'
      Size = 30
    end
    object q_formularioFIN_COF: TFMTBCDField
      FieldName = 'FIN_COF'
      Origin = 'FIN_COF'
      Precision = 38
      Size = 38
    end
    object q_formularioFIN_TIPO_TABELA: TStringField
      FieldName = 'FIN_TIPO_TABELA'
      Origin = 'FIN_TIPO_TABELA'
      Size = 30
    end
    object q_formularioFIN_DESPACHANTE: TBCDField
      FieldName = 'FIN_DESPACHANTE'
      Origin = 'FIN_DESPACHANTE'
      Precision = 9
      Size = 2
    end
    object q_formularioFIN_ACESSORIOS: TBCDField
      FieldName = 'FIN_ACESSORIOS'
      Origin = 'FIN_ACESSORIOS'
      Precision = 9
      Size = 2
    end
    object q_formularioFIN_OBS: TStringField
      FieldName = 'FIN_OBS'
      Origin = 'FIN_OBS'
      Size = 500
    end
    object q_formularioFIN_COD_FINANCIADORA: TFMTBCDField
      FieldName = 'FIN_COD_FINANCIADORA'
      Origin = 'FIN_COD_FINANCIADORA'
      Precision = 38
      Size = 0
    end
    object q_formularioFIN_ANALISTA_CREDITO: TStringField
      FieldName = 'FIN_ANALISTA_CREDITO'
      Origin = 'FIN_ANALISTA_CREDITO'
      Size = 50
    end
    object q_formularioFIN_STATUS: TStringField
      FieldName = 'FIN_STATUS'
      Origin = 'FIN_STATUS'
      Size = 50
    end
    object q_formularioFIN_RECUSA: TStringField
      FieldName = 'FIN_RECUSA'
      Origin = 'FIN_RECUSA'
      Size = 50
    end
    object q_formularioA_VALOR_VEIC: TBCDField
      FieldName = 'A_VALOR_VEIC'
      Origin = 'A_VALOR_VEIC'
      Precision = 9
      Size = 2
    end
    object q_formularioA_ENTRADA: TBCDField
      FieldName = 'A_ENTRADA'
      Origin = 'A_ENTRADA'
      Precision = 9
      Size = 2
    end
    object q_formularioA_FINANC: TBCDField
      FieldName = 'A_FINANC'
      Origin = 'A_FINANC'
      Precision = 9
      Size = 2
    end
    object q_formularioA_PERC_ENTRADA: TBCDField
      FieldName = 'A_PERC_ENTRADA'
      Origin = 'A_PERC_ENTRADA'
      Precision = 9
      Size = 2
    end
    object q_formularioA_PRAZO: TFMTBCDField
      FieldName = 'A_PRAZO'
      Origin = 'A_PRAZO'
      Precision = 38
      Size = 0
    end
    object q_formularioA_PARCELA: TBCDField
      FieldName = 'A_PARCELA'
      Origin = 'A_PARCELA'
      Precision = 9
      Size = 2
    end
    object q_formularioVALOR_ENTRADA_A: TBCDField
      FieldName = 'VALOR_ENTRADA_A'
      Origin = 'VALOR_ENTRADA_A'
      Precision = 9
      Size = 2
    end
    object q_formularioFIN_BANCO: TStringField
      FieldName = 'FIN_BANCO'
      Origin = 'FIN_BANCO'
      Size = 100
    end
    object q_formularioEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Size = 100
    end
    object q_formularioFIN_COD_STATUS: TFMTBCDField
      FieldName = 'FIN_COD_STATUS'
      Origin = 'FIN_COD_STATUS'
      Precision = 38
      Size = 0
    end
    object q_formularioPLACA_USADO: TStringField
      FieldName = 'PLACA_USADO'
      Origin = 'PLACA_USADO'
      Size = 8
    end
    object q_formularioPG_PLACA: TStringField
      FieldName = 'PG_PLACA'
      Origin = 'PG_PLACA'
    end
    object q_formularioN1_CK_SPMC: TStringField
      FieldName = 'N1_CK_SPMC'
      Origin = 'N1_CK_SPMC'
      Size = 1
    end
    object q_formularioN1_EDIT_SPMC: TFMTBCDField
      FieldName = 'N1_EDIT_SPMC'
      Origin = 'N1_EDIT_SPMC'
      Precision = 38
      Size = 38
    end
    object q_formularioN1_CK_GAP: TStringField
      FieldName = 'N1_CK_GAP'
      Origin = 'N1_CK_GAP'
      Size = 1
    end
    object q_formularioN1_EDIT_GAP: TFMTBCDField
      FieldName = 'N1_EDIT_GAP'
      Origin = 'N1_EDIT_GAP'
      Precision = 38
      Size = 38
    end
    object q_formularioN1_CK_GMAC_PLUS: TStringField
      FieldName = 'N1_CK_GMAC_PLUS'
      Origin = 'N1_CK_GMAC_PLUS'
      Size = 1
    end
    object q_formularioN1_EDIT_GMAC_PLUS: TFMTBCDField
      FieldName = 'N1_EDIT_GMAC_PLUS'
      Origin = 'N1_EDIT_GMAC_PLUS'
      Precision = 38
      Size = 38
    end
    object q_formularioN1_EDIT_PERC: TFMTBCDField
      FieldName = 'N1_EDIT_PERC'
      Origin = 'N1_EDIT_PERC'
      Precision = 38
      Size = 38
    end
  end
  object q_aux: TFDQuery
    Connection = DM.banco
    Left = 424
    Top = 792
  end
  object q_origem_doc: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select descricao from wc_origens order by descricao')
    Left = 32
    Top = 1152
    object q_origem_docDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 50
    end
  end
  object ds_q_origem_doc: TDataSource
    DataSet = q_origem_doc
    Left = 88
    Top = 1152
  end
end