unit U_Tabelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FrmPadrao, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, IWCompButton, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, IWCompListbox,
  IWDBStdCtrls, IWCompLabel;

type
  TFormTabelas = class(TFrmPadrao)
    BTN_GRUPOS: TIWButton;
    q_datatable: TFDQuery;
    BTN_INCLUIR_GRUPO: TIWButton;
    edit_grupo: TIWEdit;
    BTNSALVARGRUPO: TIWButton;
    q_geral: TFDQuery;
    BTN_LOCACOES: TIWButton;
    BTN_INCLUIR_LOC: TIWButton;
    BTN_SALVAR_LOC: TIWButton;
    combo_local_estoque: TIWDBLookupComboBox;
    q_local_estoque: TFDQuery;
    q_local_estoqueCOD_LOCAL: TFMTBCDField;
    q_local_estoqueDESCRICAO: TStringField;
    q_local_estoqueCOD_EMPRESA: TFMTBCDField;
    ds_q_local_estoque: TDataSource;
    edit_locacao: TIWEdit;
    edit_prateleira: TIWEdit;
    edit_lado: TIWEdit;
    BTN_PESQUISARP: TIWButton;
    IWDBLookupComboBox1: TIWDBLookupComboBox;
    edit_md_ncm_item: TIWEdit;
    combo_md_un_item: TIWComboBox;
    edit_md_comp_item: TIWEdit;
    combo_origem_item: TIWComboBox;
    combo_tipo_item: TIWComboBox;
    combo_tributacao_item: TIWComboBox;
    edit_md_preco_venda: TIWEdit;
    combo_md_grupo: TIWDBLookupComboBox;
    combo_md_marca_item: TIWDBLookupComboBox;
    combo_md_fornecedor: TIWDBLookupComboBox;
    edit_md_descricao: TIWEdit;
    edit_md_cod_item: TIWEdit;
    q_marca_itens: TFDQuery;
    q_marca_itensCOD_MARCA: TFMTBCDField;
    q_marca_itensDESCRICAO: TStringField;
    ds_fornecedor_estoque: TDataSource;
    q_fornecedor: TFDQuery;
    q_fornecedorCOD_FORNECEDOR: TFMTBCDField;
    q_fornecedorDESCRICAO: TStringField;
    ds_marcas: TDataSource;
    ds_grupos: TDataSource;
    q_grupos: TFDQuery;
    q_gruposCOD_GRUPO: TFMTBCDField;
    q_gruposDESCRICAO: TStringField;
    BTN_CAD_ITEM: TIWButton;
    ID_ITEM: TIWLabel;
    MODO_ITEM: TIWLabel;
    BTN_INCLUIR_ITEM: TIWButton;
    BTN_FORNECEDORES: TIWButton;
    BTN_INCLUIR_FOR: TIWButton;
    edit_descricao_fornecedor: TIWEdit;
    BTNSALVARFORNEC: TIWButton;
    BTN_MARCAS: TIWButton;
    BTN_INC_MARCAS: TIWButton;
    edit_descricao_marca: TIWEdit;
    BTNSALVARMARCA: TIWButton;
    BTN_LESTOQUE: TIWButton;
    BTN_INC_LOCAIS: TIWButton;
    edit_descricao_local: TIWEdit;
    BTNSALVARLOCAL: TIWButton;
    edit_md_cod_barras: TIWEdit;
    procedure BTN_GRUPOSAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormCreate(Sender: TObject);
    procedure BTN_INCLUIR_GRUPOAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure BTNSALVARGRUPOAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure IWBTNACAOAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure BTN_LOCACOESAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure BTN_INCLUIR_LOCAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure IWAppFormShow(Sender: TObject);
    procedure BTN_SALVAR_LOCAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure BTN_PESQUISARPAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure BTN_CAD_ITEMAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure BTN_INCLUIR_ITEMAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure BTN_FORNECEDORESAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure BTN_INCLUIR_FORAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure BTNSALVARFORNECAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure BTN_MARCASAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure BTN_INC_MARCASAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure BTNSALVARMARCAAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure BTN_LESTOQUEAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure BTN_INC_LOCAISAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure BTNSALVARLOCALAsyncClick(Sender: TObject;
      EventParams: TStringList);
  private
    { Private declarations }
         procedure TBGrupos(aParams: TStrings; out aResult: string);
         procedure TBLocacoes(aParams: TStrings; out aResult: string);
          procedure TBPesquisaP(aParams: TStrings; out aResult: string);
          procedure TBFornecedores(aParams: TStrings; out aResult: string);
          procedure TBMarcas(aParams: TStrings; out aResult: string);
          procedure TBLEstoque(aParams: TStrings; out aResult: string);
          function  ifnull(campo : string):string;
  public
    { Public declarations }
  end;

