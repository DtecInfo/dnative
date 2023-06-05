unit U_Saidas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FrmPadrao, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, IWCompButton, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, IWCompLabel,
  IWCompRadioButton, IWCompListbox, IWDBStdCtrls, IWHTMLTag, IWCompMemo,
  IWBaseComponent, IWBaseHTMLComponent, IWBaseHTML40Component, IWCompExtCtrls,
  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF;

type
  Tform_saidas = class(TFrmPadrao)
    q_datatable: TFDQuery;
    q_geral: TFDQuery;
    q_aux: TFDQuery;
    produto: TIWLabel;
    rb_estoque: TIWRadioButton;
    rb_todos: TIWRadioButton;
    combo_operacao: TIWComboBox;
    combo_empresas: TIWDBLookupComboBox;
    q_empresas: TFDQuery;
    q_empresasCOD_EMPRESA: TFMTBCDField;
    q_empresasEMPRESA: TStringField;
    ds_empresas: TDataSource;
    edit_cliente: TIWEdit;
    combo_vendedor: TIWDBLookupComboBox;
    BTN_CLIENTE: TIWButton;
    q_vendedor: TFDQuery;
    ds_vendedor: TDataSource;
    q_vendedorNOME: TStringField;
    q_vendedorLOGIN: TStringField;
    edit_desc_valor: TIWEdit;
    edit_desc_perc: TIWEdit;
    btn_canc_esc: TIWButton;
    btn_conf_esc: TIWButton;
    edit_total: TIWEdit;
    edit_qtde_to_esc: TIWEdit;
    BTN_CONFI_ESCO: TIWButton;
    combo_tipo_desconto: TIWComboBox;
    BTN_APLICAR_DESC: TIWButton;
    edit_desc_un: TIWEdit;
    BTN_APLY_DESC_UN: TIWButton;
    combo_tipo_desc_un: TIWComboBox;
    q_desc: TFDQuery;
    BTN_CONFIRMAR_VENDA: TIWButton;
    vendedor: TIWLabel;
    cliente: TIWLabel;
    combo_formas_pgto: TIWComboBox;
    memo_pgto: TIWListbox;
    BTN_ADD_PGTO: TIWButton;
    BTN_DEL_PGTO: TIWButton;
    edit_valor_pgto: TIWEdit;
    memo_obs_pgto: TIWMemo;
    SALDO_PGTO: TIWLabel;
    TOTAL_PGTO: TIWLabel;
    q_disponivel: TFDQuery;
    r_vendas: TfrxReport;
    pdf_exp: TfrxPDFExport;
    db_vi: TfrxDBDataset;
    modal_vendas: TIWModalWindow;
    BTN_IMP_VENDA_SIM: TIWButton;
    BTN_IMP_VENDA_NAO: TIWButton;
    q_cli: TFDQuery;
    q_vendas: TFDQuery;
    q_emp: TFDQuery;
    q_vi: TFDQuery;
    q_viCOD_PRODUTO: TStringField;
    q_viDESCRICAO: TStringField;
    q_viFORNECEDOR: TStringField;
    q_viPRECO_UNITARIO: TFMTBCDField;
    q_viQTDE: TFMTBCDField;
    q_viDESC_VALOR: TFMTBCDField;
    q_viDESC_PERC: TFMTBCDField;
    q_viVALOR_TOTAL: TFMTBCDField;
    q_pgto: TFDQuery;
    q_pgtoPGTO: TStringField;
    q_pgtoVALOR: TFMTBCDField;
    dv_pgto: TfrxDBDataset;
    combo_filtro_op: TIWComboBox;
    combo_filtro_status: TIWComboBox;
    q_insert: TFDQuery;
    StringField1: TStringField;
    FMTBCDField1: TFMTBCDField;
    id_edicao: TIWLabel;
    edit_cod_mo: TIWEdit;
    edit_descricao_mo: TIWEdit;
    edit_valor_mo: TIWEdit;
    combo_agente_serv: TIWDBLookupComboBox;
    memo_obs_serv: TIWMemo;
    edit_total_serv: TIWEdit;
    edit_total_geral: TIWEdit;
    q_agente: TFDQuery;
    ds_agente: TDataSource;
    q_agenteLOGIN: TStringField;
    q_agenteNOME: TStringField;
    BTNOKSERV: TIWButton;
    BTN_SHOW_SERV: TIWButton;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWBTNACAOAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure rb_estoqueAsyncChange(Sender: TObject; EventParams: TStringList);
    procedure rb_todosAsyncChange(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormShow(Sender: TObject);
    procedure combo_operacaoAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure combo_empresasAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure BTN_CLIENTEAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure btn_canc_escAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure BTN_CONFI_ESCOAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure edit_qtde_to_escHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure BTN_APLICAR_DESCAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure edit_desc_unHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure BTN_APLY_DESC_UNAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure btn_conf_escAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure BTN_CONFIRMAR_VENDAAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure BTN_ADD_PGTOAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure BTN_DEL_PGTOAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure BTN_IMP_VENDA_SIMAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure combo_filtro_opAsyncChange(Sender: TObject;
      EventParams: TStringList);
    procedure BTNOKSERVAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure BTN_SHOW_SERVAsyncClick(Sender: TObject;
      EventParams: TStringList);

  private
    { Private declarations }
     procedure TBVendas(aParams: TStrings; out aResult: string);
     procedure TBEscolhidos(aParams: TStrings; out aResult: string);
     procedure TBItensBusca(aParams: TStrings; out aResult: string);
     procedure TBRemoto(aParams: TStrings; out aResult: string);
     procedure busca_itens_reload;
     procedure TBClientes(aParams: TStrings; out aResult: string);
     procedure tbescolhidos_reload;
     procedure tbvendas_reload;
     procedure limpar_temporaria;
     procedure inserir_temporaria;
     function  get_desconto(valor_desc: real ;valor_prod: real;op:string): boolean;
     procedure fechamento;
     procedure verificar_ipressao;
     procedure imprimir_venda(p_id : integer);
     procedure cancelar_doc(id : string);
     procedure recalcula_totais;
     function  ifnull(campo : string):string;
  public
    { Public declarations }
  end;

var
  form_saidas: Tform_saidas;

implementation

{$R *.dfm}

uses UserSessionUnit, ServerController, SweetAlerts, U_DM, System.StrUtils;

procedure Tform_saidas.BTNOKSERVAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  if edit_valor_mo.Text='' then
  begin
    edit_total_serv.Text:='0';
    tbescolhidos_reload;
  end
  else
  begin

   edit_total_serv.Text:= edit_valor_mo.Text;
   tbescolhidos_reload;
  end;


  recalcula_totais;


end;

procedure Tform_saidas.BTN_ADD_PGTOAsyncClick(Sender: TObject;
  EventParams: TStringList);
  var
  i: integer;
  v_error:Boolean;
begin
  inherited;

   v_error:=false;

 //Verifica se j� existe

 for i := 0 to memo_pgto.Items.Count - 1 do
   begin

       if copy(memo_pgto.Items[i],1,1) = combo_formas_pgto.SelectedValue then
      begin

       addtoinitproc(swalAlert('Alerta!','Forma de PGTO. j� lan�ada!'));
       v_error:=true;
       exit;
      end;


   end;



 if v_error=false then
 begin
        if edit_valor_pgto.Text<>'' then
        begin
           memo_pgto.Items.Add(combo_formas_pgto.SelectedText + '-' + edit_valor_pgto.Text );

          TOTAL_PGTO.Caption :=  floattostr(strtofloat(TOTAL_PGTO.Text) + strtofloat(edit_valor_pgto.Text));
          SALDO_PGTO.Caption :=  floattostr(strtofloat(SALDO_PGTO.Caption) - strtofloat(edit_valor_pgto.Text));
          edit_valor_pgto.Text:= SALDO_PGTO.Caption;

        end
        else
        begin
          addtoinitproc(swalAlert('Alerta:','Valor Inv�lido, verifique!'));
        end;
 end;


end;

procedure Tform_saidas.BTN_APLICAR_DESCAsyncClick(Sender: TObject;
  EventParams: TStringList);
  var
  v_valor_un : real;
begin
  inherited;


  //Aplicar desconto para todos os itens

 //Realiza recalculo do valor total

  controller.DM.banco.ExecSQL(' update temp_escolhidos set valor_total=qtde*preco_unitario, val_desc=0, perc_desc=0');

  q_geral.Close;
  q_geral.SQL.Clear;
  q_geral.SQL.Add(' select  sum(valor_total) as valor_total  from temp_escolhidos ');
  q_geral.Open();






   if get_desconto(strtofloat(edit_desc_valor.Text),
    q_geral.FieldByName('valor_total').AsFloat ,combo_tipo_desconto.SelectedValue ) = true then
  begin

    AddToInitProc(swalAlert('Alerta!', 'Desconto maior que permitido verifique! '));
  end
  else
  begin
    q_geral.Close;
    q_geral.SQL.Clear;
    q_geral.SQL.Add(' select  *  from temp_escolhidos ');
    q_geral.Open();

  if edit_desc_valor.Text <>'' then
    begin


      if strtofloat(edit_desc_valor.Text) >0 then
        begin

           if combo_tipo_desconto.SelectedValue ='1'  then   //valor
             begin

               q_aux.Close;
               q_aux.SQL.Clear;


               v_valor_un := strtofloat(edit_desc_valor.Text) / q_geral.RecordCount;
               q_aux.SQL.Add(' update temp_escolhidos set valor_total=(qtde * preco_unitario ) - :valor_desconto , val_desc= :valor_desconto , perc_desc=0 '  );
               q_aux.ParamByName('valor_desconto').AsFloat:= v_valor_un;
               q_aux.ExecSQL;


             end
             else
             begin
              //Percentual
              q_aux.Close;
              q_aux.SQL.Clear;

               v_valor_un := strtofloat(edit_desc_valor.Text) / 100;

               q_aux.SQL.Add(' update temp_escolhidos set valor_total=(qtde * preco_unitario ) - ((qtde * preco_unitario ) * :valor_desconto ) ,val_desc=0, perc_desc= :perc_desc ' );
               q_aux.ParamByName('valor_desconto').AsFloat:= v_valor_un;
               q_aux.ParamByName('perc_desc').AsFloat:= strtofloat(edit_desc_valor.Text);
               q_aux.ExecSQL;



             end;






        end;


    end;
    tbescolhidos_reload;
    recalcula_totais;
  end;







end;

procedure Tform_saidas.BTN_APLY_DESC_UNAsyncClick(Sender: TObject;
  EventParams: TStringList);
 var
  v_valor_un : real;
begin
  inherited;


  //Aplicar desconto para todos os itens

//Realiza recalculo do valor total
  controller.DM.banco.ExecSQL
      (' update temp_escolhidos set valor_total=qtde*preco_unitario, val_desc=0, perc_desc=0 where id='
      + edit_desc_un.Hint);

  q_geral.Close;
  q_geral.SQL.Clear;
  q_geral.SQL.Add(' select id,qtde,preco_unitario,valor_total from temp_escolhidos where id= '+ edit_desc_un.Hint);
  q_geral.Open();








  if get_desconto(strtofloat(edit_desc_un.Text),
    q_geral.FieldByName('valor_total').AsFloat ,combo_tipo_desc_un.SelectedValue ) = true then
  begin

    AddToInitProc(swalAlert('Alerta!', 'Desconto maior que permitido verifique! '));
  end
  else
  begin



    if edit_desc_un.Text <> '' then
    begin

      if strtofloat(edit_desc_un.Text) > 0 then
      begin

        if combo_tipo_desc_un.SelectedValue = '1' then // valor
        begin

          q_aux.Close;
          q_aux.SQL.Clear;

          v_valor_un := strtofloat(edit_desc_un.Text);
          q_aux.SQL.Add
            (' update temp_escolhidos set valor_total=(qtde * preco_unitario ) - :valor_desconto , val_desc= :valor_desconto , perc_desc=0 where id='
            + edit_desc_un.Hint);
          q_aux.ParamByName('valor_desconto').AsFloat := v_valor_un;
          q_aux.ExecSQL;

        end
        else
        begin
          // Percentual
          q_aux.Close;
          q_aux.SQL.Clear;

          v_valor_un := strtofloat(edit_desc_un.Text) / 100;

          q_aux.SQL.Add
            (' update temp_escolhidos set valor_total=(qtde * preco_unitario ) - ((qtde * preco_unitario ) * :valor_desconto ) ,val_desc=0, perc_desc= :perc_desc  where id='
            + edit_desc_un.Hint);
          q_aux.ParamByName('valor_desconto').AsFloat := v_valor_un;
          q_aux.ParamByName('perc_desc').AsFloat :=
            strtofloat(edit_desc_un.Text);
          q_aux.ExecSQL;

        end;

      end;

    end;
    tbescolhidos_reload;
    recalcula_totais;
  end;




end;

procedure Tform_saidas.btn_canc_escAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
 id_edicao.Hint:='0';
 id_edicao.Caption:='Venda Normal' ;
 limpar_temporaria;


end;

procedure Tform_saidas.BTN_CLIENTEAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDClientes'').modal(''show'');');
end;

procedure Tform_saidas.BTN_CONFIRMAR_VENDAAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

 if SALDO_PGTO.Caption='0' then
  begin
   fechamento;
  end
  else
  begin
    addtoinitproc(swalAlert('Alerta!','Total dos produtos n�o bate com total da forma de PGTO!'))
  end;

end;

procedure Tform_saidas.BTN_CONFI_ESCOAsyncClick(Sender: TObject;
  EventParams: TStringList);
  var
  v_preco_unitario :real;
