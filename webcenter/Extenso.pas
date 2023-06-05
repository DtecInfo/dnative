unit Extenso;

interface

Uses SysUtils;

type
       TNumeroStr = string;

const
         Unidades: array[1..19] of TNumeroStr = ('um', 'dois', 'tres', 'quatro','cinco', 'seis', 'sete', 'oito', 'nove', 'dez', 'onze', 'doze',
         'treze', 'quatorze', 'quinze', 'dezesseis', 'dezessete', 'dezoito','dezenove');

         Dezenas: array[1..9] of TNumeroStr = ('dez', 'vinte', 'trinta', 'quarenta','cinquenta', 'sessenta', 'setenta', 'oitenta', 'noventa');

         Centenas: array[1..9] of TNumeroStr = ('cem', 'duzentos', 'trezentos','quatrocentos', 'quinhentos', 'seiscentos', 'setecentos', 'oitocentos','novecentos');

         ErrorString = 'Valor fora da faixa';
         Min = 0.01;
         Max = 4294967295.99;
         Moeda = ' real';
         Moedas = ' reais';
         Centesimo = 'centavo ';
         Centesimos = 'centavos ';

function NumeroParaExtenso(parmNumero: Real): string;
function ConversaoRecursiva(N: LongWord): string;

implementation

function NumeroParaExtenso(parmNumero: Real): string;
begin
        if (parmNumero >= Min) and (parmNumero <= Max) then
        begin
       {Tratar reais}
                Result := ConversaoRecursiva(Round(Int(parmNumero)));
                if Round(Int(parmNumero)) = 1 then
                    Result := trim(Result) + Moeda
                else
                    if Round(Int(parmNumero)) <> 0 then
                       Result := trim(Result) + Moedas;

                    {Tratar centavos}
                    if not(Frac(parmNumero) = 0.00) then
                    begin
                            if Round(Int(parmNumero)) <> 0 then
                                Result := Result + ' e ';
                                Result := Result + ConversaoRecursiva(Round(Frac(parmNumero) * 100));
                                if (Round(Frac(parmNumero) * 100) = 1) then
                                    Result := trim(Result) + centesimo
                                    else
                                            Result := trim(Result) + centesimos;
                                end;
                            end
                    else
                    raise ERangeError.CreateFmt('%g ' + ErrorString + ' %g..%g',[parmNumero, Min, Max]);
end;

function ConversaoRecursiva(N: LongWord): string;
begin
        case N of
                1..19:
                        Result := Unidades[N];
                20, 30, 40, 50, 60, 70, 80, 90:
                        Result := Dezenas[N div 10] + ' ';
                21..29, 31..39, 41..49, 51..59, 61..69, 71..79, 81..89, 91..99:
                        Result := Dezenas[N div 10] + ' e ' + ConversaoRecursiva(N mod 10);
                100, 200, 300, 400, 500, 600, 700, 800, 900:
                        Result := Centenas[N div 100] + ' ';
                101..199:
                        Result := ' cento e ' + ConversaoRecursiva(N mod 100);
                201..299, 301..399, 401..499, 501..599, 601..699, 701..799, 801..899, 901..999:
                        Result := Centenas[N div 100] + ' e ' + ConversaoRecursiva(N mod 100);
                1000..999999:
                        Result := ConversaoRecursiva(N div 1000) + ' mil ' + ConversaoRecursiva(N mod 1000);
                1000000..1999999:
                        Result := ConversaoRecursiva(N div 1000000) + ' milhão '+ ConversaoRecursiva(N mod 1000000);
                2000000..999999999:
                        Result := ConversaoRecursiva(N div 1000000) + ' milhões '+ ConversaoRecursiva(N mod 1000000);
                1000000000..1999999999:
                        Result := ConversaoRecursiva(N div 1000000000) + ' bilhão ' + ConversaoRecursiva(N mod 1000000000);
                2000000000..4294967295:
                        Result := ConversaoRecursiva(N div 1000000000) + ' bilhões ' + ConversaoRecursiva(N mod 1000000000);
        end;
end;

end.
