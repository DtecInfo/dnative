unit U_Frm_Gerencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FrmPadrao, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, IWCompButton, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, IWCompRadioButton,
  IWCompLabel, IWCompCheckbox, IWHTMLTag, frxClass, frxExportBaseDialog,
  frxExportPDF, frxDBSet, IWBaseComponent, IWBaseHTMLComponent,
  IWBaseHTML40Component, IWCompExtCtrls, frxExportXLS, IWCompListbox;

type
  TForm_gerencia = class(TFrmPadrao)
    q_datatable: TFDQuery;
    q_geral: TFDQuery;
    rb_1m: TIWRadioButton;
    rb_2m: TIWRadioButton;
    rb_3m: TIWRadioButton;
    rb_4m: TIWRadioButton;
    rb_5m: TIWRadioButton;
    rb_6m: TIWRadioButton;
    rb_7m: TIWRadioButton;
    rb_8m: TIWRadioButton;
    rb_9m: TIWRadioButton;
    rb_10m: TIWRadioButton;
    rb_11m: TIWRadioButton;
    rb_12m: TIWRadioButton;
    total_estoque: TIWButton;
    PRODUTO: TIWLabel;
    ULTIMACOMPRA: TIWLabel;
    ULTIMAVENDA: TIWLabel;
    PRECOVENDA: TIWLabel;
    CUSTOCONTABIL: TIWLabel;
    FORNECEDOR: TIWLabel;
    BLOQUEARSU: TIWCheckBox;
    EMPROMO: TIWCheckBox;
    VALORPROMO: TIWEdit;
    PERCPROMO: TIWEdit;
    BTNSALVAR: TIWButton;
    q_aux: TFDQuery;
    IWLabel1: TIWLabel;
    Vendas: TIWLabel;
    qtdec1: TIWLabel;
    qtdec2: TIWLabel;
    qtdec3: TIWLabel;
    qtdec4: TIWLabel;
    qtdec5: TIWLabel;
    qtdec6: TIWLabel;
    qtdec7: TIWLabel;
    qtdec8: TIWLabel;
    qtdec9: TIWLabel;
    qtdec10: TIWLabel;
    qtdec11: TIWLabel;
    qtdec12: TIWLabel;
    qtdev1: TIWLabel;
    qtdev2: TIWLabel;
    qtdev3: TIWLabel;
    qtdev4: TIWLabel;
    qtdev5: TIWLabel;
    qtdev6: TIWLabel;
    qtdev7: TIWLabel;
    qtdev8: TIWLabel;
    qtdev9: TIWLabel;
    qtdev10: TIWLabel;
    qtdev11: TIWLabel;
    qtdev12: TIWLabel;
    IWLabel2: TIWLabel;
    m1: TIWLabel;
    m2: TIWLabel;
    m3: TIWLabel;
    m4: TIWLabel;
    m5: TIWLabel;
    m6: TIWLabel;
    m9: TIWLabel;
    m8: TIWLabel;
    m7: TIWLabel;
    m12: TIWLabel;
    m11: TIWLabel;
    m10: TIWLabel;
    BTN_L_ESTOQUE: TIWButton;
    modal_vendas: TIWModalWindow;
    db_l_estoque: TfrxDBDataset;
    pdf_exp: TfrxPDFExport;
    r_l_estoque: TfrxReport;
    dv_pgto: TfrxDBDataset;
    q_emp: TFDQuery;
    q_estoque: TFDQuery;
    q_estoqueCOD_ITEM: TStringField;
    q_estoqueDESCRICAO: TStringField;
    q_estoqueGRUPO: TStringField;
    q_estoqueQTDE: TFMTBCDField;
    q_estoqueCUSTO_CONTABIL: TStringField;
    q_estoqueTOTAL: TStringField;
    xls_exp: TfrxXLSExport;
    rb_exp_pdf: TIWRadioButton;
    rb_exp_xls: TIWRadioButton;
    BTN_EXP_ESTOQUE: TIWButton;
    combo_exp_estoque: TIWComboBox;
    procedure IWAppFormCreate(Sender: TObject);
    procedure reload(Sender: TObject; EventParams: TStringList);
    procedure IWBTNACAOAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure total_estoqueAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure VALORPROMOHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure PERCPROMOHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure BTNSALVARAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure alinhar(ASender: TObject; ATag: TIWHTMLTag);
    procedure BTN_L_ESTOQUEAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure BTN_EXP_ESTOQUEAsyncClick(Sender: TObject;
      EventParams: TStringList);
  private
    procedure TBEstoque(aParams: TStrings; out aResult: string);
    procedure TBRotatividade(aParams: TStrings; out aResult: string);
    procedure TBHistorico(aParams: TStrings; out aResult: string);
    procedure zerar_campos;
    procedure gerar_rel_estoque(p_tipo:string);

    function get_param_rotatividade : string;
    procedure rotatividade_reload;

  public
    { Public declarations }
  end;

var
  Form_gerencia: TForm_gerencia;

implementation

{$R *.dfm}

uses ServerController, UserSessionUnit, U_DM, System.StrUtils, SweetAlerts;


