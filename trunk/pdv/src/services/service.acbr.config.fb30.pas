unit service.acbr.config.fb30;

interface

uses
  Data.DB,

  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  FireDAC.DApt,
  FireDAC.DApt.Intf,
  FireDAC.DatS,
  FireDAC.Phys,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Async,
  FireDAC.Stan.Def,
  FireDAC.Stan.Error,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Pool,
  FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait,

  System.Classes,
  System.SysUtils,

  service.conexao;

type
  TServiceConfigACBr = class(TDataModule)
    FDConn: TFDConnection;
    QRY_CONFIG_CERTIFICADO: TFDQuery;
    QRY_CONFIG_GERAL: TFDQuery;
    QRY_CONFIG_WEBSERVICE: TFDQuery;
    QRY_CONFIG_PROXY: TFDQuery;
    QRY_CONFIG_ARQUIVOS: TFDQuery;
    QRY_CONFIG_DANFE: TFDQuery;
    QRY_CONFIG_POSPRINTER: TFDQuery;
    QRY_CONFIG_PROXYPRO_CODIGO: TIntegerField;
    QRY_CONFIG_PROXYPRO_HOST: TStringField;
    QRY_CONFIG_PROXYPRO_PORTA: TStringField;
    QRY_CONFIG_PROXYPRO_USER: TStringField;
    QRY_CONFIG_PROXYPRO_PASS: TStringField;
    QRY_Aux: TFDQuery;
    QRY_CONFIG_CERTIFICADOCER_CODIGO: TIntegerField;
    QRY_CONFIG_CERTIFICADOCER_SSLLIB: TIntegerField;
    QRY_CONFIG_CERTIFICADOCER_CRYPTLIB: TIntegerField;
    QRY_CONFIG_CERTIFICADOCER_HTTPLIB: TIntegerField;
    QRY_CONFIG_CERTIFICADOCER_XMLSIGNLIB: TIntegerField;
    QRY_CONFIG_CERTIFICADOCER_URL: TStringField;
    QRY_CONFIG_CERTIFICADOCER_CAMINHO: TStringField;
    QRY_CONFIG_CERTIFICADOCER_SENHA: TStringField;
    QRY_CONFIG_CERTIFICADOCER_NUMSERIE: TStringField;
    QRY_CONFIG_GERALGER_CODIGO: TIntegerField;
    QRY_CONFIG_GERALGER_ATUALIZARXML: TBooleanField;
    QRY_CONFIG_GERALGER_EXIBIRERROSCHEMA: TBooleanField;
    QRY_CONFIG_GERALGER_RETIRARACENTOS: TBooleanField;
    QRY_CONFIG_GERALGER_SALVAR: TBooleanField;
    QRY_CONFIG_GERALGER_FORMATOALERTA: TStringField;
    QRY_CONFIG_GERALGER_PATHSALVAR: TStringField;
    QRY_CONFIG_GERALGER_PATHSCHEMAS: TStringField;
    QRY_CONFIG_GERALGER_IDTOKEN: TStringField;
    QRY_CONFIG_GERALGER_TOKEN: TStringField;
    QRY_CONFIG_GERALGER_ULTNSU: TIntegerField;
    QRY_CONFIG_GERALGER_FORMAEMISSAO: TIntegerField;
    QRY_CONFIG_GERALGER_MODELODF: TIntegerField;
    QRY_CONFIG_GERALGER_VERSAODF: TIntegerField;
    QRY_CONFIG_WEBSERVICEWEB_CODIGO: TIntegerField;
    QRY_CONFIG_WEBSERVICEWEB_UF: TStringField;
    QRY_CONFIG_WEBSERVICEWEB_AMBIENTE: TIntegerField;
    QRY_CONFIG_WEBSERVICEWEB_VISUALIZAR: TBooleanField;
    QRY_CONFIG_WEBSERVICEWEB_SALVARSOAP: TBooleanField;
    QRY_CONFIG_WEBSERVICEWEB_AJUSTARAUT: TBooleanField;
    QRY_CONFIG_WEBSERVICEWEB_AGUARDAR: TStringField;
    QRY_CONFIG_WEBSERVICEWEB_TENTATIVAS: TStringField;
    QRY_CONFIG_WEBSERVICEWEB_INTERVALO: TStringField;
    QRY_CONFIG_WEBSERVICEWEB_TIMEOUT: TIntegerField;
    QRY_CONFIG_WEBSERVICEWEB_SSLTYPE: TIntegerField;
    QRY_CONFIG_ARQUIVOSARQ_CODIGO: TIntegerField;
    QRY_CONFIG_ARQUIVOSARQ_SALVAR: TBooleanField;
    QRY_CONFIG_ARQUIVOSARQ_PASTAMENSAL: TBooleanField;
    QRY_CONFIG_ARQUIVOSARQ_ADDLITERAL: TBooleanField;
    QRY_CONFIG_ARQUIVOSARQ_EMISSAOPATHNFE: TBooleanField;
    QRY_CONFIG_ARQUIVOSARQ_SALVARPATHEVENTO: TBooleanField;
    QRY_CONFIG_ARQUIVOSARQ_SEPARARPORCNPJ: TBooleanField;
    QRY_CONFIG_ARQUIVOSARQ_SEPARARPORMODELO: TBooleanField;
    QRY_CONFIG_ARQUIVOSARQ_PATHNFE: TStringField;
    QRY_CONFIG_ARQUIVOSARQ_PATHINU: TStringField;
    QRY_CONFIG_ARQUIVOSARQ_PATHEVENTO: TStringField;
    QRY_CONFIG_ARQUIVOSARQ_PATHPDF: TStringField;
    QRY_CONFIG_ARQUIVOSARQ_PATHDOWNLOAD: TStringField;
    QRY_CONFIG_ARQUIVOSARQ_LOGS: TStringField;
    QRY_CONFIG_DANFEDAN_CODIGO: TIntegerField;
    QRY_CONFIG_DANFEDAN_TIPO: TIntegerField;
    QRY_CONFIG_DANFEDAN_LOGOMARCA: TStringField;
    QRY_CONFIG_DANFEDAN_TIPODANFCE: TIntegerField;
    QRY_CONFIG_POSPRINTERPOS_CODIGO: TIntegerField;
    QRY_CONFIG_POSPRINTERPOS_MODELO: TIntegerField;
    QRY_CONFIG_POSPRINTERPOS_PORTA: TStringField;
    QRY_CONFIG_POSPRINTERPOS_PAGINADECODIGO: TIntegerField;
    QRY_CONFIG_POSPRINTERPOS_COLUNAS: TIntegerField;
    QRY_CONFIG_POSPRINTERPOS_ESPACOLINHAS: TIntegerField;
    QRY_CONFIG_POSPRINTERPOS_LINHASENTRECUPONS: TIntegerField;
    QRY_CONFIG_POSPRINTERPOS_CORTARPAPEL: TBooleanField;
    QRY_CONFIG_POSPRINTERPOS_PARAMSSTRING: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FService: TServiceConexao;

  public
    procedure GET_Configuracoes;
  end;

