/// //////////////////////////////////////////////////////////////////////////
{
  Unit Format
  Criação: 99 Coders (Heber Stein Mazutti - heber@99coders.com.br)
  Versão: 1.3
}
/// //////////////////////////////////////////////////////////////////////////

unit UFormat;

interface

uses System.SysUtils, Vcl.StdCtrls, Classes, System.MaskUtils;

type
  TFormato = (CNPJ, CPF, InscricaoEstadual, CNPJorCPF, TelefoneFixo,
    FixoouCelular, Celular, Personalizado, Valor, Money,porcento, CEP, Dt, Peso,
    PriNivel, SegNivel, TerNivel, QuaNivel);

procedure Formatar(Obj: TObject; Formato: TFormato; Extra: string = '');
function SomenteNumero(str: string): string;
function FormataValorSDiv(str: string): string;

function PrencheVazioCom0(str: string): string;

implementation

function SomenteNumero(str: string): string;
var
  x: integer;
begin
  Result := '';
  for x := 0 to Length(str) - 1 do
    if (str.Chars[x] In ['0' .. '9']) then
      Result := Result + str.Chars[x];
end;

function FormataValor(str: string): string;
begin
  if str = '' then
  begin
    str := '0';
  end;

  try
    Result := FormatFloat('#,##0.00', strtofloat(str));
//    Result := FormatFloat('#,##0.00', strtofloat(str) / 100); // Antigo com divisao
  except
    Result := FormatFloat('#,##0.00', 0);
  end;
end;

function FormataValorSDiv(str: string): string;
begin
  if str = '' then
  begin
    str := '0';
  end;

  try
    Result := FormatFloat('#,##0.00', strtofloat(str));
  except
    Result := FormatFloat('#,##0.00', 0);
  end;
end;


function PrencheVazioCom0(str: string): string;
begin
  if str.IsEmpty then
  begin
    Result := '0';
  end;
end;

function FormataPeso(str: string): string;
begin
  if str.IsEmpty then
  begin
    str := '0';
  end;

  try
    Result := FormatFloat('#,##0.000', strtofloat(str) );
  except
    Result := FormatFloat('#,##0.000', 0);
  end;
end;

function Mask(Mascara, str: string): string;
var
  x, p: integer;
begin
  p := 0;
  Result := '';

  if str.IsEmpty then
    exit;

  for x := 0 to Length(Mascara) - 1 do
  begin
    if Mascara.Chars[x] = '#' then
    begin
      Result := Result + str.Chars[p];
      inc(p);
    end
    else
      Result := Result + Mascara.Chars[x];

    if p = Length(str) then
      break;
  end;
end;

function FormataIE(Num, UF: string): string;
var
  Mascara: string;
begin
  Mascara := '';
  IF UF = 'AC' Then
    Mascara := '##.###.###/###-##';
  IF UF = 'AL' Then
    Mascara := '#########';
  IF UF = 'AP' Then
    Mascara := '#########';
  IF UF = 'AM' Then
    Mascara := '##.###.###-#';
  IF UF = 'BA' Then
    Mascara := '######-##';
  IF UF = 'CE' Then
    Mascara := '########-#';
  IF UF = 'DF' Then
    Mascara := '###########-##';
  IF UF = 'ES' Then
    Mascara := '#########';
  IF UF = 'GO' Then
    Mascara := '##.###.###-#';
  IF UF = 'MA' Then
    Mascara := '#########';
  IF UF = 'MT' Then
    Mascara := '##########-#';
  IF UF = 'MS' Then
    Mascara := '#########';
  IF UF = 'MG' Then
    Mascara := '###.###.###/####';
  IF UF = 'PA' Then
    Mascara := '##-######-#';
  IF UF = 'PB' Then
    Mascara := '########-#';
  IF UF = 'PR' Then
    Mascara := '########-##';
  IF UF = 'PE' Then
    Mascara := '##.#.###.#######-#';
  IF UF = 'PI' Then
    Mascara := '#########';
  IF UF = 'RJ' Then
    Mascara := '##.###.##-#';
  IF UF = 'RN' Then
    Mascara := '##.###.###-#';
  IF UF = 'RS' Then
    Mascara := '###/#######';
  IF UF = 'RO' Then
    Mascara := '###.#####-#';
  IF UF = 'RR' Then
    Mascara := '########-#';
  IF UF = 'SC' Then
    Mascara := '###.###.###';
  IF UF = 'SP' Then
    Mascara := '###.###.###.###';
  IF UF = 'SE' Then
    Mascara := '#########-#';
  IF UF = 'TO' Then
    Mascara := '###########';

  Result := Mask(Mascara, Num);
