unit U_usuarios;

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
  IWDBStdCtrls, IWCompCheckbox, IWCompLabel;

type
  Tform_usuarios = class(TFrmPadrao)
    q_datatable: TFDQuery;
    q_geral: TFDQuery;
    q_aux: TFDQuery;
    q_insert: TFDQuery;
    StringField1: TStringField;
    FMTBCDField1: TFMTBCDField;
    edit_padrao: TIWEdit;
    edit_login: TIWEdit;
    edit_nome: TIWEdit;
    edit_cpf: TIWEdit;
    combo_padrao: TIWDBLookupComboBox;
    combo_funcao: TIWDBLookupComboBox;
    combo_departamento: TIWDBLookupComboBox;
    combo_empresa: TIWDBLookupComboBox;
    ck_ativo: TIWCheckBox;
    q_empresas: TFDQuery;
    q_empresasEMPRESA: TStringField;
    q_empresasCOD_EMPRESA: TFMTBCDField;
    ds_empresas: TDataSource;
    q_dpto: TFDQuery;
    ds_dpto: TDataSource;
    q_dptoID: TFMTBCDField;
    q_dptoCOD_DEPARTAMENTO: TFMTBCDField;
    q_dptoDESCRICAO: TStringField;
    q_funcoes: TFDQuery;
    ds_funcoes: TDataSource;
    q_funcoesID: TFMTBCDField;
    q_funcoesCOD_FUNCAO: TFMTBCDField;
    q_funcoesCOD_EMPRESA: TFMTBCDField;
    q_funcoesDESCRICAO: TStringField;
    BTN_SALVAR: TIWButton;
    BTN_INCLUIR_USER: TIWButton;
    acao: TIWLabel;
    combo_status: TIWComboBox;
    combo_empresa_f: TIWDBLookupComboBox;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWBTNACAOAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormShow(Sender: TObject);
    procedure BTN_SALVARAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure BTN_INCLUIR_USERAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure combo_empresaAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure combo_statusAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure combo_empresa_fAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure combo_departamentoAsyncChange(Sender: TObject;
      EventParams: TStringList);
  private
    procedure TBUsuarios(aParams: TStrings; out aResult: string);
    procedure usuario_manutencao(op : string; id : integer);
    procedure tbusuarios_reload;
  public
    { Public declarations }
  end;

var
  form_usuarios: Tform_usuarios;

implementation

{$R *.dfm}

uses U_DM, SweetAlerts, ServerController, System.StrUtils;

procedure Tform_usuarios.BTN_INCLUIR_USERAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  q_funcoes.Close;
  q_dpto.Close;
  combo_funcao.Enabled:=false;
  combo_departamento.Enabled:=false;
  combo_funcao.RefreshItems;
  combo_departamento.RefreshItems;
  combo_empresa.Enabled:=true;
  edit_login.Text:='';
  edit_login.Enabled:=true;
  edit_nome.Text:='';
  edit_cpf.Text:='';

  edit_login.Hint:='I';
  acao.Caption:='Incluindo...';

  WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDUsuario'').modal(''show'');');



end;

procedure Tform_usuarios.BTN_SALVARAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  if edit_login.Hint='M' then
  begin
  usuario_manutencao('M',edit_nome.Hint.ToInteger);
  end
  else
  begin
    usuario_manutencao('I',0);
  end;

end;

procedure Tform_usuarios.combo_departamentoAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
combo_departamento.Hint:=combo_departamento.KeyValue;
end;

procedure Tform_usuarios.combo_empresaAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;


  if edit_login.Hint='I' then
  begin
    q_funcoes.Close;
    q_funcoes.Open();

    if q_funcoes.RecordCount >0  then
       begin

         combo_funcao.Enabled:=true;
         combo_funcao.RefreshItems;

       end
       else
       begin
         combo_funcao.Enabled:=False;
         combo_funcao.RefreshItems;
       end;

       q_dpto.Close;
       q_dpto.ParamByName('cod_empresa').AsInteger:= combo_empresa.KeyValue;
       q_dpto.Open();

       if q_dpto.RecordCount > 0 then
        begin

          combo_departamento.Enabled:=true ;
          combo_departamento.RefreshItems;
          combo_departamento.ItemIndex:=-1;

        end
        else
        begin
          combo_departamento.Enabled:=false ;
          combo_departamento.RefreshItems;

        end;
  end;