var
  FormTabelas: TFormTabelas;

implementation

{$R *.dfm}

uses SweetAlerts, UserSessionUnit, U_DM, System.AnsiStrings, ServerController;

procedure TFormTabelas.BTNSALVARFORNECAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  //Inclus�o de fornecedor
  try
    q_geral.Close;
    q_geral.SQL.Clear;
    q_geral.SQL.add('insert into fornecedor_estoque');
    q_geral.SQL.add('(cod_fornecedor, descricao)');
    q_geral.SQL.add('values');
    q_geral.SQL.add('(seq_controle_fornecedor.nextval, :descricao)');
    q_geral.ParamByName('descricao').AsString := edit_descricao_fornecedor.Text;
    q_geral.ExecSQL;
    addtoinitproc(swalSuccess('Confirma��o',
      'Fornecedor cadastrado com sucesso!'));
    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBFornecedores").DataTable().ajax.reload();');
    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$(''#MDFornecedores'').modal(''show'');');
  except
    on e: Exception do
    begin
      swalError('Erro', 'Erro ao cadastrar fornecedor:' + e.message);

    end;

  end;
end;

procedure TFormTabelas.BTNSALVARGRUPOAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  q_geral.Close;
  q_geral.SQL.Clear;
  q_geral.sql.add('insert into itens_grupo');
  q_geral.sql.add('(cod_grupo, descricao)');
  q_geral.sql.add('values');
  q_geral.sql.add('(seq_controle_grupos.nextval, :descricao)');
  q_geral.ParamByName('descricao').AsString:= edit_grupo.Text;
  q_geral.ExecSQL;
  addtoinitproc(swalSuccess('Confirma��o','Grupo cadastrado com sucesso!'));
  WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBGrupos").DataTable().ajax.reload();');
  WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDGrupos'').modal(''show'');');


end;

