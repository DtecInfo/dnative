unit U_FrmAcompChamados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FrmPadrao, Data.DB, IWCompCheckbox,
  IWCompMemo, IWDBStdCtrls, IWCompLabel, IWVCLComponent, IWBaseLayoutComponent,
  IWBaseContainerLayout, IWContainerLayout, IWTemplateProcessorHTML,
  IWCompButton, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompEdit;

type
  TFrmAcompChamados = class(TFrmPadrao)
    Chamados: TIWLabel;
    DadosChamado: TIWLabel;
    DESCRICAOSOLICITACAO: TIWDBMemo;
    SOLUCAOSOLICITACAO: TIWDBMemo;
    Encerrar: TIWCheckBox;
    dsChamadosCad: TDataSource;
    BtnGravarAtendimento: TIWButton;
    BtnEncerrar: TIWButton;
    BtnReabrir: TIWButton;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWBTNACAOAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure BtnGravarAtendimentoAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure BtnEncerrarAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure BtnReabrirAsyncClick(Sender: TObject; EventParams: TStringList);
  private
    { Private declarations }
    procedure MontaChamadosAbertos;
    procedure MontaChamadosFechados;
  public
    { Public declarations }
  end;

var
  FrmAcompChamados: TFrmAcompChamados;

implementation

{$R *.dfm}

uses ServerController, SweetAlerts;


procedure TFrmAcompChamados.BtnEncerrarAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  //
  // GRAVA ENCERRAMENTO DO CHAMADO
  //

  try
    Controller.GLBPK := StrToInt(Trim(Copy(IWAcao.Text,6,50)));

    Controller.DM.FDQChamadosCad.Close;
    Controller.DM.FDQChamadosCad.ParamByName('IDChamado').AsInteger := Controller.GLBPK;
    Controller.DM.FDQChamadosCad.Open;
    Controller.DM.FDQChamadosCad.Edit;

    Controller.DM.FDQChamadosCadSITUACAO.Value := 'Fechado';

    Controller.DM.FDQChamadosCad.Post;

    AddToInitProc(swalSuccess('CONFIRMA플O', 'Encerramento do Chamado realizado com sucesso !'));

    MontaChamadosAbertos;

  except
    AddToInitProc(swalAlert('ATEN플O','Ocorreu um erro no Encerramento do Chamado, tente novamente !'));
  end;

end;

procedure TFrmAcompChamados.BtnGravarAtendimentoAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  //
  // GRAVA REGISTRO DE ATENDIMENTO
  //

  try
    if Encerrar.Checked then
      Controller.DM.FDQChamadosCadSITUACAO.Value := 'Fechado';

    Controller.DM.FDQChamadosCad.Post;

    if not Encerrar.Checked then
      AddToInitProc(swalSuccess('CONFIRMA플O', 'Atendimento realizado com sucesso !'))
    else
      AddToInitProc(swalSuccess('CONFIRMA플O', 'Atendimento e Encerramento realizado com sucesso !'));

    MontaChamadosAbertos;

  except
    AddToInitProc(swalAlert('ATEN플O','Ocorreu um erro na grava豫o do registro !'));
  end;
end;

procedure TFrmAcompChamados.BtnReabrirAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  //
  // REABRIR O CHAMADO
  //

  try
    Controller.GLBPK := StrToInt(Trim(Copy(IWAcao.Text,6,50)));

    Controller.DM.FDQChamadosCad.Close;
    Controller.DM.FDQChamadosCad.ParamByName('IDChamado').AsInteger := Controller.GLBPK;
    Controller.DM.FDQChamadosCad.Open;
    Controller.DM.FDQChamadosCad.Edit;

    Controller.DM.FDQChamadosCadSITUACAO.Value := 'Aberto';

    Controller.DM.FDQChamadosCad.Post;

    AddToInitProc(swalSuccess('CONFIRMA플O', 'Reabertura do Chamado realizado com sucesso !'));

    MontaChamadosAbertos;

  except
    AddToInitProc(swalAlert('ATEN플O','Ocorreu um erro na Reabertura do Chamado, tente novamente !'));
  end;

end;

procedure TFrmAcompChamados.IWAppFormCreate(Sender: TObject);
begin
  inherited;
  MontaChamadosAbertos;

end;

procedure TFrmAcompChamados.IWBTNACAOAsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  html : string;
  xPrioridade : string;