procedure TForm_gerencia.alinhar(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add(' style="text-align:center" ');
end;

procedure TForm_gerencia.BTNSALVARAsyncClick(Sender: TObject;
  EventParams: TStringList);
  var
  id : string;
begin
  inherited;


   id:= q_geral.FieldByName('id').AsString;

   q_geral.Close;
   q_geral.SQL.Clear;
   q_geral.SQL.Add(' select cod_item,cod_fornecedor from itens ');
   q_geral.SQL.Add(' where id='+ id);
   q_geral.Open();

   if q_geral.RecordCount>0 then
    begin


    q_aux.Close;
    q_aux.SQL.Clear;
     q_aux.sql.add('update itens_custos');
     q_aux.sql.add('set valor_promo = :valor_promo,');
     q_aux.sql.add('perc_promo  = :perc_promo,');
     q_aux.sql.add('em_promo    = :em_promo,');
     q_aux.sql.add('bloqueado   = :bloqueado');
     q_aux.sql.add('where cod_item = :cod_item');
     q_aux.sql.add('and cod_fornecedor = :cod_fornecedor');
     q_aux.sql.add('and cod_empresa = :cod_empresa');

     q_aux.ParamByName('cod_item').AsString:= q_geral.FieldByName('cod_item').AsString;
     q_aux.ParamByName('valor_promo').AsFloat:= strtofloat(valorpromo.Text);
     q_aux.ParamByName('perc_promo').AsInteger:= strtoint(percpromo.Text);

     if empromo.Checked=true then
     begin
      q_aux.ParamByName('em_promo').AsString:= 'S';
     end
     else
     begin
      q_aux.ParamByName('em_promo').AsString:= 'N';
     end;

      if bloquearsu.Checked=true then
     begin
      q_aux.ParamByName('bloqueado').AsString:= 'S';
     end
     else
     begin
      q_aux.ParamByName('bloqueado').AsString:= 'N';
     end;

     q_aux.ParamByName('cod_fornecedor').AsInteger:= q_geral.FieldByName('cod_fornecedor').AsInteger;
     q_aux.ParamByName('cod_empresa').AsInteger:= controller.xcod_empresa;
     q_aux.ExecSQL;



     addtoinitproc(swalSuccess('Sucesso!','Altera��o Efetuada com sucesso!'));



    end;



end;

procedure TForm_gerencia.BTN_EXP_ESTOQUEAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
//Exportar para PDF-Tela=1
//Esportar para PDF-Arquivo=2
//Exportar para Excel-Arquivo=3
  if combo_exp_estoque.SelectedValue='1' then
  begin
    gerar_rel_estoque('PDFT');
  end
     else
     if combo_exp_estoque.SelectedValue='2' then
  begin
    gerar_rel_estoque('PDFA');
  end
  else
  if combo_exp_estoque.SelectedValue='3'  then
  begin
    gerar_rel_estoque('XLS');
  end;


end;

procedure TForm_gerencia.BTN_L_ESTOQUEAsyncClick(Sender: TObject;
  EventParams: TStringList);

begin
  inherited;


   WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDRelEstoque'').modal(''show'');');

end;

