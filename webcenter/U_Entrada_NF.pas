unit U_Entrada_NF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FrmPadrao, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, IWCompButton, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompEdit, IWHTMLTag, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, IWCompMemo, IWCompListbox,
  IWDBStdCtrls, IWBaseComponent, IWBaseHTMLComponent, IWBaseHTML40Component,
  IWCompExtCtrls, frxClass, frxExportBaseDialog, frxExportPDF,
  FireDAC.Phys.OracleDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  Datasnap.DBClient, FireDAC.Comp.UI, FireDAC.Phys, FireDAC.Phys.Oracle,
  frxDBSet, frxTableObject, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc,
  IWCompFileUploader, Xml.Win.msxmldom, Xml.omnixmldom, IWCompCheckbox ;

type
  TFormEntrada_Nf = class(TFrmPadrao)
    edit_numero: TIWEdit;
    edit_serie: TIWEdit;
    edit_emissao: TIWEdit;
    edit_fornecedor: TIWEdit;
    edit_chave_nfe: TIWEdit;
    btn_fornecedor: TIWButton;
    edit_bc_icms: TIWEdit;
    edit_valor_icms: TIWEdit;
    edit_outras: TIWEdit;
    edit_valor_icms_st: TIWEdit;
    edit_total_produtos: TIWEdit;
    edit_valor_frete: TIWEdit;
    edit_valor_seguro: TIWEdit;
    edit_Aliq_icms_st_item: TIWEdit;
    edit_desconto: TIWEdit;
    btn_valor_ipi: TIWEdit;
    edit_conhecimento: TIWEdit;
    edit_serie_conhecimento: TIWEdit;
    edit_total_conhecimento: TIWEdit;
    edit_bc_st: TIWEdit;
    edit_perc_desc: TIWEdit;
    edit_total_nf: TIWEdit;
    edit_nome_fornecedor: TIWEdit;
    q_datatable: TFDQuery;
    edit_uf_fornecedor: TIWEdit;
    BTN_LANCAR_ITEM: TIWButton;
    edit_base_icms_st_item: TIWEdit;
    edit_aliq_icms_item: TIWEdit;
    edit_base_icms_item: TIWEdit;
    IWEdit1: TIWEdit;
    edit_cod_produto: TIWEdit;
    edit_qtde_itens: TIWEdit;
    edit_preco_unitario_item: TIWEdit;
    edit_perc_desc_item: TIWEdit;
    edit_valor_desc_item: TIWEdit;
    btn_perc_ipi_item: TIWEdit;
    edit_bc_ipi_item: TIWEdit;
    edit_preco_liquido_item: TIWEdit;
    edit_descricao_item: TIWEdit;
    edit_ncm_item: TIWEdit;
    edit_fornecedor_item: TIWDBLookupComboBox;
    combo_cfop_item: TIWDBLookupComboBox;
    q_naturezas: TFDQuery;
    ds_q_naturezas: TDataSource;
    q_naturezasNATUREZA: TStringField;
    q_naturezasCOD_NATUREZA: TStringField;
    edit_valor_icms_item: TIWEdit;
    edit_valor_icms_st_item: TIWEdit;
    edit_md_cod_item: TIWEdit;
    edit_md_descricao: TIWEdit;
    combo_md_fornecedor: TIWDBLookupComboBox;
    q_fornecedor: TFDQuery;
    q_fornecedorCOD_FORNECEDOR: TFMTBCDField;
    q_fornecedorDESCRICAO: TStringField;
    ds_fornecedor_estoque: TDataSource;
    combo_md_marca_item: TIWDBLookupComboBox;
    q_marca_itens: TFDQuery;
    q_marca_itensCOD_MARCA: TFMTBCDField;
    q_marca_itensDESCRICAO: TStringField;
    ds_marcas: TDataSource;
    combo_md_grupo: TIWDBLookupComboBox;
    q_grupos: TFDQuery;
    q_gruposCOD_GRUPO: TFMTBCDField;
    q_gruposDESCRICAO: TStringField;
    ds_grupos: TDataSource;
    edit_md_preco_venda: TIWEdit;
    combo_tributacao_item: TIWComboBox;
    combo_tipo_item: TIWComboBox;
    combo_origem_item: TIWComboBox;
    edit_md_comp_item: TIWEdit;
    combo_md_un_item: TIWComboBox;
    edit_md_ncm_item: TIWEdit;
    BTN_CAD_ITEM: TIWButton;
    BTN_CADASTRAR_ITEM: TIWButton;
    q_busca_fornecedor: TFDQuery;
    q_busca_fornecedorCOD_FORNECEDOR: TFMTBCDField;
    q_busca_fornecedorDESCRICAO: TStringField;
    q_busca_fornecedorCOD_EMPRESA: TFMTBCDField;
    ds_q_busca_fornecedor: TDataSource;
    BTN_PESQUISARP: TIWButton;
    q_local_estoque: TFDQuery;
    q_local_estoqueCOD_LOCAL: TFMTBCDField;
    q_local_estoqueDESCRICAO: TStringField;
    q_local_estoqueCOD_EMPRESA: TFMTBCDField;
    ds_q_local_estoque: TDataSource;
    combo_local_estoque: TIWDBLookupComboBox;
    combo_sugestao_loc: TIWDBLookupComboBox;
    q_sugestao_loc: TFDQuery;
    q_sugestao_locLOCACAO: TStringField;
    ds_sugestao_loc: TDataSource;
    edit_locacao_item: TIWEdit;
    edit_valor_ipi_item: TIWEdit;
    BTN_PESQUISAR_L: TIWButton;
    combo_pesquisar_l: TIWDBLookupComboBox;
    tot_produtos_capa: TIWEdit;
    tot_ipi_capa: TIWEdit;
    tot_bc_icms_capa: TIWEdit;
    tot_valor_icms_capa: TIWEdit;
    tot_bc_icms_st_capa: TIWEdit;
    tot_valor_icms_st_capa: TIWEdit;
    tot_capa: TIWEdit;
    tot_produtos_item: TIWEdit;
    tot_ipi_item: TIWEdit;
    tot_bc_icms_item: TIWEdit;
    tot_valor_icms_item: TIWEdit;
    tot_bc_icms_st_item: TIWEdit;
    tot_valor_icms_st_item: TIWEdit;
    tot_item: TIWEdit;
    btn_recalculo: TIWButton;
    BTN_GRAVAR_DADOS: TIWButton;
    combo_cst_itens: TIWComboBox;
    q_temp_itens: TFDQuery;
    q_temp_itensCOD_ITEM: TStringField;
    q_temp_itensDESCRICAO: TStringField;
    q_temp_itensPRECO_UNITARIO: TBCDField;
    q_temp_itensQTDE: TBCDField;
    q_temp_itensVALOR_TOTAL: TBCDField;
    q_temp_itensNCM: TStringField;
    q_temp_itensCFOP: TFMTBCDField;
    q_temp_itensBC_ICMS: TBCDField;
    q_temp_itensALIQ_ICMS: TFMTBCDField;
    q_temp_itensVALOR_ICMS: TBCDField;
    q_temp_itensBC_ICMS_ST: TBCDField;
    q_temp_itensALIQ_ICMS_ST: TFMTBCDField;
    q_temp_itensVALOR_ICMS_ST: TBCDField;
    q_temp_itensVAL_DESC: TBCDField;
    q_temp_itensCOD_FORNECEDOR: TFMTBCDField;
    q_temp_itensPERC_DESC: TFMTBCDField;
    q_temp_itensBC_IPI: TBCDField;
    q_temp_itensALIQ_IPI: TFMTBCDField;
    q_temp_itensVALOR_IPI: TBCDField;
    q_temp_itensNF_COMPRA: TFMTBCDField;
    q_temp_itensSERIE: TStringField;
    q_temp_itensCOD_EMPRESA: TFMTBCDField;
    q_temp_itensFORNECEDOR: TStringField;
    q_temp_itensSEQ: TFMTBCDField;
    q_temp_itensLOCACAO: TStringField;
    q_temp_itensCOD_LOCAL_ESTOQUE: TFMTBCDField;
    q_temp_itensCST: TStringField;
    r_romaneio: TfrxReport;
    pdf_exp: TfrxPDFExport;
    modal_romaneio: TIWModalWindow;
    q_compras_itens: TFDQuery;
    ds_cp_itens: TDataSource;
    db_compras_itens: TfrxDBDataset;
    BTN_IMPRIMIR: TIWButton;
    frxReportTableObject1: TfrxReportTableObject;
    BTN_IMPRIMIR_SIM: TIWButton;
    BTN_IMPRIMIR_NAO: TIWButton;
    q_geral: TFDQuery;
    q_aux: TFDQuery;
    q_temp_itensFRETE: TFMTBCDField;
    q_temp_itensOUTRAS: TFMTBCDField;
    q_temp_itensRATEIO_FRETE: TFMTBCDField;
    q_temp_itensSEGUROS: TFMTBCDField;
    BTN_CANCELAR_ENTRADA: TIWButton;
    q_compras_itensCOD_ITEM: TStringField;
    q_compras_itensDESCRICAO: TStringField;
    q_compras_itensFORNECEDOR: TStringField;
    q_compras_itensQTDE: TFMTBCDField;
    q_compras_itensLOCAL_ESTOQUE: TStringField;
    q_compras_itensLOCACAO: TStringField;
    xml: TXMLDocument;
    INTERFACEXML: TIWButton;
    IWFile: TIWFileUploader;
    NFE: TXMLDocument;
    EDIT_COD_CONTROLE_ITEM: TIWEdit;
    edit_cod_barras: TIWEdit;
    EDIT_OP_CAD: TIWEdit;
    combo_cfop_trib: TIWDBLookupComboBox;
    combo_cfop_isentas: TIWDBLookupComboBox;
    combo_cfop_st: TIWDBLookupComboBox;
    q_nat_trib: TFDQuery;
    q_nat_isentas: TFDQuery;
    q_nat_st: TFDQuery;
    ds_q_nat_isentas: TDataSource;
    ds_q_nat_trib: TDataSource;
    ds_q_nat_st: TDataSource;
    q_nat_isentasCOD_NATUREZA: TStringField;
    q_nat_isentasNATUREZA: TStringField;
    q_nat_tribCOD_NATUREZA: TStringField;
    q_nat_tribNATUREZA: TStringField;
    q_nat_stCOD_NATUREZA: TStringField;
    q_nat_stNATUREZA: TStringField;
    BTN_APLICAR_CFOP: TIWButton;
    BTN_REFRESH: TIWButton;
    edit_emissao_2: TIWEdit;
    combo_local_estoque2: TIWDBLookupComboBox;
    BTN_APLICAR_LOCACAO: TIWButton;
    combo_tipo_entrada: TIWComboBox;
    CK_ITENS_OK: TIWCheckBox;
    combo_xml_status: TIWComboBox;
    procedure edit_bc_icmsHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_bc_stHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_valor_icmsHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_outrasHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_valor_icms_stHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_total_produtosHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_valor_freteHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_valor_seguroHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_descontoHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure btn_valor_ipiHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_total_conhecimentoHTMLTag(ASender: TObject;
      ATag: TIWHTMLTag);
    procedure edit_total_nfHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure IWAppFormCreate(Sender: TObject);
    procedure btn_fornecedorAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure IWBTNACAOAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure BTN_LANCAR_ITEMAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure edit_Aliq_icms_st_itemHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_base_icms_st_itemHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_aliq_icms_itemHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_base_icms_itemHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_cod_produtoHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_qtde_itensHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_preco_unitario_itemHTMLTag(ASender: TObject;
      ATag: TIWHTMLTag);
    procedure edit_perc_desc_itemHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_valor_desc_itemHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure btn_perc_ipi_itemHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_bc_ipi_itemHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_preco_liquido_itemHTMLTag(ASender: TObject;
      ATag: TIWHTMLTag);
    procedure edit_descricao_itemHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_ncm_itemHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure IWAppFormShow(Sender: TObject);
    procedure edit_outrasAsyncExit(Sender: TObject; EventParams: TStringList);
    procedure edit_valor_icms_stAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_total_produtosAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_valor_freteAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_valor_seguroAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_descontoAsyncExit(Sender: TObject; EventParams: TStringList);
    procedure btn_valor_ipiAsyncExit(Sender: TObject; EventParams: TStringList);
    procedure edit_perc_descAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure BTN_CADASTRAR_ITEMAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure BTN_CAD_ITEMAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure BTN_CAD_ITEMClick(Sender: TObject);
    procedure edit_cod_produtoAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure edit_cod_produtoAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure BTN_PESQUISARPAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure combo_local_estoqueAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure combo_sugestao_locAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure edit_preco_unitario_itemAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_qtde_itensAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_perc_desc_itemAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_valor_desc_itemAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure btn_perc_ipi_itemAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_valor_icms_st_itemAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure BTN_PESQUISAR_LAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure combo_pesquisar_lAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure btn_recalculoAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure BTN_GRAVAR_DADOSAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure BTN_IMPRIMIR_SIMClick(Sender: TObject);
    procedure BTN_IMPRIMIR_NAOClick(Sender: TObject);
    procedure modal_romaneioAsyncClose(Sender: TObject;
      EventParams: TStringList);
    procedure BTN_IMPRIMIR_SIMAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure BTN_CANCELAR_ENTRADAClick(Sender: TObject);
    procedure edit_aliq_icms_itemAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_base_icms_itemAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_cod_produtoAsyncKeyPress(Sender: TObject;
      EventParams: TStringList);
    procedure edit_qtde_itensAsyncKeyPress(Sender: TObject;
      EventParams: TStringList);
    procedure edit_preco_unitario_itemAsyncKeyPress(Sender: TObject;
      EventParams: TStringList);
    procedure edit_perc_desc_itemAsyncKeyPress(Sender: TObject;
      EventParams: TStringList);
    procedure edit_valor_desc_itemAsyncKeyPress(Sender: TObject;
      EventParams: TStringList);
    procedure btn_perc_ipi_itemAsyncKeyPress(Sender: TObject;
      EventParams: TStringList);
    procedure edit_fornecedor_itemAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure edit_base_icms_itemAsyncKeyPress(Sender: TObject;
      EventParams: TStringList);
    procedure edit_aliq_icms_itemAsyncKeyPress(Sender: TObject;
      EventParams: TStringList);
    procedure edit_base_icms_st_itemAsyncKeyPress(Sender: TObject;
      EventParams: TStringList);
    procedure edit_Aliq_icms_st_itemAsyncKeyPress(Sender: TObject;
      EventParams: TStringList);
    procedure INTERFACEXMLAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWFileAsyncUploadSuccess(Sender: TObject;
      EventParams: TStringList);
    procedure IWFileAsyncUploadCompleted(Sender: TObject; var DestPath,
      FileName: string; var SaveFile, Overwrite: Boolean);
    procedure BTN_APLICAR_CFOPAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure BTN_REFRESHClick(Sender: TObject);
    procedure edit_emissaoHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure BTN_APLICAR_LOCACAOAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure tot_produtos_capaHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure tot_ipi_capaHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure tot_valor_icms_capaHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure tot_valor_icms_st_capaHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure tot_bc_icms_st_capaHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure tot_capaHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure totbccapa(ASender: TObject; ATag: TIWHTMLTag);
    procedure combo_tipo_entradaAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure CK_ITENS_OKAsyncChange(Sender: TObject; EventParams: TStringList);
  private
    { Private declarations }
     procedure TBClientes(aParams: TStrings; out aResult: string);
     procedure TBComprasItens(aParams: TStrings; out aResult: string);
     procedure TBPesquisaP(aParams: TStrings; out aResult: string);
     procedure TBLocacao(aParams: TStrings; out aResult: string);
     procedure TBxml(aParams: TStrings; out aResult: string);
     procedure TBItensXml(aParams: TStrings; out aResult: string);


     procedure atu_grid_itens;
     procedure calcular_capa;
     function  ifnull(campo : string):string;
     procedure cad_item;
     function  GET_DADOS_ITEM(COD_PRODUTO : STRING):STRING;
     procedure get_fornecedor;
     procedure calcular_itens;
     function  get_recalculo : string;
     procedure inserir_compra;
     function  verificar_capa:boolean;
     function  get_custo_item(p_seq : integer): real;
     procedure verifica_impressao;
     procedure imprimir_mapa(p_cod_controle:integer);
     function  get_rateio_despesa(p_despesa:real;p_total_produto : real) : real;
     procedure limpar_itens;
     procedure calc_icms_item;
     procedure lancar_itens;
     procedure carregar_xml(p_id : string);
     procedure tbxml_reload;



  public
    { Public declarations }
  end;

var
  FormEntrada_Nf: TFormEntrada_Nf;

implementation

{$R *.dfm}

uses U_DM, SweetAlerts, UserSessionUnit, System.AnsiStrings,
  IWCompRadioButton, ServerController;

procedure TFormEntrada_Nf.atu_grid_itens;
begin

WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBComprasItens").DataTable().ajax.reload();');
end;

procedure TFormEntrada_Nf.BTN_APLICAR_CFOPAsyncClick(Sender: TObject;
  EventParams: TStringList);
  var
  v_cod_nat1,v_grupo1,v_cod_nat2,v_grupo2,v_cod_nat3,v_grupo3,v_erro : string;
begin
  inherited;

  v_erro:='N';

  v_cod_nat1:= copy(combo_cfop_trib.KeyValue,1,4);
  v_grupo1  := copy(combo_cfop_trib.KeyValue,5,2);

  v_cod_nat2:= copy(combo_cfop_isentas.KeyValue,1,4);
  v_grupo2  := copy(combo_cfop_isentas.KeyValue,5,2);

  v_cod_nat3:= copy(combo_cfop_st.KeyValue,1,4);
  v_grupo3  := copy(combo_cfop_st.KeyValue,5,2);

  try

    controller.DM.banco.StartTransaction;

     if (combo_cfop_trib.ItemIndex > -1) and (combo_cfop_isentas.ItemIndex >-1 ) and (combo_cfop_st.ItemIndex>-1) then
     begin
      //Itens Trib
        q_geral.Close;
        q_geral.SQL.Clear;
        q_geral.SQL.Add(' update interface_itens set cod_natureza= '+ v_cod_nat1);
        q_geral.SQL.Add(' ,grupo= '+ v_grupo1);
        q_geral.SQL.Add('  where cod_controle= '+ EDIT_COD_CONTROLE_ITEM.Text );
        q_geral.SQL.Add('  and cod_empresa= '+ inttostr(controller.xcod_empresa) );
        q_geral.SQL.Add(' and cst=''00'' ');
        q_geral.ExecSQL;




        //Itens Isentos
        q_geral.Close;
        q_geral.SQL.Clear;
        q_geral.SQL.Add(' update interface_itens set cod_natureza= '+ v_cod_nat2);
        q_geral.SQL.Add(' ,grupo= '+ v_grupo2);
        q_geral.SQL.Add('  where cod_controle= '+ EDIT_COD_CONTROLE_ITEM.Text );
        q_geral.SQL.Add('  and cod_empresa= '+ inttostr(controller.xcod_empresa) );
        q_geral.SQL.Add(' and cst=''40'' ');
        q_geral.ExecSQL;



        //Itens ST
        q_geral.Close;
        q_geral.SQL.Clear;
        q_geral.SQL.Add(' update interface_itens set cod_natureza= '+ v_cod_nat3);
        q_geral.SQL.Add(' ,grupo= '+ v_grupo3);
        q_geral.SQL.Add('  where cod_controle= '+ EDIT_COD_CONTROLE_ITEM.Text );
        q_geral.SQL.Add('  and cod_empresa= '+ inttostr(controller.xcod_empresa) );
        q_geral.SQL.Add('  and cst <> ''00'' ');
        q_geral.SQL.Add('  and cst <> ''40'' ');
        q_geral.SQL.Add('  and cst <> ''41'' ');
        q_geral.ExecSQL;

        addtoinitproc(swalSuccess('Confirma��o','Naturezas gravadas com sucesso!'));

         controller.DM.banco.Commit;
         WebApplication.CallBackResponse.AddJavaScriptToExecute('$("#TBItensXml").DataTable().ajax.reload();');
      end
      else
      begin

        addtoinitproc(swalError('Erro!','Favor Selecionar as tr�s naturezas!'));

      end;
  except

  on e: Exception  do
    begin
      controller.DM.banco.Rollback;
      addtoinitproc(swalError('Erro','Erro ao tentar gravar CFOP:'+ e.Message));

    end;


  end;






end;

