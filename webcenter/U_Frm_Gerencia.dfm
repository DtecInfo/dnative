inherited Form_gerencia: TForm_gerencia
  OnCreate = IWAppFormCreate
  DesignLeft = 2
  DesignTop = 2
  inherited IWACAO: TIWEdit
    TabOrder = 15
  end
  inherited IWBTNACAO: TIWButton
    TabOrder = 16
  end
  inherited edit_nova_senha: TIWEdit
    TabOrder = 13
  end
  inherited BTN_TROCAR_SENHA: TIWButton
    TabOrder = 14
  end
  object rb_1m: TIWRadioButton [4]
    Left = 40
    Top = 152
    Width = 57
    Height = 21
    Cursor = crPointer
    Hint = '60'
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
    Caption = '1 M'#234's'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RawText = False
    Checked = True
    Group = 'no group'
    Value = 'rb_1m'
    FriendlyName = 'rb_1m'
    SubmitOnAsyncEvent = True
    OnAsyncChange = reload
  end
  object rb_2m: TIWRadioButton [5]
    Left = 40
    Top = 168
    Width = 73
    Height = 21
    Cursor = crPointer
    Hint = '90'
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
    Caption = '2 Meses'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RawText = False
    Group = 'no group'
    Value = 'rb_1m'
    FriendlyName = 'rb_1m'
    SubmitOnAsyncEvent = True
    OnAsyncChange = reload
  end
  object rb_3m: TIWRadioButton [6]
    Left = 40
    Top = 186
    Width = 73
    Height = 21
    Cursor = crPointer
    Hint = '120'
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
    Caption = '3 Meses'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RawText = False
    Group = 'no group'
    Value = 'rb_1m'
    FriendlyName = 'rb_1m'
    SubmitOnAsyncEvent = True
    OnAsyncChange = reload
  end
  object rb_4m: TIWRadioButton [7]
    Left = 40
    Top = 208
    Width = 73
    Height = 21
    Cursor = crPointer
    Hint = '150'
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
    Caption = '4 Meses'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RawText = False
    Group = 'no group'
    Value = 'rb_1m'
    FriendlyName = 'rb_1m'
    SubmitOnAsyncEvent = True
    OnAsyncChange = reload
  end
  object rb_5m: TIWRadioButton [8]
    Left = 40
    Top = 224
    Width = 73
    Height = 21
    Cursor = crPointer
    Hint = '180'
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
    Caption = '5 Meses'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RawText = False
    Group = 'no group'
    Value = 'rb_1m'
    FriendlyName = 'rb_1m'
    SubmitOnAsyncEvent = True
    OnAsyncChange = reload
  end
  object rb_6m: TIWRadioButton [9]
    Left = 40
    Top = 242
    Width = 73
    Height = 21
    Cursor = crPointer
    Hint = '210'
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
    Caption = '6 Meses'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RawText = False
    Group = 'no group'
    Value = 'rb_1m'
    FriendlyName = 'rb_1m'
    SubmitOnAsyncEvent = True
    OnAsyncChange = reload
  end
  object rb_7m: TIWRadioButton [10]
    Left = 40
    Top = 269
    Width = 73
    Height = 21
    Cursor = crPointer
    Hint = '240'
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
    Caption = '7 Meses'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RawText = False
    Group = 'no group'
    Value = 'rb_1m'
    FriendlyName = 'rb_1m'
    SubmitOnAsyncEvent = True
    OnAsyncChange = reload
  end
  object rb_8m: TIWRadioButton [11]
    Left = 40
    Top = 280
    Width = 73
    Height = 21
    Cursor = crPointer
    Hint = '270'
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
    Caption = '8 Meses'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RawText = False
    Group = 'no group'
    Value = 'rb_1m'
    FriendlyName = 'rb_1m'
    SubmitOnAsyncEvent = True
    OnAsyncChange = reload
  end
  object rb_9m: TIWRadioButton [12]
    Left = 40
    Top = 298
    Width = 73
    Height = 21
    Cursor = crPointer
    Hint = '300'
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
    Caption = '9 Meses'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RawText = False
    Group = 'no group'
    Value = 'rb_1m'
    FriendlyName = 'rb_1m'
    SubmitOnAsyncEvent = True
    OnAsyncChange = reload
  end
  object rb_10m: TIWRadioButton [13]
    Left = 40
    Top = 320
    Width = 73
    Height = 21
    Cursor = crPointer
    Hint = '330'
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
    Caption = '10 Meses'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RawText = False
    Group = 'no group'
    Value = 'rb_1m'
    FriendlyName = 'rb_1m'
    SubmitOnAsyncEvent = True
    OnAsyncChange = reload
  end
  object rb_11m: TIWRadioButton [14]
    Left = 40
    Top = 336
    Width = 73
    Height = 21
    Cursor = crPointer
    Hint = '360'
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
    Caption = '11 Meses'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RawText = False
    Group = 'no group'
    Value = 'rb_1m'
    FriendlyName = 'rb_1m'
    SubmitOnAsyncEvent = True
    OnAsyncChange = reload
  end
  object rb_12m: TIWRadioButton [15]
    Left = 40
    Top = 354
    Width = 73
    Height = 21
    Cursor = crPointer
    Hint = '390'
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
    Caption = '12 Meses'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RawText = False
    Group = 'no group'
    Value = 'rb_1m'
    FriendlyName = 'rb_1m'
    SubmitOnAsyncEvent = True
    OnAsyncChange = reload
  end
  object total_estoque: TIWButton [16]
    Left = 240
    Top = 16
    Width = 113
    Height = 25
    Css = 'form-control'
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderVisibility = False
    StyleRenderOptions.RenderStatus = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Caption = 'Totalizar Estoque'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'total_estoque'
    TabOrder = 17
    OnAsyncClick = total_estoqueAsyncClick
  end
  object PRODUTO: TIWLabel [17]
    Left = 216
    Top = 152
    Width = 62
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
    FriendlyName = 'PRODUTO'
    Caption = 'PRODUTO'
  end
  object ULTIMACOMPRA: TIWLabel [18]
    Left = 216
    Top = 168
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
    FriendlyName = 'IWLabel1'
    Caption = 'IWLabel1'
  end
  object ULTIMAVENDA: TIWLabel [19]
    Left = 216
    Top = 192
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
    FriendlyName = 'IWLabel1'
    Caption = 'IWLabel1'
  end
  object PRECOVENDA: TIWLabel [20]
    Left = 216
    Top = 208
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
    FriendlyName = 'IWLabel1'
    Caption = 'IWLabel1'
  end
  object CUSTOCONTABIL: TIWLabel [21]
    Left = 216
    Top = 231
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
    FriendlyName = 'IWLabel1'
    Caption = 'IWLabel1'
  end
  object FORNECEDOR: TIWLabel [22]
    Left = 216
    Top = 247
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
    FriendlyName = 'IWLabel1'
    Caption = 'IWLabel1'
  end
  object BLOQUEARSU: TIWCheckBox [23]
    Left = 336
    Top = 152
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
    Caption = 'Bloqueado'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 18
    Checked = False
    FriendlyName = 'BLOQUEARSU'
  end
  object EMPROMO: TIWCheckBox [24]
    Left = 336
    Top = 179
    Width = 113
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
    Caption = 'Em promo'#231#227'o'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 19
    Checked = False
    FriendlyName = 'bloqueado'
  end
  object VALORPROMO: TIWEdit [25]
    Left = 336
    Top = 206
    Width = 97
    Height = 23
    OnHTMLTag = VALORPROMOHTMLTag
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
    FriendlyName = 'VALORPROMO'
    SubmitOnAsyncEvent = True
    TabOrder = 20
    Text = 'VALORPROMO'
  end
  object PERCPROMO: TIWEdit [26]
    Left = 336
    Top = 235
    Width = 97
    Height = 23
    OnHTMLTag = PERCPROMOHTMLTag
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
    TabOrder = 21
    Text = 'IWEdit1'
  end
  object BTNSALVAR: TIWButton [27]
    Left = 240
    Top = 43
    Width = 113
    Height = 25
    Css = 'form-control'
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderVisibility = False
    StyleRenderOptions.RenderStatus = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Caption = 'Salvar'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'total_estoque'
    TabOrder = 22
    OnAsyncClick = BTNSALVARAsyncClick
  end
  object IWLabel1: TIWLabel [28]
    Left = 472
    Top = 152
    Width = 56
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
    FriendlyName = 'IWLabel1'
    Caption = 'Compras'
  end
  object Vendas: TIWLabel [29]
    Left = 534
    Top = 152
    Width = 46
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
    FriendlyName = 'IWLabel1'
    Caption = 'Vendas'
  end
  object qtdec1: TIWLabel [30]
    Left = 472
    Top = 168
    Width = 56
    Height = 16
    OnHTMLTag = alinhar
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
    FriendlyName = 'IWLabel1'
    Caption = 'Compras'
  end
  object qtdec2: TIWLabel [31]
    Left = 472
    Top = 190
    Width = 56
    Height = 16
    OnHTMLTag = alinhar
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
    FriendlyName = 'IWLabel1'
    Caption = 'Compras'
  end
  object qtdec3: TIWLabel [32]
    Left = 472
    Top = 212
    Width = 56
    Height = 16
    OnHTMLTag = alinhar
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
    FriendlyName = 'IWLabel1'
    Caption = 'Compras'
  end
  object qtdec4: TIWLabel [33]
    Left = 472
    Top = 225
    Width = 56
    Height = 16
    OnHTMLTag = alinhar
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
    FriendlyName = 'IWLabel1'
    Caption = 'Compras'
  end
  object qtdec5: TIWLabel [34]
    Left = 472
    Top = 247
    Width = 56
    Height = 16
    OnHTMLTag = alinhar
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
    FriendlyName = 'IWLabel1'
    Caption = 'Compras'
  end
  object qtdec6: TIWLabel [35]
    Left = 472
    Top = 264
    Width = 56
    Height = 16
    OnHTMLTag = alinhar
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
    FriendlyName = 'IWLabel1'
    Caption = 'Compras'
  end
  object qtdec7: TIWLabel [36]
    Left = 472
    Top = 286
    Width = 56
    Height = 16
    OnHTMLTag = alinhar
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
    FriendlyName = 'IWLabel1'
    Caption = 'Compras'
  end
  object qtdec8: TIWLabel [37]
    Left = 472
    Top = 308
    Width = 56
    Height = 16
    OnHTMLTag = alinhar
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
    FriendlyName = 'IWLabel1'
    Caption = 'Compras'
  end
  object qtdec9: TIWLabel [38]
    Left = 472
    Top = 330
    Width = 56
    Height = 16
    OnHTMLTag = alinhar
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
    FriendlyName = 'IWLabel1'
    Caption = 'Compras'
  end
  object qtdec10: TIWLabel [39]
    Left = 472
    Top = 347
    Width = 56
    Height = 16
    OnHTMLTag = alinhar
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
    FriendlyName = 'IWLabel1'
    Caption = 'Compras'
  end
  object qtdec11: TIWLabel [40]
    Left = 472
    Top = 369
    Width = 56
    Height = 16
    OnHTMLTag = alinhar
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
    FriendlyName = 'IWLabel1'
    Caption = 'Compras'
  end
  object qtdec12: TIWLabel [41]
    Left = 472
    Top = 391
    Width = 56
    Height = 16
    OnHTMLTag = alinhar
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
    FriendlyName = 'IWLabel1'
    Caption = 'Compras'
  end
  object qtdev1: TIWLabel [42]
    Left = 534
    Top = 168
    Width = 46
    Height = 16
    OnHTMLTag = alinhar
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
    FriendlyName = 'IWLabel1'
    Caption = 'Vendas'
  end
  object qtdev2: TIWLabel [43]
    Left = 534
    Top = 190
    Width = 46
    Height = 16
    OnHTMLTag = alinhar
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
    FriendlyName = 'IWLabel1'
    Caption = 'Vendas'
  end
  object qtdev3: TIWLabel [44]
    Left = 534
    Top = 212
    Width = 46
    Height = 16
    OnHTMLTag = alinhar
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
    FriendlyName = 'IWLabel1'
    Caption = 'Vendas'
  end
  object qtdev4: TIWLabel [45]
    Left = 534
    Top = 226
    Width = 46
    Height = 16
    OnHTMLTag = alinhar
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
    FriendlyName = 'IWLabel1'
    Caption = 'Vendas'
  end
  object qtdev5: TIWLabel [46]
    Left = 534
    Top = 248
    Width = 46
    Height = 16
    OnHTMLTag = alinhar
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
    FriendlyName = 'IWLabel1'
    Caption = 'Vendas'
  end
  object qtdev6: TIWLabel [47]
    Left = 534
    Top = 264
    Width = 46
    Height = 16
    OnHTMLTag = alinhar
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
    FriendlyName = 'IWLabel1'
    Caption = 'Vendas'
  end
  object qtdev7: TIWLabel [48]
    Left = 534
    Top = 286
    Width = 46
    Height = 16
    OnHTMLTag = alinhar
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
    FriendlyName = 'IWLabel1'
    Caption = 'Vendas'
  end
  object qtdev8: TIWLabel [49]
    Left = 534
    Top = 308
    Width = 46
    Height = 16
    OnHTMLTag = alinhar
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
    FriendlyName = 'IWLabel1'
    Caption = 'Vendas'
  end
  object qtdev9: TIWLabel [50]
    Left = 534
    Top = 330
    Width = 46
    Height = 16
    OnHTMLTag = alinhar
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
    FriendlyName = 'IWLabel1'
    Caption = 'Vendas'
  end
  object qtdev10: TIWLabel [51]
    Left = 534
    Top = 347
    Width = 46
    Height = 16
    OnHTMLTag = alinhar
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
    FriendlyName = 'IWLabel1'
    Caption = 'Vendas'
  end
  object qtdev11: TIWLabel [52]
    Left = 534
    Top = 369
    Width = 46
    Height = 16
    OnHTMLTag = alinhar
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
    FriendlyName = 'IWLabel1'
    Caption = 'Vendas'
  end
  object qtdev12: TIWLabel [53]
    Left = 534
    Top = 391
    Width = 46
    Height = 16
    OnHTMLTag = alinhar
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
    FriendlyName = 'IWLabel1'
    Caption = 'Vendas'
  end
  object IWLabel2: TIWLabel [54]
    Left = 602
    Top = 152
    Width = 25
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
    FriendlyName = 'IWLabel1'
    Caption = 'Mes'
  end
  object m1: TIWLabel [55]
    Left = 602
    Top = 168
    Width = 25
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
    FriendlyName = 'IWLabel1'
    Caption = 'Mes'
  end
  object m2: TIWLabel [56]
    Left = 602
    Top = 190
    Width = 25
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
    FriendlyName = 'IWLabel1'
    Caption = 'Mes'
  end
  object m3: TIWLabel [57]
    Left = 602
    Top = 212
    Width = 25
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
    FriendlyName = 'IWLabel1'
    Caption = 'Mes'
  end
  object m4: TIWLabel [58]
    Left = 602
    Top = 230
    Width = 25
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
    FriendlyName = 'IWLabel1'
    Caption = 'Mes'
  end
  object m5: TIWLabel [59]
    Left = 602
    Top = 252
    Width = 25
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
    FriendlyName = 'IWLabel1'
    Caption = 'Mes'
  end
  object m6: TIWLabel [60]
    Left = 602
    Top = 274
    Width = 25
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
    FriendlyName = 'IWLabel1'
    Caption = 'Mes'
  end
  object m9: TIWLabel [61]
    Left = 602
    Top = 336
    Width = 25
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
    FriendlyName = 'IWLabel1'
    Caption = 'Mes'
  end
  object m8: TIWLabel [62]
    Left = 602
    Top = 314
    Width = 25
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
    FriendlyName = 'IWLabel1'
    Caption = 'Mes'
  end
  object m7: TIWLabel [63]
    Left = 602
    Top = 292
    Width = 25
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
    FriendlyName = 'IWLabel1'
    Caption = 'Mes'
  end
  object m12: TIWLabel [64]
    Left = 602
    Top = 402
    Width = 25
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
    FriendlyName = 'IWLabel1'
    Caption = 'Mes'
  end
  object m11: TIWLabel [65]
    Left = 602
    Top = 380
    Width = 25
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
    FriendlyName = 'IWLabel1'
    Caption = 'Mes'
  end
  object m10: TIWLabel [66]
    Left = 602
    Top = 358
    Width = 25
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
    FriendlyName = 'IWLabel1'
    Caption = 'Mes'
  end
  object BTN_L_ESTOQUE: TIWButton [67]
    Left = 199
    Top = 512
    Width = 113
    Height = 25
    Css = 'form-control'
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderVisibility = False
    StyleRenderOptions.RenderStatus = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Caption = 'Listagem Estoque SHOW'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'total_estoque'
    TabOrder = 23
    OnAsyncClick = BTN_L_ESTOQUEAsyncClick
  end
  object rb_exp_pdf: TIWRadioButton [68]
    Left = 360
    Top = 512
    Width = 49
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
    Caption = 'PDF'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RawText = False
    Group = 'no group'
    Value = 'rb_exp_pdf'
    FriendlyName = 'rb_exp_pdf'
    SubmitOnAsyncEvent = True
  end
  object rb_exp_xls: TIWRadioButton [69]
    Left = 360
    Top = 529
    Width = 49
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
    Caption = 'Excel'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RawText = False
    Group = 'no group'
    Value = 'rb_exp_pdf'
    FriendlyName = 'rb_exp_pdf'
    SubmitOnAsyncEvent = True
  end
  object BTN_EXP_ESTOQUE: TIWButton [70]
    Left = 199
    Top = 543
    Width = 113
    Height = 25
    Css = 'form-control'
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderVisibility = False
    StyleRenderOptions.RenderStatus = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Caption = 'Exp. Estoque'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'total_estoque'
    TabOrder = 25
    OnAsyncClick = BTN_EXP_ESTOQUEAsyncClick
  end
  object combo_exp_estoque: TIWComboBox [71]
    Left = 422
    Top = 512
    Width = 158
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
    TabOrder = 26
    ItemIndex = 0
    Items.Strings = (
      'Exportar para PDF-Tela=1'
      'Esportar para PDF-Arquivo=2'
      'Exportar para Excel-Arquivo=3')
    FriendlyName = 'combo_exp_estoque'
    NoSelectionText = '-- No Selection --'
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
  object modal_vendas: TIWModalWindow
    Left = 48
    Top = 504
  end
  object db_l_estoque: TfrxDBDataset
    UserName = 'listagem_estoque'
    CloseDataSource = False
    DataSet = q_estoque
    BCDToCurrency = False
    Left = 56
    Top = 448
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
    Top = 448
  end
  object r_l_estoque: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44461.072993472200000000
    ReportOptions.LastChange = 44558.141241261580000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 128
    Top = 504
    Datasets = <
      item
        DataSet = db_l_estoque
        DataSetName = 'listagem_estoque'
      end>
    Variables = <
      item
        Name = ' Variaveis locais'
        Value = Null
      end
      item
        Name = 'empresa'
        Value = #39'Em Branco'#39
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
        Name = 'tot_qtde'
        Value = ''
      end
      item
        Name = 'tot_custo'
        Value = ''
      end
      item
        Name = 'tot_geral'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = db_l_estoque
        DataSetName = 'listagem_estoque'
        RowCount = 0
        object TableObject1: TfrxTableObject
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = -1.779530000000000000
          object TableColumn1: TfrxTableColumn
            Width = 116.683997619048000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn13: TfrxTableColumn
            Width = 240.683997619048000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn14: TfrxTableColumn
            Width = 131.683997619048000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn15: TfrxTableColumn
            Width = 51.683997619048300000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn16: TfrxTableColumn
            Width = 85.683997619048300000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn17: TfrxTableColumn
            Width = 84.683997619048300000
            MaxWidth = 75.590600000000000000
          end
          object TableRow1: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell12: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'COD_ITEM'
              DataSet = db_l_estoque
              DataSetName = 'listagem_estoque'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[listagem_estoque."COD_ITEM"]')
              ParentFont = False
            end
            object TableCell13: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'DESCRICAO'
              DataSet = db_l_estoque
              DataSetName = 'listagem_estoque'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[listagem_estoque."DESCRICAO"]')
              ParentFont = False
            end
            object TableCell14: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'GRUPO'
              DataSet = db_l_estoque
              DataSetName = 'listagem_estoque'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[listagem_estoque."GRUPO"]')
              ParentFont = False
            end
            object TableCell15: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'QTDE'
              DataSet = db_l_estoque
              DataSetName = 'listagem_estoque'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '[listagem_estoque."QTDE"]')
              ParentFont = False
            end
            object TableCell16: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'CUSTO_CONTABIL'
              DataSet = db_l_estoque
              DataSetName = 'listagem_estoque'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                '[listagem_estoque."CUSTO_CONTABIL"]')
              ParentFont = False
            end
            object TableCell17: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'TOTAL'
              DataSet = db_l_estoque
              DataSetName = 'listagem_estoque'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                '[listagem_estoque."TOTAL"]')
              ParentFont = False
            end
          end
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 20.897650000000000000
        Top = 151.181200000000000000
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
            Width = 240.683997619048000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn9: TfrxTableColumn
            Width = 131.683997619048000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn10: TfrxTableColumn
            Width = 51.683997619048300000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn11: TfrxTableColumn
            Width = 85.683997619048300000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn12: TfrxTableColumn
            Width = 84.683997619048300000
            MaxWidth = 75.590600000000000000
          end
          object TableRow2: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell6: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_l_estoque
              DataSetName = 'listagem_estoque'
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
              DataSet = db_l_estoque
              DataSetName = 'listagem_estoque'
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
              DataSet = db_l_estoque
              DataSetName = 'listagem_estoque'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                'Grupo')
              ParentFont = False
            end
            object TableCell9: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_l_estoque
              DataSetName = 'listagem_estoque'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'Qtde.')
              ParentFont = False
            end
            object TableCell10: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_l_estoque
              DataSetName = 'listagem_estoque'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                'Custo')
              ParentFont = False
            end
            object TableCell11: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_l_estoque
              DataSetName = 'listagem_estoque'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                'Total')
              ParentFont = False
            end
          end
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 72.559060000000000000
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
            'Listagem do Estoque')
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
          Left = 309.921460000000000000
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
          Left = 457.323130000000000000
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
        object TotalPages: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 672.756340000000000000
          Top = 4.527520000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TotalPages#]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 3.747990000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
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
          Left = 653.858690000000000000
          Top = 4.527520000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
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
          Left = 578.268090000000000000
          Top = 4.527520000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
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
          Width = 241.889920000000000000
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
          Left = 351.275820000000000000
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
        object frxMemoView1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 504.457020000000000000
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
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 636.740570000000000000
          Top = 45.086580000000000000
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
          Left = 665.976810000000000000
          Top = 44.086580000000000000
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
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 24.897650000000000000
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
          Top = 22.897650000000000000
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
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 87.826840000000000000
          Top = 2.000000000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 146.401670000000000000
          Top = 2.000000000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 2.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Impress'#227'o:')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        object TableObject3: TfrxTableObject
          AllowVectorExport = True
          Left = 495.338900000000000000
          Top = 2.000000000000000000
          object TableColumn18: TfrxTableColumn
            Width = 49.683997619048000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn19: TfrxTableColumn
            Width = 86.683997619048000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn20: TfrxTableColumn
            Width = 84.683997619048000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow3: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell18: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_l_estoque
              DataSetName = 'listagem_estoque'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '[tot_qtde]')
              ParentFont = False
            end
            object TableCell19: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_l_estoque
              DataSetName = 'listagem_estoque'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                '[tot_custo]')
              ParentFont = False
            end
            object TableCell20: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = db_l_estoque
              DataSetName = 'listagem_estoque'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                '[tot_geral]')
              ParentFont = False
            end
          end
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 483.779840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Totais..........................................................' +
              '................................................................' +
              '...:')
          ParentFont = False
        end
      end
    end
  end
  object dv_pgto: TfrxDBDataset
    UserName = 'fomas_pgto'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 192
    Top = 440
  end
  object q_emp: TFDQuery
    Connection = DM.banco
    Left = 256
    Top = 448
  end
  object q_estoque: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select e.cod_item,'
      '       i.descricao,'
      '       g.descricao as grupo,'
      '       e.qtde,'
      '       to_char(ic.custo_contabil,'
      '               '#39'FM999G999G999D90'#39','
      '               '#39'nls_numeric_characters='#39#39',.'#39#39#39') custo_contabil,'
      '       to_char((ic.custo_contabil * e.qtde),'
      '               '#39'FM999G999G999D90'#39','
      '               '#39'nls_numeric_characters='#39#39',.'#39#39#39') as total'
      '  from estoque e, itens i, itens_grupo g, itens_custos ic'
      ' where e.cod_item = i.cod_item'
      '   and e.cod_fornecedor = i.cod_fornecedor'
      '   and i.cod_item = ic.cod_item'
      '   and i.cod_fornecedor = ic.cod_fornecedor'
      '   and ic.cod_empresa = e.cod_empresa'
      '   and i.cod_grupo = g.cod_grupo'
      'and e.cod_empresa= :cod_empresa'
      ' order by g.descricao')
    Left = 312
    Top = 448
    ParamData = <
      item
        Name = 'COD_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object q_estoqueCOD_ITEM: TStringField
      FieldName = 'COD_ITEM'
      Origin = 'COD_ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 25
    end
    object q_estoqueDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object q_estoqueGRUPO: TStringField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Required = True
      Size = 80
    end
    object q_estoqueQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 38
      Size = 2
    end
    object q_estoqueCUSTO_CONTABIL: TStringField
      FieldName = 'CUSTO_CONTABIL'
      Origin = 'CUSTO_CONTABIL'
      Size = 15
    end
    object q_estoqueTOTAL: TStringField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Size = 15
    end
  end
  object xls_exp: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 392
    Top = 456
  end
end