var
  ServiceConfigACBr: TServiceConfigACBr;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TServiceConfigACBr }

procedure TServiceConfigACBr.DataModuleCreate(Sender: TObject);
var
  i: integer;
begin // Create

  FService := TServiceConexao.Create(Self);

  for i := 0 to ComponentCount -1 do
  begin

   if (Components[i] is TFDQuery) then
    (Components[i] as TFDQuery).Connection := FService.FDConn;

  end;

  GET_Configuracoes;

end;

procedure TServiceConfigACBr.DataModuleDestroy(Sender: TObject);
begin // Destroy
  FreeAndNil(FService);
end;

procedure TServiceConfigACBr.GET_Configuracoes;
begin

  QRY_CONFIG_GERAL.Close;
  QRY_CONFIG_GERAL.Open();

  QRY_CONFIG_CERTIFICADO.Close;
  QRY_CONFIG_CERTIFICADO.Open();

  QRY_CONFIG_WEBSERVICE.Close;
  QRY_CONFIG_WEBSERVICE.Open();

  QRY_CONFIG_PROXY.Close;
  QRY_CONFIG_PROXY.Open();

  QRY_CONFIG_ARQUIVOS.Close;
  QRY_CONFIG_ARQUIVOS.Open();

  QRY_CONFIG_DANFE.Close;
  QRY_CONFIG_DANFE.Open();

  QRY_CONFIG_POSPRINTER.Close;
  QRY_CONFIG_POSPRINTER.Open();;

end;

end.
