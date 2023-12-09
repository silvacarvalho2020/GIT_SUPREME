unit Classe.conexao;

interface

uses
  UFuncoes,

  FireDac.Comp.Client,
  FireDac.Stan.Intf,

  System.IniFiles,
  System.SysUtils,

  Vcl.Forms;

type
  TConexao = class
  Private
    FServidor: String;
    FMsgErro: String;
    FSenha: String;
    FBase: String;
    FLogin: String;
    FPorta: String;
    FConexao: TFDConnection;

  public
    function LerArquivoINI: boolean;
    Constructor Create(NomeConexao: TFDConnection);
    Destructor Destroy; override;

    Function Fnc_conectar_banco_dados: boolean;

    Procedure GravarArquivoINI;

    Property conexao: TFDConnection Read FConexao Write FConexao;
    Property Servidor: String Read FServidor Write FServidor;
    Property Base: String Read FBase Write FBase;
    Property Login: String Read FLogin Write FLogin;
    Property Senha: String Read FSenha Write FSenha;
    Property Porta: String Read FPorta Write FPorta;
    Property MsgErro: String Read FMsgErro Write FMsgErro;

  end;

implementation

{ TConexao }

constructor TConexao.Create(NomeConexao: TFDConnection);
begin
  FConexao := NomeConexao;
end;

destructor TConexao.Destroy;
begin
  FConexao.connected := false;
  inherited;
end;

function TConexao.Fnc_conectar_banco_dados: boolean;
begin
  Result := true;
  FConexao.Params.clear;

  if not LerArquivoINI then
  begin
    Result := false;
    FMsgErro := 'O arquivo de Configuração não foi encontrado!';
  end
  else
  begin
    FConexao.Params.add('Server='         + FServidor);
    FConexao.Params.add('user_name='      + FLogin);
    FConexao.Params.add('password='       + FSenha);
    FConexao.Params.add('port='           + FPorta);
    FConexao.Params.add('Database='       + FBase);
    FConexao.Params.add('DriverID='       + 'FB');

    Try
      FConexao.connected := true;
    Except
      on e: Exception do
      begin
        FMsgErro := e.Message;
        Result := false;
      end;
    End;
  end;

end;

procedure TConexao.GravarArquivoINI;
var
  IniFile: String;
  Ini: TIniFile;
begin

  IniFile := ChangeFileExt(Application.ExeName, '.ini');
  Ini := TIniFile.Create(IniFile);
  try
    Ini.WriteString('Configuracao', 'Servidor', FServidor);
    Ini.WriteString('Configuracao', 'Base', FBase);
    Ini.WriteString('Configuracao', 'Porta', FPorta);
    Ini.WriteString('Acesso', 'Login', FLogin);
    Ini.WriteString('Acesso', 'Senha', Criptografia(FSenha, 'maisUmaVez21'));

  finally
    Ini.free;
  end;
end;

Function TConexao.LerArquivoINI: boolean;
var
  IniFile: String;
  Ini: TIniFile;
begin

  IniFile := ChangeFileExt(Application.ExeName, '.ini');
  Ini := TIniFile.Create(IniFile);

  if not fileexists(IniFile) then
    Result := false
  else
  begin

    try
      FServidor := Ini.ReadString('Configuracao', 'Servidor', '');
      FBase := Ini.ReadString('Configuracao', 'Base', '');
      FPorta := Ini.ReadString('Configuracao', 'Porta', '');
      FLogin := Ini.ReadString('Acesso', 'Login', '');

      FSenha := Ini.ReadString('Acesso', 'Senha', '');
      FSenha := Criptografia(FSenha, 'maisUmaVez21');

    finally
      Result := true;
      Ini.free;
    end;
  end;
end;

end.