begin
  inherited;


  q_disponivel.close;

  q_disponivel.SQL.Clear;

  q_disponivel.sql.add('select i.id,');
  q_disponivel.sql.add('i.cod_item,');
  q_disponivel.sql.add('i.descricao,');
  q_disponivel.sql.add('i.preco_venda,');
  q_disponivel.sql.add('i.cod_fornecedor,');
  q_disponivel.sql.add('ic.custo_contabil,');
  q_disponivel.sql.add('f.descricao  as fornecedor,');
  q_disponivel.sql.add('ig.descricao as grupo,');
  q_disponivel.sql.add('nvl(e.qtde,0) qtde,');
  q_disponivel.sql.add('nvl(e.reserva,0) reserva,');
  q_disponivel.sql.add('(nvl(e.qtde,0) - nvl(e.reserva,0)) as disponivel,');
  q_disponivel.sql.add('l.locacao,');
  q_disponivel.sql.add('l.cod_local_estoque');
  q_disponivel.sql.add('from itens              i,');
  q_disponivel.sql.add('itens_custos       ic,');
  q_disponivel.sql.add('estoque            e,');
  q_disponivel.sql.add('locacao            l,');
  q_disponivel.sql.add('fornecedor_estoque f,');
  q_disponivel.sql.add('itens_grupo        ig');
  q_disponivel.sql.add('where i.cod_fornecedor = f.cod_fornecedor');
  q_disponivel.sql.add('and i.cod_grupo = ig.cod_grupo');
  q_disponivel.sql.add('and i.cod_item=e.cod_item(+)');
  q_disponivel.sql.add('and i.cod_fornecedor=e.cod_fornecedor(+)');
  q_disponivel.sql.add('and i.cod_item=ic.cod_item(+)');
  q_disponivel.sql.add('and i.cod_fornecedor=ic.cod_fornecedor(+)');
  q_disponivel.sql.add('and i.cod_item=l.cod_item(+)');
  q_disponivel.sql.add('and i.cod_fornecedor=l.cod_fornecedor(+)');
  q_disponivel.sql.add('and i.id='+edit_qtde_to_esc.Hint);
  q_disponivel.Open();


 //para as opera�oes 2 e 3 checa se o item tem no estoque;

  if (combo_operacao.SelectedValue = '2') or (combo_operacao.SelectedValue = '3')   OR (combo_operacao.SelectedValue = '4')
  then
  begin

    if q_disponivel.FieldByName('disponivel').AsFloat <= 0 then
    begin

      AddToInitProc(swalAlert('Alerta',
        'Item Sem estoque suficiente para baixa'));
    end
    else
    begin
      if (edit_qtde_to_esc.Text = '') or (edit_qtde_to_esc.Text = '0') or
        (strtoint(edit_qtde_to_esc.Text) < 0) then
      begin
        AddToInitProc(swalAlert('Alerta', 'Quantidade Inv�lida, verifique!'));
      end
      else
      begin
        inserir_temporaria;
      end;

    end;

  end
  else if combo_operacao.SelectedValue = '1' then
  begin
    if (edit_qtde_to_esc.Text = '') or (edit_qtde_to_esc.Text = '0') or
      (strtoint(edit_qtde_to_esc.Text) < 0) then
    begin
      AddToInitProc(swalAlert('Alerta', 'Quantidade Inv�lida, verifique!'));
    end
    else
    begin

      inserir_temporaria;
    end;
  end;











end;

procedure Tform_saidas.btn_conf_escAsyncClick(Sender: TObject;
  EventParams: TStringList);
  var
  id_vendas : integer;
  v_error: Boolean;
  v_mensagem:string;

begin
  inherited;

  v_error:=false;

  v_mensagem:='';

  q_geral.Close;
  q_geral.SQL.Clear;
  q_geral.SQL.Add('select * from temp_escolhidos');
  q_geral.Open();

  if q_geral.RecordCount >0 then
     begin
       v_error:=false;
     end
     else
     begin
     v_mensagem:=v_mensagem + 'N�o h� itens.';

     v_error:=True;

     end;

  if edit_cliente.Text='' then
  begin
    v_error:=true;

    v_mensagem:=v_mensagem + 'Cliente n�o foi informado.';

  end;

  if combo_vendedor.ItemIndex< 0 then
    begin

     v_error:=true;

     v_mensagem:=v_mensagem + 'Vendedor n�o foi informado.';

    end;



   if v_error=true then
   begin

   AddToInitProc(swalAlert('Campos Obrigat�rios n�o preenchidos:',v_mensagem));
   end
   else
   begin

    vendedor.Caption:= combo_vendedor.SelectedText;
    cliente.Caption :=edit_cliente.Text;
    SALDO_PGTO.Caption:= edit_total_geral.Text;
    total_pgto.Caption:='0';
    memo_pgto.Items.Clear;

    if combo_operacao.SelectedValue<>'3' then
     begin
       WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDFechamento'').modal(''show'');');
     end
     else
     begin

     fechamento;

     end;







   end;

end;

procedure Tform_saidas.BTN_DEL_PGTOAsyncClick(Sender: TObject;
  EventParams: TStringList);
  var
  v_valor : string;
begin
  inherited;

//1- � vista=1
//2- Cart�o=2
//3- A Prazo=3
//4- Cheque=4

 if copy(memo_pgto.SelectedText,1,1) ='1' then
 begin

 v_valor:= copy(memo_pgto.SelectedText,12,memo_pgto.SelectedText.Length);

 SALDO_PGTO.Caption :=  floattostr(strtofloat(SALDO_PGTO.Caption) +   strtofloat(v_valor));
 TOTAL_PGTO.Caption :=   floattostr(strtofloat(TOTAL_PGTO.Caption) -  strtofloat(v_valor));



 end;
  if copy(memo_pgto.SelectedText,1,1) ='2' then
 begin
   v_valor:= copy(memo_pgto.SelectedText,11,memo_pgto.SelectedText.Length);

 SALDO_PGTO.Caption :=  floattostr(strtofloat(SALDO_PGTO.Caption) +   strtofloat(v_valor));
 TOTAL_PGTO.Caption :=   floattostr(strtofloat(TOTAL_PGTO.Caption) -  strtofloat(v_valor));


 end;
  if copy(memo_pgto.SelectedText,1,1) ='3' then
 begin

 v_valor:= copy(memo_pgto.SelectedText,12,memo_pgto.SelectedText.Length);

 SALDO_PGTO.Caption :=  floattostr(strtofloat(SALDO_PGTO.Caption) +   strtofloat(v_valor));
 TOTAL_PGTO.Caption :=   floattostr(strtofloat(TOTAL_PGTO.Caption) -  strtofloat(v_valor));

 end;
  if copy(memo_pgto.SelectedText,1,1) ='4' then
 begin

 v_valor:= copy(memo_pgto.SelectedText,11,memo_pgto.SelectedText.Length);

 SALDO_PGTO.Caption :=  floattostr(strtofloat(SALDO_PGTO.Caption) +   strtofloat(v_valor));
 TOTAL_PGTO.Caption :=   floattostr(strtofloat(TOTAL_PGTO.Caption) -  strtofloat(v_valor));

 end;





 memo_pgto.Items.Delete(memo_pgto.ItemIndex);
end;

procedure Tform_saidas.BTN_IMP_VENDA_SIMAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
 imprimir_venda(BTN_IMP_VENDA_SIM.Hint.ToInteger);
end;

procedure Tform_saidas.BTN_SHOW_SERVAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
 WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDServi'').modal(''show'');');
end;

procedure Tform_saidas.busca_itens_reload;
begin
WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBItensBusca").DataTable().ajax.reload();');
end;

procedure Tform_saidas.cancelar_doc(id: string);
var
v_error : Boolean;
v_operacao : integer;

begin

    v_error:=false;

       //Verificar a opera��o e se o status � Ativo=0

    q_geral.Close;
    q_geral.SQL.Clear;
    q_geral.SQL.Add('select status,operacao from vendas where cod_empresa=' + controller.xcod_empresa.ToString +
                    ' and id='+ id);
      q_geral.Open();

      v_operacao:= q_geral.FieldByName('operacao').AsInteger;


      if q_geral.FieldByName('operacao').AsInteger = 1 then
      begin
        v_error:=true;
      end;

       if (q_geral.FieldByName('status').AsInteger = 1) or (q_geral.FieldByName('status').AsInteger = 2) then
      begin
        v_error:=true;
      end;

      if v_error=false then
       begin

         //Retornar Item pro estoque

             try

               controller.DM.banco.StartTransaction;


                 //Localiza os itens da NF
                  q_geral.Close;
                  q_geral.SQL.Clear;

                  q_geral.sql.add('SELECT ID,');
                  q_geral.sql.add('CONTROLE,');
                  q_geral.sql.add('COD_EMPRESA,');
                  q_geral.sql.add('COD_PRODUTO,');
                  q_geral.sql.add('COD_FORNECEDOR,');
                  q_geral.sql.add('PRECO_UNITARIO,');
                  q_geral.sql.add('QTDE,');
                  q_geral.sql.add('VALOR_TOTAL,');
                  q_geral.sql.add('DESC_VALOR,');
                  q_geral.sql.add('DESC_PERC,');
                  q_geral.sql.add('LOCACAO,');
                  q_geral.sql.add('COD_LOCAL_ESTOQUE');
                  q_geral.sql.add('FROM VENDAS_ITENS');
                  q_geral.sql.add(' where cod_empresa=' + controller.xcod_empresa.ToString);
                  q_geral.sql.add('and controle=' + id);

                  q_geral.Open();

                     if v_operacao = 3 then
                    begin

                      //Deleta da interface  se for transferencia

                      controller.DM.banco.ExecSQL(' delete from interface_itens where numero_nota=' +
                                                  id + ' and cod_empresa=' + controller.xcod_empresa.ToString  );

                      controller.DM.banco.ExecSQL(' delete from interface_capa where numero_nota=' +
                                                  id + ' and cod_empresa=' + controller.xcod_empresa.ToString  );


                    end;


                   q_geral.First;

                   while not q_geral.Eof do
                    begin

                     //Volta Reserva

                    controller.DM.banco.ExecSQL(' update estoque set reserva=reserva-' + q_geral.FieldByName('qtde').AsString +
                                                ' where cod_item=' + quotedstr(q_geral.FieldByName('cod_produto').AsString) +
                                                ' and cod_fornecedor= '+ q_geral.FieldByName('cod_fornecedor').AsString +
                                                ' and cod_empresa= ' + controller.xcod_empresa.ToString

                                               );



                    q_geral.Next;
                    end;



                  //Muda o status para 3 - Cancelado
                    controller.DM.banco.ExecSQL(' update vendas set data_venda= null, status= 2 where id=' + id +
                                   ' and cod_empresa=' + controller.xcod_empresa.ToString   );


                                   addtoinitproc(swalSuccess('Sucesso!','Cancelamento Efetuado com sucesso'));

                                   tbvendas_reload;



               controller.DM.banco.Commit;

             except

                 on e:Exception do
               begin
                addtoinitproc(swalError('Erro ao estornar Venda:',e.Message));
                controller.DM.banco.Rollback;

               end;


             end;




       end;
end;

procedure Tform_saidas.combo_empresasAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

  q_geral.Close;
  q_geral.SQL.Clear;
  q_geral.SQL.Add('select nome,cnpj from empresas where cod_empresa='+ combo_empresas.KeyValue);
  q_geral.Open();
  edit_cliente.Text:=q_geral.FieldByName('nome').AsString;
  edit_cliente.Hint:= q_geral.FieldByName('cnpj').AsString;


end;

procedure Tform_saidas.combo_filtro_opAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
    tbvendas_reload;
end;

procedure Tform_saidas.combo_operacaoAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  limpar_temporaria;
  if combo_operacao.SelectedValue='3' then
  begin

  WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDOP'').modal(''show'');');
  end
  else
   if combo_operacao.SelectedValue='4' then
  begin


  WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDServi'').modal(''show'');');
  end
  else
  begin
    edit_cliente.Text:='';
    edit_cliente.Hint:='';
  end;

end;

procedure Tform_saidas.edit_desc_unHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add('placeholder="0,00"');
  ATag.Add(' style="text-align:center" ');
end;

procedure Tform_saidas.edit_qtde_to_escHTMLTag(ASender: TObject;
  ATag: TIWHTMLTag);
begin
  inherited;
ATag.Add('placeholder="0"');
   ATag.Add(' style="text-align:center" ');
end;

