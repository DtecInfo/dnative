unit UserSessionUnit;

{
  This is a DataModule where you can add components or declare fields that are specific to 
  ONE user. Instead of creating global variables, it is better to use this datamodule. You can then
  access the it using UserSession.
}
interface

uses
  IWUserSessionBase, SysUtils, Classes, IdHashMessageDigest,
  System.Generics.Collections, IWAppForm, IWInit, IniFiles, U_DM,
  System.Math, Vcl.Graphics, EncdDecd, ACBrBase, ACBrMail, IWCompText;
type
  TIWUserSession = class(TIWUserSessionBase)
    EMAIL: TACBrMail;
    procedure IWUserSessionBaseCreate(Sender: TObject);
    procedure EMAILMailException(const AMail: TACBrMail; const E: Exception;
      var ThrowIt: Boolean);
    procedure FindReplaceMemo(const Enc, subs: String; var Texto: TIWText);

  private
    { Private declarations }
  public
    { Public declarations }


    DM : TDM;

    IDModulo : Integer;
    GLBPK : integer;
    GLBPK2 : integer;
    GLBPK3 : string;
    GLBCrud : string;
    GLBNomeTela : String;
    GLBNomeRelatorio : string;

    MenuPrincipal : string;

    //
    // Variaveis Globais da Empresa em Uso
    //
    xUsuario          : String;
    xDataUltimoAcesso : String;
    xErro             : String;
    xTipoAcesso       : String;
    xCliente          : String;
    xCodCliente       : Integer;


    function MontaPaginacao(PagAtual, ItensPag, TotalPag, TotalRegistros : Integer): String;
    function MontaPaginacao2(PagAtual, ItensPag, TotalPag, TotalRegistros : Integer): String;
    function MD5(const texto:string):string;
    function AcaoMenu(Acao: String): String;
    function IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
  end;

implementation

{$R *.dfm}

uses funcoes, ServerController, U_FrmLogin, U_FrmIndex, U_FrmConfiguracoes,
  U_FrmClientes, U_FrmFuncionarios, U_FrmProdutos, U_FrmSolicitacoes,
  U_FrmAcompChamados, U_FrmPesquisar, U_FrmIndexCliente, U_FrmClientesDBGrid;


function TIWUserSession.MontaPaginacao(PagAtual, ItensPag, TotalPag, TotalRegistros : Integer): String;
var
  html : String;
  Pos1, Pos2 : Integer;
begin
  Pos1 := ((ItensPag * (PagAtual-1)) + 1);
  Pos2 := Pos1 + (ItensPag -1);
  if Pos2 > TotalRegistros then Pos2 := TotalRegistros;

  html := '';
  html := html + '        <br /> ' + SLineBreak;
  html := html + '        Mostrando de ' + Pos1.ToString + ' até ' + Pos2.ToString + ' de ' + TotalRegistros.ToString + ' registros' + SLineBreak;

  Result := html;
end;

function TIWUserSession.MontaPaginacao2(PagAtual, ItensPag, TotalPag, TotalRegistros : Integer): String;
var
  html : String;
  Pos1, Pos2 : Integer;
begin
  Pos1 := ((ItensPag * (PagAtual-1)) + 1);
  Pos2 := Pos1 + (ItensPag -1);
  if Pos2 > TotalRegistros then Pos2 := TotalRegistros;

  html := '';
  html := html + '<div class="row"> ' + SLineBreak;
  html := html + '    <div class="col-xs-12 col-sm-5 text-left"> ' + SLineBreak;
  html := html + '        <br /> ' + SLineBreak;
  html := html + '        Mostrando de ' + Pos1.ToString + ' até ' + Pos2.ToString + ' de ' + TotalRegistros.ToString + ' registros' + SLineBreak;
  html := html + '    </div> ' + SLineBreak;
  html := html + '    <div class="col-xs-12 col-sm-7 text-right"> ' + SLineBreak;
  html := html + '        <ul id="paginacao" class="sync-pagination pagination-sm"></ul> ' + SLineBreak;
  html := html + '    </div> ' + SLineBreak;
  html := html + '</div> ' + SLineBreak;
  html := html + '<script> ' + SLineBreak;
  html := html + '    $(''#paginacao'').twbsPagination({ ' + SLineBreak; //.sync-pagination
  html := html + '        first: ''<i class="glyphicon glyphicon-fast-backward text-primary"></i>'', ' + SLineBreak;
  html := html + '        last: ''<i class="glyphicon glyphicon-fast-forward text-primary"></i>'', ' + SLineBreak;
  html := html + '        prev: ''<i class="glyphicon glyphicon-backward text-primary"></i>'', ' + SLineBreak;
  html := html + '        next: ''<i class="glyphicon glyphicon-forward text-primary"></i>'', ' + SLineBreak;
  html := html + '        startPage: ' + PagAtual.ToString + ', ' + sLineBreak;
  html := html + '        totalPages: ' + TotalPag.ToString + ', ' + SLineBreak;
  html := html + '        visiblePages: 5, ' + SLineBreak;
  html := html + '        onPageClick: function (event, page) { ' + SLineBreak;
  html := html + '            SetaAcao(''TWBS '', page); ' + SLineBreak;
  html := html + '        } ' + SLineBreak;
  html := html + '    }); ' + SLineBreak;
  html := html + ' ' + SLineBreak;
  html := html + '</script> ' + SLineBreak;

  Result := html;
