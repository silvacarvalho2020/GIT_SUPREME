unit view.acbr.fiscal;

interface

uses
  ACBrBase,
  ACBrDANFCeFortesFr,
  ACBrDANFCeFortesFrA4,
  ACBrDFe,
  ACBrDFeConfiguracoes,
  ACBrDFeDANFeReport,
  ACBrDFeOpenSSL,
  ACBrDFeReport,
  ACBrDFeSSL,
  ACBrDFeUtil,
  ACBrIntegrador,
  ACBrMail,
  ACBrNFe,
  ACBrNFeConfiguracoes,
  ACBrNFeDANFEClass,
  ACBrNFeDANFEFR,
  ACBrNFeDANFeESCPOS,
  ACBrNFeDANFeRLClass,
  ACBrNFeNotasFiscais,
  ACBrPosPrinter,
  ACBrUtil,
  ACBrValidador,
  Buttons,
  ComCtrls,
  DateUtils,
  ExtCtrls,
  FileCtrl,
  Grids,
  IniFiles,
  MidasLib,
  OleCtrls,
  Printers,
  SHDocVw,
  ShellAPI,
  Spin,
  StdCtrls,
  TypInfo,
  XMLDoc,
  XMLIntf,
  blcksock,
  frxClass,
  math,
  pcnAuxiliar,
  pcnConversao,
  pcnConversaoNFe,
  pcnNFe,
  pcnNFeRTXT,
  pcnRetConsReciDFe,
  strutils,
  synacode,

  ACBrUtil.Base,
  ACBrUtil.DateTime,
  ACBrUtil.FilesIO,
  ACBrUtil.Strings,
  ACBrUtil.XMLHTML,

  Data.DB,

  Datasnap.DBClient,

  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.WinXCtrls,

  Winapi.Messages,
  Winapi.Windows,

  controller.conversao.pdv,

  providers.conversao,
  providers.functions,

  service.acbr.config.fb30,
  service.cadastro,

  view.base;

type
  TViewACBrFiscal = class(TViewBase)
    ACBrNFe: TACBrNFe;
    ACBrNFeDANFeRL: TACBrNFeDANFeRL;
    ACBrNFeDANFCeFortes: TACBrNFeDANFCeFortes;
    ACBrNFeDANFeESCPOS: TACBrNFeDANFeESCPOS;
    ACBrPosPrinter: TACBrPosPrinter;
    ACBrMail: TACBrMail;
    ACBrIntegrador: TACBrIntegrador;
    OpenDialog: TOpenDialog;
    ACBrNFeDANFCeFortesA4: TACBrNFeDANFCeFortesA4;
    DS_NFe_NFCe: TDataSource;
    DS_Itens_NFe_NFCe: TDataSource;
    PC_configuracoes: TPageControl;
    tab_emitente: TTabSheet;
    gbxEmitente: TGroupBox;
    lblCNPJ: TLabel;
    lblIe: TLabel;
    lblRazaoSocial: TLabel;
    lblFantasia: TLabel;
    lblLogradouro: TLabel;
    lblNumero: TLabel;
    lblComplemento: TLabel;
    lblBairro: TLabel;
    lblCodCidade: TLabel;
    lblCidade: TLabel;
    lblUF: TLabel;
    lblCEP: TLabel;
    lblFone: TLabel;
    lblTipoEmpresa: TLabel;
    edtEmitCNPJ: TEdit;
    edtEmitIE: TEdit;
    edtEmitRazao: TEdit;
    edtEmitFantasia: TEdit;
    edtEmitFone: TEdit;
    edtEmitCEP: TEdit;
    edtEmitLogradouro: TEdit;
    edtEmitNumero: TEdit;
    edtEmitComp: TEdit;
    edtEmitBairro: TEdit;
    edtEmitCodCidade: TEdit;
    edtEmitCidade: TEdit;
    edtEmitUF: TEdit;
    cbTipoEmpresa: TComboBox;
    tab_certificado: TTabSheet;
    gbxCertificado: TGroupBox;
    lblCaminhoCertificado: TLabel;
    lblSenhaCertificado: TLabel;
    lblNumSerieCertificado: TLabel;
    sbtnGetCert: TSpeedButton;
    sbtnNumSerie: TSpeedButton;
    lblUrlPFX: TLabel;
    lXmlSign: TLabel;
    lHttpLib: TLabel;
    lCryptLib: TLabel;
    lSSLLib: TLabel;
    edtSenha: TEdit;
    edtNumSerie: TEdit;
    edtURLPFX: TEdit;
    cbXmlSignLib: TComboBox;
    cbHttpLib: TComboBox;
    cbCryptLib: TComboBox;
    cbSSLLib: TComboBox;
    edtCaminho: TSearchBox;
    tab_geral: TTabSheet;
    gbxGeral: TGroupBox;
    lblFormaEmissao: TLabel;
    lblFormatoAlerta: TLabel;
    lblModeloDocFiscal: TLabel;
    lblVersaoDocFiscal: TLabel;
    lblIdToken: TLabel;
    lblTokenCSC: TLabel;
    lblCaminhoSchemas: TLabel;
    lblLogs: TLabel;
    ckSalvar: TCheckBox;
    cbFormaEmissao: TComboBox;
    cbxAtualizarXML: TCheckBox;
    cbxExibirErroSchema: TCheckBox;
    cbModeloDF: TComboBox;
    cbxRetirarAcentos: TCheckBox;
    cbVersaoDF: TComboBox;
    edtIdToken: TEdit;
    edtToken: TEdit;
    edtFormatoAlerta: TEdit;
    edtPathLogs: TSearchBox;
    edtPathSchemas: TSearchBox;
    tab_webservice: TTabSheet;
    gbxWebService: TGroupBox;
    lblUFEmitente: TLabel;
    lTimeOut: TLabel;
    lSSLLib1: TLabel;
    cbxVisualizar: TCheckBox;
    cbUF: TComboBox;
    rgTipoAmb: TRadioGroup;
    cbxSalvarSOAP: TCheckBox;
    seTimeOut: TSpinEdit;
    cbSSLType: TComboBox;
    pnlDadosWerService: TPanel;
    gbProxy: TGroupBox;
    lblHost: TLabel;
    lblPorta: TLabel;
    lblUsuario: TLabel;
    lblSenha: TLabel;
    edtProxyHost: TEdit;
    edtProxyPorta: TEdit;
    edtProxyUser: TEdit;
    edtProxySenha: TEdit;
    gbxRetornoEnvio: TGroupBox;
    lblTentativas: TLabel;
    lblIntervalo: TLabel;
    lblAguardar: TLabel;
    cbxAjustarAut: TCheckBox;
    edtTentativas: TEdit;
    edtIntervalo: TEdit;
    edtAguardar: TEdit;
    tab_arquivos: TTabSheet;
    gbxArquivos: TGroupBox;
    Label35: TLabel;
    Label40: TLabel;
    Label47: TLabel;
    Label39: TLabel;
    Label53: TLabel;
    cbxSalvarArqs: TCheckBox;
    cbxPastaMensal: TCheckBox;
    cbxAdicionaLiteral: TCheckBox;
    cbxEmissaoPathNFe: TCheckBox;
    cbxSalvaPathEvento: TCheckBox;
    cbxSepararPorCNPJ: TCheckBox;
    cbxSepararPorModelo: TCheckBox;
    edtPathNFe: TSearchBox;
    edtPathEvento: TSearchBox;
    edtPathInu: TSearchBox;
    edtPathPDF: TSearchBox;
    edtDownloadXML: TSearchBox;
    tab_danfe: TTabSheet;
    gbxDanfeDocAux: TGroupBox;
    Label7: TLabel;
    rgTipoDanfe: TRadioGroup;
    gbEscPos: TGroupBox;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    btSerial: TBitBtn;
    cbxModeloPosPrinter: TComboBox;
    cbxPorta: TComboBox;
    cbxPagCodigo: TComboBox;
    seColunas: TSpinEdit;
    seEspLinhas: TSpinEdit;
    seLinhasPular: TSpinEdit;
    cbCortarPapel: TCheckBox;
    rgDANFCE: TRadioGroup;
    edtLogoMarca: TSearchBox;
    ACBrNFeDANFEFR: TACBrNFeDANFEFR;
    ACBrValidador: TACBrValidador;
    ACBrNFeDANFCEFR: TACBrNFeDANFCEFR;
    frxReport: TfrxReport;
    pnlEmitente: TPanel;
    pnlCertificado: TPanel;
    pnlBotoes: TPanel;
    pnlBtnSalvar: TPanel;
    ShapeBtnSalvar: TShape;
    btnSalvar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private

    FServiceConfigACBr  : TServiceConfigACBr;
    FCodigoBarras: string;

    // configuração
    procedure AtualizarSSLLibsCombo;
    procedure LerConfiguracao;
    procedure ConfigurarComponente;
    procedure GravarConfiguracao;

    // usando o componente
    procedure AlimentarNFe(QryNFe, QryNFeItens: TDataSet);      // Alimenta NF-e
    procedure AlimentarNFCe(QryNFCe, QryNFCeItens: TDataSet);   // Alimenta NFC-e
    procedure AlimentarComponente(ATipo: TpcnModeloDF);               // Escolhe o Tipo do Documento Fiscal
    procedure CancelarDFe(QryDFe: TDataSet);
    procedure ImprimirDanfeDFe(QryDFe: TDataSet);
    procedure CaminhoPastas;


    //Variaveis para Carregar as Pastas
    var
      LPastaNFe,
      LPastaNFCe,
      LChaveDFe,
      LMesAtual,
      LAnoAtual,
      LStringArquivo: string;



  public
    constructor Create(AOwner: TComponent; QryCabecalhoFiscal, QryItensFiscais: TDataSet; Tipo: string); reintroduce; overload;
    constructor Create(AOwner: TComponent; ADataSet: TDataSet; TipoEvento: TPCTipoOperacaoFiscal); reintroduce; overload;

    property CodigoBarras: string read FCodigoBarras write FCodigoBarras;

  end;

implementation

{$R *.dfm}

{ TViewACBrFiscal }

procedure TViewACBrFiscal.AlimentarComponente(ATipo: TpcnModeloDF);
begin //Alimenta o componente do ACBr

  ACBrNFe.NotasFiscais.Clear;

  case ATipo of
    moNFe:
    begin
      ACBrNFeDANFEFR.FastFile := FAST_FILE_NFE;
      AlimentarNFe(TClientDataSet(DS_NFe_NFCe.DataSet), TClientDataSet(DS_Itens_NFe_NFCe.DataSet));  // Passar os DataSets da NF-e
    end;
    moNFCe:
    begin
      ACBrNFeDANFEFR.FastFile := FAST_FILE_NFCE;
      AlimentarNFCe(TClientDataSet(DS_NFe_NFCe.DataSet), TClientDataSet(DS_Itens_NFe_NFCe.DataSet)); // Passar os DataSets da NFC-e
    end;
  end;

end;

procedure TViewACBrFiscal.AlimentarNFCe(QryNFCe, QryNFCeItens: TDataSet);
var
  Ok: Boolean;
  BaseCalculo,
  ValorICMS: Double;
begin

  // Inicia o processo de gravação da NFC-e
  with ACBrNFe.NotasFiscais.Add.NFe do
  begin
    Ide.natOp     := QryNFCe.FieldByName('Ide_natOp').AsString;    // VENDA
    Ide.indPag    := ipVista;
    Ide.modelo    := QryNFCe.FieldByName('Ide_modelo').AsInteger;  // 65
    Ide.serie     := QryNFCe.FieldByName('Ide_serie').AsInteger;
    Ide.nNF       := QryNFCe.FieldByName('Ide_nNF').AsInteger;
    Ide.cNF       := QryNFCe.FieldByName('Ide_cNF').AsInteger; // GerarCodigoDFe(Ide.nNF); -> Já gravar no banco gerado. para recuperar aki
    Ide.dEmi      := QryNFCe.FieldByName('Ide_dEmi').AsDateTime;
    Ide.dSaiEnt   := QryNFCe.FieldByName('Ide_dSaiEnt').AsDateTime;
    Ide.hSaiEnt   := QryNFCe.FieldByName('Ide_hSaiEnt').AsDateTime;
    Ide.tpNF      := tnSaida;



    Ide.tpEmis    := TpcnTipoEmissao(teNormal); // teContingencia

    Ide.tpAmb     := taHomologacao;
    if FServiceConfigACBr.QRY_CONFIG_WEBSERVICEWEB_AMBIENTE.AsInteger = 0 then
      Ide.tpAmb     := taProducao; // taProducao  //Lembre-se de trocar esta variavel quando for para ambiente de producao
    Ide.cUF       := QryNFCe.FieldByName('Ide_cUF').AsInteger;
    Ide.cMunFG    := QryNFCe.FieldByName('Ide_cMunFG').AsInteger;
    Ide.finNFe    := fnNormal;
    Ide.tpImp     := tiNFCe;
    Ide.indFinal  := cfConsumidorFinal;
    {
      valores aceitos pelo campo:
      pcNao, pcPresencial, pcInternet, pcTeleatendimento, pcEntregaDomicilio,
      pcPresencialForaEstabelecimento, pcOutros
    }
    Ide.indPres   := pcPresencial;

    {
      abaixo o campo incluido no layout a partir da NT 2020/006
    }
    {
      valores aceitos pelo campo:
      iiSemOperacao, iiOperacaoSemIntermediador, iiOperacaoComIntermediador
    }
    // Indicador de intermediador/marketplace
    Ide.indIntermed := iiSemOperacao;

//     Ide.dhCont := date;
//     Ide.xJust  := 'Justificativa Contingencia';

    Emit.CNPJCPF           := QryNFCe.FieldByName('Emit_CNPJCPF').AsString;
    Emit.IE                := QryNFCe.FieldByName('Emit_IE').AsString;
    Emit.xNome             := QryNFCe.FieldByName('Emit_xNome').AsString;
    Emit.xFant             := QryNFCe.FieldByName('Emit_xFant').AsString;

    Emit.EnderEmit.fone    := QryNFCe.FieldByName('Emit_EnderEmit_fone').AsString;
    Emit.EnderEmit.CEP     := StrToIntDef(OnlyNumber(QryNFCe.FieldByName('Emit_EnderEmit_CEP').AsString), 0);
    Emit.EnderEmit.xLgr    := QryNFCe.FieldByName('Emit_EnderEmit_xLgr').AsString;
    Emit.EnderEmit.nro     := QryNFCe.FieldByName('Emit_EnderEmit_nro').AsString;
    Emit.EnderEmit.xCpl    := QryNFCe.FieldByName('Emit_EnderEmit_xCpl').AsString;
    Emit.EnderEmit.xBairro := QryNFCe.FieldByName('Emit_EnderEmit_xBairro').AsString;
    Emit.EnderEmit.cMun    := QryNFCe.FieldByName('Emit_EnderEmit_cMun').AsInteger;
    Emit.EnderEmit.xMun    := QryNFCe.FieldByName('Emit_EnderEmit_xMun').AsString;
    Emit.EnderEmit.UF      := QryNFCe.FieldByName('Emit_EnderEmit_UF').AsString;
    Emit.enderEmit.cPais   := QryNFCe.FieldByName('Emit_enderEmit_cPais').AsInteger;
    Emit.enderEmit.xPais   := QryNFCe.FieldByName('Emit_enderEmit_xPais').AsString;

//    Emit.IEST := '';


    // esta sendo somando 1 uma vez que o ItemIndex inicia do zero e devemos
    // passar os valores 1, 2 ou 3
    // (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)
    Emit.CRT  := StrToCRT(Ok, IntToStr(QryNFCe.FieldByName('Emit_CRT').AsInteger));

    // Na NFC-e o Destinatário é opcional
    {
    Dest.CNPJCPF           := 'informar o CPF do destinatário';
    Dest.ISUF              := '';
    Dest.xNome             := 'nome do destinatário';

    Dest.indIEDest         := inNaoContribuinte;

    Dest.EnderDest.Fone    := '1533243333';
    Dest.EnderDest.CEP     := 18270170;
    Dest.EnderDest.xLgr    := 'Rua Coronel Aureliano de Camargo';
    Dest.EnderDest.nro     := '973';
    Dest.EnderDest.xCpl    := '';
    Dest.EnderDest.xBairro := 'Centro';
    Dest.EnderDest.cMun    := 3554003;
    Dest.EnderDest.xMun    := 'Tatuí';
    Dest.EnderDest.UF      := 'SP';
    Dest.EnderDest.cPais   := 1058;
    Dest.EnderDest.xPais   := 'BRASIL';
    }

//Use os campos abaixo para informar o endereço de retirada quando for diferente do Remetente/Destinatário
    {Retirada.CNPJCPF := '';
    Retirada.xLgr    := '';
    Retirada.nro     := '';
    Retirada.xCpl    := '';
    Retirada.xBairro := '';
    Retirada.cMun    := 0;
    Retirada.xMun    := '';
    Retirada.UF      := ''; }

//Use os campos abaixo para informar o endereço de entrega quando for diferente do Remetente/Destinatário
    {Entrega.CNPJCPF := '';
    Entrega.xLgr    := '';
    Entrega.nro     := '';
    Entrega.xCpl    := '';
    Entrega.xBairro := '';
    Entrega.cMun    := 0;
    Entrega.xMun    := '';
    Entrega.UF      := ''; }

