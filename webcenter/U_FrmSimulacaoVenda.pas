unit U_FrmSimulacaoVenda;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FrmPadrao, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, IWCompButton, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompEdit, Data.DB, IWCompListbox,
  IWDBStdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  IWHTMLTag,
  IWCompCheckbox, IWCompGrids, IWDBGrids, IWCompRadioButton, IWCompExtCtrls,
  IW.HTTP.Reply, IWCompLabel, IWCompMemo, IWBaseComponent, IWBaseHTMLComponent,
  IWBaseHTML40Component, IWCompFileUploader, Datasnap.DBClient;

type

  TFrmSimulacaoVenda = class(TFrmPadrao)
    combo_empresas: TIWDBLookupComboBox;
    ds_q_empresas: TDataSource;
    combo_financiadoras: TIWDBLookupComboBox;
    ds_q_financiadoras: TDataSource;
    q_funcao_vendedor_veic: TFDQuery;
    q_funcao_vendedor_veicCOD_GERENTE_VENDAS: TFMTBCDField;
    q_funcao_vendedor_veicCOD_SUPERVISOR_VEICULO: TFMTBCDField;
    q_funcao_vendedor_veicCOD_VENDEDOR_VEICULO: TFMTBCDField;
    q_vendedores_veic: TFDQuery;
    q_vendedores_veicVENDEDOR: TStringField;
    q_vendedores_veicNOME: TStringField;
    q_vendedores_veicNOME_COMPLETO: TStringField;
    q_vendedores_veicCOD_EMPRESA_DEPARTAMENTO: TFMTBCDField;
    q_vendedores_veicCOD_EMPRESA: TFMTBCDField;
    q_vendedores_veicCOD_FUNCAO: TFMTBCDField;
    q_vendedores_veicEMPRESA: TStringField;
    q_vendedores_veicCOD_EMPRESA_1: TFMTBCDField;
    combo_vendedores: TIWDBLookupComboBox;
    ds_q_vendedores: TDataSource;
    combo_origem: TIWComboBox;
    ck_cliente_cadastro: TIWCheckBox;
    btn_cliente_busca: TIWButton;
    edit_cliente_busca: TIWEdit;
    radio_group: TIWRadioGroup;
    rb_busca_por_cpf: TIWRadioButton;
    rb_busca_por_nome: TIWRadioButton;
    q_busca_clientes: TFDQuery;
    ds_q_busca_clientes: TDataSource;
    btnaceitar: TIWButton;
    edit_cliente_nome: TIWEdit;
    edit_cliente_cpf: TIWEdit;
    q_clientes: TFDQuery;
    combo_tipo: TIWComboBox;
    combo_tipo_prop: TIWComboBox;
    ds_q_marcas: TDataSource;
    combo_marcas: TIWDBLookupComboBox;
    combo_produtos: TIWDBLookupComboBox;
    q_produtos: TFDQuery;
    q_produtosCOD_PRODUTO: TFMTBCDField;
    q_produtosDESCRICAO_PRODUTO: TStringField;
    q_produtosCOD_MARCA: TBCDField;
    ds_q_produtos: TDataSource;
    q_marcas: TFDQuery;
    q_marcasDESCRICAO_MARCA: TStringField;
    q_marcasCOD_MARCA: TBCDField;
    q_modelos: TFDQuery;
    q_modelosCOD_PRODUTO: TFMTBCDField;
    q_modelosCOD_MODELO: TFMTBCDField;
    q_modelosDESCRICAO_MODELO: TStringField;
    ds_q_modelos: TDataSource;
    combo_modelos: TIWDBLookupComboBox;
    q_cores_externas: TFDQuery;
    q_cores_externasCOD_PRODUTO: TFMTBCDField;
    q_cores_externasDESATIVOU: TStringField;
    q_cores_externasCOD_MODELO: TFMTBCDField;
    q_cores_externasCOR_EXTERNA: TFMTBCDField;
    q_cores_externasDESCRICAO: TStringField;
    q_cores_externasFOTO: TBlobField;
    ds_q_cores_externas: TDataSource;
    combo_cores_externas: TIWDBLookupComboBox;
    edit_ano_modelo: TIWEdit;
    edit_chassi: TIWEdit;
    btn_cancelar: TIWButton;
    btn_salvar: TIWButton;
    edit_valor_veiculo1: TIWEdit;
    edit_valor_veiculo2: TIWEdit;
    edit_valor_entrada2: TIWEdit;
    edit_valor_entrada1: TIWEdit;
    edit_perc_entrada1: TIWEdit;
    edit_perc_entrada2: TIWEdit;
    edit_valor_finan2: TIWEdit;
    edit_valor_finan1: TIWEdit;
    edit_fipe: TIWEdit;
    edit_prazo: TIWEdit;
    edit_parcela: TIWEdit;
    edit_tabela: TIWEdit;
    edit_participacao: TIWEdit;
    edit_cof: TIWEdit;
    edit_opcionais: TIWEdit;
    q_opcionais: TFDQuery;
    q_opcionaisDESCRICAO_PRODUTO: TStringField;
    q_opcionaisDESCRICAO_MODELO: TStringField;
    q_opcionaisCOD_PRODUTO: TFMTBCDField;
    q_opcionaisCOD_MODELO: TFMTBCDField;
    q_opcionaisCOD_OPCIONAL: TStringField;
    q_opcionaisPRECO_CUSTO: TBCDField;
    q_opcionaisDESCRICAO_DETALHADA: TMemoField;
    q_opcionaisPRECO_VENDA: TBCDField;
    q_opcionaisPRECO_VENDA_INTERNET: TFMTBCDField;
    q_opcionaisPRECO_USD: TBCDField;
    q_opcionaisCOD_PACOTE_OPCIONAIS: TBCDField;
    q_opcionaisPACOTE_OPCIONAIS_DESCRICAO: TStringField;
    q_opcionaisDESCRICAO: TStringField;
    q_opcionaisNOVO_PRECO: TFMTBCDField;
    q_opcionaisATIVO: TStringField;
    q_opcionaisSEQOPCIONAL: TFMTBCDField;
    q_opcionaisCONTROLE_VENDA: TStringField;
    q_opcionaisEH_CAMBIO_AUTOMATICO: TStringField;
    ds_q_opcionais: TDataSource;
    q_modelosPRECO_TABELA: TBCDField;
    q_modelosANO_MODELO: TStringField;
    q_modelosRENAVAM: TStringField;
    edit_pgto_c_apresentacao: TIWEdit;
    edit_pgto_cartao: TIWEdit;
    edit_pgto_cheque: TIWEdit;
    edit_pgto_v_usado: TIWEdit;
    edit_pgto_outras: TIWEdit;
    edit_pgto_consorcio: TIWEdit;
    edit_pgto_fin_externo: TIWEdit;
    edit_pgto_tr_usado: TIWEdit;
    edit_pgto_tr_emplacamento: TIWEdit;
    edit_pgto_tr_ipva: TIWEdit;
    edit_pgto_tr_seguro_o: TIWEdit;
    edit_pgto_tr_outros: TIWEdit;
    edit_pgto_tr_hn: TIWEdit;
    EDIT_AGREGADOS: TIWEdit;
    ck_cnh: TIWCheckBox;
    edit_tac: TIWEdit;
    edit_valor_despachante: TIWEdit;
    edit_obs_despachante: TIWEdit;
    edit_obs_cortesia: TIWEdit;
    btnrecalc: TIWButton;
    edit_renavan: TIWEdit;
    q_estoque_veic: TFDQuery;
    q_estoque_veicCOD_EMPRESA: TFMTBCDField;
    q_estoque_veicDESCRICAO_MODELO: TStringField;
    q_estoque_veicDESCRICAO: TStringField;
    q_estoque_veicCOMBUSTIVEL: TStringField;
    q_estoque_veicANO_MODELO: TStringField;
    q_estoque_veicRENAVAM: TStringField;
    q_estoque_veicCOD_PRODUTO: TFMTBCDField;
    q_estoque_veicCOD_MODELO: TFMTBCDField;
    q_estoque_veicCHASSI_RESUMIDO: TStringField;
    q_estoque_veicCHASSI_COMPLETO: TStringField;
    q_estoque_veicCOR_EXTERNA: TFMTBCDField;
    q_estoque_veicPLACA_USADO: TStringField;
    q_estoque_veicNOVO_USADO: TStringField;
    q_estoque_veicPRECO_TABELA: TBCDField;
    q_veiculos: TFDQuery;
    sql: TIWLabel;
    reload: TIWButton;
    timer: TIWTimer;
    edit_empresas: TIWDBEdit;
    edit_modal_tipo: TIWEdit;
    BTNAPLYPARAMS: TIWButton;
    edit_p_cod_produto: TIWEdit;
    IWLabel1: TIWLabel;
    edit_p_cod_modelo: TIWEdit;
    edit_p_chassi_resumido: TIWEdit;
    edit_p_cor: TIWEdit;
    combo_dendedor_a: TIWDBLookupComboBox;
    q_vendedores_a: TFDQuery;
    q_vendedores_aCOD_EMPRESA: TFMTBCDField;
    q_vendedores_aNOME: TStringField;
    q_vendedores_aNOME_COMPLETO: TStringField;
    ds_q_vendedores_a: TDataSource;
    q_analista_c: TFDQuery;
    FMTBCDField1: TFMTBCDField;
    StringField1: TStringField;
    StringField2: TStringField;
    ds_analista_c: TDataSource;
    combo_analista_c: TIWDBLookupComboBox;
    edit_s4_valor_veic: TIWEdit;
    edit_s4_valor_entrada: TIWEdit;
    edit_s4_valor_finan: TIWEdit;
    edit_s4_prazo: TIWEdit;
    edit_s4_parcela: TIWEdit;
    edit_s4_tabela: TIWEdit;
    edit_s4_cof: TIWEdit;
    rb_s4_tab_especial1: TIWRadioButton;
    rb_s4_tab_normal1: TIWRadioButton;
    ck_s4_gmac_plus: TIWCheckBox;
    CK_S4_PMC: TIWCheckBox;
    combo_s4_pmc: TIWComboBox;
    ck_s4_siga: TIWCheckBox;
    edit_s4_gmac_plus: TIWEdit;
    edit_s4_emplacamento: TIWEdit;
    edit_s4_pmc: TIWEdit;
    edit_s4_siga: TIWEdit;
    ck_s4_gap: TIWCheckBox;
    edit_s4_gap: TIWEdit;
    edit_s4_valor_seguro: TIWEdit;
    combo_s4_gap: TIWComboBox;
    q_status_finan: TFDQuery;
    q_status_finanID: TFMTBCDField;
    q_status_finanDESCRICAO: TStringField;
    ds_q_status_finan: TDataSource;
    COMBO_STATUS_FINAN: TIWDBLookupComboBox;
    BTN_STATUS_FINAN: TIWButton;
    SALVARSTATUS: TIWButton;
    btn_refresh_status: TIWButton;
    q_status_finan_aux: TFDQuery;
    BTN_ALT_STATUS_FINAN: TIWButton;
    EDT_P_ID: TIWEdit;
    edit_status_finan_id: TIWEdit;
    edit_status_finan_descricao: TIWEdit;
    exc_reg_status: TIWButton;
    EDITPARAM: TIWEdit;
    memo_obs_finan: TIWMemo;
    LISTDOCSEL: TIWListbox;
    IWLabel2: TIWLabel;
    BTNADDDOC: TIWButton;
    BTNDELDOC: TIWButton;
    q_docs: TFDQuery;
    ds_q_docs: TDataSource;
    LISTDOC: TIWListbox;
    q_datatable: TFDQuery;
    BTNSHOWDOCS: TIWButton;
    rb_cnh_sim1: TIWRadioButton;
    rb_cnh_nao2: TIWRadioButton;
    q_geral: TFDQuery;
    edit_cliente_fone: TIWEdit;
    edit_valor_acessorios: TIWEdit;
    ck_taxa_zero: TIWCheckBox;
    edit_valor_aumento_parc: TIWEdit;
    ck_status_finan: TIWCheckBox;
    q_status_finanATIVO: TStringField;
    COMBO_MOTIVOS_R: TIWDBLookupComboBox;
    q_motivos_recusa: TFDQuery;
    q_motivos_recusaID: TFMTBCDField;
    q_motivos_recusaDESCRICAO: TStringField;
    q_motivos_recusaATIVO: TStringField;
    ds_q_motivos_recusa: TDataSource;
    combo_s4_siga: TIWComboBox;
    IWFileUploader1: TIWFileUploader;
    lb_id: TIWLabel;
    cds: TClientDataSet;
    q_doc: TFDQuery;
    q_docID: TFMTBCDField;
    q_docID_FINAN: TFMTBCDField;
    q_docIMAGEM: TBlobField;
    q_docDESCRICAO: TStringField;
    cdsFileName: TStringField;
    cdsFileSize: TIntegerField;
    cdsfilecontent: TBlobField;
    nome_doc: TIWLabel;
    BTN_EXC_ANEXO: TIWButton;
    edit_param1: TIWEdit;
    edit_param2: TIWEdit;
    ck_ativo: TIWCheckBox;
    SALVAREDICAODOC: TIWButton;
    SALVAR_FORM: TIWButton;
    BTNSAIR: TIWButton;
    q_formulario: TFDQuery;
    q_formularioID: TFMTBCDField;
    q_formularioCOD_EMPRESA: TFMTBCDField;
    q_formularioVENDEDOR: TStringField;
    q_formularioORIGEM: TStringField;
    q_formularioCOD_CLIENTE: TFMTBCDField;
    q_formularioNOME_CLIENTE: TStringField;
    q_formularioFONE: TStringField;
    q_formularioCLIENTE_CADASTRO: TStringField;
    q_formularioCNH: TStringField;
    q_formularioTIPO: TStringField;
    q_formularioTIPO_PROPOSTA: TStringField;
    q_formularioCOD_MARCA: TFMTBCDField;
    q_formularioCOD_PRODUTO: TFMTBCDField;
    q_formularioCOD_MODELO: TFMTBCDField;
    q_formularioANO_MODELO: TStringField;
    q_formularioCOR_EXTERNA: TFMTBCDField;
    q_formularioRENAVAM: TStringField;
    q_formularioCHASSI: TStringField;
    q_formularioOPCIONAIS: TStringField;
    q_formularioS_VALOR_VEIC: TBCDField;
    q_formularioS_ENTRADA: TBCDField;
    q_formularioS_VALOR_FIN: TBCDField;
    q_formularioS_PRAZO: TFMTBCDField;
    q_formularioS_PARCELA: TBCDField;
    q_formularioS_TABELA: TStringField;
    q_formularioS_COD_FIPE: TStringField;
    q_formularioS_COEFICIENTE: TFMTBCDField;
    q_formularioS2_VALOR_VEIC: TBCDField;
    q_formularioS2_ENTRADA: TBCDField;
    q_formularioS2_VALOR_FIN: TBCDField;
    q_formularioS_PARTICIPACAO: TBCDField;
    q_formularioS_DESPACHANTE: TBCDField;
    q_formularioPG_CONTRA_APRESENTACAO: TBCDField;
    q_formularioPG_CARTAO: TBCDField;
    q_formularioPB_CHEQUE: TBCDField;
    q_formularioPG_USADO: TBCDField;
    q_formularioPG_OUTRAS_PG: TBCDField;
    q_formularioPG_CONSORCIO: TBCDField;
    q_formularioPG_FIN_EXTERNO: TBCDField;
    q_formularioPG_TR_USADO: TBCDField;
    q_formularioPG_TR_ACESSORIO: TBCDField;
    q_formularioPG_TR_EMPLACAMENTO: TBCDField;
    q_formularioPG_TR_IPVA: TBCDField;
    q_formularioPG_TR_OUTROS: TBCDField;
    q_formularioPG_TR_HN: TBCDField;
    q_formularioCORTESIA: TStringField;
    q_formularioOBS_CORTESIA: TStringField;
    q_formularioVENDEDOR_ACESSORIO: TStringField;
    q_formularioVALOR_ELEGIVEL: TBCDField;
    q_formularioTAXA_ZERO: TStringField;
    q_formularioVALOR_ACESSORIOS: TBCDField;
    q_formularioGMAC_PLUS: TStringField;
    q_formularioGMAC_PLUS_VALOR: TBCDField;
    q_formularioEMPLACAMENTO: TBCDField;
    q_formularioPMC: TStringField;
    q_formularioPMC_TIPO: TStringField;
    q_formularioPMC_VALOR: TBCDField;
    q_formularioGAP: TStringField;
    q_formularioGAP_TIPO: TStringField;
    q_formularioGAP_VALOR: TBCDField;
    q_formularioSIGA: TStringField;
    q_formularioSIGA_TIPO: TStringField;
    q_formularioSIGA_VALOR: TBCDField;
    q_formularioVALOR_SEGURO: TBCDField;
    q_formularioDATA_INCLUSAO: TDateTimeField;
    q_formularioUSUARIO_INCLUSAO: TStringField;
    q_formularioRASCUNHO: TStringField;
    q_formularioS_PERC_ENTRADA: TFMTBCDField;
    q_formularioS_PERC_ENTRADA2: TFMTBCDField;
    q_formularioVALOR_AUMENTO_PARC: TFMTBCDField;
    q_formularioGERENTE: TStringField;
    q_formularioOPERADOR: TStringField;
    q_formularioDATA_AP_GERENTE: TDateTimeField;
    q_formularioDATA_AP_OPERADOR: TDateTimeField;
    q_formularioCOD_PROPOSTA: TFMTBCDField;
    combo_tabela: TIWComboBox;
    edit_s4_despachante: TIWEdit;
    edit_a_entrada: TIWEdit;
    edit_a_finan: TIWEdit;
    edit_a_perc_entrada: TIWEdit;
    edit_a_prazo: TIWEdit;
    edit_a_parcela: TIWEdit;
    edit_a_cof: TIWEdit;
    edit_a_tabela: TIWEdit;
    edit_a_cod_tabela: TIWEdit;
    edit_a_valor_veic: TIWEdit;
    edit_entrada_acessorios: TIWEdit;
    edit_s4_valor_acessorio: TIWEdit;
    btn_aprovar_acessorios: TIWButton;
    q_formularioACESSORIOS: TStringField;
    q_formularioDATA_APROVACAO_ACESS: TDateTimeField;
    q_formularioOBS_DESPACHANTE: TStringField;
    q_formularioFIN_VALOR_VEICULO: TBCDField;
    q_formularioFIN_ENTRADA: TBCDField;
    q_formularioFIN_FINANCIADO: TBCDField;
    q_formularioFIN_PRAZO: TFMTBCDField;
    q_formularioFIN_PARCELA: TBCDField;
    q_formularioFIN_TABELA: TStringField;
    q_formularioFIN_COD_TABELA: TStringField;
    q_formularioFIN_COF: TFMTBCDField;
    q_formularioFIN_TIPO_TABELA: TStringField;
    q_formularioFIN_DESPACHANTE: TBCDField;
    q_formularioFIN_ACESSORIOS: TBCDField;
    q_formularioFIN_OBS: TStringField;
    q_formularioFIN_COD_FINANCIADORA: TFMTBCDField;
    q_formularioFIN_ANALISTA_CREDITO: TStringField;
    q_formularioFIN_STATUS: TStringField;
    q_formularioFIN_RECUSA: TStringField;
    q_formularioA_VALOR_VEIC: TBCDField;
    q_formularioA_ENTRADA: TBCDField;
    q_formularioA_FINANC: TBCDField;
    q_formularioA_PERC_ENTRADA: TBCDField;
    q_formularioA_PRAZO: TFMTBCDField;
    q_formularioA_PARCELA: TBCDField;
    q_formularioVALOR_ENTRADA_A: TBCDField;
    q_formularioFIN_BANCO: TStringField;
    q_formularioEMPRESA: TStringField;
    q_formularioFIN_COD_STATUS: TFMTBCDField;
    rb_cnh_nao: TIWCheckBox;
    rb_cnh_sim: TIWCheckBox;
    rb_s4_tab_normal: TIWCheckBox;
    rb_s4_tab_especial: TIWCheckBox;
    ck_doc_obrigatorio: TIWCheckBox;
    q_aux: TFDQuery;
    combo_prazo: TIWComboBox;
    combo_s4_prazo: TIWComboBox;
    edit_placa_usado: TIWEdit;
    q_formularioPLACA_USADO: TStringField;
    lb_cor: TIWLabel;
    BTNAPRGER: TIWButton;
    btn_salvar_fi: TIWButton;
    edit_pgto_placa: TIWEdit;
    q_formularioPG_PLACA: TStringField;
    ck_aprovar_acessorios: TIWCheckBox;
    btn_fin_check_add: TIWButton;
    btn_fin_check_del: TIWButton;
    list_fin_check: TIWListbox;
    list_fin_check_list: TIWListbox;
    ck_fin_check_doc: TIWCheckBox;
    q_status_finanCOR: TStringField;
    q_status_finanDOC: TStringField;
    combo_origem_doc: TIWDBLookupComboBox;
    q_origem_doc: TFDQuery;
    q_origem_docDESCRICAO: TStringField;
    ds_q_origem_doc: TDataSource;
    q_docsDOC: TStringField;
    N1_EDIT_SPMC: TIWEdit;
    N1_EDIT_GAP: TIWEdit;
    N1_EDIT_GMAC_PLUS: TIWEdit;
    N1_EDIT_PERC: TIWEdit;
    N1_CK_SPMC: TIWCheckBox;
    N1_CK_GAP: TIWCheckBox;
    N1_CK_GMAC_PLUS: TIWCheckBox;
    N1_BTN_LANCAR: TIWButton;
    q_formularioN1_CK_SPMC: TStringField;
    q_formularioN1_EDIT_SPMC: TFMTBCDField;
    q_formularioN1_CK_GAP: TStringField;
    q_formularioN1_EDIT_GAP: TFMTBCDField;
    q_formularioN1_CK_GMAC_PLUS: TStringField;
    q_formularioN1_EDIT_GMAC_PLUS: TFMTBCDField;
    q_formularioN1_EDIT_PERC: TFMTBCDField;

    procedure combo_origemAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure ck_cliente_cadastroAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure btn_cliente_buscaHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure gridclientesbuscaRenderCell(ACell: TIWGridCell;
      const ARow, AColumn: Integer);
    procedure btnaceitarClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure combo_financiadorasHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure IWAppFormShow(Sender: TObject);
    procedure combo_financiadorasAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure edit_ano_modeloHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_chassiHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure combo_vendedoresAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure guardar_dados;
    procedure recupera_dados;
    procedure btn_salvarAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure btn_cliente_buscaAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure combo_marcasAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure combo_produtosAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure combo_modelosAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure combo_cores_externasAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure edit_opcionaisHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure q_modelosAfterOpen(DataSet: TDataSet);
    procedure edit_valor_veiculo1HTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_valor_veiculo2HTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_valor_entrada1HTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_valor_entrada2HTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_valor_finan1HTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_valor_finan2HTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_parcelaHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_perc_entrada2HTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_perc_entrada1HTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_participacaoHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_parcelaAsyncExit(Sender: TObject; EventParams: TStringList);
    procedure edit_prazoHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_fipeHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_pgto_c_apresentacaoHTMLTag(ASender: TObject;
      ATag: TIWHTMLTag);
    procedure calc_cof;
    procedure recalc_valores;
    procedure formatar_valor;
    procedure edit_valor_despachanteHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure btnrecalcAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure edit_valor_veiculo1AsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_pgto_c_apresentacaoAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure combo_tipo_propAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure q_veiculosAfterOpen(DataSet: TDataSet);
    procedure reloadAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure timerAsyncTimer(Sender: TObject; EventParams: TStringList);
    procedure combo_tipoAsyncChange(Sender: TObject; EventParams: TStringList);
    procedure BTNAPLYPARAMSAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure combo_empresasAsyncChange(Sender: TObject;
      EventParams: TStringList);

    procedure pcombo_empresas;
    procedure BTN_STATUS_FINANAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure IWTemplateProcessorHTML1UnknownTag(const AName: string;
      var VValue: string);
    procedure IWBTNACAOAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure SALVARSTATUSAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure SALVARSTATUSHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure btn_refresh_statusAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure BTN_ALT_STATUS_FINANAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure exc_reg_statusAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure memo_obs_finanHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure BTNADDDOCAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure BTNDELDOCAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure BTNSHOWDOCSAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure edit_cliente_foneHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure btn_uploadAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWFileUploader1AsyncUploadCompleted(Sender: TObject;
      var DestPath, FileName: string; var SaveFile, Overwrite: Boolean);
    procedure IWFileUploader1AsyncUploadSuccess(Sender: TObject;
      EventParams: TStringList);
    procedure BTN_EXC_ANEXOAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure LISTDOCAsyncChange(Sender: TObject; EventParams: TStringList);
    procedure BTNSHOWDOCSHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure SALVAREDICAODOCAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure SALVAR_FORMAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure edit_prazoAsyncExit(Sender: TObject; EventParams: TStringList);
    procedure edit_fipeAsyncExit(Sender: TObject; EventParams: TStringList);
    procedure edit_tabelaAsyncExit(Sender: TObject; EventParams: TStringList);
    procedure edit_pgto_cartaoAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_pgto_chequeAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_pgto_v_usadoAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_pgto_outrasAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_pgto_consorcioAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_pgto_fin_externoAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_pgto_tr_usadoAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_pgto_tr_emplacamentoAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_pgto_tr_ipvaAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_pgto_tr_seguro_oAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_pgto_tr_outrosAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_pgto_tr_hnAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure EDIT_AGREGADOSAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_valor_despachanteAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_obs_despachanteAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_obs_cortesiaAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure BTNSAIRAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure combo_dendedor_aAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure edit_valor_acessoriosAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure btn_aprovar_acessoriosAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure rb_cnh_simAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure rb_cnh_naoAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure rb_s4_tab_especialAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure rb_s4_tab_normalAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure edit_cliente_cpfAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_placa_usadoHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure BTNAPRGERAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure btn_salvar_fiAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure edit_cliente_nomeAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_cliente_foneAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure ck_cliente_cadastroAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure rb_cnh_simAsyncExit(Sender: TObject; EventParams: TStringList);
    procedure combo_prazoAsyncExit(Sender: TObject; EventParams: TStringList);
    procedure assinceditparcela(Sender: TObject; EventParams: TStringList);
    procedure combo_tabelaAsyncExit(Sender: TObject; EventParams: TStringList);
    procedure edit_participacaoAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure ck_aprovar_acessoriosAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure edit_pgto_placaHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure btn_fin_check_addAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure btn_fin_check_delAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure COMBO_STATUS_FINANAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure edit_cliente_cpfHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure ck_s4_gapAsyncChange(Sender: TObject; EventParams: TStringList);
    procedure ck_s4_gmac_plusAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure CK_S4_PMCAsyncChange(Sender: TObject; EventParams: TStringList);
    procedure ck_s4_sigaAsyncChange(Sender: TObject; EventParams: TStringList);
    procedure edit_s4_gmac_plusAsyncExit(Sender: TObject;
      EventParams: TStringList);
    procedure edit_s4_pmcAsyncExit(Sender: TObject; EventParams: TStringList);
    procedure edit_s4_gapAsyncExit(Sender: TObject; EventParams: TStringList);
    procedure edit_s4_sigaAsyncExit(Sender: TObject; EventParams: TStringList);
    procedure N1_CK_GMAC_PLUSAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure N1_CK_SPMCAsyncChange(Sender: TObject; EventParams: TStringList);
    procedure N1_CK_GAPAsyncChange(Sender: TObject; EventParams: TStringList);
    procedure N1_BTN_LANCARAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure N1_EDIT_SPMCAsyncExit(Sender: TObject; EventParams: TStringList);
    procedure N1_EDIT_GAPAsyncExit(Sender: TObject; EventParams: TStringList);
    procedure edit_tacAsyncExit(Sender: TObject; EventParams: TStringList);

  private
    { Private declarations }
    v_parcela : string;
    listdoc_texto: string;
    listdoc_id: string;
    html: string;
    procedure MontaTabela(aParams: TStrings; out aResult: String);
    procedure MontaTbVeiculos(aParams: TStrings; out aResult: String);
    procedure MontaTbStatusFinan(aParams: TStrings; out aResult: String);
    procedure MontaTbDocumentos(aParams: TStrings; out aResult: string);
    procedure MontaTbAnexo(aParams: TStrings; out aResult: string);
    procedure MontaTbHistorico(aParams: TStrings; out aResult: string);
    procedure ListaDocumentos(aParams: TStrings; out aResult: string);
    // sessao p
    procedure obs_aut_fi;
    procedure calc_valor_elegivel;
    procedure calc_valor_aum_parc;
    procedure recarregar_docs;
    procedure inserir_fi_historico;
    procedure time_line_finan;
    procedure salvar_form_part1;
    procedure salvar_form_part2;
    procedure salvar_form_part3;
    procedure salvar_form_part4;
    function get_perc_entrada2: real;
    function checar_part1: Boolean;
    function checar_docs: Boolean;
    procedure salvar_campo(campo: string; tabela: string);
    procedure load_form;
    procedure iniciar_form;
    procedure abrir_familias;
    procedure abrir_modelos;
    procedure abrir_cores;
    procedure formatar_acessorios;
    procedure formatar_finan;
    procedure limpar_rascunho;
    function get_valor_entrada2: real;
    procedure desabilitar_parte1;
    procedure desabilitar_parte2;
    procedure desabilitar_parte3;
    procedure desabilitar_finan;
    procedure desabilitar_final;
    procedure set_regra_operador;
    procedure set_list_check_docs(id_finan: string);
    procedure set_agregados;

    procedure calc_n1;
    procedure voltar_n1;

  public
    { Public declarations }
  end;