procedure TFormTabelas.BTNSALVARLOCALAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
 try
    q_geral.Close;
    q_geral.SQL.Clear;
    q_geral.SQL.add('insert into local_estoque');
    q_geral.SQL.add('(cod_local,cod_empresa, descricao)');
    q_geral.SQL.add('values');
    q_geral.SQL.add('(seq_controle_local.nextval, :cod_empresa , :descricao)');
    q_geral.ParamByName('descricao').AsString := edit_descricao_local.Text;
    q_geral.ParamByName('cod_empresa').AsInteger := controller.xcod_empresa;
    q_geral.ExecSQL;
    addtoinitproc(swalSuccess('Confirma��o', 'Local cadastrado com sucesso!'));
    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBLEstoque").DataTable().ajax.reload();');
    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$(''#MDLEstoque'').modal(''show'');');
  except
    on e: Exception do
    begin
      swalError('Erro', 'Erro ao cadastrar Local Estoque:' + e.message);

    end;

  end;
end;

procedure TFormTabelas.BTNSALVARMARCAAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
 //Inclus�o de marcas
  try
    q_geral.Close;
    q_geral.SQL.Clear;
    q_geral.SQL.add('insert into marcas');
    q_geral.SQL.add('(cod_marca, descricao)');
    q_geral.SQL.add('values');
    q_geral.SQL.add('(seq_controle_marca.nextval, :descricao)');
    q_geral.ParamByName('descricao').AsString := edit_descricao_marca.Text;
    q_geral.ExecSQL;
    addtoinitproc(swalSuccess('Confirma��o',
      'Marca cadastrado com sucesso!'));
    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBMarcas").DataTable().ajax.reload();');
    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$(''#MDMarcas'').modal(''show'');');
  except
    on e: Exception do
    begin
      swalError('Erro', 'Erro ao cadastrar Marca:' + e.message);

    end;

  end;
end;

procedure TFormTabelas.BTN_CAD_ITEMAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  if MODO_ITEM.Caption='Altera��o' then
  begin

    q_datatable.Close;
    q_datatable.SQL.Clear;
    q_datatable.sql.add('update itens set');
    q_datatable.sql.add('cod_grupo = :cod_grupo,');
    q_datatable.sql.add('cod_marca = :cod_marca,');
    q_datatable.sql.add('comprimento = :comprimento,');
    q_datatable.sql.add('descricao = :descricao,');
    //q_datatable.sql.add('embalagem = :embalagem,');
    q_datatable.sql.add('ncm = :ncm,');
    q_datatable.sql.add('origem = :origem,');
    q_datatable.sql.add('preco_venda = :preco_venda,');
    q_datatable.sql.add('tributacao = :tributacao,');
    q_datatable.sql.add('codigo_barras = :codigo_barras,');
    q_datatable.sql.add('un = :un');
    q_datatable.sql.add('where id = :id');

    q_datatable.ParamByName('id').AsInteger         := strtoint(id_item.Caption);
    q_datatable.ParamByName('un').Value             :=  combo_md_un_item.SelectedValue;
    q_datatable.ParamByName('tributacao').Value     := combo_tributacao_item.SelectedValue;
    q_datatable.ParamByName('preco_venda').AsFloat  := strtofloat(edit_md_preco_venda.Text);
    q_datatable.ParamByName('origem').Value         := combo_origem_item.SelectedValue;
    q_datatable.ParamByName('ncm').AsString         := edit_md_ncm_item.Text;
    q_datatable.ParamByName('descricao').AsString   := edit_md_descricao.Text;
    q_datatable.ParamByName('comprimento').AsFloat  := strtofloat(edit_md_comp_item.Text);
    q_datatable.ParamByName('cod_marca').Value      := combo_md_marca_item.KeyValue;
    q_datatable.ParamByName('cod_grupo').Value      := combo_md_grupo.KeyValue;
    q_datatable.ParamByName('codigo_barras').AsString := edit_md_cod_barras.Text;
    q_datatable.ExecSQL;
    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBPesquisaP").DataTable().ajax.reload();');
    addtoinitproc(swalSuccess('Confirma��o','Altera��o Realizada com sucesso'));
    WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDPesquisaP2'').modal(''show'');');






  end
  else
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
     // q_datatable.sql.add('embalagem,');
      q_datatable.sql.add('ncm,');
     // q_datatable.sql.add('preco_garantia,');
      q_datatable.sql.add('preco_venda,');
      q_datatable.sql.add('tipo_item,');
      q_datatable.sql.add('codigo_barras,');
      q_datatable.sql.add('tributacao,');
      q_datatable.sql.add('un)');
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
      q_datatable.sql.add(' :codigo_barras, ');
      q_datatable.sql.add(':tributacao,');
      q_datatable.sql.add(':un)');
      q_datatable.ParamByName('cod_fornecedor').Value:= combo_md_fornecedor.KeyValue;
      q_datatable.ParamByName('cod_grupo').Value:=combo_md_grupo.KeyValue;
      q_datatable.ParamByName('cod_item').AsString:=edit_md_cod_item.Text;
      q_datatable.ParamByName('cod_marca').Value:=combo_md_marca_item.KeyValue;
      q_datatable.ParamByName('comprimento').AsFloat:= strtofloat(IFNULL(edit_md_comp_item.Text));
      q_datatable.ParamByName('descricao').AsString:=edit_md_descricao.Text;
      q_datatable.ParamByName('ncm').AsString:= edit_md_ncm_item.Text;
      q_datatable.ParamByName('codigo_barras').AsString := edit_md_cod_barras.Text;
      q_datatable.ParamByName('preco_venda').AsFloat:= strtofloat(IFNULL(edit_md_preco_venda.Text));
      q_datatable.ParamByName('tipo_item').AsString:='E';
      q_datatable.ParamByName('tributacao').Value:=combo_tributacao_item.SelectedValue;
      q_datatable.ParamByName('un').Value:=combo_md_un_item.SelectedValue;
      q_datatable.ExecSQL;
       WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBPesquisaP").DataTable().ajax.reload();');

      addtoinitproc(swalSuccess('Confirma��o','Item Cadastrado com Sucesso!'));

      WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDPesquisaP2'').modal(''show'');');


  end;



end;

procedure TFormTabelas.BTN_FORNECEDORESAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDFornecedores'').modal(''show'');');
end;

procedure TFormTabelas.BTN_GRUPOSAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDGrupos'').modal(''show'');');
end;

procedure TFormTabelas.BTN_INCLUIR_FORAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDCadFornec'').modal(''show'');');
end;

procedure TFormTabelas.BTN_INCLUIR_GRUPOAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  edit_grupo.Text:='';
WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDIncluirGrupos'').modal(''show'');');
end;

procedure TFormTabelas.BTN_INCLUIR_ITEMAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  MODO_ITEM.Caption:='Inclus�o';
  ID_ITEM.Caption:='-1';


  edit_md_cod_item.Enabled             :=true;
  edit_md_cod_item.Repaint;
  edit_md_cod_item.Text                :='';
  edit_md_descricao.Text               :='';
  combo_md_fornecedor.Enabled          :=true;
  combo_md_fornecedor.ItemIndex        :=-1;
  combo_md_marca_item.ItemIndex        :=-1;
  combo_md_grupo.ItemIndex             :=-1;
  edit_md_preco_venda.Text             :='';
  combo_tributacao_item.ItemIndex      :=-1;
  combo_tipo_item.Enabled              :=true;
  combo_tipo_item.ItemIndex            :=-1;
  combo_origem_item.ItemIndex          :=-1;
  edit_md_comp_item.Text               :='';
  combo_md_un_item.ItemIndex           := -1;
  edit_md_ncm_item.Text                :='';









 WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDCadastroP'').modal(''show'');');