//Adicionando Produtos
    DS_Itens_NFe_NFCe.DataSet.DisableControls;
    DS_Itens_NFe_NFCe.DataSet.First;
    while not DS_Itens_NFe_NFCe.DataSet.Eof do
    begin
      with Det.New do
      begin
        Prod.nItem    := DS_Itens_NFe_NFCe.DataSet.FieldByName('Prod_nItem').AsInteger; // Número sequencial, para cada item deve ser incrementado
        Prod.cProd    := DS_Itens_NFe_NFCe.DataSet.FieldByName('Prod_cProd').AsString;

        //Valida código de barras
        FCodigoBarras := DS_Itens_NFe_NFCe.DataSet.FieldByName('Prod_cEAN').AsString;
        ACBrValidador.Documento := FCodigoBarras;
        ACBrValidador.TipoDocto := docGTIN;

        if not ACBrValidador.Validar then
          FCodigoBarras := 'SEM GTIN';

        Prod.cEAN     := FCodigoBarras;



        Prod.xProd    := DS_Itens_NFe_NFCe.DataSet.FieldByName('Prod_xProd').AsString;
        Prod.NCM      := DS_Itens_NFe_NFCe.DataSet.FieldByName('Prod_NCM').AsString; // Tabela NCM disponível em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
        Prod.EXTIPI   := DS_Itens_NFe_NFCe.DataSet.FieldByName('Prod_EXTIPI').AsString;
        Prod.CFOP     := DS_Itens_NFe_NFCe.DataSet.FieldByName('Prod_CFOP').AsString;
        Prod.uCom     := DS_Itens_NFe_NFCe.DataSet.FieldByName('Prod_uCom').AsString;
        Prod.qCom     := DS_Itens_NFe_NFCe.DataSet.FieldByName('Prod_qCom').AsFloat;
        Prod.vUnCom   := DS_Itens_NFe_NFCe.DataSet.FieldByName('Prod_vUnCom').AsFloat;
        Prod.vProd    := DS_Itens_NFe_NFCe.DataSet.FieldByName('Prod_vProd').AsFloat;


        Prod.cEANTrib  := FCodigoBarras;


        Prod.uTrib     := DS_Itens_NFe_NFCe.DataSet.FieldByName('Prod_uTrib').AsString;
        Prod.qTrib     := DS_Itens_NFe_NFCe.DataSet.FieldByName('Prod_qTrib').AsFloat;
        Prod.vUnTrib   := DS_Itens_NFe_NFCe.DataSet.FieldByName('Prod_vUnTrib').AsFloat;

        Prod.vOutro    := DS_Itens_NFe_NFCe.DataSet.FieldByName('Prod_vOutro').AsFloat;
        Prod.vFrete    := DS_Itens_NFe_NFCe.DataSet.FieldByName('Prod_vFrete').AsFloat;
        Prod.vSeg      := DS_Itens_NFe_NFCe.DataSet.FieldByName('Prod_vSeg').AsFloat;
        Prod.vDesc     := DS_Itens_NFe_NFCe.DataSet.FieldByName('Prod_vDesc').AsFloat;

        Prod.CEST := DS_Itens_NFe_NFCe.DataSet.FieldByName('Prod_CEST').AsString;

//           infAdProd      := 'Informação Adicional do Produto';

        {
          abaixo os campos incluidos no layout a partir da NT 2020/005
        }
        // Opcional - Preencher com o Código de Barras próprio ou de terceiros que seja diferente do padrão GTIN
        // por exemplo: código de barras de catálogo, partnumber, etc

        ACBrValidador.Documento := DS_Itens_NFe_NFCe.DataSet.FieldByName('Prod_cBarra').AsString;
        ACBrValidador.TipoDocto := docGTIN;

        Prod.cBarra := DS_Itens_NFe_NFCe.DataSet.FieldByName('Prod_cBarra').AsString;
        if not ACBrValidador.Validar then
          Prod.cBarra := 'SEM GTIN';

        // Opcional - Preencher com o Código de Barras próprio ou de terceiros que seja diferente do padrão GTIN
        //  correspondente àquele da menor unidade comercializável identificado por Código de Barras
        // por exemplo: código de barras de catálogo, partnumber, etc
        ACBrValidador.Documento := DS_Itens_NFe_NFCe.DataSet.FieldByName('Prod_cBarraTrib').AsString;
        ACBrValidador.TipoDocto := docGTIN;

        Prod.cBarraTrib := DS_Itens_NFe_NFCe.DataSet.FieldByName('Prod_cBarraTrib').AsString;
        if not ACBrValidador.Validar then
          Prod.cBarraTrib := 'SEM GTIN';



        // Declaração de Importação. Pode ser adicionada várias através do comando Prod.DI.New
        (*
        with Prod.DI.New do
        begin
          nDi         := '';
          dDi         := now;
          xLocDesemb  := '';
          UFDesemb    := '';
          dDesemb     := now;
          {
            tvMaritima, tvFluvial, tvLacustre, tvAerea, tvPostal, tvFerroviaria, tvRodoviaria,

            abaixo os novos valores incluidos a partir da NT 2020/005

            tvConduto, tvMeiosProprios, tvEntradaSaidaFicta, tvCourier, tvEmMaos, tvPorReboque
          }
          tpViaTransp := tvRodoviaria;
          vAFRMM := 0;
          {
            tiContaPropria, tiContaOrdem, tiEncomenda
          }
          tpIntermedio := tiContaPropria;
          CNPJ := '';
          UFTerceiro := '';
          cExportador := '';

          with adi.New do
          begin
            nAdicao     := 1;
            nSeqAdi     := 1;
            cFabricante := '';
            vDescDI     := 0;
            nDraw       := '';
          end;
        end;
        *)

        with Imposto do
        begin
          // lei da transparencia nos impostos
          vTotTrib := 0;

          with ICMS do
          begin
            // caso o CRT seja:
            // 1=Simples Nacional
            // Os valores aceitos para CSOSN são:
            // csosn101, csosn102, csosn103, csosn201, csosn202, csosn203,
            // csosn300, csosn400, csosn500,csosn900

            // 2=Simples Nacional, excesso sublimite de receita bruta;
            // ou 3=Regime Normal.
            // Os valores aceitos para CST são:
            // cst00, cst10, cst20, cst30, cst40, cst41, cst45, cst50, cst51,
            // cst60, cst70, cst80, cst81, cst90, cstPart10, cstPart90,
            // cstRep41, cstVazio, cstICMSOutraUF, cstICMSSN, cstRep60

            // (consulte o contador do seu cliente para saber qual deve ser utilizado)
            // Pode variar de um produto para outro.

            if Emit.CRT in [crtSimplesExcessoReceita, crtRegimeNormal] then
              CST := cst00
            else
              CSOSN := csosn102;

            orig    := oeNacional;
            modBC   := dbiValorOperacao;

            if Emit.CRT in [crtSimplesExcessoReceita, crtRegimeNormal] then
              BaseCalculo := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_vBC').AsFloat
            else
              BaseCalculo := 0;

            vBC     := BaseCalculo;
            pICMS   := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_pICMS').AsFloat;

            ValorICMS := vBC * pICMS;

            vICMS   := ValorICMS;
            modBCST := dbisMargemValorAgregado;
            pMVAST  := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_pMVAST').AsFloat;
            pRedBCST:= DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_pRedBCST').AsFloat;
            vBCST   := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_vBCST').AsFloat;
            pICMSST := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_pICMSST').AsFloat;
            vICMSST := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_vICMSST').AsFloat;
            pRedBC  := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_pRedBC').AsFloat;

            pCredSN         := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_pCredSN').AsFloat;
            vCredICMSSN     := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_vCredICMSSN').AsFloat;
            vBCFCPST        := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_vBCFCPST').AsFloat;
            pFCPST          := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_pFCPST').AsFloat;
            vFCPST          := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_vFCPST').AsFloat;
            vBCSTRet        := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_vBCSTRet').AsFloat;
            pST             := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_pST').AsFloat;
            vICMSSubstituto := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_vICMSSubstituto').AsFloat;
            vICMSSTRet      := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_vICMSSTRet').AsFloat;

            vBCFCPSTRet := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_vBCFCPSTRet').AsFloat;
            pFCPSTRet   := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_pFCPSTRet').AsFloat;
            vFCPSTRet   := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_vFCPSTRet').AsFloat;
            pRedBCEfet  := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_pRedBCEfet').AsFloat;
            vBCEfet     := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_vBCEfet').AsFloat;
            pICMSEfet   := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_pICMSEfet').AsFloat;
            vICMSEfet   := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_vICMSEfet').AsFloat;

            {
              abaixo os campos incluidos no layout a partir da NT 2020/005
            }
            // Informar apenas nos motivos de desoneração documentados abaixo
            vICMSSTDeson := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_vICMSSTDeson').AsFloat;
            {
              o campo abaixo só aceita os valores:
              mdiProdutorAgropecuario, mdiOutros, mdiOrgaoFomento
              Campo será preenchido quando o campo anterior estiver preenchido.
            }
            motDesICMSST := mdiOutros;

            // Percentual do diferimento do ICMS relativo ao Fundo de Combate à Pobreza (FCP).
            // No caso de diferimento total, informar o percentual de diferimento "100"
            pFCPDif := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_pFCPDif').AsFloat;
            // Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) diferido
            vFCPDif := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_vFCPDif').AsFloat;
            // Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) realmente devido.
            vFCPEfet := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMS_vFCPEfet').AsFloat;

            // partilha do ICMS e fundo de probreza
            with ICMSUFDest do
            begin
              vBCUFDest      := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMSUFDest_vBCUFDest').AsFloat;
              pFCPUFDest     := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMSUFDest_pFCPUFDest').AsFloat;
              pICMSUFDest    := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMSUFDest_pICMSUFDest').AsFloat;
              pICMSInter     := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMSUFDest_pICMSInter').AsFloat;
              pICMSInterPart := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMSUFDest_pICMSInterPart').AsFloat;
              vFCPUFDest     := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMSUFDest_vFCPUFDest').AsFloat;
              vICMSUFDest    := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMSUFDest_vICMSUFDest').AsFloat;
              vICMSUFRemet   := DS_Itens_NFe_NFCe.DataSet.FieldByName('ICMSUFDest_vICMSUFRemet').AsFloat;
            end;
          end;

          with PIS do
          begin
            CST      := pis99;
            PIS.vBC  := DS_Itens_NFe_NFCe.DataSet.FieldByName('PIS_vBC').AsFloat;
            PIS.pPIS := DS_Itens_NFe_NFCe.DataSet.FieldByName('PIS_pPIS').AsFloat;
            PIS.vPIS := DS_Itens_NFe_NFCe.DataSet.FieldByName('PIS_vPIS').AsFloat;

            PIS.qBCProd   := DS_Itens_NFe_NFCe.DataSet.FieldByName('PIS_qBCProd').AsFloat;
            PIS.vAliqProd := DS_Itens_NFe_NFCe.DataSet.FieldByName('PIS_vAliqProd').AsFloat;
            PIS.vPIS      := DS_Itens_NFe_NFCe.DataSet.FieldByName('PIS_vPIS').AsFloat;
          end;

          with PISST do
          begin
            vBc       := DS_Itens_NFe_NFCe.DataSet.FieldByName('PISST_vBc').AsFloat;
            pPis      := DS_Itens_NFe_NFCe.DataSet.FieldByName('PISST_pPis').AsFloat;
            qBCProd   := DS_Itens_NFe_NFCe.DataSet.FieldByName('PISST_qBCProd').AsFloat;
            vAliqProd := DS_Itens_NFe_NFCe.DataSet.FieldByName('PISST_vAliqProd').AsFloat;
            vPIS      := DS_Itens_NFe_NFCe.DataSet.FieldByName('PISST_vPIS').AsFloat;
            {
              abaixo o campo incluido no layout a partir da NT 2020/005
            }
            {
              valores aceitos pelo campo:
              ispNenhum, ispPISSTNaoCompoe, ispPISSTCompoe
            }
            // Indica se o valor do PISST compõe o valor total da NF-e
            IndSomaPISST :=  ispNenhum;
          end;

          with COFINS do
          begin
            CST            := cof99;
            COFINS.vBC     := DS_Itens_NFe_NFCe.DataSet.FieldByName('COFINS_vBC').AsFloat;
            COFINS.pCOFINS := DS_Itens_NFe_NFCe.DataSet.FieldByName('COFINS_pCOFINS').AsFloat;
            COFINS.vCOFINS := DS_Itens_NFe_NFCe.DataSet.FieldByName('COFINS_vCOFINS').AsFloat;

            COFINS.qBCProd   := DS_Itens_NFe_NFCe.DataSet.FieldByName('COFINS_qBCProd').AsFloat;
            COFINS.vAliqProd := DS_Itens_NFe_NFCe.DataSet.FieldByName('COFINS_vAliqProd').AsFloat;
          end;

          with COFINSST do
          begin
            vBC       := DS_Itens_NFe_NFCe.DataSet.FieldByName('COFINSST_vBC').AsFloat;
            pCOFINS   := DS_Itens_NFe_NFCe.DataSet.FieldByName('COFINSST_pCOFINS').AsFloat;
            qBCProd   := DS_Itens_NFe_NFCe.DataSet.FieldByName('COFINSST_qBCProd').AsFloat;
            vAliqProd := DS_Itens_NFe_NFCe.DataSet.FieldByName('COFINSST_vAliqProd').AsFloat;
            vCOFINS   := DS_Itens_NFe_NFCe.DataSet.FieldByName('COFINSST_vCOFINS').AsFloat;
            {
              abaixo o campo incluido no layout a partir da NT 2020/005
            }
            {
              valores aceitos pelo campo:
              iscNenhum, iscCOFINSSTNaoCompoe, iscCOFINSSTCompoe
            }
            // Indica se o valor da COFINS ST compõe o valor total da NF-e
            indSomaCOFINSST :=  iscNenhum;
          end;
        end;
      end;
      DS_Itens_NFe_NFCe.DataSet.Next;
    end; // fim dos produtos
    DS_Itens_NFe_NFCe.DataSet.EnableControls;

    //Totais
    Total.ICMSTot.vBC     := QryNFCe.FieldByName('Total_ICMSTot_vBC').AsFloat;
    Total.ICMSTot.vICMS   := QryNFCe.FieldByName('Total_ICMSTot_vICMS').AsFloat;
    Total.ICMSTot.vBCST   := QryNFCe.FieldByName('Total_ICMSTot_vBCST').AsFloat;
    Total.ICMSTot.vST     := QryNFCe.FieldByName('Total_ICMSTot_vST').AsFloat;
    Total.ICMSTot.vProd   := QryNFCe.FieldByName('Total_ICMSTot_vProd').AsFloat;
    Total.ICMSTot.vFrete  := QryNFCe.FieldByName('Total_ICMSTot_vFrete').AsFloat;
    Total.ICMSTot.vSeg    := QryNFCe.FieldByName('Total_ICMSTot_vSeg').AsFloat;
    Total.ICMSTot.vDesc   := QryNFCe.FieldByName('Total_ICMSTot_vDesc').AsFloat;
    Total.ICMSTot.vII     := QryNFCe.FieldByName('Total_ICMSTot_vII').AsFloat;
    Total.ICMSTot.vIPI    := QryNFCe.FieldByName('Total_ICMSTot_vIPI').AsFloat;
    Total.ICMSTot.vPIS    := QryNFCe.FieldByName('Total_ICMSTot_vPIS').AsFloat;
    Total.ICMSTot.vCOFINS := QryNFCe.FieldByName('Total_ICMSTot_vCOFINS').AsFloat;
    Total.ICMSTot.vOutro  := QryNFCe.FieldByName('Total_ICMSTot_vOutro').AsFloat;
    Total.ICMSTot.vNF     := QryNFCe.FieldByName('Total_ICMSTot_vNF').AsFloat;

    // partilha do icms e fundo de probreza
    Total.ICMSTot.vFCPUFDest   := QryNFCe.FieldByName('Total_ICMSTot_vFCPUFDest').AsFloat;
    Total.ICMSTot.vICMSUFDest  := QryNFCe.FieldByName('Total_ICMSTot_vICMSUFDest').AsFloat;
    Total.ICMSTot.vICMSUFRemet := QryNFCe.FieldByName('Total_ICMSTot_vICMSUFRemet').AsFloat;

    Total.ISSQNtot.vServ   :=  QryNFCe.FieldByName('Total_ISSQNtot_vServ').AsFloat;
    Total.ISSQNTot.vBC     :=  QryNFCe.FieldByName('Total_ISSQNTot_vBC').AsFloat;
    Total.ISSQNTot.vISS    :=  QryNFCe.FieldByName('Total_ISSQNTot_vISS').AsFloat;
    Total.ISSQNTot.vPIS    :=  QryNFCe.FieldByName('Total_ISSQNTot_vPIS').AsFloat;
    Total.ISSQNTot.vCOFINS :=  QryNFCe.FieldByName('Total_ISSQNTot_vCOFINS').AsFloat;

    Total.retTrib.vRetPIS    :=  QryNFCe.FieldByName('Total_retTrib_vRetPIS').AsFloat;
    Total.retTrib.vRetCOFINS :=  QryNFCe.FieldByName('Total_retTrib_vRetCOFINS').AsFloat;
    Total.retTrib.vRetCSLL   :=  QryNFCe.FieldByName('Total_retTrib_vRetCSLL').AsFloat;
    Total.retTrib.vBCIRRF    :=  QryNFCe.FieldByName('Total_retTrib_vBCIRRF').AsFloat;
    Total.retTrib.vIRRF      :=  QryNFCe.FieldByName('Total_retTrib_vIRRF').AsFloat;
    Total.retTrib.vBCRetPrev :=  QryNFCe.FieldByName('Total_retTrib_vBCRetPrev').AsFloat;
    Total.retTrib.vRetPrev   :=  QryNFCe.FieldByName('Total_retTrib_vRetPrev').AsFloat;

    Transp.modFrete := mfSemFrete; // NFC-e não pode ter FRETE

    with pag.New do
    begin
      tPag := fpDinheiro;
      {
        abaixo o campo incluido no layout a partir da NT 2020/006
      }
      {
        se tPag for fpOutro devemos incluir o campo xPag
      xPag := 'Caderneta';
      }
      vPag := QryNFCe.FieldByName('Total_ICMSTot_vNF').AsFloat; // Pegar o Total Faturado
    end;

    // O grupo infIntermed só deve ser gerado nos casos de operação não presencial
    // pela internet em site de terceiros (Intermediadores).
//    infIntermed.CNPJ := '';
//    infIntermed.idCadIntTran := '';



