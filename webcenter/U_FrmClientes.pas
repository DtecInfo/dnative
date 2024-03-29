unit U_FrmClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FrmPadrao, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout, IWHTMLTag,
  IWTemplateProcessorHTML, IWCompButton, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompEdit, Data.DB, IWCompListbox, IWCompLabel,
  IWDBStdCtrls, IWBaseComponent, IWBaseHTMLComponent, IWBaseHTML40Component,
  IWCompExtCtrls, frxClass, frxExportPDF, frxDBSet, frxExportBaseDialog;

type
  TFrmClientes = class(TFrmPadrao)
    BtnExcluir: TIWButton;
    IDCLIENTE: TIWDBEdit;
    RAZAOSOCIAL: TIWDBEdit;
    CNPJ: TIWDBEdit;
    IE: TIWDBEdit;
    CEP: TIWDBEdit;
    ENDERECO: TIWDBEdit;
    NUMERO: TIWDBEdit;
    COMPLEMENTO: TIWDBEdit;
    BAIRRO: TIWDBEdit;
    CIDADE: TIWDBEdit;
    ESTADO: TIWDBEdit;
    FONEFIXO: TIWDBEdit;
    FONECELULAR: TIWDBEdit;
    EMAIL: TIWDBEdit;
    BtnSenha: TIWButton;
    TituloModal: TIWLabel;
    DATAULTACESSO: TIWDBEdit;
    BtnGravar: TIWButton;
    BtnCancelar: TIWButton;
    Filtro: TIWEdit;
    BtnImprimir: TIWButton;
    Ordenacao: TIWComboBox;
    dsClientesCad: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    IWModalWindow1: TIWModalWindow;
    procedure CNPJHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure CEPHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure FONEFIXOHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure FONECELULARHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure IWTemplateProcessorHTML1UnknownTag(const AName: string;
      var VValue: string);
    procedure IWBTNACAOAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnSenhaClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    html : string;
  public
    { Public declarations }
  end;

var
  FrmClientes: TFrmClientes;

implementation

{$R *.dfm}

uses ServerController, SweetAlerts;

procedure TFrmClientes.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  //
  // CANCELAR EDICAO OU INCLUSAO DO RESGISTRO
  //
  Controller.DM.FDQClientesCad.Cancel;

end;

procedure TFrmClientes.BtnExcluirClick(Sender: TObject);
begin
  inherited;

  // Rotina de Exclusao do Registro selecionado

  Controller.DM.FDQQuery.Close;
  Controller.DM.FDQQuery.SQL.Clear;
  Controller.DM.FDQQuery.SQL.Add('Delete from Clientes ');
  Controller.DM.FDQQuery.SQL.Add('Where IDCliente = '+Trim(Copy(IWAcao.Text,6,50)));
  Controller.DM.FDQQuery.ExecSQL;
  Controller.DM.FDQQuery.Close;

  AddToInitProc(swalSuccess('Confirma��o', 'C�digo '+Trim(Copy(IWAcao.Text,6,50))+' excluido com sucesso !!!'))
end;

procedure TFrmClientes.BtnGravarClick(Sender: TObject);
begin
  inherited;
  //
  // GRAVA RESGISTRO
  //
  if Controller.GLBPK <=0 then
    Controller.DM.FDQClientesCadIDCliente.AsInteger := Controller.DM.FB_ReturnNextCOD_ByGenerator('COD_CLIENTE');

  try
    Controller.DM.FDQClientesCad.Post;

    if Controller.GLBCrud = 'Altera��o' then
      AddToInitProc(swalSuccess('CONFIRMA��O', 'Altera��o realizada com sucesso !'))
    else
      AddToInitProc(swalSuccess('CONFIRMA��O', 'Cadastro realizado com sucesso !'));

  except
    AddToInitProc(swalAlert('ATEN��O','Ocorreu um erro na grava��o do registro !'));
  end;

end;

procedure TFrmClientes.BtnImprimirClick(Sender: TObject);
var
  xDataRel : String;