end;

procedure TFormTabelas.BTN_INCLUIR_LOCAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  edit_locacao.Text:='';
  edit_prateleira.Text:='';
  edit_lado.Text:='';
  combo_local_estoque.ItemIndex:=0;

WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDIncluirL'').modal(''show'');');
end;

procedure TFormTabelas.BTN_INC_LOCAISAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDCadLEstoque'').modal(''show'');');
end;

procedure TFormTabelas.BTN_INC_MARCASAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
 WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDCadMarcas'').modal(''show'');');
end;

procedure TFormTabelas.BTN_LESTOQUEAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDLEstoque'').modal(''show'');');
end;

procedure TFormTabelas.BTN_LOCACOESAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDLocacoes'').modal(''show'');');
end;

procedure TFormTabelas.BTN_PESQUISARPAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDPesquisaP2'').modal(''show'');');
end;

procedure TFormTabelas.BTN_SALVAR_LOCAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  if combo_local_estoque.ItemIndex < 0 then
  begin
    addtoinitproc(swalAlert('Alerta','Por favor Selecione um local do estoque'));
  end
  else
  begin
    try
    q_datatable.Close;
    q_datatable.SQL.Clear;
    q_datatable.sql.add('insert into cadastro_locacao');
    q_datatable.sql.add('(cod_empresa, cod_local_estoque, id, lado, locacao, prateleira)');
    q_datatable.sql.add('values');
    q_datatable.sql.add('(:cod_empresa, :cod_local_estoque, seq_controle_locacao.nextval, :lado, :locacao, :prateleira)');
    q_datatable.ParamByName('cod_empresa').AsInteger:=controller.xcod_empresa;
    q_datatable.ParamByName('cod_local_estoque').Value    := combo_local_estoque.KeyValue;
    q_datatable.ParamByName('lado').AsString              :=edit_lado.Text;
    q_datatable.ParamByName('locacao').AsString           :=edit_locacao.Text;
    q_datatable.ParamByName('prateleira').AsString        :=edit_prateleira.Text;
    q_datatable.ExecSQL;
    edit_locacao.Text:='';
    edit_lado.Text:='';
    edit_prateleira.Text:='';
    addtoinitproc(swalSuccess('Confirma��o','Loca��o cadastrada com sucesso!'));


    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBLocacoes").DataTable().ajax.reload();');

    except

     on e:exception do
     begin

       addtoinitproc(swalError('Erro',e.Message));


     end;


    end;

  end;


end;

function TFormTabelas.ifnull(campo: string): string;
begin
if campo='' then
  begin
    result:='0';
  end
  else
  result:=campo;
end;

procedure TFormTabelas.IWAppFormCreate(Sender: TObject);
begin
  inherited;
RegisterCallBack('TBGrupos', TBGrupos);
RegisterCallBack('TBLocacoes', TBLocacoes);
RegisterCallBack('TBPesquisaP', TBPesquisaP);
RegisterCallBack('TBFornecedores', TBFornecedores);
RegisterCallBack('TBMarcas', TBMarcas);
RegisterCallBack('TBLEstoque', TBLEstoque);
end;

procedure TFormTabelas.IWAppFormShow(Sender: TObject);
begin
  inherited;
q_local_estoque.Close;
q_local_estoque.ParamByName('cod_empresa').AsInteger:= controller.xcod_empresa;
q_local_estoque.Open();

q_fornecedor.Close;
q_fornecedor.Open();
q_marca_itens.Close;
q_marca_itens.Open();
q_grupos.Close;
q_grupos.Open();

end;

procedure TFormTabelas.IWBTNACAOAsyncClick(Sender: TObject;
  EventParams: TStringList);
  VAR
  ID : STRING;