//    InfAdic.infCpl     :=  '';
//    InfAdic.infAdFisco :=  '';
//
//    with InfAdic.obsCont.New do
//    begin
//      xCampo := 'ObsCont';
//      xTexto := 'Texto';
//    end;
//
//    with InfAdic.obsFisco.New do
//    begin
//      xCampo := 'ObsFisco';
//      xTexto := 'Texto';
//    end;




    {
      abaixo o campo incluido no layout a partir da NT 2020/006
    }
    // CNPJ do Intermediador da Transação (agenciador, plataforma de delivery,
    // marketplace e similar) de serviços e de negócios.

//    infIntermed.CNPJ := ''; // Não vamos utilizar

    // Nome do usuário ou identificação do perfil do vendedor no site do intermediador
    // (agenciador, plataforma de delivery, marketplace e similar) de serviços e de
    // negócios.

//    infIntermed.idCadIntTran := '';  // Não vamos utilizar

  end;


  //tirar esse metodo desse local.
  ACBrNFe.NotasFiscais.Assinar;
  ACBrNFe.NotasFiscais.Validar;
  ACBrNFe.NotasFiscais.GerarNFe;
  ACBrNFe.Enviar(QryNFCe.FieldByName('IDE_NNF').AsInteger, True, True);
//  ACBrNFe.NotasFiscais.Imprimir;



  // Atualiza os dados da NFC-e com dados de Retorno
  var
    verAplic, TpAmb, xMotivo, Recibo, Protocolo: string;
  var
    cStat, cUF: integer;
  var
    dhRecbto: TDateTime;


  verAplic  := ACBrNFe.WebServices.Enviar.verAplic;
  TpAmb     := TpAmbToStr(ACBrNFe.WebServices.Enviar.TpAmb);
  cStat     := ACBrNFe.WebServices.Enviar.cStat;
  cUF       := ACBrNFe.WebServices.Enviar.cUF;
  xMotivo   := ACBrNFe.WebServices.Enviar.xMotivo;
  Recibo    := ACBrNFe.WebServices.Enviar.Recibo;
  Protocolo := ACBrNFe.WebServices.Enviar.Protocolo;
  dhRecbto  := ACBrNFe.WebServices.Enviar.dhRecbto;


  //Atualiza os dados da Tabela com Retorno
  FService := TServiceCadastro.Create(Self);  // Nesse caso teve que fazer uses de: TServiceCadastro visto que o create nativo foi reescrito.
  try
    FService.GET_NFCe(QryNFCe.FieldByName('IDNFCE').AsInteger);

    FService.QRY_NFCe.Edit;
    FService.QRY_NFCeRETORNO_VERAPLIC.AsString   := ACBrNFe.WebServices.Enviar.verAplic;            // ACBrNFe.WebServices.Retorno.verAplic;
    FService.QRY_NFCeRETORNO_TPAMB.AsString      := TpAmbToStr(ACBrNFe.WebServices.Enviar.TpAmb);   // TpAmbToStr(ACBrNFe.WebServices.Retorno.TpAmb);
    FService.QRY_NFCeRETORNO_CSTAT.AsInteger     := ACBrNFe.WebServices.Enviar.cStat;
    FService.QRY_NFCeRETORNO_NPROT.AsString      := ACBrNFe.WebServices.Enviar.Protocolo;

    FService.QRY_NFCeRETORNO_XMOTIVO.AsString    := ACBrNFe.WebServices.Enviar.xMotivo;             // ACBrNFe.NotasFiscais.Items[0].Nfe.procNFe.xMotivo;
    FService.QRY_NFCeRETORNO_CHNFE.AsString      := LChaveDFe;                                         // ACBrNFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].chDFe;
    FService.QRY_NFCeRETORNO_DHRECBTO.AsDateTime := ACBrNFe.WebServices.Enviar.dhRecbto;
//    FService.QRY_NFCeRETORNO_DIGVAL.AsString     := ACBrNFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].digVal;
    FService.QRY_NFCe.Post;


    //Atualiza a venda com os dados de retorno... Poderia tbm apenas fazer joim com a nfce se fosse o caso...
    //Se um dia emitir um documento fiscal com mais de uma venda deverá rever isso aqui...
    FService.QRY_Aux.Close;
    FService.QRY_Aux.SQL.Clear;
    FService.QRY_Aux.SQL.Add('update ESTVENDA');
    FService.QRY_Aux.SQL.Add('set MODELOFISCAL = :MODELOFISCAL,');
    FService.QRY_Aux.SQL.Add('    NUMNFCE = :NUMNFCE');
    FService.QRY_Aux.SQL.Add('where (IDVENDA = :IDVENDA)   ');
    FService.QRY_Aux.Params[0].AsInteger := 65;
    FService.QRY_Aux.Params[1].AsInteger := QryNFCe.FieldByName('IDE_nNF').AsInteger ;
    FService.QRY_Aux.Params[2].AsInteger := StrToIntDef(QryNFCe.FieldByName('NUM_DOCS_EMITIDOS').AsString, 0);
    FService.QRY_Aux.ExecSQL;

  finally
    FreeAndNil(FService);
  end;

end;

procedure TViewACBrFiscal.AlimentarNFe(QryNFe, QryNFeItens: TDataSet);
var
  Ok: Boolean;
  NotaF: NotaFiscal;
  Produto: TDetCollectionItem;
//    Servico: TDetCollectionItem;
  Volume: TVolCollectionItem;
  Duplicata: TDupCollectionItem;
  ObsComplementar: TobsContCollectionItem;
  ObsFisco: TobsFiscoCollectionItem;
//    Referenciada: TNFrefCollectionItem;
//    DI: TDICollectionItem;
//    Adicao: TAdiCollectionItem;
//    Rastro: TrastroCollectionItem;
//    Medicamento: TMedCollectionItem;
//    Arma: TArmaCollectionItem;
//    Reboque: TreboqueCollectionItem;
//    Lacre: TLacresCollectionItem;
//    ProcReferenciado: TprocRefCollectionItem;
  InfoPgto: TpagCollectionItem;

begin

  NotaF := ACBrNFe.NotasFiscais.Add;
  NotaF.NFe.Ide.natOp     :=   QryNFe.FieldByName('Ide_natOp').AsString                                                     ;
  NotaF.NFe.Ide.indPag    :=   ipVista; //   IndpagToStr(QryNFe.FieldByName('Ide_indPag').AsString)                         ;
  NotaF.NFe.Ide.modelo    :=   QryNFe.FieldByName('Ide_modelo').AsInteger                                                   ;
  NotaF.NFe.Ide.serie     :=   QryNFe.FieldByName('Ide_serie').AsInteger                                                    ;
  NotaF.NFe.Ide.nNF       :=   QryNFe.FieldByName('Ide_nNF').AsInteger                                                      ;
  NotaF.NFe.Ide.cNF       :=   QryNFe.FieldByName('Ide_cNF').AsInteger                                                      ; //    GerarCodigoDFe(NotaF.NFe.Ide.nNF);
  NotaF.NFe.Ide.dEmi      :=   QryNFe.FieldByName('Ide_dEmi').AsDateTime                                                    ;
  NotaF.NFe.Ide.dSaiEnt   :=   QryNFe.FieldByName('Ide_dSaiEnt').AsDateTime                                                 ;
  NotaF.NFe.Ide.hSaiEnt   :=   QryNFe.FieldByName('Ide_hSaiEnt').AsDateTime                                                 ;
  NotaF.NFe.Ide.tpNF      :=   tnSaida; //   tpNFToStr(QryNFe.FieldByName('Ide.tpNF').AsString)                             ;
  NotaF.NFe.Ide.tpEmis    :=   TpcnTipoEmissao(teNormal); // teContingencia   TpcnTipoEmissao(StrToIntDef(QryNFe.FieldByName('Ide_tpEmis').AsString, 1))                   ;

  NotaF.NFe.Ide.tpAmb     :=   taHomologacao;
  if FServiceConfigACBr.QRY_CONFIG_WEBSERVICEWEB_AMBIENTE.AsInteger = 0 then
    NotaF.NFe.Ide.tpAmb     :=   taProducao; //   QryNFe.FieldByName('Ide.tpAmb').AsString                                 ;
  NotaF.NFe.Ide.verProc   :=   QryNFe.FieldByName('Ide_verProc').AsString                                                   ;
  NotaF.NFe.Ide.cUF       :=   QryNFe.FieldByName('Ide_cUF').AsInteger                                                      ;
  NotaF.NFe.Ide.cMunFG    :=   QryNFe.FieldByName('Ide_cMunFG').AsInteger                                                   ;
  NotaF.NFe.Ide.finNFe    :=   fnNormal; //   QryNFe.FieldByName('Ide.finNFe').AsString                                     ;


//  StrToTpAmb(Ok,IntToStr(rgTipoAmb.ItemIndex+1));


  {
    se NotaF.NFe.Dest.indIEDest := inNaoContribuinte;  entao:
     1.1  NotaF.NFe.Ide.indFinal  :=   cfConsumidorFinal;
     1.2  Não haverá IE No Destinatário

  }

  NotaF.NFe.Ide.indFinal  :=   cfConsumidorFinal; //   QryNFe.FieldByName('Ide.finNFe').AsString                                     ;


  if  Assigned( ACBrNFe.DANFE ) then
    NotaF.NFe.Ide.tpImp := ACBrNFe.DANFE.TipoDANFE; // QryNFe.FieldByName('Ide.tpImp').AsString;





   // Valores aceitos:
  // iiSemOperacao, iiOperacaoSemIntermediador, iiOperacaoComIntermediador
//  NotaF.NFe.Ide.indIntermed := iiSemOperacao;

//  NotaF.NFe.Ide.dhCont := date;
//  NotaF.NFe.Ide.xJust  := 'Justificativa Contingencia';

  {
    abaixo o campo incluido no layout a partir da NT 2020/006
  }
  {
    valores aceitos pelo campo:
    iiSemOperacao, iiOperacaoSemIntermediador, iiOperacaoComIntermediador
  }
  // Indicador de intermediador/marketplace
  NotaF.NFe.Ide.indIntermed := iiSemOperacao;


  //Para NFe referenciada use os campos abaixo
  (*
  Referenciada := NotaF.NFe.Ide.NFref.Add;
  Referenciada.refNFe       := ''; //NFe Eletronica

  Referenciada.RefNF.cUF    := 0;  // |
  Referenciada.RefNF.AAMM   := ''; // |
  Referenciada.RefNF.CNPJ   := ''; // |
  Referenciada.RefNF.modelo := 1;  // |- NFe Modelo 1/1A
  Referenciada.RefNF.serie  := 1;  // |
  Referenciada.RefNF.nNF    := 0;  // |

  Referenciada.RefNFP.cUF     := 0;  // |
  Referenciada.RefNFP.AAMM    := ''; // |
  Referenciada.RefNFP.CNPJCPF := ''; // |
  Referenciada.RefNFP.IE      := ''; // |- NF produtor Rural
  Referenciada.RefNFP.modelo  := ''; // |
  Referenciada.RefNFP.serie   := 1;  // |
  Referenciada.RefNFP.nNF     := 0;  // |

  Referenciada.RefECF.modelo  := ECFModRef2B; // |
  Referenciada.RefECF.nECF    := '';          // |- Cupom Fiscal
  Referenciada.RefECF.nCOO    := '';          // |
  *)
  // Emitente
  NotaF.NFe.Emit.CNPJCPF           := QryNFe.FieldByName('EMIT_CNPJCPF').AsString   ;
  NotaF.NFe.Emit.IE                := QryNFe.FieldByName('EMIT_IE').AsString        ;
  NotaF.NFe.Emit.xNome             := QryNFe.FieldByName('EMIT_XNOME').AsString     ;
  NotaF.NFe.Emit.xFant             := QryNFe.FieldByName('EMIT_XFANT').AsString     ;

  // Endereço do Emitente
  NotaF.NFe.Emit.EnderEmit.fone    :=  QryNFe.FieldByName('EMIT_ENDEREMIT_FONE').AsString                         ;
  NotaF.NFe.Emit.EnderEmit.CEP     :=  StrToIntDef(QryNFe.FieldByName('EMIT_ENDEREMIT_CEP').AsString, 00000000)   ;
  NotaF.NFe.Emit.EnderEmit.xLgr    :=  QryNFe.FieldByName('EMIT_ENDEREMIT_XLGR').AsString                         ;
  NotaF.NFe.Emit.EnderEmit.nro     :=  QryNFe.FieldByName('EMIT_ENDEREMIT_NRO').AsString                          ;
  NotaF.NFe.Emit.EnderEmit.xCpl    :=  QryNFe.FieldByName('EMIT_ENDEREMIT_XCPL').AsString                         ;
  NotaF.NFe.Emit.EnderEmit.xBairro :=  QryNFe.FieldByName('EMIT_ENDEREMIT_XBAIRRO').AsString                      ;
  NotaF.NFe.Emit.EnderEmit.cMun    :=  QryNFe.FieldByName('EMIT_ENDEREMIT_CMUN').AsInteger                        ;
  NotaF.NFe.Emit.EnderEmit.xMun    :=  QryNFe.FieldByName('EMIT_ENDEREMIT_XMUN').AsString                         ;
  NotaF.NFe.Emit.EnderEmit.UF      :=  QryNFe.FieldByName('EMIT_ENDEREMIT_UF').AsString                           ;
  NotaF.NFe.Emit.enderEmit.cPais   :=  QryNFe.FieldByName('EMIT_ENDEREMIT_CPAIS').AsInteger                       ;
  NotaF.NFe.Emit.enderEmit.xPais   :=  QryNFe.FieldByName('EMIT_ENDEREMIT_XPAIS').AsString                        ;

  {

  NotaF.NFe.Emit.IEST              := '';
  NotaF.NFe.Emit.IM                := '2648800'; // Preencher no caso de existir serviços na nota
  NotaF.NFe.Emit.CNAE              := '6201500'; // Verifique na cidade do emissor da NFe se é permitido
                                                 // a inclusão de serviços na NFe

  }

    // esta sendo somando 1 uma vez que o ItemIndex inicia do zero e devemos
    // passar os valores 1, 2 ou 3
    // (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)
  NotaF.NFe.Emit.CRT  := StrToCRT(Ok, QryNFe.FieldByName('EMIT_CRT').AsString );
//  NotaF.NFe.Emit.CRT  := StrToCRT(Ok, IntToStr(cbTipoEmpresa.ItemIndex + 1)); QRY_NFeEMIT_CRT.AsString

//Para NFe Avulsa preencha os campos abaixo

//  NotaF.NFe.Avulsa.CNPJ    := '';
//  NotaF.NFe.Avulsa.xOrgao  := '';
//  NotaF.NFe.Avulsa.matr    := '';
//  NotaF.NFe.Avulsa.xAgente := '';
//  NotaF.NFe.Avulsa.fone    := '';
//  NotaF.NFe.Avulsa.UF      := '';
//  NotaF.NFe.Avulsa.nDAR    := '';
//  NotaF.NFe.Avulsa.dEmi    := now;
//  NotaF.NFe.Avulsa.vDAR    := 0;
//  NotaF.NFe.Avulsa.repEmi  := '';
//  NotaF.NFe.Avulsa.dPag    := now;

//  Destinatário
  NotaF.NFe.Dest.CNPJCPF           := QryNFe.FieldByName('DEST_CNPJCPF').AsString   ;

  NotaF.NFe.Dest.indIEDest         := inNaoContribuinte;                                 //  result := EnumeradoToStr(t, ['1', '2', '9'], [inContribuinte, inIsento, inNaoContribuinte]);
//  NotaF.NFe.Dest.IE                := QryNFe.FieldByName('DEST_IE').AsString        ;
//  NotaF.NFe.Dest.ISUF              := QryNFe.FieldByName('DEST_ISUF').AsString      ;
  NotaF.NFe.Dest.xNome             := QryNFe.FieldByName('DEST_XNOME').AsString     ;

  // Endereço do Destinatário
  NotaF.NFe.Dest.EnderDest.Fone    := QryNFe.FieldByName('DEST_ENDERDEST_FONE').AsString                                ;
  NotaF.NFe.Dest.EnderDest.CEP     := StrToIntDef(QryNFe.FieldByName('DEST_ENDERDEST_CEP').AsString, 00000000)          ;
  NotaF.NFe.Dest.EnderDest.xLgr    := QryNFe.FieldByName('DEST_ENDERDEST_XLGR').AsString                                ;
  NotaF.NFe.Dest.EnderDest.nro     := QryNFe.FieldByName('DEST_ENDERDEST_NRO').AsString                                 ;
  NotaF.NFe.Dest.EnderDest.xCpl    := QryNFe.FieldByName('DEST_ENDERDEST_XCPL').AsString                                ;
  NotaF.NFe.Dest.EnderDest.xBairro := QryNFe.FieldByName('DEST_ENDERDEST_XBAIRRO').AsString                             ;
  NotaF.NFe.Dest.EnderDest.cMun    := QryNFe.FieldByName('DEST_ENDERDEST_CMUN').AsInteger                               ;
  NotaF.NFe.Dest.EnderDest.xMun    := QryNFe.FieldByName('DEST_ENDERDEST_XMUN').AsString                                ;
  NotaF.NFe.Dest.EnderDest.UF      := QryNFe.FieldByName('DEST_ENDERDEST_UF').AsString                                  ;
  NotaF.NFe.Dest.EnderDest.cPais   := QryNFe.FieldByName('DEST_ENDERDEST_CPAIS').AsInteger                              ;
  NotaF.NFe.Dest.EnderDest.xPais   := QryNFe.FieldByName('DEST_ENDERDEST_XPAIS').AsString                               ;

//Use os campos abaixo para informar o endereço de retirada quando for diferente do Remetente/Destinatário

//  NotaF.NFe.Retirada.CNPJCPF := '';
//  NotaF.NFe.Retirada.xLgr    := '';
//  NotaF.NFe.Retirada.nro     := '';
//  NotaF.NFe.Retirada.xCpl    := '';
//  NotaF.NFe.Retirada.xBairro := '';
//  NotaF.NFe.Retirada.cMun    := 0;
//  NotaF.NFe.Retirada.xMun    := '';
//  NotaF.NFe.Retirada.UF      := '';