begin
  inherited;

  Controller.DM.FDQQuery.Close;
  Controller.DM.FDQQuery.SQL.Clear;
  Controller.DM.FDQQuery.SQL.Add('Select * from Clientes ');

  // Filtro
  if Filtro.Text <> '' then
  begin
    Controller.DM.FDQQuery.SQL.Add('Where Cidade like ''%'+Filtro.Text+'%'' ');
    frxReport1.Variables['Filtro'] := QuotedStr('Filtro Cidade: "'+Filtro.Text+'"');
  end;

  // ORDENACAO
  if Ordenacao.SelectedValue = 'C�digo' then
    Controller.DM.FDQQuery.SQL.Add('Order by IDCLIENTE ');
  if Ordenacao.SelectedValue = 'Raz�o Social' then
    Controller.DM.FDQQuery.SQL.Add('Order by RAZAOSOCIAL ');

  Controller.DM.FDQQuery.Open();

  frxReport1.Reloading:=True;

  //
  // Executando o Relat�rio para a Exporta��o
  //
  xDataRel := WebApplication.AppID + FormatDateTime('yyyymmddhhmmsszzz', Now);

  frxPDFExport1.FileName := WebApplication.ApplicationPath + 'wwwroot\RelatoriosPDF\' +
                            xDataRel + '.PDF';

  frxReport1.PrepareReport(True);

  frxPDFExport1.ShowDialog:=False;
  frxReport1.Export(frxPDFExport1);

  with IWModalWindow1 do begin
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