begin
  inherited;
  //DeleL
  //EditI
  //EXCFO
  //DeleG  Deleta grupos
  //EXCMA  Deleta marcas
  //EXCLE  Deleta Local Estoque

     if copy(iwacao.Text, 1, 5) = 'EXCLE' then
  begin
    id := copy(iwacao.Text, 6, Length(iwacao.Text));


       q_geral.Close;
       q_geral.sql.clear;
       q_geral.SQL.Add(' delete from local_estoque where cod_local=' + id);
       q_geral.ExecSQL;
       swalSuccess('Confirma��o','Local exclu�do com sucesso!');
       WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBLEstoque").DataTable().ajax.reload();');



  end;

    if copy(iwacao.Text, 1, 5) = 'EXCMA' then
  begin
    id := copy(iwacao.Text, 6, Length(iwacao.Text));


       q_geral.Close;
       q_geral.sql.clear;
       q_geral.SQL.Add(' delete from marcas where cod_marca=' + id);
       q_geral.ExecSQL;
       swalSuccess('Confirma��o','Marca exclu�da com sucesso!');
       WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBMarcas").DataTable().ajax.reload();');



  end;

    if copy(iwacao.Text, 1, 5) = 'DeleG' then
  begin
    id := copy(iwacao.Text, 6, Length(iwacao.Text));


       q_geral.Close;
       q_geral.sql.clear;
       q_geral.SQL.Add(' delete from itens_grupo where cod_grupo=' + id);
       q_geral.ExecSQL;
       addtoinitproc(swalSuccess('Confirma��o','Grupo exclu�do com sucesso!'));
       WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBGrupos").DataTable().ajax.reload();');



  end;

   if copy(iwacao.Text, 1, 5) = 'EXCFO' then
  begin
    id := copy(iwacao.Text, 6, Length(iwacao.Text));


       q_geral.Close;
       q_geral.sql.clear;
       q_geral.SQL.Add(' delete from fornecedor_estoque where cod_fornecedor=' + id);
       q_geral.ExecSQL;
       addtoinitproc(swalSuccess('Confirma��o','Fornecedor exclu�do com sucesso!'));
       WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBFornecedores").DataTable().ajax.reload();');



  end;
    if copy(iwacao.Text, 1, 5) = 'EditI' then
  begin
    id := copy(iwacao.Text, 6, Length(iwacao.Text));






      edit_md_cod_item.Enabled             :=false;
      edit_md_cod_item.Repaint;
      combo_md_fornecedor.Enabled          :=false;
      combo_tipo_item.Enabled              :=false;



     WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDCadastroP'').modal(''show'');');


    q_datatable.Close;
    q_datatable.SQL.Clear;
    q_datatable.sql.add('');
    q_datatable.sql.add('select m.descricao  as marca,');
    q_datatable.sql.add('ig.descricao as grupo,');
    q_datatable.sql.add('fe.descricao as fornecedor,');
    q_datatable.sql.add('I.*');
    q_datatable.sql.add('from itens i, marcas m, itens_grupo ig, fornecedor_estoque fe');
    q_datatable.sql.add('where i.cod_marca = m.cod_marca');
    q_datatable.sql.add('and i.cod_grupo = ig.cod_grupo');
    q_datatable.sql.add('and i.cod_fornecedor = fe.cod_fornecedor');
    q_datatable.sql.add('and i.id= :id ');
    q_datatable.ParamByName('id').AsInteger:= strtoint(id);
    q_datatable.Open();


    edit_md_cod_item.Text    := q_datatable.FieldByName('cod_item').AsString;
    edit_md_descricao.Text   :=  q_datatable.FieldByName('descricao').AsString;
    edit_md_comp_item.Text   := q_datatable.FieldByName('comprimento').AsString;
    edit_md_ncm_item.Text    := q_datatable.FieldByName('ncm').AsString ;
    edit_md_preco_venda.Text := q_datatable.FieldByName('preco_venda').AsString;
    ID_ITEM.Caption          := q_datatable.FieldByName('id').AsString;
    edit_md_cod_barras.Text  := q_datatable.FieldByName('codigo_barras').AsString;
    MODO_ITEM.Caption        := 'Altera��o';

    if q_datatable.FieldByName('un').AsString='MT' then
    begin
    //Metro=MT
    combo_md_un_item.ItemIndex:=0;
    end;

    if q_datatable.FieldByName('un').AsString='DC' then
    begin
    //Dec�metro=DC
    combo_md_un_item.ItemIndex:=1;
    end;

    if q_datatable.FieldByName('un').AsString='CM' then
    begin
    //Cent�metro=CM
    combo_md_un_item.ItemIndex:=2;
    end;

     if q_datatable.FieldByName('un').AsString='MM' then
    begin
    //Mil�metro=MM
    combo_md_un_item.ItemIndex:=3;
    end;


    if (q_datatable.FieldByName('origem').AsString='0') or
        (q_datatable.FieldByName('origem').AsString ='') then
      begin

      combo_origem_item.ItemIndex:=0;
      end
      else
      begin
       combo_origem_item.ItemIndex:=1;
      end;


       if (q_datatable.FieldByName('tributacao').AsString='1') then
      begin

       combo_tributacao_item.ItemIndex:=0;
      end  ;
        if (q_datatable.FieldByName('tributacao').AsString='2') then
      begin

       combo_tributacao_item.ItemIndex:=1;
      end  ;
        if (q_datatable.FieldByName('tributacao').AsString='3') then
      begin

       combo_tributacao_item.ItemIndex:=2;
      end  ;

      combo_md_fornecedor.KeyValue := q_datatable.FieldByName('cod_fornecedor').Value;
      combo_md_marca_item.KeyValue := q_datatable.FieldByName('cod_marca').Value;
      combo_md_grupo.KeyValue      := q_datatable.FieldByName('cod_grupo').Value;

      if q_datatable.FieldByName('tipo_item').AsString='E' then
      begin
        combo_tipo_item.ItemIndex:=0;
      end
      else
      begin
        combo_tipo_item.ItemIndex:=1;
      end;












  end;

  if copy(iwacao.Text, 1, 5) = 'DeleL' then
  begin
    id := copy(iwacao.Text, 6, Length(iwacao.Text));


       q_geral.Close;
       q_geral.sql.clear;
       q_geral.SQL.Add(' delete from cadastro_locacao where id=' + id);
       q_geral.ExecSQL;
       addtoinitproc(swalSuccess('Confirma��o','Loca��o exclu�da com sucesso!'));
       WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBLocacoes").DataTable().ajax.reload();');



  end;