//Use os campos abaixo para informar o endereço de entrega quando for diferente do Remetente/Destinatário

//  NotaF.NFe.Entrega.CNPJCPF := '';
//  NotaF.NFe.Entrega.xLgr    := '';
//  NotaF.NFe.Entrega.nro     := '';
//  NotaF.NFe.Entrega.xCpl    := '';
//  NotaF.NFe.Entrega.xBairro := '';
//  NotaF.NFe.Entrega.cMun    := 0;
//  NotaF.NFe.Entrega.xMun    := '';
//  NotaF.NFe.Entrega.UF      := '';


   QryNFeItens.DisableControls;
   QryNFeItens.First;
   while not QryNFeItens.Eof do
   begin

    //Adicionando Produtos
    Produto := NotaF.NFe.Det.New;
    Produto.Prod.nItem    := QryNFeItens.FieldByName('PROD_NITEM').AsInteger                    ; // 1; // Número sequencial, para cada item deve ser incrementado
    Produto.Prod.cProd    := IntToStr(QryNFeItens.FieldByName('PROD_CPROD').AsInteger)          ;


    //Valida código de barras
    FCodigoBarras := QryNFeItens.FieldByName('PROD_CEAN').AsString                              ;
    ACBrValidador.Documento := FCodigoBarras;
    ACBrValidador.TipoDocto := docGTIN;

    if not ACBrValidador.Validar then
      FCodigoBarras := 'SEM GTIN';

    Produto.Prod.cEAN     := FCodigoBarras; // QryNFeItens.FieldByName('PROD_CEAN').AsString    ;
    Produto.Prod.xProd    := QryNFeItens.FieldByName('PROD_XPROD').AsString                     ;
    Produto.Prod.NCM      := QryNFeItens.FieldByName('PROD_NCM').AsString                       ;
    Produto.Prod.EXTIPI   := QryNFeItens.FieldByName('PROD_EXTIPI').AsString                    ;
    Produto.Prod.CFOP     := QryNFeItens.FieldByName('PROD_CFOP').AsString                      ;
    Produto.Prod.uCom     := QryNFeItens.FieldByName('PROD_UCOM').AsString                      ;
    Produto.Prod.qCom     := QryNFeItens.FieldByName('PROD_QCOM').AsFloat                       ;
    Produto.Prod.vUnCom   := QryNFeItens.FieldByName('PROD_VUNCOM').AsFloat                     ;
    Produto.Prod.vProd    := QryNFeItens.FieldByName('PROD_VPROD').AsFloat                      ;

    Produto.Prod.cEANTrib  := FCodigoBarras; // QryNFeItens.FieldByName('PROD_CEANTRIB').AsString      ;
    Produto.Prod.uTrib     := QryNFeItens.FieldByName('PROD_UTRIB').AsString         ;
    Produto.Prod.qTrib     := QryNFeItens.FieldByName('PROD_QTRIB').AsFloat          ;
    Produto.Prod.vUnTrib   := QryNFeItens.FieldByName('PROD_VUNTRIB').AsFloat        ;

    Produto.Prod.vOutro    := QryNFeItens.FieldByName('PROD_VOUTRO').AsFloat         ;
    Produto.Prod.vFrete    := QryNFeItens.FieldByName('PROD_VFRETE').AsFloat         ;
    Produto.Prod.vSeg      := QryNFeItens.FieldByName('PROD_VSEG').AsFloat           ;
    Produto.Prod.vDesc     := QryNFeItens.FieldByName('PROD_VDESC').AsFloat          ;

    //Produto.Prod.CEST := '1111111';

    Produto.infAdProd := QryNFeItens.FieldByName('PROD_INFADPROD').AsString;

    {
      abaixo os campos incluidos no layout a partir da NT 2020/005
    }
    // Opcional - Preencher com o Código de Barras próprio ou de terceiros que seja diferente do padrão GTIN
    // por exemplo: código de barras de catálogo, partnumber, etc
    Produto.Prod.cBarra := FCodigoBarras; // QryNFeItens.FieldByName('PROD_CBARRA').AsString;
    // Opcional - Preencher com o Código de Barras próprio ou de terceiros que seja diferente do padrão GTIN
    //  correspondente àquele da menor unidade comercializável identificado por Código de Barras
    // por exemplo: código de barras de catálogo, partnumber, etc
    Produto.Prod.cBarraTrib := FCodigoBarras; // QryNFeItens.FieldByName('PROD_CBARRATRIB').AsString;



    //Campos para venda de veículos novos
//    Produto.Prod.veicProd.tpOP    := toVendaConcessionaria;
//    Produto.Prod.veicProd.chassi  := '';
//    Produto.Prod.veicProd.cCor    := '';
//    Produto.Prod.veicProd.xCor    := '';
//    Produto.Prod.veicProd.pot     := '';
//    Produto.Prod.veicProd.Cilin   := '';
//    Produto.Prod.veicProd.pesoL   := '';
//    Produto.Prod.veicProd.pesoB   := '';
//    Produto.Prod.veicProd.nSerie  := '';
//    Produto.Prod.veicProd.tpComb  := '';
//    Produto.Prod.veicProd.nMotor  := '';
//    Produto.Prod.veicProd.CMT     := '';
//    Produto.Prod.veicProd.dist    := '';
//    Produto.Prod.veicProd.anoMod  := 0;
//    Produto.Prod.veicProd.anoFab  := 0;
//    Produto.Prod.veicProd.tpPint  := '';
//    Produto.Prod.veicProd.tpVeic  := 0;
//    Produto.Prod.veicProd.espVeic := 0;
//    Produto.Prod.veicProd.VIN     := '';
//    Produto.Prod.veicProd.condVeic := cvAcabado;
//    Produto.Prod.veicProd.cMod    := '';

  // Campos de Rastreabilidade do produto
    {
    O grupo <rastro> permiti a rastreabilidade de qualquer produto sujeito a
    regulações sanitárias, casos de recolhimento/recall, além de defensivos agrícolas,
    produtos veterinários, odontológicos, medicamentos, bebidas, águas envasadas,
    embalagens, etc., a partir da indicação de informações de número de lote,
    data de fabricação/produção, data de validade, etc.
    Obrigatório o preenchimento deste grupo no caso de medicamentos e
    produtos farmacêuticos.
    }

    // Ocorrências: 0 - 500
    (*
    Rastro := Produto.Prod.rastro.Add;

    Rastro.nLote  := '17H8F5';
    Rastro.qLote  := 1;
    Rastro.dFab   := StrToDate('01/08/2017');
    Rastro.dVal   := StrToDate('01/08/2019');
    Rastro.cAgreg := ''; // Código de Agregação (opcional) de 1 até 20 dígitos
    *)

  //Campos específicos para venda de medicamentos

    // Ocorrências: 1 - 500 ==> 1 - 1 (4.00)
    (*
    Medicamento := Produto.Prod.med.Add;

    Medicamento.cProdANVISA := '1256802470029';
    Medicamento.vPMC        := 100.00; // Preço máximo consumidor
    *)

  //Campos específicos para venda de armamento
    (*
    Arma := Produto.Prod.arma.Add;
    Arma.nSerie := 0;
    Arma.tpArma := taUsoPermitido;
    Arma.nCano  := 0;
    Arma.descr  := '';
    *)

  //Campos específicos para venda de combustível(distribuidoras)

//    Produto.Prod.comb.cProdANP := 0;
//    Produto.Prod.comb.CODIF    := '';
//    Produto.Prod.comb.qTemp    := 0;
//    Produto.Prod.comb.UFcons   := '';
//
//    Produto.Prod.comb.CIDE.qBCprod   := 0;
//    Produto.Prod.comb.CIDE.vAliqProd := 0;
//    Produto.Prod.comb.CIDE.vCIDE     := 0;
//
//    Produto.Prod.comb.ICMS.vBCICMS   := 0;
//    Produto.Prod.comb.ICMS.vICMS     := 0;
//    Produto.Prod.comb.ICMS.vBCICMSST := 0;
//    Produto.Prod.comb.ICMS.vICMSST   := 0;
//
//    Produto.Prod.comb.ICMSInter.vBCICMSSTDest := 0;
//    Produto.Prod.comb.ICMSInter.vICMSSTDest   := 0;
//
//    Produto.Prod.comb.ICMSCons.vBCICMSSTCons := 0;
//    Produto.Prod.comb.ICMSCons.vICMSSTCons   := 0;
//    Produto.Prod.comb.ICMSCons.UFcons        := '';




    with Produto.Imposto do
    begin
      // lei da transparencia nos impostos
      vTotTrib := QryNFeItens.FieldByName('IMPOSTO_VTOTTRIB').AsFloat;

      with ICMS do
      begin
        // caso o CRT seja:
        // 1=Simples Nacional
        // Os valores aceitos para CSOSN são:
        // csosn101, csosn102, csosn103, csosn201, csosn202, csosn203,
        // csosn300, csosn400, csosn500,csosn900

        // 2=Simples Nacional, excesso sublimite de receita bruta;
        // ou 3=Regime Normal.
        // Os valores aceitos para CST são:
        // cst00, cst10, cst20, cst30, cst40, cst41, cst45, cst50, cst51,
        // cst60, cst70, cst80, cst81, cst90, cstPart10, cstPart90,
        // cstRep41, cstVazio, cstICMSOutraUF, cstICMSSN, cstRep60

        // (consulte o contador do seu cliente para saber qual deve ser utilizado)
        // Pode variar de um produto para outro.

        orig := oeNacional;  // QRY_NFeItensICMS_ORIG.AsString