var
  FrmSimulacaoVenda: TFrmSimulacaoVenda;
  //listdoc_texto: string;
  //listdoc_id: string;
 // v_parcela : string;

implementation

{$R *.dfm}

uses ServerController, U_DM, SweetAlerts, System.StrUtils, Winapi.Windows,
  Winapi.ActiveX;

procedure TFrmSimulacaoVenda.abrir_cores;
begin
  q_modelos.LOCATE('cod_modelo', combo_modelos.KeyValue, []);
  q_cores_externas.Close;
  q_cores_externas.sql.Clear;
  q_cores_externas.sql.Add(' SELECT CRUZAMENTO_VEIC_COR_EXT.COD_PRODUTO,');
  q_cores_externas.sql.Add(' CRUZAMENTO_VEIC_COR_EXT.desativou,');
  q_cores_externas.sql.Add(' CRUZAMENTO_VEIC_COR_EXT.COD_MODELO,');
  q_cores_externas.sql.Add(' CRUZAMENTO_VEIC_COR_EXT.COR_EXTERNA,');
  q_cores_externas.sql.Add(' CORES_EXTERNAS.DESCRICAO,');
  q_cores_externas.sql.Add(' CORES_EXTERNAS.FOTO');
  q_cores_externas.sql.Add(' FROM CORES_EXTERNAS, CRUZAMENTO_VEIC_COR_EXT');
  q_cores_externas.sql.Add
    (' WHERE (CRUZAMENTO_VEIC_COR_EXT.COR_EXTERNA = CORES_EXTERNAS.COR_EXTERNA)');
  q_cores_externas.sql.Add
    (' AND (CRUZAMENTO_VEIC_COR_EXT.COD_PRODUTO = :cod_produto )');
  q_cores_externas.sql.Add
    (' AND (CRUZAMENTO_VEIC_COR_EXT.COD_MODELO = :cod_modelo )');
  q_cores_externas.ParamByName('cod_produto').AsInteger :=
    combo_produtos.KeyValue;
  q_cores_externas.ParamByName('cod_modelo').AsInteger :=
    combo_modelos.KeyValue;
  q_cores_externas.Open;

  combo_cores_externas.Enabled := TRUE;
  combo_cores_externas.RefreshItems;

end;

procedure TFrmSimulacaoVenda.abrir_familias;
var
  tipo: string;

begin
  tipo := '';
  if (combo_tipo.SelectedValue = 'V') or (combo_tipo.SelectedValue = 'N') then
  begin

    tipo := 'N';

  end
  else
  begin
    tipo := 'U';

  end;

  q_marcas.LOCATE('cod_marca', combo_marcas.KeyValue, []);
  q_produtos.Close;
  q_produtos.sql.Clear;
  q_produtos.sql.Add
    (' select cod_produto,descricao_produto,cod_marca from produtos');
  q_produtos.sql.Add('  ');
  q_produtos.sql.Add(' where cod_marca= ' + q_marcasCOD_MARCA.AsString);
  q_produtos.sql.Add(' and novo_usado=' + quotedstr(tipo));
  q_produtos.sql.Add(' and ativo=''S'' ');
  q_produtos.sql.Add(' order by descricao_produto');
  q_produtos.Open;
  combo_produtos.Enabled := TRUE;
  combo_produtos.RefreshItems;
  edit_chassi.Enabled := TRUE;

end;

procedure TFrmSimulacaoVenda.abrir_modelos;
begin
  q_produtos.LOCATE('cod_produto', combo_produtos.KeyValue, []);

  q_modelos.Close;
  q_modelos.sql.Clear;
  q_modelos.sql.Add
    (' select cod_produto,cod_modelo,descricao_modelo, pm.preco_tabela,  pm.ano_modelo,  pm.renavam from produtos_modelos pm ');
  q_modelos.sql.Add(' where ativo=''S''');
  q_modelos.sql.Add(' and cod_produto= ' + q_produtosCOD_PRODUTO.AsString);
  q_modelos.sql.Add(' and ativo=''S'' ');
  q_modelos.sql.Add(' order by descricao_modelo');
  q_modelos.Open;
  combo_modelos.Enabled := TRUE;
  combo_modelos.RefreshItems;
end;

procedure TFrmSimulacaoVenda.assinceditparcela(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

    v_parcela:= edit_parcela.Text;


  recalc_valores;

  // combo_tabela.SetFocus;
end;

procedure TFrmSimulacaoVenda.btnaceitarClick(Sender: TObject);

begin
  inherited;

  with (Sender as TIWButton) do
  begin

    edit_cliente_nome.Enabled := false;
    edit_cliente_cpf.Enabled := false;

    rb_busca_por_cpf.Checked := TRUE;

    edit_cliente_busca.Text := hint;
    // btn_cliente_buscaClick(sender);

  end;

end;

procedure TFrmSimulacaoVenda.btnrecalcAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  try
    recalc_valores;

  except

    with (Sender as TIWEdit) do
    begin

      Text := '';
    end;

  end;
end;

procedure TFrmSimulacaoVenda.SALVAREDICAODOCAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  if edit_param1.Text = 'Inserindo' then
  begin

    q_geral.Close;
    q_geral.sql.Clear;
    q_geral.sql.Add
      ('insert into  wc_lista_documentos(id,descricao,ativo, obrigatorio,origem )');
    q_geral.sql.Add
      (' values(seq_wc_geral.nextval, :descricao , :ativo , :obrigatorio , :origem ) ');
    q_geral.ParamByName('descricao').AsString := edit_param2.Text;

    if ck_ativo.Checked then
    begin
      q_geral.ParamByName('ativo').AsString := 'S';

    end
    else
    begin
      q_geral.ParamByName('ativo').AsString := 'N';
    end;

    q_geral.ParamByName('origem').AsString := '';

    if ck_doc_obrigatorio.Checked then
    begin

      if combo_origem_doc.ItemIndex.ToString = '-1' then
      begin
        AddToInitProc(swalAlert('Alerta', 'Selecione uma Origem'));

      end
      else
      begin
        q_geral.ParamByName('origem').AsString := combo_origem_doc.SelectedText;
      end;

    end;

    if ck_doc_obrigatorio.Checked then
    begin
      q_geral.ParamByName('obrigatorio').AsString := 'S';

    end
    else
    begin
      q_geral.ParamByName('obrigatorio').AsString := 'N';
    end;

    q_geral.ExecSQL;

    AddToInitProc(swalSuccess('Confirma��o', ' Inclu�do  com sucesso !!!'));
    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#dtdocumentos").DataTable().ajax.reload();');

    recarregar_docs;

  end
  else
  begin

    q_geral.Close;
    q_geral.sql.Clear;
    q_geral.sql.Add
      ('UPDATE  wc_lista_documentos set descricao= :descricao, ativo= :ativo , obrigatorio= :obrigatorio , origem= :origem where id='
      + edit_param1.Text);
    q_geral.ParamByName('descricao').AsString := edit_param2.Text;

    q_geral.ParamByName('origem').AsString := '';

    if ck_doc_obrigatorio.Checked then
    begin

      if combo_origem_doc.ItemIndex.ToString = '-1' then
      begin
        AddToInitProc(swalAlert('Alerta', 'Selecione uma Origem'));

      end
      else
      begin
        q_geral.ParamByName('origem').AsString := combo_origem_doc.SelectedText;
      end;

    end;

    if ck_ativo.Checked then
    begin
      q_geral.ParamByName('ativo').AsString := 'S';

    end
    else
    begin
      q_geral.ParamByName('ativo').AsString := 'N';
    end;

    if ck_doc_obrigatorio.Checked then
    begin
      q_geral.ParamByName('obrigatorio').AsString := 'S';
    end
    else
    begin
      q_geral.ParamByName('obrigatorio').AsString := 'N';
    end;

    q_geral.ExecSQL;

    AddToInitProc(swalSuccess('Confirma��o', ' Atualizado  com sucesso !!!'));

    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#dtdocumentos").DataTable().ajax.reload();');
    recarregar_docs;
  end;

end;

procedure TFrmSimulacaoVenda.SALVARSTATUSAsyncClick(Sender: TObject;
  EventParams: TStringList);
VAR
  ID: STRING;
  doc, status: string;

begin
  inherited;

  if ck_fin_check_doc.Checked then
  begin
    doc := 'S';
  end
  else
  begin
    doc := 'N';
  end;

  if EDITPARAM.Text = 'A' then // altera��o de dados
  begin

    if ck_status_finan.Checked then
    begin
      status := 'S';
    end
    else
    begin
      status := 'N';
    end;

    q_status_finan_aux.Close;
    q_status_finan_aux.sql.Clear;
    q_status_finan_aux.sql.Add(' update WC_STATUS_FINAN set descricao= ' +
      quotedstr(edit_status_finan_descricao.Text));
    q_status_finan_aux.sql.Add(' , ativo=' + quotedstr(status));
    q_status_finan_aux.sql.Add(' , doc=' + quotedstr(doc));
    q_status_finan_aux.sql.Add(' , COR=' + quotedstr(lb_cor.Caption));
    q_status_finan_aux.sql.Add(' where id= ' + q_status_finanID.AsString);
    q_status_finan_aux.ExecSQL;

    AddToInitProc(swalSuccess('Confirma��o', ' Alterado com sucesso !!!'));

    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#StatusFinan").DataTable().ajax.reload();');

    q_status_finan.Close;
    q_status_finan.sql.Clear;
    q_status_finan.sql.Add('select * from wc_status_finan where ativo=''S'' ');

    q_status_finan.Open;

    COMBO_STATUS_FINAN.RefreshItems;
  end
  else
  // Inclus�o de dados
  begin
    // Pega maior id no banco

    q_status_finan_aux.Close;
    q_status_finan_aux.sql.Clear;
    q_status_finan_aux.sql.Add
      (' select nvl(max(id),0)+1  as id from  WC_STATUS_FINAN ');
    q_status_finan_aux.Open;
    ID := q_status_finan_aux.FieldByName('id').AsString;

    q_status_finan_aux.Close;
    q_status_finan_aux.sql.Clear;
    q_status_finan_aux.sql.Add
      (' insert into WC_STATUS_FINAN(id, descricao,ativo,cor,doc) ');
    q_status_finan_aux.sql.Add
      (' values( :id, :descricao, :ativo , :cor , :doc )');
    q_status_finan_aux.ParamByName('id').AsString := ID;
    q_status_finan_aux.ParamByName('doc').AsString := doc;
    q_status_finan_aux.ParamByName('descricao').AsString :=
      edit_status_finan_descricao.Text;
    if ck_status_finan.Checked then
    begin
      q_status_finan_aux.ParamByName('ativo').AsString := 'S';
    end
    else
    begin
      q_status_finan_aux.ParamByName('ativo').AsString := 'N';
    end;
    q_status_finan_aux.ParamByName('cor').AsString := lb_cor.Caption;

    q_status_finan_aux.ExecSQL;

    AddToInitProc(swalSuccess('Confirma��o',
      ' Status Inserido com sucesso !!!'));

    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#StatusFinan").DataTable().ajax.reload();');

    q_status_finan.Close;
    q_status_finan.sql.Clear;
    q_status_finan.sql.Add('select * from wc_status_finan where ativo=''S'' ');

    q_status_finan.Open;

    COMBO_STATUS_FINAN.RefreshItems;
    COMBO_STATUS_FINAN.Enabled := TRUE;

  end;

end;

procedure TFrmSimulacaoVenda.SALVARSTATUSHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add(' data-dismiss="modal" ');
end;

procedure TFrmSimulacaoVenda.salvar_campo(campo, tabela: string);
begin

  q_geral.Close;
  q_geral.sql.Clear;
  q_geral.sql.Add('update wc_simulacao_venda ');
  q_geral.sql.Add(' set  ' + tabela + ' = ' + quotedstr(campo) + ' where id=' +
    lb_id.Caption);
  q_geral.ExecSQL;

end;

procedure TFrmSimulacaoVenda.SALVAR_FORMAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  salvar_form_part1;

end;

procedure TFrmSimulacaoVenda.salvar_form_part1;
var
  docs_obg: string;
begin

  if checar_docs = TRUE then
  begin
    if checar_part1 = TRUE then
    begin
      q_geral.Close;
      q_geral.sql.Clear;
      q_geral.sql.Add('update wc_simulacao_venda a');
      q_geral.sql.Add('set a.vendedor         = :vendedor,');
      q_geral.sql.Add('a.cod_cliente      = :cod_cliente,');
      q_geral.sql.Add('a.origem           = :origem,');
      q_geral.sql.Add('a.nome_cliente     = :nome_cliente,');
      q_geral.sql.Add('a.fone             = :fone,');
      q_geral.sql.Add('a.cliente_cadastro = :cliente_cadastro,');
      q_geral.sql.Add('a.cnh              = :cnh,');
      q_geral.sql.Add('a.tipo             = :tipo,');
      q_geral.sql.Add('a.tipo_proposta    = :tipo_proposta,');
      q_geral.sql.Add('a.cod_marca        = :cod_marca,');
      q_geral.sql.Add('a.cod_produto      = :cod_produto,');
      q_geral.sql.Add('a.cod_modelo       = :cod_modelo,');
      q_geral.sql.Add('a.ano_modelo       = :anomodelo,');
      q_geral.sql.Add('a.cor_externa      = :cor_externa,');
      q_geral.sql.Add('a.renavam          = :renavam,');
      q_geral.sql.Add('a.chassi           = :chassi,');
      q_geral.sql.Add('a.opcionais        = :opcionais,');

      q_geral.sql.Add('a.obs_cortesia     = :obs_cortesia,');
      q_geral.sql.Add('a.obs_despachante  = :obs_despachante,');

      q_geral.sql.Add('a.cod_empresa      = :cod_empresa,');
      q_geral.sql.Add('a.empresa          = :empresa,');
      q_geral.sql.Add('a.rascunho=''N'',  ');
      q_geral.sql.Add('a.placa_usado      = :placa_usado');
      q_geral.sql.Add('where id = :id');

      q_geral.Params.ParamByName('obs_cortesia').AsString :=
        edit_obs_cortesia.Text;

      q_geral.Params.ParamByName('obs_despachante').AsString :=
        edit_obs_despachante.Text;

      q_geral.Params.ParamByName('placa_usado').AsString :=
        edit_placa_usado.Text;
      q_geral.Params.ParamByName('cod_empresa').AsString :=
        combo_empresas.KeyValue;
      q_geral.Params.ParamByName('empresa').AsString :=
        combo_empresas.SelectedText;
      q_geral.Params.ParamByName('vendedor').AsString :=
        combo_vendedores.KeyValue;
      q_geral.Params.ParamByName('cod_cliente').AsString :=
        edit_cliente_cpf.Text;
      q_geral.Params.ParamByName('origem').AsString :=
        combo_origem.SelectedText;
      q_geral.Params.ParamByName('nome_cliente').AsString :=
        edit_cliente_nome.Text;
      q_geral.Params.ParamByName('fone').AsString :=
        stringreplace(stringreplace(stringreplace(edit_cliente_fone.Text, '(',
        '', []), ')', '', []), '-', '', []);
      q_geral.Params.ParamByName('cliente_cadastro').AsBoolean :=
        ck_cliente_cadastro.Checked;
      q_geral.Params.ParamByName('anomodelo').AsString := edit_ano_modelo.Text;
      q_geral.Params.ParamByName('cnh').AsBoolean := rb_cnh_sim.Checked;
      q_geral.Params.ParamByName('tipo').AsString := combo_tipo.SelectedValue;
      q_geral.Params.ParamByName('tipo_proposta').AsString :=
        combo_tipo_prop.SelectedValue;
      q_geral.Params.ParamByName('cod_marca').AsString := combo_marcas.KeyValue;
      q_geral.Params.ParamByName('cod_produto').AsString :=
        combo_produtos.KeyValue;
      q_geral.Params.ParamByName('cod_modelo').AsString :=
        combo_modelos.KeyValue;
      q_geral.Params.ParamByName('cor_externa').AsString :=
        combo_cores_externas.KeyValue;
      q_geral.Params.ParamByName('renavam').AsString := edit_renavan.Text;
      q_geral.Params.ParamByName('chassi').AsString := edit_chassi.Text;
      q_geral.Params.ParamByName('opcionais').AsString := edit_opcionais.Text;
      q_geral.Params.ParamByName('id').AsString := lb_id.Caption;

      q_geral.ExecSQL;
      salvar_form_part2;
      salvar_form_part3;
      salvar_form_part4;

      // verifica se tem acesso a aprovar gerente
      if controller.get_acesso('WC0008') <> 0 then
      begin

        q_geral.Close;
        q_geral.sql.Clear;
        q_geral.sql.Add
          (' select nvl((select a.gerente from wc_simulacao_venda a where id= :id ),0) as existe from dual ');
        q_geral.ParamByName('id').AsString := lb_id.Caption;
        q_geral.Open();

        if q_geral.FieldByName('existe').AsString = '0' then
        begin

          WebApplication.CallBackResponse.AddJavaScriptToExecute
            (swalConfirm('CONFIRMA��O',
            'Salvo com sucesso, deseja Aprovar Ger�ncia agora ?', 'warning',
            'Sim', 'N�o', 'BTNAPRGER'));
        end
        else
        begin
          WebApplication.CallBackResponse.AddJavaScriptToExecute
            (swalConfirm('CONFIRMA��O',
            'Salvo com sucesso, deseja fechar o formul�rio ?', 'warning', 'Sim',
            'N�o', 'BTNSAIR'));
        end;

      end;

      WebApplication.CallBackResponse.AddJavaScriptToExecute
        (swalConfirm('CONFIRMA��O',
        'Salvo com sucesso, deseja fechar o formul�rio ?', 'warning', 'Sim',
        'N�o', 'BTNSAIR'));

    end;
  end
  else
  begin

    q_docs.First;
    docs_obg := '';
    while not q_docs.Eof do
    begin
      docs_obg := docs_obg + q_docsDOC.AsString + ' ,';

      q_docs.Next;

    end;

    AddToInitProc(swalAlert('Alerta',
      'Existem Documentos Obrigat�rios n�o informados,' + docs_obg +
      ' verifique!!!'));
  end;

end;

procedure TFrmSimulacaoVenda.salvar_form_part2;
begin

  q_geral.Close;
  q_geral.sql.Clear;
  q_geral.sql.Add(' update wc_simulacao_venda a');
  q_geral.sql.Add('set a.s_valor_veic       = :s_valor_veic,');
  q_geral.sql.Add('a.s_entrada              = :s_entrada,');
  q_geral.sql.Add('a.s_valor_fin            = :s_valor_fin,');
  q_geral.sql.Add('a.S_PERC_ENTRADA         = :S_PERC_ENTRADA,');
  q_geral.sql.Add('a.s_prazo                = :s_prazo,');
  q_geral.sql.Add('a.s_parcela              = :s_parcela,');
  q_geral.sql.Add('a.s_tabela               = :s_tabela,');
  q_geral.sql.Add('a.s_cod_fipe             = :s_cod_fipe,');
  q_geral.sql.Add('a.s_coeficiente          = :s_coeficiente,');
  q_geral.sql.Add('a.s2_valor_veic          = :s2_valor_veic,');
  q_geral.sql.Add('a.s2_entrada             = :s2_entrada,');
  q_geral.sql.Add('a.s2_valor_fin           = :s2_valor_fin,');
  q_geral.sql.Add('a.s_perc_entrada2        = :S_PERC_ENTRADA2,');
  q_geral.sql.Add('a.s_participacao         = :s_participacao,');
  q_geral.sql.Add('a.s_despachante          = :s_despachante,');
  q_geral.sql.Add('a.pg_contra_apresentacao = :pg_contra_apresentacao,');
  q_geral.sql.Add('a.pg_cartao              = :pg_cartao,');
  q_geral.sql.Add('a.pb_cheque              = :pb_cheque,');
  q_geral.sql.Add('a.pg_usado               = :pg_usado,');
  q_geral.sql.Add('a.pg_outras_pg           = :pg_outras_pg,');
  q_geral.sql.Add('a.pg_consorcio           = :pg_consorcio,');
  q_geral.sql.Add('a.pg_fin_externo         = :pg_fin_externo,');
  q_geral.sql.Add('a.pg_tr_usado            = :pg_tr_usado,');
  q_geral.sql.Add('a.pg_tr_acessorio        = :pg_tr_acessorio,');
  q_geral.sql.Add('a.pg_tr_emplacamento     = :pg_tr_emplacamento,');
  q_geral.sql.Add('a.pg_tr_ipva             = :pg_tr_ipva,');
  q_geral.sql.Add('a.pg_tr_outros           = :pg_tr_outros,');
  q_geral.sql.Add('a.pg_placa               = :pg_placa,');

  if N1_CK_SPMC.Checked then
  begin
    q_geral.sql.Add('a.N1_CK_SPMC               = ''S'',');

  end
  else
  begin
    q_geral.sql.Add('a.N1_CK_SPMC               = ''N'',');
  end;

  if N1_CK_GAP.Checked then
  begin
    q_geral.sql.Add('a.N1_CK_GAP               = ''S'',');
  end
  else
  begin
    q_geral.sql.Add('a.N1_CK_GAP               = ''N'',');
  end;

  if N1_CK_GMAC_PLUS.Checked then
  begin
    q_geral.sql.Add('a.N1_CK_GMAC_PLUS               = ''S'',');

  end
  else
  begin
    q_geral.sql.Add('a.N1_CK_GMAC_PLUS               = ''N'',');
  end;

  q_geral.sql.Add('a.N1_EDIT_SPMC             = ' +
    quotedstr(N1_EDIT_SPMC.Text) + ' ,');
  q_geral.sql.Add('a.N1_EDIT_GAP             = ' +
    quotedstr(N1_EDIT_GAP.Text) + ' ,');
  q_geral.sql.Add('a.N1_EDIT_GMAC_PLUS             = ' +
    quotedstr(N1_EDIT_GMAC_PLUS.Text) + ' ,');
  q_geral.sql.Add('a.N1_EDIT_PERC             = ' +
    quotedstr(N1_EDIT_PERC.Text) + ' ,');

  q_geral.sql.Add('a.pg_tr_hn               = :pg_tr_hn');
  q_geral.sql.Add('where id = :id');

  q_geral.Params.ParamByName('pg_placa').AsString := edit_pgto_placa.Text;
  q_geral.Params.ParamByName('s_valor_veic').AsString :=
    stringreplace(edit_valor_veiculo1.Text, '.', '', []);
  q_geral.Params.ParamByName('s_entrada').AsString :=
    stringreplace(edit_valor_entrada1.Text, '.', '', []);
  q_geral.Params.ParamByName('s_valor_fin').AsString :=
    stringreplace(edit_valor_finan1.Text, '.', '', []);
  q_geral.Params.ParamByName('S_PERC_ENTRADA').AsString :=
    stringreplace(edit_perc_entrada1.Text, '%', '', []);
  q_geral.Params.ParamByName('s_parcela').AsString :=
    stringreplace(edit_parcela.Text, '.', '', []);
  q_geral.Params.ParamByName('s_tabela').AsString :=
    stringreplace(combo_tabela.SelectedValue, '.', '', []);
  q_geral.Params.ParamByName('s_cod_fipe').AsString :=
    stringreplace(edit_fipe.Text, '.', '', []);
  q_geral.Params.ParamByName('s_coeficiente').AsString :=
    stringreplace(edit_cof.Text, '.', '', []);
  q_geral.Params.ParamByName('s2_valor_veic').AsString :=
    stringreplace(edit_valor_veiculo2.Text, '.', '', []);
  q_geral.Params.ParamByName('s2_entrada').AsString :=
    stringreplace(edit_valor_entrada2.Text, '.', '', []);
  q_geral.Params.ParamByName('s2_valor_fin').AsString :=
    stringreplace(edit_valor_finan2.Text, '.', '', []);
  q_geral.Params.ParamByName('S_PERC_ENTRADA2').AsString :=
    stringreplace(edit_perc_entrada2.Text, '%', '', []);
  q_geral.Params.ParamByName('s_participacao').AsString :=
    stringreplace(edit_participacao.Text, '.', '', []);
  q_geral.Params.ParamByName('s_despachante').AsString :=
    stringreplace(edit_valor_despachante.Text, '.', '', []);
  q_geral.Params.ParamByName('pg_contra_apresentacao').AsString :=
    stringreplace(edit_pgto_c_apresentacao.Text, '.', '', []);
  q_geral.Params.ParamByName('pg_cartao').AsString :=
    stringreplace(edit_pgto_cartao.Text, '.', '', []);
  q_geral.Params.ParamByName('pb_cheque').AsString :=
    stringreplace(edit_pgto_cheque.Text, '.', '', []);
  q_geral.Params.ParamByName('pg_usado').AsString :=
    stringreplace(edit_pgto_v_usado.Text, '.', '', []);
  q_geral.Params.ParamByName('pg_outras_pg').AsString :=
    stringreplace(edit_pgto_outras.Text, '.', '', []);
  q_geral.Params.ParamByName('pg_consorcio').AsString :=
    stringreplace(edit_pgto_consorcio.Text, '.', '', []);
  q_geral.Params.ParamByName('pg_fin_externo').AsString :=
    stringreplace(edit_pgto_fin_externo.Text, '.', '', []);
  q_geral.Params.ParamByName('pg_tr_usado').AsString :=
    stringreplace(edit_pgto_tr_usado.Text, '.', '', []);
  q_geral.Params.ParamByName('pg_tr_acessorio').AsString :=
    stringreplace(edit_pgto_tr_seguro_o.Text, '.', '', []);
  q_geral.Params.ParamByName('pg_tr_emplacamento').AsString :=
    stringreplace(edit_pgto_tr_emplacamento.Text, '.', '', []);
  q_geral.Params.ParamByName('pg_tr_ipva').AsString :=
    stringreplace(edit_pgto_tr_ipva.Text, '.', '', []);
  q_geral.Params.ParamByName('pg_tr_outros').AsString :=
    stringreplace(edit_pgto_tr_outros.Text, '.', '', []);
  q_geral.Params.ParamByName('pg_tr_hn').AsString :=
    stringreplace(edit_pgto_tr_hn.Text, '.', '', []);
  q_geral.Params.ParamByName('s_prazo').AsString := combo_prazo.SelectedText;

  q_geral.Params.ParamByName('id').AsString := lb_id.Caption;

  q_geral.ExecSQL;

end;

procedure TFrmSimulacaoVenda.salvar_form_part3;
begin

  q_geral.Close;
  q_geral.sql.Clear;
  q_geral.sql.Add('update wc_simulacao_venda a');
  q_geral.sql.Add('set a.vendedor_acessorio = :vendedor,');
  q_geral.sql.Add('a.valor_elegivel     = :valor_elegivel,');
  q_geral.sql.Add('a.valor_aumento_parc = :aumento_parc,');
  q_geral.sql.Add('a.valor_acessorios   = :acessorios,');
  q_geral.sql.Add('a.valor_entrada_a    = :entrada_a,');
  q_geral.sql.Add('a.a_valor_veic       = :valor_veic,');
  q_geral.sql.Add('a.a_entrada          = :entrada,');
  q_geral.sql.Add('a.a_financ           = :financ,');
  q_geral.sql.Add('a.a_perc_entrada     = :perc_entrada,');
  q_geral.sql.Add('a.a_prazo            = :prazo,');
  q_geral.sql.Add('a.a_parcela          = :parcela');
  q_geral.sql.Add('where id = :id');

  q_geral.ParamByName('vendedor').AsString := combo_dendedor_a.KeyValue;
  q_geral.ParamByName('valor_elegivel').AsString :=
    stringreplace(EDIT_AGREGADOS.Text, '.', '', []);
  q_geral.ParamByName('aumento_parc').AsString :=
    stringreplace(edit_valor_aumento_parc.Text, '.', '', []);
  q_geral.ParamByName('acessorios').AsString :=
    stringreplace(edit_valor_acessorios.Text, '.', '', []);
  q_geral.Params.ParamByName('id').AsString := lb_id.Caption;

  q_geral.ParamByName('entrada_a').AsString :=
    stringreplace(edit_entrada_acessorios.Text, '.', '', []);
  q_geral.ParamByName('valor_veic').AsString :=
    stringreplace(edit_a_valor_veic.Text, '.', '', []);
  q_geral.ParamByName('entrada').AsString := stringreplace(edit_a_entrada.Text,
    '.', '', []);
  q_geral.ParamByName('financ').AsString := stringreplace(edit_a_finan.Text,
    '.', '', []);
  q_geral.ParamByName('perc_entrada').AsString :=
    stringreplace(edit_a_perc_entrada.Text, '%', '', []);
  q_geral.ParamByName('prazo').AsString := edit_a_prazo.Text;
  q_geral.ParamByName('parcela').AsString := stringreplace(edit_a_parcela.Text,
    '.', '', []);
  q_geral.ExecSQL;

end;

procedure TFrmSimulacaoVenda.salvar_form_part4;
begin

  q_geral.Close;
  q_geral.sql.Clear;
  q_geral.sql.Add('update wc_simulacao_venda a');
  q_geral.sql.Add('set a.gmac_plus       = :gmac_plus,');
  q_geral.sql.Add('a.gmac_plus_valor = :gmac_plus_valor,');
  // q_geral.sql.Add('a.emplacamento    = :emplacamento,');
  q_geral.sql.Add('a.pmc             = :pmc,');
  q_geral.sql.Add('a.pmc_tipo        = :pmc_tipo,');
  q_geral.sql.Add('a.pmc_valor       = :pmc_valor,');
  q_geral.sql.Add('a.gap             = :gap,');
  q_geral.sql.Add('a.gap_tipo        = :gap_tipo,');
  q_geral.sql.Add('a.gap_valor       = :gap_valor,');
  q_geral.sql.Add('a.siga            = :siga,');
  q_geral.sql.Add('a.siga_tipo       = :siga_tipo,');
  q_geral.sql.Add('a.siga_valor      = :siga_valor,');
  q_geral.sql.Add('a.valor_seguro    = :valor_seguro');
  q_geral.sql.Add(' where id= :id');

  q_geral.ParamByName('gmac_plus').AsBoolean := ck_s4_gmac_plus.Checked;
  q_geral.ParamByName('gmac_plus_valor').AsString :=
    stringreplace(edit_s4_gmac_plus.Text, '.', '', []);
  // q_geral.ParamByName('emplacamento').AsString :=
  // stringreplace(edit_s4_emplacamento.Text, '.', '', []);
  q_geral.ParamByName('pmc').AsBoolean := CK_S4_PMC.Checked;
  q_geral.ParamByName('pmc_tipo').AsString := combo_s4_pmc.SelectedValue;
  q_geral.ParamByName('pmc_valor').AsString := stringreplace(edit_s4_pmc.Text,
    '.', '', []);
  q_geral.ParamByName('gap').AsBoolean := ck_s4_gap.Checked;
  q_geral.ParamByName('gap_tipo').AsString := combo_s4_gap.SelectedValue;
  q_geral.ParamByName('gap_valor').AsString := stringreplace(edit_s4_gap.Text,
    '.', '', []);
  q_geral.ParamByName('siga').AsBoolean := ck_s4_siga.Checked;
  q_geral.ParamByName('siga_tipo').AsString := combo_s4_siga.SelectedValue;
  q_geral.ParamByName('siga_valor').AsString := stringreplace(edit_s4_siga.Text,
    '.', '', []);
  q_geral.ParamByName('valor_seguro').AsString :=
    stringreplace(edit_s4_valor_seguro.Text, '.', '', []);

  q_geral.Params.ParamByName('id').AsString := lb_id.Caption;
  q_geral.ExecSQL;

end;

procedure TFrmSimulacaoVenda.set_agregados;
var
  total, parcela, financiamento: real;
begin

  // aa
  // checa GMAC PLUS
  total := 0;

  if (edit_s4_gmac_plus.Text <> '0,00') and (edit_s4_gmac_plus.Text <> '') and
    (ck_s4_gmac_plus.Checked) then
  begin

    total := total + strtofloat(edit_s4_gmac_plus.Text);

  end;

  if (edit_s4_pmc.Text <> '0,00') and (edit_s4_pmc.Text <> '') and
    (CK_S4_PMC.Checked) then
  begin

    total := total + strtofloat(edit_s4_pmc.Text);

  end;

  if (edit_s4_gap.Text <> '0,00') and (edit_s4_gap.Text <> '') and
    (ck_s4_gap.Checked) then
  begin

    total := total + strtofloat(edit_s4_gap.Text);

  end;

  if (edit_s4_siga.Text <> '0,00') and (edit_s4_siga.Text <> '') and
    (ck_s4_siga.Checked) then
  begin

    total := total + strtofloat(edit_s4_siga.Text);

  end;



  // aplica f�rmula no total

  // Recalcula financiamento
  financiamento := 0;

  financiamento := strtofloat(stringreplace(edit_a_finan.Text, '.', '',
    [])) + total;
  edit_s4_valor_finan.Text := floattostr(financiamento);

  // Recalcula Parcela
  if total > 0 then
  begin
    parcela := 0;

    parcela := (financiamento + strtofloat(edit_tac.Text)) *
      strtofloat(edit_s4_cof.Text);

    edit_s4_parcela.Text := floattostr(parcela);
  end
  else
  begin
    edit_s4_parcela.Text := edit_a_parcela.Text;
  end;

end;

procedure TFrmSimulacaoVenda.set_list_check_docs(id_finan: string);
begin

  q_geral.Close;
  q_geral.sql.Clear;
  q_geral.sql.Text :=

  // 'select descricao from wc_lista_documentos where ativo=''S'' order by descricao ';

    '  select descricao                           ' +
    '  from wc_lista_documentos a                 ' +
    ' where ativo = ''S''                         ' +
    '                                             ' +
    '   and not exists (select 1                  ' +
    '          from wc_fin_check_doc b            ' +
    '         where b.doc = a.descricao           ' +
    '           and id_finan = :id_finan)         ' +
    '                                             ' +
    ' order by a.descricao                        ';

  q_geral.ParamByName('id_finan').AsString := id_finan;

  q_geral.Open();

  q_geral.First;
  list_fin_check.Clear;
  while not q_geral.Eof do
  begin

    list_fin_check.Items.Add(q_geral.FieldByName('descricao').AsString);

    q_geral.Next;
  end;

  // prepara lista de selecionados

  q_geral.Close;
  q_geral.sql.Clear;
  q_geral.sql.Text :=

    'select doc as descricao from wc_fin_check_doc where id_finan= :id_finan order by doc ';
  q_geral.ParamByName('id_finan').AsString := id_finan;
  q_geral.Open();

  q_geral.First;
  list_fin_check_list.Clear;
  while not q_geral.Eof do
  begin

    list_fin_check_list.Items.Add(q_geral.FieldByName('descricao').AsString);

    q_geral.Next;
  end;

end;

procedure TFrmSimulacaoVenda.set_regra_operador;
begin

end;

procedure TFrmSimulacaoVenda.btn_aprovar_acessoriosAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  if controller.get_acesso('WC0010') = 0 then
  begin

    AddToInitProc(swalAlert('Alerta', ' Acesso n�o permitido -WC0010 !!!'));
  end
  else
  begin

    if controller.get_aprovacao(lb_id.Caption, 'G') = TRUE then
    begin

      if combo_dendedor_a.ItemIndex.ToString = '-1' then
      begin
        AddToInitProc(swalAlert('Alerta',
          ' Selecione um vendedor antes de aprovar.'));
      end
      else
      begin
        q_geral.Close;
        q_geral.sql.Clear;
        q_geral.sql.Add(' UPDATE wc_simulacao_venda set acessorios=user, ');
        q_geral.sql.Add(' data_aprovacao_acess=sysdate where id= :id');
        q_geral.ParamByName('id').AsString := lb_id.Caption;
        q_geral.ExecSQL;

        // AddToInitProc(swalSuccess('Confirma��o', ' Aprovado  com sucesso !!!'));
        salvar_form_part1;
      end;
    end
    else
    begin
      AddToInitProc(swalAlert('Alerta',
        ' Gerente ainda n�o aprovou, verifique !!!'));
    end;
  end;

end;

procedure TFrmSimulacaoVenda.btn_cliente_buscaAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  guardar_dados;
end;

procedure TFrmSimulacaoVenda.btn_cliente_buscaHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  // ATag.Add('btn-primary');
end;

procedure TFrmSimulacaoVenda.BTN_EXC_ANEXOAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;




  // WebApplication.CallBackResponse.AddJavaScriptToExecute('$("#TbAnexo").DataTable().ajax.reload();');

end;

procedure TFrmSimulacaoVenda.btn_fin_check_addAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  if list_fin_check.ItemIndex.ToString <> '-1' then
  begin

    // list_fin_check_list.Items.Delete(list_fin_check_list.Items.IndexOf(list_fin_check.SelectedText));
    list_fin_check_list.Items.Add(list_fin_check.SelectedValue);

    // Deleta o que j� existe   //Evita duplicidade
    q_geral.Close;
    q_geral.sql.Clear;
    q_geral.sql.Text :=

      'delete from wc_fin_check_doc where doc = :doc and id_finan = :id_finan';

    q_geral.ParamByName('id_finan').AsString := lb_id.Caption;
    q_geral.ParamByName('doc').AsString := list_fin_check.SelectedValue;
    q_geral.ExecSQL;

    // Adiciona
    q_geral.Close;
    q_geral.sql.Clear;
    q_geral.sql.Text :=

      'insert into wc_fin_check_doc(id,id_finan,doc) values( seq_wc_geral.nextval, :id_finan , :doc)';

    q_geral.ParamByName('id_finan').AsString := lb_id.Caption;
    q_geral.ParamByName('doc').AsString := list_fin_check.SelectedValue;
    q_geral.ExecSQL;

    list_fin_check.Items.Delete(list_fin_check.ItemIndex);

  end;

end;

procedure TFrmSimulacaoVenda.btn_fin_check_delAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  if list_fin_check_list.ItemIndex.ToString <> '-1' then
  begin

    list_fin_check.Items.Add(list_fin_check_list.SelectedValue);

    // Deleta
    q_geral.Close;
    q_geral.sql.Clear;
    q_geral.sql.Text :=

      'delete from wc_fin_check_doc where doc = :doc and id_finan = :id_finan';

    q_geral.ParamByName('id_finan').AsString := lb_id.Caption;
    q_geral.ParamByName('doc').AsString := list_fin_check_list.SelectedValue;
    q_geral.ExecSQL;

    list_fin_check_list.Items.Delete(list_fin_check_list.ItemIndex);

  end;
end;

procedure TFrmSimulacaoVenda.btn_refresh_statusAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$("#GRID_STATUS_FINAN").DataTable().ajax.reload();');
end;

procedure TFrmSimulacaoVenda.btn_salvarAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  recupera_dados;

end;

procedure TFrmSimulacaoVenda.btn_salvar_fiAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  inserir_fi_historico;
end;

procedure TFrmSimulacaoVenda.BTN_STATUS_FINANAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#Statusfinan'').modal(''show'');');
end;

procedure TFrmSimulacaoVenda.btn_uploadAsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  i: Integer;
  Ms: tmemorystream;

begin
  inherited;

end;

procedure TFrmSimulacaoVenda.calc_cof;
var
  valor_financiamento: real;
  valor_parcela: real;
  valor_tac: real;

begin

  if (edit_valor_finan1.Text <> '') and (edit_parcela.Text <> '') then
  begin

    valor_financiamento := strtofloat(stringreplace(edit_valor_finan1.Text, '.',
      '', [rfReplaceAll, rfIgnoreCase]));
    valor_parcela := strtofloat(stringreplace(edit_parcela.Text, '.', '',
      [rfReplaceAll, rfIgnoreCase]));

    valor_tac := strtofloat(stringreplace(edit_tac.Text, '.', '',
      [rfReplaceAll, rfIgnoreCase]));

    edit_cof.Text := formatfloat('#0.00000',
      valor_parcela / (valor_financiamento + valor_tac));
    edit_parcela.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_parcela.Text, '.', '', [rfReplaceAll,
      rfIgnoreCase])));
    edit_tac.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_tac.Text, '.', '', [rfReplaceAll,
      rfIgnoreCase])));
  end;

