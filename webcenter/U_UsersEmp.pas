unit U_UsersEmp;

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
  IWBS4CustomControl, IWBS4CustomInput, IWBS4Input, IWBSCustomControl,
  IWBSCustomInput, IWBSInput, IWDBStdCtrls, IWCompCheckbox;

type
  TFormUsersEmp = class(TFrmPadrao)
    q_datatable: TFDQuery;
    listempresas: TIWListbox;
    IWBSCheckBox1: TIWBSCheckBox;
    q_empresas: TFDQuery;
    q_empresasCOD_EMPRESA: TFMTBCDField;
    q_empresasNOME: TStringField;
    q_usuarios: TFDQuery;
    ds_q_usuarios: TDataSource;
    q_usuariosCOD_EMPRESA: TFMTBCDField;
    q_usuariosNOME: TStringField;
    q_usuariosNOME_COMPLETO: TStringField;
    combo_usuarios: TIWDBLookupComboBox;
    list_sel_empresas: TIWListbox;
    btn_add_emp: TIWButton;
    btn_rem_emp: TIWButton;
    ck_novo: TIWCheckBox;
    ck_usado: TIWCheckBox;
    btn_salvar: TIWButton;
    q_geral: TFDQuery;
    q_aux: TFDQuery;
    combo_tipo: TIWComboBox;
    btn_deletar: TIWButton;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWBTNACAOAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormShow(Sender: TObject);
    procedure btn_add_empAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure btn_rem_empAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure btn_salvarClick(Sender: TObject);
    procedure combo_tipoAsyncChange(Sender: TObject; EventParams: TStringList);
    procedure btn_deletarClick(Sender: TObject);
    procedure IWBTNACAOClick(Sender: TObject);
  private
    { Private declarations }
    procedure MontaUsuariosEmp(aParams : Tstrings; out aResult: string);
  public
    { Public declarations }
  end;

var
  FormUsersEmp: TFormUsersEmp;

implementation

{$R *.dfm}

uses ServerController, UserSessionUnit, U_DM, System.StrUtils, SweetAlerts;

procedure TFormUsersEmp.btn_add_empAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  if listempresas.SelectedValue<>'' then
  begin
   list_sel_empresas.Items.Add(listempresas.SelectedText + '='+listempresas.SelectedValue);
   listempresas.Items.Delete(listempresas.ItemIndex);
  end;



end;

procedure TFormUsersEmp.btn_deletarClick(Sender: TObject);
var
id : string;
begin
  inherited;
  id:= iwacao.Text;

  q_geral.Close;
  q_geral.SQL.Clear;
  q_geral.SQL.Add(' delete from wc_empresas_usuarios where id=' + id);
  q_geral.ExecSQL;

   AddToInitProc(swalSuccess('Confirma��o', 'Id:'+id+ '- Exclu�do com sucesso !!!'));
end;

procedure TFormUsersEmp.btn_rem_empAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  if list_sel_empresas.SelectedValue<>'' then
  begin
   listempresas.Items.Add(list_sel_empresas.SelectedText + '='+list_sel_empresas.SelectedValue );
   list_sel_empresas.Items.Delete(list_sel_empresas.ItemIndex);
  end;


end;

procedure TFormUsersEmp.btn_salvarClick(Sender: TObject);
 var
 i : integer;