procedure TFormEntrada_Nf.BTN_APLICAR_LOCACAOAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  //verifica se selecionou local estoque

  if combo_local_estoque2.KeyValue > -1 then
  begin

        //Busca produtos
        q_geral.Close;
        q_geral.SQL.Clear;
        q_geral.sql.add('select i.cod_produto from interface_itens i');
        q_geral.sql.add('where i.cod_controle= :cod_controle');
        q_geral.sql.add('and i.cod_empresa= :cod_empresa');
        q_geral.ParamByName('cod_empresa').AsInteger := controller.xcod_empresa;
        q_geral.ParamByName('cod_controle').AsInteger := strtoint(EDIT_COD_CONTROLE_ITEM.Text);
        q_geral.Open();

        q_geral.First;

      try
        while not q_geral.Eof do
        begin

           q_aux.Close;
           q_aux.SQL.Clear;
           q_aux.sql.add('SELECT A.LOCACAO');
           q_aux.sql.add('FROM LOCACAO A, ITENS B');
           q_aux.sql.add('WHERE A.COD_ITEM = B.COD_ITEM');
           q_aux.sql.add('AND A.COD_FORNECEDOR = B.COD_FORNECEDOR');
           q_aux.sql.add('AND B.CODIGO_BARRAS = :COD_BARRAS');
           q_aux.sql.add('');
           q_aux.sql.add('AND COD_LOCAL_ESTOQUE = :COD_LOCAL_ESTOQUE');
           q_aux.sql.add('AND COD_EMPRESA = :COD_EMPRESA');

           q_aux.ParamByName('cod_barras').AsString := q_geral.FieldByName('cod_produto').AsString;
           q_aux.ParamByName('cod_local_estoque').AsInteger := combo_local_estoque2.KeyValue;
           q_aux.ParamByName('cod_empresa').AsInteger := controller.xcod_empresa;
           q_aux.Open();

           if q_aux.RecordCount>0 then
           begin

           //a
            q_aux.First;
            controller.DM.banco.ExecSQL(' update interface_itens set locacao='+ quotedstr(q_aux.FieldByName('locacao').AsString) +
                                          ', cod_local_estoque='+ combo_local_estoque2.KeyValue + ' where ' +
                                          ' cod_controle='+ EDIT_COD_CONTROLE_ITEM.Text + ' and cod_empresa=' +
                                          inttostr(controller.xcod_empresa) + ' and cod_produto=' +
                                          quotedstr(q_geral.FieldByName('cod_produto').AsString) );

           end
           else
           begin
            controller.DM.banco.ExecSQL(' update interface_itens set locacao=''PADRAO'' ' +
                                          ', cod_local_estoque='+ combo_local_estoque2.KeyValue + ' where ' +
                                          ' cod_controle='+ EDIT_COD_CONTROLE_ITEM.Text + ' and cod_empresa=' +
                                          inttostr(controller.xcod_empresa) + ' and cod_produto=' +
                                          quotedstr(q_geral.FieldByName('cod_produto').AsString) );

           end;


        q_geral.Next;
        end;

        addtoinitproc(swalSuccess('Confirma��o','Loca��es definidas com sucesso!'));
        WebApplication.CallBackResponse.AddJavaScriptToExecute('$("#TBItensXml").DataTable().ajax.reload();');



      except
       on e:Exception do
       begin

         addtoinitproc(swalError('Erro','Erro ao tentar sugest�o:'+e.Message));

       end;

      end;
  end
  else
  begin
    addtoinitproc(swalAlert('Alerta!','Favor Selecionar um local Estoque v�lido'));
  end;




end;

procedure TFormEntrada_Nf.BTN_CADASTRAR_ITEMAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  edit_op_cad.Text:='MANUAL';
  edit_md_cod_item.Text:='';
  edit_md_descricao.Text:='';
  combo_md_fornecedor.ItemIndex:=-1;
  combo_md_marca_item.ItemIndex:=-1;
  combo_md_grupo.ItemIndex:=-1;
  combo_origem_item.ItemIndex:=-1;
  combo_tributacao_item.ItemIndex:=-1;
  combo_md_un_item.ItemIndex:=-1;
  edit_md_ncm_item.Text:='';
  edit_cod_barras.Text:='';

WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDCadastroP'').modal(''show'');');
end;

procedure TFormEntrada_Nf.BTN_CAD_ITEMAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;


  CAD_ITEM;


end;

procedure TFormEntrada_Nf.BTN_CAD_ITEMClick(Sender: TObject);
begin
  inherited;
cad_item;
end;

procedure TFormEntrada_Nf.BTN_CANCELAR_ENTRADAClick(Sender: TObject);
begin
  inherited;
controller.AcaoMenu('FormCompras');
end;

procedure TFormEntrada_Nf.btn_fornecedorAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDClientes'').modal(''show'');');
end;

procedure TFormEntrada_Nf.BTN_GRAVAR_DADOSAsyncClick(Sender: TObject;
  EventParams: TStringList);
  var
  v_msg : string;
begin
  inherited;

 if verificar_capa then
 begin

      v_msg := get_recalculo;

      if v_msg='' then
      begin

        inserir_compra;

      end
      else
      begin

        addtoinitproc(swalError('Erro','Dados da NF N�o est�o OK!-'+v_msg));

      end;
 end
 else
 addtoinitproc(swalAlert('Alerta!','Existem dados obrigat�rios na Capa que n�o foram preenchidos. Verifique!'));



end;

procedure TFormEntrada_Nf.BTN_IMPRIMIR_NAOClick(Sender: TObject);
begin
  inherited;
  controller.AcaoMenu('FormCompras');

end;

procedure TFormEntrada_Nf.BTN_IMPRIMIR_SIMAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  imprimir_mapa(controller.xcod_controle);
end;

procedure TFormEntrada_Nf.BTN_IMPRIMIR_SIMClick(Sender: TObject);
begin
  inherited;

 imprimir_mapa(controller.xcod_controle);

end;

procedure TFormEntrada_Nf.BTN_LANCAR_ITEMAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

 lancar_itens;

end;

procedure TFormEntrada_Nf.btn_perc_ipi_itemAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
calcular_itens;
end;

procedure TFormEntrada_Nf.btn_perc_ipi_itemAsyncKeyPress(Sender: TObject;
  EventParams: TStringList);
var lKey: char;
begin
  inherited;

  lKey := Chr(StrToInt(EventParams.Values['which']));

  if lKey = #13 then
  begin
    combo_local_estoque.SetFocus;
  end;

end;

procedure TFormEntrada_Nf.btn_perc_ipi_itemHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.BTN_PESQUISAR_LAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

    WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDLocacao'').modal(''show'');');

end;

procedure TFormEntrada_Nf.BTN_PESQUISARPAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDPesquisaP2'').modal(''show'');');
end;

procedure TFormEntrada_Nf.btn_recalculoAsyncClick(Sender: TObject;
  EventParams: TStringList);
  var
  v_msg : string;
begin
  inherited;

  v_msg := get_recalculo;

  if v_msg='' then
  begin

   addtoinitproc(swalSuccess('Confirma��o','Dados da NF est�o OK!'));

  end
  else
  begin

    addtoinitproc(swalError('Erro','Dados da NF N�o est�o OK!-'+v_msg));

  end;


end;

procedure TFormEntrada_Nf.BTN_REFRESHClick(Sender: TObject);
var a:string;
begin
  inherited;



end;

procedure TFormEntrada_Nf.btn_valor_ipiAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
calcular_capa;
end;

procedure TFormEntrada_Nf.btn_valor_ipiHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="R$ 0,00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.cad_item;
begin


  q_datatable.Close;
  q_datatable.SQL.Clear;
  q_datatable.sql.add('insert into itens');
  q_datatable.sql.add('(ID,');
  q_datatable.sql.add('cod_fornecedor,');
  q_datatable.sql.add('cod_grupo,');
  q_datatable.sql.add('cod_item,');
  q_datatable.sql.add('cod_marca,');
  q_datatable.sql.add('comprimento,');
  q_datatable.sql.add('descricao,');
  q_datatable.sql.add('ncm,');
  q_datatable.sql.add('preco_venda,');
  q_datatable.sql.add('tipo_item,');
  q_datatable.sql.add('tributacao,');
  q_datatable.sql.add('un,');
  q_datatable.sql.add(' codigo_barras)');

  q_datatable.sql.add('values');

  q_datatable.sql.add('(SEQ_CONTROLE_ITENS.NEXTVAL,');
  q_datatable.sql.add(' :cod_fornecedor,');
  q_datatable.sql.add(':cod_grupo,');
  q_datatable.sql.add(':cod_item,');
  q_datatable.sql.add(':cod_marca,');
  q_datatable.sql.add(':comprimento,');
  q_datatable.sql.add(':descricao,');
  q_datatable.sql.add(':ncm,');
  q_datatable.sql.add(':preco_venda,');
  q_datatable.sql.add(':tipo_item,');
  q_datatable.sql.add(':tributacao,');
  q_datatable.sql.add(':un,');
  q_datatable.sql.add(':codigo_barras)');

  q_datatable.ParamByName('cod_fornecedor').Value:= combo_md_fornecedor.KeyValue;
  q_datatable.ParamByName('cod_grupo').Value:=combo_md_grupo.KeyValue;
  q_datatable.ParamByName('cod_item').AsString:=edit_md_cod_item.Text;
  q_datatable.ParamByName('cod_marca').Value:=combo_md_marca_item.KeyValue;
  q_datatable.ParamByName('comprimento').AsFloat:= strtofloat(IFNULL(edit_md_comp_item.Text));
  q_datatable.ParamByName('descricao').AsString:=edit_md_descricao.Text;
  q_datatable.ParamByName('ncm').AsString:= edit_md_ncm_item.Text;
  q_datatable.ParamByName('preco_venda').AsFloat:= strtofloat(IFNULL(edit_md_preco_venda.Text));
  q_datatable.ParamByName('tipo_item').AsString:='E';
  q_datatable.ParamByName('tributacao').Value:=combo_tributacao_item.SelectedValue;
  q_datatable.ParamByName('un').Value:=combo_md_un_item.SelectedValue;
   q_datatable.ParamByName('codigo_barras').Value:=edit_cod_barras.Text;

  q_datatable.ExecSQL;
  addtoinitproc(swalSuccess('Confirma��o','Item Cadastrado com Sucesso!'));

  if EDIT_OP_CAD.Text='XML' then
  begin
     WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$(''#MDItensXml'').modal(''show'');');

      WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBItensXml").DataTable().ajax.reload();');


  end;

end;

procedure TFormEntrada_Nf.calcular_capa;
var
v_total_nf : real;
begin




        v_total_nf:=         (strtofloat(ifnull(edit_total_produtos.Text))  +
                              strtofloat(ifnull(edit_valor_frete.Text))     +
                              strtofloat(ifnull(edit_outras.Text))          +
                              strtofloat(ifnull(edit_valor_seguro.Text))    +
                              strtofloat(ifnull(btn_valor_ipi.Text))        +
                              strtofloat(ifnull(edit_valor_icms_st.Text))
                             );


edit_total_nf.Text:=  floattostr(v_total_nf - strtofloat(ifnull(edit_desconto.Text)) ) ;


end;

procedure TFormEntrada_Nf.calcular_itens;
begin

 if (ifnull(edit_qtde_itens.Text)='0') or (ifnull(edit_preco_unitario_item.Text)='0') then
    begin

     AddToInitProc(swalAlert('Alerta','Campos Qtde ou valor n�o podem ser nulo ou zero, verifique!'));

    end
    else
    begin

     //Mutiplica pre�o unit�rio pela quantidade

       if strtofloat(ifnull(edit_desconto.Text)) > 0 then  //Recalcula pre�o unitario ao mudar quantidade
          begin

           edit_preco_liquido_item.Hint:= edit_preco_liquido_item.Text;
           edit_preco_unitario_item.Text :=
               floattostr( strtofloat(ifnull(edit_preco_liquido_item.Hint))/ strtofloat(edit_qtde_itens.Text));

          end;


     edit_preco_liquido_item.Text :=
     floattostr( strtofloat(ifnull(edit_qtde_itens.Text))  *
     strtofloat( ifnull(edit_preco_unitario_item.Text)));

      // verifica descontos

       if strtofloat(ifnull(edit_perc_desc_item.Text)) > 0  then
          begin
           edit_preco_liquido_item.Text :=
              floattostr(strtofloat(edit_preco_liquido_item.Text) -
              (strtofloat(edit_preco_liquido_item.Text) *
              (strtofloat(edit_perc_desc_item.Text)/100))) ;

          end;

       if strtofloat(ifnull(edit_valor_desc_item.Text)) > 0  then
          begin
           edit_preco_liquido_item.Text :=
              floattostr(strtofloat(edit_preco_liquido_item.Text) -
              (strtofloat(edit_valor_desc_item.Text)))  ;
          end;




//       //Calcula IPI do item
//
//       if strtofloat(ifnull(btn_perc_ipi_item.Text)) > 0  then
//           begin
//
//           edit_valor_ipi_item.Text:=           floattostr(
//            (strtofloat(edit_preco_liquido_item.Text) *
//            (strtofloat(btn_perc_ipi_item.Text) / 100)  ));
//
//            edit_preco_liquido_item.Text :=floattostr( strtofloat(edit_preco_liquido_item.Text) +
//             strtofloat(edit_valor_ipi_item.Text) );
//
//
//           end;
//       //Calcula com ICMS st do item
//
//         if strtofloat(ifnull(edit_valor_icms_st_item.Text))>0 then
//         begin
//
//          edit_preco_liquido_item.Text :=  floattostr(strtofloat(ifnull(edit_preco_liquido_item.Text)) +
//                                           strtofloat(edit_valor_icms_st_item.Text));
//         end;




    end;






end;

procedure TFormEntrada_Nf.calc_icms_item;
begin
if (ifnull(edit_base_icms_item.Text)  <> '0') and (  ifnull(edit_aliq_icms_item.Text) <> '0' )  then
  begin

   edit_valor_icms_item.Text :=

     floattostr(strtofloat(edit_base_icms_item.Text) * strtofloat(edit_aliq_icms_item.Text) /100) ;


  end;
end;

procedure TFormEntrada_Nf.carregar_xml(p_id: string);
var i:integer;
 v_desc_capa : real;
begin
//aa

//Carregar capa


//atualiza componentes
    // Adiciona hint de todos os componentes
  For i := 0 to componentcount - 1 do
  begin

    if Components[i] is TIWEdit then
    begin

      with Components[i] as TIWEdit do
      begin

        if DataType = stNumber then
        begin

          DataType:= stText;
        end;
        if datatype=stDate then
        begin
          DataType:= stText;
        end;

        Enabled:=false;


      end;

    end;
  end;

 //Verifica se faltou definir algum dado no XML

  q_geral.Close;
  q_geral.SQL.Clear;
  q_geral.sql.add('select 1');
  q_geral.sql.add('from interface_itens');
  q_geral.sql.add('');
  q_geral.sql.add('where (locacao is null or cod_natureza is null)');
  q_geral.sql.add('and cod_controle=' + p_id );
  q_geral.Open();

  if q_geral.RecordCount > 0 then
  begin
    AddToInitProc(swalAlert('Alerta','Verifique se esqueceu de definir CFOP dos Itens ou Loca��o'));
  end
  else
  begin


       q_geral.Close;
       q_geral.SQL.Clear;
       q_geral.sql.add('select numero_nota,');
       q_geral.sql.add('serie,');
       q_geral.sql.add('to_char(to_date(emissao, ''yyyy-mm-dd''), ''dd/mm/yyyy'') emissao,');
       q_geral.sql.add('cnpj,');
       q_geral.sql.add('nome_fornecedor,');
       q_geral.sql.add('bc_icms,');
       q_geral.sql.add('valor_icms,');
       q_geral.sql.add('bc_icms_st,');
       q_geral.sql.add('valor_icms_st,');
       q_geral.sql.add('total_produtos,');
       q_geral.sql.add('valor_frete,');
       q_geral.sql.add('valor_seguro,');
       q_geral.sql.add('valor_desconto,');
       q_geral.sql.add('valor_ipi,');
       q_geral.sql.add('valor_outros,');
       q_geral.sql.add('total_nota,');
       q_geral.sql.add('chave_nfe');
       q_geral.sql.add('from interface_capa');
       q_geral.SQL.Add(' where id='+ p_id);
      // q_geral.SQL.Add( ' and cod_empresa= ' + inttostr(controller.xcod_empresa) );
       q_geral.Open();


        edit_numero.Text         :=  q_geral.FieldByName('numero_nota').AsString;
        edit_serie.Text          :=  q_geral.FieldByName('serie').AsString;
        edit_emissao.Text        :=  q_geral.FieldByName('emissao').AsString;
        edit_chave_nfe.Text      :=  q_geral.FieldByName('chave_nfe').AsString;
        edit_total_produtos.Text :=  q_geral.FieldByName('total_produtos').AsString;
        edit_bc_icms.Text        :=  q_geral.FieldByName('bc_icms').Text;
        edit_valor_icms.Text     :=  q_geral.FieldByName('valor_icms').AsString;
        edit_bc_st.Text          :=  q_geral.FieldByName('bc_icms_st').AsString;
        edit_valor_icms_st.Text  :=  q_geral.FieldByName('valor_icms_st').AsString;
        edit_valor_frete.Text    :=  q_geral.FieldByName('valor_frete').AsString;
        edit_valor_seguro.Text   :=  q_geral.FieldByName('valor_seguro').AsString;
        edit_outras.Text         :=  q_geral.FieldByName('valor_outros').AsString;
        edit_desconto.Text       :=  q_geral.FieldByName('valor_desconto').AsString;
        btn_valor_ipi.Text       :=  q_geral.FieldByName('valor_ipi').AsString;
        edit_total_nf.Text       :=  q_geral.FieldByName('total_nota').AsString;

         //se possuir desconto de capa faz tratamento

        if  ifnull(q_geral.FieldByName('valor_desconto').AsString) <> '0'  then
          begin

           //converte desconto em precentual

           v_desc_capa:=  (q_geral.FieldByName('valor_desconto').AsFloat * 100) / q_geral.FieldByName('total_produtos').AsFloat;
           edit_perc_desc_item.Hint:='0';


          end
          else
            v_desc_capa:=0;


        // Carregar Itens

        q_geral.Close;
        q_geral.SQL.Clear;
        q_geral.sql.add('select b.cod_item,');
        q_geral.sql.add('b.cod_fornecedor,');
        q_geral.sql.add('a.id,');
        q_geral.sql.add(' a.qtde,');
        q_geral.sql.add('a.cod_produto as cod_barras,');
        q_geral.sql.add('a.descricao_prod,');
        q_geral.sql.add('a.ncm,');
        q_geral.sql.add('a.valor_unitario,');
        q_geral.sql.add(' a.valor_unitario * a.qtde as preco_liquido,');
        q_geral.sql.add('a.cst,');
        q_geral.sql.add('a.locacao,');
        q_geral.sql.add('a.cod_local_estoque,');
        q_geral.sql.add('a.bc_icms,');
        q_geral.sql.add('a.aliq_icms,');
        q_geral.sql.add('a.valor_icms,');
        q_geral.sql.add('a.valor_ipi,');
        q_geral.sql.add('a.bc_st,');
        q_geral.sql.add('a.aliq_icms_st,');
        q_geral.sql.add('a.valor_icms_st,');
        q_geral.sql.add('cod_natureza || grupo as natureza');
        q_geral.sql.add('');
        q_geral.sql.add('from interface_itens a, itens b');
        q_geral.sql.add('where a.cod_produto = b.codigo_barras');
        q_geral.SQL.Add(' and cod_controle='+ p_id);
       // q_geral.SQL.Add( ' and cod_empresa= ' + inttostr(controller.xcod_empresa) );
        q_geral.Open();

        q_geral.First;

        while not q_geral.Eof do
        begin

        edit_cod_produto.Text             := q_geral.FieldByName('cod_item').AsString;
        edit_descricao_item.Text          := q_geral.FieldByName('descricao_prod').AsString;
        get_fornecedor;
        edit_fornecedor_item.KeyValue     := q_geral.FieldByName('cod_fornecedor').AsInteger;
        edit_qtde_itens.Text              := q_geral.FieldByName('qtde').AsString;
        edit_preco_unitario_item.Text     := q_geral.FieldByName('valor_unitario').AsString;
        edit_valor_ipi_item.Text          := q_geral.FieldByName('valor_ipi').AsString;
        edit_preco_liquido_item.Text      := q_geral.FieldByName('preco_liquido').AsString;
        edit_ncm_item.Text                := q_geral.FieldByName('ncm').AsString;
        combo_cfop_item.KeyValue          := q_geral.FieldByName('natureza').AsInteger;
        edit_base_icms_item.Text          := q_geral.FieldByName('bc_icms').AsString;
        edit_aliq_icms_item.Text          := q_geral.FieldByName('aliq_icms').AsString;
        edit_valor_icms_item.Text         := q_geral.FieldByName('valor_icms').AsString;
        edit_base_icms_st_item.Text       := q_geral.FieldByName('bc_st').AsString;
        edit_Aliq_icms_st_item.Text       := q_geral.FieldByName('aliq_icms_st').AsString;
        edit_valor_icms_st_item.Text      := q_geral.FieldByName('valor_icms_st').AsString;
        combo_local_estoque.KeyValue      := q_geral.FieldByName('cod_local_estoque').AsInteger;
        edit_locacao_item.Text            := q_geral.FieldByName('locacao').AsString;

        edit_perc_desc_item.Text :=   floattostr(v_desc_capa);



         lancar_itens;


        q_geral.Next;
        end;

        WebApplication.CallBackResponse.AddJavaScriptToExecute
            ('$("#TBComprasItens").DataTable().ajax.reload();');

          addtoinitproc(swalSuccess('Informa��o','XML carregado com sucesso!'));

          combo_local_estoque.Enabled:=false;
  end;












end;

procedure TFormEntrada_Nf.CK_ITENS_OKAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBItensXml").DataTable().ajax.reload();');


end;

procedure TFormEntrada_Nf.combo_local_estoqueAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  q_sugestao_loc.Close;
  q_sugestao_loc.ParamByName('cod_item').AsString:=edit_cod_produto.Text;
  q_sugestao_loc.ParamByName('cod_fornecedor').Value:=edit_fornecedor_item.KeyValue;
  q_sugestao_loc.ParamByName('cod_local_estoque').Value:=combo_local_estoque.KeyValue;
  q_sugestao_loc.ParamByName('cod_empresa').AsInteger:=controller.xcod_empresa;
  q_sugestao_loc.Open();

  combo_sugestao_loc.Enabled:=true;
  combo_sugestao_loc.RefreshItems;


end;

procedure TFormEntrada_Nf.combo_pesquisar_lAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBLocacao").DataTable().ajax.reload();');
end;

procedure TFormEntrada_Nf.combo_sugestao_locAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
edit_locacao_item.Text:= combo_sugestao_loc.SelectedValue;
end;

procedure TFormEntrada_Nf.combo_tipo_entradaAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
 tbxml_reload;
end;

procedure TFormEntrada_Nf.edit_aliq_icms_itemAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  calc_icms_item;

end;

procedure TFormEntrada_Nf.edit_aliq_icms_itemAsyncKeyPress(Sender: TObject;
  EventParams: TStringList);
 var
  lKey: char;
begin
  inherited;

  lKey := Chr(StrToInt(EventParams.Values['which']));

  if lKey = #13 then
  begin
    edit_base_icms_st_item.SetFocus;
  end;

end;

procedure TFormEntrada_Nf.edit_aliq_icms_itemHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.edit_Aliq_icms_st_itemAsyncKeyPress(Sender: TObject;
  EventParams: TStringList);
 var
  lKey: char;
begin
  inherited;

  lKey := Chr(StrToInt(EventParams.Values['which']));

  if lKey = #13 then
  begin
    edit_valor_icms_st_item.SetFocus;
  end;

end;

procedure TFormEntrada_Nf.edit_Aliq_icms_st_itemHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.edit_base_icms_itemAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  calc_icms_item;
end;

procedure TFormEntrada_Nf.edit_base_icms_itemAsyncKeyPress(Sender: TObject;
  EventParams: TStringList);
 var
  lKey: char;
begin
  inherited;

  lKey := Chr(StrToInt(EventParams.Values['which']));

  if lKey = #13 then
  begin
    edit_aliq_icms_item.SetFocus;
  end;

end;

procedure TFormEntrada_Nf.edit_base_icms_itemHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="0,00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.edit_base_icms_st_itemAsyncKeyPress(Sender: TObject;
  EventParams: TStringList);
 var
  lKey: char;