//        EnumeradoToStr(t, ['','1', '2', '3'], [crtRegimeNormal,crtSimplesNacional, crtSimplesExcessoReceita, crtRegimeNormal]);
//        if NotaF.NFe.Emit.CRT in [crtSimplesExcessoReceita, crtRegimeNormal] then
//        if (QryNFe.FieldByName('EMIT_CRT').AsString.Trim = '2') or (QryNFe.FieldByName('EMIT_CRT').AsString.Trim = '3') then
        if NotaF.NFe.Emit.CRT in [crtSimplesExcessoReceita, crtRegimeNormal] then
        begin
          CST     := cst00;                                                   // QRY_NFeItensICMS_CST.AsString
          modBC   := dbiPrecoTabelado;                                        // QRY_NFeItensICMS_MODBC.AsString
          vBC     := QryNFeItens.FieldByName('ICMS_VBC').AsFloat      ;
          pICMS   := QryNFeItens.FieldByName('ICMS_PICMS').AsFloat    ;
          vICMS   := QryNFeItens.FieldByName('ICMS_VICMS').AsFloat    ;
          modBCST := dbisMargemValorAgregado;                                 // QRY_NFeItensICMS_MODBCST.AsString
          pMVAST  := QryNFeItens.FieldByName('ICMS_PMVAST').AsFloat       ;
          pRedBCST:= QryNFeItens.FieldByName('ICMS_PREDBCST').AsFloat     ;
          vBCST   := QryNFeItens.FieldByName('ICMS_VBCST').AsFloat        ;
          pICMSST := QryNFeItens.FieldByName('ICMS_PICMSST').AsFloat      ;
          vICMSST := QryNFeItens.FieldByName('ICMS_VICMSST').AsFloat      ;
          pRedBC  := QryNFeItens.FieldByName('ICMS_PREDBC').AsFloat       ;
        end
        else
        begin
          CSOSN         := csosn102;                    // QRY_NFeItensICMS_CSOSN.AsString
          modBC         := dbiValorOperacao;            // QRY_NFeItensICMS_MODBC.AsString
          pCredSN       := QryNFeItens.FieldByName('ICMS_PCREDSN').AsFloat        ;
          vCredICMSSN   := QryNFeItens.FieldByName('ICMS_VCREDICMSSN').AsFloat    ;
          vBC           := QryNFeItens.FieldByName('ICMS_VBC').AsFloat            ;
          pICMS         := QryNFeItens.FieldByName('ICMS_PICMS').AsFloat          ;
          vICMS         := QryNFeItens.FieldByName('ICMS_VICMS').AsFloat          ;
          modBCST       := dbisListaNeutra;
          pMVAST        := QryNFeItens.FieldByName('ICMS_PMVAST').AsFloat         ;
          pRedBCST      := QryNFeItens.FieldByName('ICMS_PREDBCST').AsFloat       ;
          vBCST         := QryNFeItens.FieldByName('ICMS_VBCST').AsFloat          ;
          pICMSST       := QryNFeItens.FieldByName('ICMS_PICMSST').AsFloat        ;
          vICMSST       := QryNFeItens.FieldByName('ICMS_VICMSST').AsFloat        ;
        end;

        vBCFCPST        := QryNFeItens.FieldByName('ICMS_VBCFCPST').AsFloat               ;
        pFCPST          := QryNFeItens.FieldByName('ICMS_PFCPST').AsFloat                 ;
        vFCPST          := QryNFeItens.FieldByName('ICMS_VFCPST').AsFloat                 ;
        vBCSTRet        := QryNFeItens.FieldByName('ICMS_VBCSTRET').AsFloat               ;
        pST             := QryNFeItens.FieldByName('ICMS_PST').AsFloat                    ;
        vICMSSubstituto := QryNFeItens.FieldByName('ICMS_VICMSSUBSTITUTO').AsFloat        ;
        vICMSSTRet      := QryNFeItens.FieldByName('ICMS_VICMSSTRET').AsFloat             ;
        vBCFCPSTRet     := QryNFeItens.FieldByName('ICMS_VBCFCPSTRET').AsFloat            ;
        pFCPSTRet       := QryNFeItens.FieldByName('ICMS_PFCPSTRET').AsFloat              ;
        vFCPSTRet       := QryNFeItens.FieldByName('ICMS_VFCPSTRET').AsFloat              ;
        pRedBCEfet      := QryNFeItens.FieldByName('ICMS_PREDBCEFET').AsFloat             ;
        vBCEfet         := QryNFeItens.FieldByName('ICMS_VBCEFET').AsFloat                ;
        pICMSEfet       := QryNFeItens.FieldByName('ICMS_PICMSEFET').AsFloat              ;
        vICMSEfet       := QryNFeItens.FieldByName('ICMS_VICMSEFET').AsFloat              ;

        {
          abaixo os campos incluidos no layout a partir da NT 2020/005
        }
        // Informar apenas nos motivos de desoneração documentados abaixo
        vICMSSTDeson := QryNFeItens.FieldByName('ICMS_VICMSSTDESON').AsFloat;
        {
          o campo abaixo só aceita os valores:
          mdiProdutorAgropecuario, mdiOutros, mdiOrgaoFomento
          Campo será preenchido quando o campo anterior estiver preenchido.
        }
        motDesICMSST := mdiOutros;        // QRY_NFeItensICMS_MOTDESICMSST.AsString

        // Percentual do diferimento do ICMS relativo ao Fundo de Combate à Pobreza (FCP).
        // No caso de diferimento total, informar o percentual de diferimento "100"
        pFCPDif := QryNFeItens.FieldByName('ICMS_PFCPDIF').AsFloat;
        // Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) diferido
        vFCPDif := QryNFeItens.FieldByName('ICMS_VFCPDIF').AsFloat;
        // Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) realmente devido.
        vFCPEfet := QryNFeItens.FieldByName('ICMS_VFCPEFET').AsFloat;
      end;

      with ICMSUFDest do
      begin
        // partilha do ICMS e fundo de probreza
        vBCUFDest      := QryNFeItens.FieldByName('ICMSUFDEST_VBCUFDEST').AsFloat          ;
        pFCPUFDest     := QryNFeItens.FieldByName('ICMSUFDEST_PFCPUFDEST').AsFloat         ;
        pICMSUFDest    := QryNFeItens.FieldByName('ICMSUFDEST_PICMSUFDEST').AsFloat        ;
        pICMSInter     := QryNFeItens.FieldByName('ICMSUFDEST_PICMSINTER').AsFloat         ;
        pICMSInterPart := QryNFeItens.FieldByName('ICMSUFDEST_PICMSINTERPART').AsFloat     ;
        vFCPUFDest     := QryNFeItens.FieldByName('ICMSUFDEST_VFCPUFDEST').AsFloat         ;
        vICMSUFDest    := QryNFeItens.FieldByName('ICMSUFDEST_VICMSUFDEST').AsFloat        ;
        vICMSUFRemet   := QryNFeItens.FieldByName('ICMSUFDEST_VICMSUFREMET').AsFloat       ;
      end;

      (*
      // IPI, se hpouver...
      with IPI do
      begin
        CST      := ipi99;
        clEnq    := '999';
        CNPJProd := '';
        cSelo    := '';
        qSelo    := 0;
        cEnq     := '';

        vBC    := 100;
        qUnid  := 0;
        vUnid  := 0;
        pIPI   := 5;
        vIPI   := 5;
      end;
      *)

      with II do
      begin
        II.vBc      := QryNFeItens.FieldByName('II_VBC').AsFloat        ;
        II.vDespAdu := QryNFeItens.FieldByName('II_VDESPADU').AsFloat   ;
        II.vII      := QryNFeItens.FieldByName('II_VII').AsFloat        ;
        II.vIOF     := QryNFeItens.FieldByName('II_VIOF').AsFloat       ;
      end;

      with PIS do
      begin
        CST  := pis99; // QRY_NFeItensPIS_CST.AsString
        vBC  := QryNFeItens.FieldByName('PIS_VBC').AsFloat   ;
        pPIS := QryNFeItens.FieldByName('PIS_PPIS').AsFloat  ;
        vPIS := QryNFeItens.FieldByName('PIS_VPIS').AsFloat  ;

        qBCProd   := QryNFeItens.FieldByName('PIS_QBCPROD').AsFloat   ;
        vAliqProd := QryNFeItens.FieldByName('PIS_VALIQPROD').AsFloat ;
        vPIS      := QryNFeItens.FieldByName('PIS_VPIS').AsFloat      ;
      end;

      with PISST do
      begin
        vBc       :=  QryNFeItens.FieldByName('PISST_VBC').AsFloat       ;
        pPis      :=  QryNFeItens.FieldByName('PISST_PPIS').AsFloat      ;
        qBCProd   :=  QryNFeItens.FieldByName('PISST_QBCPROD').AsFloat   ;
        vAliqProd :=  QryNFeItens.FieldByName('PISST_VALIQPROD').AsFloat ;
        vPIS      :=  QryNFeItens.FieldByName('PISST_VPIS').AsFloat      ;
        {
          abaixo o campo incluido no layout a partir da NT 2020/005
        }
        {
          valores aceitos pelo campo:
          ispNenhum, ispPISSTNaoCompoe, ispPISSTCompoe
        }
        // Indica se o valor do PISST compõe o valor total da NF-e
        IndSomaPISST :=  ispNenhum;  // QRY_NFeItensPISST_INDSOMAPISST.AsString
      end;

      with COFINS do
      begin
        CST         := cof99; // QRY_NFeItensCOFINS_CST.AsString
        vBC         := QryNFeItens.FieldByName('COFINS_VBC').AsFloat       ;
        pCOFINS     := QryNFeItens.FieldByName('COFINS_PCOFINS').AsFloat   ;
        vCOFINS     := QryNFeItens.FieldByName('COFINS_VCOFINS').AsFloat   ;
        qBCProd     := QryNFeItens.FieldByName('COFINS_QBCPROD').AsFloat   ;
        vAliqProd   := QryNFeItens.FieldByName('COFINS_VALIQPROD').AsFloat ;
      end;

      with COFINSST do
      begin
        vBC       := QryNFeItens.FieldByName('COFINSST_VBC').AsFloat        ;
        pCOFINS   := QryNFeItens.FieldByName('COFINSST_PCOFINS').AsFloat    ;
        qBCProd   := QryNFeItens.FieldByName('COFINSST_QBCPROD').AsFloat    ;
        vAliqProd := QryNFeItens.FieldByName('COFINSST_VALIQPROD').AsFloat  ;
        vCOFINS   := QryNFeItens.FieldByName('COFINSST_VCOFINS').AsFloat    ;
        {
          abaixo o campo incluido no layout a partir da NT 2020/005
        }
        {
          valores aceitos pelo campo:
          iscNenhum, iscCOFINSSTNaoCompoe, iscCOFINSSTCompoe
        }
        // Indica se o valor da COFINS ST compõe o valor total da NF-e
        indSomaCOFINSST :=  iscNenhum;    // QRY_NFeItensCOFINSST_INDSOMACOFINSST.AsString
      end;
    end;

    QryNFeItens.Next;

  end;
   QryNFeItens.EnableControls;




  //Adicionando Serviços
  (*
  Servico := NotaF.Nfe.Det.Add;
  Servico.Prod.nItem    := 1; // Número sequencial, para cada item deve ser incrementado
  Servico.Prod.cProd    := '123457';
  Servico.Prod.cEAN     := '';
  Servico.Prod.xProd    := 'Descrição do Serviço';
  Servico.Prod.NCM      := '99';
  Servico.Prod.EXTIPI   := '';
  Servico.Prod.CFOP     := '5933';
  Servico.Prod.uCom     := 'UN';
  Servico.Prod.qCom     := 1;
  Servico.Prod.vUnCom   := 100;
  Servico.Prod.vProd    := 100;

  Servico.Prod.cEANTrib  := '';
  Servico.Prod.uTrib     := 'UN';
  Servico.Prod.qTrib     := 1;
  Servico.Prod.vUnTrib   := 100;

  Servico.Prod.vFrete    := 0;
  Servico.Prod.vSeg      := 0;
  Servico.Prod.vDesc     := 0;

  Servico.infAdProd      := 'Informação Adicional do Serviço';

  //Grupo para serviços
  Servico.Imposto.ISSQN
  Servico.Imposto.cSitTrib  := ISSQNcSitTribNORMAL;
  Servico.Imposto.vBC       := 100;
  Servico.Imposto.vAliq     := 2;
  Servico.Imposto.vISSQN    := 2;
  Servico.Imposto.cMunFG    := 3554003;
  // Preencha este campo usando a tabela disponível
  // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
  Servico.Imposto.cListServ := '1402';

  NotaF.NFe.Total.ISSQNtot.vServ   := 100;
  NotaF.NFe.Total.ISSQNTot.vBC     := 100;
  NotaF.NFe.Total.ISSQNTot.vISS    := 2;
  NotaF.NFe.Total.ISSQNTot.vPIS    := 0;
  NotaF.NFe.Total.ISSQNTot.vCOFINS := 0;

*)

  if NotaF.NFe.Emit.CRT in [crtSimplesExcessoReceita, crtRegimeNormal] then
  begin
    NotaF.NFe.Total.ICMSTot.vBC   := QryNFe.FieldByName('TOTAL_ICMSTOT_VBC').AsFloat         ;
    NotaF.NFe.Total.ICMSTot.vICMS := QryNFe.FieldByName('TOTAL_ICMSTOT_VICMS').AsFloat       ;
  end
  else
  begin
    NotaF.NFe.Total.ICMSTot.vBC   := 0;
    NotaF.NFe.Total.ICMSTot.vICMS := 0;
  end;

  NotaF.NFe.Total.ICMSTot.vBCST   := QryNFe.FieldByName('TOTAL_ICMSTOT_VBCST').AsFloat       ;
  NotaF.NFe.Total.ICMSTot.vST     := QryNFe.FieldByName('TOTAL_ICMSTOT_VST').AsFloat         ;
  NotaF.NFe.Total.ICMSTot.vProd   := QryNFe.FieldByName('TOTAL_ICMSTOT_VPROD').AsFloat       ;
  NotaF.NFe.Total.ICMSTot.vFrete  := QryNFe.FieldByName('TOTAL_ICMSTOT_VFRETE').AsFloat      ;
  NotaF.NFe.Total.ICMSTot.vSeg    := QryNFe.FieldByName('TOTAL_ICMSTOT_VSEG').AsFloat        ;
  NotaF.NFe.Total.ICMSTot.vDesc   := QryNFe.FieldByName('TOTAL_ICMSTOT_VDESC').AsFloat       ;
  NotaF.NFe.Total.ICMSTot.vII     := QryNFe.FieldByName('TOTAL_ICMSTOT_VII').AsFloat         ;
  NotaF.NFe.Total.ICMSTot.vIPI    := QryNFe.FieldByName('TOTAL_ICMSTOT_VIPI').AsFloat        ;
  NotaF.NFe.Total.ICMSTot.vPIS    := QryNFe.FieldByName('TOTAL_ICMSTOT_VPIS').AsFloat        ;
  NotaF.NFe.Total.ICMSTot.vCOFINS := QryNFe.FieldByName('TOTAL_ICMSTOT_VCOFINS').AsFloat     ;
  NotaF.NFe.Total.ICMSTot.vOutro  := QryNFe.FieldByName('TOTAL_ICMSTOT_VOUTRO').AsFloat      ;
  NotaF.NFe.Total.ICMSTot.vNF     := QryNFe.FieldByName('TOTAL_ICMSTOT_VNF').AsFloat         ;

  // lei da transparencia de impostos
  NotaF.NFe.Total.ICMSTot.vTotTrib := QryNFe.FieldByName('TOTAL_ICMSTOT_VTOTTRIB').AsFloat  ;

  // partilha do icms e fundo de probreza
  NotaF.NFe.Total.ICMSTot.vFCPUFDest   := QryNFe.FieldByName('TOTAL_ICMSTOT_VFCPUFDEST').AsFloat    ;
  NotaF.NFe.Total.ICMSTot.vICMSUFDest  := QryNFe.FieldByName('TOTAL_ICMSTOT_VICMSUFDEST').AsFloat   ;
  NotaF.NFe.Total.ICMSTot.vICMSUFRemet := QryNFe.FieldByName('TOTAL_ICMSTOT_VICMSUFREMET').AsFloat  ;

  NotaF.NFe.Total.ICMSTot.vFCPST     := QryNFe.FieldByName('TOTAL_ICMSTOT_VFCPST').AsFloat          ;
  NotaF.NFe.Total.ICMSTot.vFCPSTRet  := QryNFe.FieldByName('TOTAL_ICMSTOT_VFCPSTRET').AsFloat       ;

  NotaF.NFe.Total.retTrib.vRetPIS    := QryNFe.FieldByName('TOTAL_RETTRIB_VRETPIS').AsFloat          ;
  NotaF.NFe.Total.retTrib.vRetCOFINS := QryNFe.FieldByName('TOTAL_RETTRIB_VRETCOFINS').AsFloat       ;
  NotaF.NFe.Total.retTrib.vRetCSLL   := QryNFe.FieldByName('TOTAL_RETTRIB_VRETCSLL').AsFloat         ;
  NotaF.NFe.Total.retTrib.vBCIRRF    := QryNFe.FieldByName('TOTAL_RETTRIB_VBCIRRF').AsFloat          ;
  NotaF.NFe.Total.retTrib.vIRRF      := QryNFe.FieldByName('TOTAL_RETTRIB_VIRRF').AsFloat            ;
  NotaF.NFe.Total.retTrib.vBCRetPrev := QryNFe.FieldByName('TOTAL_RETTRIB_VBCRETPREV').AsFloat       ;
  NotaF.NFe.Total.retTrib.vRetPrev   := QryNFe.FieldByName('TOTAL_RETTRIB_VRETPREV').AsFloat         ;

//  NotaF.NFe.Transp.modFrete := mfContaEmitente;
//  NotaF.NFe.Transp.Transporta.CNPJCPF  := '';
//  NotaF.NFe.Transp.Transporta.xNome    := '';
//  NotaF.NFe.Transp.Transporta.IE       := '';
//  NotaF.NFe.Transp.Transporta.xEnder   := '';
//  NotaF.NFe.Transp.Transporta.xMun     := '';
//  NotaF.NFe.Transp.Transporta.UF       := '';
//
//  NotaF.NFe.Transp.retTransp.vServ    := 0;
//  NotaF.NFe.Transp.retTransp.vBCRet   := 0;
//  NotaF.NFe.Transp.retTransp.pICMSRet := 0;
//  NotaF.NFe.Transp.retTransp.vICMSRet := 0;
//  NotaF.NFe.Transp.retTransp.CFOP     := '';
//  NotaF.NFe.Transp.retTransp.cMunFG   := 0;
//
//  Volume := NotaF.NFe.Transp.Vol.New;
//  Volume.qVol  := 1;
//  Volume.esp   := 'Especie';
//  Volume.marca := 'Marca';
//  Volume.nVol  := 'Numero';
//  Volume.pesoL := 100;
//  Volume.pesoB := 110;



  //Lacres do volume. Pode ser adicionado vários
  (*
  Lacre := Volume.Lacres.Add;
  Lacre.nLacre := '';
  *)

//  NotaF.NFe.Cobr.Fat.nFat  := '1001'; // 'Numero da Fatura'
//  NotaF.NFe.Cobr.Fat.vOrig := 100;
//  NotaF.NFe.Cobr.Fat.vDesc := 0;
//  NotaF.NFe.Cobr.Fat.vLiq  := 100;
//
//  Duplicata := NotaF.NFe.Cobr.Dup.New;
//  Duplicata.nDup  := '001';
//  Duplicata.dVenc := now+10;
//  Duplicata.vDup  := 50;
//
//  Duplicata := NotaF.NFe.Cobr.Dup.New;
//  Duplicata.nDup  := '002';
//  Duplicata.dVenc := now+20;
//  Duplicata.vDup  := 50;

    // O grupo infIntermed só deve ser gerado nos casos de operação não presencial
    // pela internet em site de terceiros (Intermediadores).
//  NotaF.NFe.infIntermed.CNPJ := '';
//  NotaF.NFe.infIntermed.idCadIntTran := '';

  NotaF.NFe.InfAdic.infCpl     := QryNFe.FieldByName('INFADIC_INFCPL').AsString        ;
  NotaF.NFe.InfAdic.infAdFisco := QryNFe.FieldByName('INFADIC_INFADFISCO').AsString    ;

  ObsComplementar := NotaF.NFe.InfAdic.obsCont.New;
  ObsComplementar.xCampo := QryNFe.FieldByName('OBSCOMPLEMENTAR_XCAMPO').AsString   ;
  ObsComplementar.xTexto := QryNFe.FieldByName('OBSCOMPLEMENTAR_XTEXTO').AsString   ;

  ObsFisco := NotaF.NFe.InfAdic.obsFisco.New;
  ObsFisco.xCampo :=  QryNFe.FieldByName('OBSFISCO_XCAMPO').AsString   ;
  ObsFisco.xTexto :=  QryNFe.FieldByName('OBSFISCO_XTEXTO').AsString   ;

//Processo referenciado
  (*
  ProcReferenciado := NotaF.Nfe.InfAdic.procRef.Add;
  ProcReferenciado.nProc := '';
  ProcReferenciado.indProc := ipSEFAZ;
  *)

//  NotaF.NFe.exporta.UFembarq   := '';;
//  NotaF.NFe.exporta.xLocEmbarq := '';
//
//  NotaF.NFe.compra.xNEmp := '';
//  NotaF.NFe.compra.xPed  := '';
//  NotaF.NFe.compra.xCont := '';

// YA. Informações de pagamento

  InfoPgto := NotaF.NFe.pag.New;
  InfoPgto.indPag := ipVista;    // QRY_NFeINFOPGTO_INDPAG.AsString
  InfoPgto.tPag   := fpDinheiro; // QRY_NFeINFOPGTO_TPAG.AsString
  InfoPgto.vPag   := QryNFe.FieldByName('INFOPGTO_VPAG').AsFloat ;

// Exemplo de pagamento integrado.

//  InfoPgto := NotaF.NFe.pag.New;
//  InfoPgto.indPag := ipVista;
//  InfoPgto.tPag   := fpCartaoCredito;

  {
    abaixo o campo incluido no layout a partir da NT 2020/006
  }
  {
    se tPag for fpOutro devemos incluir o campo xPag
  InfoPgto.xPag := 'Caderneta';
  }

//  InfoPgto.vPag   := 75;
//  InfoPgto.tpIntegra := tiPagIntegrado;
//  InfoPgto.CNPJ      := '05481336000137';
//  InfoPgto.tBand     := bcVisa;
//  InfoPgto.cAut      := '1234567890123456';

// YA09 Troco
// Regra opcional: Informar se valor dos pagamentos maior que valor da nota.
// Regra obrigatória: Se informado, Não pode diferir de "(+) vPag (id:YA03) (-) vNF (id:W16)"
//  NotaF.NFe.pag.vTroco := 75;

  {
    abaixo o campo incluido no layout a partir da NT 2020/006
  }
  // CNPJ do Intermediador da Transação (agenciador, plataforma de delivery,
  // marketplace e similar) de serviços e de negócios.

//  NotaF.NFe.infIntermed.CNPJ := '';

  // Nome do usuário ou identificação do perfil do vendedor no site do intermediador
  // (agenciador, plataforma de delivery, marketplace e similar) de serviços e de
  // negócios.

//  NotaF.NFe.infIntermed.idCadIntTran := '';




   {

    Depois que o componente tiver alimentado, deverá decidir o que quer fazer...

    1 - Emitir NF-e
    2 - Cancelr NF-e
    3 - Corrigir NF-e

   }





  //=========================================== 1 - Emitir NF-e
  ACBrNFe.NotasFiscais.Assinar;
  ACBrNFe.NotasFiscais.Validar;

  ACBrNFe.NotasFiscais.GerarNFe;
  ACBrNFe.Enviar(QryNFe.FieldByName('IDE_NNF').AsInteger, True, True);
  ACBrNFe.NotasFiscais.ImprimirPDF;



   // Atualiza os dados da NF-e com dados de Retorno
//  var
//    verAplic, TpAmb, xMotivo, Recibo, Protocolo: string;
//  var
//    cStat, cUF: integer;
//  var
//    dhRecbto: TDateTime;
//
//
//  verAplic  := ACBrNFe.WebServices.Enviar.verAplic;
//  TpAmb     := TpAmbToStr(ACBrNFe.WebServices.Enviar.TpAmb);
//  cStat     := ACBrNFe.WebServices.Enviar.cStat;
//  cUF       := ACBrNFe.WebServices.Enviar.cUF;
//  xMotivo   := ACBrNFe.WebServices.Enviar.xMotivo;
//  Recibo    := ACBrNFe.WebServices.Enviar.Recibo;
//  Protocolo := ACBrNFe.WebServices.Enviar.Protocolo;
//  dhRecbto  := ACBrNFe.WebServices.Enviar.dhRecbto;

  //Atualiza os dados da Tabela com Retorno
  FService := TServiceCadastro.Create(Self);  // Nesse caso teve que fazer uses de: TServiceCadastro visto que o create nativo foi reescrito.
  try
    FService.GET_NFe(QryNFe.FieldByName('IDNFE').AsInteger);

    FService.QRY_NFe.Edit;
    FService.QRY_NFeRETORNO_VERAPLIC.AsString   := ACBrNFe.WebServices.Enviar.verAplic;            // ACBrNFe.WebServices.Retorno.verAplic;
    FService.QRY_NFeRETORNO_TPAMB.AsString      := TpAmbToStr(ACBrNFe.WebServices.Enviar.TpAmb);   // TpAmbToStr(ACBrNFe.WebServices.Retorno.TpAmb);
    FService.QRY_NFeRETORNO_CSTAT.AsInteger     := ACBrNFe.WebServices.Enviar.cStat;
    FService.QRY_NFeRETORNO_PROTOCOLO.AsString  := ACBrNFe.WebServices.Enviar.Protocolo;

    FService.QRY_NFeRETORNO_RECIBO.AsString     := '';
    FService.QRY_NFeRETORNO_CUF.AsInteger       := ACBrNFe.WebServices.Enviar.cUF;
    FService.QRY_NFeRETORNO_CMSG.AsInteger      := ACBrNFe.WebServices.Enviar.cStat;
    FService.QRY_NFeRETORNO_XMSG.AsString       := ACBrNFe.WebServices.Enviar.xMotivo;

    FService.QRY_NFeRETORNO_XMOTIVO.AsString    := ACBrNFe.WebServices.Enviar.xMotivo;             // ACBrNFe.NotasFiscais.Items[0].Nfe.procNFe.xMotivo;
    FService.QRY_NFeRETORNO_CHNFE.AsString      := LChaveDFe;                                         // ACBrNFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].chDFe;
    FService.QRY_NFeRETORNO_DHRECBTO.AsDateTime := ACBrNFe.WebServices.Enviar.dhRecbto;