end;

procedure Tform_usuarios.combo_empresa_fAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
tbusuarios_reload;
end;

procedure Tform_usuarios.combo_statusAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
 tbusuarios_reload;
end;

procedure Tform_usuarios.IWAppFormCreate(Sender: TObject);
begin
  inherited;
RegisterCallBack('TBUsuarios', TBUsuarios);
end;

procedure Tform_usuarios.IWAppFormShow(Sender: TObject);
begin
  inherited;
q_empresas.Close;
q_empresas.Open();
q_funcoes.Close;
Q_FUNCOES.Open();
end;

procedure Tform_usuarios.IWBTNACAOAsyncClick(Sender: TObject;
  EventParams: TStringList);
  var
  id:string;
begin
  inherited;
//EDITA Editar usuario/Incluir

if copy(iwacao.Text, 1, 5) = 'EDITA' then      //aceitar cliente na venda
  begin
    id := copy(iwacao.Text, 6, Length(iwacao.Text));

    q_geral.Close;
    q_geral.SQL.Clear;
    q_geral.sql.add('SELECT ID,');
    q_geral.sql.add('ATIVO,');
    q_geral.sql.add('LOGIN,');
    q_geral.sql.add('SENHA,');
    q_geral.sql.add('COD_EMPRESA,');
    q_geral.sql.add('NOME,');
    q_geral.sql.add('CPF,');
    q_geral.sql.add('COD_FUNCAO,');
    q_geral.sql.add('COD_DEPARTAMENTO');
    q_geral.sql.add('FROM USUARIOS');
    q_geral.SQL.Add(' where id=' + id);
    q_geral.Open();

    combo_empresa.KeyValue:= q_geral.FieldByName('cod_empresa').Value;
    combo_empresa.RefreshItems;
    q_funcoes.Close;
   // q_funcoes.ParamByName('cod_empresa').AsInteger := q_geral.FieldByName('cod_empresa').AsInteger;

    q_funcoes.Open();
    combo_funcao.Enabled:=true;
    combo_funcao.RefreshItems;

    q_dpto.Close;
    q_dpto.ParamByName('cod_empresa').AsInteger := q_geral.FieldByName('cod_empresa').AsInteger;
    q_dpto.Open();



    combo_departamento.Enabled:=true;
    combo_departamento.RefreshItems;
    combo_departamento.KeyValue:= -1;
    combo_departamento.KeyValue:=  q_geral.FieldByName('COD_DEPARTAMENTO').AsInteger;

    combo_departamento.Hint:= combo_departamento.KeyValue;

//    q_aux.Close;
//    q_aux.SQL.Clear;
//    q_aux.SQL.Add(' select id from departamentos where cod_empresa= :cod_empresa and cod_departamento= :cod_departamento');
//    q_aux.ParamByName('cod_empresa').AsInteger := q_geral.FieldByName('cod_empresa').AsInteger;
//    q_aux.ParamByName('cod_departamento').AsInteger := q_geral.FieldByName('cod_departamento').AsInteger;
//    q_aux.Open();
//
//    combo_departamento.KeyValue := q_aux.FieldByName('id').Value;


//    q_aux.Close;
//    q_aux.SQL.Clear;
//    q_aux.SQL.Add(' select id from funcoes where    cod_funcao= :cod_funcao');
//    //q_aux.ParamByName('cod_empresa').AsInteger := q_geral.FieldByName('cod_empresa').AsInteger;
//    q_aux.ParamByName('cod_funcao').AsInteger := q_geral.FieldByName('cod_funcao').AsInteger;
//    q_aux.Open() ;

    combo_funcao.KeyValue :=   q_geral.FieldByName('COD_FUNCAO').Value;
    combo_funcao.Enabled:=true;
    combo_funcao.RefreshItems;





    edit_login.Text:= q_geral.FieldByName('login').AsString;
    edit_nome.Text:= q_geral.FieldByName('nome').AsString;
    edit_cpf.Text:= q_geral.FieldByName('cpf').AsString;

    if q_geral.FieldByName('ativo').AsInteger = 0 then
    begin
      ck_ativo.Checked:=false;
    end
    else
    begin
     ck_ativo.Checked:=True;
    end;



    edit_login.Enabled:=false;

    edit_login.Hint:='EDITANDO';
    edit_nome.Hint:= id;
    combo_empresa.Enabled:=false;
    edit_login.Hint:='M';

    acao.Caption:='Alterando...';
    WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDUsuario'').modal(''show'');');


  end;
