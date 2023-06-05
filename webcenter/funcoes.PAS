unit Funcoes;

interface
uses
  WinTypes, WinProcs, Messages, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, ExtCtrls, StdCtrls, Mask, DB, Grids,
  SysUtils, ShellApi, Variants, Math, StrUtils;

type Oper=(Ins, Alt);

function PosEnd(const substr, str: string): integer; // busca a partir do final da string
function AproximaInteiro(ValorReal: Real): Integer;
function EntreDatas(Data, Data1, Data2: string): boolean;
function CompletarComZeros(inString:string; tamanho:integer):string;
function CompletarComEspacos(inString:string; tamanho:integer):string;
function Complet_space_Dir(inString:string; tamanho:integer):string;
function clip( pal : string; mov : byte; cl : boolean ): string;
function RetornaUmDiaDeSegundaaSexta(DataAnalise:TDateTime): TDateTime;
function RetornaUmDiaDeSegundaaSabado(DataAnalise:TDateTime): TDateTime;
function AlterarCorGrafico(AOwner : TComponent; AColor : TColor) : TColor;
function IsLeapYear(year:word): Boolean;
function Month(Mes: Integer): String;  // Mes em extenso
function DaysMonth(Date: TDateTime): Integer; // qtde dias no mes
function Arredonda(Real1:real; Decimais:integer):string;
function ArredondaR(Real1:real; Decimais:integer):Real;
function TruncDecimal(ValorReal:Real;CasasDecimais:Integer):Real;
function VerificaSeEInteiro(Inteiro:string): boolean;
function FormaString(Campo:String; Tamanho:Byte; Dir: Boolean; Espec: Boolean ): String;
function RetornaDataEspecificada(DataAnalise:TDateTime;DiaSemana:integer):TDateTime;
function SoNumeros(V: Variant): Boolean;
function CustomShellExecute(FName, FParam: string; RaiseException: Boolean): Boolean;
Function Right(inString : String; numChars : Byte) : String;
function ChecaCPF(num: string): boolean;
function ChecaCGC(num: string): boolean;
function TiraAcento(str: String): String;
Function DiferencaEntreHoras(Hora_Final:TTime;Hora_Inicial:TTime):String;
function Modulo10(Valor: String) : string;
function Modulo11(Valor: String; Base: Integer = 9; Resto : boolean = false) : string;
function Potencia(Base, Expoente : Extended) : Extended;
Function Centralizar(inString : String; numChars : Integer) : String;

implementation


function PosEnd(const substr, str: string): Integer; // busca a partir do final da string
begin
  result := pos(substr,ReverseString(str));
end;

function AproximaInteiro(ValorReal: Real): Integer;
var ValorStr, ValorStr2, Letra: String;    {Se 10 -> 10}
    TamValor, i, ValorInt: Integer;        {Se 2,3 -> 3}
    AchouVirgula: boolean;                 {Se 6,8 -> 7}
begin
   ValorStr:= FloatToStr(ValorReal);
   TamValor:= Length(ValorStr)+1;
   AchouVirgula:= False;
   i:=1;
   While i<TamValor do
   begin
      Letra:= Copy(ValorStr,i,1);
      if Letra <> ','
        then ValorStr2:= ValorStr2+Letra
      else
      begin
         AchouVirgula:= True;
         inc(i,TamValor+1);
      end;
      inc(i);
   end;
   ValorInt:= StrToInt(ValorStr2);

   if AchouVirgula
     then Inc(ValorInt,1);

   AproximaInteiro:= ValorInt;
end;

function EntreDatas(Data, Data1, Data2: string): boolean;
var data1Ok, data2Ok: boolean;    {Verifica de Data está entre as Datas 1 e 2}
begin
 if (((((Data<>'  /  /  ')  and (Data<>'  /  /    ')) and (Trim(Data)<>'')) and
        (Data<>'00/00/00')) and (Data<>'00/00/0000'))
 then begin
   if (((((Data1<>'  /  /  ')  and (Data1<>'  /  /    ')) and (Trim(Data1)<>'')) and
          (Data1<>'00/00/00')) and (Data1<>'00/00/0000'))
   then begin
          if StrToDate(Data) >= StrToDate(data1)
          then data1Ok:= true
          else data1Ok:= false;
        end
   else data1Ok:= true;
   if (((((Data2<>'  /  /  ')  and (Data2<>'  /  /    ')) and (Trim(data2)<>'')) and
          (Data2<>'00/00/00')) and (Data2<>'00/00/0000'))
   then begin
          if StrToDate(Data)<= StrToDate(data2)
          then data2Ok:= true
          else data2Ok:= false;
        end
   else data2Ok:= true;
   EntreDatas:= (data1Ok)and(Data2Ok);
 end
 else EntreDatas:= false;