begin
  inherited;

  lKey := Chr(StrToInt(EventParams.Values['which']));

  if lKey = #13 then
  begin
    edit_Aliq_icms_st_item.SetFocus;
  end;

end;

procedure TFormEntrada_Nf.edit_base_icms_st_itemHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="R$ 0,00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.edit_bc_icmsHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
   ATag.Add('placeholder="R$ 0,00"');
   ATag.Add(' style="text-align:right" ');

end;

procedure TFormEntrada_Nf.edit_bc_ipi_itemHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
   //ATag.Add('placeholder="0,00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.edit_bc_stHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;
   ATag.Add('placeholder="R$ 0,00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.edit_cod_produtoAsyncClick(Sender: TObject;
  EventParams: TStringList);
  VAR
  V_GET : STRING;
begin
  inherited;


end;

procedure TFormEntrada_Nf.edit_cod_produtoAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  get_fornecedor;




end;

procedure TFormEntrada_Nf.edit_cod_produtoAsyncKeyPress(Sender: TObject;
  EventParams: TStringList);
  var
  lKey: char;
begin
  inherited;

  lKey := Chr(StrToInt(EventParams.Values['which']));

  if lKey = #13 then
  begin
    edit_qtde_itens.SetFocus;
  end;


end;

procedure TFormEntrada_Nf.edit_cod_produtoHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="Digite o c�digo do produto"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.edit_descontoAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
calcular_capa;
end;

procedure TFormEntrada_Nf.edit_descontoHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="R$ 0,00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.edit_descricao_itemHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;

   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.edit_emissaoHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add('placeholder="DD/MM/YYYY"');
   ATag.Add(' style="text-align:right" ');

end;

procedure TFormEntrada_Nf.edit_fornecedor_itemAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
edit_qtde_itens.SetFocus;
end;

procedure TFormEntrada_Nf.edit_ncm_itemHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;

   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.edit_outrasAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
calcular_capa;
end;

procedure TFormEntrada_Nf.edit_outrasHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="R$ 0,00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.edit_perc_descAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
calcular_capa;
end;

procedure TFormEntrada_Nf.edit_perc_desc_itemAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
calcular_itens;
end;

procedure TFormEntrada_Nf.edit_perc_desc_itemAsyncKeyPress(Sender: TObject;
  EventParams: TStringList);
var lKey: char;
begin
  inherited;

  lKey := Chr(StrToInt(EventParams.Values['which']));

  if lKey = #13 then
  begin
    edit_valor_desc_item.SetFocus;
  end;

end;

procedure TFormEntrada_Nf.edit_perc_desc_itemHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.edit_preco_liquido_itemHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="0,00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.edit_preco_unitario_itemAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
calcular_itens;
end;

procedure TFormEntrada_Nf.edit_preco_unitario_itemAsyncKeyPress(Sender: TObject;
  EventParams: TStringList);
var lKey: char;
begin
  inherited;

  lKey := Chr(StrToInt(EventParams.Values['which']));

  if lKey = #13 then
  begin
    edit_perc_desc_item.SetFocus;
  end;

end;

procedure TFormEntrada_Nf.edit_preco_unitario_itemHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="0,00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.edit_qtde_itensAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  if (strtofloat(ifnull(edit_qtde_itens.Text)) > 0) and
  (strtofloat(ifnull(edit_preco_unitario_item.Text)) > 0) then
    begin

     calcular_itens;

    end


end;

procedure TFormEntrada_Nf.edit_qtde_itensAsyncKeyPress(Sender: TObject;
  EventParams: TStringList);
  var
  lKey: char;
begin
  inherited;

  lKey := Chr(StrToInt(EventParams.Values['which']));

  if lKey = #13 then
  begin
    edit_preco_unitario_item.SetFocus;
  end;


end;

procedure TFormEntrada_Nf.edit_qtde_itensHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="0"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.edit_total_conhecimentoHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="R$ 0,00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.edit_total_nfHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;

   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.edit_total_produtosAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
calcular_capa;
end;

procedure TFormEntrada_Nf.edit_total_produtosHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="R$ 0,00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.edit_valor_desc_itemAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
calcular_itens;
end;

procedure TFormEntrada_Nf.edit_valor_desc_itemAsyncKeyPress(Sender: TObject;
  EventParams: TStringList);
var lKey: char;
begin
  inherited;

  lKey := Chr(StrToInt(EventParams.Values['which']));

  if lKey = #13 then
  begin
    btn_perc_ipi_item.SetFocus;
  end;

end;

procedure TFormEntrada_Nf.edit_valor_desc_itemHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="0,00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.edit_valor_freteAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
calcular_capa;
end;

procedure TFormEntrada_Nf.edit_valor_freteHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="R$ 0,00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.edit_valor_icmsHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="R$ 0,00"');
   ATag.Add(' style="text-align:left" ');
end;

procedure TFormEntrada_Nf.edit_valor_icms_stAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
calcular_capa;
end;

procedure TFormEntrada_Nf.edit_valor_icms_stHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="R$ 0,00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.edit_valor_icms_st_itemAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
calcular_itens;
end;

procedure TFormEntrada_Nf.edit_valor_seguroAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
calcular_capa;

end;

procedure TFormEntrada_Nf.edit_valor_seguroHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add('placeholder="R$ 0,00"');
   ATag.Add(' style="text-align:right" ');
end;





function TFormEntrada_Nf.get_custo_item(p_seq : integer): real;


begin

  q_geral.close;
  q_geral.sql.Clear;
  q_geral.sql.add('select');
  q_geral.sql.add('');
  q_geral.sql.add('(preco_unitario + nvl(frete, 0) + nvl(outras, 0) + nvl(seguros, 0) +');
  q_geral.sql.add('nvl(rateio_frete, 0) + (nvl(ci.valor_icms_st, 0) / qtde) +');
  q_geral.sql.add('(valor_ipi / qtde)) -');
  q_geral.sql.add('((preco_unitario + (valor_ipi / qtde)) * aliq_icms / 100) as preco_contabil');
  q_geral.sql.add('');
  q_geral.sql.add('from temp_compras_itens ci');
  q_geral.sql.add('');
  q_geral.sql.add('where ci.seq = :seq ');

  q_geral.ParamByName('seq').AsInteger := p_seq;

  q_geral.Open();

  if q_geral.RecordCount > 0 then
  begin
   result:= q_geral.FieldByName('preco_contabil').AsFloat;
  end
  else
  begin
    result:=0;
  end;





end;

function TFormEntrada_Nf.GET_DADOS_ITEM(COD_PRODUTO: STRING): STRING;
begin
  try
  q_datatable.Close;
  q_datatable.SQL.Clear;
  q_datatable.SQL.Add(' SELECT COD_ITEM,COD_FORNECEDOR,DESCRICAO,NCM FROM ITENS where cod_item=' + quotedstr(edit_cod_produto.Text));
  q_datatable.Open();
  edit_descricao_item.Text:=q_datatable.FieldByName('descricao').AsString;
  edit_ncm_item.Text:=  q_datatable.FieldByName('ncm').AsString;

  result:= 'true';


  except
    swalAlert('Alerta','Item n�o encontrado: '+ edit_cod_produto.Text);
  end;

end;

procedure TFormEntrada_Nf.get_fornecedor;
begin
q_datatable.Close;
  q_datatable.SQL.Clear;
  q_datatable.SQL.Add(' SELECT COD_ITEM,COD_FORNECEDOR,DESCRICAO,NCM FROM ITENS where cod_item=' + quotedstr(edit_cod_produto.Text));
  q_datatable.Open();
  edit_descricao_item.Text:=q_datatable.FieldByName('descricao').AsString;
  edit_ncm_item.Text:=  q_datatable.FieldByName('ncm').AsString;


  //Atualiza combo do fornecedor

  q_busca_fornecedor.Close;
  q_busca_fornecedor.SQL.Clear;
  q_busca_fornecedor.sql.add('select *');
  q_busca_fornecedor.sql.add('from fornecedor_estoque');
  q_busca_fornecedor.sql.add('where cod_fornecedor in');
  q_busca_fornecedor.sql.add('(select cod_fornecedor from itens i where i.cod_item = :cod_item )');
  q_busca_fornecedor.ParamByName('cod_item').AsString:= edit_cod_produto.Text;
  q_busca_fornecedor.Open();

  if q_busca_fornecedor.RecordCount>0 then
  begin
  edit_fornecedor_item.Enabled:=true;
  edit_fornecedor_item.RefreshItems;
  end;
end;

function TFormEntrada_Nf.get_rateio_despesa(p_despesa,
  p_total_produto: real): real;
  var
  v_perc : real;
begin


 if p_despesa > 0  then
 begin

   v_perc := p_despesa * 100 / p_total_produto;

   result := p_despesa * v_perc/100 ;
 end
 else
  result:=0;


end;

function TFormEntrada_Nf.get_recalculo: string;
var
msg : string;
begin

 q_datatable.Close;
 q_datatable.SQL.Clear;
 q_datatable.sql.add('select (sum(valor_total) ) as total_produtos,');
 q_datatable.sql.add('sum(bc_icms) as bc_icms,');
 q_datatable.sql.add('sum(valor_icms) as valor_icms,');
 q_datatable.sql.add('sum(bc_icms_st) as bc_icms_st,');
 q_datatable.sql.add('sum(valor_icms_st) as valor_icms_st,');
 q_datatable.sql.add('sum(valor_ipi) AS valor_ipi,');
 q_datatable.sql.add('(sum(valor_total) + sum(frete) + sum(outras)+ sum(valor_ipi)+ sum(valor_icms_st) + sum(seguros) + sum(rateio_frete)) as valor_total');
 q_datatable.sql.add('from TEMP_COMPRAS_ITENS');
 q_datatable.Open();


 //Alimenta campos da capa

 tot_produtos_capa.Text:= edit_total_produtos.Text;
 tot_ipi_capa.Text:= btn_valor_ipi.Text;
 tot_bc_icms_capa.Text:= edit_bc_icms.Text;
 tot_valor_icms_capa.Text:= edit_valor_icms.Text;
 tot_bc_icms_st_capa.Text:=edit_bc_st.Text;
 tot_valor_icms_st_capa.Text:=edit_valor_icms_st.Text;
 tot_capa.Text:=edit_total_nf.Text;

 //Alimenta campos dos itens

 tot_produtos_item.Text:= q_datatable.FieldByName('total_produtos').AsString;
 tot_bc_icms_item.Text:= q_datatable.FieldByName('bc_icms').AsString;
 tot_valor_icms_item.Text:= q_datatable.FieldByName('valor_icms').AsString;
 tot_bc_icms_st_item.Text:= q_datatable.FieldByName('bc_icms_st').AsString;
 tot_valor_icms_st_item.Text:= q_datatable.FieldByName('valor_icms_st').AsString;
 tot_ipi_item.Text:= q_datatable.FieldByName('valor_ipi').AsString;
 tot_item.Text:= floattostr(q_datatable.FieldByName('valor_total').AsFloat - strtofloat(edit_desconto.Text));


 //Valida campos

 msg:='';

 if ifnull(tot_produtos_capa.Text) <> ifnull(tot_produtos_item.Text) then
 begin

    msg := msg + 'Total dos Produtos n�o confere!';

 end;

 if ifnull(tot_ipi_capa.Text) <> ifnull(tot_ipi_item.Text) then
 begin

    msg := msg + 'Total do IPI n�o confere!';

 end;

 if ifnull(tot_bc_icms_capa.Text) <> ifnull(tot_bc_icms_item.Text) then
 begin

    msg := msg + 'Base do ICMS n�o confere!';

 end;

 if ifnull(tot_valor_icms_capa.Text) <> ifnull(tot_valor_icms_item.Text) then
 begin

    msg := msg + 'Valor do ICMS n�o confere!';

 end;
 if ifnull(tot_bc_icms_st_capa.Text) <> ifnull(tot_bc_icms_st_item.Text) then
 begin

    msg := msg + 'Base do ICMS ST n�o confere!';

 end;
 if ifnull(tot_valor_icms_st_capa.Text) <> ifnull(tot_valor_icms_st_item.Text) then
 begin

    msg := msg + 'Valor do ICMS ST n�o confere!';

 end;
 if ifnull(tot_capa.Text) <> ifnull(tot_item.Text) then
 begin

    msg := msg + 'Valor total da NF n�o confere!';

 end;






 result:= msg;


end;

function TFormEntrada_Nf.ifnull(campo: string): string;
begin

  if campo='' then
  begin
    result:='0';
  end
  else
  result:=campo;

end;

procedure TFormEntrada_Nf.imprimir_mapa(p_cod_controle:integer);
var
 xDataRel : String;
begin
  inherited;

  q_compras_itens.Close;
  q_compras_itens.ParamByName('cod_empresa').AsInteger  := controller.xcod_empresa;
  q_compras_itens.ParamByName('cod_controle').AsInteger := p_cod_controle;
  q_compras_itens.Open();

  q_datatable.Close;
  q_datatable.SQL.Clear;
  q_datatable.SQL.Add('select sum(qtde) as qtde from  compras_itens where cod_empresa= :cod_empresa and cod_controle= :cod_controle ');
  q_datatable.ParamByName('cod_empresa').AsInteger  := controller.xcod_empresa;
  q_datatable.ParamByName('cod_controle').AsInteger := p_cod_controle;
  q_datatable.Open();

  //Par�metros das vari�veis

 r_romaneio.Variables['empresa']       := quotedstr(Controller.xCliente) ;
 r_romaneio.Variables['numero_nota']   :=quotedstr(edit_numero.Text)  ;
 r_romaneio.Variables['serie']         := quotedstr(edit_serie.Text) ;
 r_romaneio.Variables['fornecedor']    :=quotedstr(edit_nome_fornecedor.Text);
 r_romaneio.Variables['responsavel']   := quotedstr(controller.xUsuario);
 r_romaneio.Variables['total_itens']   := quotedstr(q_compras_itens.RecordCount.ToString);
 r_romaneio.Variables['total_qtde']   := quotedstr(q_datatable.FieldByName('qtde').AsString);




  //
  // Executando o Relat�rio para a Exporta��o
  //
  xDataRel := WebApplication.AppID + FormatDateTime('yyyymmddhhmmsszzz', Now);

  pdf_exp.FileName := WebApplication.ApplicationPath + 'wwwroot\RelatoriosPDF\' +
                            xDataRel + '.PDF';

  r_romaneio.PrepareReport(True);

  pdf_exp.ShowDialog:=False;
  r_romaneio.Export(pdf_exp);

  with modal_romaneio do begin
    Reset;
    Autosize := False;
    Title := 'Visualizando o PDF do Relat�rio';
    Draggable := False;
    WindowWidth := 95;
    WindowHeight := 95;
    Src := '../../../RelatoriosPDF/' + xDataRel + '.PDF';
    OnAsyncClick := nil;
    Show;
  end;

end;

procedure TFormEntrada_Nf.inserir_compra;
var
v_controle_compra : integer;
v_preco_contabil : real;

begin

  q_datatable.close;
  q_datatable.sql.clear;
  q_datatable.sql.add('select seq_controle_compra.nextval as controle from dual');
  q_datatable.Open();
  v_controle_compra:= q_datatable.FieldByName('controle').AsInteger;



  //Insere CAPA

  q_datatable.Close;
  q_datatable.SQL.Clear;
  q_datatable.sql.add('insert into compras');
  q_datatable.sql.add('(total_nota,');
  q_datatable.sql.add('aliq_icms,');
  q_datatable.sql.add('aliq_ipi,');
  q_datatable.sql.add('base_icms,');
  q_datatable.sql.add('base_icms_normal,');
  q_datatable.sql.add('base_ipi,');
  q_datatable.sql.add('base_substituida,');
  q_datatable.sql.add('cod_cliente,');
  q_datatable.sql.add('cod_controle,');
  q_datatable.sql.add('cod_empresa,');
  q_datatable.sql.add('data_emissao,');
  q_datatable.sql.add('data_entrada,');
  q_datatable.sql.add('descontos,');
  q_datatable.sql.add('frete,');
  q_datatable.sql.add('isentas,');
  q_datatable.sql.add('nfe_chave,');
  q_datatable.sql.add('numero_nota,');
  q_datatable.sql.add('obs,');
  q_datatable.sql.add('outros,');
  q_datatable.sql.add('seguros,');
  q_datatable.sql.add('serie,');
  q_datatable.sql.add('substituidas,');
  q_datatable.sql.add('total_produto,');
  q_datatable.sql.add('valor_icms,');
  q_datatable.sql.add('valor_icms_normal,');
  q_datatable.sql.add('cod_operacao,');
  q_datatable.sql.add('valor_ipi)');
  q_datatable.sql.add('values');

  //Sess�o de par�metros

  try

  controller.DM.banco.StartTransaction;
  q_datatable.sql.add('( :total_nota,');
  q_datatable.sql.add(' :aliq_icms,');
  q_datatable.sql.add(':aliq_ipi,');
  q_datatable.sql.add(':base_icms,');
  q_datatable.sql.add(':base_icms_normal,');
  q_datatable.sql.add(':base_ipi,');
  q_datatable.sql.add(':base_substituida,');
  q_datatable.sql.add(':cod_cliente,');
  q_datatable.sql.add(':cod_controle_compra,');
  q_datatable.sql.add(':cod_empresa,');
  q_datatable.sql.add(':data_emissao,');
  q_datatable.sql.add('sysdate ,');
  q_datatable.sql.add(':descontos,');
  q_datatable.sql.add(':frete,');
  q_datatable.sql.add(':isentas,');
  q_datatable.sql.add(':nfe_chave,');
  q_datatable.sql.add(':numero_nota,');
  q_datatable.sql.add(':obs,');
  q_datatable.sql.add(':outros,');
  q_datatable.sql.add(':seguros,');
  q_datatable.sql.add(':serie,');
  q_datatable.sql.add(':substituidas,');
  q_datatable.sql.add(':total_produto,');
  q_datatable.sql.add(':valor_icms,');
  q_datatable.sql.add(':valor_icms_normal,');
   q_datatable.sql.add(':cod_operacao,');
  q_datatable.sql.add(':valor_ipi)');

  //Passagem de par�metros

  q_datatable.ParamByName('aliq_icms').AsInteger          := 0;
  q_datatable.ParamByName('aliq_ipi').AsInteger           := 0;
  q_datatable.ParamByName('base_icms').AsFloat            := strtofloat(ifnull(edit_bc_icms.Text));
  q_datatable.ParamByName('base_icms_normal').AsFloat     := strtofloat(ifnull(edit_bc_icms.Text));
  q_datatable.ParamByName('base_ipi').AsFloat             := 0;
  q_datatable.ParamByName('base_substituida').AsFloat     := strtofloat(ifnull(edit_bc_st.Text));
  q_datatable.ParamByName('cod_cliente').AsString         := edit_fornecedor.Text;
//  q_datatable.ParamByName('cod_controle').AsInteger
  q_datatable.ParamByName('cod_empresa').AsInteger        := controller.xcod_empresa;
  q_datatable.ParamByName('data_emissao').AsDate          := strtodate(edit_emissao.Text);
