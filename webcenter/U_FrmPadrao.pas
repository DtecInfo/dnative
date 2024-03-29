unit U_FrmPadrao;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWVCLComponent, IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, IWCompButton, Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompEdit;

type
  TFrmPadrao = class(TIWAppForm)
    IWACAO: TIWEdit;
    IWBTNACAO: TIWButton;
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    edit_nova_senha: TIWEdit;
    BTN_TROCAR_SENHA: TIWButton;
    procedure IWTemplateProcessorHTML1UnknownTag(const AName: string;
      var VValue: string);
    procedure IWBTNACAOAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure BTN_TROCAR_SENHAAsyncClick(Sender: TObject;
      EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}

uses ServerController, SweetAlerts;


procedure TFrmPadrao.BTN_TROCAR_SENHAAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin

  controller.DM.banco.ExecSQL(' ALTER USER '+ controller.xUsuario +' IDENTIFIED BY ' + edit_nova_senha.Text);

  AddToInitProc(swalSuccess('Sucesso!','Sua senha foi alterada com sucesso!, fa�a o logon novamente!'));


end;

procedure TFrmPadrao.IWBTNACAOAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  if Trim(Copy(IWAcao.Text,1,5)) = 'Menu' then
    Controller.AcaoMenu(Trim(Copy(IWAcao.Text,6,50)));
end;

procedure TFrmPadrao.IWTemplateProcessorHTML1UnknownTag(const AName: string;
  var VValue: string);
begin
  if AName = 'MenuPrincipal' then
    VValue := Controller.MenuPrincipal;

  if AName = 'UsuarioAtual' then
    if Length(Controller.xUsuario) > 15 then
      VValue := Copy(Controller.xUsuario,1,15)+'...'
    else
      VValue := UpperCase(Controller.xUsuario);

  if AName = 'DataUltimoAcesso' then
    VValue := Controller.xDataUltimoAcesso;

  if AName = 'CrudTela' then
    VValue := Controller.GLBCrud;

  if AName = 'Cliente' then
    VValue := Controller.xCliente;

    if AName= 'cod_empresa' then
       VValue:= controller.xcod_empresa.ToString;

     if aName= 'empresa' then
      VValue := controller.xCliente;

      if aName= 'Ambiente' then
      VValue := controller.xDatabase;

end;

end.
