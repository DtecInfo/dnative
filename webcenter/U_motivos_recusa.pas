unit U_motivos_recusa;

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
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, IWCompCheckbox;

type
  TMotivosRecusa = class(TFrmPadrao)
    q_datatable: TFDQuery;
    BTN_ALTERAR: TIWButton;
    edit_descricao: TIWEdit;
    q_geral: TFDQuery;
    edit_id: TIWEdit;
    ck_status: TIWCheckBox;
    btn_salvar: TIWButton;
    BTN_DELETAR: TIWButton;
    procedure IWAppFormCreate(Sender: TObject);
    procedure BTN_ALTERARAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWBTNACAOAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure btn_salvarClick(Sender: TObject);
    procedure BTN_DELETARClick(Sender: TObject);
  private
    { Private declarations }
    procedure MontamotivosRecusa(aParams: Tstrings; out aResult: string);

  var
    acao: string;

  public
    { Public declarations }
  end;

var
  MotivosRecusa: TMotivosRecusa;

implementation

{$R *.dfm}

uses U_DM, System.StrUtils, SweetAlerts;

{ TMotivosRecusa }

procedure TMotivosRecusa.BTN_ALTERARAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  acao := 'A';
  WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#ShowMotivosR'').modal(''show'');');

end;

procedure TMotivosRecusa.BTN_DELETARClick(Sender: TObject);
begin
  inherited;
  q_geral.Close;
  q_geral.SQL.Clear;
  q_geral.SQL.Add('delete from WC_MOTIVOS_RECUSA where id= :id ');
  q_geral.ParamByName('id').AsString := iwacao.Text;
  q_geral.ExecSQL;
  AddToInitProc(swalSuccess('Confirma��o', ' Exclu�do com sucesso !!!'));

end;

procedure TMotivosRecusa.btn_salvarClick(Sender: TObject);
var
  status: string;
begin
  inherited;
  if acao = 'A' then
  begin

    if ck_status.Checked then
    begin
      status := 'S';
    end
    else
    begin
      status := 'N';
    end;

    q_geral.Close;
    q_geral.SQL.Clear;
    q_geral.SQL.Add
      (' update  wc_motivos_recusa set descricao= :descricao, ativo= :ativo where id= :id');
    q_geral.ParamByName('descricao').AsString := edit_descricao.Text;
    q_geral.ParamByName('ativo').AsString := status;
    q_geral.ParamByName('id').AsString := edit_id.Text;
    q_geral.ExecSQL;

    AddToInitProc(swalSuccess('Confirma��o', ' Alterado com sucesso !!!'));
  end ;
 if ACAO='I' then

  begin
    q_geral.Close;
    q_geral.SQL.Clear;
    q_geral.SQL.Add
      (' insert into WC_MOTIVOS_RECUSA(ID,DESCRICAO,ATIVO) values( SEQ_WC_GERAL.nextval , :DESCRICAO , :ATIVO )');
    q_geral.ParamByName('descricao').AsString := edit_descricao.Text;
    if ck_status.Checked then
    begin
      status := 'S';
    end
    else
    begin
      status := 'N';
    end;
    q_geral.ParamByName('ativo').AsString := status;
    q_geral.ExecSQL;
    AddToInitProc(swalSuccess('Confirma��o', ' Inserido com sucesso !!!'));
  end;

  ACAO:='';

end;

procedure TMotivosRecusa.IWAppFormCreate(Sender: TObject);
begin
  inherited;
  RegisterCallBack('MotivosRecusa', MontamotivosRecusa);
end;

procedure TMotivosRecusa.IWBTNACAOAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  if copy(iwacao.Text, 1, 5) = 'Alter' then

  begin
    acao:='A';
    q_geral.Close;
    q_geral.SQL.Clear;
    q_geral.SQL.Add
      ('select id,descricao,ativo from wc_motivos_recusa where id= :id');
    q_geral.ParamByName('id').AsString :=
      copy(iwacao.Text, 6, length(iwacao.Text));
    q_geral.Open;

    edit_id.Text := copy(iwacao.Text, 6, length(iwacao.Text));
    edit_descricao.Text := q_geral.FieldByName('descricao').AsString;

    if q_geral.FieldByName('ativo').AsString = 'S' then
    begin

      ck_status.Checked := true;

    end
    else
    begin
      ck_status.Checked := False;
    end;

    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$(''#ShowMotivosR'').modal(''show'');');

  end;

  if copy(iwacao.Text, 1, 5) = 'Inclu' then
  begin
  ACAO:='I';

    edit_id.Text := 'incluindo...';
    edit_descricao.Text := '';

    WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$(''#ShowMotivosR'').modal(''show'');');

  end;

end;

procedure TMotivosRecusa.MontamotivosRecusa(aParams: Tstrings;
  out aResult: string);
var
  wresult: string;
  wtotal: Integer;
  BTN_ALTERAR: string;
  btn_excluir: string;
  id: string;
begin

  //
  // Pegar o total de registros da tabela para montagem da pagina��o e o info no rodap� do datatable
  //
  q_datatable.Close;
  q_datatable.SQL.Clear;

  q_datatable.SQL.Add(' select count(*) as total  ');
  q_datatable.SQL.Add(' from wc_motivos_recusa   ');
  q_datatable.SQL.Add(' where  1=1 ');

  q_datatable.SQL.Add('and ( id like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.SQL.Add('      OR  descricao like ''%' +
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
  q_datatable.SQL.Add(' select id, ');
  q_datatable.SQL.Add(' descricao, ');
  q_datatable.SQL.Add(' ativo ');

  q_datatable.SQL.Add(' from wc_motivos_recusa   ');
  q_datatable.SQL.Add(' where   1=1 ');

  q_datatable.SQL.Add('and ( id like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.SQL.Add('      OR  descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.SQL.Add('Order by id ' + aParams.Values
        ['order[0][dir]'] + ' ');
    1:
      q_datatable.SQL.Add('Order by  nome ' + aParams.Values
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
  BTN_ALTERAR := '';
  btn_excluir := '';
  id := '';
  while not q_datatable.Eof do
  begin
    id := q_datatable.FieldByName('id').AsString;
    BTN_ALTERAR :=
      '"<button type=\"buttom\" class=\"btn btn-xs btn-warning\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Alterar Registro\" onclick=\"SetaAcao(''Alter'' , ' + id + ')\" > <i class=\"fa fa-pencil\"> </i> </button> ';
    btn_excluir :=
      '<button type=\"buttom\" class=\"btn btn-xs btn-danger\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Excluir Registro\" onclick=\"Excluir('+ id + ' , ' + '''E'')\"> <i class=\"fa fa-trash\"> </i> </button> "';

    //
    wresult := wresult + '[' + '"' +
      stringreplace(Trim(q_datatable.FieldByName('id').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' + '"' +
      stringreplace(Trim(q_datatable.FieldByName('descricao').AsString), '"',
      '\"', [rfReplaceAll]) + '", ' + '"' +
      stringreplace(Trim(q_datatable.FieldByName('ativo').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +

      BTN_ALTERAR + btn_excluir + '],';

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
