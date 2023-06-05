inherited FormClientes: TFormClientes
  OnCreate = IWAppFormCreate
  OnShow = IWAppFormShow
  DesignLeft = 2
  DesignTop = 2
  object COMBO_UF: TIWDBLookupComboBox [2]
    Left = 496
    Top = 96
    Width = 121
    Height = 21
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    TabOrder = 2
    AutoEditable = False
    FriendlyName = 'COMBO_UF'
    KeyField = 'UF'
    ListField = 'UF'
    ListSource = ds_q_uf
    DisableWhenEmpty = True
    NoSelectionText = '-- No Selection --'
  end
  object lb_acao: TIWLabel [3]
    Left = 208
    Top = 32
    Width = 7
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'lb_acao'
    Caption = '0'
  end
  object BTN_IMPRIMIR_SIM: TIWButton [4]
    Left = 512
    Top = 180
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
    TabOrder = 3
    OnAsyncClick = BTN_IMPRIMIR_SIMAsyncClick
  end
  object BTN_IMPRIMIR_NAO: TIWButton [5]
    Left = 512
    Top = 216
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
    TabOrder = 4
    OnAsyncClick = BTN_IMPRIMIR_NAOAsyncClick
  end
  object q_uf: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select distinct UF from cidades ')
    Left = 584
    Top = 32
    object q_ufUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      Size = 2
    end
  end
  object ds_q_uf: TDataSource
    DataSet = q_uf
    Left = 504
    Top = 40
  end
  object q_datatable: TFDQuery
    Connection = DM.banco
    Left = 248
    Top = 152
  end
end
