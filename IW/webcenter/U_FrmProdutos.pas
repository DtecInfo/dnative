unit U_FrmProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FrmPadrao, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, IWCompButton, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompEdit, IWDBStdCtrls, Data.DB, IWCompLabel, IWHTMLTag,
  frxClass, frxExportPDF, frxDBSet, IWBaseComponent, IWBaseHTMLComponent,
  IWBaseHTML40Component, IWCompExtCtrls, IWCompListbox;

type
  TFrmProdutos = class(TFrmPadrao)
    BtnExcluir: TIWButton;
    dsProdutosCad: TDataSource;
    IDPRODUTO: TIWDBEdit;
    DESCRICAO: TIWDBEdit;
    TituloModal: TIWLabel;
    BtnGravar: TIWButton;
    BtnCancelar: TIWButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    Filtro: TIWEdit;
    BtnImprimir: TIWButton;
    IWModalWindow1: TIWModalWindow;
    Ordenacao: TIWComboBox;
    procedure IWTemplateProcessorHTML1UnknownTag(const AName: string;
      var VValue: string);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure IWBTNACAOAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure BtnImprimirClick(Sender: TObject);
    procedure FiltroHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure DESCRICAOAsyncExit(Sender: TObject; EventParams: TStringList);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProdutos: TFrmProdutos;

implementation

{$R *.dfm}

uses ServerController, SweetAlerts, U_Dm, System.Math, funcoes, System.DateUtils;


procedure TFrmProdutos.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  //
  // CANCELAR EDICAO OU INCLUSAO DO RESGISTRO
  //
  Controller.DM.FDQProdutosCad.Cancel;

end;

procedure TFrmProdutos.BtnExcluirClick(Sender: TObject);
begin
  inherited;

  // Rotina de Exclusao do Registro selecionado

  Controller.DM.FDQQuery.Close;
  Controller.DM.FDQQuery.SQL.Clear;
  Controller.DM.FDQQuery.SQL.Add('Delete from Produtos ');
  Controller.DM.FDQQuery.SQL.Add('Where IDProduto = '+Trim(Copy(IWAcao.Text,6,50)));
  Controller.DM.FDQQuery.ExecSQL;
  Controller.DM.FDQQuery.Close;

  AddToInitProc(swalSuccess('Confirma��o', 'C�digo '+Trim(Copy(IWAcao.Text,6,50))+' excluido com sucesso !!!'))
end;

procedure TFrmProdutos.BtnGravarClick(Sender: TObject);
begin
  inherited;
  //
  // GRAVA RESGISTRO
  //
  if Controller.GLBPK <=0 then
    Controller.DM.FDQProdutosCadIDProduto.AsInteger := Controller.DM.FB_ReturnNextCOD_ByGenerator('COD_PRODUTO');

  try
    Controller.DM.FDQProdutosCad.Post;

    if Controller.GLBCrud = 'Altera��o' then
      AddToInitProc(swalSuccess('CONFIRMA��O', 'Altera��o realizada com sucesso !'))
    else
      AddToInitProc(swalSuccess('CONFIRMA��O', 'Cadastro realizado com sucesso !'));

  except
    AddToInitProc(swalAlert('ATEN��O','Ocorreu um erro na grava��o do registro !'));
  end;
end;

procedure TFrmProdutos.BtnImprimirClick(Sender: TObject);
var
  xDataRel : String;
  xLogotipo : String;
begin
  inherited;

  Controller.DM.FDQQuery.Close;
  Controller.DM.FDQQuery.SQL.Clear;
  Controller.DM.FDQQuery.SQL.Add('Select * from Produtos ');

  // Filtro
  if Filtro.Text <> '' then
  begin
    Controller.DM.FDQQuery.SQL.Add('Where Descricao like ''%'+Filtro.Text+'%'' ');
    frxReport1.Variables['Filtro'] := QuotedStr('Filtro Descri��o: "'+Filtro.Text+'"');
  end;

  // ORDENACAO
  if Ordenacao.SelectedValue = 'C�digo' then
    Controller.DM.FDQQuery.SQL.Add('Order by IDProduto ');
  if Ordenacao.SelectedValue = 'Descri��o' then
    Controller.DM.FDQQuery.SQL.Add('Order by Descricao ');

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

procedure TFrmProdutos.FiltroHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add('placeholder="Digite parte do nome do produto"');
end;