end;

procedure TFrmSimulacaoVenda.calc_n1;
var
  v_financ: real;
  v_spmc: real;
  v_gap: real;
  v_gmac_plus: real;
  set_calc: Boolean;
  v_parcela: real;
  v_rc: real;
  v_coef: real;
begin

  // recalcula o valor financiado
  set_calc := false;

  v_financ := strtofloat(stringreplace(edit_valor_finan1.Text, '.', '', []));

  if N1_CK_SPMC.Checked then
  begin

    if trim(N1_EDIT_SPMC.Text) = '' then
    begin

      AddToInitProc(swalAlert('Alerta',
        ' Campos obrigat�rios n�o preenchidos:SPMC '));

    end
    else
    begin
      v_spmc := strtofloat(N1_EDIT_SPMC.Text);
      v_financ := v_financ + v_spmc;
      set_calc := TRUE;
    end;
  end;

  if N1_CK_GAP.Checked then
  begin
    if trim(N1_EDIT_GAP.Text) = '' then
    begin
      AddToInitProc(swalAlert('Alerta',
        ' Campos obrigat�rios n�o preenchidos:GAP '));
    end
    else
    begin
      v_gap := strtofloat(N1_EDIT_GAP.Text);
      v_financ := v_financ + v_gap;
      set_calc := TRUE;
    end;
  end;

  if N1_CK_GMAC_PLUS.Checked then
  begin
    v_gmac_plus := strtofloat(N1_EDIT_GMAC_PLUS.Text);
    v_financ := v_financ + v_gmac_plus;
    set_calc := TRUE;

  end;

  if set_calc = TRUE then
  begin

    v_rc := strtofloat(edit_tac.Text);
    v_coef := strtofloat(edit_cof.Text);

    edit_valor_finan1.Text := floattostr(v_financ);
    edit_valor_finan2.Text:= floattostr(v_financ);
    // calcula nova parcela

    v_parcela := (v_financ + v_rc) * v_coef;
    edit_parcela.Text :=

      formatfloat('#,,0.00', strtofloat(floattostr(v_parcela)));


  end;

end;

procedure TFrmSimulacaoVenda.calc_valor_aum_parc;

begin

  edit_valor_aumento_parc.Text := floattostr(strtofloat(EDIT_AGREGADOS.Text) *
    strtofloat(edit_cof.Text));

end;

procedure TFrmSimulacaoVenda.calc_valor_elegivel;
var
  v_percent: real;
  v_perc_entrada: real;
  v_valor_entrada: real;

begin
  v_percent := 0;
  v_perc_entrada := strtofloat(stringreplace(edit_perc_entrada2.Text, '%', '',
    [rfReplaceAll, rfIgnoreCase]));
  v_valor_entrada := strtofloat(stringreplace(edit_valor_entrada2.Text, '.', '',
    [rfReplaceAll, rfIgnoreCase]));

  if (v_perc_entrada > 20) and (v_perc_entrada < 30) then
  begin

    v_percent := v_perc_entrada - 20;

  end;

  if (v_perc_entrada > 30) and (v_perc_entrada < 40) then
  begin

    v_percent := v_perc_entrada - 30;

  end;
  if (v_perc_entrada > 40) and (v_perc_entrada < 50) then
  begin

    v_percent := v_perc_entrada - 40;

  end;

  if (v_perc_entrada > 50) and (v_perc_entrada < 60) then
  begin

    v_percent := v_perc_entrada - 50;

  end;

  if (v_perc_entrada > 60) and (v_perc_entrada < 70) then
  begin

    v_percent := v_perc_entrada - 60;

  end;

  if (v_perc_entrada > 70) and (v_perc_entrada < 80) then
  begin

    v_percent := v_perc_entrada - 70;

  end;

  if (v_perc_entrada > 80) and (v_perc_entrada < 90) then
  begin

    v_percent := v_perc_entrada - 80;

  end;

  if (v_perc_entrada > 90) and (v_perc_entrada < 100) then
  begin

    v_percent := v_perc_entrada - 90;

  end;

  if v_percent > 0 then
  begin

    EDIT_AGREGADOS.Text := floattostr(v_valor_entrada * (v_percent / 100));
    calc_valor_aum_parc;

  end;
  // calc_valor_aum_parc;

end;

function TFrmSimulacaoVenda.checar_docs: Boolean;

begin

  q_docs.Close;
  q_docs.ParamByName('origem').AsString := combo_origem.SelectedText;
  q_docs.ParamByName('id_finan').AsInteger := strtoint(lb_id.Caption);
  q_docs.Open();

  if q_docs.RecordCount > 0 then
  begin

    result := false;

  end
  else
  begin

    result := TRUE;
  end;

end;

function TFrmSimulacaoVenda.checar_part1: Boolean;
var
  campo: string;
begin
  campo := '';
  result := TRUE;

  if ck_cliente_cadastro.Checked = false then
  begin

    if combo_vendedores.KeyValue = '' then
    begin
      result := false;
      campo := campo + '--Vendedor--';
    end;

    if edit_cliente_nome.Text = '' then
    begin
      result := false;
      campo := campo + '--Cliente Nome--';
    end;

    if edit_cliente_cpf.Text = '' then
    begin
      result := false;
      campo := campo + '--Cliente CPF--';
    end;
    if edit_cliente_fone.Text = '' then
    begin
      result := false;
      campo := campo + '--Cliente Fone--';
    end;
  end;

  if (rb_cnh_sim.Checked = false) and (rb_cnh_nao.Checked = false) then
  begin
    result := false;
    campo := campo + '--CNH--';
  end;

  if combo_marcas.KeyValue = '' then
  begin
    result := false;
    campo := campo + '--Marca do Veiculo--';
  end;
  if combo_produtos.KeyValue = '-1' then
  begin
    result := false;
    campo := campo + '--Fam�lia do Ve�culo--';
  end;
  if combo_modelos.KeyValue = '-1' then
  begin
    result := false;
    campo := campo + '--Modelo do Ve�culo--';
  end;

  if combo_cores_externas.KeyValue = '-1' then
  begin
    result := false;
    campo := campo + '--Cor do Ve�culo--';
  end;

  if combo_prazo.ItemIndex.ToString = '-1' then
  begin
    result := false;
    campo := campo + '--Prazo(meses)--';
  end;

  if combo_origem.ItemIndex.ToString = '-1' then
  begin
    result := false;
    campo := campo + '--Or�gem--';
  end;

  if (stringreplace(edit_parcela.Text, '.', '', []) = '0,00') or
    (trim(edit_parcela.Text) = '') then
  begin
    result := false;
    campo := campo + '--Parcela--';
  end;

  if result = false then
  begin

    AddToInitProc(swalAlert('Alerta', ' Campos obrigat�rios n�o preenchidos: '
      + campo));

  end;

end;

procedure TFrmSimulacaoVenda.ck_aprovar_acessoriosAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  if ck_aprovar_acessorios.Checked then
  begin

    if controller.get_acesso('WC0009') = 0 then
    begin
      AddToInitProc(swalAlert('Alerta', 'Acesso:WC0009, n�o permitido!'));
      ck_aprovar_acessorios.Checked := false;
    end;

  end;
end;