begin
  inherited;


  // Clicou em Chamados Abertos
  if Trim(Copy(IWAcao.Text,1,5)) = 'Abert' then
  begin
    MontaChamadosAbertos();
  end;


  // Clicou em Chamados Fechados
  if Trim(Copy(IWAcao.Text,1,5)) = 'Fecha' then
  begin
    MontaChamadosFechados();
  end;


  // Clicou em Atendimento do Chamado
  if Trim(Copy(IWAcao.Text,1,5)) = 'Atend' then
  begin
    Controller.GLBPK := StrToInt(Trim(Copy(IWAcao.Text,6,50)));
    Controller.GLBCrud := 'Atendimento';

    Controller.DM.FDQChamadosCad.Close;
    Controller.DM.FDQChamadosCad.ParamByName('IDChamado').AsInteger := Controller.GLBPK;
    Controller.DM.FDQChamadosCad.Open;
    Controller.DM.FDQChamadosCad.Edit;

    //
    // Pega os dados do chamado selecionado
    //
    Controller.DM.FDQQuery.Close;
    Controller.DM.FDQQuery.SQL.Clear;
    Controller.DM.FDQQuery.SQL.Add('Select c.*, cl.RazaoSocial, cl.email, cl.fonefixo, cl.fonecelular, s.descricao as NomeSolicitacao, ');
    Controller.DM.FDQQuery.SQL.Add('       p.descricao as NomeProduto, f.nomefuncionario ');
    Controller.DM.FDQQuery.SQL.Add('from Chamados c left join ');
    Controller.DM.FDQQuery.SQL.Add('     Clientes cl on c.idcliente = cl.idcliente left join ');
    Controller.DM.FDQQuery.SQL.Add('     Solicitacoes s on c.idsolicitacao = s.idsolicitacao left join ');
    Controller.DM.FDQQuery.SQL.Add('     Produtos p on c.idproduto = p.idproduto left join ');
    Controller.DM.FDQQuery.SQL.Add('     Funcionarios f on c.idfuncionariosolucao = f.idfuncionario ');
    Controller.DM.FDQQuery.SQL.Add('Where c.IDChamado = '+Controller.GLBPK.ToString);
    Controller.DM.FDQQuery.Open();

    html := html + '                            <div class="box box-primary"> ' + SLineBreak;
    html := html + '                                <div class="box-header with-border"> ' + SLineBreak;
    html := html + '                                    <h3 class="box-title">Dados do Chamado</h3> ' + SLineBreak;
    html := html + '                                </div> ' + SLineBreak;
    html := html + '                                <div class="box-body"> ' + SLineBreak;
    html := html + '                                    <dl class="dl-horizontal"> ' + SLineBreak;
    html := html + '                                        <dt>Prioridade:</dt> ' + SLineBreak;
    if Controller.DM.FDQQuery.FieldByName('Prioridade').AsString = 'Alta' then
      xPrioridade := 'bg-red';
    if Controller.DM.FDQQuery.FieldByName('Prioridade').AsString = 'Media' then
      xPrioridade := 'bg-yellow';
    if Controller.DM.FDQQuery.FieldByName('Prioridade').AsString = 'Baixa' then
      xPrioridade := 'bg-aqua-active';
    html := html + '                                        <dd><span class="badge '+xPrioridade+'">'+Controller.DM.FDQQuery.FieldByName('Prioridade').AsString+'</span></dd> ' + SLineBreak;
    html := html + '                                        <br /> ' + SLineBreak;
    html := html + '                                        <dt>N� Chamado:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+Controller.DM.FDQQuery.FieldByName('IDChamado').AsString+'</dd> ' + SLineBreak;
    html := html + '                                        <dt>Cliente:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+Controller.DM.FDQQuery.FieldByName('RazaoSocial').AsString+'</dd> ' + SLineBreak;
    html := html + '                                        <dt>Data / Hora Abertura:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+FormatDateTime('dd/mm/yyyy hh:nn:ss', Controller.DM.FDQQuery.FieldByName('DataHoraAbertura').AsDateTime)+' hs</dd> ' + SLineBreak;
    html := html + '                                        <br /> ' + SLineBreak;
    html := html + '                                        <dt>Nome Solicitante:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+Controller.DM.FDQQuery.FieldByName('NomeSolicitante').AsString+'</dd> ' + SLineBreak;
    html := html + '                                        <dt>Depto Solicitante:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+Controller.DM.FDQQuery.FieldByName('DeptoSolicitante').AsString+'</dd> ' + SLineBreak;
    html := html + '                                        <br /> ' + SLineBreak;
    html := html + '                                        <dt>Solicita豫o:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+Controller.DM.FDQQuery.FieldByName('NomeSolicitacao').AsString+'</dd> ' + SLineBreak;
    html := html + '                                        <dt>Produto:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+Controller.DM.FDQQuery.FieldByName('NomeProduto').AsString+'</dd> ' + SLineBreak;
    html := html + '                                    </dl> ' + SLineBreak;
    html := html + '                                </div> ' + SLineBreak;
    html := html + '                            </div> ' + SLineBreak;

    // Atualizo o IWLabel que esta como RawText, assim atualizo os dados no modal de Atendimento
    DadosChamado.Caption := html;

    WebApplication.CallBackResponse.AddJavaScriptToExecute('$(''#Atendimento'').modal(''show'');');
  end;


  // Clicou em Encerrar o Atendimento do Chamado
  if Trim(Copy(IWAcao.Text,1,5)) = 'Encer' then
  begin
    WebApplication.CallBackResponse.AddJavaScriptToExecute(swalConfirm('CONFIRMA플O', 'Tem certeza que deseja Encerrar o Chamado n� '+Trim(Copy(IWAcao.Text,6,50)), 'warning', 'Encerrar Chamado', 'Cancelar', 'BTNENCERRAR'));
  end;


  // Clicou em Reabrir o Atendimento do Chamado
  if Trim(Copy(IWAcao.Text,1,5)) = 'Reabr' then
  begin
    WebApplication.CallBackResponse.AddJavaScriptToExecute(swalConfirm('CONFIRMA플O', 'Tem certeza que deseja Reabrir o Chamado n� '+Trim(Copy(IWAcao.Text,6,50)), 'warning', 'Reabrir Chamado', 'Cancelar', 'BTNREABRIR'));
  end;