end;

function CompletarComZeros(inString:string; tamanho:integer):string;
var TamInString,i: integer;
    AuxString: string;
begin
   AuxString:='';
   TamInString:= Length(inString);

   for i:=1 to tamanho-TamInString
   do AuxString:= AuxString+'0';

   CompletarComZeros:= AuxString+InString;
end;

function CompletarComEspacos(inString:string; tamanho:integer):string;
var TamInString,i: integer;
    AuxString: string;
begin
   AuxString:='';
   TamInString:= Length(inString);

   for i:=1 to tamanho-TamInString
   do AuxString:= AuxString+' ';

   CompletarComEspacos:= AuxString+InString;
end;

function Complet_space_Dir(inString:string; tamanho:integer):string;
var TamInString,i: integer;
    AuxString: string;
begin
   AuxString:='';
   TamInString:= Length(inString);

   for i:=1 to tamanho-TamInString
   do AuxString:= AuxString+' ';

   Complet_space_Dir:= InString+AuxString;
end;


function clip( pal : string; mov : byte; cl : boolean ): string;
var clip1 : string;
    x : integer;
    car : byte;
begin
  clip1:='';
  for x := 1 to length(pal) do
  begin
    car := ord(pal[x]);
    if cl then
      clip1 := clip1 + chr( (car+car) - mov )
    else
       clip1 := clip1 + chr(Round((car+mov)/2));
  end;
  clip:= clip1;
end;

function RetornaUmDiaDeSegundaaSexta(DataAnalise:TDateTime): TDateTime;
var DiaSemana: integer;
    DataCompAtual: TDateTime;
begin  // Retorna um dia que não seje Final de Semana
   DiaSemana:= DayOfWeek(DataAnalise);
   if DiaSemana=1  // se domingo, acrescenta 1 dia na data
     then DataCompAtual:= DataAnalise+1
   else if DiaSemana=7  // se sábado, acrescenta 2 dias na data
          then DataCompAtual:= DataAnalise+2
        else DataCompAtual:= DataAnalise;  // Segunda a Sexta, permanece data
   RetornaUmDiaDeSegundaaSexta:= DataCompAtual;
   { 1 Domingo   2 Segunda    3 Terça    4 Quarta
     5 Quinta    6 Sexta      7 Sábado  }
end;

function RetornaUmDiaDeSegundaaSabado(DataAnalise:TDateTime): TDateTime;
var DiaSemana: integer;
    DataCompAtual: TDateTime;
begin  // Retorna um dia que não seje Final de Semana
   DiaSemana:= DayOfWeek(DataAnalise);
   if DiaSemana=1  // se domingo, acrescenta 1 dia na data
     then DataCompAtual:= DataAnalise+1
   else DataCompAtual:= DataAnalise;  // Segunda a Sabado, permanece data
   RetornaUmDiaDeSegundaaSabado:= DataCompAtual;
   // 1 Domingo   2 Segunda   3 Terça   4 Quarta   5 Quinta   6 Sexta   7 Sábado
end;

function AlterarCorGrafico(AOwner:TComponent; AColor:TColor):TColor;
Begin
  With TColorDialog.Create(AOwner) do
  try
    Color:=AColor;
    if Execute then AColor:=Color;
  finally
    Free;
  end;
  result:=AColor;
end;