//    FService.QRY_NFCeRETORNO_DIGVAL.AsString     := ACBrNFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].digVal;
    FService.QRY_NFe.Post;


    //Atualiza a venda com os dados de retorno... Poderia tbm apenas fazer joim com a nfce se fosse o caso...
    //Se um dia emitir um documento fiscal com mais de uma venda deverá rever isso aqui...
    FService.QRY_Aux.Close;
    FService.QRY_Aux.SQL.Clear;
    FService.QRY_Aux.SQL.Add('update ESTVENDA');
    FService.QRY_Aux.SQL.Add('set MODELOFISCAL = :MODELOFISCAL,');
    FService.QRY_Aux.SQL.Add('    NUMNFE = :NUMNFE');
    FService.QRY_Aux.SQL.Add('where (IDVENDA = :IDVENDA)   ');
    FService.QRY_Aux.Params[0].AsInteger := 55;
    FService.QRY_Aux.Params[1].AsInteger := QryNFe.FieldByName('IDE_nNF').AsInteger ;
    FService.QRY_Aux.Params[2].AsInteger := StrToIntDef(QryNFe.FieldByName('NUM_DOCS_EMITIDOS').AsString, 0);
    FService.QRY_Aux.ExecSQL;

  finally
    FreeAndNil(FService);
  end;

end;

procedure TViewACBrFiscal.CancelarDFe(QryDFe: TDataSet);
var
  IdEvento: integer;
begin

  FService := TServiceCadastro.Create(Self);  // Nesse caso teve que fazer uses de: TServiceCadastro visto que o create nativo foi reescrito.
  try


      //NF-e Modelo 55
      if QryDFe.FieldByName('IDE_MODELO').AsInteger = 55 then
      begin

        // Carrega o XML já armazenado na pasta
        LChaveDFe       := QryDFe.FieldByName('Retorno_ChNFe').AsString;
        LStringArquivo  := LPastaNFe + '\' + LChaveDFe + '-nfe.xml';
        ACBrNFe.NotasFiscais.Clear;
        ACBrNFe.NotasFiscais.LoadFromFile(LStringArquivo, False);

        IdEvento := FService.GET_IdEventoCancelarDFe;

        ACBrNFe.EventoNFe.Evento.Clear;
        ACBrNFe.EventoNFe.idLote := IdEvento; // StrToInt(idLote);  // deverá ser incremental para a serie especifica. Já é o segundo...

        with ACBrNFe.EventoNFe.Evento.New do
        begin
          infEvento.dhEvento := now;
          infEvento.tpEvento := teCancelamento;
          infEvento.detEvento.xJust := 'CANCELAMENTO DEVIDO ERROS TECNICOS DA NFE';
        end;

        ACBrNFe.EnviarEvento(IdEvento);

        //Atualiza os dados da Tabela com Retorno

        FService.GET_NFe(QryDFe.FieldByName('Ide_nNF').AsInteger);
        FService.QRY_NFe.Edit;
        FService.QRY_NFeRETORNO_VERAPLIC.AsString   := ACBrNFe.WebServices.Enviar.verAplic;            // ACBrNFe.WebServices.Retorno.verAplic;
        FService.QRY_NFeRETORNO_TPAMB.AsString      := TpAmbToStr(ACBrNFe.WebServices.Enviar.TpAmb);   // TpAmbToStr(ACBrNFe.WebServices.Retorno.TpAmb);
        FService.QRY_NFeRETORNO_CSTAT.AsInteger     := ACBrNFe.WebServices.Enviar.cStat;
        FService.QRY_NFeRETORNO_CUF.AsInteger       := ACBrNFe.WebServices.Enviar.cUF;
        FService.QRY_NFeRETORNO_XMOTIVO.AsString    := ACBrNFe.WebServices.Enviar.xMotivo;             // ACBrNFe.NotasFiscais.Items[0].Nfe.procNFe.xMotivo;
        FService.QRY_NFeRETORNO_CMSG.AsInteger      := ACBrNFe.WebServices.Enviar.cStat;
        FService.QRY_NFeRETORNO_XMSG.AsString       := ACBrNFe.WebServices.Enviar.xMotivo;
        FService.QRY_NFeRETORNO_RECIBO.AsString     := ACBrNFe.WebServices.Enviar.Recibo;
        FService.QRY_NFeRETORNO_PROTOCOLO.AsString  := ACBrNFe.WebServices.Enviar.Protocolo;
        FService.QRY_NFeRETORNO_CHNFE.AsString      := LChaveDFe;                                         // ACBrNFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].chDFe;
        FService.QRY_NFeRETORNO_DHRECBTO.AsDateTime := ACBrNFe.WebServices.Enviar.dhRecbto;
    //    FService.QRY_NFeRETORNO_DIGVAL.AsString     := ACBrNFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].digVal;
        FService.QRY_NFe.Post;

        // Atualiza a Tabela FISCALEVENTOS
        FService.QRY_EventoFiscal.Close;
        FService.QRY_EventoFiscal.Open();
        FService.QRY_EventoFiscal.Insert;
        FService.QRY_EventoFiscalNUMFISCAL.AsInteger    := QryDFe.FieldByName('Ide_nNF').AsInteger;
        FService.QRY_EventoFiscalMODELOFISCAL.AsInteger := 55;
        FService.QRY_EventoFiscalNUMEROEVENTO.AsInteger := IdEvento;
        FService.QRY_EventoFiscalDTAEVENTO.AsDateTime   := Date; //pegar do retorno
        FService.QRY_EventoFiscalHRAEVENTO.AsDateTime   := Time;
        FService.QRY_EventoFiscalIDFILIAL.AsInteger     := 1;
        FService.QRY_EventoFiscalCHAVEDFE.AsString      := LChaveDFe;
        FService.QRY_EventoFiscalIDSTATUS.AsInteger     := 135; //pegar do retorno
        FService.QRY_EventoFiscalNOMEEVENTO.AsString    := 'CANCELAMENTO';
        FService.QRY_EventoFiscalMSGSTATUS.AsString     := 'Evento registrado e vinculado a NF-e';
        FService.QRY_EventoFiscal.Post;


      end;




      //NFC-e Modelo 65
      if QryDFe.FieldByName('IDE_MODELO').AsInteger = 65 then
      begin

        // Carrega o XML já armazenado na pasta
        LChaveDFe       := QryDFe.FieldByName('Retorno_ChNFe').AsString;
        LStringArquivo  := LPastaNFCe + '\' + LChaveDFe + '-nfe.xml';
        ACBrNFe.NotasFiscais.Clear;
        ACBrNFe.NotasFiscais.LoadFromFile(LStringArquivo, False);

        IdEvento := FService.GET_IdEventoCancelarDFe;

        ACBrNFe.EventoNFe.Evento.Clear;
        ACBrNFe.EventoNFe.idLote := IdEvento; // StrToInt(idLote);  // deverá ser incremental para a serie especifica. Já é o segundo...

        with ACBrNFe.EventoNFe.Evento.New do
        begin
          infEvento.dhEvento := now;
          infEvento.tpEvento := teCancelamento;
          infEvento.detEvento.xJust := 'CANCELAMENTO DEVIDO ERROS TECNICOS DA NFCE';
        end;

        ACBrNFe.EnviarEvento(IdEvento);

        //Atualiza os dados da Tabela com Retorno

          FService.GET_NFCe(QryDFe.FieldByName('Ide_nNF').AsInteger);
          FService.QRY_NFCe.Edit;
          FService.QRY_NFCeRETORNO_VERAPLIC.AsString   := ACBrNFe.WebServices.Enviar.verAplic;            // ACBrNFe.WebServices.Retorno.verAplic;
          FService.QRY_NFCeRETORNO_TPAMB.AsString      := TpAmbToStr(ACBrNFe.WebServices.Enviar.TpAmb);   // TpAmbToStr(ACBrNFe.WebServices.Retorno.TpAmb);
          FService.QRY_NFCeRETORNO_CSTAT.AsInteger     := ACBrNFe.WebServices.Enviar.cStat;
          FService.QRY_NFCeRETORNO_XMOTIVO.AsString    := ACBrNFe.WebServices.Enviar.xMotivo;             // ACBrNFe.NotasFiscais.Items[0].Nfe.procNFe.xMotivo;
          FService.QRY_NFCeRETORNO_CHNFE.AsString      := LChaveDFe;                                         // ACBrNFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].chDFe;
          FService.QRY_NFeRETORNO_DHRECBTO.AsDateTime  := ACBrNFe.WebServices.Enviar.dhRecbto;
      //    FService.QRY_NFCeRETORNO_DIGVAL.AsString     := ACBrNFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].digVal;
          FService.QRY_NFCe.Post;


        // Atualiza a Tabela FISCALEVENTOS
        FService.QRY_EventoFiscal.Close;
        FService.QRY_EventoFiscal.Open();
        FService.QRY_EventoFiscal.Insert;
        FService.QRY_EventoFiscalNUMFISCAL.AsInteger    := QryDFe.FieldByName('Ide_nNF').AsInteger;
        FService.QRY_EventoFiscalMODELOFISCAL.AsInteger := 65;
        FService.QRY_EventoFiscalNUMEROEVENTO.AsInteger := IdEvento;
        FService.QRY_EventoFiscalDTAEVENTO.AsDateTime   := Date; //pegar do retorno
        FService.QRY_EventoFiscalHRAEVENTO.AsDateTime   := Time;
        FService.QRY_EventoFiscalIDFILIAL.AsInteger     := 1;
        FService.QRY_EventoFiscalCHAVEDFE.AsString      := LChaveDFe;
        FService.QRY_EventoFiscalIDSTATUS.AsInteger     := 135; //pegar do retorno
        FService.QRY_EventoFiscalNOMEEVENTO.AsString    := 'CANCELAMENTO';
        FService.QRY_EventoFiscalMSGSTATUS.AsString     := 'Evento registrado e vinculado a NFC-e';
        FService.QRY_EventoFiscal.Post;

      end;


  finally
    FreeAndNil(FService);
  end;

end;

procedure TViewACBrFiscal.AtualizarSSLLibsCombo;
begin

  cbSSLLib.ItemIndex     := Integer(ACBrNFe.Configuracoes.Geral.SSLLib);
  cbCryptLib.ItemIndex   := Integer(ACBrNFe.Configuracoes.Geral.SSLCryptLib);
  cbHttpLib.ItemIndex    := Integer(ACBrNFe.Configuracoes.Geral.SSLHttpLib);
  cbXmlSignLib.ItemIndex := Integer(ACBrNFe.Configuracoes.Geral.SSLXmlSignLib);

  cbSSLType.Enabled := (ACBrNFe.Configuracoes.Geral.SSLHttpLib in [httpWinHttp, httpOpenSSL]);

end;

procedure TViewACBrFiscal.btnSalvarClick(Sender: TObject);
begin // Salvar

  GravarConfiguracao;
  ShowMessage('Dados Salvo com Sucesso.');

end;

procedure TViewACBrFiscal.GravarConfiguracao;
begin // Gravar Configurações

  //Certificado
  FServiceConfigACBr.QRY_CONFIG_CERTIFICADO.Edit;
  FServiceConfigACBr.QRY_CONFIG_CERTIFICADOCER_SSLLIB.AsInteger       := cbSSLLib.ItemIndex     ;
  FServiceConfigACBr.QRY_CONFIG_CERTIFICADOCER_CRYPTLIB.AsInteger     := cbCryptLib.ItemIndex   ;
  FServiceConfigACBr.QRY_CONFIG_CERTIFICADOCER_HTTPLIB.AsInteger      := cbHttpLib.ItemIndex    ;
  FServiceConfigACBr.QRY_CONFIG_CERTIFICADOCER_XMLSIGNLIB.AsInteger   := cbXmlSignLib.ItemIndex ;
  FServiceConfigACBr.QRY_CONFIG_CERTIFICADOCER_URL.AsString           := edtURLPFX.Text         ;
  FServiceConfigACBr.QRY_CONFIG_CERTIFICADOCER_CAMINHO.AsString       := edtCaminho.Text        ;
  FServiceConfigACBr.QRY_CONFIG_CERTIFICADOCER_SENHA.AsString         := edtSenha.Text          ;
  FServiceConfigACBr.QRY_CONFIG_CERTIFICADOCER_NUMSERIE.AsString      := edtNumSerie.Text       ;
  FServiceConfigACBr.QRY_CONFIG_CERTIFICADO.Post;

  //Geral
  FServiceConfigACBr.QRY_CONFIG_GERAL.Edit;
  FServiceConfigACBr.QRY_CONFIG_GERALGER_ATUALIZARXML.AsBoolean       := cbxAtualizarXML.Checked       ;
  FServiceConfigACBr.QRY_CONFIG_GERALGER_EXIBIRERROSCHEMA.AsBoolean   := cbxExibirErroSchema.Checked   ;
  FServiceConfigACBr.QRY_CONFIG_GERALGER_FORMATOALERTA.AsString       := edtFormatoAlerta.Text         ;
  FServiceConfigACBr.QRY_CONFIG_GERALGER_FORMAEMISSAO.AsInteger       := cbFormaEmissao.ItemIndex      ;
  FServiceConfigACBr.QRY_CONFIG_GERALGER_MODELODF.AsInteger           := cbModeloDF.ItemIndex          ;
  FServiceConfigACBr.QRY_CONFIG_GERALGER_VERSAODF.AsInteger           := cbVersaoDF.ItemIndex          ;
  FServiceConfigACBr.QRY_CONFIG_GERALGER_IDTOKEN.AsString             := edtIdToken.Text               ;
  FServiceConfigACBr.QRY_CONFIG_GERALGER_TOKEN.AsString               := edtToken.Text                 ;
  FServiceConfigACBr.QRY_CONFIG_GERALGER_SALVAR.AsBoolean             := ckSalvar.Checked              ;
  FServiceConfigACBr.QRY_CONFIG_GERALGER_RETIRARACENTOS.AsBoolean     := cbxRetirarAcentos.Checked     ;
  FServiceConfigACBr.QRY_CONFIG_GERALGER_PATHSALVAR.AsString          := edtPathLogs.Text              ;
  FServiceConfigACBr.QRY_CONFIG_GERALGER_PATHSCHEMAS.AsString         := edtPathSchemas.Text           ;
  FServiceConfigACBr.QRY_CONFIG_GERAL.Post;

  //WebService
  FServiceConfigACBr.QRY_CONFIG_WEBSERVICE.Edit;
  FServiceConfigACBr.QRY_CONFIG_WEBSERVICEWEB_AMBIENTE.AsInteger            := rgTipoAmb.ItemIndex   ;
  FServiceConfigACBr.QRY_CONFIG_WEBSERVICEWEB_VISUALIZAR.AsBoolean          := cbxVisualizar.Checked ;
  FServiceConfigACBr.QRY_CONFIG_WEBSERVICEWEB_SALVARSOAP.AsBoolean          := cbxSalvarSOAP.Checked ;
  FServiceConfigACBr.QRY_CONFIG_WEBSERVICEWEB_AJUSTARAUT.AsBoolean          := cbxAjustarAut.Checked;
  FServiceConfigACBr.QRY_CONFIG_WEBSERVICEWEB_AGUARDAR.AsString             := edtAguardar.Text      ;
  FServiceConfigACBr.QRY_CONFIG_WEBSERVICEWEB_TENTATIVAS.AsString           := edtTentativas.Text    ;
  FServiceConfigACBr.QRY_CONFIG_WEBSERVICEWEB_INTERVALO.AsString            := edtIntervalo.Text     ;
  FServiceConfigACBr.QRY_CONFIG_WEBSERVICEWEB_TIMEOUT.AsInteger             := seTimeOut.Value       ;
  FServiceConfigACBr.QRY_CONFIG_WEBSERVICEWEB_SSLTYPE.AsInteger             := cbSSLType.ItemIndex   ;
  FServiceConfigACBr.QRY_CONFIG_WEBSERVICEWEB_UF.AsString                   := cbUF.Text             ;
  FServiceConfigACBr.QRY_CONFIG_WEBSERVICE.Post;

  //Proxy
  FServiceConfigACBr.QRY_CONFIG_PROXY.Edit;
  FServiceConfigACBr.QRY_CONFIG_PROXYPRO_HOST.AsString  := edtProxyHost.Text  ;
  FServiceConfigACBr.QRY_CONFIG_PROXYPRO_PORTA.AsString := edtProxyPorta.Text ;
  FServiceConfigACBr.QRY_CONFIG_PROXYPRO_USER.AsString  := edtProxyUser.Text  ;
  FServiceConfigACBr.QRY_CONFIG_PROXYPRO_PASS.AsString  := edtProxySenha.Text ;
  FServiceConfigACBr.QRY_CONFIG_PROXY.Post;

  //Arquivos
  FServiceConfigACBr.QRY_CONFIG_ARQUIVOS.Edit;
  FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_SALVAR.AsBoolean              := cbxSalvarArqs.Checked;
  FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_PASTAMENSAL.AsBoolean         := cbxPastaMensal.Checked;
  FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_ADDLITERAL.AsBoolean          := cbxAdicionaLiteral.Checked;
  FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_EMISSAOPATHNFE.AsBoolean      := cbxEmissaoPathNFe.Checked;
  FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_SALVARPATHEVENTO.AsBoolean    := cbxSalvaPathEvento.Checked;
  FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_SEPARARPORCNPJ.AsBoolean      := cbxSepararPorCNPJ.Checked;
    FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_SEPARARPORMODELO.AsBoolean  := cbxSepararPorModelo.Checked;
  FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_PATHNFE.AsString            := edtPathNFe.Text             ;
  FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_PATHINU.AsString            := edtPathInu.Text             ;
  FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_PATHEVENTO.AsString         := edtPathEvento.Text          ;
  FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_PATHPDF.AsString            := edtPathPDF.Text             ;
  FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_PATHDOWNLOAD.AsString       := edtDownloadXML.Text         ;
  FServiceConfigACBr.QRY_CONFIG_ARQUIVOS.Post;

  //Emitente
