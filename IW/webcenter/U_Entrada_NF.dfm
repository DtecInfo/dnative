inherited FormEntrada_Nf: TFormEntrada_Nf
  Width = 1041
  Height = 822
  OnCreate = IWAppFormCreate
  OnDestroy = IWAppFormDestroy
  OnShow = IWAppFormShow
  ExplicitWidth = 1041
  ExplicitHeight = 822
  DesignLeft = 2
  DesignTop = 2
  inherited BTN_TROCAR_SENHA: TIWButton
    TabOrder = 4
  end
  object edit_numero: TIWEdit [4]
    Left = 256
    Top = 21
    Width = 73
    Height = 20
    Hint = 'edit_numero'
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 3
    DataType = stNumber
  end
  object edit_serie: TIWEdit [5]
    Left = 256
    Top = 47
    Width = 73
    Height = 20
    Hint = 'edit_serie'
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 5
  end
  object edit_emissao: TIWEdit [6]
    Left = 256
    Top = 73
    Width = 73
    Height = 20
    Hint = 'edit_emissao'
    OnHTMLTag = edit_emissaoHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 6
    DataType = stDate
  end
  object edit_fornecedor: TIWEdit [7]
    Left = 256
    Top = 99
    Width = 73
    Height = 20
    Hint = 'edit_fornecedor'
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 7
    Enabled = False
  end
  object edit_chave_nfe: TIWEdit [8]
    Left = 256
    Top = 125
    Width = 73
    Height = 20
    Hint = 'edit_chave_nfe'
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
    FriendlyName = 'edit_numero'
    MaxLength = 44
    SubmitOnAsyncEvent = True
    TabOrder = 8
  end
  object btn_fornecedor: TIWButton [9]
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
    FriendlyName = 'btn_fornecedor'
    TabOrder = 9
    OnAsyncClick = btn_fornecedorAsyncClick
  end
  object edit_bc_icms: TIWEdit [10]
    Left = 256
    Top = 151
    Width = 73
    Height = 20
    Hint = 'edit_bc_icms'
    OnHTMLTag = edit_bc_icmsHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 10
    DataType = stNumber
  end
  object edit_valor_icms: TIWEdit [11]
    Left = 256
    Top = 177
    Width = 73
    Height = 20
    Hint = 'edit_valor_icms'
    OnHTMLTag = edit_valor_icmsHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 11
    DataType = stNumber
  end
  object edit_outras: TIWEdit [12]
    Left = 256
    Top = 203
    Width = 73
    Height = 20
    Hint = 'edit_outras'
    OnHTMLTag = edit_outrasHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 12
    OnAsyncExit = edit_outrasAsyncExit
    DataType = stNumber
  end
  object edit_valor_icms_st: TIWEdit [13]
    Left = 256
    Top = 229
    Width = 73
    Height = 20
    Hint = 'edit_valor_icms_st'
    OnHTMLTag = edit_valor_icms_stHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 13
    OnAsyncExit = edit_valor_icms_stAsyncExit
    DataType = stNumber
  end
  object edit_total_produtos: TIWEdit [14]
    Left = 256
    Top = 255
    Width = 73
    Height = 20
    Hint = 'edit_total_produtos'
    OnHTMLTag = edit_total_produtosHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 14
    OnAsyncExit = edit_total_produtosAsyncExit
    DataType = stNumber
  end
  object edit_valor_frete: TIWEdit [15]
    Left = 256
    Top = 281
    Width = 73
    Height = 20
    Hint = 'edit_valor_frete'
    OnHTMLTag = edit_valor_freteHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 15
    OnAsyncExit = edit_valor_freteAsyncExit
    DataType = stNumber
  end
  object edit_valor_seguro: TIWEdit [16]
    Left = 256
    Top = 307
    Width = 73
    Height = 20
    Hint = 'edit_valor_seguro'
    OnHTMLTag = edit_valor_seguroHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 16
    OnAsyncExit = edit_valor_seguroAsyncExit
    DataType = stNumber
    DataTypeOptions.FloatDP = 2
  end
  object edit_Aliq_icms_st_item: TIWEdit [17]
    Left = 608
    Top = 21
    Width = 73
    Height = 20
    Hint = 'edit_aliq_icms_st_item'
    OnHTMLTag = edit_Aliq_icms_st_itemHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 17
    OnAsyncKeyPress = edit_Aliq_icms_st_itemAsyncKeyPress
    DataType = stNumber
  end
  object edit_desconto: TIWEdit [18]
    Left = 256
    Top = 359
    Width = 73
    Height = 20
    Hint = 'edit_desconto'
    OnHTMLTag = edit_descontoHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 18
    OnAsyncExit = edit_descontoAsyncExit
    DataType = stNumber
  end
  object btn_valor_ipi: TIWEdit [19]
    Left = 256
    Top = 385
    Width = 73
    Height = 20
    Hint = 'btn_valor_ipi'
    OnHTMLTag = btn_valor_ipiHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 19
    OnSubmit = BTN_REFRESHClick
    OnAsyncExit = btn_valor_ipiAsyncExit
    DataType = stNumber
  end
  object edit_conhecimento: TIWEdit [20]
    Left = 256
    Top = 411
    Width = 73
    Height = 20
    Hint = 'edit_conhecimento'
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 20
    DataType = stNumber
  end
  object edit_serie_conhecimento: TIWEdit [21]
    Left = 256
    Top = 437
    Width = 73
    Height = 20
    Hint = 'edit_serie_conhecimento'
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 21
  end
  object edit_total_conhecimento: TIWEdit [22]
    Left = 256
    Top = 463
    Width = 73
    Height = 20
    Hint = 'edit_total_conhecimento'
    OnHTMLTag = edit_total_conhecimentoHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 22
    DataType = stNumber
  end
  object edit_bc_st: TIWEdit [23]
    Left = 335
    Top = 151
    Width = 73
    Height = 20
    Hint = 'edit_bc_st'
    OnHTMLTag = edit_bc_stHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 23
    DataType = stNumber
  end
  object edit_perc_desc: TIWEdit [24]
    Left = 256
    Top = 489
    Width = 73
    Height = 20
    Hint = 'edit_perc_desc'
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 24
    OnAsyncExit = edit_perc_descAsyncExit
    Enabled = False
    DataType = stNumber
  end
  object edit_total_nf: TIWEdit [25]
    Left = 256
    Top = 515
    Width = 73
    Height = 20
    Hint = 'edit_total_nf'
    OnHTMLTag = edit_total_nfHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 25
    Enabled = False
  end
  object edit_nome_fornecedor: TIWEdit [26]
    Left = 335
    Top = 99
    Width = 73
    Height = 20
    Hint = 'edit_nome_fornecedor'
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 26
    Enabled = False
  end
  object edit_uf_fornecedor: TIWEdit [27]
    Left = 335
    Top = 57
    Width = 73
    Height = 20
    Hint = 'edit_uf_fornecedor'
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 27
    Enabled = False
  end
  object BTN_LANCAR_ITEM: TIWButton [28]
    Left = 464
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
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btn_fornecedor'
    TabOrder = 28
    OnAsyncClick = btn_lancar_itemAsyncClick
  end
  object edit_base_icms_st_item: TIWEdit [29]
    Left = 608
    Top = 47
    Width = 73
    Height = 20
    Hint = 'edit_base_icms_st_item'
    OnHTMLTag = edit_base_icms_st_itemHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 29
    OnAsyncKeyPress = edit_base_icms_st_itemAsyncKeyPress
    DataType = stNumber
  end
  object edit_aliq_icms_item: TIWEdit [30]
    Left = 608
    Top = 73
    Width = 73
    Height = 20
    Hint = 'edit_aliq_icms_item'
    OnHTMLTag = edit_aliq_icms_itemHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 30
    OnAsyncExit = edit_aliq_icms_itemAsyncExit
    OnAsyncKeyPress = edit_aliq_icms_itemAsyncKeyPress
    DataType = stNumber
  end
  object edit_base_icms_item: TIWEdit [31]
    Left = 608
    Top = 99
    Width = 73
    Height = 20
    Hint = 'edit_base_icms_item'
    OnHTMLTag = edit_base_icms_itemHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 31
    OnAsyncExit = edit_base_icms_itemAsyncExit
    OnAsyncKeyPress = edit_base_icms_itemAsyncKeyPress
    DataType = stNumber
  end
  object IWEdit1: TIWEdit [32]
    Left = 608
    Top = 125
    Width = 73
    Height = 20
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 32
    DataType = stNumber
  end
  object edit_cod_produto: TIWEdit [33]
    Left = 608
    Top = 151
    Width = 73
    Height = 20
    Hint = 'edit_cod_produto'
    OnHTMLTag = edit_cod_produtoHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 33
    OnAsyncExit = edit_cod_produtoAsyncExit
    OnAsyncKeyPress = edit_cod_produtoAsyncKeyPress
  end
  object edit_qtde_itens: TIWEdit [34]
    Left = 608
    Top = 177
    Width = 73
    Height = 20
    Hint = 'edit_qtde_itens'
    OnHTMLTag = edit_qtde_itensHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 34
    OnAsyncExit = edit_qtde_itensAsyncExit
    OnAsyncKeyPress = edit_qtde_itensAsyncKeyPress
    DataType = stNumber
  end
  object edit_preco_unitario_item: TIWEdit [35]
    Left = 608
    Top = 203
    Width = 73
    Height = 20
    Hint = 'edit_preco_unitario_item'
    OnHTMLTag = edit_preco_unitario_itemHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 35
    OnAsyncExit = edit_preco_unitario_itemAsyncExit
    OnAsyncKeyPress = edit_preco_unitario_itemAsyncKeyPress
    DataType = stNumber
  end
  object edit_perc_desc_item: TIWEdit [36]
    Left = 608
    Top = 229
    Width = 73
    Height = 20
    Hint = 'edit_perc_desc_item'
    OnHTMLTag = edit_perc_desc_itemHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 36
    OnAsyncExit = edit_perc_desc_itemAsyncExit
    OnAsyncKeyPress = edit_perc_desc_itemAsyncKeyPress
    DataType = stNumber
  end
  object edit_valor_desc_item: TIWEdit [37]
    Left = 608
    Top = 255
    Width = 73
    Height = 20
    Hint = 'edit_valor_desc_item'
    OnHTMLTag = edit_valor_desc_itemHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 37
    OnAsyncExit = edit_valor_desc_itemAsyncExit
    OnAsyncKeyPress = edit_valor_desc_itemAsyncKeyPress
    DataType = stNumber
  end
  object btn_perc_ipi_item: TIWEdit [38]
    Left = 608
    Top = 281
    Width = 73
    Height = 20
    OnHTMLTag = btn_perc_ipi_itemHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 38
    OnAsyncExit = btn_perc_ipi_itemAsyncExit
    OnAsyncKeyPress = btn_perc_ipi_itemAsyncKeyPress
    DataType = stNumber
  end
  object edit_bc_ipi_item: TIWEdit [39]
    Left = 608
    Top = 307
    Width = 73
    Height = 20
    OnHTMLTag = edit_bc_ipi_itemHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 39
    DataType = stNumber
  end
  object edit_preco_liquido_item: TIWEdit [40]
    Left = 608
    Top = 333
    Width = 73
    Height = 20
    OnHTMLTag = edit_preco_liquido_itemHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 40
    Enabled = False
  end
  object edit_descricao_item: TIWEdit [41]
    Left = 608
    Top = 359
    Width = 73
    Height = 20
    OnHTMLTag = edit_descricao_itemHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 41
    Enabled = False
  end
  object edit_ncm_item: TIWEdit [42]
    Left = 608
    Top = 385
    Width = 73
    Height = 20
    OnHTMLTag = edit_ncm_itemHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 42
    Enabled = False
    DataType = stNumber
  end
  object edit_fornecedor_item: TIWDBLookupComboBox [43]
    Left = 608
    Top = 411
    Width = 73
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
    OnAsyncChange = edit_fornecedor_itemAsyncChange
    TabOrder = 43
    AutoEditable = False
    FriendlyName = 'edit_fornecedor_item'
    KeyField = 'COD_FORNECEDOR'
    ListField = 'DESCRICAO'
    ListSource = ds_q_busca_fornecedor
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object combo_cfop_item: TIWDBLookupComboBox [44]
    Left = 608
    Top = 438
    Width = 73
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
    TabOrder = 44
    AutoEditable = False
    DataSource = ds_q_naturezas
    FriendlyName = 'IWDBLookupComboBox1'
    KeyField = 'COD_NATUREZA'
    ListField = 'NATUREZA'
    ListSource = ds_q_naturezas
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object edit_valor_icms_item: TIWEdit [45]
    Left = 608
    Top = 475
    Width = 73
    Height = 20
    OnHTMLTag = edit_bc_ipi_itemHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 45
    Enabled = False
  end
  object edit_valor_icms_st_item: TIWEdit [46]
    Left = 608
    Top = 501
    Width = 73
    Height = 20
    OnHTMLTag = edit_bc_ipi_itemHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 46
    OnAsyncExit = edit_valor_icms_st_itemAsyncExit
    DataType = stNumber
  end
  object edit_md_cod_item: TIWEdit [47]
    Left = 728
    Top = 21
    Width = 73
    Height = 20
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 47
  end
  object edit_md_descricao: TIWEdit [48]
    Left = 728
    Top = 47
    Width = 73
    Height = 20
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 48
  end
  object combo_md_fornecedor: TIWDBLookupComboBox [49]
    Left = 728
    Top = 73
    Width = 73
    Height = 21
    Css = 'form-control'
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    TabOrder = 49
    AutoEditable = False
    FriendlyName = 'combo_md_fornecedor'
    KeyField = 'COD_FORNECEDOR'
    ListField = 'DESCRICAO'
    ListSource = ds_fornecedor_estoque
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object combo_md_marca_item: TIWDBLookupComboBox [50]
    Left = 728
    Top = 100
    Width = 73
    Height = 21
    Css = 'form-control'
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    TabOrder = 50
    AutoEditable = False
    FriendlyName = 'combo_md_fornecedor'
    KeyField = 'COD_MARCA'
    ListField = 'DESCRICAO'
    ListSource = ds_marcas
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object combo_md_grupo: TIWDBLookupComboBox [51]
    Left = 728
    Top = 127
    Width = 73
    Height = 21
    Css = 'form-control'
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    TabOrder = 51
    AutoEditable = False
    FriendlyName = 'combo_md_fornecedor'
    KeyField = 'COD_GRUPO'
    ListField = 'DESCRICAO'
    ListSource = ds_grupos
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object edit_md_preco_venda: TIWEdit [52]
    Left = 728
    Top = 154
    Width = 73
    Height = 20
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 52
    DataType = stNumber
  end
  object combo_tributacao_item: TIWComboBox [53]
    Left = 728
    Top = 180
    Width = 73
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
    TabOrder = 53
    ItemIndex = -1
    Items.Strings = (
      'Tributavel=1'
      'Isento=2'
      'Substitui'#231#227'o Tribut'#225'ria=3')
    FriendlyName = 'combo_tributacao_item'
    NoSelectionText = '-- No Selection --'
  end
  object combo_tipo_item: TIWComboBox [54]
    Left = 728
    Top = 207
    Width = 73
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
    ItemsHaveValues = True
    TabOrder = 54
    ItemIndex = 0
    Items.Strings = (
      'Estoque=E'
      'Almoxarifado=A')
    FriendlyName = 'combo_tributacao_item'
    NoSelectionText = '-- No Selection --'
  end
  object combo_origem_item: TIWComboBox [55]
    Left = 728
    Top = 234
    Width = 73
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
    TabOrder = 55
    ItemIndex = -1
    Items.Strings = (
      '0 - Nacional=0'
      '1 - Importado=1')
    FriendlyName = 'combo_tributacao_item'
    NoSelectionText = '-- No Selection --'
  end
  object edit_md_comp_item: TIWEdit [56]
    Left = 728
    Top = 261
    Width = 73
    Height = 20
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 56
    DataType = stNumber
  end
  object combo_md_un_item: TIWComboBox [57]
    Left = 728
    Top = 287
    Width = 73
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
    TabOrder = 57
    ItemIndex = 0
    Items.Strings = (
      'UN=UN'
      'PC=PC'
      'Metro=MT'
      'Litro=LT'
      'Cent'#237'metro=CM')
    FriendlyName = 'combo_tributacao_item'
    NoSelectionText = '-- No Selection --'
  end
  object edit_md_ncm_item: TIWEdit [58]
    Left = 728
    Top = 325
    Width = 73
    Height = 20
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 58
    DataType = stNumber
  end
  object BTN_CAD_ITEM: TIWButton [59]
    Left = 464
    Top = 64
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
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btn_fornecedor'
    TabOrder = 59
    OnAsyncClick = BTN_CAD_ITEMAsyncClick
  end
  object BTN_CADASTRAR_ITEM: TIWButton [60]
    Left = 464
    Top = 100
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
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btn_fornecedor'
    TabOrder = 60
    OnAsyncClick = BTN_CADASTRAR_ITEMAsyncClick
  end
  object BTN_PESQUISARP: TIWButton [61]
    Left = 464
    Top = 136
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
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_PESQUISARP'
    TabOrder = 61
    OnAsyncClick = BTN_PESQUISARPAsyncClick
  end
  object combo_local_estoque: TIWDBLookupComboBox [62]
    Left = 728
    Top = 359
    Width = 73
    Height = 21
    Css = 'form-control input-sm'
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    OnAsyncChange = combo_local_estoqueAsyncChange
    TabOrder = 62
    AutoEditable = False
    FriendlyName = 'combo_md_fornecedor'
    KeyField = 'COD_LOCAL'
    ListField = 'DESCRICAO'
    ListSource = ds_q_local_estoque
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object combo_sugestao_loc: TIWDBLookupComboBox [63]
    Left = 728
    Top = 386
    Width = 73
    Height = 21
    Css = 'form-control input-sm'
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    OnAsyncChange = combo_sugestao_locAsyncChange
    TabOrder = 63
    AutoEditable = False
    DataSource = ds_sugestao_loc
    FriendlyName = 'combo_md_fornecedor'
    KeyField = 'LOCACAO'
    ListField = 'LOCACAO'
    ListSource = ds_sugestao_loc
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object edit_locacao_item: TIWEdit [64]
    Left = 728
    Top = 413
    Width = 73
    Height = 20
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 64
    Enabled = False
  end
  object edit_valor_ipi_item: TIWEdit [65]
    Left = 728
    Top = 439
    Width = 73
    Height = 20
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 65
    Enabled = False
  end
  object BTN_PESQUISAR_L: TIWButton [66]
    Left = 464
    Top = 172
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
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btn_fornecedor'
    TabOrder = 66
    OnAsyncClick = BTN_PESQUISAR_LAsyncClick
  end
  object combo_pesquisar_l: TIWDBLookupComboBox [67]
    Left = 728
    Top = 465
    Width = 73
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
    OnAsyncChange = combo_pesquisar_lAsyncChange
    TabOrder = 67
    AutoEditable = False
    DataSource = ds_q_naturezas
    FriendlyName = 'combo_pesquisar_l'
    KeyField = 'COD_LOCAL'
    ListField = 'DESCRICAO'
    ListSource = ds_q_local_estoque
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object tot_produtos_capa: TIWEdit [68]
    Left = 384
    Top = 353
    Width = 73
    Height = 20
    Hint = 'edit_valor_icms'
    OnHTMLTag = tot_produtos_capaHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 68
    Enabled = False
  end
  object tot_ipi_capa: TIWEdit [69]
    Left = 384
    Top = 379
    Width = 73
    Height = 20
    Hint = 'edit_valor_icms'
    OnHTMLTag = tot_ipi_capaHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 69
    Enabled = False
  end
  object tot_bc_icms_capa: TIWEdit [70]
    Left = 384
    Top = 405
    Width = 73
    Height = 20
    Hint = 'edit_valor_icms'
    OnHTMLTag = totbccapa
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 70
    Enabled = False
  end
  object tot_valor_icms_capa: TIWEdit [71]
    Left = 384
    Top = 431
    Width = 73
    Height = 20
    Hint = 'edit_valor_icms'
    OnHTMLTag = tot_valor_icms_capaHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 71
    Enabled = False
  end
  object tot_bc_icms_st_capa: TIWEdit [72]
    Left = 384
    Top = 457
    Width = 73
    Height = 20
    Hint = 'edit_valor_icms'
    OnHTMLTag = tot_bc_icms_st_capaHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 72
    Enabled = False
  end
  object tot_valor_icms_st_capa: TIWEdit [73]
    Left = 384
    Top = 483
    Width = 73
    Height = 20
    Hint = 'edit_valor_icms'
    OnHTMLTag = tot_valor_icms_st_capaHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 73
    Enabled = False
  end
  object tot_capa: TIWEdit [74]
    Left = 384
    Top = 509
    Width = 73
    Height = 20
    Hint = 'edit_valor_icms'
    OnHTMLTag = tot_capaHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 74
    Enabled = False
  end
  object tot_produtos_item: TIWEdit [75]
    Left = 463
    Top = 353
    Width = 73
    Height = 20
    Hint = 'edit_valor_icms'
    OnHTMLTag = edit_valor_icmsHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 75
    Enabled = False
  end
  object tot_ipi_item: TIWEdit [76]
    Left = 463
    Top = 379
    Width = 73
    Height = 20
    Hint = 'edit_valor_icms'
    OnHTMLTag = edit_valor_icmsHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 76
    Enabled = False
  end
  object tot_bc_icms_item: TIWEdit [77]
    Left = 463
    Top = 405
    Width = 73
    Height = 20
    Hint = 'edit_valor_icms'
    OnHTMLTag = edit_valor_icmsHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 77
    Enabled = False
  end
  object tot_valor_icms_item: TIWEdit [78]
    Left = 463
    Top = 431
    Width = 73
    Height = 20
    Hint = 'edit_valor_icms'
    OnHTMLTag = edit_valor_icmsHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 78
    Enabled = False
  end
  object tot_bc_icms_st_item: TIWEdit [79]
    Left = 463
    Top = 457
    Width = 73
    Height = 20
    Hint = 'edit_valor_icms'
    OnHTMLTag = edit_valor_icmsHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 79
    Enabled = False
  end
  object tot_valor_icms_st_item: TIWEdit [80]
    Left = 463
    Top = 483
    Width = 73
    Height = 20
    Hint = 'edit_valor_icms'
    OnHTMLTag = edit_valor_icmsHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 80
    Enabled = False
  end
  object tot_item: TIWEdit [81]
    Left = 463
    Top = 509
    Width = 73
    Height = 20
    Hint = 'edit_valor_icms'
    OnHTMLTag = edit_valor_icmsHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 81
    Enabled = False
  end
  object btn_recalculo: TIWButton [82]
    Left = 464
    Top = 208
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
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btn_fornecedor'
    TabOrder = 82
    OnAsyncClick = btn_recalculoAsyncClick
  end
  object BTN_GRAVAR_DADOS: TIWButton [83]
    Left = 464
    Top = 244
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
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btn_fornecedor'
    TabOrder = 83
    OnAsyncClick = BTN_GRAVAR_DADOSAsyncClick
  end
  object combo_cst_itens: TIWComboBox [84]
    Left = 391
    Top = 535
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
    TabOrder = 84
    ItemIndex = 0
    Items.Strings = (
      '00 - Tributada Integralmente=00'
      
        '10 - Tributada e com cobran'#231'a de ICMS de substitui'#231#227'o tribut'#225'ria' +
        '=10'
      '20 - Com redu'#231#227'o de Base de C'#225'lculo=20'
      
        '30 - Isenta ou n'#227'o tributada e com cobran'#231'a do ICMS por substitu' +
        'i'#231#227'o tribut'#225'ria=30'
      '40 - Isenta=40'
      '41 - N'#227'o tributada=41'
      '50 - Suspens'#227'o=50'
      '51 - Diferimento=51'
      '60 - ICMS pago anteriormente por substitui'#231#227'o tribut'#225'ria=60'
      '70 - Com redu'#231#227'o da Base de C'#225'lculo e cobran'#231'a de ICMS=70'
      '90 - Outras=90')
    FriendlyName = 'combo_cst_itens'
    NoSelectionText = '-- No Selection --'
  end
  object BTN_IMPRIMIR: TIWButton [85]
    Left = 464
    Top = 280
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
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btn_fornecedor'
    TabOrder = 85
  end
  object BTN_IMPRIMIR_SIM: TIWButton [86]
    Left = 464
    Top = 316
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
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btn_fornecedor'
    TabOrder = 86
    OnAsyncClick = BTN_IMPRIMIR_SIMAsyncClick
  end
  object BTN_IMPRIMIR_NAO: TIWButton [87]
    Left = 376
    Top = 317
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
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btn_fornecedor'
    TabOrder = 87
    OnClick = BTN_IMPRIMIR_NAOClick
  end
  object BTN_CANCELAR_ENTRADA: TIWButton [88]
    Left = 377
    Top = 281
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
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btn_fornecedor'
    TabOrder = 88
    OnClick = BTN_CANCELAR_ENTRADAClick
  end
  object INTERFACEXML: TIWButton [89]
    Left = 128
    Top = 261
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
    Caption = 'INTERFACEXML'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'INTERFACEXML'
    TabOrder = 89
    OnAsyncClick = INTERFACEXMLAsyncClick
  end
  object IWFile: TIWFileUploader [90]
    Left = 728
    Top = 535
    Width = 112
    Height = 34
    TabOrder = 90
    TextStrings.DragText = 'Drop files here to upload'
    TextStrings.UploadButtonText = 'Ler arquivo XML'
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
    AutoSavePath = 'D:\projetos\LOJAO\XML\upload'
    CssClasses.Strings = (
      'button=btn-primary'
      'button-hover=btn-success'
      'drop-area='
      'drop-area-active='
      'drop-area-disabled='
      'list='
      'upload-spinner='
      'progress-bar=progress-bar'
      'upload-file='
      'upload-size='
      'upload-listItem='
      'upload-cancel='
      'upload-success=btn-success'
      'upload-fail=btn-danger'
      'success-icon=fa fa-check-square-o'
      'fail-icon=')
    OnAsyncUploadCompleted = IWFileAsyncUploadCompleted
    OnAsyncUploadSuccess = IWFileAsyncUploadSuccess
    FriendlyName = 'IWFile'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
  end
  object EDIT_COD_CONTROLE_ITEM: TIWEdit [91]
    Left = 728
    Top = 492
    Width = 73
    Height = 20
    Hint = 'edit_aliq_icms_st_item'
    OnHTMLTag = edit_Aliq_icms_st_itemHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 91
    Enabled = False
    Text = '0'
  end
  object edit_cod_barras: TIWEdit [92]
    Left = 608
    Top = 527
    Width = 73
    Height = 20
    OnHTMLTag = edit_bc_ipi_itemHTMLTag
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 92
    OnAsyncExit = edit_valor_icms_st_itemAsyncExit
  end
  object EDIT_OP_CAD: TIWEdit [93]
    Left = 608
    Top = 553
    Width = 73
    Height = 20
    Visible = False
    OnHTMLTag = edit_bc_ipi_itemHTMLTag
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
    Editable = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 93
    OnAsyncExit = edit_valor_icms_st_itemAsyncExit
    Text = 'Manual'
  end
  object combo_cfop_trib: TIWDBLookupComboBox [94]
    Left = 407
    Top = 667
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
    TabOrder = 94
    AutoEditable = False
    FriendlyName = 'combo_cfop_trib'
    KeyField = 'COD_NATUREZA'
    ListField = 'NATUREZA'
    ListSource = ds_q_nat_trib
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object combo_cfop_isentas: TIWDBLookupComboBox [95]
    Left = 407
    Top = 624
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
    TabOrder = 95
    AutoEditable = False
    FriendlyName = 'combo_cfop_trib'
    KeyField = 'COD_NATUREZA'
    ListField = 'NATUREZA'
    ListSource = ds_q_nat_isentas
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object combo_cfop_st: TIWDBLookupComboBox [96]
    Left = 407
    Top = 710
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
    TabOrder = 96
    AutoEditable = False
    FriendlyName = 'combo_cfop_trib'
    KeyField = 'COD_NATUREZA'
    ListField = 'NATUREZA'
    ListSource = ds_q_nat_st
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object BTN_APLICAR_CFOP: TIWButton [97]
    Left = 377
    Top = 245
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
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btn_fornecedor'
    TabOrder = 97
    OnAsyncClick = BTN_APLICAR_CFOPAsyncClick
  end
  object BTN_REFRESH: TIWButton [98]
    Left = 376
    Top = 208
    Width = 82
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
    Caption = 'BTN_REFRESH'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_REFRESH'
    TabOrder = 98
    OnClick = BTN_REFRESHClick
  end
  object edit_emissao_2: TIWEdit [99]
    Left = 177
    Top = 99
    Width = 73
    Height = 20
    Hint = 'edit_emissao'
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
    FriendlyName = 'edit_numero'
    SubmitOnAsyncEvent = True
    TabOrder = 99
    DataType = stDate
  end
  object combo_local_estoque2: TIWDBLookupComboBox [100]
    Left = 728
    Top = 647
    Width = 73
    Height = 21
    Css = 'form-control input-sm'
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    OnAsyncChange = combo_local_estoqueAsyncChange
    TabOrder = 100
    AutoEditable = False
    FriendlyName = 'combo_md_fornecedor'
    KeyField = 'COD_LOCAL'
    ListField = 'DESCRICAO'
    ListSource = ds_q_local_estoque
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object BTN_APLICAR_LOCACAO: TIWButton [101]
    Left = 807
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
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btn_fornecedor'
    TabOrder = 101
    OnAsyncClick = BTN_APLICAR_LOCACAOAsyncClick
  end
  object combo_tipo_entrada: TIWComboBox [102]
    Left = 815
    Top = 491
    Width = 73
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
    OnAsyncChange = combo_tipo_entradaAsyncChange
    TabOrder = 102
    ItemIndex = 0
    Items.Strings = (
      '01 - Compras=1'
      '20 - Transfer'#234'ncia Entrada=20')
    FriendlyName = 'combo_tributacao_item'
    NoSelectionText = '-- No Selection --'
  end
  object CK_ITENS_OK: TIWCheckBox [103]
    Left = 800
    Top = 710
    Width = 113
    Height = 21
    Caption = 'Sem Cadastro'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 103
    OnAsyncChange = CK_ITENS_OKAsyncChange
    Checked = False
    FriendlyName = 'CK_ITENS_OK'
  end
  object combo_xml_status: TIWComboBox [104]
    Left = 815
    Top = 464
    Width = 73
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
    OnAsyncChange = combo_tipo_entradaAsyncChange
    TabOrder = 104
    ItemIndex = 0
    Items.Strings = (
      'Apenas n'#227'o lan'#231'ados=N'
      'Apenas lan'#231'ados=S'
      'Todos=T')
    FriendlyName = 'combo_tributacao_item'
    NoSelectionText = '-- No Selection --'
  end
  inherited IWTemplateProcessorHTML1: TIWTemplateProcessorHTML
    Left = 48
    Top = 288
  end
  object q_datatable: TFDQuery
    Connection = DM.banco
    Left = 56
    Top = 128
  end
  object q_naturezas: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      
        'select cod_natureza||grupo cod_natureza, cod_natureza||'#39'-'#39'||grup' +
        'o||'#39'-'#39'||descricao as natureza from naturezas'
      'where ativo='#39'S'#39
      'and entrada_saida='#39'E'#39
      'and limites = :limites'
      'order by natureza')
    Left = 120
    Top = 136
    ParamData = <
      item
        Name = 'LIMITES'
        ParamType = ptInput
      end>
    object q_naturezasNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Origin = 'NATUREZA'
      Size = 228
    end
    object q_naturezasCOD_NATUREZA: TStringField
      FieldName = 'COD_NATUREZA'
      Origin = 'COD_NATUREZA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 46
    end
  end
  object ds_q_naturezas: TDataSource
    DataSet = q_naturezas
    Left = 120
    Top = 192
  end
  object q_fornecedor: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select cod_fornecedor,descricao from fornecedor_estoque')
    Left = 152
    Top = 440
    object q_fornecedorCOD_FORNECEDOR: TFMTBCDField
      FieldName = 'COD_FORNECEDOR'
      Origin = 'COD_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object q_fornecedorDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
  end
  object ds_fornecedor_estoque: TDataSource
    DataSet = q_fornecedor
    Left = 48
    Top = 440
  end
  object q_marca_itens: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select cod_marca,descricao from marcas')
    Left = 56
    Top = 504
    object q_marca_itensCOD_MARCA: TFMTBCDField
      FieldName = 'COD_MARCA'
      Origin = 'COD_MARCA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object q_marca_itensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
  end
  object ds_marcas: TDataSource
    DataSet = q_marca_itens
    Left = 136
    Top = 504
  end
  object q_grupos: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select cod_grupo,descricao from itens_grupo  ')
    Left = 56
    Top = 560
    object q_gruposCOD_GRUPO: TFMTBCDField
      FieldName = 'COD_GRUPO'
      Origin = 'COD_GRUPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object q_gruposDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
  end
  object ds_grupos: TDataSource
    DataSet = q_grupos
    Left = 136
    Top = 560
  end
  object q_busca_fornecedor: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      
        ' select * from fornecedor_estoque where cod_fornecedor in (  sel' +
        'ect cod_fornecedor from itens i where i.cod_item='#39'TESTE1'#39' )')
    Left = 56
    Top = 624
    object q_busca_fornecedorCOD_FORNECEDOR: TFMTBCDField
      FieldName = 'COD_FORNECEDOR'
      Origin = 'COD_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object q_busca_fornecedorDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
    object q_busca_fornecedorCOD_EMPRESA: TFMTBCDField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Precision = 38
      Size = 0
    end
  end
  object ds_q_busca_fornecedor: TDataSource
    DataSet = q_busca_fornecedor
    Left = 152
    Top = 624
  end
  object q_local_estoque: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select * from local_estoque where cod_empresa= :cod_empresa')
    Left = 56
    Top = 688
    ParamData = <
      item
        Name = 'COD_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object q_local_estoqueCOD_LOCAL: TFMTBCDField
      FieldName = 'COD_LOCAL'
      Origin = 'COD_LOCAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object q_local_estoqueDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object q_local_estoqueCOD_EMPRESA: TFMTBCDField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Precision = 38
      Size = 0
    end
  end
  object ds_q_local_estoque: TDataSource
    DataSet = q_local_estoque
    Left = 152
    Top = 688
  end
  object q_sugestao_loc: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select locacao from cadastro_locacao '
      'where cod_empresa = :cod_empresa'
      'and locacao='#39'PADRAO'#39
      'and cod_local_estoque = :cod_local_estoque'
      ''
      'union'
      ''
      'select locacao from locacao '
      'where cod_item= :cod_item'
      'and cod_fornecedor= :cod_fornecedor'
      'and cod_local_estoque= :cod_local_estoque')
    Left = 280
    Top = 560
    ParamData = <
      item
        Name = 'COD_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COD_LOCAL_ESTOQUE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COD_ITEM'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COD_FORNECEDOR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object q_sugestao_locLOCACAO: TStringField
      FieldName = 'LOCACAO'
      Origin = 'LOCACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
  end
  object ds_sugestao_loc: TDataSource
    DataSet = q_sugestao_loc
    Left = 368
    Top = 560
  end
  object q_temp_itens: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select * from temp_compras_itens')
    Left = 32
    Top = 200
    object q_temp_itensCOD_ITEM: TStringField
      FieldName = 'COD_ITEM'
      Origin = 'COD_ITEM'
      Size = 24
    end
    object q_temp_itensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
    object q_temp_itensPRECO_UNITARIO: TBCDField
      FieldName = 'PRECO_UNITARIO'
      Origin = 'PRECO_UNITARIO'
      Precision = 12
      Size = 2
    end
    object q_temp_itensQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 12
      Size = 2
    end
    object q_temp_itensVALOR_TOTAL: TBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      Precision = 12
      Size = 2
    end
    object q_temp_itensNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
    end
    object q_temp_itensCFOP: TFMTBCDField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Precision = 38
      Size = 0
    end
    object q_temp_itensBC_ICMS: TBCDField
      FieldName = 'BC_ICMS'
      Origin = 'BC_ICMS'
      Precision = 12
      Size = 2
    end
    object q_temp_itensALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      Precision = 38
      Size = 0
    end
    object q_temp_itensVALOR_ICMS: TBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      Precision = 12
      Size = 2
    end
    object q_temp_itensBC_ICMS_ST: TBCDField
      FieldName = 'BC_ICMS_ST'
      Origin = 'BC_ICMS_ST'
      Precision = 12
      Size = 2
    end
    object q_temp_itensALIQ_ICMS_ST: TFMTBCDField
      FieldName = 'ALIQ_ICMS_ST'
      Origin = 'ALIQ_ICMS_ST'
      Precision = 38
      Size = 0
    end
    object q_temp_itensVALOR_ICMS_ST: TBCDField
      FieldName = 'VALOR_ICMS_ST'
      Origin = 'VALOR_ICMS_ST'
      Precision = 12
      Size = 2
    end
    object q_temp_itensVAL_DESC: TBCDField
      FieldName = 'VAL_DESC'
      Origin = 'VAL_DESC'
      Precision = 12
      Size = 2
    end
    object q_temp_itensCOD_FORNECEDOR: TFMTBCDField
      FieldName = 'COD_FORNECEDOR'
      Origin = 'COD_FORNECEDOR'
      Precision = 38
      Size = 0
    end
    object q_temp_itensPERC_DESC: TFMTBCDField
      FieldName = 'PERC_DESC'
      Origin = 'PERC_DESC'
      Precision = 38
      Size = 0
    end
    object q_temp_itensBC_IPI: TBCDField
      FieldName = 'BC_IPI'
      Origin = 'BC_IPI'
      Precision = 12
      Size = 2
    end
    object q_temp_itensALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 38
      Size = 0
    end
    object q_temp_itensVALOR_IPI: TBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      Precision = 12
      Size = 2
    end
    object q_temp_itensNF_COMPRA: TFMTBCDField
      FieldName = 'NF_COMPRA'
      Origin = 'NF_COMPRA'
      Precision = 38
      Size = 0
    end
    object q_temp_itensSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 3
    end
    object q_temp_itensCOD_EMPRESA: TFMTBCDField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Precision = 38
      Size = 0
    end
    object q_temp_itensFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Size = 80
    end
    object q_temp_itensSEQ: TFMTBCDField
      FieldName = 'SEQ'
      Origin = 'SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object q_temp_itensLOCACAO: TStringField
      FieldName = 'LOCACAO'
      Origin = 'LOCACAO'
      Size = 100
    end
    object q_temp_itensCOD_LOCAL_ESTOQUE: TFMTBCDField
      FieldName = 'COD_LOCAL_ESTOQUE'
      Origin = 'COD_LOCAL_ESTOQUE'
      Precision = 38
      Size = 0
    end
    object q_temp_itensCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 2
    end
    object q_temp_itensFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Precision = 38
      Size = 2
    end
    object q_temp_itensOUTRAS: TFMTBCDField
      FieldName = 'OUTRAS'
      Origin = 'OUTRAS'
      Precision = 38
      Size = 2
    end
    object q_temp_itensRATEIO_FRETE: TFMTBCDField
      FieldName = 'RATEIO_FRETE'
      Origin = 'RATEIO_FRETE'
      Precision = 38
      Size = 2
    end
    object q_temp_itensSEGUROS: TFMTBCDField
      FieldName = 'SEGUROS'
      Origin = 'SEGUROS'
      Precision = 38
      Size = 2
    end
  end
  object r_romaneio: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44461.072993472200000000
    ReportOptions.LastChange = 44481.981237766200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 568
    Top = 600
    Datasets = <
      item
        DataSet = db_compras_itens
        DataSetName = 'compras_itens'
      end>
    Variables = <
      item
        Name = ' Variaveis locais'
        Value = Null
      end
      item
        Name = 'data_entrada'
        Value = #39'Em branco'#39
      end
      item
        Name = 'numero_nota'
        Value = #39'Em branco'#39
      end
      item
        Name = 'empresa'
        Value = #39'Em Branco'#39
      end
      item
        Name = 'serie'
        Value = #39'N/A'#39
      end
      item
        Name = 'responsavel'
        Value = #39'Em branco'#39
      end
      item
        Name = 'fornecedor'
        Value = #39'Em branco'#39
      end
      item
        Name = 'total_itens'
        Value = #39'Em branco'#39
      end
      item
        Name = 'total_qtde'
        Value = #39'N/A'#39
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      VGuides.Strings = (
        '317,48052')
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
        Height = 128.504020000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Entrada de Nota Fiscal - Alocar no Estoque')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 41.574830000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Empresa:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = 79.370130000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nota:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 109.606370000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'S'#233'rie:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 109.826840000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fornecedor:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 109.606370000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Respons'#225'vel:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 79.370130000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Entrada:')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 566.929500000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
        end
        object Time: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 653.858690000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
        end
        object TotalPages: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 45.354360000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[TotalPages#]')
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 45.354360000000000000
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
          Left = 559.370440000000000000
          Top = 45.354360000000000000
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
          Left = 487.559370000000000000
          Top = 45.354360000000000000
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
          Left = 45.354360000000000000
          Top = 80.370130000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[numero_nota]')
          ParentFont = False
        end
        object serie: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 110.606370000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[serie]')
          ParentFont = False
        end
        object responsavel: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 112.606370000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[responsavel]')
          ParentFont = False
        end
        object empresa: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 42.574830000000000000
          Width = 275.905690000000000000
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
          Left = 188.976500000000000000
          Top = 111.606370000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fornecedor]')
          ParentFont = False
        end
        object Date1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 79.370130000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        DataSet = db_compras_itens
        DataSetName = 'compras_itens'
        RowCount = 0
        object TableObject1: TfrxTableObject
          AllowVectorExport = True
          Left = 3.779530000000000000
          object TableColumn1: TfrxTableColumn
            Width = 118.425273333334000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn2: TfrxTableColumn
            Width = 194.425273333334000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn3: TfrxTableColumn
            Width = 45.425273333334000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn4: TfrxTableColumn
            Width = 118.425273333334000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn5: TfrxTableColumn
            Width = 118.425273333334000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn6: TfrxTableColumn
            Width = 118.425273333334000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow1: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell1: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'COD_ITEM'
              DataSet = db_compras_itens
              DataSetName = 'compras_itens'
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[compras_itens."COD_ITEM"]')
            end
            object TableCell2: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'DESCRICAO'
              DataSet = db_compras_itens
              DataSetName = 'compras_itens'
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[compras_itens."DESCRICAO"]')
            end
            object TableCell3: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'QTDE'
              DataSet = db_compras_itens
              DataSetName = 'compras_itens'
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[compras_itens."QTDE"]')
            end
            object TableCell4: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'FORNECEDOR'
              DataSet = db_compras_itens
              DataSetName = 'compras_itens'
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[compras_itens."FORNECEDOR"]')
            end
            object TableCell5: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'LOCACAO'
              DataSet = db_compras_itens
              DataSetName = 'compras_itens'
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[compras_itens."LOCACAO"]')
            end
            object TableCell26: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'LOCAL_ESTOQUE'
              DataSet = db_compras_itens
              DataSetName = 'compras_itens'
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[compras_itens."LOCAL_ESTOQUE"]')
            end
          end
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 20.897650000000000000
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        object TableObject2: TfrxTableObject
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = 2.000000000000000000
          object TableColumn7: TfrxTableColumn
            Width = 118.425273333334000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn8: TfrxTableColumn
            Width = 194.425273333334000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn9: TfrxTableColumn
            Width = 44.425273333334000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn10: TfrxTableColumn
            Width = 118.425273333334000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn11: TfrxTableColumn
            Width = 118.425273333334000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn12: TfrxTableColumn
            Width = 118.425273333334000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow2: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell6: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_compras_itens
              DataSetName = 'compras_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
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
              DataSet = db_compras_itens
              DataSetName = 'compras_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
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
              DataSet = db_compras_itens
              DataSetName = 'compras_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                'Qtde.')
              ParentFont = False
            end
            object TableCell9: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_compras_itens
              DataSetName = 'compras_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                'Fornecedor')
              ParentFont = False
            end
            object TableCell10: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_compras_itens
              DataSetName = 'compras_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                'Loca'#231#227'o')
              ParentFont = False
            end
            object TableCell11: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_compras_itens
              DataSetName = 'compras_itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                'L. Estoque')
              ParentFont = False
            end
          end
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 294.803340000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 5.338590000000000000
          Top = 3.779530000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade de Itens:')
          ParentFont = False
        end
        object total_itens: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[total_itens]')
          ParentFont = False
        end
        object TableObject3: TfrxTableObject
          AllowVectorExport = True
          Left = 316.700990000000000000
          object TableColumn13: TfrxTableColumn
            Width = 45.354360000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow3: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell12: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              object total_qtde: TfrxMemoView
                IndexTag = 1
                AllowVectorExport = True
                Left = 0.779530000000000000
                Width = 41.574830000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Frame.Typ = []
                Memo.UTF8W = (
                  '[total_qtde]')
                ParentFont = False
              end
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
    Left = 568
    Top = 664
  end
  object modal_romaneio: TIWModalWindow
    OnAsyncClose = modal_romaneioAsyncClose
    Left = 648
    Top = 664
  end
  object q_compras_itens: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select ci.cod_item,'
      '       i.descricao,'
      '       fe.descricao as fornecedor,'
      '       ci.qtde,'
      '       (select le.descricao'
      '          from local_estoque le'
      '         where le.cod_local = ci.cod_local_estoque'
      
        '           and ci.cod_empresa = le.cod_empresa) as local_estoque' +
        ','
      '       ci.locacao'
      '  from  compras_itens ci, fornecedor_estoque fe, itens i'
      ' where fe.cod_fornecedor = ci.cod_fornecedor'
      '  -- and fe.cod_empresa = ci.cod_empresa'
      '   and ci.cod_item = i.cod_item'
      '   and ci.cod_fornecedor = i.cod_fornecedor'
      '  and ci.cod_empresa= :cod_empresa'
      '  and ci.cod_controle=  :cod_controle')
    Left = 648
    Top = 600
    ParamData = <
      item
        Name = 'COD_EMPRESA'
        ParamType = ptInput
      end
      item
        Name = 'COD_CONTROLE'
        ParamType = ptInput
      end>
    object q_compras_itensCOD_ITEM: TStringField
      FieldName = 'COD_ITEM'
      Origin = 'COD_ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 25
    end
    object q_compras_itensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object q_compras_itensFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Size = 150
    end
    object q_compras_itensQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 38
      Size = 2
    end
    object q_compras_itensLOCAL_ESTOQUE: TStringField
      FieldName = 'LOCAL_ESTOQUE'
      Origin = 'LOCAL_ESTOQUE'
      Size = 50
    end
    object q_compras_itensLOCACAO: TStringField
      FieldName = 'LOCACAO'
      Origin = 'LOCACAO'
      Size = 50
    end
  end
  object ds_cp_itens: TDataSource
    DataSet = q_compras_itens
    Left = 520
    Top = 768
  end
  object db_compras_itens: TfrxDBDataset
    UserName = 'compras_itens'
    CloseDataSource = False
    DataSet = q_compras_itens
    BCDToCurrency = False
    Left = 568
    Top = 720
  end
  object frxReportTableObject1: TfrxReportTableObject
    Left = 664
    Top = 728
  end
  object q_geral: TFDQuery
    Connection = DM.banco
    Left = 280
    Top = 760
  end
  object q_aux: TFDQuery
    Connection = DM.banco
    Left = 320
    Top = 760
  end
  object xml: TXMLDocument
    Left = 176
    Top = 48
  end
  object NFE: TXMLDocument
    Left = 776
    Top = 592
    DOMVendorDesc = 'Omni XML'
  end
  object q_nat_trib: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      
        'select cod_natureza||grupo cod_natureza, cod_natureza||'#39'-'#39'||grup' +
        'o||'#39'-'#39'||descricao as natureza from naturezas'
      'where ativo='#39'S'#39
      'and entrada_saida='#39'E'#39
      'and tributacao=1'
      'and limites = :limites'
      'order by natureza')
    Left = 368
    Top = 656
    ParamData = <
      item
        Name = 'LIMITES'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object q_nat_tribCOD_NATUREZA: TStringField
      FieldName = 'COD_NATUREZA'
      Origin = 'COD_NATUREZA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 46
    end
    object q_nat_tribNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Origin = 'NATUREZA'
      Size = 228
    end
  end
  object q_nat_isentas: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      
        'select cod_natureza||grupo cod_natureza, cod_natureza||'#39'-'#39'||grup' +
        'o||'#39'-'#39'||descricao as natureza from naturezas'
      'where ativo='#39'S'#39
      'and entrada_saida='#39'E'#39
      'and tributacao=2'
      'and limites = :limites'
      'order by natureza')
    Left = 368
    Top = 616
    ParamData = <
      item
        Name = 'LIMITES'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object q_nat_isentasCOD_NATUREZA: TStringField
      FieldName = 'COD_NATUREZA'
      Origin = 'COD_NATUREZA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 46
    end
    object q_nat_isentasNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Origin = 'NATUREZA'
      Size = 228
    end
  end
  object q_nat_st: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      
        'select cod_natureza||grupo cod_natureza, cod_natureza||'#39'-'#39'||grup' +
        'o||'#39'-'#39'||descricao as natureza from naturezas'
      'where ativo='#39'S'#39
      'and entrada_saida='#39'E'#39
      'and tributacao=3'
      'and limites = :limites'
      'order by natureza')
    Left = 368
    Top = 704
    ParamData = <
      item
        Name = 'LIMITES'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object q_nat_stCOD_NATUREZA: TStringField
      FieldName = 'COD_NATUREZA'
      Origin = 'COD_NATUREZA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 46
    end
    object q_nat_stNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Origin = 'NATUREZA'
      Size = 228
    end
  end
  object ds_q_nat_isentas: TDataSource
    DataSet = q_nat_isentas
    Left = 288
    Top = 616
  end
  object ds_q_nat_trib: TDataSource
    DataSet = q_nat_trib
    Left = 288
    Top = 664
  end
  object ds_q_nat_st: TDataSource
    DataSet = q_nat_st
    Left = 288
    Top = 712
  end
end