begin

  inherited;

  if ck_novo.Checked then
  begin
        q_aux.Close;
        q_aux.SQL.Clear;
        q_aux.SQL.Add(' delete from wc_empresas_usuarios where nome= :nome and tipo=''N'' ');
        q_aux.ParamByName('nome').AsString:=  combo_usuarios.KeyValue;
        q_aux.ExecSQL;

  end;
   if ck_usado.Checked then
  begin
         q_aux.Close;
        q_aux.SQL.Clear;
        q_aux.SQL.Add(' delete from wc_empresas_usuarios where nome= :nome and tipo=''U'' ');
        q_aux.ParamByName('nome').AsString:=  combo_usuarios.KeyValue;
        q_aux.ExecSQL;

  end;

  i:=0;

     for I := 0 to list_sel_empresas.Items.Count -1 do
     begin

       list_sel_empresas.ItemIndex:=i;
     if list_sel_empresas.SelectedText<>'' then
     begin
       if ck_novo.Checked then
       begin



        q_geral.Close;
        q_geral.SQL.Clear;
        q_geral.SQL.Add(' insert into nbs.wc_empresas_usuarios(id,nome,cod_empresa,empresa,tipo) ') ;
        q_geral.SQL.Add(' values( seq_wc_geral.nextval , :nome , :cod_empresa , :empresa , :tipo ) ');

        q_geral.ParamByName('nome').AsString:= combo_usuarios.KeyValue;

        q_geral.ParamByName('cod_empresa').AsString:= list_sel_empresas.SelectedValue;
        q_geral.ParamByName('empresa').AsString:= list_sel_empresas.SelectedText;
        q_geral.ParamByName('tipo').AsString:='N';
        q_geral.ExecSQL;


       end;
       if ck_usado.Checked then
       begin



        q_geral.Close;
        q_geral.SQL.Clear;
        q_geral.SQL.Add(' insert into nbs.wc_empresas_usuarios(id,nome,cod_empresa,empresa,tipo) ') ;
        q_geral.SQL.Add(' values( seq_wc_geral.nextval , :nome , :cod_empresa , :empresa , :tipo ) ');

        q_geral.ParamByName('nome').AsString:= combo_usuarios.KeyValue;
        q_geral.ParamByName('cod_empresa').AsString:= list_sel_empresas.SelectedValue;
        q_geral.ParamByName('empresa').AsString:= list_sel_empresas.SelectedText;
        q_geral.ParamByName('tipo').AsString:='U';
        q_geral.ExecSQL;

       end;
      end;







     AddToInitProc(swalSuccess('Confirma��o',  ' Inserido com sucesso !!!'));

  end;

end;

procedure TFormUsersEmp.combo_tipoAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
   WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$("#UsuariosEmp").DataTable().ajax.reload();');

end;

procedure TFormUsersEmp.IWAppFormCreate(Sender: TObject);
begin
  inherited;
RegisterCallBack('UsuariosEmp',MontaUsuariosEmp);
end;

procedure TFormUsersEmp.IWAppFormShow(Sender: TObject);
begin
  inherited;
  q_empresas.Close;
  q_empresas.Open();
  q_usuarios.Close;
  q_usuarios.Open();
   listempresas.Clear;
  q_empresas.First;
   while not q_empresas.Eof do
   begin
   listempresas.Items.Add(q_empresasCOD_EMPRESA.AsString+'-'+
    q_empresasNOME.AsString + '='+q_empresasCOD_EMPRESA.AsString);

   q_empresas.Next;
   end;
   q_empresas.Close;
end;

procedure TFormUsersEmp.IWBTNACAOAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  if copy(iwacao.Text,1,5)='Inclu' then
  begin

   WebApplication.CallBackResponse.AddJavaScriptToExecute('$(''#Cruzamento'').modal(''show'');');
  end;

end;

procedure TFormUsersEmp.IWBTNACAOClick(Sender: TObject);
  var
  id : string;
begin
  inherited;
 if copy(iwacao.Text,1,5)='Exclu' then
  begin

   id:= copy(iwacao.Text,6,length(iwacao.Text));

  q_geral.Close;
  q_geral.SQL.Clear;
  q_geral.SQL.Add(' delete from wc_empresas_usuarios where id=' + id);
  q_geral.ExecSQL;

   AddToInitProc(swalSuccess('Confirma��o',  ' Exclu�do com sucesso !!!'));
  end;






end;

procedure TFormUsersEmp.MontaUsuariosEmp(aParams: Tstrings;
  out aResult: string);
var
  wresult: string;
  wtotal: Integer;
  btn_alterar : string;
  btn_excluir : string;
  id : string;