//  FServiceConfigACBr.QRY_CONFIG_EMITENTE.Edit;
//  FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_CNPJ.AsString         := edtEmitCNPJ.Text                     ;
//  FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_IE.AsString           := edtEmitIE.Text                       ;
//  FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_RAZAOSOCIAL.AsString  := edtEmitRazao.Text                    ;
//  FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_FANTASIA.AsString     := edtEmitFantasia.Text                 ;
//  FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_FONE.AsString         := edtEmitFone.Text                     ;
//  FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_CEP.AsString          := edtEmitCEP.Text                      ;
//  FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_LOGRADOURO.AsString   := edtEmitLogradouro.Text               ;
//  FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_NUMERO.AsString       := edtEmitNumero.Text                   ;
//  FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_COMPLEMENTO.AsString  := edtEmitComp.Text                     ;
//  FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_BAIRRO.AsString       := edtEmitBairro.Text                   ;
//  FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_CODCIDADE.AsInteger   := StrToIntDef(edtEmitCodCidade.Text, 0);
//  FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_CIDADE.AsString       := edtEmitCidade.Text                   ;
//  FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_UF.AsString           := edtEmitUF.Text                       ;
//  FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_CRT.AsString          := IntToStr(cbTipoEmpresa.ItemIndex)              ;
//  FServiceConfigACBr.QRY_CONFIG_EMITENTE.Post;

  //Danfe
  FServiceConfigACBr.QRY_CONFIG_DANFE.Edit;
  FServiceConfigACBr.QRY_CONFIG_DANFEDAN_TIPO.AsInteger       := rgTipoDanfe.ItemIndex ;
  FServiceConfigACBr.QRY_CONFIG_DANFEDAN_LOGOMARCA.AsString   := edtLogoMarca.Text     ;
  FServiceConfigACBr.QRY_CONFIG_DANFEDAN_TIPODANFCE.AsInteger := rgDANFCE.ItemIndex    ;
  FServiceConfigACBr.QRY_CONFIG_DANFE.Post;

  //PosPrinter
  FServiceConfigACBr.QRY_CONFIG_POSPRINTER.Edit;
  FServiceConfigACBr.QRY_CONFIG_POSPRINTERPOS_MODELO.AsInteger            := cbxModeloPosPrinter.ItemIndex             ;
  FServiceConfigACBr.QRY_CONFIG_POSPRINTERPOS_PORTA.AsString              := cbxPorta.Text                             ;
  FServiceConfigACBr.QRY_CONFIG_POSPRINTERPOS_PAGINADECODIGO.AsInteger    := cbxPagCodigo.ItemIndex                    ;
  FServiceConfigACBr.QRY_CONFIG_POSPRINTERPOS_COLUNAS.AsInteger           := seColunas.Value                           ;
  FServiceConfigACBr.QRY_CONFIG_POSPRINTERPOS_ESPACOLINHAS.AsInteger      := seEspLinhas.Value                         ;
  FServiceConfigACBr.QRY_CONFIG_POSPRINTERPOS_LINHASENTRECUPONS.AsInteger := seLinhasPular.Value                       ;
  FServiceConfigACBr.QRY_CONFIG_POSPRINTERPOS_CORTARPAPEL.AsBoolean       := cbCortarPapel.Checked                     ;
  FServiceConfigACBr.QRY_CONFIG_POSPRINTERPOS_PARAMSSTRING.AsString       := ACBrPosPrinter.Device.ParamsString        ;
  FServiceConfigACBr.QRY_CONFIG_POSPRINTER.Post;

  //Diversos
//  FServiceConfigACBr.QRY_CONFIG_DIVERSOS.Edit;
//  FServiceConfigACBr.QRY_CONFIG_DIVERSOSDIV_ULTNSU.AsInteger           := StrToIntDef(edtUltNSU.Text, 0);
//  FServiceConfigACBr.QRY_CONFIG_DIVERSOSDIV_MAXNSU.AsInteger           := StrToIntDef(edtMaxNSU.Text, 0);
//  FServiceConfigACBr.QRY_CONFIG_DIVERSOSDIV_BAIXARDOCUMENTOS.AsBoolean := cbxNaoBaixar.Checked; //Esse campo não tem no manual. Eu que inventei
//  FServiceConfigACBr.QRY_CONFIG_DIVERSOSDIV_DTAULTIMABAIXA.AsDateTime  := Date;
//  FServiceConfigACBr.QRY_CONFIG_DIVERSOSDIV_HRAULTIMABAIXA.AsDateTime  := edtTimeUltimaTentativa.DateTime;
//  FServiceConfigACBr.QRY_CONFIG_DIVERSOS.Post;

end;

procedure TViewACBrFiscal.ConfigurarComponente;
var
  Ok: Boolean;
begin

  //dados do certificado
  ACBrNFe.Configuracoes.Certificados.URLPFX      := edtURLPFX.Text;
  ACBrNFe.Configuracoes.Certificados.ArquivoPFX  := edtCaminho.Text;
  ACBrNFe.Configuracoes.Certificados.Senha       := edtSenha.Text;
  ACBrNFe.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;

  if cbModeloDF.ItemIndex = 0 then
  begin
    ACBrNFe.DANFE := ACBrNFeDANFEFR;

  end
  else
  begin
    case rgDANFCE.ItemIndex of
      0: ACBrNFe.DANFE := ACBrNFeDANFCeFortes;
      1: ACBrNFe.DANFE := ACBrNFeDANFeESCPOS;
      2: ACBrNFe.DANFE := ACBrNFeDANFCeFortesA4;
    end;
  end;

  ACBrNFe.SSL.DescarregarCertificado;

//  ACBrNFe.Configuracoes.Geral
  ACBrNFe.Configuracoes.Geral.SSLLib        := TSSLLib(cbSSLLib.ItemIndex);
  ACBrNFe.Configuracoes.Geral.SSLCryptLib   := TSSLCryptLib(cbCryptLib.ItemIndex);
  ACBrNFe.Configuracoes.Geral.SSLHttpLib    := TSSLHttpLib(cbHttpLib.ItemIndex);
  ACBrNFe.Configuracoes.Geral.SSLXmlSignLib := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);

  AtualizarSSLLibsCombo;

  ACBrNFe.Configuracoes.Geral.AtualizarXMLCancelado := cbxAtualizarXML.Checked;

  ACBrNFe.Configuracoes.Geral.Salvar           := ckSalvar.Checked;
  ACBrNFe.Configuracoes.Geral.ExibirErroSchema := cbxExibirErroSchema.Checked;
  ACBrNFe.Configuracoes.Geral.RetirarAcentos   := cbxRetirarAcentos.Checked;
  ACBrNFe.Configuracoes.Geral.FormatoAlerta    := edtFormatoAlerta.Text;
  ACBrNFe.Configuracoes.Geral.FormaEmissao     := TpcnTipoEmissao(cbFormaEmissao.ItemIndex);
  ACBrNFe.Configuracoes.Geral.ModeloDF         := TpcnModeloDF(cbModeloDF.ItemIndex);
  ACBrNFe.Configuracoes.Geral.VersaoDF         := TpcnVersaoDF(cbVersaoDF.ItemIndex);

  ACBrNFe.Configuracoes.Geral.IdCSC            := edtIdToken.Text;
  ACBrNFe.Configuracoes.Geral.CSC              := edtToken.Text;
  ACBrNFe.Configuracoes.Geral.VersaoQRCode     := veqr200;


//  ACBrNFe.Configuracoes.WebServices
  ACBrNFe.Configuracoes.WebServices.UF         := cbUF.Text;
  ACBrNFe.Configuracoes.WebServices.Ambiente   := StrToTpAmb(Ok,IntToStr(rgTipoAmb.ItemIndex+1));  // StrToEnumerado(ok, s, ['1', '2'], [taProducao, taHomologacao]);
  ACBrNFe.Configuracoes.WebServices.Visualizar := cbxVisualizar.Checked;
  ACBrNFe.Configuracoes.WebServices.Salvar     := cbxSalvarSOAP.Checked;

  ACBrNFe.Configuracoes.WebServices.AjustaAguardaConsultaRet := cbxAjustarAut.Checked;

  if NaoEstaVazio(edtAguardar.Text)then
    ACBrNFe.Configuracoes.WebServices.AguardarConsultaRet := ifThen(StrToInt(edtAguardar.Text) < 1000, StrToInt(edtAguardar.Text) * 1000, StrToInt(edtAguardar.Text))
  else
    edtAguardar.Text := IntToStr(ACBrNFe.Configuracoes.WebServices.AguardarConsultaRet);

  if NaoEstaVazio(edtTentativas.Text) then
    ACBrNFe.Configuracoes.WebServices.Tentativas := StrToInt(edtTentativas.Text)
  else
    edtTentativas.Text := IntToStr(ACBrNFe.Configuracoes.WebServices.Tentativas);

  if NaoEstaVazio(edtIntervalo.Text) then
    ACBrNFe.Configuracoes.WebServices.IntervaloTentativas := ifThen(StrToInt(edtIntervalo.Text) < 1000, StrToInt(edtIntervalo.Text) * 1000, StrToInt(edtIntervalo.Text))
  else
    edtIntervalo.Text := IntToStr(ACBrNFe.Configuracoes.WebServices.IntervaloTentativas);

  ACBrNFe.Configuracoes.WebServices.TimeOut   := seTimeOut.Value;
  ACBrNFe.Configuracoes.WebServices.ProxyHost := edtProxyHost.Text;
  ACBrNFe.Configuracoes.WebServices.ProxyPort := edtProxyPorta.Text;
  ACBrNFe.Configuracoes.WebServices.ProxyUser := edtProxyUser.Text;
  ACBrNFe.Configuracoes.WebServices.ProxyPass := edtProxySenha.Text;


  ACBrNFe.SSL.SSLType := TSSLType(cbSSLType.ItemIndex);

//  ACBrNFe.Configuracoes.Arquivos
  ACBrNFe.Configuracoes.Arquivos.Salvar           := cbxSalvarArqs.Checked;
  ACBrNFe.Configuracoes.Arquivos.SepararPorMes    := cbxPastaMensal.Checked;
  ACBrNFe.Configuracoes.Arquivos.AdicionarLiteral := cbxAdicionaLiteral.Checked;
  ACBrNFe.Configuracoes.Arquivos.EmissaoPathNFe   := cbxEmissaoPathNFe.Checked;
  ACBrNFe.Configuracoes.Arquivos.SalvarEvento     := cbxSalvaPathEvento.Checked;
  ACBrNFe.Configuracoes.Arquivos.SepararPorCNPJ   := cbxSepararPorCNPJ.Checked;
  ACBrNFe.Configuracoes.Arquivos.SepararPorModelo := cbxSepararPorModelo.Checked;
  ACBrNFe.Configuracoes.Arquivos.PathSchemas      := edtPathSchemas.Text;
  ACBrNFe.Configuracoes.Arquivos.PathNFe          := edtPathNFe.Text;
  ACBrNFe.Configuracoes.Arquivos.PathInu          := edtPathInu.Text;
  ACBrNFe.Configuracoes.Arquivos.PathEvento       := edtPathEvento.Text;
  ACBrNFe.Configuracoes.Arquivos.PathSalvar       := edtPathLogs.Text;
  ACBrNFe.Configuracoes.Arquivos.DownloadDFe.PathDownload := edtDownloadXML.Text;


  if ACBrNFe.DANFE <> nil then
  begin
    //ACBrNFe.DANFE.TipoDANFE := StrToTpImp(OK, IntToStr(rgTipoDanfe.ItemIndex + 1));
    ACBrNFe.DANFE.Logo      := edtLogoMarca.Text;
    ACBrNFe.DANFE.PathPDF   := edtPathPDF.Text;

    ACBrNFe.DANFE.MargemDireita  := 0;
    ACBrNFe.DANFE.MargemEsquerda := 0;
    ACBrNFe.DANFE.MargemSuperior := 0;
    ACBrNFe.DANFE.MargemInferior := 0;

  end;

  //Componente FR
  ACBrNFeDANFEFR.FastFile := FAST_FILE_NFE; // FAST_FILE_NFE, FAST_FILE_NFCE

end;

constructor TViewACBrFiscal.Create(AOwner: TComponent; ADataSet: TDataSet; TipoEvento: TPCTipoOperacaoFiscal);
var
  T: TSSLLib;
  I: TpcnTipoEmissao;
  J: TpcnModeloDF;
  K: TpcnVersaoDF;
  U: TSSLCryptLib;
  V: TSSLHttpLib;
  X: TSSLXmlSignLib;
  Y: TSSLType;
  N: TACBrPosPrinterModelo;
  O: TACBrPosPaginaCodigo;
begin // meu create
  inherited Create(AOwner);

  FServiceConfigACBr := TServiceConfigACBr.Create(Self);

// ======================================== ACBr ==================================
  cbSSLLib.Items.Clear;
  for T := Low(TSSLLib) to High(TSSLLib) do
    cbSSLLib.Items.Add( GetEnumName(TypeInfo(TSSLLib), integer(T) ) );
  cbSSLLib.ItemIndex := 0;

  cbCryptLib.Items.Clear;
  for U := Low(TSSLCryptLib) to High(TSSLCryptLib) do
    cbCryptLib.Items.Add( GetEnumName(TypeInfo(TSSLCryptLib), integer(U) ) );
  cbCryptLib.ItemIndex := 0;

  cbHttpLib.Items.Clear;
  for V := Low(TSSLHttpLib) to High(TSSLHttpLib) do
    cbHttpLib.Items.Add( GetEnumName(TypeInfo(TSSLHttpLib), integer(V) ) );
  cbHttpLib.ItemIndex := 0;

  cbXmlSignLib.Items.Clear;
  for X := Low(TSSLXmlSignLib) to High(TSSLXmlSignLib) do
    cbXmlSignLib.Items.Add( GetEnumName(TypeInfo(TSSLXmlSignLib), integer(X) ) );
  cbXmlSignLib.ItemIndex := 0;

  cbSSLType.Items.Clear;
  for Y := Low(TSSLType) to High(TSSLType) do
    cbSSLType.Items.Add( GetEnumName(TypeInfo(TSSLType), integer(Y) ) );
  cbSSLType.ItemIndex := 0;

  cbFormaEmissao.Items.Clear;
  for I := Low(TpcnTipoEmissao) to High(TpcnTipoEmissao) do
     cbFormaEmissao.Items.Add( GetEnumName(TypeInfo(TpcnTipoEmissao), integer(I) ) );
  cbFormaEmissao.ItemIndex := 0;

  cbModeloDF.Items.Clear;
  for J := Low(TpcnModeloDF) to High(TpcnModeloDF) do
     cbModeloDF.Items.Add( GetEnumName(TypeInfo(TpcnModeloDF), integer(J) ) );
  cbModeloDF.ItemIndex := 0;

  cbVersaoDF.Items.Clear;
  for K := Low(TpcnVersaoDF) to High(TpcnVersaoDF) do
     cbVersaoDF.Items.Add( GetEnumName(TypeInfo(TpcnVersaoDF), integer(K) ) );
  cbVersaoDF.ItemIndex := 0;

  cbxModeloPosPrinter.Items.Clear ;
  for N := Low(TACBrPosPrinterModelo) to High(TACBrPosPrinterModelo) do
    cbxModeloPosPrinter.Items.Add( GetEnumName(TypeInfo(TACBrPosPrinterModelo), integer(N) ) ) ;

  cbxPagCodigo.Items.Clear ;
  for O := Low(TACBrPosPaginaCodigo) to High(TACBrPosPaginaCodigo) do
     cbxPagCodigo.Items.Add( GetEnumName(TypeInfo(TACBrPosPaginaCodigo), integer(O) ) ) ;


  LerConfiguracao;
 // ======================================== ACBr ==================================

  // Local para carregar a pasta de documentos fiscais... pegar do servidor...
  CaminhoPastas;

  case TipoEvento of

    toCancelar:
    begin
      CancelarDFe(ADataSet);
    end;

    toCorrecao:
    begin
    end;

    toImprimirDanfe:
    begin
      ImprimirDanfeDFe(ADataSet);
    end;

    toInutilizarNumeroDFe:
    begin
    end;

  end;

end;

procedure TViewACBrFiscal.CaminhoPastas;
begin // Pega o caminho das pastas dos XMLs ( implementar uma maneira de pegar do servidor )

  LMesAtual := FormatDateTime('mm', Now);
  LAnoAtual := FormatDateTime('yyyy', Now);

  LPastaNFe  := FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_PATHNFE.AsString + '\NFe\' + LAnoAtual + LMesAtual;
  LPastaNFCe := FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_PATHNFE.AsString + '\NFCe\' + LAnoAtual + LMesAtual;


//  LPastaNFe  := 'E:\Programação\[ DELPHIGOV ]\git_Consultoria\05_michael\trunk\pdv\Docs\DFe\NFe\202308';
//  LPastaNFCe := 'E:\Programação\[ DELPHIGOV ]\git_Consultoria\05_michael\trunk\pdv\Docs\DFe\NFCe\202308';

end;

constructor TViewACBrFiscal.Create(AOwner: TComponent; QryCabecalhoFiscal, QryItensFiscais: TDataSet; Tipo: string);
var
  T: TSSLLib;
  I: TpcnTipoEmissao;
  J: TpcnModeloDF;
  K: TpcnVersaoDF;
  U: TSSLCryptLib;
  V: TSSLHttpLib;
  X: TSSLXmlSignLib;
  Y: TSSLType;
  N: TACBrPosPrinterModelo;
  O: TACBrPosPaginaCodigo;