procedure TForm_gerencia.gerar_rel_estoque(p_tipo: string);
 var
   xDataRel : String;
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


 //Busca Totais do Estoque
  q_geral.Close;
  q_geral.SQL.Clear;
  q_geral.sql.add('select sum(e.qtde) tot_qtde,');
  q_geral.sql.add('to_char((sum(ic.custo_contabil)),');
  q_geral.sql.add('''FM999G999G999D90'',');
  q_geral.sql.add('''nls_numeric_characters='''',.'''''') tot_custo,');
  q_geral.sql.add('to_char((sum(ic.custo_contabil * e.qtde)),');
  q_geral.sql.add('''FM999G999G999D90'',');
  q_geral.sql.add('''nls_numeric_characters='''',.'''''') tot_geral');
  q_geral.sql.add('');
  q_geral.sql.add('from estoque e, itens i, itens_grupo g, itens_custos ic');
  q_geral.sql.add('where e.cod_item = i.cod_item');
  q_geral.sql.add('and e.cod_fornecedor = i.cod_fornecedor');
  q_geral.sql.add('and i.cod_item = ic.cod_item');
  q_geral.sql.add('and i.cod_fornecedor = ic.cod_fornecedor');
  q_geral.sql.add('and ic.cod_empresa = e.cod_empresa');
  q_geral.sql.add('and i.cod_grupo = g.cod_grupo');
  q_geral.sql.add('and e.cod_empresa=  ' + controller.xcod_empresa.ToString);

  q_geral.Open();


  //Par�metros das vari�veis  empresa

 r_l_estoque.Variables['empresa']       :=  quotedstr(q_emp.FieldByName('nome').AsString);
 r_l_estoque.Variables['emp_endereco']  :=  quotedstr(q_emp.FieldByName('ENDERECO').AsString);
 r_l_estoque.Variables['emp_bairro']    :=  quotedstr(q_emp.FieldByName('BAIRRO').AsString);
 r_l_estoque.Variables['emp_cidade']    :=  quotedstr(q_emp.FieldByName('cidade').AsString);
 r_l_estoque.Variables['emp_uf']        :=  quotedstr(q_emp.FieldByName('uf').AsString);
 r_l_estoque.Variables['emp_cnpj']      :=  quotedstr(q_emp.FieldByName('cnpj').AsString);

 //totais
 r_l_estoque.Variables['tot_qtde']      :=  quotedstr(q_geral.FieldByName('tot_qtde').AsString);
 r_l_estoque.Variables['tot_custo']     :=  quotedstr(q_geral.FieldByName('tot_custo').AsString);
 r_l_estoque.Variables['tot_geral']     :=  quotedstr(q_geral.FieldByName('tot_geral').AsString);


 q_estoque.Close;
 q_estoque.ParamByName('cod_empresa').AsInteger:= controller.xcod_empresa;
 q_estoque.Open();


  //
  // Executando o Relat�rio para a Exporta��o
  //
  if p_tipo='PDFT' then
  begin
  xDataRel := WebApplication.AppID + FormatDateTime('yyyymmddhhmmsszzz', Now);

  pdf_exp.FileName := WebApplication.ApplicationPath + 'wwwroot\RelatoriosPDF\' +
                            xDataRel + '.PDF';
                            r_l_estoque.PrepareReport(True);
                             pdf_exp.ShowDialog:=False;
                             r_l_estoque.Export(pdf_exp);
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

    if p_tipo='PDFA' then
  begin
  xDataRel := WebApplication.AppID + FormatDateTime('yyyymmddhhmmsszzz', Now);

  pdf_exp.FileName := WebApplication.ApplicationPath + 'wwwroot\RelatoriosPDF\' +
                            xDataRel + '.PDF';
                            r_l_estoque.PrepareReport(True);
                             pdf_exp.ShowDialog:=False;
                             r_l_estoque.Export(pdf_exp);
   WebApplication.SendFile(WebApplication.ApplicationPath + 'wwwroot\RelatoriosPDF\' +
                            xDataRel + '.PDF', TRUE);


  end;

  if p_tipo='XLS' then
  begin

    xDataRel := WebApplication.AppID + FormatDateTime('yyyymmddhhmmsszzz', Now);
    xls_exp.FileName  :=  WebApplication.ApplicationPath + 'wwwroot\RelatoriosPDF\' +
                            xDataRel + '.xls';
                            r_l_estoque.PrepareReport(True);
                             xls_exp.ShowDialog:=False;
                             r_l_estoque.Export(xls_exp);
     WebApplication.SendFile(WebApplication.ApplicationPath + 'wwwroot\RelatoriosPDF\' +
                            xDataRel + '.xls', TRUE);



  end;



end;

function TForm_gerencia.get_param_rotatividade: string;
var
 i : integer;
 param : string;
begin

 For i := 0 to componentcount - 1 do
  begin

    if Components[i] is TIWRadioButton then
    begin

      with Components[i] as TIWRadioButton do
      begin

         if Checked=true then
          begin

            //Monta param
            param:='and ic.ultima_venda between  trunc(sysdate) -' + hint + '  and trunc(sysdate) - ' + (inttostr(strtoint(hint) - 30)) ;

            result := param;

          break
          end;


      end;

    end;
  end;



end;

procedure TForm_gerencia.IWAppFormCreate(Sender: TObject);
begin
  inherited;
RegisterCallBack('TBEstoque', TBEstoque);
RegisterCallBack('TBRotatividade', TBRotatividade);
RegisterCallBack('TBHistorico', TBHistorico);
end;

procedure TForm_gerencia.IWBTNACAOAsyncClick(Sender: TObject;
  EventParams: TStringList);
  var
  id : string;
  i : integer;

begin
  inherited;
//TPROM
//ITDET


  if copy(iwacao.Text, 1, 5) = 'ITDET' then //   Detalhe do item
  begin
   id := copy(iwacao.Text, 6, Length(iwacao.Text));

    q_geral.Close;
    q_geral.SQL.Clear;
    q_geral.SQL.Add('select i.cod_item||''-''||i.descricao as item,');
    q_geral.SQL.Add('i.preco_venda,');
    q_geral.SQL.Add('i.id,');
    q_geral.SQL.Add('ic.custo_contabil,');
    q_geral.SQL.Add('ic.ultima_compra,');
    q_geral.SQL.Add('ic.ultima_venda,');
    q_geral.SQL.Add('f.descricao as fornecedor,');
    q_geral.SQL.Add('nvl(ic.em_promo,''N'') promocao,');
    q_geral.SQL.Add('ic.valor_promo,');
    q_geral.SQL.Add('ic.perc_promo,');
    q_geral.SQL.Add('nvl(ic.bloqueado,''N'') bloqueado');
    q_geral.SQL.Add('from itens i, itens_custos ic, fornecedor_estoque f');
    q_geral.SQL.Add('where i.cod_item = ic.cod_item');
    q_geral.SQL.Add('and i.cod_fornecedor = ic.cod_fornecedor');
    q_geral.SQL.Add('and ic.cod_fornecedor = f.cod_fornecedor');
    q_geral.SQL.Add(' and ic.cod_empresa=' + inttostr(controller.xcod_empresa));
    q_geral.SQL.Add(' and i.id=' + id);
    q_geral.Open();

    PRODUTO.Caption := q_geral.FieldByName('item').AsString;
    PRODUTO.hint := q_geral.FieldByName('id').AsString;
    ULTIMACOMPRA.Caption := q_geral.FieldByName('ultima_compra').AsString;
    ULTIMAVENDA.Caption := q_geral.FieldByName('ultima_venda').AsString;
    PRECOVENDA.Caption := q_geral.FieldByName('preco_venda').AsString;
    CUSTOCONTABIL.Caption := q_geral.FieldByName('custo_contabil').AsString;
    FORNECEDOR.Caption := q_geral.FieldByName('fornecedor').AsString;

    if q_geral.FieldByName('promocao').AsString = 'S' then
    begin
      EMPROMO.Checked := true;

    end
    else
    begin
      EMPROMO.Checked := False;
    end;

    if q_geral.FieldByName('bloqueado').AsString = 'S' then
    begin
      BLOQUEARSU.Checked := true;

    end
    else
    begin
      BLOQUEARSU.Checked := False;
    end;

     VALORPROMO.Text := q_geral.FieldByName('valor_promo').AsString;
    PERCPROMO.Text := q_geral.FieldByName('perc_promo').AsString;

    //  Calcular demandas

    q_geral.Close;
    q_geral.SQL.Clear;
    q_geral.sql.add('');
    q_geral.sql.add('SELECT');
    q_geral.sql.add('');
    q_geral.sql.add('TO_CHAR(CAL.DATA, ''MON/YY'') AS MES,');
    q_geral.sql.add('TO_CHAR(CAL.DATA, ''MM'') id,');
    q_geral.sql.add('TO_CHAR(CAL.DATA, ''YY'') ano');
    q_geral.sql.add('');
    q_geral.sql.add('FROM (SELECT (TO_DATE(SEQ.MM || SEQ.YYYY, ''MM/YYYY'') - 1');
    q_geral.sql.add('-- Subtrai 1 por SEQ.NUM n�o come�ar em zero');
    q_geral.sql.add(') + SEQ.NUM AS "DATA"');
    q_geral.sql.add('FROM (SELECT RESULT NUM,');
    q_geral.sql.add('TO_CHAR(( -- Data M�nima');
    q_geral.sql.add('TO_DATE(sysdate - 365, ''DD/MM/YYYY'')),');
    q_geral.sql.add('''MM'') AS "MM",');
    q_geral.sql.add('TO_CHAR(( -- Data M�nima');
    q_geral.sql.add('TO_DATE(sysdate - 365, ''DD/MM/YYYY'')),');
    q_geral.sql.add('''YYYY'') AS "YYYY"');
    q_geral.sql.add('FROM (SELECT ROWNUM RESULT');
    q_geral.sql.add('FROM DUAL');
    q_geral.sql.add('CONNECT BY LEVEL <=');
    q_geral.sql.add('((');
    q_geral.sql.add('-- Data M�xima');
    q_geral.sql.add('LAST_DAY(TO_DATE(sysdate - 30,');
    q_geral.sql.add('''DD/MM/YYYY'')) -');
    q_geral.sql.add('-- Data M�nima');
    q_geral.sql.add('TRUNC(TO_DATE(sysdate - 365, ''DD/MM/YYYY'')) -- Sempre primeiro dia do m�s');
    q_geral.sql.add(') + 1 -- �ltimo dia do �ltimo ano');
    q_geral.sql.add(')) -- Quantas sequ�ncias para gerar pelo MAX');
    q_geral.sql.add('');
    q_geral.sql.add(') SEQ) CAL');
    q_geral.sql.add('');
    q_geral.sql.add('group by TO_CHAR(CAL.DATA, ''MON/YY''),');
    q_geral.sql.add('TO_CHAR(CAL.DATA, ''MM''),');
    q_geral.sql.add('TO_CHAR(CAL.DATA, ''YY'')');
    q_geral.sql.add('order by TO_CHAR(CAL.DATA, ''YY''), TO_CHAR(CAL.DATA, ''MM'')');

    q_geral.Open();

    q_aux.Close;
    q_aux.SQL.Clear;
    q_aux.sql.add('select *');
    q_aux.sql.add('from (select to_char(ih.data, ''MON/YY'') mes, sum(ih.qtde_operacao) qtde');
    q_aux.sql.add('from itens_historico ih, itens i');
    q_aux.sql.add('');
    q_aux.sql.add('where ih.cod_operacao = 1');
    q_aux.sql.add('and ih.cod_item = i.cod_item');
    q_aux.sql.add('and ih.cod_fornecedor = i.cod_fornecedor');
    q_aux.sql.add('and i.id = '+produto.Hint);
    q_aux.sql.add('and ih.cod_empresa = '+inttostr(controller.xcod_empresa));
    q_aux.sql.add('');
    q_aux.sql.add('and trunc(ih.data) >= sysdate - 365');
    q_aux.sql.add('and trunc(ih.data) < sysdate - 30');
    q_aux.sql.add('');
    q_aux.sql.add('group by to_char(ih.data, ''MON/YY''), to_char(ih.data, ''MM'')');
    q_aux.sql.add('order by to_char(ih.data, ''MM''))');
    q_aux.Open();



    q_geral.First;
    q_aux.First;

    i:=0;
    zerar_campos;

    while not q_geral.Eof  do
      begin
       i:=  i + 1;

       if i=1  then
       begin
        m12.Caption:= q_geral.FieldByName('mes').AsString;
       end;
       if i=2  then
       begin
        m11.Caption:= q_geral.FieldByName('mes').AsString;
       end;
       if i=3  then
       begin
       m10.Caption:= q_geral.FieldByName('mes').AsString;
       end;
       if i=4  then
       begin
        m9.Caption:= q_geral.FieldByName('mes').AsString;
       end;
       if i=5  then
       begin
        m8.Caption:= q_geral.FieldByName('mes').AsString;
       end;
       if i=6  then
       begin
        m7.Caption:= q_geral.FieldByName('mes').AsString;
       end;
       if i=7  then
       begin
        m6.Caption:= q_geral.FieldByName('mes').AsString;
       end;
       if i=7  then
       begin
        m5.Caption:= q_geral.FieldByName('mes').AsString;
       end;
       if i=9  then
       begin
        m4.Caption:= q_geral.FieldByName('mes').AsString;
       end;
       if i=10  then
       begin
        m3.Caption:= q_geral.FieldByName('mes').AsString;
       end;
       if i=11  then
       begin
        m2.Caption:= q_geral.FieldByName('mes').AsString;
       end;
       if i=12  then
       begin
        m1.Caption:= q_geral.FieldByName('mes').AsString;
       end;

       q_geral.Next;
      end;


      while not q_aux.Eof do
      begin

        if q_aux.FieldByName('mes').AsString=m1.Caption then
        begin
         qtdec1.Caption:=   q_aux.FieldByName('qtde').AsString;

        end;

         if q_aux.FieldByName('mes').AsString=m2.Caption then
        begin
         qtdec2.Caption:=   q_aux.FieldByName('qtde').AsString;

        end;

         if q_aux.FieldByName('mes').AsString=m3.Caption then
        begin
         qtdec3.Caption:=   q_aux.FieldByName('qtde').AsString;

        end;

         if q_aux.FieldByName('mes').AsString=m4.Caption then
        begin
         qtdec4.Caption:=   q_aux.FieldByName('qtde').AsString;

        end;

         if q_aux.FieldByName('mes').AsString=m5.Caption then
        begin
         qtdec5.Caption:=   q_aux.FieldByName('qtde').AsString;

        end;

         if q_aux.FieldByName('mes').AsString=m6.Caption then
        begin
         qtdec6.Caption:=   q_aux.FieldByName('qtde').AsString;

        end;

         if q_aux.FieldByName('mes').AsString=m7.Caption then
        begin
         qtdec7.Caption:=   q_aux.FieldByName('qtde').AsString;

        end;

         if q_aux.FieldByName('mes').AsString=m8.Caption then
        begin
         qtdec8.Caption:=   q_aux.FieldByName('qtde').AsString;

        end;

         if q_aux.FieldByName('mes').AsString=m9.Caption then
        begin
         qtdec9.Caption:=   q_aux.FieldByName('qtde').AsString;

        end;

         if q_aux.FieldByName('mes').AsString=m10.Caption then
        begin
         qtdec10.Caption:=   q_aux.FieldByName('qtde').AsString;

        end;

         if q_aux.FieldByName('mes').AsString=m11.Caption then
        begin
         qtdec11.Caption:=   q_aux.FieldByName('qtde').AsString;

        end;

         if q_aux.FieldByName('mes').AsString=m12.Caption then
        begin
         qtdec12.Caption:=   q_aux.FieldByName('qtde').AsString;

        end;


      q_aux.Next;
      end;


     //Quantidade de vendas opera��o 3
      q_aux.Close;
      q_aux.SQL.Clear;
      q_aux.sql.add('select *');
      q_aux.sql.add('from (select to_char(ih.data, ''MON/YY'') mes, sum(ih.qtde_operacao) qtde');
      q_aux.sql.add('from itens_historico ih, itens i');
      q_aux.sql.add('');
      q_aux.sql.add('where ih.cod_operacao = 3');
      q_aux.sql.add('and ih.cod_item = i.cod_item');
      q_aux.sql.add('and ih.cod_fornecedor = i.cod_fornecedor');
      q_aux.sql.add('');
      q_aux.sql.add('and trunc(ih.data) >= sysdate - 365');
      q_aux.sql.add('and trunc(ih.data) < sysdate - 30');
      q_aux.sql.add('');
      q_aux.sql.add('group by to_char(ih.data, ''MON/YY''), to_char(ih.data, ''MM'')');
      q_aux.sql.add('order by to_char(ih.data, ''MM''))');
      q_aux.Open();

      q_aux.First;

       while not q_aux.Eof do
      begin

        if q_aux.FieldByName('mes').AsString=m1.Caption then
        begin
         qtdev1.Caption:=   q_aux.FieldByName('qtde').AsString;

        end;

         if q_aux.FieldByName('mes').AsString=m2.Caption then
        begin
         qtdev2.Caption:=   q_aux.FieldByName('qtde').AsString;

        end;

         if q_aux.FieldByName('mes').AsString=m3.Caption then
        begin
         qtdev3.Caption:=   q_aux.FieldByName('qtde').AsString;

        end;

         if q_aux.FieldByName('mes').AsString=m4.Caption then
        begin
         qtdev4.Caption:=   q_aux.FieldByName('qtde').AsString;

        end;

         if q_aux.FieldByName('mes').AsString=m5.Caption then
        begin
         qtdev5.Caption:=   q_aux.FieldByName('qtde').AsString;

        end;

         if q_aux.FieldByName('mes').AsString=m6.Caption then
        begin
         qtdev6.Caption:=   q_aux.FieldByName('qtde').AsString;

        end;

         if q_aux.FieldByName('mes').AsString=m7.Caption then
        begin
         qtdev7.Caption:=   q_aux.FieldByName('qtde').AsString;

        end;

         if q_aux.FieldByName('mes').AsString=m8.Caption then
        begin
         qtdev8.Caption:=   q_aux.FieldByName('qtde').AsString;

        end;

         if q_aux.FieldByName('mes').AsString=m9.Caption then
        begin
         qtdev9.Caption:=   q_aux.FieldByName('qtde').AsString;

        end;

         if q_aux.FieldByName('mes').AsString=m10.Caption then
        begin
         qtdev10.Caption:=   q_aux.FieldByName('qtde').AsString;

        end;

         if q_aux.FieldByName('mes').AsString=m11.Caption then
        begin
         qtdev11.Caption:=   q_aux.FieldByName('qtde').AsString;

        end;

         if q_aux.FieldByName('mes').AsString=m12.Caption then
        begin
         qtdev12.Caption:=   q_aux.FieldByName('qtde').AsString;

        end;


      q_aux.Next;
      end;










   WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBHistorico").DataTable().ajax.reload();');

   WebApplication.CallBackResponse.AddJavaScriptToExecute
    ('$(''#MDItemDetalhe'').modal(''show'');');




  end;



   if copy(iwacao.Text, 1, 5) = 'TPROM' then //   retirar promo��o do item
  begin
   id := copy(iwacao.Text, 6, Length(iwacao.Text));

   q_geral.Close;
   q_geral.SQL.Clear;
   q_geral.SQL.Add('select cod_item,cod_fornecedor from itens where id='+ id);
   q_geral.Open();

   controller.DM.banco.ExecSQL(' update itens_custos set em_promo=''N''   where cod_item= '             +
                                 quotedstr(q_geral.FieldByName('cod_item').AsString)                    +
                                ' and cod_fornecedor=' + q_geral.FieldByName('cod_fornecedor').AsString +
                                ' and cod_empresa=' + inttostr(controller.xcod_empresa)

                              );

   addtoinitproc(swalSuccess('Sucesso!','Promo��o retirada com sucesso!'));
   rotatividade_reload;


  end;
    if copy(iwacao.Text, 1, 5) = 'DPROM' then //   liberar promo��o do item
  begin
   id := copy(iwacao.Text, 6, Length(iwacao.Text));

   q_geral.Close;
   q_geral.SQL.Clear;
   q_geral.SQL.Add('select cod_item,cod_fornecedor from itens where id='+ id);
   q_geral.Open();

   controller.DM.banco.ExecSQL(' update itens_custos set em_promo=''S''   where cod_item= '             +
                                 quotedstr(q_geral.FieldByName('cod_item').AsString)                    +
                                ' and cod_fornecedor=' + q_geral.FieldByName('cod_fornecedor').AsString +
                                ' and cod_empresa=' + inttostr(controller.xcod_empresa)

                              );

   addtoinitproc(swalSuccess('Sucesso!','Promo��o liberada com sucesso!'));
   rotatividade_reload;


  end;


   if copy(iwacao.Text, 1, 5) = 'DESBL' then //   retirar bloqueio do item
  begin
   id := copy(iwacao.Text, 6, Length(iwacao.Text));

   q_geral.Close;
   q_geral.SQL.Clear;
   q_geral.SQL.Add('select cod_item,cod_fornecedor from itens where id='+ id);
   q_geral.Open();

   controller.DM.banco.ExecSQL(' update itens_custos set bloqueado=''N''   where cod_item= '             +
                                 quotedstr(q_geral.FieldByName('cod_item').AsString)                    +
                                ' and cod_fornecedor=' + q_geral.FieldByName('cod_fornecedor').AsString +
                                ' and cod_empresa=' + inttostr(controller.xcod_empresa)

                              );

   addtoinitproc(swalSuccess('Sucesso!','Item desbloqueado com sucesso!'));
   rotatividade_reload;


  end;
    if copy(iwacao.Text, 1, 5) = 'BLOQU' then //   Bloquear item
  begin
   id := copy(iwacao.Text, 6, Length(iwacao.Text));

   q_geral.Close;
   q_geral.SQL.Clear;
   q_geral.SQL.Add('select cod_item,cod_fornecedor from itens where id='+ id);
   q_geral.Open();

   controller.DM.banco.ExecSQL(' update itens_custos set bloqueado=''S''   where cod_item= '             +
                                 quotedstr(q_geral.FieldByName('cod_item').AsString)                    +
                                ' and cod_fornecedor=' + q_geral.FieldByName('cod_fornecedor').AsString +
                                ' and cod_empresa=' + inttostr(controller.xcod_empresa)

                              );

   addtoinitproc(swalSuccess('Sucesso!','Item bloqueado com sucesso!'));
   rotatividade_reload;


  end;