//****************************************************************************
function IsLeapYear(year:word): Boolean;
begin
  Result := (Year mod 4 = 0) 	{ years divisible by 4 are... }
    and ((Year mod 100 <> 0)	{ ...except century years... }
    or (Year mod 400 = 0));	{ ...unless it's divisible by 400 }
end;

//----------------------------------------------------------------------------
function Month(Mes: Integer): String;
const Months: array[1..12] of String = ('Janeiro','Fevereiro','Março','Abril',
                                        'Maio','Junho','Julho','Agosto','Setembro',
                                        'Outubro','Novembro','Dezembro');
begin  // Retorna o mês em string
   if ((Mes>=1) and (Mes<=12))
     then Month:= Months[Mes]
   else Month:= '';
end;

//----------------------------------------------------------------------------
function DaysMonth(Date: TDateTime): Integer;
const DaysPerMonth: array[1..12] of Integer =
      (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);	{ usual numbers of days }
var day,month,year:word;
begin
   DecodeDate(Date,year,month,day);
   Result := DaysPerMonth[Month];	{ normally, just return number }
   if (Month = 2) and IsLeapYear(year) then Inc(Result);	{ plus 1 in leap February }
end;

//----------------------------------------------------------------------------
function Arredonda(Real1:real; Decimais:integer):string;
var Valor: String;
begin  // Arredonda Casas Decimais Ex: 1,2584745 -> 1,26  5,13333333 -> 5,13
   Valor:= FloattoStrF(Real1,ffNumber,15,Decimais);
   Arredonda:= Valor;
end;

//----------------------------------------------------------------------------
function Arredondar(Real1:real; Decimais:integer):Real;
var Valor, ValorSemMilhar: String;
    i, Tamanho: integer;
    Caracter: String;
begin  // Arredonda Casas Decimais Ex: 1,2584745 -> 1,26  5,13333333 -> 5,13
   Valor:= FloattoStrF(Real1,ffNumber,15,Decimais);
   Tamanho:= Length(Valor); ValorSemMilhar:= '';
   for i:=1 to Tamanho do
   begin
      Caracter:= Copy(Valor,i,1);
      if Caracter <> '.'
        then ValorSemMilhar:= ValorSemMilhar + Caracter;
   end;
   ArredondaR:= StrToFloat(ValorSemMilhar); // Retorna um Real
end;

//----------------------------------------------------------------------------
function TruncDecimal(ValorReal:Real;CasasDecimais:Integer):Real;
// Trunca Casas Decimais Ex: 1,2584745 -> 1,25  5,13333333 -> 5,13
var Fator, i: integer;
    sFator: string;
    rCobaia: real;
begin
   // Ex: Int(Valor*100)/100
   sFator:= '1';
   for i:=1 to CasasDecimais do
   begin
      sFator:= sFator + '0';
   end;
   Fator:= StrToInt(sFator);
   rCobaia:= (Int(ValorReal*Fator))/100;
   TruncDecimal:= rCobaia;
end;

//----------------------------------------------------------------------------
function VerificaSeEInteiro(Inteiro:string): boolean;
// Retorna se a string passada pode ser convertida num inteiro
begin
   if (Trim(Inteiro)= '0') or (Trim(Inteiro)= '1') or (Trim(Inteiro)= '2') or
      (Trim(Inteiro)= '3') or (Trim(Inteiro)= '4') or (Trim(Inteiro)= '5') or
      (Trim(Inteiro)= '6') or (Trim(Inteiro)= '7') or (Trim(Inteiro)= '8') or
      (Trim(Inteiro)= '9') then VerificaSeEInteiro:= True
   else VerificaSeEInteiro:= False;
end;

//----------------------------------------------------------------------------
function FormaString(Campo: String; Tamanho:Byte; Dir: Boolean; Espec: Boolean ): String;
// Retorna string de tamanho especificado, podendo ou não conter caracteres especiais
var i: Word;
    Retorna: String;
begin
  Retorna:= '';
  for i := 1 to Length(Campo) do
  begin
    if Espec then Retorna:= Retorna + Campo[i]
    else if (Campo[i] in ['0'..'9']) or
            (Campo[i] in ['A'..'Z']) or
            (Campo[i] in ['a'..'z'])
           then Retorna:= Retorna + Campo[i];
  end;
  if Length(Retorna) > Tamanho then Retorna:= Copy(Retorna,1 ,Tamanho);
  if dir  // alinhar à direita
    then Result:= StringOfChar(' ', Tamanho - Length(Retorna)) + Retorna
  else Result:= Retorna + StringOfChar(' ', Tamanho - Length(Retorna));
end;


function RetornaDataEspecificada(DataAnalise:TDateTime;DiaSemana:integer):TDateTime;
var dData: TDateTime;
begin
// DiaSemana = 1 -> Domingo  2 -> Segunda  3 -> Terca  4 -> Quarta  5 -> Quinta
// 6 -> Sexta  7 -> Sábado
   if (DiaSemana < 1) or (DiaSemana > 7)  // se não digitou de domingo à sábado
     then DiaSemana:= 2;    // calcula como se fosse na segunda.
   dData:= DataAnalise;

   While (DayOfWeek(dData)) <> DiaSemana do
   begin
      dData:= dData + 1;
   end;
   RetornaDataEspecificada:= dData;
end;

//******************************************************************************
// Retorna True se só existirem valores núméricos (['0'..'9',','])
function SoNumeros(V: Variant): Boolean;
var
  i: Word;
  Str: String;
begin
  Str := V;
  Result := True;
  for i := 1 to Length( Str ) do begin
    if not (Str[i] in ['0'..'9',',']) then begin
      Result := False;
      Exit;
    end;
  end;
end;

//******************************************************************************
// Abre um programa ou documento executando um exceção caso haja problemas
function CustomShellExecute(FName, FParam: string; RaiseException: Boolean): Boolean;
var
  ReturnVal: Integer;
begin
  ReturnVal := ShellExecute(Application.Handle, nil, PChar(FName), PChar(FParam),
                            PChar(ExtractFilePath(FName)), SW_SHOWNORMAL);
  Result := ReturnVal > 32;
  if (not Result) and RaiseException then
    raise Exception.Create(SysErrorMessage(GetLastError) + ' ('+FName+')');
end;

{+-------------------------------------------------------+}
{: Function :  RIGHT                                     :}
{+-------------------------------------------------------+}
{:    Syntax : RIGHT ( <expC> , <expN> )                 :}
{:                                                       :}
{:     where : <expC> = character string                 :}
{:             <expN> = number of characters to return   :}
{:                      Integer value                    :}
{:                                                       :}
{:    Action : Returns the rightmost <expN> portion of a :}
{:             character string <expC>                   :}
{:                                                       :}
{: Result Type :  String                                 :}
{+-------------------------------------------------------+}
Function Right(inString : String; numChars : Byte) : String;
Var
  index : Byte;
Begin
  If numChars >= Length(inString) Then
    Right := inString
  Else
    Begin
      index := Length(inString) - numChars+1;
      Right := Copy(inString,index,numChars)
    End
End;


{+-------------------------------------------------------+}
{: Function :  CENTRALIZAR                               :}
{+-------------------------------------------------------+}
{:    Syntax : CENTRALIZAR ( <expC> , <expN> )           :}
{:                                                       :}
{:     where : <expC> = texto a ser centralizado         :}
{:             <expN> = Numero de Caracteres na linha a  :}
{:                      centralizar - Integer value      :}
{:                                                       :}
{:    Action : Centraliza o Texto <expC> dentro do       :}
{:             espaço definido por <expN>                       :}
{:                                                       :}
{: Result Type :  String                                 :}
{+-------------------------------------------------------+}
Function Centralizar(inString : String; numChars : Integer) : String;
Var
  index : Integer;
Begin
  If numChars <= Length(inString) Then
    Centralizar := inString
  Else
    Begin
      index := (numChars - Length(inString)) div 2;
      Centralizar := CompletarComEspacos('', index)+inString;
    End;
End;



function ChecaCPF(num: string): boolean;
var
  n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
  d1,d2: integer;
  digitado, calculado: string;
begin
  if num = '' then ChecaCPF:=false
  else
  begin
    num := StringReplace(num, '.', '', [rfReplaceAll]);
    num := StringReplace(num, '-', '', [rfReplaceAll]);
    num := StringReplace(num, ' ', '', [rfReplaceAll]);
    n1:=StrToInt(num[1]);
    n2:=StrToInt(num[2]);
    n3:=StrToInt(num[3]);
    n4:=StrToInt(num[4]);
    n5:=StrToInt(num[5]);
    n6:=StrToInt(num[6]);
    n7:=StrToInt(num[7]);
    n8:=StrToInt(num[8]);
    n9:=StrToInt(num[9]);
    d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
    d1:=11-(d1 mod 11);
    if d1>=10 then d1:=0;
    d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
    d2:=11-(d2 mod 11);
    if d2>=10 then d2:=0;
    calculado:=inttostr(d1)+inttostr(d2);
    digitado:=num[10]+num[11];
    if calculado=digitado then ChecaCPF:=true
    else ChecaCPF:=false;
  end;
end;

function ChecaCGC(num: string): boolean;
var
  n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
  d1,d2: integer;
  digitado, calculado: string;
begin
  if num = '' then ChecaCGC:=false
  else
  begin
    num := StringReplace(num, '.', '', [rfReplaceAll]);
    num := StringReplace(num, '/', '', [rfReplaceAll]);
    num := StringReplace(num, '-', '', [rfReplaceAll]);
    num := StringReplace(num, ' ', '', [rfReplaceAll]);
    n1:=StrToInt(num[1]);
    n2:=StrToInt(num[2]);
    n3:=StrToInt(num[3]);
    n4:=StrToInt(num[4]);
    n5:=StrToInt(num[5]);
    n6:=StrToInt(num[6]);
    n7:=StrToInt(num[7]);
    n8:=StrToInt(num[8]);
    n9:=StrToInt(num[9]);
    n10:=StrToInt(num[10]);
    n11:=StrToInt(num[11]);
    n12:=StrToInt(num[12]);
    d1:=n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
    d1:=11-(d1 mod 11);
    if d1>=10 then d1:=0;
    d2:=d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
    d2:=11-(d2 mod 11);
    if d2>=10 then d2:=0;
    calculado:=inttostr(d1)+inttostr(d2);
    digitado:=num[13]+num[14];
    if calculado=digitado then ChecaCGC:=true
    else ChecaCGC:=false;
  end;
end;


function TiraAcento(str : String) : String;
var
  i: Integer;
begin
  for i := 1 to Length ( str ) do
    case str[i] of
      'á': str[i] := 'a';
      'é': str[i] := 'e';
      'í': str[i] := 'i';
      'ó': str[i] := 'o';
      'ú': str[i] := 'u';
      'à': str[i] := 'a';
      'è': str[i] := 'e';
      'ì': str[i] := 'i';
      'ò': str[i] := 'o';
      'ù': str[i] := 'u';
      'â': str[i] := 'a';
      'ê': str[i] := 'e';
      'î': str[i] := 'i';
      'ô': str[i] := 'o';
      'û': str[i] := 'u';
      'ä': str[i] := 'a';
      'ë': str[i] := 'e';
      'ï': str[i] := 'i';
      'ö': str[i] := 'o';
      'ü': str[i] := 'u';
      'ã': str[i] := 'a';
      'õ': str[i] := 'o';
      'ñ': str[i] := 'n';
      'ç': str[i] := 'c';
      'Á': str[i] := 'A';
      'É': str[i] := 'E';
      'Í': str[i] := 'I';
      'Ó': str[i] := 'O';
      'Ú': str[i] := 'U';
      'À': str[i] := 'A';
      'È': str[i] := 'E';
      'Ì': str[i] := 'I';
      'Ò': str[i] := 'O';
      'Ù': str[i] := 'U';
      'Â': str[i] := 'A';
      'Ê': str[i] := 'E';
      'Î': str[i] := 'I';
      'Ô': str[i] := 'O';
      'Û': str[i] := 'U';
      'Ä': str[i] := 'A';
      'Ë': str[i] := 'E';
      'Ï': str[i] := 'I';
      'Ö': str[i] := 'O';
      'Ü': str[i] := 'U';
      'Ã': str[i] := 'A';
      'Õ': str[i] := 'O';
      'Ñ': str[i] := 'N';
      'Ç': str[i] := 'C';
      'º': str[i] := 'o';
      'ª': str[i] := 'a';
    end;
  Result := str;
end;

Function DiferencaEntreHoras(Hora_Final:TTime;Hora_Inicial:TTime):String;
Var  A,M,H,M1,M2,H1,H2 : Real;
     T1,T2 : String;
Label Passa;
begin
  A  := 0;
  T1 := TimeToStr(Hora_Final);
  T2 := TimeToStr(Hora_Inicial);
  If (T1 <> '00:00:00') and (T2 <> '00:00:00') then
  begin
    M1 := StrToFloat(T1[4] + T1[5]);
    M2 := StrToFloat(T2[4] + T2[5]);
    If M1 = 0 then
    begin
      A := 1;
      M := 60 - M2;
      Goto Passa;
    end;
    If M1 > M2 then M := M1 - M2
    else M := M2 - M1;
  Passa:
    If M < 0 then M := 60 - M;
    If M > 60 then M := 60 - M;
    H1 := StrToFloat(T1[1] + T1[2]);
    H2 := StrToFloat(T2[1] + T2[2]);
    H  := H1 - H2;
    If H1 <> H2 then H  := H - A;
    Result := CompletarComZeros(FloatToStr(H),2) + ':' + CompletarComZeros(FloatToStr(M),2);
  end
  else
    Result := '00:00';
end;

function Modulo10(Valor: String) : string;
{
   Rotina usada para cálculo de alguns dígitos verificadores
   Pega-se cada um dos dígitos contidos no parâmetro VALOR, da direita para a
   esquerda e multiplica-se por 2121212...
   Soma-se cada um dos subprodutos. Caso algum dos subprodutos tenha mais de um
   dígito, deve-se somar cada um dos dígitos. (Exemplo: 7*2 = 14 >> 1+4 = 5)
   Divide-se a soma por 10.
   Faz-se a operação 10-Resto da divisão e devolve-se o resultado dessa operação
   como resultado da função Modulo10.
   Obs.: Caso o resultado seja maior que 9, deverá ser substituído por 0 (ZERO).
}
var
   Auxiliar : string;
   Contador, Peso : integer;
   Digito : integer;
begin
   Auxiliar := '';
   Peso := 2;
   for Contador := Length(Valor) downto 1 do
   begin
      Auxiliar := IntToStr(StrToInt(Valor[Contador]) * Peso) + Auxiliar;
      if Peso = 1 then
         Peso := 2
      else
         Peso := 1;
   end;

   Digito := 0;
   for Contador := 1 to Length(Auxiliar) do
   begin
      Digito := Digito + StrToInt(Auxiliar[Contador]);
   end;
   Digito := 10 - (Digito mod 10);
   if (Digito > 9) then
      Digito := 0;
   Result := IntToStr(Digito);
end;

function Modulo11(Valor: String; Base: Integer = 9; Resto : boolean = false) : string;
{
   Rotina muito usada para calcular dígitos verificadores
   Pega-se cada um dos dígitos contidos no parâmetro VALOR, da direita para a
   esquerda e multiplica-se pela seqüência de pesos 2, 3, 4 ... até BASE.
   Por exemplo: se a base for 9, os pesos serão 2,3,4,5,6,7,8,9,2,3,4,5...
   Se a base for 7, os pesos serão 2,3,4,5,6,7,2,3,4...
   Soma-se cada um dos subprodutos.
   Divide-se a soma por 11.
   Faz-se a operação 11-Resto da divisão e devolve-se o resultado dessa operação
   como resultado da função Modulo11.
   Obs.: Caso o resultado seja maior que 9, deverá ser substituído por 0 (ZERO).
}
var
   Soma : integer;
   Contador, Peso, Digito : integer;
begin
   Soma := 0;
   Peso := 2;
   for Contador := Length(Valor) downto 1 do
   begin
      Soma := Soma + (StrToInt(Valor[Contador]) * Peso);
      if Peso < Base then
         Peso := Peso + 1
      else
         Peso := 2;
   end;

   if Resto then
      Result := IntToStr(Soma mod 11)
   else
   begin
      Digito := 11 - (Soma mod 11);
      if (Digito > 9) then
         Digito := 0;
      Result := IntToStr(Digito);
   end
end;

function Potencia(Base, Expoente : Extended) : Extended;
begin
  Potencia := Exp(Expoente * Ln(Base));
end;

end.