procedure TFrmProdutos.IWBTNACAOAsyncClick(Sender: TObject;
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

    Controller.DM.FDQProdutosCad.Close;
    Controller.DM.FDQProdutosCad.Open;
    Controller.DM.FDQProdutosCad.Insert;

    Controller.DM.FDQProdutosCadIDProduto.Value := -1;

    WebApplication.CallBackResponse.AddJavaScriptToExecute('$(''#Cadastro'').modal(''show'');');
  end;


  // Clicou em Alterar
  if Trim(Copy(IWAcao.Text,1,5)) = 'Alt' then
  begin
    Controller.GLBPK := StrToInt(Trim(Copy(IWAcao.Text,6,50)));
    Controller.GLBCrud := 'Altera��o';
    // Atualizo o IWLabel que esta como RawText, assim atualizo o nome do t�tulo no Modal
    TituloModal.Text := Controller.GLBCrud;

    Controller.DM.FDQProdutosCad.Close;
    Controller.DM.FDQProdutosCad.ParamByName('IDProduto').AsInteger := Controller.GLBPK;
    Controller.DM.FDQProdutosCad.Open;
    Controller.DM.FDQProdutosCad.Edit;

    WebApplication.CallBackResponse.AddJavaScriptToExecute('$(''#Cadastro'').modal(''show'');');
  end;


  // Clicou em Excluir
  if Trim(Copy(IWAcao.Text,1,5)) = 'Exc' then
  begin
    WebApplication.CallBackResponse.AddJavaScriptToExecute(swalConfirm('CONFIRMA��O', 'Deseja excluir o produto n� '+Trim(Copy(IWAcao.Text,6,50)), 'warning', 'Excluir', 'Cancelar', 'BTNEXCLUIR'));
  end;


  // Clicou em Imprimir Relat�rios
  if Trim(Copy(IWAcao.Text,1,5)) = 'Impr' then
  begin
    WebApplication.CallBackResponse.AddJavaScriptToExecute('$(''#Relatorios'').modal(''show'');');
  end;
end;

procedure TFrmProdutos.IWTemplateProcessorHTML1UnknownTag(
  const AName: string; var VValue: string);
var
  html : String;
begin
  inherited;

  if AName = 'Grid' then
  begin
    //
    // MONTA A TABLE GRID DO CADASTRO
    //
    Controller.DM.FDQQuery.Close;
    Controller.DM.FDQQuery.SQL.Clear;
    Controller.DM.FDQQuery.SQL.Add('Select * from Produtos ');
    Controller.DM.FDQQuery.SQL.Add('Order by IDProduto ');
    Controller.DM.FDQQuery.Open();

    html := '';
    html := html + '<table id="GRID" class="table table-bordered table-striped table-hover"> '+SLineBreak+
                   '    <thead> '+SLineBreak+
                   '        <tr> '+SLineBreak+
                   '            <th style="text-align: center;">C�digo</th> '+SLineBreak+
                   '            <th>Descri��o do Produto</th> '+SLineBreak+
                   '            <th style="text-align: center;">A��es</th> '+SLineBreak+
                   '        </tr> '+SLineBreak+
                   '    </thead> '+SLineBreak+
                   '    <tbody> '+SLineBreak;

    Controller.DM.FDQQuery.First;
    while not Controller.DM.FDQQuery.Eof do
    begin
      html := html + '        <tr> '+SLineBreak+
                     '            <td align="center">'+Controller.DM.FDQQuery.FieldByName('IdProduto').AsString+'</td> '+SLineBreak+
                     '            <td>'+Controller.DM.FDQQuery.FieldByName('Descricao').AsString+'</td> '+SLineBreak+
                     '            <td align="center"> '+SLineBreak+
                     '                <button type="buttom" class="btn btn-xs btn-warning" onclick="SetaAcao(''Alt'', '''+Controller.DM.FDQQuery.FieldByName('IDProduto').AsString+''');"> '+SLineBreak+
                     '                    <i class="fa fa-pencil"></i> '+SLineBreak+
                     '                </button> '+SLineBreak+
                     '                <button type="buttom" class="btn btn-xs btn-danger" onclick="SetaAcao(''Exc'', '''+Controller.DM.FDQQuery.FieldByName('IDProduto').AsString+''');"> '+SLineBreak+
                     '                    <i class="fa fa-trash"></i> '+SLineBreak+
                     '                </button> '+SLineBreak+
                     '            </td> '+SLineBreak+

                     '        </tr> '+SLineBreak;
      Controller.DM.FDQQuery.Next;
    end;
    Controller.DM.FDQQuery.Close;

    html := html + '    </tbody> '+SLineBreak;

    //
    // DESMARQUE ABAIXO SE QUISER O CABE�ALHO NO FINAL DO DATATABLE REPETIDO
    //

//    html := html + '    <tfoot> '+SLineBreak+
//                   '        <tr> '+SLineBreak+
//                   '            <th style="text-align: center;">C�digo</th> '+SLineBreak+
//                   '            <th>Nome do Funcion�rio</th> '+SLineBreak+
//                   '            <th>C.P.F.</th> '+SLineBreak+
//                   '            <th>Fone Fixo</th> '+SLineBreak+
//                   '            <th>Celular</th> '+SLineBreak+
//                   '            <th style="text-align: center;">A��es</th> '+SLineBreak+
//                   '        </tr> '+SLineBreak+
//                   '    </tfoot> '+SLineBreak;

    html := html + '</table> '+SLineBreak;

    VValue := html;
    html := '';
  end;

end;

procedure TFrmProdutos.DESCRICAOAsyncExit(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
//  if Length(Controller.DM.FDQProdutosCadDescricao.Value) < 5 then
//  begin
//    WebApplication.CallBackResponse.AddJavaScriptToExecute(swalError('Aten��o', 'Descri��o do Produto precisa ter pelo menos 5 caracteres !'));
//    RAZAOSOCIAL.SetFocus;
//    Abort;
//  end;
end;

end.