procedure Tform_saidas.fechamento;
var
id_vendas,i : integer;
v_param : Boolean;
id_interface : integer;
begin
    //gerar venda

      if id_edicao.Hint<>'0' then
        begin

         cancelar_doc(id_edicao.Hint);

        end;

          try
           controller.DM.banco.StartTransaction; //Inicia tranza��o


           //Grava tabela vendas

           q_geral.Close;
           q_geral.SQL.Clear;
           q_geral.SQL.Add('select seq_controle_vendas.nextval as id from dual');
           q_geral.Open();

           id_vendas := q_geral.FieldByName('id').AsInteger;



           q_geral.Close;
           q_geral.SQL.Clear;
           q_geral.sql.add('INSERT INTO VENDAS');
           q_geral.sql.add('(ID,');
           q_geral.sql.add('EMISSAO,');

           q_geral.sql.add('COD_CLIENTE,');
           q_geral.sql.add('COD_EMPRESA_DEST,');
           q_geral.sql.add('TOTAL_PRODUTOS,');
           q_geral.sql.add('TOTAL_NOTA,');
           q_geral.sql.add('USUARIO,');
           q_geral.sql.add('VENDEDOR,');
           q_geral.sql.add('COD_EMPRESA,');
           q_geral.sql.add('STATUS,');
           q_geral.sql.add('cod_servico,');
           q_geral.sql.add('descricao_serv,');
           q_geral.sql.add('valor_serv,');
           q_geral.sql.add('obs_serv,');
           q_geral.sql.add('produtivo,');
           q_geral.sql.add('OPERACAO)');
           q_geral.sql.add('VALUES');
           q_geral.sql.add('(:ID,');
           q_geral.sql.add('sysdate,');


           q_geral.sql.add(':COD_CLIENTE,');
           q_geral.sql.add(':COD_EMPRESA_DEST,');
           q_geral.sql.add(':TOTAL_PRODUTOS,');
           q_geral.sql.add(':TOTAL_NOTA,');
           q_geral.sql.add('USER,');
           q_geral.sql.add(':VENDEDOR,');
           q_geral.sql.add(':COD_EMPRESA,');
           q_geral.sql.add(':STATUS,');
           q_geral.sql.add(':cod_servico,');
           q_geral.sql.add(':descricao_serv,');
           q_geral.sql.add(':valor_serv,');
           q_geral.sql.add(':obs_serv,');
           q_geral.sql.add(':produtivo,');
           q_geral.sql.add(':OPERACAO)');


           q_geral.ParamByName('ID').AsInteger             := id_vendas;
           q_geral.ParamByName('COD_CLIENTE').AsString     :=  edit_cliente.Hint;
           q_geral.ParamByName('TOTAL_PRODUTOS').AsFloat   := strtofloat(edit_total.Text);
           q_geral.ParamByName('TOTAL_NOTA').AsFloat       := strtofloat(edit_total_geral.Text);
           q_geral.ParamByName('VENDEDOR').Value           := combo_vendedor.KeyValue;
           q_geral.ParamByName('COD_EMPRESA').AsInteger    :=controller.xcod_empresa;
           q_geral.ParamByName('STATUS').AsInteger         :=0;
           q_geral.ParamByName('OPERACAO').AsString        := combo_operacao.SelectedValue;
           q_geral.ParamByName('cod_servico').AsString     := edit_cod_mo.Text;
           q_geral.ParamByName('descricao_serv').AsString  := edit_descricao_mo.Text;
           q_geral.ParamByName('valor_serv').AsFloat       := strtofloat(ifnull(edit_valor_mo.Text));
           q_geral.ParamByName('obs_serv').AsString        := memo_obs_serv.Text;
           q_geral.ParamByName('produtivo').AsString       := combo_agente_serv.KeyValue;

                   if combo_operacao.SelectedValue='3' then
                   begin


                   //Insere na Interface CAPA  se for transfer�ncia

                   //Pega sequencia atual
                   id_interface:=0;

                   q_aux.Close;
                   q_aux.SQL.Clear;
                   q_aux.SQL.Add(' select SEQ_INTERFACE_CAPA.NEXTVAL as seq_interface from dual');
                   q_aux.Open();

                   id_interface:= q_aux.FieldByName('seq_interface').AsInteger;


                   Q_INSERT.Close;
                   Q_INSERT.SQL.Clear;
                   Q_INSERT.SQL.ADD('INSERT INTO INTERFACE_CAPA');
                   Q_INSERT.SQL.ADD('(DEST_CNPJ,');
                   Q_INSERT.SQL.ADD('DEST_NOME,');
                   Q_INSERT.SQL.ADD('LANCADA,');
                   Q_INSERT.SQL.ADD('TOTAL_PRODUTOS,');
                   Q_INSERT.SQL.ADD('TOTAL_NOTA,');
                   Q_INSERT.SQL.ADD('COD_EMPRESA,');
                   Q_INSERT.SQL.ADD('ID,');
                   Q_INSERT.SQL.ADD('SERIE,');
                   Q_INSERT.SQL.ADD('NUMERO_NOTA,');
                   Q_INSERT.SQL.ADD('COD_EMPRESA_DEST,');
                   Q_INSERT.SQL.ADD('EMISSAO,');
                   Q_INSERT.SQL.ADD('CNPJ,');
                   Q_INSERT.SQL.ADD('NOME_FORNECEDOR');
                   Q_INSERT.SQL.ADD(')');
                   Q_INSERT.SQL.ADD('VALUES');
                   Q_INSERT.SQL.ADD('(:DEST_CNPJ,');
                   Q_INSERT.SQL.ADD(':DEST_NOME,');
                   Q_INSERT.SQL.ADD(':LANCADA,');
                   Q_INSERT.SQL.ADD(':TOTAL_PRODUTOS,');
                   Q_INSERT.SQL.ADD(':TOTAL_NOTA,');
                   Q_INSERT.SQL.ADD(':COD_EMPRESA,');
                   Q_INSERT.SQL.ADD(' :ID ,');
                   Q_INSERT.SQL.ADD(':SERIE,');
                   Q_INSERT.SQL.ADD(':NUMERO_NOTA,');
                   Q_INSERT.SQL.ADD(':COD_EMPRESA_DEST,');
                   Q_INSERT.SQL.ADD('SYSDATE,');
                   Q_INSERT.SQL.ADD(':CNPJ,');
                   Q_INSERT.SQL.ADD(':NOME_FORNECEDOR');
                   Q_INSERT.SQL.ADD(')');


                   //busca nome e cnpj da empresa logada
                   q_aux.Close;
                   q_aux.SQL.Clear;
                   q_aux.SQL.Add('select nome,cnpj  from empresas where cod_empresa='+controller.xcod_empresa.ToString);
                   q_aux.Open();

                   Q_INSERT.ParamByName('ID').AsInteger              := id_interface;
                   Q_INSERT.ParamByName('DEST_CNPJ').AsString        := edit_cliente.Hint;
                   Q_INSERT.ParamByName('DEST_NOME').AsString        := edit_cliente.Text;
                   Q_INSERT.ParamByName('LANCADA').AsString          :='F';
                   Q_INSERT.ParamByName('TOTAL_PRODUTOS').AsFloat    := strtofloat(edit_total.Text);
                   Q_INSERT.ParamByName('TOTAL_NOTA').AsFloat        := strtofloat(edit_total.Text);
                   Q_INSERT.ParamByName('COD_EMPRESA').AsInteger     := controller.xcod_empresa;
                   Q_INSERT.ParamByName('SERIE').AsString            :='0';
                   Q_INSERT.ParamByName('NUMERO_NOTA').AsInteger     := id_vendas;
                   Q_INSERT.ParamByName('CNPJ').AsString             := q_aux.FieldByName('cnpj').AsString;
                   Q_INSERT.ParamByName('NOME_FORNECEDOR').AsString  := q_aux.FieldByName('nome').AsString;
                   Q_INSERT.ParamByName('COD_EMPRESA_DEST').AsInteger:= combo_empresas.KeyValue;

                   q_insert.ExecSQL;


                   q_geral.ParamByName('COD_EMPRESA_DEST').AsInteger:=combo_empresas.KeyValue;

                   end
                   else
                   begin
                    q_geral.ParamByName('COD_EMPRESA_DEST').AsInteger:=0;
                   end;


           q_geral.ExecSQL;


           //Gravar Vendas Itens

           q_aux.Close;
           q_aux.SQL.Clear;
          q_aux.SQL.ADD('select tmp.id,');
          q_aux.SQL.ADD('tmp.locacao,');
          q_aux.SQL.ADD('tmp.cod_local_estoque,');
          q_aux.SQL.ADD('tmp.cod_item,');
          q_aux.SQL.ADD('i.descricao,');
          q_aux.SQL.ADD('tmp.preco_unitario,');
          q_aux.SQL.ADD('tmp.qtde,');
          q_aux.SQL.ADD('tmp.valor_total,');
          q_aux.SQL.ADD('tmp.val_desc,');
          q_aux.SQL.ADD('tmp.cod_fornecedor,');
          q_aux.SQL.ADD('tmp.perc_desc,');
          q_aux.SQL.ADD('tmp.cod_empresa,');
          q_aux.SQL.ADD('f.descricao as fornecedor,');
          q_aux.SQL.ADD('i.cst,');
          q_aux.SQL.ADD('i.ncm');
          q_aux.SQL.ADD('from temp_escolhidos tmp, itens i, fornecedor_estoque f');
          q_aux.SQL.ADD('where tmp.cod_item = i.cod_item');
          q_aux.SQL.ADD('and tmp.cod_fornecedor = i.cod_fornecedor');
          q_aux.SQL.ADD('and tmp.cod_fornecedor = f.cod_fornecedor');

           q_aux.Open();

           q_aux.First;

           while not q_aux.Eof do
           begin

             q_geral.Close;
             q_geral.SQL.Clear;
             q_geral.sql.add('INSERT INTO VENDAS_ITENS');
             q_geral.sql.add('(ID,');
             q_geral.sql.add('locacao,');
             q_geral.sql.add('cod_local_estoque,');
             q_geral.sql.add('CONTROLE,');
             q_geral.sql.add('COD_EMPRESA,');
             q_geral.sql.add('COD_PRODUTO,');
             q_geral.sql.add('COD_FORNECEDOR,');
             q_geral.sql.add('PRECO_UNITARIO,');
             q_geral.sql.add('QTDE,');
             q_geral.sql.add('VALOR_TOTAL,');
             q_geral.sql.add('DESC_VALOR,');
             q_geral.sql.add('DESC_PERC)');
             q_geral.sql.add('VALUES');
             q_geral.sql.add('(seq_controle_vi.nextval,');
             q_geral.sql.add(':locacao,');
             q_geral.sql.add(':cod_local_estoque,');
             q_geral.sql.add(':CONTROLE,');
             q_geral.sql.add(':COD_EMPRESA,');
             q_geral.sql.add(':COD_PRODUTO,');
             q_geral.sql.add(':COD_FORNECEDOR,');
             q_geral.sql.add(':PRECO_UNITARIO,');
             q_geral.sql.add(':QTDE,');
             q_geral.sql.add(':VALOR_TOTAL,');
             q_geral.sql.add(':DESC_VALOR,');
             q_geral.sql.add(':DESC_PERC)');

             q_geral.ParamByName('CONTROLE').AsInteger        := id_vendas;
             q_geral.ParamByName('COD_EMPRESA').AsInteger     := controller.xcod_empresa;
             q_geral.ParamByName('COD_PRODUTO').AsString      := q_aux.FieldByName('COD_ITEM').AsString;
             q_geral.ParamByName('COD_FORNECEDOR').AsInteger  := q_aux.FieldByName('COD_FORNECEDOR').AsInteger;
             q_geral.ParamByName('PRECO_UNITARIO').AsFloat    := q_aux.FieldByName('PRECO_UNITARIO').AsFloat;
             q_geral.ParamByName('QTDE').AsFloat              := q_aux.FieldByName('QTDE').AsFloat;
             q_geral.ParamByName('VALOR_TOTAL').AsFloat       :=  q_aux.FieldByName('VALOR_TOTAL').AsFloat;
             q_geral.ParamByName('DESC_VALOR').AsFloat        := q_aux.FieldByName('VAL_DESC').AsFloat;
             q_geral.ParamByName('DESC_PERC').AsFloat         :=  q_aux.FieldByName('PERC_DESC').AsFloat;
             q_geral.ParamByName('locacao').AsString           :=  q_aux.FieldByName('locacao').AsString;
             q_geral.ParamByName('cod_local_estoque').AsInteger :=  q_aux.FieldByName('cod_local_estoque').AsInteger;

            q_geral.ExecSQL;

            //iNSERE ITENS DA INTERFACE  se for transfer�ncia
            if combo_operacao.SelectedValue='3' then
                   begin

                      q_insert.Close;
                      q_insert.SQL.Clear;
                      Q_INSERT.SQL.ADD('INSERT INTO INTERFACE_ITENS');
                      Q_INSERT.SQL.ADD('(ID,');
                      Q_INSERT.SQL.ADD('COD_PRODUTO,');
                      Q_INSERT.SQL.ADD('DESCRICAO_PROD,');
                      Q_INSERT.SQL.ADD('QTDE,');
                      Q_INSERT.SQL.ADD('VALOR_UNITARIO,');
                      Q_INSERT.SQL.ADD('NUMERO_NOTA,');
                      Q_INSERT.SQL.ADD('SERIE,');
                      Q_INSERT.SQL.ADD('CNPJ,');
                      Q_INSERT.SQL.ADD('COD_EMPRESA,');
                      Q_INSERT.SQL.ADD('cst,');
                      Q_INSERT.SQL.ADD('ncm,');
                      Q_INSERT.SQL.ADD('COD_CONTROLE');
                      Q_INSERT.SQL.ADD(')');
                      Q_INSERT.SQL.ADD('VALUES');

                      Q_INSERT.SQL.ADD('( seq_interface_itens.nextval ,');
                      Q_INSERT.SQL.ADD(':COD_PRODUTO,');
                      Q_INSERT.SQL.ADD(':DESCRICAO_PROD,');
                      Q_INSERT.SQL.ADD(':QTDE,');
                      Q_INSERT.SQL.ADD(':VALOR_UNITARIO,');
                      Q_INSERT.SQL.ADD(':NUMERO_NOTA,');
                      Q_INSERT.SQL.ADD(':SERIE,');
                      Q_INSERT.SQL.ADD(':CNPJ,');
                      Q_INSERT.SQL.ADD(':COD_EMPRESA,');
                      Q_INSERT.SQL.ADD(':cst,');
                      Q_INSERT.SQL.ADD(':ncm,');
                      Q_INSERT.SQL.ADD(' :COD_CONTROLE ');
                      Q_INSERT.SQL.ADD(')');

                      q_insert.ParamByName('COD_PRODUTO').AsString     :=  q_aux.FieldByName('COD_ITEM').AsString;
                      q_insert.ParamByName('DESCRICAO_PROD').AsString  :=  q_aux.FieldByName('descricao').AsString;
                      q_insert.ParamByName('QTDE').AsFloat             :=  q_aux.FieldByName('QTDE').AsFloat;
                      q_insert.ParamByName('VALOR_UNITARIO').AsFloat   :=  q_aux.FieldByName('PRECO_UNITARIO').AsFloat;
                      q_insert.ParamByName('NUMERO_NOTA').AsInteger    :=  id_vendas;
                      q_insert.ParamByName('SERIE').AsString           :=  '0';
                      q_insert.ParamByName('CNPJ').AsString            :=  '0';
                      q_insert.ParamByName('COD_EMPRESA').AsInteger    :=  controller.xcod_empresa;
                      q_insert.ParamByName('COD_CONTROLE').AsInteger   :=  id_interface;
                      q_insert.ParamByName('cst').AsString   :=  q_aux.FieldByName('cst').AsString;
                      q_insert.ParamByName('ncm').AsString   :=  q_aux.FieldByName('ncm').AsString;
                      q_insert.ExecSQL;
                   end;




            //Efetua Reserva caso seja pre-venda   ou transfer�ncia
            if (combo_operacao.SelectedValue='2') or (combo_operacao.SelectedValue='3')then
               begin
               //

               controller.DM.banco.ExecSQL(' update estoque set reserva=' + q_aux.FieldByName('QTDE').AsString  +
                                            ' where cod_item=' +  quotedstr(q_aux.FieldByName('COD_ITEM').AsString)+
                                            ' and cod_fornecedor=' + q_aux.FieldByName('COD_FORNECEDOR').AsString +
                                            ' and cod_empresa=' + controller.xcod_empresa.ToString

                                          );


               end;

            q_aux.Next;



           end;

           //Gravar formas de PGTO
           v_param := false;

               if combo_operacao.SelectedValue<>'3' then
               begin

                   for i := 0 to memo_pgto.Items.Count -1 do
                       begin

                       Q_GERAL.Close;
                       Q_GERAL.SQL.Clear;
                       Q_GERAL.sql.add('INSERT INTO VENDAS_PGTO');
                       Q_GERAL.sql.add('(VALOR, CONTROLE_VENDA, COD_EMPRESA, COD_PGTO, DESCRICAO, OBS)');
                       Q_GERAL.sql.add('VALUES');
                       Q_GERAL.sql.add('(:VALOR, :CONTROLE_VENDA, :COD_EMPRESA, :COD_PGTO, :DESCRICAO, :OBS)');

                            if copy(memo_pgto.Items[i],1,1) ='1' then
                           begin

                           Q_GERAL.ParamByName('VALOR').AsFloat:= STRTOFLOAT(copy(memo_pgto.Items[i],12,memo_pgto.SelectedText.Length));
                           v_param:=true;

                           end;
                            if copy(memo_pgto.Items[i],1,1) ='2' then
                           begin
                             Q_GERAL.ParamByName('VALOR').AsFloat:= STRTOFLOAT( copy(memo_pgto.Items[i],11,memo_pgto.SelectedText.Length));
                             v_param:=true;

                           end;
                            if copy(memo_pgto.Items[i],1,1) ='3' then
                           begin

                           Q_GERAL.ParamByName('VALOR').AsFloat:=STRTOFLOAT( copy(memo_pgto.Items[i],12,memo_pgto.SelectedText.Length));
                           v_param:=true;

                           end;
                            if copy(memo_pgto.Items[i],1,1) ='4' then
                           begin

                           Q_GERAL.ParamByName('VALOR').AsFloat:= STRTOFLOAT( copy(memo_pgto.Items[i],11,memo_pgto.SelectedText.Length));
                           v_param:=true;

                           end;


                           if v_param=true then
                           begin
                           Q_GERAL.ParamByName('CONTROLE_VENDA').AsInteger:= id_vendas;
                           Q_GERAL.ParamByName('COD_EMPRESA').AsInteger:= CONTROLLER.xcod_empresa;
                           Q_GERAL.ParamByName('COD_PGTO').AsInteger:= STRTOINT(COPY(memo_pgto.Items[I],1,1));
                           Q_GERAL.ParamByName('DESCRICAO').AsString:= 'em dev';
                           Q_GERAL.ParamByName('OBS').AsString:= memo_obs_pgto.Text;


                           Q_GERAL.ExecSQL;
                           v_param:=false;
                           end;



                       end;
               end;


            //  AddToInitProc(swalSuccess('Sucesso!', combo_operacao.SelectedText + ', realizado com sucesso com n.' + id_vendas.ToString));



           controller.DM.banco.Commit;

           btn_imp_venda_sim.Hint:=id_vendas.ToString;

           addtoinitproc(swalConfirm( 'Confirma��o',combo_operacao.SelectedText + '- N. '+  id_vendas.ToString +
                              '- realizado com sucesso! Deseja imprimir agora?',
                              'success',
                              'Sim',
                              'N�o',
                              'BTN_IMP_VENDA_SIM',
                              'BTN_IMP_VENDA_NAO'));

                              id_edicao.Hint:='0';
                              id_edicao.Caption:='Venda Normal' ;

           limpar_temporaria;
           tbescolhidos_reload;

          except
           on e:Exception do

           begin
            addtoinitproc(swalError('Erro ao gerar vendas:',e.Message));
            controller.DM.banco.Rollback;

           end;


          end;