end;

procedure TFrmAcompChamados.MontaChamadosAbertos;
var
  html, xPrioridade : string;
  i, Abertos, Fechados : Integer;
begin
  //
  // Verifica a qtde de chamados abertos e fechados
  //
  Controller.DM.FDQQuery.Close;
  Controller.DM.FDQQuery.SQL.Clear;
  Controller.DM.FDQQuery.SQL.Add('Select Situacao, Count(*) as Total from Chamados ');
  Controller.DM.FDQQuery.SQL.Add('Group by Situacao ');
  Controller.DM.FDQQuery.SQL.Add('Order by Situacao ');
  Controller.DM.FDQQuery.Open();

  Abertos  := 0;
  Fechados := 0;

  Controller.DM.FDQQuery.First;
  while not Controller.DM.FDQQuery.Eof do
  begin
    if Controller.DM.FDQQuery.FieldByName('Situacao').AsString = 'Aberto' then
      Abertos := Controller.DM.FDQQuery.FieldByName('Total').AsInteger;
    if Controller.DM.FDQQuery.FieldByName('Situacao').AsString = 'Fechado' then
      Fechados := Controller.DM.FDQQuery.FieldByName('Total').AsInteger;

    Controller.DM.FDQQuery.Next;
  end;
  Controller.DM.FDQQuery.Close;

  html := '';
  html := html + '    <div class="box box-primary"> ' + SLineBreak;
  html := html + '        <div class="box-header with-border"> ' + SLineBreak;
  html := html + '            <h3 class="box-title"><i class="fa fa-commenting-o"></i> Listagem dos Chamados em Aberto</h3> ' + SLineBreak;
  html := html + '            <div class="box-tools pull-right"> ' + SLineBreak;
  html := html + '                <a href="javascript: SetaAcao(''Abert'', '''');"> ' + SLineBreak;
  html := html + '                    <span data-toggle="tooltip" title="Clique para visualizar" class="badge bg-blue">'+Controller.iif(Abertos > 0, Abertos.ToString+' Novos Chamados','N�o h� Novos Chamados')+'</span> ' + SLineBreak;
  html := html + '                </a> ' + SLineBreak;
  html := html + '                <a href="javascript: SetaAcao(''Fecha'', '''');"> ' + SLineBreak;
  html := html + '                    <span data-toggle="tooltip" title="Clique para visualizar" class="badge bg-red">'+Controller.iif(Fechados > 0, Fechados.ToString+' Chamados Fechados','N�o h� Chamados Fechados')+'</span> ' + SLineBreak;
  html := html + '                </a> ' + SLineBreak;
  html := html + '            </div> ' + SLineBreak;
  html := html + '        </div> ' + SLineBreak;
  html := html + '        <div class="box-body"> ' + SLineBreak;
  html := html + '            <div class="box-group" id="accordion"> ' + SLineBreak;
  html := html + '                <br /> ' + SLineBreak;

  //
  // Monta todos os chamados 1 a 1
  //
  Controller.DM.FDQQuery.Close;
  Controller.DM.FDQQuery.SQL.Clear;
  Controller.DM.FDQQuery.SQL.Add('Select c.*, cl.RazaoSocial, cl.email, cl.fonefixo, cl.fonecelular, s.descricao as NomeSolicitacao, ');
  Controller.DM.FDQQuery.SQL.Add('       p.descricao as NomeProduto, f.nomefuncionario ');
  Controller.DM.FDQQuery.SQL.Add('from Chamados c left join ');
  Controller.DM.FDQQuery.SQL.Add('     Clientes cl on c.idcliente = cl.idcliente left join ');
  Controller.DM.FDQQuery.SQL.Add('     Solicitacoes s on c.idsolicitacao = s.idsolicitacao left join ');
  Controller.DM.FDQQuery.SQL.Add('     Produtos p on c.idproduto = p.idproduto left join ');
  Controller.DM.FDQQuery.SQL.Add('     Funcionarios f on c.idfuncionariosolucao = f.idfuncionario ');
  Controller.DM.FDQQuery.SQL.Add('Where c.Situacao = ''Aberto'' ');
  Controller.DM.FDQQuery.SQL.Add('Order by Cast(DataHoraAbertura as Date) desc, Prioridade, IDChamado ');
  Controller.DM.FDQQuery.Open();

  i := 1;
  Controller.DM.FDQQuery.First;
  while not Controller.DM.FDQQuery.Eof do
  begin
    if Controller.DM.FDQQuery.FieldByName('Prioridade').AsString = 'Alta' then
      xPrioridade := 'bg-red';
    if Controller.DM.FDQQuery.FieldByName('Prioridade').AsString = 'Media' then
      xPrioridade := 'bg-yellow';
    if Controller.DM.FDQQuery.FieldByName('Prioridade').AsString = 'Baixa' then
      xPrioridade := 'bg-aqua-active';


    html := html + '                <div class="panel box box-primary"> ' + SLineBreak;
    html := html + '                    <div class="box-header with-border"> ' + SLineBreak;
    html := html + '                        <h4 class="box-title"> ' + SLineBreak;
    html := html + '                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse'+i.ToString+'"> ' + SLineBreak;
    html := html + '                                <span data-toggle="tooltip" title="Prioridade" class="badge '+xPrioridade+'">'+Controller.DM.FDQQuery.FieldByName('Prioridade').AsString+'</span>&nbsp;&nbsp;<br class="hidden-sm hidden-md hidden-lg" /> ' + SLineBreak;
    html := html + '                                <span data-toggle="tooltip" title="Data e Hora Abertura do Chamado"> ' + SLineBreak;
    html := html + '                                    <i class="fa fa-fw fa-calendar"></i> '+FormatDateTime('dd/mm/yy hh:nn', Controller.DM.FDQQuery.FieldByName('DataHoraAbertura').AsDateTime)+' &nbsp;&nbsp;&nbsp;&nbsp;<br class="hidden-sm hidden-md hidden-lg" /> ' + SLineBreak;
    html := html + '                                </span> ' + SLineBreak;
    html := html + '                                <span data-toggle="tooltip" title="Nome do Cliente"> ' + SLineBreak;
    html := html + '                                    <i class="fa fa-fw fa-users"></i> '+Controller.DM.FDQQuery.FieldByName('RAZAOSOCIAL').AsString+' &nbsp;&nbsp;&nbsp;&nbsp;<br class="hidden-md hidden-lg" /> ' + SLineBreak;
    html := html + '                                </span> ' + SLineBreak;
    html := html + '                                <span data-toggle="tooltip" title="Nome do M�dulo do Sistema"> ' + SLineBreak;
    html := html + '                                    <i class="fa fa-fw fa-laptop"></i> '+Controller.DM.FDQQuery.FieldByName('NomeProduto').AsString+' &nbsp;&nbsp;&nbsp;&nbsp;<br class="hidden-sm hidden-lg" /> ' + SLineBreak;
    html := html + '                                </span> ' + SLineBreak;
    html := html + '                                <span data-toggle="tooltip" title="Nome do Usu�rio"> ' + SLineBreak;
    html := html + '                                    <i class="fa fa-fw fa-user"></i> '+Controller.DM.FDQQuery.FieldByName('NOMESOLICITANTE').AsString+' ' + SLineBreak;
    html := html + '                                </span> ' + SLineBreak;
    html := html + '                            </a> ' + SLineBreak;
    html := html + '                        </h4> ' + SLineBreak;
    html := html + '                    </div> ' + SLineBreak;
    html := html + '                    <div id="collapse'+i.ToString+'" class="panel-collapse collapse"> ' + SLineBreak;
    html := html + '                        <div class="box-body"> ' + SLineBreak;
    html := html + '                            <br /> ' + SLineBreak;
    html := html + '                            <div class="box box-primary"> ' + SLineBreak;
    html := html + '                                <div class="box-header with-border"> ' + SLineBreak;
    html := html + '                                    <h3 class="box-title">Dados do Chamado</h3> ' + SLineBreak;
    html := html + '                                </div> ' + SLineBreak;
    html := html + '                                <div class="box-body"> ' + SLineBreak;
    html := html + '                                    <dl class="dl-horizontal"> ' + SLineBreak;
    html := html + '                                        <dt>Prioridade:</dt> ' + SLineBreak;
    html := html + '                                        <dd><span class="badge '+xPrioridade+'">'+Controller.DM.FDQQuery.FieldByName('Prioridade').AsString+'</span></dd> ' + SLineBreak;
    html := html + '                                        <br /> ' + SLineBreak;
    html := html + '                                        <dt>N� Chamado:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+Controller.DM.FDQQuery.FieldByName('IDChamado').AsString+'</dd> ' + SLineBreak;
    html := html + '                                        <dt>Cliente:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+Controller.DM.FDQQuery.FieldByName('RazaoSocial').AsString+'</dd> ' + SLineBreak;
    html := html + '                                        <dt>Data / Hora Abertura:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+FormatDateTime('dd/mm/yyyy hh:nn:ss', Controller.DM.FDQQuery.FieldByName('DataHoraAbertura').AsDateTime)+' hs</dd> ' + SLineBreak;
    html := html + '                                        <br /> ' + SLineBreak;
    html := html + '                                        <dt>Nome Solicitante:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+Controller.DM.FDQQuery.FieldByName('NomeSolicitante').AsString+'</dd> ' + SLineBreak;
    html := html + '                                        <dt>Depto Solicitante:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+Controller.DM.FDQQuery.FieldByName('DeptoSolicitante').AsString+'</dd> ' + SLineBreak;
    html := html + '                                        <br /> ' + SLineBreak;
    html := html + '                                        <dt>Solicita豫o:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+Controller.DM.FDQQuery.FieldByName('NomeSolicitacao').AsString+'</dd> ' + SLineBreak;
    html := html + '                                        <dt>Produto:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+Controller.DM.FDQQuery.FieldByName('NomeProduto').AsString+'</dd> ' + SLineBreak;
    html := html + '                                        <br /> ' + SLineBreak;
    html := html + '                                        <dt>Descri豫o do Problema:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+Controller.DM.FDQQuery.FieldByName('DescricaoSolicitacao').AsString+'</dd> ' + SLineBreak;
    html := html + '                                        <br /> ' + SLineBreak;
    html := html + '                                        <dt>Solu豫o:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+Controller.DM.FDQQuery.FieldByName('SolucaoSolicitacao').AsString+'</dd> ' + SLineBreak;
    html := html + '                                        <br /> ' + SLineBreak;
    html := html + '                                        <dt>Nome do Atendente:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+Controller.DM.FDQQuery.FieldByName('NomeFuncionario').AsString+'</dd> ' + SLineBreak;
    html := html + '                                    </dl> ' + SLineBreak;
    html := html + '                                    <div class="text-center"> ' + SLineBreak;
    html := html + '                                        <button type="button" class="btn btn-primary" onclick="SetaAcao(''Atend'', '''+Controller.DM.FDQQuery.FieldByName('IDChamado').AsString+''');">Efetuar Atendimento</button> ' + SLineBreak;
    html := html + '                                        <button type="button" class="btn btn-warning" onclick="SetaAcao(''Encer'', '''+Controller.DM.FDQQuery.FieldByName('IDChamado').AsString+''');">Encerrar Chamado</button> ' + SLineBreak;
    html := html + '                                    </div> ' + SLineBreak;
    html := html + '                                </div> ' + SLineBreak;
    html := html + '                            </div> ' + SLineBreak;
    html := html + '                        </div> ' + SLineBreak;
    html := html + '                    </div> ' + SLineBreak;
    html := html + '                </div> ' + SLineBreak;

    i := i + 1;
    Controller.DM.FDQQuery.Next;
  end;
  Controller.DM.FDQQuery.Close;

  html := html + '            </div> ' + SLineBreak;
  html := html + '        </div> ' + SLineBreak;
  html := html + '    </div> ' + SLineBreak;

  Chamados.Caption := html;
end;


procedure TFrmAcompChamados.MontaChamadosFechados;
var
  html, xPrioridade : string;
  i, Abertos, Fechados : Integer;
begin
  //
  // Verifica a qtde de chamados abertos e fechados
  //
  Controller.DM.FDQQuery.Close;
  Controller.DM.FDQQuery.SQL.Clear;
  Controller.DM.FDQQuery.SQL.Add('Select Situacao, Count(*) as Total from Chamados ');
  Controller.DM.FDQQuery.SQL.Add('Group by Situacao ');
  Controller.DM.FDQQuery.SQL.Add('Order by Situacao ');
  Controller.DM.FDQQuery.Open();

  Abertos  := 0;
  Fechados := 0;

  Controller.DM.FDQQuery.First;
  while not Controller.DM.FDQQuery.Eof do
  begin
    if Controller.DM.FDQQuery.FieldByName('Situacao').AsString = 'Aberto' then
      Abertos := Controller.DM.FDQQuery.FieldByName('Total').AsInteger;
    if Controller.DM.FDQQuery.FieldByName('Situacao').AsString = 'Fechado' then
      Fechados := Controller.DM.FDQQuery.FieldByName('Total').AsInteger;

    Controller.DM.FDQQuery.Next;
  end;
  Controller.DM.FDQQuery.Close;

  html := '';
  html := html + '    <div class="box box-danger"> ' + SLineBreak;
  html := html + '        <div class="box-header with-border"> ' + SLineBreak;
  html := html + '            <h3 class="box-title"><i class="fa fa-commenting-o"></i> Listagem dos Chamados j� Fechados</h3> ' + SLineBreak;
  html := html + '            <div class="box-tools pull-right"> ' + SLineBreak;
  html := html + '                <a href="javascript: SetaAcao(''Abert'', '''');"> ' + SLineBreak;
  html := html + '                    <span data-toggle="tooltip" title="Clique para visualizar" class="badge bg-blue">'+Controller.iif(Abertos > 0, Abertos.ToString+' Novos Chamados','N�o h� Novos Chamados')+'</span> ' + SLineBreak;
  html := html + '                </a> ' + SLineBreak;
  html := html + '                <a href="javascript: SetaAcao(''Fecha'', '''');"> ' + SLineBreak;
  html := html + '                    <span data-toggle="tooltip" title="Clique para visualizar" class="badge bg-red">'+Controller.iif(Fechados > 0, Fechados.ToString+' Chamados Fechados','N�o h� Chamados Fechados')+'</span> ' + SLineBreak;
  html := html + '                </a> ' + SLineBreak;
  html := html + '            </div> ' + SLineBreak;
  html := html + '        </div> ' + SLineBreak;
  html := html + '        <div class="box-body"> ' + SLineBreak;
  html := html + '            <div class="box-group" id="accordion"> ' + SLineBreak;
  html := html + '                <br /> ' + SLineBreak;

  //
  // Monta todos os chamados 1 a 1
  //
  Controller.DM.FDQQuery.Close;
  Controller.DM.FDQQuery.SQL.Clear;
  Controller.DM.FDQQuery.SQL.Add('Select c.*, cl.RazaoSocial, cl.email, cl.fonefixo, cl.fonecelular, s.descricao as NomeSolicitacao, ');
  Controller.DM.FDQQuery.SQL.Add('       p.descricao as NomeProduto, f.nomefuncionario ');
  Controller.DM.FDQQuery.SQL.Add('from Chamados c left join ');
  Controller.DM.FDQQuery.SQL.Add('     Clientes cl on c.idcliente = cl.idcliente left join ');
  Controller.DM.FDQQuery.SQL.Add('     Solicitacoes s on c.idsolicitacao = s.idsolicitacao left join ');
  Controller.DM.FDQQuery.SQL.Add('     Produtos p on c.idproduto = p.idproduto left join ');
  Controller.DM.FDQQuery.SQL.Add('     Funcionarios f on c.idfuncionariosolucao = f.idfuncionario ');
  Controller.DM.FDQQuery.SQL.Add('Where c.Situacao = ''Fechado'' ');
  Controller.DM.FDQQuery.SQL.Add('Order by Cast(DataHoraAbertura as Date) desc, Prioridade, IDChamado ');
  Controller.DM.FDQQuery.Open();

  i := 1;
  Controller.DM.FDQQuery.First;
  while not Controller.DM.FDQQuery.Eof do
  begin
    if Controller.DM.FDQQuery.FieldByName('Prioridade').AsString = 'Alta' then
      xPrioridade := 'bg-red';
    if Controller.DM.FDQQuery.FieldByName('Prioridade').AsString = 'Media' then
      xPrioridade := 'bg-yellow';
    if Controller.DM.FDQQuery.FieldByName('Prioridade').AsString = 'Baixa' then
      xPrioridade := 'bg-aqua-active';


    html := html + '                <div class="panel box box-danger"> ' + SLineBreak;
    html := html + '                    <div class="box-header with-border"> ' + SLineBreak;
    html := html + '                        <h4 class="box-title"> ' + SLineBreak;
    html := html + '                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse'+i.ToString+'"> ' + SLineBreak;
    html := html + '                                <span data-toggle="tooltip" title="Prioridade" class="badge '+xPrioridade+'">'+Controller.DM.FDQQuery.FieldByName('Prioridade').AsString+'</span>&nbsp;&nbsp;<br class="hidden-sm hidden-md hidden-lg" /> ' + SLineBreak;
    html := html + '                                <span data-toggle="tooltip" title="Data e Hora Abertura do Chamado"> ' + SLineBreak;
    html := html + '                                    <i class="fa fa-fw fa-calendar"></i> '+FormatDateTime('dd/mm/yy hh:nn', Controller.DM.FDQQuery.FieldByName('DataHoraAbertura').AsDateTime)+' &nbsp;&nbsp;&nbsp;&nbsp;<br class="hidden-sm hidden-md hidden-lg" /> ' + SLineBreak;
    html := html + '                                </span> ' + SLineBreak;
    html := html + '                                <span data-toggle="tooltip" title="Nome do Cliente"> ' + SLineBreak;
    html := html + '                                    <i class="fa fa-fw fa-users"></i> '+Controller.DM.FDQQuery.FieldByName('RAZAOSOCIAL').AsString+' &nbsp;&nbsp;&nbsp;&nbsp;<br class="hidden-md hidden-lg" /> ' + SLineBreak;
    html := html + '                                </span> ' + SLineBreak;
    html := html + '                                <span data-toggle="tooltip" title="Nome do M�dulo do Sistema"> ' + SLineBreak;
    html := html + '                                    <i class="fa fa-fw fa-laptop"></i> '+Controller.DM.FDQQuery.FieldByName('NomeProduto').AsString+' &nbsp;&nbsp;&nbsp;&nbsp;<br class="hidden-sm hidden-lg" /> ' + SLineBreak;
    html := html + '                                </span> ' + SLineBreak;
    html := html + '                                <span data-toggle="tooltip" title="Nome do Usu�rio"> ' + SLineBreak;
    html := html + '                                    <i class="fa fa-fw fa-user"></i> '+Controller.DM.FDQQuery.FieldByName('NOMESOLICITANTE').AsString+' ' + SLineBreak;
    html := html + '                                </span> ' + SLineBreak;
    html := html + '                            </a> ' + SLineBreak;
    html := html + '                        </h4> ' + SLineBreak;
    html := html + '                    </div> ' + SLineBreak;
    html := html + '                    <div id="collapse'+i.ToString+'" class="panel-collapse collapse"> ' + SLineBreak;
    html := html + '                        <div class="box-body"> ' + SLineBreak;
    html := html + '                            <br /> ' + SLineBreak;
    html := html + '                            <div class="box box-danger"> ' + SLineBreak;
    html := html + '                                <div class="box-header with-border"> ' + SLineBreak;
    html := html + '                                    <h3 class="box-title">Dados do Chamado</h3> ' + SLineBreak;
    html := html + '                                </div> ' + SLineBreak;
    html := html + '                                <div class="box-body"> ' + SLineBreak;
    html := html + '                                    <dl class="dl-horizontal"> ' + SLineBreak;
    html := html + '                                        <dt>Prioridade:</dt> ' + SLineBreak;
    html := html + '                                        <dd><span class="badge '+xPrioridade+'">'+Controller.DM.FDQQuery.FieldByName('Prioridade').AsString+'</span></dd> ' + SLineBreak;
    html := html + '                                        <br /> ' + SLineBreak;
    html := html + '                                        <dt>N� Chamado:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+Controller.DM.FDQQuery.FieldByName('IDChamado').AsString+'</dd> ' + SLineBreak;
    html := html + '                                        <dt>Cliente:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+Controller.DM.FDQQuery.FieldByName('RazaoSocial').AsString+'</dd> ' + SLineBreak;
    html := html + '                                        <dt>Data / Hora Abertura:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+FormatDateTime('dd/mm/yyyy hh:nn:ss', Controller.DM.FDQQuery.FieldByName('DataHoraAbertura').AsDateTime)+' hs</dd> ' + SLineBreak;
    html := html + '                                        <br /> ' + SLineBreak;
    html := html + '                                        <dt>Nome Solicitante:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+Controller.DM.FDQQuery.FieldByName('NomeSolicitante').AsString+'</dd> ' + SLineBreak;
    html := html + '                                        <dt>Depto Solicitante:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+Controller.DM.FDQQuery.FieldByName('DeptoSolicitante').AsString+'</dd> ' + SLineBreak;
    html := html + '                                        <br /> ' + SLineBreak;
    html := html + '                                        <dt>Solicita豫o:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+Controller.DM.FDQQuery.FieldByName('NomeSolicitacao').AsString+'</dd> ' + SLineBreak;
    html := html + '                                        <dt>Produto:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+Controller.DM.FDQQuery.FieldByName('NomeProduto').AsString+'</dd> ' + SLineBreak;
    html := html + '                                        <br /> ' + SLineBreak;
    html := html + '                                        <dt>Descri豫o do Problema:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+Controller.DM.FDQQuery.FieldByName('DescricaoSolicitacao').AsString+'</dd> ' + SLineBreak;
    html := html + '                                        <br /> ' + SLineBreak;
    html := html + '                                        <dt>Solu豫o:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+Controller.DM.FDQQuery.FieldByName('SolucaoSolicitacao').AsString+'</dd> ' + SLineBreak;
    html := html + '                                        <br /> ' + SLineBreak;
    html := html + '                                        <dt>Nome do Atendente:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+Controller.DM.FDQQuery.FieldByName('NomeFuncionario').AsString+'</dd> ' + SLineBreak;
    html := html + '                                        <dt>Data / Hora Solu豫o:</dt> ' + SLineBreak;
    html := html + '                                        <dd>'+FormatDateTime('dd/mm/yyyy hh:nn:ss', Controller.DM.FDQQuery.FieldByName('DataHoraSolucao').AsDateTime)+' hs</dd> ' + SLineBreak;
    html := html + '                                    </dl> ' + SLineBreak;
    html := html + '                                    <div class="text-center"> ' + SLineBreak;
    html := html + '                                        <button type="button" class="btn btn-danger" onclick="SetaAcao(''Reabr'', '''+Controller.DM.FDQQuery.FieldByName('idChamado').AsString+''');">Reabrir Chamado</button> ' + SLineBreak;
    html := html + '                                    </div> ' + SLineBreak;
    html := html + '                                </div> ' + SLineBreak;
    html := html + '                            </div> ' + SLineBreak;
    html := html + '                        </div> ' + SLineBreak;
    html := html + '                    </div> ' + SLineBreak;
    html := html + '                </div> ' + SLineBreak;

    i := i + 1;
    Controller.DM.FDQQuery.Next;
  end;
  Controller.DM.FDQQuery.Close;

  html := html + '            </div> ' + SLineBreak;
  html := html + '        </div> ' + SLineBreak;
  html := html + '    </div> ' + SLineBreak;

  Chamados.Caption := html;
end;



end.
