unit U_Mesa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FrmPadrao, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, IWCompButton, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompEdit, IWCompListbox, IWDBStdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, IWCompCheckbox, Datasnap.DBClient, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.Oracle,
  FireDAC.Phys.OracleDef, FireDAC.VCLUI.Wait, IWBS4CustomControl,
  IWBS4CustomInput, IWBS4Input, IWCompLabel, FireDAC.Comp.UI;

type
  TMesa = class(TFrmPadrao)
    q_geral: TFDQuery;
    combo_tipo: TIWComboBox;
    combo_status_finan: TIWDBLookupComboBox;
    combo_origens: TIWDBLookupComboBox;
    ck_data_fim: TIWCheckBox;
    ck_data_ini: TIWCheckBox;
    data_fim: TIWEdit;
    data_ini: TIWEdit;
    combo_vendedor: TIWDBLookupComboBox;
    combo_ficha_status: TIWComboBox;
    combo_operador: TIWDBLookupComboBox;
    cds: TClientDataSet;
    cdsid: TIntegerField;
    cdscliente: TStringField;
    cdsdata_inclusao: TStringField;
    cdsdata_apr_ger: TStringField;
    cdsdata_apr_acess: TStringField;
    cdsdata_apr_fi: TStringField;
    cdsstatus_fi: TStringField;
    cdsbanco: TStringField;
    cdsoperador: TStringField;
    cdsvendedor: TStringField;
    cdsorigem: TStringField;
    cdsempresa: TStringField;
    combo_database: TIWDBLookupComboBox;
    q_database: TFDQuery;
    q_databaseID: TIntegerField;
    q_databaseUSUARIO: TWideStringField;
    q_databaseSENHA: TWideStringField;
    q_databaseDATABASE: TWideStringField;
    q_databaseDESCRICAO: TWideStringField;
    ds_users_db: TDataSource;
    ds_q_vendedores: TDataSource;
    q_vendedores: TFDQuery;
    q_vendedoresVENDEDOR: TStringField;
    q_vendedoresNOME: TStringField;
    q_funcao_vendedor_veic: TFDQuery;
    q_funcao_vendedor_veicCOD_GERENTE_VENDAS: TFMTBCDField;
    q_funcao_vendedor_veicCOD_SUPERVISOR_VEICULO: TFMTBCDField;
    q_funcao_vendedor_veicCOD_VENDEDOR_VEICULO: TFMTBCDField;
    combo_empresas: TIWDBLookupComboBox;
    q_empresas: TFDQuery;
    q_empresasCOD_EMPRESA: TFMTBCDField;
    q_empresasNOME: TStringField;
    ds_q_empresas: TDataSource;
    q_datatable: TFDQuery;
    cdsdatabase: TStringField;
    date_teste: TIWBS4DateCaleranInput;
    q_status_finan: TFDQuery;
    ds_q_status_finan: TDataSource;
    ds_q_origens: TDataSource;
    q_origens: TFDQuery;
    q_origensORIGEM: TStringField;
    q_status_finanDESCRICAO: TStringField;
    q_status_finanID: TFMTBCDField;
    q_operadores: TFDQuery;
    q_operadoresCOD_EMPRESA: TFMTBCDField;
    q_operadoresNOME: TStringField;
    q_operadoresNOME_COMPLETO: TStringField;
    ds_q_operadores: TDataSource;
    lb_id: TIWLabel;
    db_geral: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysOracleDriverLink1: TFDPhysOracleDriverLink;
    procedure IWAppFormShow(Sender: TObject);
    procedure combo_databaseAsyncChange(Sender: TObject;
      EventParams: TStringList);

    procedure conn(Sender: TObject);
    procedure set_vendedor;
    procedure combo_empresasAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure SetGrid(Sender: TObject);

    procedure cds_reload;
    procedure combo_vendedorAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure ck_data_fimAsyncChange(Sender: TObject; EventParams: TStringList);
    procedure ck_data_iniAsyncChange(Sender: TObject; EventParams: TStringList);
    procedure data_iniAsyncChange(Sender: TObject; EventParams: TStringList);
    procedure data_fimAsyncChange(Sender: TObject; EventParams: TStringList);
    procedure combo_ficha_statusAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure combo_operadorAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure combo_origensAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure combo_status_finanAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure combo_tipoAsyncChange(Sender: TObject; EventParams: TStringList);
    procedure IWBTNACAOAsyncClick(Sender: TObject; EventParams: TStringList);

    function set_login(p_user, p_senha, p_servidor: string): boolean;
    procedure IWAppFormDestroy(Sender: TObject);
    procedure set_empresas(p_valor: boolean);
    procedure open_db_geral;

  private
    { Private declarations }

    procedure ControleF(aParams: TStrings; out aResult: string);
    // procedure Historico(aParams: TStrings; out aResult: string);

  public
    { Public declarations }
  end;

