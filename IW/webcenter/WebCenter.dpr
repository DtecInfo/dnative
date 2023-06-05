program WebCenter;

uses
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  Forms,
  IWStart,
  U_FrmLogin in 'U_FrmLogin.pas' {FrmLogin: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  Extenso in 'Extenso.pas',
  funcoes in 'funcoes.PAS',
  SweetAlerts in 'SweetAlerts.pas',
  U_DM in 'U_DM.pas' {DM: TDataModule},
  U_FrmPadrao in 'U_FrmPadrao.pas' {FrmPadrao: TIWAppForm},
  U_FrmIndex in 'U_FrmIndex.pas' {FrmIndex: TIWAppForm},
  U_FrmConfiguracoes in 'U_FrmConfiguracoes.pas' {FrmConfiguracoes: TIWAppForm},
  U_FrmClientes in 'U_FrmClientes.pas' {FrmClientes: TIWAppForm},
  U_FrmProdutos in 'U_FrmProdutos.pas' {FrmProdutos: TIWAppForm},
  U_FrmPesquisar in 'U_FrmPesquisar.pas' {FrmPesquisar: TIWAppForm},
  U_FrmIndexCliente in 'U_FrmIndexCliente.pas' {FrmIndexCliente: TIWAppForm},
  U_FrmClientesDBGrid in 'U_FrmClientesDBGrid.pas' {FrmClientesDBGrid: TIWAppForm},
  U_FrmSimulacaoVenda in 'U_FrmSimulacaoVenda.pas' {FrmSimulacaoVenda: TIWAppForm},
  U_UsersEmp in 'U_UsersEmp.pas' {FormUsersEmp: TIWAppForm},
  U_motivos_recusa in 'U_motivos_recusa.pas' {MotivosRecusa: TIWAppForm},
  U_ControleFichas in 'U_ControleFichas.pas' {ControleFichas: TIWAppForm},
  U_Seguranca in 'U_Seguranca.pas' {Seguranca: TIWAppForm},
  U_UsuariosOrigem in 'U_UsuariosOrigem.pas' {UsuariosOrigem: TIWAppForm},
  U_Databases in 'U_Databases.pas' {Databases: TIWAppForm},
  U_Frm_Clientes in 'U_Frm_Clientes.pas' {FormClientes: TIWAppForm},
  U_CliCad in 'U_CliCad.pas' {FormCliCad: TIWAppForm},
  U_Compras in 'U_Compras.pas' {FormCompras: TIWAppForm},
  U_Entrada_NF in 'U_Entrada_NF.pas' {FormEntrada_Nf: TIWAppForm},
  U_Tabelas in 'U_Tabelas.pas' {FormTabelas: TIWAppForm},
  U_Frm_Gerencia in 'U_Frm_Gerencia.pas' {Form_gerencia: TIWAppForm},
  U_Saidas in 'U_Saidas.pas' {form_saidas: TIWAppForm},
  U_usuarios in 'U_usuarios.pas' {form_usuarios: TIWAppForm},
  u_inventario in 'u_inventario.pas' {form_inventario: TIWAppForm};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