end;

procedure TIWUserSession.FindReplaceMemo(const Enc, subs: String; var Texto: TIWText);
Var
i, Posicao: Integer;
Linha: string;
Begin
  For i:= 0 to Texto.Lines.count - 1 do
  begin
      Linha := Texto. Lines[i];
      Repeat
        Posicao:=Pos(Enc,Linha);
        If Posicao > 0 then
        Begin
          Delete(Linha,Posicao,Length(Enc));
          Insert(Subs,Linha,Posicao);
          Texto.Lines[i]:=Linha;
        end;
      until Posicao = 0;
  end;

end;

procedure TIWUserSession.EMAILMailException(const AMail: TACBrMail;
  const E: Exception; var ThrowIt: Boolean);
begin
  WebApplication.ShowMessage(E.Message);
  ThrowIt := False;
end;



function TIWUserSession.AcaoMenu(Acao: String): String;
begin
  if Acao = 'Encerrar' then
  begin
    TIWAppForm(WebApplication.ActiveForm).Release;
    TFrmLogin.Create(WebApplication).Show;
  end;

  if Acao = 'Iniciar' then
  begin
    TIWAppForm(WebApplication.ActiveForm).Release;
    TFrmIndex.Create(WebApplication).Show;
  end;

  if Acao = 'IniciarCliente' then
  begin
    TIWAppForm(WebApplication.ActiveForm).Release;
    TFrmIndexCliente.Create(WebApplication).Show;
  end;

  if Acao = 'Funcionarios' then
  begin
    TIWAppForm(WebApplication.ActiveForm).Release;
    TFrmFuncionarios.Create(WebApplication).Show;
  end;

  if Acao = 'Clientes' then
  begin
    TIWAppForm(WebApplication.ActiveForm).Release;
    TFrmClientes.Create(WebApplication).Show;
  end;

  if Acao = 'ClientesDBGrid' then
  begin
    TIWAppForm(WebApplication.ActiveForm).Release;
    TFrmClientesDBGrid.Create(WebApplication).Show;
  end;

  if Acao = 'Produtos' then
  begin
    TIWAppForm(WebApplication.ActiveForm).Release;
    TFrmProdutos.Create(WebApplication).Show;
  end;

  if Acao = 'Solicitacoes' then
  begin
    TIWAppForm(WebApplication.ActiveForm).Release;
    TFrmSolicitacoes.Create(WebApplication).Show;
  end;

  if Acao = 'Acompanhamento' then
  begin
    TIWAppForm(WebApplication.ActiveForm).Release;
    TFrmAcompChamados.Create(WebApplication).Show;
  end;

  if Acao = 'Configuracoes' then
  begin
    TIWAppForm(WebApplication.ActiveForm).Release;
    TFrmConfiguracoes.Create(WebApplication).Show;
  end;

  if Acao = 'Pesquisa' then
  begin
    TIWAppForm(WebApplication.ActiveForm).Release;
    TFrmPesquisar.Create(WebApplication).Show;
  end;
end;

function TIWUserSession.MD5(const texto:string):string;
var
  idmd5 : TIdHashMessageDigest5;
begin
  idmd5 := TIdHashMessageDigest5.Create;
  try
    result := idmd5.HashStringAsHex(texto);
  finally
    idmd5.Free;
  end;
end;

procedure TIWUserSession.IWUserSessionBaseCreate(Sender: TObject);
begin
  DM := TDM.Create(Self);
end;

function TIWUserSession.IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
begin
  if Expressao then
     Result := ParteTRUE
  else
     Result := ParteFALSE;
end;

end.
