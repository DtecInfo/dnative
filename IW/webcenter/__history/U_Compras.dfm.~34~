inherited FormCompras: TFormCompras
  OnCreate = IWAppFormCreate
  DesignLeft = 2
  DesignTop = 2
  object grid_compras_itens: TIWDBGrid [2]
    Left = 240
    Top = 32
    Width = 300
    Height = 57
    Css = ' '
    BorderColors.Color = clNone
    BorderColors.Light = clNone
    BorderColors.Dark = clNone
    BGColor = clWebLIME
    BorderSize = 1
    BorderStyle = tfDefault
    CellPadding = 0
    CellSpacing = 0
    Font.Color = clHotLight
    Font.Size = 10
    Font.Style = []
    FrameBuffer = 40
    Lines = tlAll
    UseFrame = True
    UseSize = True
    ScrollToCurrentRow = False
    Columns = <>
    DataSource = ds_compras_itens
    FooterRowCount = 0
    FriendlyName = 'grid_compras_itens'
    FromStart = True
    HighlightColor = clWebAQUA
    HighlightRows = False
    Options = [dgShowTitles]
    RefreshMode = rmAutomatic
    RowLimit = 0
    RollOver = True
    RowClick = True
    RollOverColor = clWebWHITE
    RowHeaderColor = clWebAQUA
    RowAlternateColor = clWebAQUA
    RowCurrentColor = clWebYELLOW
    TabOrder = -1
  end
  object q_datatable: TFDQuery
    Connection = DM.banco
    Left = 40
    Top = 104
  end
  object q_compras_itens: TFDQuery
    Connection = DM.banco
    SQL.Strings = (
      'select ci.cod_item        as "Cod item",'
      '       i.descricao        as "Item",'
      '       ci.qtde            as "Qtde.",'
      '       fe.descricao       as "Fornecedor",'
      '       ci.preco_unitario  as "Pre'#231'o Un.",'
      '       ci.preco_liq_final as "Pre'#231'o L'#237'q. Final",'
      '       ci.preco_contabil  as "Pre'#231'o Cont'#225'bil"'
      '  from compras_itens ci, itens i, fornecedor_estoque fe'
      ' where ci.cod_item = i.cod_item'
      '   and ci.cod_fornecedor = i.cod_fornecedor'
      '   and ci.cod_fornecedor = fe.cod_fornecedor '
      'and ci.cod_controle= :cod_controle'
      'and ci.cod_empresa= :cod_empresa')
    Left = 608
    Top = 16
    ParamData = <
      item
        Name = 'COD_CONTROLE'
        ParamType = ptInput
      end
      item
        Name = 'COD_EMPRESA'
        ParamType = ptInput
      end>
    object q_compras_itensCoditem: TStringField
      FieldName = 'Cod item'
      Origin = '"Cod item"'
      Required = True
      Size = 25
    end
    object q_compras_itensItem: TStringField
      FieldName = 'Item'
      Origin = '"Item"'
      Required = True
      Size = 100
    end
    object q_compras_itensQtde: TFMTBCDField
      FieldName = 'Qtde.'
      Origin = '"Qtde."'
      Precision = 38
      Size = 2
    end
    object q_compras_itensFornecedor: TStringField
      FieldName = 'Fornecedor'
      Origin = '"Fornecedor"'
      Size = 150
    end
    object q_compras_itensPreçoUn: TFMTBCDField
      FieldName = 'Pre'#231'o Un.'
      Origin = '"Pre'#231'o Un."'
      Precision = 38
      Size = 2
    end
    object q_compras_itensPreçoLíqFinal: TFMTBCDField
      FieldName = 'Pre'#231'o L'#237'q. Final'
      Origin = '"Pre'#231'o L'#237'q. Final"'
      Precision = 38
      Size = 2
    end
    object q_compras_itensPreçoContábil: TFMTBCDField
      FieldName = 'Pre'#231'o Cont'#225'bil'
      Origin = '"Pre'#231'o Cont'#225'bil"'
      Precision = 38
      Size = 2
    end
  end
  object ds_compras_itens: TDataSource
    DataSet = q_compras_itens
    Left = 608
    Top = 64
  end
  object q_geral: TFDQuery
    Connection = DM.banco
    Left = 96
    Top = 104
  end
  object q_aux: TFDQuery
    Connection = DM.banco
    Left = 40
    Top = 160
  end
  object q_aux2: TFDQuery
    Connection = DM.banco
    Left = 96
    Top = 160
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
    ReportOptions.LastChange = 44482.038434074070000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 192
    Top = 376
    Datasets = <
      item
        DataSet = db_compras_itens
        DataSetName = 'q_imp_compras_itens'
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
          Width = 83.149660000000000000
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
        DataSetName = 'q_imp_compras_itens'
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
              DataSetName = 'q_imp_compras_itens'
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[q_imp_compras_itens."COD_ITEM"]')
            end
            object TableCell2: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'DESCRICAO'
              DataSet = db_compras_itens
              DataSetName = 'q_imp_compras_itens'
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[q_imp_compras_itens."DESCRICAO"]')
            end
            object TableCell3: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'QTDE'
              DataSet = db_compras_itens
              DataSetName = 'q_imp_compras_itens'
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[q_imp_compras_itens."QTDE"]')
            end
            object TableCell4: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'FORNECEDOR'
              DataSet = db_compras_itens
              DataSetName = 'q_imp_compras_itens'
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[q_imp_compras_itens."FORNECEDOR"]')
            end
            object TableCell5: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'LOCACAO'
              DataSet = db_compras_itens
              DataSetName = 'q_imp_compras_itens'
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[q_imp_compras_itens."LOCACAO"]')
            end
            object TableCell26: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'LOCAL_ESTOQUE'
              DataSet = db_compras_itens
              DataSetName = 'q_imp_compras_itens'
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[q_imp_compras_itens."LOCAL_ESTOQUE"]')
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
              DataSetName = 'q_imp_compras_itens'
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
              DataSetName = 'q_imp_compras_itens'
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
              DataSetName = 'q_imp_compras_itens'
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
              DataSetName = 'q_imp_compras_itens'
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
              DataSetName = 'q_imp_compras_itens'
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
              DataSetName = 'q_imp_compras_itens'
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
    Left = 72
    Top = 376
  end
  object modal_romaneio: TIWModalWindow
    Left = 56
    Top = 496
  end
  object q_imp_compras_itens: TFDQuery
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
    Left = 192
    Top = 440
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
    object StringField1: TStringField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Size = 150
    end
    object FMTBCDField1: TFMTBCDField
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
    DataSet = q_imp_compras_itens
    Left = 72
    Top = 320
  end
  object db_compras_itens: TfrxDBDataset
    UserName = 'q_imp_compras_itens'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COD_ITEM=COD_ITEM'
      'DESCRICAO=DESCRICAO'
      'FORNECEDOR=FORNECEDOR'
      'QTDE=QTDE'
      'LOCAL_ESTOQUE=LOCAL_ESTOQUE'
      'LOCACAO=LOCACAO')
    DataSet = q_imp_compras_itens
    BCDToCurrency = False
    Left = 208
    Top = 312
  end
  object frxReportTableObject1: TfrxReportTableObject
    Left = 64
    Top = 432
  end
end