var
  Mesa: TMesa;

implementation

{$R *.dfm}

uses U_DM, System.AnsiStrings, SweetAlerts, ServerController;

procedure TMesa.ControleF(aParams: TStrings; out aResult: string);
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
  v_filter: string;
  v_srv: string;
  cont, i: Integer;
begin

  //
  // Pegar o total de registros da tabela para montagem da paginação e o info no rodapé do datatable
  //

  v_filter := UpperCase(QuotedStr('%' + aParams.Values['search[value]'] + '%'));
  with cds do
  begin
    Close;
    Filtered := False;
    Filter := '  UPPER(cliente) Like ' + v_filter;
    // + ' or UPPER(id) like ' + v_filter;

    // Funciona como uma Clausula Where do SQL
    Filtered := True;
    Open;

  end;

  wtotal := cds.RecordCount;

  //
  // Select para montar o resultado do ajax na solicitacao do DATATABLE
  //

  //
  // Montagem da variavel com o JASON de resultado da consulta
  //
  wresult := '{' + '"draw": ' + StrToIntDef(aParams.Values['draw'], 0).ToString
    + ', ' + '"recordsTotal": ' + wtotal.ToString + ', ' + '"recordsFiltered": '
    + wtotal.ToString + ', ' + '"data": [';
  cds.First;
  btn2 := '';
  btn3 := '';
  ID := '';
  v_srv := '';
  cont := 0;

  while not cds.Eof do
  begin

    // database sempre precisa ter 10 digitos
    v_srv := cds.FieldByName('database').AsString;

    if v_srv.Length < 10 then
    begin

      cont := v_srv.Length;

      while cont < 10 do
      begin
        v_srv := v_srv + '0';

        cont := cont + 1;

      end;

    end;

    ID := v_srv + cds.FieldByName('id').AsString;

    // ------------
    // Pinta celula

    if q_databaseDATABASE.AsString.ToUpper <> cds.FieldByName('database').AsString.ToUpper then
    begin

      q_database.Locate('database', cds.FieldByName('database').AsString, []);

      open_db_geral;
    end;

    q_geral.Close;
    q_geral.sql.Clear;
    q_geral.sql.Add('select cor');
    q_geral.sql.Add('from WC_STATUS_FINAN');
    q_geral.sql.Add('where descricao =');
    q_geral.sql.Add('(');
    q_geral.sql.Add('');
    q_geral.sql.Add
      ('select a.fin_status from wc_simulacao_venda a where id = :id )');
    q_geral.ParamByName('id').AsString := cds.FieldByName('id').AsString;
    q_geral.Open();

    celula := '';

    if q_geral.FieldByName('cor').AsString = 'primary' then
    begin
      celula := ' <span class=\"label label-primary\">' +
        cds.FieldByName('status_fi').AsString + '</span> ';
    end;

    if q_geral.FieldByName('cor').AsString = 'Info' then
    begin
      celula := ' <span class=\"label label-info\">' +
        cds.FieldByName('status_fi').AsString + '</span> ';
    end;

    if q_geral.FieldByName('cor').AsString = 'danger' then
    begin
      celula := ' <span class=\"label label-danger\">' +
        cds.FieldByName('status_fi').AsString + '</span> ';
    end;

    if q_geral.FieldByName('cor').AsString = 'warning' then
    begin
      celula := ' <span class=\"label label-warning\">' +
        cds.FieldByName('status_fi').AsString + '</span> ';
    end;

    if q_geral.FieldByName('cor').AsString = 'success' then
    begin
      celula := ' <span class=\"label label-success\">' +
        cds.FieldByName('status_fi').AsString + '</span> ';
    end;
    if q_geral.FieldByName('cor').AsString = '---' then
    begin
      celula := ' <span class=\"label label-default\">' +
        cds.FieldByName('status_fi').AsString + '</span> ';
    end;

    // ------------
    ID := QuotedStr(ID);

    btn1 := '   "<div class=\"btn-group\">' +
      '   <button type=\"button\" class=\"btn btn-default dropdown-toggle\" data-toggle=\"dropdown\"  '
      + '      aria-expanded=\"false\"> ' +
      '      <span class=\"caret\"></span> ' + '   </button> ' +
      '   <ul class=\"dropdown-menu\">  ' +
      ' <li><a onclick=\"SetaAcao(''ShowF''' + ',' + ID +
      ')\" > <i class=\"fa fa-edit (alias)\"></i> Editar Ficha </a></li> ' +
      ' <li><a onclick=\"SetaAcao(''FHIST''' + ',' + ID +
      ')\" > <i class=\"fa fa-history (alias)\"></i> Exibir Histórico </a></li> '
      + '   <li><a onclick=\"SetaAcao(''aprGe''' + ',' + ID +
      ')\" > <i class=\"fa fa-thumbs-o-up\"></i> Aprovar Gerente </a></li> ' +
      '   <li><a onclick=\"SetaAcao(''FDPGE''' + ',' + ID +
      ')\" > <i class=\"fa fa-thumbs-o-down\"></i> Desaprovar Gerente </a></li> '
      + ' <li><a onclick=\"SetaAcao(''FAPAC''' + ',' + ID +
      ')\" > <i class=\"fa fa-thumbs-o-up\"></i> Aprovar Acessórios </a></li>  '
      + ' <li><a onclick=\"SetaAcao(''FDPAC''' + ',' + ID +
      ')\" > <i class=\"fa fa-thumbs-o-down\"></i> Desaprovar Acessórios </a></li> '
      + ' <li><a onclick=\"SetaAcao(''FCAPF''' + ',' + ID +
      ')\" > <i class=\"fa fa-anchor\"></i>Capturar Ficha F&I </a></li> ' +
      ' <li><a onclick=\"SetaAcao(''aprOp''' + ',' + ID +
      ')\" > <i class=\"fa fa-thumbs-o-up\"></i> Aprovar F&I </a></li>  ' +
      '   <li><a onclick=\"SetaAcao(''FDPFI''' + ',' + ID +
      ')\" > <i class=\"fa fa-thumbs-o-down\"></i> Desaprovar F&I </a></li>  ' +
      '   <li><a onclick=\"SetaAcao(''FGPRO''' + ',' + ID +
      ')\" > <i class=\"fa fa-database\"></i> Gerar Proposta NBS</a></li>   ' +
      '   <li><a onclick=\"SetaAcao(''FDPTO''' + ',' + ID +
      ')\" > <i class=\"fa fa-thumbs-down\"></i> Desaprovar Todos e Reabrir </a></li> '
      + ' <li><a onclick=\"SetaAcao(''FEXCL''' + ',' + ID +
      ')\" > <i class=\"fa  fa-trash\"></i> Excluir Ficha(Não Aprovada)</a></li>   '
      + '   </ul>                                                                                                                  '
      + ' </div>"  ';

    //
    wresult := wresult + '[' + '"' +
      stringreplace(Trim(cds.FieldByName('id').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      btn1 + ',' +

    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(cds.FieldByName('cliente').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(cds.FieldByName('data_inclusao').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(cds.FieldByName('data_apr_ger').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
      '"' + stringreplace(Trim(cds.FieldByName('data_apr_acess').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(cds.FieldByName('data_apr_fi').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + celula + '", ' +
    // '"' + stringreplace(Trim(q_datatable.FieldByName('fin_status').AsString),
    // '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(cds.FieldByName('banco').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(cds.FieldByName('operador').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(cds.FieldByName('vendedor').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
      '"' + stringreplace(Trim(cds.FieldByName('origem').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(cds.FieldByName('empresa').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------
      '"' + stringreplace(Trim(cds.FieldByName('database').AsString), '"', '\"',
      [rfReplaceAll]) + '" ' +
    // Separador de colunas ------------------------------

      '],';

    cds.Next;

  end;
  // q_datatable.Close;

  if wtotal <= 0 then
    wresult := wresult + ']}'
  else
    wresult := LeftStr(Trim(wresult), Length(Trim(wresult)) - 1) + ']}';

  //
  // Envia o resultado para o ajax do DataTable
  aResult := wresult;

  // abco

end;

procedure TMesa.data_fimAsyncChange(Sender: TObject; EventParams: TStringList);
begin
  inherited;
  cds_reload;
end;

procedure TMesa.data_iniAsyncChange(Sender: TObject; EventParams: TStringList);
begin
  inherited;
  cds_reload;
end;

procedure TMesa.cds_reload;
var
  v_origens: string;
begin

  cds.EmptyDataSet;

  cds.Open;

  if combo_database.ItemIndex < 0 then
  begin

    q_database.First;
    set_empresas(False);

    while not q_database.Eof do
    begin
      try

        open_db_geral;

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
        q_datatable.sql.Add('a.origem ');
        q_datatable.sql.Add('from wc_simulacao_venda a');
        q_datatable.sql.Add(' where   1=1 and rascunho=''N'' ');
        if ck_data_ini.Checked then
        begin
          q_datatable.sql.Add('  and  data_inclusao>= ' +
            QuotedStr(data_ini.Text));
        end;

        if ck_data_fim.Checked then
        begin
          q_datatable.sql.Add('  and  data_inclusao< ' +
            QuotedStr(datetostr((strtodate(data_fim.Text) + 1))));
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



        // inserir parâmetros

        q_datatable.Open();

        // Insere no CDS
        q_datatable.First;
        while not q_datatable.Eof do
        begin
          cds.Append;

          cdsid.Text := q_datatable.FieldByName('id').AsString;
          cdscliente.Text := q_datatable.FieldByName('nome_cliente').AsString;
          cdsdata_inclusao.Text := q_datatable.FieldByName
            ('data_inclusao').AsString;
          cdsdata_apr_ger.Text := q_datatable.FieldByName
            ('data_ap_gerente').AsString;
          cdsdata_apr_acess.Text := q_datatable.FieldByName
            ('data_aprovacao_acess').AsString;
          cdsdata_apr_fi.Text := q_datatable.FieldByName
            ('data_ap_operador').AsString;
          cdsstatus_fi.Text := q_datatable.FieldByName('fin_status').AsString;
          cdsbanco.Text := q_datatable.FieldByName('fin_banco').AsString;
          cdsoperador.Text := q_datatable.FieldByName('fin_analista_credito').AsString;
          cdsvendedor.Text := q_datatable.FieldByName('vendedor').AsString;
          cdsorigem.Text := q_datatable.FieldByName('origem').AsString;
          cdsempresa.Text := q_datatable.FieldByName('empresa').AsString;
          cdsdatabase.Text := q_databaseDATABASE.AsString;

          cds.Post;

          q_datatable.Next;
        end;

      except
        AddToInitProc(swalError('ATENÇÃO',
          'Atenção!!! Usuario e ou Senha Inválido(s) !'));
        break;
      end;

      q_database.Next;

    end;
    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#ControleF").DataTable().ajax.reload();');

  end
  else
  begin

    q_database.Locate('database', combo_database.KeyValue, []);

    try

      open_db_geral;

      q_empresas.Close;
      q_empresas.Open();
      combo_empresas.RefreshItems;
      combo_empresas.Enabled := True;

      set_empresas(True);

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
      q_datatable.sql.Add('a.origem ');
      q_datatable.sql.Add('from wc_simulacao_venda a');
      q_datatable.sql.Add(' where   1=1 and rascunho=''N'' ');

      if combo_empresas.ItemIndex > 0 then
      begin

        q_datatable.sql.Add(' and a.cod_empresa= ' + combo_empresas.KeyValue);

      end;

      if combo_vendedor.ItemIndex > 0 then
      begin

        q_datatable.sql.Add(' and a.vendedor= ' +
          QuotedStr(combo_vendedor.KeyValue));

      end;

      if ck_data_ini.Checked then
      begin
        q_datatable.sql.Add('  and  data_inclusao>= ' +
          QuotedStr(data_ini.Text));
      end;

      if ck_data_fim.Checked then
      begin
        q_datatable.sql.Add('  and  data_inclusao< ' +
          QuotedStr(datetostr((strtodate(data_fim.Text) + 1))));
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

      if combo_tipo.ItemIndex.ToString <> '-1' then
      begin
        q_datatable.sql.Add(' and  tipo= ' +
          QuotedStr(combo_tipo.SelectedValue));
      end;

      if (combo_operador.ItemIndex.ToString <> '-1') and
        (combo_operador.Text <> 'Todos') then
      begin

        q_datatable.sql.Add(' and  fin_analista_credito= ' +
          QuotedStr(combo_operador.KeyValue));

      end;

      if combo_status_finan.ItemIndex.ToString <> '-1' then
      begin

        q_datatable.sql.Add(' and  fin_status= ' +
          QuotedStr(combo_status_finan.KeyValue));

      end;

      if q_origens.RecordCount > 0 then
      begin

        if combo_origens.ItemIndex.ToString <> '-1' then
        begin

          q_datatable.sql.Add(' and origem=' + QuotedStr(combo_origens.Text))

        end
        else
        begin

          q_origens.First;
          v_origens := '';
          while not q_origens.Eof do
          begin

            v_origens := v_origens + QuotedStr(q_origensORIGEM.AsString) + ',';

            q_origens.Next;
          end;

          v_origens := copy(v_origens, 1, v_origens.Length - 1);
          v_origens := '(' + v_origens + ')';

          q_datatable.sql.Add(' and origem in ' + v_origens);

        end;

      end;





      // Inserir parâmetros

      q_datatable.Open();

      // Insere no CDS
      q_datatable.First;
      while not q_datatable.Eof do
      begin
        cds.Append;

        cdsid.Text := q_datatable.FieldByName('id').AsString;
        cdscliente.Text := q_datatable.FieldByName('nome_cliente').AsString;
        cdsdata_inclusao.Text := q_datatable.FieldByName
          ('data_inclusao').AsString;
        cdsdata_apr_ger.Text := q_datatable.FieldByName
          ('data_ap_gerente').AsString;
        cdsdata_apr_acess.Text := q_datatable.FieldByName
          ('data_aprovacao_acess').AsString;
        cdsdata_apr_fi.Text := q_datatable.FieldByName
          ('data_ap_operador').AsString;
        cdsstatus_fi.Text := q_datatable.FieldByName('fin_status').AsString;
        cdsbanco.Text := q_datatable.FieldByName('fin_banco').AsString;
        cdsoperador.Text := q_datatable.FieldByName('fin_analista_credito').AsString;
        cdsvendedor.Text := q_datatable.FieldByName('vendedor').AsString;
        cdsorigem.Text := q_datatable.FieldByName('origem').AsString;
        cdsempresa.Text := q_datatable.FieldByName('empresa').AsString;
        cdsdatabase.Text := q_databaseDATABASE.AsString;

        cds.Post;

        q_datatable.Next;
      end;

    except
      AddToInitProc(swalError('ATENÇÃO',
        'Atenção!!! Usuario e ou Senha Inválido(s) !'));
    end;

    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#ControleF").DataTable().ajax.reload();');

    // cds.Destroy;
  end;

end;

procedure TMesa.ck_data_fimAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  if ck_data_fim.Checked then
  begin
    data_fim.Enabled := True;
  end
  else
  begin
    data_fim.Enabled := False;
    cds_reload;

  end;

end;

procedure TMesa.ck_data_iniAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  if ck_data_ini.Checked then
  begin
    data_ini.Enabled := True;
  end
  else
  begin
    data_ini.Enabled := False;
    cds_reload;

  end;

end;

procedure TMesa.combo_databaseAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  cds_reload;

end;

procedure TMesa.IWAppFormDestroy(Sender: TObject);
begin
  inherited;
  cds.Destroy
end;

procedure TMesa.IWAppFormShow(Sender: TObject);
begin
  inherited;

  q_database.Close;
  q_database.Open();

end;

procedure TMesa.IWBTNACAOAsyncClick(Sender: TObject; EventParams: TStringList);
var
  ID: string;
  v_banco: string;
  v_db: boolean;
begin
  inherited;
  // seta banco de dados com usuario e senha
  v_banco := '';
  v_banco := copy(iwacao.Text, 6, 10);
  v_banco := stringreplace(v_banco, '0', '', [rfReplaceAll, rfIgnoreCase]);

  v_db := False;

  q_database.First;

  while not q_database.Eof do
  begin

    if v_banco = q_databaseDATABASE.AsString then
    begin

      v_db := True;
    end;

    q_database.Next;

  end;

  if v_db = True then
  begin

    v_db := set_login(controller.xUsuario, controller.xSenha, v_banco)

  end;

  // inicio
  if copy(iwacao.Text, 1, 5) = 'FHIST' then // exclue documento
  begin
    if controller.get_acesso('WC0047') = 0 then
    begin

      AddToInitProc(swalAlert('Alerta', ' Acesso não permitido -WC0047 !!!'));
    end
    else
    begin
      ID := copy(iwacao.Text, 16, Length(iwacao.Text));
      lb_id.Caption := ID;

      WebApplication.CallBackResponse.AddJavaScriptToExecute
        ('$("#Historico").DataTable().ajax.reload();');

      WebApplication.CallBackResponse.AddJavaScriptToExecute
        ('$(''#MHistorico'').modal(''show'');');
    end;

  end;

  if copy(iwacao.Text, 1, 5) = 'ShowF' then // exclue documento
  begin
    ID := copy(iwacao.Text, 16, Length(iwacao.Text));
    controller.XidForm := ID;
    controller.AcaoMenu('SimularV');

  end;

  if copy(iwacao.Text, 1, 5) = 'FEXCL' then // exclue documento
  begin
    if controller.get_acesso('WC0031') = 0 then
    begin

      AddToInitProc(swalAlert('Alerta', ' Acesso não permitido -WC0031 !!!'));
    end
    else
    begin
      ID := copy(iwacao.Text, 16, Length(iwacao.Text));
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
          '  ID: ' + ID + ', Com aprovação, desaprove antes'));
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

        AddToInitProc(swalSuccess('Confirmação',
          '  ID: ' + ID + ', Excluído  com sucesso !!!'));

        cds_reload;
      end;
    end;

  end;

  // Aprova Gerente

  if copy(iwacao.Text, 1, 5) = 'aprGe' then
  begin
    if controller.get_acesso('WC0008') = 0 then
    begin

      AddToInitProc(swalAlert('Alerta', ' Acesso não permitido -WC0008 !!!'));
    end
    else
    begin

      ID := copy(iwacao.Text, 16, Length(iwacao.Text));

      q_geral.Close;
      q_geral.sql.Clear;
      q_geral.sql.Add
        ('select s_cod_fipe from wc_simulacao_venda  where id=' + ID);
      q_geral.Open();

      if q_geral.FieldByName('s_cod_fipe').AsString = '' then
      begin
        AddToInitProc(swalAlert('Alerta',
          ' Código da tabela em branco, verifique! '));
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

        AddToInitProc(swalSuccess('Confirmação', ' Aprovação Gerente: ' + ID +
          ', executada com sucesso !!!'));

        cds_reload;
      end;
    end;

  end;

  // Desaprovar Gerente

  if copy(iwacao.Text, 1, 5) = 'FDPGE' then
  begin
    if controller.get_acesso('WC0033') = 0 then
    begin

      AddToInitProc(swalAlert('Alerta', ' Acesso não permitido -WC0033 !!!'));
    end
    else
    begin

      ID := copy(iwacao.Text, 16, Length(iwacao.Text));

      // Verifica se FI e Acessorios estão aprovados
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

        AddToInitProc(swalSuccess('Confirmação', ' Desaprovação Gerente: ' + ID
          + ', executada com sucesso !!!'));

        cds_reload;
      end
      else
      begin
        AddToInitProc(swalAlert('Alerta',
          ' Desaprovação necessária:Operador/Acessórios '));
      end;
    end;

  end;

  // Capturar ficha F&I
  if copy(iwacao.Text, 1, 5) = 'FCAPF' then
  begin

    if controller.get_acesso('WC0040') = 0 then
    begin

      AddToInitProc(swalAlert('Alerta', ' Acesso não permitido -WC0040 !!!'));
    end
    else
    begin

      ID := copy(iwacao.Text, 16, Length(iwacao.Text));

      q_geral.Close;
      q_geral.sql.Clear;
      q_geral.sql.Add
        ('update    wc_simulacao_venda a set a.fin_analista_credito = user where id='
        + ID);
      q_geral.ExecSQL;
      AddToInitProc(swalSuccess('Confirmação',
        ' Ficha' + ID + ', Capturada com  sucesso !!!'));

      cds_reload;
    end;

  end;

  // Aprovar F&I

  if copy(iwacao.Text, 1, 5) = 'aprOp' then
  begin

    if controller.get_acesso('WC0009') = 0 then
    begin

      AddToInitProc(swalAlert('Alerta', ' Acesso não permitido -WC0009 !!!'));
    end
    else
    begin

      ID := copy(iwacao.Text, 16, Length(iwacao.Text));

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
        AddToInitProc(swalSuccess('Confirmação', ' Aprovação Operador: ' + ID +
          ', executada com sucesso !!!'));

        cds_reload;
      end
      else
      begin
        AddToInitProc(swalAlert('Alerta',
          ' Ficha ainda não foi aprovada pelo Gerente.'));
      end;
    end;

  end;

  // Desaprovar F&I

  if copy(iwacao.Text, 1, 5) = 'FDPFI' then
  begin

    if controller.get_acesso('WC0032') = 0 then
    begin

      AddToInitProc(swalAlert('Alerta', ' Acesso não permitido -WC0032 !!!'));
    end
    else
    begin

      ID := copy(iwacao.Text, 16, Length(iwacao.Text));

      q_geral.Close;
      q_geral.sql.Clear;
      q_geral.sql.Add
        ('update   wc_simulacao_venda set operador=null, data_ap_operador=null  where id='
        + ID);
      q_geral.ExecSQL;
      AddToInitProc(swalSuccess('Confirmação', ' Desaprovação Operador: ' + ID +
        ', executada com sucesso !!!'));

      cds_reload;

    end;

  end;

  // Aprovar acessórios

  if copy(iwacao.Text, 1, 5) = 'FAPAC' then
  begin

    if controller.get_acesso('WC0010') = 0 then
    begin

      AddToInitProc(swalAlert('Alerta', ' Acesso não permitido -WC0010 !!!'));
    end
    else
    begin

      // Checa se já está aprovado gerente

      ID := copy(iwacao.Text, 16, Length(iwacao.Text));

      if controller.get_aprovacao(ID, 'G') = True then
      begin

        q_geral.Close;
        q_geral.sql.Clear;
        q_geral.sql.Add(' UPDATE wc_simulacao_venda set acessorios=user, ');
        q_geral.sql.Add(' data_aprovacao_acess=sysdate where id= :id');
        q_geral.ParamByName('id').AsString := ID;
        q_geral.ExecSQL;

        AddToInitProc(swalSuccess('Confirmação', ' Aprovado  com sucesso !!!'));
        cds_reload;
      end
      else
      begin
        AddToInitProc(swalAlert('Alerta',
          'Ainda não está aprovado pelo gerente!'));
      end;

    end;

  end;

  // Desaprovar acessorios

  if copy(iwacao.Text, 1, 5) = 'FDPAC' then // exclue documento
  begin

    if controller.get_acesso('WC0034') = 0 then
    begin

      AddToInitProc(swalAlert('Alerta', ' Acesso não permitido -WC0034 !!!'));
    end
    else
    begin

      ID := copy(iwacao.Text, 16, Length(iwacao.Text));

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

        AddToInitProc(swalSuccess('Confirmação',
          ' Desaprovado  com sucesso !!!'));
        WebApplication.CallBackResponse.AddJavaScriptToExecute
          ('$("#ControleF").DataTable().ajax.reload();');

      end
      else
      begin
        AddToInitProc(swalAlert('Alerta',
          ' F&I ainda está aprovado, desaprovar antes.'));
      end;
    end;

  end;

  // desaprovar Todos e Reabrir

  if copy(iwacao.Text, 1, 5) = 'FDPTO' then // exclue documento
  begin

    if controller.get_acesso('WC0035') = 0 then
    begin

      AddToInitProc(swalAlert('Alerta', ' Acesso não permitido -WC0035 !!!'));
    end
    else
    begin

      ID := copy(iwacao.Text, 16, Length(iwacao.Text));

      // Desaprovar F&I
      q_geral.Close;
      q_geral.sql.Clear;
      q_geral.sql.Add
        ('update   wc_simulacao_venda set operador=null, data_ap_operador=null , fin_status=null  where id='
        + ID);
      q_geral.ExecSQL;

      // Desaprova acessórios
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

      AddToInitProc(swalSuccess('Confirmação',
        ' Processo reaberto com sucesso !!!'));
      cds_reload;

    end;

  end;

end;

procedure TMesa.open_db_geral;
begin

  if db_geral.Connected then
  begin
    db_geral.Connected := False;

  end;

  db_geral.Params.DriverID := 'Ora';
  db_geral.Params.UserName := q_databaseUSUARIO.AsString;
  db_geral.Params.Password := q_databaseSENHA.AsString;
  db_geral.Params.Database := q_databaseDATABASE.AsString;
  db_geral.Connected := True;

end;

procedure TMesa.set_empresas(p_valor: boolean);
begin

  if p_valor = True then
  begin

    q_origens.Close;
    q_origens.Open();
    combo_origens.RefreshItems;
    combo_origens.Enabled := True;

    q_status_finan.Close;
    q_status_finan.Open();
    combo_status_finan.RefreshItems;
    combo_status_finan.Enabled := True;

    q_operadores.Close;
    q_operadores.Open();
    combo_operador.RefreshItems;
    combo_operador.Enabled := True;

  end
  else
  begin

    q_origens.Close;
    // q_origens.Open();
    combo_origens.RefreshItems;
    combo_origens.Enabled := False;

    q_status_finan.Close;
    // q_status_finan.Open();
    combo_status_finan.RefreshItems;
    combo_status_finan.Enabled := False;

    q_operadores.Close;
    // q_operadores.Open();
    combo_operador.RefreshItems;
    combo_operador.Enabled := False;

  end;

end;

function TMesa.set_login(p_user, p_senha, p_servidor: string): boolean;
begin
  try
    controller.dm.banco.Connected := False;
    controller.dm.banco.Params.DriverID := 'Ora';
    controller.dm.banco.Params.UserName := p_user;
    controller.dm.banco.Params.Password := p_senha;
    controller.dm.banco.Params.Database := p_servidor;
    controller.dm.banco.Connected := True;
    controller.xUsuario := UpperCase(p_user);

    controller.dm.q_empresa_usuario.Close;
    controller.dm.q_empresa_usuario.ParamByName('nome').AsString :=
      UpperCase(p_user);
    controller.dm.q_empresa_usuario.Open;
    controller.xCliente := controller.dm.q_empresa_usuario.FieldByName('nome')
      .AsString +

      '<small> Id: ' + controller.dm.q_empresa_usuario.FieldByName
      ('cod_empresa').AsString + '</small>';

    result := True;

  except
    begin
      AddToInitProc(swalError('ATENÇÃO',
        'Atenção!!! Usuario e ou Senha Inválido(s) !'));
      result := False;

    end;

  end;
end;

procedure TMesa.set_vendedor;
begin

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
  combo_vendedor.Enabled := True;
  // combo_vendedor.KeyValue := q_geral.FieldByName('nome').AsString;

end;

procedure TMesa.combo_empresasAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  cds_reload;

  if (combo_empresas.Text <> 'Todas') then
  begin
    combo_vendedor.RefreshItems;
    combo_vendedor.Enabled := True;
    set_vendedor;
  end
  else
  begin
    combo_vendedor.RefreshItems;
    combo_vendedor.ItemIndex := 0;
    combo_vendedor.Enabled := False;

  end;

end;

procedure TMesa.combo_ficha_statusAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  cds_reload;
end;

procedure TMesa.combo_operadorAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  cds_reload;
end;

procedure TMesa.combo_origensAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  cds_reload;
end;

procedure TMesa.combo_status_finanAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  cds_reload;
end;

procedure TMesa.combo_tipoAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  cds_reload;
end;

procedure TMesa.combo_vendedorAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  cds_reload;
end;

procedure TMesa.conn(Sender: TObject);
begin
  inherited;

  // carregar filtros

  if combo_database.ItemIndex > -1 then
  begin
    // Empresas
    q_empresas.Close;
    q_empresas.Open();
    combo_empresas.Enabled := True;

    // status
    q_status_finan.Close;
    q_status_finan.Open();
    combo_status_finan.Enabled := True;

    // Origem
    q_origens.Close;
    q_origens.Open();
    combo_origens.Enabled := True;

    // Operadores

    q_operadores.Close;
    q_operadores.Open();
    combo_operador.Enabled := True;

  end
  else
  begin
    // Empresas
    q_empresas.Close;
    combo_empresas.Enabled := False;
    // Vendedor
    q_vendedores.Close;
    combo_vendedor.Enabled := False;

    // STATUS
    q_status_finan.Close;
    combo_status_finan.Enabled := False;

    // Origem
    q_origens.Close;
    combo_origens.Enabled := False;

    // Operadores
    q_operadores.Close;
    combo_operador.Enabled := False;
  end;

  combo_status_finan.RefreshItems;
  combo_origens.RefreshItems;
  combo_empresas.RefreshItems;
  combo_operador.RefreshItems;

end;

procedure TMesa.SetGrid(Sender: TObject);
begin
  inherited;
  cds.CreateDataSet;
  cds.Open;
  RegisterCallBack('ControleF', ControleF);
  // RegisterCallBack('Historico', Historico);
end;

end.
