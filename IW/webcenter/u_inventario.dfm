inherited form_inventario: Tform_inventario
  OnCreate = IWAppFormCreate
  DesignLeft = 2
  DesignTop = 2
  object BTN_INC_CONTAGEM: TIWButton [4]
    Left = 280
    Top = 16
    Width = 129
    Height = 25
    Caption = 'BTN_INC_CONTAGEM'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTN_INC_CONTAGEM'
    TabOrder = 4
  end
  object q_datatable: TFDQuery
    Connection = DM.banco
    Left = 56
    Top = 144
  end
  object q_geral: TFDQuery
    Connection = DM.banco
    Left = 120
    Top = 144
  end
  object q_aux: TFDQuery
    Connection = DM.banco
    Left = 56
    Top = 192
  end
end