procedure TFrmSimulacaoVenda.ck_cliente_cadastroAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  if ck_cliente_cadastro.Checked then
  begin
    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$(''#PesquisaCliente'').modal(''show'');');
  end
  else
  begin
    edit_cliente_nome.Enabled := TRUE;
    edit_cliente_cpf.Enabled := TRUE;
    guardar_dados;
  end;
end;

procedure TFrmSimulacaoVenda.ck_cliente_cadastroAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  // rb_cnh_sim.SetFocus;
end;

procedure TFrmSimulacaoVenda.ck_s4_gapAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  obs_aut_fi;
  set_agregados;
end;

procedure TFrmSimulacaoVenda.ck_s4_gmac_plusAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  obs_aut_fi;
  set_agregados;
end;

procedure TFrmSimulacaoVenda.CK_S4_PMCAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  obs_aut_fi;
  set_agregados;
end;

procedure TFrmSimulacaoVenda.ck_s4_sigaAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  obs_aut_fi;
  set_agregados;
end;

procedure TFrmSimulacaoVenda.combo_cores_externasAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  q_cores_externas.LOCATE('cor_externa', combo_cores_externas.KeyValue, []);
end;

procedure TFrmSimulacaoVenda.combo_dendedor_aAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  edit_a_valor_veic.Text := edit_valor_veiculo2.Text;
  edit_a_entrada.Text := edit_valor_entrada2.Text;
  edit_a_finan.Text := edit_valor_finan2.Text;
  edit_a_prazo.Text := combo_prazo.SelectedText;
  edit_a_parcela.Text := edit_parcela.Text;
  edit_a_tabela.Text := edit_fipe.Text;
  edit_a_cof.Text := edit_cof.Text;
  edit_a_tabela.Text := combo_tabela.SelectedValue;
  edit_a_perc_entrada.Text := edit_perc_entrada2.Text;
end;

procedure TFrmSimulacaoVenda.combo_empresasAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  pcombo_empresas;
end;

procedure TFrmSimulacaoVenda.combo_financiadorasAsyncChange(Sender: TObject;
  EventParams: TStringList);
var
  vindex: Integer;
  i: Integer;
begin
  inherited;
  controller.DM.q_financiadoras.LOCATE('cod_financiadora',
    combo_financiadoras.KeyValue, []);

  // varrer combo_box

  edit_s4_valor_veic.Text := edit_a_valor_veic.Text;
  edit_s4_valor_entrada.Text := edit_a_entrada.Text;
  edit_s4_valor_finan.Text := edit_a_finan.Text;
  vindex := combo_s4_prazo.Items.IndexOf(edit_a_prazo.Text);
  combo_s4_prazo.ItemIndex := vindex;
  edit_s4_parcela.Text := edit_a_parcela.Text;
  edit_s4_tabela.Text := edit_a_cod_tabela.Text;
  edit_s4_cof.Text := edit_a_cof.Text;
  edit_tabela.Text := edit_a_tabela.Text;
  edit_s4_despachante.Text := edit_valor_despachante.Text;
  edit_s4_valor_acessorio.Text := edit_valor_acessorios.Text;

end;

procedure TFrmSimulacaoVenda.combo_financiadorasHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add(' align=\"Right\" ');
end;

procedure TFrmSimulacaoVenda.combo_marcasAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  abrir_familias;
end;

procedure TFrmSimulacaoVenda.combo_modelosAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  abrir_cores;



  // Busca opcionais do modelo

  q_opcionais.Close;
  q_opcionais.ParamByName('cod_produto').AsInteger :=
    q_modelosCOD_PRODUTO.AsInteger;
  q_opcionais.ParamByName('cod_modelo').AsInteger :=
    q_modelosCOD_MODELO.AsInteger;
  q_opcionais.Open;

  q_opcionais.First;
  edit_opcionais.Text := '';
  while not q_opcionais.Eof do
  begin

    edit_opcionais.Text := edit_opcionais.Text +
      q_opcionaisCOD_OPCIONAL.AsString + ';';

    q_opcionais.Next;
  end;

  edit_ano_modelo.Text := q_modelosANO_MODELO.AsString;

  edit_valor_veiculo1.Text := formatfloat('#,,0.00',
    strtofloat(q_modelosPRECO_TABELA.AsString));

  edit_valor_veiculo2.Text := formatfloat('#,,0.00',
    strtofloat(q_modelosPRECO_TABELA.AsString));

  edit_valor_finan1.Text := formatfloat('#,,0.00',
    strtofloat(q_modelosPRECO_TABELA.AsString));
  edit_valor_finan2.Text := formatfloat('#,,0.00',
    strtofloat(q_modelosPRECO_TABELA.AsString));

end;

procedure TFrmSimulacaoVenda.combo_origemAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  // AddToInitProc(swalSuccess('Confirma��o', 'C�digo '+combo_origem.Text));
end;

procedure TFrmSimulacaoVenda.combo_prazoAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  // edit_parcela.SetFocus;
end;

procedure TFrmSimulacaoVenda.combo_produtosAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  abrir_modelos;
end;

procedure TFrmSimulacaoVenda.COMBO_STATUS_FINANAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  q_geral.Close;
  q_geral.sql.Clear;

  q_geral.sql.Text := ' select nvl(doc,''N'') as doc from wc_status_finan ' +
    ' where descricao= :doc  ';

  q_geral.ParamByName('doc').AsString := COMBO_STATUS_FINAN.Text;
  q_geral.Open();

  if q_geral.FieldByName('doc').AsString = 'S' then
  begin

    // showmodal

    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$(''#ListFinCheck'').modal(''show'');');

  end;

end;

procedure TFrmSimulacaoVenda.combo_tabelaAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  // edit_fipe.SetFocus;
end;

procedure TFrmSimulacaoVenda.combo_tipoAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  edit_modal_tipo.Text := combo_tipo.Text;
end;

procedure TFrmSimulacaoVenda.combo_tipo_propAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  if combo_tipo_prop.SelectedValue = 'E' then
  begin

    timer.Enabled := TRUE;
    edit_modal_tipo.Text := combo_tipo.Text;

    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$(''#PesquisarVeiculo'').modal(''show'');');
    combo_marcas.Enabled := false;
    combo_produtos.Enabled := false;
    combo_modelos.Enabled := false;
    combo_cores_externas.Enabled := false;

  end;

  if combo_tipo_prop.SelectedText = 'Estoque' then
  begin

    combo_marcas.Enabled := false;
    edit_placa_usado.Enabled := false;
    combo_produtos.Enabled := false;
    combo_modelos.Enabled := false;
    combo_cores_externas.Enabled := false;
    edit_renavan.Enabled := false;
    edit_chassi.Enabled := false;
    edit_placa_usado.Enabled := false;
    edit_ano_modelo.Enabled := false;
  end
  else
  begin
    combo_marcas.Enabled := TRUE;
    edit_placa_usado.Enabled := TRUE;
    combo_produtos.Enabled := TRUE;
    combo_modelos.Enabled := TRUE;
    combo_cores_externas.Enabled := TRUE;
    edit_renavan.Enabled := TRUE;
    edit_chassi.Enabled := TRUE;
    edit_placa_usado.Enabled := TRUE;
    edit_ano_modelo.Enabled := TRUE;
  end;

  if (combo_tipo_prop.SelectedValue = 'M') or
    (combo_tipo_prop.SelectedValue = 'V') or
    (combo_tipo_prop.SelectedValue = 'A') or
    (combo_tipo_prop.SelectedValue = 'E') then
  begin
    q_marcas.Close;
    q_marcas.sql.Clear;
    q_marcas.sql.Add(' select cod_marca, m.descricao_marca ');
    q_marcas.sql.Add(' from marcas m ');
    q_marcas.sql.Add
      (' where exists (select 1 from produtos p where p.cod_marca = m.cod_marca) ');
    q_marcas.sql.Add(' order by descricao_marca ');
    q_marcas.Open;
    combo_marcas.RefreshItems;

    combo_marcas.Enabled := TRUE;
    combo_produtos.Enabled := TRUE;
    combo_modelos.Enabled := TRUE;
    combo_cores_externas.Enabled := TRUE;
    edit_chassi.Enabled := TRUE;
    q_produtos.Close;
    combo_produtos.RefreshItems;
    q_modelos.Close;
    combo_modelos.RefreshItems;
    q_cores_externas.Close;
    combo_cores_externas.RefreshItems;
    edit_chassi.Text := '';
    edit_opcionais.Text := '';
    edit_renavan.Text := '';
    edit_ano_modelo.Text := '';

  end;

end;

procedure TFrmSimulacaoVenda.combo_vendedoresAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  q_vendedores_veic.LOCATE('nome', combo_vendedores.KeyValue, []);
end;

procedure TFrmSimulacaoVenda.desabilitar_final;
begin
  ck_s4_gmac_plus.Enabled := false;
  edit_s4_gmac_plus.Enabled := false;
  CK_S4_PMC.Enabled := false;
  edit_s4_pmc.Enabled := false;
  combo_s4_pmc.Enabled := false;
  ck_s4_gap.Enabled := false;
  edit_s4_gap.Enabled := false;
  combo_s4_gap.Enabled := false;
  ck_s4_siga.Enabled := false;
  edit_s4_siga.Enabled := false;
  combo_s4_siga.Enabled := false;
  edit_s4_valor_seguro.Enabled := false;

end;

procedure TFrmSimulacaoVenda.desabilitar_finan;
begin

  combo_financiadoras.Enabled := false;
  combo_analista_c.Enabled := false;
  COMBO_STATUS_FINAN.Enabled := false;
  COMBO_MOTIVOS_R.Enabled := false;
  edit_s4_valor_veic.Enabled := false;
  edit_s4_valor_entrada.Enabled := false;
  edit_s4_valor_finan.Enabled := false;
  combo_s4_prazo.Enabled := false;
  edit_s4_parcela.Enabled := false;
  edit_tabela.Enabled := false;
  edit_s4_tabela.Enabled := false;
  edit_s4_cof.Enabled := false;
  rb_s4_tab_especial.Enabled := false;
  rb_s4_tab_normal.Enabled := false;
  edit_s4_despachante.Enabled := false;
  edit_s4_valor_acessorio.Enabled := false;
  btn_salvar_fi.Enabled := false;

end;

procedure TFrmSimulacaoVenda.desabilitar_parte1;
begin

  combo_empresas.Enabled := false;
  combo_vendedores.Enabled := false;
  combo_origem.Enabled := false;
  edit_cliente_cpf.Enabled := false;
  edit_cliente_nome.Enabled := false;
  edit_cliente_fone.Enabled := false;
  ck_cliente_cadastro.Enabled := false;
  rb_cnh_sim.Enabled := false;
  rb_cnh_nao.Enabled := false;
  combo_tipo.Enabled := false;
  combo_tipo_prop.Enabled := false;
  combo_marcas.Enabled := false;
  combo_produtos.Enabled := false;
  combo_modelos.Enabled := false;
  edit_ano_modelo.Enabled := false;
  combo_cores_externas.Enabled := false;
  edit_renavan.Enabled := false;
  edit_chassi.Enabled := false;
  edit_opcionais.Enabled := false;
  edit_placa_usado.Enabled := false;

end;

procedure TFrmSimulacaoVenda.desabilitar_parte2;
begin
  edit_valor_veiculo1.Enabled := false;
  combo_prazo.Enabled := false;
  edit_parcela.Enabled := false;
  combo_tabela.Enabled := false;
  edit_fipe.Enabled := false;
  edit_participacao.Enabled := false;
  edit_valor_despachante.Enabled := false;
  edit_tac.Enabled := false;
  edit_pgto_c_apresentacao.Enabled := false;
  edit_pgto_cartao.Enabled := false;
  edit_pgto_cheque.Enabled := false;
  edit_pgto_v_usado.Enabled := false;
  edit_pgto_outras.Enabled := false;
  edit_pgto_consorcio.Enabled := false;
  edit_pgto_fin_externo.Enabled := false;
  edit_pgto_tr_usado.Enabled := false;
  edit_pgto_tr_emplacamento.Enabled := false;
  edit_pgto_tr_ipva.Enabled := false;
  edit_pgto_tr_seguro_o.Enabled := false;
  edit_pgto_tr_outros.Enabled := false;
  edit_pgto_tr_hn.Enabled := false;
  edit_obs_cortesia.Enabled := false;
  edit_obs_despachante.Enabled := false;
  edit_pgto_placa.Enabled := false;

end;

procedure TFrmSimulacaoVenda.desabilitar_parte3;
begin

  combo_dendedor_a.Enabled := false;
  btn_aprovar_acessorios.Enabled := false;
  edit_valor_acessorios.Enabled := false;

end;

procedure TFrmSimulacaoVenda.EDIT_AGREGADOSAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  recalc_valores;
end;

procedure TFrmSimulacaoVenda.edit_ano_modeloHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add(' placeholder="Informe ano/modelo"');

  ATag.Add('data-inputmask="''mask'': ''99/99''" data-mask');

end;

procedure TFrmSimulacaoVenda.edit_chassiHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add(' placeholder="Informe o chassi..."');
  ATag.Add(' size="25""');
end;

procedure TFrmSimulacaoVenda.edit_cliente_cpfAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  q_geral.Close;
  q_geral.sql.Clear;
  q_geral.sql.Text := ' select id,vendedor from wc_simulacao_venda ' +
    'where cod_cliente = :cod_cliente ';
  q_geral.ParamByName('cod_cliente').AsString := edit_cliente_cpf.Text;
  q_geral.Open();

  if q_geral.RecordCount > 0 then
  begin

    AddToInitProc(swalAlert('Informa��o',
      'Foi encontrado registro anterior para este cliente, id da ficha:' +
      q_geral.FieldByName('id').AsString));

    // AddToInitProc(swalSuccess('Confirma��o', ' Exclu�do com sucesso !!!'));

  end
  else
  begin
    AddToInitProc(swalAlert('Informa��o',
      'Verifica��o conclu�da, n�o foram encontrados registros anteriores para este cliente.')
      );
  end;

  // edit_cliente_nome.SetFocus;

end;

procedure TFrmSimulacaoVenda.edit_cliente_cpfHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  // ATag.Add('data-inputmask="''mask'': ''999.999.999-99''" data-mask');
  // ATag.Add(' placeholder= " CPF ou CNPJ " ');
end;

procedure TFrmSimulacaoVenda.edit_cliente_foneAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  // ck_cliente_cadastro.SetFocus;
end;

procedure TFrmSimulacaoVenda.edit_cliente_foneHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add('data-inputmask="''mask'': ''(99)99999-9999''" data-mask');
  ATag.Add(' placeholder= " Informe um fone v�lido. " ');
end;

procedure TFrmSimulacaoVenda.edit_cliente_nomeAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  // edit_cliente_fone.SetFocus;
end;

procedure TFrmSimulacaoVenda.edit_fipeAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  recalc_valores;
  // edit_participacao.SetFocus;
end;

procedure TFrmSimulacaoVenda.edit_fipeHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add(' style="text-align:center" ');
end;

procedure TFrmSimulacaoVenda.edit_obs_cortesiaAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  recalc_valores;
end;

procedure TFrmSimulacaoVenda.edit_obs_despachanteAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  recalc_valores;
end;

procedure TFrmSimulacaoVenda.edit_opcionaisHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add(' size="60""');
end;

procedure TFrmSimulacaoVenda.edit_parcelaAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  try
    recalc_valores;
    formatar_valor;
  except

    with (Sender as TIWEdit) do
    begin

      Text := '';
    end;

  end;

  // edit_parcela.Text := FormatFloat('#,,0.00', strtofloat(edit_parcela.Text));

end;

procedure TFrmSimulacaoVenda.edit_parcelaHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  // ATag.Add('data-inputmask="''mask'': ''#.###,##''" data-mask');
  ATag.Add(' style="text-align:right" ');
  ATag.Add(' placeholder="R$   0,00" ');
end;

procedure TFrmSimulacaoVenda.edit_participacaoAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  recalc_valores;

  // edit_valor_despachante.SetFocus;
end;

procedure TFrmSimulacaoVenda.edit_participacaoHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add(' style="text-align:right" ');
  ATag.Add(' placeholder="R$   0,00" ');
end;

procedure TFrmSimulacaoVenda.edit_perc_entrada1HTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  // ATag.Add('data-inputmask="''mask'': ''99,99%''" data-mask');
  ATag.Add(' placeholder="   00,00%" ');
  ATag.Add(' style="text-align:center" ');
end;

procedure TFrmSimulacaoVenda.edit_perc_entrada2HTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  // ATag.Add('data-inputmask="''mask'': ''99,99%''" data-mask');
  ATag.Add(' placeholder="   00,00%" ');
  ATag.Add(' style="text-align:center" ');
end;

procedure TFrmSimulacaoVenda.edit_pgto_cartaoAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  recalc_valores;
  // edit_pgto_cheque.SetFocus;
end;

procedure TFrmSimulacaoVenda.edit_pgto_chequeAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  recalc_valores;
  // edit_pgto_v_usado.SetFocus;
end;

procedure TFrmSimulacaoVenda.edit_pgto_consorcioAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  recalc_valores;
  // edit_pgto_fin_externo.SetFocus;
end;

procedure TFrmSimulacaoVenda.edit_pgto_c_apresentacaoAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  recalc_valores;

  // edit_pgto_cartao.SetFocus;

end;

procedure TFrmSimulacaoVenda.edit_pgto_c_apresentacaoHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add(' placeholder="R$   0,00" ');
  ATag.Add(' style="text-align:right" ');
end;

procedure TFrmSimulacaoVenda.edit_pgto_fin_externoAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  recalc_valores;
  // edit_pgto_tr_usado.SetFocus;
end;

procedure TFrmSimulacaoVenda.edit_pgto_outrasAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  recalc_valores;
  // edit_pgto_consorcio.SetFocus;
end;

procedure TFrmSimulacaoVenda.edit_pgto_placaHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add('data-inputmask="''mask'': ''AAA-9#99''" data-mask');
  ATag.Add('placeholder="Informe uma placa"');
end;

procedure TFrmSimulacaoVenda.edit_pgto_tr_emplacamentoAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  recalc_valores;
  edit_pgto_tr_ipva.SetFocus;
end;

procedure TFrmSimulacaoVenda.edit_pgto_tr_hnAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  recalc_valores;
  // edit_pgto_c_apresentacao.SetFocus;
end;

procedure TFrmSimulacaoVenda.edit_pgto_tr_ipvaAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  recalc_valores;
  // edit_pgto_tr_outros.SetFocus;
end;

procedure TFrmSimulacaoVenda.edit_pgto_tr_outrosAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  recalc_valores;
  // edit_pgto_tr_hn.SetFocus;
end;

procedure TFrmSimulacaoVenda.edit_pgto_tr_seguro_oAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  recalc_valores;
  // edit_pgto_tr_emplacamento.SetFocus;
end;

procedure TFrmSimulacaoVenda.edit_pgto_tr_usadoAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  recalc_valores;
  // edit_pgto_tr_seguro_o.SetFocus;
end;

procedure TFrmSimulacaoVenda.edit_pgto_v_usadoAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  recalc_valores;
  // edit_pgto_outras.SetFocus;
end;

procedure TFrmSimulacaoVenda.edit_placa_usadoHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;

  ATag.Add('data-inputmask="''mask'': ''AAA-9#99''" data-mask');
  ATag.Add('placeholder="Informe uma placa"');

end;

procedure TFrmSimulacaoVenda.edit_prazoAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  recalc_valores;
end;

procedure TFrmSimulacaoVenda.edit_prazoHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add(' style="text-align:center" ');
end;

procedure TFrmSimulacaoVenda.edit_s4_gapAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  set_agregados
end;

procedure TFrmSimulacaoVenda.edit_s4_gmac_plusAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  set_agregados
end;

procedure TFrmSimulacaoVenda.edit_s4_pmcAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  set_agregados
end;

procedure TFrmSimulacaoVenda.edit_s4_sigaAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  set_agregados
end;

procedure TFrmSimulacaoVenda.edit_tabelaAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  recalc_valores
end;

procedure TFrmSimulacaoVenda.edit_tacAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
recalc_valores;
end;

procedure TFrmSimulacaoVenda.edit_valor_acessoriosAsyncExit(Sender: TObject;
  EventParams: TStringList);
var
  valor_acessorios: string;
  valor_agregados: string;
begin
  inherited;
  valor_acessorios := stringreplace(edit_valor_acessorios.Text, '.', '',
    [rfReplaceAll]);
  valor_agregados := stringreplace(EDIT_AGREGADOS.Text, '.', '',
    [rfReplaceAll]);

  valor_agregados := stringreplace(valor_agregados, 'R$', '', [rfReplaceAll]);
  valor_agregados := valor_agregados.TrimLeft;

  if strtofloat(valor_acessorios) > strtofloat(valor_agregados) then
  begin
    // edit_valor_acessorios.Text:=stringreplace(edit_valor_acessorios.Text, '.', '',[rfReplaceAll]);
    edit_perc_entrada2.Text := stringreplace(edit_perc_entrada2.Text, '%', '',
      [rfReplaceAll]);

    // validado em 08/06/2020
    edit_entrada_acessorios.Text :=

      floattostr((strtofloat(stringreplace(edit_valor_acessorios.Text, '.', '',
      [])) * strtofloat(edit_perc_entrada2.Text)) / 100);

  end
  else
  begin
    edit_entrada_acessorios.Text := '0';
  end;

  // validado em 08/06/2020  e fechado
  edit_a_finan.Text :=
    floattostr(strtofloat(stringreplace(edit_valor_finan2.Text, '.', '',
    [rfReplaceAll])) + strtofloat(stringreplace(edit_valor_acessorios.Text, '.',
    '', [rfReplaceAll])) - strtofloat
    (stringreplace(edit_entrada_acessorios.Text, '.', '', [])));

  // validado em 08/06/2020  e fechado
  edit_a_entrada.Text :=
    floattostr(strtofloat(stringreplace(edit_valor_entrada2.Text, '.', '',
    [rfReplaceAll])) + strtofloat(stringreplace(edit_entrada_acessorios.Text,
    '.', '', [rfReplaceAll])));

  // Validado e fechado 08/06/2020
  edit_a_parcela.Text :=
    floattostr((strtofloat(stringreplace(edit_a_finan.Text, '.', '', [])) +
    strtofloat(stringreplace(edit_tac.Text, '.', '', []))) *
    strtofloat(edit_a_cof.Text));

  edit_a_valor_veic.Text := edit_valor_veiculo2.Text;
  edit_a_perc_entrada.Text := edit_perc_entrada2.Text;
  edit_a_prazo.Text := combo_prazo.SelectedText;

  formatar_acessorios;

end;

procedure TFrmSimulacaoVenda.edit_valor_despachanteAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  recalc_valores;
  // edit_valor_veiculo1.SetFocus;
end;

procedure TFrmSimulacaoVenda.edit_valor_despachanteHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add(' placeholder=" 0,00" ');
  ATag.Add(' style="text-align:right" ');
end;

procedure TFrmSimulacaoVenda.edit_valor_entrada1HTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  // ATag.Add('data-inputmask="''mask'': ''#.###,##''" data-mask');
  ATag.Add(' style="text-align:right" ');
  ATag.Add(' placeholder="R$   0,00" ');
end;

procedure TFrmSimulacaoVenda.edit_valor_entrada2HTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  // ATag.Add('data-inputmask="''mask'': ''#.###,##''" data-mask');
  ATag.Add(' style="text-align:right" ');
  ATag.Add(' placeholder="R$   0,00" ');
end;

procedure TFrmSimulacaoVenda.edit_valor_finan1HTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  // ATag.Add('data-inputmask="''mask'': ''#.###,##''" data-mask');
  ATag.Add(' style="text-align:right" ');
  ATag.Add(' placeholder="R$   0,00" ');
end;

procedure TFrmSimulacaoVenda.edit_valor_finan2HTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  // ATag.Add('data-inputmask="''mask'': ''#.###,##''" data-mask');
  ATag.Add(' style="text-align:right" ');
  ATag.Add(' placeholder="R$   0,00" ');
end;

procedure TFrmSimulacaoVenda.edit_valor_veiculo1AsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  recalc_valores;

  // combo_prazo.SetFocus;

end;

procedure TFrmSimulacaoVenda.edit_valor_veiculo1HTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  // ATag.Add('data-inputmask="''mask'': ''R$ 99,99''" data-mask');
  ATag.Add(' style="text-align:right" ');

  ATag.Add(' placeholder="R$   0,00" ');
end;

procedure TFrmSimulacaoVenda.edit_valor_veiculo2HTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  // ATag.Add('data-inputmask="''mask'': ''999999,99''" data-mask');
  ATag.Add(' style="text-align:right" ');
  ATag.Add(' placeholder="R$   0,00" ');
end;

procedure TFrmSimulacaoVenda.exc_reg_statusAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  q_status_finan.Close;
  q_status_finan.sql.Clear;
  q_status_finan.sql.Add('select * from wc_status_finan  ');

  q_status_finan.Open;

  q_status_finan.LOCATE('id', EDT_P_ID.Text, []);

  q_status_finan_aux.Close;
  q_status_finan_aux.sql.Clear;
  q_status_finan_aux.sql.Add(' delete from  WC_STATUS_FINAN  ');
  q_status_finan_aux.sql.Add(' where id= ' + q_status_finanID.AsString);
  q_status_finan_aux.ExecSQL;

  AddToInitProc(swalSuccess('Confirma��o', ' Exclu�do com sucesso !!!'));

  WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$("#StatusFinan").DataTable().ajax.reload();');

  q_status_finan.Close;
  q_status_finan.sql.Clear;
  q_status_finan.sql.Add('select * from wc_status_finan where ativo=''S'' ');

  q_status_finan.Open;

  COMBO_STATUS_FINAN.RefreshItems;
  COMBO_STATUS_FINAN.Enabled := TRUE;
end;

procedure TFrmSimulacaoVenda.formatar_acessorios;
begin
  // 123
  if EDIT_AGREGADOS.Text <> '' then
    EDIT_AGREGADOS.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(EDIT_AGREGADOS.Text, '.', '', [rfReplaceAll])));

  if edit_valor_aumento_parc.Text <> '' then
    edit_valor_aumento_parc.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_valor_aumento_parc.Text, '.', '',
      [rfReplaceAll])));

  if edit_valor_acessorios.Text <> '' then
    edit_valor_acessorios.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_valor_acessorios.Text, '.', '',
      [rfReplaceAll])));
  if edit_entrada_acessorios.Text <> '' then
    edit_entrada_acessorios.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_entrada_acessorios.Text, '.', '',
      [rfReplaceAll])));

  if edit_a_valor_veic.Text <> '' then
    edit_a_valor_veic.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_a_valor_veic.Text, '.', '',
      [rfReplaceAll])));

  if edit_a_entrada.Text <> '' then
    edit_a_entrada.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_a_entrada.Text, '.', '', [rfReplaceAll])));

  if edit_a_finan.Text <> '' then
    edit_a_finan.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_a_finan.Text, '.', '', [rfReplaceAll])));
  if edit_a_parcela.Text <> '' then
    edit_a_parcela.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_a_parcela.Text, '.', '', [rfReplaceAll])));

end;

procedure TFrmSimulacaoVenda.formatar_finan;
begin

  if edit_s4_valor_veic.Text <> '' then
    edit_s4_valor_veic.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_s4_valor_veic.Text, '.', '',
      [rfReplaceAll])));
  if edit_s4_valor_entrada.Text <> '' then
    edit_s4_valor_entrada.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_s4_valor_entrada.Text, '.', '',
      [rfReplaceAll])));

  if edit_s4_valor_finan.Text <> '' then
    edit_s4_valor_finan.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_s4_valor_finan.Text, '.', '',
      [rfReplaceAll])));

  if edit_s4_parcela.Text <> '' then
    edit_s4_parcela.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_s4_parcela.Text, '.', '', [rfReplaceAll])));
  if edit_s4_despachante.Text <> '' then
    edit_s4_despachante.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_s4_despachante.Text, '.', '',
      [rfReplaceAll])));

  if edit_s4_valor_acessorio.Text <> '' then
    edit_s4_valor_acessorio.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_s4_valor_acessorio.Text, '.', '',
      [rfReplaceAll])));

  if edit_s4_gmac_plus.Text <> '' then
    edit_s4_gmac_plus.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_s4_gmac_plus.Text, '.', '',
      [rfReplaceAll])));

  // if edit_s4_emplacamento.Text <> '' then
  // edit_s4_emplacamento.Text := formatfloat('#,,0.00',
  // strtofloat(stringreplace(edit_s4_emplacamento.Text, '.', '',
  // [rfReplaceAll])));

  if edit_s4_pmc.Text <> '' then
    edit_s4_pmc.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_s4_pmc.Text, '.', '', [rfReplaceAll])));
  if edit_s4_gap.Text <> '' then
    edit_s4_gap.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_s4_gap.Text, '.', '', [rfReplaceAll])));

  if edit_s4_siga.Text <> '' then
    edit_s4_siga.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_s4_siga.Text, '.', '', [rfReplaceAll])));

  if edit_s4_valor_seguro.Text <> '' then
    edit_s4_valor_seguro.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_s4_valor_seguro.Text, '.', '',
      [rfReplaceAll])));

end;

procedure TFrmSimulacaoVenda.formatar_valor;
begin

  if edit_pgto_c_apresentacao.Text <> '' then
    edit_pgto_c_apresentacao.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_pgto_c_apresentacao.Text, '.', '',
      [rfReplaceAll])));

  if edit_pgto_cartao.Text <> '' then
    edit_pgto_cartao.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_pgto_cartao.Text, '.', '',
      [rfReplaceAll])));
  if edit_pgto_cheque.Text <> '' then
    edit_pgto_cheque.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_pgto_cheque.Text, '.', '',
      [rfReplaceAll])));
  if edit_pgto_v_usado.Text <> '' then
    edit_pgto_v_usado.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_pgto_v_usado.Text, '.', '',
      [rfReplaceAll])));
  if edit_pgto_outras.Text <> '' then
    edit_pgto_outras.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_pgto_outras.Text, '.', '',
      [rfReplaceAll])));
  if edit_pgto_consorcio.Text <> '' then
    edit_pgto_consorcio.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_pgto_consorcio.Text, '.', '',
      [rfReplaceAll])));
  if edit_pgto_fin_externo.Text <> '' then
    edit_pgto_fin_externo.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_pgto_fin_externo.Text, '.', '',
      [rfReplaceAll])));

  if edit_valor_veiculo1.Text <> '' then
    edit_valor_veiculo1.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_valor_veiculo1.Text, '.', '',
      [rfReplaceAll])));

  if edit_participacao.Text <> '' then
    edit_participacao.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_participacao.Text, '.', '',
      [rfReplaceAll])));

  if edit_tac.Text <> '' then
    edit_tac.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_tac.Text, '.', '', [rfReplaceAll])));


  // Sess�o de trocos

  if edit_pgto_tr_usado.Text <> '' then
    edit_pgto_tr_usado.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_pgto_tr_usado.Text, '.', '',
      [rfReplaceAll])));
  if edit_pgto_tr_emplacamento.Text <> '' then
    edit_pgto_tr_emplacamento.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_pgto_tr_emplacamento.Text, '.', '',
      [rfReplaceAll])));
  if edit_pgto_tr_ipva.Text <> '' then
    edit_pgto_tr_ipva.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_pgto_tr_ipva.Text, '.', '',
      [rfReplaceAll])));
  if edit_pgto_tr_seguro_o.Text <> '' then
    edit_pgto_tr_seguro_o.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_pgto_tr_seguro_o.Text, '.', '',
      [rfReplaceAll])));
  if edit_pgto_tr_outros.Text <> '' then
    edit_pgto_tr_outros.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_pgto_tr_outros.Text, '.', '',
      [rfReplaceAll])));
  if edit_pgto_tr_hn.Text <> '' then
    edit_pgto_tr_hn.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_pgto_tr_hn.Text, '.', '', [rfReplaceAll])));

  // sess�o de valores do veiculo

  if edit_valor_veiculo2.Text <> '' then

    edit_valor_veiculo2.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_valor_veiculo2.Text, '.', '',
      [rfReplaceAll])));

  if edit_valor_entrada1.Text <> '' then
    edit_valor_entrada1.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_valor_entrada1.Text, '.', '',
      [rfReplaceAll])));

  if edit_valor_entrada2.Text <> '' then
    edit_valor_entrada2.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_valor_entrada2.Text, '.', '',
      [rfReplaceAll])));

  if edit_valor_finan1.Text <> '' then
    edit_valor_finan1.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_valor_finan1.Text, '.', '',
      [rfReplaceAll])));

  if edit_valor_finan2.Text <> '' then
    edit_valor_finan2.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_valor_finan2.Text, '.', '',
      [rfReplaceAll])));

  if edit_valor_despachante.Text <> '' then
    edit_valor_despachante.Text := formatfloat('#,,0.00',
      strtofloat(stringreplace(edit_valor_despachante.Text, '.', '',
      [rfReplaceAll])));