//  q_datatable.ParamByName('data_entrada').AsDateTime
  q_datatable.ParamByName('descontos').AsFloat            := strtofloat(ifnull(edit_desconto.Text));
  q_datatable.ParamByName('frete').AsFloat                := strtofloat(ifnull(edit_valor_frete.Text));
  q_datatable.ParamByName('isentas').AsFloat              := 0;
  q_datatable.ParamByName('nfe_chave').AsString           := edit_chave_nfe.Text;
  q_datatable.ParamByName('numero_nota').AsInteger        := strtoint(ifnull(edit_numero.Text));
  q_datatable.ParamByName('obs').AsString                 :='';
  q_datatable.ParamByName('outros').AsFloat               := 0;
  q_datatable.ParamByName('seguros').AsFloat              := strtofloat(ifnull(edit_valor_seguro.Text));
  q_datatable.ParamByName('serie').AsString               := edit_serie.Text;
  q_datatable.ParamByName('substituidas').AsFloat         := strtofloat(ifnull(edit_valor_icms_st.Text));
  q_datatable.ParamByName('total_produto').AsFloat        := strtofloat(ifnull(edit_total_produtos.Text));
  q_datatable.ParamByName('valor_icms').AsFloat           := strtofloat(ifnull(edit_valor_icms.Text));
  q_datatable.ParamByName('valor_icms_normal').AsFloat    := strtofloat(ifnull(edit_valor_icms.Text));
  q_datatable.ParamByName('valor_ipi').AsFloat            := strtofloat(ifnull(btn_valor_ipi.Text));
  q_datatable.ParamByName('total_nota').AsFloat           := strtofloat(ifnull(edit_total_nf.Text));
  q_datatable.ParamByName('cod_operacao').AsInteger       := combo_tipo_entrada.SelectedValue.ToInteger;
  q_datatable.ParamByName('cod_controle_compra').AsInteger:= v_controle_compra;
  q_datatable.ExecSQL;


  //Insere Itens da NF

  q_temp_itens.Close;
  q_temp_itens.Open();

  q_temp_itens.First;

  while not q_temp_itens.Eof do
   begin


       q_datatable.Close;
       q_datatable.SQL.Clear;
       q_datatable.sql.add('insert into compras_itens');
       q_datatable.sql.add('( preco_contabil,');
       q_datatable.sql.add(' cod_local_estoque,');
       q_datatable.sql.add(' locacao,');
       q_datatable.sql.add(' aliq_icms,');
       q_datatable.sql.add('aliq_icms_normal,');
       q_datatable.sql.add('aliq_icms_st,');
       q_datatable.sql.add('aliq_pis,');
       q_datatable.sql.add('base_cofins,');
       q_datatable.sql.add('base_icms,');
       q_datatable.sql.add('base_icms_normal,');
       q_datatable.sql.add('base_icms_st,');
       q_datatable.sql.add('base_pis,');
       q_datatable.sql.add('bc_ipi,');
       q_datatable.sql.add('cod_controle,');
       q_datatable.sql.add('cod_empresa,');
       q_datatable.sql.add('cod_fornecedor,');
       q_datatable.sql.add('cod_item,');
       q_datatable.sql.add('cod_natureza,');
       q_datatable.sql.add('custo_contabil,');
       q_datatable.sql.add('data_entrada,');
       q_datatable.sql.add('grupo,');
       q_datatable.sql.add('icms_st,');
       q_datatable.sql.add('ipi,');
       q_datatable.sql.add('ncm,');
       q_datatable.sql.add('origem,');
       q_datatable.sql.add('perc_desconto,');
      // q_datatable.sql.add('preco_contabil,');
       q_datatable.sql.add('preco_liq_final,');
       q_datatable.sql.add('preco_unitario,');
       q_datatable.sql.add('qtde,');
       q_datatable.sql.add('situacao_tributaria,');
       q_datatable.sql.add('valor_cofins,');
       q_datatable.sql.add('valor_icms_normal,');
       q_datatable.sql.add('valor_pis)');
       q_datatable.sql.add('values');

       //Sess�o de par�metros
       q_datatable.sql.add('( :preco_contabil,');
       q_datatable.sql.add('  :cod_local_estoque,');
       q_datatable.sql.add(' :locacao,');
       q_datatable.sql.add(' :aliq_icms,');
       q_datatable.sql.add(':aliq_icms_normal,');
       q_datatable.sql.add(':aliq_icms_st,');
       q_datatable.sql.add(':aliq_pis,');
       q_datatable.sql.add(':base_cofins,');
       q_datatable.sql.add(':base_icms,');
       q_datatable.sql.add(':base_icms_normal,');
       q_datatable.sql.add(':base_icms_st,');
       q_datatable.sql.add(':base_pis,');
       q_datatable.sql.add(':bc_ipi,');
       q_datatable.sql.add(':cod_controle_compra,');
       q_datatable.sql.add(':cod_empresa,');
       q_datatable.sql.add(':cod_fornecedor,');
       q_datatable.sql.add(':cod_item,');
       q_datatable.sql.add(':cod_natureza,');
       q_datatable.sql.add(':custo_contabil,');
       q_datatable.sql.add('sysdate,');
       q_datatable.sql.add(':grupo,');
       q_datatable.sql.add(':icms_st,');
       q_datatable.sql.add(':ipi,');
       q_datatable.sql.add(':ncm,');
       q_datatable.sql.add(':origem,');
       q_datatable.sql.add(':perc_desconto,');
       //q_datatable.sql.add(':preco_contabil,');
       q_datatable.sql.add(':preco_liq_final,');
       q_datatable.sql.add(':preco_unitario,');
       q_datatable.sql.add(':qtde,');
       q_datatable.sql.add(':situacao_tributaria,');
       q_datatable.sql.add(':valor_cofins,');
       q_datatable.sql.add(':valor_icms_normal,');
       q_datatable.sql.add(':valor_pis)');

       //Passagem dos par�metros

       v_preco_contabil :=0;

       v_preco_contabil                                         := get_custo_item(q_temp_itensSEQ.AsInteger);
       q_datatable.ParamByName('aliq_icms').AsInteger           := q_temp_itensALIQ_ICMS.AsInteger;
       q_datatable.ParamByName('aliq_icms_normal').AsInteger    := q_temp_itensALIQ_ICMS.AsInteger;
       q_datatable.ParamByName('aliq_icms_st').AsInteger        := q_temp_itensALIQ_ICMS_ST.AsInteger;
       q_datatable.ParamByName('aliq_pis').AsInteger            :=0;
       q_datatable.ParamByName('base_cofins').AsFloat           :=0;
       q_datatable.ParamByName('base_icms').AsFloat             :=q_temp_itensBC_ICMS.AsFloat;
       q_datatable.ParamByName('base_icms_normal').AsFloat      :=q_temp_itensBC_ICMS.AsFloat;
       q_datatable.ParamByName('base_icms_st').AsFloat          :=q_temp_itensBC_ICMS_ST.AsFloat;
       q_datatable.ParamByName('base_pis').AsFloat              :=0;
       q_datatable.ParamByName('bc_ipi').AsFloat                :=0;
      // q_datatable.ParamByName('cod_controle').AsInteger
       q_datatable.ParamByName('cod_empresa').AsInteger         :=controller.xcod_empresa;
       q_datatable.ParamByName('cod_fornecedor').AsInteger      :=q_temp_itensCOD_FORNECEDOR.AsInteger;
       q_datatable.ParamByName('cod_item').AsString             := q_temp_itensCOD_ITEM.AsString;
       q_datatable.ParamByName('cod_natureza').AsInteger        := strtoint(copy(q_temp_itensCFOP.AsString,1,4));
       q_datatable.ParamByName('custo_contabil').AsFloat        :=0;
      // q_datatable.ParamByName('data_entrada').AsDateTime
       q_datatable.ParamByName('grupo').AsInteger               :=strtoint(copy(q_temp_itensCFOP.AsString,5,2));
       q_datatable.ParamByName('icms_st').AsFloat               :=q_temp_itensVALOR_ICMS_ST.AsFloat;
       q_datatable.ParamByName('ipi').AsFloat                   :=q_temp_itensVALOR_IPI.AsFloat;
       q_datatable.ParamByName('ncm').AsString                  :=q_temp_itensNCM.AsString;
       q_datatable.ParamByName('origem').AsString               :='0';
       q_datatable.ParamByName('perc_desconto').AsInteger       :=q_temp_itensPERC_DESC.AsInteger;
       //q_datatable.ParamByName('preco_contabil').AsFloat        :=0;
       q_datatable.ParamByName('preco_liq_final').AsFloat       :=q_temp_itensVALOR_TOTAL.AsFloat;
       q_datatable.ParamByName('preco_unitario').AsFloat        :=q_temp_itensPRECO_UNITARIO.AsFloat;
       q_datatable.ParamByName('qtde').AsFloat                  :=q_temp_itensQTDE.AsFloat;
       q_datatable.ParamByName('situacao_tributaria').AsString  :=q_temp_itensCST.AsString;
       q_datatable.ParamByName('valor_cofins').AsFloat          :=0;
       q_datatable.ParamByName('valor_icms_normal').AsFloat     :=q_temp_itensVALOR_ICMS.AsFloat;
       q_datatable.ParamByName('valor_pis').AsFloat             :=0;
       q_datatable.ParamByName('cod_controle_compra').AsInteger :=v_controle_compra;
       q_datatable.ParamByName('cod_local_estoque').AsInteger   :=q_temp_itensCOD_LOCAL_ESTOQUE.AsInteger;
       q_datatable.ParamByName('locacao').AsString              :=q_temp_itensLOCACAO.AsString;
       q_datatable.ParamByName('preco_contabil').AsFloat        := v_preco_contabil;
       q_datatable.ExecSQL;


     //INSERIR LOCA��O

         //verifica se j� existe na loca��o
         q_geral.Close;
         q_geral.SQL.Clear;
         q_geral.SQL.Text:=
         'select qtde from locacao where cod_item= :cod_item ' +
         ' and cod_fornecedor = :cod_fornecedor' +
         ' and cod_local_estoque = :cod_local_estoque ' +
         ' and cod_empresa= :cod_empresa ' +
         ' and locacao= :locacao ' ;

         q_geral.ParamByName('cod_item').AsString           :=  q_temp_itensCOD_ITEM.AsString;
         q_geral.ParamByName('cod_fornecedor').AsInteger    :=  q_temp_itensCOD_FORNECEDOR.AsInteger;
         q_geral.ParamByName('cod_local_estoque').AsInteger :=  q_temp_itensCOD_LOCAL_ESTOQUE.AsInteger;
         q_geral.ParamByName('cod_empresa').AsInteger       :=  controller.xcod_empresa;
         q_geral.ParamByName('locacao').AsString            :=  q_temp_itensLOCACAO.AsString;
         q_geral.Open();

         if q_geral.RecordCount >0 then
           begin
            //Se achou ent�o atualiza
            q_aux.Close;
            q_aux.SQL.Clear;
            q_aux.SQL.Text:=

            'update locacao set qtde = :qtde + qtde ' +

             'where cod_item= :cod_item ' +
             ' and cod_fornecedor = :cod_fornecedor' +
             ' and cod_local_estoque = :cod_local_estoque ' +
             ' and cod_empresa= :cod_empresa ' +
             ' and locacao= :locacao ' ;

             q_aux.ParamByName('cod_item').AsString           :=  q_temp_itensCOD_ITEM.AsString;
             q_aux.ParamByName('cod_fornecedor').AsInteger    :=  q_temp_itensCOD_FORNECEDOR.AsInteger;
             q_aux.ParamByName('cod_local_estoque').AsInteger :=  q_temp_itensCOD_LOCAL_ESTOQUE.AsInteger;
             q_aux.ParamByName('cod_empresa').AsInteger       :=  controller.xcod_empresa;
             q_aux.ParamByName('locacao').AsString            :=  q_temp_itensLOCACAO.AsString;
             q_aux.ParamByName('qtde').AsFloat := q_temp_itensQTDE.AsFloat;
             q_aux.ExecSQL;

           end
           else
           begin
            // sen�o insere

            q_geral.Close;
            q_geral.SQL.Clear;
            q_geral.sql.add('insert into locacao');
            q_geral.sql.add('(cod_empresa, cod_fornecedor, cod_item, cod_local_estoque, locacao, qtde)');
            q_geral.sql.add('values');
            q_geral.sql.add('(:cod_empresa, :cod_fornecedor, :cod_item, :cod_local_estoque, :locacao, :qtde)');

            q_geral.ParamByName('cod_item').AsString           :=  q_temp_itensCOD_ITEM.AsString;
            q_geral.ParamByName('cod_fornecedor').AsInteger    :=  q_temp_itensCOD_FORNECEDOR.AsInteger;
            q_geral.ParamByName('cod_local_estoque').AsInteger :=  q_temp_itensCOD_LOCAL_ESTOQUE.AsInteger;
            q_geral.ParamByName('cod_empresa').AsInteger       :=  controller.xcod_empresa;
            q_geral.ParamByName('locacao').AsString            :=  q_temp_itensLOCACAO.AsString;
            q_geral.ParamByName('qtde').AsFloat                :=  q_temp_itensQTDE.AsFloat;
            q_geral.ExecSQL;

           end;


      //Inserir Estoque

           //Verifica se j� existe no estoque

           q_geral.Close;
           q_geral.SQL.Text:=
           'select qtde from estoque where cod_item= :cod_item ' +
           ' and cod_fornecedor = :cod_fornecedor ' +
           ' and cod_empresa= :cod_empresa';
           q_geral.ParamByName('cod_item').AsString        :=  q_temp_itensCOD_ITEM.AsString;
           q_geral.ParamByName('cod_fornecedor').AsInteger :=  q_temp_itensCOD_FORNECEDOR.AsInteger;
           q_geral.ParamByName('cod_empresa').AsInteger    :=  controller.xcod_empresa;

           q_geral.Open();

           if q_geral.RecordCount >0  then
           begin
            //Se existe Atualiza

             q_aux.Close;
             q_aux.SQL.Clear;
             q_aux.SQL.Text :=
             ' update estoque set qtde = qtde + :qtde ' +
             ' where cod_item= :cod_item ' +
             ' and cod_fornecedor = :cod_fornecedor ' +
             ' and cod_empresa= :cod_empresa';

             q_aux.ParamByName('cod_item').AsString        :=  q_temp_itensCOD_ITEM.AsString;
             q_aux.ParamByName('cod_fornecedor').AsInteger :=  q_temp_itensCOD_FORNECEDOR.AsInteger;
             q_aux.ParamByName('cod_empresa').AsInteger    :=  controller.xcod_empresa;
             q_aux.ParamByName('qtde').AsFloat             :=  q_temp_itensQTDE.AsFloat;

             q_aux.ExecSQL;

           end
           else
           begin
            //sen�o insere
             q_geral.Close;
             q_geral.SQL.Clear;
             q_geral.sql.add('insert into estoque');
             q_geral.sql.add('(cod_empresa, cod_fornecedor, cod_item, qtde, reserva)');
             q_geral.sql.add('values');
             q_geral.sql.add('(:cod_empresa, :cod_fornecedor, :cod_item, :qtde, :reserva)');


             q_geral.ParamByName('cod_item').AsString        :=  q_temp_itensCOD_ITEM.AsString;
             q_geral.ParamByName('cod_fornecedor').AsInteger :=  q_temp_itensCOD_FORNECEDOR.AsInteger;
             q_geral.ParamByName('cod_empresa').AsInteger    :=  controller.xcod_empresa;
             q_geral.ParamByName('qtde').AsFloat             :=  q_temp_itensQTDE.AsFloat;
             q_geral.ParamByName('reserva').AsFloat          :=  0;
             q_geral.ExecSQL;

           end;

     //Inserir Itens_custos

          q_geral.Close;
          q_geral.SQL.Clear;
          q_geral.SQL.Text:= 'select 1 as existe from itens_custos ' +
          '  where cod_item= :cod_item ' +
          '  and cod_fornecedor = :cod_fornecedor' +
          '  and cod_empresa = :cod_empresa ';
           q_geral.ParamByName('cod_item').AsString        :=  q_temp_itensCOD_ITEM.AsString;
           q_geral.ParamByName('cod_fornecedor').AsInteger :=  q_temp_itensCOD_FORNECEDOR.AsInteger;
           q_geral.ParamByName('cod_empresa').AsInteger    :=  controller.xcod_empresa;

           q_geral.Open();

           if q_geral.RecordCount> 0 then
           begin

            //Se existe Atualiza


             q_aux.Close;
             q_aux.SQL.Clear;
             q_aux.SQL.Text:=
             ' update itens_custos set ultima_compra= sysdate , ' +
             ' custo_contabil = ( :custo_contabil + custo_contabil) /2 , ' +
             ' custo_fornecedor = :custo_fornecedor ' +
             ' where cod_item = :cod_item ' +
             ' and cod_fornecedor = :cod_fornecedor' +
             ' and cod_empresa= :cod_empresa' ;

             q_aux.ParamByName('cod_item').AsString          :=  q_temp_itensCOD_ITEM.AsString;
             q_aux.ParamByName('cod_fornecedor').AsInteger   :=  q_temp_itensCOD_FORNECEDOR.AsInteger;
             q_aux.ParamByName('cod_empresa').AsInteger      :=  controller.xcod_empresa;
             q_aux.ParamByName('custo_contabil').AsFloat   :=  v_preco_contabil;
             q_aux.ParamByName('custo_fornecedor').AsFloat :=  0;

             q_aux.ExecSQL;



           end
           else
           begin

            // sen�o insere
            q_geral.Close;
            q_geral.SQL.Clear;
            q_geral.sql.add('insert into itens_custos');
            q_geral.sql.add('(cod_empresa,');
            q_geral.sql.add('cod_fornecedor,');
            q_geral.sql.add('cod_item,');
            q_geral.sql.add('custo_contabil,');
            q_geral.sql.add('custo_fornecedor,');
            q_geral.sql.add('preco_venda,');
            q_geral.sql.add('ultima_compra ) ');
             ;
            q_geral.sql.add('values');

            q_geral.sql.add('( :cod_empresa,');
            q_geral.sql.add('  :cod_fornecedor,');
            q_geral.sql.add('  :cod_item,');
            q_geral.sql.add('  :custo_contabil,');
            q_geral.sql.add('  :custo_fornecedor,');
            q_geral.sql.add('  :preco_venda,');
            q_geral.sql.add('  sysdate )');


            //Par�metros
            //busca pre�o de venda
             q_aux.Close;
             q_aux.SQL.Clear;
             q_aux.SQL.Text:=
             'select i.preco_venda from itens i ' +
             ' where cod_item= :cod_item ' +
             ' and cod_fornecedor= :cod_fornecedor ';
             q_aux.ParamByName('cod_item').AsString          :=  q_temp_itensCOD_ITEM.AsString;
             q_aux.ParamByName('cod_fornecedor').AsInteger   :=  q_temp_itensCOD_FORNECEDOR.AsInteger;
             q_aux.Open();

             //monta par�metros
             q_geral.ParamByName('cod_item').AsString          :=  q_temp_itensCOD_ITEM.AsString;
             q_geral.ParamByName('cod_fornecedor').AsInteger   :=  q_temp_itensCOD_FORNECEDOR.AsInteger;
             q_geral.ParamByName('cod_empresa').AsInteger      :=  controller.xcod_empresa;
             q_geral.ParamByName('custo_contabil').AsFloat     :=  v_preco_contabil;
             q_geral.ParamByName('custo_fornecedor').AsFloat   :=  0 ;
             q_geral.ParamByName('preco_venda').AsFloat        :=  q_aux.FieldByName('preco_venda').AsFloat;
             q_geral.ExecSQL;

           end;

       //Insere Hist�rico

          //Busca ultimo hist�rico do item
           q_geral.Close;
           q_geral.SQL.Clear;
           q_geral.SQL.Text:=

           '   select sequencia, qtde_operacao,                                   ' +
           '          qtde_depois,                                                ' +
           '          custo_medio,                                                ' +
           '          custo_medio_anterior                                        ' +
           '     from itens_historico a                                           ' +
           '    where                                         ' +
           '                                                  ' +
           '             sequencia = (select max(sequencia)                          ' +
           '                         from itens_historico b                       ' +
           '                        where a.cod_item = b.cod_item                 ' +
           '                          and a.cod_fornecedor = b.cod_fornecedor     ' +
           '                          and a.cod_empresa = b.cod_empresa     )     ' +
           '      and cod_item = :cod_item                                        ' +
           '      and cod_fornecedor = :cod_fornecedor                            ' +
           '      and cod_empresa = :cod_empresa                                  ';

           q_geral.ParamByName('cod_item').AsString          :=  q_temp_itensCOD_ITEM.AsString;
           q_geral.ParamByName('cod_fornecedor').AsInteger   :=  q_temp_itensCOD_FORNECEDOR.AsInteger;
           q_geral.ParamByName('cod_empresa').AsInteger      :=  controller.xcod_empresa;
           q_geral.Open();

           if q_geral.RecordCount>0 then
           begin
            // Insere nova linha com dados anteriores


            q_aux.Close;
            q_aux.SQL.Clear;
            q_aux.sql.add('insert into itens_historico');
            q_aux.sql.add('(cod_controle,');
            q_aux.sql.add('cod_empresa,');
            q_aux.sql.add('cod_fornecedor,');
            q_aux.sql.add('cod_item,');
            q_aux.sql.add('cod_operacao,');
            q_aux.sql.add('custo_medio,');
            q_aux.sql.add('custo_medio_anterior,');
            q_aux.sql.add('data,');
            q_aux.sql.add('documento,');
            q_aux.sql.add('motivo,');
            q_aux.sql.add('qtde_depois,');
            q_aux.sql.add('qtde_operacao,');
            q_aux.sql.add('responsavel,');
            q_aux.sql.add('sequencia,');
            q_aux.sql.add('serie,');
            q_aux.sql.add('tipo_operacao)');
            q_aux.sql.add('values');

            q_aux.sql.add('(:cod_controle,');
            q_aux.sql.add(':cod_empresa,');
            q_aux.sql.add(':cod_fornecedor,');
            q_aux.sql.add(':cod_item,');
            q_aux.sql.add(':cod_operacao ,');
            q_aux.sql.add(':custo_medio,');
            q_aux.sql.add(':custo_medio_anterior,');
            q_aux.sql.add(' sysdate,');
            q_aux.sql.add(':documento,');
            q_aux.sql.add(':motivo,');
            q_aux.sql.add(':qtde_depois,');
            q_aux.sql.add(':qtde_operacao,');
            q_aux.sql.add(' user ,');
            q_aux.sql.add(' seq_controle_historico.nextval ,');
            q_aux.sql.add(':serie,');
            q_aux.sql.add('''E'')');

           q_aux.ParamByName('cod_item').AsString            :=  q_temp_itensCOD_ITEM.AsString;
           q_aux.ParamByName('cod_fornecedor').AsInteger     :=  q_temp_itensCOD_FORNECEDOR.AsInteger;
           q_aux.ParamByName('cod_empresa').AsInteger        :=  controller.xcod_empresa;
           q_aux.ParamByName('cod_controle').AsInteger       :=   v_controle_compra;
           q_aux.ParamByName('cod_operacao').AsInteger       :=combo_tipo_entrada.SelectedValue.ToInteger;
           q_aux.ParamByName('motivo').AsString              := combo_tipo_entrada.SelectedText;
           q_aux.ParamByName('custo_medio').AsFloat          := (v_preco_contabil +
                                                                 q_geral.FieldByName('custo_medio').AsFloat) / 2;
           q_aux.ParamByName('custo_medio_anterior').AsFloat :=  q_geral.FieldByName('custo_medio').AsFloat;
           q_aux.ParamByName('documento').AsString           := edit_numero.Text ;
           q_aux.ParamByName('qtde_depois').AsFloat          := q_geral.FieldByName('qtde_depois').AsFloat +
                                                                                     q_temp_itensQTDE.AsFloat ;
           q_aux.ParamByName('qtde_operacao').AsFloat        := q_temp_itensQTDE.AsFloat;
           q_aux.ParamByName('serie').AsString               := edit_serie.Text;

           q_aux.ExecSQL;


           end
           else
           begin
            // Insere primeira linha
            q_aux.Close;
            q_aux.SQL.Clear;
            q_aux.sql.add('insert into itens_historico');
            q_aux.sql.add('(cod_controle,');
            q_aux.sql.add('cod_empresa,');
            q_aux.sql.add('cod_fornecedor,');
            q_aux.sql.add('cod_item,');
            q_aux.sql.add('cod_operacao,');
            q_aux.sql.add('custo_medio,');
            q_aux.sql.add('custo_medio_anterior,');
            q_aux.sql.add('data,');
            q_aux.sql.add('documento,');
            q_aux.sql.add('motivo,');
            q_aux.sql.add('qtde_depois,');
            q_aux.sql.add('qtde_operacao,');
            q_aux.sql.add('responsavel,');
            q_aux.sql.add('sequencia,');
            q_aux.sql.add('serie,');
            q_aux.sql.add('tipo_operacao)');
            q_aux.sql.add('values');

            q_aux.sql.add('(:cod_controle,');
            q_aux.sql.add(':cod_empresa,');
            q_aux.sql.add(':cod_fornecedor,');
            q_aux.sql.add(':cod_item,');
            q_aux.sql.add(' 1 ,');
            q_aux.sql.add(':custo_medio,');
            q_aux.sql.add(':custo_medio_anterior,');
            q_aux.sql.add(' sysdate,');
            q_aux.sql.add(':documento,');
            q_aux.sql.add('''Entrada de Estoque'',');
            q_aux.sql.add(':qtde_depois,');
            q_aux.sql.add(':qtde_operacao,');
            q_aux.sql.add(' user ,');
            q_aux.sql.add(' seq_controle_historico.nextval ,');
            q_aux.sql.add(':serie,');
            q_aux.sql.add('''E'')');

           q_aux.ParamByName('cod_item').AsString            :=  q_temp_itensCOD_ITEM.AsString;
           q_aux.ParamByName('cod_fornecedor').AsInteger     :=  q_temp_itensCOD_FORNECEDOR.AsInteger;
           q_aux.ParamByName('cod_empresa').AsInteger        :=  controller.xcod_empresa;
           q_aux.ParamByName('cod_controle').AsInteger       :=   v_controle_compra;

           q_aux.ParamByName('custo_medio').AsFloat          := v_preco_contabil;

           q_aux.ParamByName('custo_medio_anterior').AsFloat :=  0;
           q_aux.ParamByName('documento').AsString           := edit_numero.Text ;
           q_aux.ParamByName('qtde_depois').AsFloat          := q_temp_itensQTDE.AsFloat;                                                                                     q_temp_itensQTDE.AsFloat ;
           q_aux.ParamByName('qtde_operacao').AsFloat        := q_temp_itensQTDE.AsFloat;
           q_aux.ParamByName('serie').AsString               := edit_serie.Text;

           q_aux.ExecSQL;



           end;








         q_temp_itens.Next;

  end;



  controller.DM.banco.ExecSQL('update interface_capa set lancada=''S''  where numero_nota= '+  edit_numero.Text +
                                 ' and serie='+ quotedstr(edit_serie.Text) + ' and cnpj=' + quotedstr(edit_fornecedor.Text) );
  controller.DM.banco.Commit;

  controller.xcod_controle := v_controle_compra;

  verifica_impressao;



  except

   on E: Exception do
   begin
   controller.DM.banco.Rollback;
   addtoinitproc(swalError('Erro:',E.Message ));

   end;
  end;



end;

procedure TFormEntrada_Nf.INTERFACEXMLAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDxml'').modal(''show'');');
end;

procedure TFormEntrada_Nf.IWAppFormCreate(Sender: TObject);
begin
  inherited;
RegisterCallBack('TBClientes', TBClientes);
RegisterCallBack('TBComprasItens', TBComprasItens);
RegisterCallBack('TBPesquisaP', TBPesquisaP);
RegisterCallBack('TBLocacao', TBLocacao);
RegisterCallBack('TBxml', TBxml);
RegisterCallBack('TBItensXml', TBItensXml);

end;

procedure TFormEntrada_Nf.IWAppFormDestroy(Sender: TObject);
begin
  inherited;
q_datatable.Close;
q_datatable.SQL.Clear;
q_datatable.SQL.Add('delete from temp_compras_itens');
q_datatable.ExecSQL;
end;

procedure TFormEntrada_Nf.IWAppFormShow(Sender: TObject);
var
i : integer;
begin
  inherited;

      q_fornecedor.Close;
      q_fornecedor.Open();
      q_marca_itens.Close;
      q_marca_itens.Open();
      q_grupos.Close;
      q_grupos.Open();

      q_local_estoque.Close;
      q_local_estoque.ParamByName('cod_empresa').AsInteger :=
        controller.xcod_empresa;
      q_local_estoque.Open();
      edit_numero.SetFocus;

  // Adiciona hint de todos os componentes
  For i := 0 to componentcount - 1 do
  begin

    if Components[i] is TIWEdit then
    begin

      with Components[i] as TIWEdit do
      begin

        hint := name;

        if DataType = stNumber then
        begin

          DataType:= stText;
        end;
        if datatype=stDate then
        begin
          DataType:= stText;
        end;


      end;

    end;
    if Components[i] is TIWButton then
    begin

      with Components[i] as TIWButton do
      begin

        hint := name;

      end;

    end;

    if Components[i] is TIWComboBox then
    begin

      with Components[i] as TIWComboBox do
      begin

        hint := name + ' ,valor:' + SelectedValue;

      end;

    end;
    if Components[i] is TIWDBLookupComboBox then
    begin

      with Components[i] as TIWDBLookupComboBox do
      begin

        hint := name + ' ,valor:' + KeyValue;

      end;

    end;

    if Components[i] is TIWListbox then
    begin

      with Components[i] as TIWListbox do
      begin

        hint := name;

      end;

    end;

    if Components[i] is TIWCheckBox then
    begin

      with Components[i] as TIWCheckBox do
      begin

        hint := name;

      end;

    end;

    if Components[i] is TIWRadioButton then
    begin

      with Components[i] as TIWRadioButton do
      begin

        hint := name;

      end;

    end;

  end;

end;

procedure TFormEntrada_Nf.IWBTNACAOAsyncClick(Sender: TObject;
  EventParams: TStringList);
  var
  id:string;
  v_uf :string;
begin
  inherited;
  // Aceit
  // Delet
  // AceiP
  // AceiL Aceitar loca��o
  // VERIT
  // CADPR
  // XMLIT
  //AcXML  Aceitar XML
  //EditI

  if copy(iwacao.Text, 1, 5) = 'EditI' then // Edita o Item Lan�ado na tempor�ria
  begin
   id := copy(iwacao.Text, 6, Length(iwacao.Text));

   q_geral.Close;
   q_geral.SQL.Clear;
   q_geral.sql.add('select');
   q_geral.sql.add('');
   q_geral.sql.add('(select i.descricao');
   q_geral.sql.add('from itens i');
   q_geral.sql.add('where i.cod_item = temp.cod_item');
   q_geral.sql.add('and i.cod_fornecedor = temp.cod_fornecedor) DESCRICAO,');
   q_geral.sql.add('PRECO_UNITARIO,');
   q_geral.sql.add('QTDE,');
   q_geral.sql.add('VALOR_TOTAL,');
   q_geral.sql.add('NCM,');
   q_geral.sql.add('CFOP,');
   q_geral.sql.add('BC_ICMS,');
   q_geral.sql.add('ALIQ_ICMS,');
   q_geral.sql.add('VALOR_ICMS,');
   q_geral.sql.add('BC_ICMS_ST,');
   q_geral.sql.add('ALIQ_ICMS_ST,');
   q_geral.sql.add('VALOR_ICMS_ST,');
   q_geral.sql.add('VAL_DESC,');
   q_geral.sql.add('COD_FORNECEDOR,');
   q_geral.sql.add('PERC_DESC,');
   q_geral.sql.add('BC_IPI,');
   q_geral.sql.add('ALIQ_IPI,');
   q_geral.sql.add('VALOR_IPI,');
   q_geral.sql.add('NF_COMPRA,');
   q_geral.sql.add('SERIE,');
   q_geral.sql.add('COD_EMPRESA,');
   q_geral.sql.add('FORNECEDOR,');
   q_geral.sql.add('SEQ,');
   q_geral.sql.add('LOCACAO,');
   q_geral.sql.add('COD_LOCAL_ESTOQUE,');
   q_geral.sql.add('CST,');
   q_geral.sql.add('FRETE,');
   q_geral.sql.add('SEGUROS,');
   q_geral.sql.add('OUTRAS,');
   q_geral.sql.add('RATEIO_FRETE,');
   q_geral.sql.add('COD_ITEM');
   q_geral.sql.add('from temp_compras_itens temp');

   q_geral.sql.add('where seq = :seq ');

   q_geral.ParamByName('seq').AsString:=  id;


   q_geral.Open();

   //Carrega o Item para os seus campos

  edit_cod_produto.Text             := q_geral.FieldByName('COD_ITEM').AsString;
  edit_descricao_item.Text          := q_geral.FieldByName('DESCRICAO').AsString;
  get_fornecedor;
  edit_fornecedor_item.KeyValue     := q_geral.FieldByName('COD_FORNECEDOR').AsInteger;
  edit_qtde_itens.Text              := q_geral.FieldByName('QTDE').AsString;
  edit_preco_unitario_item.Text     := q_geral.FieldByName('PRECO_UNITARIO').AsString;
  edit_valor_ipi_item.Text          := q_geral.FieldByName('VALOR_IPI').AsString;
  edit_preco_liquido_item.Text      := q_geral.FieldByName('VALOR_TOTAL').AsString;
  edit_ncm_item.Text                := q_geral.FieldByName('NCM').AsString;
  combo_cfop_item.KeyValue          := q_geral.FieldByName('CFOP').AsInteger;
  edit_base_icms_item.Text          := q_geral.FieldByName('BC_ICMS').AsString;
  edit_aliq_icms_item.Text          := q_geral.FieldByName('ALIQ_ICMS').AsString;
  edit_valor_icms_item.Text         := q_geral.FieldByName('VALOR_ICMS').AsString;
  edit_base_icms_st_item.Text       := q_geral.FieldByName('BC_ICMS_ST').AsString;
  edit_Aliq_icms_st_item.Text       := q_geral.FieldByName('ALIQ_ICMS_ST').AsString;
  edit_valor_icms_st_item.Text      := q_geral.FieldByName('VALOR_ICMS_ST').AsString;
  combo_local_estoque.KeyValue      := q_geral.FieldByName('COD_LOCAL_ESTOQUE').AsInteger;
  edit_locacao_item.Text            := q_geral.FieldByName('LOCACAO').AsString;

  if ifnull(edit_desconto.Text) <>'0' then
  begin
   edit_perc_desc_item.Hint:=q_geral.FieldByName('PERC_DESC').AsString;
  end
  else
  begin

   edit_perc_desc_item.Text         :=q_geral.FieldByName('PERC_DESC').AsString;

  end;



  edit_qtde_itens.Enabled:= true;
  edit_preco_unitario_item.Enabled:=true;




   //Deleta da Tempor�ria
    q_datatable.Close;
    q_datatable.SQL.Clear;
    q_datatable.SQL.Add(' delete from temp_compras_itens where seq=  ' + id);
    q_datatable.ExecSQL;
    atu_grid_itens;






  end;




  if copy(iwacao.Text, 1, 5) = 'AcXML' then // Carregar XML
  begin
   id := copy(iwacao.Text, 6, Length(iwacao.Text));
   carregar_xml(id);

  end;

  if copy(iwacao.Text, 1, 5) = 'XMLI2' then // Volta para os itens do XML
  begin

    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBItensXml").DataTable().ajax.reload();');

    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$(''#MDItensXml'').modal(''show'');');

  end;

  if copy(iwacao.Text, 1, 5) = 'XMLIT' then // Volta para capa do XML
  begin

    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBxml").DataTable().ajax.reload();');

    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$(''#MDxml'').modal(''show'');');

  end;

  if copy(iwacao.Text, 1, 5) = 'CADPR' then
  begin
    id := copy(iwacao.Text, 6, Length(iwacao.Text));
    q_geral.Close;
    q_geral.SQL.Clear;
    q_geral.SQL.Add('select a.cod_produto,');
    q_geral.SQL.Add('a.descricao_prod,');
    q_geral.SQL.Add('a.ncm,');
    q_geral.SQL.Add('a.cod_produto as cod_barras,');
    q_geral.SQL.Add('a.valor_unitario');
    q_geral.SQL.Add('from interface_itens a where a.id= :id ');
    q_geral.ParamByName('id').AsInteger := StrToInt(id);
    q_geral.Open();

    edit_md_preco_venda.Enabled:=true;
    edit_md_comp_item.Enabled:=true;

    edit_md_cod_item.Text := q_geral.FieldByName('cod_produto').AsString;
    edit_md_descricao.Text := q_geral.FieldByName('descricao_prod').AsString;
    edit_md_preco_venda.Text := q_geral.FieldByName('valor_unitario').AsString;
    edit_md_ncm_item.Text := q_geral.FieldByName('ncm').AsString;
    edit_cod_barras.Text := q_geral.FieldByName('cod_barras').AsString;
    combo_md_marca_item.ItemIndex := -1;
    combo_md_grupo.ItemIndex := -1;
    combo_md_fornecedor.ItemIndex := -1;
    combo_origem_item.ItemIndex := -1;
    edit_md_comp_item.Text := '';
    EDIT_OP_CAD.Text := 'XML';

    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$(''#MDCadastroP'').modal(''show'');');

  end;

  if copy(iwacao.Text, 1, 5) = 'VERIT' then
  begin
    id := copy(iwacao.Text, 6, Length(iwacao.Text));

    EDIT_COD_CONTROLE_ITEM.Text := id;
    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBItensXml").DataTable().ajax.reload();');
    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$(''#MDItensXml'').modal(''show'');');

  end;

  if copy(iwacao.Text, 1, 5) = 'AceiL' then
  begin

   if combo_pesquisar_l.ItemIndex > -1 then
   begin

    id := copy(iwacao.Text, 6, Length(iwacao.Text));

    edit_locacao_item.Text := id;

    combo_local_estoque.KeyValue := combo_pesquisar_l.KeyValue;
   end
   else
   begin
     addtoinitproc(swalAlert('Alerta','Favor selecionar um local de estoque!'));


   end;

  end;

  if copy(iwacao.Text, 1, 5) = 'AceiP' then
  begin
    id := copy(iwacao.Text, 6, Length(iwacao.Text));

    edit_cod_produto.Text := id;

    get_fornecedor;

  end;

  if copy(iwacao.Text, 1, 5) = 'Aceit' then
  begin
    id := copy(iwacao.Text, 6, Length(iwacao.Text));

    q_datatable.Close;
    q_datatable.SQL.Clear;
    q_datatable.SQL.Add
      (' select cod_cliente,nome,uf from clientes where cod_cliente like  ' +
      quotedstr('%' + id + '%'));
    q_datatable.Open();

    edit_nome_fornecedor.Text := q_datatable.FieldByName('nome').AsString;
    edit_fornecedor.Text := q_datatable.FieldByName('cod_cliente').AsString;
    edit_uf_fornecedor.Text := q_datatable.FieldByName('uf').AsString;

    v_uf := controller.xUF;

    if edit_uf_fornecedor.Text = v_uf then
    begin
      q_naturezas.Close;
      q_naturezas.ParamByName('limites').AsString := 'E';
      q_naturezas.Open();



      q_nat_trib.Close;
      q_nat_isentas.Close;
      q_nat_st.Close;

      q_nat_trib.ParamByName('limites').AsString:='E';
      q_nat_isentas.ParamByName('limites').AsString:='E';
      q_nat_st.ParamByName('limites').AsString:='E';

      q_nat_trib.Open();
      q_nat_isentas.Open();
      q_nat_st.Open();


    end
    else
    begin
      q_naturezas.Close;
      q_naturezas.ParamByName('limites').AsString := 'I';
      q_naturezas.Open();


       q_nat_trib.Close;
      q_nat_isentas.Close;
      q_nat_st.Close;

      q_nat_trib.ParamByName('limites').AsString:='I';
      q_nat_isentas.ParamByName('limites').AsString:='I';
      q_nat_st.ParamByName('limites').AsString:='I';

      q_nat_trib.Open();
      q_nat_isentas.Open();
      q_nat_st.Open();
    end;

    combo_cfop_item.Enabled := true;
    combo_cfop_item.RefreshItems;

    combo_cfop_trib.Enabled:=true;
    combo_cfop_trib.RefreshItems;

    combo_cfop_isentas.Enabled:=true;
    combo_cfop_isentas.RefreshItems;

    combo_cfop_st.Enabled:=true;
    combo_cfop_st.RefreshItems;

  end;

  if copy(iwacao.Text, 1, 5) = 'Delet' then
  begin
    id := copy(iwacao.Text, 6, Length(iwacao.Text));

    q_datatable.Close;
    q_datatable.SQL.Clear;
    q_datatable.SQL.Add(' delete from temp_compras_itens where seq=  ' + id);
    q_datatable.ExecSQL;
    atu_grid_itens;

  end;
end;

procedure TFormEntrada_Nf.IWFileAsyncUploadCompleted(Sender: TObject;
  var DestPath, FileName: string; var SaveFile, Overwrite: Boolean);
  var nota,v_data_emissao:string;

  Ms: tmemorystream;
  v_nome_arq: string;
  //Tipo de vari�vel n� XML (TAG)
  nodeinfNFe,nodeChaveNFE,nodeDet,nodeICMS : ixmlnode;
  i,v_cod_controle:integer;
begin
  inherited;

  Ms := tmemorystream.create;
  v_nome_arq := '';

  controller.xErro:='';
  controller.xerror:='';

  try

    controller.DM.banco.StartTransaction;

      try

       Ms := tmemorystream.create;
       iwfile.SaveToStream(FileName, Ms);
       Ms.Position := 0;
       nfe.LoadFromStream(Ms);
       nodeinfNFe:= nfe.ChildNodes.FindNode('nfeProc').ChildNodes.FindNode('NFe').ChildNodes.FindNode('infNFe') ;
       nodeChaveNFE:=  nfe.ChildNodes.FindNode('nfeProc').ChildNodes.FindNode('protNFe');
       nodeinfNFe.ChildNodes.FindNode('ide').ChildValues['cNF'];

       v_cod_controle:=0;

       q_geral.Close;
       q_geral.SQL.Clear;
       q_geral.SQL.Add('  select seq_interface_capa.nextval as v_seq from dual ');
       q_geral.Open();

       v_cod_controle := q_geral.FieldByName('v_seq').AsInteger;

       q_geral.Close;
       q_geral.SQL.Clear;
       q_geral.sql.add('INSERT INTO interface_capa');
       q_geral.sql.add('(dest_cnpj,');
       q_geral.sql.add('dest_nome,');
       q_geral.sql.add('lancada,');
       q_geral.sql.add('bc_icms,');
       q_geral.sql.add('valor_icms,');
       q_geral.sql.add('bc_icms_st,');
       q_geral.sql.add('valor_icms_st,');
       q_geral.sql.add('total_produtos,');
       q_geral.sql.add('valor_frete,');
       q_geral.sql.add('valor_seguro,');
       q_geral.sql.add('valor_desconto,');
       q_geral.sql.add('valor_ipi,');
       q_geral.sql.add('valor_outros,');
       q_geral.sql.add('total_nota,');
       q_geral.sql.add('chave_nfe,');
       q_geral.sql.add('xml_nota,');
       q_geral.sql.add('cod_empresa,');
       q_geral.sql.add('id,');
       q_geral.sql.add('serie,');
       q_geral.sql.add('numero_nota,');
       q_geral.sql.add('emissao,');
       q_geral.sql.add('cnpj,');
       q_geral.sql.add('nome_fornecedor,');
       q_geral.sql.add('endereco,');
       q_geral.sql.add('numero,');
       q_geral.sql.add('bairro,');
       q_geral.sql.add('cidade,');
       q_geral.sql.add('uf,');
       q_geral.sql.add('cep,');
       q_geral.sql.add('fone,');
       q_geral.sql.add('ie,');
       q_geral.sql.add('iest)');
       q_geral.sql.add('VALUES');
       q_geral.sql.add('(:dest_cnpj,');
       q_geral.sql.add(':dest_nome,');
       q_geral.sql.add(':lancada,');
       q_geral.sql.add(':bc_icms,');
       q_geral.sql.add(':valor_icms,');
       q_geral.sql.add(':bc_icms_st,');
       q_geral.sql.add(':valor_icms_st,');
       q_geral.sql.add(':total_produtos,');
       q_geral.sql.add(':valor_frete,');
       q_geral.sql.add(':valor_seguro,');
       q_geral.sql.add(':valor_desconto,');
       q_geral.sql.add(':valor_ipi,');
       q_geral.sql.add(':valor_outros,');
       q_geral.sql.add(':total_nota,');
       q_geral.sql.add(':chave_nfe,');
       q_geral.sql.add(':xml_nota,');
       q_geral.sql.add(':cod_empresa,');
       q_geral.sql.add(' :id,');
       q_geral.sql.add(':serie,');
       q_geral.sql.add(':numero_nota,');
       q_geral.sql.add(':emissao,');
       q_geral.sql.add(':cnpj,');
       q_geral.sql.add(':nome_fornecedor,');
       q_geral.sql.add(':endereco,');
       q_geral.sql.add(':numero,');
       q_geral.sql.add(':bairro,');
       q_geral.sql.add(':cidade,');
       q_geral.sql.add(':uf,');
       q_geral.sql.add(':cep,');
       q_geral.sql.add(':fone,');
       q_geral.sql.add(':ie,');
       q_geral.sql.add(':iest)');

       //Sess�o de par�metros
       q_geral.ParamByName('id').AsInteger:= v_cod_controle;
       q_geral.ParamByName('dest_cnpj').AsString:=  nodeinfNFe.ChildNodes.FindNode('dest').ChildValues['CNPJ'];
       q_geral.ParamByName('dest_nome').AsString:=  nodeinfNFe.ChildNodes.FindNode('dest').ChildValues['xNome'];
       q_geral.ParamByName('lancada').AsString:='N';
       q_geral.ParamByName('bc_icms').AsString:=  nodeinfNFe.ChildNodes.FindNode('total').ChildNodes.FindNode('ICMSTot').ChildValues['vBC'];
       q_geral.ParamByName('valor_icms').AsString:=  nodeinfNFe.ChildNodes.FindNode('total').ChildNodes.FindNode('ICMSTot').ChildValues['vICMS'];
       q_geral.ParamByName('bc_icms_st').AsString:=  nodeinfNFe.ChildNodes.FindNode('total').ChildNodes.FindNode('ICMSTot').ChildValues['vBCST'];
       q_geral.ParamByName('valor_icms_st').AsString:= nodeinfNFe.ChildNodes.FindNode('total').ChildNodes.FindNode('ICMSTot').ChildValues['vST'];
       q_geral.ParamByName('total_produtos').AsString:= nodeinfNFe.ChildNodes.FindNode('total').ChildNodes.FindNode('ICMSTot').ChildValues['vProd'];
       q_geral.ParamByName('valor_frete').AsString:= nodeinfNFe.ChildNodes.FindNode('total').ChildNodes.FindNode('ICMSTot').ChildValues['vFrete'];
       q_geral.ParamByName('valor_seguro').AsString:= nodeinfNFe.ChildNodes.FindNode('total').ChildNodes.FindNode('ICMSTot').ChildValues['vSeg'];
       q_geral.ParamByName('valor_desconto').AsString:= nodeinfNFe.ChildNodes.FindNode('total').ChildNodes.FindNode('ICMSTot').ChildValues['vDesc'];
       q_geral.ParamByName('valor_ipi').AsString:= nodeinfNFe.ChildNodes.FindNode('total').ChildNodes.FindNode('ICMSTot').ChildValues['vIPI'];
       q_geral.ParamByName('valor_outros').AsString:= nodeinfNFe.ChildNodes.FindNode('total').ChildNodes.FindNode('ICMSTot').ChildValues['vOutro'];
       q_geral.ParamByName('total_nota').AsString:= nodeinfNFe.ChildNodes.FindNode('total').ChildNodes.FindNode('ICMSTot').ChildValues['vNF'];
       q_geral.ParamByName('chave_nfe').AsString:= nodeChaveNFE.ChildNodes.FindNode('infProt').ChildValues['chNFe'];
       q_geral.ParamByName('xml_nota').AsXML:= nfe.XML.Text;
       q_geral.ParamByName('cod_empresa').AsInteger:= controller.xcod_empresa;
       q_geral.ParamByName('serie').AsString :=  nodeinfNFe.ChildNodes.FindNode('ide').ChildValues['serie'];
       q_geral.ParamByName('numero_nota').AsInteger:=  nodeinfNFe.ChildNodes.FindNode('ide').ChildValues['nNF'];
       v_data_emissao:=   copy(nodeinfNFe.ChildNodes.FindNode('ide').ChildValues['dhEmi'],1,10);
       q_geral.ParamByName('emissao').AsString :=     (v_data_emissao);
       q_geral.ParamByName('cnpj').AsString  :=  nodeinfNFe.ChildNodes.FindNode('emit').ChildValues['CNPJ'];
       q_geral.ParamByName('nome_fornecedor').AsString:=nodeinfNFe.ChildNodes.FindNode('emit').ChildValues['xNome'];
       q_geral.ParamByName('endereco').AsString:= nodeinfNFe.ChildNodes.FindNode('emit').ChildNodes.FindNode('enderEmit').ChildValues['xLgr'];
       q_geral.ParamByName('numero').AsString:= nodeinfNFe.ChildNodes.FindNode('emit').ChildNodes.FindNode('enderEmit').ChildValues['nro'];
       q_geral.ParamByName('bairro').AsString:=    nodeinfNFe.ChildNodes.FindNode('emit').ChildNodes.FindNode('enderEmit').ChildValues['xBairro'];
       q_geral.ParamByName('cidade').AsString:=    nodeinfNFe.ChildNodes.FindNode('emit').ChildNodes.FindNode('enderEmit').ChildValues['xMun'];
       q_geral.ParamByName('uf').AsString :=    nodeinfNFe.ChildNodes.FindNode('emit').ChildNodes.FindNode('enderEmit').ChildValues['UF'];
       q_geral.ParamByName('cep').AsString:=     nodeinfNFe.ChildNodes.FindNode('emit').ChildNodes.FindNode('enderEmit').ChildValues['CEP'];
       q_geral.ParamByName('fone').AsString:=      nodeinfNFe.ChildNodes.FindNode('emit').ChildNodes.FindNode('enderEmit').ChildValues['fone'];
       q_geral.ParamByName('ie').AsString:=         '0';//  nodeinfNFe.ChildNodes.FindNode('emit').ChildValues['IE'];
       q_geral.ParamByName('iest').AsString :=      '0';//nodeinfNFe.ChildNodes.FindNode('emit').ChildValues['IEST'];
       q_geral.ExecSQL;

       //Carregar itens da Nota fiscal


          for I := 0 to nodeinfNFe.ChildNodes.Count -1 do   //Varre os n�s da nfe que contem os dados da nfe
             begin

                if nodeinfnfe.ChildNodes[i].NodeName='det' then   //verifica se esta no n� de produtos "DET"
                   begin

                     nodeDet:= nodeinfnfe.ChildNodes[i];
                     nodeICMS:= nodeinfnfe.ChildNodes.FindNode('det').ChildNodes.FindNode('imposto').ChildNodes.FindNode('ICMS');

                     q_geral.Close;
                     q_geral.SQL.Clear;
                     q_geral.sql.add('INSERT INTO INTERFACE_ITENS');
                     q_geral.sql.add('(ID,');
                     q_geral.sql.add(' cod_controle,');
                     q_geral.sql.add('COD_PRODUTO,');
                     q_geral.sql.add('DESCRICAO_PROD,');
                     q_geral.sql.add('NCM,');
                     q_geral.sql.add('UN,');
                     q_geral.sql.add('QTDE,');
                     q_geral.sql.add('VALOR_UNITARIO,');
                     q_geral.sql.add('ORIGEM,');
                     q_geral.sql.add('CST,');
                     q_geral.sql.add('BC_ICMS,');
                     q_geral.sql.add('ALIQ_ICMS,');
                     q_geral.sql.add('VALOR_ICMS,');
                     q_geral.sql.add('CST_IPI,');
                     q_geral.sql.add('BC_IPI,');
                     q_geral.sql.add('ALIQ_IPI,');
                     q_geral.sql.add('VALOR_IPI,');
                     q_geral.sql.add('CST_PIS,');
                     q_geral.sql.add('BC_PIS,');
                     q_geral.sql.add('ALIQ_PIS,');
                     q_geral.sql.add('VALOR_PIS,');
                     q_geral.sql.add('CST_COFINS,');
                     q_geral.sql.add('BC_COFINS,');
                     q_geral.sql.add('ALIQ_COFINS,');
                     q_geral.sql.add('VALOR_COFINS,');
                     q_geral.sql.add('BC_ST,');
                     q_geral.sql.add('MVA,');
                     q_geral.sql.add('ALIQ_ICMS_ST,');
                     q_geral.sql.add('VALOR_ICMS_ST,');
                     q_geral.sql.add('NUMERO_NOTA,');
                     q_geral.sql.add('SERIE,');
                     q_geral.sql.add('CNPJ,');
                     q_geral.sql.add('COD_EMPRESA)');
                     q_geral.sql.add('VALUES');
                     q_geral.sql.add('( seq_interface_itens.nextval,');
                     q_geral.sql.add(':cod_controle,');
                     q_geral.sql.add(':COD_PRODUTO,');
                     q_geral.sql.add(':DESCRICAO_PROD,');
                     q_geral.sql.add(':NCM,');
                     q_geral.sql.add(':UN,');
                     q_geral.sql.add(':QTDE,');
                     q_geral.sql.add(':VALOR_UNITARIO,');
                     q_geral.sql.add(':ORIGEM,');
                     q_geral.sql.add(':CST,');
                     q_geral.sql.add(':BC_ICMS,');
                     q_geral.sql.add(':ALIQ_ICMS,');
                     q_geral.sql.add(':VALOR_ICMS,');
                     q_geral.sql.add(':CST_IPI,');
                     q_geral.sql.add(':BC_IPI,');
                     q_geral.sql.add(':ALIQ_IPI,');
                     q_geral.sql.add(':VALOR_IPI,');
                     q_geral.sql.add(':CST_PIS,');
                     q_geral.sql.add(':BC_PIS,');
                     q_geral.sql.add(':ALIQ_PIS,');
                     q_geral.sql.add(':VALOR_PIS,');
                     q_geral.sql.add(':CST_COFINS,');
                     q_geral.sql.add(':BC_COFINS,');
                     q_geral.sql.add(':ALIQ_COFINS,');
                     q_geral.sql.add(':VALOR_COFINS,');
                     q_geral.sql.add(':BC_ST,');
                     q_geral.sql.add(':MVA,');
                     q_geral.sql.add(':ALIQ_ICMS_ST,');
                     q_geral.sql.add(':VALOR_ICMS_ST,');
                     q_geral.sql.add(':NUMERO_NOTA,');
                     q_geral.sql.add(':SERIE,');
                     q_geral.sql.add(':CNPJ,');
                     q_geral.sql.add(':COD_EMPRESA)');


                     //Dados do Produto
                     Q_GERAL.ParamByName('cod_controle').AsInteger:=  v_cod_controle;
                      Q_GERAL.ParamByName('COD_PRODUTO').Value    :=  nodedet.ChildNodes.FindNode('prod').ChildValues['cProd'];
                      q_geral.ParamByName('DESCRICAO_PROD').Value :=  nodedet.ChildNodes.FindNode('prod').ChildValues['xProd'];
                      q_geral.ParamByName('NCM').Value            :=  nodedet.ChildNodes.FindNode('prod').ChildValues['NCM'];
                      q_geral.ParamByName('UN').Value             :=  nodedet.ChildNodes.FindNode('prod').ChildValues['uCom'];
                      q_geral.ParamByName('QTDE').Value           :=  nodedet.ChildNodes.FindNode('prod').ChildValues['qTrib'];
                      q_geral.ParamByName('VALOR_UNITARIO').Value :=  nodedet.ChildNodes.FindNode('prod').ChildValues['vUnCom'];

                      //ICMS   do produto

                      if nodeDet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('ICMS').ChildNodes[0].NodeName = 'ICMS00' then    //verifica se � tributado integralmente
                        begin

                          q_geral.ParamByName('ORIGEM').Value         :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('ICMS').ChildNodes.FindNode('ICMS00').ChildValues['orig'];
                          q_geral.ParamByName('CST').Value            :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('ICMS').ChildNodes.FindNode('ICMS00').ChildValues['CST'];
                          q_geral.ParamByName('BC_ICMS').Value        :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('ICMS').ChildNodes.FindNode('ICMS00').ChildValues['vBC'];
                          q_geral.ParamByName('ALIQ_ICMS').Value      :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('ICMS').ChildNodes.FindNode('ICMS00').ChildValues['pICMS'];
                          q_geral.ParamByName('VALOR_ICMS').Value     :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('ICMS').ChildNodes.FindNode('ICMS00').ChildValues['vICMS'];

                           //Icms ST do produto
                          q_geral.ParamByName('BC_ST').Value          :=  0;
                          q_geral.ParamByName('MVA').Value            :=  0;
                          q_geral.ParamByName('ALIQ_ICMS_ST').Value   :=  0;
                          q_geral.ParamByName('VALOR_ICMS_ST').Value  :=  0;

                        end;

                        if nodeDet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('ICMS').ChildNodes[0].NodeName ='ICMS10' then    //verifica se � substitui��o tribut�ria
                        begin

                          q_geral.ParamByName('ORIGEM').Value         :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('ICMS').ChildNodes.FindNode('ICMS10').ChildValues['orig'];
                          q_geral.ParamByName('CST').Value            :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('ICMS').ChildNodes.FindNode('ICMS10').ChildValues['CST'];
                          q_geral.ParamByName('BC_ICMS').Value        :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('ICMS').ChildNodes.FindNode('ICMS10').ChildValues['vBC'];
                          q_geral.ParamByName('ALIQ_ICMS').Value      :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('ICMS').ChildNodes.FindNode('ICMS10').ChildValues['pICMS'];
                          q_geral.ParamByName('VALOR_ICMS').Value     :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('ICMS').ChildNodes.FindNode('ICMS10').ChildValues['vICMS'];

                           //Icms ST do produto

                          q_geral.ParamByName('BC_ST').Value          :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('ICMS').ChildNodes.FindNode('ICMS10').ChildValues['vBCST'];
                          q_geral.ParamByName('MVA').Value            :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('ICMS').ChildNodes.FindNode('ICMS10').ChildValues['pMVAST'];
                          q_geral.ParamByName('ALIQ_ICMS_ST').Value   :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('ICMS').ChildNodes.FindNode('ICMS10').ChildValues['pICMSST'];
                          q_geral.ParamByName('VALOR_ICMS_ST').Value  :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('ICMS').ChildNodes.FindNode('ICMS10').ChildValues['vICMSST'];

                        end;

                      //IPI do produto
                      q_geral.ParamByName('CST_IPI').Value        :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('IPI').ChildNodes.FindNode('IPITrib').ChildValues['CST'];
                      q_geral.ParamByName('BC_IPI').Value         :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('IPI').ChildNodes.FindNode('IPITrib').ChildValues['vBC'];
                      q_geral.ParamByName('ALIQ_IPI').Value       :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('IPI').ChildNodes.FindNode('IPITrib').ChildValues['pIPI'];
                      q_geral.ParamByName('VALOR_IPI').Value      :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('IPI').ChildNodes.FindNode('IPITrib').ChildValues['vIPI'];

                      //PIS do produto
                      q_geral.ParamByName('CST_PIS').Value        :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('PIS').ChildNodes.FindNode('PISAliq').ChildValues['CST'];
                      q_geral.ParamByName('BC_PIS').Value         :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('PIS').ChildNodes.FindNode('PISAliq').ChildValues['vBC'];
                      q_geral.ParamByName('ALIQ_PIS').Value       :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('PIS').ChildNodes.FindNode('PISAliq').ChildValues['pPIS'];
                      q_geral.ParamByName('VALOR_PIS').Value      :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('PIS').ChildNodes.FindNode('PISAliq').ChildValues['vPIS'];

                      //Cofins do produto
                      q_geral.ParamByName('CST_COFINS').Value     :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('COFINS').ChildNodes.FindNode('COFINSAliq').ChildValues['CST'];
                      q_geral.ParamByName('BC_COFINS').Value      :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('COFINS').ChildNodes.FindNode('COFINSAliq').ChildValues['vBC'];
                      q_geral.ParamByName('ALIQ_COFINS').Value    :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('COFINS').ChildNodes.FindNode('COFINSAliq').ChildValues['pCOFINS'];
                      q_geral.ParamByName('VALOR_COFINS').Value   :=  nodedet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('COFINS').ChildNodes.FindNode('COFINSAliq').ChildValues['vCOFINS'];



                      //Dados da NF
                      q_geral.ParamByName('NUMERO_NOTA').Value    :=  nodeinfNFe.ChildNodes.FindNode('ide').ChildValues['nNF'];
                      q_geral.ParamByName('SERIE').Value          :=  nodeinfNFe.ChildNodes.FindNode('ide').ChildValues['serie'];
                      q_geral.ParamByName('CNPJ').Value           :=  '0';
                      q_geral.ParamByName('COD_EMPRESA').Value    :=  controller.xcod_empresa;
                      q_geral.ExecSQL;

                    end;

                  end;

                  controller.DM.banco.Commit;
                  controller.xErro:='N';




      finally
       Ms.Free;
      end;
  except

    on e: Exception do
    begin
     controller.DM.banco.Rollback;
     controller.xError:= e.Message;
     controller.xErro:='S';

    end;



  end;







end;

procedure TFormEntrada_Nf.IWFileAsyncUploadSuccess(Sender: TObject;
  EventParams: TStringList);

begin
  inherited;

  if controller.xErro='S' then
  begin
  addtoinitproc(swalError('Erro ao carregar Nota!',controller.xError));

  end
  else
  begin
   addtoinitproc(swalSuccess('Sucesso!','Nota fiscal carregada com sucesso!'));
   WebApplication.CallBackResponse.AddJavaScriptToExecute('$("#TBxml").DataTable().ajax.reload();');
  end;




end;

procedure TFormEntrada_Nf.lancar_itens;
begin

 if edit_cod_produto.Text='' then
 begin
   addtoinitproc(swalAlert('Alerta!','N�o h� o que lan�ar!'));
 end
 else
 begin


      q_datatable.Close;
      q_datatable.SQL.Clear;
      q_datatable.sql.add('insert into temp_compras_itens');
      q_datatable.sql.add('( frete,');
      q_datatable.sql.add('outras,');
      q_datatable.sql.add('seguros,');
      q_datatable.sql.add('rateio_frete,');
      q_datatable.sql.add('cst,');
      q_datatable.sql.add('aliq_icms,');
      q_datatable.sql.add('aliq_icms_st,');
      q_datatable.sql.add('aliq_ipi,');
      q_datatable.sql.add('bc_icms,');
      q_datatable.sql.add('bc_icms_st,');
      q_datatable.sql.add('bc_ipi,');
      q_datatable.sql.add('cfop,');
      q_datatable.sql.add('cod_empresa,');
      q_datatable.sql.add('cod_fornecedor,');
      q_datatable.sql.add('cod_item,');
      q_datatable.sql.add('cod_local_estoque,');
      q_datatable.sql.add('descricao,');
      q_datatable.sql.add('fornecedor,');
      q_datatable.sql.add('locacao,');
      q_datatable.sql.add('ncm,');
      q_datatable.sql.add('nf_compra,');
      q_datatable.sql.add('perc_desc,');
      q_datatable.sql.add('preco_unitario,');
      q_datatable.sql.add('qtde,');
      q_datatable.sql.add(' seq ,');
      q_datatable.sql.add('serie,');
      q_datatable.sql.add('val_desc,');
      q_datatable.sql.add('valor_icms,');
      q_datatable.sql.add('valor_icms_st,');
      q_datatable.sql.add('valor_ipi,');
      q_datatable.sql.add('valor_total)');
      q_datatable.sql.add('values');

      // Par�metros
      q_datatable.sql.add('(:frete ,');
      q_datatable.sql.add(' :outras ,');
      q_datatable.sql.add(' :seguros ,');
      q_datatable.sql.add(' :rateio_frete ,');
      q_datatable.sql.add(' :cst ,');
      q_datatable.sql.add(' :aliq_icms ,');
      q_datatable.sql.add(' :aliq_icms_st ,');
      q_datatable.sql.add(' :aliq_ipi ,');
      q_datatable.sql.add(' :bc_icms ,');
      q_datatable.sql.add(' :bc_icms_st ,');
      q_datatable.sql.add(' :bc_ipi ,');
      q_datatable.sql.add(' :cfop ,');
      q_datatable.sql.add(' :cod_empresa ,');
      q_datatable.sql.add(' :cod_fornecedor ,');
      q_datatable.sql.add(' :cod_item ,');
      q_datatable.sql.add(' :cod_local_estoque ,');
      q_datatable.sql.add(' :descricao ,');
      q_datatable.sql.add(' :fornecedor ,');
      q_datatable.sql.add(' :locacao ,');
      q_datatable.sql.add(' :ncm ,');
      q_datatable.sql.add(' :nf_compra ,');
      q_datatable.sql.add(' :perc_desc ,');
      q_datatable.sql.add(' :preco_unitario ,');
      q_datatable.sql.add(' :qtde ,');
      q_datatable.sql.add(' seq_tmp_compras_itens.nextval ,');
      q_datatable.sql.add(' :serie ,');
      q_datatable.sql.add(' :val_desc ,');
      q_datatable.sql.add(' :valor_icms ,');
      q_datatable.sql.add(' :valor_icms_st ,');
      q_datatable.sql.add(' :valor_ipi ,');
      q_datatable.sql.add(' :valor_total )');

      //Passagem de par�metros
      q_datatable.ParamByName('aliq_icms').AsInteger    := strtoint(ifnull(edit_aliq_icms_item.Text));
      q_datatable.ParamByName('aliq_icms_st').AsInteger := strtoint(ifnull(edit_Aliq_icms_st_item.Text));
      q_datatable.ParamByName('aliq_ipi').AsInteger     := strtoint(ifnull(btn_perc_ipi_item.Text));
      q_datatable.ParamByName('bc_icms').AsFloat        := strtofloat(ifnull(edit_base_icms_item.Text));
      q_datatable.ParamByName('bc_icms_st').AsFloat     := strtofloat(ifnull(edit_base_icms_st_item.Text));
      q_datatable.ParamByName('bc_ipi').AsFloat         := strtofloat(ifnull(edit_bc_ipi_item.Text));
      q_datatable.ParamByName('cfop').Value             := combo_cfop_item.KeyValue;
      q_datatable.ParamByName('cod_empresa').AsInteger  := controller.xcod_empresa;
      q_datatable.ParamByName('cod_fornecedor').Value   := edit_fornecedor_item.KeyValue;
      q_datatable.ParamByName('cod_item').AsString      := edit_cod_produto.Text;
      q_datatable.ParamByName('cod_local_estoque').Value:= combo_local_estoque.KeyValue;
      q_datatable.ParamByName('descricao').AsString     := edit_descricao_item.Text;
      q_datatable.ParamByName('fornecedor').AsString       := edit_fornecedor_item.SelectedText;
      q_datatable.ParamByName('locacao').AsString       := edit_locacao_item.Text;
      q_datatable.ParamByName('ncm').AsString           := edit_ncm_item.Text;
      q_datatable.ParamByName('nf_compra').AsInteger    := strtoint(ifnull(edit_numero.Text));

      if ifnull(edit_perc_desc_item.Hint)='0' then
      begin
       q_datatable.ParamByName('perc_desc').AsFloat    := strtofloat(ifnull(edit_perc_desc_item.Text));
      end
      else
      begin
       q_datatable.ParamByName('perc_desc').AsFloat    := strtofloat(ifnull(edit_perc_desc_item.Hint));
      end;


      q_datatable.ParamByName('preco_unitario').AsFloat := strtofloat(ifnull(edit_preco_unitario_item.Text));
      q_datatable.ParamByName('qtde').AsInteger         := strtoint(ifnull(edit_qtde_itens.Text));
    //  q_datatable.ParamByName('seq')
      q_datatable.ParamByName('serie').AsString         := edit_serie.Text;
      q_datatable.ParamByName('val_desc').AsFloat       := strtofloat(ifnull(edit_valor_desc_item.Text));
      q_datatable.ParamByName('valor_icms').AsFloat     := strtofloat(ifnull(edit_valor_icms_item.Text));
      q_datatable.ParamByName('valor_icms_st').AsFloat  := strtofloat(ifnull(edit_valor_icms_st_item.Text));
      q_datatable.ParamByName('valor_ipi').AsFloat      := strtofloat(ifnull(edit_valor_ipi_item.Text));
      q_datatable.ParamByName('valor_total').AsFloat    := strtofloat(ifnull(edit_preco_liquido_item.Text));
      q_datatable.ParamByName('cst').Value              := combo_cst_itens.SelectedValue;
      q_datatable.ParamByName('frete').AsFloat          := get_rateio_despesa(strtofloat(ifnull(edit_valor_frete.Text)),strtofloat(ifnull(edit_total_produtos.Text)));
      q_datatable.ParamByName('outras').AsFloat         := get_rateio_despesa(strtofloat(ifnull(edit_outras.Text)),strtofloat(ifnull(edit_total_produtos.Text)));
      q_datatable.ParamByName('seguros').AsFloat        := get_rateio_despesa(strtofloat(ifnull(edit_valor_seguro.Text)),strtofloat(ifnull(edit_total_produtos.Text)));
      q_datatable.ParamByName('rateio_frete').Value     := get_rateio_despesa(strtofloat(ifnull(edit_total_conhecimento.Text)),strtofloat(ifnull(edit_total_produtos.Text)));
      q_datatable.ExecSQL;

      atu_grid_itens;
      edit_cod_produto.SetFocus;
      limpar_itens;
 end;


end;

procedure TFormEntrada_Nf.limpar_itens;
begin

    edit_cod_produto.Text:='';
    edit_fornecedor_item.Enabled:=false;
    edit_fornecedor_item.ItemIndex:=-1;
    edit_qtde_itens.Text:='';
    edit_preco_unitario_item.Text:='';
    edit_perc_desc_item.Text:='';
    edit_valor_desc_item.Text:='';
    edit_descricao_item.Text:='';
    btn_perc_ipi_item.Text:='';
    edit_bc_ipi_item.Text:='';
    edit_valor_ipi_item.Text:='';
    edit_preco_liquido_item.Text:='';
    edit_ncm_item.Text:='';
    combo_local_estoque.ItemIndex:= -1;
    combo_sugestao_loc.Enabled:=false;
    combo_sugestao_loc.ItemIndex:=-1;
    edit_locacao_item.Text:='';
   // combo_cfop_item.Enabled:=false;
    combo_cfop_item.ItemIndex:=-1;
    combo_cst_itens.ItemIndex:=0;
    edit_base_icms_item.Text:='';
    edit_aliq_icms_item.Text:='';
    edit_valor_icms_item.Text:='';
    edit_base_icms_st_item.Text:='';
    edit_Aliq_icms_st_item.Text:='';
    edit_valor_icms_st_item.Text:='';
end;

procedure TFormEntrada_Nf.modal_romaneioAsyncClose(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
controller.AcaoMenu('FormCompras');
end;

procedure TFormEntrada_Nf.TBClientes(aParams: TStrings; out aResult: string);
var
  wresult: string;
  wtotal: integer;
  btn1: string;
  btn2: string;
  btn3: string;
  btn4: string;
  id: string;
begin
  q_datatable.close;
  q_datatable.SQL.Clear;

  q_datatable.SQL.Add(' select count(*) as total  ');
  q_datatable.SQL.Add(' from clientes   ');
  q_datatable.SQL.Add(' where  1=1   ');

  q_datatable.SQL.Add('and ( nome like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');
  q_datatable.SQL.Add('      OR  cod_cliente like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  bairro like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  uf like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  q_datatable.FetchOptions.RecsMax := -1;
  q_datatable.FetchOptions.RecsSkip := -1;

  q_datatable.Open;

  wtotal := q_datatable.FieldByName('total').AsInteger;

  //
  // Select para montar o resultado do ajax na solicitacao do DATATABLE
  //
  q_datatable.close;

  q_datatable.SQL.Clear;
  q_datatable.SQL.Add('select c.cod_cliente,c.nome,c.endereco,c.bairro, (select descricao from cidades cid where cid.cod_cidade = c.cod_cidade) as cod_cidade,c.uf,c.cep,c.data_cadastro from clientes c ');

  q_datatable.SQL.Add(' where   1=1   ');

  q_datatable.SQL.Add('and ( nome like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.SQL.Add('      OR  cod_cliente like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  bairro like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  uf like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.SQL.Add('Order by nome ' + aParams.Values
        ['order[0][dir]'] + ' ');
    1:
      q_datatable.SQL.Add('Order by  cod_cliente ' + aParams.Values
        ['order[0][dir]'] + ' ');

  end;

  q_datatable.FetchOptions.RecsMax := strtoint(aParams.Values['length']);
  q_datatable.FetchOptions.RecsSkip := strtoint(aParams.Values['start']);

  q_datatable.Open;

  //
  // Montagem da variavel com o JASON de resultado da consulta
  //
  wresult := '{' + '"draw": ' + StrToIntDef(aParams.Values['draw'], 0).ToString
    + ', ' + '"recordsTotal": ' + wtotal.ToString + ', ' + '"recordsFiltered": '
    + wtotal.ToString + ', ' + '"data": [';
  q_datatable.First;
  btn2 := '';
  btn3 := '';
  id := '';
  while not q_datatable.Eof do
  begin



    id := q_datatable.FieldByName('cod_cliente').AsString;

    copy(iwacao.Text, 6, Length(iwacao.Text));
    if copy(id, 1, 1) = '0' then
    begin

     id :=  copy(id, 2, Length(id));
    end;




    btn1 := '"<button type=\"buttom\" class=\"btn btn-xs btn-success\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aceitar\" data-dismiss=\"modal\" onclick=\"SetaAcao(''Aceit'''
      + ',' + id + ')\" > <i class=\"fa fa-level-down\"> </i> </button>" ';

    btn2 := '"<button type=\"buttom\" class=\"btn btn-xs btn-warning\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Editar\" onclick=\"SetaAcao(''AltCl'''
      + ',' + id + ')\" > <i class=\"fa fa-pencil\"> </i> </button> ';
    btn3 := '<button type=\"buttom\" class=\"btn btn-xs btn-info\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aprovar Operador\" onclick=\"SetaAcao(''aprOp'''
      + ',' + id + ')\"> <i class=\"fa fa-thumbs-o-up\"> </i> </button> ';

    btn4 := '<button type=\"buttom\" class=\"btn btn-xs btn-default\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Gerar proposta no NBS\" onclick=\"SetaAcao(''ExcDo'''
      + ',' + id + ')\"> <i class=\"fa fa-database\"> </i> </button> "';

    //
    wresult := wresult + '[' + btn1 + ','+ '"' +
      stringreplace(Trim(q_datatable.FieldByName('cod_cliente').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('nome').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('endereco').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('bairro').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('cod_cidade').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('uf').AsString),
      '"', '\"', [rfReplaceAll]) + '" ' +



    // Separador de colunas ------------------------------

          '],';

    q_datatable.Next;

  end;
  q_datatable.close;

  if wtotal <= 0 then
    wresult := wresult + ']}'
  else
    wresult := LeftStr(Trim(wresult), Length(Trim(wresult)) - 1) + ']}';

  //
  // Envia o resultado para o ajax do DataTable
  aResult := wresult;

  // abco




end;

procedure TFormEntrada_Nf.TBComprasItens(aParams: TStrings;
  out aResult: string);
var
  wresult: string;
  wtotal: integer;
  btn1: string;
  btn2: string;
  btn3: string;
  btn4: string;
  id: string;
  celula:string;
begin
  q_datatable.close;
  q_datatable.SQL.Clear;

  q_datatable.SQL.Add(' select count(*) as total  ');
  q_datatable.SQL.Add(' from temp_compras_itens   ');
  q_datatable.SQL.Add(' where  1=1   ');

  q_datatable.SQL.Add('and ( descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');
  q_datatable.SQL.Add('      OR  cod_item like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  fornecedor like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR   cfop like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  q_datatable.FetchOptions.RecsMax := -1;
  q_datatable.FetchOptions.RecsSkip := -1;

  q_datatable.Open;

  wtotal := q_datatable.FieldByName('total').AsInteger;

  //
  // Select para montar o resultado do ajax na solicitacao do DATATABLE
  //
  q_datatable.close;

  q_datatable.SQL.Clear;
q_datatable.sql.add('select seq,');
q_datatable.sql.add('aliq_icms,');
q_datatable.sql.add('aliq_icms_st,');
q_datatable.sql.add('aliq_ipi,');
q_datatable.sql.add('bc_icms,');
q_datatable.sql.add('bc_icms_st,');
q_datatable.sql.add('bc_ipi,');
q_datatable.sql.add('cfop,');
q_datatable.sql.add('cod_empresa,');
q_datatable.sql.add('cod_fornecedor,');
q_datatable.sql.add('cod_item,');
q_datatable.sql.add('descricao,');
q_datatable.sql.add('(select f.descricao');
q_datatable.sql.add('from fornecedor_estoque f');
q_datatable.sql.add('where f.cod_fornecedor = temp.cod_fornecedor)');
q_datatable.sql.add('');
q_datatable.sql.add('fornecedor,');
q_datatable.sql.add('');
q_datatable.sql.add('(select i.un || '':'' || i.comprimento');
q_datatable.sql.add('from itens i');
q_datatable.sql.add('where i.cod_item = temp.cod_item');
q_datatable.sql.add('and i.cod_fornecedor = temp.cod_fornecedor) UN');
q_datatable.sql.add('');
q_datatable.sql.add(',');
q_datatable.sql.add('ncm,');
q_datatable.sql.add('nf_compra,');
q_datatable.sql.add('perc_desc,');
q_datatable.sql.add('preco_unitario,');
q_datatable.sql.add('qtde,');
q_datatable.sql.add('serie,');
q_datatable.sql.add('val_desc,');
q_datatable.sql.add('valor_icms,');
q_datatable.sql.add('valor_icms_st,');
q_datatable.sql.add('valor_ipi,');
q_datatable.sql.add('valor_total,');
q_datatable.sql.add('locacao,');
q_datatable.sql.add('cod_local_estoque');
q_datatable.sql.add('from temp_compras_itens temp');


  q_datatable.SQL.Add(' where   1=1   ');

  q_datatable.SQL.Add('and ( descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.SQL.Add('      OR  cod_item like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  fornecedor like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  cfop like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.SQL.Add('Order by cod_item ' + aParams.Values
        ['order[0][dir]'] + ' ');
    1:
      q_datatable.SQL.Add('Order by  descricao ' + aParams.Values
        ['order[0][dir]'] + ' ');

  end;

  q_datatable.FetchOptions.RecsMax := strtoint(aParams.Values['length']);
  q_datatable.FetchOptions.RecsSkip := strtoint(aParams.Values['start']);

  q_datatable.Open;

  //
  // Montagem da variavel com o JASON de resultado da consulta
  //
  wresult := '{' + '"draw": ' + StrToIntDef(aParams.Values['draw'], 0).ToString
    + ', ' + '"recordsTotal": ' + wtotal.ToString + ', ' + '"recordsFiltered": '
    + wtotal.ToString + ', ' + '"data": [';
  q_datatable.First;
  btn2 := '';
  btn3 := '';
  id := '';
  while not q_datatable.Eof do
  begin



    id := q_datatable.FieldByName('seq').AsString;

    celula := ' <span class=\"label label-info\">' + q_datatable.FieldByName('un').AsString + '</span> ';





    btn1 := '"<button type=\"buttom\" class=\"btn btn-xs btn-danger\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Deletar\" data-dismiss=\"modal\" onclick=\"SetaAcao(''Delet'''
      + ',' + id + ')\" > <i class=\"fa fa-trash\"> </i> </button> ';

    btn2 := '<button type=\"buttom\" class=\"btn btn-xs btn-warning\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Editar\" onclick=\"SetaAcao(''EditI'''
      + ',' + id + ')\" > <i class=\"fa fa-pencil\"> </i> </button> "';
    btn3 := '<button type=\"buttom\" class=\"btn btn-xs btn-info\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aprovar Operador\" onclick=\"SetaAcao(''aprOp'''
      + ',' + id + ')\"> <i class=\"fa fa-thumbs-o-up\"> </i> </button> ';

    btn4 := '<button type=\"buttom\" class=\"btn btn-xs btn-default\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Gerar proposta no NBS\" onclick=\"SetaAcao(''ExcDo'''
      + ',' + id + ')\"> <i class=\"fa fa-database\"> </i> </button> "';

    //
    wresult := wresult + '[' + btn1 + btn2 + ',' + '"' +
      stringreplace(Trim(q_datatable.FieldByName('seq').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('cod_item').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('descricao').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('preco_unitario').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('qtde').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
       '"' + stringreplace(Trim(q_datatable.FieldByName('val_desc').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
       '"' + stringreplace(Trim(q_datatable.FieldByName('perc_desc').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
       '"' + stringreplace(Trim(q_datatable.FieldByName('valor_total').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------

       '"' + celula + '", '   +

      // Separador de colunas ------------------------------
       '"' + stringreplace(Trim(q_datatable.FieldByName('ncm').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
       '"' + stringreplace(Trim(q_datatable.FieldByName('cfop').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
       '"' + stringreplace(Trim(q_datatable.FieldByName('bc_icms').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
       '"' + stringreplace(Trim(q_datatable.FieldByName('aliq_icms').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
       '"' + stringreplace(Trim(q_datatable.FieldByName('valor_icms').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
       '"' + stringreplace(Trim(q_datatable.FieldByName('bc_icms_st').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
       '"' + stringreplace(Trim(q_datatable.FieldByName('aliq_icms_st').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
       '"' + stringreplace(Trim(q_datatable.FieldByName('valor_icms_st').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
       '"' + stringreplace(Trim(q_datatable.FieldByName('cod_fornecedor').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
       '"' + stringreplace(Trim(q_datatable.FieldByName('fornecedor').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
       '"' + stringreplace(Trim(q_datatable.FieldByName('bc_ipi').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
       '"' + stringreplace(Trim(q_datatable.FieldByName('aliq_ipi').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('valor_ipi').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('locacao').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +

      // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('cod_local_estoque').AsString),
      '"', '\"', [rfReplaceAll]) + '" '




    // Separador de colunas ------------------------------

             + '],';

    q_datatable.Next;

  end;
  q_datatable.close;

  if wtotal <= 0 then
    wresult := wresult + ']}'
  else
    wresult := LeftStr(Trim(wresult), Length(Trim(wresult)) - 1) + ']}';

  //
  // Envia o resultado para o ajax do DataTable
  aResult := wresult;

  // abco



end;

procedure TFormEntrada_Nf.TBItensXml(aParams: TStrings; out aResult: string);
var
  wresult: string;
  wtotal: integer;
  btn1: string;
  btn2: string;
  btn3: string;
  btn4: string;
  id: string;
  status1,status2,status3,v_classe,v_icone :string;
begin
  q_datatable.close;
  q_datatable.SQL.Clear;
 // edit_cod_controle_item.Text:='0';

  q_datatable.SQL.Add(' select count(*) as total  ');
  q_datatable.SQL.Add(' from interface_itens   ');
  q_datatable.SQL.Add(' where cod_empresa=  '+ inttostr(controller.xcod_empresa));
  q_datatable.SQL.Add(' and cod_controle=' + edit_cod_controle_item.Text);

   if CK_ITENS_OK.Checked=true then
  begin

     q_datatable.SQL.Add(' and not exists (select 1 from itens where itens.codigo_barras= interface_itens.cod_produto)' );


  end;




  q_datatable.SQL.Add('and ( cod_produto like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');
  q_datatable.SQL.Add('      OR  descricao_prod like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  id like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

//  q_datatable.SQL.Add('      OR   ncm like ''%' +
//    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
//    [rfReplaceAll]) + '%'' ) ');

  q_datatable.FetchOptions.RecsMax := -1;
  q_datatable.FetchOptions.RecsSkip := -1;

  q_datatable.Open;

  wtotal := q_datatable.FieldByName('total').AsInteger;

  //
  // Select para montar o resultado do ajax na solicitacao do DATATABLE
  //
  q_datatable.close;

  q_datatable.SQL.Clear;
  q_datatable.sql.add('select id, cod_controle,');
  q_datatable.sql.add('cod_produto,');
  q_datatable.sql.add('descricao_prod,');
  q_datatable.sql.add('ncm,');
  q_datatable.sql.add('locacao,');
  q_datatable.sql.add('cod_natureza,');
  q_datatable.sql.add('un,');
  q_datatable.sql.add('qtde,');
  q_datatable.sql.add('valor_unitario,');
  q_datatable.sql.add('cst,');
  q_datatable.sql.add('bc_icms,');
  q_datatable.sql.add('aliq_icms,');
  q_datatable.sql.add('valor_icms,');
  q_datatable.sql.add('bc_ipi,');
  q_datatable.sql.add('aliq_ipi,');
  q_datatable.sql.add('valor_ipi,');
  q_datatable.sql.add('bc_st,');
  q_datatable.sql.add('aliq_icms_st,');
  q_datatable.sql.add('valor_icms_st');
  q_datatable.sql.add('from interface_itens');

  q_datatable.sql.add(' where cod_empresa =' + inttostr(controller.xcod_empresa));
  q_datatable.SQL.Add(' and cod_controle=' + edit_cod_controle_item.Text);

 if CK_ITENS_OK.Checked=true then
  begin

     q_datatable.SQL.Add(' and not exists (select 1 from itens where itens.codigo_barras= interface_itens.cod_produto)' );


  end;


  q_datatable.SQL.Add('and ( cod_produto like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.SQL.Add('      OR  descricao_prod like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  id like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.SQL.Add('Order by descricao_prod ' + aParams.Values
        ['order[0][dir]'] + ' ');
    1:
      q_datatable.SQL.Add('Order by  cod_produto ' + aParams.Values
        ['order[0][dir]'] + ' ');

  end;

  q_datatable.FetchOptions.RecsMax := strtoint(aParams.Values['length']);
  q_datatable.FetchOptions.RecsSkip := strtoint(aParams.Values['start']);

  q_datatable.Open;

  //
  // Montagem da variavel com o JASON de resultado da consulta
  //
  wresult := '{' + '"draw": ' + StrToIntDef(aParams.Values['draw'], 0).ToString
    + ', ' + '"recordsTotal": ' + wtotal.ToString + ', ' + '"recordsFiltered": '
    + wtotal.ToString + ', ' + '"data": [';
  q_datatable.First;
  btn2 := '';
  btn3 := '';
  id := '';
  while not q_datatable.Eof do
  begin

    id := q_datatable.FieldByName('id').AsString;


    btn1 := '"<button type=\"buttom\" class=\"btn btn-xs btn-success\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aceitar\" data-dismiss=\"modal\" onclick=\"SetaAcao(''AceiL'''
      + ',' + quotedstr(id) + ')\" > <i class=\"fa fa-level-down\"> </i> </button>" ';

    btn2 := '<button type=\"buttom\" class=\"btn btn-xs btn-warning\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Editar\" onclick=\"SetaAcao(''EditI'''
      + ',' + id + ')\" > <i class=\"fa fa-pencil\"> </i> </button> "';
    btn3 := '<button type=\"buttom\" class=\"btn btn-xs btn-info\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aprovar Operador\" onclick=\"SetaAcao(''aprOp'''
      + ',' + id + ')\"> <i class=\"fa fa-thumbs-o-up\"> </i> </button> ';

    btn4 := '<button type=\"buttom\" class=\"btn btn-xs btn-default\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Gerar proposta no NBS\" onclick=\"SetaAcao(''ExcDo'''
      + ',' + id + ')\"> <i class=\"fa fa-database\"> </i> </button> "';


    //Verifica se o item esta cadastrado

    q_geral.Close;
    q_geral.SQL.Clear;
    q_geral.sql.add('select a.cod_produto,');
    q_geral.sql.add('nvl((select b.cod_item');
    q_geral.sql.add('from itens b');
    q_geral.sql.add('where b.codigo_barras = a.cod_produto),');
    q_geral.sql.add('''N'') as existe');
    q_geral.sql.add('from interface_itens a');
    q_geral.sql.add('where a.cod_produto = :cod_produto ');
    q_geral.ParamByName('cod_produto').AsString:=q_datatable.FieldByName('cod_produto').AsString;
    q_geral.Open();


    if q_geral.FieldByName('existe').AsString='N' then
    begin
      v_classe:= 'class=\"btn btn-xs btn-danger\"';
      v_icone :=  '<i class=\"fa fa-thumbs-o-down\"> </i> ' ;

    end
    else
    begin
      v_classe:= 'class=\"btn btn-xs btn-success\"';
      v_icone :=  '<i class=\"fa fa-thumbs-o-up\"> </i> ' ;
    end;





      status1 := '" <button type=\"buttom\" '+ v_classe + ' data-toggle=\"tooltip\" data-placement=\"top\" title=\"Cadastro de Produto\" data-dismiss=\"modal\" onclick=\"SetaAcao(''CADPR'''
      + ',' + quotedstr(id) + ')\" >  '+ v_icone + '  </button> "';






    //
    wresult := wresult + '[' + '"' +
      stringreplace(Trim(q_datatable.FieldByName('id').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------STATUS

          status1 + status2 + status3   + ',' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('cod_produto').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('descricao_prod').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('ncm').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('locacao').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
    '"' + stringreplace(Trim(q_datatable.FieldByName('cod_natureza').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('un').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('qtde').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('valor_unitario').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('cst').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('bc_icms').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('aliq_icms').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('valor_icms').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('bc_ipi').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('aliq_ipi').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('valor_ipi').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('bc_st').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('aliq_icms_st').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------


      '"' + stringreplace(Trim(q_datatable.FieldByName('valor_icms_st').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +


    // Separador de colunas ------------------------------

       btn1      + '],';
    q_datatable.Next;

  end;
  q_datatable.close;

  if wtotal <= 0 then
    wresult := wresult + ']}'
  else
    wresult := LeftStr(Trim(wresult), Length(Trim(wresult)) - 1) + ']}';

  //
  // Envia o resultado para o ajax do DataTable
  aResult := wresult;

  // abco

end;

procedure TFormEntrada_Nf.TBLocacao(aParams: TStrings; out aResult: string);
var
  wresult: string;
  wtotal: integer;
  btn1: string;
  btn2: string;
  btn3: string;
  btn4: string;
  id: string;
begin
  q_datatable.close;
  q_datatable.SQL.Clear;

  q_datatable.SQL.Add(' select count(*) as total  ');
  q_datatable.SQL.Add(' from cadastro_locacao   ');
  q_datatable.SQL.Add(' where cod_empresa=  '+ inttostr(controller.xcod_empresa));

  if combo_pesquisar_l.ItemIndex > -1 then
  begin
    q_datatable.SQL.Add(' and cod_local_estoque='+ combo_pesquisar_l.KeyValue);
  end;

  q_datatable.SQL.Add('and ( locacao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');
  q_datatable.SQL.Add('      OR  cod_local_estoque like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  cod_empresa like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

//  q_datatable.SQL.Add('      OR   ncm like ''%' +
//    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
//    [rfReplaceAll]) + '%'' ) ');

  q_datatable.FetchOptions.RecsMax := -1;
  q_datatable.FetchOptions.RecsSkip := -1;

  q_datatable.Open;

  wtotal := q_datatable.FieldByName('total').AsInteger;

  //
  // Select para montar o resultado do ajax na solicitacao do DATATABLE
  //
  q_datatable.close;

  q_datatable.SQL.Clear;
  q_datatable.sql.add(' select cod_local_estoque,cod_empresa,locacao from cadastro_locacao ');

  q_datatable.sql.add('where cod_empresa =' + inttostr(controller.xcod_empresa));
  if combo_pesquisar_l.ItemIndex > -1 then
  begin
    q_datatable.SQL.Add(' and cod_local_estoque='+ combo_pesquisar_l.KeyValue);
  end;
 // q_datatable.SQL.Add(' where   1=1   ');

  q_datatable.SQL.Add('and ( locacao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.SQL.Add('      OR  cod_local_estoque like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

//    q_datatable.SQL.Add('      OR  fornecedor like ''%' +
//    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
//    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  cod_empresa like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.SQL.Add('Order by locacao ' + aParams.Values
        ['order[0][dir]'] + ' ');
    1:
      q_datatable.SQL.Add('Order by  cod_empresa ' + aParams.Values
        ['order[0][dir]'] + ' ');

  end;

  q_datatable.FetchOptions.RecsMax := strtoint(aParams.Values['length']);
  q_datatable.FetchOptions.RecsSkip := strtoint(aParams.Values['start']);

  q_datatable.Open;

  //
  // Montagem da variavel com o JASON de resultado da consulta
  //
  wresult := '{' + '"draw": ' + StrToIntDef(aParams.Values['draw'], 0).ToString
    + ', ' + '"recordsTotal": ' + wtotal.ToString + ', ' + '"recordsFiltered": '
    + wtotal.ToString + ', ' + '"data": [';
  q_datatable.First;
  btn2 := '';
  btn3 := '';
  id := '';
  while not q_datatable.Eof do
  begin

    id := q_datatable.FieldByName('locacao').AsString;


    btn1 := '"<button type=\"buttom\" class=\"btn btn-xs btn-success\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aceitar\" data-dismiss=\"modal\" onclick=\"SetaAcao(''AceiL'''
      + ',' + quotedstr(id) + ')\" > <i class=\"fa fa-level-down\"> </i> </button>" ';

    btn2 := '<button type=\"buttom\" class=\"btn btn-xs btn-warning\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Editar\" onclick=\"SetaAcao(''EditI'''
      + ',' + id + ')\" > <i class=\"fa fa-pencil\"> </i> </button> "';
    btn3 := '<button type=\"buttom\" class=\"btn btn-xs btn-info\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aprovar Operador\" onclick=\"SetaAcao(''aprOp'''
      + ',' + id + ')\"> <i class=\"fa fa-thumbs-o-up\"> </i> </button> ';

    btn4 := '<button type=\"buttom\" class=\"btn btn-xs btn-default\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Gerar proposta no NBS\" onclick=\"SetaAcao(''ExcDo'''
      + ',' + id + ')\"> <i class=\"fa fa-database\"> </i> </button> "';

    //
    wresult := wresult + '[' + '"' +
      stringreplace(Trim(q_datatable.FieldByName('cod_empresa').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('cod_local_estoque').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('locacao').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +


    // Separador de colunas ------------------------------

       btn1      + '],';

    q_datatable.Next;

  end;
  q_datatable.close;

  if wtotal <= 0 then
    wresult := wresult + ']}'
  else
    wresult := LeftStr(Trim(wresult), Length(Trim(wresult)) - 1) + ']}';

  //
  // Envia o resultado para o ajax do DataTable
  aResult := wresult;

  // abco


end;

procedure TFormEntrada_Nf.TBPesquisaP(aParams: TStrings; out aResult: string);
var
  wresult: string;
  wtotal: integer;
  btn1: string;
  btn2: string;
  btn3: string;
  btn4: string;
  id: string;
begin
  q_datatable.close;
  q_datatable.SQL.Clear;

  q_datatable.SQL.Add(' select count(*) as total  ');
  q_datatable.SQL.Add(' from itens   ');
  q_datatable.SQL.Add(' where tipo_item = ''E''  ');

  q_datatable.SQL.Add('and ( descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');
  q_datatable.SQL.Add('      OR  cod_item like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  cod_fornecedor like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR   ncm like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  q_datatable.FetchOptions.RecsMax := -1;
  q_datatable.FetchOptions.RecsSkip := -1;

  q_datatable.Open;

  wtotal := q_datatable.FieldByName('total').AsInteger;

  //
  // Select para montar o resultado do ajax na solicitacao do DATATABLE
  //
  q_datatable.close;

  q_datatable.SQL.Clear;
  q_datatable.sql.add('select cod_item,');
  q_datatable.sql.add('(select descricao');
  q_datatable.sql.add('from fornecedor_estoque ');
  q_datatable.sql.add('where fornecedor_estoque.cod_fornecedor = itens.cod_fornecedor) fornecedor,');
  q_datatable.sql.add('descricao,');
  q_datatable.sql.add('preco_venda,');
  q_datatable.sql.add('ncm');
  q_datatable.sql.add('from itens ');
  q_datatable.sql.add('where tipo_item = ''E''');
 // q_datatable.SQL.Add(' where   1=1   ');

  q_datatable.SQL.Add('and ( descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.SQL.Add('      OR  cod_item like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

//    q_datatable.SQL.Add('      OR  fornecedor like ''%' +
//    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
//    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  ncm like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.SQL.Add('Order by cod_item ' + aParams.Values
        ['order[0][dir]'] + ' ');
    1:
      q_datatable.SQL.Add('Order by  descricao ' + aParams.Values
        ['order[0][dir]'] + ' ');

  end;

  q_datatable.FetchOptions.RecsMax := strtoint(aParams.Values['length']);
  q_datatable.FetchOptions.RecsSkip := strtoint(aParams.Values['start']);

  q_datatable.Open;

  //
  // Montagem da variavel com o JASON de resultado da consulta
  //
  wresult := '{' + '"draw": ' + StrToIntDef(aParams.Values['draw'], 0).ToString
    + ', ' + '"recordsTotal": ' + wtotal.ToString + ', ' + '"recordsFiltered": '
    + wtotal.ToString + ', ' + '"data": [';
  q_datatable.First;
  btn2 := '';
  btn3 := '';
  id := '';
  while not q_datatable.Eof do
  begin

    id := q_datatable.FieldByName('cod_item').AsString;


    btn1 := '"<button type=\"buttom\" class=\"btn btn-xs btn-success\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aceitar\" data-dismiss=\"modal\" onclick=\"SetaAcao(''AceiP'''
      + ',' + quotedstr(id) + ')\" > <i class=\"fa fa-level-down\"> </i> </button>" ';

    btn2 := '<button type=\"buttom\" class=\"btn btn-xs btn-warning\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Editar\" onclick=\"SetaAcao(''EditI'''
      + ',' + id + ')\" > <i class=\"fa fa-pencil\"> </i> </button> "';
    btn3 := '<button type=\"buttom\" class=\"btn btn-xs btn-info\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aprovar Operador\" onclick=\"SetaAcao(''aprOp'''
      + ',' + id + ')\"> <i class=\"fa fa-thumbs-o-up\"> </i> </button> ';

    btn4 := '<button type=\"buttom\" class=\"btn btn-xs btn-default\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Gerar proposta no NBS\" onclick=\"SetaAcao(''ExcDo'''
      + ',' + id + ')\"> <i class=\"fa fa-database\"> </i> </button> "';

    //
    wresult := wresult + '[' + '"' +
      stringreplace(Trim(q_datatable.FieldByName('cod_item').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('fornecedor').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('descricao').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('preco_venda').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('ncm').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +


    // Separador de colunas ------------------------------

       btn1      + '],';

    q_datatable.Next;

  end;
  q_datatable.close;

  if wtotal <= 0 then
    wresult := wresult + ']}'
  else
    wresult := LeftStr(Trim(wresult), Length(Trim(wresult)) - 1) + ']}';

  //
  // Envia o resultado para o ajax do DataTable
  aResult := wresult;

  // abco


end;

procedure TFormEntrada_Nf.TBxml(aParams: TStrings; out aResult: string);
var
  wresult: string;
  wtotal: integer;
  btn1: string;
  btn2: string;
  btn3: string;
  btn4: string;
  id: string;
  status1,status2,status3,classeok,classenot :string;
begin
  q_datatable.close;
  q_datatable.SQL.Clear;

  q_datatable.SQL.Add(' select count(*) as total  ');
  q_datatable.SQL.Add(' from interface_capa   ');
  q_datatable.SQL.Add(' where 1=1  ' );

     if combo_tipo_entrada.SelectedValue='1' then
    begin
      q_datatable.sql.add(' and cod_empresa_dest is null');
      q_datatable.SQL.Add(' and cod_empresa=  '+ inttostr(controller.xcod_empresa));

    end;

    if combo_tipo_entrada.SelectedValue='20' then
    begin
      q_datatable.sql.add(' and cod_empresa_dest is not null');
      q_datatable.sql.add(' and lancada=''N''');
      q_datatable.sql.add(' and cod_empresa_dest =' + controller.xcod_empresa.ToString );


    end;

    if combo_xml_status.SelectedValue <> 'T' then
    begin
     q_datatable.sql.add(' and lancada=' + quotedstr(combo_xml_status.SelectedValue) );
    end;




  q_datatable.SQL.Add('and ( numero_nota like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');
  q_datatable.SQL.Add('      OR  cnpj like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  nome_fornecedor like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

//  q_datatable.SQL.Add('      OR   ncm like ''%' +
//    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
//    [rfReplaceAll]) + '%'' ) ');

  q_datatable.FetchOptions.RecsMax := -1;
  q_datatable.FetchOptions.RecsSkip := -1;

  q_datatable.Open;

  wtotal := q_datatable.FieldByName('total').AsInteger;

  //
  // Select para montar o resultado do ajax na solicitacao do DATATABLE
  //
  q_datatable.close;

  q_datatable.SQL.Clear;
  q_datatable.sql.add('select id,');
  q_datatable.sql.add('lancada,');
  q_datatable.sql.add('numero_nota,');
  q_datatable.sql.add('serie,');
  q_datatable.sql.add('to_char(to_date(emissao, ''yyyy-mm-dd''), ''dd/mm/yyyy'') emissao,');
  q_datatable.sql.add('nome_fornecedor,');
  q_datatable.sql.add('cnpj,');
  q_datatable.sql.add('BC_icms,');
  q_datatable.sql.add('valor_icms,');
  q_datatable.sql.add('bc_icms_st,');
  q_datatable.sql.add('valor_icms_st,');
  q_datatable.sql.add('total_produtos,');
  q_datatable.sql.add('valor_frete,');
  q_datatable.sql.add('valor_seguro,');
  q_datatable.sql.add('valor_desconto,');
  q_datatable.sql.add('valor_ipi,');
  q_datatable.sql.add('valor_outros,');
  q_datatable.sql.add('Total_nota');
  q_datatable.sql.add('from interface_capa');
  q_datatable.sql.add('where 1 =1');

  if combo_tipo_entrada.SelectedValue='1' then
  begin
    q_datatable.sql.add(' and cod_empresa_dest is null');
    q_datatable.SQL.Add(' and cod_empresa=  '+ inttostr(controller.xcod_empresa));

  end;

 if combo_tipo_entrada.SelectedValue='20' then
    begin
      q_datatable.sql.add(' and cod_empresa_dest is not null');
      q_datatable.sql.add(' and lancada=''N''');
      q_datatable.sql.add(' and cod_empresa_dest = ' + controller.xcod_empresa.ToString );


    end;
    if combo_xml_status.SelectedValue <> 'T' then
    begin
     q_datatable.sql.add(' and lancada=' + quotedstr(combo_xml_status.SelectedValue) );
    end;



  q_datatable.SQL.Add('and ( numero_nota like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.SQL.Add('      OR  cnpj like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  nome_fornecedor like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.SQL.Add('Order by emissao ' + aParams.Values
        ['order[0][dir]'] + ' ');
    1:
      q_datatable.SQL.Add('Order by  nome_fornecedor ' + aParams.Values
        ['order[0][dir]'] + ' ');

  end;

  q_datatable.FetchOptions.RecsMax := strtoint(aParams.Values['length']);
  q_datatable.FetchOptions.RecsSkip := strtoint(aParams.Values['start']);

  q_datatable.Open;

  //
  // Montagem da variavel com o JASON de resultado da consulta
  //
  wresult := '{' + '"draw": ' + StrToIntDef(aParams.Values['draw'], 0).ToString
    + ', ' + '"recordsTotal": ' + wtotal.ToString + ', ' + '"recordsFiltered": '
    + wtotal.ToString + ', ' + '"data": [';
  q_datatable.First;
  btn2 := '';
  btn3 := '';
  id := '';
  while not q_datatable.Eof do
  begin

    id := q_datatable.FieldByName('id').AsString;


    btn1 := '" <button type=\"buttom\" class=\"btn btn-xs btn-success\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aceitar\" data-dismiss=\"modal\" onclick=\"SetaAcao(''AcXML'''
      + ',' + quotedstr(id) + ')\" > <i class=\"fa fa-level-down\"> </i> </button> "';

    btn2 := '<button type=\"buttom\" class=\"btn btn-xs btn-warning\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Editar\" onclick=\"SetaAcao(''EditI'''
      + ',' + id + ')\" > <i class=\"fa fa-pencil\"> </i> </button> "';
    btn3 := '<button type=\"buttom\" class=\"btn btn-xs btn-info\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aprovar Operador\" onclick=\"SetaAcao(''aprOp'''
      + ',' + id + ')\"> <i class=\"fa fa-thumbs-o-up\"> </i> </button> ';

    btn4 := '<button type=\"buttom\" class=\"btn btn-xs btn-default\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Gerar proposta no NBS\" onclick=\"SetaAcao(''ExcDo'''
      + ',' + id + ')\"> <i class=\"fa fa-database\"> </i> </button> "';


      q_geral.Close;
      q_geral.SQL.Clear;
      q_geral.sql.add('select case');
      q_geral.sql.add('when sum(nvl(cod_natureza, 0)) = 0 then');
      q_geral.sql.add('''S''');
      q_geral.sql.add('else');
      q_geral.sql.add('''N''');
      q_geral.sql.add('end existe');
      q_geral.sql.add('from interface_itens');
      q_geral.SQL.Add(' where  cod_controle =  '+ id );
      q_geral.SQL.Add(' and cod_empresa= '+ inttostr(controller.xcod_empresa));

      q_geral.Open();

      if q_geral.FieldByName('existe').AsString='S' then
      begin

       status2 := '  <button type=\"buttom\" class=\"btn btn-xs btn-danger\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Verificar Itens\" data-dismiss=\"modal\" onclick=\"SetaAcao(''VERIT'''
                   + ',' + quotedstr(id) + ')\" > 2- <i class=\"fa fa-thumbs-o-down\"> </i>    </button>  ';

      end
      else
      begin

       status2 := '  <button type=\"buttom\" class=\"btn btn-xs btn-success\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Verificar Itens\" data-dismiss=\"modal\" onclick=\"SetaAcao(''VERIT'''
                   + ',' + quotedstr(id) + ')\" > 2- <i class=\"fa fa-thumbs-o-up\"> </i>    </button>  ';

      end;


      q_geral.Close;
      q_geral.SQL.Clear;
      q_geral.sql.add('select nvl((select nvl(cod_cliente, ''N'')');
      q_geral.sql.add('');
      q_geral.sql.add('from clientes');
      q_geral.sql.add('where cod_cliente =  :cod_cliente ),');
      q_geral.sql.add('''N'') existe');
      q_geral.sql.add('from dual');
      q_geral.ParamByName('cod_cliente').AsString:=q_datatable.FieldByName('cnpj').AsString;

      q_geral.Open();


        if q_geral.FieldByName('existe').AsString='N' then
      begin

      status3 := '   <button type=\"buttom\" class=\"btn btn-xs btn-danger\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Verificar Fornecedor\" data-dismiss=\"modal\" onclick=\"SetaAcao(''EEEEE'''
                   + ',' + quotedstr(id) + ')\" > 3- <i class=\"fa fa-thumbs-o-down\"> </i>    </button> " ';



      end
      else
      begin

       status3 := '   <button type=\"buttom\" class=\"btn btn-xs btn-success\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Verificar Fornecedor\" data-dismiss=\"modal\" onclick=\"SetaAcao(''EEEEE'''
                   + ',' + quotedstr(id) + ')\" > 3- <i class=\"fa fa-thumbs-o-up\"> </i>    </button> " ';

      end;

      q_geral.Close;
      q_geral.SQL.Clear;
      q_geral.sql.add('select * from interface_itens a');
      q_geral.sql.add('where not exists');
      q_geral.sql.add('(select 1 from itens b where a.cod_produto = b.codigo_barras)');
      q_geral.sql.add(' and  a.cod_controle= ' + id);
      q_geral.Open();

      if q_geral.RecordCount > 0 then
         begin
              status1 := '" <button type=\"buttom\" class=\"btn btn-xs btn-danger\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Verificar Itens\" data-dismiss=\"modal\" onclick=\"SetaAcao(''VERIT'''
               + ',' + quotedstr(id) + ')\" > 1- <i class=\"fa fa-thumbs-o-down\"> </i>    </button> ';
         end
         else
         begin

           status1 := '" <button type=\"buttom\" class=\"btn btn-xs btn-success\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Verificar Itens\" data-dismiss=\"modal\" onclick=\"SetaAcao(''VERIT'''
               + ',' + quotedstr(id) + ')\" > 1- <i class=\"fa fa-thumbs-o-up\"> </i>    </button> ';

         end;


    //
    wresult := wresult + '[' + btn1 + ',' + '"' +
      stringreplace(Trim(q_datatable.FieldByName('id').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------STATUS

          status1 + status2 + status3   + ',' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('lancada').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('numero_nota').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('serie').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('emissao').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('nome_fornecedor').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('cnpj').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('BC_icms').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('valor_icms').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('bc_icms_st').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('valor_icms_st').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('total_produtos').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('valor_frete').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('valor_seguro').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('valor_desconto').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('valor_ipi').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('valor_outros').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('Total_nota').AsString),
      '"', '\"', [rfReplaceAll]) + '" ' +


    // Separador de colunas ------------------------------

                '],';
    q_datatable.Next;

  end;
  q_datatable.close;

  if wtotal <= 0 then
    wresult := wresult + ']}'
  else
    wresult := LeftStr(Trim(wresult), Length(Trim(wresult)) - 1) + ']}';

  //
  // Envia o resultado para o ajax do DataTable
  aResult := wresult;

  // abco


end;

procedure TFormEntrada_Nf.tbxml_reload;
begin
WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBxml").DataTable().ajax.reload();');
end;

procedure TFormEntrada_Nf.totbccapa(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="R$ 0,00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.tot_bc_icms_st_capaHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="R$ 0,00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.tot_capaHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="R$ 0,00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.tot_ipi_capaHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
   ATag.Add('placeholder="R$ 0,00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.tot_produtos_capaHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="R$ 0,00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.tot_valor_icms_capaHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="R$ 0,00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TFormEntrada_Nf.tot_valor_icms_st_capaHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add('placeholder="R$ 0,00"');
   ATag.Add(' style="text-align:right" ');
end;

function TFormEntrada_Nf.verificar_capa: boolean;
begin

   result:=true;

  if edit_numero.Text = '' then
      result:= false;

  if edit_serie.Text='' then
      result:=false;

  if edit_fornecedor.Text='' then
     result:=false;
  if edit_total_produtos.Text='' then
     result:=false;
  if edit_total_nf.Text='' then
     result:= false;



end;

procedure TFormEntrada_Nf.verifica_impressao;
begin
addtoinitproc(swalConfirm( 'Confirma��o',
                              'Entrada realizada com sucesso! Deseja imprimir o mapa de separa��o?',
                              'success',
                              'Sim',
                              'N�o',
                              'BTN_IMPRIMIR_SIM',
                              'BTN_IMPRIMIR_NAO'));
end;

end.