begin // meu create
  inherited Create(AOwner);

  FServiceConfigACBr := TServiceConfigACBr.Create(Self);

// ======================================== ACBr ==================================
  cbSSLLib.Items.Clear;
  for T := Low(TSSLLib) to High(TSSLLib) do
    cbSSLLib.Items.Add( GetEnumName(TypeInfo(TSSLLib), integer(T) ) );
  cbSSLLib.ItemIndex := 0;

  cbCryptLib.Items.Clear;
  for U := Low(TSSLCryptLib) to High(TSSLCryptLib) do
    cbCryptLib.Items.Add( GetEnumName(TypeInfo(TSSLCryptLib), integer(U) ) );
  cbCryptLib.ItemIndex := 0;

  cbHttpLib.Items.Clear;
  for V := Low(TSSLHttpLib) to High(TSSLHttpLib) do
    cbHttpLib.Items.Add( GetEnumName(TypeInfo(TSSLHttpLib), integer(V) ) );
  cbHttpLib.ItemIndex := 0;

  cbXmlSignLib.Items.Clear;
  for X := Low(TSSLXmlSignLib) to High(TSSLXmlSignLib) do
    cbXmlSignLib.Items.Add( GetEnumName(TypeInfo(TSSLXmlSignLib), integer(X) ) );
  cbXmlSignLib.ItemIndex := 0;

  cbSSLType.Items.Clear;
  for Y := Low(TSSLType) to High(TSSLType) do
    cbSSLType.Items.Add( GetEnumName(TypeInfo(TSSLType), integer(Y) ) );
  cbSSLType.ItemIndex := 0;

  cbFormaEmissao.Items.Clear;
  for I := Low(TpcnTipoEmissao) to High(TpcnTipoEmissao) do
     cbFormaEmissao.Items.Add( GetEnumName(TypeInfo(TpcnTipoEmissao), integer(I) ) );
  cbFormaEmissao.ItemIndex := 0;

  cbModeloDF.Items.Clear;
  for J := Low(TpcnModeloDF) to High(TpcnModeloDF) do
     cbModeloDF.Items.Add( GetEnumName(TypeInfo(TpcnModeloDF), integer(J) ) );
  cbModeloDF.ItemIndex := 0;

  cbVersaoDF.Items.Clear;
  for K := Low(TpcnVersaoDF) to High(TpcnVersaoDF) do
     cbVersaoDF.Items.Add( GetEnumName(TypeInfo(TpcnVersaoDF), integer(K) ) );
  cbVersaoDF.ItemIndex := 0;

  cbxModeloPosPrinter.Items.Clear ;
  for N := Low(TACBrPosPrinterModelo) to High(TACBrPosPrinterModelo) do
    cbxModeloPosPrinter.Items.Add( GetEnumName(TypeInfo(TACBrPosPrinterModelo), integer(N) ) ) ;

  cbxPagCodigo.Items.Clear ;
  for O := Low(TACBrPosPaginaCodigo) to High(TACBrPosPaginaCodigo) do
     cbxPagCodigo.Items.Add( GetEnumName(TypeInfo(TACBrPosPaginaCodigo), integer(O) ) ) ;


  LerConfiguracao;
 // ======================================== ACBr ==================================


 // Local para carregar a pasta de documentos fiscais... pegar do servidor...
  CaminhoPastas;


  DS_NFe_NFCe.DataSet       := QryCabecalhoFiscal;
  DS_Itens_NFe_NFCe.DataSet := QryItensFiscais;


  if Tipo = TipoDocumentoFiscalToStr(tdNFCe) then
  begin
    AlimentarComponente(moNFCe);
  end
  else begin
    AlimentarComponente(moNFe);
  end;



end;

procedure TViewACBrFiscal.FormCreate(Sender: TObject);
var
  T: TSSLLib;
  I: TpcnTipoEmissao;
  J: TpcnModeloDF;
  K: TpcnVersaoDF;
  U: TSSLCryptLib;
  V: TSSLHttpLib;
  X: TSSLXmlSignLib;
  Y: TSSLType;
  N: TACBrPosPrinterModelo;
  O: TACBrPosPaginaCodigo;
begin //create
  inherited;

  FServiceConfigACBr := TServiceConfigACBr.Create(Self);

// ======================================== ACBr ==================================
  cbSSLLib.Items.Clear;
  for T := Low(TSSLLib) to High(TSSLLib) do
    cbSSLLib.Items.Add( GetEnumName(TypeInfo(TSSLLib), integer(T) ) );
  cbSSLLib.ItemIndex := 0;

  cbCryptLib.Items.Clear;
  for U := Low(TSSLCryptLib) to High(TSSLCryptLib) do
    cbCryptLib.Items.Add( GetEnumName(TypeInfo(TSSLCryptLib), integer(U) ) );
  cbCryptLib.ItemIndex := 0;

  cbHttpLib.Items.Clear;
  for V := Low(TSSLHttpLib) to High(TSSLHttpLib) do
    cbHttpLib.Items.Add( GetEnumName(TypeInfo(TSSLHttpLib), integer(V) ) );
  cbHttpLib.ItemIndex := 0;

  cbXmlSignLib.Items.Clear;
  for X := Low(TSSLXmlSignLib) to High(TSSLXmlSignLib) do
    cbXmlSignLib.Items.Add( GetEnumName(TypeInfo(TSSLXmlSignLib), integer(X) ) );
  cbXmlSignLib.ItemIndex := 0;

  cbSSLType.Items.Clear;
  for Y := Low(TSSLType) to High(TSSLType) do
    cbSSLType.Items.Add( GetEnumName(TypeInfo(TSSLType), integer(Y) ) );
  cbSSLType.ItemIndex := 0;

  cbFormaEmissao.Items.Clear;
  for I := Low(TpcnTipoEmissao) to High(TpcnTipoEmissao) do
     cbFormaEmissao.Items.Add( GetEnumName(TypeInfo(TpcnTipoEmissao), integer(I) ) );
  cbFormaEmissao.ItemIndex := 0;

  cbModeloDF.Items.Clear;
  for J := Low(TpcnModeloDF) to High(TpcnModeloDF) do
     cbModeloDF.Items.Add( GetEnumName(TypeInfo(TpcnModeloDF), integer(J) ) );
  cbModeloDF.ItemIndex := 0;

  cbVersaoDF.Items.Clear;
  for K := Low(TpcnVersaoDF) to High(TpcnVersaoDF) do
     cbVersaoDF.Items.Add( GetEnumName(TypeInfo(TpcnVersaoDF), integer(K) ) );
  cbVersaoDF.ItemIndex := 0;

  cbxModeloPosPrinter.Items.Clear ;
  for N := Low(TACBrPosPrinterModelo) to High(TACBrPosPrinterModelo) do
    cbxModeloPosPrinter.Items.Add( GetEnumName(TypeInfo(TACBrPosPrinterModelo), integer(N) ) ) ;

  cbxPagCodigo.Items.Clear ;
  for O := Low(TACBrPosPaginaCodigo) to High(TACBrPosPaginaCodigo) do
     cbxPagCodigo.Items.Add( GetEnumName(TypeInfo(TACBrPosPaginaCodigo), integer(O) ) ) ;

  LerConfiguracao;

end;

procedure TViewACBrFiscal.FormDestroy(Sender: TObject);
begin // destroy
  inherited;
  FreeAndNil(FServiceConfigACBr);
end;

procedure TViewACBrFiscal.ImprimirDanfeDFe(QryDFe: TDataSet);
begin

//NF-e Modelo 55
  if QryDFe.FieldByName('IDE_MODELO').AsInteger = 55 then
  begin

    // Carrega o XML já armazenado na pasta
    LChaveDFe       := QryDFe.FieldByName('Retorno_ChNFe').AsString;
    LStringArquivo  := LPastaNFe + '\' + LChaveDFe + '-nfe.xml';
    ACBrNFe.NotasFiscais.Clear;
    ACBrNFe.NotasFiscais.LoadFromFile(LStringArquivo, False);

    ACBrNFeDANFEFR.FastFile := FAST_FILE_NFE;
    ACBrNFe.NotasFiscais.Imprimir;

  end;

  //NFC-e Modelo 65
  if QryDFe.FieldByName('IDE_MODELO').AsInteger = 65 then
  begin

    // Carrega o XML já armazenado na pasta
    LChaveDFe       := QryDFe.FieldByName('Retorno_ChNFe').AsString;
    LStringArquivo  := LPastaNFCe + '\' + LChaveDFe + '-nfe.xml';
    ACBrNFe.NotasFiscais.Clear;
    ACBrNFe.NotasFiscais.LoadFromFile(LStringArquivo, False);

    ACBrNFeDANFEFR.FastFile := FAST_FILE_NFCE;
    ACBrNFe.NotasFiscais.Imprimir;

  end;


end;

procedure TViewACBrFiscal.LerConfiguracao;
begin // Ler Configurações

  //Certificado
  cbSSLLib.ItemIndex     := FServiceConfigACBr.QRY_CONFIG_CERTIFICADOCER_SSLLIB.AsInteger;
  cbCryptLib.ItemIndex   := FServiceConfigACBr.QRY_CONFIG_CERTIFICADOCER_CRYPTLIB.AsInteger;
  cbHttpLib.ItemIndex    := FServiceConfigACBr.QRY_CONFIG_CERTIFICADOCER_HTTPLIB.AsInteger;
  cbXmlSignLib.ItemIndex := FServiceConfigACBr.QRY_CONFIG_CERTIFICADOCER_XMLSIGNLIB.AsInteger;
  edtURLPFX.Text         := FServiceConfigACBr.QRY_CONFIG_CERTIFICADOCER_URL.AsString;
  edtCaminho.Text        := FServiceConfigACBr.QRY_CONFIG_CERTIFICADOCER_CAMINHO.AsString;
  edtSenha.Text          := FServiceConfigACBr.QRY_CONFIG_CERTIFICADOCER_SENHA.AsString;
  edtNumSerie.Text       := FServiceConfigACBr.QRY_CONFIG_CERTIFICADOCER_NUMSERIE.AsString;

  //Geral
  cbxAtualizarXML.Checked     := FServiceConfigACBr.QRY_CONFIG_GERALGER_ATUALIZARXML.AsBoolean;
  cbxExibirErroSchema.Checked := FServiceConfigACBr.QRY_CONFIG_GERALGER_EXIBIRERROSCHEMA.AsBoolean;
  edtFormatoAlerta.Text       := FServiceConfigACBr.QRY_CONFIG_GERALGER_FORMATOALERTA.AsString;
  cbFormaEmissao.ItemIndex    := FServiceConfigACBr.QRY_CONFIG_GERALGER_FORMAEMISSAO.AsInteger;
  cbModeloDF.ItemIndex        := FServiceConfigACBr.QRY_CONFIG_GERALGER_MODELODF.AsInteger;

  cbVersaoDF.ItemIndex        := FServiceConfigACBr.QRY_CONFIG_GERALGER_VERSAODF.AsInteger;
  edtIdToken.Text             := FServiceConfigACBr.QRY_CONFIG_GERALGER_IDTOKEN.AsString;
  edtToken.Text               := FServiceConfigACBr.QRY_CONFIG_GERALGER_TOKEN.AsString;
  ckSalvar.Checked            := FServiceConfigACBr.QRY_CONFIG_GERALGER_SALVAR.AsBoolean;
  cbxRetirarAcentos.Checked   := FServiceConfigACBr.QRY_CONFIG_GERALGER_RETIRARACENTOS.AsBoolean;
  edtPathLogs.Text            := FServiceConfigACBr.QRY_CONFIG_GERALGER_PATHSALVAR.AsString;
  edtPathSchemas.Text         := FServiceConfigACBr.QRY_CONFIG_GERALGER_PATHSCHEMAS.AsString;

  //WebService
  rgTipoAmb.ItemIndex   := FServiceConfigACBr.QRY_CONFIG_WEBSERVICEWEB_AMBIENTE.AsInteger;
  cbxVisualizar.Checked := FServiceConfigACBr.QRY_CONFIG_WEBSERVICEWEB_VISUALIZAR.AsBoolean;
  cbxSalvarSOAP.Checked := FServiceConfigACBr.QRY_CONFIG_WEBSERVICEWEB_SALVARSOAP.AsBoolean;
  cbxAjustarAut.Checked := FServiceConfigACBr.QRY_CONFIG_WEBSERVICEWEB_AJUSTARAUT.AsBoolean;
  edtAguardar.Text      := FServiceConfigACBr.QRY_CONFIG_WEBSERVICEWEB_AGUARDAR.AsString;
  edtTentativas.Text    := FServiceConfigACBr.QRY_CONFIG_WEBSERVICEWEB_TENTATIVAS.AsString;
  edtIntervalo.Text     := FServiceConfigACBr.QRY_CONFIG_WEBSERVICEWEB_INTERVALO.AsString;
  seTimeOut.Value       := FServiceConfigACBr.QRY_CONFIG_WEBSERVICEWEB_TIMEOUT.AsInteger;
  cbSSLType.ItemIndex   := FServiceConfigACBr.QRY_CONFIG_WEBSERVICEWEB_SSLTYPE.AsInteger;
//  cbUF.Text             :=

  //Proxy
  edtProxyHost.Text  := FServiceConfigACBr.QRY_CONFIG_PROXYPRO_HOST.AsString;
  edtProxyPorta.Text := FServiceConfigACBr.QRY_CONFIG_PROXYPRO_PORTA.AsString;
  edtProxyUser.Text  := FServiceConfigACBr.QRY_CONFIG_PROXYPRO_USER.AsString;
  edtProxySenha.Text := FServiceConfigACBr.QRY_CONFIG_PROXYPRO_PASS.AsString;

  //Arquivos
  cbxSalvarArqs.Checked       := FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_SALVAR.AsBoolean;
  cbxPastaMensal.Checked      := FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_PASTAMENSAL.AsBoolean;
  cbxAdicionaLiteral.Checked  := FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_ADDLITERAL.AsBoolean;
  cbxEmissaoPathNFe.Checked   := FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_EMISSAOPATHNFE.AsBoolean;
  cbxSalvaPathEvento.Checked  := FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_SALVARPATHEVENTO.AsBoolean;
  cbxSepararPorCNPJ.Checked   := FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_SEPARARPORCNPJ.AsBoolean;
  cbxSepararPorModelo.Checked := FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_SEPARARPORMODELO.AsBoolean;
  edtPathNFe.Text             := FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_PATHNFE.AsString;
  edtPathInu.Text             := FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_PATHINU.AsString;
  edtPathEvento.Text          := FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_PATHEVENTO.AsString;
  edtPathPDF.Text             := FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_PATHPDF.AsString;
  edtDownloadXML.Text         := FServiceConfigACBr.QRY_CONFIG_ARQUIVOSARQ_PATHDOWNLOAD.AsString;

  //Emitente (buscar da empresa)
//  edtEmitCNPJ.Text        := FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_CNPJ.AsString;
//  edtEmitIE.Text          := FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_IE.AsString;
//  edtEmitRazao.Text       := FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_RAZAOSOCIAL.AsString;
//  edtEmitFantasia.Text    := FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_FANTASIA.AsString;
//  edtEmitFone.Text        := FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_FONE.AsString;
//  edtEmitCEP.Text         := FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_CEP.AsString;
//  edtEmitLogradouro.Text  := FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_LOGRADOURO.AsString;
//  edtEmitNumero.Text      := FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_NUMERO.AsString;
//  edtEmitComp.Text        := 'COMPLEMENTO';
//  edtEmitBairro.Text      := FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_BAIRRO.AsString;
//  edtEmitCodCidade.Text   := FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_CODCIDADE.AsString;
//  edtEmitCidade.Text      := FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_CIDADE.AsString;
//  edtEmitUF.Text          := FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_UF.AsString;
//  cbTipoEmpresa.ItemIndex := StrToIntDef(FServiceConfigACBr.QRY_CONFIG_EMITENTEEMI_CRT.AsString, 0);

  //Danfe
  rgTipoDanfe.ItemIndex := FServiceConfigACBr.QRY_CONFIG_DANFEDAN_TIPO.AsInteger;
  edtLogoMarca.Text     := FServiceConfigACBr.QRY_CONFIG_DANFEDAN_LOGOMARCA.AsString;
  rgDANFCE.ItemIndex    := FServiceConfigACBr.QRY_CONFIG_DANFEDAN_TIPODANFCE.AsInteger;

  //PosPrinter
  cbxModeloPosPrinter.ItemIndex             := FServiceConfigACBr.QRY_CONFIG_POSPRINTERPOS_MODELO.AsInteger;
  cbxPorta.Text                             := FServiceConfigACBr.QRY_CONFIG_POSPRINTERPOS_PORTA.AsString;
  cbxPagCodigo.ItemIndex                    := FServiceConfigACBr.QRY_CONFIG_POSPRINTERPOS_PAGINADECODIGO.AsInteger;
  seColunas.Value                           := FServiceConfigACBr.QRY_CONFIG_POSPRINTERPOS_COLUNAS.AsInteger;
  seEspLinhas.Value                         := FServiceConfigACBr.QRY_CONFIG_POSPRINTERPOS_ESPACOLINHAS.AsInteger;
  seLinhasPular.Value                       := FServiceConfigACBr.QRY_CONFIG_POSPRINTERPOS_LINHASENTRECUPONS.AsInteger;
  cbCortarPapel.Checked                     := FServiceConfigACBr.QRY_CONFIG_POSPRINTERPOS_CORTARPAPEL.AsBoolean;

  ACBrPosPrinter.Device.ParamsString  := FServiceConfigACBr.QRY_CONFIG_POSPRINTERPOS_PARAMSSTRING.AsString;

  ConfigurarComponente;

end;

// E:\Programação\[ DELPHIGOV ]\git_Consultoria\05_michael\trunk\pdv\Docs\Report\Obsoletos\DANFeNFCeA4.fr3
// E:\Programação\[ DELPHIGOV ]\git_Consultoria\05_michael\trunk\pdv\Docs\Report\DANFeRetrato.fr3

end.
