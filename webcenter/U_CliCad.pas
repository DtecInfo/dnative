unit U_CliCad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FrmPadrao, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, IWCompButton, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompEdit, IWCompListbox,IWHTMLTag,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, IWDBStdCtrls, IWBS4CustomControl, IWBS4CustomInput,
  IWBS4Input, IWCompGrids, IWCompCalendar, IWCompLabel;

type
  TFormCliCad = class(TFrmPadrao)
    COMBO_TIPO: TIWComboBox;
    COMBO_CLASSE: TIWComboBox;
    EDIT_COD_CLIENTE_PJ: TIWEdit;
    EDIT_NOME: TIWEdit;
    edit_cod_cliente_pf: TIWEdit;
    combo_uf: TIWDBLookupComboBox;
    combo_cidades: TIWDBLookupComboBox;
    ds_uf: TDataSource;
    ds_cidades: TDataSource;
    q_uf: TFDQuery;
    q_cidades: TFDQuery;
    q_ufUF: TStringField;
    q_cidadesCOD_CIDADE: TFMTBCDField;
    q_cidadesDESCRICAO: TStringField;
    edit_endereco: TIWEdit;
    edit_complemento: TIWEdit;
    edit_numero: TIWEdit;
    edit_cep: TIWEdit;
    edit_ddd1: TIWEdit;
    edit_ddd2: TIWEdit;
    edit_ddd3: TIWEdit;
    edit_fone1: TIWEdit;
    edit_fone2: TIWEdit;
    edit_fone3: TIWEdit;
    edit_bairro: TIWEdit;
    combo_sexo: TIWComboBox;
    edit_data_nasc: TIWEdit;
    edit_rg: TIWEdit;
    combo_estado_cv: TIWComboBox;
    edit_insc_mun: TIWEdit;
    edit_insc_est: TIWEdit;
    BTN_GRAVAR_DADOS: TIWButton;
    q_cliente_inc: TFDQuery;
    edit_email: TIWEdit;
    lb_acao: TIWLabel;
    q_geral: TFDQuery;
    procedure EDIT_COD_CLIENTE_PJHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_cod_cliente_pfHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure COMBO_TIPOChange(Sender: TObject);
    procedure IWAppFormShow(Sender: TObject);
    procedure combo_ufChange(Sender: TObject);
    procedure edit_cepHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_ddd1HTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_ddd2HTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_ddd3HTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_fone1HTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_fone2HTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edit_fone3HTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure BTN_GRAVAR_DADOSClick(Sender: TObject);
  private
    { Private declarations }
    procedure incluir_cliente;
    procedure alterar_cliente(cod_cliente : string);
    function retirar_mascara(campo,valor:string):string;
  public
    { Public declarations }
  end;

var
  FormCliCad: TFormCliCad;

implementation

{$R *.dfm}

uses  ServerController, UserSessionUnit, SweetAlerts, U_DM;

procedure TFormCliCad.EDIT_COD_CLIENTE_PJHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
   ATag.Add('placeholder="Informe um CNPJ v�lido"');
   ATag.Add(' style="text-align:right" ');
   ATag.Add('data-inputmask="''mask'': ''99.999.999/9999-99''" data-mask');

end;