end;

function Tform_saidas.get_desconto(valor_desc: real ;valor_prod: real; op:string ): boolean;
var
calc_perc :real;
begin

 q_desc.Close;
 q_desc.SQL.Clear;
 q_desc.SQL.Add(' select valor from parametros_gerais where id=2 and cod_empresa= '+ controller.xcod_empresa.ToString);

 q_desc.Open();


 if op = '1' then
 begin
  calc_perc := (valor_desc /  valor_prod) * 100;

  if calc_perc > q_desc.FieldByName('valor').AsFloat then
    begin
      result := true;
    end
    else
    begin

     result := False;

    end;
 end
 else
 begin
   calc_perc := valor_desc;

  if calc_perc > q_desc.FieldByName('valor').AsFloat then
    begin
      result := true;
    end
    else
    begin

     result := False;

    end;


 end;



end;

function Tform_saidas.ifnull(campo: string): string;
begin
 if campo='' then
  begin
    result:='0';
  end
  else
  result:=campo;
end;

procedure Tform_saidas.imprimir_venda(p_id: integer);
var
 xDataRel : String;
 v_tipo_doc : string;
begin
  inherited;
  //Busca dados da empresa
  q_emp.Close;
  q_emp.SQL.Clear ;
  q_emp.sql.add('SELECT APELIDO,');
  q_emp.sql.add('COD_EMPRESA,');
  q_emp.sql.add('NOME,');
//  q_emp.sql.add('CNPJ,');
  q_emp.sql.add('regexp_replace(LPAD(CNPJ, 14),''([0-9]{2})([0-9]{3})([0-9]{3})([0-9]{4})'',''\1.\2.\3/\4-'') as CNPJ ,');
  q_emp.sql.add('INSC_ESTADUAL,');
  q_emp.sql.add('INSC_MUNICIPAL,');
  q_emp.sql.add('ENDERECO,');
  q_emp.sql.add('BAIRRO,');
  q_emp.sql.add('CIDADE,');
  q_emp.sql.add('UF,');
  q_emp.sql.add('TELEFONE,');
  q_emp.sql.add('DDD,');
  q_emp.sql.add('EMAIL,');
  q_emp.sql.add('FACHADA,');
  q_emp.sql.add('DATA_VALIDADE,');
  q_emp.sql.add('CHAVE,');
  q_emp.sql.add('SEGUIMENTO');
  q_emp.sql.add('FROM EMPRESAS');
  q_emp.SQL.Add(' where cod_empresa='+ controller.xcod_empresa.ToString);
  q_emp.Open();


  //busca venda

  q_vendas.Close;
  q_vendas.SQL.Clear;
  q_vendas.sql.add('SELECT ID,');
  q_vendas.sql.add('EMISSAO,');
  q_vendas.sql.add('DATA_VENDA,');
  q_vendas.sql.add('NUMERO_NOTA,');
  q_vendas.sql.add('COD_CLIENTE,');
  q_vendas.sql.add('TOTAL_PRODUTOS,');
  q_vendas.sql.add('TOTAL_NOTA,');
  q_vendas.sql.add('TOTAL_DESC,');
  q_vendas.sql.add('USUARIO,');
  q_vendas.sql.add('VENDEDOR,');
  q_vendas.sql.add('COD_EMPRESA,');
  q_vendas.sql.add('STATUS,');
  q_vendas.sql.add('OPERACAO,');
  q_vendas.sql.add('TOTAL_PRODUTOS,');
  q_vendas.sql.add('valor_serv,');
  q_vendas.sql.add('obs_serv,');
  q_vendas.sql.add('cod_servico,');
  q_vendas.sql.add('descricao_serv');
  q_vendas.sql.add('FROM VENDAS');
  q_vendas.SQL.Add(' where id =' + p_id.ToString);
  q_vendas.SQL.Add(' and cod_empresa= ' + controller.xcod_empresa.ToString);
  q_vendas.Open();


 //Busca Dados do Cliente
  q_cli.Close;
  q_cli.SQL.Clear;
  q_cli.sql.add('SELECT COD_CLIENTE,');
  q_cli.sql.add('CASE WHEN TIPO=''F'' THEN');
  q_cli.sql.add('regexp_replace(LPAD(COD_CLIENTE, 11),''([0-9]{3})([0-9]{3})([0-9]{3})'',''\1.\2.\3-'')');
  q_cli.sql.add('ELSE');
  q_cli.sql.add('regexp_replace(LPAD(COD_CLIENTE, 14),''([0-9]{2})([0-9]{3})([0-9]{3})([0-9]{4})'',''\1.\2.\3/\4-'')');
  q_cli.sql.add('END COD_CLIENTE_MASK,');
  q_cli.sql.add('NOME,');
  q_cli.sql.add('SOBRENOME,');
  q_cli.sql.add('DATA_NASC,');
  q_cli.sql.add('SEXO,');
  q_cli.sql.add('EMAIL,');
  q_cli.sql.add('RG,');
  q_cli.sql.add('NACIONALIDADE,');
  q_cli.sql.add('TIPO,');
  q_cli.sql.add('CLASSE,');
  q_cli.sql.add('USUARIO_CADASTROU,');
  q_cli.sql.add('DATA_CADASTRO,');
  q_cli.sql.add('USUARIO_ALTEROU,');
  q_cli.sql.add('DATA_ALTERACAO,');
  q_cli.sql.add('ENDERECO,');
  q_cli.sql.add('COMPLEMENTO,');
  q_cli.sql.add('BAIRRO,');
  q_cli.sql.add('CEP,');
  q_cli.sql.add('FACHADA,');
  q_cli.sql.add('FONE1,');
  q_cli.sql.add('FONE2,');
  q_cli.sql.add('FONE3,');
  q_cli.sql.add('DDD1,');
  q_cli.sql.add('DDD2,');
  q_cli.sql.add('DDD3,');
  q_cli.sql.add('INSC_ESTADUAL,');
  q_cli.sql.add('INC_MUNICIPAL,');
  q_cli.sql.add('COD_CIDADE,');
  q_cli.sql.add('UF');
  q_cli.sql.add('FROM CLIENTES');
  q_cli.sql.add(' where cod_cliente= :cod_cliente ');
  q_cli.sql.add('');
  q_cli.sql.add('');
  q_cli.ParamByName('cod_cliente').AsString:= q_vendas.FieldByName('cod_cliente').AsString;
  q_cli.Open();


  //trata tipo de venda "OPERA��O "
     v_tipo_doc :='';
  if q_vendas.FieldByName('operacao').AsString='1' then
    begin

     v_tipo_doc:='Or�amento';

    end;
    if q_vendas.FieldByName('operacao').AsString='2' then
    begin

     v_tipo_doc:='Pr�-Venda';

    end;
    if q_vendas.FieldByName('operacao').AsString='3' then
    begin

     v_tipo_doc:='Transfer�ncia';

    end;
     if q_vendas.FieldByName('operacao').AsString='4' then
    begin

     v_tipo_doc:='Ordem de Servico';

    end;

    //Busca cidade
    q_geral.Close;
    q_geral.SQL.Clear;
    q_geral.sql.add('select descricao from cidades');
    q_geral.sql.add('where cod_cidade= :cod_cidade');
    q_geral.ParamByName('cod_cidade').AsInteger := q_cli.FieldByName('cod_cidade').AsInteger;
    q_geral.Open();

    q_vi.Close;
    q_vi.ParamByName('cod_empresa').AsInteger:= controller.xcod_empresa;
    q_vi.ParamByName('id').AsInteger :=  p_id;
    q_vi.Open();

    q_pgto.Close;
    q_pgto.ParamByName('controle_venda').AsInteger := p_id;
    q_pgto.ParamByName('cod_empresa').AsInteger := controller.xcod_empresa;
    q_pgto.Open();






  //Par�metros das vari�veis  empresa

 r_vendas.Variables['empresa']       :=  quotedstr(q_emp.FieldByName('nome').AsString);
 r_vendas.Variables['tipo']          :=  quotedstr(v_tipo_doc);
 r_vendas.Variables['doc_id']        :=  quotedstr(p_id.ToString);
 r_vendas.Variables['emp_endereco']  :=  quotedstr(q_emp.FieldByName('ENDERECO').AsString);
 r_vendas.Variables['emp_bairro']    :=  quotedstr(q_emp.FieldByName('BAIRRO').AsString);
 r_vendas.Variables['emp_cidade']    :=  quotedstr(q_emp.FieldByName('cidade').AsString);
 r_vendas.Variables['emp_uf']        :=  quotedstr(q_emp.FieldByName('uf').AsString);
 r_vendas.Variables['doc_emissao']   :=  quotedstr(q_vendas.FieldByName('emissao').AsString);
 r_vendas.Variables['emp_vendedor']  :=  quotedstr(q_vendas.FieldByName('vendedor').AsString);
 r_vendas.Variables['emp_cnpj']      :=  quotedstr(q_emp.FieldByName('cnpj').AsString);

 r_vendas.Variables['cli_nome']      :=  quotedstr(q_cli.FieldByName('NOME').AsString);
 r_vendas.Variables['cli_cpf']       :=  quotedstr(q_cli.FieldByName('COD_CLIENTE_MASK').AsString);
 r_vendas.Variables['cli_endereco']  :=  quotedstr(q_cli.FieldByName('ENDERECO').AsString + ', N. ' + q_cli.FieldByName('FACHADA').AsString);
 r_vendas.Variables['cli_bairro']    :=  quotedstr(q_cli.FieldByName('BAIRRO').AsString);
 r_vendas.Variables['cli_cidade']    :=  quotedstr(q_geral.FieldByName('descricao').AsString);
 r_vendas.Variables['cli_uf']        :=  quotedstr(q_cli.FieldByName('UF').AsString);
 r_vendas.Variables['cli_cep']       :=  quotedstr(q_cli.FieldByName('CEP').AsString);
 r_vendas.Variables['cli_fone']      :=  quotedstr(q_cli.FieldByName('FONE1').AsString);
 r_vendas.Variables['cli_email']     :=  quotedstr(q_cli.FieldByName('EMAIL').AsString);
 r_vendas.Variables['doc_total']     :=  quotedstr(q_vendas.FieldByName('TOTAL_NOTA').AsString);
 //Servi�os
 r_vendas.Variables['cod_serv']      := quotedstr(q_vendas.FieldByName('cod_servico').AsString);
 r_vendas.Variables['descricao_serv']:= quotedstr(q_vendas.FieldByName('descricao_serv').AsString);
 r_vendas.Variables['valor_serv']    := quotedstr(q_vendas.FieldByName('valor_serv').AsString);
 r_vendas.Variables['obs_serv']      := quotedstr(q_vendas.FieldByName('obs_serv').AsString);




//Par�metros das vari�veis  cliente




  //
  // Executando o Relat�rio para a Exporta��o
  //
  xDataRel := WebApplication.AppID + FormatDateTime('yyyymmddhhmmsszzz', Now);

  pdf_exp.FileName := WebApplication.ApplicationPath + 'wwwroot\RelatoriosPDF\' +
                            xDataRel + '.PDF';

  r_vendas.PrepareReport(True);

  pdf_exp.ShowDialog:=False;
  r_vendas.Export(pdf_exp);

  with modal_vendas do begin
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

procedure Tform_saidas.inserir_temporaria;
var
v_preco_unitario :real;
begin
 q_geral.Close;
  q_geral.SQL.Clear;
  q_geral.sql.add('INSERT INTO TEMP_ESCOLHIDOS');
  q_geral.sql.add('(ID,');
  q_geral.sql.add('locacao,');
  q_geral.sql.add('cod_local_estoque,');
  q_geral.sql.add('COD_ITEM,');
  q_geral.sql.add('DESCRICAO,');
  q_geral.sql.add('PRECO_UNITARIO,');
  q_geral.sql.add('QTDE,');
  q_geral.sql.add('VALOR_TOTAL,');
  q_geral.sql.add('VAL_DESC,');
  q_geral.sql.add('COD_FORNECEDOR,');
  q_geral.sql.add('PERC_DESC,');
  q_geral.sql.add('COD_EMPRESA,');
  q_geral.sql.add('FORNECEDOR)');
  q_geral.sql.add('VALUES');
  q_geral.sql.add('(SEQ_TMP_ESCOLHIDOS.NEXTVAL,');
  q_geral.sql.add(':locacao,');
  q_geral.sql.add(':cod_local_estoque,');
  q_geral.sql.add(':COD_ITEM,');
  q_geral.sql.add(':DESCRICAO,');
  q_geral.sql.add(':PRECO_UNITARIO,');
  q_geral.sql.add(':QTDE,');
  q_geral.sql.add(':VALOR_TOTAL,');
  q_geral.sql.add(':VAL_DESC,');
  q_geral.sql.add(':COD_FORNECEDOR,');
  q_geral.sql.add(':PERC_DESC,');
  q_geral.sql.add(':COD_EMPRESA,');
  q_geral.sql.add(':FORNECEDOR)');

  q_geral.ParamByName('COD_ITEM').AsString:=  q_disponivel.FieldByName('COD_ITEM').AsString;
  q_geral.ParamByName('DESCRICAO').AsString:= q_disponivel.FieldByName('descricao').AsString;

  if combo_operacao.SelectedValue='3' then
  begin
   v_preco_unitario := q_disponivel.FieldByName('custo_contabil').AsFloat;

  end
  else
  begin
   v_preco_unitario := q_disponivel.FieldByName('preco_venda').AsFloat;

  end;
  q_geral.ParamByName('PRECO_UNITARIO').AsFloat:=   v_preco_unitario  ;

  q_geral.ParamByName('QTDE').AsFloat:= strtofloat(edit_qtde_to_esc.Text);
  q_geral.ParamByName('VALOR_TOTAL').AsFloat:=  strtoint(edit_qtde_to_esc.Text) * v_preco_unitario;
  q_geral.ParamByName('VAL_DESC').AsString:= '0';
  q_geral.ParamByName('COD_FORNECEDOR').AsInteger:=  q_disponivel.FieldByName('COD_FORNECEDOR').AsInteger;
  q_geral.ParamByName('PERC_DESC').AsString:= '0';
  q_geral.ParamByName('COD_EMPRESA').AsInteger:=controller.xcod_empresa;
  q_geral.ParamByName('FORNECEDOR').AsString:=q_disponivel.FieldByName('fornecedor').AsString ;
  q_geral.ParamByName('locacao').AsString:=q_disponivel.FieldByName('locacao').AsString ;
  q_geral.ParamByName('cod_local_estoque').AsString:=q_disponivel.FieldByName('cod_local_estoque').AsString ;

  q_geral.ExecSQL;

  tbescolhidos_reload;

  recalcula_totais;