procedure TFrmClientes.BtnSenhaClick(Sender: TObject);
begin
  inherited;

  // Colocar o codigo para resetar a senha aqui
  // MD5 da senha padrao 1234: >>  81dc9bdb52d04dc20036dbd8313ed055  <<
  Controller.DM.FDQQuery.Close;
  Controller.DM.FDQQuery.SQL.Clear;
  Controller.DM.FDQQuery.SQL.Add('Update Clientes set Senha = '''+Controller.MD5('1234')+''' ');
  Controller.DM.FDQQuery.SQL.Add('Where IDCliente = '+Trim(Copy(IWAcao.Text,6,50)));
  Controller.DM.FDQQuery.ExecSQL;
  Controller.DM.FDQQuery.Close;

  AddToInitProc(swalSuccess('Confirma��o', 'Senha resetada do C�d.: '+Trim(Copy(IWAcao.Text,6,50))+', senha padr�o: 1234 !!!'))

end;

procedure TFrmClientes.CEPHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add('data-inputmask="''mask'': ''99999-999''" data-mask');
end;

procedure TFrmClientes.CNPJHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add('data-inputmask="''mask'': ''99.999.999/9999-99''" data-mask');
end;

procedure TFrmClientes.FONECELULARHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add('data-inputmask="''mask'': ''(99) 99999-9999''" data-mask');
end;

procedure TFrmClientes.FONEFIXOHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add('data-inputmask="''mask'': ''(99) 9999-9999''" data-mask');
end;

procedure TFrmClientes.IWBTNACAOAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  // Clicou em Incluir
  if Trim(Copy(IWAcao.Text,1,5)) = 'Inc' then
  begin
    Controller.GLBPK := -1;
    Controller.GLBCrud := 'Inclus�o';
    // Atualizo o IWLabel que esta como RawText, assim atualizo o nome do t�tulo no Modal
    TituloModal.Text := Controller.GLBCrud;

    Controller.DM.FDQClientesCad.Close;
    Controller.DM.FDQClientesCad.Open;
    Controller.DM.FDQClientesCad.Insert;

    Controller.DM.FDQClientesCadIDCliente.Value := -1;

    WebApplication.CallBackResponse.AddJavaScriptToExecute('$(''#Cadastro'').modal(''show'');');
  end;


  // Clicou em Alterar
  if Trim(Copy(IWAcao.Text,1,5)) = 'Alt' then
  begin
    Controller.GLBPK := StrToInt(Trim(Copy(IWAcao.Text,6,50)));
    Controller.GLBCrud := 'Altera��o';
    // Atualizo o IWLabel que esta como RawText, assim atualizo o nome do t�tulo no Modal
    TituloModal.Text := Controller.GLBCrud;

    Controller.DM.FDQClientesCad.Close;
    Controller.DM.FDQClientesCad.ParamByName('IDCliente').AsInteger := Controller.GLBPK;
    Controller.DM.FDQClientesCad.Open;
    Controller.DM.FDQClientesCad.Edit;

    WebApplication.CallBackResponse.AddJavaScriptToExecute('$(''#Cadastro'').modal(''show'');');
  end;


  // Clicou em Excluir
  if Trim(Copy(IWAcao.Text,1,5)) = 'Exc' then
  begin
    WebApplication.CallBackResponse.AddJavaScriptToExecute(swalConfirm('CONFIRMA��O', 'Deseja excluir o cliente n� '+Trim(Copy(IWAcao.Text,6,50)), 'warning', 'Excluir', 'Cancelar', 'BTNEXCLUIR'));
  end;


  // Clicou em Trocar Senha
  if Trim(Copy(IWAcao.Text,1,5)) = 'Senha' then
  begin
    WebApplication.CallBackResponse.AddJavaScriptToExecute(swalConfirm('CONFIRMA��O', 'Deseja resetar a Senha do cliente n� '+Trim(Copy(IWAcao.Text,6,50)), 'warning', 'Resetar', 'Cancelar', 'BTNSENHA'));
  end;


  // Clicou em Imprimir
  if Trim(Copy(IWAcao.Text,1,5)) = 'Impr' then
  begin
    WebApplication.CallBackResponse.AddJavaScriptToExecute('$(''#Relatorios'').modal(''show'');');
  end;

end;

procedure TFrmClientes.IWTemplateProcessorHTML1UnknownTag(const AName: string;
  var VValue: string);
begin
  inherited;

  if AName = 'Grid' then
  begin
    //
    // MONTA A TABLE GRID DO CADASTRO
    //
    Controller.DM.FDQQuery.Close;
    Controller.DM.FDQQuery.SQL.Clear;
    Controller.DM.FDQQuery.SQL.Add('Select * from Clientes ');
    Controller.DM.FDQQuery.SQL.Add('Order by IDCliente ');
    Controller.DM.FDQQuery.Open();

    html := '';
    html := html + '<table id="GRID" class="table table-bordered table-striped table-hover"> '+SLineBreak+
                   '    <thead> '+SLineBreak+
                   '        <tr> '+SLineBreak+
                   '            <th style="text-align: center;">C�digo</th> '+SLineBreak+
                   '            <th>Raz�o Social do Cliente</th> '+SLineBreak+
                   '            <th>C.P.F.</th> '+SLineBreak+
                   '            <th>Fone Fixo</th> '+SLineBreak+
                   '            <th>Celular</th> '+SLineBreak+
                   '            <th style="text-align: center;">A��es</th> '+SLineBreak+
                   '        </tr> '+SLineBreak+
                   '    </thead> '+SLineBreak+
                   '    <tbody> '+SLineBreak;

    Controller.DM.FDQQuery.First;
    while not Controller.DM.FDQQuery.Eof do
    begin
      html := html + '        <tr> '+SLineBreak+
                     '            <td align="center">'+Controller.DM.FDQQuery.FieldByName('IDCliente').AsString+'</td> '+SLineBreak+
                     '            <td>'+Controller.DM.FDQQuery.FieldByName('RAZAOSOCIAL').AsString+'</td> '+SLineBreak+
                     '            <td>'+Controller.DM.FDQQuery.FieldByName('CNPJ').AsString+'</td> '+SLineBreak+
                     '            <td>'+Controller.DM.FDQQuery.FieldByName('FONEFIXO').AsString+'</td> '+SLineBreak+
                     '            <td>'+Controller.DM.FDQQuery.FieldByName('FONECELULAR').AsString+'</td> '+SLineBreak+
                     '            <td align="center"> '+SLineBreak+
                     '                <button type="buttom" class="btn btn-xs btn-warning" data-toggle="tooltip" data-placement="top" title="Alterar Registro" onclick="SetaAcao(''Alt'', '''+Controller.DM.FDQQuery.FieldByName('IDCliente').AsString+''');"> '+SLineBreak+
                     '                    <i class="fa fa-pencil"></i> '+SLineBreak+
                     '                </button> '+SLineBreak+
                     '                <button type="buttom" class="btn btn-xs btn-danger" data-toggle="tooltip" data-placement="top" title="Excluir Registro" onclick="SetaAcao(''Exc'', '''+Controller.DM.FDQQuery.FieldByName('IDCliente').AsString+''');"> '+SLineBreak+
                     '                    <i class="fa fa-trash"></i> '+SLineBreak+
                     '                </button> '+SLineBreak+
                     '                <button type="buttom" class="btn btn-xs btn-info" data-toggle="tooltip" data-placement="top" title="Resetar Senha" onclick="SetaAcao(''Senha'', '''+Controller.DM.FDQQuery.FieldByName('IDCliente').AsString+''');"> '+SLineBreak+
                     '                    <i class="fa fa-key"></i> '+SLineBreak+
                     '                </button> '+SLineBreak+
                     '            </td> '+SLineBreak+

                     '        </tr> '+SLineBreak;
      Controller.DM.FDQQuery.Next;
    end;
    Controller.DM.FDQQuery.Close;

    html := html + '    </tbody> '+SLineBreak;
    html := html + '</table> '+SLineBreak;

    VValue := html;
    html := '';
  end;

end;

end.