end;

function TFrmSimulacaoVenda.get_perc_entrada2: real;
var
  vdesp, ventrada2, vveic2, v_tac: real;
begin
  ventrada2 := strtofloat(stringreplace(edit_valor_entrada2.Text, '.', '', []));
  vveic2 := strtofloat(stringreplace(edit_valor_veiculo2.Text, '.', '', []));
  v_tac := strtofloat(stringreplace(edit_tac.Text, '.', '', []));
  vdesp := strtofloat(stringreplace(edit_valor_despachante.Text, '.', '', []));

  // calcula percentual 2

  result := (ventrada2 / (vveic2 + v_tac + vdesp)) * 100;

end;

function TFrmSimulacaoVenda.get_valor_entrada2: real;
begin

end;

procedure TFrmSimulacaoVenda.gridclientesbuscaRenderCell(ACell: TIWGridCell;
  const ARow, AColumn: Integer);
var
  BUTTON: Integer;
  R: TRect;
begin
  inherited;

end;

procedure TFrmSimulacaoVenda.guardar_dados;
begin

  controller.s_cpf := edit_cliente_cpf.Text;
  controller.s_nome_cliente := edit_cliente_nome.Text;
  controller.s_ano_modelo := edit_ano_modelo.Text;
  controller.s_chassi := edit_chassi.Text;

end;

procedure TFrmSimulacaoVenda.iniciar_form;
var
  ID: string;

begin

  q_marcas.Close;
  q_marcas.Open;
  q_motivos_recusa.Close;
  q_motivos_recusa.Open();

  q_status_finan.Close;
  q_status_finan.sql.Clear;
  q_status_finan.sql.Add('select * from wc_status_finan');
  q_status_finan.sql.Add('where ativo=''S''');

  q_status_finan.Open;

  q_geral.Close;
  q_geral.sql.Clear;
  q_geral.sql.Add
    ('select descricao,id from wc_lista_documentos where ativo=''S'' ');
  q_geral.Open();

  q_geral.First;

  while not q_geral.Eof do
  begin

    LISTDOC.Items.Add(q_geral.FieldByName('descricao').AsString + '=' +
      q_geral.FieldByName('id').AsString);

    q_geral.Next;
  end;

  // busca empresa do Usu�rio Logado

  controller.DM.q_empresa_usuario.Close;
  controller.DM.q_empresa_usuario.ParamByName('nome').AsString :=
    controller.xUsuario;
  controller.DM.q_empresa_usuario.Open;

  combo_empresas.KeyValue := controller.DM.q_empresa_usuario.FieldByName
    ('cod_empresa').AsInteger;

  pcombo_empresas;

  q_vendedores_a.Close;
  // q_vendedores_a.ParamByName('cod_empresa').AsInteger :=
  // controller.DM.q_empresa_usuario.FieldByName('cod_empresa').AsInteger;
  q_vendedores_a.Open;
  combo_dendedor_a.Enabled := TRUE;

  q_analista_c.Close;
  // q_analista_c.ParamByName('cod_empresa').AsInteger :=
  // controller.DM.q_empresa_usuario.FieldByName('cod_empresa').AsInteger;
  q_analista_c.Open;
  combo_analista_c.Enabled := TRUE;

  combo_vendedores.KeyValue := controller.xUsuario;

  if controller.get_acesso('WC0048') = 0 then
  begin
    combo_vendedores.Enabled := false;
  end;

end;

procedure TFrmSimulacaoVenda.inserir_fi_historico;
var
  validar: string;
  campos_obg: string;

begin

  // Checa campos
  validar := 'S';
  campos_obg := '';
  if combo_financiadoras.KeyValue = '' then
  begin
    validar := 'N';
    campos_obg := campos_obg + '-Financiadora -';
  end;

  if combo_analista_c.KeyValue = '' then
  begin
    validar := 'N';
    campos_obg := campos_obg + '-Analista C. -';
  end;

  if COMBO_STATUS_FINAN.KeyValue = '' then
  begin
    validar := 'N';
    campos_obg := campos_obg + '-Status do Financiamento -';
  end;
  if (edit_s4_valor_veic.Text = '0,00') or (edit_s4_valor_veic.Text = '') then
  begin
    validar := 'N';
    campos_obg := campos_obg + '-Valor do Ve�c. -';
  end;
  if (edit_s4_valor_entrada.Text = '0,00') or (edit_s4_valor_entrada.Text = '')
  then
  begin
    validar := 'N';
    campos_obg := campos_obg + '-Valor da entrada -';
  end;
  if (edit_s4_valor_finan.Text = '0,00') or (edit_s4_valor_finan.Text = '') then
  begin
    validar := 'N';
    campos_obg := campos_obg + '-Valor do Financiamento -';
  end;
  if (combo_s4_prazo.ItemIndex.ToString = '-1') then
  begin

    campos_obg := campos_obg + '-Prazo/Dias -';
    validar := 'N';
  end;
  if (edit_s4_parcela.Text = '0,00') or (edit_s4_parcela.Text = '') then
  begin
    validar := 'N';
    campos_obg := campos_obg + '-Parcela -';
  end;
  if (edit_s4_tabela.Text = '0,00') or (edit_s4_tabela.Text = '') then
  begin
    validar := 'N';
    campos_obg := campos_obg + '-Tabela -';
  end;
  if (edit_s4_cof.Text = '0,00') or (edit_s4_cof.Text = '') then
  begin
    validar := 'N';
  end;
  campos_obg := campos_obg + '-Coeficiente -';

  if validar = 'S' then
  begin

    q_geral.Close;
    q_geral.sql.Clear;

    q_geral.sql.Add('insert into wc_sim_venda_finan');
    q_geral.sql.Add('(id,'); // 1
    q_geral.sql.Add('cod_financiadora,'); // 2
    q_geral.sql.Add('analista_credito,'); // 3
    q_geral.sql.Add('status,'); // 4
    q_geral.sql.Add('motivo_recusa,'); // 5
    q_geral.sql.Add('valor_veiculo,'); // 6
    q_geral.sql.Add('entrada,'); // 7
    q_geral.sql.Add('valor_fin,'); // 8
    q_geral.sql.Add('prazo,'); // 9
    q_geral.sql.Add('parcela,'); // 10
    q_geral.sql.Add('tabela,'); // 11
    q_geral.sql.Add('coeficiente,'); // 12
    q_geral.sql.Add('tipo_tabela,'); // 13
    q_geral.sql.Add('valor_aumento_parc,'); // 14
    q_geral.sql.Add('observacoes,'); // 15
    q_geral.sql.Add('id_finan,'); // 16
    q_geral.sql.Add('data,'); // 17
    q_geral.sql.Add('usuario,'); // 18
    q_geral.sql.Add('DESPACHANTE,'); // 19
    q_geral.sql.Add('financiadora)'); // 20
    q_geral.sql.Add('values');
    q_geral.sql.Add('');
    q_geral.sql.Add('(seq_wc_geral.nextval,'); // 1
    q_geral.sql.Add(':cod_financiadora,'); // 2
    q_geral.sql.Add(':analista_credito,'); // 3
    q_geral.sql.Add(':status,'); // 4
    q_geral.sql.Add(':motivo_recusa,'); // 5
    q_geral.sql.Add(':valor_veiculo,'); // 6
    q_geral.sql.Add(':entrada,'); // 7
    q_geral.sql.Add(':valor_fin,'); // 8
    q_geral.sql.Add(':prazo,'); // 9
    q_geral.sql.Add(':parcela,'); // 10
    q_geral.sql.Add(':tabela,'); // 11
    q_geral.sql.Add(':coeficiente,'); // 12
    q_geral.sql.Add(':tipo_tabela,'); // 13
    q_geral.sql.Add(':valor_aumento_parc,'); // 14
    q_geral.sql.Add(':observacoes,'); // 15
    q_geral.sql.Add(':id_finan,'); // 16
    q_geral.sql.Add('sysdate,'); // 17
    q_geral.sql.Add('user,'); // 18
    q_geral.sql.Add(':DESPACHANTE,'); // 19
    q_geral.sql.Add(':financiadora)'); // 20

    q_geral.Params.ParamByName('DESPACHANTE').AsString :=
      stringreplace(edit_s4_despachante.Text, '.', '', []);
    q_geral.Params.ParamByName('cod_financiadora').AsString :=
      combo_financiadoras.KeyValue;
    q_geral.Params.ParamByName('analista_credito').AsString :=
      combo_analista_c.KeyValue;
    q_geral.Params.ParamByName('status').Value :=
      COMBO_STATUS_FINAN.SelectedText;
    if COMBO_MOTIVOS_R.KeyValue = '' then
    begin
      q_geral.Params.ParamByName('motivo_recusa').Value := 0;
    end
    else
    begin
      q_geral.Params.ParamByName('motivo_recusa').Value :=
        COMBO_MOTIVOS_R.SelectedText;
    end;

    q_geral.Params.ParamByName('valor_veiculo').AsString :=
      stringreplace(edit_s4_valor_veic.Text, '.', '', []);
    q_geral.Params.ParamByName('entrada').AsString :=
      stringreplace(edit_s4_valor_entrada.Text, '.', '', []);
    q_geral.Params.ParamByName('valor_fin').AsString :=
      stringreplace(edit_s4_valor_finan.Text, '.', '', []);
    q_geral.Params.ParamByName('prazo').AsString := combo_s4_prazo.SelectedText;
    q_geral.Params.ParamByName('parcela').AsString :=
      stringreplace(edit_s4_parcela.Text, '.', '', []);
    q_geral.Params.ParamByName('tabela').AsString := edit_s4_tabela.Text;
    q_geral.Params.ParamByName('coeficiente').AsString := edit_s4_cof.Text;
    if rb_s4_tab_especial.Checked then
    begin
      q_geral.Params.ParamByName('tipo_tabela').AsString := 'E';
    end
    else if rb_s4_tab_normal.Checked then
    begin
      q_geral.Params.ParamByName('tipo_tabela').AsString := 'N';

    end;

    q_geral.Params.ParamByName('valor_aumento_parc').AsString :=
      stringreplace(edit_valor_aumento_parc.Text, '.', '', []);
    q_geral.Params.ParamByName('id_finan').AsString := lb_id.Caption;
    q_geral.Params.ParamByName('financiadora').Value :=
      combo_financiadoras.SelectedText;
    q_geral.Params.ParamByName('observacoes').AsString := memo_obs_finan.Text;

    q_geral.ExecSQL;

    q_geral.Close;
    q_geral.sql.Clear;
    q_geral.sql.Add('update wc_simulacao_venda a');
    q_geral.sql.Add('set a.fin_cod_financiadora = :cod_financiadora,');
    q_geral.sql.Add('a.fin_analista_credito = :analista_credito,');
    q_geral.sql.Add('a.fin_status           = :status,');
    q_geral.sql.Add('a.fin_recusa           = :recusa,');
    q_geral.sql.Add('a.fin_valor_veiculo    = :valor_veiculo,');
    q_geral.sql.Add('a.fin_entrada          = :entrada,');
    q_geral.sql.Add('a.fin_financiado       = :financiado,');
    q_geral.sql.Add('a.fin_prazo            = :prazo,');
    q_geral.sql.Add('a.fin_parcela          = :parcela,');
    q_geral.sql.Add('a.fin_tipo_tabela      = :tipo_tabela,');
    q_geral.sql.Add('a.FIN_COD_STATUS       =  :COD_STATUS,');
    q_geral.sql.Add('a.FIN_banco            =  :banco,');
    q_geral.sql.Add('a.fin_obs               = :obs');
    q_geral.sql.Add('where id = :id');
    q_geral.ParamByName('cod_financiadora').AsString :=
      combo_financiadoras.KeyValue;
    q_geral.ParamByName('banco').AsString := combo_financiadoras.SelectedText;
    q_geral.ParamByName('analista_credito').AsString :=
      combo_analista_c.KeyValue;
    q_geral.ParamByName('status').AsString := COMBO_STATUS_FINAN.SelectedText;
    q_geral.ParamByName('COD_STATUS').AsString := COMBO_STATUS_FINAN.KeyValue;
    q_geral.ParamByName('recusa').AsString := COMBO_MOTIVOS_R.KeyValue;
    q_geral.ParamByName('valor_veiculo').AsString :=
      stringreplace(edit_s4_valor_veic.Text, '.', '', []);
    q_geral.ParamByName('entrada').AsString :=
      stringreplace(edit_s4_valor_entrada.Text, '.', '', []);
    q_geral.ParamByName('financiado').AsString :=
      stringreplace(edit_s4_valor_finan.Text, '.', '', []);
    q_geral.ParamByName('prazo').AsString := combo_s4_prazo.SelectedText;
    q_geral.ParamByName('parcela').AsString :=
      stringreplace(edit_s4_parcela.Text, '.', '', []);
    q_geral.ParamByName('tipo_tabela').AsBoolean := rb_s4_tab_especial.Checked;
    q_geral.ParamByName('obs').AsString := memo_obs_finan.Text;
    q_geral.ParamByName('id').AsString := lb_id.Caption;
    q_geral.ExecSQL;

    salvar_form_part4;

    // Faz aprova��o do FI
    if ck_aprovar_acessorios.Checked then
    begin
      q_geral.Close;
      q_geral.sql.Clear;
      q_geral.sql.Add('select 1 as qtde from wc_simulacao_venda ');
      q_geral.sql.Add('where data_ap_gerente is not null  ');
      q_geral.sql.Add('and id=  ' + lb_id.Caption);
      q_geral.Open();

      if q_geral.FieldByName('qtde').AsInteger = 1 then
      begin

        q_geral.Close;
        q_geral.sql.Clear;
        q_geral.sql.Add
          ('update   wc_simulacao_venda set operador=user, data_ap_operador=sysdate  where id='
          + lb_id.Caption);
        q_geral.ExecSQL;

      end;
    end;

    if ck_aprovar_acessorios.Checked then
    begin
      AddToInitProc(swalSuccess('Confirma��o', 'Salvo/Aprovado com sucesso!'));
    end
    else
    begin
      AddToInitProc(swalSuccess('Confirma��o', 'Salvo com sucesso!'));
    end;

    if controller.get_acesso('WC0049') = 1 then
    begin

      controller.AcaoMenu('Mesa');

    end
    else
    begin

      controller.AcaoMenu('ControleF');
    end;

  end
  else
  begin

    AddToInitProc(swalAlert('Erro!',
      ' Campos Obrigat�rios, precisam ser preenchidos:' + campos_obg));
  end;

end;

procedure TFrmSimulacaoVenda.IWAppFormCreate(Sender: TObject);
begin
  inherited;
  // Aqui deve-se fazer o registro das CallBacks necess�rias para o uso
  // 'Tabela'     => Nome do Callback no DataTable dentro do JS na linha ajax: ...
  // MontaTabela  => Nome da Procedure que ser� executada toda vez que o DataTable acionar o ajax
  RegisterCallBack('clientes', MontaTabela);
  RegisterCallBack('veiculos', MontaTbVeiculos);
  RegisterCallBack('StatusFinan', MontaTbStatusFinan);
  RegisterCallBack('dtdocumentos', MontaTbDocumentos);
  RegisterCallBack('TbAnexo', MontaTbAnexo);
  RegisterCallBack('TbHistorico', MontaTbHistorico);
  RegisterCallBack('ListaDocumentos', ListaDocumentos);

end;

procedure TFrmSimulacaoVenda.IWAppFormDestroy(Sender: TObject);
begin
  inherited;

  // limpar_rascunho;

end;

procedure TFrmSimulacaoVenda.IWAppFormShow(Sender: TObject);
var
  ID: string;
  i: Integer;
begin
  inherited;

  q_geral.Close;
  q_geral.sql.Add
    ('select origem from wc_usuarios_origem where usuario= user order by origem ');
  q_geral.Open();

  q_origem_doc.Close;
  q_origem_doc.Open();

  combo_origem.Items.Clear;

  q_geral.First;

  while not q_geral.Eof do
  begin
    combo_origem.Items.Add(q_geral.FieldByName('origem').AsString);
    q_geral.Next;

  end;

  // Adiciona hint de todos os componentes
  For i := 0 to componentcount - 1 do
  begin

    if Components[i] is TIWEdit then
    begin

      with Components[i] as TIWEdit do
      begin

        hint := name;

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

  // ////////////////////////////
  if controller.XidForm = '' then
  begin

    cds.createdataset;
    q_geral.Close;
    q_geral.sql.Clear;
    q_geral.sql.Add(' select seq_wc_geral.nextval as id from dual');
    q_geral.Open();

    ID := q_geral.FieldByName('id').AsString;
    lb_id.Caption := ID;

    q_geral.Close;
    q_geral.sql.Clear;
    q_geral.sql.Add
      (' insert into wc_simulacao_venda(id,data_inclusao,usuario_inclusao,rascunho)');
    q_geral.sql.Add(' values( :id , sysdate , user ,''S'')');
    q_geral.ParamByName('id').AsString := ID;
    q_geral.ExecSQL;

    iniciar_form;

    set_list_check_docs(ID);

    AddToInitProc(swalSuccess('Confirma��o', ' Simula��o Criada com Sucesso n�:'
      + lb_id.Caption));
  end
  else
  begin

    cds.createdataset;
    load_form;
    set_list_check_docs(lb_id.Caption);
    if controller.get_acesso('WC0013') = 0 then
    begin

      combo_vendedores.Enabled := false;
    end
    else
    begin

      combo_vendedores.Enabled := TRUE;

    end;
    if controller.get_acesso('WC0014') = 0 then
    begin

      edit_tac.Visible := false;
    end
    else
    begin

      edit_tac.Visible := TRUE;

    end;

    if controller.get_acesso('WC0039') = 0 then
    begin

      edit_s4_despachante.Enabled := false;
      edit_s4_valor_acessorio.Enabled := false;
    end
    else
    begin

      edit_s4_despachante.Enabled := TRUE;
      edit_s4_valor_acessorio.Enabled := TRUE;

    end;


    if controller.get_acesso('WC0052') = 0 then
    begin

      edit_tabela.Enabled := false;

    end
    else
    begin

      edit_tabela.Enabled := True;

    end;



    // verifica aprova��es e desabilita campos

    if controller.get_aprovacao(lb_id.Caption, 'G') = TRUE then
    begin

      desabilitar_parte1;
      desabilitar_parte2;

    end
    else
    begin
      desabilitar_parte3;
      desabilitar_finan;
      desabilitar_final;

    end;
    if controller.get_aprovacao(lb_id.Caption, 'A') = TRUE then
    begin

      desabilitar_parte3;

    end;
    if controller.get_aprovacao(lb_id.Caption, 'O') = TRUE then
    begin

      desabilitar_finan;
      desabilitar_final;

    end;

  end;

end;

procedure TFrmSimulacaoVenda.IWBTNACAOAsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  ID: string;
  Ms: tmemorystream;