end;

procedure TForm_gerencia.PERCPROMOHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;
    ATag.Add('placeholder=" % Promo��o: R$ 0,00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TForm_gerencia.reload(Sender: TObject; EventParams: TStringList);
begin
  inherited;
 rotatividade_reload;
end;

procedure TForm_gerencia.rotatividade_reload;
begin
WebApplication.CallBackResponse.AddJavaScriptToExecute
      ('$("#TBRotatividade").DataTable().ajax.reload();');
end;

procedure TForm_gerencia.TBEstoque(aParams: TStrings; out aResult: string);
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



  q_datatable.sql.add('select count(*) as total from (');
  q_datatable.sql.add('select i.cod_item,');
  q_datatable.sql.add('i.descricao,');
  q_datatable.sql.add('e.qtde,');
  q_datatable.sql.add('e.reserva,');
  q_datatable.sql.add('i.preco_venda,');
  q_datatable.sql.add('f.descricao as fornecedor,');
  q_datatable.sql.add('l.locacao,');
  q_datatable.sql.add('ic.custo_contabil');
  q_datatable.sql.add('from estoque e, itens i, fornecedor_estoque f, locacao l,itens_custos ic');
  q_datatable.sql.add('where e.cod_item = i.cod_item');
  q_datatable.sql.add('and e.cod_fornecedor = i.cod_fornecedor');
  q_datatable.sql.add('and e.cod_fornecedor = f.cod_fornecedor');
  q_datatable.sql.add('and e.cod_item = l.cod_item');
  q_datatable.sql.add('and e.cod_fornecedor = l.cod_fornecedor');
  q_datatable.sql.add('and e.cod_empresa = l.cod_empresa');
  q_datatable.sql.add('and e.cod_item=ic.cod_item');
  q_datatable.sql.add('and e.cod_fornecedor=ic.cod_fornecedor');
  q_datatable.sql.add('and e.cod_empresa=ic.cod_empresa');
  q_datatable.sql.add('and e.cod_empresa='+ inttostr(controller.xcod_empresa));
  q_datatable.sql.add(')');
  q_datatable.sql.add('  where 1=1');




  q_datatable.SQL.Add('and ( cod_item like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');
  q_datatable.SQL.Add('      OR  descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  fornecedor like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR   locacao like ''%' +
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

  q_datatable.sql.add('select cod_item,');
  q_datatable.sql.add('id,');
  q_datatable.sql.add('descricao,');
  q_datatable.sql.add('qtde,');
  q_datatable.sql.add('reserva,');
  q_datatable.sql.add('preco_venda,');
  q_datatable.sql.add('fornecedor,');
  q_datatable.sql.add('locacao,');
  q_datatable.sql.add('custo_contabil,');
  q_datatable.sql.add('cod_empresa,');
  q_datatable.sql.add('codigo_barras');
  q_datatable.sql.add('from (');
  q_datatable.sql.add('');
  q_datatable.sql.add('select i.cod_item,');
  q_datatable.sql.add('i.id,');
  q_datatable.sql.add('i.descricao,');
  q_datatable.sql.add('e.qtde,');
  q_datatable.sql.add('e.reserva,');
  q_datatable.sql.add('i.preco_venda,');
  q_datatable.sql.add('f.descricao as fornecedor,');
  q_datatable.sql.add('l.locacao,');
  q_datatable.sql.add('ic.custo_contabil,');
  q_datatable.sql.add('e.cod_empresa,');
  q_datatable.sql.add('i.codigo_barras');
  q_datatable.sql.add('from estoque            e,');
  q_datatable.sql.add('itens              i,');
  q_datatable.sql.add('fornecedor_estoque f,');
  q_datatable.sql.add('locacao            l,');
  q_datatable.sql.add('itens_custos       ic');
  q_datatable.sql.add('where e.cod_item = i.cod_item');
  q_datatable.sql.add('and e.cod_fornecedor = i.cod_fornecedor');
  q_datatable.sql.add('and e.cod_fornecedor = f.cod_fornecedor');
  q_datatable.sql.add('and e.cod_item = l.cod_item');
  q_datatable.sql.add('and e.cod_fornecedor = l.cod_fornecedor');
  q_datatable.sql.add('and e.cod_empresa = l.cod_empresa');
  q_datatable.sql.add('and e.cod_item = ic.cod_item');
  q_datatable.sql.add('and e.cod_fornecedor = ic.cod_fornecedor');
  q_datatable.sql.add('and e.cod_empresa='+ inttostr(controller.xcod_empresa));
  q_datatable.sql.add('and e.cod_empresa = ic.cod_empresa)');



  q_datatable.SQL.Add(' where   1=1   ');

  q_datatable.SQL.Add('and ( cod_item like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.SQL.Add('      OR  descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  fornecedor like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  locacao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.SQL.Add('Order by cod_item ' + aParams.Values
        ['order[0][dir]'] + ' ');
    1:
      q_datatable.SQL.Add('Order by  descricao ' + aParams.Values
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






    btn1 := '"<button type=\"buttom\" class=\"btn btn-xs btn-success\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Detalhe do Item\" data-dismiss=\"modal\" onclick=\"SetaAcao(''ITDET'''
      + ',' + id + ')\" > <i class=\"fa fa-search\"> </i> </button>" ';

    btn2 := '"<button type=\"buttom\" class=\"btn btn-xs btn-warning\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Editar\" onclick=\"SetaAcao(''AltCl'''
      + ',' + id + ')\" > <i class=\"fa fa-pencil\"> </i> </button> ';
    btn3 := '<button type=\"buttom\" class=\"btn btn-xs btn-info\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aprovar Operador\" onclick=\"SetaAcao(''aprOp'''
      + ',' + id + ')\"> <i class=\"fa fa-thumbs-o-up\"> </i> </button> ';

    btn4 := '<button type=\"buttom\" class=\"btn btn-xs btn-default\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Gerar proposta no NBS\" onclick=\"SetaAcao(''ExcDo'''
      + ',' + id + ')\"> <i class=\"fa fa-database\"> </i> </button> "';

    //
    wresult := wresult + '[' + btn1 + ','+ '"' +
      stringreplace(Trim(q_datatable.FieldByName('cod_item').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('descricao').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('qtde').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('reserva').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('preco_venda').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
      '"' + stringreplace(Trim(q_datatable.FieldByName('fornecedor').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
      '"' + stringreplace(Trim(q_datatable.FieldByName('locacao').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('custo_contabil').AsString),
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

procedure TForm_gerencia.TBHistorico(aParams: TStrings; out aResult: string);
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



 q_datatable.sql.add('select count(*) as total');
 q_datatable.sql.add('from itens_historico ih, itens i');
 q_datatable.sql.add('where i.cod_item = ih.cod_item');
 q_datatable.sql.add('and i.cod_fornecedor = ih.cod_fornecedor');
 q_datatable.sql.add('and ih.cod_empresa='+ inttostr(controller.xcod_empresa));
 q_datatable.sql.add('and i.id='+ produto.Hint);



  q_datatable.SQL.Add('and ( i.cod_item like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');
  q_datatable.SQL.Add('      OR  i.descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  ih.data like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR   ih.motivo like ''%' +
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



q_datatable.sql.add('select ih.motivo,');
q_datatable.sql.add('i.id,');
q_datatable.sql.add('ih.data,');
q_datatable.sql.add('ih.documento,');
q_datatable.sql.add('ih.qtde_operacao,');
q_datatable.sql.add('ih.qtde_depois,');
q_datatable.sql.add('ih.custo_medio_anterior,');
q_datatable.sql.add('ih.custo_medio,');
q_datatable.sql.add('ih.responsavel');
q_datatable.sql.add('from itens_historico ih, itens i');
q_datatable.sql.add('where i.cod_item = ih.cod_item');
q_datatable.sql.add('and i.cod_fornecedor = ih.cod_fornecedor');
 q_datatable.sql.add('and ih.cod_empresa='+ inttostr(controller.xcod_empresa));
 q_datatable.sql.add('and i.id='+ produto.Hint);









  q_datatable.SQL.Add('and ( i.cod_item like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.SQL.Add('      OR  i.descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  ih.data like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  ih.motivo like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    7:
      q_datatable.SQL.Add('Order by ih.data ' + aParams.Values
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
      stringreplace(Trim(q_datatable.FieldByName('motivo').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('documento').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('qtde_operacao').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('qtde_depois').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('custo_medio_anterior').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
      '"' + stringreplace(Trim(q_datatable.FieldByName('custo_medio').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------
      '"' + stringreplace(Trim(q_datatable.FieldByName('responsavel').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------


      '"' + stringreplace(Trim(q_datatable.FieldByName('data').AsString),
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

procedure TForm_gerencia.TBRotatividade(aParams: TStrings; out aResult: string);
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



  q_datatable.sql.add('select count(*) as total ');


  q_datatable.sql.add('from itens_custos ic, itens i, fornecedor_estoque f');
  q_datatable.sql.add('where ic.cod_item = i.cod_item');
  q_datatable.sql.add('and ic.cod_fornecedor = i.cod_fornecedor');
  q_datatable.sql.add('and ic.cod_fornecedor = f.cod_fornecedor');


  q_datatable.sql.add('and ic.cod_empresa='+ inttostr(controller.xcod_empresa));

  q_datatable.SQL.Add(get_param_rotatividade);





  q_datatable.SQL.Add('and ( i.cod_item like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');
  q_datatable.SQL.Add('      OR  i.descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  f.descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR   ic.custo_contabil like ''%' +
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



 q_datatable.sql.add('select i.cod_item,');
 q_datatable.sql.add('i.id,');
 q_datatable.sql.add('iC.em_promo,');
 q_datatable.sql.add('iC.bloqueado,');
 q_datatable.sql.add('i.descricao,');
 q_datatable.sql.add('f.descricao as fornecedor,');
 q_datatable.sql.add('ic.ultima_venda,');
 q_datatable.sql.add('i.preco_venda,');
 q_datatable.sql.add('ic.custo_contabil');
 q_datatable.sql.add('from itens_custos ic, itens i, fornecedor_estoque f');
 q_datatable.sql.add('where ic.cod_item = i.cod_item');
 q_datatable.sql.add('and ic.cod_fornecedor = i.cod_fornecedor');
 q_datatable.sql.add('and ic.cod_fornecedor = f.cod_fornecedor');

 q_datatable.sql.add('and ic.cod_empresa='+ inttostr(controller.xcod_empresa));
 q_datatable.SQL.Add(get_param_rotatividade);





  q_datatable.SQL.Add('and ( i.cod_item like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ');

  q_datatable.SQL.Add('      OR  i.descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  f.descricao like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%''  ');

  q_datatable.SQL.Add('      OR  ic.custo_contabil like ''%' +
    stringreplace(UpperCase(aParams.Values['search[value]']), ' ', '%',
    [rfReplaceAll]) + '%'' ) ');

  // definindo a ordena��o
  case aParams.Values['order[0][column]'].ToInteger of
    0:
      q_datatable.SQL.Add('Order by cod_item ' + aParams.Values
        ['order[0][dir]'] + ' ');
    1:
      q_datatable.SQL.Add('Order by  descricao ' + aParams.Values
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

    if q_datatable.FieldByName('em_promo').AsString ='S' then
     begin

       v_promo :=  '"<button type=\"buttom\" class=\"btn btn-xs btn-success\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Tirar Promo.\" data-dismiss=\"modal\" onclick=\"SetaAcao(''TPROM'''
      + ',' + id + ')\" > <i class=\"fa fa-thumbs-o-up\"> </i> </button>" ';

     end
     else
     begin

       v_promo :=  '"<button type=\"buttom\" class=\"btn btn-xs btn-warning\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Dar Promo.\" data-dismiss=\"modal\" onclick=\"SetaAcao(''DPROM'''
      + ',' + id + ')\" > <i class=\"fa fa-thumbs-o-down\"> </i> </button>" ';

     end;

      if q_datatable.FieldByName('bloqueado').AsString ='S' then
     begin

       v_bloq :=  '"<button type=\"buttom\" class=\"btn btn-xs btn-success\" data-toggle=\"tooltip\" data-placement=\"top\" title=\" Desbloquear\" data-dismiss=\"modal\" onclick=\"SetaAcao(''DESBL'''
      + ',' + id + ')\" > <i class=\"fa fa-lock\"> </i> </button>" ';

     end
     else
     begin

       v_bloq :=  '"<button type=\"buttom\" class=\"btn btn-xs btn-warning\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Bloquear\" data-dismiss=\"modal\" onclick=\"SetaAcao(''BLOQU'''
      + ',' + id + ')\" > <i class=\"fa fa-unlock\"> </i> </button>" ';

     end;





    btn1 := '"<button type=\"buttom\" class=\"btn btn-xs btn-info\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Detalhe do Item\" data-dismiss=\"modal\" onclick=\"SetaAcao(''Aceit'''
      + ',' + id + ')\" > <i class=\"fa fa-search\"> </i> </button>" ';

    btn2 := '"<button type=\"buttom\" class=\"btn btn-xs btn-warning\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Editar\" onclick=\"SetaAcao(''AltCl'''
      + ',' + id + ')\" > <i class=\"fa fa-pencil\"> </i> </button> ';
    btn3 := '<button type=\"buttom\" class=\"btn btn-xs btn-info\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Aprovar Operador\" onclick=\"SetaAcao(''aprOp'''
      + ',' + id + ')\"> <i class=\"fa fa-thumbs-o-up\"> </i> </button> ';

    btn4 := '<button type=\"buttom\" class=\"btn btn-xs btn-default\"  data-toggle=\"tooltip\" data-placement=\"top\" title=\"Gerar proposta no NBS\" onclick=\"SetaAcao(''ExcDo'''
      + ',' + id + ')\"> <i class=\"fa fa-database\"> </i> </button> "';

    //
    wresult := wresult + '[' + btn1 + ','+   v_promo + ',' + v_bloq + ','    + '"' +
      stringreplace(Trim(q_datatable.FieldByName('cod_item').AsString), '"', '\"',
      [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('descricao').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('fornecedor').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
    // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('ultima_venda').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------

      '"' + stringreplace(Trim(q_datatable.FieldByName('preco_venda').AsString),
      '"', '\"', [rfReplaceAll]) + '", ' +
      // Separador de colunas ------------------------------


      '"' + stringreplace(Trim(q_datatable.FieldByName('custo_contabil').AsString),
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

//
end;

procedure TForm_gerencia.total_estoqueAsyncClick(Sender: TObject;
  EventParams: TStringList);
  var
  v_p_venda,v_custo,v_qtde_itens,v_qtde_total,id : string;

begin
  inherited;

  q_geral.Close;
  q_geral.SQL.Clear;
  q_geral.sql.add('select sum(i.preco_venda * e.qtde ) preco_venda,');
  q_geral.sql.add('sum(ic.custo_contabil * e.qtde) custo,');
  q_geral.sql.add('count(*) qtde_itens,');
  q_geral.sql.add('sum(e.qtde) qtde_total');
  q_geral.sql.add('from estoque e, itens_custos ic, itens i');
  q_geral.sql.add('where e.cod_item = ic.cod_item');
  q_geral.sql.add('and e.cod_fornecedor = ic.cod_fornecedor');
  q_geral.sql.add('and e.cod_empresa = ic.cod_empresa');
  q_geral.sql.add('and ic.cod_item = i.cod_item');
  q_geral.sql.add('and ic.cod_fornecedor = i.cod_fornecedor');
  q_geral.SQL.Add( ' and e.cod_empresa=' + inttostr(controller.xcod_empresa) );
  q_geral.Open();

  id:='321321';

  v_p_venda:=    q_geral.FieldByName('preco_venda').AsString;
  v_custo:=      q_geral.FieldByName('custo').AsString;
  v_qtde_itens:= q_geral.FieldByName('qtde_itens').AsString;
  v_qtde_total:= q_geral.FieldByName('qtde_total').AsString;



  addtoinitproc(swalSuccess('Totalizador do Estoque:','Pre�o de Venda:R$ ' + v_p_venda + ', Custo:R$ '+ v_custo +
                            ' , Qtde. Itens: ' + v_qtde_itens +
                            ' , Qtde. Total: ' + v_qtde_total));



end;

procedure TForm_gerencia.VALORPROMOHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;
   ATag.Add('placeholder="Valor Promo��o: R$ 0,00"');
   ATag.Add(' style="text-align:right" ');
end;

procedure TForm_gerencia.zerar_campos;
begin

//zera compras
qtdec1.Caption:='0';
qtdec2.Caption:='0';
qtdec3.Caption:='0';
qtdec4.Caption:='0';
qtdec5.Caption:='0';
qtdec6.Caption:='0';
qtdec7.Caption:='0';
qtdec8.Caption:='0';
qtdec9.Caption:='0';
qtdec10.Caption:='0';
qtdec11.Caption:='0';
qtdec12.Caption:='0';

//Zera vendas
qtdev1.Caption:='0';
qtdev2.Caption:='0';
qtdev3.Caption:='0';
qtdev4.Caption:='0';
qtdev5.Caption:='0';
qtdev6.Caption:='0';
qtdev7.Caption:='0';
qtdev8.Caption:='0';
qtdev9.Caption:='0';
qtdev10.Caption:='0';
qtdev11.Caption:='0';
qtdev12.Caption:='0';


end;

end.