end;

procedure Tform_saidas.IWAppFormCreate(Sender: TObject);
begin
  inherited;
RegisterCallBack('TBVendas', TBVendas);
RegisterCallBack('TBEscolhidos', TBEscolhidos);
RegisterCallBack('TBItensBusca', TBItensBusca);
RegisterCallBack('TBRemoto', TBRemoto);
RegisterCallBack('TBClientes', TBClientes);
end;

procedure Tform_saidas.IWAppFormShow(Sender: TObject);
begin
  inherited;

  q_empresas.Close;
  q_empresas.ParamByName('cod_empresa').AsInteger := controller.xcod_empresa;
  q_empresas.Open();

  q_vendedor.Close;
  q_vendedor.ParamByName('cod_empresa').AsInteger:=  controller.xcod_empresa;
  q_vendedor.Open();

  q_agente.Close;
  q_agente.ParamByName('cod_empresa').AsInteger := controller.xcod_empresa;
  q_agente.Open();



end;

procedure Tform_saidas.IWBTNACAOAsyncClick(Sender: TObject;
  EventParams: TStringList);
  var
  id : string;
  v_error :Boolean;
  v_operacao : string;
begin
  inherited;
//Selec  selecionar item
//CarAd  adicionar aos escolhidos
//DelTP deletar item escolhido
//IMPVE imprimir venda
//VENDE emite venda
//EXTOR Estornar venda
//CANCE Cancelar Transfer�ncia ou Pr�-Venda
//EDITA coloca em modo de Edi��o somente se o status estiver ativo

if copy(iwacao.Text, 1, 5) = 'EDITA' then      //aceitar cliente na venda
  begin
    id := copy(iwacao.Text, 6, Length(iwacao.Text));
     v_error:=false;

       //Verificar a opera��o e se o status � Ativo=0

    q_geral.Close;
    q_geral.SQL.Clear;
    q_geral.SQL.Add('select status,operacao,cod_cliente,vendedor from vendas where cod_empresa=' + controller.xcod_empresa.ToString +
                    ' and id='+ id);
      q_geral.Open();






       if q_geral.FieldByName('status').AsInteger <> 0 then
      begin
        v_error:=true;
      end;

      if v_error=false then
       begin

           edit_cliente.Hint:= q_geral.FieldByName('cod_cliente').AsString;
           edit_cliente.Text:= q_geral.FieldByName('cod_cliente').AsString;
           combo_vendedor.KeyValue:=  q_geral.FieldByName('vendedor').Value;
           id_edicao.Caption:= 'Em edi��o id: '+ id;
           id_edicao.Hint:=id;

           if q_geral.FieldByName('operacao').AsInteger = 1 then
            begin
              combo_operacao.ItemIndex:=0
            end;
            if q_geral.FieldByName('operacao').AsInteger = 2 then
            begin
              combo_operacao.ItemIndex:=1
            end;
             if q_geral.FieldByName('operacao').AsInteger = 3 then
            begin
              combo_operacao.ItemIndex:=2
            end;


         //Retornar Item pro estoque

             try

               controller.DM.banco.StartTransaction;


                 //Localiza os itens da NF
                  q_geral.Close;
                  q_geral.SQL.Clear;

                  q_geral.sql.add('SELECT ID,');
                  q_geral.sql.add('CONTROLE,');
                  q_geral.sql.add('COD_EMPRESA,');
                  q_geral.sql.add('COD_PRODUTO,');
                  q_geral.sql.add('COD_FORNECEDOR,');
                  q_geral.sql.add('PRECO_UNITARIO,');
                  q_geral.sql.add('QTDE,');
                  q_geral.sql.add('VALOR_TOTAL,');
                  q_geral.sql.add('DESC_VALOR,');
                  q_geral.sql.add('DESC_PERC,');
                  q_geral.sql.add('LOCACAO,');
                  q_geral.sql.add('COD_LOCAL_ESTOQUE');
                  q_geral.sql.add('FROM VENDAS_ITENS');
                  q_geral.sql.add(' where cod_empresa=' + controller.xcod_empresa.ToString);
                  q_geral.sql.add('and controle=' + id);

                  q_geral.Open();


                   q_geral.First;

                   while not q_geral.Eof do
                    begin

                     //Insere na Tempor�ria
                      q_insert.Close;
                      q_insert.SQL.Clear;
                      q_insert.sql.add('INSERT INTO TEMP_ESCOLHIDOS');
                      q_insert.sql.add('(ID,');
                      q_insert.sql.add('locacao,');
                      q_insert.sql.add('cod_local_estoque,');
                      q_insert.sql.add('COD_ITEM,');
                      q_insert.sql.add('DESCRICAO,');
                      q_insert.sql.add('PRECO_UNITARIO,');
                      q_insert.sql.add('QTDE,');
                      q_insert.sql.add('VALOR_TOTAL,');
                      q_insert.sql.add('VAL_DESC,');
                      q_insert.sql.add('COD_FORNECEDOR,');
                      q_insert.sql.add('PERC_DESC,');
                      q_insert.sql.add('COD_EMPRESA,');
                      q_insert.sql.add('FORNECEDOR)');
                      q_insert.sql.add('VALUES');
                      q_insert.sql.add('(SEQ_TMP_ESCOLHIDOS.NEXTVAL,');
                      q_insert.sql.add(':locacao,');
                      q_insert.sql.add(':cod_local_estoque,');
                      q_insert.sql.add(':COD_ITEM,');
                      q_insert.sql.add(':DESCRICAO,');
                      q_insert.sql.add(':PRECO_UNITARIO,');
                      q_insert.sql.add(':QTDE,');
                      q_insert.sql.add(':VALOR_TOTAL,');
                      q_insert.sql.add(':VAL_DESC,');
                      q_insert.sql.add(':COD_FORNECEDOR,');
                      q_insert.sql.add(':PERC_DESC,');
                      q_insert.sql.add(':COD_EMPRESA,');
                      q_insert.sql.add(':FORNECEDOR)');

                      q_insert.ParamByName('COD_ITEM').AsString      :=  q_geral.FieldByName('COD_PRODUTO').AsString;
                      q_insert.ParamByName('DESCRICAO').AsString     := 'EDITANDO';
                      q_insert.ParamByName('PRECO_UNITARIO').AsFloat  :=   q_geral.FieldByName('PRECO_UNITARIO').AsFloat;
                      q_insert.ParamByName('QTDE').AsFloat            := q_geral.FieldByName('QTDE').AsFloat;
                      q_insert.ParamByName('VALOR_TOTAL').AsFloat     :=  q_geral.FieldByName('VALOR_TOTAL').AsFloat;
                      q_insert.ParamByName('VAL_DESC').AsFloat       := q_geral.FieldByName('DESC_VALOR').AsFloat;
                      q_insert.ParamByName('COD_FORNECEDOR').AsInteger:=  q_geral.FieldByName('COD_FORNECEDOR').AsInteger;
                      q_insert.ParamByName('PERC_DESC').AsFloat      := q_geral.FieldByName('DESC_PERC').AsFloat;
                      q_insert.ParamByName('COD_EMPRESA').AsInteger   :=q_geral.FieldByName('COD_EMPRESA').AsInteger;
                      q_insert.ParamByName('FORNECEDOR').AsString     := 'EDITANDO';
                      q_insert.ParamByName('locacao').AsString        :=q_geral.FieldByName('LOCACAO').AsString;
                      q_insert.ParamByName('cod_local_estoque').AsInteger:=q_geral.FieldByName('COD_LOCAL_ESTOQUE').AsInteger;

                      q_insert.ExecSQL;



                    q_geral.Next;
                    end;






                                   addtoinitproc(swalSuccess('Sucesso!','Edi��o  Efetuado com sucesso, verifique na aba de escolhidos!'));

                                   tbescolhidos_reload;



               controller.DM.banco.Commit;

             except

                 on e:Exception do
               begin
                addtoinitproc(swalError('Erro ao estornar Venda:',e.Message));
                controller.DM.banco.Rollback;

               end;


             end;




       end
       else
       begin
         addtoinitproc(swalAlert('Alerta!','Status diferente de ativo, edi��o n�o permitida!'))
       end;



  end;



if copy(iwacao.Text, 1, 5) = 'CANCE' then      //aceitar cliente na venda
  begin
    id := copy(iwacao.Text, 6, Length(iwacao.Text));

    cancelar_doc(id);



  end;




