unit U_ControleFichas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FrmPadrao, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, IWCompButton, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, IWCompListbox, IWCompMemo,
  IWDBStdCtrls, IWBS4CustomControl, IWBS4CustomInput, IWBS4Input,
  IWCompTimeEdit,
  IWCompCheckbox, IWCompLabel;

type
  TControleFichas = class(TFrmPadrao)
    q_datatable: TFDQuery;
    q_geral: TFDQuery;
    combo_ficha_status: TIWComboBox;
    combo_vendedor: TIWDBLookupComboBox;
    q_vendedores: TFDQuery;
    ds_q_vendedores: TDataSource;
    q_funcao_vendedor_veic: TFDQuery;
    q_funcao_vendedor_veicCOD_GERENTE_VENDAS: TFMTBCDField;
    q_funcao_vendedor_veicCOD_SUPERVISOR_VEICULO: TFMTBCDField;
    q_funcao_vendedor_veicCOD_VENDEDOR_VEICULO: TFMTBCDField;
    combo_empresas: TIWDBLookupComboBox;
    q_empresas: TFDQuery;
    q_empresasCOD_EMPRESA: TFMTBCDField;
    q_empresasNOME: TStringField;
    ds_q_empresas: TDataSource;
    q_vendedoresVENDEDOR: TStringField;
    q_vendedoresNOME: TStringField;
    data_ini: TIWEdit;
    data_fim: TIWEdit;
    ck_data_ini: TIWCheckBox;
    ck_data_fim: TIWCheckBox;
    q_origens: TFDQuery;
    q_origensORIGEM: TStringField;
    ds_q_origens: TDataSource;
    combo_origens: TIWDBLookupComboBox;
    q_status_finan: TFDQuery;
    q_status_finanDESCRICAO: TStringField;
    q_status_finanID: TFMTBCDField;
    ds_q_status_finan: TDataSource;
    combo_status_finan: TIWDBLookupComboBox;
    lb_id: TIWLabel;
    combo_operador: TIWDBLookupComboBox;
    q_operadores: TFDQuery;
    q_operadoresCOD_EMPRESA: TFMTBCDField;
    q_operadoresNOME: TStringField;
    q_operadoresNOME_COMPLETO: TStringField;
    ds_q_operadores: TDataSource;
    combo_tipo: TIWComboBox;
    edit_proposta: TIWEdit;
    edit_id: TIWEdit;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWBTNACAOAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure combo_ficha_statusAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure IWAppFormShow(Sender: TObject);
    procedure combo_empresasAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure combo_vendedorAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure ck_data_iniAsyncChange(Sender: TObject; EventParams: TStringList);
    procedure ck_data_fimAsyncChange(Sender: TObject; EventParams: TStringList);
    procedure data_iniAsyncChange(Sender: TObject; EventParams: TStringList);
    procedure data_fimAsyncChange(Sender: TObject; EventParams: TStringList);
    procedure combo_origensAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure combo_status_finanAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure combo_operadorAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure combo_tipoAsyncChange(Sender: TObject; EventParams: TStringList);
  private
    procedure ControleF(aParams: TStrings; out aResult: string);
    procedure get_vendedores;

    procedure Historico(aParams: TStrings; out aResult: string);

    procedure TBPROPOSTA(aParams: TStrings; out aResult: string);
    { Private declarations }
  public
    { Public declarations }

    function get_operador(p_nome: string): boolean;
    function get_time_op(p_nome: string): boolean;

  end;

var
  ControleFichas: TControleFichas;

implementation

{$R *.dfm}

uses U_DM, System.AnsiStrings, SweetAlerts, ServerController;

procedure TControleFichas.ck_data_fimAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  if ck_data_fim.Checked then
  begin
    data_fim.Enabled := true;
  end
  else
  begin
    data_fim.Enabled := false;
    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#ControleF").DataTable().ajax.reload();');
  end;
end;

procedure TControleFichas.ck_data_iniAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  if ck_data_ini.Checked then
  begin
    data_ini.Enabled := true;
  end
  else
  begin
    data_ini.Enabled := false;
    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#ControleF").DataTable().ajax.reload();');
  end;

end;

procedure TControleFichas.combo_empresasAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  get_vendedores;
  WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$("#ControleF").DataTable().ajax.reload();');

end;

procedure TControleFichas.combo_ficha_statusAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$("#ControleF").DataTable().ajax.reload();');
end;

procedure TControleFichas.combo_operadorAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$("#ControleF").DataTable().ajax.reload();');
end;

procedure TControleFichas.combo_origensAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$("#ControleF").DataTable().ajax.reload();');
end;

procedure TControleFichas.combo_status_finanAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$("#ControleF").DataTable().ajax.reload();');
end;

procedure TControleFichas.combo_tipoAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$("#ControleF").DataTable().ajax.reload();');
end;

procedure TControleFichas.combo_vendedorAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$("#ControleF").DataTable().ajax.reload();');
end;

procedure TControleFichas.ControleF(aParams: TStrings; out aResult: string);
var
  wresult: string;
  wtotal: Integer;
  btn1: string;
  btn2: string;
  btn3: string;
  btn4: string;
  ID: string;
  celula: string;
  v_origens: string;