begin
  inherited;

  // Ms := tmemorystream.create;

  if copy(iwacao.Text, 1, 5) = 'SAIRF' then // Insere hist�rio de financiamento
  begin
    if controller.get_acesso('WC0049') = 1 then
    begin

      controller.AcaoMenu('Mesa');

    end
    else
    begin

      controller.AcaoMenu('ControleF');
    end;
  end;

  if copy(iwacao.Text, 1, 5) = 'INCFI' then // Insere hist�rio de financiamento
  begin
    inserir_fi_historico;

  end;

  if copy(iwacao.Text, 1, 5) = 'Aceit' then // exclue documento
  begin
    ID := copy(iwacao.Text, 6, length(iwacao.Text));

    q_geral.Close;
    q_geral.sql.Clear;
    q_geral.sql.Add
      ('select   c.nome, c.prefixo_cel||c.telefone_cel as fone from  clientes c where cod_cliente='
      + ID);
    q_geral.Open;

    edit_cliente_nome.Text := q_geral.FieldByName('nome').AsString;
    edit_cliente_cpf.Text := ID;
    edit_cliente_fone.Text := q_geral.FieldByName('fone').AsString;

  end;

  if copy(iwacao.Text, 1, 5) = 'CORST' then // exclue documento
  begin
    ID := copy(iwacao.Text, 6, length(iwacao.Text));

    if ID = 'S' then
    begin

      lb_cor.Caption := 'success';
      lb_cor.Css := 'label label-success';
    end;
    if ID = 'W' then
    begin

      lb_cor.Caption := 'warning';
      lb_cor.Css := 'label label-warning';
    end;
    if ID = 'P' then
    begin

      lb_cor.Caption := 'primary';
      lb_cor.Css := 'label label-primary';
    end;
    if ID = 'D' then
    begin

      lb_cor.Caption := 'danger';
      lb_cor.Css := 'label label-danger';
    end;
    if ID = 'I' then
    begin

      lb_cor.Caption := 'Info';
      lb_cor.Css := 'label label-info';
    end;

  end;

  if copy(iwacao.Text, 1, 5) = 'ExcFi' then // exclue documento
  begin
    ID := copy(iwacao.Text, 6, length(iwacao.Text));

    q_geral.Close;
    q_geral.sql.Clear;
    q_geral.sql.Add('delete  from  wc_sim_venda_finan where id=' + ID);
    q_geral.ExecSQL;
    AddToInitProc(swalSuccess('Confirma��o', ' Financiamento: ' + ID +
      ', exclu�do com sucesso !!!'));

    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TbHistorico").DataTable().ajax.reload();');

    recarregar_docs;

  end;

  if copy(iwacao.Text, 1, 5) = 'EXCDO' then // exclue documento
  begin
    ID := copy(iwacao.Text, 6, length(iwacao.Text));

    q_geral.Close;
    q_geral.sql.Clear;
    q_geral.sql.Add('delete  from  wc_lista_documentos where id=' + ID);
    q_geral.ExecSQL;
    AddToInitProc(swalSuccess('Confirma��o', ' Documento: ' + ID +
      ', exclu�do com sucesso !!!'));

    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#dtdocumentos").DataTable().ajax.reload();');

    recarregar_docs;

  end;

  if copy(iwacao.Text, 1, 5) = 'DocIn' then
  begin

    edit_param1.Text := 'Inserindo';
    edit_param2.Text := '';
    ck_ativo.Checked := false;

    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$(''#EdicaoDocs'').modal(''show'');');
  end;

  if copy(iwacao.Text, 1, 5) = 'SHOW1' then
  begin
    ID := copy(iwacao.Text, 6, length(iwacao.Text));
    edit_param1.Text := ID;
    q_geral.Close;
    q_geral.sql.Clear;
    q_geral.sql.Add
      ('select descricao, nvl(ativo,''N'') as ativo ,obrigatorio,origem  from  wc_lista_documentos where id='
      + ID);
    q_geral.Open();

    edit_param2.Text := q_geral.FieldByName('descricao').AsString;

    combo_origem_doc.KeyValue := q_geral.FieldByName('origem').AsString;

    if q_geral.FieldByName('ativo').AsString = 'N' then
    begin

      ck_ativo.Checked := false;
    end
    else
      ck_ativo.Checked := TRUE;

    if q_geral.FieldByName('obrigatorio').AsString = 'S' then
    begin
      ck_doc_obrigatorio.Checked := TRUE;
    end
    else
    begin
      ck_doc_obrigatorio.Checked := false;
    end;

    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$(''#EdicaoDocs'').modal(''show'');');
  end;

  if copy(iwacao.Text, 1, 5) = 'Alt01' then
  begin
    ID := copy(iwacao.Text, 6, length(iwacao.Text));

    q_status_finan.LOCATE('id', ID, []);
    q_status_finan.Edit;

    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$(''#StatusManut'').modal(''show'');');
  end;

  if copy(iwacao.Text, 1, 5) = 'ExcDo' then // exclue documento da simula��o
  begin
    ID := copy(iwacao.Text, 6, length(iwacao.Text));

    q_geral.Close;
    q_geral.sql.Clear;
    q_geral.sql.Add('delete from wc_fin_documentos where id=' + ID);
    q_geral.ExecSQL;
    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TbAnexo").DataTable().ajax.reload();');
    AddToInitProc(swalSuccess('Confirma��o', ' Documento: ' + ID +
      ', exclu�do com sucesso !!!'));

  end;

  if copy(iwacao.Text, 1, 5) = 'DownD' then
  begin
    ID := copy(iwacao.Text, 6, length(iwacao.Text));

    q_geral.Close;
    q_geral.sql.Clear;
    q_geral.sql.Add
      ('select nome_anexo,arq from wc_fin_documentos where id=' + ID);
    q_geral.Open();

    with q_geral do
    begin

      // TBlobField(FieldByName('arq')).SaveToStream(Ms);
      // Ms.Position := 0;
      TBlobField(FieldByName('arq'))
        .SaveToFile(q_geral.FieldByName('nome_anexo').AsString);

    end;
    // webapplication.NewWindow(WebApplication.SendStream(Ms, True, '', q_geral.FieldByName('nome_anexo').AsString));
    // webapplication.SendStream(Ms, False, '', q_geral.FieldByName('nome_anexo').AsString);
    // webapplication.NewWindow('$/temp/'+q_geral.FieldByName('nome_anexo').AsString);

    WebApplication.SendFile(q_geral.FieldByName('nome_anexo').AsString, TRUE);

  end;
end;

procedure TFrmSimulacaoVenda.IWFileUploader1AsyncUploadCompleted
  (Sender: TObject; var DestPath, FileName: string;
  var SaveFile, Overwrite: Boolean);
Var
  Ms: tmemorystream;
  v_nome_arq: string;
begin
  inherited;

  Ms := tmemorystream.create;
  cds.Open;
  cds.EmptyDataSet;
  cds.Close;
  cds.Open;
  v_nome_arq := '';
  try
    IWFileUploader1.SaveToStream(FileName, Ms);
    // SaveFile:= False;
    With cds do
    begin
      v_nome_arq := copy(FileName, 1, 4);
      Append;
      FieldByName('FileName').AsString := FileName;
      FieldByName('FileSize').AsInteger := Ms.Size;
      Ms.Position := 0;
      TBlobField(FieldByName('filecontent')).Loadfromstream(Ms);
      Post;
      q_geral.Close;
      q_geral.sql.Clear;
      q_geral.sql.Add
        ('insert into wc_fin_documentos(id,id_finan,id_documento,descricao,arq,nome_anexo,data)');
      q_geral.sql.Add
        ('values(seq_wc_geral.nextval, :id_finan, :id_documento , :descricao, :arq , :nome_anexo , sysdate )');
      q_geral.ParamByName('id_finan').AsString := lb_id.Caption;
      q_geral.ParamByName('id_documento').AsString := listdoc_id;
      q_geral.ParamByName('descricao').AsString := listdoc_texto;
      q_geral.ParamByName('nome_anexo').AsString :=
        IWFileUploader1.FileList.Items[0].FileName;
      q_geral.ParamByName('arq').Value := cdsfilecontent.Value;
      q_geral.ExecSQL;

    end;

  finally
    Ms.Free;

  end;
  AddToInitProc(swalSuccess('Confirma��o',
    ' Documento Inserido com sucesso !!!'));

end;

procedure TFrmSimulacaoVenda.IWFileUploader1AsyncUploadSuccess(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$("#TbAnexo").DataTable().ajax.reload();');
end;

procedure TFrmSimulacaoVenda.BTNSAIRAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  if controller.get_acesso('WC0049') = 1 then
  begin

    controller.AcaoMenu('Mesa');

  end
  else
  begin

    controller.AcaoMenu('ControleF');
  end;

end;

procedure TFrmSimulacaoVenda.BTNSHOWDOCSAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#Mdocumentos'').modal(''show'');');
end;

procedure TFrmSimulacaoVenda.BTNSHOWDOCSHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add('  class=\"glyphicon glyphicon-download\" ');
end;

procedure TFrmSimulacaoVenda.BTN_ALT_STATUS_FINANAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  if EDITPARAM.Text = 'INC' then
  begin
    edit_status_finan_descricao.Text := '';
    edit_status_finan_id.Text := 'Inserindo...';

    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$(''#StatusManut'').modal(''show'');');

  end
  else
  begin
    q_status_finan.Close;
    q_status_finan.sql.Clear;
    q_status_finan.sql.Add('select * from wc_status_finan');
    q_status_finan.Open;

    q_status_finan.LOCATE('id', EDT_P_ID.Text, []);
    edit_status_finan_descricao.Text := q_status_finanDESCRICAO.AsString;

    if q_status_finan.FieldByName('doc').AsString = 'S' then
    begin
      ck_fin_check_doc.Checked := TRUE;
    end
    else
    begin
      ck_fin_check_doc.Checked := false;
    end;
    // label label-danger
    lb_cor.Css := 'label label-' + q_status_finan.FieldByName('cor').AsString;
    lb_cor.Caption := q_status_finan.FieldByName('cor').AsString;

    edit_status_finan_id.Text := q_status_finanID.AsString;
    if q_status_finanATIVO.AsString = 'S' then
    begin
      ck_status_finan.Checked := TRUE;
    end
    else
    begin
      ck_status_finan.Checked := false;
    end;

    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$(''#StatusManut'').modal(''show'');');

  end;
end;

procedure TFrmSimulacaoVenda.IWTemplateProcessorHTML1UnknownTag
  (const AName: string; var VValue: string);
var
  v_ativar: string;
  v_info: string;
  time_line_item: string;
  time_ini: string;
  time_fim: string;
  time_line: string;
  tabela: string;
  icon_square: string;
  vstyle: string;
begin
  inherited;

  if AName='N1_ACESSO' then
  begin




     if controller.get_acesso('WC0051') = 0 then
    begin
      VValue := '   <div class="box-body disabled">    ' ;

    end
    else
    begin
      VValue := '   <div class="box-body ">    ' ;
    end;


  end;


  if AName = 'TIMELINE_FINAN' then
  begin

    q_geral.Close;
    q_geral.sql.Clear;
    q_geral.sql.Add('select id,');
    q_geral.sql.Add('analista_credito,');
    q_geral.sql.Add('status,');
    q_geral.sql.Add('(to_char(TO_Date(data),');
    q_geral.sql.Add('''dd " de " FMMONTH " de " YYYY'',');
    q_geral.sql.Add('''nls_date_language=portuguese'')) as data,');
    q_geral.sql.Add('to_char(data, ''HH24:Mi:SS'') as hora,');
    q_geral.sql.Add('motivo_recusa,');
    q_geral.sql.Add('financiadora,');
    q_geral.sql.Add('usuario');
    q_geral.sql.Add
      ('from wc_sim_venda_finan where id_finan= :id_finan order by data');
    q_geral.ParamByName('id_finan').AsString := lb_id.Caption;
    q_geral.Open();

    // Monta o html

    time_ini := '<ul class="timeline">';
    time_line_item := '';
    time_fim := '</ul>';
    q_geral.First;
    icon_square := '&nbsp;&nbsp<i class="fa fa-check-square-o"> </i> ';
    while not q_geral.Eof do
    begin
      tabela := '';

      // Monta Tabela
      tabela := tabela + '<div class="table-responsive">';
      tabela := tabela + '<table class="table table-hover">';
      tabela := tabela + '<thead>';
      tabela := tabela + '<tr>';
      tabela := tabela + '<th>Analista de Cr�dito</th>';
      tabela := tabela + '<th>Status</th>';
      tabela := tabela + '<th>Recusa</th>';
      tabela := tabela + '<th>Financiadora</th>';
      tabela := tabela + '</tr>';
      tabela := tabela + '</thead>';
      tabela := tabela + '<tbody>';
      tabela := tabela + '<tr>';
      tabela := tabela + '<td>' + q_geral.FieldByName('analista_credito')
        .AsString + icon_square + ' </td>';
      tabela := tabela + '<td>' + q_geral.FieldByName('Status').AsString +
        icon_square + '</td>';
      tabela := tabela + '<td>' + q_geral.FieldByName('motivo_recusa').AsString
        + icon_square + '</td>';
      tabela := tabela + '<td>' + q_geral.FieldByName('financiadora').AsString +
        icon_square + '</td>';
      tabela := tabela + '</tr>';
      tabela := tabela + '</tbody>';
      tabela := tabela + '</table>';
      tabela := tabela + '</div>';




      // Monta HTML

      time_line_item := time_line_item + '';
      time_line_item := time_line_item + '<!-- timeline time label -->';
      time_line_item := time_line_item + '<li class="time-label">';
      time_line_item := time_line_item + '<span class="bg-red">';
      time_line_item := time_line_item + q_geral.FieldByName('data').AsString;
      time_line_item := time_line_item + '</span>';
      time_line_item := time_line_item + '</li>';
      time_line_item := time_line_item + '<!-- /.timeline-label -->';
      time_line_item := time_line_item + '';
      time_line_item := time_line_item + '<!-- timeline item -->';
      time_line_item := time_line_item + '<li>';
      time_line_item := time_line_item + '<!-- timeline icon -->';
      time_line_item := time_line_item + '<i class="fa fa-user bg-aqua"></i>';
      time_line_item := time_line_item + '<div class="timeline-item">';
      time_line_item := time_line_item +
        '<span class="time"><i class="fa fa-clock-o"></i> ' +
        q_geral.FieldByName('hora').AsString + '</span>';
      time_line_item := time_line_item + '';
      time_line_item := time_line_item +
        '<h3 class="timeline-header"><a href="#">Usu�rio:' +
        q_geral.FieldByName('usuario').AsString + '</a> ...</h3>';
      time_line_item := time_line_item + '';
      time_line_item := time_line_item + '<div class="timeline-body">';
      time_line_item := time_line_item + '';
      time_line_item := time_line_item + tabela;
      time_line_item := time_line_item + '</div>';
      time_line_item := time_line_item + '';
      time_line_item := time_line_item + '<div class="timeline-footer">';
      time_line_item := time_line_item +
        '<a class="btn btn-primary btn-xs">...</a>';
      time_line_item := time_line_item + '</div>';
      time_line_item := time_line_item + '</div>';
      time_line_item := time_line_item + '</li>';
      time_line_item := time_line_item + '<!-- END timeline item -->';
      time_line_item := time_line_item + '';
      time_line_item := time_line_item + '';
      time_line_item := time_line_item + '';
      q_geral.Next;
    end;

    time_line := time_ini + time_line_item + time_fim;
    VValue := time_line;

  end;

  if AName = 'central' then
  begin
    // desativa painel de facilidades
    // v_ativar:='class="disabled"';
    if controller.get_acesso('WC0019') = 0 then
    begin
      v_ativar := 'class="disabled"';
      v_info := '<div align="right">  <i class="fa  fa-key"> </i> Acesso: WC0019 </div>';

    end
    else
    begin
      v_info := '<div align="right">  <i class="fa  fa-check-square"> </i>  </div>';
    end;

    VValue := VValue + '<h4 class="panel-title">';
    VValue := VValue + '<a ' + v_ativar +
      ' index="3" class="collapsed change" data-toggle="collapse"';
    VValue := VValue +
      'href="#collapse4" ng-click="alert_step2()"> <img index="3" class="change img-change"';
    VValue := VValue +
      'src="https://cdn2.iconfinder.com/data/icons/32pxmania/misc_18.png"';
    VValue := VValue +
      'style="width: 20px; height: 25px"><span class="badge">Central de Facilidades</span></a>';
    VValue := VValue + v_info;
    VValue := VValue + '</h4>';

  end;

  if AName = 'formaspgto' then
  begin
    // desativa painel de facilidades
    // v_ativar:='class="disabled"';
    if controller.get_acesso('WC0020') = 0 then
    begin
      v_ativar := 'class="disabled"';
      v_info := '<div align="right">  <i class="fa  fa-key"> </i> Acesso: WC0020 </div>';

    end
    else
    begin
      v_info := '<div align="right">  <i class="fa  fa-check-square"> </i>  </div>';
    end;

    VValue := VValue + '<h4 class="panel-title">';
    VValue := VValue + '<a ' + v_ativar +
      ' index="3" class="collapsed change" data-toggle="collapse"';
    VValue := VValue +
      'href="#collapse3" ng-click="alert_step2()"> <img index="3" class="change img-change"';
    VValue := VValue +
      'src="https://cdn2.iconfinder.com/data/icons/32pxmania/misc_18.png"';
    VValue := VValue +
      'style="width: 20px; height: 25px"><span class="badge">Formas de Pagamento</span></a>';
    VValue := VValue + v_info;
    VValue := VValue + '</h4>';

  end;

  if AName = 'vlrnegocio' then
  begin
    // desativa painel de facilidades
    // v_ativar:='class="disabled"';
    if controller.get_acesso('WC0021') = 0 then
    begin
      v_ativar := 'class="disabled"';
      v_info := '<div align="right">  <i class="fa  fa-key"> </i> Acesso: WC0021 </div>';

    end
    else
    begin
      v_info := '<div align="right">  <i class="fa  fa-check-square"> </i>  </div>';
    end;

    VValue := VValue + '<h4 class="panel-title">';
    VValue := VValue + '<a ' + v_ativar +
      ' index="3" class="collapsed change" data-toggle="collapse"';
    VValue := VValue +
      'href="#collapse2" ng-click="alert_step2()"> <img index="3" class="change img-change"';
    VValue := VValue +
      'src="https://cdn2.iconfinder.com/data/icons/32pxmania/misc_18.png"';
    VValue := VValue +
      'style="width: 20px; height: 25px"><span class="badge">Valores da Negocia��o</span></a>';
    VValue := VValue + v_info;
    VValue := VValue + '</h4>';

  end;

  if AName = 'Linha2' then
  begin
    vstyle := '';
    VValue := '';

    if controller.get_acesso('WC0036') = 0 then
    begin

      vstyle := ' <tr style="display:none" > ';
      // vstyle := ' <tr > ';

    end
    else
    begin
      vstyle := ' <tr > ';
    end;

    VValue := vstyle;

  end;

  if AName = 'VerAcess' then
  begin

    vstyle := '';
    VValue := '';

    if controller.get_acesso('WC0037') = 0 then
    begin

      vstyle := ' <div class="panel-body" style="display:none" > ';
      // vstyle := ' <tr > ';

    end
    else
    begin
      vstyle := ' <div class="panel-body"  > ';
    end;

    VValue := vstyle;
  end;
  if AName = 'VerFin' then
  begin

    vstyle := '';
    VValue := '';

    if controller.get_acesso('WC0038') = 0 then
    begin

      vstyle := ' <div class="panel-body" style="display:none" > ';
      // vstyle := ' <tr > ';

    end
    else
    begin
      vstyle := ' <div class="panel-body"  > ';
    end;

    VValue := vstyle;
  end;

  if AName = 'GRID_STATUS_FINAN' then
  begin
    //
    // MONTA A TABLE GRID DO CADASTRO
    //
    q_status_finan.Close;
    q_status_finan.Open;

    html := '';
    html := html +
      '<table id="GRID_STATUS_FINAN" class="table table-bordered table-striped table-hover"> '
      + SLineBreak + '    <thead> ' + SLineBreak + '        <tr> ' + SLineBreak
      + '            <th style="text-align: center;">Id</th> ' + SLineBreak +
      '            <th>Descri��o</th> ' + SLineBreak +

      '            <th style="text-align: center;">A��es</th> ' + SLineBreak +
      '        </tr> ' + SLineBreak + '    </thead> ' + SLineBreak +
      '    <tbody> ' + SLineBreak;

    q_status_finan.First;
    while not q_status_finan.Eof do
    begin
      html := html + '        <tr> ' + SLineBreak +
        '            <td align="center">' + q_status_finan.FieldByName('id')
        .AsString + '</td> ' + SLineBreak + '            <td>' +
        q_status_finan.FieldByName('descricao').AsString + '</td> ' +
        SLineBreak +

        '            <td align="center"> ' + SLineBreak +
        '                <button type="buttom" class="btn btn-xs btn-warning" data-toggle="tooltip" data-placement="top" title="Alterar Registro" onclick="SetaAcao(''Alt01'', '''
        + q_status_finan.FieldByName('id').AsString + ''');"> ' + SLineBreak +
        '                    <i class="fa fa-pencil"></i> ' + SLineBreak +
        '                </button> ' + SLineBreak +
        '                <button type="buttom" class="btn btn-xs btn-danger" data-toggle="tooltip" data-placement="top" title="Excluir Registro" onclick="SetaAcao(''Exc'', '''
        + q_status_finan.FieldByName('id').AsString + ''');"> ' + SLineBreak +
        '                    <i class="fa fa-trash"></i> ' + SLineBreak +
        '                </button> ' + SLineBreak +

        '                </button> ' + SLineBreak + '            </td> ' +
        SLineBreak +

        '        </tr> ' + SLineBreak;
      q_status_finan.Next;
    end;

    html := html + '    </tbody> ' + SLineBreak;
    html := html + '</table> ' + SLineBreak;

    VValue := html;
    html := '';
  end;
end;

procedure TFrmSimulacaoVenda.limpar_rascunho;
begin

  q_geral.Close;
  q_geral.sql.Clear;
  q_geral.sql.Text :=

    'select id from wc_simulacao_venda  a' + '  where a.rascunho=''S'' ';

  q_geral.Open();

  q_geral.First;

  while not q_geral.Eof do
  begin

    q_aux.Close;
    q_aux.sql.Clear;
    q_aux.sql.Add
      ('delete from wc_fin_documentos a where a.id_finan= :id_finan ');
    q_aux.ParamByName('id_finan').AsString := q_geral.FieldByName('id')
      .AsString;
    q_aux.ExecSQL;

    q_aux.Close;
    q_aux.sql.Clear;
    q_aux.sql.Add
      ('delete from wc_sim_venda_finan a where a.id_finan= :id_finan ');
    q_aux.ParamByName('id_finan').AsString := q_geral.FieldByName('id')
      .AsString;
    q_aux.ExecSQL;

    q_geral.Next;
  end;

  q_aux.Close;
  q_aux.sql.Clear;
  q_aux.sql.Add('delete from wc_simulacao_venda a where a.rascunho=''S'' ');
  q_aux.ExecSQL;

end;

procedure TFrmSimulacaoVenda.ListaDocumentos(aParams: TStrings;
  out aResult: string);
var
  wresult: string;
  wtotal: Integer;
  btn_alterar: string;
  btn_excluir: string;
  ID: string;
begin

  //
  // Pegar o total de registros da tabela para montagem da pagina��o e o info no rodap� do datatable
  //
  q_datatable.Close;
  q_datatable.sql.Clear;

  q_datatable.sql.Add(' select count(*) as total  ');
  q_datatable.sql.Add(' from wc_fin_documentos   ');
  q_datatable.sql.Add(' where  id_finan= ' + lb_id.Caption);

  q_datatable.sql.Add('and ( id like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.sql.Add('      OR  descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  q_datatable.FetchOptions.RecsMax := -1;
  q_datatable.FetchOptions.RecsSkip := -1;

  q_datatable.Open;

  wtotal := q_datatable.FieldByName('total').AsInteger;

  //
  // Select para montar o resultado do ajax na solicitacao do DATATABLE
  //
  q_datatable.Close;
  q_datatable.sql.Clear;
  q_datatable.sql.Add(' select id, ');
  q_datatable.sql.Add(' id_finan, ');
  q_datatable.sql.Add(' id_documento, ');
  q_datatable.sql.Add('descricao, ');
  q_datatable.sql.Add(' nome_anexo, ');
  q_datatable.sql.Add(' arq, ');
  q_datatable.sql.Add(' data ');

  q_datatable.sql.Add(' from wc_fin_documentos   ');
  q_datatable.sql.Add(' where   id_finan= ' + lb_id.Caption);

  q_datatable.sql.Add('and ( id like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.sql.Add('      OR  descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.sql.Add('Order by id ' + aParams.Values
        ['order[0][dir]'] + ' ');
    1:
      q_datatable.sql.Add('Order by  descricao ' + aParams.Values
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
  btn_alterar := '';
  btn_excluir := '';
  ID := '';
  while not q_datatable.Eof do
  begin

    ID := q_datatable.FieldByName('id').AsString;
    btn_alterar :=
      '"<button type=\"buttom\" class=\"btn btn-xs btn-success\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Baixar Anexo\" onclick=\"SetaAcao(''DownD'''
      + ',' + ID + ')\" > <i class=\"fa fa-download\"> </i> </button> ';
    btn_excluir :=
      '<button type=\"buttom\" class=\"btn btn-xs btn-danger\" disabled data-toggle=\"tooltip\" data-placement=\"top\" title=\"Excluir Registro\" onclick=\"SetaAcao(''ExcDo'''
      + ',' + ID + ')\"> <i class=\"fa fa-trash\"> </i> </button> "';

    //
    wresult := wresult + '[' + '"' +
      stringreplace(trim(q_datatable.FieldByName('id').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(trim(q_datatable.FieldByName('descricao').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
      '"' + stringreplace(trim(q_datatable.FieldByName('nome_anexo').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(trim(q_datatable.FieldByName('data').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' +

      btn_alterar + btn_excluir + '],';

    q_datatable.Next;

  end;
  q_datatable.Close;

  if wtotal <= 0 then
    wresult := wresult + ']}'
  else
    wresult := LeftStr(trim(wresult), length(trim(wresult)) - 1) + ']}';

  //
  // Envia o resultado para o ajax do DataTable
  aResult := wresult;

  // abco


  // aaa

end;

procedure TFrmSimulacaoVenda.LISTDOCAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  listdoc_texto := LISTDOC.SelectedText;
  listdoc_id := LISTDOC.SelectedValue;
  WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$("#TbAnexo").DataTable().ajax.reload();');
end;

procedure TFrmSimulacaoVenda.load_form;
var
  vindex: Integer;
begin

  lb_id.Caption := controller.XidForm;

  q_formulario.Close;
  q_formulario.ParamByName('id').AsString := controller.XidForm;
  q_formulario.Open();

  iniciar_form;
  // Regra do Operador
  if trim(q_formularioFIN_ANALISTA_CREDITO.AsString) <> '' then
  begin

    combo_analista_c.Enabled := false;

  end;

  // sess�o de cliente e ve�culo
  combo_vendedores.KeyValue := q_formularioVENDEDOR.AsString;

  vindex := combo_origem.Items.IndexOf(q_formularioORIGEM.AsString);
  combo_origem.ItemIndex := vindex;

  if q_formularioCNH.AsInteger = 1 then
  begin
    rb_cnh_sim.Checked := TRUE;

  end
  else
  begin
    rb_cnh_nao.Checked := TRUE;
  end;

  if (q_formularioTIPO.AsString = 'N') then
  begin
    combo_tipo.ItemIndex := 0;
  end;

  if (q_formularioTIPO.AsString = 'U') then
  begin
    combo_tipo.ItemIndex := 1;
  end;

  if (q_formularioTIPO.AsString = 'V') then
  begin
    combo_tipo.ItemIndex := 2;
  end;

  if q_formularioTIPO_PROPOSTA.AsString = 'M' then
  begin

    combo_tipo_prop.ItemIndex := 0;
  end;
  if q_formularioTIPO_PROPOSTA.AsString = 'V' then
  begin

    combo_tipo_prop.ItemIndex := 1;
  end;

  if q_formularioTIPO_PROPOSTA.AsString = 'E' then
  begin

    combo_tipo_prop.ItemIndex := 3;
  end;

  edit_placa_usado.Text := q_formularioPLACA_USADO.AsString;
  combo_marcas.KeyValue := q_formularioCOD_MARCA.AsInteger;
  edit_pgto_placa.Text := q_formularioPG_PLACA.AsString;
  combo_empresas.KeyValue := q_formularioCOD_EMPRESA.AsInteger;
  edit_cliente_cpf.Text := q_formularioCOD_CLIENTE.AsString;
  edit_cliente_nome.Text := q_formularioNOME_CLIENTE.AsString;
  edit_cliente_fone.Text := q_formularioFONE.AsString;
  if q_formularioCLIENTE_CADASTRO.AsInteger = 1 then
  begin

    ck_cliente_cadastro.Checked := TRUE;
  end
  else
  begin
    ck_cliente_cadastro.Checked := false;
  end;
  abrir_familias;
  combo_produtos.KeyValue := q_formularioCOD_PRODUTO.AsInteger;

  abrir_modelos;
  combo_modelos.KeyValue := q_formularioCOD_MODELO.AsInteger;
  edit_ano_modelo.Text := q_formularioANO_MODELO.AsString;
  abrir_cores;
  combo_cores_externas.KeyValue := q_formularioCOR_EXTERNA.AsString;

  edit_renavan.Text := q_formularioRENAVAM.AsString;
  edit_chassi.Text := q_formularioCHASSI.AsString;
  edit_opcionais.Text := q_formularioOPCIONAIS.AsString;

  // Sess�o da negocia��o
  edit_valor_veiculo1.Text := q_formularioS_VALOR_VEIC.AsString;
  edit_valor_entrada1.Text := q_formularioS_ENTRADA.AsString;
  edit_valor_finan1.Text := q_formularioS_VALOR_FIN.AsString;
  edit_perc_entrada1.Text := q_formularioS_PERC_ENTRADA.AsString;
  vindex := combo_prazo.Items.IndexOf(q_formularioS_PRAZO.AsString);
  combo_prazo.ItemIndex := vindex;
  edit_parcela.Text := q_formularioS_PARCELA.AsString;
  vindex := combo_tabela.Items.IndexOf(q_formularioS_TABELA.AsString);
  combo_tabela.ItemIndex := vindex;
  (q_formularioS_TABELA.AsString);
  edit_fipe.Text := q_formularioS_COD_FIPE.AsString;
  edit_cof.Text := q_formularioS_COEFICIENTE.AsString;
  edit_valor_veiculo2.Text := q_formularioS2_VALOR_VEIC.AsString;
  edit_valor_entrada2.Text := q_formularioS2_ENTRADA.AsString;
  edit_valor_finan2.Text := q_formularioS2_VALOR_FIN.AsString;
  edit_perc_entrada2.Text := q_formularioS_PERC_ENTRADA2.AsString;
  edit_participacao.Text := q_formularioS_PARTICIPACAO.AsString;
  edit_valor_despachante.Text := q_formularioS_DESPACHANTE.AsString;

  // Leitura do N1

  N1_EDIT_SPMC.Text := q_formularioN1_EDIT_SPMC.AsString;
  N1_EDIT_GAP.Text := q_formularioN1_EDIT_GAP.AsString;
  N1_EDIT_GMAC_PLUS.Text := q_formularioN1_EDIT_GMAC_PLUS.AsString;
  N1_EDIT_PERC.Text := q_formularioN1_EDIT_PERC.Text;

  if q_formularioN1_CK_SPMC.AsString = 'S' then
  begin
    N1_CK_SPMC.Checked := TRUE;
  end;

  if q_formularioN1_CK_GAP.AsString = 'S' then
  begin
    N1_CK_GAP.Checked := TRUE;
  end;

  if q_formularioN1_CK_GMAC_PLUS.AsString = 'S' then
  begin
    N1_CK_GMAC_PLUS.Checked := TRUE;
  end;

  v_parcela:= edit_parcela.Text;


  // Sess�o de formas de pagamento
  edit_pgto_c_apresentacao.Text := q_formularioPG_CONTRA_APRESENTACAO.AsString;
  edit_pgto_cartao.Text := q_formularioPG_CARTAO.AsString;
  edit_pgto_cheque.Text := q_formularioPB_CHEQUE.AsString;
  edit_pgto_v_usado.Text := q_formularioPG_USADO.AsString;
  edit_pgto_outras.Text := q_formularioPG_OUTRAS_PG.AsString;
  edit_pgto_consorcio.Text := q_formularioPG_CONSORCIO.AsString;
  edit_pgto_fin_externo.Text := q_formularioPG_FIN_EXTERNO.AsString;
  edit_pgto_tr_usado.Text := q_formularioPG_TR_USADO.AsString;
  edit_pgto_tr_emplacamento.Text := q_formularioPG_TR_EMPLACAMENTO.AsString;
  edit_pgto_tr_seguro_o.Text := q_formularioPG_TR_ACESSORIO.AsString;
  // troco de acessorios
  edit_pgto_tr_ipva.Text := q_formularioPG_TR_IPVA.AsString;

  edit_pgto_tr_outros.Text := q_formularioPG_TR_OUTROS.AsString;
  edit_pgto_tr_hn.Text := q_formularioPG_TR_HN.AsString;
  edit_obs_cortesia.Text := q_formularioOBS_CORTESIA.AsString;
  edit_obs_despachante.Text := q_formularioOBS_DESPACHANTE.AsString;

  // Central de facilidades
  // Acessorios
  combo_dendedor_a.KeyValue := q_formularioVENDEDOR_ACESSORIO.AsString;
  EDIT_AGREGADOS.Text := q_formularioVALOR_ELEGIVEL.AsString;
  edit_valor_aumento_parc.Text := q_formularioVALOR_AUMENTO_PARC.AsString;
  edit_valor_acessorios.Text := q_formularioVALOR_ACESSORIOS.AsString;
  edit_entrada_acessorios.Text := q_formularioVALOR_ENTRADA_A.AsString;
  edit_a_valor_veic.Text := q_formularioA_VALOR_VEIC.AsString;
  edit_a_entrada.Text := q_formularioA_ENTRADA.AsString;
  edit_a_finan.Text := q_formularioA_FINANC.AsString;
  edit_a_perc_entrada.Text := q_formularioA_PERC_ENTRADA.AsString;
  edit_a_prazo.Text := q_formularioA_PRAZO.AsString;
  edit_a_parcela.Text := q_formularioA_PARCELA.AsString;
  edit_a_tabela.Text := q_formularioS_TABELA.AsString;
  edit_a_cod_tabela.Text := q_formularioS_COD_FIPE.AsString;
  edit_a_cof.Text := q_formularioS_COEFICIENTE.AsString;

  // financiamento

  combo_financiadoras.KeyValue := q_formularioFIN_COD_FINANCIADORA.AsInteger;
  combo_analista_c.KeyValue := q_formularioFIN_ANALISTA_CREDITO.AsString;
  COMBO_STATUS_FINAN.KeyValue := q_formularioFIN_COD_STATUS.AsInteger;
  COMBO_MOTIVOS_R.KeyValue := q_formularioFIN_RECUSA.AsString;
  edit_s4_valor_veic.Text := q_formularioFIN_VALOR_VEICULO.AsString;
  edit_s4_valor_entrada.Text := q_formularioFIN_ENTRADA.AsString;
  edit_s4_valor_finan.Text := q_formularioFIN_FINANCIADO.AsString;
  vindex := combo_s4_prazo.Items.IndexOf(q_formularioFIN_PRAZO.AsString);
  combo_s4_prazo.ItemIndex := vindex;
  edit_s4_parcela.Text := q_formularioFIN_PARCELA.AsString;
  edit_tabela.Text := q_formularioS_TABELA.AsString;
  edit_s4_tabela.Text := q_formularioS_COD_FIPE.AsString;
  edit_s4_cof.Text := q_formularioS_COEFICIENTE.AsString;
  if q_formularioFIN_TABELA.AsString = 'E' then
  begin
    rb_s4_tab_especial.Checked := TRUE;
  end
  else
  begin
    rb_s4_tab_normal.Checked := TRUE;
  end;

  edit_s4_despachante.Text := q_formularioS_DESPACHANTE.AsString;
  edit_s4_valor_acessorio.Text := q_formularioVALOR_ACESSORIOS.AsString;
  memo_obs_finan.Text := q_formularioFIN_OBS.Text;

  // GMAC/SIGA/PMC

  if q_formularioGMAC_PLUS.AsString = '1' then
  begin
    ck_s4_gmac_plus.Checked := TRUE;
    edit_s4_gmac_plus.Text := q_formularioGMAC_PLUS_VALOR.AsString;
    // edit_s4_emplacamento.Text := q_formularioEMPLACAMENTO.AsString;

  end;

  if q_formularioPMC.AsString = '1' then
  begin

    CK_S4_PMC.Checked := TRUE;
    // vindex := combo_s4_pmc.Items.IndexOfName(q_formularioPMC_TIPO.AsString);
    combo_s4_pmc.ItemIndex := q_formularioPMC_TIPO.AsInteger;
    edit_s4_pmc.Text := q_formularioPMC_VALOR.AsString;
  end;

  if q_formularioGAP.AsString = '1' then
  begin

    ck_s4_gap.Checked := TRUE;
    // vindex := combo_s4_gap.Items.IndexOfName(q_formularioGAP_TIPO.AsString);
    combo_s4_gap.ItemIndex := q_formularioGAP_TIPO.AsInteger;
    edit_s4_gap.Text := q_formularioGAP_VALOR.AsString;
  end;

  if q_formularioSIGA.AsString = '1' then
  begin

    ck_s4_siga.Checked := TRUE;
    // vindex := combo_s4_siga.Items.IndexOfName(q_formularioSIGA_TIPO.AsString);
    combo_s4_siga.ItemIndex := q_formularioSIGA_TIPO.AsInteger;
    edit_s4_siga.Text := q_formularioSIGA_VALOR.AsString;
  end;

  edit_s4_valor_seguro.Text := q_formularioVALOR_SEGURO.Text;
  controller.XidForm := '';
  formatar_valor;
  formatar_acessorios;
  formatar_finan;

end;

procedure TFrmSimulacaoVenda.memo_obs_finanHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add(' placeholder = ''Campo para observa��es de status''  ');
end;

procedure TFrmSimulacaoVenda.BTNADDDOCAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  LISTDOCSEL.Items.Add(LISTDOC.SelectedText);
  LISTDOC.Items.Delete(LISTDOC.ItemIndex);
end;

procedure TFrmSimulacaoVenda.BTNAPLYPARAMSAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  // monta marca
  q_geral.Close;
  q_geral.sql.Clear;
  q_geral.sql.Add('select v.cod_empresa,');
  q_geral.sql.Add('v.cod_produto,');
  q_geral.sql.Add('v.cod_modelo,');
  q_geral.sql.Add('v.cor_externa,');
  q_geral.sql.Add('v.chassi_resumido,');
  q_geral.sql.Add('p.cod_marca');
  q_geral.sql.Add('from veiculos v, produtos p');
  q_geral.sql.Add('where v.chassi_resumido = :chassi');
  q_geral.sql.Add('and v.status = ''E''');
  q_geral.sql.Add('and v.cod_produto = p.cod_produto');
  q_geral.ParamByName('chassi').AsString := edit_p_chassi_resumido.Text;
  q_geral.Open();

  combo_empresas.KeyValue := q_geral.FieldByName('cod_empresa').AsInteger;

  q_marcas.Close;
  q_marcas.sql.Clear;
  q_marcas.sql.Add(' select cod_marca, m.descricao_marca ');
  q_marcas.sql.Add(' from marcas m where cod_marca=' +
    q_geral.FieldByName('cod_marca').AsString);
  q_marcas.Open;
  // combo_marcas.KeyValue := q_geral.FieldByName('cod_marca').AsInteger;
  combo_marcas.RefreshItems;
  combo_marcas.ItemIndex := 0;

  // MONTA PRODUTO
  q_produtos.Close;
  q_produtos.sql.Clear;
  q_produtos.sql.Add
    (' select cod_produto,descricao_produto,cod_marca from produtos ');
  q_produtos.sql.Add('  ');
  q_produtos.sql.Add(' where COD_PRODUTO=  ' + edit_p_cod_produto.Text);
  q_produtos.Open;
  combo_produtos.KeyValue := strtoint(edit_p_cod_produto.Text);
  combo_produtos.RefreshItems;

  // monta modelo

  q_modelos.Close;
  q_modelos.sql.Clear;
  q_modelos.sql.Add(' select cod_produto, ');
  q_modelos.sql.Add(' cod_modelo, ');
  q_modelos.sql.Add(' descricao_modelo, ');
  q_modelos.sql.Add(' pm.preco_tabela, ');
  q_modelos.sql.Add(' pm.ano_modelo, ');
  q_modelos.sql.Add(' pm.renavam ');
  q_modelos.sql.Add(' from produtos_modelos pm ');
  q_modelos.sql.Add(' where ativo = ''S'' ');
  q_modelos.sql.Add(' and cod_produto =   ' + edit_p_cod_produto.Text);
  q_modelos.sql.Add(' and cod_modelo= ' + edit_p_cod_modelo.Text);
  q_modelos.Open;
  combo_modelos.KeyValue := strtoint(edit_p_cod_modelo.Text);
  combo_modelos.RefreshItems;

  // monta cor

  q_cores_externas.Close;
  q_cores_externas.sql.Clear;
  q_cores_externas.sql.Add(' SELECT CRUZAMENTO_VEIC_COR_EXT.COD_PRODUTO, ');
  q_cores_externas.sql.Add(' CRUZAMENTO_VEIC_COR_EXT.desativou, ');
  q_cores_externas.sql.Add(' CRUZAMENTO_VEIC_COR_EXT.COD_MODELO, ');
  q_cores_externas.sql.Add(' CRUZAMENTO_VEIC_COR_EXT.COR_EXTERNA, ');
  q_cores_externas.sql.Add(' CORES_EXTERNAS.DESCRICAO, ');
  q_cores_externas.sql.Add(' CORES_EXTERNAS.FOTO ');
  q_cores_externas.sql.Add(' FROM CORES_EXTERNAS, CRUZAMENTO_VEIC_COR_EXT ');
  q_cores_externas.sql.Add
    (' WHERE (CRUZAMENTO_VEIC_COR_EXT.COR_EXTERNA = CORES_EXTERNAS.COR_EXTERNA) ');
  q_cores_externas.sql.Add(' AND (CRUZAMENTO_VEIC_COR_EXT.COD_PRODUTO = ' +
    edit_p_cod_produto.Text + ' ) ');
  q_cores_externas.sql.Add(' AND (CRUZAMENTO_VEIC_COR_EXT.COD_MODELO = ' +
    edit_p_cod_modelo.Text + ' ) ');
  q_cores_externas.sql.Add(' and CORES_EXTERNAS.cor_externa=' +
    edit_p_cor.Text);
  q_cores_externas.Open;

  combo_cores_externas.KeyValue := strtoint(edit_p_cor.Text);
  combo_cores_externas.RefreshItems;

  edit_chassi.Enabled := false;


  // Busca opcionais do modelo

  q_opcionais.Close;
  q_opcionais.ParamByName('cod_produto').AsInteger :=
    strtoint(edit_p_cod_produto.Text);
  q_opcionais.ParamByName('cod_modelo').AsInteger :=
    strtoint(edit_p_cod_modelo.Text);
  q_opcionais.Open;

  q_opcionais.First;
  edit_opcionais.Text := '';
  while not q_opcionais.Eof do
  begin

    edit_opcionais.Text := edit_opcionais.Text +
      q_opcionaisCOD_OPCIONAL.AsString + ';';

    q_opcionais.Next;
  end;

  edit_ano_modelo.Text := q_modelosANO_MODELO.AsString;

  edit_valor_veiculo1.Text := formatfloat('#,,0.00',
    strtofloat(q_modelosPRECO_TABELA.AsString));

  edit_valor_veiculo2.Text := formatfloat('#,,0.00',
    strtofloat(q_modelosPRECO_TABELA.AsString));

  edit_valor_finan1.Text := formatfloat('#,,0.00',
    strtofloat(q_modelosPRECO_TABELA.AsString));
  edit_valor_finan2.Text := formatfloat('#,,0.00',
    strtofloat(q_modelosPRECO_TABELA.AsString));

end;

procedure TFrmSimulacaoVenda.BTNAPRGERAsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  ID: string;
begin
  inherited;
  ID := lb_id.Caption;

  q_geral.Close;
  q_geral.sql.Clear;
  q_geral.sql.Add('select s_cod_fipe from wc_simulacao_venda  where id=' + ID);
  q_geral.Open();

  if q_geral.FieldByName('s_cod_fipe').AsString = '' then
  begin
    AddToInitProc(swalAlert('Alerta',
      ' C�digo da tabela em branco, verifique! '));
  end
  else
  begin

    q_geral.Close;
    q_geral.sql.Clear;
    q_geral.sql.Add
      ('update   wc_simulacao_venda set gerente=user, data_ap_gerente=sysdate  where id='
      + ID);
    q_geral.ExecSQL;

    q_geral.Close;
    q_geral.sql.Clear;
    q_geral.sql.Add
      ('    select a.aprova_acessorios from wc_origens a where    a.descricao = (   select s.origem  from wc_simulacao_venda s  where  s.id = :id ) ');
    q_geral.ParamByName('id').AsString := ID;
    q_geral.Open();

    if q_geral.FieldByName('aprova_acessorios').AsString = 'S' then
    begin

      q_geral.Close;
      q_geral.sql.Clear;
      q_geral.sql.Add(' UPDATE wc_simulacao_venda set acessorios=user, ');
      q_geral.sql.Add(' data_aprovacao_acess=sysdate where id= :id');
      q_geral.ParamByName('id').AsString := ID;
      q_geral.ExecSQL;

      q_geral.Close;
      q_geral.sql.Clear;
      q_geral.sql.Add('update wc_simulacao_venda a');
      q_geral.sql.Add('set a.a_valor_veic   = a.s2_valor_veic,');
      q_geral.sql.Add('a.a_entrada      = a.s2_entrada,');
      q_geral.sql.Add('a.a_financ       = a.s2_valor_fin,');
      q_geral.sql.Add('a.a_perc_entrada = a.s_perc_entrada2,');
      q_geral.sql.Add('a.a_prazo        = a.s_prazo,');
      q_geral.sql.Add('a.a_parcela      = a.s_parcela');
      q_geral.sql.Add('');
      q_geral.sql.Add('where id = :id ');
      q_geral.ParamByName('id').AsString := ID;
      q_geral.ExecSQL;
    end;

    AddToInitProc(swalSuccess('Confirma��o', ' Aprova��o Gerente: ' + ID +
      ', executada com sucesso !!!'));
    controller.AcaoMenu('ControleF');
  end;

end;

procedure TFrmSimulacaoVenda.BTNDELDOCAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  LISTDOC.Items.Add(LISTDOCSEL.SelectedText);
  LISTDOCSEL.Items.Delete(LISTDOCSEL.ItemIndex);

end;

procedure TFrmSimulacaoVenda.reloadAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$("#veiculos").DataTable().ajax.reload();');

  WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$("#TbAnexo").DataTable().ajax.reload();');
end;

procedure TFrmSimulacaoVenda.timerAsyncTimer(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$("#veiculos").DataTable().ajax.reload();');
  timer.Enabled := false;
end;

procedure TFrmSimulacaoVenda.time_line_finan;
var
  time_line_item: string;
  time_ini: string;
  time_fim: string;
  time_line: string;

begin

  q_geral.Close;
  q_geral.sql.Clear;
  q_geral.sql.Add('select id,');
  q_geral.sql.Add('analista_credito,');
  q_geral.sql.Add('status,');
  q_geral.sql.Add('(to_char(TO_Date(data),');
  q_geral.sql.Add('''dd " de " FMMONTH " de " YYYY'',');
  q_geral.sql.Add('''nls_date_language=portuguese'')) as data,');
  q_geral.sql.Add('to_char(data, ''HH:MM:SS'') as hora,');
  q_geral.sql.Add('motivo_recusa,');
  q_geral.sql.Add('financiadora,');
  q_geral.sql.Add('usuario');
  q_geral.sql.Add('from wc_sim_venda_finan');
  q_geral.Open();

  // Monta o html

  time_ini := '<ul class="timeline">';
  q_geral.First;

  while not q_geral.Eof do
  begin
    time_line_item := time_line_item + '';
    time_line_item := time_line_item + '<!-- timeline time label -->';
    time_line_item := time_line_item + '<li class="time-label">';
    time_line_item := time_line_item + '<span class="bg-red">';
    time_line_item := time_line_item + q_geral.FieldByName('data').AsString;
    time_line_item := time_line_item + '</span>';
    time_line_item := time_line_item + '</li>';
    time_line_item := time_line_item + '<!-- /.timeline-label -->';
    time_line_item := time_line_item + '';
    time_line_item := time_line_item + '<!-- timeline item -->';
    time_line_item := time_line_item + '<li>';
    time_line_item := time_line_item + '<!-- timeline icon -->';
    time_line_item := time_line_item + '<i class="fa fa-envelope bg-blue"></i>';
    time_line_item := time_line_item + '<div class="timeline-item">';
    time_line_item := time_line_item +
      '<span class="time"><i class="fa fa-clock-o"></i> ' +
      q_geral.FieldByName('hora').AsString + '</span>';
    time_line_item := time_line_item + '';
    time_line_item := time_line_item +
      '<h3 class="timeline-header"><a href="#">Usu�rio:' +
      q_geral.FieldByName('usuario').AsString + '</a> ...</h3>';
    time_line_item := time_line_item + '';
    time_line_item := time_line_item + '<div class="timeline-body">';
    time_line_item := time_line_item + '...';
    time_line_item := time_line_item + 'Content goes here';
    time_line_item := time_line_item + '</div>';
    time_line_item := time_line_item + '';
    time_line_item := time_line_item + '<div class="timeline-footer">';
    time_line_item := time_line_item +
      '<a class="btn btn-primary btn-xs">...</a>';
    time_line_item := time_line_item + '</div>';
    time_line_item := time_line_item + '</div>';
    time_line_item := time_line_item + '</li>';
    time_line_item := time_line_item + '<!-- END timeline item -->';
    time_line_item := time_line_item + '';
    time_line_item := time_line_item + '...';
    time_line_item := time_line_item + '';
    q_geral.Next;
  end;
  time_line_item := time_line_item + '</ul>';

  time_line := time_ini + time_line_item + time_fim;

end;

procedure TFrmSimulacaoVenda.voltar_n1;
begin
  edit_cof.Text:='0';

  if v_parcela<>'' then
  begin

   edit_parcela.Text:= v_parcela;

  end;

  edit_valor_finan1.Text:=edit_valor_veiculo1.Text;
  edit_valor_finan2.Text:=edit_valor_veiculo1.Text;

  recalc_valores;




 
end;

procedure TFrmSimulacaoVenda.MontaTabela(aParams: TStrings;
  out aResult: String);
var
  wresult: string;
  wtotal: Integer;
  btn1: string;
  btn2: string;
  btn3: string;
  btn4: string;
  ID: string;
begin

  //
  // Pegar o total de registros da tabela para montagem da pagina��o e o info no rodap� do datatable
  //
  q_datatable.Close;
  q_datatable.sql.Clear;

  q_datatable.sql.Add(' select count(*) as total  ');
  q_datatable.sql.Add(' from clientes   ');
  q_datatable.sql.Add(' where  1=1   ');

  q_datatable.sql.Add('and ( cod_cliente like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.sql.Add('      OR  nome like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  q_datatable.FetchOptions.RecsMax := -1;
  q_datatable.FetchOptions.RecsSkip := -1;

  q_datatable.Open;

  wtotal := q_datatable.FieldByName('total').AsInteger;

  //
  // Select para montar o resultado do ajax na solicitacao do DATATABLE
  //
  q_datatable.Close;

  q_datatable.sql.Clear;
  q_datatable.sql.Add('select c.cod_cliente,');
  q_datatable.sql.Add('c.nome,');
  q_datatable.sql.Add('c.prefixo_res,');
  q_datatable.sql.Add('c.telefone_res,');
  q_datatable.sql.Add('c.prefixo_cel,');
  q_datatable.sql.Add('c.telefone_cel,');
  q_datatable.sql.Add('c.bairro_res,');
  q_datatable.sql.Add('c.rua_res,');
  q_datatable.sql.Add('c.uf_res');
  q_datatable.sql.Add('from clientes c');

  q_datatable.sql.Add(' where   1=1   ');

  q_datatable.sql.Add('and ( cod_cliente like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.sql.Add('      OR  nome like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.sql.Add('Order by nome ' + aParams.Values
        ['order[0][dir]'] + ' ');
    1:
      q_datatable.sql.Add('Order by  cod_cliente ' + aParams.Values
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
  ID := '';
  while not q_datatable.Eof do
  begin

    ID := q_datatable.FieldByName('cod_cliente').AsString;
    btn1 := '"<button type=\"buttom\" class=\"btn btn-xs  btn-success\" data-dismiss=\"modal\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aceitar Cliente\" onclick=\"SetaAcao(''Aceit'''
      + ',' + ID + ')\" > <i class=\"fa fa-level-down\"> </i> </button>" ';

    btn2 := '<button type=\"buttom\" class=\"btn btn-xs btn-success\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aprovar Gerente\" onclick=\"SetaAcao(''aprGe'''
      + ',' + ID + ')\" > <i class=\"fa fa-thumbs-o-up\"> </i> </button> ';
    btn3 := '<button type=\"buttom\" class=\"btn btn-xs btn-info\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aprovar Operador\" onclick=\"SetaAcao(''aprOp'''
      + ',' + ID + ')\"> <i class=\"fa fa-thumbs-o-up\"> </i> </button> ';

    btn4 := '<button type=\"buttom\" class=\"btn btn-xs btn-default\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Gerar proposta no NBS\" onclick=\"SetaAcao(''ExcDo'''
      + ',' + ID + ')\"> <i class=\"fa fa-database\"> </i> </button> "';

    //
    wresult := wresult + '[' + '"' +
      stringreplace(trim(q_datatable.FieldByName('cod_cliente').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(trim(q_datatable.FieldByName('nome').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(trim(q_datatable.FieldByName('rua_res').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(trim(q_datatable.FieldByName('bairro_res').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      btn1 + '],';

    q_datatable.Next;

  end;
  q_datatable.Close;

  if wtotal <= 0 then
    wresult := wresult + ']}'
  else
    wresult := LeftStr(trim(wresult), length(trim(wresult)) - 1) + ']}';

  //
  // Envia o resultado para o ajax do DataTable
  aResult := wresult;

  // abco

end;

procedure TFrmSimulacaoVenda.MontaTbAnexo(aParams: TStrings;
  out aResult: string);
var
  wresult: string;
  wtotal: Integer;
  btn_alterar: string;
  btn_excluir: string;
  ID: string;
begin

  //
  // Pegar o total de registros da tabela para montagem da pagina��o e o info no rodap� do datatable
  //
  q_datatable.Close;
  q_datatable.sql.Clear;

  q_datatable.sql.Add(' select count(*) as total  ');
  q_datatable.sql.Add(' from wc_fin_documentos   ');
  q_datatable.sql.Add(' where  id_finan= ' + lb_id.Caption);

  q_datatable.sql.Add('and ( id like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.sql.Add('      OR  descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  q_datatable.FetchOptions.RecsMax := -1;
  q_datatable.FetchOptions.RecsSkip := -1;

  q_datatable.Open;

  wtotal := q_datatable.FieldByName('total').AsInteger;

  //
  // Select para montar o resultado do ajax na solicitacao do DATATABLE
  //
  q_datatable.Close;
  q_datatable.sql.Clear;
  q_datatable.sql.Add(' select id, ');
  q_datatable.sql.Add(' id_finan, ');
  q_datatable.sql.Add(' id_documento, ');
  q_datatable.sql.Add('descricao, ');
  q_datatable.sql.Add(' nome_anexo, ');
  q_datatable.sql.Add(' arq, ');
  q_datatable.sql.Add(' data ');

  q_datatable.sql.Add(' from wc_fin_documentos   ');
  q_datatable.sql.Add(' where   id_finan= ' + lb_id.Caption);

  q_datatable.sql.Add('and ( id like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.sql.Add('      OR  descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.sql.Add('Order by id ' + aParams.Values
        ['order[0][dir]'] + ' ');
    1:
      q_datatable.sql.Add('Order by  descricao ' + aParams.Values
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
  btn_alterar := '';
  btn_excluir := '';
  ID := '';
  while not q_datatable.Eof do
  begin
    ID := q_datatable.FieldByName('id').AsString;
    btn_alterar :=
      '"<button type=\"buttom\" class=\"btn btn-xs btn-success\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Baixar Anexo\" onclick=\"SetaAcao(''DownD'''
      + ',' + ID + ' , ' +
      '''A'')\" > <i class=\"fa fa-download\"> </i> </button> ';
    btn_excluir :=
      '<button type=\"buttom\" class=\"btn btn-xs btn-danger\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Excluir Registro\" onclick=\"SetaAcao(''ExcDo'''
      + ',' + ID + ')\"> <i class=\"fa fa-trash\"> </i> </button> "';

    //
    wresult := wresult + '[' + '"' +
      stringreplace(trim(q_datatable.FieldByName('id').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(trim(q_datatable.FieldByName('descricao').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
      '"' + stringreplace(trim(q_datatable.FieldByName('nome_anexo').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(trim(q_datatable.FieldByName('data').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' +

      btn_alterar + btn_excluir + '],';

    q_datatable.Next;

  end;
  q_datatable.Close;

  if wtotal <= 0 then
    wresult := wresult + ']}'
  else
    wresult := LeftStr(trim(wresult), length(trim(wresult)) - 1) + ']}';

  //
  // Envia o resultado para o ajax do DataTable
  aResult := wresult;

  // abco

end;

procedure TFrmSimulacaoVenda.MontaTbDocumentos(aParams: TStrings;
  out aResult: string);
var
  wresult: string;
  wtotal: Integer;
  btn_alterar: string;
  btn_excluir: string;
  ID: string;
begin

  //
  // Pegar o total de registros da tabela para montagem da pagina��o e o info no rodap� do datatable
  //
  q_datatable.Close;
  q_datatable.sql.Clear;

  q_datatable.sql.Add(' select count(*) as total  ');
  q_datatable.sql.Add(' from WC_LISTA_DOCUMENTOS   ');
  q_datatable.sql.Add(' where  1=1 ');

  q_datatable.sql.Add('and ( id like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.sql.Add('      OR  descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  q_datatable.FetchOptions.RecsMax := -1;
  q_datatable.FetchOptions.RecsSkip := -1;

  q_datatable.Open;

  wtotal := q_datatable.FieldByName('total').AsInteger;

  //
  // Select para montar o resultado do ajax na solicitacao do DATATABLE
  //
  q_datatable.Close;
  q_datatable.sql.Clear;
  q_datatable.sql.Add(' select id, ');
  q_datatable.sql.Add(' descricao, ');
  q_datatable.sql.Add(' ativo, ');
  q_datatable.sql.Add(' obrigatorio ,origem ');

  q_datatable.sql.Add(' from WC_LISTA_DOCUMENTOS   ');
  q_datatable.sql.Add(' where   1=1 ');

  q_datatable.sql.Add('and ( id like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.sql.Add('      OR  descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.sql.Add('Order by id ' + aParams.Values
        ['order[0][dir]'] + ' ');
    1:
      q_datatable.sql.Add('Order by  descricao ' + aParams.Values
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
  btn_alterar := '';
  btn_excluir := '';
  ID := '';
  while not q_datatable.Eof do
  begin
    ID := q_datatable.FieldByName('id').AsString;
    btn_alterar :=
      '"<button type=\"buttom\" class=\"btn btn-xs btn-warning\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Alterar Registro\" onclick=\"SetaAcao(''SHOW1''  , '
      + ID + ')\" > <i class=\"fa fa-pencil\"> </i> </button> ';
    btn_excluir :=
      '<button type=\"buttom\" class=\"btn btn-xs btn-danger\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Excluir Registro\" onclick=\"SetaAcao(''EXCDO''  , '
      + ID + ')\"> <i class=\"fa fa-trash\"> </i> </button> "';

    //
    wresult := wresult + '[' + '"' +
      stringreplace(trim(q_datatable.FieldByName('id').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_datatable.FieldByName('descricao').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_datatable.FieldByName('ativo').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_datatable.FieldByName('obrigatorio').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_datatable.FieldByName('origem').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +

      btn_alterar + btn_excluir + '],';

    q_datatable.Next;

  end;
  q_datatable.Close;

  if wtotal <= 0 then
    wresult := wresult + ']}'
  else
    wresult := LeftStr(trim(wresult), length(trim(wresult)) - 1) + ']}';

  //
  // Envia o resultado para o ajax do DataTable
  aResult := wresult;

  // abco

end;

procedure TFrmSimulacaoVenda.MontaTbHistorico(aParams: TStrings;
  out aResult: string);
var
  wresult: string;
  wtotal: Integer;
  btn_alterar: string;
  btn_excluir: string;
  ID: string;
begin

  //
  // Pegar o total de registros da tabela para montagem da pagina��o e o info no rodap� do datatable
  //
  q_datatable.Close;
  q_datatable.sql.Clear;

  q_datatable.sql.Add(' select count(*) as total  ');
  q_datatable.sql.Add(' from wc_sim_venda_finan   ');
  q_datatable.sql.Add(' where  id_finan= ' + lb_id.Caption);

  q_datatable.sql.Add('and ( id like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.sql.Add('      OR  financiadora like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  q_datatable.FetchOptions.RecsMax := -1;
  q_datatable.FetchOptions.RecsSkip := -1;

  q_datatable.Open;

  wtotal := q_datatable.FieldByName('total').AsInteger;

  //
  // Select para montar o resultado do ajax na solicitacao do DATATABLE
  //
  q_datatable.Close;
  q_datatable.sql.Clear;
  q_datatable.sql.Add(' select id, ');
  q_datatable.sql.Add(' cod_financiadora, ');
  q_datatable.sql.Add(' financiadora, ');
  q_datatable.sql.Add(' analista_credito, ');
  q_datatable.sql.Add(' status, ');
  q_datatable.sql.Add(' motivo_recusa, ');
  q_datatable.sql.Add(' valor_veiculo, ');
  q_datatable.sql.Add(' entrada, ');
  q_datatable.sql.Add(' valor_fin, ');
  q_datatable.sql.Add(' prazo, ');
  q_datatable.sql.Add(' parcela, ');
  q_datatable.sql.Add(' tabela, ');
  q_datatable.sql.Add(' coeficiente, ');
  q_datatable.sql.Add(' valor_aumento_parc, ');
  q_datatable.sql.Add(' id_finan, ');
  q_datatable.sql.Add(' data, ');
  q_datatable.sql.Add(' usuario, ');
  q_datatable.sql.Add(' tipo_tabela, ');
  q_datatable.sql.Add(' observacoes ');

  q_datatable.sql.Add(' from wc_sim_venda_finan   ');
  q_datatable.sql.Add(' where   id_finan= ' + lb_id.Caption);

  q_datatable.sql.Add('and ( id like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.sql.Add('      OR  financiadora like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.sql.Add('Order by id ' + aParams.Values
        ['order[0][dir]'] + ' ');
    1:
      q_datatable.sql.Add('Order by  data ' + aParams.Values
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
  btn_alterar := '';
  btn_excluir := '';
  ID := '';
  while not q_datatable.Eof do
  begin
    ID := q_datatable.FieldByName('id').AsString;
    btn_alterar :=
      '"<button type=\"buttom\" class=\"btn btn-xs btn-success\" disabled   data-toggle=\"tooltip\" data-placement=\"top\" title=\"Desabilitado\" onclick=\"SetaAcao(''IncFI'''
      + ',' + ID + ' , ' +
      '''A'')\" > <i class=\"glyphicon-search\"> </i> </button> ';
    btn_excluir :=
      '<button type=\"buttom\" class=\"btn btn-xs btn-danger\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Excluir Registro\" onclick=\"SetaAcao(''ExcFi'''
      + ',' + ID + ')\"> <i class=\"fa fa-trash\"> </i> </button> "';

    wresult := wresult + '[' + '"' +
      stringreplace(trim(q_datatable.FieldByName('id').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_datatable.FieldByName('data').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_datatable.FieldByName('financiadora').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_datatable.FieldByName('analista_credito').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_datatable.FieldByName('status').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_datatable.FieldByName('motivo_recusa').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_datatable.FieldByName('valor_veiculo').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_datatable.FieldByName('entrada').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_datatable.FieldByName('valor_fin').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_datatable.FieldByName('prazo').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_datatable.FieldByName('parcela').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_datatable.FieldByName('tabela').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_datatable.FieldByName('coeficiente').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_datatable.FieldByName('valor_aumento_parc')
      .AsString), '"', '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_datatable.FieldByName('id_finan').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_datatable.FieldByName('cod_financiadora').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_datatable.FieldByName('usuario').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_datatable.FieldByName('tipo_tabela').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_datatable.FieldByName('observacoes').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' +

      btn_alterar + btn_excluir + '],';

    q_datatable.Next;

  end;
  q_datatable.Close;

  if wtotal <= 0 then
    wresult := wresult + ']}'
  else
    wresult := LeftStr(trim(wresult), length(trim(wresult)) - 1) + ']}';

  //
  // Envia o resultado para o ajax do DataTable
  aResult := wresult;

  // abco

  // aaa
end;

procedure TFrmSimulacaoVenda.MontaTbStatusFinan(aParams: TStrings;
  out aResult: String);
var
  wresult: string;
  wtotal: Integer;
  btn_alterar: string;
  btn_excluir: string;
  ID: string;
begin

  //
  // Pegar o total de registros da tabela para montagem da pagina��o e o info no rodap� do datatable
  //
  q_status_finan_aux.Close;
  q_status_finan_aux.sql.Clear;

  q_status_finan_aux.sql.Add(' select count(*) as total  ');
  q_status_finan_aux.sql.Add(' from WC_STATUS_FINAN   ');
  q_status_finan_aux.sql.Add(' where  1=1 ');

  q_status_finan_aux.sql.Add('and ( id like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_status_finan_aux.sql.Add('      OR  descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  q_status_finan_aux.FetchOptions.RecsMax := -1;
  q_status_finan_aux.FetchOptions.RecsSkip := -1;

  q_status_finan_aux.Open;

  wtotal := q_status_finan_aux.FieldByName('total').AsInteger;

  //
  // Select para montar o resultado do ajax na solicitacao do DATATABLE
  //
  q_status_finan_aux.Close;
  q_status_finan_aux.sql.Clear;
  q_status_finan_aux.sql.Add(' select id, ');
  q_status_finan_aux.sql.Add(' descricao, ');
  q_status_finan_aux.sql.Add(' ativo ');

  q_status_finan_aux.sql.Add(' from WC_STATUS_FINAN   ');
  q_status_finan_aux.sql.Add(' where   1=1 ');

  q_status_finan_aux.sql.Add('and ( id like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_status_finan_aux.sql.Add('      OR  descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_status_finan_aux.sql.Add('Order by id ' + aParams.Values
        ['order[0][dir]'] + ' ');
    1:
      q_status_finan_aux.sql.Add('Order by  descricao ' + aParams.Values
        ['order[0][dir]'] + ' ');

  end;

  q_status_finan_aux.FetchOptions.RecsMax := strtoint(aParams.Values['length']);
  q_status_finan_aux.FetchOptions.RecsSkip := strtoint(aParams.Values['start']);

  q_status_finan_aux.Open;

  //
  // Montagem da variavel com o JASON de resultado da consulta
  //
  wresult := '{' + '"draw": ' + StrToIntDef(aParams.Values['draw'], 0).ToString
    + ', ' + '"recordsTotal": ' + wtotal.ToString + ', ' + '"recordsFiltered": '
    + wtotal.ToString + ', ' + '"data": [';
  q_status_finan_aux.First;
  btn_alterar := '';
  btn_excluir := '';
  ID := '';
  while not q_status_finan_aux.Eof do
  begin
    ID := q_status_finan_aux.FieldByName('id').AsString;
    btn_alterar :=
      '"<button type=\"buttom\" class=\"btn btn-xs btn-warning\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Alterar Registro\" onclick=\"ShowStatusManut('
      + ID + ' , ' + '''A'')\" > <i class=\"fa fa-pencil\"> </i> </button> ';
    btn_excluir :=
      '<button type=\"buttom\" class=\"btn btn-xs btn-danger\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Excluir Registro\" onclick=\"ExcStatus('
      + ID + ')\"> <i class=\"fa fa-trash\"> </i> </button> "';

    //
    wresult := wresult + '[' + '"' +
      stringreplace(trim(q_status_finan_aux.FieldByName('id').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_status_finan_aux.FieldByName('descricao').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_status_finan_aux.FieldByName('ativo').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' +

      btn_alterar + btn_excluir + '],';

    q_status_finan_aux.Next;

  end;
  q_status_finan_aux.Close;

  if wtotal <= 0 then
    wresult := wresult + ']}'
  else
    wresult := LeftStr(trim(wresult), length(trim(wresult)) - 1) + ']}';

  //
  // Envia o resultado para o ajax do DataTable
  aResult := wresult;

  // abco

end;

procedure TFrmSimulacaoVenda.MontaTbVeiculos(aParams: TStrings;
  out aResult: String);
var
  wresult: string;
  wtotal: Integer;
  v_cod_produto: string;
  v_cod_modelo: string;
  v_chassi_resumido: string;
  v_chassi_completo: string;
  v_cor: string;
  v_renavan: string;
  v_ano_modelo: string;
  v_preco_tabela: string;
  v_placa_usado: string;

begin
  //
  // Verifica empresas do usuario logado:

  // Pegar o total de registros da tabela para montagem da pagina��o e o info no rodap� do datatable
  //
  q_veiculos.Close;
  q_veiculos.sql.Clear;
  q_veiculos.sql.Add(' select count(*) as total  ');
  q_veiculos.sql.Add
    (' from veiculos v, produtos_modelos pm, cores_externas ce, combustivel cob ');
  q_veiculos.sql.Add(' where status = ''E'' ');
  q_veiculos.sql.Add(' and cod_proposta = 0 ');
  q_veiculos.sql.Add('  ');
  q_veiculos.sql.Add(' and v.cod_produto = pm.cod_produto ');
  q_veiculos.sql.Add(' and v.cod_modelo = pm.cod_modelo ');
  q_veiculos.sql.Add(' and v.cor_externa = ce.cor_externa ');
  q_veiculos.sql.Add(' and v.cod_combustivel = cob.cod_combustivel ');
  q_veiculos.sql.Add(' and v.cod_empresa in( ' +

    ' select  cod_empresa  from wc_empresas_usuarios ' + ' where upper(nome) ='
    + quotedstr(controller.xUsuario.ToUpper) + ' and tipo = ' +
    quotedstr(combo_tipo.SelectedValue) + ' )');

  q_veiculos.sql.Add(' and v.novo_usado =  ' +
    quotedstr(combo_tipo.SelectedValue));

  q_veiculos.sql.Add('and ( pm.descricao_modelo like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_veiculos.sql.Add('OR V.PLACA_USADO like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_veiculos.sql.Add('      OR  v.chassi_completo like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  q_veiculos.FetchOptions.RecsMax := -1;
  q_veiculos.FetchOptions.RecsSkip := -1;

  q_veiculos.Open;

  wtotal := q_veiculos.FieldByName('total').AsInteger;

  //
  // Select para montar o resultado do ajax na solicitacao do DATATABLE
  //
  q_veiculos.Close;
  q_veiculos.sql.Clear;
  q_veiculos.sql.Add(' select v.cod_empresa, ');
  q_veiculos.sql.Add(' pm.descricao_modelo, ');
  q_veiculos.sql.Add(' ce.descricao, ');
  q_veiculos.sql.Add(' cob.combustivel, ');
  q_veiculos.sql.Add(' v.ano_modelo, ');
  q_veiculos.sql.Add(' v.renavam, ');
  q_veiculos.sql.Add(' v.cod_produto, ');
  q_veiculos.sql.Add(' v.cod_modelo, ');
  q_veiculos.sql.Add(' v.chassi_resumido, ');
  q_veiculos.sql.Add(' v.chassi_completo, ');
  q_veiculos.sql.Add(' v.cor_externa, ');
  q_veiculos.sql.Add(' v.placa_usado, ');
  q_veiculos.sql.Add(' v.novo_usado, ');
  q_veiculos.sql.Add(' v.preco_tabela ');
  q_veiculos.sql.Add
    (' from veiculos v, produtos_modelos pm, cores_externas ce, combustivel cob ');
  q_veiculos.sql.Add(' where status = ''E'' ');
  q_veiculos.sql.Add(' and cod_proposta = 0 ');
  q_veiculos.sql.Add('  ');
  q_veiculos.sql.Add(' and v.cod_produto = pm.cod_produto ');
  q_veiculos.sql.Add(' and v.cod_modelo = pm.cod_modelo ');
  q_veiculos.sql.Add(' and v.cor_externa = ce.cor_externa ');
  q_veiculos.sql.Add(' and v.cod_combustivel = cob.cod_combustivel ');
  q_veiculos.sql.Add(' and v.cod_empresa in( ' +

    ' select  cod_empresa  from wc_empresas_usuarios ' + ' where upper(nome) ='
    + quotedstr(controller.xUsuario.ToUpper) + ' and tipo = ' +
    quotedstr(combo_tipo.SelectedValue) + ' )');

  q_veiculos.sql.Add(' and v.novo_usado =  ' +
    quotedstr(combo_tipo.SelectedValue));

  q_veiculos.sql.Add('and ( pm.descricao_modelo like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_veiculos.sql.Add('OR V.PLACA_USADO like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_veiculos.sql.Add('      OR  v.chassi_completo like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_veiculos.sql.Add('Order by pm.descricao_modelo ' + aParams.Values
        ['order[0][dir]'] + ' ');
    1:
      q_veiculos.sql.Add('Order by  ce.descricao ' + aParams.Values
        ['order[0][dir]'] + ' ');
    2:
      q_veiculos.sql.Add('Order by cob.combustivel ' + aParams.Values
        ['order[0][dir]'] + ' ');
    3:
      q_veiculos.sql.Add('Order by  v.preco_tabela ' + aParams.Values
        ['order[0][dir]'] + ' ');
  end;

  q_veiculos.FetchOptions.RecsMax := strtoint(aParams.Values['length']);
  q_veiculos.FetchOptions.RecsSkip := strtoint(aParams.Values['start']);

  q_veiculos.Open;

  //
  // Montagem da variavel com o JASON de resultado da consulta
  //
  wresult := '{' + '"draw": ' + StrToIntDef(aParams.Values['draw'], 0).ToString
    + ', ' + '"recordsTotal": ' + wtotal.ToString + ', ' + '"recordsFiltered": '
    + wtotal.ToString + ', ' + '"data": [';
  q_veiculos.First;
  while not q_veiculos.Eof do
  begin

    // Alimenta as vari�veis de par�,etros:
    v_cod_produto := q_veiculos.FieldByName('cod_produto').AsString;
    v_cod_modelo := q_veiculos.FieldByName('cod_modelo').AsString;
    v_chassi_resumido := q_veiculos.FieldByName('chassi_resumido').AsString;
    v_chassi_completo := q_veiculos.FieldByName('chassi_completo').AsString;
    v_cor := q_veiculos.FieldByName('cor_externa').AsString;
    v_renavan := q_veiculos.FieldByName('renavam').AsString;
    v_ano_modelo := q_veiculos.FieldByName('ano_modelo').AsString;
    v_preco_tabela := q_veiculos.FieldByName('preco_tabela').AsString;
    v_placa_usado := q_veiculos.FieldByName('placa_usado').AsString;
    //
    wresult := wresult + '[' +
      '"<button type=\"button\" class=\"btn btn-success\" data-dismiss=\"modal\"  onclick=\"AceitarVeic('
      + quotedstr(v_placa_usado) + ' , ' + v_cod_produto + ' , ' + v_cod_modelo
      + ' , ' + v_chassi_resumido + ' , ' + quotedstr(v_chassi_completo) + ' , '
      + v_cor + ' , ' + quotedstr(v_renavan) + ' , ' + quotedstr(v_ano_modelo) +
      ' , ' + quotedstr(v_preco_tabela) + ')\">Aceitar</button>" ,' + '"' +
      stringreplace(trim(q_veiculos.FieldByName('cod_empresa').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_veiculos.FieldByName('descricao_modelo').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_veiculos.FieldByName('placa_usado').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_veiculos.FieldByName('chassi_completo').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_veiculos.FieldByName('descricao').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_veiculos.FieldByName('combustivel').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_veiculos.FieldByName('ano_modelo').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_veiculos.FieldByName('renavam').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_veiculos.FieldByName('cod_produto').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_veiculos.FieldByName('cod_modelo').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_veiculos.FieldByName('chassi_resumido').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_veiculos.FieldByName('cor_externa').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_veiculos.FieldByName('novo_usado').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(trim(q_veiculos.FieldByName('preco_tabela').AsString), '"',
      '\"', [rfReplaceAll]) + '" ' +

      '],';
    q_veiculos.Next;
  end;
  q_veiculos.Close;

  if wtotal <= 0 then
    wresult := wresult + ']}'
  else
    wresult := LeftStr(trim(wresult), length(trim(wresult)) - 1) + ']}';

  //
  // Envia o resultado para o ajax do DataTable
  aResult := wresult;

  // abco
end;

procedure TFrmSimulacaoVenda.N1_BTN_LANCARAsyncClick(Sender: TObject;
  EventParams: TStringList);

begin
  inherited;
  voltar_n1;
  calc_n1;
  formatar_valor;

end;

procedure TFrmSimulacaoVenda.N1_CK_GAPAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  if N1_CK_GAP.Checked then
  begin

    N1_EDIT_GAP.Enabled := TRUE;
    N1_EDIT_GAP.Text := '';
    N1_EDIT_GAP.SetFocus;

  end
  else
  begin

    N1_EDIT_GAP.Enabled := false;
    N1_EDIT_GAP.Text := '0,00';

    voltar_n1;
    calc_n1;

  end;

end;

procedure TFrmSimulacaoVenda.N1_CK_GMAC_PLUSAsyncChange(Sender: TObject;
  EventParams: TStringList);
var
  v_gmac_plus: real;
  v_financ: real;
  v_rc: real;
  v_perc: real;

begin
  inherited;

  if N1_CK_GMAC_PLUS.Checked then
  begin
    v_financ := strtofloat(stringreplace(edit_valor_finan1.Text, '.', '', []));
    v_rc := strtofloat(edit_tac.Text);
    v_perc := strtofloat(N1_EDIT_PERC.Text);

    v_perc := v_perc / 100;

    v_gmac_plus := (v_financ + v_rc) * v_perc;

    N1_EDIT_GMAC_PLUS.Text := floattostr(v_gmac_plus);

    voltar_n1;
    calc_n1;
    formatar_valor;

  end
  else
  begin
    N1_EDIT_GMAC_PLUS.Text := '0,00';
    voltar_n1;
    calc_n1;
  end;

end;

procedure TFrmSimulacaoVenda.N1_CK_SPMCAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  if N1_CK_SPMC.Checked then
  begin
    N1_EDIT_SPMC.Enabled := TRUE;
    N1_EDIT_SPMC.Text := '';
    N1_EDIT_SPMC.SetFocus;

  end
  else
  begin
    N1_EDIT_SPMC.Enabled := false;
    N1_EDIT_SPMC.Text := '0,00';

    voltar_n1;
    calc_n1;

  end;

end;

procedure TFrmSimulacaoVenda.N1_EDIT_GAPAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  voltar_n1;
  calc_n1;
  formatar_valor;
end;

procedure TFrmSimulacaoVenda.N1_EDIT_SPMCAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  voltar_n1;
  calc_n1;
  formatar_valor;
end;

procedure TFrmSimulacaoVenda.obs_aut_fi;
begin

  memo_obs_finan.Lines.Clear;

  if ck_s4_gmac_plus.Checked then
  begin
    memo_obs_finan.Lines.Text := memo_obs_finan.Lines.Text + 'GMAC PLUS,';
  end;

  if CK_S4_PMC.Checked then
  begin
    memo_obs_finan.Lines.Text := memo_obs_finan.Lines.Text + 'PMC,';
  end;

  if ck_s4_gap.Checked then
  begin
    memo_obs_finan.Lines.Text := memo_obs_finan.Lines.Text + 'GAP,';
  end;

  if ck_s4_siga.Checked then
  begin
    memo_obs_finan.Lines.Text := memo_obs_finan.Lines.Text + 'SIGA,';
  end;

end;

procedure TFrmSimulacaoVenda.pcombo_empresas;
begin
  controller.DM.q_empresas.LOCATE('cod_empresa', combo_empresas.KeyValue, []);
  q_funcao_vendedor_veic.Close;
  q_funcao_vendedor_veic.ParamByName('cod_empresa').AsInteger :=
    controller.DM.q_empresasCOD_EMPRESA.AsInteger;
  q_funcao_vendedor_veic.Open;

  q_vendedores_veic.Close;
  q_vendedores_veic.ParamByName('cod_gerente').AsInteger :=
    q_funcao_vendedor_veicCOD_GERENTE_VENDAS.AsInteger;
  q_vendedores_veic.ParamByName('cod_supervisor').AsInteger :=
    q_funcao_vendedor_veicCOD_SUPERVISOR_VEICULO.AsInteger;
  q_vendedores_veic.ParamByName('cod_vendedor').AsInteger :=
    q_funcao_vendedor_veicCOD_VENDEDOR_VEICULO.AsInteger;
  q_vendedores_veic.Open;

  combo_vendedores.Enabled := TRUE;
  combo_vendedores.RefreshItems;
end;

procedure TFrmSimulacaoVenda.q_modelosAfterOpen(DataSet: TDataSet);
begin
  inherited;
  edit_ano_modelo.Text := q_modelosANO_MODELO.AsString;
end;

procedure TFrmSimulacaoVenda.q_veiculosAfterOpen(DataSet: TDataSet);
begin
  inherited;
  // memosql.Lines.Text:= q_veiculos.SQL.Text;
end;

procedure TFrmSimulacaoVenda.rb_cnh_naoAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  if rb_cnh_nao.Checked then
    rb_cnh_sim.Checked := false;
end;

procedure TFrmSimulacaoVenda.rb_cnh_simAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  if rb_cnh_sim.Checked then
    rb_cnh_nao.Checked := false;

end;

procedure TFrmSimulacaoVenda.rb_cnh_simAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  // rb_cnh_nao.SetFocus;
end;

procedure TFrmSimulacaoVenda.rb_s4_tab_especialAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  if rb_s4_tab_especial.Checked then
    rb_s4_tab_normal.Checked := false;
end;

procedure TFrmSimulacaoVenda.rb_s4_tab_normalAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  if rb_s4_tab_normal.Checked then
    rb_s4_tab_especial.Checked := false;
end;

procedure TFrmSimulacaoVenda.recalc_valores;
var
  per_entrada1: real;
  per_entrada2: real;
  v_tac: real;
  vfin: real;
  ventrada1: real;
  ventrada2: real;
  vveic1: real;
  vveic2: real;
  vpgto_c_apresentacao: real;
  vpgto_cartao: real;
  vpgto_cheque: real;
  vpgto_v_usado: real;
  vpgto_outras: real;
  vpgto_consorcio: real;
  vpgto_fin_externo: real;
  vpgto_tr_q_usado: real;
  vpgto_tr_emplacamento: real;
  vpgto_tr_ipva: real;
  vpgto_tr_s_obrigatorio: real;
  vpgto_tr_outros: real;
  vpgto_tr_hn: real;

begin
  if edit_valor_entrada1.Text = '' then
    edit_valor_entrada1.Text := '0';
  if edit_valor_entrada2.Text = '' then
    edit_valor_entrada2.Text := '0';
  if edit_tac.Text <> '' then
    v_tac := strtofloat(stringreplace(edit_tac.Text, '.', '', [rfReplaceAll]));

  vfin := strtofloat(stringreplace(edit_valor_finan1.Text, '.', '',
    [rfReplaceAll]));
  ventrada1 := strtofloat(stringreplace(edit_valor_entrada1.Text, '.', '',
    [rfReplaceAll]));
  ventrada2 := strtofloat(stringreplace(edit_valor_entrada2.Text, '.', '',
    [rfReplaceAll]));
  vveic1 := strtofloat(stringreplace(edit_valor_veiculo1.Text, '.', '',
    [rfReplaceAll]));
  vveic2 := strtofloat(stringreplace(edit_valor_veiculo2.Text, '.', '',
    [rfReplaceAll]));

  if edit_pgto_c_apresentacao.Text <> '' then
    vpgto_c_apresentacao :=
      strtofloat(stringreplace(edit_pgto_c_apresentacao.Text, '.', '',
      [rfReplaceAll]));

  if edit_pgto_cartao.Text <> '' then
    vpgto_cartao := strtofloat(stringreplace(edit_pgto_cartao.Text, '.', '',
      [rfReplaceAll]));
  if edit_pgto_cheque.Text <> '' then
    vpgto_cheque := strtofloat(stringreplace(edit_pgto_cheque.Text, '.', '',
      [rfReplaceAll]));
  if edit_pgto_v_usado.Text <> '' then
    vpgto_v_usado := strtofloat(stringreplace(edit_pgto_v_usado.Text, '.', '',
      [rfReplaceAll]));
  if edit_pgto_outras.Text <> '' then
    vpgto_outras := strtofloat(stringreplace(edit_pgto_outras.Text, '.', '',
      [rfReplaceAll]));
  if edit_pgto_consorcio.Text <> '' then
    vpgto_consorcio := strtofloat(stringreplace(edit_pgto_consorcio.Text, '.',
      '', [rfReplaceAll]));
  if edit_pgto_fin_externo.Text <> '' then
    vpgto_fin_externo := strtofloat(stringreplace(edit_pgto_fin_externo.Text,
      '.', '', [rfReplaceAll]));


  // Sess�o de trocos

  if edit_pgto_tr_usado.Text <> '' then
    vpgto_tr_q_usado := strtofloat(stringreplace(edit_pgto_tr_usado.Text, '.',
      '', [rfReplaceAll]));
  if edit_pgto_tr_emplacamento.Text <> '' then
    vpgto_tr_emplacamento :=
      strtofloat(stringreplace(edit_pgto_tr_emplacamento.Text, '.', '',
      [rfReplaceAll]));
  if edit_pgto_tr_ipva.Text <> '' then
    vpgto_tr_ipva := strtofloat(stringreplace(edit_pgto_tr_ipva.Text, '.', '',
      [rfReplaceAll]));
  if edit_pgto_tr_seguro_o.Text <> '' then
    vpgto_tr_s_obrigatorio :=
      strtofloat(stringreplace(edit_pgto_tr_seguro_o.Text, '.', '',
      [rfReplaceAll]));
  if edit_pgto_tr_outros.Text <> '' then
    vpgto_tr_outros := strtofloat(stringreplace(edit_pgto_tr_outros.Text, '.',
      '', [rfReplaceAll]));
  if edit_pgto_tr_hn.Text <> '' then
    vpgto_tr_hn := strtofloat(stringreplace(edit_pgto_tr_hn.Text, '.', '',
      [rfReplaceAll]));

  ventrada1 :=

    (vpgto_c_apresentacao + vpgto_cartao + vpgto_cheque + vpgto_v_usado +
    vpgto_outras + vpgto_consorcio + vpgto_fin_externo) -
    (vpgto_tr_q_usado + vpgto_tr_emplacamento + vpgto_tr_ipva +
    vpgto_tr_s_obrigatorio + vpgto_tr_outros + vpgto_tr_hn);

  vfin := vveic1 - ventrada1;

  edit_valor_entrada1.Text := floattostr(ventrada1);
  edit_valor_finan1.Text := floattostr(vfin);

  // Calcula o percentual de entrada

  per_entrada1 := (ventrada1 / (vveic1 + v_tac)) * 100;

  edit_perc_entrada1.Text := formatfloat('#,,0.00', per_entrada1) + '%';

  edit_valor_entrada2.Text :=
    floattostr(ventrada1 + strtofloat(stringreplace(edit_valor_despachante.Text,
    '.', '', [rfReplaceAll])) + strtofloat(stringreplace(edit_participacao.Text,
    '.', '', [rfReplaceAll])));

  // Sempre por utimo
  edit_valor_finan2.Text := edit_valor_finan1.Text;
   //calc_n1;
  calc_cof;

  edit_valor_veiculo2.Text :=
    floattostr(strtofloat(stringreplace(edit_valor_veiculo1.Text, '.', '', []))
    + strtofloat(stringreplace(edit_participacao.Text, '.', '', [])));

  // Percentual de entrada 2
  edit_perc_entrada2.Text := formatfloat('#,,0.00', get_perc_entrada2) + '%';

  // Formatar valores
  formatar_valor;
  calc_valor_elegivel;



end;

procedure TFrmSimulacaoVenda.recarregar_docs;
begin
  q_geral.Close;
  q_geral.sql.Clear;
  q_geral.sql.Add
    ('select descricao,id from wc_lista_documentos where ativo=''S'' ');
  q_geral.Open();

  q_geral.First;

  while not q_geral.Eof do
  begin

    LISTDOC.Items.Add(q_geral.FieldByName('descricao').AsString + '=' +
      q_geral.FieldByName('id').AsString);

    q_geral.Next;

  end;

  LISTDOC.RefreshItems;
end;

procedure TFrmSimulacaoVenda.recupera_dados;
begin

  edit_cliente_cpf.Text := controller.s_cpf;
  edit_cliente_nome.Text := controller.s_nome_cliente;
  edit_ano_modelo.Text := controller.s_ano_modelo;
  edit_chassi.Text := controller.s_chassi;

end;

end.
