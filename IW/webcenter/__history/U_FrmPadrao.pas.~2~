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
    procedure IWTemplateProcessorHTML1UnknownTag(const AName: string;
      var VValue: string);
    procedure IWBTNACAOAsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}

uses ServerController, SweetAlerts;


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
end;

end.