end;

procedure Tform_usuarios.TBUsuarios(aParams: TStrings; out aResult: string);
var
  wresult: string;
  wtotal: integer;
  btn1: string;
  btn2: string;
  btn3: string;
  btn4: string;
  id: string;
  v_promo,v_bloq : string;
begin
  q_datatable.close;
  q_datatable.SQL.Clear;

 q_datatable.sql.add('select count(*) as total');
 q_datatable.sql.add('from usuarios u, funcoes f, departamentos d');
 q_datatable.sql.add('where u.cod_funcao = f.cod_funcao');
// q_datatable.sql.add('and u.cod_empresa = f.cod_empresa');
 q_datatable.sql.add('and u.cod_departamento = d.cod_departamento');
 q_datatable.sql.add('and u.cod_empresa = d.cod_empresa');

 if combo_status.SelectedValue='-1' then
    begin
      q_datatable.sql.add('and u.ativo = ''-1'' ');

    end;

     if combo_status.SelectedValue='0' then
    begin
      q_datatable.sql.add('and u.ativo = ''0'' ');

    end;

    if combo_empresa_f.ItemIndex >=0  then
    begin
     q_datatable.sql.add('and u.cod_empresa =  ' + combo_empresa_f.KeyValue);

    end;




  q_datatable.SQL.Add('and (   u.login like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');
  q_datatable.SQL.Add('      OR    u.id like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR   u.nome like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR   u.cpf like ''%' +
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

  q_datatable.sql.add('select u.id, u.login,');
  q_datatable.sql.add('u.nome,');
  q_datatable.sql.add('u.cpf,');
  q_datatable.sql.add('f.descricao as funcao,');
  q_datatable.sql.add('d.descricao departamento');
  q_datatable.sql.add('from usuarios u, funcoes f, departamentos d');
  q_datatable.sql.add('where u.cod_funcao = f.cod_funcao');
  //q_datatable.sql.add('and u.cod_empresa = f.cod_empresa');
  q_datatable.sql.add('and u.cod_departamento = d.cod_departamento');
  q_datatable.sql.add('and u.cod_empresa = d.cod_empresa');

    if combo_status.SelectedValue='-1' then
    begin
      q_datatable.sql.add('and u.ativo = ''-1'' ');

    end;

     if combo_status.SelectedValue='0' then
    begin
      q_datatable.sql.add('and u.ativo = ''0'' ');

    end;
     if combo_empresa_f.ItemIndex >=0  then
    begin
     q_datatable.sql.add('and u.cod_empresa =  ' + combo_empresa_f.KeyValue);

    end;





  q_datatable.SQL.Add(' and ( u.login like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.SQL.Add('      OR   u.id like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  u.nome like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  u.cpf  like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    1:
      q_datatable.SQL.Add('Order by  u.login ' + aParams.Values
        ['order[0][dir]'] + ' ');
    2:
      q_datatable.SQL.Add('Order by   u.nome ' + aParams.Values
        ['order[0][dir]'] + ' ');

  end;

  q_datatable.FetchOptions.RecsMax := strtoint(aParams.Values['length']);
  q_datatable.FetchOptions.RecsSkip := strtoint(aParams.Values['start']);

  q_datatable.Open();










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






    btn1 := '"<button type=\"buttom\" class=\"btn btn-xs btn-default\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Editar Usu�rio\" data-dismiss=\"modal\" onclick=\"SetaAcao(''EDITA'''
      + ',' + id + ')\" > <i class=\"fa  fa-edit (alias)\"> </i> </button> "';

    btn2 := '<button type=\"buttom\" class=\"btn btn-xs btn-success\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Fechar\" onclick=\"SetaAcao(''VENDE'''
      + ',' + id + ')\" > <i class=\"fa fa-money\"> </i> </button> ';
    btn3 := '<button type=\"buttom\" class=\"btn btn-xs btn-info\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Converter Or�amento em Pr�Nota\" onclick=\"SetaAcao(''CONVE'''
      + ',' + id + ')\"> <i class=\"fa fa-thumbs-o-up\"> </i> </button>  ';

    btn4 := '<button type=\"buttom\" class=\"btn btn-xs btn-danger\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Cancelar Doc.\" onclick=\"SetaAcao(''CANCE'''
      + ',' + id + ')\"> <i class=\"fa fa-trash\"> </i> </button> "';

    //
    wresult := wresult + '[' + btn1 +   ','  + '"' +
      stringreplace(Trim(q_datatable.FieldByName('id').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('login').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('nome').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('cpf').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------


      '"' + stringreplace(Trim(q_datatable.FieldByName('funcao').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------


      '"' + stringreplace(Trim(q_datatable.FieldByName('departamento').AsString),
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

procedure Tform_usuarios.tbusuarios_reload;
begin
WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBUsuarios").DataTable().ajax.reload();');
end;

procedure Tform_usuarios.usuario_manutencao(op: string; id: integer);
begin


   if op='M' then
   begin

    controller.DM.banco.ExecSQL(' update usuarios set nome= ' + quotedstr(edit_nome.Text) +
     ' , cpf=' + quotedstr(edit_cpf.Text) +
     ' , cod_funcao=' + combo_funcao.KeyValue +
     ' , cod_departamento=' + combo_departamento.KeyValue +
     ' , cod_empresa=' + combo_empresa.KeyValue +
     ' , ativo=' + ck_ativo.Checked.ToString +
     ' where id=' + id.ToString

     );

     addtoinitproc(swalSuccess('Sucesso!','Usu�rio Alterado com Sucesso!'));

     tbusuarios_reload;


   end
   else
   if op='I' then
   begin
       try

         controller.DM.banco.StartTransaction;

         q_insert.Close;
         q_insert.SQL.Clear;
         q_insert.sql.add('INSERT INTO USUARIOS');
         q_insert.sql.add('(ID,');
         q_insert.sql.add('ATIVO,');
         q_insert.sql.add('LOGIN,');

         q_insert.sql.add('COD_EMPRESA,');
         q_insert.sql.add('NOME,');
         q_insert.sql.add('CPF,');
         q_insert.sql.add('COD_FUNCAO,');
         q_insert.sql.add('COD_DEPARTAMENTO)');
         q_insert.sql.add('VALUES');

         q_insert.sql.add('(seq_controle_usuario.nextval,');
         q_insert.sql.add(':ATIVO,');
         q_insert.sql.add(':LOGIN,');

         q_insert.sql.add(':COD_EMPRESA,');
         q_insert.sql.add(':NOME,');
         q_insert.sql.add(':CPF,');
         q_insert.sql.add(':COD_FUNCAO,');
         q_insert.sql.add(':COD_DEPARTAMENTO)');


         if ck_ativo.Checked then
         begin
         q_insert.ParamByName('ATIVO').AsString:='-1';
         end
         else
         begin
          q_insert.ParamByName('ATIVO').AsString:='0';
         end;


         q_insert.ParamByName('LOGIN').AsString:= edit_login.Text;

         q_insert.ParamByName('COD_EMPRESA').AsInteger:=combo_empresa.KeyValue;
         q_insert.ParamByName('NOME').AsString:= edit_nome.Text;
         q_insert.ParamByName('CPF').AsString:= edit_cpf.Text;
         q_insert.ParamByName('COD_FUNCAO').AsInteger:= combo_funcao.KeyValue;
         q_insert.ParamByName('COD_DEPARTAMENTO').AsInteger:= combo_departamento.KeyValue;
         q_insert.ExecSQL;

         //Cria no banco

         controller.DM.banco.ExecSQL('CREATE USER ' + edit_login.Text +
                                     ' default tablespace PROD01_DATA ' +
                                     ' IDENTIFIED BY '  + edit_login.Text + '123' ) ;
         controller.DM.banco.ExecSQL('GRANT dtec_role, CONNECT, RESOURCE,dba TO '  + edit_login.Text  ) ;
         controller.DM.banco.ExecSQL('GRANT unlimited tablespace TO '  + edit_login.Text  ) ;


         AddToInitProc(swalSuccess('Sucesso!','Usu�rio cadastrado com sucesso, n�o esque�a de mudar sua senha padr�o: '+ edit_login.Text + '123' ));

         controller.DM.banco.Commit;

         tbusuarios_reload;
       except
       on e:Exception do
       begin

        AddToInitProc(swalError('Erro ao criar usuario:',e.Message));
        controller.DM.banco.Rollback;
       end;

   end;


   end;

end;

end.