if copy(iwacao.Text, 1, 5) = 'EXTOR' then      //aceitar cliente na venda
  begin
    id := copy(iwacao.Text, 6, Length(iwacao.Text));
     v_error:=false;

       //Verificar a opera��o e se o status � Ativo=0

    q_geral.Close;
    q_geral.SQL.Clear;
    q_geral.SQL.Add('select status,operacao from vendas where cod_empresa=' + controller.xcod_empresa.ToString +
                    ' and id='+ id);
      q_geral.Open();

      if q_geral.FieldByName('operacao').AsInteger = 1 then
      begin
        v_error:=true;
      end;

       if q_geral.FieldByName('status').AsInteger <> 1 then
      begin
        v_error:=true;
      end;



      if v_error=false then
       begin

             if q_geral.FieldByName('operacao').AsInteger = 3 then
          begin

            //Volta status para Aguardando Faturamento



            controller.DM.banco.ExecSQL(' update interface_capa set lancada=''F'' where numero_nota=' +
                                        id + ' and cod_empresa=' + controller.xcod_empresa.ToString  );


          end;

         //Retornar Item pro estoque

             try

               controller.DM.banco.StartTransaction;


                 //Localiza os itens da NF
                  q_geral.Close;
                  q_geral.SQL.Clear;

                  q_geral.sql.add('SELECT ID,');
                  q_geral.sql.add('CONTROLE,');
                  q_geral.sql.add('COD_EMPRESA,');
                  q_geral.sql.add('COD_PRODUTO,');
                  q_geral.sql.add('COD_FORNECEDOR,');
                  q_geral.sql.add('PRECO_UNITARIO,');
                  q_geral.sql.add('QTDE,');
                  q_geral.sql.add('VALOR_TOTAL,');
                  q_geral.sql.add('DESC_VALOR,');
                  q_geral.sql.add('DESC_PERC,');
                  q_geral.sql.add('LOCACAO,');
                  q_geral.sql.add('COD_LOCAL_ESTOQUE');
                  q_geral.sql.add('FROM VENDAS_ITENS');
                  q_geral.sql.add(' where cod_empresa=' + controller.xcod_empresa.ToString);
                  q_geral.sql.add('and controle=' + id);

                  q_geral.Open();


                   q_geral.First;

                   while not q_geral.Eof do
                    begin
                    //~Volta Loca��o

                      controller.DM.banco.ExecSQL(' update locacao set qtde = qtde + ' +   q_geral.FieldByName('qtde').AsString +
                                                  ' where cod_item=' + quotedstr(q_geral.FieldByName('cod_produto').AsString) +
                                                  ' and cod_fornecedor= '+ q_geral.FieldByName('cod_fornecedor').AsString +
                                                  ' and cod_empresa= ' + controller.xcod_empresa.ToString +
                                                  ' and locacao= ' + quotedstr(q_geral.FieldByName('locacao').AsString) +
                                                  ' and cod_local_estoque= ' + q_geral.FieldByName('cod_local_estoque').AsString
                                                 );
                     //Volta Estoque/Reserva

                    controller.DM.banco.ExecSQL(' update estoque set qtde = qtde + ' +   q_geral.FieldByName('qtde').AsString +
                                                ' , reserva=reserva+' + q_geral.FieldByName('qtde').AsString +
                                                ' where cod_item=' + quotedstr(q_geral.FieldByName('cod_produto').AsString) +
                                                ' and cod_fornecedor= '+ q_geral.FieldByName('cod_fornecedor').AsString +
                                                ' and cod_empresa= ' + controller.xcod_empresa.ToString

                                               );


                     //Insere No Hist�rico

                    //verifica ultimo custo e quantidade
                      q_aux.Close;
                      q_aux.SQL.Clear;
                      q_aux.sql.add('select qtde_depois, custo_medio');
                      q_aux.sql.add('from itens_historico');
                      q_aux.sql.add('where sequencia = (select max(sequencia)');
                      q_aux.sql.add('from itens_historico');
                      q_aux.sql.add('where cod_item = :cod_item ');
                      q_aux.sql.add('and cod_fornecedor = :cod_fornecedor ');
                      q_aux.sql.add('and cod_empresa = :cod_empresa )');
                      q_aux.ParamByName('cod_item').AsString:=q_geral.FieldByName('cod_produto').AsString;
                      q_aux.ParamByName('cod_empresa').AsInteger := controller.xcod_empresa;
                      q_aux.ParamByName('cod_fornecedor').AsInteger := q_geral.FieldByName('cod_fornecedor').AsInteger;
                      q_aux.Open();

                      q_insert.Close;
                      q_insert.SQL.Clear  ;
                      q_insert.sql.add('INSERT INTO ITENS_HISTORICO');
                      q_insert.sql.add('(COD_ITEM,');
                      q_insert.sql.add('COD_FORNECEDOR,');
                      q_insert.sql.add('COD_EMPRESA,');
                      q_insert.sql.add('TIPO_OPERACAO,');
                      q_insert.sql.add('COD_OPERACAO,');
                      q_insert.sql.add('DOCUMENTO,');
                      q_insert.sql.add('DATA,');

                      q_insert.sql.add('QTDE_OPERACAO,');
                      q_insert.sql.add('QTDE_DEPOIS,');
                      q_insert.sql.add('MOTIVO,');
                      q_insert.sql.add('CUSTO_MEDIO,');
                      q_insert.sql.add('CUSTO_MEDIO_ANTERIOR,');
                      q_insert.sql.add('COD_CONTROLE,');

                      q_insert.sql.add('RESPONSAVEL,');
                      q_insert.sql.add('SEQUENCIA)');

                      q_insert.sql.add('VALUES');

                      q_insert.sql.add('(:COD_ITEM,');
                      q_insert.sql.add(':COD_FORNECEDOR,');
                      q_insert.sql.add(':COD_EMPRESA,');
                      q_insert.sql.add(' ''E'' ,');
                      q_insert.sql.add('11,');
                      q_insert.sql.add(':DOCUMENTO,');
                      q_insert.sql.add('sysdate,');
                      q_insert.sql.add(':QTDE_OPERACAO,');
                      q_insert.sql.add(':QTDE_DEPOIS,');
                      q_insert.sql.add('''Estorno de Vendas '',');
                      q_insert.sql.add(':CUSTO_MEDIO,');
                      q_insert.sql.add(':CUSTO_MEDIO_ANTERIOR,');
                      q_insert.sql.add(':COD_CONTROLE,');
                      q_insert.sql.add('user,');
                      q_insert.sql.add('seq_controle_historico.nextval )');

                      q_insert.ParamByName('COD_ITEM').AsString:= q_geral.FieldByName('cod_produto').AsString;
                      q_insert.ParamByName('COD_FORNECEDOR').AsInteger:= q_geral.FieldByName('cod_fornecedor').AsInteger;
                      q_insert.ParamByName('COD_EMPRESA').AsInteger:= controller.xcod_empresa;
                      q_insert.ParamByName('DOCUMENTO').AsInteger := id.ToInteger;
                      q_insert.ParamByName('QTDE_OPERACAO').AsFloat := q_geral.FieldByName('qtde').AsFloat;
                      q_insert.ParamByName('QTDE_DEPOIS').AsFloat :=  q_aux.FieldByName('QTDE_DEPOIS').AsFloat + q_geral.FieldByName('qtde').AsFloat;
                      q_insert.ParamByName('CUSTO_MEDIO').AsFloat := q_aux.FieldByName('custo_medio').AsFloat;
                      q_insert.ParamByName('CUSTO_MEDIO_ANTERIOR').AsFloat := q_aux.FieldByName('custo_medio').AsFloat;
                      q_insert.ParamByName('COD_CONTROLE').AsInteger := id.ToInteger;
                      q_insert.ExecSQL;




                    q_geral.Next;
                    end;



                  //Muda o status para 0 - Ativo
                    controller.DM.banco.ExecSQL(' update vendas set data_venda= null, status= 0 where id=' + id +
                                   ' and cod_empresa=' + controller.xcod_empresa.ToString   );


                                   addtoinitproc(swalSuccess('Sucesso!','Estorno Efetuado com sucesso'));

                                   tbvendas_reload;



               controller.DM.banco.Commit;

             except

                 on e:Exception do
               begin
                addtoinitproc(swalError('Erro ao estornar Venda:',e.Message));
                controller.DM.banco.Rollback;

               end;


             end;




       end;



  end;





if copy(iwacao.Text, 1, 5) = 'VENDE' then      //aceitar cliente na venda
  begin
    id := copy(iwacao.Text, 6, Length(iwacao.Text));
     v_error:=false;

    //Verificar a opera��o e se o status � Ativo=0

    q_geral.Close;
    q_geral.SQL.Clear;
    q_geral.SQL.Add('select status,operacao from vendas where cod_empresa=' + controller.xcod_empresa.ToString +
                    ' and id='+ id);
    q_geral.Open();
    v_operacao := q_geral.FieldByName('operacao').AsString;

    if q_geral.FieldByName('operacao').AsInteger = 1 then
    begin
      v_error:=true;
    end;

     if q_geral.FieldByName('status').AsInteger <> 0 then
    begin
      v_error:=true;
    end;


     if v_error=false then
     begin

        try
         controller.DM.banco.StartTransaction;

          // Inicia venda
          q_geral.Close;
          q_geral.SQL.Clear;
          q_geral.sql.add('SELECT ID,');
          q_geral.sql.add('CONTROLE,');
          q_geral.sql.add('COD_EMPRESA,');
          q_geral.sql.add('COD_PRODUTO,');
          q_geral.sql.add('COD_FORNECEDOR,');
          q_geral.sql.add('PRECO_UNITARIO,');
          q_geral.sql.add('QTDE,');
          q_geral.sql.add('VALOR_TOTAL,');
          q_geral.sql.add('DESC_VALOR,');
          q_geral.sql.add('DESC_PERC,');
          q_geral.sql.add('LOCACAO,');
          q_geral.sql.add('COD_LOCAL_ESTOQUE');
          q_geral.sql.add('FROM VENDAS_ITENS');
          q_geral.sql.add(' where cod_empresa=' + controller.xcod_empresa.ToString);
          q_geral.sql.add('and controle=' + id);

          q_geral.Open();

          if v_operacao = '3' then   //Se for Transfer�ncia Libera status para lan�ar nf no Estoque
          BEGIN


           controller.DM.banco.ExecSQL(' update  interface_capa set lancada=''N'' where numero_nota=' +
                                       q_geral.FieldByName('controle').AsString + ' and cod_empresa=' +
                                       controller.xcod_empresa.ToString );

          END;



           q_geral.First;

           while not q_geral.Eof do
             begin

             //~baixa Loca��o

              controller.DM.banco.ExecSQL(' update locacao set qtde = qtde - ' +   q_geral.FieldByName('qtde').AsString +
                                          ' where cod_item=' + quotedstr(q_geral.FieldByName('cod_produto').AsString) +
                                          ' and cod_fornecedor= '+ q_geral.FieldByName('cod_fornecedor').AsString +
                                          ' and cod_empresa= ' + controller.xcod_empresa.ToString +
                                          ' and locacao= ' + quotedstr(q_geral.FieldByName('locacao').AsString) +
                                          ' and cod_local_estoque= ' + q_geral.FieldByName('cod_local_estoque').AsString
                                         );

              //Baixa Estoque/Reserva

              controller.DM.banco.ExecSQL(' update estoque set qtde = qtde - ' +   q_geral.FieldByName('qtde').AsString +
                                          ' , reserva=reserva-' + q_geral.FieldByName('qtde').AsString +
                                          ' where cod_item=' + quotedstr(q_geral.FieldByName('cod_produto').AsString) +
                                          ' and cod_fornecedor= '+ q_geral.FieldByName('cod_fornecedor').AsString +
                                          ' and cod_empresa= ' + controller.xcod_empresa.ToString

                                         );
              //Insere No Hist�rico

                //verifica ultimo custo e quantidade
                  q_aux.Close;
                  q_aux.SQL.Clear;
                  q_aux.sql.add('select qtde_depois, custo_medio');
                  q_aux.sql.add('from itens_historico');
                  q_aux.sql.add('where sequencia = (select max(sequencia)');
                  q_aux.sql.add('from itens_historico');
                  q_aux.sql.add('where cod_item = :cod_item ');
                  q_aux.sql.add('and cod_fornecedor = :cod_fornecedor ');
                  q_aux.sql.add('and cod_empresa = :cod_empresa )');
                  q_aux.ParamByName('cod_item').AsString:=q_geral.FieldByName('cod_produto').AsString;
                  q_aux.ParamByName('cod_empresa').AsInteger := controller.xcod_empresa;
                  q_aux.ParamByName('cod_fornecedor').AsInteger := q_geral.FieldByName('cod_fornecedor').AsInteger;
                  q_aux.Open();

                  q_insert.Close;
                  q_insert.SQL.Clear  ;
                  q_insert.sql.add('INSERT INTO ITENS_HISTORICO');
                  q_insert.sql.add('(COD_ITEM,');
                  q_insert.sql.add('COD_FORNECEDOR,');
                  q_insert.sql.add('COD_EMPRESA,');
                  q_insert.sql.add('TIPO_OPERACAO,');
                  q_insert.sql.add('COD_OPERACAO,');
                  q_insert.sql.add('DOCUMENTO,');
                  q_insert.sql.add('DATA,');

                  q_insert.sql.add('QTDE_OPERACAO,');
                  q_insert.sql.add('QTDE_DEPOIS,');
                  q_insert.sql.add('MOTIVO,');
                  q_insert.sql.add('CUSTO_MEDIO,');
                  q_insert.sql.add('CUSTO_MEDIO_ANTERIOR,');
                  q_insert.sql.add('COD_CONTROLE,');

                  q_insert.sql.add('RESPONSAVEL,');
                  q_insert.sql.add('SEQUENCIA)');

                  q_insert.sql.add('VALUES');

                  q_insert.sql.add('(:COD_ITEM,');
                  q_insert.sql.add(':COD_FORNECEDOR,');
                  q_insert.sql.add(':COD_EMPRESA,');
                  q_insert.sql.add(' ''S'' ,');
                  q_insert.sql.add('10,');
                  q_insert.sql.add(':DOCUMENTO,');
                  q_insert.sql.add('sysdate,');
                  q_insert.sql.add(':QTDE_OPERACAO,');
                  q_insert.sql.add(':QTDE_DEPOIS,');
                  q_insert.sql.add('''Venda de Mercadorias '',');
                  q_insert.sql.add(':CUSTO_MEDIO,');
                  q_insert.sql.add(':CUSTO_MEDIO_ANTERIOR,');
                  q_insert.sql.add(':COD_CONTROLE,');
                  q_insert.sql.add('user,');
                  q_insert.sql.add('seq_controle_historico.nextval )');

                  q_insert.ParamByName('COD_ITEM').AsString:= q_geral.FieldByName('cod_produto').AsString;
                  q_insert.ParamByName('COD_FORNECEDOR').AsInteger:= q_geral.FieldByName('cod_fornecedor').AsInteger;
                  q_insert.ParamByName('COD_EMPRESA').AsInteger:= controller.xcod_empresa;
                  q_insert.ParamByName('DOCUMENTO').AsInteger := id.ToInteger;
                  q_insert.ParamByName('QTDE_OPERACAO').AsFloat := q_geral.FieldByName('qtde').AsFloat;
                  q_insert.ParamByName('QTDE_DEPOIS').AsFloat :=  q_aux.FieldByName('QTDE_DEPOIS').AsFloat - q_geral.FieldByName('qtde').AsFloat;
                  q_insert.ParamByName('CUSTO_MEDIO').AsFloat := q_aux.FieldByName('custo_medio').AsFloat;
                  q_insert.ParamByName('CUSTO_MEDIO_ANTERIOR').AsFloat := q_aux.FieldByName('custo_medio').AsFloat;
                  q_insert.ParamByName('COD_CONTROLE').AsInteger := id.ToInteger;
                  q_insert.ExecSQL;



             q_geral.Next;
             end;

              //Muda o status para 1 - Faturado
                 controller.DM.banco.ExecSQL(' update vendas set data_venda=sysdate, status= 1 where id=' + id +
                                             ' and cod_empresa=' + controller.xcod_empresa.ToString   );


                                             addtoinitproc(swalSuccess('Sucesso!','Venda Efetuada com sucesso'));


                                             controller.DM.banco.Commit;

                                             tbvendas_reload;





        except
         on e:Exception do
         begin
          addtoinitproc(swalError('Erro ao gerar Venda:',e.Message));
          controller.DM.banco.Rollback;

         end;

        end;



     end;




  end;

if copy(iwacao.Text, 1, 5) = 'IMPVE' then      //aceitar cliente na venda
  begin
    id := copy(iwacao.Text, 6, Length(iwacao.Text));


   imprimir_venda(id.ToInteger());



  end;

if copy(iwacao.Text, 1, 5) = 'DESUN' then      //aceitar cliente na venda
  begin
    id := copy(iwacao.Text, 6, Length(iwacao.Text));
    edit_desc_un.Hint:=id;


    WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDDescUN'').modal(''show'');');






  end;


if copy(iwacao.Text, 1, 5) = 'DelTP' then      //aceitar cliente na venda
  begin
    id := copy(iwacao.Text, 6, Length(iwacao.Text));


    controller.DM.banco.ExecSQL(' delete from temp_escolhidos where id='+id);
    tbescolhidos_reload;
    recalcula_totais;





  end;

if copy(iwacao.Text, 1, 5) = 'CarAd' then      //aceitar cliente na venda
  begin

    id := copy(iwacao.Text, 6, Length(iwacao.Text));
    WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDToEscolhidos'').modal(''show'');');
    edit_qtde_to_esc.Hint:=id;





  end;


 if copy(iwacao.Text, 1, 5) = 'Aceit' then      //aceitar cliente na venda
  begin
    id := copy(iwacao.Text, 6, Length(iwacao.Text));

    q_datatable.Close;
    q_datatable.SQL.Clear;
    q_datatable.SQL.Add
      (' select cod_cliente,nome,uf from clientes where cod_cliente like  ' +
      quotedstr('%' + id + '%'));
    q_datatable.Open();


    edit_cliente.Text:=q_datatable.FieldByName('nome').AsString;
    edit_cliente.Hint:=q_datatable.FieldByName('cod_cliente').AsString;



  end;


  if copy(iwacao.Text, 1, 5) = 'Selec' then //   retirar promo��o do item
  begin
   id := copy(iwacao.Text, 6, Length(iwacao.Text));

   q_geral.Close;
   q_geral.SQL.Clear;
   q_geral.SQL.Add('select cod_item,cod_fornecedor,descricao from itens where id='+ id);
   q_geral.Open();

   produto.Hint:=id;

   produto.Caption:= q_geral.FieldByName('descricao').AsString;

   WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBRemoto").DataTable().ajax.reload();');




  end;
end;

procedure Tform_saidas.limpar_temporaria;
begin
     controller.DM.banco.ExecSQL(' delete from temp_escolhidos');
      tbescolhidos_reload;
      edit_desc_valor.Text:='0';
      edit_desc_perc.Text:='0';
      edit_total.Text:='0';
      edit_total_serv.Text:='0';
      edit_total_geral.Text:='0';
      edit_cliente.Hint:='0';
      edit_cliente.Text:='';
      edit_valor_mo.Text:='0';
      edit_descricao_mo.Text:='';
      edit_cod_mo.Text:='';
      memo_obs_serv.Text:='';
end;

procedure Tform_saidas.rb_estoqueAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
busca_itens_reload;
end;

procedure Tform_saidas.rb_todosAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
busca_itens_reload;
end;

procedure Tform_saidas.recalcula_totais;
begin
 edit_total_geral.Text := floattostr(strtofloat(edit_total_serv.Text) + strtofloat(edit_total.Text));
end;

procedure Tform_saidas.TBClientes(aParams: TStrings; out aResult: string);
var
  wresult: string;
  wtotal: integer;
  btn1: string;
  btn2: string;
  btn3: string;
  btn4: string;
  id: string;
