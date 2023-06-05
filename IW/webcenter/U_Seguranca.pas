unit U_Seguranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FrmPadrao, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, IWCompButton, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompEdit, IWCompListbox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, IWDBStdCtrls, IWCompLabel;

type
  TSeguranca = class(TFrmPadrao)
    LISTA_ACESSOS: TIWListbox;
    q_datatable: TFDQuery;
    combo_usuarios: TIWDBLookupComboBox;
    q_usuarios: TFDQuery;
    q_usuariosNOME: TStringField;
    q_usuariosNOME_COMPLETO: TStringField;
    ds_q_usuarios: TDataSource;
    BTNADD: TIWButton;
    BTNDEL: TIWButton;
    LISTA_SELECAO: TIWListbox;
    btn_salvar_m: TIWButton;
    q_geral: TFDQuery;
    lista_guardar: TIWListbox;
    combo_funcoes: TIWDBLookupComboBox;
    q_funcoes: TFDQuery;
    q_funcoesCOD_FUNCAO: TFMTBCDField;
    q_funcoesDESCRICAO: TStringField;
    ds_q_funcoes: TDataSource;
    lb_index: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWBTNACAOAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormShow(Sender: TObject);
    procedure BTNADDAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure BTNDELAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure btn_salvar_mAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure combo_funcoesAsyncChange(Sender: TObject;
      EventParams: TStringList);
  private
    procedure TBSeguranca(aParams: TStrings; out aResult: string);
  public
    { Public declarations }
  end;

var
  Seguranca: TSeguranca;

implementation

uses
  System.AnsiStrings, U_DM, SweetAlerts, UserSessionUnit, ServerController;

{$R *.dfm}

procedure TSeguranca.BTNADDAsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  acesso: string;
begin
  inherited;

  if LISTA_ACESSOS.SelectedText <> '' then
  begin
    // acesso := copy(LISTA_ACESSOS.SelectedText, 1, 6);

    // if controller.get_acesso(acesso) = 1 then
    // begin

    // AddToInitProc(swalAlert('Alerta',
    // ' Este acesso já existe para este usuário'));
    // end
    // else
    begin

      LISTA_SELECAO.Items.Add(LISTA_ACESSOS.SelectedText);
      LISTA_ACESSOS.Items.Delete(LISTA_ACESSOS.ItemIndex);

    end;

  end;
end;

procedure TSeguranca.BTNDELAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  if LISTA_SELECAO.SelectedText <> '' then
  begin
    LISTA_ACESSOS.Items.Add(LISTA_SELECAO.SelectedText);
    LISTA_SELECAO.Items.Delete(LISTA_SELECAO.ItemIndex);
  end;
end;

procedure TSeguranca.btn_salvar_mAsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  i: integer;
  descricao: string;
  acesso: string;
begin
  inherited;

  if combo_usuarios.KeyValue = '' then
  begin
    AddToInitProc(swalAlert('Alerta', ' Selecione um usuário!'));
    combo_usuarios.SetFocus;
  end
  else
  begin
    for i := 0 to LISTA_SELECAO.Items.Count - 1 do
    begin
      if LISTA_SELECAO.Items[i] <> '' then
      begin
        q_geral.Close;
        q_geral.SQL.Clear;
        q_geral.SQL.Add('insert into wc_usuarios_acessos');
        q_geral.SQL.Add('(id, usuario, descricao, acesso)');
        q_geral.SQL.Add('values');
        q_geral.SQL.Add
          ('(seq_wc_geral.nextval, :usuario , :descricao , :acesso )');

        descricao := copy(LISTA_SELECAO.Items[i], 8,
          LISTA_SELECAO.Items[i].Length);
        acesso := copy(LISTA_SELECAO.Items[i], 1, 6);
        q_geral.ParamByName('usuario').AsString := combo_usuarios.KeyValue;
        q_geral.ParamByName('descricao').AsString := descricao;
        q_geral.ParamByName('acesso').AsString := acesso;
        q_geral.ExecSQL;
      end;

    end;

    AddToInitProc(swalSuccess('Confirmação',
      ' Cruzamento inserido com sucesso!'));
    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#Seguranca").DataTable().ajax.reload();');
    LISTA_ACESSOS.Items.Clear;
    LISTA_ACESSOS.Items.Text := lista_guardar.Items.Text;
    LISTA_SELECAO.Items.Clear;

  end;

end;