procedure TFormCliCad.edit_ddd1HTMLTag(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="Informe um DDD v�lido"');
   ATag.Add(' style="text-align:right" ');
   ATag.Add('data-inputmask="''mask'': ''(99)''" data-mask');
end;

procedure TFormCliCad.edit_ddd2HTMLTag(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="Informe um DDD v�lido"');
   ATag.Add(' style="text-align:right" ');
   ATag.Add('data-inputmask="''mask'': ''(99)''" data-mask');
end;

procedure TFormCliCad.edit_ddd3HTMLTag(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="Informe um DDD v�lido"');
   ATag.Add(' style="text-align:right" ');
   ATag.Add('data-inputmask="''mask'': ''(99)''" data-mask');
end;

procedure TFormCliCad.edit_fone1HTMLTag(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="Informe um Fone v�lido"');
   ATag.Add(' style="text-align:right" ');
   ATag.Add('data-inputmask="''mask'': ''9999-9999''" data-mask');
end;

procedure TFormCliCad.edit_fone2HTMLTag(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add('placeholder="Informe um CEL v�lido"');
   ATag.Add(' style="text-align:right" ');
   ATag.Add('data-inputmask="''mask'': ''99999-9999''" data-mask');
end;

procedure TFormCliCad.edit_fone3HTMLTag(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;
 ATag.Add('placeholder="Informe um ZAP v�lido"');
   ATag.Add(' style="text-align:right" ');
   ATag.Add('data-inputmask="''mask'': ''99999-9999''" data-mask');
end;

procedure TFormCliCad.incluir_cliente;
begin

 if lb_acao.Caption='Incluindo...' then
     begin
        q_cliente_inc.Close;
        q_cliente_inc.ParamByName('bairro').asstring := edit_bairro.Text ;
        q_cliente_inc.ParamByName('cep').asstring := stringreplace(edit_cep.Text,'-','',[]) ;
        q_cliente_inc.ParamByName('classe').asstring := COMBO_CLASSE.SelectedValue ;
        q_cliente_inc.ParamByName('cod_cidade').AsInteger := combo_cidades.KeyValue ;

        //verifica se o tipo � F pu J

        if combo_tipo.SelectedValue='F' then
           begin
            q_cliente_inc.ParamByName('cod_cliente').asstring :=
            stringreplace(stringreplace(edit_cod_cliente_pf.Text,'.','',[rfReplaceAll, rfIgnoreCase]),'-','',[rfReplaceAll, rfIgnoreCase])  ;
            q_cliente_inc.ParamByName('data_nasc').AsDateTime := edit_data_nasc.AsDateTime ;
            q_cliente_inc.ParamByName('rg').asstring := edit_rg.Text ;
            q_cliente_inc.ParamByName('sexo').asstring := combo_sexo.SelectedValue ;
            //se for pessoa fisica dados juridicos ir�o null
            q_cliente_inc.ParamByName('inc_municipal').asstring := '' ;
            q_cliente_inc.ParamByName('insc_estadual').asstring := '' ;
           end;
        if combo_tipo.SelectedValue='J' then
           begin
            q_cliente_inc.ParamByName('cod_cliente').asstring :=
            stringreplace(stringreplace(stringreplace(EDIT_COD_CLIENTE_PJ.Text,'.','',[rfReplaceAll, rfIgnoreCase]),'-','',[rfReplaceAll, rfIgnoreCase]),'/','',[rfReplaceAll, rfIgnoreCase]);
            q_cliente_inc.ParamByName('inc_municipal').asstring := edit_insc_mun.Text ;
            q_cliente_inc.ParamByName('insc_estadual').asstring := edit_insc_est.Text ;

            //se for pessoa juridica manda dados em branco
            q_cliente_inc.ParamByName('data_nasc').AsString := '';
            q_cliente_inc.ParamByName('rg').asstring := '' ;
            q_cliente_inc.ParamByName('sexo').asstring := '';
           end;


        q_cliente_inc.ParamByName('complemento').asstring :=UpperCase(edit_complemento.Text ) ;
        //q_cliente_inc.ParamByName('data_alteracao').asstring := '' ;
        //q_cliente_inc.ParamByName('data_cadastro').asstring := 'sysdate' ;

        q_cliente_inc.ParamByName('ddd1').asstring := stringreplace(stringreplace(edit_ddd1.Text,'(','',[]),')','',[])  ;
        q_cliente_inc.ParamByName('ddd2').asstring := stringreplace(stringreplace(edit_ddd2.Text,'(','',[]),')','',[])  ;
        q_cliente_inc.ParamByName('ddd3').asstring := stringreplace(stringreplace(edit_ddd3.Text,'(','',[]),')','',[])  ;
        q_cliente_inc.ParamByName('email').asstring := edit_email.Text ;
        q_cliente_inc.ParamByName('endereco').asstring :=UpperCase(edit_endereco.Text ) ;
        q_cliente_inc.ParamByName('fachada').AsInteger := STRTOINT(edit_numero.Text) ;
        q_cliente_inc.ParamByName('fone1').asstring := stringreplace(edit_fone1.Text,'-','',[]) ;
        q_cliente_inc.ParamByName('fone2').asstring := stringreplace(edit_fone2.Text,'-','',[]) ;
        q_cliente_inc.ParamByName('fone3').asstring :=  stringreplace(edit_fone3.Text,'-','',[]) ;

        q_cliente_inc.ParamByName('nacionalidade').asstring :=''  ;
        q_cliente_inc.ParamByName('nome').asstring :=UpperCase(EDIT_NOME.Text)  ;

        q_cliente_inc.ParamByName('sobrenome').asstring :=''  ;
        q_cliente_inc.ParamByName('tipo').asstring := COMBO_TIPO.SelectedValue ;
        q_cliente_inc.ParamByName('uf').asstring := combo_uf.KeyValue ;
        //q_cliente_inc.ParamByName('usuario_alterou').asstring := '' ;
        //q_cliente_inc.ParamByName('usuario_cadastrou').asstring := 'user' ;
        q_cliente_inc.ExecSQL;

        swalSuccess('Sucesso!','Dados Cadastrados com sucesso!');
        controller.AcaoMenu('FormClientes');
     end
     else
     begin

        q_geral.Close;
        q_geral.SQL.Clear;
        q_geral.sql.add('update clientes set');
        q_geral.sql.add('bairro = :bairro,');
        q_geral.sql.add('cep = :cep,');
        q_geral.sql.add('classe = :classe,');
        q_geral.sql.add('cod_cidade = :cod_cidade,');
        q_geral.sql.add('complemento = :complemento,');
        q_geral.sql.add('data_alteracao = sysdate,');
        q_geral.sql.add('data_nasc = :data_nasc,');
        q_geral.sql.add('ddd1 = :ddd1,');
        q_geral.sql.add('ddd2 = :ddd2,');
        q_geral.sql.add('ddd3 = :ddd3,');
        q_geral.sql.add('email = :email,');
        q_geral.sql.add('endereco = :endereco,');
        q_geral.sql.add('fachada = :fachada,');
        q_geral.sql.add('fone1 = :fone1,');
        q_geral.sql.add('fone2 = :fone2,');
        q_geral.sql.add('fone3 = :fone3,');
        q_geral.sql.add('inc_municipal = :inc_municipal,');
        q_geral.sql.add('insc_estadual = :insc_estadual,');
        q_geral.sql.add('nome = :nome,');
        q_geral.sql.add('rg = :rg,');
        q_geral.sql.add('sexo = :sexo,');
        q_geral.sql.add('uf = :uf,');
        q_geral.sql.add('usuario_alterou = user ');
        q_geral.sql.add('where cod_cliente = :cod_cliente');


        q_geral.parambyname('bairro').asstring:=edit_bairro.Text ;
        q_geral.parambyname('cep').asstring:=retirar_mascara('cep',edit_cep.Text) ;
        q_geral.parambyname('classe').Value:= COMBO_CLASSE.SelectedValue;
        q_geral.parambyname('cod_cidade').Value:= combo_cidades.KeyValue;
        q_geral.parambyname('complemento').asstring:=edit_complemento.Text ;
        q_geral.parambyname('data_nasc').asstring:= edit_data_nasc.Text;
        q_geral.parambyname('ddd1').asstring:= retirar_mascara('ddd1',  edit_ddd1.Text);
        q_geral.parambyname('ddd2').asstring:=retirar_mascara('ddd2', edit_ddd2.Text);
        q_geral.parambyname('ddd3').asstring:=retirar_mascara('ddd3', edit_ddd3.Text);
        q_geral.parambyname('email').asstring:= edit_email.Text;
        q_geral.parambyname('endereco').asstring:=edit_endereco.Text ;
        q_geral.parambyname('fachada').AsInteger:=edit_numero.AsInteger ;
        q_geral.parambyname('fone1').asstring:=retirar_mascara('fone1',edit_fone1.Text) ;
        q_geral.parambyname('fone2').asstring:=retirar_mascara('fone2',edit_fone2.Text) ;
        q_geral.parambyname('fone3').asstring:=retirar_mascara('fone3',edit_fone3.Text) ;
        q_geral.parambyname('inc_municipal').asstring:=edit_insc_mun.Text ;
        q_geral.parambyname('insc_estadual').asstring:=edit_insc_est.Text ;
        q_geral.parambyname('nome').asstring:= EDIT_NOME.Text;
        q_geral.parambyname('rg').asstring:= edit_rg.Text;
        q_geral.parambyname('sexo').Value:= combo_sexo.SelectedValue;
        q_geral.parambyname('uf').Value:=combo_uf.KeyValue ;

        if COMBO_TIPO.SelectedValue='F' then
        begin
         q_geral.parambyname('cod_cliente').AsString:=
        retirar_mascara('cod_cliente',edit_cod_cliente_pf.Text)

        end
        else
        if COMBO_TIPO.SelectedValue='J' then
        begin
          q_geral.parambyname('cod_cliente').AsString:=
        retirar_mascara('cod_cliente',EDIT_COD_CLIENTE_PJ.Text)

        end;


        q_geral.ExecSQL;

         swalSuccess('Sucesso!','Dados atualizados com sucesso!');
        controller.AcaoMenu('FormClientes');


     end;





end;

procedure TFormCliCad.IWAppFormShow(Sender: TObject);
begin
  inherited;
  q_uf.Close;
  q_uf.Open();






    //Verifica se precisa alterar
     if controller.xcod_cliente_alt='' then
     begin
       lb_acao.Caption:='Incluindo...';
     end
     else
     begin
       lb_acao.Caption:='Alterando...:'+ controller.xcod_cliente_alt;

       alterar_cliente(controller.xcod_cliente_alt);
       controller.xcod_cliente_alt:='';

       COMBO_TIPO.Enabled:=false;
       EDIT_COD_CLIENTE_PJ.Enabled:=false;
       edit_cod_cliente_pf.Enabled:=false;

     end;




end;

function TFormCliCad.retirar_mascara(campo,valor: string): string;

begin

  if campo='cod_cliente' then
  begin

     valor:= stringreplace(valor,'.','',[rfReplaceAll, rfIgnoreCase]);
     valor:= stringreplace(valor,'-','',[rfReplaceAll, rfIgnoreCase]);
     valor:= stringreplace(valor,'/','',[rfReplaceAll, rfIgnoreCase]);

  end;
  if campo='cep' then
  begin

    valor:= stringreplace(valor,'-','',[rfReplaceAll, rfIgnoreCase]);

  end;

  if campo='fone1' then begin

   valor:= stringreplace(valor,'-','',[rfReplaceAll, rfIgnoreCase]);

  end;

  if campo='fone2' then begin

   valor:= stringreplace(valor,'-','',[rfReplaceAll, rfIgnoreCase]);

  end;

  if campo='fone3' then begin

   valor:= stringreplace(valor,'-','',[rfReplaceAll, rfIgnoreCase]);

  end;

  if campo='ddd1' then begin

   valor:= stringreplace(valor,'(','',[rfReplaceAll, rfIgnoreCase]);
   valor:= stringreplace(valor,')','',[rfReplaceAll, rfIgnoreCase]);

  end;

   if campo='ddd2' then begin

   valor:= stringreplace(valor,'(','',[rfReplaceAll, rfIgnoreCase]);
   valor:= stringreplace(valor,')','',[rfReplaceAll, rfIgnoreCase]);

  end;
   if campo='ddd3' then begin

   valor:= stringreplace(valor,'(','',[rfReplaceAll, rfIgnoreCase]);
   valor:= stringreplace(valor,')','',[rfReplaceAll, rfIgnoreCase]);

  end;




   result:= valor;

end;

procedure TFormCliCad.alterar_cliente(cod_cliente: string);
begin

   q_geral.Close;
   q_geral.SQL.Clear;
   q_geral.sql.add('select bairro,');
   q_geral.sql.add('cep,');
   q_geral.sql.add('classe,');
   q_geral.sql.add('cod_cidade,');
   q_geral.sql.add('cod_cliente,');
   q_geral.sql.add('complemento,');
   q_geral.sql.add('data_alteracao,');
   q_geral.sql.add('data_cadastro,');
   q_geral.sql.add('data_nasc,');
   q_geral.sql.add('ddd1,');
   q_geral.sql.add('ddd2,');
   q_geral.sql.add('ddd3,');
   q_geral.sql.add('email,');
   q_geral.sql.add('endereco,');
   q_geral.sql.add('fachada,');
   q_geral.sql.add('fone1,');
   q_geral.sql.add('fone2,');
   q_geral.sql.add('fone3,');
   q_geral.sql.add('inc_municipal,');
   q_geral.sql.add('insc_estadual,');
   q_geral.sql.add('nacionalidade,');
   q_geral.sql.add('nome,');
   q_geral.sql.add('rg,');
   q_geral.sql.add('sexo,');
   q_geral.sql.add('sobrenome,');
   q_geral.sql.add('tipo,');
   q_geral.sql.add('uf,');
   q_geral.sql.add('usuario_alterou,');
   q_geral.sql.add('usuario_cadastrou');
   q_geral.sql.add('from clientes');
   q_geral.sql.add('where cod_cliente like' + '('+quotedstr('%' + cod_cliente + '%')+ ')');

   q_geral.Open();

  // Carrega formulario //

  if q_geral.FieldByName('classe').AsString='C' then
      begin
        COMBO_CLASSE.ItemIndex:=0
      end;
   if q_geral.FieldByName('classe').AsString='F' then
      begin
        COMBO_CLASSE.ItemIndex:=1
      end;
   if q_geral.FieldByName('classe').AsString='A' then
      begin
        COMBO_CLASSE.ItemIndex:=2
      end;

   EDIT_NOME.Text:= q_geral.FieldByName('nome').AsString;
   edit_endereco.Text:=q_geral.FieldByName('endereco').AsString;
   edit_complemento.Text:=q_geral.FieldByName('complemento').AsString;
   edit_numero.Text:= q_geral.FieldByName('fachada').AsString;
   edit_bairro.Text:=q_geral.FieldByName('bairro').AsString;
   edit_cep.Text:=q_geral.FieldByName('cep').AsString;
   combo_uf.KeyValue:=q_geral.FieldByName('uf').Value;

  if q_geral.FieldByName('tipo').AsString='F' then
      begin

        COMBO_TIPO.ItemIndex:=0;
        EDIT_COD_CLIENTE_PJ.Visible:=false;
        edit_cod_cliente_pf.Visible:=true;
        edit_cod_cliente_pf.Text:= q_geral.FieldByName('cod_cliente').AsString;
        edit_rg.Text:= q_geral.FieldByName('rg').AsString;
        edit_data_nasc.Text:= q_geral.FieldByName('data_nasc').AsString;

           if q_geral.FieldByName('sexo').AsString='M' then
           begin
            combo_sexo.ItemIndex:=0
           end;
            if q_geral.FieldByName('sexo').AsString='F' then
           begin
            combo_sexo.ItemIndex:=1
           end;
             if q_geral.FieldByName('sexo').AsString='O' then
           begin
            combo_sexo.ItemIndex:=2
           end;




      end;

  if q_geral.FieldByName('tipo').AsString='J' then
      begin

        COMBO_TIPO.ItemIndex:=1;
        EDIT_COD_CLIENTE_PJ.Visible:=True;
        edit_cod_cliente_pf.Visible:=false;
        EDIT_COD_CLIENTE_PJ.Text:= q_geral.FieldByName('cod_cliente').AsString;
        edit_insc_mun.Text:= q_geral.FieldByName('inc_municipal').AsString;
        edit_insc_est.Text:= q_geral.FieldByName('insc_estadual').AsString;

      end;

        edit_email.Text:= q_geral.FieldByName('email').AsString;
        edit_ddd1.Text:=q_geral.FieldByName('ddd1').AsString;
        edit_ddd2.Text:=q_geral.FieldByName('ddd2').AsString;
        edit_ddd3.Text:=q_geral.FieldByName('ddd3').AsString;
        edit_fone1.Text:=q_geral.FieldByName('fone1').AsString;
        edit_fone2.Text:=q_geral.FieldByName('fone2').AsString;
        edit_fone3.Text:=q_geral.FieldByName('fone3').AsString;


        q_cidades.Close;
        q_cidades.ParamByName('uf').Value:= combo_uf.KeyValue;
        q_cidades.Open();
        combo_cidades.Enabled:=true;
        combo_cidades.KeyValue:= q_geral.FieldByName('cod_cidade').Value;





end;

procedure TFormCliCad.BTN_GRAVAR_DADOSClick(Sender: TObject);
begin
  inherited;
incluir_cliente;
end;

procedure TFormCliCad.COMBO_TIPOChange(Sender: TObject);
begin
  inherited;
 if combo_tipo.ItemIndex=0 then
   begin
     edit_cod_cliente_pf.Visible:=true;
     EDIT_COD_CLIENTE_PJ.Visible:=false;

     //habilita dados fisicos
      edit_data_nasc.Visible:=true;
      combo_sexo.Visible:=true;
      edit_rg.Visible:=true;
      combo_estado_cv.Visible:=true;
      //desabilita dados juridicos
      edit_insc_mun.Visible:=false;
      edit_insc_est.Visible:=false;
   end;
  if COMBO_TIPO.ItemIndex=1 then
  begin
    edit_cod_cliente_pf.Visible:=false;
     EDIT_COD_CLIENTE_PJ.Visible:=true;

      //desabilita dados fisicos
      edit_data_nasc.Visible:=false;
      combo_sexo.Visible:=false;
      edit_rg.Visible:=false;
      combo_estado_cv.Visible:=false;
      //habilita dados juridicos
      edit_insc_mun.Visible:=true;
      edit_insc_est.Visible:=true;
  end;

end;

procedure TFormCliCad.combo_ufChange(Sender: TObject);
begin
  inherited;
q_cidades.Close;
q_cidades.ParamByName('uf').Value:= combo_uf.KeyValue;
q_cidades.Open();
combo_cidades.Enabled:=true;

end;

procedure TFormCliCad.edit_cepHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="Informe um CEP v�lido"');
   ATag.Add(' style="text-align:right" ');
   ATag.Add('data-inputmask="''mask'': ''99999-999''" data-mask');
end;

procedure TFormCliCad.edit_cod_cliente_pfHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;


  ATag.Add(' style="text-align:right" ');
  ATag.Add('placeholder="Informe um CPF v�lido"');
  ATag.Add('data-inputmask="''mask'': ''999.999.999-99''" data-mask');


end;

end.