end;

function FormataData(str: string): string;
begin
  str := Copy(str, 1, 8);

  if Length(str) < 8 then
    Result := Mask('##/##/####', str)
  else
  begin
    try
      str := Mask('##/##/####', str);
      strtodate(str);
      Result := str;
    except
      Result := '';
    end;
  end;
end;

procedure Formatar(Obj: TObject; Formato: TFormato; Extra: string = '');
var
  texto: string;
begin
  TThread.Queue(Nil,
    procedure
    begin
      if Obj is TEdit then
        texto := TEdit(Obj).Text;

      // Telefone Fixo...
      if Formato = TelefoneFixo then
        texto := Mask('(##) ####-####', SomenteNumero(texto));

      // Celular...
      if Formato = Celular then
        texto := Mask('(##) #####-####', SomenteNumero(texto));

      // Fixo ou Celular
      if Formato = FixoouCelular then
        if Length(SomenteNumero(texto)) <= 10 then
          texto := Mask('(##) ####-####', SomenteNumero(texto))
        else
          texto := Mask('(##) #####-####', SomenteNumero(texto));

      // CNPJ...
      if Formato = CNPJ then
        texto := Mask('##.###.###/####-##', SomenteNumero(texto));

      // CPF...
      if Formato = CPF then
        texto := Mask('###.###.###-##', SomenteNumero(texto));

      // Primeiro Nivel...
      if Formato =  PriNivel then
        texto := Mask('#', SomenteNumero(texto));

      // Segundo Nivel...
      if Formato = SegNivel then
        texto := Mask('#.##', SomenteNumero(texto));

      // Terceiro Nivel...
      if Formato = TerNivel then
        texto := Mask('#.##.###', SomenteNumero(texto));

      // Quarto Nivel...
      if Formato = QuaNivel then
        texto := Mask('#.##.###.####', SomenteNumero(texto));


      // Inscricao Estadual (IE)...
      if Formato = InscricaoEstadual then
        texto := FormataIE(SomenteNumero(texto), Extra);

      // CNPJ ou CPF...
      if Formato = CNPJorCPF then
        if Length(SomenteNumero(texto)) <= 11 then
          texto := Mask('###.###.###-##', SomenteNumero(texto))
        else
          texto := Mask('##.###.###/####-##', SomenteNumero(texto));

      // Personalizado...
      if Formato = Personalizado then
        texto := Mask(Extra, SomenteNumero(texto));

      // Valor...
      if Formato = Valor then
        texto := FormataValor(texto);

      // Money (com simbolo da moeda)...
      if Formato = Money then
      begin
        if Extra = '' then
          Extra := 'R$';

        texto := Extra + ' ' + FormataValor(SomenteNumero(texto));
      end;

      // Porcento (com simbolo %)...
      if Formato = Porcento then
      begin

        texto :=  FormataValor(texto)  ;
      end;

      // CEP...
      if Formato = CEP then
        texto := Mask('##.###-###', SomenteNumero(texto));

      // Data...
      if Formato = Dt then
        texto := FormataData(SomenteNumero(texto));

      // Peso...
      if Formato = Peso then
        texto := FormataPeso(texto);

      if Obj is TEdit then
      begin
        TEdit(Obj).Text := texto;
        TEdit(Obj).SelStart := Length(TEdit(Obj).Text);
      end;

    end);

end;

end.
