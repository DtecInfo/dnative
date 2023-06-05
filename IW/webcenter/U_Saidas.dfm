inherited form_saidas: Tform_saidas
  Width = 935
  Height = 694
  OnCreate = IWAppFormCreate
  OnShow = IWAppFormShow
  ExplicitWidth = 935
  ExplicitHeight = 694
  DesignLeft = 2
  DesignTop = 2
  inherited IWACAO: TIWEdit
    TabOrder = 3
  end
  inherited IWBTNACAO: TIWButton
    TabOrder = 5
  end
  inherited BTN_TROCAR_SENHA: TIWButton
    TabOrder = 4
  end
  object produto: TIWLabel [4]
    Left = 200
    Top = 25
    Width = 128
    Height = 16
    Hint = '0'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'produto'
    Caption = 'Produto Selecionado'
  end
  object rb_estoque: TIWRadioButton [5]
    Left = 48
    Top = 144
    Width = 65
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
    Caption = 'Estoque'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RawText = False
    Group = 'no group'
    Value = 'rb_estoque'
    FriendlyName = 'rb_estoque'
    SubmitOnAsyncEvent = True
    OnAsyncChange = rb_estoqueAsyncChange
  end
  object rb_todos: TIWRadioButton [6]
    Left = 48
    Top = 160
    Width = 65
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
    Caption = 'Todos'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RawText = False
    Checked = True
    Group = 'no group'
    Value = 'IWRadioButton1'
    FriendlyName = 'IWRadioButton1'
    SubmitOnAsyncEvent = True
    OnAsyncChange = rb_todosAsyncChange
  end
  object combo_operacao: TIWComboBox [7]
    Left = 48
    Top = 187
    Width = 121
    Height = 21
    Css = 'form-control input-sm'
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
    OnAsyncChange = combo_operacaoAsyncChange
    TabOrder = 6
    ItemIndex = 0
    Items.Strings = (
      '1 - Or'#231'amento=1'
      '2 - Pr'#233'-Nota=2'
      '3 - Transfer'#234'ncia=3'
      '4 - Ordem de Servi'#231'os=4')
    FriendlyName = 'combo_operacao'
    NoSelectionText = '-- No Selection --'
  end
  object combo_empresas: TIWDBLookupComboBox [8]
    Left = 48
    Top = 224
    Width = 121
    Height = 21
    Css = 'form-control input-sm'
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
    OnAsyncChange = combo_empresasAsyncChange
    TabOrder = 7
    AutoEditable = False
    FriendlyName = 'combo_empresas'
    KeyField = 'COD_EMPRESA'
    ListField = 'EMPRESA'
    ListSource = ds_empresas
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object edit_cliente: TIWEdit [9]
    Left = 184
    Top = 187
    Width = 105
    Height = 21
    Css = 'form-control input-sm'
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
    FriendlyName = 'edit_cliente'
    SubmitOnAsyncEvent = True
    TabOrder = 8
    Enabled = False
  end
  object combo_vendedor: TIWDBLookupComboBox [10]
    Left = 175
    Top = 224
    Width = 121
    Height = 21
    Css = 'form-control input-sm'
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
    TabOrder = 9
    AutoEditable = False
    FriendlyName = 'combo_empresas'
    KeyField = 'LOGIN'
    ListField = 'NOME'
    ListSource = ds_vendedor
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object BTN_CLIENTE: TIWButton [11]
    Left = 368
    Top = 21
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
    Caption = '...'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_CLIENTE'
    TabOrder = 10
    OnAsyncClick = BTN_CLIENTEAsyncClick
  end
  object edit_desc_valor: TIWEdit [12]
    Left = 368
    Top = 83
    Width = 105
    Height = 21
    Css = 'form-control input-sm'
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
    FriendlyName = 'edit_cliente'
    SubmitOnAsyncEvent = True
    TabOrder = 11
    DataType = stNumber
    DataTypeOptions.NumberType = ntCurrency
  end
  object edit_desc_perc: TIWEdit [13]
    Left = 368
    Top = 110
    Width = 105
    Height = 21
    Css = 'form-control input-sm'
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
    FriendlyName = 'edit_cliente'
    SubmitOnAsyncEvent = True
    TabOrder = 12
    Enabled = False
    DataType = stNumber
    DataTypeOptions.NumberType = ntInteger
  end
  object btn_canc_esc: TIWButton [14]
    Left = 368
    Top = 137
    Width = 81
    Height = 28
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
    FriendlyName = 'BTN_CLIENTE'
    TabOrder = 13
    OnAsyncClick = btn_canc_escAsyncClick
  end
  object btn_conf_esc: TIWButton [15]
    Left = 368
    Top = 171
    Width = 81
    Height = 28
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
    Caption = 'Fechar'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_CLIENTE'
    TabOrder = 14
    OnAsyncClick = btn_conf_escAsyncClick
  end
  object edit_total: TIWEdit [16]
    Left = 479
    Top = 110
    Width = 105
    Height = 21
    Css = 'form-control input-sm'
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
    FriendlyName = 'edit_cliente'
    SubmitOnAsyncEvent = True
    TabOrder = 15
    Enabled = False
    Text = '0'
  end
  object edit_qtde_to_esc: TIWEdit [17]
    Left = 479
    Top = 137
    Width = 105
    Height = 21
    OnHTMLTag = edit_qtde_to_escHTMLTag
    Css = 'form-control input-sm'
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
    FriendlyName = 'edit_qtde_to_esc'
    SubmitOnAsyncEvent = True
    TabOrder = 16
    DataType = stNumber
    DataTypeOptions.NumberType = ntCurrency
  end
  object BTN_CONFI_ESCO: TIWButton [18]
    Left = 479
    Top = 171
    Width = 81
    Height = 28
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
    Caption = 'Confirmar'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_CLIENTE'
    TabOrder = 17
    OnAsyncClick = BTN_CONFI_ESCOAsyncClick
  end
  object combo_tipo_desconto: TIWComboBox [19]
    Left = 368
    Top = 224
    Width = 121
    Height = 21
    Css = 'form-control input-sm'
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
    TabOrder = 18
    ItemIndex = 0
    Items.Strings = (
      '1 - Valor=1'
      '2 - Percentual=2'
      ' ')
    FriendlyName = 'combo_operacao'
    NoSelectionText = '-- No Selection --'
  end
  object BTN_APLICAR_DESC: TIWButton [20]
    Left = 566
    Top = 171
    Width = 155
    Height = 28
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
    Caption = 'Aplicar Desc'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_CLIENTE'
    TabOrder = 19
    OnAsyncClick = BTN_APLICAR_DESCAsyncClick
  end
  object edit_desc_un: TIWEdit [21]
    Left = 479
    Top = 83
    Width = 105
    Height = 21
    OnHTMLTag = edit_desc_unHTMLTag
    Css = 'form-control input-sm'
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
    FriendlyName = 'edit_cliente'
    SubmitOnAsyncEvent = True
    TabOrder = 20
    DataType = stNumber
    DataTypeOptions.NumberType = ntCurrency
  end
  object BTN_APLY_DESC_UN: TIWButton [22]
    Left = 566
    Top = 205
    Width = 155
    Height = 28
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
    Caption = 'Aplicar Desc UN'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_CLIENTE'
    TabOrder = 21
    OnAsyncClick = BTN_APLY_DESC_UNAsyncClick
  end
  object combo_tipo_desc_un: TIWComboBox [23]
    Left = 368
    Top = 251
    Width = 121
    Height = 21
    Css = 'form-control input-sm'
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
    TabOrder = 22
    ItemIndex = 0
    Items.Strings = (
      '1 - Valor=1'
      '2 - Percentual=2'
      ' ')
    FriendlyName = 'combo_operacao'
    NoSelectionText = '-- No Selection --'
  end
  object BTN_CONFIRMAR_VENDA: TIWButton [24]
    Left = 566
    Top = 239
    Width = 155
    Height = 28
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
    Caption = 'BTN_CONFIRMAR_VENDA'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_CLIENTE'
    TabOrder = 23
    OnAsyncClick = BTN_CONFIRMAR_VENDAAsyncClick
  end
  object vendedor: TIWLabel [25]
    Left = 352
    Top = 328
    Width = 58
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
    FriendlyName = 'vendedor'
    Caption = 'vendedor'
  end
  object cliente: TIWLabel [26]
    Left = 352
    Top = 344
    Width = 40
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
    FriendlyName = 'vendedor'
    Caption = 'cliente'
  end
  object combo_formas_pgto: TIWComboBox [27]
    Left = 439
    Top = 399
    Width = 121
    Height = 21
    Css = 'form-control input-sm'
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
    TabOrder = 24
    ItemIndex = 0
    Items.Strings = (
      '1- '#192' vista=1'
      '2- Cart'#227'o=2'
      '3- A Prazo=3'
      '4- Cheque=4')
    FriendlyName = 'combo_operacao'
    NoSelectionText = '-- No Selection --'
  end
  object memo_pgto: TIWListbox [28]
    Left = 439
    Top = 301
    Width = 121
    Height = 92
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
    TabOrder = 25
    FriendlyName = 'memo_pgto'
    NoSelectionText = '-- No Selection --'
  end
  object BTN_ADD_PGTO: TIWButton [29]
    Left = 566
    Top = 301
    Width = 81
    Height = 28
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
    Caption = 'BTN_ADD_PGTO'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_CLIENTE'
    TabOrder = 26
    OnAsyncClick = BTN_ADD_PGTOAsyncClick
  end
  object BTN_DEL_PGTO: TIWButton [30]
    Left = 566
    Top = 328
    Width = 81
    Height = 28
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
    Caption = 'BTN_DEL_PGTO'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_CLIENTE'
    TabOrder = 27
    OnAsyncClick = BTN_DEL_PGTOAsyncClick
  end
  object edit_valor_pgto: TIWEdit [31]
    Left = 566
    Top = 362
    Width = 105
    Height = 21
    Css = 'form-control input-sm'
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
    FriendlyName = 'edit_cliente'
    SubmitOnAsyncEvent = True
    TabOrder = 28
    DataType = stNumber
    DataTypeOptions.NumberType = ntCurrency
  end
  object memo_obs_pgto: TIWMemo [32]
    Left = 439
    Top = 440
    Width = 121
    Height = 57
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
    BGColor = clNone
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    TabOrder = 29
    SubmitOnAsyncEvent = True
    FriendlyName = 'memo_obs_pgto'
  end
  object SALDO_PGTO: TIWLabel [33]
    Left = 352
    Top = 366
    Width = 85
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
    FriendlyName = 'vendedor'
    Caption = 'SALDO_PGTO'
  end
  object TOTAL_PGTO: TIWLabel [34]
    Left = 344
    Top = 388
    Width = 62
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
    FriendlyName = 'vendedor'
    Caption = 'total_pgto'
  end
  object BTN_IMP_VENDA_SIM: TIWButton [35]
    Left = 503
    Top = 21
    Width = 144
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
    Caption = 'IMPRIMIR_VENDA_SIM'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_CLIENTE'
    TabOrder = 30
    OnAsyncClick = BTN_IMP_VENDA_SIMAsyncClick
  end
  object BTN_IMP_VENDA_NAO: TIWButton [36]
    Left = 503
    Top = 47
    Width = 144
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
    Caption = 'IMPRIMIR_VENDA_NAO'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_CLIENTE'
    TabOrder = 31
  end
  object combo_filtro_op: TIWComboBox [37]
    Left = 439
    Top = 515
    Width = 121
    Height = 21
    Css = 'form-control input-sm'
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
    OnAsyncChange = combo_filtro_opAsyncChange
    TabOrder = 32
    ItemIndex = 0
    Items.Strings = (
      '1 - Or'#231'amento=1'
      '2 - Pr'#233'-Nota=2'
      '3 - Transfer'#234'ncia=3'
      '4 - Ordem de Servi'#231'o=4'
      '5 - Todas=5')
    FriendlyName = 'combo_operacao'
    NoSelectionText = '-- No Selection --'
  end
  object combo_filtro_status: TIWComboBox [38]
    Left = 439
    Top = 542
    Width = 121
    Height = 21
    Css = 'form-control input-sm'
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
    OnAsyncChange = combo_filtro_opAsyncChange
    TabOrder = 33
    ItemIndex = 0
    Items.Strings = (
      '0 - Ativo=0'
      '1 - Faturado=1'
      '2 - Cancelado=2'
      'T - Todos=T')
    FriendlyName = 'combo_operacao'
    NoSelectionText = '-- No Selection --'
  end
  object id_edicao: TIWLabel [39]
    Left = 344
    Top = 410
    Width = 89
    Height = 16
    Hint = '0'
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
    FriendlyName = 'vendedor'
    Caption = 'Venda Normal'
  end
  object edit_cod_mo: TIWEdit [40]
    Left = 439
    Top = 569
    Width = 105
    Height = 21
    Css = 'form-control input-sm'
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
    FriendlyName = 'edit_cliente'
    SubmitOnAsyncEvent = True
    TabOrder = 34
  end
  object edit_descricao_mo: TIWEdit [41]
    Left = 439
    Top = 596
    Width = 105
    Height = 21
    Css = 'form-control input-sm'
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
    FriendlyName = 'edit_cliente'
    SubmitOnAsyncEvent = True
    TabOrder = 35
  end
  object edit_valor_mo: TIWEdit [42]
    Left = 439
    Top = 623
    Width = 105
    Height = 21
    Css = 'form-control input-sm'
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
    FriendlyName = 'edit_cliente'
    SubmitOnAsyncEvent = True
    TabOrder = 36
    DataType = stNumber
    DataTypeOptions.NumberType = ntCurrency
  end
  object combo_agente_serv: TIWDBLookupComboBox [43]
    Left = 550
    Top = 569
    Width = 121
    Height = 21
    Css = 'form-control input-sm'
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
    TabOrder = 37
    AutoEditable = False
    FriendlyName = 'combo_empresas'
    KeyField = 'LOGIN'
    ListField = 'NOME'
    ListSource = ds_agente
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object memo_obs_serv: TIWMemo [44]
    Left = 550
    Top = 596
    Width = 203
    Height = 70
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
    BGColor = clNone
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    TabOrder = 38
    SubmitOnAsyncEvent = True
    FriendlyName = 'memo_obs_serv'
  end
  object edit_total_serv: TIWEdit [45]
    Left = 328
    Top = 623
    Width = 105
    Height = 21
    Css = 'form-control input-sm'
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
    FriendlyName = 'edit_cliente'
    SubmitOnAsyncEvent = True
    TabOrder = 39
    Enabled = False
    Text = '0'
    DataTypeOptions.NumberType = ntCurrency
  end
  object edit_total_geral: TIWEdit [46]
    Left = 328
    Top = 650
    Width = 105
    Height = 21
    Css = 'form-control input-sm'
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
    FriendlyName = 'edit_cliente'
    SubmitOnAsyncEvent = True
    TabOrder = 40
    Enabled = False
    Text = '0'
    DataTypeOptions.NumberType = ntCurrency
  end
  object BTNOKSERV: TIWButton [47]
    Left = 215
    Top = 623
    Width = 81
    Height = 28
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
    Caption = 'BTNOKSERV'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_CLIENTE'
    TabOrder = 41
    OnAsyncClick = BTNOKSERVAsyncClick
  end
  object BTN_SHOW_SERV: TIWButton [48]
    Left = 215
    Top = 650
    Width = 81
    Height = 28
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
    Caption = 'BTNSHOWSERV'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_CLIENTE'
    TabOrder = 42
    OnAsyncClick = BTN_SHOW_SERVAsyncClick
  end
  inherited IWTemplateProcessorHTML1: TIWTemplateProcessorHTML
    Left = 744
    Top = 488
  end
  object q_datatable: TFDQuery
    Connection = DM.banco
    Left = 800
    Top = 96
  end
  object q_geral: TFDQuery
    Connection = DM.banco
    Left = 800
    Top = 152
  end
  object q_aux: TFDQuery
    Connection = DM.banco
    Left = 800
    Top = 208
  end
  object q_empresas: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select cod_empresa, cod_empresa||nome as empresa from empresas '
      ' where cod_empresa <> :cod_empresa')
    Left = 56
    Top = 280
    ParamData = <
      item
        Name = 'COD_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object q_empresasCOD_EMPRESA: TFMTBCDField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object q_empresasEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Size = 240
    end
  end
  object ds_empresas: TDataSource
    DataSet = q_empresas
    Left = 56
    Top = 344
  end
  object q_vendedor: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'SELECT NOME,login'
      '  FROM USUARIOS'
      ' WHERE COD_FUNCAO = (SELECT VALOR'
      '                       FROM PARAMETROS_GERAIS'
      '                      WHERE ID = 1'
      '                        AND COD_EMPRESA = :COD_EMPRESA)'
      '   AND COD_EMPRESA = :COD_EMPRESA')
    Left = 168
    Top = 288
    ParamData = <
      item
        Name = 'COD_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object q_vendedorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object q_vendedorLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
  end
  object ds_vendedor: TDataSource
    DataSet = q_vendedor
    Left = 168
    Top = 352
  end
  object q_desc: TFDQuery
    Connection = DM.banco
    Left = 800
    Top = 272
  end
  object q_disponivel: TFDQuery
    Connection = DM.banco
    Left = 800
    Top = 328
  end
  object r_vendas: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44461.072993472200000000
    ReportOptions.LastChange = 44553.586276643520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 128
    Top = 504
    Datasets = <
      item
        DataSet = dv_pgto
        DataSetName = 'fomas_pgto'
      end
      item
        DataSet = db_vi
        DataSetName = 'vendas_itens'
      end>
    Variables = <
      item
        Name = ' Variaveis locais'
        Value = Null
      end
      item
        Name = 'doc_emissao'
        Value = #39'Em branco'#39
      end
      item
        Name = 'doc_id'
        Value = #39'Em branco'#39
      end
      item
        Name = 'empresa'
        Value = #39'Em Branco'#39
      end
      item
        Name = 'tipo'
        Value = #39'Em branco'#39
      end
      item
        Name = 'emp_endereco'
        Value = #39'Em branco'#39
      end
      item
        Name = 'emp_bairro'
        Value = #39'Em branco'#39
      end
      item
        Name = 'emp_cidade'
        Value = #39'Em branco'#39
      end
      item
        Name = 'emp_uf'
        Value = #39'Em branco'#39
      end
      item
        Name = 'emp_vendedor'
        Value = #39'Em branco'#39
      end
      item
        Name = 'emp_cnpj'
        Value = #39'Em branco'#39
      end
      item
        Name = 'cli_nome'
        Value = #39'Em branco'#39
      end
      item
        Name = 'cli_endereco'
        Value = #39'Em branco'#39
      end
      item
        Name = 'cli_bairro'
        Value = #39'Em branco'#39
      end
      item
        Name = 'cli_fone'
        Value = #39'Em branco'#39
      end
      item
        Name = 'cli_cpf'
        Value = #39'Em branco'#39
      end
      item
        Name = 'cli_cidade'
        Value = #39'Em branco'#39
      end
      item
        Name = 'cli_email'
        Value = #39'Em branco'#39
      end
      item
        Name = 'cli_uf'
        Value = #39'Em branco'#39
      end
      item
        Name = 'cli_cep'
        Value = #39'Em branco'#39
      end
      item
        Name = 'doc_total'
        Value = #39'Em branco'#39
      end
      item
        Name = 'cod_serv'
        Value = #39'Em branco'#39
      end
      item
        Name = 'descricao_serv'
        Value = #39'Em branco'#39
      end
      item
        Name = 'valor_serv'
        Value = #39'Em branco'#39
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      HGuides.Strings = (
        '57,44094')
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 155.637910000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[tipo]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 22.118120000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Empresa:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = 44.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 44.866110000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 44.866110000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 66.322820000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 2.559060000000000000
          Top = 3.322820000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Emissao:')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 0.220470000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#250'mero:')
          ParentFont = False
        end
        object Time: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 653.858690000000000000
          Top = 0.220470000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[doc_id]')
          ParentFont = False
        end
        object TotalPages: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 657.638220000000000000
          Top = 25.897650000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[TotalPages#]')
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 612.283860000000000000
          Top = 25.897650000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 25.897650000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'de')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 25.897650000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#225'gina')
          ParentFont = False
        end
        object numero_nota: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 63.472480000000000000
          Top = 44.866110000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[emp_endereco]')
          ParentFont = False
        end
        object serie: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 430.645950000000000000
          Top = 44.322820000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[emp_bairro]')
          ParentFont = False
        end
        object responsavel: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 608.504330000000000000
          Top = 66.322820000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[emp_vendedor]')
          ParentFont = False
        end
        object empresa: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 23.118120000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[empresa]')
          ParentFont = False
        end
        object fornecedor: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 583.827150000000000000
          Top = 45.425170000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[emp_cidade]')
          ParentFont = False
        end
        object Date1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 3.543290000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[doc_emissao]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 65.763760000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 31.015770000000000000
          Top = 64.763760000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[emp_uf]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 92.724490000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 714.331170000000000000
          Top = 88.252010000000000000
          Width = -714.331170000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 25.897650000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 25.897650000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[emp_cnpj]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 272.126160000000000000
          Top = 92.724490000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Top = 111.181200000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Top = 113.063080000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Top = 131.181200000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 131.181200000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = -94.488250000000000000
          Top = 136.181200000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 93.606370000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fone:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 47.133890000000000000
          Top = 92.724490000000000000
          Width = 209.874150000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[cli_nome]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 61.252010000000000000
          Top = 111.181200000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[cli_endereco]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 336.157700000000000000
          Top = 92.165430000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[cli_cpf]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 113.063080000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[cli_bairro]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 130.181200000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[cli_cidade]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 264.567100000000000000
          Top = 131.960730000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[cli_uf]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 348.716760000000000000
          Top = 130.960730000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[cli_cep]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 93.606370000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[cli_fone]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Top = 132.960730000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Email:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 132.960730000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[cli_email]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 710.551640000000000000
          Top = 22.000000000000000000
          Width = -714.331170000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 710.551640000000000000
          Top = 1.322820000000000000
          Width = -714.331170000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Top = 132.283550000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        DataSet = db_vi
        DataSetName = 'vendas_itens'
        RowCount = 0
        object TableObject1: TfrxTableObject
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = -1.779530000000000000
          object TableColumn14: TfrxTableColumn
            Width = 116.683997619048000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn15: TfrxTableColumn
            Width = 204.683997619048000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn16: TfrxTableColumn
            Width = 54.683997619048300000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn17: TfrxTableColumn
            Width = 51.683997619048300000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn18: TfrxTableColumn
            Width = 65.683997619048300000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn19: TfrxTableColumn
            Width = 59.683997619048300000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn20: TfrxTableColumn
            Width = 158.849324285714000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow1: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell13: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'COD_PRODUTO'
              DataSet = db_vi
              DataSetName = 'vendas_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[vendas_itens."COD_PRODUTO"]')
              ParentFont = False
            end
            object TableCell14: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'DESCRICAO'
              DataSet = db_vi
              DataSetName = 'vendas_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[vendas_itens."DESCRICAO"]')
              ParentFont = False
            end
            object TableCell15: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'PRECO_UNITARIO'
              DataSet = db_vi
              DataSetName = 'vendas_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '[vendas_itens."PRECO_UNITARIO"]')
              ParentFont = False
            end
            object TableCell16: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'QTDE'
              DataSet = db_vi
              DataSetName = 'vendas_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '[vendas_itens."QTDE"]')
              ParentFont = False
            end
            object TableCell17: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'DESC_PERC'
              DataSet = db_vi
              DataSetName = 'vendas_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '[vendas_itens."DESC_PERC"]')
              ParentFont = False
            end
            object TableCell18: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'DESC_VALOR'
              DataSet = db_vi
              DataSetName = 'vendas_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '[vendas_itens."DESC_VALOR"]')
              ParentFont = False
            end
            object TableCell19: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'VALOR_TOTAL'
              DataSet = db_vi
              DataSetName = 'vendas_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '[vendas_itens."VALOR_TOTAL"]')
              ParentFont = False
            end
          end
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 20.897650000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        object TableObject2: TfrxTableObject
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = 2.000000000000000000
          object TableColumn7: TfrxTableColumn
            Width = 116.683997619048000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn8: TfrxTableColumn
            Width = 204.683997619048000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn9: TfrxTableColumn
            Width = 54.683997619048300000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn10: TfrxTableColumn
            Width = 51.683997619048300000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn11: TfrxTableColumn
            Width = 65.683997619048300000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn12: TfrxTableColumn
            Width = 59.683997619048300000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn13: TfrxTableColumn
            Width = 158.849324285714000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow2: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell6: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_vi
              DataSetName = 'vendas_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                'C'#243'd Item')
              ParentFont = False
            end
            object TableCell7: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_vi
              DataSetName = 'vendas_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                'Descri'#231#227'o')
              ParentFont = False
            end
            object TableCell8: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_vi
              DataSetName = 'vendas_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                'P. UN.')
              ParentFont = False
            end
            object TableCell9: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_vi
              DataSetName = 'vendas_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                'Qtde.')
              ParentFont = False
            end
            object TableCell10: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_vi
              DataSetName = 'vendas_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '% Desc.')
              ParentFont = False
            end
            object TableCell11: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_vi
              DataSetName = 'vendas_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                'V. Desc.')
              ParentFont = False
            end
            object TableCell12: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                'Total R$')
              ParentFont = False
            end
          end
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 321.260050000000000000
        Width = 718.110700000000000000
        object TableObject3: TfrxTableObject
          AllowVectorExport = True
          Left = 465.102660000000000000
          Top = 2.000000000000000000
          object TableColumn21: TfrxTableColumn
            Width = 93.581647619048000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn22: TfrxTableColumn
            Width = 156.581647619048000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow3: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell20: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_vi
              DataSetName = 'vendas_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                'Forma de PGTO')
              ParentFont = False
            end
            object TableCell21: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_vi
              DataSetName = 'vendas_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                'Valor R$')
              ParentFont = False
            end
          end
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        DataSet = dv_pgto
        DataSetName = 'fomas_pgto'
        RowCount = 0
        object TableObject4: TfrxTableObject
          AllowVectorExport = True
          Left = 465.102660000000000000
          object TableColumn23: TfrxTableColumn
            Width = 93.581647619048000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn24: TfrxTableColumn
            Width = 156.581647619048000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow4: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell22: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'PGTO'
              DataSet = dv_pgto
              DataSetName = 'fomas_pgto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[fomas_pgto."PGTO"]')
              ParentFont = False
            end
            object TableCell23: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'VALOR'
              DataSet = dv_pgto
              DataSetName = 'fomas_pgto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                '[fomas_pgto."VALOR"]')
              ParentFont = False
            end
          end
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 124.724490000000000000
        Top = 408.189240000000000000
        Width = 718.110700000000000000
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 467.661720000000000000
          Top = 103.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 562.149970000000000000
          Top = 103.795300000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[doc_total]')
          ParentFont = False
        end
        object TableObject5: TfrxTableObject
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = 2.000000000000000000
          object TableColumn25: TfrxTableColumn
            Width = 116.683997619048000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn26: TfrxTableColumn
            Width = 439.683997619048000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn27: TfrxTableColumn
            Width = 156.683997619048000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow5: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell24: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_vi
              DataSetName = 'vendas_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                'C'#243'd Serv.')
              ParentFont = False
            end
            object TableCell25: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_vi
              DataSetName = 'vendas_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                'Descri'#231#227'o')
              ParentFont = False
            end
            object TableCell26: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_vi
              DataSetName = 'vendas_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                'Valor R$')
              ParentFont = False
            end
          end
        end
        object TableObject6: TfrxTableObject
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = 20.456710000000000000
          object TableColumn28: TfrxTableColumn
            Width = 116.683997619048000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn29: TfrxTableColumn
            Width = 439.683997619048000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn30: TfrxTableColumn
            Width = 156.683997619048000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow6: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell27: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_vi
              DataSetName = 'vendas_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[cod_serv]')
              ParentFont = False
            end
            object TableCell28: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_vi
              DataSetName = 'vendas_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[descricao_serv]')
              ParentFont = False
            end
            object TableCell29: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_vi
              DataSetName = 'vendas_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                '[valor_serv]')
              ParentFont = False
            end
          end
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 4.338590000000000000
          Top = 41.574830000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Observa'#231#245'es:')
          ParentFont = False
        end
        object TableObject7: TfrxTableObject
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = 58.252010000000000000
          object TableColumn31: TfrxTableColumn
            Width = 713.849737619048000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow7: TfrxTableRow
            Height = 42.897650000000000000
            object TableCell30: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_vi
              DataSetName = 'vendas_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[obs_serv]')
              ParentFont = False
            end
          end
        end
      end
    end
  end
  object pdf_exp: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 128
    Top = 440
  end
  object db_vi: TfrxDBDataset
    UserName = 'vendas_itens'
    CloseDataSource = False
    DataSet = q_vi
    BCDToCurrency = False
    Left = 48
    Top = 440
  end
  object modal_vendas: TIWModalWindow
    Left = 48
    Top = 504
  end
  object q_cli: TFDQuery
    Connection = DM.banco
    Left = 800
    Top = 384
  end
  object q_vendas: TFDQuery
    Connection = DM.banco
    Left = 800
    Top = 440
  end
  object q_emp: TFDQuery
    Connection = DM.banco
    Left = 848
    Top = 440
  end
  object q_vi: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select vi.cod_produto,'
      '       i.descricao,'
      '       f.descricao as fornecedor,'
      '       vi.preco_unitario,'
      '       vi.qtde,'
      '       vi.desc_valor,'
      '       vi.desc_perc,'
      '       vi.valor_total'
      '  from vendas_itens vi, fornecedor_estoque f, itens i'
      ' where vi.cod_fornecedor = f.cod_fornecedor'
      '   and vi.cod_produto = i.cod_item'
      '   and vi.cod_fornecedor = i.cod_fornecedor'
      '   and vi.controle = :id'
      '   and vi.cod_empresa = :cod_empresa')
    Left = 720
    Top = 424
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COD_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object q_viCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
      Size = 24
    end
    object q_viDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object q_viFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Required = True
      Size = 150
    end
    object q_viPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      Origin = 'PRECO_UNITARIO'
      Precision = 38
      Size = 2
    end
    object q_viQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 38
      Size = 2
    end
    object q_viDESC_VALOR: TFMTBCDField
      FieldName = 'DESC_VALOR'
      Origin = 'DESC_VALOR'
      Precision = 38
      Size = 2
    end
    object q_viDESC_PERC: TFMTBCDField
      FieldName = 'DESC_PERC'
      Origin = 'DESC_PERC'
      Precision = 38
      Size = 2
    end
    object q_viVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      Precision = 38
      Size = 2
    end
  end
  object q_pgto: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select case'
      '         when cod_pgto = 1 then'
      '          '#39'A Vista'#39
      '         when cod_pgto = 2 then'
      '          '#39'Cartao'#39
      '         when cod_pgto = 3 then'
      '          '#39'A prazo'#39
      '         when cod_pgto = 4 then'
      '          '#39'Cheque'#39
      '       end PGTO,'
      '       valor'
      '  from vendas_pgto'
      '  where controle_venda= :controle_venda'
      '  and cod_empresa= :cod_empresa')
    Left = 848
    Top = 488
    ParamData = <
      item
        Name = 'CONTROLE_VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COD_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object q_pgtoPGTO: TStringField
      FieldName = 'PGTO'
      Origin = 'PGTO'
      Size = 7
    end
    object q_pgtoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 38
      Size = 2
    end
  end
  object dv_pgto: TfrxDBDataset
    UserName = 'fomas_pgto'
    CloseDataSource = False
    DataSet = q_pgto
    BCDToCurrency = False
    Left = 192
    Top = 440
  end
  object q_insert: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select case'
      '         when cod_pgto = 1 then'
      '          '#39'A Vista'#39
      '         when cod_pgto = 2 then'
      '          '#39'Cartao'#39
      '         when cod_pgto = 3 then'
      '          '#39'A prazo'#39
      '         when cod_pgto = 4 then'
      '          '#39'Cheque'#39
      '       end PGTO,'
      '       valor'
      '  from vendas_pgto'
      '  where controle_venda= :controle_venda'
      '  and cod_empresa= :cod_empresa')
    Left = 848
    Top = 544
    ParamData = <
      item
        Name = 'CONTROLE_VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COD_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object StringField1: TStringField
      FieldName = 'PGTO'
      Origin = 'PGTO'
      Size = 7
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 38
      Size = 2
    end
  end
  object q_agente: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select LOGIN, NOME'
      '  from usuarios u'
      ' where u.cod_empresa = :cod_empresa'
      '   and u.cod_funcao ='
      '       (select valor from parametros_gerais pg where pg.id = 3)')
    Left = 280
    Top = 552
    ParamData = <
      item
        Name = 'COD_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object q_agenteLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Required = True
      Size = 10
    end
    object q_agenteNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object ds_agente: TDataSource
    DataSet = q_agente
    Left = 224
    Top = 552
  end
end