begin

  //
  // Pegar o total de registros da tabela para montagem da pagina��o e o info no rodap� do datatable
  //
  q_datatable.Close;
  q_datatable.sql.Clear;

  q_datatable.sql.Add(' select count(*) as total  ');
  q_datatable.sql.Add(' from wc_simulacao_venda   ');
  q_datatable.sql.Add(' where  1=1 and rascunho=''N'' ');

  q_datatable.sql.Add('and ( id like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.sql.Add('      OR  nome_cliente like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');


  // Todos=T

  if combo_ficha_status.SelectedValue = 'AC' then
  begin
    q_datatable.sql.Add('  and  operador is  null ');
    q_datatable.sql.Add('  and  acessorios is not  null ');
  end;

  if combo_tipo.ItemIndex.ToString <> '-1' then
  begin
    q_datatable.sql.Add(' and  tipo= ' + quotedstr(combo_tipo.SelectedValue));
  end;

  if (combo_operador.ItemIndex.ToString <> '-1') and
    (combo_operador.Text <> 'Todos') then
  begin

    q_datatable.sql.Add(' and  fin_analista_credito= ' +
      quotedstr(combo_operador.KeyValue));

  end;


  // Aprovado TODOS=AT

  if combo_status_finan.ItemIndex.ToString <> '-1' then
  begin

    q_datatable.sql.Add(' and  fin_status= ' +
      quotedstr(combo_status_finan.KeyValue));

  end;

  if combo_ficha_status.SelectedValue = 'G' then
  begin
    q_datatable.sql.Add(' and  gerente is  null ');
  end;
  if combo_ficha_status.SelectedValue = 'O' then
  begin
    q_datatable.sql.Add('  and  operador is  null ');
  end;

  if combo_ficha_status.SelectedValue = 'A' then
  begin
    q_datatable.sql.Add('  and  acessorios is  null ');
  end;
  if combo_ficha_status.SelectedValue = 'S' then
  begin
    q_datatable.sql.Add('  and acessorios is  null ');
    q_datatable.sql.Add('  and operador is  null ');
    q_datatable.sql.Add('  and  gerente is  null ');
  end;

  if combo_ficha_status.SelectedValue = 'GO' then
  begin
    q_datatable.sql.Add('  and acessorios is  null ');
    q_datatable.sql.Add('  and  operador is not  null ');
    q_datatable.sql.Add('  and gerente is not  null ');
  end;
  if combo_ficha_status.SelectedValue = 'AT' then
  begin
    q_datatable.sql.Add('  and acessorios is not null ');
    q_datatable.sql.Add('  and  operador is not  null ');
    q_datatable.sql.Add('  and  gerente is not  null ');
  end;

  if combo_empresas.Text <> 'Todas' then
  begin
    q_datatable.sql.Add('  and  cod_empresa = ' + combo_empresas.KeyValue);
  end;

  if combo_vendedor.KeyValue <> 'Todos' then
  begin
    if combo_vendedor.KeyValue <> '-1' then
    begin
      q_datatable.sql.Add('  and  vendedor = ' +
        quotedstr(combo_vendedor.KeyValue));
    end;
  end;

  if ck_data_ini.Checked then
  begin
    q_datatable.sql.Add('  and  data_inclusao>= ' + quotedstr(data_ini.Text));
  end;

  if ck_data_fim.Checked then
  begin
    q_datatable.sql.Add('  and  data_inclusao< ' +
      quotedstr(datetostr((strtodate(data_fim.Text) + 1))));
  end;

  if q_origens.RecordCount > 0 then
  begin

    if combo_origens.ItemIndex.ToString <> '-1' then
    begin

      q_datatable.sql.Add(' and origem=' + quotedstr(combo_origens.Text))

    end
    else
    begin

      q_origens.First;
      v_origens := '';
      while not q_origens.Eof do
      begin

        v_origens := v_origens + quotedstr(q_origensORIGEM.AsString) + ',';

        q_origens.Next;
      end;

      v_origens := copy(v_origens, 1, v_origens.Length - 1);
      v_origens := '(' + v_origens + ')';

      q_datatable.sql.Add(' and origem in ' + v_origens);

    end;

  end
  else
  begin
    q_datatable.sql.Add(' and origem=' + quotedstr(combo_origens.Text))
  end;

  q_datatable.FetchOptions.RecsMax := -1;
  q_datatable.FetchOptions.RecsSkip := -1;

  q_datatable.Open;

  wtotal := q_datatable.FieldByName('total').AsInteger;

  //
  // Select para montar o resultado do ajax na solicitacao do DATATABLE
  //
  q_datatable.Close;
  q_datatable.sql.Clear;
  q_datatable.sql.Add('select a.id,');
  q_datatable.sql.Add('a.gerente,');
  q_datatable.sql.Add('a.operador,');
  q_datatable.sql.Add('a.cod_cliente,');
  q_datatable.sql.Add('a.cod_empresa,');
  q_datatable.sql.Add('a.vendedor,');
  q_datatable.sql.Add('a.nome_cliente,');
  q_datatable.sql.Add('a.data_inclusao,');
  q_datatable.sql.Add('a.data_ap_gerente,');
  q_datatable.sql.Add('a.fin_status,');
  q_datatable.sql.Add('a.fin_banco,');
  q_datatable.sql.Add('a.fin_analista_credito,');
  q_datatable.sql.Add('a.cod_empresa as empresa,');
  q_datatable.sql.Add('a.data_ap_operador,');
  q_datatable.sql.Add('a.data_aprovacao_acess,');
  q_datatable.sql.Add('a.cod_proposta,');
  q_datatable.sql.Add('a.origem, ');

  q_datatable.sql.Add('( select');
  q_datatable.sql.Add('');
  q_datatable.sql.Add('case');
  q_datatable.sql.Add('when vp.status_proposta = ''V'' then');
  q_datatable.sql.Add('''Faturada''');
  q_datatable.sql.Add('when vp.status_proposta = ''C'' then');
  q_datatable.sql.Add('''Cancelada''');
  q_datatable.sql.Add('when vp.status_proposta = ''A'' then');
  q_datatable.sql.Add('''Aberta''');
  q_datatable.sql.Add('');
  q_datatable.sql.Add('end status');
  q_datatable.sql.Add('');
  q_datatable.sql.Add('from veiculos_propostas vp');
  q_datatable.sql.Add('where cod_proposta = a.cod_proposta');
  q_datatable.sql.Add('and cod_empresa = a.cod_empresa');
  q_datatable.sql.Add(') status_proposta');

  q_datatable.sql.Add('from wc_simulacao_venda a');
  q_datatable.sql.Add(' where   1=1 and rascunho=''N'' ');

  q_datatable.sql.Add('and ( id like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.sql.Add('      OR  nome_cliente like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  if combo_ficha_status.SelectedValue = 'AC' then
  begin
    q_datatable.sql.Add('  and  operador is  null ');
    q_datatable.sql.Add('  and  acessorios is not  null ');
  end;

  if combo_tipo.ItemIndex.ToString <> '-1' then
  begin
    q_datatable.sql.Add(' and  tipo= ' + quotedstr(combo_tipo.SelectedValue));
  end;

  if (combo_operador.ItemIndex.ToString <> '-1') and
    (combo_operador.Text <> 'Todos') then
  begin

    q_datatable.sql.Add(' and  fin_analista_credito= ' +
      quotedstr(combo_operador.KeyValue));

  end;

  if combo_status_finan.ItemIndex.ToString <> '-1' then
  begin

    q_datatable.sql.Add(' and  fin_status= ' +
      quotedstr(combo_status_finan.KeyValue));
  end;

  if combo_ficha_status.SelectedValue = 'G' then
  begin
    q_datatable.sql.Add(' and  gerente is  null ');
  end;
  if combo_ficha_status.SelectedValue = 'O' then
  begin
    q_datatable.sql.Add('  and  operador is  null ');
  end;
  if combo_ficha_status.SelectedValue = 'A' then
  begin
    q_datatable.sql.Add('  and  acessorios is null ');
  end;
  if combo_ficha_status.SelectedValue = 'S' then
  begin
    q_datatable.sql.Add('  and acessorios is  null ');
    q_datatable.sql.Add('  and operador is  null ');
    q_datatable.sql.Add('  and  gerente is  null ');
  end;

  if combo_ficha_status.SelectedValue = 'GO' then
  begin
    q_datatable.sql.Add('  and acessorios is  null ');
    q_datatable.sql.Add('  and  operador is not  null ');
    q_datatable.sql.Add('  and gerente is not  null ');
  end;
  if combo_ficha_status.SelectedValue = 'AT' then
  begin
    q_datatable.sql.Add('  and acessorios is not null ');
    q_datatable.sql.Add('  and  operador is not  null ');
    q_datatable.sql.Add('  and  gerente is not  null ');
  end;

  if combo_empresas.Text <> 'Todas' then
  begin
    q_datatable.sql.Add('  and  cod_empresa = ' + combo_empresas.KeyValue);
  end;

  if combo_vendedor.KeyValue <> 'Todos' then
  begin
    if combo_vendedor.KeyValue <> '-1' then
    begin
      q_datatable.sql.Add('  and  vendedor = ' +
        quotedstr(combo_vendedor.KeyValue));
    end;
  end;

  if ck_data_ini.Checked then
  begin
    q_datatable.sql.Add('  and  data_inclusao>= ' + quotedstr(data_ini.Text));
  end;

  if ck_data_fim.Checked then
  begin
    q_datatable.sql.Add('  and  data_inclusao< ' +
      quotedstr(datetostr((strtodate(data_fim.Text) + 1))));
  end;

  if q_origens.RecordCount > 0 then
  begin

    if combo_origens.ItemIndex.ToString <> '-1' then
    begin

      q_datatable.sql.Add(' and origem=' + quotedstr(combo_origens.Text))

    end
    else
    begin

      q_origens.First;
      v_origens := '';
      while not q_origens.Eof do
      begin

        v_origens := v_origens + quotedstr(q_origensORIGEM.AsString) + ',';

        q_origens.Next;
      end;

      v_origens := copy(v_origens, 1, v_origens.Length - 1);
      v_origens := '(' + v_origens + ')';

      q_datatable.sql.Add(' and origem in ' + v_origens);

    end;

  end
  else
  begin
    q_datatable.sql.Add(' and origem=' + quotedstr(combo_origens.Text))
  end;

  q_datatable.sql.Add('order by data_inclusao,data_ap_operador ');

  // definindo a ordena��o
  // case aParams.Values['order[0][column]'].ToInteger of
  // 0:
  // q_datatable.sql.Add('Order by id ' + aParams.Values
  // ['order[0][dir]'] + ' ');
  // 3:
  // q_datatable.sql.Add('Order by  data_inclusao ' + aParams.Values
  // ['order[0][dir]'] + ' ');

  // end;

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

    ID := q_datatable.FieldByName('id').AsString;

    // btn1 := '"<button type=\"buttom\" class=\"btn btn-xs btn-default\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Detalhe da Ficha\" onclick=\"SetaAcao(''ShowF'''
    // + ',' + ID + ')\" > <i class=\"fa fa-building-o\"> </i> </button> ';
    //
    // btn2 := '<button type=\"buttom\" class=\"btn btn-xs btn-success\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aprovar Gerente\" onclick=\"SetaAcao(''aprGe'''
    // + ',' + ID + ')\" > <i class=\"fa fa-thumbs-o-up\"> </i> </button> ';
    // btn3 := '<button type=\"buttom\" class=\"btn btn-xs btn-info\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aprovar Operador\" onclick=\"SetaAcao(''aprOp'''
    // + ',' + ID + ')\"> <i class=\"fa fa-thumbs-o-up\"> </i> </button> ';
    //
    // btn4 := '<button type=\"buttom\" class=\"btn btn-xs btn-default\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Gerar proposta no NBS\" onclick=\"SetaAcao(''ExcDo'''
    // + ',' + ID + ')\"> <i class=\"fa fa-database\"> </i> </button> "';

    // ------------
    // Pinta celula

    q_geral.Close;
    q_geral.sql.Clear;
    q_geral.sql.Add('select cor');
    q_geral.sql.Add('from WC_STATUS_FINAN');
    q_geral.sql.Add('where descricao =');
    q_geral.sql.Add('(');
    q_geral.sql.Add('');
    q_geral.sql.Add
      ('select a.fin_status from wc_simulacao_venda a where id = :id )');
    q_geral.ParamByName('id').AsString := ID;
    q_geral.Open();
    celula := '';

    if q_geral.FieldByName('cor').AsString = 'primary' then
    begin
      celula := ' <span class=\"label label-primary\">' +
        q_datatable.FieldByName('fin_status').AsString + '</span> ';
    end;

    if q_geral.FieldByName('cor').AsString = 'Info' then
    begin
      celula := ' <span class=\"label label-info\">' + q_datatable.FieldByName
        ('fin_status').AsString + '</span> ';
    end;

    if q_geral.FieldByName('cor').AsString = 'danger' then
    begin
      celula := ' <span class=\"label label-danger\">' + q_datatable.FieldByName
        ('fin_status').AsString + '</span> ';
    end;

    if q_geral.FieldByName('cor').AsString = 'warning' then
    begin
      celula := ' <span class=\"label label-warning\">' +
        q_datatable.FieldByName('fin_status').AsString + '</span> ';
    end;

    if q_geral.FieldByName('cor').AsString = 'success' then
    begin
      celula := ' <span class=\"label label-success\">' +
        q_datatable.FieldByName('fin_status').AsString + '</span> ';
    end;
    if q_geral.FieldByName('cor').AsString = '---' then
    begin
      celula := ' <span class=\"label label-default\">' +
        q_datatable.FieldByName('fin_status').AsString + '</span> ';
    end;





    // ------------

    btn1 := '   "<div class=\"btn-group\">' +
      '   <button type=\"button\" class=\"btn btn-default dropdown-toggle\" data-toggle=\"dropdown\"  '
      + '      aria-expanded=\"false\"> ' +
      '      <span class=\"caret\"></span> ' + '   </button> ' +
      '   <ul class=\"dropdown-menu\">  ' +
      ' <li><a onclick=\"SetaAcao(''ShowF''' + ',' + ID +
      ')\" > <i class=\"fa fa-edit (alias)\"></i> Editar Ficha </a></li> ' +
      ' <li><a onclick=\"SetaAcao(''FHIST''' + ',' + ID +
      ')\" > <i class=\"fa fa-history (alias)\"></i> Exibir Hist�rico </a></li> '
      + '   <li><a onclick=\"SetaAcao(''aprGe''' + ',' + ID +
      ')\" > <i class=\"fa fa-thumbs-o-up\"></i> Aprovar Gerente </a></li> ' +
      '   <li><a onclick=\"SetaAcao(''FDPGE''' + ',' + ID +
      ')\" > <i class=\"fa fa-thumbs-o-down\"></i> Desaprovar Gerente </a></li> '
      + ' <li><a onclick=\"SetaAcao(''FAPAC''' + ',' + ID +
      ')\" > <i class=\"fa fa-thumbs-o-up\"></i> Aprovar Acess�rios </a></li>  '
      + ' <li><a onclick=\"SetaAcao(''FDPAC''' + ',' + ID +
      ')\" > <i class=\"fa fa-thumbs-o-down\"></i> Desaprovar Acess�rios </a></li> '
      + ' <li><a onclick=\"SetaAcao(''FCAPF''' + ',' + ID +
      ')\" > <i class=\"fa fa-anchor\"></i>Capturar Ficha F&I </a></li> ' +
      ' <li><a onclick=\"SetaAcao(''aprOp''' + ',' + ID +
      ')\" > <i class=\"fa fa-thumbs-o-up\"></i> Aprovar F&I </a></li>  ' +
      '   <li><a onclick=\"SetaAcao(''FDPFI''' + ',' + ID +
      ')\" > <i class=\"fa fa-thumbs-o-down\"></i> Desaprovar F&I </a></li>  ' +
      '   <li><a onclick=\"SetaAcao(''FPNBS''' + ',' + ID +
      ')\" > <i class=\"fa fa-database\"></i> Cruzar Proposta NBS</a></li>   ' +
      '   <li><a onclick=\"SetaAcao(''FDPTO''' + ',' + ID +
      ')\" > <i class=\"fa fa-thumbs-down\"></i> Desaprovar Todos e Reabrir </a></li> '
      + ' <li><a onclick=\"SetaAcao(''FEXCL''' + ',' + ID +
      ')\" > <i class=\"fa  fa-trash\"></i> Excluir Ficha(N�o Aprovada)</a></li>   '
      + '   </ul>                                                                                                                  '
      + ' </div>"  ';

    //
    wresult := wresult + '[' + '"' +
      stringreplace(Trim(q_datatable.FieldByName('id').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      btn1 + ',' +

    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('nome_cliente')
      .AsString), '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('data_inclusao')
      .AsString), '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('data_ap_gerente')
      .AsString), '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
      '"' + stringreplace(Trim(q_datatable.FieldByName('data_aprovacao_acess')
      .AsString), '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('data_ap_operador')
      .AsString), '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + celula + '", ' + '"' + stringreplace
      (Trim(q_datatable.FieldByName('status_proposta').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('fin_banco').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('fin_analista_credito')
      .AsString), '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('vendedor').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
      '"' + stringreplace(Trim(q_datatable.FieldByName('origem').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
      '"' + stringreplace(Trim(q_datatable.FieldByName('cod_proposta')
      .AsString), '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('empresa').AsString),
      '"', '\"', [rfReplaceAll]) + '" ' +
    // Separador de colunas ------------------------------

      '],';

    q_datatable.Next;

  end;
  q_datatable.Close;

  if wtotal <= 0 then
    wresult := wresult + ']}'
  else
    wresult := LeftStr(Trim(wresult), Length(Trim(wresult)) - 1) + ']}';

  //
  // Envia o resultado para o ajax do DataTable
  aResult := wresult;

  // abco

end;

procedure TControleFichas.data_fimAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$("#ControleF").DataTable().ajax.reload();');
end;

procedure TControleFichas.data_iniAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$("#ControleF").DataTable().ajax.reload();');
end;

function TControleFichas.get_operador(p_nome: string): boolean;
begin

  q_operadores.First;
  result := false;

  while not q_operadores.Eof do
  begin

    if q_operadoresNOME.AsString = controller.xUsuario then
    begin
      combo_empresas.KeyValue := 0;
      get_vendedores;

      WebApplication.CallBackResponse.AddJavaScriptToExecute
        ('$("#ControleF").DataTable().ajax.reload();');

      combo_operador.KeyValue := controller.xUsuario;
      result := true;
      break;

    end;

    q_operadores.Next;

  end;

end;

function TControleFichas.get_time_op(p_nome: string): boolean;
var
  v_dias, v_horas, v_min, v_id: Integer;
begin

  q_geral.Close;
  q_geral.sql.Clear;

  q_geral.sql.Add('select nvl((select a.id');
  q_geral.sql.Add('from wc_simulacao_venda a');
  q_geral.sql.Add('where a.fin_analista_credito =  :op ');
  q_geral.sql.Add('and a.data_capitura_op is not null');
  q_geral.sql.Add('');
  q_geral.sql.Add('and a.data_capitura_op =');
  q_geral.sql.Add('(select max(data_capitura_op)');
  q_geral.sql.Add('from wc_simulacao_venda b');
  q_geral.sql.Add('where a.fin_analista_credito = :op )),');
  q_geral.sql.Add('0) as id');
  q_geral.sql.Add('from dual');

  q_geral.ParamByName('op').AsString := p_nome;

  q_geral.Open();

  v_id := q_geral.FieldByName('id').AsInteger;

  result := false;

  if v_id = 0 then
  begin

    result := true;

  end
  else
  begin
    q_geral.Close;
    q_geral.sql.Clear;
    q_geral.sql.Add
      ('select trunc(sysdate) - trunc(data_capitura_op) as dif_dias');
    q_geral.sql.Add('from wc_simulacao_venda');
    q_geral.sql.Add('where id = :id ');
    q_geral.ParamByName('id').AsInteger := v_id;
    q_geral.Open();

    v_dias := q_geral.FieldByName('dif_dias').AsInteger;

    if v_dias > 0 then
    begin

      result := true;
    end
    else
    begin
      q_geral.Close;
      q_geral.sql.Clear;
      q_geral.sql.Add('select to_number(to_char(sysdate, ''hh24'')) -');
      q_geral.sql.Add
        ('to_number(to_char(data_capitura_op, ''hh24'')) as dif_horas');
      q_geral.sql.Add('from wc_simulacao_venda');
      q_geral.sql.Add('where id = :id');

      q_geral.ParamByName('id').AsInteger := v_id;
      q_geral.Open();
      v_horas := q_geral.FieldByName('dif_horas').AsInteger;

      if v_horas > 0 then
      begin

        result := true;

      end
      else
      begin
        q_geral.Close;
        q_geral.sql.Clear;
        q_geral.sql.Add('select to_number(to_char(sysdate, ''MI'')) -');
        q_geral.sql.Add
          ('to_number(to_char(data_capitura_op, ''MI'')) as dif_min');
        q_geral.sql.Add('from wc_simulacao_venda');
        q_geral.sql.Add('where id = :id');
        q_geral.ParamByName('id').AsInteger := v_id;
        q_geral.Open();
        v_min := q_geral.FieldByName('dif_min').AsInteger;

        if v_min > 4 then
        begin
          result := true;
        end;

      end;

    end;

  end;

end;

procedure TControleFichas.get_vendedores;
begin
  q_empresas.Close;
  q_empresas.Open;
  q_geral.Close;
  q_geral.sql.Clear;
  q_geral.sql.Add
    ('select cod_empresa,nome from empresas_usuarios where nome= user');
  q_geral.Open();

  q_funcao_vendedor_veic.Close;
  q_funcao_vendedor_veic.ParamByName('cod_empresa').AsInteger :=
    combo_empresas.KeyValue;
  q_funcao_vendedor_veic.Open;

  q_vendedores.Close;
  q_vendedores.ParamByName('cod_gerente').AsInteger :=
    q_funcao_vendedor_veicCOD_GERENTE_VENDAS.AsInteger;
  q_vendedores.ParamByName('cod_supervisor').AsInteger :=
    q_funcao_vendedor_veicCOD_SUPERVISOR_VEICULO.AsInteger;
  q_vendedores.ParamByName('cod_vendedor').AsInteger :=
    q_funcao_vendedor_veicCOD_VENDEDOR_VEICULO.AsInteger;
  q_vendedores.Open;
  combo_vendedor.RefreshItems;
  combo_vendedor.KeyValue := q_geral.FieldByName('nome').AsString;
  combo_vendedor.NoSelectionText := 'Selecione um Vendedor';
end;

procedure TControleFichas.Historico(aParams: TStrings; out aResult: string);
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

  q_datatable.sql.Add('select data,');
  q_datatable.sql.Add('financiadora,');
  q_datatable.sql.Add('analista_credito,');
  q_datatable.sql.Add('status,');
  q_datatable.sql.Add('motivo_recusa,');
  q_datatable.sql.Add('a.valor_veiculo,');
  q_datatable.sql.Add('entrada,');
  q_datatable.sql.Add('valor_fin,');
  q_datatable.sql.Add('prazo,');
  q_datatable.sql.Add('parcela,');
  q_datatable.sql.Add('tabela,');
  q_datatable.sql.Add('coeficiente,');
  q_datatable.sql.Add('tipo_tabela,');
  q_datatable.sql.Add('valor_aumento_parc,');
  q_datatable.sql.Add('observacoes,');
  q_datatable.sql.Add('usuario,');
  q_datatable.sql.Add('despachante');
  q_datatable.sql.Add('from wc_sim_venda_finan a');
  q_datatable.sql.Add('');

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
      q_datatable.sql.Add('Order by data ' + aParams.Values
        ['order[0][dir]'] + ' ');
    1:
      q_datatable.sql.Add('Order by  financiadora ' + aParams.Values
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
    ID := '1';
    btn_alterar :=
      '"<button type=\"buttom\" class=\"btn btn-xs btn-success disabled\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Desativado\" onclick=\"SetaAcao(''DownD'''
      + ',' + ID + ' , ' +
      '''A'')\" > <i class=\"fa fa-history\"> </i> </button> ';
    btn_excluir :=
      '<button type=\"buttom\" class=\"btn btn-xs btn-danger disabled\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Desativado\" onclick=\"SetaAcao(''ExcDo'''
      + ',' + ID + ')\"> <i class=\"fa fa-history\"> </i> </button> "';

    //
    wresult := wresult + '[' + '"' +
      stringreplace(Trim(q_datatable.FieldByName('data').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('financiadora')
      .AsString), '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
      '"' + stringreplace(Trim(q_datatable.FieldByName('status').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('analista_credito')
      .AsString), '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('motivo_recusa')
      .AsString), '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('valor_veiculo')
      .AsString), '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('entrada').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('valor_fin').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('prazo').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('parcela').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('tabela').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('coeficiente').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +

      btn_alterar + btn_excluir + '],';

    q_datatable.Next;

  end;
  q_datatable.Close;

  if wtotal <= 0 then
    wresult := wresult + ']}'
  else
    wresult := LeftStr(Trim(wresult), Length(Trim(wresult)) - 1) + ']}';

  //
  // Envia o resultado para o ajax do DataTable
  aResult := wresult;

  // abco

  // aa

end;

procedure TControleFichas.IWAppFormCreate(Sender: TObject);
begin
  inherited;
  RegisterCallBack('ControleF', ControleF);
  RegisterCallBack('Historico', Historico);
  RegisterCallBack('TBPROPOSTA', TBPROPOSTA);

end;

procedure TControleFichas.IWAppFormShow(Sender: TObject);
begin
  inherited;
  q_empresas.Close;
  q_empresas.Open;
  q_geral.Close;
  q_geral.sql.Clear;
  q_geral.sql.Add
    ('select cod_empresa,nome from empresas_usuarios where nome= user');
  q_geral.Open();

  combo_empresas.KeyValue := q_geral.FieldByName('cod_empresa').AsString;

  get_vendedores;
  q_status_finan.Close;
  q_status_finan.Open();
  q_origens.Close;
  q_origens.Open();

  q_operadores.Close;
  q_operadores.Open();

  if get_operador(q_geral.FieldByName('nome').AsString) then
  begin

    combo_vendedor.KeyValue := 'Todos';

  end;

  if controller.get_acesso('WC0045') <> 0 then
  begin
    combo_vendedor.Enabled := true;
    combo_vendedor.KeyValue := 'Todos';

  end;

  if controller.get_acesso('WC0046') <> 0 then
  begin
    combo_empresas.Enabled := true;
  end;

end;

procedure TControleFichas.IWBTNACAOAsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  ID: string;
  v_acao: string;
begin
  inherited;
  // CRUZP

  // FDPNB
  v_acao := copy(iwacao.Text, 1, 5);

  if copy(iwacao.Text, 1, 5) = 'CRUZP' then // Cruzar proposta NBS
  begin
    if controller.get_acesso('WC0053') = 0 then
    begin

      AddToInitProc(swalAlert('Alerta', ' Acesso n�o permitido -WC0053 !!!'));
    end
    else
    begin
      ID := copy(iwacao.Text, 6, Length(iwacao.Text));
      // edit_proposta.Text := ID;

      q_geral.Close;
      q_geral.sql.Clear;
      q_geral.sql.Add
        ('update wc_simulacao_venda  set cod_proposta = :cod_proposta where id= :id ');
      q_geral.ParamByName('id').AsString := edit_id.Text;
      q_geral.ParamByName('cod_proposta').AsString := ID;
      q_geral.ExecSQL;
      AddToInitProc(swalSuccess('Confirma��o',
        ' Cruzamento efetuado com sucesso !!!'));

    end;

  end;

  if copy(iwacao.Text, 1, 5) = 'FPNBS' then // Cruzar proposta NBS
  begin
    if controller.get_acesso('WC0053') = 0 then
    begin

      AddToInitProc(swalAlert('Alerta', ' Acesso n�o permitido -WC0053 !!!'));
    end
    else
    begin
      ID := copy(iwacao.Text, 6, Length(iwacao.Text));

      edit_id.Text := ID;

      q_geral.Close;
      q_geral.sql.Clear;
      q_geral.sql.Add
        ('select cod_empresa from wc_simulacao_venda where id= :id');
      q_geral.ParamByName('id').AsString := ID;
      q_geral.Open();

      edit_proposta.Text := q_geral.FieldByName('cod_empresa').AsString;

      WebApplication.CallBackResponse.AddJavaScriptToExecute
        ('$("#TBPROPOSTA").DataTable().ajax.reload();');

      WebApplication.CallBackResponse.AddJavaScriptToExecute
        ('$(''#MProposta'').modal(''show'');');

    end;

  end;

  if copy(iwacao.Text, 1, 5) = 'FHIST' then // exclue documento
  begin
    if controller.get_acesso('WC0047') = 0 then
    begin

      AddToInitProc(swalAlert('Alerta', ' Acesso n�o permitido -WC0047 !!!'));
    end
    else
    begin
      ID := copy(iwacao.Text, 6, Length(iwacao.Text));
      lb_id.Caption := ID;

      WebApplication.CallBackResponse.AddJavaScriptToExecute
        ('$("#Historico").DataTable().ajax.reload();');

      WebApplication.CallBackResponse.AddJavaScriptToExecute
        ('$(''#MHistorico'').modal(''show'');');
    end;

  end;

  if copy(iwacao.Text, 1, 5) = 'ShowF' then // exclue documento
  begin
    ID := copy(iwacao.Text, 6, Length(iwacao.Text));
    controller.XidForm := ID;
    controller.AcaoMenu('SimularV');

  end;

  if copy(iwacao.Text, 1, 5) = 'FEXCL' then // exclue documento
  begin
    if controller.get_acesso('WC0031') = 0 then
    begin

      AddToInitProc(swalAlert('Alerta', ' Acesso n�o permitido -WC0031 !!!'));
    end
    else
    begin
      ID := copy(iwacao.Text, 6, Length(iwacao.Text));
      q_geral.Close;
      q_geral.sql.Clear;
      q_geral.sql.Text :=
        ' select a.data_ap_gerente,a.data_ap_operador,a.data_aprovacao_acess from wc_simulacao_venda a '
        + ' where id = ' + ID;
      q_geral.Open();

      if (q_geral.FieldByName('data_ap_gerente').AsString <> '') or
        (q_geral.FieldByName('data_ap_operador').AsString <> '') or
        (q_geral.FieldByName('data_aprovacao_acess').AsString <> '') then
      begin
        AddToInitProc(swalAlert('Alerta',
          '  ID: ' + ID + ', Com aprova��o, desaprove antes'));
      end
      else
      begin

        q_geral.Close;
        q_geral.sql.Clear;
        q_geral.sql.Add
          ('delete from wc_fin_documentos a where a.id_finan =' + ID);
        q_geral.ExecSQL;

        q_geral.Close;
        q_geral.sql.Clear;
        q_geral.sql.Add
          ('delete from wc_sim_venda_finan b where b.id_finan = ' + ID);
        q_geral.ExecSQL;

        q_geral.Close;
        q_geral.sql.Clear;
        q_geral.sql.Add('delete from wc_simulacao_venda c where c.id  = ' + ID);
        q_geral.ExecSQL;

        AddToInitProc(swalSuccess('Confirma��o',
          '  ID: ' + ID + ', Exclu�do  com sucesso !!!'));

        WebApplication.CallBackResponse.AddJavaScriptToExecute
          ('$("#ControleF").DataTable().ajax.reload();');
      end;
    end;

  end;

  // Aprova Gerente

  if copy(iwacao.Text, 1, 5) = 'aprGe' then
  begin
    if controller.get_acesso('WC0008') = 0 then
    begin

      AddToInitProc(swalAlert('Alerta', ' Acesso n�o permitido -WC0008 !!!'));
    end
    else
    begin

      ID := copy(iwacao.Text, 6, Length(iwacao.Text));

      q_geral.Close;
      q_geral.sql.Clear;
      q_geral.sql.Add
        ('select s_cod_fipe from wc_simulacao_venda  where id=' + ID);
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

        WebApplication.CallBackResponse.AddJavaScriptToExecute
          ('$("#ControleF").DataTable().ajax.reload();');
      end;
    end;

  end;

  // Desaprovar Gerente

  if copy(iwacao.Text, 1, 5) = 'FDPGE' then
  begin
    if controller.get_acesso('WC0033') = 0 then
    begin

      AddToInitProc(swalAlert('Alerta', ' Acesso n�o permitido -WC0033 !!!'));
    end
    else
    begin

      ID := copy(iwacao.Text, 6, Length(iwacao.Text));

      // Verifica se FI e Acessorios est�o aprovados
      q_geral.Close;
      q_geral.sql.Clear;
      q_geral.sql.Add
        ('select acessorios,operador from wc_simulacao_venda  where id=' + ID);
      q_geral.Open();

      if (q_geral.FieldByName('acessorios').AsString = '') and
        (q_geral.FieldByName('operador').AsString = '') then
      begin

        q_geral.Close;
        q_geral.sql.Clear;
        q_geral.sql.Add
          ('update   wc_simulacao_venda set gerente=null, data_ap_gerente=null  where id='
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
          q_geral.sql.Add(' UPDATE wc_simulacao_venda set acessorios=null, ');
          q_geral.sql.Add(' data_aprovacao_acess=null where id= :id');
          q_geral.ParamByName('id').AsString := ID;
          q_geral.ExecSQL;
        end;

        AddToInitProc(swalSuccess('Confirma��o', ' Desaprova��o Gerente: ' + ID
          + ', executada com sucesso !!!'));

        WebApplication.CallBackResponse.AddJavaScriptToExecute
          ('$("#ControleF").DataTable().ajax.reload();');
      end
      else
      begin
        AddToInitProc(swalAlert('Alerta',
          ' Desaprova��o necess�ria:Operador/Acess�rios '));
      end;
    end;

  end;

  // Capturar ficha F&I
  if copy(iwacao.Text, 1, 5) = 'FCAPF' then
  begin

    if controller.get_acesso('WC0040') = 0 then
    begin

      AddToInitProc(swalAlert('Alerta', ' Acesso n�o permitido -WC0040 !!!'));
    end
    else
    begin

      ID := copy(iwacao.Text, 6, Length(iwacao.Text));

      if get_time_op(controller.xUsuario) then
      begin

      q_geral.Close;
      q_geral.sql.Clear;
      q_geral.sql.Add
        ('update    wc_simulacao_venda a set a.fin_analista_credito = user, a.data_capitura_op=sysdate  where id='
        + ID);
      q_geral.ExecSQL;
      AddToInitProc(swalSuccess('Confirma��o',
        ' Ficha' + ID + ', Capturada com  sucesso !!!'));

      WebApplication.CallBackResponse.AddJavaScriptToExecute
        ('$("#ControleF").DataTable().ajax.reload();');
      end
      else
      begin

      AddToInitProc(swalAlert('Alerta',
        'N�o � poss�vel capturar outra ficha no momento, aguarde um instante e tente novamente'));
      end;

    end;

  end;

  // Aprovar F&I

  if copy(iwacao.Text, 1, 5) = 'aprOp' then
  begin

    if controller.get_acesso('WC0009') = 0 then
    begin

      AddToInitProc(swalAlert('Alerta', ' Acesso n�o permitido -WC0009 !!!'));
    end
    else
    begin

      ID := copy(iwacao.Text, 6, Length(iwacao.Text));

      q_geral.Close;
      q_geral.sql.Clear;
      q_geral.sql.Add('select 1 as qtde from wc_simulacao_venda ');
      q_geral.sql.Add('where data_ap_gerente is not null  ');
      q_geral.sql.Add('and id=  ' + ID);
      q_geral.Open();

      if q_geral.FieldByName('qtde').AsInteger = 1 then
      begin

        q_geral.Close;
        q_geral.sql.Clear;
        q_geral.sql.Add
          ('update   wc_simulacao_venda set operador=user, data_ap_operador=sysdate  where id='
          + ID);
        q_geral.ExecSQL;
        AddToInitProc(swalSuccess('Confirma��o', ' Aprova��o Operador: ' + ID +
          ', executada com sucesso !!!'));

        WebApplication.CallBackResponse.AddJavaScriptToExecute
          ('$("#ControleF").DataTable().ajax.reload();');
      end
      else
      begin
        AddToInitProc(swalAlert('Alerta',
          ' Ficha ainda n�o foi aprovada pelo Gerente.'));
      end;
    end;

  end;

  // Desaprovar F&I

  if copy(iwacao.Text, 1, 5) = 'FDPFI' then
  begin

    if controller.get_acesso('WC0032') = 0 then
    begin

      AddToInitProc(swalAlert('Alerta', ' Acesso n�o permitido -WC0032 !!!'));
    end
    else
    begin

      ID := copy(iwacao.Text, 6, Length(iwacao.Text));

      q_geral.Close;
      q_geral.sql.Clear;
      q_geral.sql.Add
        ('update   wc_simulacao_venda set operador=null, data_ap_operador=null  where id='
        + ID);
      q_geral.ExecSQL;
      AddToInitProc(swalSuccess('Confirma��o', ' Desaprova��o Operador: ' + ID +
        ', executada com sucesso !!!'));

      WebApplication.CallBackResponse.AddJavaScriptToExecute
        ('$("#ControleF").DataTable().ajax.reload();');

    end;

  end;

  // Aprovar acess�rios

  if copy(iwacao.Text, 1, 5) = 'FAPAC' then
  begin

    if controller.get_acesso('WC0010') = 0 then
    begin

      AddToInitProc(swalAlert('Alerta', ' Acesso n�o permitido -WC0010 !!!'));
    end
    else
    begin

      // Checa se j� est� aprovado gerente

      ID := copy(iwacao.Text, 6, Length(iwacao.Text));

      if controller.get_aprovacao(ID, 'G') = true then
      begin

        q_geral.Close;
        q_geral.sql.Clear;
        q_geral.sql.Add(' UPDATE wc_simulacao_venda set acessorios=user, ');
        q_geral.sql.Add(' data_aprovacao_acess=sysdate where id= :id');
        q_geral.ParamByName('id').AsString := ID;
        q_geral.ExecSQL;

        AddToInitProc(swalSuccess('Confirma��o', ' Aprovado  com sucesso !!!'));
        WebApplication.CallBackResponse.AddJavaScriptToExecute
          ('$("#ControleF").DataTable().ajax.reload();');
      end
      else
      begin
        AddToInitProc(swalAlert('Alerta',
          'Ainda n�o est� aprovado pelo gerente!'));
      end;

    end;

  end;

  // Desaprovar acessorios

  if copy(iwacao.Text, 1, 5) = 'FDPAC' then // exclue documento
  begin

    if controller.get_acesso('WC0034') = 0 then
    begin

      AddToInitProc(swalAlert('Alerta', ' Acesso n�o permitido -WC0034 !!!'));
    end
    else
    begin

      ID := copy(iwacao.Text, 6, Length(iwacao.Text));

      // verificar se FI foi desaprovado

      q_geral.Close;
      q_geral.sql.Clear;
      q_geral.sql.Text := 'select  a.operador from wc_simulacao_venda a ' +
        '  where operador is null                     ' +
        '  and id = :id                             ';

      q_geral.ParamByName('id').AsString := ID;

      q_geral.Open();

      if q_geral.RecordCount > 0 then
      begin

        q_geral.Close;
        q_geral.sql.Clear;
        q_geral.sql.Add(' UPDATE wc_simulacao_venda set acessorios=null, ');
        q_geral.sql.Add(' data_aprovacao_acess=null where id= :id');
        q_geral.ParamByName('id').AsString := ID;
        q_geral.ExecSQL;

        AddToInitProc(swalSuccess('Confirma��o',
          ' Desaprovado  com sucesso !!!'));
        WebApplication.CallBackResponse.AddJavaScriptToExecute
          ('$("#ControleF").DataTable().ajax.reload();');

      end
      else
      begin
        AddToInitProc(swalAlert('Alerta',
          ' F&I ainda est� aprovado, desaprovar antes.'));
      end;
    end;

  end;

  // desaprovar Todos e Reabrir

  if copy(iwacao.Text, 1, 5) = 'FDPTO' then // exclue documento
  begin

    if controller.get_acesso('WC0035') = 0 then
    begin

      AddToInitProc(swalAlert('Alerta', ' Acesso n�o permitido -WC0035 !!!'));
    end
    else
    begin

      ID := copy(iwacao.Text, 6, Length(iwacao.Text));

      // Desaprovar F&I
      q_geral.Close;
      q_geral.sql.Clear;
      q_geral.sql.Add
        ('update   wc_simulacao_venda set operador=null, data_ap_operador=null , fin_status=null  where id='
        + ID);
      q_geral.ExecSQL;

      // Desaprova acess�rios
      q_geral.Close;
      q_geral.sql.Clear;
      q_geral.sql.Add(' UPDATE wc_simulacao_venda set acessorios=null, ');
      q_geral.sql.Add(' data_aprovacao_acess=null where id= :id');
      q_geral.ParamByName('id').AsString := ID;
      q_geral.ExecSQL;

      // Desaprovar Gerente
      q_geral.Close;
      q_geral.sql.Clear;
      q_geral.sql.Add
        ('update   wc_simulacao_venda set gerente=null, data_ap_gerente=null  where id='
        + ID);
      q_geral.ExecSQL;

      AddToInitProc(swalSuccess('Confirma��o',
        ' Processo reaberto com sucesso !!!'));
      WebApplication.CallBackResponse.AddJavaScriptToExecute
        ('$("#ControleF").DataTable().ajax.reload();');

    end;

  end;
end;

procedure TControleFichas.TBPROPOSTA(aParams: TStrings; out aResult: string);
VAR
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
  q_datatable.sql.Add('select count(*) total');
  q_datatable.sql.Add
    ('from veiculos_propostas vp, produtos_modelos pm, cliente_diverso cd');
  q_datatable.sql.Add('where vp.cod_produto = pm.cod_produto');
  q_datatable.sql.Add('and vp.cod_modelo = pm.cod_modelo');
  q_datatable.sql.Add('and cd.cod_cliente = vp.cod_cliente');

  q_datatable.sql.Add('  and  vp.cod_empresa = ' + edit_proposta.Text);

  q_datatable.sql.Add('and ( vp.cod_proposta like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.sql.Add('      OR  vp.cod_cliente like ''%' +
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

  q_datatable.sql.Add
    ('select vp.cod_empresa,vp.cod_proposta, pm.descricao_modelo, cd.nome, vp.valor_proposta');
  q_datatable.sql.Add
    ('from veiculos_propostas vp, produtos_modelos pm, cliente_diverso cd');
  q_datatable.sql.Add('where vp.cod_produto = pm.cod_produto');
  q_datatable.sql.Add('and vp.cod_modelo = pm.cod_modelo');
  q_datatable.sql.Add('and cd.cod_cliente = vp.cod_cliente ');

  q_datatable.sql.Add('  and  vp.cod_empresa = ' + edit_proposta.Text);

  q_datatable.sql.Add('and ( vp.cod_proposta like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.sql.Add('      OR  vp.cod_cliente like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.sql.Add('Order by vp.cod_proposta ' + aParams.Values
        ['order[0][dir]'] + ' ');
    1:
      q_datatable.sql.Add('Order by  fcd.nome ' + aParams.Values
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
    ID := q_datatable.FieldByName('cod_proposta').AsString;
    btn_alterar :=
      '"<button type=\"buttom\" class=\"btn btn-xs btn-success \" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Cruzar\" onclick=\"SetaAcao(''CRUZP'''
      + ',' + ID + ' , ' +
      '''A'')\" > <i class=\"fa fa-bolt\"> </i> </button> " ';

    //
    wresult := wresult + '[' + '"' +
      stringreplace(Trim(q_datatable.FieldByName('cod_empresa').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('cod_proposta')
      .AsString), '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('descricao_modelo')
      .AsString), '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
      '"' + stringreplace(Trim(q_datatable.FieldByName('nome').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('valor_proposta')
      .AsString), '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      btn_alterar + '],';

    q_datatable.Next;

  end;
  q_datatable.Close;

  if wtotal <= 0 then
    wresult := wresult + ']}'
  else
    wresult := LeftStr(Trim(wresult), Length(Trim(wresult)) - 1) + ']}';

  //
  // Envia o resultado para o ajax do DataTable
  aResult := wresult;

  // abco

  // aa
  // --TESTE

end;

end.