if copy(iwacao.Text, 1, 5) = 'DeleG' then
  begin
    id := copy(iwacao.Text, 6, Length(iwacao.Text));


       q_geral.Close;
       q_geral.sql.clear;
       q_geral.SQL.Add(' delete from itens_grupo where cod_grupo=' + id);
       q_geral.ExecSQL;
       addtoinitproc(swalSuccess('Confirma��o','Grupo exclu�do com sucesso!'));
       WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBGrupos").DataTable().ajax.reload();');



  end;
end;

procedure TFormTabelas.BTN_MARCASAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDMarcas'').modal(''show'');');
end;

procedure TFormTabelas.TBFornecedores(aParams: TStrings; out aResult: string);
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
  q_datatable.SQL.Add(' from fornecedor_estoque   ');
  q_datatable.SQL.Add(' where 1=1  ');

  q_datatable.SQL.Add('and ( descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');
  q_datatable.SQL.Add('      OR  cod_fornecedor like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

//  q_datatable.SQL.Add('      OR  cod_empresa like ''%' +
//    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
//    [rfReplaceAll]) + '%''  ');
//
//  q_datatable.SQL.Add('      OR   ncm like ''%' +
//
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
  q_datatable.sql.add('select cod_fornecedor,descricao from fornecedor_estoque');

  q_datatable.SQL.Add(' where   1=1   ');

  q_datatable.SQL.Add('and ( descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.SQL.Add('      OR  cod_fornecedor like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

//    q_datatable.SQL.Add('      OR  fornecedor like ''%' +
//    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
//    [rfReplaceAll]) + '%''  ');

//  q_datatable.SQL.Add('      OR  ncm like ''%' +
//    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
//    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.SQL.Add('Order by cod_fornecedor ' + aParams.Values
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

    id := q_datatable.FieldByName('cod_fornecedor').AsString;


    btn1 := '"<button type=\"buttom\" class=\"btn btn-xs btn-danger\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Excluir\"  onclick=\"SetaAcao(''EXCFO'''
      + ',' + id + ')\" > <i class=\"fa fa-trash\"> </i> </button>" ';

    btn2 := '<button type=\"buttom\" class=\"btn btn-xs btn-warning\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Editar\" onclick=\"SetaAcao(''EditI'''
      + ',' + id + ')\" > <i class=\"fa fa-pencil\"> </i> </button> "';
    btn3 := '<button type=\"buttom\" class=\"btn btn-xs btn-info\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aprovar Operador\" onclick=\"SetaAcao(''aprOp'''
      + ',' + id + ')\"> <i class=\"fa fa-thumbs-o-up\"> </i> </button> ';

    btn4 := '<button type=\"buttom\" class=\"btn btn-xs btn-default\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Gerar proposta no NBS\" onclick=\"SetaAcao(''ExcDo'''
      + ',' + id + ')\"> <i class=\"fa fa-database\"> </i> </button> "';

    //
    wresult := wresult + '[' + '"' +
      stringreplace(Trim(q_datatable.FieldByName('cod_fornecedor').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('descricao').AsString),
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

procedure TFormTabelas.TBGrupos(aParams: TStrings; out aResult: string);
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
  q_datatable.SQL.Add(' from itens_grupo   ');
  q_datatable.SQL.Add(' where 1=1  ');



  q_datatable.SQL.Add('and ( cod_grupo like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');
  q_datatable.SQL.Add('      OR  descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ) ');

//  q_datatable.SQL.Add('      OR  cod_empresa like ''%' +
//    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
//    [rfReplaceAll]) + '%'' ) ');

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
  q_datatable.sql.add(' select cod_grupo ,descricao from itens_grupo where 1=1 ');



  q_datatable.SQL.Add('and ( cod_grupo like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.SQL.Add('      OR  descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

//    q_datatable.SQL.Add('      OR  fornecedor like ''%' +
//    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
//    [rfReplaceAll]) + '%''  ');

//  q_datatable.SQL.Add('      OR  cod_empresa like ''%' +
//    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
//    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.SQL.Add('Order by cod_grupo ' + aParams.Values
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

    id := q_datatable.FieldByName('cod_grupo').AsString;


    btn1 := '"<button type=\"buttom\" class=\"btn btn-xs btn-danger\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Deletar\"  onclick=\"SetaAcao(''DeleG'''
      + ',' + quotedstr(id) + ')\" > <i class=\"fa fa-trash\"> </i> </button>" ';

    btn2 := '<button type=\"buttom\" class=\"btn btn-xs btn-warning\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Editar\" onclick=\"SetaAcao(''EditI'''
      + ',' + id + ')\" > <i class=\"fa fa-pencil\"> </i> </button> "';
    btn3 := '<button type=\"buttom\" class=\"btn btn-xs btn-info\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aprovar Operador\" onclick=\"SetaAcao(''aprOp'''
      + ',' + id + ')\"> <i class=\"fa fa-thumbs-o-up\"> </i> </button> ';

    btn4 := '<button type=\"buttom\" class=\"btn btn-xs btn-default\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Gerar proposta no NBS\" onclick=\"SetaAcao(''ExcDo'''
      + ',' + id + ')\"> <i class=\"fa fa-database\"> </i> </button> "';

    //
    wresult := wresult + '[' + '"' +
      stringreplace(Trim(q_datatable.FieldByName('cod_grupo').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('descricao').AsString),
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

procedure TFormTabelas.TBLEstoque(aParams: TStrings; out aResult: string);
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
  q_datatable.SQL.Add(' from local_estoque   ');
  q_datatable.SQL.Add(' where cod_empresa=  ' + inttostr(controller.xcod_empresa) );

  q_datatable.SQL.Add('and ( descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');
  q_datatable.SQL.Add('      OR  cod_local like ''%' +
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
  q_datatable.sql.add('select cod_local,descricao from local_estoque');

  q_datatable.SQL.Add(' where   cod_empresa= '+ inttostr(controller.xcod_empresa));

  q_datatable.SQL.Add('and ( descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.SQL.Add('      OR  cod_local like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');



  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.SQL.Add('Order by cod_local ' + aParams.Values
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

    id := q_datatable.FieldByName('cod_local').AsString;


    btn1 := '"<button type=\"buttom\" class=\"btn btn-xs btn-danger\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Excluir\"  onclick=\"SetaAcao(''EXCLE'''
      + ',' + id + ')\" > <i class=\"fa fa-trash\"> </i> </button>" ';

    btn2 := '<button type=\"buttom\" class=\"btn btn-xs btn-warning\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Editar\" onclick=\"SetaAcao(''EditI'''
      + ',' + id + ')\" > <i class=\"fa fa-pencil\"> </i> </button> "';
    btn3 := '<button type=\"buttom\" class=\"btn btn-xs btn-info\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aprovar Operador\" onclick=\"SetaAcao(''aprOp'''
      + ',' + id + ')\"> <i class=\"fa fa-thumbs-o-up\"> </i> </button> ';

    btn4 := '<button type=\"buttom\" class=\"btn btn-xs btn-default\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Gerar proposta no NBS\" onclick=\"SetaAcao(''ExcDo'''
      + ',' + id + ')\"> <i class=\"fa fa-database\"> </i> </button> "';

    //
    wresult := wresult + '[' + '"' +
      stringreplace(Trim(q_datatable.FieldByName('cod_local').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('descricao').AsString),
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

procedure TFormTabelas.TBLocacoes(aParams: TStrings; out aResult: string);
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



  q_datatable.sql.add('select count(*) as total');
  q_datatable.sql.add('from cadastro_locacao c, local_estoque l');
  q_datatable.sql.add('where c.cod_local_estoque = l.cod_local');
  q_datatable.sql.add('and c.cod_empresa = l.cod_empresa');
  q_datatable.sql.add('and c.cod_empresa = '+ inttostr(controller.xcod_empresa));





  q_datatable.SQL.Add('and ( l.descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');
  q_datatable.SQL.Add('      OR  c.locacao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ) ');

//  q_datatable.SQL.Add('      OR  cod_empresa like ''%' +
//    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
//    [rfReplaceAll]) + '%'' ) ');

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
   q_datatable.sql.add('select c.id,l.descricao as local, c.locacao, c.prateleira, c.lado');
   q_datatable.sql.add('from cadastro_locacao c, local_estoque l');
   q_datatable.sql.add('where c.cod_local_estoque = l.cod_local');
   q_datatable.sql.add('and c.cod_empresa = l.cod_empresa');
   q_datatable.sql.add('and c.cod_empresa = '+ inttostr(controller.xcod_empresa));




  q_datatable.SQL.Add('and ( l.descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.SQL.Add('      OR  c.locacao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

//    q_datatable.SQL.Add('      OR  fornecedor like ''%' +
//    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
//    [rfReplaceAll]) + '%''  ');

//  q_datatable.SQL.Add('      OR  cod_empresa like ''%' +
//    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
//    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.SQL.Add('Order by local ' + aParams.Values
        ['order[0][dir]'] + ' ');
    1:
      q_datatable.SQL.Add('Order by  c.locacao ' + aParams.Values
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


    btn1 := '"<button type=\"buttom\" class=\"btn btn-xs btn-danger\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Deletar\"  onclick=\"SetaAcao(''DeleL'''
      + ',' + quotedstr(id) + ')\" > <i class=\"fa fa-trash\"> </i> </button>" ';

    btn2 := '<button type=\"buttom\" class=\"btn btn-xs btn-warning\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Editar\" onclick=\"SetaAcao(''EditI'''
      + ',' + id + ')\" > <i class=\"fa fa-pencil\"> </i> </button> "';
    btn3 := '<button type=\"buttom\" class=\"btn btn-xs btn-info\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aprovar Operador\" onclick=\"SetaAcao(''aprOp'''
      + ',' + id + ')\"> <i class=\"fa fa-thumbs-o-up\"> </i> </button> ';

    btn4 := '<button type=\"buttom\" class=\"btn btn-xs btn-default\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Gerar proposta no NBS\" onclick=\"SetaAcao(''ExcDo'''
      + ',' + id + ')\"> <i class=\"fa fa-database\"> </i> </button> "';

    //
    wresult := wresult + '[' + '"' +
      stringreplace(Trim(q_datatable.FieldByName('local').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('locacao').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +



    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('prateleira').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +



    // Separador de colunas ------------------------------
     '"' + stringreplace(Trim(q_datatable.FieldByName('lado').AsString),
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

procedure TFormTabelas.TBMarcas(aParams: TStrings; out aResult: string);
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
  q_datatable.SQL.Add(' from marcas   ');
  q_datatable.SQL.Add(' where 1=1  ');

  q_datatable.SQL.Add('and ( descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');
  q_datatable.SQL.Add('      OR  cod_marca like ''%' +
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
  q_datatable.sql.add('select cod_marca,descricao from marcas');

  q_datatable.SQL.Add(' where   1=1   ');

  q_datatable.SQL.Add('and ( descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.SQL.Add('      OR  cod_marca like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');



  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.SQL.Add('Order by cod_marca ' + aParams.Values
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

    id := q_datatable.FieldByName('cod_marca').AsString;


    btn1 := '"<button type=\"buttom\" class=\"btn btn-xs btn-danger\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Excluir\"  onclick=\"SetaAcao(''EXCMA'''
      + ',' + id + ')\" > <i class=\"fa fa-trash\"> </i> </button>" ';

    btn2 := '<button type=\"buttom\" class=\"btn btn-xs btn-warning\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Editar\" onclick=\"SetaAcao(''EditI'''
      + ',' + id + ')\" > <i class=\"fa fa-pencil\"> </i> </button> "';
    btn3 := '<button type=\"buttom\" class=\"btn btn-xs btn-info\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aprovar Operador\" onclick=\"SetaAcao(''aprOp'''
      + ',' + id + ')\"> <i class=\"fa fa-thumbs-o-up\"> </i> </button> ';

    btn4 := '<button type=\"buttom\" class=\"btn btn-xs btn-default\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Gerar proposta no NBS\" onclick=\"SetaAcao(''ExcDo'''
      + ',' + id + ')\"> <i class=\"fa fa-database\"> </i> </button> "';

    //
    wresult := wresult + '[' + '"' +
      stringreplace(Trim(q_datatable.FieldByName('cod_marca').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('descricao').AsString),
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

procedure TFormTabelas.TBPesquisaP(aParams: TStrings; out aResult: string);
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
  q_datatable.sql.add('select id,cod_item,');
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

    id := q_datatable.FieldByName('id').AsString;


    btn1 := '"<button type=\"buttom\" class=\"btn btn-xs btn-success\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Editar\" data-dismiss=\"modal\" onclick=\"SetaAcao(''EditI'''
      + ',' + id + ')\" > <i class=\"fa fa-edit\"> </i> </button>" ';

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

end.