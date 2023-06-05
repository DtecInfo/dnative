object FrmPadrao: TFrmPadrao
  Left = 0
  Top = 0
  Width = 900
  Height = 588
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  LayoutMgr = IWTemplateProcessorHTML1
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 2
  DesignTop = 2
  object IWACAO: TIWEdit
    Left = 24
    Top = 47
    Width = 105
    Height = 21
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWACAO'
    SubmitOnAsyncEvent = True
    TabOrder = 0
    Text = 'IWACAO'
  end
  object IWBTNACAO: TIWButton
    Left = 24
    Top = 16
    Width = 105
    Height = 25
    Css = 'form-control'
    Caption = 'IWBTNACAO'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWBTNACAO'
    TabOrder = 1
    OnAsyncClick = IWBTNACAOAsyncClick
  end
  object edit_nova_senha: TIWEdit
    Left = 24
    Top = 74
    Width = 105
    Height = 21
    Css = 'form-control input-sm'
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWACAO'
    SubmitOnAsyncEvent = True
    TabOrder = 2
    DataType = stPassword
  end
  object BTN_TROCAR_SENHA: TIWButton
    Left = 24
    Top = 101
    Width = 105
    Height = 25
    Css = 'form-control'
    Caption = 'Mudar Senha'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWBTNACAO'
    TabOrder = 3
    OnAsyncClick = BTN_TROCAR_SENHAAsyncClick
  end
  object IWTemplateProcessorHTML1: TIWTemplateProcessorHTML
    MasterFormTag = False
    TagType = ttIntraWeb
    OnUnknownTag = IWTemplateProcessorHTML1UnknownTag
    MasterTemplate = 'Master.html'
    RenderStyles = False
    Left = 776
    Top = 464
  end
end