begin

  //
  // Pegar o total de registros da tabela para montagem da pagina��o e o info no rodap� do datatable
  //
  q_datatable.Close;
  q_datatable.sql.Clear;

  q_datatable.sql.Add(' select count(*) as total  ');
  q_datatable.sql.Add(' from wc_empresas_usuarios   ');
  q_datatable.sql.Add(' where  1=1 ');

  q_datatable.sql.Add('and ( id like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.sql.Add('      OR  nome like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  if combo_tipo.SelectedValue='N' then
  begin
    q_datatable.sql.Add( ' and tipo=''N''');
  end;
   if combo_tipo.SelectedValue='U' then
  begin
    q_datatable.sql.Add( ' and tipo=''U''');
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
  q_datatable.sql.Add(' select id, ');
  q_datatable.sql.Add(' nome, ');
  q_datatable.sql.Add(' empresa, ');
  q_datatable.sql.Add(' tipo, ');
  q_datatable.sql.Add(' cod_empresa ');

  q_datatable.sql.Add(' from wc_empresas_usuarios   ');
  q_datatable.sql.Add(' where   1=1 ');


  q_datatable.sql.Add('and ( id like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.sql.Add('      OR  nome like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

    if combo_tipo.SelectedValue='N' then
  begin
    q_datatable.sql.Add( ' and tipo=''N''');
  end;
   if combo_tipo.SelectedValue='U' then
  begin
    q_datatable.sql.Add( ' and tipo=''U''');
  end;


  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.sql.Add('Order by id ' + aParams.Values
        ['order[0][dir]'] + ' ');
    1:
      q_datatable.sql.Add('Order by  nome ' + aParams.Values
        ['order[0][dir]'] + ' ');

  end;

  q_datatable.FetchOptions.RecsMax := STRTOINT(aParams.Values['length']);
  q_datatable.FetchOptions.RecsSkip := STRTOINT(aParams.Values['start']);

  q_datatable.Open;

  //
  // Montagem da variavel com o JASON de resultado da consulta
  //
  wresult := '{' + '"draw": ' + StrToIntDef(aParams.Values['draw'], 0).ToString
    + ', ' + '"recordsTotal": ' + wtotal.ToString + ', ' + '"recordsFiltered": '
    + wtotal.ToString + ', ' + '"data": [';
  q_datatable.First;
  btn_alterar:='';
  btn_excluir:='';
  id:='';
  while not q_datatable.Eof do
  begin
     id:= q_datatable.FieldByName('id').AsString;
     btn_alterar:=   '"<button type=\"buttom\" class=\"btn btn-xs btn-warning\" disabled=true data-toggle=\"tooltip\" data-placement=\"top\" title=\"Alterar Registro\" onclick=\"ShowStatusManut('+id+' , '+'''A'')\" > <i class=\"fa fa-pencil\"> </i> </button> ';
     btn_excluir:=   '<button type=\"buttom\" class=\"btn btn-xs btn-danger\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Excluir Registro\" onclick=\"Excluir('+id+' , '+'''E'')\"> <i class=\"fa fa-trash\"> </i> </button> "';





    //
    wresult := wresult + '['+
                         '"'+StringReplace(Trim(q_datatable.FieldByName('id').AsString), '"', '\"', [rfReplaceAll])+'", '+
                         '"'+StringReplace(Trim(q_datatable.FieldByName('nome').AsString), '"', '\"', [rfReplaceAll])+'", '+
                         '"'+StringReplace(Trim(q_datatable.FieldByName('empresa').AsString), '"', '\"', [rfReplaceAll])+'", '+
                         '"'+StringReplace(Trim(q_datatable.FieldByName('tipo').AsString), '"', '\"', [rfReplaceAll])+'", '+
                         '"'+StringReplace(Trim(q_datatable.FieldByName('cod_empresa').AsString), '"', '\"', [rfReplaceAll])+'", '+

                         btn_alterar  +  btn_excluir +
                         '],';

    q_datatable.Next;

  end;
  q_datatable.Close;

  if wtotal <= 0 then
    wresult := wresult + ']}'
  else
    wresult := LeftStr(Trim(wresult), length(Trim(wresult)) - 1) + ']}';

  //
  // Envia o resultado para o ajax do DataTable
  aResult := wresult;

  // abco





end;

end.
