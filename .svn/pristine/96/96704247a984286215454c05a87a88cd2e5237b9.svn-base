unit UFuncoes;

interface

uses
  DBGridEh,
  IdHashMessageDigest,
  UMensagem,

  System.SysUtils,

  Vcl.Dialogs,
  Vcl.Forms,
  Vcl.StdCtrls;

function Criptografia(Senha, Chave: String): String;

//function MeuStrToFloat(Str : string; Def : Double = 0) : Double;



Function fnc_CriarMensagem(TituloJanela, TituloMSG, MSG, Icone,
  Tipo: String): boolean;

Function RemovePontoMilhar(Numero: string) : Real;

Function MD5(const Value: string) : String;

Procedure CriaFundoTransparente;

Procedure FechaFundoTransparente;

Procedure prcValidarCamposObrigatorios(Form: TForm);

Procedure prcPreencheCampoVazio(Form: TForm);

procedure fecharFormAberto;

procedure FiltroGridEh(Grid: TDBGridEh; ATexto: string);

var
  SelecionaIDForm, //SELECIONA O ID EM FORMS ABERTOS
   UsuarioLogado, EmpresaLogada: String;

  IdUsuarioLogado, IdEmpresaLogada: Integer;
  frmaberto: TForm;

implementation


procedure FiltroGridEh(Grid: TDBGridEh; ATexto: string);
begin
  Grid.SearchPanel.SearchingText := '';
  if Length(ATexto) > 2 then
    Grid.SearchPanel.SearchingText := ATexto;
end;

function Criptografia(Senha, Chave: String): String;
var
  x, y: Integer;
  NovaSenha: String;
begin
  for x := 1 to Length(Chave) do
  begin
    NovaSenha := '';

    for y := 1 to Length(Senha) do
    Begin
      NovaSenha := NovaSenha + chr((Ord(Chave[x]) xor Ord(Senha[y])));
    end;

    Senha := NovaSenha;
  end;

  Result := Senha;
end;

Function fnc_CriarMensagem(TituloJanela, TituloMSG, MSG, Icone, Tipo: String): boolean;
begin
  Result := False;

  FrmMensagem := TFrmMensagem.Create(nil);
  FrmMensagem.sTituloJanela := TituloJanela;
  FrmMensagem.sTituloMsg := TituloMSG;
  FrmMensagem.sMSG := MSG;
  FrmMensagem.sCaminhoIcone := Icone;

  FrmMensagem.sTipo := Tipo;

  FrmMensagem.ShowModal;
  Result := FrmMensagem.bRespostaMsg;

end;

procedure fecharFormAberto;
begin
  frmaberto.close;

end;

Procedure CriaFundoTransparente;
begin
//
//     if FrmFundoTransparente = nil then
//      begin
//         FrmFundoTransparente := TFrmFundoTransparente.Create(nil);
//         FrmFundoTransparente.Show;
//      end else
//      begin
//        FrmFundoTransparente.Show;
//      end;
end;

Procedure FechaFundoTransparente;
begin
//   FrmFundoTransparente.Close;
//   FrmFundoTransparente := nil;
end;

Procedure prcValidarCamposObrigatorios(Form: TForm);
var
  i: Integer;
Begin
  for i := 0 to Form.ComponentCount - 1 do
  begin

    if Form.Components[i].tag = 5 then
    begin
      // Verificação do TEdit
      if Form.Components[i] is TEdit then
      begin
        if ((Form.Components[i] as TEdit).Hint <> '') then
          if ((Form.Components[i] as TEdit).Text = '') then
          begin
            // ShowMessage('Falta Preencher o Campo ' + (Form.Components[i] as TEdit).Hint );
            fnc_CriarMensagem('ATENÇÃO', 'CAMPO OBRIGATORIO NÃO PREENCHIDO',
              'Preencha o campo: ' + (Form.Components[i] as TEdit).Hint,
              ExtractFilepath(Application.ExeName) +
              '\Icones\Atencao.png', 'OK');
            (Form.Components[i] as TEdit).setfocus;
            Abort;

          end;
      end;

      //LOOKUPCOMBOBOX
//      if Form.Components[i] is TDBLookupComboBox then
//      begin
//        if ((Form.Components[i] as TDBLookupComboBox).Hint <> '') then
//          if ((Form.Components[i] as TDBLookupComboBox).keyValue < 1) then
//          begin
//            // ShowMessage('Falta Preencher o Campo ' + (Form.Components[i] as TEdit).Hint );
//            fnc_CriarMensagem('ATENÇÃO', 'CAMPO OBRIGATORIO NÃO PREENCHIDO',
//              'Preencha o campo: ' + (Form.Components[i] as TDBLookupComboBox).Hint,
//              ExtractFilepath(Application.ExeName) +
//              '\Icones\Atencao.png', 'OK');
//            (Form.Components[i] as TDBLookupComboBox).setfocus;
//            Abort;
//
//          end;
//      end;

    end;

  end;

End;

Procedure prcPreencheCampoVazio(Form: TForm);
var
  i: Integer;
Begin
  for i := 0 to Form.ComponentCount - 1 do
  begin
      // Verificação do TEdit
      if Form.Components[i] is TEdit then
      begin
        if ((Form.Components[i] as TEdit).Hint = '0') then
        begin
          if ((Form.Components[i] as TEdit).Text = '') then
          begin
            (Form.Components[i] as TEdit).Text := '0'
          end;
//           Formatar(EdtCPFCNPJ, TFormato.Valor);
        end;

      end;
  end;

End;

//function MeuStrToFloat(Str : string; Def : Double = 0) : Double;
//var
//  Ch : Char;
//begin
//  Ch := DecimalSeparator;
//  try
//    DecimalSeparator := ´,´;
//    Result := StrToFloatDef(Trim(Str), Def);
//  finally
//    DecimalSeparator := Ch;
//  end;
//end;

Function RemovePontoMilhar(Numero: string) : Real;
begin
  Result := StrToFloat(StringReplace(Numero, '.', '', [rfReplaceAll]));
end;

Function MD5(const Value: string) : String;
var
   xMD5: TIdHashMessageDigest5;
begin
   xMD5 := TIdHashMessageDigest5.Create;

   try
     Result := LowerCase(xMD5.HashStringAsHex(Value));
   finally
     xMD5.Free;
   end;
end;



end.
