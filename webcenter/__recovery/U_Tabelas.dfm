inherited FormTabelas: TFormTabelas
  OnCreate = IWAppFormCreate
  OnShow = IWAppFormShow
  DesignLeft = 2
  DesignTop = 2
  inherited BTN_TROCAR_SENHA: TIWButton
    TabOrder = 4
  end
  object BTN_GRUPOS: TIWButton [4]
    Left = 272
    Top = 16
    Width = 146
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
    Caption = 'BTN_GRUPOS'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_GRUPOS'
    TabOrder = 3
    OnAsyncClick = BTN_GRUPOSAsyncClick
  end
  object BTN_INCLUIR_GRUPO: TIWButton [5]
    Left = 272
    Top = 52
    Width = 145
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
    Caption = 'BTN_INCLUIR_GRUPOS'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_GRUPOS'
    TabOrder = 5
    OnAsyncClick = BTN_INCLUIR_GRUPOAsyncClick
  end
  object edit_grupo: TIWEdit [6]
    Left = 424
    Top = 16
    Width = 97
    Height = 25
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
    FriendlyName = 'edit_grupo'
    SubmitOnAsyncEvent = True
    TabOrder = 6
  end
  object BTNSALVARGRUPO: TIWButton [7]
    Left = 273
    Top = 88
    Width = 145
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
    Caption = 'BTN_SALVAR_GRUPOS'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_GRUPOS'
    TabOrder = 7
    OnAsyncClick = BTNSALVARGRUPOAsyncClick
  end
  object BTN_LOCACOES: TIWButton [8]
    Left = 273
    Top = 124
    Width = 146
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
    Caption = 'BTN_LOCACOES'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_LOCACOES'
    TabOrder = 8
    OnAsyncClick = BTN_LOCACOESAsyncClick
  end
  object BTN_INCLUIR_LOC: TIWButton [9]
    Left = 273
    Top = 160
    Width = 145
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
    Caption = 'BTN_INCLUIR_LOC'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_INCLUIR_LOC'
    TabOrder = 9
    OnAsyncClick = BTN_INCLUIR_LOCAsyncClick
  end
  object BTN_SALVAR_LOC: TIWButton [10]
    Left = 274
    Top = 196
    Width = 145
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
    Caption = 'BTN_SALVAR_LOC'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_SALVAR_LOC'
    TabOrder = 10
    OnAsyncClick = BTN_SALVAR_LOCAsyncClick
  end
  object combo_local_estoque: TIWDBLookupComboBox [11]
    Left = 536
    Top = 16
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
    TabOrder = 11
    AutoEditable = False
    FriendlyName = 'combo_local_estoque'
    KeyField = 'COD_LOCAL'
    ListField = 'DESCRICAO'
    ListSource = ds_q_local_estoque
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object edit_locacao: TIWEdit [12]
    Left = 536
    Top = 43
    Width = 97
    Height = 25
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
    FriendlyName = 'edit_grupo'
    SubmitOnAsyncEvent = True
    TabOrder = 12
  end
  object edit_prateleira: TIWEdit [13]
    Left = 536
    Top = 74
    Width = 97
    Height = 25
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
    FriendlyName = 'edit_grupo'
    SubmitOnAsyncEvent = True
    TabOrder = 13
  end
  object edit_lado: TIWEdit [14]
    Left = 536
    Top = 105
    Width = 97
    Height = 25
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
    FriendlyName = 'edit_grupo'
    SubmitOnAsyncEvent = True
    TabOrder = 14
  end
  object BTN_PESQUISARP: TIWButton [15]
    Left = 282
    Top = 232
    Width = 145
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
    Caption = 'BTN_PESQUISARP'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_PESQUISARP'
    TabOrder = 15
    OnAsyncClick = BTN_PESQUISARPAsyncClick
  end
  object IWDBLookupComboBox1: TIWDBLookupComboBox [16]
    Left = 656
    Top = 412
    Width = 73
    Height = 21
    Css = 'form-control input-sm'
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    TabOrder = 16
    AutoEditable = False
    FriendlyName = 'combo_md_fornecedor'
    KeyField = 'COD_LOCAL'
    ListField = 'DESCRICAO'
    ListSource = ds_q_local_estoque
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object edit_md_ncm_item: TIWEdit [17]
    Left = 656
    Top = 378
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
    TabOrder = 17
    DataType = stNumber
  end
  object combo_md_un_item: TIWComboBox [18]
    Left = 656
    Top = 340
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
    ItemsHaveValues = True
    TabOrder = 18
    ItemIndex = 0
    Items.Strings = (
      'UN=UN'
      'PC=PC'
      'Metro=MT'
      'Litro=LT'
      'Cent'#237'metro=CM'
      'Rolo=RL')
    FriendlyName = 'combo_tributacao_item'
    NoSelectionText = '-- No Selection --'
  end
  object edit_md_comp_item: TIWEdit [19]
    Left = 656
    Top = 314
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
    TabOrder = 19
  end
  object combo_origem_item: TIWComboBox [20]
    Left = 656
    Top = 287
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
    ItemsHaveValues = True
    TabOrder = 20
    ItemIndex = -1
    Items.Strings = (
      '0 - Nacional=0'
      '1 - Importado=1')
    FriendlyName = 'combo_tributacao_item'
    NoSelectionText = '-- No Selection --'
  end
  object combo_tipo_item: TIWComboBox [21]
    Left = 656
    Top = 260
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
    Enabled = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    ItemsHaveValues = True
    TabOrder = 21
    ItemIndex = 0
    Items.Strings = (
      'Estoque=E'
      'Almoxarifado=A')
    FriendlyName = 'combo_tributacao_item'
    NoSelectionText = '-- No Selection --'
  end
  object combo_tributacao_item: TIWComboBox [22]
    Left = 656
    Top = 233
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
    ItemsHaveValues = True
    TabOrder = 22
    ItemIndex = -1
    Items.Strings = (
      'Tributavel=1'
      'Isento=2'
      'Substitui'#231#227'o Tribut'#225'ria=3')
    FriendlyName = 'combo_tributacao_item'
    NoSelectionText = '-- No Selection --'
  end
  object edit_md_preco_venda: TIWEdit [23]
    Left = 656
    Top = 207
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
    TabOrder = 23
  end
  object combo_md_grupo: TIWDBLookupComboBox [24]
    Left = 656
    Top = 180
    Width = 73
    Height = 21
    Css = 'form-control input-sm'
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    TabOrder = 24
    AutoEditable = False
    FriendlyName = 'combo_md_fornecedor'
    KeyField = 'COD_GRUPO'
    ListField = 'DESCRICAO'
    ListSource = ds_grupos
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object combo_md_marca_item: TIWDBLookupComboBox [25]
    Left = 656
    Top = 153
    Width = 73
    Height = 21
    Css = 'form-control input-sm'
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    TabOrder = 25
    AutoEditable = False
    FriendlyName = 'combo_md_fornecedor'
    KeyField = 'COD_MARCA'
    ListField = 'DESCRICAO'
    ListSource = ds_marcas
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object combo_md_fornecedor: TIWDBLookupComboBox [26]
    Left = 656
    Top = 126
    Width = 73
    Height = 21
    Css = 'form-control input-sm'
    StyleRenderOptions.RenderBorder = False
    Enabled = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    TabOrder = 26
    AutoEditable = False
    FriendlyName = 'combo_md_fornecedor'
    KeyField = 'COD_FORNECEDOR'
    ListField = 'DESCRICAO'
    ListSource = ds_fornecedor_estoque
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object edit_md_descricao: TIWEdit [27]
    Left = 656
    Top = 100
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
    TabOrder = 27
  end
  object edit_md_cod_item: TIWEdit [28]
    Left = 656
    Top = 74
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
    TabOrder = 28
  end
  object BTN_CAD_ITEM: TIWButton [29]
    Left = 282
    Top = 268
    Width = 145
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
    Caption = 'BTN_CAD_ITEM'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_PESQUISARP'
    TabOrder = 29
    OnAsyncClick = BTN_CAD_ITEMAsyncClick
  end
  object ID_ITEM: TIWLabel [30]
    Left = 24
    Top = 368
    Width = 7
    Height = 16
    RenderSize = False
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
    FriendlyName = 'ID_ITEM'
    Caption = '0'
  end
  object MODO_ITEM: TIWLabel [31]
    Left = 24
    Top = 390
    Width = 7
    Height = 16
    RenderSize = False
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
    FriendlyName = 'MODO_ITEM'
    Caption = '0'
  end
  object BTN_INCLUIR_ITEM: TIWButton [32]
    Left = 282
    Top = 304
    Width = 145
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
    Caption = 'BTN_INCLUIR_ITEM'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_PESQUISARP'
    TabOrder = 30
    OnAsyncClick = BTN_INCLUIR_ITEMAsyncClick
  end
  object BTN_FORNECEDORES: TIWButton [33]
    Left = 282
    Top = 340
    Width = 145
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
    Caption = 'BTN_FORNECEDORES'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_PESQUISARP'
    TabOrder = 31
    OnAsyncClick = BTN_FORNECEDORESAsyncClick
  end
  object BTN_INCLUIR_FOR: TIWButton [34]
    Left = 282
    Top = 368
    Width = 145
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
    Caption = 'BTN_INCLUIR_FOR'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_INCLUIR_FOR'
    TabOrder = 32
    OnAsyncClick = BTN_INCLUIR_FORAsyncClick
  end
  object edit_descricao_fornecedor: TIWEdit [35]
    Left = 536
    Top = 136
    Width = 97
    Height = 25
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
    FriendlyName = 'edit_grupo'
    SubmitOnAsyncEvent = True
    TabOrder = 33
  end
  object BTNSALVARFORNEC: TIWButton [36]
    Left = 282
    Top = 368
    Width = 145
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
    Caption = 'BTNSALVARFORNEC'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTNSALVARFORNEC'
    TabOrder = 34
    OnAsyncClick = BTNSALVARFORNECAsyncClick
  end
  object BTN_MARCAS: TIWButton [37]
    Left = 281
    Top = 404
    Width = 146
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
    Caption = 'BTN_MARCAS'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_MARCAS'
    TabOrder = 35
    OnAsyncClick = BTN_MARCASAsyncClick
  end
  object BTN_INC_MARCAS: TIWButton [38]
    Left = 282
    Top = 432
    Width = 145
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
    Caption = 'BTN_INC_MARCAS'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_INC_MARCAS'
    TabOrder = 36
    OnAsyncClick = BTN_INC_MARCASAsyncClick
  end
  object edit_descricao_marca: TIWEdit [39]
    Left = 424
    Top = 57
    Width = 97
    Height = 25
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
    FriendlyName = 'EDIT_DESCRICAO_MARCA'
    SubmitOnAsyncEvent = True
    TabOrder = 37
  end
  object BTNSALVARMARCA: TIWButton [40]
    Left = 433
    Top = 432
    Width = 145
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
    Caption = 'BTNSALVARMARCA'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTNSALVARMARCA'
    TabOrder = 38
    OnAsyncClick = BTNSALVARMARCAAsyncClick
  end
  object BTN_LESTOQUE: TIWButton [41]
    Left = 281
    Top = 468
    Width = 146
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
    Caption = 'BTN_LESTOQUE'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_LESTOQUE'
    TabOrder = 39
    OnAsyncClick = BTN_LESTOQUEAsyncClick
  end
  object BTN_INC_LOCAIS: TIWButton [42]
    Left = 282
    Top = 500
    Width = 145
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
    Caption = 'BTN_INC_LOCAIS'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_INC_LOCAIS'
    TabOrder = 40
    OnAsyncClick = BTN_INC_LOCAISAsyncClick
  end
  object edit_descricao_local: TIWEdit [43]
    Left = 424
    Top = 88
    Width = 97
    Height = 25
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
    FriendlyName = 'edit_descricao_local'
    SubmitOnAsyncEvent = True
    TabOrder = 41
  end
  object BTNSALVARLOCAL: TIWButton [44]
    Left = 433
    Top = 500
    Width = 145
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
    Caption = 'BTNSALVARLOCAL'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTNSALVARLOCAL'
    TabOrder = 42
    OnAsyncClick = BTNSALVARLOCALAsyncClick
  end
  object edit_md_cod_barras: TIWEdit [45]
    Left = 735
    Top = 74
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
    TabOrder = 43
  end
  object q_datatable: TFDQuery
    Connection = DM.banco
    Left = 48
    Top = 120
  end
  object q_geral: TFDQuery
    Connection = DM.banco
    Left = 112
    Top = 120
  end
  object q_local_estoque: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select * from local_estoque'
      'where cod_empresa= :cod_empresa')
    Left = 664
    Top = 16
    ParamData = <
      item
        Name = 'COD_EMPRESA'
        ParamType = ptInput
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
    Left = 752
    Top = 16
  end
  object q_marca_itens: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select cod_marca,descricao from marcas')
    Left = 40
    Top = 256
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
  object ds_fornecedor_estoque: TDataSource
    DataSet = q_fornecedor
    Left = 120
    Top = 192
  end
  object q_fornecedor: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select cod_fornecedor,descricao from fornecedor_estoque')
    Left = 48
    Top = 192
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
  object ds_marcas: TDataSource
    DataSet = q_marca_itens
    Left = 120
    Top = 256
  end
  object ds_grupos: TDataSource
    DataSet = q_grupos
    Left = 120
    Top = 312
  end
  object q_grupos: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select cod_grupo,descricao from itens_grupo  ')
    Left = 40
    Top = 312
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
end