procedure TSeguranca.combo_funcoesAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
lb_index.Caption:= combo_funcoes.ItemIndex.ToString;

  if combo_funcoes.ItemIndex.ToString ='-1' then

  begin
    q_usuarios.Close;
    q_usuarios.SQL.Clear;
    q_usuarios.sql.Text := 'select login as nome,nome as  nome_completo ' +
      ' from  usuarios a ' + ' where nvl(a.ativo, 0 ) = -1  ' +
      ' order by a.nome  ';
    q_usuarios.Open();
    combo_usuarios.RefreshItems;

  end
  else
  begin

    q_usuarios.Close;
    q_usuarios.SQL.Clear;
    q_usuarios.sql.Text := 'select login nome,nome  nome_completo ' +
      ' from usuarios a ' + ' where nvl(a.ativo, 0) = -1  ' +
      ' and cod_funcao= '+ inttostr(combo_funcoes.KeyValue) +
      ' order by a.nome  ';
    q_usuarios.Open();
    combo_usuarios.RefreshItems;

  end;

end;

procedure TSeguranca.IWAppFormCreate(Sender: TObject);
begin
  inherited;
  RegisterCallBack('Seguranca', TBSeguranca);
end;

procedure TSeguranca.IWAppFormShow(Sender: TObject);
begin
  inherited;
  q_usuarios.Close;
  q_usuarios.Open();
  q_funcoes.Close;
  q_funcoes.Open();

end;

procedure TSeguranca.IWBTNACAOAsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  id: string;

begin
  inherited;
  if copy(iwacao.Text, 1, 5) = 'Inclu' then
  begin

    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$(''#Acesso'').modal(''show'');');
  end;

  if copy(iwacao.Text, 1, 5) = 'CancM' then
  begin

    LISTA_ACESSOS.Items.Clear;
    LISTA_ACESSOS.Items.Text := lista_guardar.Items.Text;
    LISTA_SELECAO.Items.Clear;
  end;

  if copy(iwacao.Text, 1, 5) = 'ExcAc' then
  begin
    id := copy(iwacao.Text, 6, Length(iwacao.Text));

    q_geral.Close;
    q_geral.SQL.Clear;
    q_geral.SQL.Add(' delete from wc_usuarios_acessos where id=' + id);
    q_geral.ExecSQL;
    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#Seguranca").DataTable().ajax.reload();');
    AddToInitProc(swalSuccess('Confirmação', ' Cruzamento: ' + id +
      ', excluído com sucesso !!!'));

  end;
end;

procedure TSeguranca.TBSeguranca(aParams: TStrings; out aResult: string);
var
  wresult: string;
  wtotal: integer;
  btn1: string;
  btn2: string;
  btn3: string;
  btn4: string;
  id: string;
begin

  //
  // Pegar o total de registros da tabela para montagem da paginação e o info no rodapé do datatable
  //
  q_datatable.Close;
  q_datatable.SQL.Clear;

  q_datatable.SQL.Add(' select count(*) as total  ');
  q_datatable.SQL.Add(' from wc_usuarios_acessos   ');
  q_datatable.SQL.Add(' where  1=1   ');

  q_datatable.SQL.Add('and ( id like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');
  q_datatable.SQL.Add('      OR  descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  acesso like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  usuario like ''%' +
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

  q_datatable.SQL.Clear;
  q_datatable.SQL.Add
    ('select id, usuario, descricao, acesso from wc_usuarios_acessos');

  q_datatable.SQL.Add(' where   1=1   ');

  q_datatable.SQL.Add('and ( id like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.SQL.Add('      OR  descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  acesso like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  usuario like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordenação
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.SQL.Add('Order by id ' + aParams.Values
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
    btn1 := '"<button type=\"buttom\" class=\"btn btn-xs btn-danger\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Excluir Acesso\" onclick=\"SetaAcao(''ExcAc'''
      + ',' + id + ')\" > <i class=\"fa fa-trash\"> </i> </button>" ';

    btn2 := '<button type=\"buttom\" class=\"btn btn-xs btn-success\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aprovar Gerente\" onclick=\"SetaAcao(''aprGe'''
      + ',' + id + ')\" > <i class=\"fa fa-thumbs-o-up\"> </i> </button> ';
    btn3 := '<button type=\"buttom\" class=\"btn btn-xs btn-info\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aprovar Operador\" onclick=\"SetaAcao(''aprOp'''
      + ',' + id + ')\"> <i class=\"fa fa-thumbs-o-up\"> </i> </button> ';

    btn4 := '<button type=\"buttom\" class=\"btn btn-xs btn-default\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Gerar proposta no NBS\" onclick=\"SetaAcao(''ExcDo'''
      + ',' + id + ')\"> <i class=\"fa fa-database\"> </i> </button> "';

    //
    wresult := wresult + '[' + '"' +
      stringreplace(Trim(q_datatable.FieldByName('id').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('usuario').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('descricao').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('acesso').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      btn1 + '],';

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

end.
