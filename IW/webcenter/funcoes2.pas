UNIT BLASTER;
(*

   VERSÃO 1.07

   Ultima alteração: 25/09/2015

*)

INTERFACE
USES SYSUTILS, Messages, Windows, Dialogs, Forms, StdCtrls, Graphics,
  Classes, Controls, Buttons, Mask ,FileCtrl, shellapi, ExtCtrls,
  ComCtrls, Registry, Clipbrd , ShlOBJ, WinSock, checklst, JPEG, Gauges,
  Printers, Math;


FUNCTION  REP_TempoEntreBatidas ( Entrada, Saida : Longint ) : Longint;

function  BiosDate: String;

FUNCTION  ProximaMarcacaoPorLetra ( UltimaMarcacao : String ) : String;
FUNCTION  RunningWindowsXP : Boolean;
PROCEDURE AjustaLarguraDaBorda_Windows7e8;  // Este processo é para retirar a borda GORDA do Windows 7, 8, 2008, 2012 que prejudica o visual do LBC

FUNCTION  Hoje : String;   // Retorna a data de hoje
FUNCTION  HojeInt : Longint;   // Retorna a data de hoje
FUNCTION  TIMENOW : String;   // Hora Corrente
FUNCTION  CheckDate ( Data : String ) : Boolean;   // Checa a validade da data
FUNCTION  CheckDateMSG ( Data : String ) : Boolean;  // Checa a validade da data e mostra mensagem caso esteja errada
FUNCTION  FormatDate ( Data : String ) : String;   // Formata a data preenchendo com a corrente caso esteja inválida
FUNCTION  IDADE_COMPLETA ( Data : String; Data_Atual : String ) : String;  // Retorna a idade completa inclusive com meses e dias
FUNCTION  WeekDay ( Data : String ) : String;  // Retorna o dia da semana da data por extenso
FUNCTION  WeekDaySemFeira ( Data : String ) : String;
FUNCTION  WeekDayShort ( Data : String ) : String;
FUNCTION  WeekDay_Number ( Data : String ) : Integer;
FUNCTION  WeekDay_ByNumber ( NumeroDiaDiaDaSemana : Longint ) : String;
FUNCTION  ReturnSegundaFeiraDaSemana ( Data : String ) : String;
FUNCTION  ReturnProximoDiadaSemana ( Data : String ) : String;  // Converte datas que caem no fim de semana para o dia de semana
FUNCTION  Data_FimdeSemana ( Data : String; FuncaoAtiva : Boolean ) : Boolean;
FUNCTION  MesExtenso ( Mes : Word ) : String;  // Retorna o Mes por extenso
FUNCTION  MesExtensoShort(Mes:Word) : String;
FUNCTION  DataExtenso ( Data : String ) : String;  // Retona a data por extenso

function  NFP_ReturnCaractereParaData( Numero_do_Dia_ou_Mes_ou_Ano : Longint ) : String;
function  NFP_ReturnDataParaCaractere( Caractere_do_Dia_ou_Mes_ou_Ano : Char ) : Longint;

function  Date2NFP( Data : String ) : String;
function  NFP2Date( Data : String ) : String;

FUNCTION  DATE2DATEMES ( Data : String ) : String;  // Converte para 12-dez-1998
FUNCTION  DATEMES2DATE ( Data : String ) : String;  // Reverte para 12-12-1998
FUNCTION  DATEAA2AAAA ( Data : String ) : String;  // Converte AA para AAAA
FUNCTION  DATEAAAA2AA (Data  : String ) : String;
FUNCTION  DDMMAAAA_2_AAAAMMDD ( Data : String ) : String;
FUNCTION  DDMMAAAA_2_AAAAMMDD_NOBAR ( Data : String ) : String;
FUNCTION  DDMMAAAA_2_AAAAMMDD_Unformatted ( Data : String ) : String;
FUNCTION  ADD_IN_DATE( Data : String; Days : Longint ) : String; // Adiciona um dia na data;
FUNCTION  ADD_IN_DATE_LONG ( Data : Longint; DAys : Longint ) : Longint;
FUNCTION  DEC_IN_DATE( Data : String; Days : Longint ) : String; // Diminui um dia na data;
FUNCTION  DEC_IN_DATE_LONG( Data : Longint; Days:Longint) : Longint; // Adiciona um dia na data;
FUNCTION  DEC_YEARS( Data : Longint; Years : Longint ) : Longint;
FUNCTION  DEC_MONTHS( Data : Longint; Months : Longint ) : Longint;
FUNCTION  INC_MONTHS( Data : Longint; Months : Longint ) : Longint;
FUNCTION  UltimoDiaMes ( Data : String ) : String;
FUNCTION  PrimeiroDiaMes ( Data : String ) : String;
FUNCTION  PeriodoMesFechado ( DataIni, DataFIM : String ) : Boolean;
FUNCTION  DiasNoMes ( DataBase : String ) : Longint; // Tanto de dias que o mês tem
FUNCTION  UnformatDate( Data : String ) : String;  // Tira as barras da data
FUNCTION  DateBR_2_US_Unformatted ( Data : String ) : String;  // Converte a data de formato brasileiro para americano
FUNCTION  DateBR_2_US_Formatted ( Data : String ) : String;  // Formatada (Com barras)
FUNCTION  Date_2_MMDDAA_Formated ( Data : String ) : String;
FUNCTION  EmptyDate ( Data : String ) : Boolean;  // Retorna TRUE se a data tiver em branco
FUNCTION  EmptyTime ( Hora : String ) : Boolean;
function  Bissexto(AYear: Integer): Boolean;   // Retorna TRUE se o ano for Bissexto
function  DiasDoMes(AYear, AMonth: Integer): Integer;
function  Idade2(DataNasc : TDate) : String;
function  Idade_De_Ate(DataNasc : TDate; DataConsulta : TDate ) : String;
function  Dias(Data : TDate) : String;
function  Idade(Nasc : TDate) : String;
Function  IDADE_Anos ( Nascimento : String ): Longint;  // Retorna quantos anos uma pessoa tem

FUNCTION  CheckCMC7 ( CMC7 : String ) : Boolean;
FUNCTION  FormatCMC7 ( CMC7 : String ) : String;

FUNCTION  FileNameValid ( FileName : String ) : Boolean;  // Retorna se o FileName é válido
FUNCTION  MachineNameValid ( MachineName : String ) : Boolean;

FUNCTION  CHECKTIME ( Hora : String ) : Boolean;   // Checa a validade da hora
FUNCTION  FORMATTIMEs(Hora:String):String;
FUNCTION  FORMATTIME( Hora : String ) : String;  // Formata a hora preenchendo os valores invalidos com a local
FUNCTION  TempoGasto ( DataSaida : String; HoraSaida : String; DataChegada : String; HoraChegada : String): Longint;  // Retorna o tempo gasto entre valores

FUNCTION  TempoUtilTrabalhado ( DataHoraInicial, DataHoraFinal : Currency; InicioJornada{TimeToSeconds}, FimJornada{TimeToSeconds} : Currency ) : Currency;

FUNCTION  Check_DiaMes ( Data : String ) : Boolean;
FUNCTION  Format_DiaMes ( Data : String ) : String;
FUNCTION  EmptyDate_DiaMes ( Data : String ) : Boolean;

FUNCTION  QdeDiasEntreDatas ( DataInicial, DataFinal : String ) : Longint;
FUNCTION  DiasEntreDatas ( DataInicial, DataFinal : String ) : Longint;
FUNCTION  AnosEntreDatas ( DataInicial, DataFinal : String ) : Longint;
FUNCTION  CheckDigitacaoData ( Data : String; AnosLimite : Longint; AskUser : Boolean ) : Boolean;

(**** FUNÇÕES PARA "CONVERSÃO DE TIPOS" ****)
FUNCTION  TIMETOINT(Hora:String):Longint;   // Converte hora em minutos / longint
FUNCTION  INTTOTIME(Hora:Longint):String;
FUNCTION  InttoTimeF(Hora:Longint):String;
FUNCTION  TimeToMin ( Hora : String ) : Longint;

FUNCTION  ADD_IN_TIME( Hora : String; Minutos : Longint ) : String;
FUNCTION  Date2Int(Data:String):Longint;
FUNCTION  Date2IntS ( Data : String ):Longint;
FUNCTION  DateTimeToSeconds( Data, Hora : String ) : Currency;
FUNCTION  DateTimeToSecondsNOW : Currency;
FUNCTION  TimeStampToSeconds( TimeStamp : String ) : Currency;
PROCEDURE SecondsToDateTime( Segundos : Currency; VAR Data : String; VAR Hora : String );
FUNCTION  SecondsToDateTimeSt( Segundos : Currency ) : String;
FUNCTION  DateTimeToSecondsInt( DataInt, HoraInt : Longint ) : Currency;
FUNCTION  Int2Date(Data:Longint):String;
FUNCTION  Int2DateS ( Data : Longint ) : String;
FUNCTION  Int2DateShort (Data:Longint):String;
FUNCTION  TIMETOSECONDS(Hora:String):Longint;

FUNCTION  Data2Semestre ( Data : Longint ) : String;
FUNCTION  Data2Trimestre ( Data : Longint ) : String;
FUNCTION  Trimestre2Text( Trimestre : String ) : String;
FUNCTION  Semestre2Data ( Semestre : String; VAR DataINI : Longint; VAR DataFIM : Longint ) : Boolean;
FUNCTION  Trimestre2Data ( Trimestre : String; VAR DataINI : Longint; VAR DataFIM : Longint ) : Boolean;
FUNCTION  Semestre2Text( Semestre : String ) : String;



(**** FUNÇÕES PARA "FORMATAÇÕES DE VALORES" ****)
(**** FUNÇÕES PARA "MANIPULAÇÃO DE ARQUIVIS" ****)

(**** FUNÇÕES PARA "ACESSO A CARACTERÍSTICAS DE OBJETOS" ****)
Procedure ClearAllEditFields ( Formulario : Tform );
Procedure ClearAllMaskEditFields ( Formulario : Tform );
Procedure TurnAllEditFields ( Formulario : Tform; Enabled : Boolean );
Procedure TurnAllMaskEditFields ( Formulario : Tform; Enabled : Boolean );
Procedure TurnAllRichEditFields ( Formulario : Tform; Enabled : Boolean );
Procedure ReadOnlyAllEditFields ( Formulario : Tform; ReadOnly : Boolean );
Procedure SetAllCheckBox ( Formulario : Tform; Checked : Boolean );

Procedure SetAllComboBox ( Formulario : Tform; ItemIndex : Longint );
PROCEDURE SelectComboBoxItem ( VAR Combo : TComboBox; CodigoItem : Longint; InicioCodigoNoItem : Word );
FUNCTION  ReturSelectedComboBoxItem ( Combo : TComboBox; InicioCodigoNoItem : Word ) : Longint;

FUNCTION  ComboboxToStringList(VAR Combo : TComboBox; VAR Lista : TStringList; Separador : Char; InicioCodigoNoItem : Longint; RemoverVazios: Boolean): Longint;
FUNCTION  ComboBoxItemExiste ( VAR Combo : TComboBox; CodigoItem : Longint; InicioCodigoNoItem : Word ) : Boolean;

FUNCTION  ReturnQdeItensSelecionados_CheckListBox ( Lista : TCheckListBox ) : Longint;

PROCEDURE SelectComboBoxItemString ( VAR Combo : TComboBox; Descricao : String );
PROCEDURE AltereComboBoxItemString ( VAR Combo : TComboBox; DescricaoDe, DescricaoPara : String );
FUNCTION  ReturnComboBoxItemIndexString ( VAR Combo : TComboBox; Descricao : String ) : Longint;
PROCEDURE DeleteComboBoxItemString ( VAR Combo : TComboBox; Descricao : String );

Procedure ClearAllMemoFields ( Formulario : Tform );
Procedure ClearAllRichEditFields ( Formulario : Tform );

PROCEDURE ChangeLight_State( Objeto : TShape; Status : Word );
PROCEDURE ColoraTodosTEdit( Formulario : TForm; Cor : TColor );
PROCEDURE ColoraTodosPanels( Formulario : TForm; CorDe, CorPara : TColor );


(**** FUNÇÕES GERAIS ****)
(**** FUNÇÕES PARA O WINDOWS ****)

FUNCTION  Substitua(VAR Texto : String; ValorOriginal, NovoValor : String ) : Boolean;

FUNCTION  Replicate(xChar:String;xQtde:Word):String;
FUNCTION  ExistArq(xNome:string):Boolean;
FUNCTION  ExistDir(Path : String):Boolean;
FUNCTION  CreateFile:String;
PROCEDURE CrtFile(Nome:String);
FUNCTION  Space(xTam:Byte):String;
FUNCTION  Ltrim(xMens:String):String;
FUNCTION  Rtrim(xMens:String):String;
FUNCTION  Alltrim(xMens:String):String;
FUNCTION  Trim_MenosSignificativo ( Tamanho : Word; Conteudo : String ) : String;
FUNCTION  FillLeft(Tam,Num:Longint):String;
FUNCTION  FillLeftFloat(Tam : Longint; Num:Currency):String;
FUNCTION  Busca_Cep(St:String):String;

FUNCTION  SetCurrencySize ( Numero : Currency; QdeNumerosInteiros, QdeCasasDecimais : Word ) : Currency;

FUNCTION  FormatMoney ( St : String ) : String;
Function  FormatMoney3(St:String):String;
Function  FormatMoney4(St:String):String;
FUNCTION  FormatMoneyVAR( St : String ) : String;
FUNCTION  FormatMoneyEx( St : String; Casas : Word ) : String;
FUNCTION  FormatMoneyExcel( St : String; Casas : Word ) : String;
FUNCTION  FormatMoney_3Casas ( Valor : Currency ) : String;
FUNCTION  FormatMoney_3em3 ( Valor : Currency; CaracterFinal : Char) : String;
FUNCTION  FormatMoney_2em3 ( Valor : Currency; CaracterFinal : Char) : String;
Function  FormatMoney_Text(St:String):String;

FUNCTION  Percentual ( Valor : Currency; Percentual : Currency ) : Currency;

FUNCTION  Money ( Valor1 : String; Valor2 : String; Tipo : Char) : String;
FUNCTION  MoneyPorcent(Valor,Operacao,Taxa:string):String;
FUNCTION  QuantoPorcento(Vmenor,VMaior:string):String;
FUNCTION  R_FORMAT(Stt:String):String;
FUNCTION  R_FORMAT3(Stt:String):String;
FUNCTION  R_FORMAT4(Stt:String):String;
FUNCTION  R_QUANTOPORCENTO(Valor_Menor:String;Valor_Total:String;Casas_Decimais:Word):String;
FUNCTION  R_PORCENTO(Valor:String;Porcentagem:String):String;

PROCEDURE SAY(Texto:String);
Procedure SayErro(Texto:String);
Procedure SayInfo(Texto:String);
PROCEDURE SayMsg( Titulo : String; Mensagem : String );
PROCEDURE ShowErro( CodigoErro : Longint; Mensagem : String );
PROCEDURE SayMsgErro( Titulo : String; Mensagem : String );

PROCEDURE Registre_Em_Log(Arq:String;Texto:String);
PROCEDURE Beep;
PROCEDURE ERRORMESSAGE(Texto:String);
FUNCTION  ReturnBinary ( Numero : Longint ) : String;

FUNCTION  ReturnNumeroSerieDaMaquina_LicencaONLINE ( Chave : Word ) : String;

FUNCTION  ReturnNumeroSerieDaMaquina ( Chave : Word ) : String;
FUNCTION  ReturnNumeroSerieDaMaquinaMAC ( Chave : Word ) : String;
FUNCTION  ReturnNumeroSerieDaMaquinaMAC_comDV ( Chave : Word ) : String;
FUNCTION  MacAddress: string;
FUNCTION  ReturnContraSenhaParaNumeroSerieDaMaquina ( NumeroSerie : String; ChaveDeContraSenha_Ate1000 : Longint ) : String;

FUNCTION  ReturnSerial(Nome : string):Longint;
FUNCTION  GereSenha_LBC ( Senha : String ) : Longint;
FUNCTION  ConvertStr2Num ( Str : String ) : Longint;

FUNCTION  READMyINIFile( Arquivo : String; SearchFor : String ) : String;
PROCEDURE WriteInMyINIFile( Arquivo : String; Comentario : String; Chave : String; Conteudo : String );
PROCEDURE MyIniFileToTXT ( ArquivoIni : String; ArquivoTXT : String);

FUNCTION  DECODE(ST:String;P:Longint):String;
FUNCTION  ENCODE(ST:String;P:Longint):String;
FUNCTION  ENCODEPDV ( St : String ) : String;
FUNCTION  DECODEPDV ( St : String; VAR Decoded : String ) : Boolean;
FUNCTION  ENCODE_BIN ( St : String; KeyDe1_30 : Word ) : String;
FUNCTION  DECODE_BIN ( St : String; KeyDe1_30 : Word; VAR Decoded : String ) : Boolean;
FUNCTION  FORMATPATH(Path:String):String;


FUNCTION  READ_TXTFILE_LINE( FileName : String; LineNumber : Word ):String;  // Lê uma determinada linha de um arquivo texto.
FUNCTION  ReadFileToStringList ( FileName : String; Var Destino : TStringList ) : Boolean;
FUNCTION  SaveFileFromStringList ( FileName : String; Var Origem : TStringList ) : Boolean;

FUNCTION  ReadXMLToStringList ( XML : TStringList; VAR XMLFields : TStringList; VAR XMLFields_Values : TStringList ) : Boolean;

FUNCTION  StringList_SearchLineInicio( Lista : TStringList; ConteudoInicial : String; Var Linha : String ) : Boolean;

FUNCTION  GETFieldOnStringList ( StringList : TStringList; FieldName : String ) : String;
FUNCTION  GETFieldRowOnStringList ( StringList : TStringList; FieldName : String ) : Longint;

PROCEDURE TrunqueTStringList ( VAR Variavel : TStringList; NumeroMaximoDeLinhas : Longint );
PROCEDURE AddLinesToStringList ( VAR Destino : TStringList; Texto : String; TamanhoMaximo_Linha : Longint );
PROCEDURE RemovaLinhasEmBranco_TStringList ( VAR Variavel : TStringList );

FUNCTION  READ_TXTFILE_FIELD( CaracterSeparador : Char; VAR Linha : String ) : String;
FUNCTION  QDE_TXTFILE_FIELD( CaracterSeparador : Char; Linha : String ) : Longint;
PROCEDURE READ_TXTFILE_FIELDS ( CaracterSeparador : Char; Linha : String; VAR Fields : TStringList );
FUNCTION  WRITE_TXTFILE_FIELDs( CaracterSeparador : Char; Fields : TStringList ) : String;
PROCEDURE READ_TXTFILE_FIELDSMAX ( CaracterSeparador : Char; Linha : String; VAR Fields : TStringList; FieldCount : Word );
PROCEDURE SETFIELDSMAX ( VAR Lista : tStringList; QuantidadeMaxima : Longint );
FUNCTION  FIELDSToString ( Field : TStringList; CaracterSeparador : Char ) : String;

FUNCTION  READFIELDVALUE ( FieldNumber : Word; CaracterSeparador : Char; Linha : String ) : String;
FUNCTION  SETFIELDVALUE ( FieldNumber : Word; CaracterSeparador : Char; VAR Linha : String; NovoValor : String ) : Boolean;
FUNCTION  READFIELDVALUE_LABELED ( FieldName : String; CaracterSeparador : Char; LinhaComosFields : String ) : String;

PROCEDURE Sort_TXTFILE( Separador : Char; VAR Conteudo : TStringList;
                        CamposAOrdenar : String;
                        TamCamposNumericos, TamCamposString : Word;
                        Ascendente : Boolean );
PROCEDURE Sort_TXTFILE_Continuo( VAR Conteudo : TStringList; CamposAOrdenar : String; Ascendente : Boolean );

PROCEDURE READ_EFD_FIELDS ( CaracterSeparador : Char; Linha : String; VAR Fields : TStringList );
FUNCTION  WRITE_EFD_FIELDS ( CaracterSeparador : Char; Fields : TStringList ) : String;
PROCEDURE READ_EFD_FIELDSMAX ( CaracterSeparador : Char; Linha : String; VAR Fields : TStringList; QDECampos : Word );
FUNCTION  READ_EFDFIELD_VALUE ( FieldNumber : Word; CaracterSeparador : Char; Linha : String ) : String;
FUNCTION  SET_EFDFIELD_VALUE ( FieldNumber : Word; CaracterSeparador : Char; VAR Linha : String; NovoValor : String ) : Boolean;


PROCEDURE READ_CVSFILE_FIELDS ( CaracterSeparador : Char; Linha : String; VAR Fields : TStringList );
PROCEDURE READ_CVSFILE_FIELDSMAX ( CaracterSeparador : Char; Linha : String; VAR Fields : TStringList; QDECampos : Word );
FUNCTION  READ_CVSFile_FIELDVALUE ( FieldNumber : Word; CaracterSeparador : Char; Linha : String ) : String;
FUNCTION  Get_CVSFile_FieldByName ( Header : TStringList; CaracterSeparador : Char; LinhaBD : String; FieldName : String ) : String;
FUNCTION  Set_CVSFile_FieldByName ( Header : TStringList; CaracterSeparador : Char; VAR LinhaBD : String; FieldName : String; NovoValor : String ) : Boolean;
FUNCTION  ReturnIndex_CVSFile_FieldByName ( Header : TStringList; CaracterSeparador : Char; FieldName : String ) : Longint;
FUNCTION  Return_CVSFile_Value ( Header : TStringList; CaracterSeparador : Char; BDLine : TStringList; FieldName : String ) : String;


FUNCTION  COUNT_TXTFILE_LINES(FileName:String):Longint;  // conta o número de linhas de um arquivo texto.

PROCEDURE WriteInTextFile(Arquivo:String;Msg:String);   // Dá Append em Arquivo Texto
FUNCTION  RewriteInTextFile( Arquivo : String; Msg : String ) : Boolean;
FUNCTION  CurrentDir:String;
FUNCTION  ConvertTXTFILE(Arq_Entrada:String;Arq_Saida:String;Tam_Linha:Word):Boolean;
Function  CreateArq(tam:Word;Extensao_Com_Ponto:String):String;  //Cria um Arquivo Aleatório

FUNCTION  UnformatCGC_IE( CGC_OU_IE : String ) : String;
FUNCTION  FormatIE( InscricaoEstadual : Currency; UF : String ) : String;

FUNCTION  FormatCPFCNPJ ( CPFCNPJ : Currency ) : String;
FUNCTION  CPF_ou_CNPJ ( CPFCNPJ : Currency ) : String;
FUNCTION  CPFCGCValido ( CGC_OU_CPF : String ) : Boolean;
FUNCTION  CNPJCPFValido ( CNPJ_OU_CPF : Currency ) : Boolean;

FUNCTION  PISValido( PIS : String ) : Boolean;
function  FormataPIS(PIS : string): string;

FUNCTION  IEValida ( InscricaoEstadual : Currency; UF : String ) : Boolean;
FUNCTION  UFValida ( UF : String ) : Boolean;
FUNCTION  DLL_IEValida ( Numero : String; UF : String ) : Word;

FUNCTION  PlacaValida ( Placa : String ) : Boolean;
FUNCTION  Placa_Valida ( Placa : String ) : Boolean;
FUNCTION  Format_Placa ( Placa : String ) : String;

Function  FillLeft_Space( Tamanho , Numero : Longint):String;
Function  UnformatMoney ( Valor : String ) : String;
FUNCTION  NUM ( Numero : String ) : Boolean;
FUNCTION  Is_Number ( Numero : String ) : Boolean;
FUNCTION  Is_Currency ( Numero : String ) : Boolean; //  (Aceita negativo)
FUNCTION  Valid_Currency ( Numero : String ) : Boolean; //  (Aceita negativo)
FUNCTION  Valid_Longint ( Numero : String ) : Boolean; //  (Aceita negativo)

FUNCTION  OrdAlfabetico ( Ch : Char ) : Word;
Function  IsBigger( Campo1, Campo2: String ) : Longint;

FUNCTION  Get_Tratamento( NomeCompleto : String ) : String;
FUNCTION  Get_FirstName( NomeCompleto : String ) : String;
FUNCTION  Get_NomesMeio ( NomeCompleto : String ) : String;
FUNCTION  Get_LastName ( NomeCompleto : String ) : String;
FUNCTION  Str_InvalidChars ( Linha : String ) : Boolean;   // Verifica se a string tem valores sem ser numeros e letras

FUNCTION  BlasterUpper( Linha : String ) : String;
FUNCTION  BlasterLower ( Linha : String ) : String;
FUNCTION  FirstUpper ( Texto : String ) : String;
FUNCTION  ReturnPrimeirasLetras ( Texto : String ) : String;
FUNCTION  ExtractWords(FraseCompleta : String; Var ExtractedWords : TStringList; RetirarConjuncoes : Boolean) : Boolean;

FUNCTION  RemovaAcentos( Linha : String ) : String;
FUNCTION  RemovaAcento_PrimeiraLetra ( Msg : String ) : String;

FUNCTION  Money2Float ( Valor_Monetario : String ) : Currency;
FUNCTION  Money2Float3 ( Valor_Monetario : String ) : Currency;
FUNCTION  Money2Float4 ( Valor_Monetario : String ) : Currency;
FUNCTION  Money2Float6 ( Valor_Monetario : String ) : Currency;
FUNCTION  Float2Money( Valor_Real : Currency ) : String;
FUNCTION  Float2MoneyBD( Valor_Real : Currency ) : String;
FUNCTION  Float2Money3( Valor_Real : Currency ) : String;
FUNCTION  Float2Money3BD( Valor_Real : Currency ) : String;
FUNCTION  Float2Money4( Valor_Real : Currency ) : String;
FUNCTION  Float2Money4BD( Valor_Real : Currency ) : String;
FUNCTION  Float2Int ( Valor_Real : Currency ) : Longint;
FUNCTION  Float2Inteiro ( Valor_Real : Currency ) : Currency;
FUNCTION  ReturnQdeCasasDecimais_Currency( Valor : Currency ) : Longint;
FUNCTION  ValorComDuasCasasDecimais ( Valor : Currency ) : boolean;
FUNCTION  Arredonda ( Valor : Currency; CasasFinal : Word ) : Currency;

PROCEDURE ArredondamentoECF ( VAR Quantidade : Currency; PrecoUNIT, Total : Currency );
PROCEDURE ArredondamentoNFe ( VAR Quantidade : Currency; PrecoUNIT, Total : Currency );

FUNCTION  ArredondaAbastecimento ( Valor : Currency ) : Currency;

FUNCTION  IsFloatInteiro(Valor : Currency) : Boolean;

FUNCTION  Cheque_Periodo ( DataInicial : String; DataFinal : String ) : Boolean;
FUNCTION  Str2Num( ValorString : String ) : Longint;
FUNCTION  Str2Float ( ValorString : String ) : Currency;
FUNCTION  Float2Str ( ValorCurrency : Currency ) : String;

FUNCTION  GetFileDate(TheFileName: string): string;

FUNCTION  READCFGFile( Arquivo : String; SearchFor : String ) : String;

PROCEDURE Complete_Horario ( Var Hora : TMaskEdit );


PROCEDURE TEdit2Money( Campo : TEdit; Tamanho : Word );
PROCEDURE TEdit2Money3( Campo : TEdit; Tamanho : Word );
PROCEDURE Money2TEdit( Campo : TEdit );
PROCEDURE Label2Money( Campo : TLabel; Valor : Currency);

FUNCTION  Float2Text( valor : Currency) : String;
FUNCTION  Float2TextEx( Valor : Currency; CasasDecimais : Word ) : String;

FUNCTION  SetFormONTop ( Form : TForm; ToTop : Boolean ) : boolean;
procedure TurnAltTABOn;
procedure TurnAltTABOff;
procedure Show_Windows_Iniciar(Visible:Boolean);
PROCEDURE Show_TaskBar ( Visible : Boolean );


function  Pos1(Nome : String) : Integer;
function  Pos2(Nome : String) : Integer;
function  AbrevPalavra(Palavra : String) : String;
function  NomeAbrev(N_Completo : String) : String;   // abrevia um nome completo

FUNCTION  GereKeyFile ( ArquivoSource : String ) : String;

PROCEDURE ClearIOResult;

FUNCTION  ReturnWindows_RootDirectory : String;
FUNCTION  ReturnWindows_SystemDirectory : String;
function  Windows_GetEnvVarValue(const VarName: string): string;

FUNCTION  ReturnFileDate( Arquivo : String ) : String;
FUNCTION  ReturnFileTime( Arquivo : String ) : String;
FUNCTION  ReturnFileDateTime( Arquivo : String ) : String;
FUNCTION  FileFree ( Arquivo : String ) : Boolean;

PROCEDURE Delay ( Milisegundos : Longint );
PROCEDURE SleepDelay ( Milisegundos : Longint );
PROCEDURE Apm;  // Application.ProcessMessages

FUNCTION  ConvertSTR2Number( Numero : String ) : String;


{ Completa com espacos uma string e corta caso for maior que o tamanho passado como parametro }

// Completa com espacos a direita e caso passar do tamanho corta. Tags: FillRightString preenche
FUNCTION  AlRightString ( Texto : String; Tamanho : Longint ) : String;
// Completa com espacos a esquerda e caso passar do tamanho corta. Tags: FillLeftString preenche
FUNCTION  AlLeftString ( Texto : String; Tamanho : Longint ) : String;
// Alinha no centro uma string em um determinado tamanho. Tags: AlignCenter alinha
FUNCTION  AlCenterString ( Texto : String; Tamanho : Longint ) : String;


FUNCTION  GereStringAleatoria ( Tamanho : Longint ) : String;
FUNCTION  GereNumerosAleatorios ( Tamanho : Longint ) : String;


FUNCTION  LastPos ( Substr : String; S : String ) : Longint;
FUNCTION  NextPos ( Substr : String; S : String; IndiceInicio : Longint ) : Longint;
FUNCTION  ExtractPath ( FileName : String ) : String;

FUNCTION  Saudacao : String;
FUNCTION  Saudacao_Frase : String;
FUNCTION  SaudacaoByeBye : String;
FUNCTION  ReturnContraSenha ( Senha : String; NumeroChave : Currency ) : String;
FUNCTION  RemoveAll ( Subst : String; Texto : String ) : String;
FUNCTION  RemovaQuebraLinha ( Texto : String ) : String;
FUNCTION  RemoveChars ( Caracteres_a_Remover : String; Texto : String ) : String;
FUNCTION  RemoveEspecialChars ( Texto : String ) : String;
FUNCTION  ReturnStringAlfanumerica ( Texto : String ) : String;

(* FUNCOES PARA EMISSAO DE COBRANÇA BANCÁRIA *)
FUNCTION  ReturnDV_Modulo10 ( Numero : String ) : Longint;
FUNCTION  ReturnDV_Modulo11 ( Numero : String ) : Longint;
function  Modulo10(N : string) : string;
function  Modulo11(N : string) : string;
FUNCTION  CalculeDV ( Numero : String; Digitos : Word ) : String;  // Funcao minha
FUNCTION  ReturnC3 ( NumeroCheque : Longint ) : Longint;


FUNCTION  CreditCardValidator(c: string): integer;
PROCEDURE SETNumLock ( SetOn : Boolean );
PROCEDURE SETCapsLock ( SetOn : Boolean );
PROCEDURE SETScrollLock ( SetOn : Boolean );
FUNCTION  NumLockON : Boolean;
FUNCTION  ScrollLockON : Boolean;
FUNCTION  CapsLockON : Boolean;

FUNCTION  SetDate ( NovaData : String ) : Boolean;
FUNCTION  SetTime ( NovaHora : String ) : Boolean;

FUNCTION  SendFileToTrash ( FileName : String ) : Boolean;
PROCEDURE DisplayFileProperties ( FileName : String );
PROCEDURE SetCtrlAltDel ( SetOn : Boolean );

FUNCTION  ReturnIndiceListView_ByStateIndex ( Lista : TListView; StateIndex : Longint ) : Longint;
FUNCTION  ReturnIndiceTreeView_ByStateIndex ( Lista : TTreeView; StateIndex : Longint ) : Longint;

FUNCTION  HexaValido ( aValue : String ) : Boolean;
FUNCTION  HexToDec(aValue : String) : LongInt;
Function  DecToHex(aValue : LongInt) : String;
FUNCTION  Hex2Bin(B : Byte) : String;
FUNCTION  BinToDec(aValue : String) : LongInt;

function  IntToBin ( value: LongInt; digits: integer ): string;
function  BinToInt(Value: String): LongInt;


FUNCTION  Cut ( VAR Origem : String; Posicao : Longint; Tamanho : Longint ) : String;

FUNCTION  ReturnMachineName : String;
FUNCTION  ReturnMachineNameAndIP ( var HostName, IPaddr, WSAErr: string ) : Boolean;
Function  ReturnLoggedUserName : string;

PROCEDURE TypeText_OnLabel ( Texto : String; Tempo : Longint; CaracterParada : Char; Objeto : TLabel );


FUNCTION  UpperKEY ( Ch : Char ) : Char;  // Retorna um CHAR em UpperCase
FUNCTION  LowerKEY ( Ch : Char ) : Char;
FUNCTION  Inverte_MaiusculasMinusculas ( Texto : String ) : String;
FUNCTION  ReturnValor_ComDesconto ( ValorTotal, DescontoPorcentagem : Currency ) : Currency;
FUNCTION  NumeroPar ( Numero : Longint ) : Boolean;

FUNCTION  StringValida ( Texto : String ) : Boolean;
FUNCTION  StringLetras_Numeros ( Texto : String ) : Boolean;

PROCEDURE CloseAllForms;
FUNCTION  ExistMinimizedForms : Boolean;
PROCEDURE NormalizeAllMDI ( Exceto : TForm );
PROCEDURE MinimizeAllMDI ( Exceto : TForm );

FUNCTION  BDEInstalled : Boolean;
FUNCTION  SelectDir ( DiretorioBase : String; VAR DirSelected : String ) : Boolean;

FUNCTION  Time2Seconds ( Time : String ) : Longint;
FUNCTION  Seconds2Time ( Segundos : Longint ) : String;
FUNCTION  Seconds2TimeSt ( Segundos : Integer ) : String;
FUNCTION  Seconds2FullTimeSt ( Segundos : Currency ) : String;
FUNCTION  TempoRestante ( HoraInicio : String; PercentDone : Currency ) : String;

PROCEDURE OnlyNumbersAccepted( Var Key : Char; AceitarPontoOuVirgula : Boolean; AceitarNegativo : Boolean );
PROCEDURE OnlyNumeroLetrasAccepted( Var Key : Char );
FUNCTION  OnlyNumbersOnString ( Valor : String ) : String;
FUNCTION  OnlyLetrasOnString ( Valor : String ) : String;
FUNCTION  OnlyMoneyOnString ( Valor : String ) : String;
FUNCTION  ReturnSenhaByDate ( Size : Word; AlfaNumerico : Boolean; Key : Word ) : String;

FUNCTION  MakeDir ( Diretorio : String ): Longint;
FUNCTION  MakeFullDir(Caminho : String) : Boolean;

FUNCTION  InvertString ( Origem : String ) : String;

FUNCTION  CreateNewSession ( DuracaoEmMinutos : Longint; StoredINFO : Longint ) : String;
FUNCTION  ValidateSession ( IdentificacaoSessao : String; VAR StoredINFO : Longint ) : Boolean;

FUNCTION  GetfileSize(const FileName: String): LongInt;
FUNCTION  Qde_Pos ( Subst : String; Texto : String ) : Longint;


FUNCTION  Char2String ( Buffer : Array of char; Size : Longint ) : String;
PROCEDURE String2Char ( Buffer : String; Var Chars : Array of Char );
PROCEDURE String2Char0 ( Buffer : String; Var Chars : Array of Char );

FUNCTION  BD_ReadFile ( VAR VarFile : File; RecSize : Longint; Var Lido : String ) : WORD;
FUNCTION  BD_SeekFile ( VAR VarFile : File; Posicao : Longint; RecSize : Longint ) : WORD;
FUNCTION  BD_FilePos ( VAR VarFile : File; RecSize : Longint ) : Longint;
FUNCTION  BD_WriteFile ( VAR VarFile : File; RecSize : Longint; ToWrite : String ) : WORD;


FUNCTION  ReturnDirList ( PathBase : String; ForceUpperCase : Boolean; ShowFullPath : Boolean; Var DirList : TStringList ) : Boolean;
FUNCTION  ReturnAvailableDrives ( Var ListaLetras : TStringList; Var ListaTipos : TstringList ) : Boolean;

FUNCTION  SelectDir_Dialog ( Titulo : String )  : String;

PROCEDURE Projecao_Aplicacao ( ValorAplicado : Currency;
                               Porcentagem_Rendimento_Mensal : Currency;
                               DepositoMensal : Currency; Meses : Longint;
                               VAR Evolucao : TStringList );

PROCEDURE GetMemoryStatus ( VAR TotalFisica : Longint;
                           VAR TotalFisicaDisponivel : Longint;
                           VAR TotalVirtual : Longint;
                           VAR TotalVirtualDisponivel : Longint );
FUNCTION  Byte2MByte ( Bytes : Longint ) : Currency;
FUNCTION  Byte2KByte ( Bytes : Longint ) : Currency;
FUNCTION  FileInUse ( FileName : String ) : Boolean;
FUNCTION  MyMessageDlg(const aCaption: String; const Msg: string;
                       DlgType: TMsgDlgType; Buttons: TMsgDlgButtons;
                       DefButton: Integer; HelpCtx: Longint): Integer;

PROCEDURE CopyToClipBoard ( Texto : String );
FUNCTION  ReadFromClipBoard : String;
PROCEDURE AddFileToDocumentMenu ( FileNameANDPath : String );
FUNCTION  ReturnOWN_IPAddress: TStrings;


(* Funções para construção de INI *)
FUNCTION  MyINI_Open ( Path_AND_FileName : String; VAR INIFile : TStringList ) : Boolean;
FUNCTION  MyINI_New ( Path_AND_FileName : String; VAR INIFile : TStringList ) : Boolean;
FUNCTION  MyINI_ReadKey ( Secao : String; Chave : String; INIFile : TStringList ) : String;
FUNCTION  MyINI_SetKey ( Secao : String; Chave : String; Valor : String; VAR INIFile : TStringList ) : Boolean;
FUNCTION  MyINI_SetKey_Express ( Filename : String; Secao : String; Chave : String; Valor : String ) : Boolean;
FUNCTION  MyINI_Close ( VAR INIFile : TStringList ) : Boolean;

FUNCTION  ReturnMaiusculas ( Texto : String ) : String;
FUNCTION  ReturnMinusculas ( Texto : String ) : String;

FUNCTION  ReturnCheckSum_BigStrings ( Texto : String; Senha1, Senha2 : Integer ) : String;
FUNCTION  ReturnCheckSum ( Texto : String; Senha1, Senha2 : Integer ) : String;
FUNCTION  ReturnCheckSumDOTz ( Texto : String ) : String;
FUNCTION  ReturnCheckSumCanaa ( St : String; CaracterLimitador : Char; Chave : Currency ) : String;
FUNCTION  ReturnFileCheckSUM ( FileName : String ) : String;
FUNCTION  GereCheckSUM_PAF( Registro : String ) : Longint;

procedure MouseKeyboard_ON;
procedure MouseKeyboard_OFF;

FUNCTION  ValidateTXTFILE_SaveToFile_BigStrings ( Conteudo : TStringList; FileName : String; Senha1, Senha2 : Integer ) : Boolean;
FUNCTION  ValidateTXTFILE_Gere_BigStrings( VAR Conteudo : TStringList; Senha1, Senha2 : Integer ) : Boolean;
FUNCTION  ValidateTXTFILE_Leia_BigStrings( Var Conteudo : TStringList; Senha1, Senha2 : Integer ) : Boolean;
FUNCTION  ValidateTXTFILE_LoadFromFile_BigStrings( FileName : String; Conteudo : TStringList; Senha1, Senha2 : Integer ) : Boolean;

FUNCTION  ValidateTXTFILE_LoadFromFile ( FileName : String; Conteudo : TStringList; Senha1, Senha2 : Integer ) : Boolean;
FUNCTION  ValidateTXTFILE_SaveToFile ( Conteudo : TStringList; FileName : String; Senha1, Senha2 : Integer ) : Boolean;
FUNCTION  ValidateTXTFILE_Gere ( VAR Conteudo : TStringList; Senha1, Senha2 : Integer ) : Boolean;
FUNCTION  ValidateTXTFILE_Leia( Var Conteudo : TStringList; Senha1, Senha2 : Integer ) : Boolean;

FUNCTION  Verifique_AssinaturaArquivo( FileName : String; KeyDe1_9 : Word ) : Boolean;
FUNCTION  Gere_AssinaturaArquivo( FileName : String; KeyDe1_9 : Word ) : Boolean;
FUNCTION  Return_AssinaturaArquivo( FileName : String; KeyDe1_9 : Word ) : String;
FUNCTION  Return_MD5String ( St : String ) : String;

FUNCTION  ConvertTXT2HTML ( TXT : TStringList; VAR HTML : TStringList ) : Boolean;
FUNCTION  ConvertDateTimeToString ( Data, Hora : String ) : String;

FUNCTION  DeleteFilesListed ( Path : String; FileList : TStringList ) : Longint;
FUNCTION  FileExistsMask ( FileNameWithMasks : String ) : Boolean;
PROCEDURE bFillDir(Const AMask: string; VAR Arquivos : TStringList);
PROCEDURE bFillDirMax(Const AMask: string; VAR Arquivos : TStringList; MaximoDeArquivos: Longint);

FUNCTION  bFillDirRecursive ( Const AMask: string; VAR Resultado : TStringList; Recursive : Boolean; VAR LabelInfo : TLabel ) : Boolean;
FUNCTION  bFillDirRecursiveDetalhado ( Const AMask: string; VAR Resultado : TStringList; Recursive : Boolean; VAR LabelInfo : TLabel ) : Boolean;

FUNCTION  bDirTreeRecursive ( Const PastaBase: string; VAR Resultado : TStringList; VAR LabelInfo : TLabel ) : Boolean;
FUNCTION  bDelTree ( PastaBase : string; VAR LabelInfo : TLabel ) : Boolean;
Procedure bZapFiles(vMasc:String);

FUNCTION  SetFileAttributes ( FileName : String; ReadOnly, System, Hidden : Boolean ) : Boolean;
FUNCTION  ReadFileAttributes ( FileName : String; VAR ReadOnly, System, Hidden : Boolean ) : Boolean;

FUNCTION  ExistParametro ( Parametro : String ) : Boolean;
PROCEDURE TurnStartButton ( Ativo : Boolean );
PROCEDURE TurnDesktopIcones ( Ativo : Boolean );
PROCEDURE TurnMonitor ( TurnOn : Boolean );

PROCEDURE SetAtributo ( Var Atributos : Longint; Posicao : Word; Valor : Word);
FUNCTION  ReadAtributo ( Atributos : Longint; Posicao : Word) : Longint;

PROCEDURE OpenDisplayPropertiesDialog;

PROCEDURE UnLockWindowsAccess;
PROCEDURE LockWindowsAccess;

FUNCTION  CaracterEstranho ( St : String ) : Boolean;
FUNCTION  RemovaCaracterEstranho ( St : String ) : String;

FUNCTION  SameStr ( String1, String2 : String ) : Boolean;
FUNCTION  RemovaZerosAEsquerda ( Valor : String ) : String;

FUNCTION  ReadCMC7( Buffer : String; Var Banco : String; Var Agencia : String;
                   Var Conta : String; Var Cheque : String; Var Comp : String ) : Boolean;

procedure ClearKeyboardBuffer;
procedure ClearMouseBuffer;

FUNCTION  SomeTodosNumeros ( Numeros : String ) : Longint;

FUNCTION  GereContraSenhaTipo1 ( ContraSenha : String ) : String;

function  WinExec32(FileName:String; Visibility : integer):Boolean;
function  OpenExplorer( OpenAtPath: string ): boolean;


FUNCTION  TCheckListBox_CheckedCount ( CheckListBox : TCheckListBox ) : Longint;
PROCEDURE TCheckListBox_SetChecked ( CheckListBox : TCheckListBox; Checked : Boolean );

PROCEDURE CalculePercentual ( VAR Key : Char; ValorTotal : Currency; VAR Valor : TAlignEdit );
FUNCTION  VariacaoPercentual ( Valor1 : Currency; EmRelacaoAoValor2 : Currency ) : Currency;

procedure BmpResize( FileName : String; NuWidth, NuHeight: integer);
Procedure BmpToJpg(Origem,Dest: String; Resolution: integer);
Procedure JpgToBmp(Origem,Dest: String);

FUNCTION  RenameFileForced( De, Para : String ) : Boolean;
FUNCTION  RenameExtensaoFileForced( De, ParaExtensao : String ) : Boolean;
FUNCTION  RenameFileSEQ ( FileName : String ) : Boolean;

FUNCTION  RemovaExtensao_FileName ( FileName : String ) : String;

FUNCTION  DeleteFileForced( FileName : String ) : Boolean;
function  BlasterFileCopy(source,dest: String): Boolean;
function  BlasterFileCopyNoOverWrite(source,dest: String): Boolean;
function  BlasterFileCopyProgress(source,dest: String; Barra : TGauge): Boolean;

function  ListeMaquinasNaRede : TStringList;

function  BackupIncrementalFile( ArquivoOrigem : String; PastaDestino : String; BarraProgresso : TGauge ) : Word;

FUNCTION  ModeloDaNotaFiscalValido( Modelo : String ) : Boolean;
FUNCTION  SerieDaNotaFiscalValida( Serie : String ) : Boolean;

FUNCTION  ReturnLetraAlfabeto(Numero : Integer) : String;


FUNCTION  GereHexaBICO_Cesna(SL, BO, BI : LongInt) : String;
FUNCTION  Return_Cesna(IDBico : String; Var SL : LongInt; Var BO : LongInt; Var BI : LongInt) : LongInt ;
FUNCTION  GereIDCanal_Cesna ( Sl, Bo : Longint ) : Longint;
FUNCTION  ReturnBicosLigadosCanal ( Canal : Longint ) : String;

FUNCTION  ReturnBicosDoCanal_CompanyTEC ( Canal, NumeroLogico : Word; VAR Bicos : TStringList ) : Boolean;

FUNCTION  CUB_GereHexaBico( Bomba : Word; Bico : Word ) : String;
FUNCTION  CUB_ReturnBombaBicoProdutoByHexa( HEXABico : String; VAR Bomba : Longint; VAR Bico : Longint; VAR resCodigoProduto : Longint ) : Boolean;

FUNCTION  Wayne_GereHexaBICO( BO, BI : LongInt) : String;
PROCEDURE Wayne_ReturnPosicoesBico(IDBico : String; Var BO : LongInt; Var BI : LongInt);


FUNCTION  StrBin2Chr( St : String ) : String;
FUNCTION  StrChr2Bin( St : String ) : String;
FUNCTION  StrChr2Bin_Faster( St : String ) : String;  // Funcoes melhoradas gerando strings alfa numericas menores
FUNCTION  StrBin2Chr_Faster( St : String ) : String;  // Funcoes melhoradas gerando strings alfa numericas menores

FUNCTION  DecriptString_LicencaKEY ( Arq : TStringList; VAR Descriptografado : TStringList ) : Boolean;
FUNCTION  EncriptString_LicencaKEY ( Arq : TStringList; VAR Criptografado : TStringList; TamanhoPadraoLinha : Word ) : Boolean;


FUNCTION  GereIDUnico14 ( Data, HoraComSegundos : String ) : String;

FUNCTION  FormatTelefone( DDDPadrao : Longint; Tel : String ) : String;

function  TeclaEstaPressionada(const Key: integer): boolean;
FUNCTION  BooleanToChar( BoolVar : Boolean ) : String;
FUNCTION  CharToBoolean( St : String ) : Boolean;

PROCEDURE JunteTStringLists ( Adicionar_Esta, NoFinal_Desta : TStringList );

FUNCTION  QdeLetrasIguais ( CompararEsta : String; ComEsta : String ) : Longint;
FUNCTION  ApliqueMascaraNumero( Mascara : String; Numero : String ) : String;

(* FUNCOES BDBIN *)
FUNCTION  SaveFileToBD ( Identificacao : String; FileToSave : String; BDFile : String ) : Longint;
FUNCTION  SaveBDToFile ( Posicao : Longint; VAR Identificacao : String; BDFile : String; FileToSave : String ) : Longint;
FUNCTION  ReadBDIdenificacao ( BDFile : String; VAR Identificacoes : TStringList ) : Boolean;
(* FIM FUNCOES BDBIN *)

(* FUNCOES DE CONVERSAO DE ARQUIVO BINARIO PARA ASCII *)
FUNCTION  ConvertFile2ASCII ( FileNameOrigem : String; FileNameDestino : String ) : Boolean;
FUNCTION  ConvertASCII2File ( FileNameOrigem : String; FileNameDestino : String ) : Boolean;
(* FIM - FUNCOES DE CONVERSAO DE ARQUIVO BINARIO PARA ASCII *)

FUNCTION rFID_FormatCartao ( Cartao : String ) : Currency;

PROCEDURE ReturnElementosSeparados ( Elementos_Separados : String; Separacao : Char; Var Elementos : TStringList );

FUNCTION  EmailValido ( Endereco : String ) : Boolean;

FUNCTION  ControleFrota_CalculeDV ( NumeroCartaoSEMDV : String ) : Word;
FUNCTION  ControleFrota_NumeroDeCartaoValido ( NumeroCartaoCOMDV : String ) : Boolean;

FUNCTION  IBGE_ReturnCodigoEstado ( UF : String ) : Word;
FUNCTION  IBGE_ReturnCodigoCidade( Cidade, UF : String; ShowMessages : Boolean ) : Longint;
FUNCTION  IBGE_ReturnEstado_ByCOD( CodigoIBGE : LongInt; Short : Boolean ) : String;

FUNCTION  NumeroTelefoneCelular ( Numero : String ) : Boolean;

FUNCTION  LineFeed : String;

FUNCTION  HTMLSpace : String;

PROCEDURE LocalizePrimeiraLetraNoStringList( VAR Lista : TStringAlignGrid; Coluna : Word; Key : Char );
PROCEDURE LocalizeNoInicioStringList( VAR Lista : TStringAlignGrid; Coluna : Word; Key : String );

FUNCTION  EANValido( CodigoEAN: String; ShowMessages: Boolean): Boolean;

FUNCTION  ConectadoAInternet : Boolean;
FUNCTION  Ping ( EnderecoPING : String; TimeOut_Segundos : Word; DOSOutPut : TStringList ) : Boolean;


IMPLEMENTATION



Function Replicate(xChar:String;xQtde:Word):String;
Var
  X	  : Word;
  xRet	  : String;
Begin

  Result:='';
  If xQtde=0 then Exit;

  xRet := '';
  For x:=1 to xQtde do xRet := xRet + xChar;
  
  Result := xRet;
End;


Function ExistArq(xNome:string): Boolean;
Var A:File of Byte;
Begin
     AssignFile(a,XNome);
     {$I-}
     Reset(a);
          If IORESULT=0 THEN BEGIN CloseFile(a); Result:=True; End;
          IF IORESULT<>0 THEN Result:=FALSE;
End;


Function CreateFile:String;
VAR C:Word; A:String[12];
Begin
     Repeat
       C:=0;
       A:='';
       Repeat
         A:=A+CHR(Random(20)+66);
         Inc(C);
       Until C>7;
       A:=A+'.DAT';
     Until Not FileExists(A);
     Result:=A;
End;


Function Space(xTam:Byte):String;
Var x	   :Byte;
    Retorno:String;
Begin
  Retorno:='';
  For x:=1 to xtam do Retorno:=Retorno+' ';
  Space:=Retorno;
end;

Function Ltrim(xMens:String):String;
Var
  Contax  : Byte;
Begin
  Contax := 1;
  While Copy(xMens,Contax,1)=' ' Do Begin
   Inc(contax);
  End;
  Ltrim := Copy(xMens,Contax,Length(xMens)-Contax+1);
End;

Function Rtrim(xMens:String):String;
Var
  Contax : Byte;
Begin
  Contax := Length(xMens);
  While Copy(xMens,Contax,1)=' ' do Begin
   Dec(contax);
  End;
  Rtrim := Copy(xMens,1,Contax)
End;

Function FillLeft(Tam,Num:Longint):String;
Begin

   If Num<0 Then Begin
     Result:=InttoStr(Num);
     Exit;
   End;

   If Length(InttoStr(Num))>Tam Then
     Result:=Copy(InttoStr(Num),1,Tam)
   Else
     FillLeft:=Replicate('0',Tam-Length(Inttostr(Num)))+Inttostr(Num);

End;



Function Hoje:String;
VAR
  A,D,M         : Word;
  A_S,D_S,M_S   : String[4];
  Dt            : TSystemTime;

Begin

//  Decodedate(Date,A,M,D);
//  A_S:=Inttostr(A);     M_S:=Inttostr(M);     D_S:=InttoStr(D);

  GetLocalTime(Dt);
  D:=Dt.wDay;
  A:=Dt.wYear;
  M:=Dt.WMonth;
  A_S:=Inttostr(A);     M_S:=Inttostr(M);     D_S:=InttoStr(D);

  If D<10 Then D_S:='0'+Inttostr(D);
  If M<10 Then M_S:='0'+Inttostr(M);

  Hoje:=D_S+'/'+M_S+'/'+A_S;

End;


FUNCTION HojeInt : Longint;
BEGIN
  Result:=DAte2Int(Hoje);
END;

FUNCTION BUSCA_CEP(St:String):string;
VAR C:Word; SC:STRING;
BEGIN
SC:=UPPERCASE(ST);

	If Pos('AVENIDA ',SC)=1 Then Begin Delete(SC,1,8); SC:='AV '+SC; End;
	If Pos('AV ',SC)=1 Then Begin Delete(SC,1,3); Sc:='AV '+SC; End;
	If Pos('AV. ',SC)=1 Then Begin Delete(SC,1,4); SC:='AV '+SC; End;

	If Pos('RUA ',SC)=1 Then Begin Delete(SC,1,4); SC:='R '+SC; End;
	If Pos('R. ',SC)=1 Then Begin Delete(SC,1,3); SC:='R '+SC; End;
	If Pos('R ',SC)=1 Then Begin Delete(SC,1,2); SC:='R '+SC; End;

	C:=1;
	Repeat
		If Pos(SC[C],'0123456789')<>0 Then Begin Delete(SC,C,50);  C:=200; End;
    C:=C+1;
	Until C>Length(SC);

	BUSCA_CEP:=Rtrim(Ltrim(SC));

END;


Function FormatMoney(St:String):String;
BEGIN
  Result:=Float2Money(Money2Float(St));
END;

FUNCTION FormatMoneyEx( St : String; Casas : Word ) : String;
VAR
  Fl     : Currency;
BEGIN
  Fl:=Money2Float4(St);
  Result:=Float2TextEx(Fl, Casas);
END;


(* Formatação variável colocando quantas casas for necessária até 4 *)
FUNCTION FormatMoneyVAR( St : String ) : String;
VAR
  S      : String;
BEGIN

  St:=FormatMoney4(St);
  REPEAT
    If St[Length(St)]='0' Then
      Delete(St, Length(St), 1);
  UNTIL St[Length(St)]<>'0';

  If Pos(',', St)=Length(St) Then
    Delete(St, Pos(',', St), 1);

  Result:=St;

END;


Function FormatMoney_Text(St:String):String;
BEGIN
  Result:=Float2Text(Money2Float(St));
END;


Function FormatMoney3(St:String):String;
BEGIN
  Result:=Float2Money3(Money2Float3(St));
END;

Function FormatMoney4(St:String):String;
BEGIN
  Result:=Float2Money4(Money2Float4(St));
END;



Function Money(Valor1 : String;VAlor2 : String; Tipo : Char):String;
Var Posi1,Posi2 : word; Saida : String; Vala1,Vala2 : longint;
Total : longint;
Begin
VALOR1:=RTRIM(LTRIM(VALOR1));
VALOR2:=RTRIM(LTRIM(VALOR2));
If Valor1='' Then Valor1:='0,00';
If Valor2='' Then Valor2:='0,00';
If Pos(' ',Valor1)=1 Then Valor1:='0,00';
If Pos(' ',Valor2)=1 Then Valor2:='0,00';

Posi1 := Pos(',',valor1); Posi2 := Pos(',',valor2);
Delete(valor1,posi1,1); Delete(valor2,posi2,1);
Vala1 := Strtoint(Rtrim(Ltrim(Valor1))); Vala2 := Strtoint(Rtrim(Ltrim(Valor2)));
Saida := ''; Total := 0;
If UpperCase(Tipo) = '*' Then Begin
Total := VAla1 * Vala2; Saida := inttostr(total DIV 100); end;
If UpperCase(Tipo) = '/' Then Begin
Total := VAla1 * 100 DIV Vala2; Saida := inttostr(total); end;
If UpperCase(Tipo) = '+' Then Begin
Total := VAla1 + Vala2; Saida := inttostr(total); end;
If UpperCase(Tipo) = '-' Then Begin
Total := VAla1 - Vala2; Saida := inttostr(total); end;
Insert(',',saida,length(saida)-1); Money := FormatMoney(Saida);

End;




Function MoneyPorcent(Valor,Operacao,Taxa:string):String;
Var
R:String[20];
Val,Tax,Res:Longint;
Begin

Valor:=FormatMoney(Valor);
Delete(Valor,Length(Valor)-2,1);
Val:=strtoint(rtrim(valor));

Taxa:=FormatMoney(Taxa);
Delete(Taxa,Length(taxa)-2,1);
Tax:=Strtoint(rtrim(Taxa));

Res:= VAL * TAX DIV 10000;

If Operacao = '+' Then Val:=Val+Res;
If Operacao = '-' Then Val:=Val-Res;

Valor:=inttostr(Val);

Insert(',',valor,Length(Valor)-1);

MoneyPorcent:=Valor;

End;

FUNCTION QuantoPorcento(Vmenor,VMaior:string):String;
Var XUI,XUPIN:String;
BEGIN
VMenor:=FormatMoney(Rtrim(VMenor));
VMaior:=FormatMoney(Rtrim(VMaior));

XUPIN:=Money(VMaior,Vmenor,'-');

XUI:=Money(Xupin,'100,00','*');

QUANTOPORCENTO:=FormatMoney(MONEY(XUI,Vmenor,'/'));

END;


PROCEDURE BEEP;
BEGIN
  MessageBeep(MB_ICONEXCLAMATION);
END;



FUNCTION R_FORMAT(Stt:String):String;
VAR V1 : String;
    C  : Word;
    Virgulas : Word;  // Conta o número de vírgulas... Se tiver mais de um, tira...

BEGIN
  V1:=TrimLeft(TrimRight(Stt));

  If (Pos(' ',V1)=1) Or (V1='') Then V1:='0,00';
  If Pos(V1[1],'.,')<>0 Then V1:='0'+V1;

  If (V1[1]='-') AND (Pos(V1[2],'.,')<>0) Then Insert('0',V1,2);


  {Checando se Tem Letras}
  C:=1;
  Virgulas:=0;
  REPEAT
    If V1[C]='.' Then Begin
      Delete(V1,C,1);
      Insert(',',V1,C);
      If Length(V1)=0 Then V1:='0,00';
      Dec(C);
    End;
    If Pos(V1[C],'-1234567890,')=0 Then Begin
      V1:='0,00';
      C:=Length(V1);
    End;
    If V1[C]=',' Then Inc(Virgulas);
    Inc(C);
  UNTIL C>Length(V1);

  If Virgulas>1 Then Begin
    REPEAT
      Delete(V1,Pos(',',V1),1);
      Dec(Virgulas);
    UNTIL Virgulas=1;
  End;

  If Pos(',',V1)=0 Then V1:=V1+',00';
  If Pos(',',V1)=1 Then V1:='0'+V1;

  If Length(V1)-Pos(',',V1)=0 Then V1:=V1+'00';
  If Length(V1)-Pos(',',V1)=1 Then V1:=V1+'0';
  If Length(V1)-Pos(',',V1)>2 Then Delete(V1,Pos(',',V1)+3,50);

  R_Format:=V1;

END;





{Retorna Quanto Porcento o Valor_menor é do valor Total}
FUNCTION R_QUANTOPORCENTO(Valor_Menor:String;Valor_Total:String;Casas_Decimais:Word):String;
VAR
  R,V1,V2:Currency;
BEGIN

  Result:='0,00';

  V1:=StrToFloat(R_Format(Valor_Menor));
  V2:=StrToFloat(R_Format(Valor_Total));

  If (V2<>0) And (V1<>0) Then Begin
    R:=V1*100/V2;
    Result:=R_Format(FloatToStrF(R,ffFixed,18,Casas_Decimais));
  End;

  If (V2=0) And (V1=0) Then
    Result:='0,00';

End;


{Me Retorna o Valor Correspondente a Tantos Porcento da Variável "VALOR"}
FUNCTION R_PORCENTO(Valor:String;Porcentagem:String):String;
VAR
  R,V1,V2:Currency;
BEGIN

  V1:=StrToFloat(R_Format(Valor));
  V2:=StrToFloat(R_Format(Porcentagem));

  If (V1=0) Or (V2=0) Then Begin
    Result:='0,00';
    Exit;
  End;

  V2:=V2 / 100.00;

  R :=V1 * V2;

  Result:=R_Format(FloattoStrf(R,FFFixed,18,2));

End;


Procedure Registre_Em_Log( Arq : String; Texto : String);
VAR
  A                                        : TextFile;
BEGIN
{$I-}
  AssignFile(A,Arq);
  Append(A);
  IF IOResult<>0 Then Rewrite(A);
  ClearIOResult;
  Writeln(A,Texto);
  ClearIOResult;
  CloseFile(A);
  ClearIOResult;

END;


PROCEDURE SayMsg( Titulo : String; Mensagem : String );
BEGIN

  MouseKeyboard_ON;

  If Pos('ERRO',UpperCase(Mensagem))=1 Then
    MyMessageDlg(Titulo, Mensagem, MtError, [MBOk], mrOK, 0)
  Else
    If ((Pos('ATENÇÃO',UpperCase(Mensagem))=1) Or (Pos('ATENÇAO',UpperCase(Mensagem))=1)) or (Pos('ATENCAO',UpperCase(Mensagem))=1) Then
      MyMessageDLG(Titulo, Mensagem, MtWarning, [MBOk], mrOK, 0)
    Else
      MyMessageDLG(Titulo, Mensagem, mtInformation, [MBOk], mrOK, 0)

END;

PROCEDURE SayMsgErro( Titulo : String; Mensagem : String );
BEGIN

  MouseKeyboard_ON;
  Beep;
  MyMessageDlg(Titulo, Mensagem, MtError, [MBOk], mrOK, 0)

END;


PROCEDURE ShowErro( CodigoErro : Longint; Mensagem : String );
BEGIN

  MouseKeyboard_ON;
  Beep;
  MyMessageDlg('(ERRO.'+InttoStr(CodigoERRO)+')', Mensagem, MtError, [MBOk], mrOK, 0)

END;


PROCEDURE SAY(Texto:String);
Begin

  MouseKeyboard_ON;

  If Pos('ERRO',UpperCase(Texto))=1 Then
    MessageDlg(Texto, MtError, [MBOk],0)
  Else
    If Pos('ATENÇÃO',UpperCase(Texto))=1 Then
      MessageDlg(Texto, MtWarning, [MBOk],0)
    Else
      ShowMessage(Texto);
End;



Procedure SayErro(Texto:String);
BEGIN
  MouseKeyboard_ON;
  Beep;
  Screen.Cursor:=crDefault;
  MessageDlg(Texto,MTError,[MBOK],0);
END;



Procedure SayInfo(Texto:String);
BEGIN
  MouseKeyboard_ON;
  Beep;
  Screen.Cursor:=crDefault;
  MessageDlg(Texto,MTInformation,[MBOK],0);
END;

Procedure ERRORMESSAGE(Texto:String);
BEGIN
  MouseKeyboard_ON;
  Beep;
  MessageDlg(Texto,MTError,[MBOK],0);
END;



FUNCTION CheckDate ( Data : String ) : Boolean;
VAR
  S                                     : String[4];
  Dia,Mes,Ano                           : Longint;

BEGIN

  CheckDate:=False;

  If Data='  /  /    ' Then Exit;
  If Pos('/',Data)=0 Then Exit;

  If (Pos(' ',Data) < 6) AND (Pos(' ',Data) >0) Then Exit;

  If Length(Data)<>10 then Exit;

  S:=Rtrim(Ltrim(Copy(Data,7,4)));
  If S='' Then S:='1';

  Try
    If Strtoint(S)<1000 Then Exit;
  Except
    Exit;
  End;

  S:=Rtrim(Ltrim(Copy(Data,4,2)));
  If S='' Then S:='0';
  If (Strtoint(S)<1) or (Strtoint(S)>12) Then Exit;

  S:=Rtrim(Ltrim(Copy(Data,1,2)));
  If S='' Then S:='0';
  If (Strtoint(S)>31) or (Strtoint(S)<1) Then Exit;


  Dia:=Str2Num(Copy(Data,1,2));
  Mes:=Str2Num(Copy(Data,4,2));
  Ano:=Str2Num(Copy(Data,7,4));

  Case Mes Of
    1  : If Dia >= 32 Then Begin
           Exit;
         End;
    2  : If Not Bissexto(Ano) Then Begin
           If Dia >= 29 Then Begin
             Exit;
           End;
         End Else Begin
           If Dia >= 30 Then Begin
             Exit;
           End;
         End;
    3  : If Dia >= 32 Then Begin
           Exit;
         End;
    4  : If Dia >= 31 Then Begin
           Exit;
         End;
    5  : If Dia >= 32 Then Begin
           Exit;
         End;
    6  : If Dia >= 31 Then Begin
           Exit;
         End;
    7  : If Dia >= 32 Then Begin
           Exit;
         End;
    8  : If Dia >= 32 Then Begin
           Exit;
         End;
    9  : If Dia >= 31 Then Begin
           Exit;
         End;
    10 : If Dia >= 32 Then Begin
           Exit;
         End;
    11 : If Dia >= 31 Then Begin
           Exit;
         End;
    12 : If Dia >= 32 Then Begin
           Exit;
         End;
  End;


  Result:=True;

END;



(* Retorna a data completa do último dia do mês *)
FUNCTION UltimoDiaMes ( Data : String ) : String;
VAR
  S                                     : String[4];
  Dia,Mes,Ano                           : Longint;

BEGIN

  Result:=Data;

  If Not CheckDate(Data) Then Exit;


  Dia:=Str2Num(Copy(Data,1,2));
  Mes:=Str2Num(Copy(Data,4,2));
  Ano:=Str2Num(Copy(Data,7,4));

  Case Mes Of
    1  : Dia:=31;
    2  : If Not Bissexto(Ano) Then Begin
           Dia:=28;
         End Else Begin
           Dia:=29;
         End;
    3  : Dia:=31;
    4  : Dia:=30;
    5  : Dia:=31;
    6  : Dia:=30;
    7  : Dia:=31;
    8  : Dia:=31;
    9  : Dia:=30;
    10 : Dia:=31;
    11 : Dia:=30;
    12 : Dia:=31;
  End;

  Result:=FillLeft(2,Dia)+'/'+FillLeft(2,Mes)+'/'+FillLeft(4,Ano);

END;



(* Retorna a data completa do primeiro dia do mês *)
FUNCTION PrimeiroDiaMes ( Data : String ) : String;
VAR
  S                                     : String[4];
  Dia,Mes,Ano                           : Longint;

BEGIN

  Result:=Data;

  If Not CheckDate(Data) Then Exit;


  Dia:=Str2Num(Copy(Data,1,2));
  Mes:=Str2Num(Copy(Data,4,2));
  Ano:=Str2Num(Copy(Data,7,4));

  Dia:=1;

  Result:=FillLeft(2,Dia)+'/'+FillLeft(2,Mes)+'/'+FillLeft(4,Ano);

END;




Function ReturnSerial(Nome : string):Longint;
Var
ch : string[1];
Total : Longint;
Tamanho : Integer;
Posi : Integer;

Begin
Tamanho := Length(nome);
If Tamanho = 0 Then Begin ReturnSerial:=1; Exit; End;
Total := 0; Posi := 1;
Nome := UpperCase(Nome);
Repeat
Posi := Posi+1;
ch := Copy(nome,posi,1);
If Ch = '0' Then Begin Total := Total+23102;End;
If Ch = '1' Then Begin Total := Total+24152;End;
If Ch = '2' Then Begin Total := Total+25191;End;
If Ch = '3' Then Begin Total := Total+26268;End;
If Ch = '4' Then Begin Total := Total+27295;End;
If Ch = '5' Then Begin Total := Total+29303;End;
If Ch = '6' Then Begin Total := Total+30347;End;
If Ch = '7' Then Begin Total := Total+31378;End;
If Ch = '8' Then Begin Total := Total+33399;End;
If Ch = '9' Then Begin Total := Total+32409;End;
If Ch = 'A' Then Begin Total := Total+12519;End;
If Ch = 'B' Then Begin Total := Total+112540;End;
If Ch = 'C' Then Begin Total := Total+12598;End;
If Ch = 'D' Then Begin Total := Total+15600;End;
If Ch = 'E' Then Begin Total := Total+15614;End;
If Ch = 'F' Then Begin Total := Total+13616;End;
If Ch = 'G' Then Begin Total := Total+13712;End;
If Ch = 'H' Then Begin Total := Total+13910;End;
If Ch = 'I' Then Begin Total := Total+14987;End;
If Ch = 'J' Then Begin Total := Total+14999;End;
If Ch = 'K' Then Begin Total := Total+11012;End;
If Ch = 'L' Then Begin Total := Total+11263;End;
If Ch = 'M' Then Begin Total := Total+21302;End;
If Ch = 'N' Then Begin Total := Total+21319;End;
If Ch = 'O' Then Begin Total := Total+11784;End;
If Ch = 'P' Then Begin Total := Total+21901;End;
If Ch = 'Q' Then Begin Total := Total+31999;End;
If Ch = 'R' Then Begin Total := Total+32019;End;
If Ch = 'S' Then Begin Total := Total+232210;End;
If Ch = 'T' Then Begin Total := Total+32199;End;
If Ch = 'U' Then Begin Total := Total+42345;End;
If Ch = 'V' Then Begin Total := Total+42789;End;
If Ch = 'X' Then Begin Total := Total+52893;End;
If Ch = 'Y' Then Begin Total := Total+53015;End;
If Ch = 'W' Then Begin Total := Total+53498;End;
If Ch = 'Z' Then Begin Total := Total+53008;End;
If Ch = ' ' Then Begin Total := Total+64019;End;
If Ch = '.' Then Begin Total := Total+84049;End;
If Ch = '-' Then Begin Total := Total+82193;End;
If Ch = ':' Then Begin Total := Total+82580;End;
If Ch = '_' Then Begin Total := Total+9100;End;
If Ch = 'þ' Then Begin Total := Total+9015;End;
If Ch = '*' Then Begin Total := Total+171089;End;
If Ch = '=' Then Begin Total := Total+171092;End;
If Ch = '!' Then Begin Total := Total+189017;End;
If Ch = '#' Then Begin Total := Total+179320;End;
If Ch = '(' Then Begin Total := Total+179453;End;
If Ch = ')' Then Begin Total := Total+179537;End;
Until Posi>=tamanho;

Total := Total * 23;
Total := Total * Length(nome);
ReturnSerial := Abs(Total);

End;


Procedure CrtFile(Nome:String);
VAR Arq : TextFile;
BEGIN
{$I-}
  Assignfile(Arq,NOMe);
  Rewrite(Arq);
  If IOResult<>0 Then Begin
    CloseFile(Arq);
    Exit;
  End;
  CloseFile(Arq);
END;


FUNCTION  IDADE_COMPLETA(Data:String;Data_Atual:String):String;
VAR Total,TotalH,TotalD,Anos,Meses,MD,MH,AD,AH:Longint;
BEGIN

  If (Not CheckDate(DatA)) Or (Not CheckDate(Data_Atual)) Then Begin
    Idade_Completa:='';
    Exit;
  End;

  MD:=Strtoint(Copy(Data,4,2));
  AD:=Strtoint(Copy(Data,7,4));

  MH:=Strtoint(Copy(Data_Atual,4,2));
  AH:=Strtoint(Copy(Data_Atual,7,4));

  AH:=AH*12;
  AD:=AD*12;
  TotalH:=AH+MH;
  TotalD:=AD+MD;

  Anos:=(TotalH-TotalD) DIV 12;

  If Anos=0 Then Meses:=(TotalH-TotalD) Else
  Begin
    Meses:=(TotalH-TotalD)-ANOS * 12;
  End;

  If Anos=0 Then IDADE_COMPLETA:=Inttostr(Meses)+' mes(es)';
  If Anos>0 Then Begin
    If Meses=0 Then IDADE_COMPLETA:=Inttostr(Anos)+' ano(s)' else
      IDADE_COMPLETA:=Inttostr(Anos)+' ano(s) e '+Inttostr(Meses)+' mes(es)';
  End;

END;


FUNCTION CHECKTIME(Hora:String):Boolean;
BEGIN

  Result:=FALSE;

  If EmptyTime(Hora) Then
    Exit;

  Hora:=AllTrim(Hora);

  If Length(Hora)>5 Then
    Hora:=Copy(Hora,1,5);

  If Length(OnlyNumbersOnString(Hora))<>4 Then
    Exit;

  If Str2Num(Copy(Hora,1,2))>23 Then
    Exit;

  If Str2Num(Copy(Hora,4,2))>59 Then
    Exit;

  Result:=TRUE;
  
END;



FUNCTION TIMETOINT(Hora:String):Longint;
VAR MIN, Sinal : Longint;
BEGIN

  If Pos('-', Hora)=1 Then Begin
    Delete(Hora,1,1);
    Sinal:=-1;
  End Else Begin
    If Pos('+', Hora)=1 Then
      Delete(Hora,1,1);
    Sinal:=1;
  End;

{ Era assim até 20/02/15  não fazia contas acima de 23:59
  Hora:=Copy(Hora,1,5);
  Hora:=FormatTime(Hora);

  If Not CheckTime(Hora) Then Begin
    TIMETOINT:=0;
    Exit;
  End;

  MIN:=Strtoint(Copy(Hora,4,2));
  MIN:=MIN+(Strtoint(Copy(Hora,1,2))*60);

  Result:=MIN*Sinal;
}

  MIN:=Str2Num(Copy(Hora,Pos(':',Hora)+1,2));
  MIN:=MIN+(Str2Num(Copy(Hora,1,Pos(':',Hora)-1))*60);

  Result:=MIN*Sinal;

END;


FUNCTION TimeToMin ( Hora : String ) : Longint;
VAR MIN : Longint;
BEGIN

  Hora:=Copy(Hora,1,5);

  MIN:=Str2Num(Copy(Hora,4,2));
  MIN:=MIN+(Strtoint(Copy(Hora,1,2))*60);

  Result:=MIN;

END;


// Transforma hora completa em segundos
FUNCTION TIMETOSECONDS(Hora:String):Longint;
VAR INT : Longint;
    Seg : Longint;
    H   : String;
BEGIN

  Result:=-1;

  If Length(Hora)=5 Then
    Hora:=Hora+':00';

  If Length(Hora)<>8 then Exit;

  H:=Copy(Hora,1,5);
  Int:=TimeToMin(H);
  Int:=Int*60;

  Seg:=Str2Num(Copy(Hora,7,2));
  Int:=Int+Seg;

  Result:=INT;

END;



FUNCTION INTTOTIME(Hora:Longint):String;
VAR Min,Hor                             : Longint;
    T                                   : String;
    Negativa                            : Boolean;
BEGIN

  If Hora<0 Then Begin
    Negativa:=TRUE;
    Hora:=Abs(Hora);
  End Else
    Negativa:=FALSE;

  Hor:=Hora DIV 60;
  Min:=Hora - (Hor*60);

  T:=Inttostr(Hor)+':'+FillLeft(2,Min);

  If Pos(':',T)=2 Then T:='0'+T;

//  If Length(T)<>5 Then Insert('0',T,4);

  If Negativa Then
    Result:='-'+T
  Else
    Result:=T;

END;



(* F indica função formatada com indicador de sinal + ou - *)
FUNCTION InttoTimeF(Hora:Longint):String;
BEGIN
  Result:=InttoTime(Hora);
  If Pos('-', Result)=0 Then
    If Result<>'00:00' Then
      Result:='+'+Result;
END;


FUNCTION FORMATTIME(Hora:String):String;
VAR H,M:Word;
    HS,MS:String[2];
BEGIN

  If Hora='00:00' Then Begin
    FormatTime:=Hora;
    Exit;
  End;

  If Pos(':', Hora)=0 Then
    Insert(':', Hora, 3);

  HS:=Copy(Hora,1,2);
  MS:=Copy(Hora,4,2);

  If Str2Num(Hs)>23 Then
    HS:='  ';
  If Str2Num(Ms)>59 Then
    MS:='  ';


  If HS='  ' Then HS:=Copy(TimeNow,1,2);
  If MS='  ' Then MS:=Copy(TimeNow,4,2);


  H:=Str2Num(Rtrim(Ltrim(HS)));
  M:=Str2Num(Rtrim(Ltrim(MS)));

  If H<10 Then HS:='0'+Inttostr(H);
  If M<10 Then MS:='0'+Inttostr(M);

  FormatTime:=HS+':'+MS;

END;



FUNCTION FORMATTIMEs(Hora:String):String;
VAR
  H, M, S                                : Word;
  St                                     : String;

BEGIN

  If ((Hora='00:00:00') Or (Hora='  :  :  ')) Or (Length(Hora)<>8) Then Begin
    Result:=TimeNow;
    Exit;
  End;

  St:=RemoveAll(':', Hora);

  H:=Str2Num(AllTrim(Copy(St,1,2)));
  M:=Str2Num(AllTrim(Copy(St,3,2)));
  S:=Str2Num(AllTrim(Copy(St,5,2)));


  If H<=0 Then Begin
    If Copy(St,1,2)='  ' Then
      H:=Str2Num(AllTrim(Copy(TimeNow,1,2)));
  End;

  If H=24 Then
    H:=0;

  If H>23 Then
    H:=Str2Num(AllTrim(Copy(TimeNow,1,2)));



  If M<=0 Then Begin
    If Copy(St,3,2)='  ' Then
      M:=Str2Num(AllTrim(Copy(TimeNow,4,2)));
  End;

  If M=60 Then
    M:=0;

  If M>60 Then
    M:=Str2Num(AllTrim(Copy(TimeNow,4,2)));




  If S<=0 Then Begin
    If Copy(St,5,2)='  ' Then
      S:=Str2Num(AllTrim(Copy(TimeNow,7,2)));
  End;

  If S=60 Then
    S:=0;

  If S>60 Then
    S:=Str2Num(AllTrim(Copy(TimeNow,7,2)));


  Result:=FillLeft(2,H)+':'+FillLeft(2,M)+':'+FillLeft(2,S);


END;


FUNCTION ENCODEPDV ( St : String ) : String;
VAR
  Csum, Data   : String;
BEGIN

  Data:=Encode(St, 7);

  cSum:=ReturnCheckSum(Data, 16, 2);

  cSum:=cSum+cSum+cSum+cSum+cSum;

  Data:=Data+Copy(cSum,1,5);

  Result:=Data;


END;


FUNCTION DECODEPDV ( St : String; VAR Decoded : String ) : Boolean;
VAR
  Csum, cSumToCheck, Data   : String;
BEGIN

  Result:=FALSE;
  Decoded:='';

  Data:=St;

  cSumToCheck:=Copy(Data, Length(St)-4, 5);
  Delete(Data, Length(Data)-4, 10);

  cSum:=ReturnCheckSum(Data, 16, 2);

  cSum:=cSum+cSum+cSum+cSum+cSum;

  If cSumToCheck<>Copy(cSum,1,5) Then Exit;

  Data:=Decode(Data, 7);

  Decoded:=Data;
  Result:=TRUE;


END;



(* Este encode gera um código numerico relativo ao que foi solicitado *)
FUNCTION ENCODE_BIN ( St : String; KeyDe1_30 : Word ) : String;
VAR
  Csum, Data   : String;
BEGIN

  If (KeyDe1_30<=30) OR (KeyDe1_30>30) Then
    KeyDe1_30:=16;

  Data:=Encode(St, KeyDe1_30);

  cSum:=ReturnCheckSum(Data, KeyDe1_30, 2);

  cSum:=cSum+cSum+cSum+cSum+cSum;

  Data:=StrChr2Bin(Data);
  Data:=StrChr2Bin(GereStringAleatoria(KeyDe1_30))+Data;

  Data:=Data+Copy(cSum,1,5);


  cSum:=ReturnCheckSum(Data, KeyDe1_30, 2);
  cSum:=cSum+cSum+cSum+cSum+cSum;
  Data:=Data+Copy(cSum,1,5);


  Result:=Data;


END;


FUNCTION DECODE_BIN ( St : String; KeyDe1_30 : Word; VAR Decoded : String ) : Boolean;
VAR
  Csum, cSumToCheck, Data   : String;
BEGIN

  If (KeyDe1_30<=30) OR (KeyDe1_30>30) Then
    KeyDe1_30:=16;

  Result:=FALSE;
  Decoded:='';

  Data:=St;


  cSumToCheck:=Copy(Data, Length(St)-4, 5);
  Delete(Data, Length(Data)-4, 10);
  cSum:=ReturnCheckSum(Data, KeyDe1_30, 2);
  cSum:=cSum+cSum+cSum+cSum+cSum;
  If cSumToCheck<>Copy(cSum,1,5) Then Exit;


  cSumToCheck:=Copy(Data, Length(Data)-4, 5);
  Delete(Data, Length(Data)-4, 10);

  Delete(Data,1,(KeyDe1_30*3));
  Data:=StrBin2Chr(Data);

  cSum:=ReturnCheckSum(Data, KeyDe1_30, 2);

  cSum:=cSum+cSum+cSum+cSum+cSum;

  If cSumToCheck<>Copy(cSum,1,5) Then Exit;

  Data:=Decode(Data, KeyDe1_30);

  Decoded:=Data;
  Result:=TRUE;


END;



FUNCTION ENCODE(ST:String;P:Longint):String;
VAR
  C                                         : WORD;
  S                                         : STRING;
  L                                         : STRING;
  
BEGIN

  Result:='';
  If length(St)<=0 Then Exit;

  C:=1;
  L:=ST;

  S:=Inttostr(P);

  REPEAT
    L[C]:=Chr(Ord(L[C])+StrtoInt(S[1])+1);
    C:=C+1;
  UNTIL C>LENGTH(L);
  
  ENCODE:=L;
  
END;


FUNCTION DECODE(ST:String;P:Longint):String;
VAR C:WORD; S:STRING; L:STRING;
BEGIN

  Result:='';
  If length(St)<=0 Then Exit;
  
	C:=1;
	L:=ST;
	REPEAT
		S:=inttoStr(P);
		L[C]:=Chr(Ord(L[C])-strtoInt(S[1])-1);
	C:=C+1;
	UNTIL C>LENGTH(L);
	DECODE:=L;
END;


FUNCTION FORMATPATH(Path:String):String;
VAR
  CH : String[2];
BEGIN

  CH:=Copy(Path,Length(Path),1);
  If Ch<>'\' Then Path:=Path+'\';
  If Path='\' Then Path:='';

  FormatPath:=Path;

END;



FUNCTION  Date2Int(Data:String):Longint;
VAR C  : Longint;
BEGIN

  If Not CheckDate(Data) Then Begin
    Date2Int:=0;
    Exit;
  End;

  C:=Str2Num(Copy(Data,1,2));
  C:=C+(Str2Num(Copy(Data,4,2))*31);
  Date2Int:=C+(Str2Num(Copy(Data,7,4))*372);  // ERA 365

END;



(* Date2Int partindo de 01/01/2000 para diminuir o resultado *)
FUNCTION  Date2IntS ( Data : String ):Longint;
VAR C  : Longint;
BEGIN

  If Not CheckDate(Data) Then Begin
    Result:=0;
    Exit;
  End;

  Result:=Date2Int(Data)-Date2Int('01/01/2000');

END;


(* Int2Date partindo de 01/01/2000 para diminuir o resultado *)
FUNCTION  Int2DateS ( Data : Longint ) : String;
VAR C  : Longint;
BEGIN

  Result:='';

  Data:=Data+Date2Int('01/01/2000');

  Result:=Int2Date(Data);

END;



FUNCTION  Int2Date(Data:Longint):String;
VAR C,DT,Ano,Mes,Dia  : Longint;
BEGIN

  Result:='';
  If Data<=0 Then
    Exit;

  DT:=Data;

  ANO:=DT DIV 372;
  DT:=DT - (ANO*372);

  If DT<32 Then Begin
    Dec(Ano);
    Dt:=Dt+372;
  End;

  MES:=DT DIV 31;
  DIA:=DT - (MES*31);

  If Dia=0 Then Begin
    Dec(Mes);
    Dia:=31;
  End;

  Int2Date:=FillLeft(2,Dia)+'/'+FillLeft(2,Mes)+'/'+FillLeft(4,Ano);

END;


FUNCTION Int2DateShort (Data:Longint):String;
VAR
  Dt     : String;
BEGIN
  Dt:=Int2Date(Data);
  If Length(Dt)=10 Then
    Delete(Dt,7,2);
  Result:=Dt;
END;


FUNCTION TIMENOW:String;
VAR
  Hora : String;
  Dt   : TSystemTime;
BEGIN
(*  Hora:=TimeToStr(Time);

  If Pos(':',Hora)=2 Then
    Insert('0',Hora,1);

  If Pos(':',Hora)=5 Then
    Insert('0',Hora,4);

  If Length(Hora)=7 Then
    Insert('0',Hora,7);
*)

  GetLocalTime(Dt);
  Hora:=FillLeft(2,Dt.wHour)+':'+FillLeft(2,Dt.wMinute)+':'+FillLeft(2,Dt.wSecond);
  Result:=HORA;
  
END;



FUNCTION READ_TXTFILE_LINE(FileName:String;LineNumber:Word):String;
VAR
  Arq : TextFile;
  L   : String;
  C   : Word;

LABEL FIM;
BEGIN
{$I-}

  Result:='';

  AssignFile(Arq,FileName);
  Reset(Arq);

  IF IOResult<>0 Then
    Goto FIM;

  C:=1;
  REPEAT

    Readln(Arq,L);
    IF IOResult<>0 Then
      Goto FIM;

    If C=LineNumber Then Begin
      Result:=L;
      Goto FIM;
    End;

    C:=C+1;
  UNTIL EOF(ARQ);

FIM:

  CloseFile(Arq);
  ClearIOResult;

END;


FUNCTION MesExtenso(Mes:Word):String;
Begin

  Case Mes Of
    1  : MesExtenso:='Janeiro';
    2  : MesExtenso:='Fevereiro';
    3  : MesExtenso:='Março';
    4  : MesExtenso:='Abril';
    5  : MesExtenso:='Maio';
    6  : MesExtenso:='Junho';
    7  : MesExtenso:='Julho';
    8  : MesExtenso:='Agosto';
    9  : MesExtenso:='Setembro';
    10 : MesExtenso:='Outubro';
    11 : MesExtenso:='Novembro';
    12 : MesExtenso:='Dezembro';
  End;

End;



FUNCTION MesExtensoShort(Mes:Word):String;
Begin

  Case Mes Of
    1  : Result:='Jan';
    2  : Result:='Fev';
    3  : Result:='Mar';
    4  : Result:='Abr';
    5  : Result:='Mai';
    6  : Result:='Jun';
    7  : Result:='Jul';
    8  : Result:='Ago';
    9  : Result:='Set';
    10 : Result:='Out';
    11 : Result:='Nov';
    12 : Result:='Dez';
  End;

End;


FUNCTION  DATE2DATEMES(Data:String):String;  // Converte para 12-dez-1998
VAR C  : Longint;
    Mes: String[3];
    Sai: String[11];
BEGIN

  C:=StrtoInt(Copy(Data,4,2));

  Case C Of
    1  : Mes:='Jan';
    2  : Mes:='Fev';
    3  : Mes:='Mar';
    4  : Mes:='Abr';
    5  : Mes:='Mai';
    6  : Mes:='Jun';
    7  : Mes:='Jul';
    8  : Mes:='Ago';
    9  : Mes:='Set';
    10 : Mes:='Out';
    11 : Mes:='Nov';
    12 : Mes:='Dez';
  End;


  Sai:=copy(Data,1,2);
  DATE2DATEMES:=Sai+'-'+Mes+'-'+Copy(Data,7,4);

END;


FUNCTION ADD_IN_DATE_LONG ( Data : Longint; DAys : Longint ) : Longint;
VAR  Dt, Res : String;
BEGIN

  If Days<=0 Then Begin
    Result:=Data;
    Exit;
  End;

  Dt:=Int2Date(Data);
  Res:=Add_In_date(Dt, Days);
  Result:=Date2Int(Res);
END;

FUNCTION  ADD_IN_DATE(Data:String; Days:Longint):String; // Adiciona um dia na data;
VAR  C,Dia,Mes,Ano : Word;
LABEL FIM,YEAR;
BEGIN

  If Days<=0 Then Begin
    Result:=Data;
    Exit;
  End;

  If Not CheckDate(Data) Then Exit;

  Dia:=StrtoInt(Copy(Data,1,2));
  Mes:=StrtoInt(Copy(Data,4,2));
  Ano:=StrtoInt(Copy(Data,7,4));
  C:=1;

  REPEAT

    Dia:=Dia+1;

    Case Mes Of
      1  : If Dia >= 32 Then Begin
             Mes:=Mes+1;
             Dia:=1;
             Goto Year
           End;
      2  : If Not Bissexto(Ano) Then Begin
             If Dia >= 29 Then Begin
               Mes:=Mes+1;
               Dia:=1;
               Goto Year;
             End;
           End Else Begin
             If Dia >= 30 Then Begin
               Mes:=Mes+1;
               Dia:=1;
               Goto Year;
             End;
           End;
      3  : If Dia >= 32 Then Begin
             Mes:=Mes+1;
             Dia:=1;
             Goto Year;
           End;
      4  : If Dia >= 31 Then Begin
             Mes:=Mes+1;
             Dia:=1;
             Goto Year;
           End;
      5  : If Dia >= 32 Then Begin
             Mes:=Mes+1;
             Dia:=1;
             Goto Year;
           End;
      6  : If Dia >= 31 Then Begin
             Mes:=Mes+1;
             Dia:=1;
             Goto Year;
           End;
      7  : If Dia >= 32 Then Begin
             Mes:=Mes+1;
             Dia:=1;
             Goto Year;
           End;
      8  : If Dia >= 32 Then Begin
             Mes:=Mes+1;
             Dia:=1;
             Goto Year;
           End;
      9  : If Dia >= 31 Then Begin
             Mes:=Mes+1;
             Dia:=1;
             Goto Year;
           End;
      10 : If Dia >= 32 Then Begin
             Mes:=Mes+1;
             Dia:=1;
             Goto Year;
           End;
      11 : If Dia >= 31 Then Begin
             Mes:=Mes+1;
             Dia:=1;
             Goto Year;
           End;
      12 : If Dia >= 32 Then Begin
             Mes:=Mes+1;
             Dia:=1;
             Goto Year;
           End;
    End;

    YEAR:
    If Mes>12 Then Begin
      Ano:=Ano+1;
      Mes:=1;
    End;

    Inc(C);
  UNTIL C>Days;


FIM:

  Add_In_Date:=FillLeft(2,Dia)+'/'+FillLeft(2,Mes)+'/'+FillLeft(4,Ano);


END;


FUNCTION DDMMAAAA_2_AAAAMMDD ( Data : String ) : String;
VAr
  St     : String;
BEGIN
  Data:=FormatDate(Data);
  St:=Copy(Data,7,4);
  St:=St+'/'+Copy(Data,4,2);
  St:=St+'/'+Copy(Data,1,2);
  Result:=ST;
END;


FUNCTION DDMMAAAA_2_AAAAMMDD_NOBAR ( Data : String ) : String;
VAr
  St     : String;
BEGIN
  Data:=FormatDate(Data);
  St:=Copy(Data,7,4);
  St:=St+Copy(Data,4,2);
  St:=St+Copy(Data,1,2);
  Result:=ST;
END;


FUNCTION  DEC_IN_DATE_LONG( Data : Longint; Days:Longint) : Longint; // Adiciona um dia na data;
VAR
  Dt    : String;
BEGIN

  Dt:=Dec_In_Date(Int2Date(Data), Days);
  Result:=DAte2Int(Dt);
  
END;


FUNCTION  DEC_IN_DATE(Data:String; Days:Longint):String; // Adiciona um dia na data;
VAR  C,Dia,Mes,Ano : Word;

LABEL FIM,YEAR;
BEGIN

  Dia:=StrtoInt(Copy(Data,1,2));
  Mes:=StrtoInt(Copy(Data,4,2));
  Ano:=StrtoInt(Copy(Data,7,4));
  C:=1;

  REPEAT

    Dia:=Dia-1;

    Case Mes Of
    1  : If Dia = 0 Then Begin
           Mes:=12;
           Dia:=31;
           Dec(Ano);
           Goto Year
         End;
    2  : If Dia = 0 Then Begin
           Mes:=Mes-1;
           Dia:=31;
           Goto Year
         End;

    3  : If Dia=0 Then Begin
           Mes:=Mes-1;
           If Bissexto(Ano) Then
             Dia:=29
           Else
             Dia:=28;
           Goto Year;
         End;

    4  : If Dia = 0 Then Begin
           Mes:=Mes-1;
           Dia:=31;
           Goto Year;
         End;
    5  : If Dia = 0 Then Begin
           Mes:=Mes-1;
           Dia:=30;
           Goto Year;
         End;
    6  : If Dia = 0 Then Begin
           Mes:=Mes-1;
           Dia:=31;
           Goto Year;
         End;
    7  : If Dia = 0 Then Begin
           Mes:=Mes-1;
           Dia:=30;
           Goto Year;
         End;
    8  : If Dia = 0 Then Begin
           Mes:=Mes-1;
           Dia:=31;
           Goto Year;
         End;
    9  : If Dia = 0 Then Begin
           Mes:=Mes-1;
           Dia:=31;
           Goto Year;
         End;
    10 : If Dia = 0 Then Begin
           Mes:=Mes-1;
           Dia:=30;
           Goto Year;
         End;
    11 : If Dia = 0 Then Begin
           Mes:=Mes-1;
           Dia:=31;
           Goto Year;
         End;
    12 : If Dia = 0 Then Begin
           Mes:=Mes-1;
           Dia:=30;
           Goto Year;
         End;
    End;

  YEAR:

    C:=C+1;
    UNTIL C>Days;


FIM:


  Dec_In_Date:=FillLeft(2,Dia)+'/'+FillLeft(2,Mes)+'/'+FillLeft(4,Ano);


END;






FUNCTION  DATEMES2DATE(Data:String):String;  // Reverte para 12-12-1998
VAR C  : Longint;
    Mes: String[3];
    Sai: String[11];
BEGIN

  Mes:=UpperCase(Copy(Data,4,3));

  If Mes='JAN' Then C:=1;
  If Mes='FEV' Then C:=2;
  If Mes='MAR' Then C:=3;
  If Mes='ABR' Then C:=4;
  If Mes='MAI' Then C:=5;
  If Mes='JUN' Then C:=6;
  If Mes='JUL' Then C:=7;
  If Mes='AGO' Then C:=8;
  If Mes='SET' Then C:=9;
  If Mes='OUT' Then C:=10;
  If Mes='NOV' Then C:=11;
  If Mes='DEZ' Then C:=12;

  DATEMES2DATE:=Copy(Data,1,2)+'/'+FillLeft(2,C)+'/'+Copy(Data,8,4);


END;


PROCEDURE WriteInTextFile(Arquivo:String;Msg:String);
VAR  ARQ : TextFile;
BEGIN
{$i-}
  AssignFile(Arq,Arquivo);
  Append(Arq);
  IF IOResult<>0 Then
    Rewrite(Arq);
  ClearIOResult;
  Writeln(Arq,MSG);
  ClearIOResult;
  CloseFile(Arq);
  ClearIOResult;

END;


FUNCTION RewriteInTextFile( Arquivo : String; Msg : String ) : Boolean;
VAR  ARQ : TextFile;
LABEL FIM;
BEGIN
{$i-}

  Result:=FALSE;

  AssignFile(Arq,Arquivo);
  Rewrite(Arq);
  IF IOResult<>0 Then Goto FIM;

  Writeln(Arq,MSG);
  IF IOResult<>0 Then Goto FIM;

  Flush(Arq);
  ClearIOResult;

  Result:=TRUE;

FIM:

  CloseFile(Arq);
  ClearIOResult;

END;



FUNCTION  COUNT_TXTFILE_LINES(FileName:String):Longint;
VAR
  Arq : TextFile;
  C   : Longint;
  St  : String[2];
BEGIN

  Count_TXTFile_Lines:=0;

  AssignFile(Arq,FileName);
  {$I-} Reset(Arq); 

  If IOResult<>0 Then Exit;

  C:=0;
  REPEAT
    Readln(Arq,ST);
    Inc(C);
  UNTIL EOF(ARQ);
  CloseFile(Arq);

  Count_TXTFile_Lines:=C;

END;


FUNCTION CurrentDir:String;
VAR  D : String;
BEGIN
  GetDir(0,D);
  CurrentDir:=FormatPath(D);
End;




FUNCTION  ConvertTXTFILE(Arq_Entrada:String;Arq_Saida:String;Tam_Linha:Word):Boolean;
VAR
  Arq,ArqT : TextFile;
  ST       : String;
BEGIN

  ConvertTXTFILE:=True;
  AssignFile(Arq,Arq_Entrada);
  {$i-} Reset(Arq);
  IF IOResult<>0 Then Begin
    ConvertTXTFILE:=FALSE;
    Exit;
  End;
  AssignFile(ArqT,Arq_Saida);
  {$i-} Rewrite(ArqT); 
  IF IOResult<>0 Then Begin
    ConvertTXTFILE:=FALSE;
    Exit;
  End;

  REPEAT
    Readln(Arq,ST);
    REPEAT
      Writeln(ArqT,Copy(ST,1,Tam_Linha));
      Delete(ST,1,Tam_Linha);
    UNTIL Length(ST)<=1;
  UNTIL EOF(ARQ);
  CloseFile(Arq);
  CloseFIle(ArqT);
END;



Function CreateArq(tam:Word;Extensao_Com_Ponto:String):String;
VAR C:Word; A:String;
Begin
     C:=0; A:='';
       Repeat
         A:=A+CHR(Random(30)+65);
         C:=C+1;
       Until C>Tam;
     A:=A+Extensao_Com_Ponto;
     CreateArq:=A;
End;




FUNCTION UnformatCGC_IE( CGC_OU_IE : String ) : String;
VAR
  L : String;
BEGIN
  L:=CGC_OU_IE;
  REPEAT
    If Pos('.',L)<>0 Then Delete(L,Pos('.',L),1);
  UNTIL Pos('.',L)=0;
  REPEAT
    If Pos('/',L)<>0 Then Delete(L,Pos('/',L),1);
  UNTIL Pos('/',L)=0;
  REPEAT
    If Pos('-',L)<>0 Then Delete(L,Pos('-',L),1);
  UNTIL Pos('-',L)=0;
  REPEAT
    If Pos('(',L)<>0 Then Delete(L,Pos('(',L),1);
  UNTIL Pos('(',L)=0;
  REPEAT
    If Pos(')',L)<>0 Then Delete(L,Pos(')',L),1);
  UNTIL Pos(')',L)=0;

  UnformatCGC_IE:=L;

END;





FUNCTION UnformatDate( Data : String ) : String;
VAR
  L : String;
BEGIN
  If Not CheckDate(Data) Then Begin
    UnformatDate:='';
    Exit;
  End;

  L:=Data;
  Delete(L,3,1);
  Delete(L,5,1);
  UnformatDate:=L;

END;


FUNCTION DateBR_2_US_Unformatted ( Data : String ) : String;
VAR
  L : String;
BEGIN
  If Not CheckDate(Data) Then Begin
    DateBR_2_US_Unformatted :='';
    Exit;
  End;

  L:=Copy(Data,7,4);
  L:=L+Copy(Data,4,2);
  L:=L+Copy(Data,1,2);

  DateBR_2_US_Unformatted :=L;
END;

FUNCTION DateBR_2_US_Formatted ( Data : String ) : String;
VAR
  L : String;
BEGIN
  If Not CheckDate(Data) Then Begin
    Result:='';
    Exit;
  End;

  L:=Copy(Data,7,4);
  L:=L+'/'+Copy(Data,4,2);
  L:=L+'/'+Copy(Data,1,2);

  Result :=L;
END;


FUNCTION Date_2_MMDDAA_Formated ( Data : String ) : String;
VAR
  M, D, A    : String;
BEGIN

  If Not CheckDate(Data) Then Begin
    Result:='00/00/00';
    Exit;
  End;

  A:=RemoveAll('/',Data);

  D:=Copy(A,1,2);
  Delete(A,1,2);

  M:=Copy(A,1,2);
  Delete(A,1,2);

  Delete(A,1,2);

  Result:=M+'/'+D+'/'+A;
END;


Function FillLeft_Space( Tamanho , Numero : Longint):String;
Begin
   FillLeft_Space:=Replicate(' ',Tamanho-Length(Inttostr(Numero)))+Inttostr(Numero);
End;


Function UnformatMoney ( Valor : String ) : String;
VAr
  L : String;
Begin
  L:=Valor;
  If Pos(',',L)<>0 Then
    Delete(L,Pos(',',L),1);
  UnformatMoney:=L;
End;


// Retorna True se a string for um número e falso se não. (NAO Aceita negativo)
FUNCTION NUM ( Numero : String ) : Boolean;
VAR
  C : Word;
BEGIN

  If Length(Numero)=0 Then Begin
    Num:=False;
    Exit;
  End;

  Num:=True;
  C:=1;

  REPEAT
    If Pos(Numero[C],'0123456789')=0 Then Begin
      Num:=False;
      Exit;
    End;
    Inc(C);
  UNTIL C>Length(Numero);

END;



// Retorna True se a string for um número e falso se não.
FUNCTION Is_Number ( Numero : String ) : Boolean; //  (Aceita negativo)
VAR
  C : Word;
BEGIN

  If Length(Numero)=0 Then Begin
    Result:=False;
    Exit;
  End;

  Result:=True;
  C:=1;
  REPEAT
    If (Numero[C]='-') AND (C<>1) Then Begin
      Result:=False;
      Exit;
    End;
    If Pos(Numero[C],'-0123456789')=0 Then Begin
      Result:=False;
      Exit;
    End;
    Inc(C);
  UNTIL C>Length(Numero);

  If Pos('-',Numero)>1 Then
    Result:=FALSE;

END;


// Retorna True se a string for um valor monetário e falso se não.
FUNCTION Is_Currency ( Numero : String ) : Boolean; //  (Aceita negativo)
VAR
  C : Word;
BEGIN

  If Length(Numero)=0 Then Begin
    Result:=False;
    Exit;
  End;

  Result:=True;
  C:=1;

  REPEAT

    If (Numero[C]='-') AND (C<>1) Then Begin
      Result:=False;
      Exit;
    End;

    If Pos(Numero[C],'-0123456789.,')=0 Then Begin
      Result:=False;
      Exit;
    End;
    
    Inc(C);
  UNTIL C>Length(Numero);

  If Pos('-',Numero)>1 Then
    Result:=FALSE;

END;



// Retorna True se a string for um número e falso se não.
FUNCTION Valid_Currency ( Numero : String ) : Boolean; //  (Aceita negativo)
BEGIN

  Try
    StrtoFloat(Numero);
    Result:=TRUE;
  Except
    Result:=FALSE;
  End;

END;


// Retorna True se a string for um número e falso se não.
FUNCTION Valid_Longint ( Numero : String ) : Boolean; //  (Aceita negativo)
BEGIN

  Result:=TRUE;
  Try
    StrtoInt(Numero);
  Except
    Result:=FALSE;
  End;

END;


// Pega o Tratamento Utilizado no Nome  Ex: Sr. Daniel  -> Sr.
FUNCTION Get_Tratamento( NomeCompleto : String ) : String;
VAR
  N      : String;
BEGIN
  N:=NomeCompleto;
  Get_Tratamento:='';
  If Pos('.',N)<>0 Then Begin
    Get_Tratamento:=Copy(N,1,Pos('.',N));
    Exit;
  End;
END;

// Retorna o Primeiro Nome Já Retirando o Tratamento.
FUNCTION Get_FirstName( NomeCompleto : String ) : String;
VAR
  N      : String;
BEGIN
  N:=NomeCompleto;
  If Pos('.',N)<>0 Then Delete(N,1,Pos('.',N));
  N:=Rtrim(Ltrim(N));
  Get_FirstName:=N;
  If Pos(' ',N)<>0 Then Begin
    N:=Copy(N,1,Pos(' ',N)-1);
    Get_FirstName:=N;
  End;
END;

// Retorna os Nomes do Meio
FUNCTION Get_NomesMeio ( NomeCompleto : String ) : String;
VAR
  N,X    : String;
  P,LastPos      : Word;

BEGIN

  Get_NomesMeio:='';
  N:=NomeCompleto;
  If Pos('.',N)<>0 Then Delete(N,1,Pos('.',N));
  N:=Rtrim(Ltrim(N));

  If Pos(Get_FirstName(N)+' ',N)<>0 Then Begin
    Delete(N,1,Pos(Get_FirstName(N),N)+Length(Get_FirstName(N)));

    If Pos(' ',N)=0 Then Begin   // Nao tem Nome do Meio;
      Get_NomesMeio:=''; Exit;
    End;

    X:=N;
    P:=0;
    REPEAT
      If Pos(' ',X)<>0 Then Begin
        Inc(P);
        LastPos:=Pos(' ',X);
        Delete(X,LastPos,1);
      End;
    UNTIL Pos(' ',X)=0;

    X:=Copy(N,LastPos+P,50);  // Ultimo Nome;

    Delete(N,Pos(X,N),50);

    Get_NomesMeio:=Rtrim(Ltrim(N));
  End;

END;


// Retorna o Ultimo Nome;
FUNCTION Get_LastName ( NomeCompleto : String ) : String;
VAR
  N,X    : String;
  P,LastPos      : Word;

BEGIN

  Get_LastName:='';
  N:=NomeCompleto;
  If Pos('.',N)<>0 Then Delete(N,1,Pos('.',N));
  N:=Rtrim(Ltrim(N));

  If Pos(Get_FirstName(N)+' ',N)<>0 Then Begin
    Delete(N,1,Pos(Get_FirstName(N),N)+Length(Get_FirstName(N)));

    X:=N;
    P:=0;
    LastPos:=1;
    REPEAT
      If Pos(' ',X)<>0 Then Begin
        Inc(P);
        LastPos:=Pos(' ',X);
        Delete(X,LastPos,1);
      End;
    UNTIL Pos(' ',X)=0;

    N:=Copy(N,LastPos+P,50);  // Ultimo Nome;
    Get_LastName:=Rtrim(Ltrim(N));
  End;

END;

// Faz a comparação retornando um valor numério para falar se a string é maior, menor ou igual
// a outra informada.
// Retorna 0 Se  Campo1 = Campo2
// Retorna 1 Se  Campo1 > Campo2
// Retorna -1 se Campo1 < Campo2
Function IsBigger( Campo1, Campo2: String ) : Longint;
VAR
  C      : Longint;
  L1,L2  : String[200];

BEGIN

  // Coloquei o remova acentos aqui...  18/07/2000

  L1:=RemovaAcentos(Rtrim(Ltrim(UpperCase(campo1))));
  L2:=RemovaAcentos(Rtrim(Ltrim(UpperCase(campo2))));

  // Em 01/2015, César pegou um caso de erro relatado pelo suporte e descobriu que existia uma diferença entre
  // ordenação feita pelo componente TSTRINGLIST e ordenação via ORD em relação a caracteres especiais.
  // Fez este tratamento abaixo para que os caracteres especiais e tivemos sucesso!
(*
  L1:=RemoveChars('-()_[]{}*.,;:/\|#@', Campo1);
  L2:=RemoveChars('-()_[]{}*.,;:/\|#@', Campo2);
*)

  C:=1;
  REPEAT
    If OrdAlfabetico(L1[C]) > OrdAlfabetico(L2[C]) Then Begin
      IsBigger:=1;
      Exit;
    End;
    If OrdAlfabetico(L1[C]) < OrdAlfabetico(L2[C]) Then Begin
      IsBigger:=-1;
      Exit;
    End;
    Inc(C);
  UNTIL (C>Length(L1)) Or (C>Length(L2));

  If Length(L1) < Length(L2) Then IsBigger:=-1 Else
    If Length(L1) = Length(L2) Then IsBigger:=0 Else
      IsBigger:=1;

END;



FUNCTION  Str_InvalidChars ( Linha : String ) : Boolean;   // Verifica se a string tem valores sem ser numeros e letras
VAR
  C       : Word;
  L       : String;
BEGIN

  L := UPPERCASE(Linha);

  Str_InvalidChars:=True;

  If Length(L)=0 Then Exit;

  C:=1;
  REPEAT
    If (Ord(L[C])<48) AND (Ord(L[C])<>32) Then Exit;
    If (Ord(L[C])>57) AND (Ord(L[C])<65) Then Exit;
    If Ord(L[C])>90 Then Exit;
    Inc(C);
  UNTIL C>Length(L);

  Str_InvalidChars:=False;

END;


// Retorna true se o campo data foi deixado em branco
FUNCTION  EmptyDate ( Data : String ) : Boolean;
BEGIN
  If Data='  /  /    ' Then EmptyDate:=True Else EmptyDate:=False;
END;

FUNCTION  EmptyTime ( Hora : String ) : Boolean;
BEGIN
  If Hora='  :  ' Then
    Result:=True
  Else
    Result:=False;
END;


// Converte os acentos em minúsculo para acentos em maiúsculos
FUNCTION BlasterUpper( Linha : String ) : String;
VAR
  L      : String;
  C      : Longint;
BEGIN

  L:=UpperCase(Linha);

  REPEAT
    C:=Pos('é',L);
    If C<>0 Then Begin
      L[C]:='É';
//      Delete(L,C,1);
//      Insert('É',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('ê',L);
    If C<>0 Then Begin
      L[C]:='Ê';
//      Delete(L,C,1);
//      Insert('Ê',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('ã',L);
    If C<>0 Then Begin
      L[C]:='Ã';
//      Delete(L,C,1);
//      Insert('Ã',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('â',L);
    If C<>0 Then Begin
      L[C]:='Â';
//      Delete(L,C,1);
//      Insert('Â',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('á',L);
    If C<>0 Then Begin
      L[C]:='Á';
//      Delete(L,C,1);
//      Insert('Á',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('à',L);
    If C<>0 Then Begin
      L[C]:='À';
//      Delete(L,C,1);
//      Insert('À',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('ç',L);
    If C<>0 Then Begin
      L[C]:='Ç';
//      Delete(L,C,1);
//      Insert('Ç',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('í',L);
    If C<>0 Then Begin
      L[C]:='Í';
//      Delete(L,C,1);
//      Insert('Í',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('ó',L);
    If C<>0 Then Begin
      L[C]:='Ó';
//      Delete(L,C,1);
//      Insert('Ó',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('ô',L);
    If C<>0 Then Begin
      L[C]:='Ô';
//      Delete(L,C,1);
//      Insert('Ô',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('õ',L);
    If C<>0 Then Begin
      L[C]:='Õ';
//      Delete(L,C,1);
//      Insert('Õ',L,C);
    End;
  UNTIL C=0;


  REPEAT
    C:=Pos('ú',L);
    If C<>0 Then Begin
      L[C]:='Ú';
//      Delete(L,C,1);
//      Insert('Ú',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('ü',L);
    If C<>0 Then Begin
      L[C]:='Ü';
//      Delete(L,C,1);
//      Insert('Ü',L,C);
    End;
  UNTIL C=0;

  BlasterUpper:=L;

END;


// Converte minúsculo para maiúsculos e tira todas as acentuacoes das letras
FUNCTION RemovaAcentos( Linha : String ) : String;
VAR
  L      : String;
  C      : Word;
BEGIN

  L:=UpperCase(Linha);

  REPEAT
    C:=Pos('É',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('E',L,C);
    End;
  UNTIL C=0;

  Substitua(L,'é','E');
  Substitua(L,'ç','C');
  Substitua(L,'ó','O');
  Substitua(L,'á','A');
  Substitua(L,'í','I');
  Substitua(L,'ã','A');
  Substitua(L,'â','A');
  Substitua(L,'õ','O');
  Substitua(L,'ô','O');

  REPEAT
    C:=Pos('Ë',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('E',L,C);
    End;
  UNTIL C=0;


  REPEAT
    C:=Pos('Ç',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('C',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Ê',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('E',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('È',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('E',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Í',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('I',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Ì',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('I',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Ï',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('I',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Á',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('A',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Ä',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('A',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Ã',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('A',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Â',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('A',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Ó',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('O',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Ô',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('O',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Õ',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('O',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Ó',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('O',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('ó',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('O',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Ö',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('O',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Ú',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('U',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Ü',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('U',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Ù',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('U',L,C);
    End;
  UNTIL C=0;

  RemovaAcentos:=L;

END;


FUNCTION Money2Float ( Valor_Monetario : String ) : Currency;
BEGIN

  Valor_Monetario:=RemoveAll('+',Valor_Monetario);

  Money2Float:=0.00;

  Valor_Monetario:=Rtrim(Ltrim(Valor_Monetario));
  Valor_Monetario:=RemovaZerosAEsquerda(Valor_Monetario);
  Valor_Monetario:=R_Format(Valor_Monetario);

  If Length(Valor_Monetario) < 17 Then   // Para nao ultrapassar o limite de valor FLOAT
    Money2Float:=StrToFloat(Valor_Monetario);

END;



FUNCTION Float2Money( Valor_Real : Currency ) : String;
BEGIN

  Float2Money:=R_Format(FloattoStr(Valor_Real));

END;


FUNCTION Float2MoneyBD( Valor_Real : Currency ) : String;
VAR  St  : String;
BEGIN
  St:=Float2Money(Valor_Real);
  Substitua(St, ',', '.');
  Result:=St;
END;

FUNCTION Float2Money3BD( Valor_Real : Currency ) : String;
VAR  St  : String;
BEGIN
  St:=Float2Money3(Valor_Real);
  Substitua(St, ',', '.');
  Result:=St;
END;

FUNCTION Float2Money4BD( Valor_Real : Currency ) : String;
VAR  St  : String;
BEGIN
  St:=Float2Money4(Valor_Real);
  Substitua(St, ',', '.');
  Result:=St;
END;



FUNCTION Float2Int ( Valor_Real : Currency ) : Longint;
VAR
  Valor  : String;
BEGIN

  Valor:=Float2Money(Valor_Real);
  Delete(Valor,Pos(',',Valor),Length(Valor));
  Float2Int:=StrtoInt(Valor);

END;


FUNCTION Float2Inteiro ( Valor_Real : Currency ) : Currency;
VAR
  Valor  : String;
BEGIN

  Valor:=Float2Money(Valor_Real);
  Delete(Valor,Pos(',',Valor),Length(Valor));
  Result:=StrToFloat(Valor);

END;


(* Checa se o período entre duas data é válido *)
FUNCTION Cheque_Periodo ( DataInicial : String; DataFinal : String ) : Boolean;
BEGIN

  Cheque_Periodo:=FALSE;

  If (Not CheckDate(DataInicial)) Or (Not CheckDate(DataFinal)) Then Exit;

  If Date2Int(DataInicial) > Date2Int(DataFinal) Then Exit;

  Cheque_Periodo:=TRUE;

END;


FUNCTION Str2Num( ValorString : String ) : Longint;
BEGIN

  If ValorString='-' Then Begin
    Result:=0;
    Exit;
  End;

  If Not Is_Number(ValorString) Then
    Str2Num:=0
  Else Begin
    If (StrToFloat(ValorString)>2147483647) Or (StrToFloat(ValorString)<-2147483647) Then
      Result:=0
    Else
      Str2Num:=StrtoInt(ValorString);
  End;

END;


FUNCTION Str2Float ( ValorString : String ) : Currency;
BEGIN
  Result:=0;

  If Not Is_Number(ValorString) Then Exit;

  Try
    Result:=StrToFloat(ValorString);
  Except
    Result:=0;
  End;
  
END;


FUNCTION Float2Str ( ValorCurrency : Currency ) : String;
BEGIN
  Result:='';

  Try
    Result:=FloattoStr(ValorCurrency);
  Except
    Result:='';
  End;

END;


Procedure ClearAllEditFields ( Formulario : Tform );
Var i : Integer;
begin

  If Formulario.ComponentCount<=0 Then Exit;

  for i := 0 to Formulario.ComponentCount -1 do
     if (Formulario.Components[i] is TEdit) or (Formulario.Components[i] is TAlignEdit) then
       begin
          TEdit(Formulario.Components[i]).Clear;
       end;

end;


Procedure ClearAllMaskEditFields ( Formulario : Tform );
Var i : Integer;
begin

  If Formulario.ComponentCount<=0 Then Exit;

  for i := 0 to Formulario.ComponentCount -1 do
     if Formulario.Components[i] is TMaskEdit then
       begin
          TMaskEdit(Formulario.Components[i]).Clear;
       end;

end;



Procedure SetAllCheckBox ( Formulario : Tform; Checked : Boolean );
Var i : Integer;
begin

  If Formulario.ComponentCount<=0 Then Exit;

  for i := 0 to Formulario.ComponentCount -1 do
     if Formulario.Components[i] is TCheckBox then
       begin
          TCheckBox(Formulario.Components[i]).Checked:=Checked;
       end;

end;


Procedure ClearAllMemoFields ( Formulario : Tform );
Var i : Integer;
begin

  If Formulario.ComponentCount<=0 Then Exit;

  for i := 0 to Formulario.ComponentCount -1 do
     if (Formulario.Components[i] is TMemo) then
       begin
          TMemo(Formulario.Components[i]).Clear;
       end;

end;


Procedure ClearAllRichEditFields ( Formulario : Tform );
Var i : Integer;
begin

  If Formulario.ComponentCount<=0 Then Exit;

  for i := 0 to Formulario.ComponentCount -1 do
     if (Formulario.Components[i] is TRichEdit) then
       begin
          TRichEdit(Formulario.Components[i]).Clear;
       end;

end;


Procedure CloseAllForms;
Var i : Integer;
begin

  for i := 0 to Application.ComponentCount -1 do
     if Application.Components[i] is Tform then begin
       If Application.Components[i].Name<>Application.MainForm.Name Then
         TForm(Application.Components[i]).Close;
     end;

end;


FUNCTION ExistMinimizedForms : Boolean;
Var i : Integer;
begin
  Result:=FALSE;
  for i := 0 to Application.ComponentCount -1 do
     if Application.Components[i] is Tform then begin
       If Application.Components[i].Name<>Application.MainForm.Name Then
         If TForm(Application.Components[i]).WindowState=wsMinimized Then Begin
           Result:=TRUE;
           Exit;
         End;
     end;

end;


PROCEDURE MinimizeAllMDI ( Exceto : TForm );
Var i : Integer;
begin
  for i := 0 to Application.ComponentCount -1 do
     if Application.Components[i] is Tform then begin
       If Application.Components[i].Name<>Application.MainForm.Name Then
         If Exceto<>NIL Then Begin
           If Application.Components[i].Name<>Exceto.Name Then
             TForm(Application.Components[i]).WindowState:=wsMinimized;
         End Else
           TForm(Application.Components[i]).WindowState:=wsMinimized;
     end;
end;


PROCEDURE NormalizeAllMDI ( Exceto : TForm );
Var i : Integer;
begin
  for i := 0 to Application.ComponentCount -1 do
     if Application.Components[i] is Tform then begin
       If Application.Components[i].Name<>Application.MainForm.Name Then
         If Exceto<>NIL Then Begin
           If Application.Components[i].Name<>Exceto.Name Then
             TForm(Application.Components[i]).WindowState:=wsNormal;
         End Else
           TForm(Application.Components[i]).WindowState:=wsNormal;
     end;
end;



Procedure SetAllComboBox ( Formulario : Tform; ItemIndex : Longint );
Var i : Integer;
begin

  If Formulario.ComponentCount<=0 Then Exit;

  for i := 0 to Formulario.ComponentCount -1 do
     if Formulario.Components[i] is TComboBox then
       begin
          TComboBox(Formulario.Components[i]).ItemIndex:=ItemIndex;
          TComboBox(Formulario.Components[i]).DroppedDown:=FALSE;
       end;

end;



Procedure ReadOnlyAllEditFields ( Formulario : Tform; ReadOnly : Boolean );
Var i : Integer;
begin

  If Formulario.ComponentCount<=0 Then Exit;

  for i := 0 to Formulario.ComponentCount -1 do
     if (Formulario.Components[i] is TEdit) or (Formulario.Components[i] is TAlignEdit) then
       begin
          TEdit(Formulario.Components[i]).ReadOnly:=Readonly;
       end;

end;



Procedure TurnAllEditFields ( Formulario : Tform; Enabled : Boolean );
Var i : Integer;
begin

  If Formulario.ComponentCount<=0 Then Exit;

  for i := 0 to Formulario.ComponentCount -1 do
     if (Formulario.Components[i] is TEdit) or (Formulario.Components[i] is TAlignEdit) then
       begin
          TEdit(Formulario.Components[i]).Enabled:=Enabled;
       end;

end;

Procedure TurnAllMaskEditFields ( Formulario : Tform; Enabled : Boolean );
Var i : Integer;
begin

  If Formulario.ComponentCount<=0 Then Exit;

  for i := 0 to Formulario.ComponentCount -1 do
     if (Formulario.Components[i] is TMaskEdit) then
       begin
          TMaskEdit(Formulario.Components[i]).Enabled:=Enabled;
       end;

end;


Procedure TurnAllRichEditFields ( Formulario : Tform; Enabled : Boolean );
Var i : Integer;
begin

  If Formulario.ComponentCount<=0 Then Exit;

  for i := 0 to Formulario.ComponentCount -1 do
     if (Formulario.Components[i] is TRichEdit) then
       begin
          TRichEdit(Formulario.Components[i]).Enabled:=Enabled;
       end;

end;



(* Campo deve estar com picth fixed, height -11, e negrito *)
PROCEDURE TEdit2Money( Campo : TEdit; Tamanho : Word );
VAR
  Menos            : Boolean;
  ST               : String;
  Numero           : Currency;

BEGIN

  Menos:=False;

  St:=R_Format(Campo.Text);
  Numero:=Money2Float(St);

  St:=FormatFloat('###,###,###,###,##0.00',Numero);

  If Length(St) < Tamanho Then
    St:=Space(Tamanho-Length(St))+St
  Else
    If Length(St) > Tamanho Then
      Delete(St,1,Length(St)-Tamanho);//St:=Copy(St,1,Tamanho);

  If Numero < 0 Then
    Campo.Font.Color:=ClRed
  Else
    Campo.Font.Color:=ClBlack;

  Campo.Text:=ST;
  Campo.Modified:=FALSE;

END;



(* Campo deve estar com picth fixed, height -11, e negrito *)
PROCEDURE Label2Money( Campo : TLabel; valor : Currency);
VAR
  Menos            : Boolean;
  ST               : String;
  Numero           : Currency;

BEGIN

  Menos:=False;

  St:=Float2Money(Valor);
  Numero:=Money2Float(St);

  St:=FormatFloat('###,###,###,###,##0.00',Numero);

  If Numero < 0 Then
    Campo.Font.Color:=ClRed
  Else
    Campo.Font.Color:=ClBlack;

  Campo.Caption:=ST;

END;


FUNCTION Float2Text( valor : Currency) : String;
VAR
  Menos            : Boolean;
  ST               : String;
  Numero           : Currency;

BEGIN

  Menos:=False;
  St:=Float2Money(Valor);
  Numero:=Money2Float(St);
  St:=FormatFloat('###,###,###,###,##0.00',Numero);
  Result:=ST;

END;


(* Formata valor com '.' e numero de casas decimais desejado
   For 90, 91, 92 ou 93 coloca a qde de casas necessárias para o numero de 4 até o numero final 0,1,2,3
*)
FUNCTION Float2TextEx( Valor : Currency; CasasDecimais : Word ) : String;
VAR
  Menos            : Boolean;
  ST, Decimais     : String;
  Numero           : Currency;
  C, I             : Word;


LABEL RES;
BEGIN

  St:=Float2Money4(Valor);

  Menos:=FALSE;
  If Pos('-',St)=1 Then Begin
    Menos:=TRUE;
    Delete(St,1,1);
  End;

  Decimais:=Copy(St,Pos(',',St)+1,4);  // Guardei as casas decimais
  Delete(St,Pos(',',St),5);


  If CasasDecimais>0 Then Begin

    If CasasDecimais>=90 Then Begin
      Substitua(Decimais, '0', ' ');
      Decimais:=rTrim(Decimais);
      Substitua(Decimais, ' ', '0');
      If Decimais=Replicate('0', Length(Decimais)) Then
        Decimais:='';
      Case CasasDecimais Of
        91 : If Length(Decimais)=0 Then
               Decimais:=Decimais+'0';
        92 : If Length(Decimais)<2 Then
               Decimais:=Decimais+Replicate('0', 2-Length(Decimais));
        93 : If Length(Decimais)<3 Then
               Decimais:=Decimais+Replicate('0', 3-Length(Decimais));
      End;

    End Else
      Decimais:=Copy(Decimais,1,CasasDecimais);

  End Else
    Decimais:='';


  C:=Length(St);
  If C<=3 Then Goto RES;

  I:=1;
  REPEAT
    If (I=3) AND (C>1) Then Begin
      Insert('.',St,C);
      I:=1;
    End Else
      Inc(I);
    Dec(C);
  UNTIL C=0;


RES:
  If Menos Then
    St:='-'+St;

  If Length(Decimais)>0 Then
    St:=St+','+Decimais;

  Result:=ST;

END;





PROCEDURE Money2TEdit( Campo : TEdit );
BEGIN

  Campo.Text:=Ltrim(Rtrim(Campo.Text));
  Campo.Font.Color:=clBlack;
  Campo.Modified:=FALSE;
  Campo.SelectAll;

END;



(* Desativa o Alt+TAB *)
procedure TurnAltTABOff;
var OldVal : LongInt;
Begin
  SystemParametersInfo (97, Word (True), @OldVal, 0)
End;

(* Ativa o Alt+Tab *)
procedure TurnAltTABOn;
var OldVal : LongInt;
Begin
  SystemParametersInfo (97, Word (False), @OldVal, 0)
End;


(* Ativa/Desativa a Barra Iniciar do Windows *)
procedure Show_Windows_Iniciar(Visible:Boolean);
Var taskbarhandle,
    buttonhandle : HWND;
Begin
   taskbarhandle := FindWindow('Shell_TrayWnd', nil);
   buttonhandle := GetWindow(taskbarhandle, GW_CHILD);
   If Visible=True Then Begin
      ShowWindow(buttonhandle, SW_RESTORE); {mostra o botão}
   End Else Begin
      ShowWindow(buttonhandle, SW_HIDE); {esconde o botão}
   End;

end;

(* Exibe/Esconde a barra de tarefas (menu iniciar) *)
PROCEDURE Show_TaskBar ( Visible : Boolean );
VAR
  tb : THandle;
BEGIN
  tb:=FindWindow('Shell_TrayWnd',Nil);
  if Visible Then
    ShowWindow(tb, SW_SHOWNORMAL)
  Else
    ShowWindow(tb, SW_HIDE);
END;


function GetFileDate(TheFileName: string): string;
var
  FHandle: integer;
begin
  FHandle := FileOpen(TheFileName, 0);
  try
    Result := DateTimeToStr(FileDateToDateTime(FileGetDate(FHandle)));
  finally
    FileClose(FHandle);
  end;
end;



FUNCTION CheckDateMSG ( Data : String ) : Boolean;
BEGIN

  If Not CheckDate(Data) Then Begin
    Say('Data inválida! Utilize o formado DD/MM/AAAA.');
    CheckDateMSG:=FALSE;
  End Else
    CheckDateMSG:=TRUE;

END;


FUNCTION  Alltrim(xMens:String):String;
BEGIN
//  AllTrim:=Rtrim(Ltrim(xMens));
  Result:=Trim(xMens);
END;


(* Le linhas de um arquivo de configuracoes passado como parametro respeitando a seguinte
   formatacao:
; (ponto e virgula) = comentário
NOME=DANIEL DE REZENDE BARBOSA CARVALHO  (* Igual indica o campo a buscar
ENDERECO=AV. URUGUAI 501/503
;
*)
FUNCTION READCFGFile( Arquivo : String; SearchFor : String ) : String;
VAR
  Arq                   : TextFile;
  L                     : String;
BEGIN

  READCFGFile:='';

  {$i-}
  AssignFile(Arq,Arquivo);
  Reset(Arq);
  IF IOResult<>0 Then Exit;

  REPEAT

    Readln(Arq,L);
    IF IOresult<>0 Then Begin
      CloseFile(ARQ);
      If IOResult<>0 Then Exit;
      Exit;
    End;

    L:=AllTrim(L);

    If Pos(';',L)=0 Then
      If Pos('=',L)<>0 Then
        If Pos(BlasterUpper(SearchFor),BlasterUpper(L))=1 Then Begin
          CloseFile(ARQ);
          Delete(L,1,Pos('=',L));
          L:=AllTrim(L);
          Result:=L;
          Exit;
        End;

  UNTIL EOF(ARQ);
  CloseFile(ARQ);
  IF IOResult<>0 Then Exit;

END;




(* Le linhas de um arquivo de configuracoes passado como parametro respeitando a seguinte
   formatacao:
; (ponto e virgula) = comentário
  ARQUITO TYPED
NOME=DANIEL DE REZENDE BARBOSA CARVALHO  (* Igual indica o campo a buscar
ENDERECO=AV. URUGUAI 501/503
;
*)
FUNCTION READMyINIFile( Arquivo : String; SearchFor : String ) : String;
TYPE
  INIFILE               = RECORD
    Line                : String[255];
  End;
VAR
  Arq                   : File of IniFile;
  Reg                   : IniFile;
  C                     : Longint;

BEGIN

  Result:='';

  {$i-}
  AssignFile(Arq,Arquivo);
  Reset(Arq);
  IF IOResult<>0 Then Exit;

  REPEAT

    Read(Arq,Reg);
    IF IOresult<>0 Then Begin
      CloseFile(ARQ);
      If IOResult<>0 Then Exit;
      Exit;
    End;

    Reg.Line:=Rtrim(Reg.Line);

    If Pos(';',Reg.Line)=0 Then
      If Pos('=',Reg.Line)<>0 Then
        If Pos(BlasterUpper(SearchFor),BlasterUpper(Reg.Line))=1 Then Begin
          CloseFile(ARQ);
          Delete(Reg.Line,1,Pos('=',Reg.Line));
          Result:=Reg.Line;
          Exit;
        End;

  UNTIL EOF(ARQ);
  CloseFile(ARQ);
  IF IOResult<>0 Then Exit;

END;


PROCEDURE WriteInMyINIFile( Arquivo : String; Comentario : String; Chave : String; Conteudo : String );
TYPE
  INIFILE               = RECORD
    Line                : String[255];
  End;
VAR
  Arq                   : File of IniFile;
  Reg                   : IniFile;
  Found                 : Boolean;

BEGIN

  {$i-}
  AssignFile(Arq,Arquivo);
  Reset(Arq);
  IF IOResult<>0 Then Begin
    ReWrite(Arq);
    If Comentario<>'' Then Begin
      Reg.Line:=';'+Comentario;
      Write(Arq,Reg);
    End;
    Reg.Line:=UpperCase(CHAVE)+'='+Conteudo;
    Write(Arq,Reg);
    CloseFile(ARQ);
    Exit;
  End;

  Found:=FALSE;


  REPEAT

    Read(Arq,Reg);
    IF IOresult<>0 Then Begin
      CloseFile(ARQ);
      Exit;
    End;

    If Pos(';',Reg.Line)=0 Then Begin
      If Pos('=',Reg.Line)<>0 Then
        If Pos(BlasterUpper(Chave),BlasterUpper(Reg.Line))=1 Then Begin
          Seek(Arq,FilePos(Arq)-1);
          Reg.Line:=UpperCase(CHAVE)+'='+Conteudo;
          Write(Arq,Reg);
          Found:=TRUE;
          Seek(Arq,FileSize(Arq));
        END;
    END;

  UNTIL EOF(ARQ);
  IF IOResult<>0 Then Begin
    CloseFile(ARQ);
    Exit;
  End;

  If Not Found Then Begin
    If Comentario<>'' Then Begin
      Reg.Line:=';'+Comentario;
      Write(Arq,Reg);
    End;
    Reg.Line:=UpperCase(CHAVE)+'='+Conteudo;
    Write(Arq,Reg);
  End;

  CloseFile(ARQ);


END;






(* Le linhas de um arquivo de configuracoes passado como parametro respeitando a seguinte
   formatacao:
; (ponto e virgula) = comentário
NOME=DANIEL DE REZENDE BARBOSA CARVALHO  (* Igual indica o campo a buscar
ENDERECO=AV. URUGUAI 501/503
;
*)


{
(* Estados dos Botoes:
   0 : Todos Ligados
   1 : Todos Desligados
   2 : Modo de Visualizacao
   3 : Modo de Edicao
*)
PROCEDURE SetBtnState( Form : TForm; State : Word );
BEGIN
  Case State Of
    0  : Begin
           If Form.btnNew <> NIL Then
             Form.btnNew.Enabled:=TRUE;
           If Form.btnSave <> NIL Then
             Form.btnSave.Enabled:=TRUE;
           If Form.btnDel <> NIL Then
             Form.btnDel.Enabled:=TRUE;
           If Form.btnEdit <> NIL Then
             Form.btnEdit.Enabled:=TRUE;
           If Form.btnPrint <> NIL Then
             Form.btnPrint.Enabled:=TRUE;
           If Form.btnCancel <> NIL Then
             Form.btnCancel.Enabled:=TRUE;
           If Form.btnPrev <> NIL Then
             Form.btnPrev.Enabled:=TRUE;
           If Form.btnNext <> NIL Then
             Form.btnNext.Enabled:=TRUE;
         End;
    1  : Begin
           If Form.btnNew <> NIL Then
             Form.btnNew.Enabled:=FALSE;
           If Form.btnSave <> NIL Then
             Form.btnSave.Enabled:=FALSE;
           If Form.btnDel <> NIL Then
             Form.btnDel.Enabled:=FALSE;
           If Form.btnEdit <> NIL Then
             Form.btnEdit.Enabled:=FALSE;
           If Form.btnPrint <> NIL Then
             Form.btnPrint.Enabled:=FALSE;
           If Form.btnCancel <> NIL Then
             Form.btnCancel.Enabled:=FALSE;
           If Form.btnPrev <> NIL Then
             Form.btnPrev.Enabled:=FALSE;
           If Form.btnNext <> NIL Then
             Form.btnNext.Enabled:=FALSE;
         END;
    2  : Begin
           If Form.btnNew <> NIL Then
             Form.btnNew.Enabled:=TRUE;
           If Form.btnSave <> NIL Then
             Form.btnSave.Enabled:=FALSE;
           If Form.btnDel <> NIL Then
             Form.btnDel.Enabled:=TRUE;
           If Form.btnEdit <> NIL Then
             Form.btnEdit.Enabled:=TRUE;
           If Form.btnPrint <> NIL Then
             Form.btnPrint.Enabled:=TRUE;
           If Form.btnCancel <> NIL Then
             Form.btnCancel.Enabled:=FALSE;
           If Form.btnPrev <> NIL Then
             Form.btnPrev.Enabled:=TRUE;
           If Form.btnNext <> NIL Then
             Form.btnNext.Enabled:=TRUE;
         End;
    3  : Begin
           If Form.btnNew <> NIL Then
             Form.btnNew.Enabled:=FALSE;
           If Form.btnSave <> NIL Then
             Form.btnSave.Enabled:=TRUE;
           If Form.btnDel <> NIL Then
             Form.btnDel.Enabled:=FALSE;
           If Form.btnEdit <> NIL Then
             Form.btnEdit.Enabled:=FALSE;
           If Form.btnPrint <> NIL Then
             Form.btnPrint.Enabled:=FALSE;
           If Form.btnCancel <> NIL Then
             Form.btnCancel.Enabled:=TRUE;
           If Form.btnPrev <> NIL Then
             Form.btnPrev.Enabled:=FALSE;
           If Form.btnNext <> NIL Then
             Form.btnNext.Enabled:=FALSE;
         End;
  End;

END;


}




function Bissexto(AYear: Integer): Boolean;
begin
  Result := (AYear mod 4 = 0) and ((AYear mod 100 <> 0) or (AYear mod 400 = 0));
end;


function DiasDoMes(AYear, AMonth: Integer): Integer;
const
  DaysInMonth: array[1..12] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
  Result := DaysInMonth[AMonth];
  if (AMonth = 2) and Bissexto(AYear) then Inc(Result);
end;


function Idade2(DataNasc : TDate) : String;
Var Ano1, Mes1, Dia1 : Word;
    Ano2, Mes2, Dia2 : Word;
    Ano, Mes, Dia : Word;
    Idade : String;

    AuxDia1, AuxDia2 : Integer;
begin

  Idade := '';
  DecodeDate(DataNasc, Ano1, Mes1, Dia1);
  DecodeDate(Date, Ano2, Mes2, Dia2);

  AuxDia1 := Dia1;
  AuxDia2 := Dia2;

  if (Dia1 > Dia2) And ((Mes2 - Mes1) = 1) then begin
    Dia2 := Dia2 + DiasDoMes(Ano1, Mes1);
    Mes1 := Mes2;
  end else if (Dia1 > Dia2) And (Mes1 <> Mes2) then begin
    Dia2 := Dia2 + DiasDoMes(Ano1, Mes1);
  end else if (Mes1 = Mes2) And (Dia1 > Dia2) And (Ano1 <> Ano2) then begin
    Dia2 := Dia2 + DiasDoMes(Ano1, Mes1);
    Mes2 := Mes2 + 11;
    Ano1 := Ano1 + 1;
  end;

  if (Mes1 > Mes2) And (AuxDia1 <= AuxDia2) then begin
    Ano1 := Ano1 + 1;
    Mes2 := Mes2 + 12;
  end else if (Mes1 > Mes2) And (AuxDia1 > AuxDia2) then begin
    Ano1 := Ano1 + 1;
    Mes2 := Mes2 + 11;
  end;

  Ano := Ano2 - Ano1;
  Mes := Mes2 - Mes1;
  Dia := Dia2 - Dia1;

  if Ano > 1 then
    Idade := IntToStr(Ano) + ' Anos'
  else if Ano = 1 then
    Idade := IntToStr(Ano) + ' Ano';

  if Mes > 1 then
    Idade := Idade + ', ' + IntToStr(Mes) + ' Meses '
  else if Mes <> 0 then
    Idade := Idade + ', ' + IntToStr(Mes) + ' Mês ';

  If Ano = 0 then
    Delete(Idade, 1, 1);

  if Dia > 1 then
    Idade := Idade + ' e ' + IntToStr(Dia) + ' Dias'
  else if Dia <> 0 then
    Idade := Idade + ' e ' +  IntToStr(Dia) + ' Dia';

  if (Mes = 0) And (Ano = 0) then
    Delete(Idade, 1, 3);

  if (Ano1 = Ano2) And (Mes1 = Mes2) And (Dia1 > Dia2) then
    Idade := '0';

  Result := Idade;
end;


function Idade_De_Ate(DataNasc : TDate; DataConsulta : TDate) : String;
Var Ano1, Mes1, Dia1 : Word;
    Ano2, Mes2, Dia2 : Word;
    Ano, Mes, Dia : Word;
    Idade : String;

    AuxDia1, AuxDia2 : Integer;
begin

  Idade := '';
  DecodeDate(DataNasc, Ano1, Mes1, Dia1);
  DecodeDate(DataConsulta, Ano2, Mes2, Dia2);

  If DataNasc=DataConsulta Then Begin
    Idade:='0 D';
    Exit;
  End;

  AuxDia1 := Dia1;
  AuxDia2 := Dia2;

  if (Dia1 > Dia2) And ((Mes2 - Mes1) = 1) then begin
    Dia2 := Dia2 + DiasDoMes(Ano1, Mes1);
    Mes1 := Mes2;
  end else if (Dia1 > Dia2) And (Mes1 <> Mes2) then begin
    Dia2 := Dia2 + DiasDoMes(Ano1, Mes1);
  end else if (Mes1 = Mes2) And (Dia1 > Dia2) And (Ano1 <> Ano2) then begin
    Dia2 := Dia2 + DiasDoMes(Ano1, Mes1);
    Mes2 := Mes2 + 11;
    Ano1 := Ano1 + 1;
  end;

  if (Mes1 > Mes2) And (AuxDia1 <= AuxDia2) then begin
    Ano1 := Ano1 + 1;
    Mes2 := Mes2 + 12;
  end else if (Mes1 > Mes2) And (AuxDia1 > AuxDia2) then begin
    Ano1 := Ano1 + 1;
    Mes2 := Mes2 + 11;
  end;

  Ano := Ano2 - Ano1;
  Mes := Mes2 - Mes1;
  Dia := Dia2 - Dia1;

  if Ano > 1 then
    Idade := IntToStr(Ano) + ' A'
  else if Ano = 1 then
    Idade := IntToStr(Ano) + ' A';

  if Mes > 1 then
    Idade := Idade + ' ' + IntToStr(Mes) + ' M '
  else if Mes <> 0 then
    Idade := Idade + ' ' + IntToStr(Mes) + ' M ';

  If Ano = 0 then
    Delete(Idade, 1, 1);

  if Dia > 1 then
    Idade := Idade + ' ' + IntToStr(Dia) + ' D'
  else if Dia <> 0 then
    Idade := Idade + ' ' +  IntToStr(Dia) + ' D';
{
  if (Mes = 0) And (Ano = 0) then
    Delete(Idade, 1, 3);
}
  if (Ano1 = Ano2) And (Mes1 = Mes2) And (Dia1 > Dia2) then
    Idade := '0';

  Result := Idade;
end;

function Dias(Data : TDate) : String;
begin
  Result := FloatToStr(Date - Data);
end;

function Idade(Nasc : TDate) : String;
Var AuxIdade, Meses, IdadeReal : String;
    MesesFloat : Real;
    IdadeInc : Integer;
begin
  AuxIdade := Format('%0.2f', [(Date - Nasc) / 365.6]);
  Meses := FloatToStr(Frac(StrToFloat(AuxIdade)));

  if AuxIdade = '0' then begin
    Result := '0,0';
    Exit;
  end;

  if Meses[1] = '-' then
    Meses := FloatToStr(StrToFloat(Meses) * -1);

  Delete(Meses, 1, 2);

  if Length(Meses) = 1 then
    Meses := Meses + '0';

  if (Meses <> '0') And (Meses <> '') then
    MesesFloat := Round(((365.6 * StrToInt(Meses)) / 100) / 30)
  else
    MesesFloat := 0;

  if MesesFloat <> 12 then
    IdadeReal := IntToStr(Trunc(StrToFloat(AuxIdade))) + ',' + FloatToStr(MesesFloat)
  else begin
    IdadeInc := Trunc(StrToFloat(AuxIdade));
    Inc(IdadeInc);
    IdadeReal := IntToStr(IdadeInc) + ',' + '0';
  end;

  Result := IdadeReal;
end;




PROCEDURE Complete_Horario ( Var Hora : TMaskEdit );
VAR
  St      : String[5];
BEGIN

  St:=Hora.Text;

  If (St[2]=' ') AND (St[1]<>' ') Then Begin
    St[2]:=St[1];
    St[1]:='0';
  End;

  REPEAT
    If Pos(' ',St)<>0 Then
      St[Pos(' ',St)]:='0';
  UNTIL POS(' ',St)=0;

  Hora.Text:=St;

END;






function AbrevPalavra(Palavra : String) : String;
Var AuxLetra : String;
begin
  if Length(Palavra) > 3 then begin
    AuxLetra := Copy(Palavra, 1, 1);
    Result := AuxLetra + '.';
  end else
    Result := Palavra; // Exemplo: de, da, das, etc;
end;

function Pos1(Nome : String) : Integer;
Var I : Integer;
begin
  Result := 0;
  for I := 1 to Length(Nome) do
    if Nome[I] = ' ' then begin
      Result := I + 1;
      Exit;
    end;
end;


function Pos2(Nome : String) : Integer;
Var I : Integer;
begin
  Result := 0;
  for I := 1 to Length(Nome) do
    if Nome[I] = ' ' then
      Result := I + 1;
end;

function NomeAbrev(N_Completo : String) : String;
Var I : Integer;
    Prim_Nome, Ult_Nome{, Nome} : String;
    AuxNome, AuxPalavra, AuxAbrev : String;
begin
  if Pos1(N_Completo) > 0 then
    Prim_Nome := Copy(N_Completo, 1, (Pos1(N_Completo) - 2))
  else
    Prim_Nome := N_Completo;

  AuxNome := N_Completo;

  if Pos2(N_Completo) > 0 then
    Delete(AuxNome, 1, (Pos2(N_Completo) - 1))
  else
    AuxNome := '';

  Ult_Nome := AuxNome;

  // Nome Digitado -- Paulo Alexsandro Freitas de Miranda
  // Nome Dividido :
  // Prim_Nome -- Paulo
  // Ult_Nome -- Miranda
  // Parte do Nome a ser Trabalhada -- Alexsandro Freitas de

  if Length(N_Completo) > 0 then begin
    for I := Pos1(N_Completo) to Pos2(N_Completo) do begin
      if N_Completo[I] <> ' ' then
        AuxPalavra := AuxPalavra + N_Completo[I]
      else begin
        AuxAbrev := AuxAbrev + AbrevPalavra(AuxPalavra) + ' ';
        AuxPalavra := '';
      end;
    end;
  end;

  if Length(Ult_Nome) > 0 then
    Result := Prim_Nome + ' ' + AuxAbrev + Ult_Nome
  else
    Result := Prim_Nome;
end;




FUNCTION  DataExtenso ( Data : String ) : String;
BEGIN

  DataExtenso:=Copy(Data,1,2)+' de '+MesExtenso(Str2Num(Copy(Data,4,2)))+' de '+Copy(Data,7,4);

END;




FUNCTION FirstUpper ( Texto : String ) : String;
VAR
  St     : String;
  C      : Longint;
  Car    : String;

BEGIN

  St:=BlasterLower(Texto);

  If Length(St)=0 Then Begin
    Result:='';
    Exit;
  End;

  C:=1;
  REPEAT

    If C=1 Then
      If St[1]<>'' Then Begin
        Car:=St[1];
        Car:=BlasterUpper(CAR);
        St[1]:=Car[1];
      End;

    If St[C]=' ' Then
      If Length(St)>C Then Begin
        REPEAT
          Inc(C);
        UNTIL (St[C]<>' ') or (C>=Length(St));

        If C>=Length(St) Then Begin
          Result:=St;
          Exit;
        End;

        Car:=St[C];
        Car:=BlasterUpper(Car);
        St[C]:=Car[1];
      End;

    Inc(C);
  UNTIL C>Length(St);

  Result:=St;

END;





// Converte os acentos em minúsculo para acentos em maiúsculos
FUNCTION BlasterLower ( Linha : String ) : String;
VAR
  L      : String;
  C      : Word;
BEGIN
{
  Result:=AnsiLowerCase(Linha);
  Exit;
}
  L:=LowerCase(Linha);

  REPEAT
    C:=Pos('É',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('é',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Ê',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('ê',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Ã',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('ã',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Â',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('â',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Á',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('á',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Ç',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('ç',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Í',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('í',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Ó',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('ó',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Ô',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('ô',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Ú',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('ú',L,C);
    End;
  UNTIL C=0;

  REPEAT
    C:=Pos('Ü',L);
    If C<>0 Then Begin
      Delete(L,C,1);
      Insert('ü',L,C);
    End;
  UNTIL C=0;

  BlasterLower:=L;

END;



(*

  Status : 0 : Okay (Verde)
           1 : Atenção (Amarelo)
           2 : Problema/Erro (Vermelho)
           3 : Branco (Nada)

*)
PROCEDURE ChangeLight_State( Objeto : TShape; Status : Word );
BEGIN

  Case Status Of
    0 : Begin
          Objeto.Brush.Color:=$0080FF80;  // Verde
          Objeto.Brush.Style:=bsSolid;
        End;
    1 : Begin
          Objeto.Brush.Color:=clYellow;
          Objeto.Brush.Style:=bsSolid;
        End;
    2 : Begin
          Objeto.Brush.Color:=$008080FF;
          Objeto.Brush.Style:=bsSolid;
        End;
    3 : Begin
          Objeto.Brush.Color:=ClWhite;
          Objeto.Brush.Style:=bsSolid;
        End;
  END;

  Objeto.Repaint;

END;




FUNCTION FormatMoney_3Casas ( Valor : Currency ) : String;
VAR
  L      : String;
BEGIN

  L:=FloattoStr(Valor);

  If Pos(',',L)=0 Then
    L:=L+',000';

  If Length(L)-Pos(',',L) < 3 Then Begin
    L:=L+Replicate('0',3-(Length(L)-Pos(',',L)));
  End;

  Result:=L;

END;


(* Caracter Final  "," ou "."
   0,000
   0.000
   Casas Decimais:  10 -> 0.000.000.000
                    0  -> Nenhum
*)
FUNCTION  FormatMoney_3em3   ( Valor : Currency; CaracterFinal : Char) : String;
VAR
  S       : String;
  C       : Longint;

BEGIN
  S:=FormatFloat('###,###,###,###,##0.000',Valor);
  Delete(S,Length(S)-3,1);
  Insert(CaracterFinal,S,Length(S)-2);
  Result:=S;
END;


(* Caracter Final  "," ou "."
   0,000
   0.000
   Casas Decimais:  10 -> 0.000.000.000
                    0  -> Nenhum
*)
FUNCTION  FormatMoney_2em3   ( Valor : Currency; CaracterFinal : Char) : String;
VAR
  S       : String;
  C       : Longint;

BEGIN
  S:=FormatFloat('###,###,###,###,##0.00',Valor);
  Delete(S,Length(S)-2,1);
  Insert(CaracterFinal,S,Length(S)-1);
  Result:=S;
END;




FUNCTION R_FORMAT3(Stt:String):String;
VAR V1 : String;
    C  : Word;
    Virgulas : Word;  // Conta o número de vírgulas... Se tiver mais de um, tira...

BEGIN
  V1:=TrimLeft(TrimRight(Stt));

  If (Pos(' ',V1)=1) Or (V1='') Then V1:='0,000';
  If Pos(V1[1],'.,')<>0 Then V1:='0'+V1;

  If (V1[1]='-') AND (Pos(V1[2],'.,')<>0) Then Insert('0',V1,2);


  {Checando se Tem Letras}
  C:=1;
  Virgulas:=0;
  REPEAT
    If V1[C]='.' Then Begin
      Delete(V1,C,1);
      Insert(',',V1,C);
      If Length(V1)=0 Then V1:='0,00';
      Dec(C);
    End;
    If Pos(V1[C],'-1234567890,')=0 Then Begin
      V1:='0,00';
      C:=Length(V1);
    End;
    If V1[C]=',' Then Inc(Virgulas);
    Inc(C);
  UNTIL C>Length(V1);

  If Virgulas>1 Then Begin
    REPEAT
      Delete(V1,Pos(',',V1),1);
      Dec(Virgulas);
    UNTIL Virgulas=1;
  End;

  If Pos(',',V1)=0 Then V1:=V1+',000';
  If Pos(',',V1)=1 Then V1:='0'+V1;

  If Length(V1)-Pos(',',V1)=0 Then V1:=V1+'000';
  If Length(V1)-Pos(',',V1)=1 Then V1:=V1+'00';
  If Length(V1)-Pos(',',V1)=2 Then V1:=V1+'0';
  If Length(V1)-Pos(',',V1)>3 Then Delete(V1,Pos(',',V1)+4,50);

  R_Format3:=V1;

END;



FUNCTION R_FORMAT4(Stt:String):String;
VAR V1 : String;
    C  : Word;
    Virgulas : Word;  // Conta o número de vírgulas... Se tiver mais de um, tira...

BEGIN
  V1:=TrimLeft(TrimRight(Stt));

  If (Pos(' ',V1)=1) Or (V1='') Then V1:='0,0000';
  If Pos(V1[1],'.,')<>0 Then V1:='0'+V1;

  If (V1[1]='-') AND (Pos(V1[2],'.,')<>0) Then Insert('0',V1,2);


  {Checando se Tem Letras}
  C:=1;
  Virgulas:=0;
  REPEAT
    If V1[C]='.' Then Begin
      Delete(V1,C,1);
      Insert(',',V1,C);
      If Length(V1)=0 Then V1:='0,00';
      Dec(C);
    End;
    If Pos(V1[C],'-1234567890,')=0 Then Begin
      V1:='0,00';
      C:=Length(V1);
    End;
    If V1[C]=',' Then Inc(Virgulas);
    Inc(C);
  UNTIL C>Length(V1);

  If Virgulas>1 Then Begin
    REPEAT
      Delete(V1,Pos(',',V1),1);
      Dec(Virgulas);
    UNTIL Virgulas=1;
  End;

  If Pos(',',V1)=0 Then V1:=V1+',0000';
  If Pos(',',V1)=1 Then V1:='0'+V1;

  If Length(V1)-Pos(',',V1)=0 Then V1:=V1+'0000';
  If Length(V1)-Pos(',',V1)=1 Then V1:=V1+'000';
  If Length(V1)-Pos(',',V1)=2 Then V1:=V1+'00';
  If Length(V1)-Pos(',',V1)=3 Then V1:=V1+'0';
  If Length(V1)-Pos(',',V1)>4 Then Delete(V1,Pos(',',V1)+4,50);

  Result:=V1;

END;



FUNCTION Float2Money3( Valor_Real : Currency ) : String;
BEGIN

  Float2Money3:=R_Format3(FloattoStr(Valor_Real));

END;


FUNCTION Float2Money4( Valor_Real : Currency ) : String;
BEGIN

  REsult:=R_Format4(FloattoStr(Valor_Real));

END;


FUNCTION Money2Float3 ( Valor_Monetario : String ) : Currency;
BEGIN

  Valor_Monetario:=RemoveAll('+',Valor_Monetario);

  Money2Float3:=0.000;

  Valor_Monetario:=AllTrim(Valor_Monetario);
  Valor_Monetario:=RemovaZerosAEsquerda(Valor_Monetario);
  Valor_Monetario:=R_Format3(Valor_Monetario);

  If Length(Valor_Monetario) < 17 Then   // Para nao ultrapassar o limite de valor FLOAT
    Money2Float3:=StrToFloat(Valor_Monetario);

END;


FUNCTION Money2Float4 ( Valor_Monetario : String ) : Currency;
BEGIN

  Valor_Monetario:=RemoveAll('+',Valor_Monetario);

  Result:=0.0000;

  Valor_Monetario:=AllTrim(Valor_Monetario);
  Valor_Monetario:=RemovaZerosAEsquerda(Valor_Monetario);
  Valor_Monetario:=R_Format4(Valor_Monetario);

  If Length(Valor_Monetario) < 17 Then   // Para nao ultrapassar o limite de valor FLOAT
    Result:=StrToFloat(Valor_Monetario);

END;


FUNCTION Money2Float6 ( Valor_Monetario : String ) : Currency;
BEGIN

  Valor_Monetario:=RemoveAll('+',Valor_Monetario);

  Result:=0.0000;

  Valor_Monetario:=AllTrim(Valor_Monetario);
  Valor_Monetario:=RemovaZerosAEsquerda(Valor_Monetario);
  Valor_Monetario:=R_Format4(Valor_Monetario);

  If Length(Valor_Monetario) < 17 Then   // Para nao ultrapassar o limite de valor FLOAT
    Result:=StrToFloat(Valor_Monetario);

END;


PROCEDURE TEdit2Money3( Campo : TEdit; Tamanho : Word );
VAR
  Menos            : Boolean;
  ST               : String;
  Numero           : Currency;

BEGIN

  Menos:=False;

  St:=R_Format3(Campo.Text);
  Numero:=Money2Float3(St);

  St:=FormatFloat('###,###,###,###,##0.000',Numero);

  If Length(St) < Tamanho Then
    St:=Space(Tamanho-Length(St))+St
  Else
    If Length(St) > Tamanho Then
      Delete(St,1,Length(St)-Tamanho);  //St:=Copy(St,1,Tamanho);

  If Numero < 0 Then
    Campo.Font.Color:=ClRed
  Else
    Campo.Font.Color:=ClBlack;

  Campo.Text:=ST;
  Campo.Modified:=FALSE;

END;



FUNCTION RemovaAcento_PrimeiraLetra ( Msg : String ) : String;
VAR
  Ini    : String;
BEGIN
  Result:='';
  If Msg='' Then Exit;
  Ini:=Msg[1];
  Ini:=RemovaAcentos(Ini);
  Msg[1]:=Ini[1];
  Result:=Msg;
END;



FUNCTION READ_TXTFILE_FIELD (CaracterSeparador : Char; VAR Linha : String ) : String;
VAR
  Leitura                   : String;

BEGIN

  Result:='';

  If Pos(CaracterSeparador,Linha)=0 Then Begin
    Exit;
  End;

  If Pos(CaracterSeparador,Linha)=1 Then Begin
    Delete(Linha,1,1);
    Leitura:=Copy(Linha,1,Pos(CaracterSeparador,Linha));
    Delete(Leitura,Length(Leitura),1);
    Leitura:=AllTrim(Leitura);
    Delete(Linha,1,Pos(CaracterSeparador,Linha));
    Result:=Leitura;
  End Else Begin
    Delete(Linha,1,Pos(CaracterSeparador,Linha));
  End;

END;


PROCEDURE Sort_TXTFILE( Separador : Char; VAR Conteudo : TStringList;
                        CamposAOrdenar : String;
                        TamCamposNumericos, TamCamposString : Word;
                        Ascendente : Boolean );
VAR
  ToSort, Sorted, Field                 : TStringList;
  St, St1                               : String;
  Campos, TipoCampo                     : TStringList;
  C, I                                  : Longint;
  Sinal                                 : Char;
  Tipo                                  : String;

LABEL FIM;
BEGIN
{$I-}

  If Conteudo.Count=0 THen Exit;

  ToSort:=TStringList.Create;
  Sorted:=TStringList.Create;
  Field:=TStringList.Create;
  Campos:=TStringList.Create;
  TipoCampo:=TStringList.Create;

  If TamCamposNumericos<=0 Then
    TamCamposNumericos:=20;
  If TamCamposString<=0 Then
    TamCamposString:=100;


  CamposAOrdenar:=BlasterUpper(CamposAOrdenar);

  REPEAT

    If Pos(',',CamposAOrdenar)>0 Then Begin
      St:=Copy(CamposAOrdenar,1, Pos(',',CamposAOrdenar)-1);
      Delete(CamposAOrdenar, 1, Pos(',',CamposAOrdenar));
      If (Length(St)>0) AND (Str2Num(St)>=0) Then Begin
        TipoCampo.Add('');
        If Pos('S', St)<>0 Then Begin
          St:=OnlyNumbersOnString(St);
          TipoCampo.Strings[TipoCampo.Count-1]:='S';
        End;
        Campos.Add(St);
      End;
    End Else Begin
      St:=CamposAOrdenar;
      CamposAOrdenar:='';
      If Str2Num(St)>=0 Then Begin
        TipoCampo.Add('');
        If Pos('S', St)<>0 Then Begin
          St:=OnlyNumbersOnString(St);
          TipoCampo.Strings[TipoCampo.Count-1]:='S';
        End;
        Campos.Add(St);
      End;
    End;

  UNTIL CamposAOrdenar='';

  If Campos.Count<=0 Then Begin
    Say('Erro.Função Sort_TXTFile - Parâmetro CamposAOrdenar inválido!');
    Goto FIM;
  End;




  C:=0;
  REPEAT

    St:=Conteudo.Strings[C];
    Read_TXTFILE_Fields(Separador, St, Field);

    St:='';
    I:=0;
    REPEAT
      St1:=Field.Strings[Str2Num(Campos.Strings[I])];

      If TipoCampo.Strings[I]='' Then Begin
        TipoCampo.Strings[I]:='S';
        If Is_Currency(St1) Then
          TipoCampo.Strings[I]:='C';
        If Is_Number(St1) Then
          TipoCampo.Strings[I]:='L';
      End;

      If TipoCampo.Strings[I]='S' Then Begin
        If Length(St1)>TamCamposString Then
          TamCamposString:=Length(St1);
        St1:=AlLeftString(St1, TamCamposString);
      End Else Begin
        If TipoCampo.Strings[I]='L' Then Begin

          If Length(St1)>TamCamposNumericos Then
            TamCamposNumericos:=Length(St1);

          Sinal:='1';

          If Pos('-', St1)>1 Then
            St1:=RemoveAll('-', St1);

          If Str2Float(St1)<0 Then Begin
            St1:=Float2Str(Str2Float('1'+Replicate('0',TamCamposNumericos))+Str2Float(St1));
            Sinal:='0';
          End;

          St1:=Sinal+Replicate('0',TamCamposNumericos-Length(St1))+St1;

        End Else Begin

          Sinal:='1';

          If Pos('-', St1)>1 Then
            St1:=RemoveAll('-', St1);

          If Money2Float4(St1)<0 Then Begin
            St1:=Float2Money4(Money2Float4('10000000000')+Money2Float4(St1));
            Sinal:='0';
          End;

          St1:=FormatMoney4(St1);
          St1:=RemoveAll(',',St1);
          St1:=Sinal+Replicate('0',20-Length(St1))+St1;

        End;
      End;


      St:=St+St1+'|';

      Inc(I);
    UNTIL I>=Campos.Count;

    St:=St+Chr(254)+InttoStr(C);
    ToSort.Add(St);


    Inc(C);
  UNTIL C>=Conteudo.Count;


  ToSort.Sort;


  If Ascendente Then Begin

    C:=0;
    REPEAT
      St:=ToSort.Strings[C];
      Delete(St,1,Pos(Chr(254), St));

      I:=Str2Num(St);
      Sorted.Add(Conteudo.Strings[I]);

      Inc(C);
    UNTIL C>=ToSort.Count;

  End Else Begin

    C:=ToSort.Count-1;
    REPEAT
      St:=ToSort.Strings[C];
      Delete(St,1,Pos(Chr(254), St));

      I:=Str2Num(St);
      Sorted.Add(Conteudo.Strings[I]);

      Dec(C);
    UNTIL C<0;

  End;


  Conteudo.Text:=Sorted.Text;




FIM:
  ToSort.Free;
  Sorted.Free;
  Campos.Free;
  TipoCampo.Free;
  Field.Free;

END;


PROCEDURE Sort_TXTFILE_Continuo( VAR Conteudo : TStringList; CamposAOrdenar : String; Ascendente : Boolean );
VAR
  Index, Lista                        : TStringList;
  IniCampo, FimCampo                  : TStringList;
  C, I, Tam                           : Longint;
  De, Ate, Campo, St, Ordem           : String;

LABEL FIM;
BEGIN
{$I-}

  Index:=TStringList.Create;
  Lista:=TStringList.Create;
  IniCampo:=TStringList.Create;
  FimCampo:=TStringList.Create;

  Substitua(CamposAOrdenar, ';', ',');
  CamposAOrdenar:=AllTrim(CamposAOrdenar)+',';


  If Conteudo.Count<=0 Then Goto FIM;
  

  REPEAT

    St:=Copy(CamposAOrdenar, 1, Pos(',', CamposAOrdenar)-1);
    Delete(CamposAOrdenar, 1, Pos(',', CamposAOrdenar));

    If Pos('-', St)=0 Then
      St:=St+'-'+St;

    De:=Copy(St,1,Pos('-',St)-1);
    Delete(St,1,Pos('-',St));
    Ate:=St;

    If Str2Num(De)<=0 Then
      De:='1';
    If Str2Num(Ate)<=0 Then
      Ate:='1';

    IniCampo.Add(De);
    FimCampo.Add(Ate);

  UNTIL CamposAOrdenar='';



  C:=0;
  REPEAT

    Ordem:='';

    I:=0;
    REPEAT
      Tam:=(Str2Num(FimCampo.Strings[I])-Str2Num(IniCampo[I]))+1;
      Ordem:=Ordem+AlLeftString(Copy(Conteudo.Strings[C], Str2Num(IniCampo.Strings[I]), Tam), Tam);

      Inc(I);
    UNTIL I>=IniCampo.Count;

    Index.Add(Ordem+Chr(254)+FillLeft(8, C));

    Inc(C);
  UNTIL C>=Conteudo.Count;


  If Index.Count<=0 Then Goto FIM;

  Index.Sort;


  If Ascendente Then Begin

    C:=0;
    REPEAT

      St:=Index.Strings[C];
      Delete(St,1,Pos(Chr(254), St));
      I:=Str2Num(St);

      Lista.Add(Conteudo.Strings[I]);

      Inc(C);
    UNTIL C>=Index.Count;

  End Else Begin

    C:=Index.Count-1;
    REPEAT

      St:=Index.Strings[C];
      Delete(St,1,Pos(Chr(254), St));
      I:=Str2Num(St);

      Lista.Add(Conteudo.Strings[I]);

      Dec(C);
    UNTIL C<0;

  End;


  Conteudo.Text:=Lista.Text;



FIM:

  Index.Free;
  Lista.Free;

  IniCampo.Free;
  FimCampo.Free;

END;

(*PROCEDURE Sort_TXTFILE( Separador : Char; Conteudo : TStringList;
                        CamposAOrdenar : String;
                        TamCamposNumericos, TamCamposString : Word;
                        VAR Resultado : TStringList; Ascendente : Boolean );
VAR
  ToSort, Sorted, Field                 : TStringList;
  St, St1                               : String;
  Campos, TipoCampo                     : TStringList;
  C, I                                  : Longint;

LABEL FIM;
BEGIN
{$I-}

  If Conteudo.Count=0 THen Exit;

  ToSort:=TStringList.Create;
  Sorted:=TStringList.Create;
  Field:=TStringList.Create;
  Campos:=TStringList.Create;
  TipoCampo:=TStringList.Create;
  Resultado.Clear;


  REPEAT

    If Pos(',',CamposAOrdenar)>0 Then Begin
      St:=Copy(CamposAOrdenar,1, Pos(',',CamposAOrdenar)-1);
      Delete(CamposAOrdenar, 1, Pos(',',CamposAOrdenar));
      If Str2Num(St)>=0 Then Begin
        Campos.Add(St);
        TipoCampo.Add('');
      End;
    End Else Begin
      St:=CamposAOrdenar;
      CamposAOrdenar:='';
      If Str2Num(St)>=0 Then Begin
        Campos.Add(St);
        TipoCampo.Add('');
      End;
    End;

  UNTIL CamposAOrdenar='';

  If Campos.Count<=0 Then Begin
    Say('Erro.Função Sort_TXTFile - Parâmetro CamposAOrdenar inválido!');
    Goto FIM;
  End;




  C:=0;
  REPEAT

    St:=Conteudo.Strings[C];
    Read_TXTFILE_Fields(Separador, St, Field);

    St:='';
    I:=0;
    REPEAT
      St1:=Field.Strings[Str2Num(Campos.Strings[I])];

      If TipoCampo.Strings[I]='' Then Begin
        TipoCampo.Strings[I]:='S';
        If Is_Number(St1) Then
          TipoCampo.Strings[I]:='L';
        If Is_Currency(St1) Then
          TipoCampo.Strings[I]:='C';
      End;

      If TipoCampo.Strings[I]='S' Then Begin
        If Length(St1)>TamCamposString Then
          TamCamposString:=Length(St1);
        St1:=AlLeftString(St1, TamCamposString);
      End Else Begin
        If TipoCampo.Strings[I]='I' Then Begin
          If Length(St1)>TamCamposNumericos Then
            TamCamposNumericos:=Length(St1);
          St1:=Replicate('0',TamCamposNumericos-Length(St1))+St1;
        End Else Begin
          St1:=FormatMoney4(St1);
          St1:=RemoveAll(',',St1);
          St1:=Replicate('0',20-Length(St1))+St1;
        End;
      End;


      St:=St+St1;

      Inc(I);
    UNTIL I>=Campos.Count;

    St:=St+Chr(254)+InttoStr(C);
    ToSort.Add(St);


    Inc(C);
  UNTIL C>=Conteudo.Count;


  ToSort.Sort;


  If Ascendente Then Begin

    C:=0;
    REPEAT
      St:=ToSort.Strings[C];
      Delete(St,1,Pos(Chr(254), St));

      I:=Str2Num(St);
      Sorted.Add(Conteudo.Strings[I]);

      Inc(C);
    UNTIL C>=ToSort.Count;

  End Else Begin

    C:=ToSort.Count-1;
    REPEAT
      St:=ToSort.Strings[C];
      Delete(St,1,Pos(Chr(254), St));

      I:=Str2Num(St);
      Sorted.Add(Conteudo.Strings[I]);

      Dec(C);
    UNTIL C<0;

  End;


  Resultado.Text:=Sorted.Text;





FIM:
  ToSort.Free;
  Sorted.Free;
  Campos.Free;
  TipoCampo.Free;
  Field.Free;


END;
*)





(* Tamanho Maximo da Senha Passada Como parametro = 10 Caracteres *)
FUNCTION GereSenha_LBC ( Senha : String ) : Longint;
VAR
  C      : Word;
  Res    : Longint;

BEGIN

  Result:=0;
  If Senha='' Then Exit;

  Senha:=Rtrim(Senha);
  C:=1;
  Res:=0;

  REPEAT
    Res:=Res+(Ord(Senha[C])*C);
    Inc(C);
  UNTIL (C>Length(Senha)) Or (C>10);

  Res:=((Res + 11) * 38 DIV 7);
  Result:=Res;

END;



(* Converte data formado DD/MM/AA para DD/MM/AAAA *)
FUNCTION DATEAA2AAAA (Data  : String ) : String;
VAR
  Ano    : String;
BEGIN
  Result:='';

  If Length(Data)=10 Then Begin
    Result:=data;
    Exit;
  End;

  Data:=RemoveAll('-',Data);
  Data:=RemoveAll('/',Data);

  If Length(Data)<6 Then Exit;

  Ano:=Copy(Data,5,2);
  Delete(Data,5,20);

  Insert('/',Data,3);
  Data:=Data+'/';

  If Str2Num(Ano)>60 Then
    Ano:='19'+Ano
  Else
    Ano:='20'+Ano;

  Result:=Data+Ano;

END;


(* Converte data formado DD/MM/AAAA para DD/MM/AA *)
FUNCTION DATEAAAA2AA (Data  : String ) : String;
BEGIN
  Result:='';

  If Length(Data)<>10 Then Begin
    Result:=data;
    Exit;
  End;

  Delete(Data,7,2);

  Result:=Data;

END;



FUNCTION ReturnBinary ( Numero : Longint ) : String;
VAR
  B                   : String;
BEGIN

  B:='';

  If Numero>=128 Then Begin
    B:='1';
    Numero:=Numero-128;
  End Else
    B:='0';

  If Numero>=64 Then Begin
    B:=B+'1';
    Numero:=Numero-64;
  End Else
    B:=B+'0';

  If Numero>=32 Then Begin
    B:=B+'1';
    Numero:=Numero-32;
  End Else
    B:=B+'0';

  If Numero>=16 Then Begin
    B:=B+'1';
    Numero:=Numero-16;
  End Else
    B:=B+'0';

  If Numero>=8 Then Begin
    B:=B+'1';
    Numero:=Numero-8;
  End Else
    B:=B+'0';

  If Numero>=4 Then Begin
    B:=B+'1';
    Numero:=Numero-4;
  End Else
    B:=B+'0';

  If Numero>=2 Then Begin
    B:=B+'1';
    Numero:=Numero-2;
  End Else
    B:=B+'0';

  If Numero=1 Then Begin
    B:=B+'1';
  End Else
    B:=B+'0';

  Result:=B;

END;



PROCEDURE MyIniFileToTXT ( ArquivoIni : String; ArquivoTXT : String);
TYPE
  INIFILE               = RECORD
    Line                : String[255];
  End;
VAR
  Arq                   : File of IniFile;
  Reg                   : IniFile;
  ArqText               : TextFile;

BEGIN
{$I-}
  AssignFile(Arq,ArquivoINI);
  Reset(Arq);
  IF IOResult<>0 Then Exit;

  AssignFIle(ArqText,ArquivoTXT);
  Rewrite(ArqText);
  IF IOResult<>0 Then Begin
    CloseFile(ARQ);
    Say('Erro ao Criar Arquivo '+ArquivoTXT+' em Disco!');
    Exit;
  End;

  REPEAT
    Read(Arq,Reg);
    IF IOResult=0 Then
      Writeln(ArqText,REg.Line);
  UNTIL EOF(ARQ);
  CloseFile(Arq);
  CloseFile(ArqText);

END;




FUNCTION GereKeyFile ( ArquivoSource : String ) : String;
VAR
  Arq                 : TextFile;
  L                   : String;
  Temp                : String;

BEGIN

  Result:='';

  {$i-}
  AssignFile(Arq,ArquivoSource);
  Reset(Arq);
  IF IOResult<>0 Then Exit;


  REPEAT
    Readln(Arq,L);

    IF IOResult=0 THEN BEGIN
      Temp:='';
      REPEAT
        Temp:=Temp+InttoStr(GereSenha_LBC(Copy(L,1,10)));
        Delete(L,1,10);
      UNTIL L='';
      Result:=Result+Chr(254)+Temp+Chr(254);
    END;

  UNTIL EOF(ARQ);
  CloseFile(ARQ);


END;



PROCEDURE ClearIOResult;
BEGIN
  If IOResult<>0 Then Begin End;
END;


FUNCTION ReturnWindows_RootDirectory : String;
VAR
  a : Array[0..MAX_PATH] of char;
BEGIN
  GetWindowsDirectory(a, sizeof(a));
  Result:=formatPath(a);
END;


FUNCTION ReturnWindows_SystemDirectory : String;
VAR
  a : Array[0..MAX_PATH] of char;
BEGIN
  GetSystemDirectory(a, sizeof(a));
  Result:=formatPath(a);
END;


FUNCTION ReturnFileDate( Arquivo : String ) : String;
VAR
  fHandle                        : Integer;
  DateTime                       : String;

BEGIN

  Result:='';

  fHandle:=FileOpen(Arquivo,0);
  If fHandle<0 Then Exit;

  Try
    DateTime:=DateTimeToStr(FileDateToDateTime(FileGetDate(Fhandle)));
  Finally
    FileClose(fHandle);
  End;

  Result:=AllTrim(Copy(DateTime,1,Pos(' ',DateTime)));

END;


FUNCTION ReturnFileTime( Arquivo : String ) : String;
VAR
  fHandle                        : Integer;
  DateTime                       : String;

BEGIN

  Result:='';

  fHandle:=FileOpen(Arquivo,0);
  If fHandle<0 Then Exit;

  Try
    DateTime:=DateTimeToStr(FileDateToDateTime(FileGetDate(Fhandle)));
  Finally
    FileClose(fHandle);
  End;

  Result:=AllTrim(Copy(DateTime,Pos(' ',DAteTime),50));

END;


FUNCTION ReturnFileDateTime( Arquivo : String ) : String;
VAR
  fHandle                        : Integer;
  DateTime                       : String;

BEGIN

  Result:='';

  fHandle:=FileOpen(Arquivo,0);   // tava 0 onde coloquei "fmShareExclusive"
  If fHandle<0 Then Exit;

  Try
    DateTime:=DateTimeToStr(FileDateToDateTime(FileGetDate(Fhandle)));
  Finally
    FileClose(fHandle);
  End;

  Result:=DateTime;

END;


(* Verifica se um arquivo esta aberto na rede ou localmente *)
FUNCTION FileFree ( Arquivo : String ) : Boolean;
BEGIN
  Result:=FALSE;
  If Not FileExists(Arquivo) Then Begin
    Result:=TRUE;
    Exit;
  End;
  If ReturnFileDateTime(Arquivo)='' Then Exit;
  Result:=TRUE;
END;



FUNCTION FormatDate( Data : String ) : String;
VAR
  Dia, Mes, Ano      : Word;
  Dt                 : String;
BEGIN

  Result:='';

  If Data='' Then Exit;
  If (Pos('/',Data)=0) AND (Length(Data)<>8) Then Exit;

  If Pos('/',Data)=0 Then Begin
    If Not NUM(Data) Then Exit;
    Insert('/',Data,3);
    Insert('/',Data,6);
  End;

  REPEAT
    If Pos(' ',Data)<>0 Then
      Delete(Data,Pos(' ',Data),1);
  UNTIL Pos(' ',Data)=0;

  Dia:=Str2Num(Copy(Data,1,Pos('/',Data)-1));
  Delete(Data,1,Pos('/',Data));

  Mes:=Str2Num(Copy(Data,1,Pos('/',Data)-1));
  Delete(Data,1,Pos('/',Data));

  Ano:=Str2Num(Data);

  If (Dia=0) AND (Mes=0) Then
    If Ano=0 Then Begin
      Result:=Hoje;
      Exit;
    End;

  If (Dia=0) or (Dia>31) Then
    Dia:=Str2Num(Copy(Hoje,1,2));

  If (Mes=0) Or (Mes>12) Then
    Mes:=Str2Num(Copy(Hoje,4,2));

  If (Ano=0) Then
    Ano:=Str2Num(Copy(Hoje,9,2));


  If Ano<1000 Then Begin
    If Ano<60 Then
      Ano:=Ano+2000
    Else
      Ano:=Ano+1900;
  End;



  Dt:=FillLeft(2,Dia)+'/'+FillLeft(2,Mes)+'/'+FillLeft(4,Ano);
  If Not CheckDate(Dt) Then
    Dt:=Hoje;
  Result:=Dt;

END;



FUNCTION ConvertStr2Num ( Str : String ) : Longint;
VAR
  C      : Word;

BEGIN
  Result:=0;
  If Length(Str)=0 Then Exit;

  C:=1;
  REPEAT
    Result:=Result+(Ord(Str[C])*C);
    Inc(C);
  UNTIL C>Length(Str);

END;



(* CasasFinal : Com quantas casas o valor tem que ficar realmente *)
FUNCTION Arredonda ( Valor : Currency; CasasFinal : Word ) : Currency;
VAR
  V       : String;
  ToAdd   : String;

BEGIN

  Result:=Valor;

  If CasasFinal=99 Then Begin // Faz o truncamento
    Result:=Money2Float(Float2Money(Valor));
    Exit;
  End;

  If (CasasFinal<1) or (CasasFinal>3) Then Exit;
                                                        
  V:=FloattoStr(Valor);

  If Pos(',',V)=0 Then Exit;

  If (CasasFinal=1) AND (Length(V)>1) Then Begin
    Valor:=Money2Float(Float2Money(Valor));

    V:=FloattoStr(Valor);

    Delete(V,1,Pos(',',V));

    If Str2Num(V[2])>=5 Then Begin
      ToAdd:=Inttostr(10-Str2Num(V[2]));
      ToAdd:='0,0'+ToAdd;
      Valor:=Valor+Money2Float(ToAdd);
      V:=Float2Money(Valor);
      V:=Copy(V, 1, Length(V)-1);
      Result:=Money2Float(V);
      Exit;
    End Else Begin
      V:=Float2Money(Valor);
      V:=Copy(V, 1, Length(V)-1);
      Result:=Money2Float(V);
      Exit;
    End;
  End;

  Delete(V,1,Pos(',',V));

  If (CasasFinal=2) AND (Length(V)>2) Then Begin
    If Str2Num(V[3])=0 Then Begin
      Result:=Money2Float(Float2Money(Valor));
      Exit;
    End;

    If Str2Num(V[3])>=5 Then Begin
      ToAdd:=Inttostr(10-Str2Num(V[3]));
      ToAdd:='0,00'+ToAdd;
      Valor:=Valor+Money2Float3(ToAdd);
      Result:=Money2Float(Float2Money(Valor));
      Exit;
    End Else Begin
      ToAdd:='-0,00'+V[3];
      Valor:=Valor+Money2Float3(ToAdd);
      Result:=Money2Float(Float2Money(Valor));
      Exit;
    End;
  End;



  If (CasasFinal=3) AND (Length(V)>3) Then Begin
    If Str2Num(V[4])=0 Then Begin
      Result:=Money2Float(Float2Money(Valor));
      Exit;
    End;

    If Str2Num(V[4])>=5 Then Begin
      ToAdd:=Inttostr(10-Str2Num(V[4]));
      ToAdd:='0,000'+ToAdd;
      Valor:=Valor+StrtoFloat(ToAdd);
      Result:=Money2Float3(Float2Money3(Valor));
      Exit;
    End Else Begin
      ToAdd:='-0,000'+V[4];
      Valor:=Valor+StrtoFloat(ToAdd);
      Result:=Money2Float3(Float2Money3(Valor));
      Exit;
    End;
  End;




END;





PROCEDURE Delay ( Milisegundos : Longint );
VAR
  TheTime                      : Currency;

BEGIN

  TheTime:=GetTickCount+Milisegundos;

  While GetTickCount<TheTime do
    Application.ProcessMessages;

END;




PROCEDURE SleepDelay ( Milisegundos : Longint );
VAR
  TheTime : Longint;

BEGIN

  TheTime:=0;
  REPEAT
    Sleep(6);
    Application.ProcessMessages;
    TheTime:=TheTime+10;
  UNTIL TheTime>=Milisegundos;

END;


FUNCTION ConvertSTR2Number( Numero : String ) : String;
BEGIN

  Numero:=UnformatCGC_IE(Numero);

  REPEAT
    If Pos(' ',Numero)<>0 Then
      Delete(Numero,Pos(' ',Numero),1);
  UNTIL Pos(' ',Numero)=0;

  If Num(Numero) Then
    Result:=NUMERO
  Else
    Result:='';

END;


// Retorna se o valor Currency é inteiro ou nao
FUNCTION IsFloatInteiro(Valor : Currency) : Boolean;
VAR
  St     : String;
BEGIN
  Result:=FALSE;

  St:=Float2Money4(Valor);

  Delete(St,1,Pos(',',St));

  If Str2Num(St)=0 Then
    Result:=TRUE;

END;


(* Retorna o tempo em minutos gasto entre dois valores *)
FUNCTION TempoGasto ( DataSaida : String; HoraSaida : String; DataChegada : String; HoraChegada : String): Longint;
VAR
  HS, HC        : String[5];
  Dias, Tempo   : Longint;

  DC, DS        : Longint;

LABEL CALCULE;
BEGIN

  Result:=0;

  Hs:=Copy(HoraSaida,1,5);
  Hc:=Copy(HoraChegada,1,5);

  If DataSaida=DataChegada Then Begin
    Result:=TimetoInt(HC)-TimetoInt(Hs);
    Exit;
  End;


  Ds:=Date2Int(DataSaida);
  Dc:=Date2Int(DataChegada);
  Tempo:=0;

CALCULE:

  If DC-DS=1 Then Begin
    Tempo:=Tempo+TimeToInt('23:59')-TimetoInt(Hs);
    Tempo:=Tempo+1;
    Result:=Tempo+(TimetoInt(HC)-TimetoInt('00:00'));
    Exit;
  End;

  Dias:=DC-DS;
  Dec(Dias);

  DC:=DC-Dias;

  Tempo:=TimeToInt('24:00')*Dias;
  Goto Calcule;


END;


(* Alinha no centro uma string em um determinado tamanho *)
FUNCTION AlCenterString ( Texto : String; Tamanho : Longint ) : String;
VAR
  Sp     : Longint;
  St     : String;

BEGIN

  Result:='';

  If Length(Texto)>Tamanho Then Begin
    Result:=Copy(Texto,1,Tamanho);
    Exit;
  End;

  Sp:=(Tamanho-Length(Texto)) DIV 2;   // Espacos a esquerda

  If Sp=0 Then Begin
    Result:=Copy(Texto,1,Tamanho);
    Exit;
  End;

  St:=Space(Sp)+Texto;
  St:=St+Space(Tamanho-Length(St));

  Result:=ST;

END;


(* Alinha na Direita uma string em um determinado tamanho *)
FUNCTION AlRightString ( Texto : String; Tamanho : Longint ) : String;
VAR
  Sp     : Longint;
  St     : String;

BEGIN

  Result:='';

  If Length(Texto)>Tamanho Then Begin
    Result:=Copy(Texto,1,Tamanho);
    Exit;
  End;

  Sp:=Tamanho-Length(Texto);   // Espacos a esquerda

  If Sp=0 Then Begin
    Result:=Copy(Texto,1,Tamanho);
    Exit;
  End;

  St:=Space(Sp)+Texto;
  Result:=ST;

END;


(* Alinha na Direita uma string em um determinado tamanho *)
FUNCTION AlLeftString ( Texto : String; Tamanho : Longint ) : String;
VAR
  Sp     : Longint;
  St     : String;

BEGIN

  Result:='';

  If Length(Texto)>Tamanho Then Begin
    Result:=Copy(Texto,1,Tamanho);
    Exit;
  End;

  Sp:=Tamanho-Length(Texto);   // Espacos a esquerda

  If Sp=0 Then Begin
    Result:=Copy(Texto,1,Tamanho);
    Exit;
  End;

  St:=Texto+Space(Sp);
  Result:=ST;

END;


FUNCTION  CPFCGCValido ( CGC_OU_CPF : String ) : Boolean;
VAR
  Doc                  : TCheckDoc;
  ToCheck              : String;
  Valido               : Boolean;

LABEL FIM;
BEGIN

  Result:=FALSE;

  ToCheck:=AllTrim(UnformatCGC_IE(CGC_OU_CPF));

  If Str2Float(ToCheck)=0 Then
    Exit;


  If ToCheck='' Then Exit;

  If Length(ToCheck)<11 Then
    ToCheck:=Replicate('0',11-Length(ToCheck))+ToCheck;

  Doc:=TCheckDoc.Create(NIL);

  Valido:=FALSE;

  Doc.Mode:=moCPF;
  Doc.Input:=ToCheck;
  Valido:=Doc.Result;

  If Valido Then Begin
    Result:=TRUE;
    Goto FIM;
  End;

  If Length(ToCheck)<14 Then
    ToCheck:=Replicate('0',14-Length(ToCheck))+ToCheck;

  Doc.Mode:=moCGC;
  Doc.Input:=ToCheck;
  Result:=Doc.Result;

FIM:
  Doc.Destroy;

END;



FUNCTION CNPJCPFValido ( CNPJ_OU_CPF : Currency ) : Boolean;
VAR
  TOCheck              : String;

BEGIN

  ToCheck:=FormatCPFCNPJ(CNPJ_OU_CPF);
  Result:=CPFCGCValido(ToCheck);

END;



FUNCTION WeekDay ( Data : String ) : String;
var
  ADate: TDateTime;
BEGIN

  Result:='';
  If Not CheckDate(Data) Then Exit;

  ADate := StrToDate(Data);
  Case DayOfWeek(ADate) Of
    1 : Result:='Domingo';
    2 : Result:='Segunda-feira';
    3 : Result:='Terça-feira';
    4 : Result:='Quarta-feira';
    5 : Result:='Quinta-feira';
    6 : Result:='Sexta-feira';
    7 : Result:='Sábado';
  End;

END;


FUNCTION WeekDaySemFeira ( Data : String ) : String;
var
  ADate: TDateTime;
BEGIN

  Result:='';
  If Not CheckDate(Data) Then Exit;

  ADate := StrToDate(Data);
  Case DayOfWeek(ADate) Of
    1 : Result:='Domingo';
    2 : Result:='Segunda';
    3 : Result:='Terça';
    4 : Result:='Quarta';
    5 : Result:='Quinta';
    6 : Result:='Sexta';
    7 : Result:='Sábado';
  End;

END;


(* Dia da semana com apenas 3 caracteres *)
FUNCTION WeekDayShort ( Data : String ) : String;
var
  ADate: TDateTime;
BEGIN

  Result:='';
  If Not CheckDate(Data) Then Exit;

  ADate := StrToDate(Data);
  Case DayOfWeek(ADate) Of
    1 : Result:='Dom';
    2 : Result:='Seg';
    3 : Result:='Ter';
    4 : Result:='Qua';
    5 : Result:='Qui';
    6 : Result:='Sex';
    7 : Result:='Sab';
  End;

END;


(* Dia da semana com apenas 3 caracteres *)
FUNCTION WeekDay_ByNumber ( NumeroDiaDiaDaSemana : Longint ) : String;
BEGIN

  Result:='';

  Case NumeroDiaDiaDaSemana Of
    1 : Result:='Domingo';
    2 : Result:='Segunda';
    3 : Result:='Terça';
    4 : Result:='Quarta';
    5 : Result:='Quinta';
    6 : Result:='Sexta';
    7 : Result:='Sábado';
  End;

END;


(* 1.Domingo 2.Segunda ... 7.Sábado *)
FUNCTION WeekDay_Number ( Data : String ) : Integer;
var
  ADate: TDateTime;
BEGIN

  Result:=0;
  If Not CheckDate(Data) Then Exit;

  ADate := StrToDate(Data);
  Result:=DayOfWeek(ADate);

END;


(* 1.Domingo 2.Segunda ... 7.Sábado *)
FUNCTION ReturnSegundaFeiraDaSemana ( Data : String ) : String;
VAR
  DS      : Longint;

BEGIN

  Result:=Data;
  If Not CheckDate(Data) Then Exit;

  DS:=WeekDay_Number(Data);

  If DS=2 Then Exit;  // Segunda feira

  REPEAT
    Data:=DEC_IN_DATE(Data, 1);
    DS:=WeekDay_Number(Data);
  UNTIL DS=2;

  Result:=Data;  

END;



(* Retorna a ultima ocorrencia de uma tal string *)
FUNCTION LastPos ( Substr : String; S : String ) : Longint;
VAR
  C              : Longint;
  ToCheck        : String;
BEGIN

  Result:=0;
  If Length(S)=0 Then Exit;

  C:=Length(S);
  REPEAT
    ToCheck:=Copy(S,C,Length(S)+1);
    If Pos(Substr,ToCheck)=1 Then Begin
      Result:=C;
      Exit;
    End;
    Dec(C);
  UNTIL C<=0;

END;



(* Retorna a ultima ocorrencia de uma tal string *)
FUNCTION NextPos ( Substr : String; S : String; IndiceInicio : Longint ) : Longint;
VAR
  C              : Longint;
  ToCheck        : String;
BEGIN

  Result:=0;
  If Length(S)=0 Then Exit;
  ToCheck:=S;
  Delete(ToCheck,1,IndiceInicio);
  C:=Pos(Substr,ToCheck);

  If C>=0 Then
    C:=C+IndiceInicio;

  Result:=C;

END;




(* Pega uma data e verifica se ela cai de segunda a sexta-feira. Se nao cair, tranfere
   para a proxima segunda *)
FUNCTION ReturnProximoDiadaSemana ( Data : String ) : String;
VAR
  Nova                            : String;
BEGIN
  Nova:='';
  Result:=Data;

  If BlasterUpper(WeekDay(Data))='SÁBADO' Then
    Nova:=ADD_IN_DATE(Data,2);

  If BlasterUpper(WeekDay(Data))='DOMINGO' Then
    Nova:=ADD_IN_DATE(Data,1);

  If Nova<>'' Then
    Result:=NOVA;

END;


(* True se a data cair no fim de semana e false se nao *)
FUNCTION Data_FimdeSemana ( Data : String; FuncaoAtiva : Boolean ) : Boolean;
BEGIN

  Result:=FALSE;

  If Not FuncaoAtiva Then Exit;

  If BlasterUpper(WeekDay(Data))='SÁBADO' Then
    Result:=TRUE;
  If BlasterUpper(WeekDay(Data))='DOMINGO' Then
    Result:=TRUE;
    
END;



// TENHO QUE CHAMAR O RANDOMIZE ANTES DE USAR ISSO AQUI
FUNCTION GereStringAleatoria ( Tamanho : Longint ) : String;
VAR
  C      : Longint;
  St     : String;

BEGIN

  C:=1;
  St:='';
  REPEAT
    St:=St+Chr(Random(25)+65);
    Inc(C);
  UNTIL C>Tamanho;
  Result:=ST;

END;



// GEra String de Numeros Apenas Aleatorio
// TENHO QUE CHAMAR O RANDOMIZE ANTES DE USAR ISSO AQUI
FUNCTION GereNumerosAleatorios ( Tamanho : Longint ) : String;
VAR
  C      : Longint;
  St     : String;

BEGIN


  C:=1;
  St:='';
  REPEAT
    St:=St+InttoStr(Random(10));
    Inc(C);
  UNTIL C>Tamanho;
  Result:=ST;

END;



// Tira o nome do arquivo do FileName e retorna apenas o path de execucao
FUNCTION ExtractPath( FileName : String ) : String;
VAR
  St                  : String;
BEGIN

  Result:=FileName;
  St:=FileName;
  If Pos('.',St)=0 Then Begin
    Result:=FormatPath(FileName);
    Exit;
  End;

  Delete(St,LastPos('\',St)+1,Length(St));

  Result:=FormatPath(ST);

END;


(* Saudação *)
FUNCTION Saudacao : String;
VAR
  Hora   : String[5];
BEGIN

  Hora:=Timenow;

  If TIMETOINT(Hora)<=TimeToInt('12:00') Then Begin
    Result:='Bom dia';
    Exit;
  End;

  If TIMETOINT(Hora)<=TimeToInt('18:00') Then Begin
    Result:='Boa tarde';
    Exit;
  End;

  If TIMETOINT(Hora)<=TimeToInt('23:59') Then Begin
    Result:='Boa noite';
    Exit;
  End;

END;


(* Saudação *)
FUNCTION Saudacao_Frase : String;
VAR
  Hora   : String[5];
BEGIN

  Hora:=Timenow;

  If TIMETOINT(Hora)<=TimeToInt('12:00') Then Begin
    Result:='um bom dia';
    Exit;
  End;

  If TIMETOINT(Hora)<=TimeToInt('18:00') Then Begin
    Result:='uma boa tarde';
    Exit;
  End;

  If TIMETOINT(Hora)<=TimeToInt('23:59') Then Begin
    Result:='uma boa noite';
    Exit;
  End;

END;


(* Saudação *)
FUNCTION SaudacaoByeBye : String;
VAR
  Hora   : String[5];
BEGIN

  Hora:=Timenow;

  If TIMETOINT(Hora)<=TimeToInt('12:00') Then Begin
    Result:='Tenha um bom dia';
    Exit;
  End;

  If TIMETOINT(Hora)<=TimeToInt('18:00') Then Begin
    Result:='Tenha uma boa tarde';
    Exit;
  End;

  If TIMETOINT(Hora)<=TimeToInt('23:59') Then Begin
    Result:='Tenha uma boa noite';
    Exit;
  End;

END;


(* Gera a Contra Senha Porém sem Digito (5 Dezenas Separadas Por .) - Usado na Versao 1.0 Dos Geradores *)
FUNCTION ReturnContraSenha ( Senha : String; NumeroChave : Currency ) : String;
VAR
  St1, St2                       : Longint;
  St                             : String;
  StFInal                        : String[10];
  Final                          : Currency;

BEGIN

  St1:=ReturnSerial(Senha);
  St2:=GereSenha_LBC(Senha);

  Final:=St1*St2 / NumeroChave;

  St:=Float2Money(Final);
  St:=RemoveAll(',',St);
  St:=RemoveAll('-',St);

  StFinal:=St+St+St+'91827398739833';
  St:=StFinal;

  Insert('.',St,3);
  Insert('.',St,6);
  Insert('.',St,9);
  Insert('.',st,12);

  Result:=ST;

END;


FUNCTION RemoveAll ( Subst : String; Texto : String ) : String;
BEGIN

  REPEAT
    If Pos(Subst,Texto)<>0 Then
      Delete(Texto,Pos(Subst,Texto),Length(Subst));
  UNTIL Pos(Subst,Texto)=0;
  Result:=Texto;

END;

(* Remove caracter a caracter passado como parametro de uma string
  Ex: RemoveChars('ai','Daniel');
      Returns: Dnel
*)
FUNCTION RemoveChars ( Caracteres_a_Remover : String; Texto : String ) : String;
VAR
  C      : Longint;
  ToFind : String;
BEGIN

  Result:=Texto;
  If Length(Caracteres_a_Remover)=0 Then Exit;

  C:=1;
  REPEAT

    ToFind:=Caracteres_a_Remover[C];

    REPEAT
      If Pos(ToFind,Texto)<>0 Then
        Delete(Texto,Pos(ToFind,Texto),Length(ToFind));
    UNTIL Pos(ToFind,Texto)=0;

    Inc(C);
  UNTIL C>Length(Caracteres_a_Remover);

  Result:=Texto;

END;




// Checa o Mes e dia para datas sem ano (Ex: 16/12)
FUNCTION Check_DiaMes ( Data : String ) : Boolean;
BEGIN
  Result:=FALSE;
  Data:=Data+'/2000';
  If Not CheckDAte(Data) Then Exit;
  Result:=TRUE;
END;


// Checa o Mes e dia para datas sem ano (Ex: 16/12)
FUNCTION Format_DiaMes ( Data : String ) : String;
BEGIN
  Result:=Hoje;
  Data:=Data+'/2000';
  Data:=FormatDate(Data);
  Result:=Copy(DATA,1,5);
END;


// Retorna o numero de dias que se passaram entre datas;
// Quando a datainicial e final são iguais, retorna 1
FUNCTION QdeDiasEntreDatas ( DataInicial, DataFinal : String ) : Longint;
BEGIN
  Result:=DiasEntreDatas(DAtaInicial, DAtaFinal)+1;
END;


// Retorna o numero de dias que se passaram entre datas;
// Quando a datainicial e final são iguais, retorna ZERO. 
FUNCTION DiasEntreDatas ( DataInicial, DataFinal : String ) : Longint;
VAR
  Data                  : String;
  Dias, De, Ate         : Longint;
  Negativo              : Boolean;

BEGIN
  Result:=-1;
  Negativo:=FALSE;

  If (Not CheckDate(DataInicial)) Or (Not CheckDate(DataFinal)) Then Exit;

  If abs(Date2Int(DataInicial)-Date2Int(DataFinal))>36500 Then Exit;  // Mais de 10 anos não calcula

  If Date2Int(DataInicial)>Date2Int(DataFinal) Then Begin
    Negativo:=TRUE;
    Data:=DataInicial;
    DataInicial:=DataFinal;
    DataFinal:=Data;
  End;

  If DataInicial=DataFinal Then Begin
    Result:=0;
    Exit;
  End;

  De:=Date2Int(DataInicial);
  Ate:=Date2Int(DataFinal);

  Data:=DataInicial;
  Dias:=1;
  REPEAT
    De:=ADD_IN_DATE_LONG(De,1);
    Inc(Dias);
  UNTIL De>=Ate;

  If Negativo Then
    Dias:=Dias*-1;

  If Negativo Then
    Inc(Dias)
  Else
    Dec(Dias);

  Result:=Dias;

END;


// Retorna o numero de dias que se passaram entre datas;
FUNCTION AnosEntreDatas ( DataInicial, DataFinal : String ) : Longint;
VAR
  Data                  : String;
  AnosDif               : Longint;

BEGIN

  Result:=0;

  If (Not CheckDate(DataInicial)) Or (Not CheckDate(DataFinal)) Then Exit;

  If Date2Int(DataInicial)>Date2Int(DataFinal) Then Begin
    Data:=DataInicial;
    DataInicial:=DataFinal;
    DataFinal:=Data;
  End;

  AnosDif:=Str2Num(Copy(DataFinal,7,7))-Str2Num(Copy(DataInicial,7,7));

  Result:=Abs(AnosDif);

END;


// Retorna o Dígito Verificador no formato "MODULO 10" -> Cobrança Bancária
FUNCTION ReturnDV_Modulo10 ( Numero : String ) : Longint;
VAR
  Nums                     : String;
  Total, Valor, C, M       : Longint;
  Multiplicador            : String;

BEGIN

  Multiplicador:='21';
  Nums:='';

  Result:=0;
  If Length(Numero)=0 Then Exit;

  C:=Length(Numero);
  M:=1;
  REPEAT
    Valor:=Str2Num(Numero[C])*Str2Num(Multiplicador[M]);
    Nums:=Nums+InttoStr(Valor);
    Dec(C);
    Inc(M);
    If M>2 Then
      M:=1;
  UNTIL C=0;


  Total:=0;
  C:=1;
  REPEAT
    Total:=Total+Str2Num(Nums[C]);
    Inc(C);
  UNTIL C>Length(Nums);


  Valor:=Total MOD 10;

  Result:=10-Valor;

END;


// Retorna o Dígito Verificador no formato "MODULO 10" -> Cobrança Bancária
FUNCTION ReturnDV_Modulo11 ( Numero : String ) : Longint;
VAR
  Nums                     : String;
  Total, Valor, C, M       : Longint;
  Multiplicador            : String;

BEGIN

  Multiplicador:='23456789';
  Nums:='';

  Result:=0;
  If Length(Numero)=0 Then Exit;

  C:=Length(Numero);
  Total:=0;
  M:=1;
  REPEAT
    Valor:=Str2Num(Numero[C])*Str2Num(Multiplicador[M]);
    Total:=Total+Valor;
    Dec(C);
    Inc(M);
    If M>8 Then
      M:=1;
  UNTIL C=0;


  Valor:=Total MOD 11;

  Valor:=11-Valor;

  If (Valor=0) Or ((Valor>=10) or (Valor=1)) Then Begin
    Result:=1;
    Exit;
  End;

  Result:=VALOR;

END;



{
function Modulo11(N : string) : string;
var
  Somatorio,m,f : Integer;
begin
  m := 2;
  Somatorio := 0;
  for f := Length(N) downto 1 do
    begin
      Somatorio := Somatorio + (StrToInt(N[f]) * m);
      inc(m);
      if m = 10 then m := 2;
    end;
  m := Somatorio div 11;
  m := 11 - (Somatorio - (m * 11));
  if m = 10 then m := 0;
  if m = 11 then m := 1;
  Result := IntToStr(m);
end;
}

Function Modulo11( N : string): string;
var
  Soma                          : Integer;
  Contador, Peso, Digito        : Integer;
begin
  Soma := 0;
  Peso := 2;

  for Contador := Length(N) downto 1 do begin
    Soma := Soma + (StrToInt(N[Contador]) * Peso);
    if Peso < 9 then
      Peso := Peso + 1
    else
      Peso := 2;
  end;

  Digito := 11 - (Soma mod 11);
  if (Digito > 9) then
    Digito := 0;

  Result := IntToStr(Digito);
end;


function Modulo10(N : string) : string;
var
  Somatorio,m,k,f : Integer;
begin
  Somatorio := 0;
  if Odd(Length(N))
    then m := 2
    else m := 1;
  for f := 1 to Length(N) do
    begin
      k := StrToInt(N[f]) * m;
      if k > 9 then k := 1 + (k - 10);
      Somatorio := Somatorio + k;
      if m = 1
        then m := 2
        else m := 1;
    end;
  m := 1000 - Somatorio;
  Result := Copy(IntToStr(m), Length(IntToStr(m)), 1);
end;



{------------------------------------------------- 
  Credit card validator 

  Returns: 

   0  : Card is invalid or unknown
   1  : Card is a valid AmEx 
   2  : Card is a valid Visa
   3  : Card is a valid MasterCard

-------------------------------------------------}

function CreditCardValidator(c: string): integer;
var
  card: string[21];
  Vcard: array[0..21] of byte absolute card;
  Xcard: integer;
  Cstr: string[21]; 
  y, x: integer; 
begin 
  Cstr := ''; 
  fillchar(Vcard, 22, #0); 
  card := c; 
  for x := 1 to 20 do 
    if (Vcard[x] in [48..57]) then 
      Cstr := Cstr + chr(Vcard[x]); 
  card := ''; 
  card := Cstr; 
  Xcard := 0; 
  if not odd(length(card)) then
    for x := (length(card) - 1) downto 1 do
    begin 
      if odd(x) then 
        y := ((Vcard[x] - 48) * 2)
      else
        y := (Vcard[x] - 48); 
      if (y >= 10) then 
        y := ((y - 10) + 1);
      Xcard := (Xcard + y)
    end 
  else 
    for x := (length(card) - 1) downto 1 do 
    begin 
      if odd(x) then
        y := (Vcard[x] - 48)
      else
        y := ((Vcard[x] - 48) * 2);
      if (y >= 10) then
        y := ((y - 10) + 1);
      Xcard := (Xcard + y)
    end;
  x := (10 - (Xcard mod 10));
  if (x = 10) then
    x := 0;
  if (x = (Vcard[length(card)] - 48)) then
    Result := ord(Cstr[1])-ord('2')
  else
    Result := 0
end; 


// Liga a Tecla NUM_LOCK
PROCEDURE SETNumLock ( SetOn : Boolean );
VAR
  KeyState             : TKeyboardState;
BEGIN
  GetKeyboardState(KeyState);
  If SetOn Then
    KeyState[VK_NUMLOCK]:=$01
  Else
    KeyState[VK_NUMLOCK]:=$00;
  SetKeyboardState(KeyState);
END;

// Liga a Tecla CAPS LOCK
PROCEDURE SETCapsLock ( SetOn : Boolean );
VAR
  KeyState             : TKeyboardState;
BEGIN
  GetKeyboardState(KeyState);
  If SetOn Then
    KeyState[VK_CAPITAL]:=$01
  Else
    KeyState[VK_CAPITAL]:=$00;
  SetKeyboardState(KeyState);
END;

// Liga a Tecla SCROLL LOCK
PROCEDURE SETScrollLock ( SetOn : Boolean );
VAR
  KeyState             : TKeyboardState;
BEGIN
  GetKeyboardState(KeyState);
  If SetOn Then
    KeyState[VK_SCROLL]:=$01
  Else
    KeyState[VK_SCROLL]:=$00;
  SetKeyboardState(KeyState);
END;



FUNCTION SetDate ( NovaData : String ) : Boolean;
VAR
  Dia,Mes,Ano, Hora, Min   : Word;
  St                       : TSystemTime;
BEGIN

  Result:=FALSE;
  If Not CheckDate(NovaData) Then Exit;

  GetLocalTime(St);
  Dia:=Str2Num(Copy(NovaData,1,2));
  Mes:=Str2Num(Copy(NovaDAta,4,2));
  Ano:=Str2Num(Copy(NovaData,7,4));
  Hora:=Str2Num(Copy(TimeNow,1,2));
  Min:=Str2Num(Copy(TimeNow,4,2));

  St.WYear:=Ano;
  St.WMonth:=Mes;
  St.WDay:=Dia;
  St.wHour:=Hora;
  St.wMinute:=Min;

  If SetLocalTime(St) Then
    Result:=TRUE;

END;


FUNCTION SetTime ( NovaHora : String ) : Boolean;
VAR
  Dia,Mes,Ano, Hora, Min, Seg   : Word;
  St                            : TSystemTime;
BEGIN

  Result:=FALSE;
  If Length(NovaHora)=5 Then
    NovaHora:=NovaHora+':00';

  If Length(NovaHora)<>8 Then Exit;
  If Not CheckTime(Copy(NovaHora,1,5)) Then Exit;

  GetLocalTime(St);
  Dia:=Str2Num(Copy(Hoje,1,2));
  Mes:=Str2Num(Copy(Hoje,4,2));
  Ano:=Str2Num(Copy(Hoje,7,4));
  Hora:=Str2Num(Copy(NovaHora,1,2));
  Min:=Str2Num(Copy(NovaHora,4,2));
  Seg:=Str2Num(Copy(NovaHora,7,2));

  St.WYear:=Ano;
  St.WMonth:=Mes;
  St.WDay:=Dia;
  St.wHour:=Hora;
  St.wMinute:=Min;
  St.wSecond:=Seg;

  If SetLocalTime(St) Then
    Result:=TRUE;

END;


FUNCTION SendFileToTrash ( FileName : String ) : Boolean;
VAr
  Fos                    : TSHFileOPStruct;
BEGIN
  FillChar(Fos, SizeOf(Fos),0);
  With Fos do Begin
    wFunc:=FO_Delete;
    pFrom:=PChar(FileName);
    fFlags:=FOF_ALLOWUNDO or FOF_NOCONFIRMATION or FOF_SILENT;
  End;
  Result:= ( 0 = shFileOperation(Fos));

END;


// Exibe as propriedades do arquivo desejado
PROCEDURE DisplayFileProperties ( FileName : String );
VAR
  Sei     : TShellExecuteInfo;
BEGIN
  FillChar(Sei,SizeOf(Sei),#0);
  Sei.cbSize:=SizeOf(Sei);
  Sei.lpFile:=PChar(FileName);
  Sei.lpVerb:='properties';
  sei.fMask:=SEE_MASK_INVOKEIDLIST;
  ShellExecuteEx(@Sei);
END;



// Retorna true se o campo data foi deixado em branco
FUNCTION EmptyDate_DiaMes ( Data : String ) : Boolean;
BEGIN
  If Data='  /  ' Then
    Result:=True
  Else
    Result:=False;
END;



PROCEDURE SetCtrlAltDel ( SetOn : Boolean );
VAR
  OldValue                      : LongBool;
BEGIN
  SystemParametersInfo(97,Word(SetOn),@OldValue,0);
END;



PROCEDURE ColoraTodosTEdit( Formulario : TForm; Cor : TColor );
Var i : Integer;
begin

  If Formulario=NIL Then Exit;

  If Formulario.ComponentCount<=0 Then Exit;

  for i := 0 to Formulario.ComponentCount -1 do
     if ((Formulario.Components[i] is TEdit) Or (Formulario.Components[i] is TMaskEdit)) Or
        ((Formulario.Components[i] is TComboBox) or (Formulario.Components[i] is tAlignEdit)) then begin
       If Formulario.Components[i]<>NIL Then Begin
         If Formulario.Components[i] is TEdit then
           TEdit(Formulario.Components[i]).Color:=Cor
         Else Begin
           If Formulario.Components[i] is TComboBox then
             TComboBox(Formulario.Components[i]).Color:=Cor
           Else Begin
             If Formulario.Components[i] is TAlignEdit Then Begin
               TAlignEdit(Formulario.Components[i]).ColorOnFocus:=Cor;
               TAlignEdit(Formulario.Components[i]).ColorOnNoFocus:=Cor;
             End Else
               TMaskEdit(Formulario.Components[i]).Color:=Cor;
           End;
         End;
       End;
  end;
END;



PROCEDURE ColoraTodosPanels( Formulario : TForm; CorDe, CorPara : TColor );
Var i : Integer;
begin

  If Formulario=NIL Then Exit;

  If Formulario.ComponentCount<=0 Then Exit;

  for i := 0 to Formulario.ComponentCount -1 do Begin

     if ((Formulario.Components[i] is tPanel) Or (Formulario.Components[i] is tLabel)) Or
        ((Formulario.Components[i] is tShape)) then begin

       If Formulario.Components[i] is tPanel Then Begin

         If TPanel(Formulario.Components[i]).Color=CorDe Then
           TPanel(Formulario.Components[i]).Color:=CorPara;

       End Else Begin

         If Formulario.Components[i] is tLabel Then Begin

           If tLabel(Formulario.Components[i]).Color=CorDe Then Begin
             tLabel(Formulario.Components[i]).Color:=CorPara;
           End;

         End Else Begin

           If tShape(Formulario.Components[i]).Brush.Color=CorDe Then Begin
             tShape(Formulario.Components[i]).Brush.Color:=CorPara;
           End;
           
         End;

       End;

     End;

  end;

END;



//  TRUE se NUM_LOCK tiver ligado
FUNCTION NumLockON : Boolean;
VAR
  KeyState             : TKeyboardState;
BEGIN
  GetKeyboardState(KeyState);
  If KeyState[VK_NUMLOCK]=$01 Then
    Result:=TRUE
  Else
    Result:=FALSE;
END;


// Retorna TRUE se o CAPSLOCK estiver ligado
FUNCTION CapsLockON : Boolean;
VAR
  KeyState             : TKeyboardState;
BEGIN
  GetKeyboardState(KeyState);
  If KeyState[VK_CAPITAL]=$01 Then
    Result:=TRUE
  Else
    Result:=FALSE;
END;


// Retorna TRUE se o SCROLLLOCK estiver ligado
FUNCTION ScrollLockON : Boolean;
VAR
  KeyState             : TKeyboardState;
BEGIN
  GetKeyboardState(KeyState);
  If KeyState[VK_SCROLL]=$01 Then
    Result:=TRUE
  Else
    Result:=FALSE;
END;



FUNCTION SetFormONTop ( Form : TForm; ToTop : Boolean ) : boolean;
BEGIN
  If ToTop Then
    Result:=SetWindowPos(Form.Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE or SWP_NOSIZE)
  Else
    Result:=SetWindowPos(Form.Handle, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_NOMOVE or SWP_NOSIZE);
END;


FUNCTION ExistDir ( Path : String ) : Boolean;
BEGIN

  Path:=FormatPath(path);
  Try
    Result:=DirectoryExists(Path);
  Finally
  End;

END;



(* Esta funcao apenas retorna o indice do item na lista a partir do StateIndex Informado;
   retorna -1 qdo nao encontra *)
FUNCTION ReturnIndiceListView_ByStateIndex ( Lista : TListView; StateIndex : Longint ) : Longint;
VAR
  C                                                : Longint;
BEGIN
  C:=0;
  Result:=-1;
  If Lista=NIL Then Exit;
  If Lista.Items.Count=0 Then Exit;
  REPEAT
    If Lista.Items.Item[C].StateIndex=StateIndex Then Begin
      Result:=C;
      Exit;
    End;
    Inc(C);
  UNTIL C>=Lista.Items.Count;
END;




(* Esta funcao apenas retorna o indice do item na lista a partir do StateIndex Informado;
   retorna -1 qdo nao encontra *)
FUNCTION ReturnIndiceTreeView_ByStateIndex ( Lista : TTreeView; StateIndex : Longint ) : Longint;
VAR
  C                                                : Longint;
BEGIN
  C:=0;
  Result:=-1;
  If Lista=NIL Then Exit;
  If Lista.Items.Count=0 Then Exit;
  REPEAT
    If Lista.Items.Item[C].StateIndex=StateIndex Then Begin
      Result:=C;
      Exit;
    End;
    Inc(C);
  UNTIL C>=Lista.Items.Count;
END;




Function Hex2Bin (B : Byte) : String;
Var
  Temp : String [8];
  Pos, Mask : Byte;

begin
  Temp := '00000000';
  Pos := 8;
  Mask := 1;
  While (Pos > 0) Do
    begin
      if (B = Mask)
        then
          Temp [Pos] := '1';
      Dec (Pos);
      Mask := 2 * Mask;
    end;
  Hex2Bin := Temp;
end;


FUNCTION HexaValido ( aValue : String ) : Boolean;
VAR
  C      : Longint;
BEGIN
  Result:=TRUE;

  If Length(aValue)=0 Then Begin
    Result:=FALSE;
    Exit;
  End;

  C:=1;
  REPEAT
    If Pos(UpperKey(aValue[C]), '0123456789ABCDEF')=0 Then Begin
      Result:=FALSE;
      Exit;
    End;
    Inc(C);
  UNTIL C>Length(aValue);

END;


Function HexToDec(aValue : String) : LongInt;
Var
  l : LongInt;
  b : Byte;
Begin
  Result := 0;

  If Not HexaValido(aValue) Then Exit;

  if Length(aValue) <> 0 then
   begin
     l := 1;
     b := Length(aValue) + 1;
     repeat
      dec(b);
      if aValue[b] <= '9' then Result := Result + (Byte(aValue[b]) - 48) * l
      else Result := Result + (Byte(aValue[b]) - 55) * l;
      l := l * 16;
     until b = 1;
   end;
   
End;{Function HexToDec}


Function BinToDec(aValue : String) : LongInt;
Var
  l : LongInt;
  b : Byte;
Begin
  Result := 0;

  if Length(aValue) = 0
   then Exit;

  l := 1;
  b := Length(aValue) + 1;

  repeat
   dec(b);
   if aValue[b] = '1'
    then Result := Result + l;
   l := l shl 1;
  until b = 1;

End;{Function BinToDec}


(* Substitui um valor em uma string por outro qualquer - retorna FALSE se o valor nao
   for encontraod na string (pos) *)
FUNCTION Substitua( VAR Texto : String; ValorOriginal, NovoValor : String ) : Boolean;
VAR
  Posicao           : Longint;
BEGIN
  Result:=FALSE;


  If ValorOriginal=NovoValor Then Begin
    Result:=TRUE;
    Exit;
  End;

  REPEAT
    Posicao:=Pos(ValorOriginal,Texto);
    If Posicao>0 Then Begin
      If (Length(ValorOriginal)=1) AND (Length(NovoValor)=1) Then Begin
        Texto[Posicao]:=NovoValor[1];
      End Else Begin
        Delete(Texto,Posicao,Length(ValorOriginal));
        Insert(NovoValor,Texto,Posicao);
      End
    End;
  UNTIL Posicao<=0;

  Result:=TRUE;
END;


FUNCTION ReturnMachineName : String;
VAR
  Registro                 : TRegistry;
  Nome                     : String;
  ControlSET               : Longint;

BEGIN

  if ExistArq('c:\PULAPROTECTIONHPROTBABY.PLEASE')then  Begin
    Result:='DEVELOPERXP2';
    exit;
  end;


  Registro:=TRegistry.Create;
  Registro.RootKey:=HKEY_LOCAL_MACHINE;
  Registro.OpenKey('System\CurrentControlSet\Services\VXD\VNETSUP',False);
  Nome:=Registro.ReadString('ComputerName');


  If Nome='' Then Begin

    ControlSET:=1;
    REPEAT

      If Nome='' Then Begin  // XP
        Registro.RootKey:=HKEY_LOCAL_MACHINE;
        Registro.OpenKey('SYSTEM\ControlSet'+FillLeft(3,ControlSET)+'\Control\ComputerName\ActiveComputerName',False);
        Nome:=Registro.ReadString('ComputerName');
      End;

      Inc(ControlSET);
    UNTIL (Nome<>'') or (ControlSET>10);

  End;

  Result:=BlasterUpper(Nome);

END;



FUNCTION RunningWindowsXP : Boolean;
VAR
  Registro                 : TRegistry;
  Nome                     : String;
BEGIN

  Result:=FALSE;
  Registro:=TRegistry.Create;
  Registro.RootKey:=HKEY_LOCAL_MACHINE;
  Registro.OpenKey('System\CurrentControlSet\Services\VXD\VNETSUP',False);
  Nome:=Registro.ReadString('ComputerName');
  If Nome='' Then
    Result:=TRUE;

END;



Function DecToHex(aValue : LongInt) : String;
Var
  w  : Array[1..2] of Word absolute aValue;
  St : String;

  Function HexByte(b: Byte): String;
  Const
    Hex: Array[$0..$F] of Char = '0123456789ABCDEF';
  Begin
    HexByte := Hex[b shr 4] + Hex[b and $F];
  End;

  Function HexWord(w: Word): String;
  Begin
    HexWord := HexByte(Hi(w)) + HexByte(Lo(w));
  End;

Begin

  St := HexWord(w[2]) + HexWord(w[1]);
  while (St[1] = '0') and (Length(St) > 1) do
   Delete(St, 1, 1);
  Result := St;

End;{Function DecToHex}


FUNCTION IDADE_Anos ( Nascimento : String ): Longint;
VAR
  ST     : String;
BEGIN
  St:=Idade_Completa(Nascimento,Hoje);
  Delete(St,Pos(' ',St),Length(St));
  Result:=Str2Num(St);
END;


(* Dá um tempinho de 3 vezes o "TEMPO" no caracter de parada *)
PROCEDURE TypeText_OnLabel ( Texto : String; Tempo : Longint; CaracterParada : Char; Objeto : TLabel );
VAR
  C       : Word;

BEGIN

  C:=1;
  REPEAT
    If Texto[C]=CaracterParada Then
      Delay(Tempo*3)
    Else
      Objeto.Caption:=Objeto.Caption+Texto[C];
    Inc(C);
    Delay(Tempo);
  UNTIL C>Length(Texto);

END;


FUNCTION FillLeftFloat(Tam : Longint; Num:Currency):String;
VAR
  St     : String;
BEGIN

  St:=FloattoStr(Num);

  Result:=ST;

  If Tam<=0 Then Exit; 

  If Length(St)>TAM Then
    Delete(St,Tam,Length(St));

  If Length(St)<TAM Then
    St:=Replicate('0',TAM-Length(St))+St;

  Result:=ST;

END;


FUNCTION UpperKEY ( Ch : Char ) : Char;
VAR
  St     : String;
BEGIN
  St:=' ';
  St[1]:=Ch;
  St:=BlasterUpper(St);
  Result:=St[1];
END;


FUNCTION LowerKEY ( Ch : Char ) : Char;
VAR
  St     : String;
BEGIN
  St:=' ';
  St[1]:=Ch;
  St:=BlasterLower(St);
  Result:=St[1];
END;


FUNCTION ReturnValor_ComDesconto ( ValorTotal, DescontoPorcentagem : Currency ) : Currency;
VAR
  Valor     : Currency;
BEGIN

  Valor:=Arredonda(ValorTotal*DescontoPorcentagem / 100.00,2);  // Achei o valor do desconto
  Result:=ValorTotal-Valor;

END;

(* Retorna se o numero inteiro é par ou não *)
FUNCTION NumeroPar ( Numero : Longint ) : Boolean;
BEGIN
  Result:=TRUE;
  If Numero=0 Then Exit;
  If Numero MOD 2 = 0 Then
    Exit
  Else
    Result:=FALSE;
END;


// Retorna true se a string tiver apenas caracteres válidos (nada de lixo)
FUNCTION StringValida ( Texto : String ) : Boolean;
VAR
  Found   : Boolean;
  C       : Longint;
BEGIN
  Found:=FALSE;
  Result:=TRUE;
  If Length(Texto)=0 Then Exit;

  C:=1;
  REPEAT
//    If Pos(OrdTexto[C],' 0123456789|\/=+-_0)9(8*7&6^5%4$3#2@1!QWERTYUIOP{[}]ASDFGHJKL:;"ZXCVBNM,<.>/?~`')=0 Then
    If Ord(Texto[C])<32 Then
      Found:=TRUE;
    If Ord(Texto[C])>126 Then
      Found:=TRUE;
    Inc(C);
  UNTIL (C>Length(Texto)) Or (Found);

  If Found Then
    Result:=FALSE;
END;


// Retorna true se a string tiver apenas caracteres (letras e numeros)
FUNCTION StringLetras_Numeros ( Texto : String ) : Boolean;
VAR
  Found   : Boolean;
  C       : Longint;
BEGIN
  Found:=FALSE;
  Result:=TRUE;
  If Length(Texto)=0 Then Exit;
  C:=1;
  REPEAT
    If Pos(Texto[C],'0123456789QWERTYUIOPASDFGHJKLZXCVBNM')=0 Then
      Found:=TRUE;
    Inc(C);
  UNTIL (C>Length(Texto)) Or (Found);
  If Found Then
    Result:=FALSE;
END;



// Tira os caracteres especiais de uma string permitindo apenas numeros e letras
FUNCTION ReturnStringAlfanumerica ( Texto : String ) : String;
VAR
  Found   : Boolean;
  C       : Longint;
  St      : String;

BEGIN

  Result:=Texto;

  If Length(Texto)=0 Then Exit;

  C:=1;
  REPEAT

    If Pos(Texto[C],'0123456789QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm')<>0 Then
      St:=St+Texto[C];

    Inc(C);
  UNTIL (C>Length(Texto));

  Result:=St;

END;


// Checa se o BDE está instalado
// Demora um pouco pq ele tenta inicializar o BDE
FUNCTION BDEInstalled : Boolean;
VAR
  Existe  : Boolean;
BEGIN
  Existe:=(dbiInit(nil)=0);
  Result:=Existe;
END;


(* Abre uma caixa para seleção de diretório e retorna o que foi selecionado (quando true) *)
FUNCTION SelectDir ( DiretorioBase : String; VAR DirSelected : String ) : Boolean;
VAR
  Current, DIR          : String;

BEGIN
{$I-}

  If Not ExistDir(DiretorioBase) Then
    DiretorioBase:=CurrentDir;

  Result:=FALSE;
  Current:=CurrentDir;
  DirSelected:=DiretorioBase;

  Dir:=DiretorioBase;
  If SelectDirectory(Dir,[sdAllowCreate,sdPerformCreate,sdPrompt],0) Then Begin
    DirSelected:=FormatPath(Dir);
    Result:=TRUE;
  End;

  chDir(Current);
  ClearIOResult;

END;


// Converte Hora completa (hh:mm:ss) para segundos;
// -1 Erro
FUNCTION Time2Seconds ( Time : String ) : Longint;
VAR
  H,M,S               : Longint;
  T                   : Longint;
BEGIN

  Result:=-1;

  If Pos(':',Time)=0 Then Exit;

  H:=Str2Num(Copy(Time,1,Pos(':',Time)-1));
  Delete(Time,1,Pos(':',Time));

  If Pos(':',Time)=0 Then Exit;

  M:=Str2Num(Copy(Time,1,Pos(':',Time)-1));
  Delete(Time,1,Pos(':',Time));

  S:=Str2Num(Time);

  T:=S;
  T:=T+(M*60);
  T:=T+((H*60)*60);
  Result:=T;

END;


FUNCTION Seconds2TimeSt ( Segundos : Longint ) : String;
VAR
  Dias                             : Longint;
  VinteQuatroHoras                 : Longint;

BEGIN

  Result:='';
  If Segundos<=0 Then Exit;
  If Segundos>999999990 Then Exit;

  Dias:=0;
  VinteQuatroHoras:=Time2Seconds('24:00:00');

  If Segundos>=VinteQuatroHoras Then Begin

    REPEAT

      If Segundos>=VinteQuatroHoras Then Begin
        Inc(Dias);
        Segundos:=Segundos-VinteQuatroHoras;
      End;

    UNTIL Segundos<VinteQuatroHoras;

  End;


  If Dias>0 Then Begin

    If Dias=1 Then
      Result:=InttoStr(Dias)+'d'
    Else
      Result:=InttoStr(Dias)+'d';

    If Segundos>0 Then
      Result:=Result+'+'+Copy(Seconds2Time(Segundos),1,5)+'hs';

  End Else Begin

    Result:=Copy(Seconds2Time(Segundos),1,5)+'hs';

  End;

END;


FUNCTION Seconds2FullTimeSt ( Segundos : Currency ) : String;
VAR
  Dias                             : Longint;
  VinteQuatroHoras                 : Longint;
  Sec                              : Longint;

BEGIN

  Result:='??:??:??';

  If Segundos<=0 Then Exit;

  Try
    If Length(FloattoStr(Segundos))>14 Then Exit;
  Except
    Exit;
  End;

  Dias:=0;
  VinteQuatroHoras:=Time2Seconds('24:00:00');

  If Segundos>=VinteQuatroHoras Then Begin

    REPEAT

      If Segundos>=VinteQuatroHoras Then Begin
        Inc(Dias);
        Segundos:=Segundos-VinteQuatroHoras;
      End;

    UNTIL Segundos<VinteQuatroHoras;

  End;


  If Dias>0 Then Begin

    If Dias=1 Then
      Result:=InttoStr(Dias)+'d'
    Else
      Result:=InttoStr(Dias)+'d';

    If Segundos>0 Then Begin
      Sec:=Float2Int(Segundos);
      Result:=Result+'+'+Seconds2Time(Sec);
    End;

  End Else Begin

    Sec:=Float2Int(Segundos);
    Result:=Seconds2Time(Sec);

  End;

END;


// Converte Hora completa (hh:mm:ss) para segundos;
// '' Erro
FUNCTION Seconds2Time ( Segundos : Longint ) : String;
VAR
  H,M,S               : Longint;
  T                   : Longint;
BEGIN

  Result:='';

  T:=Segundos;

  H:=0;
  M:=0;
  S:=0;

  H:=T DIV 3600;
  T:=T-(H*3600);

  M:=T DIV 60;
  T:=T-(M*60);

  S:=T;


  Result:=FillLeft(2,H)+':'+FillLeft(2,M)+':'+FillLeft(2,S);

END;


// Retorna o tempo restante para término de um job...
FUNCTION TempoRestante ( HoraInicio : String; PercentDone : Currency ) : String;
VAR
  I, A, Elap, F           : Longint;
  Valor                   : Currency;
  St                      : String;

BEGIN

  Result:='';

  I:=Time2Seconds(HoraInicio);  // Inicio
  If I<=0 Then Exit;

  A:=Time2Seconds(TimeNow);  // Atual

  Elap:=A-I;   // Elapsed

  If Elap=0 Then Exit;
  If PercentDone=0 Then Exit;

  Valor:=Elap*100.00 / PercentDone;

  F:=Float2Int(Int(Valor));  // Quantos segundos faltam


  If F<=60 Then
    Result:=Inttostr(F)+' segundos'
  Else Begin
    St:=Seconds2Time(F);
    If Str2Num(Copy(St,1,2))=0 Then Begin  // Min+Seg
      Result:=InttoStr(Str2Num(Copy(St,4,2)))+' minuto(s)';
    End else Begin             // Hora, Min, Seg
      Result:=InttoStr(Str2Num(Copy(St,1,2)))+' hora(s), '+InttoStr(Str2Num(Copy(St,4,2)))+' minuto(s)';
    End;
  End;

END;


// Para ser colocado no evento onkeypressed para aceitar apenas numeros
PROCEDURE OnlyNumbersAccepted( Var Key : Char; AceitarPontoOuVirgula : Boolean; AceitarNegativo : Boolean );
VAR
  St      : String;
BEGIN
  St:='0123456789'+Chr(8);
  If AceitarPontoOuVirgula then
    St:=St+'.,';
  If AceitarNegativo Then
    St:=St+'-';
  If Pos(Key,St)=0 Then
    Key:=#0;
END;



// Para ser colocado no evento onkeypressed para aceitar apenas numeros
PROCEDURE OnlyNumeroLetrasAccepted( Var Key : Char );
VAR
  St      : String;
BEGIN
  Key:=UpperKey(Key);
  St:='0123456789 ABCDEFGHIJKLMNOPQRSTUVXYWZ'+Chr(8);
  If Pos(Key,St)=0 Then
    Key:=#0;
END;


(* Pega uma string passada como parâmetros e deixa somente números na mesma, tirando todos
   os outros caracteres *)
FUNCTION OnlyNumbersOnString ( Valor : String ) : String;
VAR
  C      : Longint;
  St     : String;

BEGIN
  Result:='';

  St:=Valor;
  If Length(St)=0 Then Exit;

  C:=1;
  REPEAT
    If Pos(St[C],'0123456789')=0 Then
      Delete(St,C,1)
    Else
      Inc(C);
  UNTIL C>Length(St);

  Result:=St;

END;


FUNCTION OnlyLetrasOnString ( Valor : String ) : String;
VAR
  C      : Longint;
  St     : String;

BEGIN
  Result:='';

  St:=Valor;
  If Length(St)=0 Then Exit;

  C:=1;
  REPEAT
    If Pos(St[C],' ABCDEFGHIJKLMNOPQRSTUVXYWZabcdefghijklmnopqrstuvxywz')=0 Then
      Delete(St,C,1)
    Else
      Inc(C);
  UNTIL C>Length(St);

  Result:=St;

END;


(* Pega uma string passada como parâmetros e deixa somente números na mesma, tirando todos
   os outros caracteres *)
FUNCTION OnlyMoneyOnString ( Valor : String ) : String;
VAR
  C      : Longint;
  St     : String;

BEGIN
  Result:='';

  St:=Valor;
  If Length(St)=0 Then Exit;

  C:=1;
  REPEAT
    If Pos(St[C],'0123456789,.-')=0 Then
      Delete(St,C,1)
    Else
      Inc(C);
  UNTIL C>Length(St);

  Result:=St;

END;


// Retorna uma senha baseada em data atual
// Size = Max 8;
// Key = Menor que 100;
FUNCTION ReturnSenhaByDate ( Size : Word; AlfaNumerico : Boolean; Key : Word ) : String;
VAR
  St            : String;
  Dia,Mes,Ano, C: Longint;
  v             : Array[1..6] Of Currency;
  Ch            : Char;
BEGIN

  If Size>8 Then
    Size:=8;
  If Size<=0 Then
    Size:=4;
  If (Key>100) Or (Key<=0) Then
    Key:=100;

  Dia:=Str2Num(Copy(Hoje,1,2));
  Mes:=Str2Num(Copy(Hoje,4,2));
  Ano:=Str2Num(Copy(Hoje,7,4));

  v[1]:=Dia*Dia;
  v[2]:=Mes*Mes;
  v[3]:=(Ano*Mes)+Dia+Key+Mes+Ano;
  v[4]:=v[1]+v[2]+v[3];
  v[5]:=v[4]*key;
  v[6]:=v[5]*key;
  v[6]:=v[6]*Dia;

  St:=FillLeftFloat(8,Float2Inteiro(v[6]));

  Result:=Copy(ST,1,Size);

  If Not AlfaNumerico Then Exit;

  If Key>10 Then
    Key:=10;
  Key:=Key+65;

  C:=Str2Num(Copy(St,1,1))+Key;
  Ch:=Char(C);
  St[1]:=Ch;
  C:=Str2Num(Copy(St,3,1))+Key;
  Ch:=Char(C);
  St[3]:=Ch;
  C:=Str2Num(Copy(St,6,1))+Key;
  Ch:=Char(C);
  St[6]:=Ch;
  C:=Str2Num(Copy(St,7,1))+Key;
  Ch:=Char(C);
  St[7]:=Ch;

  Result:=Copy(ST,1,Size);

END;

(*
   Cria um diretório em disco retornando erros abaixo:

   Respostas:
    0   -> Diretorio criado com sucesso
    <>0 -> Diretório já existe
*)
FUNCTION MakeDir ( Diretorio : String ) : Longint;
BEGIN
{$I-}

  Result:=-1;

  Diretorio:=FormatPath(Diretorio);
  If ExistDir(Diretorio) Then Begin
    Result:=2;
    Exit;
  End;

  mkDir(Diretorio);
  ClearIOResult;

  If ExistDir(Diretorio) Then
    Result:=0;

END;


// Cria uma identificação de sessão baseado na data e hora de expiracao
// Esta identificacao guarda a data de expiração da sessão + Hora
// Duracao Maxima = 600 Minutos e Minima 1 minuto
// Tamanho de 44 Posicoes fixo
// Stored INFO no Maximo 8 Caracteres
FUNCTION CreateNewSession ( DuracaoEmMinutos : Longint; StoredINFO : Longint ) : String;
VAR
  St, Res                 : String;
  Data, Hora              : String;
  Tam                     : Longint;
  C                       : Longint;
  Sort                    : String;
  SI                      : String;

BEGIN

  If DuracaoEmMinutos<1 Then
    DuracaoEmMinutos:=1;
  If DuracaoEmMinutos>600 Then
    DuracaoEmMinutos:=600;

  SI:=FillLeft(8,StoredINFO);

  Data:=Hoje;
  Hora:=TimeNow;

  Sort:=GereNumerosAleatorios(30);

  C:=Time2Seconds(Hora);
  C:=C+(DuracaoEmMinutos*60);

  If C>Time2Seconds('23:59:59') Then Begin
    Data:=ADD_IN_DATE(Data,1);
    C:=C-Time2Seconds('23:59:59');
  End;

  Hora:=Seconds2Time(C);

  St:=removeAll('/',Data)+removeAll(':',Hora)+SI; // <- String Original

  St:=InvertString(St);  // Inverti a String

  C:=1;
  Res:='';               // Intercala um caracter qualquer com um da data e hora invertido
  REPEAT
    Res:=Res+Sort[C];
    Res:=Res+St[C];
    Inc(C);
  UNTIL C>Length(St);

  Result:=Res;

END;

// Retorna TRUE se a sessao for válida e false caso não.
// StoredINFO -> Informação guardada dentro da sessão.
FUNCTION ValidateSession ( IdentificacaoSessao : String; VAR StoredINFO : Longint ) : Boolean;
VAR
  St, Res                 : String;
  Data, Hora              : String;
  Tam                     : Longint;
  C                       : Longint;
  Sort                    : String;
  SI                      : String;

BEGIN
  Result:=FALSE;
  StoredINFO:=0;


  Res:=IdentificacaoSessao;
  St:='';               // Intercala um caracter qualquer com um da data e hora invertido
  C:=2;
  REPEAT
    St:=St+Res[C];
    C:=C+2;
  UNTIL C>Length(Res);

  St:=InvertString(St);

  Data:=Copy(St,1,8);
  Delete(St,1,8);

  Hora:=Copy(St,1,6);
  Delete(St,1,6);

  SI:=St;

  Insert('/',Data,3);
  Insert('/',Data,6);

  Insert(':',Hora,3);
  Insert(':',Hora,6);

  StoredINFO:=Str2Num(SI);

  If Date2Int(Hoje)>Date2Int(Data) Then Exit;

  If Date2Int(Data)=Date2Int(Hoje) Then
    If Time2Seconds(TimeNow)>Time2Seconds(Hora) Then Exit;

  Result:=TRUE;

END;



// Coloca uma string de tras para frente
FUNCTION InvertString ( Origem : String ) : String;
VAR
  C      : Longint;
  St     : String;

BEGIN
  Result:='';
  If Length(Origem)=0 Then Exit;

  C:=Length(Origem);
  St:='';
  REPEAT
    St:=St+Origem[C];
    Dec(C);
  UNTIL C<1;

  Result:=St;

END;


Function GetFileSize(const FileName: String): LongInt;
var
  SearchRec       : TSearchRec;
begin                                       { !Win32! -> GetFileSize }

  FileMode:=66;

  if FindFirst(FileName,faAnyFile,SearchRec)=0 then
    Result:=SearchRec.Size
  else
    Result:=0;

  SysUtils.FindClose(SearchRec);

end;


// Retorna a qde de vezes que a substring ocorre dentro da string //
FUNCTION Qde_Pos ( Subst : String; Texto : String ) : Longint;
VAR
  St      : String;
  Posicao, Qde : Longint;

BEGIN
  Result:=0;

  If Length(Subst)=0 Then Exit;
  If Length(Texto)=0 Then Exit;
  If Length(Subst)>Length(Texto) Then Exit;

  Posicao:=1;
  Qde:=0;
  St:='';
  REPEAT
    St:=St+Copy(Texto,Posicao,1);
    If Pos(Subst,St)<>0 Then
      Inc(Qde);
    If Length(St)=Length(Subst) Then
      Delete(St,1,1);
    Inc(Posicao);
  UNTIL Posicao>Length(Texto);
  Result:=QDE;

END;


(* Retorna se o campo tem algum caracter estranho que possa indicar CAMPO CORROMPIDO *)
FUNCTION CaracterEstranho ( St : String ) : Boolean;
VAR
  C      : Longint;
BEGIN
  Result:=FALSE;
  If Length(St)=0 Then Exit;

  C:=1;
  REPEAT
    If (Ord(St[C])<32) Or ((Ord(St[C])>247) AND (Ord(St[C])<>254)) Then Begin
      Result:=TRUE;
      Exit;
    End;
    Inc(C);
  UNTIL C>Length(St);

END;



(* Retorna se o campo tem algum caracter estranho que possa indicar CAMPO CORROMPIDO *)
FUNCTION RemovaCaracterEstranho ( St : String ) : String;
VAR
  C      : Longint;
BEGIN

  Result:=St;

  If Length(St)=0 Then Exit;

  C:=1;
  REPEAT
//    If (Ord(St[C])<32) Or (Ord(St[C])>=127) Then Begin
    If (Ord(St[C])<32) Or ((Ord(St[C])>247) AND (Ord(St[C])<>254)) Then Begin
      Delete(St, C, 1);
    End Else
      Inc(C);
  UNTIL C>Length(St);

  Result:=St;

END;


FUNCTION QDE_TXTFILE_FIELD( CaracterSeparador : Char; Linha : String ) : Longint;
VAR
  Qde    : Longint;
BEGIN
  Result:=0;
  Qde:=Qde_Pos(CaracterSeparador,Linha);

  If NumeroPar(Qde) Then
    Result:=Qde DIV 2
  Else
    Result:=(Qde-1) DIV 2;
END;


PROCEDURE READ_CVSFILE_FIELDS ( CaracterSeparador : Char; Linha : String; VAR Fields : TStringList );
VAR
  F                           : String;
BEGIN

  Fields.Clear;

  If Length(Linha)=0 Then Exit;

  If Linha[Length(Linha)]<>CaracterSeparador then
    Linha:=Linha+CaracterSeparador;

  REPEAT
    F:=Copy(Linha, 1, Pos(CaracterSeparador, Linha)-1);
    Delete(Linha,1,Pos(CaracterSeparador, Linha));
    Fields.Add(AllTrim(BlasterUpper(F)));
  UNTIL (Linha='') or (Pos(CaracterSeparador,Linha)=0);

END;

PROCEDURE READ_CVSFILE_FIELDSMAX ( CaracterSeparador : Char; Linha : String; VAR Fields : TStringList; QDECampos : Word );
BEGIN

  READ_CVSFILE_FIELDS ( CaracterSeparador, Linha, Fields );

  If Fields.Count<QDECampos Then Begin
    REPEAT
      Fields.Add('');
    UNTIL Fields.Count=QdeCampos;
  End;

END;


PROCEDURE READ_EFD_FIELDSMAX ( CaracterSeparador : Char; Linha : String; VAR Fields : TStringList; QDECampos : Word );
BEGIN

  READ_EFD_FIELDS ( CaracterSeparador, Linha, Fields );

  If Fields.Count<QDECampos Then Begin
    REPEAT
      Fields.Add('');
    UNTIL Fields.Count=QdeCampos;
  End;

END;



PROCEDURE READ_EFD_FIELDS ( CaracterSeparador : Char; Linha : String; VAR Fields : TStringList );
VAR
  F                           : String;
BEGIN

  If Pos(CaracterSeparador, Linha)=1 Then
    Delete(Linha,1,1);

  Fields.Clear;
  REPEAT
    F:=Copy(Linha, 1, Pos(CaracterSeparador, Linha)-1);
    Delete(Linha,1,Pos(CaracterSeparador, Linha));
    Fields.Add(AllTrim(BlasterUpper(F)));
  UNTIL (Linha='') or (Pos(CaracterSeparador,Linha)=0);

END;



FUNCTION WRITE_EFD_FIELDS ( CaracterSeparador : Char; Fields : TStringList ) : String;
VAR
  C                           : Longint;
  St                          : String;
BEGIN

  Result:='';
  If Fields.Count=0 Then Exit;

  C:=0;
  St:='';
  REPEAT

    St:=St+Fields.Strings[C]+CaracterSeparador;

    Inc(C);
  UNTIL C>=Fields.Count;

  Delete(St,Length(St), 1);

  Result:=St;

END;


FUNCTION Get_CVSFile_FieldByName ( Header : TStringList; CaracterSeparador : Char; LinhaBD : String; FieldName : String ) : String;
VAR
  C    : Longint;
  St   : String;
BEGIN

  Result:='';
  C:=Header.IndexOf(FieldName);
  If C<0 Then Exit;

  St:=READ_CVSFILE_FieldValue(C, CaracterSeparador, LinhaBD);
  St:=RemoveAll('"', St);
  
  Result:=St;

END;


FUNCTION Set_CVSFile_FieldByName ( Header : TStringList; CaracterSeparador : Char; VAR LinhaBD : String; FieldName : String; NovoValor : String ) : Boolean;
VAR
  C    : Longint;
  St   : String;
  Field: TStringList;

LABEL FIM;
BEGIN

  Result:=FALSE;

  C:=Header.IndexOf(FieldName);
  If C<0 Then Exit;

  Field:=TStringList.Create;

  READ_CVSFILE_FIELDS(CaracterSeparador, LinhaBD, Field);

  If C>=Field.Count Then Begin
    REPEAT
      Field.Add('');
    UNTIL Field.Count>C;
  End;

  Field.Strings[C]:=NovoValor;


  C:=0;
  LinhaBD:='';
  REPEAT
    LinhaBD:=LinhaBD+Field.Strings[C]+CaracterSeparador;
    Inc(C);
  UNTIL C>=Field.Count;

  Delete(LinhaBD, Length(LinhaBD), 1);


  Result:=TRUE;

FIM:

  Field.Free;
END;



FUNCTION  Return_CVSFile_Value ( Header : TStringList; CaracterSeparador : Char; BDLine : TStringList; FieldName : String ) : String;
VAR C    : Longint;
BEGIN

  Result:='';
  C:=Header.IndexOf(FieldName);
  If C<0 Then Exit;

  If C>=BDLine.Count Then Exit;

  
  Result:=BlasterUpper(AllTrim(BDLine.Strings[C]));

END;


FUNCTION ReturnIndex_CVSFile_FieldByName ( Header : TStringList; CaracterSeparador : Char; FieldName : String ) : Longint;
VAR C    : Longint;
BEGIN

  Result:=-1;
  C:=Header.IndexOf(FieldName);
  If C<0 Then Exit;
  Result:=C;

END;


PROCEDURE READ_TXTFILE_FIELDS ( CaracterSeparador : Char; Linha : String; VAR Fields : TStringList );
VAR
  St      : String;
BEGIN

  Fields.Clear;
  REPEAT
    St:=Read_TXTFILE_FIEld(CaracterSeparador,Linha);
    Fields.Add(St);
  UNTIL (Linha='') or (Pos(CaracterSeparador,Linha)=0);

END;


PROCEDURE READ_TXTFILE_FIELDSMAX ( CaracterSeparador : Char; Linha : String; VAR Fields : TStringList; FieldCount : Word );
VAR
  St      : String;
BEGIN

  Fields.Clear;
  REPEAT
    St:=Read_TXTFILE_FIEld(CaracterSeparador,Linha);
    Fields.Add(St);
  UNTIL (Linha='') or (Pos(CaracterSeparador,Linha)=0);

  
  If Fields.Count<FieldCount Then Begin
    REPEAT
      Fields.Add('');
    UNTIL Fields.Count>=FieldCount;
  End;

END;


FUNCTION READFIELDVALUE ( FieldNumber : Word; CaracterSeparador : Char; Linha : String ) : String;
VAR Field               : TStringList;
LABEL FIM;
BEGIN
  Result:='';

  If Linha='' Then Exit;

  Field:=TStringList.Create;

  Read_TXTFILE_Fields(CaracterSeparador, Linha, Field);

  If FieldNumber>=Field.Count Then Goto FIM;

  Result:=Field.Strings[FieldNumber];

FIM:
  Field.Free;

END;



FUNCTION SETFIELDVALUE ( FieldNumber : Word; CaracterSeparador : Char; VAR Linha : String; NovoValor : String ) : Boolean;
VAR Field               : TStringList;
    C                   : Longint;
LABEL FIM;
BEGIN

  Result:=FALSE;

  If Linha='' Then Exit;

  Field:=TStringList.Create;

  Read_TXTFILE_Fields(CaracterSeparador, Linha, Field);

  If FieldNumber>=Field.Count Then Goto FIM;

  Field.Strings[FieldNumber]:=NovoValor;

  C:=0;
  Linha:='';
  REPEAT
    Linha:=Linha+CaracterSeparador+Field.Strings[C]+CaracterSeparador;
    Inc(C);
  UNTIL C>=Field.Count;

  Result:=TRUE;

FIM:
  Field.Free;

END;



FUNCTION READ_EFDFIELD_VALUE ( FieldNumber : Word; CaracterSeparador : Char; Linha : String ) : String;
VAR Field               : TStringList;
LABEL FIM;
BEGIN

  Result:='';

  If Linha='' Then Exit;

  Field:=TStringList.Create;

  READ_EFD_FIELDS(CaracterSeparador, Linha, Field);

  If FieldNumber>=Field.Count Then Goto FIM;

  Result:=Field.Strings[FieldNumber];

FIM:
  Field.Free;

END;



FUNCTION SET_EFDFIELD_VALUE ( FieldNumber : Word; CaracterSeparador : Char; VAR Linha : String; NovoValor : String ) : Boolean;
VAR Field               : TStringList;
    C                   : Longint;
LABEL FIM;
BEGIN

  Result:=FALSE;

  If Linha='' Then Exit;

  Field:=TStringList.Create;

  READ_EFD_FIELDS(CaracterSeparador, Linha, Field);

  If FieldNumber>=Field.Count Then Goto FIM;

  Field.Strings[FieldNumber]:=NovoValor;

  C:=0;
  Linha:=CaracterSeparador;
  REPEAT
    Linha:=Linha+Field.Strings[C]+CaracterSeparador;
    Inc(C);
  UNTIL C>=Field.Count;

  Result:=TRUE;

FIM:
  Field.Free;

END;



FUNCTION READFIELDVALUE_LABELED ( FieldName : String; CaracterSeparador : Char; LinhaComosFields : String ) : String;
VAR Field               : TStringList;
    C                   : Longint;
    St                  : String;
LABEL FIM;
BEGIN

  Result:='';

  If LinhaComosFields='' Then Exit;

  Field:=TStringList.Create;

  Read_TXTFILE_Fields(CaracterSeparador, LinhaComosFields, Field);

  REPEAT
    If Pos(FieldName, Field.Strings[C])=1 Then Begin
      St:=Field.Strings[C];
      Delete(St, 1, Length(FieldName)+1);
      Result:=St;
      Goto FIM;
    End;
    Inc(C);
  UNTIL C>=Field.Count;

FIM:
  Field.Free;

END;




FUNCTION READ_CVSFile_FIELDVALUE ( FieldNumber : Word; CaracterSeparador : Char; Linha : String ) : String;
VAR Field               : TStringList;
LABEL FIM;
BEGIN
  Result:='';

  If Linha='' Then Exit;

  Field:=TStringList.Create;

  READ_CVSFILE_FIELDS(CaracterSeparador, Linha, Field);

  If FieldNumber>=Field.Count Then Goto FIM;

  Result:=Field.Strings[FieldNumber];

FIM:
  Field.Free;
END;



FUNCTION Char2String ( Buffer : Array of char; Size : Longint ) : String;
VAr
  C      : Longint;
BEGIN

  Result:='';

  If Size=0 Then
    Size:=SizeOf(Buffer);

  If Size>SizeOf(Buffer) Then
    Size:=SizeOf(Buffer);

  If Size<1 Then Exit;

  C:=1;
  REPEAT
    Result:=Result+Buffer[C];
    Inc(C);
  UNTIL C>Size;

END;


PROCEDURE String2Char ( Buffer : String; Var Chars : Array of Char );
VAr
  C      : Longint;
BEGIN
  C:=1;
  REPEAT
    Chars[C]:=Buffer[C];
    Inc(C);
  UNTIL (C>Length(Buffer)) or (C>High(Chars));
END;

(* Começa pelo Char[0] e zera o array antes de tudo *)
PROCEDURE String2Char0 ( Buffer : String; Var Chars : Array of Char );
VAr
  C      : Longint;
BEGIN

  C:=0;
  REPEAT
    Chars[C]:=#0;
    Inc(C);
  UNTIL (C>High(Chars));

  C:=0;
  REPEAT
    Chars[C]:=Buffer[C+1];
    Inc(C);
  UNTIL (C+1>Length(Buffer)) or (C>High(Chars));
  
END;



(* Funcoes para banco de dados TXT - BlockRead and BlockWrite *)

{ 0. Tudo Ok.
  1. Erro de Leitura.
}
FUNCTION BD_ReadFile ( VAR VarFile : File; RecSize : Longint; Var Lido : String ) : WORD;
VAR
  Buf    : array[1..10000] of Char;
  C      : Longint;
BEGIN
{$I-}
  Result:=0;
  Lido:='';

  BlockRead(VarFile, Buf, RecSize, C);
  IF (IOresult<>0) Or (C=0) Then Begin
    Result:=1;
    Exit;
  End;

  Lido:=Char2String(Buf, RecSize);

END;

{ 0. Tudo Ok.
  1. Erro de Gravacao
  2. ToWrite Vazio
}
FUNCTION BD_WriteFile ( VAR VarFile : File; RecSize : Longint; ToWrite : String ) : WORD;
VAR
  Buf    : array[1..10000] of Char;
  C      : Longint;
BEGIN
{$I-}
  Result:=0;
  If ToWrite='' Then Begin
    Result:=2;
    Exit;
  End;

  If Length(ToWrite)<>RecSize Then
    toWrite:=ToWrite+Space(RecSize-Length(ToWrite));

  String2Char(ToWrite,Buf);

  BlockWrite(VarFile, Buf, RecSize, C);
  IF (IOresult<>0) Or (C=0) Then Begin
    Result:=1;
    Exit;
  End;

END;


{ 0. Tudo Ok.
  1. Erro de Posicionamento
}
FUNCTION BD_SeekFile ( VAR VarFile : File; Posicao : Longint; RecSize : Longint ) : WORD;
BEGIN
{$I-}
  Result:=0;
  Seek(varFile,Posicao*RecSize);
  IF (IOresult<>0) Then Begin
    Result:=1;
    Exit;
  End;
END;

{ 0. Tudo Ok.
  1. Erro de Leitura
}
FUNCTION BD_FilePos ( VAR VarFile : File; RecSize : Longint ) : Longint;
VAr
  C      : Longint;
BEGIN
{$I-}
  Result:=-1;
  C:=FilePos(VarFile) DIV RecSize;
  IF (IOresult<>0) Then
    Exit;
  Result:=C;
END;


(* Retorna a lista de diretórios contidos dentro do "PathBase" passado como parâmetro
  Ex PathBase:  C:\  C:\TESTE\ *)
FUNCTION ReturnDirList ( PathBase : String; ForceUpperCase : Boolean; ShowFullPath : Boolean; Var DirList : TStringList ) : Boolean;
VAR
  Lista                : TStringList;
  Found                : Integer;
  SearchRec            : TSearchRec;
  C                    : Longint;

BEGIN
{$I-}

  Lista:=TStringList.Create;
  DirList.Text:='';
  Result:=FALSE;
  Pathbase:=FormatPath(PathBase);

  If Not ExistDir(PathBase) Then exit;

  Found:=FindFirst(PathBase+'*.*', faDirectory, SearchRec);


  If Found<>0 Then Exit;

  If (SearchRec.Attr=faDirectory) or (SearchRec.Attr=17) Or (SearchRec.Attr=8208) or (SearchRec.Attr=8240) or (SearchRec.Attr=8241) Then  // 17=diretorio read-only 8208 para Windows 2000 e familia
    If ForceUpperCase Then Begin
      If ShowFullPath Then
        Lista.Add(BlasterUpper(PathBase+SearchRec.Name))
      Else
        Lista.Add(BlasterUpper(SearchRec.Name));
    End Else begin
      If ShowFullPath Then
        Lista.Add(PathBase+SearchRec.Name)
      Else
        Lista.Add(SearchRec.Name);
    End;


  WHILE Found = 0 DO
  BEGIN
    Found := FindNext(SearchRec);


    If Found=0 Then
      If (SearchRec.Attr=faDirectory) or (SearchRec.Attr=17) Or (SearchRec.Attr=8208) or (SearchRec.Attr=8240) or (SearchRec.Attr=8241) Then Begin // 17=diretorio read-only 8208 para Windows 2000 e familia
        If ForceUpperCase Then Begin
          If ShowFullPath Then
            Lista.Add(BlasterUpper(PathBase+SearchRec.Name))
          Else
            Lista.Add(BlasterUpper(SearchRec.Name));
        End Else Begin
          If ShowFullPath Then
            Lista.Add(PathBase+SearchRec.Name)
          Else
            Lista.Add(SearchRec.Name);
        End;
      End;

  END;

  SysUtils.FindClose(SearchRec);

  If ShowFullPath Then Begin    // Removendo os diretórios . e ..
    C:=Lista.IndexOf(PathBase+'.');
    If C>=0 Then
      Lista.Delete(C);
    C:=Lista.IndexOf(PathBase+'..');
    If C>=0 Then
      Lista.Delete(C);
  End Else Begin
    C:=Lista.IndexOf('.');
    If C>=0 Then
      Lista.Delete(C);
    C:=Lista.IndexOf('..');
    If C>=0 Then
      Lista.Delete(C);
  End;

  If Lista.Count>0 Then Begin
    DirList.Text:=Lista.Text;
    Result:=TRUE;
  End;

END;



(* Tipos Retornados:
  0 : Não Identificado
  2 : Drive Removable
  3 : Hard Drive
  4 : Drive Remoto
  5 : CD-ROM
  6 : RamDisk
*)
FUNCTION ReturnAvailableDrives ( Var ListaLetras : TStringList; Var ListaTipos : TstringList ) : Boolean;
VAR
  C,R                          : Longint;
  Lista, Tipos                 : TstringList;

BEGIN

  Result:=FALSE;
  ListaLetras.Text:='';
  ListaTipos.Text:='';
  Lista:=TStringList.Create;
  Tipos:=TStringList.Create;

  C:=0;
  REPEAT

    R:=GetDriveType(Pchar(Char(Ord('A')+C)+':\'));
    If (R<>1) Then Begin
      Lista.Add(Char(Ord('A')+C));
      Case R Of
        0               : Tipos.Add('0');
        DRIVE_REMOVABLE : Tipos.Add('2');
        DRIVE_FIXED     : Tipos.Add('3');
        DRIVE_REMOTE    : Tipos.Add('4');
        DRIVE_CDROM     : Tipos.Add('5');
        DRIVE_RAMDISK   : Tipos.Add('6');
      End;
    End;

    Inc(C);
  UNTIL C>23;

  ListaTipos.Text:=Tipos.Text;
  ListaLetras.Text:=Lista.Text;

  If Lista.Count>0 Then
    Result:=TRUE;

END;



FUNCTION SelectDir_Dialog ( Titulo : String )  : String;
VAR
  Dlg                     : TForm;

  btnOK, btnCancel        : TButton;


PROCEDURE KeyDown (Sender: TObject; var Key: Word; Shift: TShiftState);
BEGIN
  Say('Teste');
END;


BEGIN
{$I-}

  Application.CreateForm(TForm,Dlg);

//  Nome:=TEdit.Create(Self);
//  Nome.Parent:=Form2;
//  Nome.OnChange(Self);

  Dlg.FormStyle:=fsNormal;
  Dlg.Height:=300;
  Dlg.Width:=350;
  Dlg.Caption:=Titulo;
  Dlg.Position:=poScreenCenter;
  Dlg.BorderIcons:=[];
  Dlg.BorderStyle:=bsSingle;
  (* Eventos *)

  btnOK:=TButton.CreateParented(Dlg.Handle);
  btnOK.Caption:='&Selecionar';
  btnOK.Parent:=Dlg;
  btnOK.Left:=250;
  btnOK.Top:=Dlg.Height-60;


  Dlg.ShowModal;
  Dlg.Destroy;

END;



FUNCTION MyINI_Open ( Path_AND_FileName : String; VAR INIFile : TStringList ) : Boolean;
VAR
  C      : Longint;
  St     : String;


BEGIN
{$I-}

  Result:=FALSE;

  If Pos('.',Path_AND_FileName)=0 Then
    Path_AND_FileName:=Path_AND_FileName+'.INI';

  If INIFile=NIL Then
    INIFile:=TStringList.Create;
  INIFile.Clear;

  If Not FileExists(Path_AND_FileName) Then
    Exit;


  C:=0;
  REPEAT
    If Not ReadFileToStringList(Path_And_FileName, INIFile) Then
      Delay(1000);
    Inc(C);
  UNTIL (C>=3) Or (IniFile.Count>0);

  If IniFile.Count<=0 Then Exit;

  INIFile.Insert(0,Path_AND_FileName);

  If INIFile.Count>1 Then Begin
    C:=1;
    REPEAT
      If AllTrim(INIFile.Strings[C])='' Then
        INIFile.Delete(C)
      Else
        Inc(C);
    UNTIL (C>=INIFile.Count) or (INIFile.Count=1);
  End;


  Result:=TRUE;

END;

FUNCTION MyINI_New ( Path_AND_FileName : String; VAR INIFile : TStringList ) : Boolean;
BEGIN
{$I-}
  Result:=FALSE;

  If Pos('.',Path_AND_FileName)=0 Then
    Path_AND_FileName:=Path_AND_FileName+'.INI';

  If INIFile=NIL Then
    INIFile:=TStringList.Create;
  INIFile.Clear;

  INIFile.Add(Path_AND_FileName);

  Result:=TRUE;

END;


// Seção em branco lê a primeira ocorrência da chave;
FUNCTION MyINI_ReadKey ( Secao : String; Chave : String; INIFile : TStringList ) : String;
VAR
  C          : Longint;
  St         : String;
  TaNaSecao  : Boolean;

LABEL NEXT;
BEGIN
{$I-}
  Result:='';

  If INIFile=NIL Then Exit;

  If Length(Secao)>0 Then Begin
    Secao:=RemoveAll('[',Secao);
    Secao:=RemoveAll(']',Secao);
    Secao:='['+Secao+']';
    If Secao='[]' Then
      Secao:='';
  End;

  If Length(Secao)=0 Then
    Secao:='[Geral]';


  If INIFile.Count<=1 Then Exit;

  TaNaSecao:=FALSE;
  If Length(Secao)=0 Then
    TaNaSecao:=TRUE;

  C:=1;
  REPEAT

    If Pos(';',INIFile.Strings[C])=1 Then
      Goto NEXT;

    If Length(Secao)>0 Then
      If (Pos('[',INIFile.Strings[C])<>0) AND (Pos(']',INIFile.Strings[C])<>0) Then // Identificando a seção
        If Pos(BlasterUpper(Secao),BlasterUpper(INIFile.Strings[C]))>0 Then
          TaNaSecao:=TRUE
        Else
          TaNaSecao:=FALSE;

    If TaNaSecao Then Begin
      If Pos(BlasterUpper(Chave),BlasterUpper(INIFile.Strings[C]))=1 Then Begin
        St:=INIFile.Strings[C];
        Delete(St,1,Pos('=',St));
        If Pos(';',St)<>0 Then  // Remove o cometário caso haja
          Delete(St,Pos(';',St),Length(St));
        St:=AllTrim(St);
        Result:=BlasterUpper(St);
        Exit;
      End;
    End;

    NEXT:
    Inc(C);
  UNTIL C>=INIFile.Count;

END;



FUNCTION MyINI_SetKey ( Secao : String; Chave : String; Valor : String; VAR INIFile : TStringList ) : Boolean;
VAR
  C             : Longint;
  St            : String;
  TaNaSecao     : Boolean;
  SecaoExiste   : Longint;   // Informa o numero da linha onde a secao se encontra ou 0 caso nao exista
BEGIN
{$I-}
  Result:=FALSE;

  If INIFile=NIL Then Exit;

  If Length(Secao)>0 Then Begin
    Secao:=RemoveAll('[',Secao);
    Secao:=RemoveAll(']',Secao);
    Secao:='['+Secao+']';
    If Secao='[]' Then
      Secao:='';
  End;

  If Length(Secao)=0 Then
    Secao:='[Geral]';


  If INIFile.Count=1 Then Begin  // Inserindo seção e chave em caso de INI vazio
    If Length(Secao)>0 Then Begin
      INIFile.Add(Secao);
    End;
    INIFile.Add(Chave+'='+Valor);
    Result:=TRUE;
    Exit;
  End;

  If Length(Secao)=0 Then Begin  // Chave sem seção é colocado no começo do arquivo;
    INIFile.Insert(1,Chave+'='+Valor);
    Result:=TRUE;
    Exit;
  End;


  TaNaSecao:=FALSE;
  If Length(Secao)=0 Then
    TaNaSecao:=TRUE;

  SecaoExiste:=0;
  C:=1;
  REPEAT

    If Length(Secao)>0 Then
      If (Pos('[',INIFile.Strings[C])<>0) AND (Pos(']',INIFile.Strings[C])<>0) Then // Identificando a seção
        If Pos(BlasterUpper(Secao),BlasterUpper(INIFile.Strings[C]))>0 Then Begin
          TaNaSecao:=TRUE;
          SecaoExiste:=C;  // Numero de inicio da secao
        End Else
          TaNaSecao:=FALSE;

    If TaNaSecao Then Begin
      If Pos(BlasterUpper(Chave),BlasterUpper(INIFile.Strings[C]))=1 Then Begin
        St:=INIFile.Strings[C];
        Delete(St,Pos('=',St)+1,Length(St));
        St:=St+Valor;
        INIFile.Strings[C]:=St;
        Result:=TRUE;
        Exit;
      End;
    End;

    Inc(C);
  UNTIL C>=INIFile.Count;

  If SecaoExiste>0 Then Begin  // Existe a secao mas não se achou a chave;

    C:=SecaoExiste;
    If C+1<INIFile.Count Then Begin
      Inc(C);
      REPEAT
        If (Pos('[',INIFile.Strings[C])<>0) AND (Pos(']',INIFile.Strings[C])<>0) Then Begin
          INIFile.Insert(C,Chave+'='+Valor);          // Tava C-1
          Result:=TRUE;
          Exit;
        End;
        Inc(C);
      UNTIL (C>=INIFile.Count);
      INIFile.Add(Chave+'='+Valor);
    End Else Begin
      INIFile.Add(Chave+'='+Valor);
    End;

    Result:=TRUE;
    Exit;
  End;


  If Length(Secao)>0 Then Begin
    INIFile.Add(Secao);
  End;
  INIFile.Add(Chave+'='+Valor);

  Result:=TRUE;

END;



FUNCTION MyINI_Close ( VAR INIFile : TStringList ) : Boolean;
VAR
  C               : Longint;
  FileName        : String;

BEGIN
{$I-}

  Result:=FALSE;

  If INIFile=NIL Then Exit;

  FileName:=INIFile.Strings[0];
  INIFile.Delete(0);


  IF INIFile.Count>0 Then Begin
    C:=0;
    REPEAT

      If (Pos('[',INIFile.Strings[C])<>0) AND (Pos(']',INIFile.Strings[C])<>0) then Begin
        If C>0 Then Begin
          If AllTrim(INIFile.Strings[C-1])<>'' Then Begin
            INIFile.Insert(C,'');
            Inc(C);
          End;
        End;

        If (C+1<INIFile.Count) Then
          If AllTrim(INIFile.Strings[C+1])<>'' Then Begin
            INIFile.Insert(C+1,'');
            Inc(C);
          End;
      End;

      Inc(C);
    UNTIL C>=INIFile.Count;
  End;


  SysUtils.DeleteFile(FileName+'~');
  SaveFileFromStringList(FileName+'~', INIFile);


  If GetfileSize(FileName+'~')>0 Then Begin
    If FileExists(FileName) Then
      SysUtils.DeleteFile(FileName);
    RenameFile(FileName+'~', FileName);
  End;


  Result:=TRUE;

END;


(* Abre o arquivo, muda uma chave e fecha o mesmo *)
FUNCTION MyINI_SetKey_Express ( Filename : String; Secao : String; Chave : String; Valor : String ) : Boolean;
VAR
  INIFile                     : TStringList;
BEGIN
{$i-}
  Result:=FALSE;

  INIFile:=TStringList.Create;

  If Not MyINI_Open(FileName, INIFile) Then
    If Not MyINI_New(FileName, INIFile) Then
      Exit;

  If Not MyINI_SetKey(Secao, Chave, Valor, INIFile) Then
    Exit;

  If Not MyINI_Close(INIFile) Then
    Exit;

  INIFile.Destroy;

END;



PROCEDURE Projecao_Aplicacao ( ValorAplicado : Currency; Porcentagem_Rendimento_Mensal : Currency; DepositoMensal : Currency; Meses : Longint; VAR Evolucao : TStringList );
VAR
  Total                      : Currency;
  Lista, Anual               : TStringList;
  Taxa                       : Currency;
  C                          : Longint;
  Ganho, InicioAnoAnterior   : Currency;

BEGIN
{$I-}

  If Evolucao=NIL Then
    Evolucao:=TStringList.Create;
  Evolucao.Clear;

  Lista:=TStringList.Create;
  Anual:=TStringList.Create;

  Taxa:=(100+Porcentagem_Rendimento_Mensal) / 100.00;

  Lista.Add('Valor Aplicado  R$: '+FormatMoney_2em3(ValorAplicado,','));
  Lista.Add('Depósito mensal R$: '+Float2TextEx(DepositoMensal,2)+'   Rendimento Mensal: '+Float2Money(Porcentagem_Rendimento_Mensal)+'%');
  Lista.Add('');

  If Meses<=0 Then Exit;

  C:=1;
  Total:=ValorAplicado;

  InicioAnoAnterior:=Total;
  Anual.Add(AlLeftString('Aplicação Inicial',20)+AlRightString(FormatMoney_2em3(Total,','),15));

  REPEAT

    Total:=Total+DepositoMensal;
    Ganho:=Arredonda((Total*Taxa) - Total,2);
    Total:=Total+Ganho;
    Lista.Add(AlLeftString(InttoStr(c)+'o mês',10)+AlRightString(FormatMoney_2em3(Total-Ganho,','),15)+AlRightString(FormatMoney_2em3(Ganho,','),15)+AlRightString(FormatMoney_2em3(Total,','),20));

    If C mod 12 = 0 Then Begin
      Lista.Add('');
      Anual.Add(AlLeftString('Ano '+InttoStr(C DIV 12),20)+AlRightString(FormatMoney_2em3(Total,','),15)+AlLeftString(' ('+FormatMoney_2em3(Total-InicioAnoAnterior,',')+')',15)+AlLeftString(' (Ra '+FormatMoney_2em3(Total-InicioAnoAnterior-(12*DepositoMensal),',')+')',15)+AlRightString('(Rm '+Float2TextEx((Total-InicioAnoAnterior-(12*DepositoMensal)) / 12,2)+')',15)+AlRightString('(Rd '+Float2TextEx((Total-InicioAnoAnterior-(12*DepositoMensal)) / 365,2)+')',15));
      InicioAnoAnterior:=Total;
    End;

    Inc(C);
  UNTIL C>Meses;

  If Anual.Count>1 Then Begin
    Lista.Add('');
    Lista.Add('Resumo Anual');
    Lista.Text:=Lista.Text+Anual.Text;
  End;

  Evolucao:=Lista;

END;


FUNCTION Byte2MByte ( Bytes : Longint ) : Currency;
VAR
  Valor  : Currency;
BEGIN
  Valor:=Arredonda(Bytes / 1024,2);
  Result:=Arredonda(Valor / 1024,2);
END;

FUNCTION Byte2KByte ( Bytes : Longint ) : Currency;
VAR
  Valor  : Currency;
BEGIN
  Valor:=Arredonda(Bytes / 1024,1);
  Result:=Valor;
END;


// Retorna as qdes em Bytes
PROCEDURE GetMemoryStatus ( VAR TotalFisica : Longint;
                           VAR TotalFisicaDisponivel : Longint;
                           VAR TotalVirtual : Longint;
                           VAR TotalVirtualDisponivel : Longint );
VAR
  MemStatus                           : TMemoryStatus;
BEGIN
  MemStatus.dwLength:=SizeOf(MemStatus);
  GlobalMemoryStatus(MemStatus);
  TotalFisica:=MemStatus.dwTotalPhys;
  TotalFisicaDisponivel:=MemStatus.dwAvailPhys;
  TotalVirtual:=MemStatus.dwTotalVirtual;
  TotalVirtualDisponivel:=MemStatus.dwAvailVirtual;
END;


// TRUE se tiver em uso; FALSE se nao tiver ou se o arquivo não existir
FUNCTION FileInUse ( FileName : String ) : Boolean;
VAR
  HFileRes         : HFILE;
BEGIN
{$I-}
  Result:=FALSE;
  If not FileExists(FileName) Then
    Exit;
  HFileRes:=Windows.CreateFile( PChar(FileName), GENERIC_READ or GENERIC_WRITE, 0, nil,
       OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
  Result:=(HFileRes = INVALID_HANDLE_VALUE);
  If Not Result Then
    CloseHandle(HFileRes);
END;


{ Exemplo:
  if MyMessageDlg( 'Please confirm', 'Do you want to format your harddisk now?', mtConfirmation,
                                       mbYesNoCancel, mrno, 0 ) = mrYes then
}
FUNCTION MyMessageDlg(const aCaption: String; const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons; DefButton: Integer; HelpCtx: Longint): Integer;
var
  i   : Integer;
  btn : TButton;
begin

  MouseKeyboard_ON;

  with CreateMessageDialog(Msg, DlgType, Buttons) do
  try
    Caption := aCaption;
    HelpContext := HelpCtx;
    for i := 0 to ComponentCount - 1 do
    begin
      if Components[i] is TButton then
      begin
        btn := TButton(Components[i]);
        btn.Default := btn.ModalResult = DefButton;
        if btn.Default then
          ActiveControl := Btn;
      end;
    end;
    Result := ShowModal;
  finally
    Free;
  end;
end;


(* Copia uma string para o clipboard *)
PROCEDURE CopyToClipBoard ( Texto : String );
//VAR
//  a       : Array[0..255] of Char;
BEGIN
  If Texto='' Then Begin
    Clipboard.Clear;
    Exit;
  End;
//  StrPCopy(A, Texto);
  Clipboard.SetTextBuf(pChar(Texto));
END;

(* Lê uma string para o clipboard *)
FUNCTION ReadFromClipBoard : String;
BEGIN
  Result:='';
  If ClipBoard.HasFormat(CF_TEXT) Then
    Result:=Clipboard.AsText;
END;


PROCEDURE AddFileToDocumentMenu ( FileNameANDPath : String );
BEGIN
  SHAddToRecentDocs(SHARD_PATH, Pchar(FileNameANDPath));
END;


(* Retorna o número do próprio IP da máquina corrente *)
FUNCTION ReturnOWN_IPAddress: TStrings;
type
  TaPInAddr = array[0..10] of PInAddr;
  PaPInAddr = ^TaPInAddr;
var
  phe: PHostEnt;
  pptr: PaPInAddr;
  Buffer: array[0..63] of Char;
  I: Integer;
  GInitData: TWSAData;
begin 
  WSAStartup($101, GInitData); 
  Result := TstringList.Create; 
  Result.Clear;
  GetHostName(Buffer, SizeOf(Buffer)); 
  phe := GetHostByName(buffer); 
  if phe = nil then Exit; 
  pPtr := PaPInAddr(phe^.h_addr_list); 
  I    := 0; 
  while pPtr^[I] <> nil do 
  begin 
    Result.Add(inet_ntoa(pptr^[I]^));
    Inc(I); 
  end; 
  WSACleanup; 
end;



// Retorna as letras maíusculas
FUNCTION ReturnMaiusculas ( Texto : String ) : String;
VAR
  Ch      : Char;
  St      : String;
  C       : Longint;
BEGIN
  Result:='';
  St:='';
  If Length(Texto)=0 Then Exit;
  C:=1;
  REPEAT
    Ch:=Texto[C];
    If UpperKey(Ch)=Texto[C] Then
      St:=St+Texto[C];
    Inc(C);
  UNTIL C>Length(Texto);
  Result:=ST;
END;



// Retorna as letras maíusculas
FUNCTION ReturnMinusculas ( Texto : String ) : String;
VAR
  Ch      : Char;
  St      : String;
  C       : Longint;
BEGIN
  Result:='';
  St:='';
  If Length(Texto)=0 Then Exit;
  C:=1;
  REPEAT
    Ch:=Texto[C];
    If UpperKey(Ch)<>Texto[C] Then
      St:=St+Texto[C];
    Inc(C);
  UNTIL C>Length(Texto);
  Result:=ST;
END;

{
(* Retorna qual é o nome (caption) do componente que está apontado pelo mouse *)
FUNCTION GetCaptionAtPoint ( CrPos : TPoint ) : String;
VAR
  TextLength               : Integer;
  Text                     : PChar;
  Handle                   : HWND;

BEGIN
  Result:='';
  Handle:=WindowFromPoint(crPos);
  If Handle=0 Then Exit;
  TextLength:=SendMessage(HAndle, WM_GETTEXTLENGTH, 0, 0);
  If TextLength<>0 Then Begin
    Getmem(Text,TextLength+1);
    SendMessage(Handle, WM_GETTEXT, TextLength + 1, Integer(Text));
    Result:=Text;
    Freemem(Text);
  End;
END;
}



FUNCTION ReturnCheckSum_BigStrings ( Texto : String; Senha1, Senha2 : Integer ) : String;
VAR
  CheckSum              : Currency;
  MaxCheckSum           : Currency;
  C                     : Longint;

  Validate              : Currency;
LABEL FIM;
BEGIN

  Result:='';

  If Senha1<=0 Then
    Senha1:=1;
  If Senha2<=0 Then
    Senha2:=2;

  CheckSum:=0;
  If Length(Texto)=0 Then
    Goto FIM;

  C:=Length(Texto);

  MaxCheckSum:=StrToFloat('922337203680');

  Validate:=0;
  REPEAT

    If CheckSum<MaxCheckSum Then Begin

      CheckSum:=CheckSum+(Ord(Texto[C]) + C + Senha1);

      If Validate<MaxCheckSum Then Begin
        Validate:=Validate+(C*Ord(Texto[C]));
      End Else Begin
        Validate:=MaxCheckSum - Validate;
//        Validate:=Validate / 1000;
        Validate:=Validate+(C*Ord(Texto[C]));
      End;

    End Else Begin

//      CheckSum:=CheckSum / 1000;
      CheckSum:=MaxCheckSum - CheckSum;
      CheckSum:=CheckSum+(Ord(Texto[C]) + C + Senha1);

    End;

    Dec(C);
  UNTIL C<=0;


  If Validate<=0 Then
    Validate:=MaxCheckSum;

  If CheckSum<=0 Then
    CheckSum:=MaxCheckSum;


  CheckSum:=CheckSum+Validate;


  MaxCheckSum:=StrToFloat('922337203680000');  // Coloquei + 3 Zeros para aumentar o limite

  If CheckSum*3<MaxCheckSUM Then Begin
    CheckSum:=CheckSum+CheckSum+(Length(Texto)*Senha2);
    CheckSum:=CheckSum+(Length(Texto)*Senha1);
    CheckSum:=CheckSum+Senha1+Senha2+CheckSum+Length(Texto);
  End;


FIM:
  Result:=Copy(Float2Money(CheckSum),1,Pos(',',Float2Money(CheckSum))-1);

END;


FUNCTION ReturnCheckSum ( Texto : String; Senha1, Senha2 : Integer ) : String;
VAR
  CheckSum              : Currency;
  MaxCheckSum           : Currency;
  C                     : Longint;

  Validate              : Currency;
LABEL FIM;
BEGIN

  Result:='';

  If Senha1<=0 Then
    Senha1:=1;
  If Senha2<=0 Then
    Senha2:=2;

  CheckSum:=0;
  If Length(Texto)=0 Then
    Goto FIM;

  C:=Length(Texto);

  MaxCheckSum:=StrToFloat('922337203680000');

  Validate:=0;
  REPEAT

    If CheckSum<MaxCheckSum Then Begin
      CheckSum:=CheckSum+(Ord(Texto[C]) + C + Senha1);
      Validate:=Validate+(C*Ord(Texto[C]));
    End Else Begin
      CheckSum:=CheckSum / 1000;
    End;

    Dec(C);
  UNTIL C<=0;

  CheckSum:=CheckSum+Validate;

  If CheckSum*3<MaxCheckSUM Then Begin
    CheckSum:=CheckSum+CheckSum+(Length(Texto)*Senha2);
    CheckSum:=CheckSum+(Length(Texto)*Senha1);
    CheckSum:=CheckSum+Senha1+Senha2+CheckSum+Length(Texto);
  End;


FIM:
  Result:=Copy(Float2Money(CheckSum),1,Pos(',',Float2Money(CheckSum))-1);

END;



(* Este checksum usa basicamente o MD5. O que faz de diferente é alterar valores e ordem
  do resultado para que não seja vinculado ao MD5. O CheckSum de resposta será de 16 bytes
*)
FUNCTION ReturnCheckSumDOTz ( Texto : String ) : String;
VAR
  C                     : Longint;
  MD5                   : String;

LABEL FIM;
BEGIN

  Result:='';

  MD5:=BlasterUpper(Return_MD5String(Texto));

  If MD5='' Then Exit;

  MD5:=InvertString(MD5);
  Delete(MD5,1,2);
  Delete(MD5,4,2);
  Delete(MD5,7,3);

  MD5:=Copy(MD5,1,16);

  C:=1;
  REPEAT

    Case MD5[C] Of
      '1' : Result:=Result+'6';
      '7' : Result:=Result+'B';
      '3' : Result:=Result+'K';
      '2' : Result:=Result+'3';
      '8' : Result:=Result+'L';
      'M' : Result:=Result+'O';
      'O' : Result:=Result+'7';
      'P' : Result:=Result+'Q';
      '6' : Result:=Result+'1';
      'I' : Result:=Result+'6';
      'J' : Result:=Result+'6';
      'K' : Result:=Result+'4';
      'S' : Result:=Result+'K';
      'L' : Result:=Result+'S';
      'D' : Result:=Result+'M';
      'G' : Result:=Result+'7';
    Else
      Result:=Result+MD5[C];
    End;

    Inc(C);
  UNTIL C>Length(MD5);


END;




FUNCTION FuncAvail (VLibraryname, VFunctionname: string; var VPointer: pointer): boolean;
var
  Vlib: tHandle;
begin
  Result := false;
  VPointer := NIL;
   if LoadLibrary(PChar(VLibraryname)) = 0 then
      exit;
   vLIB:=GetModuleHandle(PChar(VLibraryname));
   if Vlib <> 0 then
   begin
    VPointer := GetProcAddress(Vlib, PChar(VFunctionname));
    if VPointer <> NIL then
       Result := true;
   end;
end;


// Desliga o Mouse e Keyboard
procedure MouseKeyboard_OFF;
var
  xBlockInput : function(Block: BOOL): BOOL; stdcall;
begin
  if FuncAvail('USER32.DLL', 'BlockInput', @xBlockInput) then begin
    xBlockInput(true);
    //SystemParametersInfo(97,Word(True),@OldValue,0);
  end;
end;

// Desliga o Mouse e Keyboard
procedure MouseKeyboard_ON;
var
  xBlockInput : function(Block: BOOL): BOOL; stdcall;
begin
  if FuncAvail('USER32.DLL', 'BlockInput', @xBlockInput) then begin
    xBlockInput(false);
    //SystemParametersInfo(97,Word(False),@OldValue,0);
  end;
end;





(* Cria um arquivo TXT em disco com validação na última linha *)
FUNCTION ValidateTXTFILE_SaveToFile ( Conteudo : TStringList; FileName : String; Senha1, Senha2 : Integer ) : Boolean;
VAR
  St, T    : String;
  cSum     : String;
  PosSenha : Longint;

BEGIN
{$I-}
  Result:=FALSE;
  If Conteudo=NIL Then Exit;
  If Conteudo.Count=0 Then Exit;

  St:=GereNumerosAleatorios(100);

  cSum:=ReturnCheckSum(Conteudo.Text,Senha1,Senha2);

  (* Definindo a posicao em que a senha vai entrar *)
  If Conteudo.Count<16 Then
    PosSenha:=16
  Else
    If Conteudo.Count<100 Then
      PosSenha:=Conteudo.Count
    Else Begin  // Mais de 100 linhas
      T:=InttoStr(Conteudo.Count);
      Delete(T,1,Length(T)-2);
      PosSenha:=Str2Num(T);
    End;

  Insert(cSum,St,PosSenha);  // CheckSum inserido na posicao calculada
  Conteudo.Add(St);
  Conteudo.Add(ReturnCheckSum(St,Senha1,Senha2));  // Segunda linha com checkSum da linha anterior;

  If FileExists(FileName) Then
    SysUtils.DeleteFile(FileName);

  Try
    Conteudo.SaveToFile(FileName)
  Except
    Conteudo.Delete(Conteudo.Count-1);
    Exit;
  End;

  Conteudo.Delete(Conteudo.Count-1);
  Result:=TRUE;

END;


(* Le em disco um arquivo TXT e só abre se o mesmo estiver validado *)
FUNCTION ValidateTXTFILE_LoadFromFile ( FileName : String; Conteudo : TStringList; Senha1, Senha2 : Integer ) : Boolean;
VAR
  St, T    : String;
  cSum     : String;
  PosSenha : Longint;
  Ok       : Boolean;

BEGIN
{$I-}
  Result:=FALSE;

  If Conteudo=NIL Then
    Conteudo:=TStringList.Create;

  Conteudo.Clear;

  If Not FileExists(FileName) Then Exit;

  Try
    Conteudo.LoadFromFile(FileName);
  Except
    Conteudo.Clear;
    Exit;
  End;

  If Conteudo.Count<2 Then Exit;


  (* Excluindo linhas em branco no final do arquivo *)
  Ok:=FALSE;
  REPEAT
    If AllTrim(Conteudo.Strings[Conteudo.Count-1])='' Then
      Conteudo.Delete(Conteudo.Count-1)
    Else
      OK:=TRUE;
  UNTIL (Ok) Or (Conteudo.Count=0);


  If ReturnCheckSum(Conteudo.Strings[Conteudo.Count-2],Senha1,Senha2)<>Conteudo.Strings[Conteudo.Count-1] Then
    If ReturnCheckSum_BigStrings(Conteudo.Strings[Conteudo.Count-2],Senha1,Senha2)<>Conteudo.Strings[Conteudo.Count-1] Then
      Exit;
    

  Conteudo.Delete(Conteudo.Count-1);  // Deleta o Segundo CheckSum
  St:=Conteudo.Strings[Conteudo.Count-1];
  Conteudo.Delete(Conteudo.Count-1);  // Deleta o CheckSum Principal

  cSum:=ReturnCheckSum(Conteudo.Text,Senha1,Senha2);

  (* Definindo a posicao em que a senha vai entrar *)
  If Conteudo.Count<16 Then
    PosSenha:=16
  Else
    If Conteudo.Count<100 Then
      PosSenha:=Conteudo.Count
    Else Begin  // Mais de 100 linhas
      T:=InttoStr(Conteudo.Count);
      Delete(T,1,Length(T)-2);
      PosSenha:=Str2Num(T);
    End;

  Delete(St,1,PosSenha-1);
  If Pos(cSum,St)=1 Then Begin

    Result:=TRUE

  End Else Begin

    If GetfileSize(FileName)>400000 Then Begin
      // 05/08/2013 - Tenho problema nesta funcao qdo o arquivo é muito grande (>400k).
      // Vou testar apenas a parte mais significativa dos primeiros 8 digitos
      REPEAT
        Delete(cSum, Length(cSum),1);
        If Pos(cSum,St)=1 Then
         Result:=TRUE
      UNTIL (Length(cSum)<8) Or (Result);
    End;

  End;


END;




FUNCTION ValidateTXTFILE_Gere ( VAR Conteudo : TStringList; Senha1, Senha2 : Integer ) : Boolean;
VAR
  St, T    : String;
  cSum     : String;
  PosSenha : Longint;

BEGIN
{$I-}
  Result:=FALSE;
  If Conteudo=NIL Then Exit;
  If Conteudo.Count=0 Then Exit;

  St:=GereNumerosAleatorios(100);

  cSum:=ReturnCheckSum(Conteudo.Text,Senha1,Senha2);

  (* Definindo a posicao em que a senha vai entrar *)
  If Conteudo.Count<16 Then
    PosSenha:=16
  Else
    If Conteudo.Count<100 Then
      PosSenha:=Conteudo.Count
    Else Begin  // Mais de 100 linhas
      T:=InttoStr(Conteudo.Count);
      Delete(T,1,Length(T)-2);
      PosSenha:=Str2Num(T);
    End;

  Insert(cSum,St,PosSenha);  // CheckSum inserido na posicao calculada
  Conteudo.Add(St);
  Conteudo.Add(ReturnCheckSum(St,Senha1,Senha2));  // Segunda linha com checkSum da linha anterior;


  Result:=TRUE;

END;


FUNCTION ValidateTXTFILE_Leia( Var Conteudo : TStringList; Senha1, Senha2 : Integer ) : Boolean;
VAR
  St, T    : String;
  cSum     : String;
  PosSenha : Longint;

BEGIN
{$I-}
  Result:=FALSE;

  If Conteudo.Count<2 Then Exit;

  If ReturnCheckSum(Conteudo.Strings[Conteudo.Count-2],Senha1,Senha2)<>Conteudo.Strings[Conteudo.Count-1] Then
    Exit;

  Conteudo.Delete(Conteudo.Count-1);  // Deleta o Segundo CheckSum
  St:=Conteudo.Strings[Conteudo.Count-1];
  Conteudo.Delete(Conteudo.Count-1);  // Deleta o CheckSum Principal

  cSum:=ReturnCheckSum(Conteudo.Text,Senha1,Senha2);

  (* Definindo a posicao em que a senha vai entrar *)
  If Conteudo.Count<16 Then
    PosSenha:=16
  Else
    If Conteudo.Count<100 Then
      PosSenha:=Conteudo.Count
    Else Begin  // Mais de 100 linhas
      T:=InttoStr(Conteudo.Count);
      Delete(T,1,Length(T)-2);
      PosSenha:=Str2Num(T);
    End;

  Delete(St,1,PosSenha-1);
  If Pos(cSum,St)=1 Then
    Result:=TRUE;

END;



// Transforma miuscula em minuscula e vice-versa
FUNCTION Inverte_MaiusculasMinusculas ( Texto : String ) : String;
VAR
  Ch      : Char;
  St      : String;
  C       : Longint;
BEGIN
  Result:='';
  St:='';
  If Length(Texto)=0 Then Exit;
  C:=1;
  REPEAT
    Ch:=Texto[C];
    If UpperKey(Ch)=Texto[C] Then
      Ch:=LowerKey(Ch)
    Else
      Ch:=UpperKey(Ch);
    Texto[C]:=Ch;
    Inc(C);
  UNTIL C>Length(Texto);
  Result:=Texto;
END;


FUNCTION ConvertTXT2HTML ( TXT : TStringList; VAR HTML : TStringList ) : Boolean;
VAR
  C      : Longint;
  St     : String;
  Tx     : TStringList;

BEGIN

  Result:=FALSE;

  If (TXT=NIL) Or (HTML=NIL) Then Exit;

  If Txt.Count=0 Then Exit;

  Tx:=TStringList.Create;
  Tx.Text:=Txt.Text;

  C:=0;
  REPEAT
    St:=Tx.strings[C];
    Substitua(st,' ','&nbsp;');
    St:=St+'</br>';
    Tx.Strings[C]:=St;
    Inc(C);
  UNTIL C>=Tx.Count;

  HTML.Clear;
  HTML.Text:=Tx.Text;
  HTML.Insert(0,'<html><head><title></title></head><body><font face="Courier New" size="2">');
  HTML.Add('</font></body></html>');

  Result:=TRUE;

END;

(* Resultados:
   0 : Tudo eliminado com sucesso
  >0 : Qde de arquivos que não foram eliminados
*)
FUNCTION DeleteFilesListed ( Path : String; FileList : TStringList ) : Longint;
VAR
  C, Erros                            : Longint;

BEGIN
{$I-}
  Result:=0;

  If FileList=NIL Then Exit;
  If FileList.Count=0 Then Exit;

  C:=0;
  Erros:=0;
  REPEAT

    If FileExists(Path+FileList.Strings[C]) Then Begin
      If Not SysUtils.DeleteFile(Path+FileList.Strings[C]) Then
        Inc(Erros);
    End Else
      Inc(Erros);

    Inc(C);
  UNTIL C>=FileList.Count;

  Result:=Erros;

END;


(* Retorna uma String com data e hora transformadas *)
FUNCTION ConvertDateTimeToString ( Data, Hora : String ) : String;
VAR
  D, H   : Longint;

BEGIN

  If not CheckDate(Data) Then
    Data:=Hoje;

  If not CheckTime(Hora) Then
    Hora:=TimeNow;

  If Length(Hora)=5 Then
    Hora:=Hora+':00';

  If Length(Hora)<>8 Then
    Hora:=TimeNow;

  D:=Date2Int(Data);
  H:=TIMETOSECONDS(Hora);

  Result:=FillLeft(10,D)+FillLeft(8,H);

END;


(* Retorna se um arquivo com máscaras existe *)
FUNCTION FileExistsMask ( FileNameWithMasks : String ) : Boolean;
  function FillDir(Const AMask: string; VAR Arquivos : TStringList ): TStringList;
  {Retorna uma TStringlist de todos os arquivos localizados
   no path corrente , Esta função trabalha com mascaras}
  var
    SearchRec  : TSearchRec;
    intControl : integer;
  begin
    intControl := FindFirst( AMask, faAnyFile, SearchRec );
    if intControl = 0 then
       begin
       while (intControl = 0) do
             begin
             Arquivos.Add( SearchRec.Name );
             intControl := FindNext( SearchRec );
             end;
       SysUtils.FindClose( SearchRec );
       end;
  end;
VAR
  Lista           : TStringList;

BEGIN
{$I-}
  Result:=FALSE;
  Lista:=TStringList.Create;
  FillDir(FileNameWithMasks, Lista);
  If Lista.Count>0 Then
    Result:=TRUE;
  Lista.Free;
END;


(* Retorna true se um parâmetro de execução passado existe *)
FUNCTION ExistParametro ( Parametro : String ) : Boolean;
VAR
  St     : String;
  C      : Longint;
BEGIN

  Result:=FALSE;

  If ParamCount=0 Then Exit;
  Parametro:=AllTrim(BlasterUpper(Parametro));

  C:=1;
  REPEAT
    St:=AllTrim(BlasterUpper(ParamStr(C)));
    If Pos(Parametro, St)=1 Then begin
      Result:=TRUE;
      Exit;
    End;
    Inc(c);
  UNTIL C>ParamCount;

END;



FUNCTION IEValida ( InscricaoEstadual : Currency; UF : String ) : Boolean;
VAR
  IE : String;
BEGIN

  Result:=FALSE;

  IE:=FormatIE(InscricaoEstadual, UF);

  If DLL_IEValida(IE, UF)=0 Then Begin
    Result:=TRUE;
    Exit;
  End;

END;


(* NAO CHAMAR DIRETO. CHAMAR A Funcao IEVALIDA
   Checa se o numero de Insc.Estadual é valido para o estado passado como parâmetro.
   Se o estado for branco, assume MG
RETORNOS:
  0 : Ok! Numero válido
  1 : Número inválido para o estado
  2 : DLL não encontrada
  3 : Parâmetros inválidos
*)
FUNCTION DLL_IEValida ( Numero : String; UF : String ) : Word;
TYPE
  TConsisteInscricaoEstadual  = function (const Insc, UF: String): Integer; stdcall;
var
  IRet, IOk, IErro, IPar    : Integer;

  LibHandle                 : THandle;
  ConsisteInscricaoEstadual : TConsisteInscricaoEstadual;

begin

  Result:=1;

  If Length(Uf)<>2 Then
    UF:='MG';
  Uf:=BlasterUpper(UF);

  Numero:=UnformatCGC_IE(Numero);
  If Length(Numero)=0 Then Begin
    Result:=1;
  End;

  try
    LibHandle :=  LoadLibrary (PChar (Trim ('DllInscE32.Dll')));
    if  LibHandle <=  HINSTANCE_ERROR then Begin
      Result:=2;
      Exit;
    End;

    @ConsisteInscricaoEstadual  :=  GetProcAddress (LibHandle,
                                                    'ConsisteInscricaoEstadual');
    if  @ConsisteInscricaoEstadual  = nil then Begin
      Result:=2;
      Exit;
    End;


    IRet := ConsisteInscricaoEstadual (Numero,UF);
    if      Iret = 0 then
       Result:=0
    else if Iret = 1 then
       Result:=1
    else
       Result:=3;


  finally
    FreeLibrary (LibHandle);
  end;

END;


(* Retorna o número X passado como parãmetro de dígitos verificadores do "NUMERO" passado
   como parâmetro
   Digitos não pode ser maior que 8
*)
FUNCTION CalculeDV ( Numero : String; Digitos : Word ) : String;
VAR
  St     : String;
  C      : Longint;
  Valor  : Currency;
BEGIN

  If Digitos>8 then  // Número máximo de dígitos = 8;
    Digitos:=8;
  If Digitos<1 Then  // Número mínimo de dígitos = 1
    Digitos:=1;

  Result:=Replicate('0',Digitos);

  If Length(Numero)=0 then Exit;    // Se o NUMERO for inválido retorna o tanto de 0's definidos no DIGITOS

  Valor:=0;
  C:=1;
  REPEAT
    Valor:=Valor+C*Ord(Numero[C])+C;  // Calculo: Acumular o produto entre a posicao
    Inc(C);                           // da letra/numero pelo seu valor na tabela ASCII
  UNTIL C>Length(Numero);             // + a posicao.
  Valor:=Valor*Length(Numero);        // Multiplica-se o valor encontrado pelo tamanho
                                      // da variável "NUMERO".
  St:=FloattoStr(Valor);

  If Length(St)<Digitos Then          // Se o resultado tiver menos caracteres que o tanto
    St:=FillLeft(Digitos-Length(St),1)+St; // de dígitos passado como parâmetro, coloca à esqueda do
                                           // resultado o número de "1"'s necessário para encher.
  Substitua(St,'0','9');        // Substituo tudo que é 0 no dígito por 9

  St:=InvertString(St);         // Inverto a string resultante (o primeiro caracter vai para o último e vice versa)

  Result:=Copy(St,1,Digitos);

END;


PROCEDURE SetAtributo ( Var Atributos : Longint; Posicao : Word; Valor : Word);
VAR
  St      : String;
  Novo    : String;
BEGIN
  St:=InttoStr(Atributos);
  Novo:=InttoStr(Valor);

  If Length(Novo)<>1 Then Exit;
  If Posicao>Length(St) Then Exit;

  St[Posicao]:=Novo[1];
  Atributos:=Str2Num(St);

END;


FUNCTION  ReadAtributo ( Atributos : Longint; Posicao : Word) : Longint;
VAR
  St      : String;
  Novo    : String;
BEGIN
  Result:=-1;
  St:=InttoStr(Atributos);
  If Posicao>Length(St) Then Exit;
  Result:=Str2Num(St[Posicao]);
END;

(* Desliga/Liga o botão Iniciar *)
PROCEDURE TurnStartButton ( Ativo : Boolean );
VAR
  h, TaskWindow                  : hwnd;

BEGIN

  If Ativo Then Begin
    h:=FindWindowEx(GetDesktopWindow,0,'Button',nil);
    TaskWindow:=FindWindow('Shell_traywnd', nil);
    ShowWindow(h,1);
    Windows.Setparent(h, TaskWindow);
  End Else Begin
    h:=FindWindowEx(FindWindow('Shell_traywnd', nil), 0,'Button',nil);
    ShowWindow(h,0);
    Windows.Setparent(h, 0);
  End;

END;


(* Desliga/Liga o botão Iniciar *)
PROCEDURE TurnDesktopIcones ( Ativo : Boolean );
BEGIN

  If Ativo Then Begin
    ShowWindow(FindWindow(nil,'Program Manager'), SW_SHOW);
  End Else Begin
    ShowWindow(FindWindow(nil,'Program Manager'), SW_HIDE);
  End;

END;



// Abre a configuração do monitor no Windows
PROCEDURE OpenDisplayPropertiesDialog;
BEGIN
  WinExec('rundll32 shell32.dll,Control_RunDLL desk.cpl,,3',SW_SHOW);
END;



// Bloqueia o acesso do usuário a outros programas
PROCEDURE LockWindowsAccess;
VAR
  Bar                       : TTaskBarInfo;
  Rect                      : TRect;

BEGIN

  Bar:=TTaskBarInfo.Create(Bar);

  If Bar.BarPosition=abeBottom Then begin
    Rect.TopLeft.x:=0;
    Rect.TopLeft.y:=0;
    Rect.BottomRight.x:=Screen.Width;
    Rect.BottomRight.y:=Screen.Height-Bar.BarHeight;
  End;

  If Bar.BarPosition=abeTop Then begin
    Rect.TopLeft.x:=0;
    Rect.TopLeft.y:=Bar.BarHeight;
    Rect.BottomRight.x:=Screen.Width;
    Rect.BottomRight.y:=Screen.Height;
  End;

  If Bar.BarPosition=abeLeft Then begin
    Rect.TopLeft.x:=Bar.BarWidth;
    Rect.TopLeft.y:=0;
    Rect.BottomRight.x:=Screen.Width;
    Rect.BottomRight.y:=Screen.Height;
  End;

  If Bar.BarPosition=abeRight Then begin
    Rect.TopLeft.x:=0;
    Rect.TopLeft.y:=0;
    Rect.BottomRight.x:=Screen.Width-Bar.BarWidth;
    Rect.BottomRight.y:=Screen.Height;
  End;

  ClipCursor(@Rect);
  TurnDesktopIcones(FALSE);
  TurnStartButton(FALSE);

END;


// Bloqueia o acesso do usuário a outros programas
PROCEDURE UnLockWindowsAccess;
VAR
  Rect                      : TRect;

BEGIN

  Rect.TopLeft.x:=0;
  Rect.TopLeft.y:=0;
  Rect.BottomRight.x:=Screen.Width;
  Rect.BottomRight.y:=Screen.Height;

  ClipCursor(@Rect);
  TurnDesktopIcones(TRUE);
  TurnStartButton(TRUE);

END;


// Retorna as primeiras letras da palavra
// ex: Daniel Carvalho = DC
FUNCTION ReturnPrimeirasLetras ( Texto : String ) : String;
VAR
  St     : String;
BEGIN
  Result:='';
  Texto:=AllTrim(Texto);

  If Length(Texto)=0 Then Exit;
  St:='';

  St:=Copy(Texto,1,1);
  Delete(Texto,1,1);

  REPEAT
    If Pos(' ',Texto)<>0 Then Begin
      Delete(Texto,1,Pos(' ',Texto));
      Texto:=LTrim(Texto);
      If Length(Texto)>0 Then
        St:=St+Copy(Texto,1,1);
    End;
  UNTIL Pos(' ',Texto)=0;

  Result:=St;

END;




(* Retorna True se duas strings forem iguais (caseLess) *)
FUNCTION SameStr ( String1, String2 : String ) : Boolean;
BEGIN
  Result:=FALSE;
  String1:=BlasterUpper(String1);
  String2:=BlasterUpper(String2);
  If String1=String2 Then
    Result:=TRUE;
END;


(* Remove os zeros a esquerda de um valor caso os tenha *)
FUNCTION RemovaZerosAEsquerda ( Valor : String ) : String;
VAR
  C      : Longint;
  St     : String;
BEGIN
  Result:=Valor;
  If Valor='0' Then Exit;
  St:=Valor;
  If Length(St)=0 Then Exit;
  REPEAT
    If (St[1]='0') Then
      Delete(St,1,1);
  UNTIL (St[1]<>'0') Or (St='0');
  Result:=St;
END;


FUNCTION ReadCMC7( Buffer : String; Var Banco : String; Var Agencia : String;
                   Var Conta : String; Var Cheque : String; Var Comp : String ) : Boolean;
VAR
  Cc, Ag, Ch, DigitoCc, Bc, cComp       : String;
LABEL CONTINUE;
BEGIN

  Result:=FALSE;
  If Pos('?',Buffer)=Length(Buffer) Then
    Delete(Buffer,Length(Buffer),1);

  If Pos('?',Buffer)<>0 Then Exit;

  Buffer:=AllTrim(Buffer);
  Buffer:=OnlyNumbersOnString(Buffer);
//  Buffer:=RemoveAll('<',Buffer);
//  Buffer:=RemoveAll('>',Buffer);

  If Length(Buffer)<>30 Then Exit;

  If Not CheckCMC7(Buffer) Then Exit;


  Bc:=Copy(Buffer,1,3);
  Delete(Buffer,1,3);

  Ag:=Copy(Buffer,1,4);
  Delete(Buffer,1,4);

  Delete(Buffer,1,1);

  cComp:=Copy(Buffer,1,3);
  Delete(Buffer,1,3);

  Ch:=Copy(Buffer,1,6);
  Delete(Buffer,1,6);

//  Delete(Buffer,1,4);
  Delete(Buffer,1,2);

  Cc:=Copy(Buffer,1,10);
  Delete(Buffer,1,10);
  DigitoCc:=Copy(Buffer,1,1);
  Delete(Buffer,1,1);



  (* Regras para acertar o numero da conta *)

  If (Str2Num(Bc)=399) OR (Str2Num(Bc)=41) Then Goto CONTINUE;  // 399=HSBC  041=BANRISUL


  If ((Str2Num(Bc)=1) OR (Str2Num(Bc)=353)) OR ((Str2Num(Bc)=477) OR (Str2Num(Bc)=745)) Then Begin  // 001=BANCO BRASIL  353=SANTANDER  477=CITIBANK  745=CITIBANK
    Delete(Cc,1,2);
    Goto CONTINUE;
  End;

  If ((Str2Num(Bc)=389) OR (Str2Num(Bc)=453)) OR ((Str2Num(Bc)=756) or (Str2Num(Bc)=104)) Then Begin  // 389=Mercantil  453=Rural  756=BancoB  104=CEF
    Delete(Cc,1,1);
    Goto CONTINUE;
  End;

  If (Str2Num(Bc)=341) Then Begin  // 341=Itaú
    Delete(Cc,1,4);
    Goto CONTINUE;
  End;

  Delete(Cc,1,3);


CONTINUE:


  If Not NUM(Ag) Then Exit;
  If Not NUM(Cc) Then Exit;
  If Not NUM(Bc) Then Exit;
  If Not NUM(Ch) Then Exit;
  If Not NUM(cComp) Then Exit;

  Banco:=Bc;
  Agencia:=Ag;
  Conta:=FillLeftFloat(10,Str2Float(Cc));
  Cheque:=Ch;
  Comp:=cComp;

  Result:=TRUE;

END;


FUNCTION FormatCPFCNPJ ( CPFCNPJ : Currency ) : String;
VAR
  St, ToCheck            : String;
  CPF, CNPJ              : Boolean;
  Doc                    : TCheckDoc;

LABEL LABEL_CNPJ;
BEGIN

  Result:='';

  ToCheck:=AllTrim(Float2Str(CPFCNPJ));

  Doc:=TCheckDoc.Create(NIL);

  CPF:=FALSE;
  CNPJ:=FALSE;

  If Length(ToCheck)<4 Then
    Goto LABEL_CNPJ;


  If Length(ToCheck)<11 Then
    ToCheck:=Replicate('0',11-Length(ToCheck))+ToCheck;

  Doc.Mode:=moCPF;
  Doc.Input:=ToCheck;
  CPF:=Doc.Result;


LABEL_CNPJ:

  If Length(ToCheck)<14 Then
    ToCheck:=Replicate('0',14-Length(ToCheck))+ToCheck;

  Doc.Mode:=moCGC;
  Doc.Input:=ToCheck;
  CNPJ:=Doc.Result;


  Doc.Destroy;


  If CPFCNPJ<=0 Then Exit;
  If (Not CPF) AND (Not CNPJ) Then Exit;


  If CPF And CNPJ Then Begin

    If CPFCNPJ <= 999999 Then  // Tratamento para CNPJs como Banco do Brasil, etc.
      CPF:=FALSE;

    {#918}
    If CPFCNPJ = 865176 Then Begin    // Sr. Agrício Pereira da Silva - filha da mãe que fugiu da regra padrão.
      CNPJ:=FALSE;
      CPF:=TRUE;
    End;

  End;


  St:=Float2Str(CPFCNPJ);

  If CPF Then
    St:=FillLeftFloat(11,CPFCNPJ)
  Else
    St:=FillLeftFloat(14,CPFCNPJ);


  If Length(St)=14 Then begin
    Insert('.',St,3);
    Insert('.',St,7);
    Insert('/',St,11);
    Insert('-',St,16);
  End;

  If Length(St)=11 Then begin
    Insert('.',St,4);
    Insert('.',St,8);
    Insert('-',St,12);
  End;

  Result:=St;
END;




(* Retorna o que é: CPF ou CNPJ *)
FUNCTION CPF_ou_CNPJ ( CPFCNPJ : Currency ) : String;
VAR
  St     : String;

LABEL FIM;
BEGIN

  St:=FormatCPFCNPJ(CPFCNPJ);
  Result:='';

  If Length(St)=14 Then
    Result:='CPF';
  If Length(St)=18 Then
    Result:='CNPJ';

END;



FUNCTION ReturnCheckSumCanaa ( St : String; CaracterLimitador : Char; Chave : Currency ) : String;
VAR
  C                                   : Longint;
  Total                               : Currency;  // Variável Real longa
  StSemChr                            : String;  // Guarda a Variável passada como parâmetro sem o caracter limitador
  Valor                               : String;

  ParteFracionaria                    : String;

BEGIN

  Result:='';

  If Length(St)=0 Then Exit;

  If (Chave>100) or (Chave<=0) Then
    Chave:=99.99;  // Não aceita chaves maiores que 100 nem <= a 0


  If CaracterLimitador<>'' Then
    StSemChr:=RemoveAll(CaracterLimitador,St)
  Else
    StSemChr:=St;

  C:=1;
  Total:=0;
  REPEAT
    Total:=Total+Ord(St[C])+C;
    Inc(C);
  UNTIL C>=Length(St);

  // Somei os valores de todos os caracteres e guardei em TOTAL

  Total:=Total*Length(StSemChr);  // Multipliquei TOTAL pelo tamanho da variável StSemChr

  Total:=Total+(Length(St)*5);


  If CaracterLimitador<>'' Then
    Total:=Total+(Ord(CaracterLimitador) * 3);  // Multipliquei TOTAL pelo valor ASCII do caracter limitador

  Total:=Total / Chave;  // Dividi total pela chave (resultando um numero real);


  Valor:=Float2Str(Total);
  // Ok! Gerei o número real resultante do CheckSum. Agora eu pego a parte fracionária (3 primeiras casas apenas) e
  // converto em caracter de acordo com a tabelinha abaixo.
  // Se o número não tiver parte fracionária, utilizo o padrão abaixo...

  ParteFracionaria:='123';

  If Pos(',',Valor)>0 Then Begin
    ParteFracionaria:=Copy(Valor,Pos(',',Valor)+1,3)+'123';
    ParteFracionaria:=Copy(ParteFracionaria,1,3);
    Delete(Valor,Pos(',',Valor),Length(Valor));
  End;

  // Da parte inteira do valor só me interessa o máximo de 5 numeros;
  If Length(Valor)>5 Then
    Delete(Valor,6,Length(Valor));


  // Agora eu converto cada um dos três numeros fracionarios em Letras conforme a tabela abaixo:
  C:=1;
  REPEAT
    Case Str2Num(ParteFracionaria[C]) Of
      0 : ParteFracionaria[C]:='a';  // Atencão ao maísculo e minúsculo
      1 : ParteFracionaria[C]:='D';  // Atencão ao maísculo e minúsculo
      2 : ParteFracionaria[C]:='M';  // Atencão ao maísculo e minúsculo
      3 : ParteFracionaria[C]:='c';  // Atencão ao maísculo e minúsculo
      4 : ParteFracionaria[C]:='x';  // Atencão ao maísculo e minúsculo
      5 : ParteFracionaria[C]:='J';  // Atencão ao maísculo e minúsculo
      6 : ParteFracionaria[C]:='i';  // Atencão ao maísculo e minúsculo
      7 : ParteFracionaria[C]:='E';  // Atencão ao maísculo e minúsculo
      8 : ParteFracionaria[C]:='Z';  // Atencão ao maísculo e minúsculo
      9 : ParteFracionaria[C]:='S';  // Atencão ao maísculo e minúsculo
    End;
    Inc(C);
  UNTIL C>3;

  // Agora eu formo o número resultante da seguinte maneira.
  // Para cada numero do VALOR, eu incluo uma letra na posição seguinte:
  // Exemplo: VALOR:='982'
  //          PARTEFRACIONARIA:='MxK';
  //          RESULT:=9M8x2K

  If Length(Valor)>1 Then Begin
    Insert(ParteFracionaria[1],Valor,2);
    Delete(ParteFracionaria,1,1);
  End;

  If Length(Valor)>3 Then Begin
    Insert(ParteFracionaria[1],Valor,4);
    Delete(ParteFracionaria,1,1);
  End;

  If Length(Valor)>5 Then Begin
    Insert(ParteFracionaria[1],Valor,6);
    Delete(ParteFracionaria,1,1);
  End;

  Valor:=Valor+ParteFracionaria;

  Result:=Valor;


END;



procedure ClearKeyboardBuffer;
var
  Msg: TMsg;
begin

  while PeekMessage(Msg, 0, WM_KEYFIRST, WM_KEYLAST,
    PM_REMOVE or PM_NOYIELD) do;

end;

procedure ClearMouseBuffer;
var
  Msg: TMsg; 
begin 
  while PeekMessage(Msg, 0, WM_MOUSEFIRST, WM_MOUSELAST, 
    PM_REMOVE or PM_NOYIELD) do;
end;



FUNCTION Add_In_Time( Hora : String; Minutos : Longint ) : String;
VAR
  Valor                    : Longint;
  H,M,S                    : Longint;
  St                       : String;
BEGIN

  Result:=Hora;

  Valor:=TIMETOSECONDS(Hora);
  Valor:=Valor+(Minutos*60);

  REPEAT
    If Valor<0 Then
      Valor:=Valor+3600;
  UNTIL Valor>=0;

  H:=0;
  H:=Valor DIV 3600;

  Valor:=Valor-(H*3600);

  M:=Valor DIV 60;

  Valor:=Valor-(M*60);

  S:=Valor;

  REPEAT
    If H>24 Then
      H:=H-24;
  UNTIL H<=24;

  If H=24 Then
    H:=0;

  St:=FillLeft(2,H)+':'+FillLeft(2,M)+':'+FillLeft(2,S);
  St:=Copy(St,1,Length(Hora));

  Result:=St;

END;


PROCEDURE TurnMonitor ( TurnOn : Boolean );
BEGIN
  If TurnOn Then
    SendMessage(Application.Handle, WM_SYSCOMMAND, SC_MONITORPOWER, -1)
  Else
    SendMessage(Application.Handle, WM_SYSCOMMAND, SC_MONITORPOWER, 0);
END;


(* Soma os numeros passados como parâmetro ex: 123 = 6 *)
FUNCTION SomeTodosNumeros ( Numeros : String ) : Longint;
VAR
  C, Res      : Longint;
BEGIN
  Result:=0;
  Res:=0;

  If Length(Numeros)<=0 Then Exit;

  C:=1;
  REPEAT
    Res:=Res+Str2Num(Numeros[C]);
    Inc(C);
  UNTIL C>Length(Numeros);

  Result:=Res;

END;


FUNCTION GereContraSenhaTipo1 ( ContraSenha : String ) : String;
VAR
  Numero                      : Array[1..10] Of Longint;
  St                          : String;

BEGIN

  Result:='';

  If Length(ContraSenha)<>14 Then Exit;

  St:=RemoveAll('.',ContraSenha);

  Numero[1]:=Str2Num(St[1]);
  Numero[2]:=Str2Num(St[2]);
  Numero[3]:=Str2Num(St[3]);
  Numero[4]:=Str2Num(St[4]);
  Numero[5]:=Str2Num(St[5]);
  Numero[6]:=Str2Num(St[6]);
  Numero[7]:=Str2Num(St[7]);
  Numero[8]:=Str2Num(St[8]);
  Numero[9]:=Str2Num(St[9]);
  Numero[10]:=Str2Num(St[10]);


  (* Agora subtraio os valores abaixo dos numeros *)
  Numero[1]:=Numero[1];
  Numero[2]:=10-Numero[2];
  Numero[3]:=20-Numero[3];
  Numero[4]:=30-Numero[4];
  Numero[5]:=40-Numero[5];
  Numero[6]:=50-Numero[6];
  Numero[7]:=60-Numero[7];
  Numero[8]:=70-Numero[8];
  Numero[9]:=80-Numero[9];
  Numero[10]:=90-Numero[10];

  // Agora somo os números   Ex: 12  = 3
  Numero[1]:=SomeTodosNumeros(InttoStr(Numero[1]));
  Numero[2]:=SomeTodosNumeros(InttoStr(Numero[2]));
  Numero[3]:=SomeTodosNumeros(InttoStr(Numero[3]));
  Numero[4]:=SomeTodosNumeros(InttoStr(Numero[4]));
  Numero[5]:=SomeTodosNumeros(InttoStr(Numero[5]));
  Numero[6]:=SomeTodosNumeros(InttoStr(Numero[6]));
  Numero[7]:=SomeTodosNumeros(InttoStr(Numero[7]));
  Numero[8]:=SomeTodosNumeros(InttoStr(Numero[8]));
  Numero[9]:=SomeTodosNumeros(InttoStr(Numero[9]));
  Numero[10]:=SomeTodosNumeros(InttoStr(Numero[10]));


  // Soma Final...
  Numero[1]:=Numero[1]+10;
  Numero[2]:=Numero[2]+9;
  Numero[3]:=Numero[3]+8;
  Numero[4]:=Numero[4]+7;
  Numero[5]:=Numero[5]+6;
  Numero[6]:=Numero[6]+5;
  Numero[7]:=Numero[7]+4;
  Numero[8]:=Numero[8]+3;
  Numero[9]:=Numero[9]+2;
  Numero[10]:=Numero[10]+1;

  // Resposta Final... 1 somado com 10... 2 somado com 9...
  St:='';
  St:=St+FillLeft(2,Numero[1]+Numero[10])+'.';
  St:=St+FillLeft(2,99-(Numero[2]+Numero[9]))+'.';
  St:=St+FillLeft(2,99-(Numero[3]+Numero[8]))+'.';
  St:=St+FillLeft(2,99-(Numero[4]+Numero[7]))+'.';
  St:=St+FillLeft(2,Numero[5]+Numero[6]);

  Result:=St;

END;


(* Esta função retorna sempre um numero de série que identifica a máquina em execução.
   O numero é sempre o mesmo, variando apenas pela chave passada como parâmetro.
   Chave: de 2 a 99.
*)
FUNCTION ReturnNumeroSerieDaMaquina ( Chave : Word ) : String;
VAR
  DiskInfo                                   : TDiskInfo;
  BiosInfo                                   : TMainBoardBiosInformation;
  WinInfo                                    : TWinInfo;
  cxCPU                                      : TcxCPU2000;

  NS, St, Resp, stBios                       : String;
  C                                          : Longint;

  HD, Bios, ProductID1, ProductID2, ProductID3, Valor    : Currency;

BEGIN
{$I-}

  If Chave<2 Then
    Chave:=2;

  St:=ReturnWindows_RootDirectory;  // Peguei a letra do drive onde o Windows está instalado

  DiskInfo:=TDiskInfo.Create(NIL);
  DiskInfo.Disk:=St[1];

  HD:=Abs(DiskInfo.SerialNumber);
  //1626070225
//CopyToClipBoard(Float2Str(HD));
//Say('1. '+Float2Str(HD));

  cxCPU:=TcxCPU2000.Create(NIL);
//  cxCPU.GetSpeed;
  stBios:=cxCPU.Serial+cxCPU.FullName{+Float2Str(cxCPU.Speed)};
  cxCPU.Destroy;

  If NOT RunningWindowsXP Then Begin
    BiosInfo:=TMainBoardBiosInformation.Create(BiosInfo);
    stBios:=stBios+OnlyNumbersOnString(BiosInfo.MainBoardBiosDate);
    BiosInfo.Destroy;
  End;

  Bios:=ReturnSerial(stBios);
  //35956912
//CopyToClipBoard(Float2Str(Bios));
//Say('2.: '+StBios+' '+Float2Str(Bios));

  WinInfo:=TWinInfo.Create(NIL);
  St:=OnlyNumbersOnString(WinInfo.ProductId);

  ProductID1:=Str2FLoat(Copy(St,1,10));
  ProductID2:=2;
  ProductID3:=3;

  Delete(St,1,10);
  If Length(St)>0 Then Begin
    ProductID2:=Str2FLoat(Copy(St,1,10));
    Delete(St,1,10);
  End;
  If Length(St)>0 Then Begin
    ProductID3:=Str2FLoat(Copy(St,1,10));
    Delete(St,1,10);
  End;

//CopyToClipBoard(Float2Str(ProductID1));
//Say('3.: '+Float2Str(ProductID1));


  (* Contas que faço *)
  HD:=HD+(Chave*9);
  HD:=HD+SomeTodosNumeros(Float2Str(HD));
  HD:=HD*Chave;
//CopyToClipBoard(Float2Str(HD));
//Say('4.: '+Float2Str(HD));

  Bios:=Bios+(Chave*16);
  Bios:=Bios+SomeTodosNumeros(Float2Str(Bios));
  Bios:=Bios*Chave;
  Bios:=Bios*3;
//CopyToClipBoard(Float2Str(Bios));
//Say('5.: '+Float2Str(Bios));


  Valor:=HD+BIOS+Chave+(Chave*Chave);
  Valor:=Valor+SomeTodosNumeros(Float2Str(Valor));
  Valor:=Valor+ProductID1+(Chave*3);
  Valor:=Valor+ProductID2+(Chave);
  Valor:=Valor+ProductID3+(Chave*2);
  (* FIM - Contas que faço *)
//CopyToClipBoard(Float2Str(Valor));
//Say('6.: '+Float2Str(Valor));
  St:=Float2Str(Valor);
  St:=InvertString(St);

  St:=St+Float2Str(Valor*5);
  St:=St+InttoStr(SomeTodosNumeros(St));
  St:=St+Float2Str(Valor*3);

  If Length(St)<20 Then
    St:=St+St;

  Resp:=Copy(St,1,4)+'-'+Copy(St,5,4)+'-'+Copy(St,9,4)+'-'+Copy(St,13,4)+'-'+Copy(St,17,4);
  Result:=Resp;

  DiskInfo.Destroy;
  WinInfo.Destroy;

END;


(* Esta função retorna sempre um numero de série que identifica a máquina em execução.
   O numero é sempre o mesmo, variando apenas pela chave passada como parâmetro.
   Chave: de 2 a 99.
*)
FUNCTION ReturnNumeroSerieDaMaquinaMAC ( Chave : Word ) : String;
VAR
  DiskInfo                                   : TDiskInfo;
  BiosInfo                                   : TMainBoardBiosInformation;
  WinInfo                                    : TWinInfo;
  cxCPU                                      : TcxCPU2000;

  NS, St, Resp, stBios, stMacAddress, stTEMP         : String;
  C                                          : Longint;

  HD, Bios, ProductID1, ProductID2, ProductID3, Valor, MAC  : Currency;

BEGIN
{$I-}

  If Chave<2 Then
    Chave:=2;


//  St:=ReturnWindows_RootDirectory;  // Peguei a letra do drive onde o Windows está instalado

  HD:=Str2Float('9087563412');
  Try
    DiskInfo:=TDiskInfo.Create(NIL);
  Finally
    Try
      DiskInfo.Disk:='C';
    Finally
      HD:=Abs(DiskInfo.SerialNumber);
    End;
    DiskInfo.Destroy;
  End;


//WriteInTextFile('DEBUG_LICENCA.TXT', '***INICIO');

//WriteInTextFile('DEBUG_LICENCA.TXT', 'HD: '+Float2Str(HD));


  StBios:='';

  Try
    cxCPU:=TcxCPU2000.Create(NIL);
  Finally
    stBios:=cxCPU.Serial+cxCPU.FullName;
    cxCPU.Destroy;
  End;


//WriteInTextFile('DEBUG_LICENCA.TXT', 'STBIOS: '+StBIOS);


{
  StTemp:='';
Say('Passo.7');
  If NOT RunningWindowsXP Then Begin
Say('Passo.8');
    Try
      BiosInfo:=TMainBoardBiosInformation.Create(BiosInfo);
    Finally
Say('Passo.9');
      Try
        StTemp:=OnlyNumbersOnString(BiosInfo.MainBoardBiosDate);
      Finally
        stBios:=stBios+StTemp;
      End;
Say('Passo.10');
      BiosInfo.Destroy;
    End;
  End;
Say('Passo.11');
}

  StBios:='16121977';
  Bios:=ReturnSerial(stBios);


//WriteInTextFile('DEBUG_LICENCA.TXT', 'STBIOS 2: '+StBIOS);

  Try
    WinInfo:=TWinInfo.Create(NIL);
  Finally
    St:=OnlyNumbersOnString(WinInfo.ProductId);
    WinInfo.Destroy;
  End;

//WriteInTextFile('DEBUG_LICENCA.TXT', 'WININFO : '+St);


  ProductID1:=Str2FLoat(Copy(St,1,10));
  ProductID2:=2;
  ProductID3:=3;

  Delete(St,1,10);
  If Length(St)>0 Then Begin
    ProductID2:=Str2FLoat(Copy(St,1,10));
    Delete(St,1,10);
  End;
  If Length(St)>0 Then Begin
    ProductID3:=Str2FLoat(Copy(St,1,10));
    Delete(St,1,10);
  End;


//WriteInTextFile('DEBUG_LICENCA.TXT', 'PRODUCT1 : '+Float2Str(ProductID1));
//WriteInTextFile('DEBUG_LICENCA.TXT', 'PRODUCT2 : '+Float2Str(ProductID2));
//WriteInTextFile('DEBUG_LICENCA.TXT', 'PRODUCT3 : '+Float2Str(ProductID3));



  stMacAddress:=MacAddress;

  Mac:=7797;
  If stMacAddress<>'' Then Begin
    StMacAddress:=StrChr2Bin(stMacAddress);
    REPEAT
      Mac:=Mac+Str2num(Cut(stMacAddress,1,4));
    UNTIL stMacAddress='';
  End;


//WriteInTextFile('DEBUG_LICENCA.TXT', 'MAC : '+Float2Str(Mac));


  (* Contas que faço *)
  HD:=HD+(Chave*9);
  HD:=HD+SomeTodosNumeros(Float2Str(HD));
  HD:=HD*Chave;
//CopyToClipBoard(Float2Str(HD));
//Say('4.: '+Float2Str(HD));

//WriteInTextFile('DEBUG_LICENCA.TXT', 'HD : '+Float2Str(HD));


  Bios:=Bios+(Chave*16);
  Bios:=Bios+SomeTodosNumeros(Float2Str(Bios));
  Bios:=Bios*Chave;
  Bios:=Bios*3;
//CopyToClipBoard(Float2Str(Bios));
//Say('5.: '+Float2Str(Bios));

//WriteInTextFile('DEBUG_LICENCA.TXT', 'BIOS : '+Float2Str(Bios));
//WriteInTextFile('DEBUG_LICENCA.TXT', '***FIM');


  Valor:=HD+BIOS+Chave+Mac+(Chave*Chave);
  Valor:=Valor+SomeTodosNumeros(Float2Str(Valor));
  Valor:=Valor+ProductID1+(Chave*3);
  Valor:=Valor+ProductID2+(Chave);
  Valor:=Valor+ProductID3+(Chave*2);
  (* FIM - Contas que faço *)
//CopyToClipBoard(Float2Str(Valor));
//Say('6.: '+Float2Str(Valor));
  St:=Float2Str(Valor);
  St:=InvertString(St);

  St:=St+Float2Str(Valor*5);
  St:=St+InttoStr(SomeTodosNumeros(St));
  St:=St+Float2Str(Valor*3);

  If Length(St)<20 Then
    St:=St+St;

  If Length(St)>20 Then
    Delete(St,21, Length(St));

  Resp:=Copy(St,1,4)+'-'+Copy(St,5,4)+'-'+Copy(St,9,4)+'-'+Copy(St,13,4)+'-'+Copy(St,17,4);
  Result:=Resp;

{
  DiskInfo.Destroy;
  WinInfo.Destroy;
}
END;



(* Esta função retorna sempre um numero de série que identifica a máquina em execução.
   O numero é sempre o mesmo, variando apenas pela chave passada como parâmetro.
   Chave: de 2 a 99.
*)
FUNCTION ReturnNumeroSerieDaMaquinaMAC_comDV ( Chave : Word ) : String;
VAR
  St                                         : String;

BEGIN
{$I-}

  St:=ReturnNumeroSerieDaMaquinaMAC(Chave);
  Result:=St+'-'+CalculeDV(St, 4);


END;


(* Esta função retorna sempre um numero de série que identifica a máquina em execução.
   O numero é sempre o mesmo, variando apenas pela chave passada como parâmetro.
   Chave: de 2 a 99.
*)
FUNCTION ReturnNumeroSerieDaMaquina_LicencaONLINE ( Chave : Word ) : String;
VAR
  DiskInfo                                   : TDiskInfo;
  BiosInfo                                   : TMainBoardBiosInformation;
  WinInfo                                    : TWinInfo;
  cxCPU                                      : TcxCPU2000;

  NS, St, Resp, stBios, stMacAddress, stTEMP         : String;
  C                                          : Longint;

  HD, Bios, ProductID1, ProductID2, ProductID3, Valor, MAC  : Currency;

  Debug                                      : Boolean;

BEGIN
{$I-}

  Debug:=FileExists('DEBUG_LICENCA.ON');


  If Chave<2 Then
    Chave:=2;


//  St:=ReturnWindows_RootDirectory;  // Peguei a letra do drive onde o Windows está instalado

  HD:=Str2Float('9087563412');
  Try
    DiskInfo:=TDiskInfo.Create(NIL);
  Finally
    Try
      DiskInfo.Disk:='C';
    Finally
      HD:=Abs(DiskInfo.SerialNumber);
    End;
    DiskInfo.Destroy;
  End;


  If Debug Then
    WriteInTextFile('DEBUG_LICENCA.TXT', '***INICIO');

  If Debug Then
    WriteInTextFile('DEBUG_LICENCA.TXT', '1) HD: '+Float2Str(HD));


  StBios:='';

  Try
    cxCPU:=TcxCPU2000.Create(NIL);
  Finally
    stBios:=cxCPU.Serial+cxCPU.FullName;
    cxCPU.Destroy;
  End;


  If Debug Then
    WriteInTextFile('DEBUG_LICENCA.TXT', '2) STBIOS: '+StBIOS);


{
  StTemp:='';
Say('Passo.7');
  If NOT RunningWindowsXP Then Begin
Say('Passo.8');
    Try
      BiosInfo:=TMainBoardBiosInformation.Create(BiosInfo);
    Finally
Say('Passo.9');
      Try
        StTemp:=OnlyNumbersOnString(BiosInfo.MainBoardBiosDate);
      Finally
        stBios:=stBios+StTemp;
      End;
Say('Passo.10');
      BiosInfo.Destroy;
    End;
  End;
Say('Passo.11');
}

  StBios:='16121977';
  Bios:=ReturnSerial(stBios);

  If Debug Then
    WriteInTextFile('DEBUG_LICENCA.TXT', '3) STBIOS 2: '+StBIOS);

  Try
    WinInfo:=TWinInfo.Create(NIL);
  Finally
    St:=OnlyNumbersOnString(WinInfo.ProductId);
    WinInfo.Destroy;
  End;

  If Debug Then
    WriteInTextFile('DEBUG_LICENCA.TXT', '4) WININFO : '+St);


  ProductID1:=Str2FLoat(Copy(St,1,10));
  ProductID2:=2;
  ProductID3:=3;

  Delete(St,1,10);
  If Length(St)>0 Then Begin
    ProductID2:=Str2FLoat(Copy(St,1,10));
    Delete(St,1,10);
  End;
  If Length(St)>0 Then Begin
    ProductID3:=Str2FLoat(Copy(St,1,10));
    Delete(St,1,10);
  End;


  If Debug Then
    WriteInTextFile('DEBUG_LICENCA.TXT', '5) PRODUCT1 : '+Float2Str(ProductID1));

  If Debug Then
    WriteInTextFile('DEBUG_LICENCA.TXT', '6) PRODUCT2 : '+Float2Str(ProductID2));

  If Debug Then
    WriteInTextFile('DEBUG_LICENCA.TXT', '7) PRODUCT3 : '+Float2Str(ProductID3));



  stMacAddress:=MacAddress;

  Mac:=7797;

{ DESATIVAMOS O MAC POR CAUSA DE PROBLEMAS NO SEU RETORNO
  If stMacAddress<>'' Then Begin
    StMacAddress:=StrChr2Bin(stMacAddress);
    REPEAT
      Mac:=Mac+Str2num(Cut(stMacAddress,1,4));
    UNTIL stMacAddress='';
  End;
}

//WriteInTextFile('DEBUG_LICENCA.TXT', 'MAC : '+Float2Str(Mac));


  (* Contas que faço *)
  HD:=HD+(Chave*9);
  HD:=HD+SomeTodosNumeros(Float2Str(HD));
  HD:=HD*Chave;
//CopyToClipBoard(Float2Str(HD));
//Say('4.: '+Float2Str(HD));

  If Debug Then
    WriteInTextFile('DEBUG_LICENCA.TXT', '8) HD : '+Float2Str(HD));


  Bios:=Bios+(Chave*16);
  Bios:=Bios+SomeTodosNumeros(Float2Str(Bios));
  Bios:=Bios*Chave;
  Bios:=Bios*3;
//CopyToClipBoard(Float2Str(Bios));
//Say('5.: '+Float2Str(Bios));

  If Debug Then
    WriteInTextFile('DEBUG_LICENCA.TXT', '9) BIOS : '+Float2Str(Bios));


  Valor:=HD+BIOS+Chave+Mac+(Chave*Chave);
  If Debug Then
    WriteInTextFile('DEBUG_LICENCA.TXT', '10) VALOR='+Float2Str(Valor));

  Valor:=Valor+SomeTodosNumeros(Float2Str(Valor));
  If Debug Then
    WriteInTextFile('DEBUG_LICENCA.TXT', '11) VALOR='+Float2Str(Valor));

  Valor:=Valor+ProductID1+(Chave*3);
  If Debug Then
    WriteInTextFile('DEBUG_LICENCA.TXT', '12) VALOR='+Float2Str(Valor));

  Valor:=Valor+ProductID2+(Chave);
  If Debug Then
    WriteInTextFile('DEBUG_LICENCA.TXT', '13) VALOR='+Float2Str(Valor));

  Valor:=Valor+ProductID3+(Chave*2);
  If Debug Then
    WriteInTextFile('DEBUG_LICENCA.TXT', '14) VALOR='+Float2Str(Valor));


  (* FIM - Contas que faço *)
//CopyToClipBoard(Float2Str(Valor));
//Say('6.: '+Float2Str(Valor));
  St:=Float2Str(Valor);
  If Debug Then
    WriteInTextFile('DEBUG_LICENCA.TXT', '15) ST='+St);

  St:=InvertString(St);
  If Debug Then
    WriteInTextFile('DEBUG_LICENCA.TXT', '16) ST='+St);

  St:=St+Float2Str(Valor*5);
  If Debug Then
    WriteInTextFile('DEBUG_LICENCA.TXT', '17) ST='+St);

  St:=St+InttoStr(SomeTodosNumeros(St));
  If Debug Then
    WriteInTextFile('DEBUG_LICENCA.TXT', '18) ST='+St);

  St:=St+Float2Str(Valor*3);
  If Debug Then
    WriteInTextFile('DEBUG_LICENCA.TXT', '19) ST='+St);

  If Length(St)<20 Then
    St:=St+St;

  If Length(St)>20 Then
    Delete(St,21, Length(St));

  Resp:=Copy(St,1,4)+'-'+Copy(St,5,4)+'-'+Copy(St,9,4)+'-'+Copy(St,13,4)+'-'+Copy(St,17,4);

//  Result:=St+'-'+CalculeDV(St, 4);
  Result:=Resp+'-'+CalculeDV(Resp, 4);;

  If Debug Then
    WriteInTextFile('DEBUG_LICENCA.TXT', '20) Result='+Result);


  If Debug Then
    WriteInTextFile('DEBUG_LICENCA.TXT', '***FIM');

{
  DiskInfo.Destroy;
  WinInfo.Destroy;
}
END;





(* Gera 5 blocos de 4 dígitos cada *)
FUNCTION ReturnContraSenhaParaNumeroSerieDaMaquina ( NumeroSerie : String; ChaveDeContraSenha_Ate1000 : Longint ) : String;
VAR
  St, Resp                                                  : String;
  V1, V2, V3, V4                                            : Currency;
  Chave                                                     : Longint;
  ChaveDinamica                                             : Longint;

BEGIN

  St:=RemoveAll('-',NumeroSerie);

  ChaveDinamica:=SomeTodosNumeros(St)+(ChaveDeContraSenha_Ate1000*2);
  Chave:=ChaveDeContraSenha_Ate1000;

  If Chave>1000 Then
    Chave:=999;
  If Chave<=1 Then
    Chave:=999;

  V1:=Str2Float(Copy(St,1,5));
  V2:=Str2Float(Copy(St,6,5));
  V3:=Str2Float(Copy(St,11,5));
  V4:=Str2Float(Copy(St,16,5));

  V1:=V1*Chave;
  V2:=V2*Chave+Chave;
  V3:=V3*Chave+Chave+Chave;
  V4:=V4*Chave-Chave;

  V1:=V1*(ChaveDinamica)+(ChaveDinamica*9);
  V2:=V2*(ChaveDinamica)+(ChaveDinamica*6);
  V3:=V3*(ChaveDinamica)-ChaveDinamica;
  V4:=V4-(ChaveDinamica*2);

  St:=Float2Str(V1)+Float2Str(V2)+Float2Str(V3)+Float2Str(V4);

  Substitua(St,'00','A');
  Substitua(St,'11','C');
  Substitua(St,'22','E');
  Substitua(St,'33','R');
  Substitua(St,'44','K');
  Substitua(St,'55','M');
  Substitua(St,'66','N');
  Substitua(St,'77','D');
  Substitua(St,'88','L');
  Substitua(St,'99','W');
  Substitua(St,'16','X');
  Substitua(St,'09','Y');
  Substitua(St,'79','T');
  Substitua(St,'29','Q');
  Substitua(St,'45','I');
  Substitua(St,'10','O');
  Substitua(St,'67','V');
  Substitua(St,'23','B');
  Substitua(St,'25','S');
  Substitua(St,'87','G');
  Substitua(St,'37','U');
  Substitua(St,'68','F');
  Substitua(St,'4','H');

  St:=St+St;
  If Length(St)>20 Then
    St:=Copy(St,1,20);

  Resp:=Copy(St,1,4)+'-'+Copy(St,5,4)+'-'+Copy(St,9,4)+'-'+Copy(St,13,4)+'-'+Copy(St,17,4);
  Result:=Resp;

END;



function WinExec32(FileName:String; Visibility : integer):Boolean;
var
zAppName:array[0..512] of char;
zCurDir:array[0..255] of char;
WorkDir:String;
StartupInfo:TStartupInfo;
ProcessInfo:TProcessInformation;
begin
StrPCopy(zAppName,FileName);
GetDir(0,WorkDir);
StrPCopy(zCurDir,WorkDir);
FillChar(StartupInfo,Sizeof(StartupInfo),#0);
StartupInfo.cb := Sizeof(StartupInfo);
StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
StartupInfo.wShowWindow := Visibility;
if not CreateProcess(nil,zAppName,nil,nil,false,CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS,nil, nil,StartupInfo,ProcessInfo) then
   begin
   Result := FALSE;
   end
else
  Result:=TRUE;
end;

function BiosDate: String;
begin
   result := string(pchar(ptr($FFFF5)));
end;



FUNCTION ReturnC3 ( NumeroCheque : Longint ) : Longint;
VAR
  Resultado, Resto       : Longint;
  Cheque                 : String;

BEGIN

  Cheque:=FillLeft(6,NumeroCheque);

  Resultado:=Str2Num(Cheque[1])*7;
  Resultado:=Resultado+Str2Num(Cheque[2])*6;
  Resultado:=Resultado+Str2Num(Cheque[3])*5;
  Resultado:=Resultado+Str2Num(Cheque[4])*4;
  Resultado:=Resultado+Str2Num(Cheque[5])*3;
  Resultado:=Resultado+Str2Num(Cheque[6])*2;

  Resto:=Resultado Mod 11;

  Resultado:=11-Resto;

  If Resultado>9 Then
    Resultado:=0;

  Result:=Resultado;

END;




(* Função que lista aplicações abertas - Necessita de uma TStringList global para
   alimentar (neste exemplo, ela se chama lista

PROCEDURE ListaAplicacoesAbertas;
  function EnumWindowsProc( Wnd : HWnd ) : Boolean; Export; {$ifdef Win32} StdCall; {$endif}
  var
    Buffer : Array[0..99] of char;
  begin
    GetWindowText(Wnd,Buffer,100);
  //  If ((IsWindowVisible(Wnd)) AND (IsWindow(Wnd))) AND (IsWindowEnabled(Wnd)) Then
    If (IsWindowVisible(Wnd) or IsIConic(Wnd)) AND ((GetWindowLong(Wnd,GWL_HWNDPARENT)=0) or (GetWindowLong(Wnd,GWL_HWNDParent)=GetDesktopWindow)) and (GetWindowLong(Wnd,GWL_EXSTYLE) and (WS_EX_TOOLWINDOW)=0) then
      if StrLen(Buffer) > 0 then Begin
        frmMain.Lista.Add(StrPas(Buffer)+','+InttoStr(Wnd));
      End;

  end;
BEGIN
  If Lista=NIL Then
    Lista:=TStringList.Create;
  Lista.Clear;
  EnumWindows(@EnumWindowsProc,LongInt(Self));
END;

*)

(* Retorna o total que ítens CHECKED em um CheckListBox *)
FUNCTION TCheckListBox_CheckedCount ( CheckListBox : TCheckListBox ) : Longint;
VAR
  C, Total  : Longint;
BEGIN
  Result:=0;

  If CheckListBox=nil then Exit;

  If CheckListBox.Items.Count=0 Then Exit;

  C:=0;
  Total:=0;
  REPEAT
    If CheckListBox.Checked[C] Then
      Inc(Total);
    Inc(C);
  UNTIL C>=CheckListBox.Items.Count;

  Result:=Total;

END;

(* Checa ou Uncheca todos os ítens de uma lista *)
PROCEDURE TCheckListBox_SetChecked ( CheckListBox : TCheckListBox; Checked : Boolean );
VAR
  C  : Longint;
BEGIN
  If CheckListBox=nil then Exit;

  If CheckListBox.Items.Count=0 Then Exit;

  C:=0;
  REPEAT
    CheckListBox.Checked[C]:=Checked;
    Inc(C);
  UNTIL C>=CheckListBox.Items.Count;

END;



(* Retorna se o nome de arquivo passado como parâmetro é válido *)
FUNCTION FileNameValid ( FileName : String ) : Boolean;
BEGIN

  Result:=FALSE;

  FileName:=AllTrim(FileName);

  If Length(FileName)=0 Then Exit;
  If Pos('\', FileName)<>0 Then Exit;
  If Pos('/', FileName)<>0 Then Exit;
  If Pos('?', FileName)<>0 Then Exit;
  If Pos('"', FileName)<>0 Then Exit;
  If Pos(':', FileName)<>0 Then Exit;
  If Pos('*', FileName)<>0 Then Exit;
  If Pos('>', FileName)<>0 Then Exit;
  If Pos('<', FileName)<>0 Then Exit;
  If Pos('|', FileName)<>0 Then Exit;

  Result:=TRUE;

END;


FUNCTION MachineNameValid ( MachineName : String ) : Boolean;
BEGIN

  Result:=FileNameValid(MachineName);

  If Pos(' ',MachineName)<>0 Then
    Result:=FALSE;
    
END;


(* Retorna o numero de dias que o mês da data base tem *)
FUNCTION DiasNoMes ( DataBase : String ) : Longint;
VAR
  Dias                 : Longint;
  UltDia, PriDia       : String;

BEGIN
  Result:=0;

  If Not Checkdate(DataBase) Then Exit;

  PriDia:=DataBase;
  Delete(PriDia,1,2);
  PriDia:='01'+PriDia;

  UltDia:=UltimoDiaMes(PriDia);

  Dias:=DiasEntreDatas(PriDia, UltDia);
  Result:=Dias+1;


END;


FUNCTION ProximaMarcacaoPorLetra ( UltimaMarcacao : String ) : String;
VAR
  Atual, Next                     : Char;
  Anterior                        : Char;

BEGIN

  Result:=UltimaMarcacao;

  UltimaMarcacao:=BlasterUpper(UltimaMarcacao);

  If UltimaMarcacao='' Then Begin
    Result:='A';
    Exit;
  End;

  Atual:=UltimaMarcacao[Length(UltimaMarcacao)];


  If Length(UltimaMarcacao)=1 Then Begin

    If Atual='Z' Then Begin
      Result:='AA';
      Exit;
    End;

    Next:=Char(Ord(Atual)+1);
    Result:=Next;
    Exit;

  End;


  If Atual='Z' Then Begin

    Anterior:=UltimaMarcacao[Length(UltimaMarcacao)-1];
    If Anterior<>'Z' Then Begin
      Anterior:=Char(Ord(Anterior)+1);
      UltimaMarcacao[Length(UltimaMarcacao)-1]:=Anterior;
      UltimaMarcacao[Length(UltimaMarcacao)]:='A';
      Result:=UltimaMarcacao;
      Exit;
    End;

  End Else Begin

    Atual:=Char(Ord(Atual)+1);
    UltimaMarcacao[Length(UltimaMarcacao)]:=Atual;
    Result:=UltimaMarcacao;

  End;



END;


FUNCTION Percentual ( Valor : Currency; Percentual : Currency ) : Currency;
VAR
  V      : Currency;
BEGIN

  Result:=0;

  V:=Valor * Percentual / 100; 

  Result:=V;

END;



PROCEDURE CalculePercentual ( VAR Key : Char; ValorTotal : Currency; VAR Valor : TAlignEdit );
BEGIN

  If Key<>'%' Then Exit;

  Key:=#0;

  Valor.Text:=Float2TextEx(Percentual(ValorTotal, Money2Float(RemoveAll('%',Valor.Text))),2);

  If Money2FLoat(Valor.Text)<=0 Then
    Valor.Text:='0,00';

  Valor.SelectAll;

END;


FUNCTION FormatMoneyExcel( St : String; Casas : Word ) : String;
VAR
  Fl     : Currency;
  S      : String;
BEGIN
  Fl:=Money2Float4(St);
  S:=Float2TextEx(Fl, Casas);
  Substitua(S, '.', '');
  Substitua(S, ',', '.');
  Result:=S;
END;

FUNCTION RemovaQuebraLinha ( Texto : String ) : String;
VAR St : String;
BEGIN
  St:=Texto;
  St:=RemoveAll(chr(13), st);
  St:=RemoveAll(chr(10), st);
  Result:=St;

END;

procedure BmpResize( FileName : String; NuWidth, NuHeight: integer);
var
  x, y, xP, yP, yP2, xP2: Integer;
  Read, Read2: PByteArray;
  t, z, z2, iz2: Integer;
  pc: PBytearray;
  w1, w2, w3, w4: Integer;
  Col1r, col1g, col1b, Col2r, col2g, col2b: byte;
  src: TBitmap;
  dst: TBitmap;
begin
  If Not FileExists(FileName) Then Exit;

  dst := TBitmap.create;
  src := TBitmap.create;

  Try
    dst.LoadFromFile(FileName);
  Except
    dst.Free;
    src.Free;
    Exit;
  End;

  src.pixelformat := pf24bit;
  {src.width := dst.width;
  src.height := dst.height;
  src.canvas.draw(0, 0, dst);}
  src.assign(dst);
  src.freeimage;
  dst.width := nuwidth;
  dst.height := nuheight;
  xP2 := ((src.Width - 1) shl 15) div Dst.Width;
  yP2 := ((src.Height - 1) shl 15) div Dst.Height;
  yP := 0;
  for y := 0 to Dst.Height - 1 do
  begin
    xP := 0;
    Read := src.ScanLine[yP shr 15];
    if yP shr 16 < src.Height - 1 then
      Read2 := src.ScanLine [yP shr 15 + 1]
    else
      Read2 := src.ScanLine [yP shr 15];
    pc := Dst.scanline[y];
    z2 := yP and $7FFF;
    iz2 := $8000 - z2;
    for x := 0 to Dst.Width - 1 do
    begin
      t := xP shr 15;
      Col1r := Read[t * 3];
      Col1g := Read[t * 3 + 1];
      Col1b := Read[t * 3 + 2];
      Col2r := Read2[t * 3];
      Col2g := Read2[t * 3 + 1];
      Col2b := Read2[t * 3 + 2];
      z := xP and $7FFF;
      w2 := (z * iz2) shr 15;
      w1 := iz2 - w2;
      w4 := (z * z2) shr 15;
      w3 := z2 - w4;
      pc [x * 3 + 2] := (Col1b * w1 + Read[(t + 1) * 3 + 2] * w2 + Col2b * w3 +
                                    Read2[(t + 1) * 3 + 2] * w4) shr 15;
      pc[x * 3 + 1] := (Col1g * w1 + Read[(t + 1) * 3 + 1] * w2 + Col2g * w3 +
                                   Read2[(t + 1) * 3 + 1] * w4) shr 15;
      pc[x * 3] := (Col1r * w1 + Read2[(t + 1) * 3] * w2 + Col2r * w3 + Read2[(t + 1) * 3] * w4) shr 15;
      Inc(xP, xP2);
    end;
    Inc(yP, yP2);
  end;

  SysUtils.DeleteFile(FileName);

  Try
    dst.SaveToFile(FileName);
  Except
  End;


  src.free;
  dst.free;
end;

Procedure JpgToBmp(Origem,Dest: String);
var
  Final: TBitmap;
  Original: TJPEGImage;

begin

  Final := TBitmap.Create;
  Original := TJpegImage.Create;
  Original.LoadFromFile(Origem);
  Final.Assign(Original);

  Final.SavetoFile(Dest);

end;

Procedure BmpToJpg(Origem,Dest: String; Resolution: integer);
var
  Final: TJPEGImage;
  Original: TBitmap;
  CompressionQuality: TJPEGQualityRange;
  
begin

  Final := TJpegImage.Create;
  Original := TBitmap.Create;
  Original.LoadFromFile(Origem);
  Final.Assign(Original);

  With Final do begin
      CompressionQuality := Resolution;
  end;

  Final.JpegNeeded;
  Final.SavetoFile(Dest);

end;


FUNCTION CheckDigitacaoData ( Data : String; AnosLimite : Longint; AskUser : Boolean ) : Boolean;
BEGIN

  Result:=TRUE;

  If AnosEntreDatas(Data, Hoje)>=AnosLimite Then Begin
    Result:=FALSE;

    If AskUser Then Begin
      Beep;
      If MyMessageDlg('ATENÇÃO - Confira a digitação!','A data digitada ('+Data+') está correta?', MTwarning, [MBYes, MBNo], MrNo, 0)=MrYes Then
        Result:=TRUE;
    End;

  End;

END;

FUNCTION ArredondaAbastecimento ( Valor : Currency ) : Currency;
VAR
  St     : String;
  Dif    : Currency;

BEGIN

  Result:=Valor;

  St:=Float2Money(Valor);
  Delete(St,1,Pos(',', St));
  Dif:=Str2Num(St);

  If Dif=99 Then
    Result:=Valor+0.01
  Else Begin
    If Dif=1 Then
      Result:=Valor-0.01;
  End;

END;


FUNCTION Cut ( VAR Origem : String; Posicao : Longint; Tamanho : Longint ) : String;
BEGIN
  Result:=Origem;
  Result:=Copy(Origem, Posicao, Tamanho);
  Delete(Origem, Posicao, Tamanho);
END;


FUNCTION ReadFileToStringList ( FileName : String; Var Destino : TStringList ) : Boolean;
VAR
  Pau    : Boolean;
BEGIN
{$I-}

  Result:=FALSE;
  Destino.Clear;

  If Not FileExists(FileName) Then Exit;

  Pau:=FALSE;
  TRY
    Destino.LoadFromFile(FileName);
  EXCEPT
    Pau:=TRUE;
  END;

  If Pau Then Begin
    Destino.Clear;
    Exit;
  End;

  Result:=TRUE;

END;


FUNCTION SaveFileFromStringList ( FileName : String; Var Origem : TStringList ) : Boolean;
VAR
  Pau    : Boolean;
BEGIN
{$I-}

  Result:=FALSE;

  If FileExists(FileName) Then
    SysUtils.DeleteFile(FileName);

  Pau:=FALSE;
  TRY
    Origem.SaveToFile(FileName);
  EXCEPT
    Pau:=TRUE;
  END;

  If Pau Then
    Exit;

  Result:=TRUE;

END;


FUNCTION PlacaValida ( Placa : String ) : Boolean;
BEGIN

  Result:=TRUE;

  Placa:=Alltrim(Placa);

  If Length(Placa)<6 Then
    Result:=FALSE;

END;


FUNCTION StringList_SearchLineInicio( Lista : TStringList; ConteudoInicial : String; Var Linha : String ) : Boolean;
VAR
  C      : Longint;
BEGIN

  Result:=FALSE;
  If Lista.Count=0 Then Exit;

  ConteudoInicial:=BlasterUpper(ConteudoInicial);

  C:=0;
  REPEAT
    If Pos(ConteudoInicial, BlasterUpper(Lista.Strings[C]))=1 Then Begin
      Linha:=BlasterUpper(Lista.Strings[C]);
      Result:=TRUE;
      Exit;
    End;
    Inc(C);
  UNTIL C>=Lista.Count;

END;


(* Esta função recalcula a quantidade MAS considera arredondamento para encontrar o valor final (o que difere da ArredondamentoECF) *)
PROCEDURE ArredondamentoNFe ( VAR Quantidade : Currency; PrecoUNIT, Total : Currency );
VAR
  Qde                       : Currency;
  Final                     : Currency;

  MenorQde                  : Currency;

LABEL MENOVALORVOLUME;
BEGIN

  If PrecoUNIT<=0 Then Exit;

  If Arredonda(Quantidade*PrecoUNIT,2)=Total Then
    Exit;

  Qde:=Arredonda(Total / PrecoUNIT, 4); {A24072012 - O arredondamente era feito com 3 casas até 24/07/2012} 

  If Arredonda(Qde*PrecoUNIT,2) >= Total Then
    Goto MENOVALORVOLUME;

  REPEAT
    If Arredonda(Qde*PrecoUNIT,2) < Total Then
      Qde:=Qde+0.001;
  UNTIL Arredonda(Qde*PrecoUNIT,2)>=Total;   // arredondamento natural.


MENOVALORVOLUME:

  MenorQde:=Qde;
  REPEAT
    Qde:=Qde-0.001;
    If Arredonda(Qde*PrecoUnit,2)>=Total Then
      MenorQde:=Qde;
  UNTIL Arredonda(Qde*PrecoUnit,2)<Total;

  Quantidade:=MenorQDE;

END;

(* Esta função chega no valor de quantidade para que o truncamento seja feito com sucesso *)
PROCEDURE ArredondamentoECF ( VAR Quantidade : Currency; PrecoUNIT, Total : Currency );
VAR
  Qde                                        : Currency;
  Final                                      : Currency;

  MenorQde                                   : Currency;

  TotalReal                                  : Real;

LABEL MENOVALORVOLUME;
BEGIN

  If PrecoUNIT<=0 Then Exit;

  (* 10/09/2014 - Alterado para não fazer conta a toa *)
//  If Money2Float(Float2Money(Quantidade*PrecoUnit))=Total Then Exit;
  (* 13/11/2014 - Vitor trouxe um caso de PPL 2,849 * 17.55L = R$ 50,00. A conta não bate se não usarmos variável REAL. Fiz a alteração... *)
  TotalReal:=Quantidade*PrecoUnit;
  If (TotalReal=Total) Then
    If Money2Float(Float2Money(Quantidade*PrecoUnit))=Total Then Exit;


  Qde:=Arredonda(Total / PrecoUNIT,3);

  If (Qde*PrecoUNIT) >= Total Then
    Goto MENOVALORVOLUME;

  REPEAT
    If (Qde*PrecoUNIT) < Total Then
      Qde:=Qde+0.001;
  UNTIL (Qde*PrecoUNIT)>=Total;   // arredondamento natural.


MENOVALORVOLUME:

  MenorQde:=Qde;
  REPEAT
    Qde:=Qde-0.001;
    If Qde*PrecoUnit>=Total Then
      MenorQde:=Qde;
  UNTIL Qde*PrecoUnit<Total;

  Quantidade:=MenorQDE;

END;




FUNCTION UFValida ( UF : String ) : Boolean;
BEGIN

  UF:=BlasterUpper(UF);

  If Pos('|'+UF+'|', '|SP|RO|PE|PO|MG|RS|RJ|AC|AL|AM|AP|BA|CE|DF|ES|GO|MA|MS|MT|PA|PB|PN|PI|PR|RR|RO|RN|RR|SC|SE|TO|')<>0 Then
    Result:=TRUE
  Else
    Result:=FALSE;

END;


FUNCTION FormatIE ( InscricaoEstadual : Currency; UF : String ) : String;
BEGIN

  UF:=BlasterUpper(UF);

  If Uf='AC' Then Begin
    Result:=FillLeftFloat(13, InscricaoEstadual);
    Exit;
  End;

  If Uf='AL' Then Begin
    Result:=FillLeftFloat(9, InscricaoEstadual);
    Exit;
  End;

  If Uf='AM' Then Begin
    Result:=FillLeftFloat(9, InscricaoEstadual);
    Exit;
  End;

  If Uf='AP' Then Begin
    Result:=FillLeftFloat(9, InscricaoEstadual);
    Exit;
  End;

  If Uf='BA' Then Begin
    Result:=FillLeftFloat(9, InscricaoEstadual);
    Exit;
  End;

  If Uf='CE' Then Begin
    Result:=FillLeftFloat(9, InscricaoEstadual);
    Exit;
  End;

  If Uf='DF' Then Begin
    Result:=FillLeftFloat(13, InscricaoEstadual);
    Exit;
  End;

  If Uf='ES' Then Begin
    Result:=FillLeftFloat(9, InscricaoEstadual);
    Exit;
  End;

  If Uf='GO' Then Begin
    Result:=FillLeftFloat(9, InscricaoEstadual);
    Exit;
  End;

  If Uf='MA' Then Begin
    Result:=FillLeftFloat(9, InscricaoEstadual);
    Exit;
  End;

  If Uf='MG' Then Begin
    Result:=FillLeftFloat(13, InscricaoEstadual);
    Exit;
  End;

  If Uf='MS' Then Begin
    Result:=FillLeftFloat(9, InscricaoEstadual);
    Exit;
  End;

  If Uf='MT' Then Begin
    Result:=FillLeftFloat(11, InscricaoEstadual);
    Exit;
  End;

  If Uf='PA' Then Begin
    Result:=FillLeftFloat(9, InscricaoEstadual);
    Exit;
  End;

  If Uf='PB' Then Begin
    Result:=FillLeftFloat(9, InscricaoEstadual);
    Exit;
  End;

  If Uf='PE' Then Begin
    Result:=FillLeftFloat(9, InscricaoEstadual);
    Exit;
  End;

  If Uf='PI' Then Begin
    Result:=FillLeftFloat(9, InscricaoEstadual);
    Exit;
  End;

  If Uf='PR' Then Begin
    Result:=FillLeftFloat(10, InscricaoEstadual);
    Exit;
  End;

  If Uf='RJ' Then Begin
    Result:=FillLeftFloat(8, InscricaoEstadual);
    Exit;
  End;

  If Uf='RN' Then Begin
    Result:=FillLeftFloat(9, InscricaoEstadual);
    Exit;
  End;

  If Uf='RO' Then Begin
    Result:=FillLeftFloat(14, InscricaoEstadual);
    Exit;
  End;

  If Uf='RR' Then Begin
    Result:=FillLeftFloat(9, InscricaoEstadual);
    Exit;
  End;

  If Uf='RS' Then Begin
    Result:=FillLeftFloat(10, InscricaoEstadual);
    Exit;
  End;

  If Uf='SC' Then Begin
    Result:=FillLeftFloat(9, InscricaoEstadual);
    Exit;
  End;

  If Uf='SE' Then Begin
    Result:=FillLeftFloat(9, InscricaoEstadual);
    Exit;
  End;

  If Uf='SP' Then Begin
    Result:=FillLeftFloat(12, InscricaoEstadual);
    Exit;
  End;

  If Uf='TO' Then Begin
    Result:=FillLeftFloat(9, InscricaoEstadual);
    Exit;
  End;

  Result:=FillLeftFloat(14, InscricaoEstadual);

END;


FUNCTION RenameFileForced( De, Para : String ) : Boolean;
VAR
  Retries               : Word;
BEGIN

  Result:=FALSE;

  If not FileExists(De) Then Exit;

  Retries:=0;
  REPEAT

    If Not RenameFile(De, Para) Then Begin
      Delay(200);
      Inc(Retries);
    End Else Begin
      Retries:=999;
      Result:=TRUE;
    End;

  UNTIL Retries>20;

END;


FUNCTION RenameExtensaoFileForced( De, ParaExtensao : String ) : Boolean;
VAR
  Retries               : Word;
  Para                  : String;

BEGIN

  Result:=FALSE;

  If not FileExists(De) Then Exit;

  Para:=De;
  Delete(Para, LastPos('.', Para), Length(Para));
  If Pos('.', ParaExtensao)=0 Then
    ParaExtensao:='.'+ParaExtensao;

  Para:=Para+ParaExtensao;

  Retries:=0;
  REPEAT

    If Not RenameFile(De, Para) Then Begin
      Delay(200);
      Inc(Retries);
    End Else Begin
      Retries:=999;
      Result:=TRUE;
    End;

  UNTIL Retries>20;

END;


FUNCTION DeleteFileForced( FileName : String ) : Boolean;
VAR
  Retries               : Word;
BEGIN

  Result:=FALSE;

  If Not FileExists(FileName) Then Exit;

  Retries:=0;
  REPEAT

    If Not SysUtils.DeleteFile(FileName) Then Begin
      Delay(200);
      Inc(Retries);
    End Else Begin
      Retries:=999;
      Result:=TRUE;
    End;

  UNTIL Retries>20;

END;


FUNCTION ModeloDaNotaFiscalValido ( Modelo : String ) : Boolean;
VAR
  Modelos                         : String;

BEGIN

  Result:=FALSE;

  Modelo:=AllTrim(Modelo);

  Modelos:='|24|14|15|16|13|10|11|09|9|08|8|17|25|01|1|06|03|3|21|04|4|22|07|7|02|2|20|18|55|';

  If Pos('|'+Modelo+'|',Modelos )<>0 Then
    Result:=TRUE;

END;


FUNCTION SerieDaNotaFiscalValida ( Serie : String ) : Boolean;
VAR
  Series                         : String;

BEGIN

  Result:=FALSE;

  Serie:=AllTrim(Serie);

  Series:='|1|1A|1-A|D|U|A|';

  If Pos('|'+Serie+'|',Series )<>0 Then
    Result:=TRUE;

END;


FUNCTION DDMMAAAA_2_AAAAMMDD_Unformatted ( Data : String ) : String;
VAr
  St     : String;
BEGIN
  St:=Copy(Data,5,4);
  St:=St+Copy(Data,3,2);
  St:=St+Copy(Data,1,2);
  Result:=ST;
END;


FUNCTION ReturnLetraAlfabeto(Numero : Integer) : String;
VAR
  Reinicios                         : Longint;

Begin

  Result:='';

  If Numero>26 Then Begin
    Reinicios:=0;
    REPEAT
      Inc(Reinicios);
      Numero:=Numero-26;
    UNTIL Numero<=26;
    If Reinicios<=26 Then
      Result:=ReturnLetraAlfabeto(Reinicios);
  End;

  Case Numero of
    01 : Result := Result+'A';
    02 : Result := Result+'B';
    03 : Result := Result+'C';
    04 : Result := Result+'D';
    05 : Result := Result+'E';
    06 : Result := Result+'F';
    07 : Result := Result+'G';
    08 : Result := Result+'H';
    09 : Result := Result+'I';
    10 : Result := Result+'J';
    11 : Result := Result+'K';
    12 : Result := Result+'L';
    13 : Result := Result+'M';
    14 : Result := Result+'N';
    15 : Result := Result+'O';
    16 : Result := Result+'P';
    17 : Result := Result+'Q';
    18 : Result := Result+'R';
    19 : Result := Result+'S';
    20 : Result := Result+'T';
    21 : Result := Result+'U';
    22 : Result := Result+'V';
    23 : Result := Result+'W';
    24 : Result := Result+'X';
    25 : Result := Result+'Y';
    26 : Result := Result+'Z';
  End;

End;



FUNCTION GereHexaBICO_Cesna(SL, BO, BI : LongInt) : String;
VAr
  C, I, J            : Integer;
  Cont               : Integer;
  eRoW               : LongInt;

Begin

  C:=1;
  I:=1;
  J:=1;
  Cont:=0;

  REPEAT
    REPEAT
      REPEAT
        Inc(Cont);

        If (SL=J) AND (BO=I) AND (BI=C) Then Begin
          If Cont=256 Then
            Result:='1G'
          Else
            If Length(DecToHex(Cont)) = 1 Then
              Result:='0' + DecToHex(Cont)
            else
              Result:=DecToHex(Cont);
          Exit;
        End;

        Inc(C);
      UNTIL C>4;
      Inc(I);
      C:=1;
    UNTIL I>16;
    Inc(J);
    C:=1;
    I:=1;
  UNTIL J>16;

End;


FUNCTION Wayne_GereHexaBICO( BO, BI : LongInt) : String;
VAr
  C, I, J            : Integer;
  Cont               : Integer;
  eRoW               : LongInt;
  Sl                 : Longint;

Begin
  C:=1;
  I:=1;
  J:=1;
  Cont:=0;
  SL:=1;

  REPEAT
    REPEAT
      REPEAT
        Inc(Cont);

        If (SL=J) AND (BO=I) AND (BI=C) Then Begin
          If Cont=256 Then
            Result:='1G'
          Else
            If Length(DecToHex(Cont)) = 1 Then
              Result:='0' + DecToHex(Cont)
            else
              Result:=DecToHex(Cont);
          Exit;
        End;

        Inc(C);
      UNTIL C>4;
      Inc(I);
      C:=1;
    UNTIL I>16;
    Inc(J);
    C:=1;
    I:=1;
  UNTIL J>4;
End;



FUNCTION Return_Cesna(IDBico : String; Var SL : LongInt; Var BO : LongInt; Var BI : LongInt) : LongInt ;
VAr
  C, I, J            : Integer;
  Cont               : Integer;
  eRoW               : LongInt;

Begin
  C:=1;
  I:=1;
  J:=1;
  Cont:=0;

  If IDBico='1G' Then Begin
    SL:=4;
    BO:=16;
    BI:=4;
    Exit;
  End;

  REPEAT
    REPEAT
      REPEAT
        Inc(Cont);

        If (Cont = HexToDec(IDBico)) Then Begin
          SL:=J;
          BO:=I;
          BI:=C;
          Exit;
        End;

        Inc(C);
      UNTIL C>4;
      Inc(I);
      C:=1;
    UNTIL I>16;
    Inc(J);
    C:=1;
    I:=1;
  UNTIL J>4;
End;



PROCEDURE Wayne_ReturnPosicoesBico(IDBico : String; Var BO : LongInt; Var BI : LongInt);
VAr
  C, I, J            : Integer;
  Cont               : Integer;
  eRoW               : LongInt;

Begin
  C:=1;
  I:=1;
  J:=1;
  Cont:=0;

  If IDBico='1G' Then Begin
//    SL:=4;
    BO:=16;
    BI:=4;
    Exit;
  End;

  REPEAT
    REPEAT
      REPEAT
        Inc(Cont);

        If (Cont = HexToDec(IDBico)) Then Begin
//          SL:=J;
          BO:=I;
          BI:=C;
          Exit;
        End;

        Inc(C);
      UNTIL C>4;
      Inc(I);
      C:=1;
    UNTIL I>16;
    Inc(J);
    C:=1;
    I:=1;
  UNTIL J>4;

End;


(* Decrementa quantos anos for passado como parametro na data *)
FUNCTION DEC_YEARS( Data : Longint; Years : Longint ) : Longint;
VAR
  Ano    : Longint;
BEGIN

  Ano:=Str2Num(Copy(Int2Date(Data),7,4));
  Ano:=Ano-Years;

  Result:=Date2Int(Copy(Int2Date(Data),1,6)+FillLeft(4,Ano));

END;



(* Incrementa quantos meses for passado como parametro na data *)
FUNCTION INC_MONTHS( Data : Longint; Months : Longint ) : Longint;
VAR
  Mes    : Longint;
  Ano    : Longint;
  Dt     : String;
BEGIN

  Mes:=Str2Num(Copy(Int2Date(Data),4,2));
  Ano:=Str2Num(Copy(Int2Date(Data),7,4));

  Mes:=Mes+Months;

  If Mes>12 Then Begin
    REPEAT
      If Mes>12 Then Begin
        Inc(Ano);
        Mes:=Mes-12;
      End;
    UNTIL Mes<=12;
  End;


  Dt:=Copy(Int2Date(Data),1,2)+'/'+FillLeft(2,Mes)+'/'+FillLeft(4,Ano);

  If Not CheckDate(Dt) Then
    Dt:=UltimoDiaMes('01'+Copy(Dt,3,10));

  Result:=Date2Int(Dt);

END;





(* Só funciona até 2099 *)
FUNCTION DateTimeToSeconds( Data, Hora : String ) : Currency;
VAR
  D, M, A                   : Currency;
  H, S                      : Longint;
  R                         : Currency;

  DateInt                   : Currency;
  C                         : Longint;

LABEL GO;
BEGIN

  Data:=Copy(Data,1,6)+'00'+Copy(Data,9,2);  // Tirando o 2000

  C:=Str2Num(Copy(Data,1,2));
  C:=C+(Str2Num(Copy(Data,4,2))*31);
  DateInt:=C+(Str2Num(Copy(Data,7,4))*372);  // ERA 365


  R:=DateInt*86400;
  Goto GO;  // PUlando para testar datas corretamente

  (* Esta função foi refeita em 15/02/2010 porque estava fazendo retornos inválidos quando a data era superior a 2050.

  (* Para somar ou subtrair:
     1 ano : 32140800
     1 mês : 2678400
     1 dia : 86400
     1 hora : 3600
     1 minuto : 60
     1 segundo : 1
  *)

  D:=Str2Num(Copy(Data,1,2));
  Delete(Data,1,3);
  M:=Str2Num(Copy(Data,1,2));
  Delete(Data,1,5);
  A:=Str2num(Copy(Data,1,2));

  R:=D*24*60*60;
  R:=R+(M*31*24*60*60);
  R:=R+(A*12*31*24*60*60);

GO:

  H:=Str2Num(Copy(Hora,1,2));
  Delete(Hora,1,3);
  M:=Str2Num(Copy(Hora,1,2));
  Delete(Hora,1,3);
  S:=Str2Num(Copy(Hora,1,2));

  R:=R+H*60*60;
  R:=R+M*60;
  R:=R+S;

  Result:=R;

END;



FUNCTION TimeStampToSeconds( TimeStamp : String ) : Currency;
VAR
  Data, Hora                : String;

BEGIN

  TimeStamp:=AllTrim(TimeStamp);
  Data:=Cut(TimeStamp,1,Pos(' ',TimeStamp));
  Data:=FormatDate(Data);

  TimeStamp:=AllTrim(TimeStamp);
  Hora:=TimeStamp;

  Result:=DateTimeToSeconds(Data, Hora);


END;




PROCEDURE SecondsToDateTime( Segundos : Currency; VAR Data : String; VAR Hora : String );
VAR
  Dia, Mes, Ano             : Longint;
  AnoCurrency               : Currency;
  Hor, Min, Seg             : Longint;
  Inteiro                   : Longint;
  St                        : String;
  Resto, Resultado          : Currency;

  DateInt                   : Longint;

LABEL GO;
BEGIN

  Data:='';
  Hora:='00:00:00';

  Segundos:=Abs(Segundos);  // 16/07/13 valores <0 serão convertidos para positivo porque estou usando isso no CLIENT_POST do LBCPDV.

  If Segundos<=0 Then
    Exit;


  (* Para somar ou subtrair:
     1 ano : 32140800
     1 mês : 2678400
     1 dia : 86400
     1 hora : 3600
     1 minuto : 60
     1 segundo : 1
  *)


  Dia:=0;
  Mes:=0;
  Ano:=0;
  Hor:=0;
  Min:=0;
  Seg:=0;


  (* ano *)
  Resultado:=Segundos / (32140800);
  If Resultado>=1 Then Begin
    St:=Float2Money(Resultado);
    Delete(St, Pos(',',St), Length(St));
    Inteiro:=Str2Num(St);

    Ano:=Inteiro;
    AnoCurrency:=Ano;
    Segundos:=Segundos - (AnoCurrency*32140800);  // Funcao revisada porque a conta nao estava fechando quando o valor estourada capacidade do inteiro
  End;


  (* MES *)
  Resultado:=Segundos / (2678400);
  If Resultado>=1 Then Begin
    St:=Float2Money(Resultado);
    Delete(St, Pos(',',St), Length(St));
    Inteiro:=Str2Num(St);

    Mes:=Inteiro;
    Segundos:=Segundos - (Mes*2678400);
  End;


  (* Corrigido em 30/03/2012 *)
  If Segundos<0 Then Begin

    Dec(Mes);
    If Mes<=0 Then Begin
      Mes:=12;
      Dec(Ano);
    End;

    Segundos:=2678400 + Segundos;
  End;



  (* DIA *)
  Resultado:=Segundos / (86400);
  If Resultado>=1 Then Begin
    St:=Float2Money(Resultado);
    Delete(St, Pos(',',St), Length(St));
    Inteiro:=Str2Num(St);

    Dia:=Inteiro;
    Segundos:=Segundos - (Dia*86400);
  End;


  (* Corrigido em 28/02/2012 *)
  If Segundos<0 Then Begin

    Dec(Dia);
    If Dia=0 Then Begin
      Dec(Mes);
      If Mes=0 Then
        Dec(Ano);
      If Dia<=0 Then Begin
        Dia:=Str2Num(Copy(UltimoDiaMes('01/'+FillLeft(2,Mes)+'/20'+FillLeft(2,Ano)),1,2));
      End;
    End;

    Segundos:=86400 + Segundos;

  End;




GO:

  Hor:=0;
  Min:=0;
  Seg:=0;

  (* HORA *)
  Resultado:=Segundos / (3600);
  If Resultado>=1 Then Begin
    St:=Float2Money(Resultado);
    Delete(St, Pos(',',St), Length(St));
    Inteiro:=Str2Num(St);

    Hor:=Inteiro;
    Segundos:=Segundos - (Hor*3600);
  End;


  (* MINUTOS *)
  Resultado:=Segundos / (60);
  If Resultado>=1 Then Begin
    St:=Float2Money(Resultado);
    Delete(St, Pos(',',St), Length(St));
    Inteiro:=Str2Num(St);

    Min:=Inteiro;
    Segundos:=Segundos - (Min*60);
  End;


  If Mes=0 Then Begin
    Mes:=12;
    Dec(Ano);
  End;

  If Dia=0 Then Begin
    Dec(Mes);
    If Mes<=0 Then Begin
      Mes:=12;
      Dec(Ano);
    End;
    Dia:=Str2Num(Copy(UltimoDiaMes('01/'+FillLeft(2,Mes)+'/20'+FillLeft(2,Ano)), 1,2));
  End;


  If Segundos<0 Then
    Segundos:=0;

  Seg:=Float2Int(Segundos);

  Data:=FillLeft(2,Dia)+'/'+FillLeft(2,Mes)+'/'+'20'+FillLeft(2,Ano);
  Hora:=FillLeft(2,Hor)+':'+FillLeft(2,Min)+':'+FillLeft(2,Seg);


END;




FUNCTION DateTimeToSecondsInt( DataInt, HoraInt : Longint ) : Currency;
VAR
  D, M, A                   : Longint;
  H, S                      : Longint;
  R                         : Currency;
  Data, Hora                : String;

BEGIN

  Data:=Int2Date(DataInt);
  Hora:=INTTOTIME(HoraInt);


  D:=Str2Num(Copy(Data,1,2));
  Delete(Data,1,3);
  M:=Str2Num(Copy(Data,1,2));
  Delete(Data,1,5);
  A:=Str2num(Copy(Data,1,2));

  R:=D*24*60*60;
  R:=R+(M*31*24*60*60);
  R:=R+(A*12*31*24*60*60);

  H:=Str2Num(Copy(Hora,1,2));
  Delete(Hora,1,3);
  M:=Str2Num(Copy(Hora,1,2));
  Delete(Hora,1,3);
  S:=Str2Num(Copy(Hora,1,2));

  R:=R+H*60*60;
  R:=R+M*60;
  R:=R+S;

  Result:=R;

END;



FUNCTION GereIDCanal_Cesna ( Sl, Bo : Longint ) : Longint;
VAR  Hexa                  : String;
BEGIN
{sl 01, bo 01: 01
sl 01, bo 02: 05
sl 01, bo 03: 09
sl 01, bo 04: 0D
sl 01, bo 05: 11
sl 01, bo 06: 15
sl 01, bo 07: 19
sl 01, bo 08: 1D
sl 01, bo 09: 21
sl 01, bo 10: 25
sl 01, bo 11: 29
sl 01, bo 12: 2D
sl 01, bo 13: 31
sl 01, bo 14: 35
sl 01, bo 15: 39
sl 01, bo 16: 3D
sl 02, bo 01: 41
sl 02, bo 02: 45
sl 02, bo 03: 49
sl 02, bo 04: 4D
sl 02, bo 05: 51
sl 02, bo 06: 55
sl 02, bo 07: 59
sl 02, bo 08: 5D
sl 02, bo 09: 61
sl 02, bo 10: 65
sl 02, bo 11: 69
sl 02, bo 12: 6D
sl 02, bo 13: 71
sl 02, bo 14: 75
sl 02, bo 15: 79
sl 02, bo 16: 7D
sl 03, bo 01: 81
sl 03, bo 02: 85
sl 03, bo 03: 89
sl 03, bo 04: 8D
sl 03, bo 05: 91
sl 03, bo 06: 95
sl 03, bo 07: 99
sl 03, bo 08: 9D
sl 03, bo 09: A1
sl 03, bo 10: A5
sl 03, bo 11: A9
sl 03, bo 12: AD
sl 03, bo 13: B1
sl 03, bo 14: B5
sl 03, bo 15: B9
sl 03, bo 16: BD
sl 04, bo 01: C1
sl 04, bo 02: C5
sl 04, bo 03: C9
sl 04, bo 04: CD
sl 04, bo 05: D1
sl 04, bo 06: D5
sl 04, bo 07: D9
sl 04, bo 08: DD
sl 04, bo 09: E1
sl 04, bo 10: E5
sl 04, bo 11: E9
sl 04, bo 12: ED
sl 04, bo 13: F1
sl 04, bo 14: F5
sl 04, bo 15: F9
sl 04, bo 16: FD
}
  Hexa:=GereHexaBico_Cesna(Sl, Bo, 1);

  If Hexa='01' Then Begin
    Result:=1;
    Exit;
  End;

  If Hexa='05' Then Begin
    Result:=2;
    Exit;
  End;

  If Hexa='09' Then Begin
    Result:=3;
    Exit;
  End;

  If Hexa='0D' Then Begin
    Result:=4;
    Exit;
  End;

  If Hexa='11' Then Begin
    Result:=5;
    Exit;
  End;

  If Hexa='15' Then Begin
    Result:=6;
    Exit;
  End;

  If Hexa='19' Then Begin
    Result:=7;
    Exit;
  End;

  If Hexa='1D' Then Begin
    Result:=8;
    Exit;
  End;

  If Hexa='21' Then Begin
    Result:=9;
    Exit;
  End;

  If Hexa='25' Then Begin
    Result:=10;
    Exit;
  End;

  If Hexa='29' Then Begin
    Result:=11;
    Exit;
  End;

  If Hexa='2D' Then Begin
    Result:=12;
    Exit;
  End;

  If Hexa='31' Then Begin
    Result:=13;
    Exit;
  End;

  If Hexa='35' Then Begin
    Result:=14;
    Exit;
  End;

  If Hexa='39' Then Begin
    Result:=15;
    Exit;
  End;

  If Hexa='3D' Then Begin
    Result:=16;
    Exit;
  End;

  If Hexa='41' Then Begin
    Result:=17;
    Exit;
  End;

  If Hexa='45' Then Begin
    Result:=18;
    Exit;
  End;

  If Hexa='49' Then Begin
    Result:=19;
    Exit;
  End;

  If Hexa='4D' Then Begin
    Result:=20;
    Exit;
  End;

  If Hexa='51' Then Begin
    Result:=21;
    Exit;
  End;

  If Hexa='55' Then Begin
    Result:=22;
    Exit;
  End;

  If Hexa='59' Then Begin
    Result:=23;
    Exit;
  End;

  If Hexa='5D' Then Begin
    Result:=24;
    Exit;
  End;

  If Hexa='61' Then Begin
    Result:=25;
    Exit;
  End;

  If Hexa='65' Then Begin
    Result:=26;
    Exit;
  End;

  If Hexa='69' Then Begin
    Result:=27;
    Exit;
  End;

  If Hexa='6D' Then Begin
    Result:=28;
    Exit;
  End;

  If Hexa='71' Then Begin
    Result:=29;
    Exit;
  End;

  If Hexa='75' Then Begin
    Result:=30;
    Exit;
  End;

  If Hexa='79' Then Begin
    Result:=31;
    Exit;
  End;

  If Hexa='7D' Then Begin
    Result:=32;
    Exit;
  End;

  If Hexa='81' Then Begin
    Result:=33;
    Exit;
  End;

  If Hexa='85' Then Begin
    Result:=34;
    Exit;
  End;

  If Hexa='89' Then Begin
    Result:=35;
    Exit;
  End;

  If Hexa='8D' Then Begin
    Result:=36;
    Exit;
  End;

  If Hexa='91' Then Begin
    Result:=37;
    Exit;
  End;

  If Hexa='95' Then Begin
    Result:=38;
    Exit;
  End;

  If Hexa='99' Then Begin
    Result:=39;
    Exit;
  End;

  If Hexa='9D' Then Begin
    Result:=40;
    Exit;
  End;

  If Hexa='A1' Then Begin
    Result:=41;
    Exit;
  End;

  If Hexa='A5' Then Begin
    Result:=42;
    Exit;
  End;

  If Hexa='A9' Then Begin
    Result:=43;
    Exit;
  End;

  If Hexa='AD' Then Begin
    Result:=44;
    Exit;
  End;

  If Hexa='B1' Then Begin
    Result:=45;
    Exit;
  End;

  If Hexa='B5' Then Begin
    Result:=46;
    Exit;
  End;

  If Hexa='B9' Then Begin
    Result:=47;
    Exit;
  End;

  If Hexa='BD' Then Begin
    Result:=48;
    Exit;
  End;

  If Hexa='C1' Then Begin
    Result:=49;
    Exit;
  End;

  If Hexa='C5' Then Begin
    Result:=50;
    Exit;
  End;

  If Hexa='C9' Then Begin
    Result:=51;
    Exit;
  End;

  If Hexa='CD' Then Begin
    Result:=52;
    Exit;
  End;

  If Hexa='D1' Then Begin
    Result:=53;
    Exit;
  End;

  If Hexa='D5' Then Begin
    Result:=54;
    Exit;
  End;

  If Hexa='D9' Then Begin
    Result:=55;
    Exit;
  End;

  If Hexa='DD' Then Begin
    Result:=56;
    Exit;
  End;

  If Hexa='E1' Then Begin
    Result:=57;
    Exit;
  End;

  If Hexa='E5' Then Begin
    Result:=58;
    Exit;
  End;

  If Hexa='E9' Then Begin
    Result:=59;
    Exit;
  End;

  If Hexa='ED' Then Begin
    Result:=60;
    Exit;
  End;

  If Hexa='F1' Then Begin
    Result:=61;
    Exit;
  End;

  If Hexa='F5' Then Begin
    Result:=62;
    Exit;
  End;

  If Hexa='F9' Then Begin
    Result:=63;
    Exit;
  End;

  If Hexa='FD' Then Begin
    Result:=64;
    Exit;
  End;

END;






(* Retorna os HEXAS dos bicos ligados ao canal separados por ',' *)
FUNCTION ReturnBicosLigadosCanal ( Canal : Longint ) : String;
VAR
  Sl, Bo, Bi                     : Word;
  St                             : String;
  
LABEL FIM;
BEGIN

  Result:='';
  St:='';

  If Canal=1 Then Begin
    Sl:=1;
    Bo:=1;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=2 Then Begin
    Sl:=1;
    Bo:=2;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=3 Then Begin
    Sl:=1;
    Bo:=3;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;

  If Canal=4 Then Begin
    Sl:=1;
    Bo:=4;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;

  If Canal=5 Then Begin
    Sl:=1;
    Bo:=5;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;

  If Canal=6 Then Begin
    Sl:=1;
    Bo:=6;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;

  If Canal=7 Then Begin
    Sl:=1;
    Bo:=7;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;

  If Canal=8 Then Begin
    Sl:=1;
    Bo:=8;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;

  If Canal=9 Then Begin
    Sl:=1;
    Bo:=9;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;

  If Canal=10 Then Begin
    Sl:=1;
    Bo:=10;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;

  If Canal=11 Then Begin
    Sl:=1;
    Bo:=11;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;

  If Canal=12 Then Begin
    Sl:=1;
    Bo:=12;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;

  If Canal=13 Then Begin
    Sl:=1;
    Bo:=13;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;

  If Canal=14 Then Begin
    Sl:=1;
    Bo:=14;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;

  If Canal=15 Then Begin
    Sl:=1;
    Bo:=15;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;

  If Canal=16 Then Begin
    Sl:=1;
    Bo:=16;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;

  If Canal=17 Then Begin
    Sl:=2;
    Bo:=1;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;

  If Canal=18 Then Begin
    Sl:=2;
    Bo:=2;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;

  If Canal=19 Then Begin
    Sl:=2;
    Bo:=3;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;

  If Canal=20 Then Begin
    Sl:=2;
    Bo:=4;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;

  If Canal=21 Then Begin
    Sl:=2;
    Bo:=5;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;

  If Canal=22 Then Begin
    Sl:=2;
    Bo:=6;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;

  If Canal=23 Then Begin
    Sl:=2;
    Bo:=7;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;

  If Canal=24 Then Begin
    Sl:=2;
    Bo:=8;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;

  If Canal=25 Then Begin
    Sl:=2;
    Bo:=9;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;

  If Canal=26 Then Begin
    Sl:=2;
    Bo:=10;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=27 Then Begin
    Sl:=2;
    Bo:=11;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=28 Then Begin
    Sl:=2;
    Bo:=12;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=29 Then Begin
    Sl:=2;
    Bo:=13;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=30 Then Begin
    Sl:=2;
    Bo:=14;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=31 Then Begin
    Sl:=2;
    Bo:=15;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=32 Then Begin
    Sl:=2;
    Bo:=16;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=33 Then Begin
    Sl:=3;
    Bo:=01;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=34 Then Begin
    Sl:=3;
    Bo:=02;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=35 Then Begin
    Sl:=3;
    Bo:=03;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=36 Then Begin
    Sl:=3;
    Bo:=04;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=37 Then Begin
    Sl:=3;
    Bo:=05;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=38 Then Begin
    Sl:=3;
    Bo:=06;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=39 Then Begin
    Sl:=3;
    Bo:=07;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=40 Then Begin
    Sl:=3;
    Bo:=08;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=41 Then Begin
    Sl:=3;
    Bo:=09;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=42 Then Begin
    Sl:=3;
    Bo:=10;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=43 Then Begin
    Sl:=3;
    Bo:=11;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=44 Then Begin
    Sl:=3;
    Bo:=12;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=45 Then Begin
    Sl:=3;
    Bo:=13;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=46 Then Begin
    Sl:=3;
    Bo:=14;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=47 Then Begin
    Sl:=3;
    Bo:=15;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=48 Then Begin
    Sl:=3;
    Bo:=16;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=49 Then Begin
    Sl:=4;
    Bo:=01;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=50 Then Begin
    Sl:=4;
    Bo:=02;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=51 Then Begin
    Sl:=4;
    Bo:=03;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=52 Then Begin
    Sl:=4;
    Bo:=04;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=53 Then Begin
    Sl:=4;
    Bo:=05;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=54 Then Begin
    Sl:=4;
    Bo:=06;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=55 Then Begin
    Sl:=4;
    Bo:=07;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=56 Then Begin
    Sl:=4;
    Bo:=08;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=57 Then Begin
    Sl:=4;
    Bo:=09;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=58 Then Begin
    Sl:=4;
    Bo:=10;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=59 Then Begin
    Sl:=4;
    Bo:=11;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=60 Then Begin
    Sl:=4;
    Bo:=12;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=61 Then Begin
    Sl:=4;
    Bo:=13;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=62 Then Begin
    Sl:=4;
    Bo:=14;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=63 Then Begin
    Sl:=4;
    Bo:=15;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;


  If Canal=64 Then Begin
    Sl:=4;
    Bo:=16;
    Bi:=1;
    REPEAT
      St:=St+GereHexaBICO_Cesna(Sl, Bo, Bi)+',';
      Inc(Bi);
    UNTIL Bi>4;
    Goto FIM;
  End;

FIM:

  If St<>'' Then
    Delete(St, Length(St), 1);
  Result:=St;

END;


FUNCTION StrChr2Bin( St : String ) : String;
VAR
  C      : Longint;
  Value  : Longint;
  Res    : String;

BEGIN

  Result:='';
  If Length(St)=0 Then Exit;

  Res:='';

  C:=1;
  REPEAT
    Res:=Res+FillLeft(3,Ord(St[C]));

    Inc(C);
  UNTIL C>Length(St);

  Result:=Res;

END;


FUNCTION StrBin2Chr( St : String ) : String;
VAR
  C      : Longint;
  Value  : String;
  Res    : String;

BEGIN

  Result:='';
  If Length(St)=0 Then Exit;

  Res:='';

  REPEAT
    Value:=Copy(St,1,3);
    Delete(St,1,3);

    Res:=Res+Chr(Str2Num(Value));
  UNTIL St='';

  Result:=Res;

END;


(* Ex indica funcao que trata alfabeto como letra e nao numero *)
FUNCTION StrChr2Bin_Faster( St : String ) : String;
VAR
  C      : Longint;
  Value  : Longint;
  Res    : String;

BEGIN

  Result:='';
  If Length(St)=0 Then Exit;

  Res:='';

  C:=1;
  REPEAT

    If ((Ord(St[C])>=65) AND (Ord(St[C])<=90)) OR ((Ord(St[C])>=97) AND (Ord(St[C])<=122)) Then
      Res:=Res+St[C]
    Else
      Res:=Res+FillLeft(3,Ord(St[C]));

    Inc(C);
  UNTIL C>Length(St);

  Result:=Res;

END;


FUNCTION StrBin2Chr_Faster( St : String ) : String;
VAR
  C      : Longint;
  Value  : String;
  Res    : String;

BEGIN

  Result:='';
  If Length(St)=0 Then Exit;

  Res:='';

  REPEAT

    If Is_Number(Copy(St,1,1)) Then Begin
      Value:=Cut(St,1,3);
      Res:=Res+Chr(Str2Num(Value));
    End Else Begin
      Value:=Cut(St,1,1);
      Res:=Res+Value;
    End;

  UNTIL St='';

  Result:=Res;

END;


FUNCTION EncriptString_LicencaKEY ( Arq : TStringList; VAR Criptografado : TStringList; TamanhoPadraoLinha : Word ) : Boolean;
VAR
  C, N1, N2, Soma, I                 : Longint;
  St, L, Chr                         : String;

LABEL FIM;
BEGIN

  Result:=FALSE;
  Criptografado.Clear;


  If Arq.Count<=0 Then Goto FIM;


  Randomize;

  C:=0;
  REPEAT

    N1:=Random(8)+1;
    N2:=Random(99)+1;
    Soma:=N1+N2+Random(500);
    (* Soma é o valor que devo somar a cada 3 bytes de binário *)

    L:=GereNumerosAleatorios(9);       // * 9 Numeros aleatorios
    L:=L+FillLeft(3,Soma);             // * 3 numeros indicando o valor a ser somado nos ords de 3 em 3 bytes

    L:=L+InttoStr(N1);  // Salto de caracteres a toa  // * Salto inicial de caracteres a toa
    L:=L+GereNumerosAleatorios(N1);     // * Posicao onde comeca, a partir deste caractere, o conteudo do arquivo

    St:=StrChr2Bin(Arq.Strings[C]);

    If Length(St)>9999 then Begin
      SayInfo('Tamanho de linha inválido para criptografia');
      Goto FIM;
    End;

    L:=L+Fillleft(4,Length(St));         // * Length total da linha.

    If St<>'' Then Begin
      REPEAT
        Chr:=Cut(St,1,3);
        L:=L+FillLeft(3,Str2Num(Chr)+Soma);
      UNTIL St='';
      L:=L+GereNumerosAleatorios(N1);
    End;

    If TamanhoPadraoLinha>0 Then
      If Length(L)<TamanhoPadraoLinha Then
        L:=L+GereNumerosAleatorios(TamanhoPadraoLinha-Length(L));

    Criptografado.Add(L);

    Inc(C);
  UNTIL C>=Arq.Count;

  Result:=TRUE;

FIM:


END;



FUNCTION DecriptString_LicencaKEY ( Arq : TStringList; VAR Descriptografado : TStringList ) : Boolean;
VAR
  C, N1, N2, Soma, I, Salto, Tamanho          : Longint;
  St, L, Chr                                  : String;

LABEL FIM, NEXT;
BEGIN

  Result:=FALSE;
  Descriptografado.Clear;

  If Arq.Count<=0 Then Goto FIM;


  C:=0;
  REPEAT

    L:=Arq.Strings[C];
    St:=L;
    If L='' Then Goto NEXT;

    Delete(L,1,9);  // 9 aleatorios
    Soma:=Str2Num(Cut(L,1,3));  // valor de Soma

    Salto:=Str2Num(Cut(L,1,1));
    Delete(L,1,Salto);

    Tamanho:=Str2Num(Cut(L,1,4));

    St:=Copy(L,1,Tamanho);

    If St<>'' Then Begin

      L:='';
      REPEAT
        Chr:=Cut(St,1,3);
        L:=L+FillLeft(3,Str2Num(Chr)-Soma);
      UNTIL St='';

      St:=L;
      L:=StrBin2Chr(St);
    End;

    NEXT:

    Descriptografado.Add(L);

    Inc(C);
  UNTIL C>=Arq.Count;

  Result:=TRUE;

FIM:


END;




FUNCTION GereIDUnico14 ( Data, HoraComSegundos : String ) : String;
VAR
  St     : String;
BEGIN

  St:=Float2Str(Abs(GetTickCount));

  If Length(St)>5 Then
    St:=Copy(St,Length(St)-5,5);

  St:=FillLeftFloat(9,DateTimeToSeconds(Data,HoraComSegundos))+St;

  Delay(1);
  
  Result:=St;

END;


function BlasterFileCopy(source,dest: String): Boolean;
{copia um arquivo de um lugar para outro. Retornando falso em caso de erro
 Se o destino existir, sobrepoe }
var
  fSrc,fDst,len: Integer;
  size: Longint;
  buffer: packed array [0..2047] of Byte;
begin

  Result := False;

  If FileExists(Dest) then
    SysUtils.DeleteFile(Dest);

  if source <> dest then
     begin
     fSrc := FileOpen(source,fmShareDenyNone);
     if fSrc >= 0 then
        begin
        size := FileSeek(fSrc,0,2);
        FileSeek(fSrc,0,0);
        fDst := FileCreate(dest);
        if fDst >= 0 then
           begin
           while size > 0 do
                 begin
                 len := FileRead(fSrc,buffer,sizeof(buffer));
                 FileWrite(fDst,buffer,len);
                 size := size - len;
                 end;
           FileSetDate(fDst,FileGetDate(fSrc));
           FileClose(fDst);
           FileSetAttr(dest,FileGetAttr(source));
           Result := True;
           end;
{        else
           begin
           Result := False;
           end;}
        FileClose(fSrc);
        end;
     end;
end;


FUNCTION FormatTelefone( DDDPadrao : Longint; Tel : String ) : String;
VAR
  St                               : String;

BEGIN

  Result:='';

  St:=OnlyNumbersOnString(Tel);

  If Length(Tel)>10 Then
    Tel:=Copy(Tel,1,10);

  If Length(Tel)<8 then Exit;

  If Length(Tel)=8 Then Begin
    Result:='('+FillLeft(2,DDDPadrao)+') '+Copy(Tel,1,4)+'-'+Copy(Tel,5,4);
    Exit;
  End;

  If Length(Tel)=9 Then
    Tel:='0'+Tel;

  Result:='('+Copy(Tel,1,2)+') '+Copy(Tel,3,4)+'-'+Copy(Tel,7,4);

END;


function TeclaEstaPressionada(const Key: integer): boolean;          // ex. VK_SHIFT
begin
  Result := GetKeyState(Key) and 128 > 0;
end;


FUNCTION BooleanToChar( BoolVar : Boolean ) : String;
BEGIN
  If BoolVar Then
    REsult:='T'
  Else
    Result:='F';
END;

FUNCTION CharToBoolean( St : String ) : Boolean;
BEGIN

  St:=St+'F';

  If UpperKey(St[1])='T'  Then
    Result:=True
  Else
    Result:=False;
END;


PROCEDURE JunteTStringLists ( Adicionar_Esta, NoFinal_Desta : TStringList );
VAR
  C       : Longint;
BEGIN

  If Adicionar_Esta.Count<=0 Then Exit;

  C:=0;
  REPEAT
    NoFinal_Desta.Add(Adicionar_Esta.Strings[C]);
    Inc(C);
  UNTIL C>=Adicionar_Esta.Count;

END;


(* Retorna quantas letras são iguais nas variáveis passadas como parâmetro *)
FUNCTION QdeLetrasIguais ( CompararEsta : String; ComEsta : String ) : Longint;
VAR
  C, Qde, P      : Longint;
BEGIN

  Result:=0;
  Qde:=0;

  If (Length(CompararEsta)=0) Or (Length(ComEsta)=0) Then
    Exit;

  C:=1;
  REPEAT

    P:=Pos(CompararEsta[C], ComEsta);

    If P>0 Then Begin
      Inc(Qde);
      Delete(ComEsta,P,1);
    End;

    Inc(C);
  UNTIL (C>Length(CompararEsta));

  Result:=Qde;

END;

FUNCTION ApliqueMascaraNumero( Mascara : String; Numero : String ) : String;
var
  C, I           : Longint;
  NumeroOriginal : String;
LABEL NEXT;
begin

  NumeroOriginal:=Numero;

  Numero:=OnlyNumbersOnString(Numero);

  If (Trim(Mascara) <> '') And (Trim(Numero) <> '') Then Begin

    C:=1;
    I:=1;
    REPEAT

      If I>Length(Numero) Then Begin
        Delete(Mascara,C,Length(Mascara));
        If Length(Mascara)>0 Then
          If NOT Num(Mascara[Length(Mascara)]) Then
            Delete(mascara, Length(Mascara), 1);
        C:=Length(Mascara);
        GOTO NEXT;
      End;

      If NUM(Mascara[C]) Then Begin
        Mascara[C]:=Numero[I];
        Inc(I);
      End;

      NEXT:
      Inc(C);
    UNTIL C>Length(Mascara);

    ApliqueMascaraNumero:=Mascara;

  End Else
    ApliqueMascaraNumero:=NumeroOriginal;

end;




FUNCTION SetFileAttributes ( FileName : String; ReadOnly, System, Hidden : Boolean ) : Boolean;
VAR
  Attributes, NewAttributes: Word;

BEGIN
{$I-}

  Result:=FALSE;

  If Not FileExists(FileName) Then Exit;

  Attributes := FileGetAttr(FileName);	{ read file attributes }

  NewAttributes := Attributes;	{ start with original attributes }

  if ReadOnly then NewAttributes := NewAttributes or faReadOnly    else NewAttributes := NewAttributes and not faReadOnly;
  if System then NewAttributes := NewAttributes or faSysFile
    else NewAttributes := NewAttributes and not faSysFile;
  if Hidden then NewAttributes := NewAttributes or faHidden    else NewAttributes := NewAttributes and not faHidden;
  if NewAttributes <> Attributes then Begin	{ if anything changed... }    Try      FileSetAttr(FileName, NewAttributes);	{ ...write the new values }    Except      Exit;    End;  End;
  Result:=TRUE;

END;


FUNCTION ReadFileAttributes ( FileName : String; VAR ReadOnly, System, Hidden : Boolean ) : Boolean;
VAR
  Attributes, NewAttributes: Word;

BEGIN
{$I-}

  Result:=FALSE;

  If Not FileExists(FileName) Then Exit;

  Try
    Attributes := FileGetAttr(FileName);	{ read file attributes }
  Except
    Exit;
  End;

  ReadOnly:=(Attributes and faReadOnly) = faReadOnly;
  System:=(Attributes and faSysFile) = faSysFile;
  Hidden:=(Attributes and faHidden) = faHidden;

  Result:=TRUE;

END;


(* Decrementa quantos meses for passado como parametro na data *)
FUNCTION DEC_MONTHS( Data : Longint; Months : Longint ) : Longint;
VAR
  Mes    : Longint;
  Ano    : Longint;
BEGIN

  Mes:=Str2Num(Copy(Int2Date(Data),4,2));
  Ano:=Str2Num(Copy(Int2Date(Data),7,4));

  Mes:=Mes-Months;

  If Mes<1 Then Begin
    REPEAT
      If Mes<1 Then Begin
        Dec(Ano);
        Mes:=12-(-1*Mes);
      End;
    UNTIL Mes>=1;
  End;

  Result:=Date2Int(Copy(Int2Date(Data),1,2)+'/'+FillLeft(2,Mes)+'/'+FillLeft(4,Ano));

END;



{ Possíveis retornos da função BACKUPFILE:
   0. Sucesso
   1. Arquivo de origem inexistente
   2. Pasta destino igual à pasta de origem
   3. Pasta de destino não existe
   4. Não foi possível abrir o arquivo de origem
   5. Arquivo de origem está sendo utilizado em outro processo
   6. Erro na criação do arquivo de destino
   7. Erro ao tentar posicionar no final do arquivo de destino
   8. Erro ao tentar posicionar o arquivo de origem no FileSize do arquivo de destino
   9. Arquivo de destino está sendo utilizado em outro processo
  10. Erro na leitura do arquivo de origem
  11. Erro na gravação do arquivo de destino
  12. CRC não confere
}
function BackupIncrementalFile ( ArquivoOrigem : String; PastaDestino : String; BarraProgresso : TGauge ) : Word;
var
  FromF, ToF                          : file of Byte;
  NumRead, NumWritten                 : Integer;
  Buf                                 : array[1..2048] of Char;

  FromSize, ToSize                    : Currency;
  ArquivoDestino                      : String;
  PAU                                 : Boolean;
  CRC                                 : TPSPCRC;

  CRCOrigem, CRCDestino, C            : Longint;

LABEL FIM, SUCESSO;
begin
{$I-}

  CRC:=TPSPCRC.Create(NIL);

  PastaDestino:=FORMATPATH(PastaDestino);

  ArquivoDestino:=PastaDestino+ExtractFileName(ArquivoOrigem);

  If Not FileExists(ArquivoOrigem) Then Begin
    RESULT:=1;
    Goto FIM;
  End;

  (* Cálculo do CRC do arquivo de origem *)
  CRC.Filename:=ArquivoOrigem;
  CRC.CalculateCRC;
  CRCOrigem:=CRC.CRC32;

  (* Cálculo do CRC do arquivo de destino *)
  CRCDestino:=0;
  If FileExists(ArquivoDestino) Then Begin
    CRC.Filename:=ArquivoDestino;
    CRC.CalculateCRC;
    CRCDestino:=CRC.CRC32;
  End;

  If PastaDestino = ExtractPath(ArquivoOrigem) Then Begin
    RESULT:=2;
    Goto FIM;
  End;

  If Not ExistDir(PastaDestino) Then Begin
    RESULT:=3;
    Goto FIM;
  End;

  If FileFree(ArquivoOrigem) Then Begin
    AssignFile(FromF, ArquivoOrigem);
    Reset(FromF);
    IF IOResult<>0 Then Begin
      RESULT:=4;
      Goto FIM;
    End;
  End Else Begin
    RESULT:=5;
    Goto FIM;
  End;

  FromSize:=GetFileSize(ArquivoOrigem);
  ToSize:=GetFileSize(ArquivoDestino);

  If FromSize=ToSize Then
    If CRCDestino = CRCOrigem Then Begin
      RESULT:=0;
      Goto FIM;
    End Else
      SysUtils.DeleteFile(ArquivoDestino);

  If ToSize>FromSize Then
    SysUtils.DeleteFile(ArquivoDestino);

  If BarraProgresso<>NIL Then
    BarraProgresso.Progress:=0;

  C:=0;
  REPEAT

    Reset(FromF);
    IF IOResult<>0 Then Begin
      RESULT:=4;
      Goto FIM;
    End;

    If FileFree(ArquivoDestino) Then Begin
      AssignFile(ToF, ArquivoDestino);
      Reset(ToF);
      IF IOResult<>0 Then Begin
        Rewrite(ToF);
        If IOResult<>0 Then Begin
          RESULT:=6;
          Goto FIM;
        End;
      End Else Begin
        Seek(ToF, FileSize(ToF));
        IF IOResult<>0 Then Begin
          RESULT:=7;
          Goto FIM;
        End;

        Seek(FromF, FileSize(ToF));
        IF IOResult<>0 Then Begin
          RESULT:=8;
          Goto FIM;
        End;
      End;
    End Else Begin
      RESULT:=9;
      Goto FIM;
    End;


    REPEAT

      Try
        BlockRead(FromF, Buf, SizeOf(Buf), NumRead);
      Except
        RESULT:=10;
        PAU:=TRUE;
      End;

      If NumRead>0 Then Begin

        If PAU Then
          Goto FIM;

        Try
          BlockWrite(ToF, Buf, NumRead, NumWritten);
        Except
          RESULT:=11;
          PAU:=TRUE;
        End;

        If PAU Then
          Goto FIM;
      End;


      If BarraProgresso<>NIL Then
        BarraProgresso.Progress:=FilePos(FromF)*100 DIV FileSize(FromF);
    UNTIL (NumRead = 0) or (NumWritten <> NumRead);


    If Not FileFree(ArquivoDestino) Then Begin
      CloseFile(ToF);
      ClearIOResult;

      (* Cálculo do CRC do arquivo de destino *)
      CRC.Filename:=ArquivoDestino;
      CRC.CalculateCRC;
      CRCDestino:=CRC.CRC32;
    End;

    If CRCDestino <> CRCOrigem Then Begin
      RESULT:=12;
      SysUtils.DeleteFile(ArquivoDestino);
    End Else Begin
      RESULT:=0;
      Goto FIM;
    End;

    Inc(C);
  UNTIL C>=2;

FIM:

  If BarraProgresso<>NIL Then
    BarraProgresso.Progress:=100;

  CloseFile(FromF);
  ClearIOResult;

  CloseFile(ToF);
  ClearIOResult;

  CRC.Destroy;

end;

FUNCTION  RemoveEspecialChars ( Texto : String ) : String;
BEGIN

  Result:=RemoveChars('''`"~´', Texto);

END;


FUNCTION  ReturnFileCheckSUM ( FileName : String ) : String;
VAR
  Arq                 : TStringList;

LABEL FIM;
BEGIN

  Result:='';

  Arq:=TStringList.Create;

  IF Not ReadFileToStringList(FileName, Arq) Then Exit;

  Result:=ReturnCheckSum(Arq.Text, 1, 2);

FIM:
  Arq.Free;

END;


FUNCTION PeriodoMesFechado ( DataIni, DataFIM : String ) : Boolean;
BEGIN

  Result:=FALSE;

  If Copy(DataIni,1,2)<>'01' Then Exit;

  If UltimoDiaMes(DataINI)=DataFIM Then
    Result:=TRUE;

END;


FUNCTION FormatCMC7 ( CMC7 : String ) : String;
VAR
  CMC7Formatado     : String;

BEGIN

  Result:=CMC7;

  CMC7:=OnlyNumbersOnString(CMC7);

  If Length(CMC7)<>30 Then
    Exit;

  CMC7Formatado:='<'+Cut(CMC7,1,8)+'<'+Cut(CMC7,1,10)+'>'+Cut(CMC7,1,12)+':';
  Result:=CMC7Formatado;

END;


(* Checa se o CMC-7 passado como parâmetro é valido. O parametro por estar ou não formatado que ele checa do mesmo jeito *)
FUNCTION CheckCMC7 ( CMC7 : String ) : Boolean;
VAR
   I                                         : Integer;
   vVal1,vVal2,vVal3,vVal4,vVal5,vSoma,vPeso : Real;
   vCampo,vDv1,vDv2,vDv3, CMC7Formatado      : string;
   vExt1                                     : extended;
   vRetorno                                  : boolean;
Begin

  Result:=FALSE;

  CMC7:=OnlyNumbersOnString(CMC7);

  If Length(CMC7)<>30 Then
    Exit;

  CMC7Formatado:='<'+Cut(CMC7,1,8)+'<'+Cut(CMC7,1,10)+'>'+Cut(CMC7,1,12)+':';
  CMC7:=CMC7Formatado;

  // calculo do digito (2)
  vRetorno:=False;
  vcampo:=copy(CMC7,11,3)+copy(CMC7,14,6)+copy(CMC7,20,1);
  vVal1:=0;
  vSoma:=0;
  For I:=1 To Length(vcampo) do Begin
    If (i div 2 = i/2) Then
      vPeso:=2
    else
      vPeso:=1;

    vVal2:=0;
    If vcampo[I] in ['0'..'9'] Then Begin
      vVal1:=StrToFloat(vcampo[I])*vPeso;
      If (vVal1>9) Then
        vVal2:=StrToFloat(copy(formatFloat('0',vVal1),1,1))+StrToFloat(copy(formatFloat('0',vVal1),length(formatFloat('0',vVal1)),1))
      else
        vVal2:=vVal1;

      vSoma:=vSoma+vVal2;
    end;
  end;

  vVal3:=round((10-(vSoma/10))*100)/100;
  vExt1:=vVal3;
  vVal4:=Int(vExt1);

  vDv2:=copy(formatFloat('0.0',frac(vVal3)),3,1);

  if vDv2=copy(CMC7,9,1) then
    vRetorno:=TRUE;

  // calculo do digito (1)
  If vRetorno Then Begin
    vRetorno:=False;
    vcampo:=copy(CMC7,2,7);
    vVal1:=0;
    vSoma:=0;
    For I:=1 to Length(vcampo) do Begin
      If (i div 2 = i/2) then
        vPeso:=1
      else
        vPeso:=2;

      vVal2:=0;
      if vcampo[I] in ['0'..'9'] then Begin
        vVal1:=StrToFloat(vcampo[I])*vPeso;
        if (vVal1>9) then
          vVal2:=StrToFloat(copy(formatFloat('0',vVal1),1,1))+StrToFloat(copy(formatFloat('0',vVal1),length(formatFloat('0',vVal1)),1))
        else
          vVal2:=vVal1;

        vSoma:=vSoma+vVal2;
      End;
    End;
  End;

  vVal3:=round((10-(vSoma/10))*100)/100;
  vExt1:=vVal3;
  vVal4:=Int(vExt1);

  vDv1:=copy(formatFloat('0.0',frac(vVal3)),3,1);

  if vDv1=copy(CMC7,22,1) then
    vRetorno:=TRUE;

  // calculo do digito (3)
  If vRetorno Then Begin
    vRetorno:=False;
    vcampo:=copy(CMC7,23,10);
    vVal1:=0;
    vSoma:=0;
    for I:=1 to Length(vcampo) do Begin
      if (i div 2 = i/2) then
        vPeso:=2
      else
        vPeso:=1;

      vVal2:=0;
      if vcampo[I] in ['0'..'9'] then Begin
        vVal1:=StrToFloat(vcampo[I])*vPeso;
        if (vVal1>9) then
          vVal2:=StrToFloat(copy(formatFloat('0',vVal1),1,1))+StrToFloat(copy(formatFloat('0',vVal1),length(formatFloat('0',vVal1)),1))
        else
          vVal2:=vVal1;

        vSoma:=vSoma+vVal2;
      End;
    End;
  End;

  vVal3:=round((10-(vSoma/10))*100)/100;
  vExt1:=vVal3;
  vVal4:=Int(vExt1);

  vDv3:=copy(formatFloat('0.0',frac(vVal3)),3,1);

  if vDv3=copy(CMC7,33,1) then
    vRetorno:=TRUE;

  Result:=vRetorno;

end;


FUNCTION ExtractWords(FraseCompleta : String; Var ExtractedWords : TStringList; RetirarConjuncoes : Boolean) : Boolean;
CONST
  Ch = Chr(254);
Var
  BlackList, Field                                 : TStringList;
  Palavra                                          : String;
  QdePalavras, C                                   : Longint;

Begin

  Result:=False;
  ExtractedWords.Clear;

  If Trim(FraseCompleta) = '' Then
    Exit;

  FraseCompleta:=RemovaAcentos(BlasterUpper(FraseCompleta));

  BlackList:=TStringList.Create;
  Field:=TStringList.Create;

  // Palavras que serão desconsideradas ao analisar a frase
  BlackList.Add('');
  If RetirarConjuncoes Then Begin
    BlackList.Add('Q');
    BlackList.Add('W');
    BlackList.Add('E');
    BlackList.Add('R');
    BlackList.Add('T');
    BlackList.Add('Y');
    BlackList.Add('U');
    BlackList.Add('I');
    BlackList.Add('O');
    BlackList.Add('P');
    BlackList.Add('A');
    BlackList.Add('S');
    BlackList.Add('D');
    BlackList.Add('F');
    BlackList.Add('G');
    BlackList.Add('H');
    BlackList.Add('J');
    BlackList.Add('K');
    BlackList.Add('L');
    BlackList.Add('Z');
    BlackList.Add('X');
    BlackList.Add('C');
    BlackList.Add('V');
    BlackList.Add('B');
    BlackList.Add('N');
    BlackList.Add('M');
    BlackList.Add('NO');
    BlackList.Add('EM');
    BlackList.Add('DE');
    BlackList.Add('PARA');
    BlackList.Add('DA');
    BlackList.Add('DO');
    BlackList.Add('NA');
    BlackList.Add('UMA');
    BlackList.Add('UMAS');
    BlackList.Add('UM');
    BlackList.Add('UNS');
    BlackList.Add('QUE');
    BlackList.Add('FOI');
    BlackList.Add('PELA');
    BlackList.Add('PELO');
    BlackList.Add('SEU');
    BlackList.Add('SUA');
    BlackList.Add('POR');
    BlackList.Add('MAS');
    BlackList.Add('AS');
    BlackList.Add('OS');
    BlackList.Add('NAS');
    BlackList.Add('NOS');
    BlackList.Add('TEM');
    BlackList.Add('AO');
    BlackList.Add('ATE');
  End;
  // FIM Palavras que serão desconsideradas ao analisar a frase

  Insert(Ch, FraseCompleta, 1);
  Insert(Ch, FraseCompleta, Length(FraseCompleta)+1);
  Substitua(FraseCompleta, ' ', Ch+Ch);

  QdePalavras:=QDE_TXTFILE_FIELD(Ch, FraseCompleta);

  READ_TXTFILE_FIELDS(Ch, FraseCompleta, Field);

  C:=0;
  REPEAT

    Palavra:=Field.Strings[C];

    Palavra:=RemoveChars('"!@#$%¨&*()="+´[~],.;/`{^}<>:?|\-_|', Palavra); // -_

    If (BlackList.IndexOf(Palavra) < 0) AND (Length(Palavra)>0) Then // Não encontrei a palavra na LISTA NEGRA!
      ExtractedWords.Add(Palavra);

    Inc(C);
  UNTIL C >= QdePalavras;

  If ExtractedWords.Count > 0 Then
    Result:=True;

  BlackList.Free;
  Field.Free;

End;


PROCEDURE TrunqueTStringList ( VAR Variavel : TStringList; NumeroMaximoDeLinhas : Longint );
BEGIN

  If NumeroMaximoDeLinhas<=0 then
    Exit;

  REPEAT
    If Variavel.Count>NumeroMaximoDeLinhas Then
      Variavel.Delete(Variavel.Count-1);
  UNTIL Variavel.Count<=NumeroMaximoDeLinhas;

END;



PROCEDURE RemovaLinhasEmBranco_TStringList ( VAR Variavel : TStringList );
VAR
  C       : Longint;
BEGIN

  C:=0;
  REPEAT

    If Variavel.Strings[C]='' Then
      Variavel.Delete(C);

    Inc(C);
  UNTIL C>=Variavel.Count;

END;


PROCEDURE AddLinesToStringList ( VAR Destino : TStringList; Texto : String; TamanhoMaximo_Linha : Longint );
BEGIN

  If TamanhoMaximo_Linha<=0 then
    TamanhoMaximo_Linha:=1;

  REPEAT
    Destino.Add(AlLeftString(Cut(Texto,1, TamanhoMaximo_Linha),TamanhoMaximo_Linha));
  UNTIL Texto='';

END;


FUNCTION MakeFullDir(Caminho : String) : Boolean;
Var
  Lista                   : TStringList;
  C                       : Longint;
  Completo                : String;
  CaminhoDeRede           : Boolean;

Const
  Ch     = Char(254);

LABEL FIM;
begin

  Result:=FALSE;

  If Trim(Caminho) = '' Then
    Exit;

  Caminho:=FORMATPATH(Caminho);
  If Caminho[Length(Caminho)] = '\' Then
    Delete(Caminho, Length(Caminho), 1);

  CaminhoDeRede:=FALSE;

  If LastPos('\\', Caminho) > 1 Then
    Exit;

  If Pos('\\', Caminho) = 1 Then Begin
    Delete(Caminho, 1, 2);
    CaminhoDeRede:=TRUE;
  End;

  Lista:=TStringList.Create;

  C:=0;
  REPEAT

    If (Qde_Pos(':', Caminho) > 1) Or (Pos(Caminho[C], '/*?"<>|') > 0) Then
      Goto FIM;

    Inc(C);
  UNTIL C >= Length(Caminho);

  Substitua(Caminho, '\', Ch+Ch);

  If CaminhoDeRede Then
    Insert('\\', Caminho, 1);

  Insert(Ch, Caminho, 1);
  Insert(Ch, Caminho, Length(Caminho)+1);

  READ_TXTFILE_FIELDS(Ch, Caminho, Lista);

  Completo:='';
  C:=0;
  REPEAT

    Completo:=Completo+Lista.Strings[C]+'\';

    If (CaminhoDeRede) And (C = 0) Then Begin
      Completo:=Completo+Lista.Strings[1]+'\';
      Inc(C);
    End;

    If Not ExistDir(Completo) Then Begin
      MkDir(Completo);
      If IOResult <> 0 Then Begin
        ClearIOResult;
        Goto FIM;
      End;
    End;

    Inc(C);
  UNTIL C >= Lista.Count;

  Result:=TRUE;

FIM:

  Lista.Free;

end;


(* Renomeia um arquivo colocando um sequencial no final de sua extensão.
  Ex:  AAA.DAT  vai ficar  AAA.DAT_0001
*)
FUNCTION RenameFileSEQ ( FileName : String ) : Boolean;
VAR
  Seq      : Longint;

BEGIN

  Result:=FALSE;

  Seq:=1;
  REPEAT

    If Not FileExists(FileName+'_'+FillLeft(4,SEQ)) Then Begin
      RenameFile(FileName, FileName+'_'+FillLeft(4,SEQ));
      Result:=TRUE;
      Exit;
    End;

    Inc(Seq);
  UNTIL Seq>9999;

END;


function MacAddress: string;
var
  Lib: Cardinal;
  Func: function(GUID: PGUID): Longint; stdcall;
  GUID1, GUID2: TGUID;
begin

  Result := '';
  Lib := LoadLibrary('rpcrt4.dll');
  if Lib <> 0 then
  begin
    @Func := GetProcAddress(Lib, 'UuidCreateSequential');
    if Assigned(Func) then
    begin
      if (Func(@GUID1) = 0) and
         (Func(@GUID2) = 0) and
         (GUID1.D4[2] = GUID2.D4[2]) and
         (GUID1.D4[3] = GUID2.D4[3]) and
         (GUID1.D4[4] = GUID2.D4[4]) and
         (GUID1.D4[5] = GUID2.D4[5]) and
         (GUID1.D4[6] = GUID2.D4[6]) and
         (GUID1.D4[7] = GUID2.D4[7]) then
      begin
        Result :=
          IntToHex(GUID1.D4[2], 2) + '-' +
          IntToHex(GUID1.D4[3], 2) + '-' +
          IntToHex(GUID1.D4[4], 2) + '-' +
          IntToHex(GUID1.D4[5], 2) + '-' +
          IntToHex(GUID1.D4[6], 2) + '-' +
          IntToHex(GUID1.D4[7], 2);
      end;
    end;
  end;
end;



(* Retorna a posição em que o registro foi salvo ou :
  -1 : Erro ao registrar informações
  -2 :
*)
FUNCTION SaveFileToBD ( Identificacao : String; FileToSave : String; BDFile : String ) : Longint;
VAR
  ArqFrom, ArqTo           : File;
  NumRead, NumWritten      : Longint;
  Buf                      : array[1..1024] of char;

  DataToSave               : String;

  PosicaoInicial           : Longint;

CONST
  ChI = Char(254)+Chr(253)+Chr(252);   // Caracter marcador de inicio de novo arquivo/bloco
  ChF = Char(251);                     // Caracter marcador do fim do bloco de identificação e início dos dados

LABEL FIM, NEXT, TRYAGAIN;
BEGIN
{$I-}

  Result:=-1;

  If Not FileExists(FileToSave) Then Begin
    Result:=-2;
    Exit;
  End;


  AssignFile(ArqFrom, FileToSave);
  Reset(ArqFrom,1);
  IF IOResult<>0 Then Begin
    Result:=-4;
    Goto FIM;
  End;

  If FileSize(ArqFrom)=0 Then Begin
    Result:=-13;
    Goto FIM;
  End;


  AssigNFile(ArqTo, BDFile);
  Reset(ArqTo,1);
  IF IOResult<>0 Then Begin
    Rewrite(ArqTo,1);
    IF IOResult<>0 Then Begin
      Result:=-5;
      Goto FIM;
    End;
  End Else Begin
    Seek(ArqTo, FileSize(ArqTo));
    IF IOResult<>0 Then Begin
      Result:=-6;
      Goto FIM;
    End;
  End;


  PosicaoInicial:=FilePos(ArqTo);


  Identificacao:=ChI+Identificacao+ChF;

  String2Char0(Identificacao, Buf);

  BlockWrite(ArqTo, Buf, Length(Identificacao), NumWritten);
  IF NumWritten<>Length(Identificacao) Then Begin
    Result:=-7;
    Goto FIM;
  End;


  REPEAT

    BlockRead(ArqFrom, Buf, SizeOf(Buf), NumRead);
    If NumRead>0 Then Begin
      BlockWrite(ArqTo, Buf, NumRead, NumWritten);
      IF NumWritten<>NumRead Then Begin
        Result:=-8;
        Goto FIM;
      End;
    End;

    Application.ProcessMessages;
  UNTIL (NumRead=0);

  Result:=PosicaoInicial;


FIM:

  CloseFile(ARQFrom);
  ClearIOresult;

  CloseFile(ARQTo);
  ClearIOresult;


END;



(* Retorna a posição em que o registro foi salvo ou :
   0 : FileSize do arquivo criado em disco
  -1 : Erro ao registrar informações
  -2 :
*)
FUNCTION SaveBDToFile ( Posicao : Longint; VAR Identificacao : String; BDFile : String; FileToSave : String ) : Longint;
VAR
  ArqFrom, ArqTo           : File;
  NumRead, NumWritten      : Longint;
  Buf                      : array[1..1024] of char;

  DataToSave               : String;

  PosicaoInicial           : Longint;

  EndOfFile                : Boolean;

CONST
  ChI = Char(254)+Chr(253)+Chr(252);   // Caracter marcador de inicio de novo arquivo/bloco
  ChF = Char(251);                     // Caracter marcador do fim do bloco de identificação e início dos dados

LABEL FIM, NEXT, TRYAGAIN;
BEGIN
{$I-}

  Result:=-1;

  Identificacao:='';


  If Not FileExists(FileToSave) Then
    SysUtils.DeleteFile(FileToSave);

  If Not FileExists(BDFile) Then Begin
    Result:=-3;
    Exit;
  End;


  AssignFile(ArqFrom, BDFile);
  Reset(ArqFrom,1);
  IF IOResult<>0 Then Begin
    Result:=-4;
    Goto FIM;
  End;

  If FileSize(ArqFrom)=0 Then Begin
    Result:=-13;
    Goto FIM;
  End;

  Seek(ArqFrom, Posicao);
  If IOResult<>0 Then Begin
    Result:=-2;
    Goto FIM;
  End;

  AssigNFile(ArqTo, FileToSave);
  Rewrite(ArqTo,1);
  IF IOResult<>0 Then Begin
    Result:=-5;
    Goto FIM;
  End;


  (* Pegando a identificação do arquivo *)
  BlockRead(ArqFrom, Buf, SizeOf(Buf), NumRead);
  If NumRead<=0 Then Begin
    Result:=-6;
    Goto FIM;
  End;

  If Pos(chI, Buf)<>1 Then Begin
    Result:=-7;
    Goto FIM;
  End;

  If Pos(chF, Buf)=0 Then Begin             
    Result:=-8;
    Goto FIM;
  End;

  Identificacao:=Char2String(Buf, SizeOf(Buf));
  Delete(Identificacao,1,Length(chI)-1);
  Delete(Identificacao, Pos(chF, Identificacao), Length(Identificacao));



  Seek(ArqFrom, Posicao+Length(Identificacao)+Length(ChI)+Length(ChF));
  IF IOResult<>0 Then Begin
    Result:=-9;
    Goto FIM;
  End;


  EndOfFile:=FALSE;
  REPEAT

    BlockRead(ArqFrom, Buf, SizeOf(Buf), NumRead);
    If NumRead>0 Then Begin

      If Pos(chI, Buf)>0 Then Begin
        NumRead:=(Pos(chI, Buf)-1)+Length(ChI);
        EndOfFile:=TRUE;
      End;

      If NumRead=Length(ChI) Then Begin
        NumRead:=NumRead+Length(ChI);
        EndOfFile:=TRUE;
      End;

      BlockWrite(ArqTo, Buf, NumRead-Length(ChI), NumWritten);

      IF NumWritten<>(NumRead-Length(ChI)) Then Begin
        Result:=-10;
        Goto FIM;
      End;

      Seek(ArqFrom, FilePos(ArqFrom)-Length(ChI));
      IF IOResult<>0 Then Begin
        Result:=-11;
        Goto FIM;
      End;

    End;

    Application.ProcessMessages;
  UNTIL (NumRead=0) or (EndOfFile);


  Result:=FileSize(ArqTo);


FIM:

  CloseFile(ARQFrom);
  ClearIOresult;

  If FileSize(ArqTo)=0 Then Begin
    CloseFile(ARQTo);
    ClearIOresult;
    SysUtils.DeleteFile(FileToSave);
  End;
  CloseFile(ARQTo);
  ClearIOresult;


END;





(* Retorna a posição em que o registro foi salvo ou :
   0 : FileSize do arquivo criado em disco
  -1 : Erro ao registrar informações
  -2 :
*)
FUNCTION ReadBDIdenificacao ( BDFile : String; VAR Identificacoes : TStringList ) : Boolean;
VAR
  ArqFrom                  : File;
  NumRead, NumWritten      : Longint;
  Buf                      : array[1..1024] of char;

  St, ID                   : String;

  PosicaoInicial           : Longint;

  fPos                     : Longint;

CONST
  ChI = Char(254)+Chr(253)+Chr(252);   // Caracter marcador de inicio de novo arquivo/bloco
  ChF = Char(251);                     // Caracter marcador do fim do bloco de identificação e início dos dados

LABEL FIM, NEXT, TRYAGAIN;
BEGIN
{$I-}

  Result:=FALSE;

  Identificacoes.Clear;

  If Not FileExists(BDFile) Then
    Exit;


  AssignFile(ArqFrom, BDFile);
  Reset(ArqFrom,1);
  IF IOResult<>0 Then
    Goto FIM;

  If FileSize(ArqFrom)=0 Then
    Goto FIM;



  REPEAT


    BlockRead(ArqFrom, Buf, SizeOf(Buf), NumRead);
    If NumRead>0 Then Begin

      St:=Char2String(Buf, NumRead);

      If Pos(ChI, St)<>0 Then Begin
        fPos:=FilePos(ArqFrom)-NumRead+Pos(ChI, St);

        Seek(ArqFrom, fPos);
        IF IOResult<>0 Then
          Goto FIM;

        St:='';
        REPEAT
          BlockRead(ArqFrom, Buf, 1, NumRead);
          If Numread=1 Then
            St:=St+Buf[1];
        UNTIL (EOF(ArqFrom) or (Buf[1]=ChF)) Or (NumRead=0);

        St:=RemoveAll(ChI, St);
        St:=RemoveAll(ChF, St);

        Identificacoes.Add(St+Chr(254)+InttoStr(fPos));

      End;

    End;

    Application.ProcessMessages;
  UNTIL (NumRead=0) or (Eof(ArqFrom));

  Result:=TRUE;


FIM:

  CloseFile(ARQFrom);
  ClearIOresult;


END;


FUNCTION ConvertFile2ASCII ( FileNameOrigem : String; FileNameDestino : String ) : Boolean;
VAR
  Arq                      : File;
  ArqTo                    : TextFile;

  NumRead                  : Integer;
  Buf                      : array[1..1024] of Char;

  DataToSend               : String;

LABEL FIM;
BEGIN
{$I-}

  Result:=FALSE;

  AssignFile(Arq, FileNameOrigem);
  Reset(Arq,1);
  IF IOResult<>0 Then Goto FIM;

  AssignFile(ArqTo, FileNameDestino);
  Rewrite(ArqTo);
  IF IOResult<>0 Then Goto FIM;


  REPEAT

    BlockRead(Arq, Buf, SizeOf(Buf), NumRead);
    IF IOResult<>0 Then
      Goto FIM;

    If NumRead>0 Then Begin
      DataToSend:=Copy(Buf,1,NumRead);
      DataToSend:=StrChr2Bin(DataToSend);
      WriteLn(ArqTo, DataToSend);
      IF IOResult<>0 Then Goto FIM;
    End;

    Application.ProcessMessages;
  UNTIL (EOF(Arq)) Or (NumRead=0);

  Result:=TRUE;

FIM:

  CloseFile(ARQTO);
  ClearIOResult;

  CloseFile(ARQ);
  ClearIOResult;

END;



FUNCTION ConvertASCII2File ( FileNameOrigem : String; FileNameDestino : String ) : Boolean;
VAR
  Arq                      : TextFile;
  ArqTo                    : File;

  NumWritten               : Integer;
  Buf                      : Char;

  DataToSend, DadosCHR     : String;

LABEL FIM;
BEGIN
{$I-}

  Result:=FALSE;

  AssignFile(Arq, FileNameOrigem);
  Reset(Arq);
  IF IOResult<>0 Then Goto FIM;

  AssignFile(ArqTo, FileNameDestino);
  Rewrite(ArqTo,1);
  IF IOResult<>0 Then Goto FIM;


  REPEAT

    Readln(Arq, DataToSend);
    IF IOResult<>0 Then
      Goto FIM;

    DadosCHR:=StrBin2Chr(DataToSend);


    If DadosCHR<>'' Then Begin

      REPEAT

        Buf:=DadosCHR[1];
        Delete(DadosCHR,1,1);

        BlockWrite(ArqTo, Buf, 1, NumWritten);
        IF IOResult<>0 Then Goto FIM;
        If NumWritten=0 Then Goto FIM;

      UNTIL DadosCHR='';

    End;


    Application.ProcessMessages;
  UNTIL (EOF(Arq));

  Result:=TRUE;


FIM:

  CloseFile(ARQTO);
  ClearIOResult;

  CloseFile(ARQ);
  ClearIOResult;

END;


PROCEDURE apm;  // Application.ProcessMessages
BEGIN
  Application.ProcessMessages;
END;


PROCEDURE SETFIELDSMAX ( VAR Lista : tStringList; QuantidadeMaxima : Longint );
BEGIN

  If Lista.Count>QuantidadeMaxima Then Exit;

  REPEAT
    Lista.Add('');
  UNTIL Lista.Count>=QuantidadeMAxima;

END;


FUNCTION rFID_FormatCartao ( Cartao : String ) : Currency;
VAR
  C                         : Longint;
  Numero, St                : String;
  R                         : Currency;
BEGIN

  Result:=0;
  Numero:='';

  C:=1;
  REPEAT

    If Not Num(Cartao[C]) Then
      Numero:=Numero+IntToStr(Ord(Cartao[C]))
    Else
      Numero:=Numero+Cartao[C];

    Inc(C);
  UNTIL C>=Length(Cartao);

  Numero:=Numero+InttoStr(Abs(ReturnSerial(Numero)));

  St:=Numero;
  Numero:='';
  C:=1;
  REPEAT

    Numero:=Numero+InttoStr(Str2Num(Copy(St,C,1))*C);

    Inc(C);
  UNTIL C>=Length(Cartao);

  St:=InvertString(Numero);

  R:=0;
  REPEAT
    R:=R+Str2Float(Cut(St,1,12));
    If (Length(St)<12) AND (Length(St)>0) Then
      St:=St+Replicate('0', 12-Length(st));
  UNTIL St='';

  Result:=Abs(R);


END;


(* Retorna todos os arquivos existentes na mascara passada como parametro - opcao de fazer a leitura de todos os paths abaixo do dir passado como parametro.
   Retorna FULLPATH do arquivo
*)
FUNCTION bFillDirRecursive ( Const AMask: string; VAR Resultado : TStringList; Recursive : Boolean; VAR LabelInfo : TLabel ) : Boolean;
VAR
  Arquivos, Pastas                  : TStringList;
  C                                 : Longint;
  Mascara, Dir                      : String;

LABEL FIM;
BEGIN

  (* ATENCAO - RECURSIVE NÃO pode limpar a variavel de retorno RESULTADO senão para de ser recursivo !!!! *)


  Arquivos:=TStringList.Create;
  Pastas:=TStringList.Create;

  If LabelInfo<>NIL Then Begin
    LabelInfo.Caption:=AMask;
    LabelInfo.Repaint;
  End;


  bFillDir(aMask, Arquivos);


  Dir:=AMask;
  Mascara:=Copy(aMask, LastPos('\', aMask)+1, Length(aMask));

  Delete(Dir, LastPos('\', Dir)+1, Length(Dir));
  Dir:=FormatPath(Dir);


  If Arquivos.Count>0 Then Begin
    C:=0;
    REPEAT

      If Pos('.', Arquivos.Strings[C])=0 then Begin  // Retirando pastas

        If ExistDir(Dir+Arquivos.Strings[C]) Then Begin
          Arquivos.Delete(C);
          Dec(C);
        End Else Begin
          Arquivos.Strings[C]:=Dir+Arquivos.Strings[C];
        End;

      End Else Begin

        Arquivos.Strings[C]:=Dir+Arquivos.Strings[C];

      End;

      Inc(C);
    UNTIL C>=Arquivos.Count;
  End;



  If Recursive Then Begin

    If ReturnDirList( Dir, TRUE, TRUE, Pastas) Then Begin

      C:=0;
      REPEAT

        Dir:=Pastas.Strings[C];
        Dir:=FormatPath(Dir)+Mascara;
        bFillDirRecursive ( Dir, Arquivos, TRUE, LabelInfo );

        Inc(C);
      UNTIL C>=Pastas.Count;

    End;

  End;


  JunteTStringLists(Arquivos, Resultado);


  Result:=TRUE;


FIM:
  Arquivos.Free;
  Pastas.Free;

END;



(* Retorna todos os arquivos existentes na mascara passada como parametro - opcao de fazer a leitura de todos os paths abaixo do dir passado como parametro.
   Retorna separados por ";" (separação simples como CSV)
   0. FULLPATH do arquivo
   1. Tamanho do arquivo
   2. Data do arquivo
   3. Hora do arquivo
*)
FUNCTION bFillDirRecursiveDetalhado ( Const AMask: string; VAR Resultado : TStringList; Recursive : Boolean; VAR LabelInfo : TLabel ) : Boolean;
VAR
  Arquivos, Pastas                  : TStringList;
  C                                 : Longint;
  Mascara, Dir, St                  : String;

LABEL FIM;
BEGIN

  (* ATENCAO - RECURSIVE NÃO pode limpar a variavel de retorno RESULTADO senão para de ser recursivo !!!! *)

  Arquivos:=TStringList.Create;
  Pastas:=TStringList.Create;

  If LabelInfo<>NIL Then Begin
    LabelInfo.Caption:=AMask;
    LabelInfo.Repaint;
  End;


  bFillDir(aMask, Arquivos);


  Dir:=AMask;
  Mascara:=Copy(aMask, LastPos('\', aMask)+1, Length(aMask));

  Delete(Dir, LastPos('\', Dir)+1, Length(Dir));
  Dir:=FormatPath(Dir);


  If Arquivos.Count>0 Then Begin

    C:=0;
    REPEAT

      If Pos('.', Arquivos.Strings[C])=0 then Begin  // Retirando pastas

        If ExistDir(Dir+Arquivos.Strings[C]) Then Begin

          Arquivos.Delete(C);
          Dec(C);

        End Else Begin

          St:=Dir+Arquivos.Strings[C];
          St:=St+';'+Float2Str(GetfileSize(Dir+Arquivos.Strings[C]))+';'+ReturnFileDate(Dir+Arquivos.Strings[C])+';'+ReturnFileTime(Dir+Arquivos.Strings[C]);
          Arquivos.Strings[C]:=St;

        End;

      End Else Begin

        St:=Dir+Arquivos.Strings[C];
        St:=St+';'+Float2Str(GetfileSize(Dir+Arquivos.Strings[C]))+';'+ReturnFileDate(Dir+Arquivos.Strings[C])+';'+ReturnFileTime(Dir+Arquivos.Strings[C]);
        Arquivos.Strings[C]:=St;

      End;

      Inc(C);
    UNTIL C>=Arquivos.Count;
  End;



  If Recursive Then Begin

    If ReturnDirList( Dir, TRUE, TRUE, Pastas) Then Begin

      C:=0;
      REPEAT

        Dir:=Pastas.Strings[C];
        Dir:=FormatPath(Dir)+Mascara;
        bFillDirRecursiveDetalhado ( Dir, Arquivos, TRUE, LabelInfo );

        Inc(C);
      UNTIL C>=Pastas.Count;

    End;

  End;


  JunteTStringLists(Arquivos, Resultado);


  Result:=TRUE;


FIM:
  Arquivos.Free;
  Pastas.Free;

END;



(* Retorna todos os arquivos existentes na mascara passada como parametro - opcao de fazer a leitura de todos os paths abaixo do dir passado como parametro.
   Retorna FULLPATH do arquivo
*)
FUNCTION bDirTreeRecursive ( Const PastaBase: string; VAR Resultado : TStringList; VAR LabelInfo : TLabel ) : Boolean;
VAR
  Arquivos, Pastas                  : TStringList;
  C                                 : Longint;
  Mascara, Dir                      : String;

LABEL FIM;
BEGIN

  Arquivos:=TStringList.Create;
  Pastas:=TStringList.Create;

  If LabelInfo<>NIL Then Begin
    LabelInfo.Caption:=PastaBase;
    LabelInfo.Repaint;
  End;


  Dir:=FormatPath(PastaBase);
  Arquivos.Add(Dir);


  If ReturnDirList( Dir, TRUE, TRUE, Pastas) Then Begin

    C:=0;
    REPEAT

      Dir:=Pastas.Strings[C];
      bDirTreeRecursive ( Dir, Arquivos, LabelInfo );

      Inc(C);
    UNTIL C>=Pastas.Count;

  End;


  JunteTStringLists(Arquivos, Resultado);


  Result:=TRUE;


FIM:
  Arquivos.Free;
  Pastas.Free;

END;



(*
  Exclui todos os arquivos da PASTA BASE. Pasta base não pode ter menos de 3 caracteres.
*)
FUNCTION bDelTree ( PastaBase : string; VAR LabelInfo : TLabel ) : Boolean;
VAR
  Pastas, Field                      : TStringList;
  C                                  : Longint;
  Mascara, Dir, St                   : String;

LABEL FIM;
BEGIN

  Result:=FALSE;

  PastaBase:=FormatPath(PastaBase);

  If Not ExistDir(PastaBase) Then Exit;

  If Length(PastaBase)<3 Then Exit;

  If Qde_Pos('\', PastaBase)<=1 Then Exit;

  If Pos('\', PastaBase)=1 Then Exit;   // não apaga diretorio de rede


  Pastas:=TStringList.Create;
  Field:=TStringList.Create;


  If LabelInfo<>NIL Then Begin
    LabelInfo.Caption:=PastaBase;
    LabelInfo.Repaint;
  End;



  bZapFiles(PastaBase+'*.*');

  bDirTreeRecursive(PastaBase, Pastas, LabelInfo);



  If Pastas.Count>0 Then Begin

    C:=0;
    REPEAT

      Dir:=FormatPath(Pastas.Strings[C]);

      St:=Chr(254)+InttoStr(Qde_Pos('\',Dir))+Chr(254)+
          Chr(254)+Dir+Chr(254);

      bZapFiles(Dir+'*.*');

      Pastas.Strings[C]:=St;

      Inc(C);
    UNTIL C>=Pastas.Count;


    Sort_TXTFILE(Chr(254), Pastas, '0', 8, 30, FALSE);

    C:=0;
    REPEAT
      St:=Pastas.Strings[C];
      Read_TXTFILE_Fields(Chr(254), St, Field);

      RemoveDir(Field.Strings[1]);

      Inc(C);
    UNTIL C>=Pastas.Count;

  End;


  RemoveDir(PastaBase);


  Result:=TRUE;


FIM:
  Pastas.Free;
  Field.Free;

END;


Procedure bZapFiles(vMasc:String);
Var Dir : TsearchRec;
    Erro: Integer;
Begin

   Erro := SysUtils.FindFirst(vMasc,faArchive,Dir);

   If Erro=0 Then Begin
     While Erro = 0 do Begin
        SysUtils.DeleteFile( ExtractFilePath(vMasc)+Dir.Name );
        Erro := FindNext(Dir);
     End;
     SysUtils.FindClose(Dir);
   End;

End;



PROCEDURE bFillDirMax(Const AMask: string; VAR Arquivos : TStringList; MaximoDeArquivos: Longint);
var
  SearchRec                 : TSearchRec;
  intControl, Reg           : Longint;
begin
  Reg:=0;

  Arquivos.Clear;

  intControl := SysUtils.FindFirst( AMask, faAnyFile, SearchRec );

  if intControl = 0 then begin

     while (intControl = 0) and (Reg<MaximoDeArquivos) do begin
       If Pos('.',SearchRec.Name)<>1 Then Begin
         Arquivos.Add( SearchRec.Name );
         Inc(Reg);
       end;

       intControl := SysUtils.FindNext( SearchRec );
     end;

     SysUtils.FindClose( SearchRec );
   end;

end;

PROCEDURE bFillDir(Const AMask: string; VAR Arquivos : TStringList);
var
  SearchRec  : TSearchRec;
  intControl : integer;
begin

  Arquivos.Clear;

  intControl := SysUtils.FindFirst( AMask, faAnyFile, SearchRec );

  if intControl = 0 then begin

     while (intControl = 0) do begin
       If Pos('.',SearchRec.Name)<>1 Then
         Arquivos.Add( SearchRec.Name );
       intControl := SysUtils.FindNext( SearchRec );
     end;

     SysUtils.FindClose( SearchRec );
   end;

end;




PROCEDURE ReturnElementosSeparados ( Elementos_Separados : String; Separacao : Char; Var Elementos : TStringList );
VAR
  St, Elemento      : String;
  C                 : Longint;

BEGIN

  Elementos.Clear;

  St:=Separacao+Elementos_Separados+Separacao;

  Delete(St,1,1);  // Tira a primeira virgula
  REPEAT

    C:=Pos(Separacao, St);

    If C=0 Then Begin
      Elemento:=St;
      St:='';
    End;

    Elemento:=Cut(St,1,C-1);
    Delete(St,1,1);
    Elemento:=AllTrim(Elemento);

    If Length(Elemento)>0 then
      Elementos.Add(Elemento);

  UNTIL (St='') Or (Pos(Separacao, St)=0);

END;


FUNCTION CUB_GereHexaBico( Bomba : Word; Bico : Word ) : String;
VAR
  Bm, Bc, CodigoProduto             : Longint;
BEGIN

  Result:='';


  Bm:=1;
  CodigoProduto:=0;
  REPEAT

    Bc:=1;
    REPEAT
      Inc(CodigoProduto);

      If (Bm=Bomba) AND (bc=Bico) Then Begin
        If Length(DecToHex(CodigoProduto)) = 1 Then
          Result:='0' + DecToHex(CodigoProduto)
        else
          Result:=DecToHex(CodigoProduto);
        Exit;
      End;

      Inc(Bc);
    UNTIL Bc>4;

    Inc(Bm);
  UNTIL Bm>32;

END;


FUNCTION CUB_ReturnBombaBicoProdutoByHexa( HEXABico : String; VAR Bomba : Longint; VAR Bico : Longint; VAR resCodigoProduto : Longint ) : Boolean;
VAR
  Bm, Bc, CodigoProduto             : Longint;
  Produto                           : String;

BEGIN

  Result:=FALSE;

  HexaBico:=BlasterUpper(HexaBico);

  If Length(HexaBico)=1 Then
    HexaBico:='0'+HexaBico;

  Bomba:=0;
  Bico:=0;
  resCodigoProduto:=0;

  Bm:=1;
  CodigoProduto:=0;
  REPEAT

    Bc:=1;
    REPEAT
      Inc(CodigoProduto);

      If Length(DecToHex(CodigoProduto)) = 1 Then
        Produto:='0' + DecToHex(CodigoProduto)
      else
        Produto:=DecToHex(CodigoProduto);

      If Produto=HEXABico Then Begin
        Bomba:=Bm;
        Bico:=Bc;
        resCodigoProduto:=CodigoProduto;
        Result:=TRUE;
        Exit;
      End;

      Inc(Bc);
    UNTIL Bc>4;

    Inc(Bm);
  UNTIL Bm>32;

END;


(* Retorna o valor achado no FIELDName passado como parâmetro *)
FUNCTION GETFieldOnStringList ( StringList : TStringList; FieldName : String ) : String;
VAR
  C      : Longint;
  St     : String;
BEGIN

  Result:='';
  If StringList.Count<=0 Then Exit;


  C:=0;
  REPEAT

    If Pos(BlasterUpper(FieldName), BlasterUpper(AllTrim(StringList.Strings[C])))=1 Then Begin
      St:=AllTrim(StringList.Strings[C]);
      Delete(St,1,Length(FieldName));
      Result:=St;
      Exit;
    End;

    Inc(C);
  UNTIL C>=StringList.Count;

END;


(* Retorna o ROW onde o campo foi encontrado *)
FUNCTION GETFieldRowOnStringList ( StringList : TStringList; FieldName : String ) : Longint;
VAR
  C      : Longint;
  St     : String;
BEGIN

  Result:=-1;
  If StringList.Count<=0 Then Exit;

  C:=0;
  REPEAT

    If Pos(FieldName, AllTrim(StringList.Strings[C]))=1 Then Begin
      Result:=C;
      Exit;
    End;

    Inc(C);
  UNTIL C>=StringList.Count;

END;


FUNCTION VariacaoPercentual ( Valor1 : Currency; EmRelacaoAoValor2 : Currency ) : Currency;
VAR
  Varia  : Currency;
BEGIN

  If Valor1=0 Then Begin
    Result:=0;
    Exit;
  End;

  Varia:=(EmRelacaoAoValor2*100) / Valor1;
  Varia:=Varia-100;

  Result:=Varia;

END;



function OpenExplorer( OpenAtPath: string ): boolean;
begin

  OpenAtPath:=FormatPath(OpenAtPath);
  WinExec(pChar('explorer.exe '+OpenAtPath), SW_SHOWNORMAL);

end;

(* Retorna se o valor passado como parametro esta com duas casas decimais *)
FUNCTION ValorComDuasCasasDecimais ( Valor : Currency ) : boolean;
BEGIN

  If Money2Float(Float2Money(Valor))=Money2Float3(Float2Money3(Valor)) Then
    Result:=TRUE
  Else
    Result:=FALSE;

END;


FUNCTION EmailValido ( Endereco : String ) : Boolean;
VAR
  CaracteresInvalidos           : String;
  C                             : Longint;

BEGIN

  Result:=FALSE;

  If Pos('@', Endereco)=0 Then Exit;
  If Pos('.', Endereco)=0 Then Exit;

  If Pos('@', Endereco)>LastPos('.', Endereco) Then Exit;

  If Pos('@', Endereco)=1 Then Exit;
  If Pos('.', Endereco)=1 Then Exit;

  If Pos('@.', Endereco)<>0 then Exit;
  If Pos('.@', Endereco)<>0 then Exit;

  If Qde_Pos('@', Endereco)<>1 Then Exit;



  CaracteresInvalidos:=' #!?()*&^%$,"/+=\|~`<>{}[]';
  C:=1;
  REPEAT

    If Pos(CaracteresInvalidos[C], Endereco)<>0 Then
      Exit;

    Inc(C);
  UNTIL C>Length(CaracteresInvalidos);

  Result:=TRUE;

END;


FUNCTION ControleFrota_CalculeDV ( NumeroCartaoSEMDV : String ) : Word;
VAR
  Resultado                      : Longint;
BEGIN

  Result:=0;
  If Length(NumeroCartaoSEMDV)=0 Then Exit;

  Resultado:=SomeTodosNumeros(NumeroCartaoSEMDV);
  If Resultado>9 Then Begin
    REPEAT
      Resultado:=SomeTodosNumeros(InttoStr(Resultado));
    UNTIL Resultado<=9;
    Result:=Resultado;
  End;

END;



FUNCTION ControleFrota_NumeroDeCartaoValido ( NumeroCartaoCOMDV : String ) : Boolean;
VAR
  NumeroCartaoSemDV              : String;

BEGIN

  Result:=FALSE;

  If (Length(NumeroCartaoCOMDV)<>12) AND (Length(NumeroCartaoCOMDV)<>8) Then Exit;

  If Copy(NumeroCartaoComDV,1,2)<>'77' Then Exit;

  Result:=TRUE;
  
{
  NumeroCartaoSemDV:=Copy(NumeroCartaoCOMDV,1,Length(NumeroCartaoCOMDV)-1);

  If NumeroCartaoSemDV+InttoStr(ControleFrota_CalculeDV(NumeroCartaoSemDV)) = NumeroCartaoCOMDV Then
    Result:=TRUE;
}

END;

FUNCTION SecondsToDateTimeSt( Segundos : Currency ) : String;
VAR
  Dt, Hr : String;
BEGIN
  SecondsToDateTime(Segundos, Dt, Hr);
  Result:=Dt+' '+Hr;
END;


PROCEDURE SelectComboBoxItem ( VAR Combo : TComboBox; CodigoItem : Longint; InicioCodigoNoItem : Word );
VAR
  C       : Longint;
BEGIN

  If Combo.Items.Count<=0 Then Exit;

  C:=0;
  REPEAT

    If Str2Num(Copy(Combo.Items.Strings[C], InicioCodigoNoItem, 9))=CodigoItem Then Begin
      Combo.ItemIndex:=C;
      Exit;
    End;

    Inc(C);
  UNTIL C>=Combo.Items.Count;

END;

FUNCTION ComboBoxItemExiste ( VAR Combo : TComboBox; CodigoItem : Longint; InicioCodigoNoItem : Word ) : Boolean;
VAR
  C       : Longint;
BEGIN

  Result:=FALSE;

  If Combo.Items.Count<=0 Then Exit;

  C:=0;
  REPEAT

    If Str2Num(Copy(Combo.Items.Strings[C], InicioCodigoNoItem, 9))=CodigoItem Then Begin
      Result:=TRUE;
      Exit;
    End;

    Inc(C);
  UNTIL C>=Combo.Items.Count;

END;



FUNCTION ReturSelectedComboBoxItem ( Combo : TComboBox; InicioCodigoNoItem : Word ) : Longint;
BEGIN

  Result:=Str2Num(Copy(Combo.Items.Strings[Combo.ItemIndex],InicioCodigoNoItem,9));

END;


FUNCTION ComboboxToStringList(VAR Combo : TComboBox; VAR Lista : TStringList; Separador : Char; InicioCodigoNoItem : Longint; RemoverVazios: Boolean): Longint;
var
  C                                                          : Longint; 
  St                                                         : String; 
Label Next; 
begin 
  Result:=0; 

  Lista.Clear; 

  if Combo.Items.Count <=0 then exit; 

  C:=0; 
  REPEAT 
    If Alltrim(Combo.Items.Strings[C]) <> '' then begin 

      If (RemoverVazios) and (C = 0) then begin
        St:= (Alltrim(Copy(Combo.Items.Strings[C],1,InicioCodigoNoItem-1)));

        if ( (St = '') or (St = '(TODOS)') ) then Goto Next;
      end;

      St:=Separador+Copy(Combo.Items.Strings[C],InicioCodigoNoItem,9)+Separador+ 
          Separador+Copy(Combo.Items.Strings[C],1,InicioCodigoNoItem-1)+Separador; 

      Lista.Add(St); 
      Inc(Result); 
    end; 

  NEXT: 
    Inc(C); 
  UNTIL C>=Combo.Items.Count; 

end;


FUNCTION GereCheckSUM_PAF( Registro : String ) : Longint;
VAR
  St     : String;

BEGIN

  Result:=0;

  If Length(Registro)=0 Then Exit;

  Registro:=BlasterUpper(Registro);

  St:=ReturnCheckSum ( Registro,  3, 2 );

  If Length(St)>8 Then Begin
    Result:=Str2Num(Copy(St, Length(St)-7, 7));
  End Else
    Result:=Str2Num(St);

END;


FUNCTION IBGE_ReturnCodigoEstado ( UF : String ) : Word;
Begin

  Result:=0;

  UF:=AllTrim(UF);

  If Not UFValida(UF) Then Exit;

  If UF='SP' Then Result:=35;
  If UF='MG' Then Result:=31;
  If UF='RS' Then Result:=43;
  If UF='RJ' Then Result:=33;
  If UF='AC' Then Result:=12;
  If UF='AL' Then Result:=27;
  If UF='AM' Then Result:=13;
  If UF='AP' Then Result:=16;
  If UF='BA' Then Result:=29;
  If UF='CE' Then Result:=23;
  If UF='DF' Then Result:=53;
  If UF='ES' Then Result:=32;
  If UF='GO' Then Result:=52;
  If UF='MA' Then Result:=21;
  If UF='MS' Then Result:=50;
  If UF='MT' Then Result:=51;
  If UF='PA' Then Result:=15;
  If UF='PB' Then Result:=25;
  If UF='PI' Then Result:=22;
  If UF='PR' Then Result:=41;
  If UF='RN' Then Result:=24;
  If UF='RR' Then Result:=14;
  If UF='RO' Then Result:=11;
  If UF='PE' Then Result:=26;
  If UF='SC' Then Result:=42;
  If UF='SE' Then Result:=28;
  If UF='TO' Then Result:=17;

End;


FUNCTION IBGE_ReturnCodigoCidade( Cidade, UF : String; ShowMessages : Boolean ) : Longint;
Type
  IBGE_MAIN    = Record      {IBGE.DAT}
    IndexField : String[60];
    CodigoIBGE : String[7];
    Estado     : Word;
    Municipio  : LongInt;
  End;

VAR
  ArqIDX       : File Of IBGE_MAIN;
  RegIDX       : IBGE_MAIN;
  RegIDXTOSAVE : IBGE_MAIN;

{$I C:\DELPHI\BLASTERBD\BLASTERBD_STRING.PAS}
VAR
  C            : LongInt;
  Estado       : Word;

LABEL FIM, READ_ALL;
Begin
{$I-}

  Result:=0;

  Cidade:=BlasterUpper(RemovaAcentos(Trim(Cidade)));

  If Not FileExists(CurrentDir+'IBGE.DAT') Then Begin
    If ShowMessages Then
      SayErro('TABELA IBGE.DAT NÃO encontrada em "'+CurrentDir+'". Função NÃO executada!');
    Exit;
  End;

  Estado:=IBGE_ReturnCodigoEstado(UF);

  If Estado<=0 Then Begin
    If ShowMessages Then
      SayErro('Código da UF "'+UF+'" NÃO encontrado na tabela IBGE.DAT. Função NÃO executada!');
    Goto FIM;
  End;


  AssignFile(ArqIDX, CurrentDir+'IBGE.DAT');
  Reset(ArqIDX);
  IF IOResult<>0 Then Goto READ_ALL;


  C:=SearchForIDX(Cidade);
  If C<0 Then Goto READ_ALL;

  Seek(ArqIDX, C);
  If IOResult=0 Then Begin
    REPEAT

      READ(ArqIDX, RegIDX);
      If IOResult=0 Then Begin
        If RegIDX.IndexField=Cidade Then
          If RegIDX.Estado=Estado Then Begin
            Result:=Str2Num(RegIDX.CodigoIBGE);
            Goto FIM;
          End;
      End;

    UNTIL (EOF(ArqIDX)) Or (RegIDX.IndexField<>Cidade);
  End;


READ_ALL:

  Seek(ArqIDX, 0);
  IF IOresult=0 Then Begin
    REPEAT

      READ(ArqIDX, RegIDX);
      If IOResult=0 Then Begin
        If RegIDX.IndexField=Cidade Then
          If RegIDX.Estado=Estado Then Begin
            Result:=Str2Num(RegIDX.CodigoIBGE);
            Goto FIM;
          End;
      End;
    UNTIL (EOF(ArqIDX));

  End;


  (* Se não encontrei por busca binária nem por comparação de registros, vou procurar pos POS *)

  If Length(Cidade)<20 Then Goto FIM;  // Só faz a busca por posição se o tamanho da cidade informado for maior ou igual a 20

  Seek(ArqIDX, 0);
  IF IOresult=0 Then Begin
    REPEAT

      READ(ArqIDX, RegIDX);
      If IOResult=0 Then Begin
        If Pos(Cidade, RegIDX.IndexField)=1 Then
          If RegIDX.Estado=Estado Then Begin
            Result:=Str2Num(RegIDX.CodigoIBGE);
            Goto FIM;
          End;
      End;
    UNTIL (EOF(ArqIDX));

  End;


FIM:
  CloseFile(ArqIDX);
  ClearIOResult;

End;


FUNCTION IBGE_ReturnEstado_ByCOD( CodigoIBGE : LongInt; Short : Boolean ) : String;
Begin
  Result:='';

  If Short Then Begin
    If CodigoIBGE=35 Then Result:='SP';
    If CodigoIBGE=31 Then Result:='MG';
    If CodigoIBGE=43 Then Result:='RS';
    If CodigoIBGE=33 Then Result:='RJ';
    If CodigoIBGE=12 Then Result:='AC';
    If CodigoIBGE=27 Then Result:='AL';
    If CodigoIBGE=13 Then Result:='AM';
    If CodigoIBGE=16 Then Result:='AP';
    If CodigoIBGE=29 Then Result:='BA';
    If CodigoIBGE=23 Then Result:='CE';
    If CodigoIBGE=53 Then Result:='DF';
    If CodigoIBGE=32 Then Result:='ES';
    If CodigoIBGE=52 Then Result:='GO';
    If CodigoIBGE=21 Then Result:='MA';
    If CodigoIBGE=50 Then Result:='MS';
    If CodigoIBGE=51 Then Result:='MT';
    If CodigoIBGE=15 Then Result:='PA';
    If CodigoIBGE=25 Then Result:='PB';
    If CodigoIBGE=22 Then Result:='PI';
    If CodigoIBGE=41 Then Result:='PR';
    If CodigoIBGE=24 Then Result:='RN';
    If CodigoIBGE=14 Then Result:='RR';
    If CodigoIBGE=11 Then Result:='RO';
    If CodigoIBGE=26 Then Result:='PE';
    If CodigoIBGE=42 Then Result:='SC';
    If CodigoIBGE=28 Then Result:='SE';
    If CodigoIBGE=17 Then Result:='TO';
  End Else Begin
    If CodigoIBGE=35 Then Result:='SÃO PAULO';
    If CodigoIBGE=31 Then Result:='MINAS GERAIS';
    If CodigoIBGE=43 Then Result:='RIO GRANDE DO SUL';
    If CodigoIBGE=33 Then Result:='RIO DE JANEIRO';
    If CodigoIBGE=12 Then Result:='ACRE';
    If CodigoIBGE=27 Then Result:='ALAGOAS';
    If CodigoIBGE=13 Then Result:='AMAZONAS';
    If CodigoIBGE=16 Then Result:='AMAPÁ';
    If CodigoIBGE=29 Then Result:='BAHIA';
    If CodigoIBGE=23 Then Result:='CEARÁ';
    If CodigoIBGE=53 Then Result:='DISTRITO FEDERAL';
    If CodigoIBGE=32 Then Result:='ESPÍRITO SANTO';
    If CodigoIBGE=52 Then Result:='GOIÁS';
    If CodigoIBGE=21 Then Result:='MARANHÃO';
    If CodigoIBGE=50 Then Result:='MATO GROSSO DO SUL';
    If CodigoIBGE=51 Then Result:='MATO GROSSO';
    If CodigoIBGE=15 Then Result:='PARÁ';
    If CodigoIBGE=25 Then Result:='PARAÍBA';
    If CodigoIBGE=22 Then Result:='PIAUÍ';
    If CodigoIBGE=41 Then Result:='PARANÁ';
    If CodigoIBGE=24 Then Result:='RIO GRANDE DO NORTE';
    If CodigoIBGE=14 Then Result:='RORAIMA';
    If CodigoIBGE=11 Then Result:='RONDÔNIA';
    If CodigoIBGE=26 Then Result:='PERNAMBUCO';
    If CodigoIBGE=42 Then Result:='SANTA CATARINA';
    If CodigoIBGE=28 Then Result:='SERGIPE';
    If CodigoIBGE=17 Then Result:='TOCANTINS';
  End;
End;


FUNCTION NumeroTelefoneCelular ( Numero : String ) : Boolean;
VAR
  PrimeiroDigito                                : Word;

BEGIN

  Result:=FALSE;

  PrimeiroDigito:=0;

  Numero:=OnlyNumbersOnString(Numero);

  If Length(Numero)=10 Then  // Retirando o DD
    Delete(Numero,1,2);

  If Length(Numero)=11 Then  // Retirando o DDD
    Delete(Numero,1,3);

  If Length(Numero)=8 Then
    PrimeiroDigito:=Str2Num(Copy(Numero,1,1));

  If PrimeiroDigito>=7 Then
    Result:=TRUE; 

END;


FUNCTION SetCurrencySize ( Numero : Currency; QdeNumerosInteiros, QdeCasasDecimais : Word ) : Currency;
VAR
  St                         : String;
  Inteiros, Decimais         : String;

BEGIN

  If QdeCasasDecimais>4 Then
    QdeCasasDecimais:=4;

  St:=Float2Money4(Numero);

  Inteiros:=Copy(St,1,Pos(',',St)-1);

  Decimais:=Copy(St,Pos(',',St)+1, Length(St));

  If QdeNumerosInteiros=0 Then Begin
    Inteiros:='0';
  End Else Begin
    If Length(Inteiros)>QdeNumerosInteiros Then
      Delete(Inteiros, 1, Length(Inteiros)-QdeNumerosInteiros);
  End;

  If QdeCasasDecimais=0 Then Begin
    Decimais:='0';
  End Else Begin
    If Length(Decimais)>QdeCasasDecimais Then
      Decimais:=Copy(Decimais,1,QdeCasasDecimais);
  End;

  Result:=Money2Float3(Inteiros+','+Decimais);

END;


FUNCTION Trim_MenosSignificativo ( Tamanho : Word; Conteudo : String ) : String;
BEGIN

  Result:=Conteudo;

  If Length(Conteudo)<=Tamanho Then Exit;

  Delete(Conteudo, 1, Length(Conteudo)-Tamanho);

  Result:=Conteudo;

END;


Function ReturnLoggedUserName : string;
Var
   UserName : string;
   UserNameLen : Dword;

Begin

  Result:='';

  UserNameLen := 255;
  SetLength(userName, UserNameLen) ;

  TRY
    If GetUserName(PChar(UserName), UserNameLen) Then
      Result := BlasterUpper(Copy(UserName,1,UserNameLen - 1));
  EXCEPT

  END;

END;


(* Retorna a quantidade de casas encontrada no currency passado como parametro - maximo = 4 *)
FUNCTION ReturnQdeCasasDecimais_Currency( Valor : Currency ) : Longint;
VAR
  St                                      : String;
  Posicao                                 : Longint;

BEGIN

  Result:=0;

  St:=Float2Money4(Valor);
  Delete(St,1,Pos(',',St));

  Posicao:=Length(St);
  REPEAT

    If St[Posicao]<>'0' Then Begin
      Result:=Posicao;
      Exit;
    End;

    Dec(Posicao);
  UNTIL Posicao=0;

END;


FUNCTION RemovaExtensao_FileName ( FileName : String ) : String;
BEGIN

  Result:=Filename;

  If Pos('.', FileName)=0 Then Exit;

  Result:=Copy(FileName, 1, LastPos('.', Filename)-1);

END;

FUNCTION DateTimeToSecondsNOW : Currency;
BEGIN
  Result:=DateTimeToSeconds(Hoje, TimeNow);
END;


FUNCTION WRITE_TXTFILE_FIELDs( CaracterSeparador : Char; Fields : TStringList ) : String;
VAR
  C                                              : Longint;

BEGIN

  Result:='';
  If Fields.Count=0 Then Exit;

  C:=0;
  REPEAT

    Result:=Result+CaracterSeparador+Fields.Strings[C]+CaracterSeparador;

    Inc(C);
  UNTIL C>=Fields.Count;

END;

FUNCTION LineFeed : String;
BEGIN
  Result:=Chr(13)+Chr(10);
END;


PROCEDURE SelectComboBoxItemString ( VAR Combo : TComboBox; Descricao : String );
VAR
  C       : Longint;
BEGIN

  If Combo.Items.Count<=0 Then Exit;
  Descricao:=BlasterUpper(Descricao);

  Combo.ItemIndex:=0;
  
  C:=0;
  REPEAT

    If BlasterUpper(Combo.Items.Strings[C])=Descricao Then Begin
      Combo.ItemIndex:=C;
      Exit;
    End;

    Inc(C);
  UNTIL C>=Combo.Items.Count;

END;


PROCEDURE AltereComboBoxItemString ( VAR Combo : TComboBox; DescricaoDe, DescricaoPara : String );
VAR
  C       : Longint;
BEGIN

  If Combo.Items.Count<=0 Then Exit;
  DescricaoDe:=BlasterUpper(DescricaoDe);

  C:=0;
  REPEAT

    If BlasterUpper(Combo.Items.Strings[C])=DescricaoDe Then Begin
      Combo.Items.Strings[C]:=DescricaoPara;
      Exit;
    End;

    Inc(C);
  UNTIL C>=Combo.Items.Count;

END;


FUNCTION ReturnComboBoxItemIndexString ( VAR Combo : TComboBox; Descricao : String ) : Longint;
VAR
  C       : Longint;
BEGIN

  Result:=-1;

  If Combo.Items.Count<=0 Then Exit;
  Descricao:=BlasterUpper(Descricao);

  C:=0;
  REPEAT

    If BlasterUpper(Combo.Items.Strings[C])=Descricao Then Begin
      Result:=C;
      Exit;
    End;

    Inc(C);
  UNTIL C>=Combo.Items.Count;

END;

PROCEDURE DeleteComboBoxItemString ( VAR Combo : TComboBox; Descricao : String );
VAR
  C       : Longint;
BEGIN

  If Combo.Items.Count<=0 Then Exit;
  Descricao:=BlasterUpper(Descricao);

  C:=0;
  REPEAT

    If BlasterUpper(Combo.Items.Strings[C])=Descricao Then
      Combo.Items.Delete(C);

    Inc(C);
  UNTIL C>=Combo.Items.Count;

END;



function BlasterFileCopyNoOverWrite(source,dest: String): Boolean;
{copia um arquivo de um lugar para outro. Retornando falso em caso de erro
 Se o destino existir, NÃO sobrepoe }
var
  fSrc,fDst,len: Integer;
  size: Longint;
  buffer: packed array [0..2047] of Byte;
begin

  Result := False;

  If FileExists(Dest) then
    Exit;

  if source <> dest then
     begin
     fSrc := FileOpen(source,fmShareDenyNone);
     if fSrc >= 0 then
        begin
        size := FileSeek(fSrc,0,2);
        FileSeek(fSrc,0,0);
        fDst := FileCreate(dest);
        if fDst >= 0 then
           begin
           while size > 0 do
                 begin
                 len := FileRead(fSrc,buffer,sizeof(buffer));
                 FileWrite(fDst,buffer,len);
                 size := size - len;
                 end;
           FileSetDate(fDst,FileGetDate(fSrc));
           FileClose(fDst);
           FileSetAttr(dest,FileGetAttr(source));
           Result := True;
           end;
        FileClose(fSrc);
        end;
     end;
end;


FUNCTION TempoUtilTrabalhado ( DataHoraInicial, DataHoraFinal : Currency; InicioJornada{Time2Seconds}, FimJornada{Time2Seconds} : Currency ) : Currency;
VAR
  DataINI, DataFIM, HoraINI, HoraFIM           : String;
  HorasTrabalhadas                             : Currency;

BEGIN

  Result:=0;

  If DataHoraFinal<DataHoraInicial Then Exit;
  If FimJornada<InicioJornada Then Exit;


  SecondsToDateTime(DataHoraInicial, DataINI, HoraINI);
  SecondsToDateTime(DataHoraFinal, DataFIM, HoraFIM);


  If DataINI=DataFIM Then Begin
    Result:=DataHoraFinal - DataHoraInicial;
    Exit;
  End;


  HorasTrabalhadas:=0;

  If TimeToSeconds(HoraINI)<FimJornada Then
    HorasTrabalhadas:=FimJornada-TimeToSeconds(HoraINI);

  DataINI:=ADD_IN_DATE(DataINI, 1);

  If DataINI<>DataFIM Then Begin

    REPEAT
      HorasTrabalhadas:=HorasTrabalhadas+(FimJornada-InicioJornada);

      DataINI:=ADD_IN_DATE(DataINI,1);
    UNTIL DataINI=DataFIM;

  End;


  If InicioJornada<TimeToSeconds(HoraFIM) Then
    HorasTrabalhadas:=HorasTrabalhadas+(TimeToSeconds(HoraFIM)-InicioJornada);


  Result:=HorasTrabalhadas;

END;




function NFP_ReturnCaractereParaData( Numero_do_Dia_ou_Mes_ou_Ano : Longint ) : String;
begin

  Result:='';

  Case Numero_do_Dia_ou_Mes_ou_Ano Of
     1 : Result:='1';
     2 : Result:='2';
     3 : Result:='3';
     4 : Result:='4';
     5 : Result:='5';
     6 : Result:='6';
     7 : Result:='7';
     8 : Result:='8';
     9 : Result:='9';
    10 : Result:='A';
    11 : Result:='B';
    12 : Result:='C';
    13 : Result:='D';
    14 : Result:='E';
    15 : Result:='F';
    16 : Result:='G';
    17 : Result:='H';
    18 : Result:='I';
    19 : Result:='J';
    20 : Result:='K';
    21 : Result:='L';
    22 : Result:='M';
    23 : Result:='N';
    24 : Result:='O';
    25 : Result:='P';
    26 : Result:='Q';
    27 : Result:='R';
    28 : Result:='S';
    29 : Result:='T';
    30 : Result:='U';
    31 : Result:='V';
  End;

end;


function NFP_ReturnDataParaCaractere( Caractere_do_Dia_ou_Mes_ou_Ano : Char ) : Longint;
begin

  Result:=0;

  Case Caractere_do_Dia_ou_Mes_ou_Ano Of
     '1' : Result:=1;
     '2' : Result:=2;
     '3' : Result:=3;
     '4' : Result:=4;
     '5' : Result:=5;
     '6' : Result:=6;
     '7' : Result:=7;
     '8' : Result:=8;
     '9' : Result:=9;
    'A' : Result:=10;
    'B' : Result:=11;
    'C' : Result:=12;
    'D' : Result:=13;
    'E' : Result:=14;
    'F' : Result:=15;
    'G' : Result:=16;
    'H' : Result:=17;
    'I' : Result:=18;
    'J' : Result:=19;
    'K' : Result:=20;
    'L' : Result:=21;
    'M' : Result:=22;
    'N' : Result:=23;
    'O' : Result:=24;
    'P' : Result:=25;
    'Q' : Result:=26;
    'R' : Result:=27;
    'S' : Result:=28;
    'T' : Result:=29;
    'U' : Result:=30;
    'V' : Result:=31;
  End;

end;


function Date2NFP( Data : String ) : String;
VAR
  Dia, Mes, Ano          : Longint;
begin

  Result:='';

  If Not CheckDate(Data) Then Exit;

  Dia:=Str2Num(Copy(Data,1,2));
  Mes:=Str2Num(Copy(Data,4,2));
  Ano:=Str2Num(Copy(Data,9,2));

  Result:=NFP_ReturnCaractereParaData(Dia)+NFP_ReturnCaractereParaData(Mes)+NFP_ReturnCaractereParaData(Ano);

end;



function NFP2Date( Data : String ) : String;
VAR
  Dia, Mes, Ano          : Longint;
begin

  Result:='';

  If Length(Data)<> 3 Then Exit;

  Data:=BlasterUpper(Data);

  Dia:=NFP_ReturnDataParaCaractere(Data[1]);
  If Dia<=0 Then Exit;

  Mes:=NFP_ReturnDataParaCaractere(Data[2]);
  If Mes<=0 Then Exit;

  Ano:=NFP_ReturnDataParaCaractere(Data[3]);
  If Ano<0 Then Exit;

  Result:=FillLeft(2,Dia)+'/'+FillLeft(2,Mes)+'/'+'20'+FillLeft(2,Ano);

end;



function BlasterFileCopyProgress(source,dest: String; Barra : TGauge): Boolean;
{copia um arquivo de um lugar para outro. Retornando falso em caso de erro
 Se o destino existir, sobrepoe }
var
  fSrc,fDst,len: Integer;
  size: Longint;
  buffer: packed array [0..2047] of Byte;

  TotalCopiado : Longint;
  TamanhoTotal : Longint;
begin

  Result := False;

  Barra.Progress:=0;

  If FileExists(Dest) then
    SysUtils.DeleteFile(Dest);

  TotalCopiado:=0;
  if source <> dest then
     begin
     fSrc := FileOpen(source,fmShareDenyNone);
     if fSrc >= 0 then
        begin
        size := FileSeek(fSrc,0,2);
        TamanhoTotal:=Size;
        FileSeek(fSrc,0,0);
        fDst := FileCreate(dest);
        if fDst >= 0 then
           begin
           while size > 0 do
                 begin
                 len := FileRead(fSrc,buffer,sizeof(buffer));
                 FileWrite(fDst,buffer,len);
                 size := size - len;
                 TotalCopiado:=TotalCopiado + Len;

                 Barra.Progress:=TotalCopiado * 100 Div TamanhoTotal;
                 end;
           FileSetDate(fDst,FileGetDate(fSrc));
           FileClose(fDst);
           FileSetAttr(dest,FileGetAttr(source));
           Result := True;
           end;
{        else
           begin
           Result := False;
           end;}
        FileClose(fSrc);
        end;
     end;
end;



function ListeMaquinasNaRede : TStringList;
var
hEnum, dwResult, dwResultEnum : DWORD;
nrBuffer : array[0..16384 div SizeOf(TNetResource)] of TNetResource;
i : integer;
quantidade : Longint;
maxBuffer: DWORD;
lista: TStringList;
begin
lista := TStringList.Create;
result := lista;
maxBuffer := 16384;
quantidade := -1;
// chamando a API que configura a enumeração da rede
// que será feita posteriormente pela função
// WNetEnumResource
dwResult := WNetOpenEnum(RESOURCE_CONTEXT,
RESOURCETYPE_DISK,
0,
nil,
hEnum
);
// prosseguir somente se não houver erro na API chamada
if (dwResult <> NO_ERROR) then
Exit;
// Inicializando o array criado, preparando-o para receber
// dados
FillChar( nrBuffer, maxBuffer, 0 );
// chamando a API do Windows que faz a enumeração de todos
// os recursos da rede e armazena os dados no array nrBuffer
dwResultEnum := WNetEnumResource(hEnum,
DWORD(quantidade),
@nrBuffer,
maxBuffer);
// a primeira posição do array não retorna dados legíveis
for i := 1 to quantidade - 1 do
begin
if Pos('\\', nrBuffer[i].lpRemoteName) > 0 then
lista.Add(Copy(nrBuffer[i].lpRemoteName, 3, Length(nrBuffer[i].lpRemoteName)))
else
lista.Add(nrBuffer[i].lpRemoteName);
end;
// não se esqueça de liberar os recursos reservados pela enumeração
WNetCloseEnum(hEnum);
end;


FUNCTION FIELDSToString ( Field : TStringList; CaracterSeparador : Char ) : String;
VAR
  C      : Longint;
BEGIN

  Result:='';

  If Field.Count<=0 Then Exit;

  C:=0;
  REPEAT
    Result:=Result+CaracterSeparador+Field.Strings[C]+CaracterSeparador;
    Inc(C);
  UNTIL C>=Field.Count;


END;


FUNCTION HTMLSpace : String;
BEGIN
 Result:='&nbsp';
END;



PROCEDURE LocalizePrimeiraLetraNoStringList( VAR Lista : TStringAlignGrid; Coluna : Word; Key : Char );
VAR
  Row, RowInicial                                   : Longint;

LABEL LOCALIZE;
BEGIN

  Key:=UpperKey(Key);
  OnlyNumeroLetrasAccepted(Key);

  If Key=#0 Then Exit;

  RowInicial:=Lista.Row;
  Inc(RowInicial);
  If RowInicial>=Lista.RowCount Then
    RowInicial:=0;


LOCALIZE:

  Row:=RowInicial;
  REPEAT

    If Pos(Key, Lista.Cells[1, Row])=1 Then Begin
      Lista.Row:=Row;
      Exit;
    End;

    Inc(Row);
  UNTIL Row>=Lista.RowCount;

  If RowInicial>0 Then Begin
    RowInicial:=0;
    Goto LOCALIZE;
  End;


END;


PROCEDURE LocalizeNoInicioStringList( VAR Lista : TStringAlignGrid; Coluna : Word; Key : String );
VAR
  Row, RowInicial                                   : Longint;

LABEL LOCALIZE;
BEGIN

  If Key='' Then Exit;

  Key:=BlasterUpper(Key);

  RowInicial:=Lista.Row;
  Inc(RowInicial);
  If RowInicial>=Lista.RowCount Then
    RowInicial:=0;


LOCALIZE:

  Row:=RowInicial;
  REPEAT

    If Pos(Key, Lista.Cells[Coluna, Row])=1 Then Begin
      Lista.Row:=Row;
      Exit;
    End;

    Inc(Row);
  UNTIL Row>=Lista.RowCount;

  If RowInicial>0 Then Begin
    RowInicial:=0;
    Goto LOCALIZE;
  End;


END;


(* Converte uma data em formato de trimestre *)
FUNCTION Data2Semestre ( Data : Longint ) : String;
VAR
  St, Ano                     : String;

BEGIN

  If Data<=0 Then Exit;
  Result:='';

  St:=Int2Date(Data);
  If Not CheckDate(St) Then Exit;

  Ano:=Copy(St,7,4);
  Delete(St, 7, 4);

  If (Data>=Date2Int('01/01/'+Ano)) AND (Data<=Date2Int('30/06/'+Ano)) Then
    Result:='1s'+Ano
  Else
    Result:='2s'+Ano;

END;


(* Converte um semestre para data inicio e fim *)
FUNCTION Semestre2Data ( Semestre : String; VAR DataINI : Longint; VAR DataFIM : Longint ) : Boolean;
VAR
  Numero, Ano               : String;

BEGIN

  DataINI:=0;
  DataFIM:=0;

  Result:=FALSE;
  If Length(Semestre)<>6 Then Exit;

  Semestre:=BlasterUpper(Semestre);

  If Pos('S', Semestre)<>2 Then Exit;

  Numero:=Copy(Semestre,1,1);
  If (Str2Num(Numero)<=0) Or (Str2Num(Numero)>2) Then Exit;

  Delete(Semestre,1,2);
  Ano:=Semestre;

  If (Str2Num(Ano)<2000) or (Str2Num(Ano)>3000) Then Exit;


  Case Str2Num(Numero) Of
    1 : Begin
          DataINI:=Date2Int('01/01/'+Ano);
          DataFIM:=Date2Int('30/06/'+Ano);
          Result:=TRUE;
        End;
    2 : Begin
          DataINI:=Date2Int('01/07/'+Ano);
          DataFIM:=Date2Int('31/12/'+Ano);
          Result:=TRUE;
        End;
  End;


END;



(* Converte uma data em formato de trimestre *)
FUNCTION Data2Trimestre ( Data : Longint ) : String;
VAR
  St, Ano                     : String;

BEGIN

  If Data<=0 Then Exit;
  Result:='';

  St:=Int2Date(Data);
  If Not CheckDate(St) Then Exit;

  Ano:=Copy(St,7,4);
  Delete(St, 7, 4);

  If (Data>=Date2Int('01/01/'+Ano)) AND (Data<=Date2Int('31/03/'+Ano)) Then Begin
    Result:='1t'+Ano;
  End Else Begin

    If (Data>=Date2Int('01/04/'+Ano)) AND (Data<=Date2Int('30/06/'+Ano)) Then Begin
      Result:='2t'+Ano;
    End Else Begin

      If (Data>=Date2Int('01/07/'+Ano)) AND (Data<=Date2Int('30/09/'+Ano)) Then Begin
        Result:='3t'+Ano;

      End Else Begin
        Result:='4t'+Ano;
      End;

    End;

  End;

END;


(* Converte um semestre para data inicio e fim *)
FUNCTION Trimestre2Data ( Trimestre : String; VAR DataINI : Longint; VAR DataFIM : Longint ) : Boolean;
VAR
  Numero, Ano               : String;

BEGIN

  DataINI:=0;
  DataFIM:=0;

  Result:=FALSE;
  If Length(Trimestre)<>6 Then Exit;

  Trimestre:=BlasterUpper(Trimestre);

  If Pos('T', Trimestre)<>2 Then Exit;

  Numero:=Copy(Trimestre,1,1);
  If (Str2Num(Numero)<=0) Or (Str2Num(Numero)>4) Then Exit;

  Delete(Trimestre,1,2);
  Ano:=Trimestre;

  If (Str2Num(Ano)<2000) or (Str2Num(Ano)>3000) Then Exit;


  Case Str2Num(Numero) Of
    1 : Begin
          DataINI:=Date2Int('01/01/'+Ano);
          DataFIM:=Date2Int('31/03/'+Ano);
          Result:=TRUE;
        End;
    2 : Begin
          DataINI:=Date2Int('01/04/'+Ano);
          DataFIM:=Date2Int('30/06/'+Ano);
          Result:=TRUE;
        End;
    3 : Begin
          DataINI:=Date2Int('01/07/'+Ano);
          DataFIM:=Date2Int('30/09/'+Ano);
          Result:=TRUE;
        End;
    4 : Begin
          DataINI:=Date2Int('01/10/'+Ano);
          DataFIM:=Date2Int('31/12/'+Ano);
          Result:=TRUE;
        End;
  End;

END;


FUNCTION Semestre2Text( Semestre : String ) : String;
BEGIN

  Result:=Semestre;

  Semestre:=BlasterUpper(Semestre);

  If Pos('S', Semestre)<>2 Then Exit;
  If Length(Semestre)<>6 Then Exit;

  Result:=Copy(Semestre,1,1)+'o SEMESTRE/'+Copy(Semestre,3,4);

END;

FUNCTION Trimestre2Text( Trimestre : String ) : String;
BEGIN

  Result:=Trimestre;

  Trimestre:=BlasterUpper(Trimestre);

  If Pos('T', Trimestre)<>2 Then Exit;
  If Length(Trimestre)<>6 Then Exit;

  Result:=Copy(Trimestre,1,1)+'o TRIMESTRE DE'+Copy(Trimestre,3,4);

END;


FUNCTION ReadXMLToStringList ( XML : TStringList; VAR XMLFields : TStringList; VAR XMLFields_Values : TStringList ) : Boolean;
VAR
  Field, St, Value                 : String;
  C                                : Longint;

  PROCEDURE RemovaEspacosADireita ( VAR Field : String );
  VAR C       : Longint;
  BEGIN
    If Length(Field)=0 Then Exit;
    C:=Length(Field)-1;
    REPEAT
      If Field[C]=' ' Then
        Delete(Field,C,1);
    UNTIL (C=0) Or (Field[C]<>' ');
  END;

  LABEL NEXT;
BEGIN

  Result:=FALSE;
  XMLFields.Clear;
  XMLFields_Values.Clear;

  St:='';
  C:=0;
  REPEAT
    St:=St+BlasterUpper(XML.Strings[C]);
    Inc(C);
  UNTIL C>=XML.Count;

  St:=Alltrim(St);

  Field:='';
  Value:='';
  REPEAT

    If Pos('</', St)=1 Then Begin
      If Pos('</DEPOSITODET>', St)=1 THen
        Apm;
      Delete(Field, LastPos('<', Field), Length(Field));
      Delete(St, 1, Pos('>', St));
      Goto NEXT;
    End;


    If Pos('<', St)=1 Then Begin  // Field

      Field:=Field+Cut(St,1,Pos('>',St));

    End Else Begin  // Value

      Value:=Cut(St,1,Pos('<', St)-1);
      RemovaEspacosADireita(Field);

      XMLFields.Add(AllTrim(Field));
      XMLFields_Values.Add(AllTrim(Value));

    End;


    If LastPos('/>', Field)=Length(Field)-1 Then Begin   // Campo vazio

      Delete(Field, LastPos('/', Field), 1);

      Value:='';
      RemovaEspacosADireita(Field);

      XMLFields.Add(AllTrim(Field));
      XMLFields_Values.Add(AllTrim(Value));

      Delete(Field, LastPos('<', Field), Length(Field));

    End;

    NEXT:
    St:=AllTrim(St);
  UNTIL (ST='') Or (Pos('>',St)=0);

  If XMLFields.Count>0 Then
    Result:=TRUE;


END;


FUNCTION DiasEntreDatas_Cobranca ( DataInicial, DataFinal : String ) : Longint;
VAR
  Data                  : String;
  Dias, De, Ate         : Longint;
  Negativo              : Boolean;

BEGIN
  Result:=-1;
  Negativo:=FALSE;

  If (Not CheckDate(DataInicial)) Or (Not CheckDate(DataFinal)) Then Exit;

  If abs(Date2Int(DataInicial)-Date2Int(DataFinal))>36500 Then Exit;  // Mais de 10 anos não calcula

  If Date2Int(DataInicial)>Date2Int(DataFinal) Then Begin
    Negativo:=TRUE;
    Data:=DataInicial;
    DataInicial:=DataFinal;
    DataFinal:=Data;
  End;

  If DataInicial=DataFinal Then Begin
    Result:=0;
    Exit;
  End;

  De:=Date2Int(DataInicial);
  Ate:=Date2Int(DataFinal);

  Data:=DataInicial;
  Dias:=1;
  REPEAT
    De:=ADD_IN_DATE_LONG(De,1);
    Inc(Dias);
  UNTIL De>=Ate;

  If Negativo Then
    Dias:=Dias*-1;

  If Negativo Then
    Inc(Dias)
  Else
    Dec(Dias);

  Result:=Dias;

END;



(* Cria uma arquivo com extensao .SGN assinanto o arquivo passado como parâmetro *)
FUNCTION Verifique_AssinaturaArquivo( FileName : String; KeyDe1_9 : Word ) : Boolean;
VAR
  Assinatura                     : String;

BEGIN

  Result:=FALSE;

  Assinatura:=Return_AssinaturaArquivo(FileName, KeyDe1_9);
  If Assinatura='' Then Exit;

  If READ_TXTFILE_LINE(FileName+'.SGN', 1)=Assinatura Then 
    Result:=TRUE;

END;

(* Cria uma arquivo com extensao .SGN assinanto o arquivo passado como parâmetro *)
FUNCTION Gere_AssinaturaArquivo( FileName : String; KeyDe1_9 : Word ) : Boolean;
VAR
  Assinatura                     : String;
BEGIN

  Result:=FALSE;

  Assinatura:=Return_AssinaturaArquivo(FileName, KeyDe1_9);
  If Assinatura='' Then Exit;

  If RewriteInTextFile(FileName+'.SGN', Assinatura) Then
    Result:=TRUE;

END;


FUNCTION Return_MD5String ( St : String ) : String;
BEGIN

  If St='' Then
    Result:=''
  Else
    Result:=MD5Print(MD5String(St));

END;


(* Gera assinatura de 128 bytes para o arquivo passado como parâmetro - baseada em MD5 *)
FUNCTION Return_AssinaturaArquivo( FileName : String; KeyDe1_9 : Word ) : String;
VAR
  MD5                            : String;
  St                             : String;

BEGIN

  Result:='';

  If Not FileExists(FileName) Then Exit;


  MD5:=MD5Print(MD5File(FileName));

  If Length(MD5)<>32 Then Exit;


  MD5:=BlasterUpper(MD5);

  MD5:=ENCODE(MD5, KeyDe1_9);

  MD5:=MD5+FillLeftFloat(10,ReturnSerial(MD5));

  MD5:=StrChr2Bin_Faster(MD5);

  St:=Copy(MD5, Length(MD5)-30, 10);
  St:=InvertString(St);

  MD5:=St+MD5;

  St:=Copy(MD5, 21, 14);
  St:=InvertString(St);
  MD5:=MD5+St;


  Result:=MD5;


END;




FUNCTION ReturnMachineNameAndIP(var HostName, IPaddr, WSAErr: string): Boolean;
type
  Name = array[0..100] of Char;
  PName = ^Name;

var
  HEnt          : pHostEnt;
  HName         : PName;
  WSAData       : TWSAData;
  i             : Integer;

begin 

  Result := False;

  if WSAStartup($0101, WSAData) <> 0 then begin
    WSAErr := 'Winsock is not responding."';
    Exit;
  end;

  IPaddr := '';
  New(HName);

  if GetHostName(HName^, SizeOf(Name)) = 0 then
  begin
    HostName := StrPas(HName^);
    HEnt := GetHostByName(HName^);
    for i := 0 to HEnt^.h_length - 1 do
     IPaddr :=
      Concat(IPaddr,
      IntToStr(Ord(HEnt^.h_addr_list^[i])) + '.');
    SetLength(IPaddr, Length(IPaddr) - 1);
    Result := True;
  end
  else begin
   case WSAGetLastError of
    WSANOTINITIALISED:WSAErr:='WSANotInitialised';
    WSAENETDOWN      :WSAErr:='WSAENetDown';
    WSAEINPROGRESS   :WSAErr:='WSAEInProgress';
   end;
  end;

  Dispose(HName);
  WSACleanup;

end;



function IntToBin ( value: LongInt; digits: integer ): string;
begin
  result := StringOfChar ( '0', digits ) ;
  while value > 0 do begin
    if ( value and 1 ) = 1 then
      result [ digits ] := '1';
    dec ( digits ) ;
    value := value shr 1;
  end;
end;

function BinToInt(Value: String): LongInt;
var i: Integer;
begin
  Result:=0;
//remove leading zeroes
  while Copy(Value,1,1)='0' do
   Value:=Copy(Value,2,Length(Value)-1) ;
//do the conversion
  for i:=Length(Value) downto 1 do
   if Copy(Value,i,1)='1' then
    Result:=Result+(1 shl (Length(Value)-i)) ;
end;



FUNCTION ReturnBicosDoCanal_CompanyTEC ( Canal, NumeroLogico : Word; VAR Bicos : TStringList ) : Boolean;
BEGIN

  Result:=FALSE;
  Bicos.Clear;


  Case Canal Of

    1 : Begin
          Case NumeroLogico of
            1 : Begin
                  Bicos.Add('04');
                  Bicos.Add('44');
                  Bicos.Add('84');
                  Bicos.Add('C4');
                End;
            2 : Begin
                  Bicos.Add('05');
                  Bicos.Add('45');
                  Bicos.Add('85');
                  Bicos.Add('C5');
                End;
            3 : Begin
                  Bicos.Add('06');
                  Bicos.Add('46');
                  Bicos.Add('86');
                  Bicos.Add('C6');
                End;
            4 : Begin
                  Bicos.Add('07');
                  Bicos.Add('47');
                  Bicos.Add('87');
                  Bicos.Add('C7');
                End;
          End;
        End;


    2 : Begin
          Case NumeroLogico of
            1 : Begin
                  Bicos.Add('08');
                  Bicos.Add('48');
                  Bicos.Add('88');
                  Bicos.Add('C8');
                End;
            2 : Begin
                  Bicos.Add('09');
                  Bicos.Add('49');
                  Bicos.Add('89');
                  Bicos.Add('C9');
                End;
            3 : Begin
                  Bicos.Add('0A');
                  Bicos.Add('4A');
                  Bicos.Add('8A');
                  Bicos.Add('CA');
                End;
            4 : Begin
                  Bicos.Add('0B');
                  Bicos.Add('4B');
                  Bicos.Add('8B');
                  Bicos.Add('CB');
                End;
          End;
        End;


    3 : Begin
          Case NumeroLogico of
            1 : Begin
                  Bicos.Add('0C');
                  Bicos.Add('4C');
                  Bicos.Add('8C');
                  Bicos.Add('CC');
                End;
            2 : Begin
                  Bicos.Add('0D');
                  Bicos.Add('4D');
                  Bicos.Add('8D');
                  Bicos.Add('CD');
                End;
            3 : Begin
                  Bicos.Add('0E');
                  Bicos.Add('4E');
                  Bicos.Add('8E');
                  Bicos.Add('CE');
                End;
            4 : Begin
                  Bicos.Add('0F');
                  Bicos.Add('4F');
                  Bicos.Add('8F');
                  Bicos.Add('CF');
                End;
          End;
        End;

    4 : Begin
          Case NumeroLogico of
            1 : Begin
                  Bicos.Add('10');
                  Bicos.Add('50');
                  Bicos.Add('90');
                  Bicos.Add('D0');
                End;
            2 : Begin
                  Bicos.Add('11');
                  Bicos.Add('51');
                  Bicos.Add('91');
                  Bicos.Add('D1');
                End;
            3 : Begin
                  Bicos.Add('12');
                  Bicos.Add('52');
                  Bicos.Add('92');
                  Bicos.Add('D2');
                End;
            4 : Begin
                  Bicos.Add('13');
                  Bicos.Add('53');
                  Bicos.Add('93');
                  Bicos.Add('D3');
                End;
          End;
        End;

    5 : Begin
          Case NumeroLogico of
            1 : Begin
                  Bicos.Add('14');
                  Bicos.Add('54');
                  Bicos.Add('94');
                  Bicos.Add('D4');
                End;
            2 : Begin
                  Bicos.Add('15');
                  Bicos.Add('55');
                  Bicos.Add('95');
                  Bicos.Add('D5');
                End;
            3 : Begin
                  Bicos.Add('16');
                  Bicos.Add('56');
                  Bicos.Add('96');
                  Bicos.Add('D6');
                End;
            4 : Begin
                  Bicos.Add('17');
                  Bicos.Add('57');
                  Bicos.Add('97');
                  Bicos.Add('D7');
                End;
          End;
        End;

    6 : Begin
          Case NumeroLogico of
            1 : Begin
                  Bicos.Add('18');
                  Bicos.Add('58');
                  Bicos.Add('98');
                  Bicos.Add('D8');
                End;
            2 : Begin
                  Bicos.Add('19');
                  Bicos.Add('59');
                  Bicos.Add('99');
                  Bicos.Add('D9');
                End;
            3 : Begin
                  Bicos.Add('1A');
                  Bicos.Add('5A');
                  Bicos.Add('9A');
                  Bicos.Add('DA');
                End;
            4 : Begin
                  Bicos.Add('1B');
                  Bicos.Add('5B');
                  Bicos.Add('9B');
                  Bicos.Add('DB');
                End;
          End;
        End;

    7 : Begin
          Case NumeroLogico of
            1 : Begin
                  Bicos.Add('1C');
                  Bicos.Add('5C');
                  Bicos.Add('9C');
                  Bicos.Add('DC');
                End;
            2 : Begin
                  Bicos.Add('1D');
                  Bicos.Add('5D');
                  Bicos.Add('9D');
                  Bicos.Add('DD');
                End;
            3 : Begin
                  Bicos.Add('1E');
                  Bicos.Add('5E');
                  Bicos.Add('9E');
                  Bicos.Add('DE');
                End;
            4 : Begin
                  Bicos.Add('1F');
                  Bicos.Add('5F');
                  Bicos.Add('9F');
                  Bicos.Add('DF');
                End;
          End;
        End;

    8 : Begin
          Case NumeroLogico of
            1 : Begin
                  Bicos.Add('20');
                  Bicos.Add('60');
                  Bicos.Add('A0');
                  Bicos.Add('E0');
                End;
            2 : Begin
                  Bicos.Add('21');
                  Bicos.Add('61');
                  Bicos.Add('A1');
                  Bicos.Add('E1');
                End;
            3 : Begin
                  Bicos.Add('22');
                  Bicos.Add('62');
                  Bicos.Add('A2');
                  Bicos.Add('E2');
                End;
            4 : Begin
                  Bicos.Add('23');
                  Bicos.Add('63');
                  Bicos.Add('A3');
                  Bicos.Add('E3');
                End;
          End;
        End;


  End;


  If Bicos.Count>0 Then
    Result:=TRUE;

END;


function Windows_GetEnvVarValue(const VarName: string): string;   {HOMEPATH, USERPROFILE, etc...}
var
  BufSize: Integer;  // buffer size required for value
begin
  // Get required buffer size (inc. terminal #0)
  BufSize := GetEnvironmentVariable(
    PChar(VarName), nil, 0);
  if BufSize > 0 then
  begin
    // Read env var value into result string
    SetLength(Result, BufSize - 1);
    GetEnvironmentVariable(PChar(VarName),
      PChar(Result), BufSize);
  end
  else
    // No such environment variable
    Result := '';
end;



FUNCTION EANValido( CodigoEAN : String; ShowMessages : Boolean): Boolean;
var
  DigOriginal, DigCalculado, Codigo: String;

  function CalcularDV(ACodigoEAN: String): String;
  var
    Dig, I, DV: Integer;
  begin
    DV := 0;
    Result := '' ;

    // adicionar os zeros a esquerda, se não fizer isso o cálculo não bate
    // limite = tamanho maior codigo (gtin14) - 1 (digito)
    ACodigoEAN := FillLeftFloat(13, Str2Float(ACodigoEAN));  //PadR(ACodigoEAN, 13, '0');

    for I := Length(ACodigoEAN) downto 1 do
    begin
      Dig := StrToInt(ACodigoEAN[I]);
      If odd(I) Then
        DV  := DV + (Dig * 3)
      else
        DV  := DV + (Dig * 1);
    end;

    DV := (Ceil(DV / 10) * 10) - DV ;
    Result := IntToStr(DV);
  end;

begin

  Result := FALSE;

  If Not Is_Currency(CodigoEAN) Then Begin
    If ShowMessages Then
      SayErro('Código EAN inválido! O código deve conter somente números.');
    Exit;
  End;

  If Not(Length(CodigoEAN) in [8, 12, 13, 14]) Then Begin
    If ShowMessages Then
      SayErro('Código EAN inválido! O código deve ter 8, 12, 13 ou 14 caracteres.');
    Exit;
  End;

  Codigo := Copy(CodigoEAN, 1, Length(CodigoEAN) - 1);
  DigOriginal := CodigoEAN[Length(CodigoEAN)];
  DigCalculado := CalcularDV(Codigo);

  If DigOriginal <> DigCalculado Then Begin
    If ShowMessages Then
      SayErro('Código EAN inválido.');
  End Else Begin
    Result := TRUE;
  End;

end;


FUNCTION  Placa_Valida ( Placa : String ) : Boolean;
var StAlfas, StNumeros   : String;
    StPossiveis          : set of Char;
begin

  Result := False;

  StPossiveis := [' ', '-', '0'..'9'];

  StAlfas := OnlyLetrasOnString(UpperCase(Alltrim(Copy(Placa, 1, 3))));

  StNumeros := OnlyNumbersOnString(Alltrim(Copy(Placa, 4, length(Placa))));

  Result := ((length(StAlfas) = 3) and (length(StNumeros) = 4)) and (Placa[4] in StPossiveis); //(Pos('.', Placa) = 0);

end;

FUNCTION  Format_Placa ( Placa : String ) : String;
var
    StAlfas, StNumeros                  : String;
begin

  Result:='';
  
  If Not Placa_Valida(Placa) Then Exit;

  StAlfas := OnlyLetrasOnString(UpperCase(Alltrim(Copy(Placa, 1, 3))));

  StNumeros := OnlyNumbersOnString(Alltrim(Copy(Placa, 4, length(Placa))));

  Result := UpperCase(StAlfas + StNumeros);

  if Pos('-', Result) = 0 then
    Result := Copy(Result, 1,3) + '-' + Copy(Result, 4,4);

end;



FUNCTION ReturnQdeItensSelecionados_CheckListBox ( Lista : TCheckListBox ) : Longint;
VAR
  C      : Longint;
BEGIN
  Result:=0;

  If Lista.Items.Count=0 Then Exit;

  C:=0;
  REPEAT
    If Lista.Checked[C] Then
      Inc(Result);

    Inc(C);
  UNTIL C>=Lista.Items.Count;

END;


FUNCTION PISValido( PIS : String ) : Boolean;
var
  i, wSoma, wM11, wDv, wDigito : Integer;
begin

  Result:=FALSE;

  Pis := OnlyNumbersOnString(Pis);

  If AllTrim( PIS ) = '' Then
    Exit;

  if Length(Pis) <> 11 then
    Exit;  

  wDv   := Str2Num( Copy( PIS, 11, 1 ) );
  wSoma := 0;
  wM11  := 2;

  For i := 1 To 10 Do Begin
    wSoma := wSoma + ( wM11 * Str2Num( Copy( PIS, 11 - I, 1 ) ) );
    If wM11 < 9 Then
      wM11 := wM11 + 1
    Else
      wM11 := 2;
  End;

  wDigito := 11 - ( wSoma Mod 11 );

  If wDigito > 9 Then
    wDigito := 0;

  If wDv = wDigito Then
    Result := True
  Else
    Result := False;

end;


FUNCTION OrdAlfabetico ( Ch : Char ) : Word;
VAR
  St     : String;
BEGIN

  Result:=0;

  If Ch='' Then Exit;

  St:=Ch;
  St:=RemovaAcentos(St);
  Ch:=St[1];

  Case Ch of
    '-' : Result:=1;
    ' ' : Result:=2;
    '!' : Result:=3;
    '"' : Result:=4;
    '#' : Result:=5;
    '$' : Result:=6;
    '%' : Result:=7;
    '&' : Result:=8;
    '(' : Result:=9;
    ')' : Result:=10;
    '*' : Result:=11;
    ',' : Result:=12;
    '.' : Result:=13;
    '/' : Result:=14;
    ':' : Result:=15;
    ';' : Result:=16;
    '?' : Result:=17;
    '@' : Result:=18;
    '[' : Result:=19;
    '\' : Result:=20;
    ']' : Result:=21;
    '^' : Result:=22;
    '_' : Result:=23;
    '`' : Result:=24;
    '{' : Result:=25;
    '|' : Result:=26;
    '}' : Result:=27;
    '~' : Result:=28;
    '+' : Result:=29;
    '<' : Result:=30;
    '=' : Result:=31;
    '>' : Result:=32;
    '0' : Result:=33;
    '1' : Result:=34;
    '2' : Result:=35;
    '3' : Result:=36;
    '4' : Result:=37;
    '5' : Result:=38;
    '6' : Result:=39;
    '7' : Result:=40;
    '8' : Result:=41;
    '9' : Result:=42;
    'A' : Result:=43;
    'a' : Result:=44;
    'b' : Result:=45;
    'B' : Result:=46;
    'c' : Result:=47;
    'C' : Result:=48;
    'D' : Result:=49;
    'd' : Result:=50;
    'e' : Result:=51;
    'E' : Result:=52;
    'F' : Result:=53;
    'f' : Result:=54;
    'g' : Result:=55;
    'G' : Result:=56;
    'H' : Result:=57;
    'h' : Result:=58;
    'i' : Result:=59;
    'I' : Result:=60;
    'J' : Result:=61;
    'j' : Result:=62;
    'k' : Result:=63;
    'K' : Result:=64;
    'L' : Result:=65;
    'l' : Result:=66;
    'm' : Result:=67;
    'M' : Result:=68;
    'N' : Result:=69;
    'n' : Result:=70;
    'O' : Result:=71;
    'o' : Result:=72;
    'p' : Result:=73;
    'P' : Result:=74;
    'q' : Result:=75;
    'Q' : Result:=76;
    'r' : Result:=77;
    'R' : Result:=78;
    'S' : Result:=79;
    's' : Result:=80;
    't' : Result:=81;
    'T' : Result:=82;
    'u' : Result:=83;
    'U' : Result:=84;
    'V' : Result:=85;
    'v' : Result:=86;
    'w' : Result:=87;
    'W' : Result:=88;
    'x' : Result:=89;
    'X' : Result:=90;
    'Y' : Result:=91;
    'y' : Result:=92;
    'z' : Result:=93;
    'Z' : Result:=94;
  Else

    Result:=Ord(Ch)+300;

  End;



END;


FUNCTION REP_TempoEntreBatidas ( Entrada, Saida : Longint ) : Longint;
VAR
  Horas  : Longint;
BEGIN

  Horas:=0;

  If Saida>Entrada Then
    Horas:=Horas+Saida-Entrada;

  If Saida<Entrada Then Begin
    Horas:=Horas+(TimeToInt('24:00')-Entrada);
    Horas:=Horas+Saida;
  End;

  Result:=Horas;

END;

FUNCTION ConectadoAInternet : Boolean;
VAR
  Dos    : TStringList;

LABEL FIM;
BEGIN

  Result:=FALSE;
  Dos:=TStringList.Create;

  If Ping('google.com.br', 5, Dos) Then Begin
    Result:=TRUE;
    Goto FIM;
  End;

  If Ping('task.com.br', 5, Dos) Then Begin
    Result:=TRUE;
    Goto FIM;
  End;

  If Ping('globo.com', 5, Dos) Then Begin
    Result:=TRUE;
    Goto FIM;
  End;


FIM:
  Dos.Free;

END;


FUNCTION Ping ( EnderecoPING : String; TimeOut_Segundos : Word; DOSOutPut : TStringList ) : Boolean;

  procedure RunDosInMemo(DosApp:String; Texto : TStringList);
  const
     ReadBuffer = 2400;
  var
   Security            : TSecurityAttributes;
   ReadPipe,WritePipe  : THandle;
   start               : TStartUpInfo;
   ProcessInfo         : TProcessInformation;
   Buffer              : Pchar;
   BytesRead           : DWord;
   Apprunning          : DWord;
  begin
   Texto.Clear;
   With Security do begin
    nlength              := SizeOf(TSecurityAttributes);
    binherithandle       := true;
    lpsecuritydescriptor := nil;
   end;
   if Createpipe (ReadPipe, WritePipe,
                  @Security, 0) then begin
    Buffer  := AllocMem(ReadBuffer + 1);
    FillChar(Start,Sizeof(Start),#0);
    start.cb          := SizeOf(start);
    start.hStdOutput  := WritePipe;
    start.hStdInput   := ReadPipe;
    start.dwFlags     := STARTF_USESTDHANDLES +
                         STARTF_USESHOWWINDOW;
    start.wShowWindow := SW_HIDE;
     if CreateProcess(nil,
           PChar(DosApp),
           @Security,
           @Security,
           true,
           NORMAL_PRIORITY_CLASS,
           nil,
           nil,
           start,
           ProcessInfo)
    then
    begin
     repeat
      Apprunning := WaitForSingleObject
                   (ProcessInfo.hProcess,100);
      Application.ProcessMessages;
     until (Apprunning <> WAIT_TIMEOUT);
      Repeat
        BytesRead := 0;
        ReadFile(ReadPipe,Buffer[0],
              ReadBuffer,BytesRead,nil);
        Buffer[BytesRead]:= #0;
        OemToAnsi(Buffer,Buffer);
        Texto.Text := Texto.text + String(Buffer);
      until (BytesRead < ReadBuffer);
   end;
   FreeMem(Buffer);
   CloseHandle(ProcessInfo.hProcess);
   CloseHandle(ProcessInfo.hThread);
   CloseHandle(ReadPipe);
   CloseHandle(WritePipe);
   end;
  end;

VAR
  St                                : String;
  Dos                               : TStringList;

LABEL FIM;
BEGIN

  Result:=FALSE;
  Dos:=TStringList.Create;
  DOSOutPut.Clear;
  
  RunDosInMemo( 'PING.EXE '+EnderecoPING+' -l 1 -n 1 -w '+InttoStr(TimeOut_Segundos*1000), Dos);

  If Dos.Count=0 Then
    Goto FIM;


  Dos.Text:=BlasterUpper(Dos.Text);
  DOSOutPut.Text:=Dos.Text;


  If (Pos('HOST DESCONHECIDO',Dos.Text)<>0) Then
    Goto FIM;


  If (Pos('(0%',Dos.Text)<>0) Then
    Result:=TRUE;

  
FIM:
  Dos.Free;

END;


function  FormataPIS(PIS : string): string;
begin

  Result := '';

  Pis := Trim(Pis);

  if Pis = '' then
    Exit;

  if Pis = '0' then
    Exit;

  FillLeftFloat(11, Str2FLoat(OnlyNumbersOnString(PIS)));

  result := Copy(PIS,  1, 3) + '.' +
            Copy(PIS,  4, 5) + '.' +
            Copy(PIS,  9, 2) + '-' +
            PIS[11];

end;


FUNCTION  ValidateTXTFILE_LoadFromFile_BigStrings( FileName : String; Conteudo : TStringList; Senha1, Senha2 : Integer ) : Boolean;
VAR
  St, T    : String;
  cSum     : String;
  PosSenha : Longint;
  Ok       : Boolean;

BEGIN
{$I-}
  Result:=FALSE;

  If Conteudo=NIL Then
    Conteudo:=TStringList.Create;

  Conteudo.Clear;

  If Not FileExists(FileName) Then Exit;

  Try
    Conteudo.LoadFromFile(FileName);
  Except
    Conteudo.Clear;
    Exit;
  End;

  If Conteudo.Count<2 Then Exit;


  (* Excluindo linhas em branco no final do arquivo *)
  Ok:=FALSE;
  REPEAT
    If AllTrim(Conteudo.Strings[Conteudo.Count-1])='' Then
      Conteudo.Delete(Conteudo.Count-1)
    Else
      OK:=TRUE;
  UNTIL (Ok) Or (Conteudo.Count=0);


  If ReturnCheckSum_BigStrings(Conteudo.Strings[Conteudo.Count-2],Senha1,Senha2)<>Conteudo.Strings[Conteudo.Count-1] Then
    If ReturnCheckSum_BigStrings(Conteudo.Strings[Conteudo.Count-2],Senha1,Senha2)<>Conteudo.Strings[Conteudo.Count-1] Then
      Exit;
    

  Conteudo.Delete(Conteudo.Count-1);  // Deleta o Segundo CheckSum
  St:=Conteudo.Strings[Conteudo.Count-1];
  Conteudo.Delete(Conteudo.Count-1);  // Deleta o CheckSum Principal

  cSum:=ReturnCheckSum_BigStrings(Conteudo.Text,Senha1,Senha2);

  (* Definindo a posicao em que a senha vai entrar *)
  If Conteudo.Count<16 Then
    PosSenha:=16
  Else
    If Conteudo.Count<100 Then
      PosSenha:=Conteudo.Count
    Else Begin  // Mais de 100 linhas
      T:=InttoStr(Conteudo.Count);
      Delete(T,1,Length(T)-2);
      PosSenha:=Str2Num(T);
    End;

  Delete(St,1,PosSenha-1);
  If Pos(cSum,St)=1 Then Begin

    Result:=TRUE

  End Else Begin

    If GetfileSize(FileName)>400000 Then Begin
      // 05/08/2013 - Tenho problema nesta funcao qdo o arquivo é muito grande (>400k).
      // Vou testar apenas a parte mais significativa dos primeiros 8 digitos
      REPEAT
        Delete(cSum, Length(cSum),1);
        If Pos(cSum,St)=1 Then
         Result:=TRUE
      UNTIL (Length(cSum)<8) Or (Result);
    End;

  End;


END;


FUNCTION  ValidateTXTFILE_SaveToFile_BigStrings ( Conteudo : TStringList; FileName : String; Senha1, Senha2 : Integer ) : Boolean;
VAR
  St, T    : String;
  cSum     : String;
  PosSenha : Longint;

BEGIN
{$I-}
  Result:=FALSE;
  If Conteudo=NIL Then Exit;
  If Conteudo.Count=0 Then Exit;

  St:=GereNumerosAleatorios(100);

  cSum:=ReturnCheckSum_BigStrings(Conteudo.Text,Senha1,Senha2);

  (* Definindo a posicao em que a senha vai entrar *)
  If Conteudo.Count<16 Then
    PosSenha:=16
  Else
    If Conteudo.Count<100 Then
      PosSenha:=Conteudo.Count
    Else Begin  // Mais de 100 linhas
      T:=InttoStr(Conteudo.Count);
      Delete(T,1,Length(T)-2);
      PosSenha:=Str2Num(T);
    End;

  Insert(cSum,St,PosSenha);  // CheckSum inserido na posicao calculada
  Conteudo.Add(St);
  Conteudo.Add(ReturnCheckSum_BigStrings(St,Senha1,Senha2));  // Segunda linha com checkSum da linha anterior;

  If FileExists(FileName) Then
    SysUtils.DeleteFile(FileName);

  Try
    Conteudo.SaveToFile(FileName)
  Except
    Conteudo.Delete(Conteudo.Count-1);
    Exit;
  End;

  Conteudo.Delete(Conteudo.Count-1);
  Result:=TRUE;

END;


FUNCTION  ValidateTXTFILE_Gere_BigStrings( VAR Conteudo : TStringList; Senha1, Senha2 : Integer ) : Boolean;
VAR
  St, T    : String;
  cSum     : String;
  PosSenha : Longint;

BEGIN
{$I-}
  Result:=FALSE;
  If Conteudo=NIL Then Exit;
  If Conteudo.Count=0 Then Exit;

  St:=GereNumerosAleatorios(100);

  cSum:=ReturnCheckSum_BigStrings(Conteudo.Text,Senha1,Senha2);

  (* Definindo a posicao em que a senha vai entrar *)
  If Conteudo.Count<16 Then
    PosSenha:=16
  Else
    If Conteudo.Count<100 Then
      PosSenha:=Conteudo.Count
    Else Begin  // Mais de 100 linhas
      T:=InttoStr(Conteudo.Count);
      Delete(T,1,Length(T)-2);
      PosSenha:=Str2Num(T);
    End;

  Insert(cSum,St,PosSenha);  // CheckSum inserido na posicao calculada
  Conteudo.Add(St);
  Conteudo.Add(ReturnCheckSum_BigStrings(St,Senha1,Senha2));  // Segunda linha com checkSum da linha anterior;


  Result:=TRUE;

END;

FUNCTION  ValidateTXTFILE_Leia_BigStrings( Var Conteudo : TStringList; Senha1, Senha2 : Integer ) : Boolean;
VAR
  St, T    : String;
  cSum     : String;
  PosSenha : Longint;

BEGIN
{$I-}
  Result:=FALSE;

  If Conteudo.Count<2 Then Exit;

  If ReturnCheckSum_BigStrings(Conteudo.Strings[Conteudo.Count-2],Senha1,Senha2)<>Conteudo.Strings[Conteudo.Count-1] Then
    Exit;

  Conteudo.Delete(Conteudo.Count-1);  // Deleta o Segundo CheckSum
  St:=Conteudo.Strings[Conteudo.Count-1];
  Conteudo.Delete(Conteudo.Count-1);  // Deleta o CheckSum Principal

  cSum:=ReturnCheckSum_BigStrings(Conteudo.Text,Senha1,Senha2);

  (* Definindo a posicao em que a senha vai entrar *)
  If Conteudo.Count<16 Then
    PosSenha:=16
  Else
    If Conteudo.Count<100 Then
      PosSenha:=Conteudo.Count
    Else Begin  // Mais de 100 linhas
      T:=InttoStr(Conteudo.Count);
      Delete(T,1,Length(T)-2);
      PosSenha:=Str2Num(T);
    End;

  Delete(St,1,PosSenha-1);
  If Pos(cSum,St)=1 Then
    Result:=TRUE;

END;


Procedure AjustaLarguraDaBorda_Windows7e8;  // Este processo é para retirar a borda GORDA do Windows 7, 8, 2008, 2012 que prejudica o visual do LBC
Var
  Registro: TRegistry;
Begin

  Try
    Registro         := TRegistry.Create;
    Registro.RootKey := HKEY_CURRENT_USER;
    Registro.OpenKey('Control Panel\Desktop\WindowMetrics', False);
    Registro.WriteString('BorderWidth',       '0');
    Registro.WriteString('PaddedBorderWidth', '0');
  Finally
    Registro.Free;
  End;

end;

END.