begin
  q_datatable.close;
  q_datatable.SQL.Clear;

  q_datatable.SQL.Add(' select count(*) as total  ');
  q_datatable.SQL.Add(' from clientes   ');
  q_datatable.SQL.Add(' where  1=1   ');

  q_datatable.SQL.Add('and ( nome like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');
  q_datatable.SQL.Add('      OR  cod_cliente like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  bairro like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  uf like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  q_datatable.FetchOptions.RecsMax := -1;
  q_datatable.FetchOptions.RecsSkip := -1;

  q_datatable.Open;

  wtotal := q_datatable.FieldByName('total').AsInteger;

  //
  // Select para montar o resultado do ajax na solicitacao do DATATABLE
  //
  q_datatable.close;

  q_datatable.SQL.Clear;
  q_datatable.SQL.Add('select c.cod_cliente,c.nome,c.endereco,c.bairro, (select descricao from cidades cid where cid.cod_cidade = c.cod_cidade) as cod_cidade,c.uf,c.cep,c.data_cadastro from clientes c ');

  q_datatable.SQL.Add(' where   1=1   ');

  q_datatable.SQL.Add('and ( nome like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.SQL.Add('      OR  cod_cliente like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  bairro like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  uf like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.SQL.Add('Order by nome ' + aParams.Values
        ['order[0][dir]'] + ' ');
    1:
      q_datatable.SQL.Add('Order by  cod_cliente ' + aParams.Values
        ['order[0][dir]'] + ' ');

  end;

  q_datatable.FetchOptions.RecsMax := strtoint(aParams.Values['length']);
  q_datatable.FetchOptions.RecsSkip := strtoint(aParams.Values['start']);

  q_datatable.Open;

  //
  // Montagem da variavel com o JASON de resultado da consulta
  //
  wresult := '{' + '"draw": ' + StrToIntDef(aParams.Values['draw'], 0).ToString
    + ', ' + '"recordsTotal": ' + wtotal.ToString + ', ' + '"recordsFiltered": '
    + wtotal.ToString + ', ' + '"data": [';
  q_datatable.First;
  btn2 := '';
  btn3 := '';
  id := '';
  while not q_datatable.Eof do
  begin



    id := q_datatable.FieldByName('cod_cliente').AsString;

    copy(iwacao.Text, 6, Length(iwacao.Text));
    if copy(id, 1, 1) = '0' then
    begin

     id :=  copy(id, 2, Length(id));
    end;




    btn1 := '"<button type=\"buttom\" class=\"btn btn-xs btn-success\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aceitar\" data-dismiss=\"modal\" onclick=\"SetaAcao(''Aceit'''
      + ',' + id + ')\" > <i class=\"fa fa-level-down\"> </i> </button>" ';

    btn2 := '"<button type=\"buttom\" class=\"btn btn-xs btn-warning\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Editar\" onclick=\"SetaAcao(''AltCl'''
      + ',' + id + ')\" > <i class=\"fa fa-pencil\"> </i> </button> ';
    btn3 := '<button type=\"buttom\" class=\"btn btn-xs btn-info\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aprovar Operador\" onclick=\"SetaAcao(''aprOp'''
      + ',' + id + ')\"> <i class=\"fa fa-thumbs-o-up\"> </i> </button> ';

    btn4 := '<button type=\"buttom\" class=\"btn btn-xs btn-default\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Gerar proposta no NBS\" onclick=\"SetaAcao(''ExcDo'''
      + ',' + id + ')\"> <i class=\"fa fa-database\"> </i> </button> "';

    //
    wresult := wresult + '[' + btn1 + ','+ '"' +
      stringreplace(Trim(q_datatable.FieldByName('cod_cliente').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('nome').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('endereco').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('bairro').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('cod_cidade').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('uf').AsString),
      '"', '\"', [rfReplaceAll]) + '" ' +



    // Separador de colunas ------------------------------

          '],';

    q_datatable.Next;

  end;
  q_datatable.close;

  if wtotal <= 0 then
    wresult := wresult + ']}'
  else
    wresult := LeftStr(Trim(wresult), Length(Trim(wresult)) - 1) + ']}';

  //
  // Envia o resultado para o ajax do DataTable
  aResult := wresult;

  // abco




end;

procedure Tform_saidas.TBEscolhidos(aParams: TStrings; out aResult: string);
var
  wresult: string;
  wtotal: integer;
  btn1: string;
  btn2: string;
  btn3: string;
  btn4: string;
  id: string;
  v_promo,v_bloq : string;
begin
  q_datatable.close;
  q_datatable.SQL.Clear;

   q_datatable.sql.add('select count(*) as total from (');
  q_datatable.sql.add('select id,');
  q_datatable.sql.add('cod_item,');
  q_datatable.sql.add('descricao,');
  q_datatable.sql.add('preco_unitario,');
  q_datatable.sql.add('qtde,');
  q_datatable.sql.add('valor_total,');
  q_datatable.sql.add('val_desc,');
  q_datatable.sql.add('cod_fornecedor,');
  q_datatable.sql.add('perc_desc,');
  q_datatable.sql.add('cod_empresa,');
  q_datatable.sql.add('fornecedor');
  q_datatable.sql.add('from temp_escolhidos');
  q_datatable.sql.add(')');
   q_datatable.sql.add(' where 1=1 ');


  q_datatable.SQL.Add('and (   upper(cod_item) like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');
  q_datatable.SQL.Add('      OR    upper(descricao) like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR   upper(cod_fornecedor) like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR    upper(fornecedor) like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');



  q_datatable.FetchOptions.RecsMax := -1;
  q_datatable.FetchOptions.RecsSkip := -1;

  q_datatable.Open;

  wtotal := q_datatable.FieldByName('total').AsInteger;

  //
  // Select para montar o resultado do ajax na solicitacao do DATATABLE
  //
  q_datatable.close;

  q_datatable.SQL.Clear;

   q_datatable.sql.add('select id,');
   q_datatable.sql.add('cod_item,');
   q_datatable.sql.add('descricao,');
   q_datatable.sql.add('preco_unitario,');
   q_datatable.sql.add('qtde,');
   q_datatable.sql.add('valor_total,');
   q_datatable.sql.add('val_desc,');
   q_datatable.sql.add('cod_fornecedor,');
   q_datatable.sql.add('perc_desc,');
   q_datatable.sql.add('cod_empresa,');
   q_datatable.sql.add('fornecedor');
   q_datatable.sql.add('from temp_escolhidos where 1=1' );



  q_datatable.SQL.Add('and ( upper(cod_item) like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.SQL.Add('      OR  upper(descricao) like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  upper(cod_fornecedor) like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  upper(fornecedor) like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.SQL.Add('Order by  cod_item ' + aParams.Values
        ['order[0][dir]'] + ' ');
    1:
      q_datatable.SQL.Add('Order by   descricao ' + aParams.Values
        ['order[0][dir]'] + ' ');

  end;

  q_datatable.FetchOptions.RecsMax := strtoint(aParams.Values['length']);
  q_datatable.FetchOptions.RecsSkip := strtoint(aParams.Values['start']);

  q_datatable.Open();










  //
  // Montagem da variavel com o JASON de resultado da consulta
  //
  wresult := '{' + '"draw": ' + StrToIntDef(aParams.Values['draw'], 0).ToString
    + ', ' + '"recordsTotal": ' + wtotal.ToString + ', ' + '"recordsFiltered": '
    + wtotal.ToString + ', ' + '"data": [';
  q_datatable.First;
  btn2 := '';
  btn3 := '';
  id := '';
  while not q_datatable.Eof do
  begin



    id := q_datatable.FieldByName('id').AsString;






    btn1 := '"<button type=\"buttom\" class=\"btn btn-xs btn-danger\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Deletar Item\" data-dismiss=\"modal\" onclick=\"SetaAcao(''DelTP'''
      + ',' + id + ')\" > <i class=\"fa fa-trash\"> </i> </button> ';

    btn2 := '<button type=\"buttom\" class=\"btn btn-xs btn-warning\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Liberar desconto Unit�rio\" onclick=\"SetaAcao(''DESUN'''
      + ',' + id + ')\" > <i class=\"fa fa-money\"> </i> </button>" ';
    btn3 := '<button type=\"buttom\" class=\"btn btn-xs btn-info\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aprovar Operador\" onclick=\"SetaAcao(''aprOp'''
      + ',' + id + ')\"> <i class=\"fa fa-thumbs-o-up\"> </i> </button> ';

    btn4 := '<button type=\"buttom\" class=\"btn btn-xs btn-default\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Gerar proposta no NBS\" onclick=\"SetaAcao(''ExcDo'''
      + ',' + id + ')\"> <i class=\"fa fa-database\"> </i> </button> "';

    //
    wresult := wresult + '[' + btn1 + btn2+ ','  + '"' +
      stringreplace(Trim(q_datatable.FieldByName('cod_item').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('descricao').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('preco_unitario').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('qtde').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------


      '"' + stringreplace(Trim(q_datatable.FieldByName('val_desc').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
       '"' + stringreplace(Trim(q_datatable.FieldByName('perc_desc').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
        '"' + stringreplace(Trim(q_datatable.FieldByName('valor_total').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------



      '"' + stringreplace(Trim(q_datatable.FieldByName('fornecedor').AsString),
      '"', '\"', [rfReplaceAll]) + '" ' +



    // Separador de colunas ------------------------------

          '],';

    q_datatable.Next;

  end;
  q_datatable.close;

  if wtotal <= 0 then
    wresult := wresult + ']}'
  else
    wresult := LeftStr(Trim(wresult), Length(Trim(wresult)) - 1) + ']}';

  //
  // Envia o resultado para o ajax do DataTable
  aResult := wresult;

  // abco


end;

procedure Tform_saidas.tbescolhidos_reload;
begin
WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBEscolhidos").DataTable().ajax.reload();');

  q_geral.Close;
  q_geral.SQL.Clear;
  q_geral.sql.add('select nvl(sum(valor_total) - sum(val_desc), 0) total_liq');
  q_geral.sql.add('from temp_escolhidos');
  q_geral.Open();


  edit_total.Text:= q_geral.FieldByName('total_liq').AsString;
end;

procedure Tform_saidas.tbvendas_reload;
begin
WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBVendas").DataTable().ajax.reload();');
end;

procedure Tform_saidas.TBItensBusca(aParams: TStrings; out aResult: string);
var
  wresult: string;
  wtotal: integer;
  btn1: string;
  btn2: string;
  btn3: string;
  btn4: string;
  id: string;
  v_promo,v_bloq : string;
begin
  q_datatable.close;
  q_datatable.SQL.Clear;

 q_datatable.sql.add('select count(*) as total from (');
 q_datatable.sql.add('select i.id,');
 q_datatable.sql.add('i.cod_item,');
 q_datatable.sql.add('i.descricao,');
 q_datatable.sql.add('i.preco_venda,');
 q_datatable.sql.add('f.descricao  as fornecedor,');
 q_datatable.sql.add('ig.descricao as grupo,');
 q_datatable.sql.add('e.qtde,');
 q_datatable.sql.add('e.reserva,');
 q_datatable.sql.add('(e.qtde - e.reserva) as disponivel,');
 q_datatable.sql.add('l.locacao');
 q_datatable.sql.add('from itens              i,');
 q_datatable.sql.add('itens_custos       ic,');
 q_datatable.sql.add('estoque            e,');
 q_datatable.sql.add('locacao            l,');
 q_datatable.sql.add('fornecedor_estoque f,');
 q_datatable.sql.add('itens_grupo        ig');
 q_datatable.sql.add('where i.cod_fornecedor = f.cod_fornecedor');
 q_datatable.sql.add('and i.cod_grupo = ig.cod_grupo');
 q_datatable.sql.add('and i.cod_item=e.cod_item(+)');
 q_datatable.sql.add('and i.cod_fornecedor=e.cod_fornecedor(+)');
 q_datatable.sql.add('and e.cod_empresa(+)='+ inttostr(controller.xcod_empresa));

 if rb_estoque.Checked then
 begin
  q_datatable.sql.add('and e.qtde > 0' );

 end;

 q_datatable.sql.add('and i.cod_item=ic.cod_item(+)');
 q_datatable.sql.add('and i.cod_fornecedor=ic.cod_fornecedor(+)');
 q_datatable.sql.add('and i.cod_item=l.cod_item(+)');
 q_datatable.sql.add('and i.cod_fornecedor=l.cod_fornecedor(+)');
 q_datatable.sql.add(')');
 q_datatable.sql.add(' where 1=1 ');


  q_datatable.SQL.Add('and (   upper(cod_item) like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');
  q_datatable.SQL.Add('      OR    upper(descricao) like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR   upper(fornecedor) like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR    upper(grupo) like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');



  q_datatable.FetchOptions.RecsMax := -1;
  q_datatable.FetchOptions.RecsSkip := -1;

  q_datatable.Open;

  wtotal := q_datatable.FieldByName('total').AsInteger;

  //
  // Select para montar o resultado do ajax na solicitacao do DATATABLE
  //
  q_datatable.close;

  q_datatable.SQL.Clear;

  q_datatable.sql.add('select i.id,');
  q_datatable.sql.add('i.cod_item,');
  q_datatable.sql.add('i.descricao,');
  // to_char(i.preco_venda, 'FM999G999G999D90', 'nls_numeric_characters='',.''')
  q_datatable.sql.add('to_char(i.preco_venda, ''FM999G999G999D90'' ,'' nls_numeric_characters='''',.'''' ''    ) preco_venda,');
  q_datatable.sql.add('f.descricao  as fornecedor,');
  q_datatable.sql.add('ig.descricao as grupo,');
  q_datatable.sql.add('nvl(e.qtde,0) qtde,');
  q_datatable.sql.add('nvl(e.reserva,0) reserva,');
  q_datatable.sql.add('nvl((nvl(e.qtde,0) - nvl(e.reserva,0)),0) as disponivel,');
  q_datatable.sql.add('l.locacao');
  q_datatable.sql.add('from itens              i,');
  q_datatable.sql.add('itens_custos       ic,');
  q_datatable.sql.add('estoque            e,');
  q_datatable.sql.add('locacao            l,');
  q_datatable.sql.add('fornecedor_estoque f,');
  q_datatable.sql.add('itens_grupo        ig');
  q_datatable.sql.add('where i.cod_fornecedor = f.cod_fornecedor');
  q_datatable.sql.add('and i.cod_grupo = ig.cod_grupo');
  q_datatable.sql.add('and i.cod_item=e.cod_item(+)');
  q_datatable.sql.add('and i.cod_fornecedor=e.cod_fornecedor(+)');
  q_datatable.sql.add('and i.cod_item=ic.cod_item(+)');
  q_datatable.sql.add('and i.cod_fornecedor=ic.cod_fornecedor(+)');
  q_datatable.sql.add('and i.cod_item=l.cod_item(+)');
  q_datatable.sql.add('and i.cod_fornecedor=l.cod_fornecedor(+)');

  if rb_estoque.Checked then
     begin
      q_datatable.sql.add('and e.qtde > 0' );

     end;
  q_datatable.sql.add('and e.cod_empresa(+)='+ inttostr(controller.xcod_empresa));



  q_datatable.SQL.Add('and ( upper(i.cod_item) like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.SQL.Add('      OR  upper(i.descricao) like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  upper(f.descricao) like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  upper(ig.descricao) like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    7:
      q_datatable.SQL.Add('Order by i.cod_item, ' + aParams.Values
        ['order[0][dir]'] + ' ');
    1:
      q_datatable.SQL.Add('Order by  i.descricao ' + aParams.Values
        ['order[0][dir]'] + ' ');

  end;

  q_datatable.FetchOptions.RecsMax := strtoint(aParams.Values['length']);
  q_datatable.FetchOptions.RecsSkip := strtoint(aParams.Values['start']);



  q_datatable.Open;

  //
  // Montagem da variavel com o JASON de resultado da consulta
  //
  wresult := '{' + '"draw": ' + StrToIntDef(aParams.Values['draw'], 0).ToString
    + ', ' + '"recordsTotal": ' + wtotal.ToString + ', ' + '"recordsFiltered": '
    + wtotal.ToString + ', ' + '"data": [';
  q_datatable.First;
  btn2 := '';
  btn3 := '';
  id := '';
  while not q_datatable.Eof do
  begin



    id := q_datatable.FieldByName('id').AsString;






    btn1 := '"<button type=\"buttom\" class=\"btn btn-xs btn-info\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Selecionar Item\" data-dismiss=\"modal\" onclick=\"SetaAcao(''Selec'''
      + ',' + id + ')\" > <i class=\"fa fa-search\"> </i> </button> ';

    btn2 := '<button type=\"buttom\" class=\"btn btn-xs btn-warning\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Adicionar ao carrinho\" onclick=\"SetaAcao(''CarAd'''
      + ',' + id + ')\" > <i class=\"fa fa-cart-plus\"> </i> </button>" ';
    btn3 := '<button type=\"buttom\" class=\"btn btn-xs btn-info\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aprovar Operador\" onclick=\"SetaAcao(''aprOp'''
      + ',' + id + ')\"> <i class=\"fa fa-thumbs-o-up\"> </i> </button> ';

    btn4 := '<button type=\"buttom\" class=\"btn btn-xs btn-default\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Gerar proposta no NBS\" onclick=\"SetaAcao(''ExcDo'''
      + ',' + id + ')\"> <i class=\"fa fa-database\"> </i> </button> "';

    //
    wresult := wresult + '[' + btn1 + btn2+ ','  + '"' +
      stringreplace(Trim(q_datatable.FieldByName('cod_item').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('descricao').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('preco_venda').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('fornecedor').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('grupo').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
      '"' + stringreplace(Trim(q_datatable.FieldByName('qtde').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
      '"' + stringreplace(Trim(q_datatable.FieldByName('reserva').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
        '"' + stringreplace(Trim(q_datatable.FieldByName('disponivel').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------


      '"' + stringreplace(Trim(q_datatable.FieldByName('locacao').AsString),
      '"', '\"', [rfReplaceAll]) + '" ' +



    // Separador de colunas ------------------------------

          '],';

    q_datatable.Next;

  end;
  q_datatable.close;

  if wtotal <= 0 then
    wresult := wresult + ']}'
  else
    wresult := LeftStr(Trim(wresult), Length(Trim(wresult)) - 1) + ']}';

  //
  // Envia o resultado para o ajax do DataTable
  aResult := wresult;

  // abco


end;

procedure Tform_saidas.TBRemoto(aParams: TStrings; out aResult: string);
var
  wresult: string;
  wtotal: integer;
  btn1: string;
  btn2: string;
  btn3: string;
  btn4: string;
  id: string;
  v_promo,v_bloq : string;
begin
  q_datatable.close;
  q_datatable.SQL.Clear;

 q_datatable.sql.add('select count(*) as total from (');
 q_datatable.sql.add('select emp.cod_empresa,');
 q_datatable.sql.add('emp.apelido,');
 q_datatable.sql.add('nvl(e.qtde, 0) qtde,');
 q_datatable.sql.add('nvl(e.reserva, 0) reserva');
 q_datatable.sql.add('from empresas emp, estoque e, itens i');
 q_datatable.sql.add('where emp.cod_empresa = e.cod_empresa(+)');
 q_datatable.sql.add('and emp.cod_empresa <> ' + inttostr(controller.xcod_empresa));
 q_datatable.sql.add('and i.id= ' + produto.Hint);
 q_datatable.sql.add('and i.cod_item=e.cod_item(+)');
 q_datatable.sql.add('and i.cod_fornecedor=e.cod_fornecedor(+)');
 q_datatable.sql.add('');
 q_datatable.sql.add(')');

 q_datatable.sql.add(' where 1=1');



  q_datatable.SQL.Add('and (   upper(cod_empresa) like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');
  q_datatable.SQL.Add('      OR    upper(apelido) like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR   upper(qtde) like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR    upper(reserva) like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');



  q_datatable.FetchOptions.RecsMax := -1;
  q_datatable.FetchOptions.RecsSkip := -1;

  q_datatable.Open;

  wtotal := q_datatable.FieldByName('total').AsInteger;

  //
  // Select para montar o resultado do ajax na solicitacao do DATATABLE
  //
  q_datatable.close;

  q_datatable.SQL.Clear;

   q_datatable.sql.add('select emp.cod_empresa,');
   q_datatable.sql.add('emp.apelido,');
   q_datatable.sql.add('nvl(e.qtde, 0) qtde,');
   q_datatable.sql.add('nvl(e.reserva, 0) reserva');
   q_datatable.sql.add('from empresas emp, estoque e, itens i');
   q_datatable.sql.add('where emp.cod_empresa = e.cod_empresa(+)');
   q_datatable.sql.add('and i.id= ' + produto.Hint);
   q_datatable.sql.add('and emp.cod_empresa <> ' + inttostr(controller.xcod_empresa));
   q_datatable.sql.add('and i.cod_item=e.cod_item(+)');
   q_datatable.sql.add('and i.cod_fornecedor=e.cod_fornecedor(+)');




  q_datatable.SQL.Add('and ( upper(emp.cod_empresa) like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.SQL.Add('      OR  upper(emp.apelido) like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  upper(e.qtde) like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  upper(e.reserva) like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.SQL.Add('Order by emp.cod_empresa ' + aParams.Values
        ['order[0][dir]'] + ' ');
    1:
      q_datatable.SQL.Add('Order by  emp.apelido ' + aParams.Values
        ['order[0][dir]'] + ' ');

  end;

  q_datatable.FetchOptions.RecsMax := strtoint(aParams.Values['length']);
  q_datatable.FetchOptions.RecsSkip := strtoint(aParams.Values['start']);



  q_datatable.Open;

  //
  // Montagem da variavel com o JASON de resultado da consulta
  //
  wresult := '{' + '"draw": ' + StrToIntDef(aParams.Values['draw'], 0).ToString
    + ', ' + '"recordsTotal": ' + wtotal.ToString + ', ' + '"recordsFiltered": '
    + wtotal.ToString + ', ' + '"data": [';
  q_datatable.First;
  btn2 := '';
  btn3 := '';
  id := '';
  while not q_datatable.Eof do
  begin



    id := q_datatable.FieldByName('cod_empresa').AsString;






    btn1 := '"<button type=\"buttom\" class=\"btn btn-xs btn-info\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Detalhe do Item\" data-dismiss=\"modal\" onclick=\"SetaAcao(''Aceit'''
      + ',' + id + ')\" > <i class=\"fa fa-search\"> </i> </button>" ';

    btn2 := '"<button type=\"buttom\" class=\"btn btn-xs btn-warning\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Editar\" onclick=\"SetaAcao(''AltCl'''
      + ',' + id + ')\" > <i class=\"fa fa-pencil\"> </i> </button> ';
    btn3 := '<button type=\"buttom\" class=\"btn btn-xs btn-info\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aprovar Operador\" onclick=\"SetaAcao(''aprOp'''
      + ',' + id + ')\"> <i class=\"fa fa-thumbs-o-up\"> </i> </button> ';

    btn4 := '<button type=\"buttom\" class=\"btn btn-xs btn-default\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Gerar proposta no NBS\" onclick=\"SetaAcao(''ExcDo'''
      + ',' + id + ')\"> <i class=\"fa fa-database\"> </i> </button> "';

    //
    wresult := wresult + '['   + '"' +
      stringreplace(Trim(q_datatable.FieldByName('cod_empresa').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('apelido').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('qtde').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------


      '"' + stringreplace(Trim(q_datatable.FieldByName('reserva').AsString),
      '"', '\"', [rfReplaceAll]) + '" ' +



    // Separador de colunas ------------------------------

          '],';

    q_datatable.Next;

  end;
  q_datatable.close;

  if wtotal <= 0 then
    wresult := wresult + ']}'
  else
    wresult := LeftStr(Trim(wresult), Length(Trim(wresult)) - 1) + ']}';

  //
  // Envia o resultado para o ajax do DataTable
  aResult := wresult;

  // abco


end;

procedure Tform_saidas.TBVendas(aParams: TStrings; out aResult: string);
var
  wresult: string;
  wtotal: integer;
  btn: string;
  btn1: string;
  btn2: string;
  btn3: string;
  btn4: string;
  btn5: string;
  id: string;
  v_promo,v_bloq : string;
begin
  q_datatable.close;
  q_datatable.SQL.Clear;

  q_datatable.sql.add('select count(*) as total');
  q_datatable.sql.add('from vendas v, clientes cli');
  q_datatable.sql.add('where v.cod_cliente = cli.cod_cliente');
  q_datatable.sql.add(' and  v.cod_empresa = ' + controller.xcod_empresa.ToString);

  if combo_filtro_op.SelectedValue<>'4' then
   begin
     q_datatable.sql.add(' and  v.operacao = ' + combo_filtro_op.SelectedValue );
   end;
    if combo_filtro_status.SelectedValue<>'T' then
   begin
     q_datatable.sql.add(' and  v.status = ' + combo_filtro_status.SelectedValue );

   end;



  q_datatable.SQL.Add('and (   cli.nome like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');
  q_datatable.SQL.Add('      OR    cli.cod_cliente like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR   v.status like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR    v.id like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');



  q_datatable.FetchOptions.RecsMax := -1;
  q_datatable.FetchOptions.RecsSkip := -1;

  q_datatable.Open;

  wtotal := q_datatable.FieldByName('total').AsInteger;

  //
  // Select para montar o resultado do ajax na solicitacao do DATATABLE
  //
  q_datatable.close;

  q_datatable.SQL.Clear;

   q_datatable.sql.add('');
   q_datatable.sql.add('select v.id,');
   q_datatable.sql.add('case');
   q_datatable.sql.add('when status = 0 then');
   q_datatable.sql.add('''Ativo''');
   q_datatable.sql.add('when status = 1 then');
   q_datatable.sql.add('''Faturado''');
   q_datatable.sql.add('when status = 2 then');
   q_datatable.sql.add('''Cancelado''');
   q_datatable.sql.add('end status,');
   q_datatable.sql.add('');
   q_datatable.sql.add('case');
   q_datatable.sql.add('when operacao = 1 then');
   q_datatable.sql.add('''Orcamento''');
   q_datatable.sql.add('when operacao = 2 then');
   q_datatable.sql.add('''Pre-Nota''');
   q_datatable.sql.add('when operacao = 3 then');
   q_datatable.sql.add('''Transferencia''');
   q_datatable.sql.add('when operacao = 4 then');
   q_datatable.sql.add('''Ordem de Servi�o''');
   q_datatable.sql.add('end operacao,');
   q_datatable.sql.add('');
   q_datatable.sql.add('v.emissao,');
   q_datatable.sql.add('v.data_venda,');
   q_datatable.sql.add('v.cod_cliente,');
   q_datatable.sql.add('v.total_produtos,');
   q_datatable.sql.add('v.valor_serv,');
   q_datatable.sql.add('cli.nome,');
   q_datatable.sql.add('v.total_nota');
   q_datatable.sql.add('from vendas v, clientes cli');
   q_datatable.sql.add('where v.cod_cliente = cli.cod_cliente');
   q_datatable.sql.add(' and  v.cod_empresa = ' + controller.xcod_empresa.ToString);

   if combo_filtro_op.SelectedValue<>'4' then
   begin
     q_datatable.sql.add(' and  v.operacao = ' + combo_filtro_op.SelectedValue );
   end;

   if combo_filtro_status.SelectedValue<>'T' then
   begin
     q_datatable.sql.add(' and  v.status = ' + combo_filtro_status.SelectedValue );

   end;




  q_datatable.SQL.Add('and ( cli.nome like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.SQL.Add('      OR  cli.cod_cliente like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  v.status like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  v.id like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.SQL.Add('Order by  v.id ' + aParams.Values
        ['order[0][dir]'] + ' ');
    3:
      q_datatable.SQL.Add('Order by   v.emissao ' + aParams.Values
        ['order[0][dir]'] + ' ');

  end;

  q_datatable.FetchOptions.RecsMax := strtoint(aParams.Values['length']);
  q_datatable.FetchOptions.RecsSkip := strtoint(aParams.Values['start']);

  q_datatable.Open();




  //
  // Montagem da variavel com o JASON de resultado da consulta
  //
  wresult := '{' + '"draw": ' + StrToIntDef(aParams.Values['draw'], 0).ToString
    + ', ' + '"recordsTotal": ' + wtotal.ToString + ', ' + '"recordsFiltered": '
    + wtotal.ToString + ', ' + '"data": [';
  q_datatable.First;
  btn2 := '';
  btn3 := '';
  id := '';
  while not q_datatable.Eof do
  begin



    id := q_datatable.FieldByName('id').AsString;




   btn := '"<button type=\"buttom\" class=\"btn btn-xs btn-default\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Editar\" data-dismiss=\"modal\" onclick=\"SetaAcao(''EDITA'''
      + ',' + id + ')\" > <i class=\"fa  fa-edit (alias)\"> </i> </button> ';

    btn1 := '<button type=\"buttom\" class=\"btn btn-xs btn-default\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Imprimir\" data-dismiss=\"modal\" onclick=\"SetaAcao(''IMPVE'''
      + ',' + id + ')\" > <i class=\"fa fa-print\"> </i> </button> ';

    btn2 := '<button type=\"buttom\" class=\"btn btn-xs btn-success\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Fechar\" onclick=\"SetaAcao(''VENDE'''
      + ',' + id + ')\" > <i class=\"fa fa-money\"> </i> </button> ';
    btn3 := '<button type=\"buttom\" class=\"btn btn-xs btn-info\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Converter Or�amento em Pr�Nota\" onclick=\"SetaAcao(''CONVE'''
      + ',' + id + ')\"> <i class=\"fa fa-thumbs-o-up\"> </i> </button>  ';

    btn4 := '<button type=\"buttom\" class=\"btn btn-xs btn-danger\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Estornar Venda\" onclick=\"SetaAcao(''EXTOR'''
      + ',' + id + ')\"> <i class=\"fa fa-trash\"> </i> </button> ';

      btn5 := '<button type=\"buttom\" class=\"btn btn-xs btn-danger\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Cancelar Pr�-Nota/Transfer�ncia\" onclick=\"SetaAcao(''CANCE'''
      + ',' + id + ')\"> <i class=\"fa  fa-remove (alias)\"> </i> </button> "';

    //
    wresult := wresult + '[' + btn + btn1 + btn2 + btn3 + btn4 +btn5+  ','  + '"' +
      stringreplace(Trim(q_datatable.FieldByName('id').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('cod_cliente').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('nome').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('emissao').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------


      '"' + stringreplace(Trim(q_datatable.FieldByName('data_venda').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
       '"' + stringreplace(Trim(q_datatable.FieldByName('status').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
        '"' + stringreplace(Trim(q_datatable.FieldByName('operacao').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
        '"' + stringreplace(Trim(q_datatable.FieldByName('total_produtos').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
        '"' + stringreplace(Trim(q_datatable.FieldByName('valor_serv').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------



      '"' + stringreplace(Trim(q_datatable.FieldByName('total_nota').AsString),
      '"', '\"', [rfReplaceAll]) + '" ' +



    // Separador de colunas ------------------------------

          '],';

    q_datatable.Next;

  end;
  q_datatable.close;

  if wtotal <= 0 then
    wresult := wresult + ']}'
  else
    wresult := LeftStr(Trim(wresult), Length(Trim(wresult)) - 1) + ']}';

  //
  // Envia o resultado para o ajax do DataTable
  aResult := wresult;

  // abco


end;

procedure Tform_saidas.verificar_ipressao;
begin
addtoinitproc(swalConfirm( 'Confirma��o',
                              'Entrada realizada com sucesso! Deseja imprimir o mapa de separa��o?',
                              'success',
                              'Sim',
                              'N�o',
                              'BTN_IMPRIMIR_SIM',
                              'BTN_IMPRIMIR_NAO'));
end;

end.