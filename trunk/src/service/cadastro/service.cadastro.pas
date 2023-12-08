unit service.cadastro;

interface

uses
  Data.DB,

  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.UI,
  FireDAC.DApt,
  FireDAC.DApt.Intf,
  FireDAC.DatS,
  FireDAC.Phys,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase,
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
  TServiceCadastro = class(TServiceConexao)
    QRY_Produtos: TFDQuery;
    QRY_ListaFaturamento: TFDQuery;
    QRY_Pessoas: TFDQuery;
    QRY_Pessoas_Contato: TFDQuery;
    QRY_Pessoas_ContatoIDCONTATO: TIntegerField;
    QRY_Pessoas_ContatoTELEFONE: TStringField;
    QRY_Pessoas_ContatoCELULAR: TStringField;
    QRY_Pessoas_ContatoEMAIL: TStringField;
    QRY_Pessoas_ContatoIDPESSOAS: TIntegerField;
    QRY_Pessoas_ContatoOBSERVACAO: TStringField;
    QRY_Cidades: TFDQuery;
    QRY_PessoasIDPESSOAS: TIntegerField;
    QRY_PessoasRAZAOSOCIAL: TStringField;
    QRY_PessoasFANTASIA: TStringField;
    QRY_PessoasENDERECO: TStringField;
    QRY_PessoasNUMERO: TStringField;
    QRY_PessoasBAIRRO: TStringField;
    QRY_PessoasCEP: TStringField;
    QRY_PessoasCOMPLEMENTO: TStringField;
    QRY_PessoasIDCIDADE: TIntegerField;
    QRY_PessoasTIPOFJ: TStringField;
    QRY_PessoasIDTIPOPESSOA: TIntegerField;
    QRY_PessoasCNPJ: TStringField;
    QRY_PessoasIE: TStringField;
    QRY_PessoasCONTRIBUINTE: TIntegerField;
    QRY_PessoasINSMUNICIPAL: TStringField;
    QRY_PessoasINSSUFRAMA: TStringField;
    QRY_PessoasEMAIL: TStringField;
    QRY_PessoasIDCONTATO: TIntegerField;
    QRY_PessoasOBSERVACAO: TStringField;
    QRY_PessoasIDFOTOS: TIntegerField;
    QRY_PessoasATIVO: TStringField;
    QRY_PessoasIDREFERENCIAS: TIntegerField;
    QRY_PessoasSPC: TStringField;
    QRY_PessoasSERASA: TStringField;
    QRY_PessoasUSUARIOALTERACAO: TIntegerField;
    QRY_PessoasUSUARIOCADASTRO: TIntegerField;
    QRY_PessoasDATADECADASTRO: TDateField;
    QRY_PessoasULTIMAALTERACAO: TDateField;
    QRY_PessoasSPCDATARETIRADA: TDateField;
    QRY_PessoasSPCDATAREGISTRO: TDateField;
    QRY_PessoasDATANASCIMENTO: TDateField;
    QRY_PessoasNOMECIDADE: TStringField;
    QRY_PessoasUF: TStringField;
    QRY_Pessoas_Endereco: TFDQuery;
    QRY_Pessoas_EnderecoIDENDERECO: TIntegerField;
    QRY_Pessoas_EnderecoIDPESSOA: TIntegerField;
    QRY_Pessoas_EnderecoENDERECO: TStringField;
    QRY_Pessoas_EnderecoIDCIDADE: TIntegerField;
    QRY_Pessoas_EnderecoBAIRRO: TStringField;
    QRY_Pessoas_EnderecoNUMERO: TStringField;
    QRY_Pessoas_EnderecoNOMECIDADE: TStringField;
    QRY_Pessoas_EnderecoUF: TStringField;
    QRY_Pessoas_EnderecoTIPOENDERECO: TStringField;
    QRY_Pessoas_EnderecoCEP: TStringField;
    QRY_PessoasIDGRUPOCLIENTES: TIntegerField;
    QRY_PessoasREFPESSOALNOME: TStringField;
    QRY_PessoasREFPESSOALTELEFONE: TStringField;
    QRY_PessoasREFPESSOALCIDADE: TStringField;
    QRY_PessoasREFFINANCEIRANOME: TStringField;
    QRY_PessoasREFFINANCEIRATELEFONE: TStringField;
    QRY_PessoasREFFINANCEIRACIDADE: TStringField;
    QRY_PessoasREFCOMERCIALNOME: TStringField;
    QRY_PessoasREFCOMERCIALTELEFONE: TStringField;
    QRY_PessoasREFCOMERCIALCIDADE: TStringField;
    QRY_Pessoas_Grupos: TFDQuery;
    QRY_Pessoas_GruposIDGRUPOCLIENTES: TIntegerField;
    QRY_Pessoas_GruposTIPOGRUPO: TStringField;
    QRY_Grupos: TFDQuery;
    QRY_GruposIDGRUPO: TIntegerField;
    QRY_GruposDESCRICAO: TStringField;
    Qry_SubGrupos: TFDQuery;
    Qry_SubGruposIDSUBGRUPO: TIntegerField;
    Qry_SubGruposDESCRICAO: TStringField;
    Qry_Fabricantes: TFDQuery;
    Qry_FabricantesIDFABRICANTE: TIntegerField;
    Qry_FabricantesFABRICANTE: TStringField;
    QRY_CidadesIDCIDADE: TIntegerField;
    QRY_CidadesMUNICIPIO: TStringField;
    QRY_CidadesUF: TStringField;
    QRY_CidadesCODMUNICIPIOIBGE: TStringField;
    QRY_CidadesCODESTADO: TIntegerField;
    QRY_PessoasFORNECEDORTELEFONE: TStringField;
    QRY_PessoasFORNECEDORCONTATO: TStringField;
    QRY_PessoasFORNECEDORCELULAR: TStringField;
    QRY_PessoasFORNECEDOREMAIL: TStringField;
    QRY_ProdutoItens: TFDQuery;
    QRY_ProdutoItensIDPRODUTOITEM: TIntegerField;
    QRY_ProdutoItensIDPRODUTO: TIntegerField;
    QRY_ProdutoItensVLRCUSTOINICIAL: TBCDField;
    QRY_ProdutoItensVLRCUSTOENTRADA: TBCDField;
    QRY_ProdutoItensVLRVENDAVISTA: TBCDField;
    QRY_ProdutoItensVLRVENDAPRAZO: TBCDField;
    QRY_ProdutoItensVLRATACADO: TBCDField;
    QRY_ProdutoItensESTOQUEMINIMO: TBCDField;
    QRY_ProdutoItensESTOQUEMAXIMO: TBCDField;
    QRY_ProdutoItensICMSCOMPRA: TBCDField;
    QRY_ProdutoItensREDUCAOBASECALCULOICMS: TBCDField;
    QRY_ProdutoItensMVACOMPRA: TBCDField;
    QRY_ProdutoItensICMSSTCOMPRA: TBCDField;
    QRY_ProdutoItensVLRCUSTOOPERACIONAL: TBCDField;
    QRY_ProdutoItensREDUCAOBASECALCULOICMSST: TBCDField;
    QRY_ProdutoItensVLRICMSST: TBCDField;
    QRY_ProdutoItensIPICOMPRA: TBCDField;
    QRY_ProdutoItensFRETECOMPRA: TBCDField;
    QRY_ProdutoItensVLRFRETECOMPRA: TBCDField;
    QRY_ProdutoItensVLROUTROSCUSTOS: TBCDField;
    QRY_ProdutoItensVLRPRECOCAIXA: TBCDField;
    QRY_ProdutoItensPESOCAIXA: TBCDField;
    QRY_ProdutoItensQTDCAIXA: TBCDField;
    QRY_ProdutoItensPERCICMSCOMPRA: TBCDField;
    QRY_ProdutoItensPERCICMSSTCOMPRA: TBCDField;
    QRY_ProdutoItensALIQPISCOMPRA: TBCDField;
    QRY_ProdutoItensVALORFRETECOMPRA: TBCDField;
    QRY_ProdutoItensPERCREDBASECALCULOICMSCOMPRA: TBCDField;
    QRY_ProdutoItensPERCREDBASECALCULOICMSSTCOMPRA: TBCDField;
    QRY_ProdutoItensALIQCOFINSCOMPRA: TBCDField;
    QRY_ProdutoItensALIQIPICOMPRA: TBCDField;
    QRY_ProdutoItensVALORICMSSTCOMPRA: TBCDField;
    QRY_ProdutoItensPERCFRETECOMPRA: TBCDField;
    QRY_ProdutoItensPERCOUTROSCOMPRA: TBCDField;
    QRY_ProdutoItensIDPISCOFINS: TIntegerField;
    QRY_ProdutoItensIDTRIBUTACAO: TIntegerField;
    QRY_ProdutoItensIDFILIAL: TIntegerField;
    QRY_Marcas: TFDQuery;
    QRY_MarcasIDMARCA: TIntegerField;
    QRY_MarcasDESCRICAO: TStringField;
    QRY_Vendas: TFDQuery;
    QRY_VendaItens: TFDQuery;
    QRY_VendasIDVENDA: TIntegerField;
    QRY_VendasDTAVENDA: TDateField;
    QRY_VendasHRAVENDA: TTimeField;
    QRY_VendasIDCLIENTE: TIntegerField;
    QRY_VendasIDVENDEDOR: TIntegerField;
    QRY_VendasVLRBRUTO: TBCDField;
    QRY_VendasVLRDESCONTO: TBCDField;
    QRY_VendasVLRLIQUIDO: TBCDField;
    QRY_VendasORIGEMVENDA: TStringField;
    QRY_VendasNUMNFE: TIntegerField;
    QRY_VendasSTATUS: TStringField;
    QRY_VendasOBSERVACAO: TStringField;
    QRY_VendasIDFILIAL: TIntegerField;
    QRY_VendasIDSETOR: TIntegerField;
    QRY_VendasIDTIPODOCUMENTO: TIntegerField;
    QRY_ProdutosIDPRODUTO: TIntegerField;
    QRY_ProdutosIDEMPRESA: TIntegerField;
    QRY_ProdutosDESCRICAO: TStringField;
    QRY_ProdutosIDSUBGRUPO: TIntegerField;
    QRY_ProdutosIDMARCA: TIntegerField;
    QRY_ProdutosIDFABRICANTE: TIntegerField;
    QRY_ProdutosIDFORNECEDOR: TIntegerField;
    QRY_ProdutosIDUNIDADE: TIntegerField;
    QRY_ProdutosREFERENCIA: TStringField;
    QRY_ProdutosCODBARRAS: TStringField;
    QRY_ProdutosPERMITEDESCONTO: TStringField;
    QRY_ProdutosDESCMAXIMO: TBCDField;
    QRY_ProdutosPAGARCOMISSAO: TStringField;
    QRY_ProdutosCOMISSAOAVISTA: TBCDField;
    QRY_ProdutosNCM: TStringField;
    QRY_ProdutosDATAHORACADASTRO: TSQLTimeStampField;
    QRY_ProdutosDATAHORAALTERACAO: TSQLTimeStampField;
    QRY_ProdutosATIVO: TStringField;
    QRY_ProdutosORIGEM: TIntegerField;
    QRY_ProdutosDESCCOMPRA: TBCDField;
    QRY_ProdutosLOCALIZACAO: TIntegerField;
    QRY_ProdutosLOCALIZACAOIMPRESSAO: TIntegerField;
    QRY_ProdutosINFADICIONAIS: TStringField;
    QRY_ProdutosAPLICACAO: TStringField;
    QRY_ProdutosPOSSUIDERIVADOS: TStringField;
    QRY_ProdutosCSTPISCOFINSENTRADA: TIntegerField;
    QRY_ProdutosCSTPISCOFINSSAIDA: TIntegerField;
    QRY_ProdutosCEST: TStringField;
    QRY_ProdutosIDUSUARIOCADASTRO: TIntegerField;
    QRY_ProdutosIDUSUARIOALTERACAO: TIntegerField;
    QRY_ProdutosIDSETOR: TIntegerField;
    QRY_ProdutosCODBARRASCXA: TStringField;
    QRY_ProdutosFOTO2: TStringField;
    QRY_ProdutosFOTO3: TStringField;
    QRY_ProdutosFOTO1: TStringField;
    QRY_ProdutosREFERENCIA2: TStringField;
    QRY_ProdutosREFERENCIA3: TStringField;
    QRY_ProdutosIDANP: TIntegerField;
    QRY_ProdutosCOMISSAOAPRAZO: TBCDField;
    QRY_ProdutosPESOUNI: TBCDField;
    QRY_ProdutosIDGRUPO: TIntegerField;
    QRY_Aux: TFDQuery;
    QRY_VendaItensIDVENDAITEM: TIntegerField;
    QRY_VendaItensIDVENDA: TIntegerField;
    QRY_VendaItensIDPRODUTO: TIntegerField;
    QRY_VendaItensIDPRODUTODETALHE: TIntegerField;
    QRY_VendaItensQTD: TBCDField;
    QRY_VendaItensVLRUNITARIO: TBCDField;
    QRY_VendaItensVLRDESCONTO: TBCDField;
    QRY_VendaItensVLRSUBTOTAL: TBCDField;
    QRY_VendaItensSERIEPRODUTO: TStringField;
    QRY_VendaItensVLRCUSTO: TBCDField;
    QRY_VendaItensCODIGOBARRAS: TStringField;
    QRY_VendaItensPESOITEM: TBCDField;
    QRY_OrigemMercadoria: TFDQuery;
    QRY_OrigemMercadoriaIDORIGEM: TIntegerField;
    QRY_OrigemMercadoriaCODORIGEM: TIntegerField;
    QRY_OrigemMercadoriaDESCRICAO: TStringField;
    QRY_OrigemMercadoriaATIVO: TStringField;
    QRY_ProdutosPRODUTOBALANCA: TStringField;
    QRY_ProdutosIDORIGEMMERCADORIA: TIntegerField;
    QRY_Embalagem: TFDQuery;
    QRY_EmbalagemIDUNIDADE: TIntegerField;
    QRY_EmbalagemDESCRICAO: TStringField;
    QRY_EmbalagemIDUSUARIOCADASTRO: TIntegerField;
    QRY_EmbalagemIDUSUARIOALTERACAO: TIntegerField;
    QRY_EmbalagemFRACAO: TIntegerField;
    QRY_EmbalagemSIGLA: TStringField;
    QRY_EmbalagemATIVO: TStringField;
    QRY_EmbalagemDATAHORAALTERACAO: TSQLTimeStampField;
    QRY_EmbalagemDATAHORACADASTRO: TSQLTimeStampField;
    QRY_ProdutosIDEMBALAGEM: TIntegerField;
    QRY_ProdutoItensVLRPERCMARGEMLUCRO: TBCDField;
    QRY_ProdutoItensVLRLUCRO: TBCDField;
    QRY_Tributacao: TFDQuery;
    QRY_TributacaoIDTRIBUTO: TIntegerField;
    QRY_TributacaoDESCRICAO: TStringField;
    QRY_TributacaoICMS: TIntegerField;
    QRY_TributacaoICMSST: TIntegerField;
    QRY_TributacaoDATAHORACADASTRO: TSQLTimeStampField;
    QRY_TributacaoDATAHORAALTERACAO: TSQLTimeStampField;
    QRY_TributacaoATIVO: TStringField;
    QRY_NCM: TFDQuery;
    QRY_NCMNCM: TStringField;
    QRY_NCMDESCRICAO: TStringField;
    QRY_NCMALIQNACIONAL: TCurrencyField;
    QRY_NCMALIQIMPORTADO: TCurrencyField;
    QRY_NCMALIQESTADUAL: TCurrencyField;
    QRY_NCMALIQMUNICIPAL: TCurrencyField;
    QRY_NCMPISSAIDA: TIntegerField;
    QRY_NCMPISENTRADA: TIntegerField;
    QRY_NCMALIQPISENTRADA: TCurrencyField;
    QRY_NCMCOFINSSAIDA: TIntegerField;
    QRY_NCMCOFINSENTRADA: TIntegerField;
    QRY_NCMALIQCOFINSENTRADA: TIntegerField;
    QRY_NCMDATAINICIO: TDateField;
    QRY_NCMDATAFIM: TDateField;
    QRY_NCMULTIMAALTERACAO: TSQLTimeStampField;
    QRY_NCMCEST: TStringField;
    QRY_NCMALIQPISSAIDA: TCurrencyField;
    QRY_NCMALIQCOFINSSAIDA: TCurrencyField;
    QRY_NCMCSTPISCOFINSENTRADA: TIntegerField;
    QRY_NCMCSTPISCOFINSSAIDA: TIntegerField;
    QRY_NCMVERSAO: TStringField;
    QRY_NCMATIVO: TStringField;
    QRY_NCMDATAHORACADASTRO: TSQLTimeStampField;
    QRY_ProdutosDESCRICAONCM: TStringField;
    QRY_ProdutosSIGLA: TStringField;
    QRY_ProdutosVLRVENDAVISTA: TBCDField;
    QRY_ProdutoItensGRUPO: TStringField;
    QRY_ProdutoItensMARCA: TStringField;
    QRY_MovimentoEstoque: TFDQuery;
    QRY_MovimentoEstoqueIDESTOQUE: TIntegerField;
    QRY_MovimentoEstoqueIDPRODUTO: TIntegerField;
    QRY_MovimentoEstoqueIDFILIAL: TIntegerField;
    QRY_MovimentoEstoquePRODUTO: TStringField;
    QRY_MovimentoEstoqueQUANTIDADE: TBCDField;
    QRY_MovimentoEstoqueDTAMOVIMENTO: TDateField;
    QRY_MovimentoEstoqueHRAMOVIMENTO: TTimeField;
    QRY_MovimentoEstoqueIDMOVIMENTO: TIntegerField;
    QRY_MovimentoEstoqueIDPRODUTOITENS: TIntegerField;
    QRY_Movimentos: TFDQuery;
    QRY_MovimentosIDMOVTRIBUTACAO: TIntegerField;
    QRY_MovimentosDESCRICAO: TStringField;
    QRY_MovimentosENTRADASAIDA: TStringField;
    QRY_MovimentosMOVESTOQUE: TBooleanField;
    QRY_ProdutoItensESTOQUE: TBCDField;
    QRY_ProdutosVENDEFRACIONADO: TStringField;
    QRY_Filial: TFDQuery;
    QRY_FilialIDEMPRESA: TIntegerField;
    QRY_FilialRAZAO: TStringField;
    QRY_FilialFANTASIA: TStringField;
    QRY_FilialCNPJ: TStringField;
    QRY_FilialIE: TStringField;
    QRY_FilialFONE: TStringField;
    QRY_FilialCEP: TStringField;
    QRY_FilialENDERECO: TStringField;
    QRY_FilialNUMERO: TStringField;
    QRY_FilialBAIRRO: TStringField;
    QRY_FilialCODIGOIBGE: TIntegerField;
    QRY_FilialCRT: TIntegerField;
    QRY_FilialCIDADE: TStringField;
    QRY_FilialESTADO: TStringField;
    QRY_FilialCOMPLEMENTO: TStringField;
    QRY_ProdutosPRECOLIVRE: TStringField;
    QRY_FilialTIPO: TStringField;
    QRY_FilialIM: TStringField;
    QRY_FilialHOMOLOGACAO: TDateField;
    QRY_FilialTELEFONE: TStringField;
    QRY_FilialFAX: TStringField;
    QRY_FilialCELULAR: TStringField;
    QRY_FilialEMAIL: TStringField;
    QRY_FilialGERENTE: TIntegerField;
    QRY_FilialPISCOFINS: TIntegerField;
    QRY_FilialESCRITURACAO: TIntegerField;
    QRY_FilialCNAE: TStringField;
    QRY_FilialATIVIDADE: TIntegerField;
    QRY_FilialPERFIL: TStringField;
    QRY_FilialCONTRIBUICAO: TIntegerField;
    QRY_FilialCREDICMS: TFMTBCDField;
    QRY_FilialLOGO1: TBlobField;
    QRY_FilialLOGO2: TBlobField;
    QRY_FilialCONTABILISTA: TIntegerField;
    QRY_FilialXML_FISCAIS: TStringField;
    QRY_FilialREC_EMAIL: TStringField;
    QRY_FilialEMAIL_CONTABILISTA: TStringField;
    QRY_FilialATIVO: TStringField;
    QRY_FormaPagamento: TFDQuery;
    QRY_FormaPagamentoIDPGTO: TIntegerField;
    QRY_FormaPagamentoDESCRICAO: TStringField;
    QRY_FormaPagamentoMOEDA: TStringField;
    QRY_FormaPagamentoGERARECEBER: TStringField;
    QRY_FormaPagamentoIDCLIENTEPADRAO: TIntegerField;
    QRY_FormaPagamentoATACADO: TStringField;
    QRY_FormaPagamentoPDV: TStringField;
    QRY_FormaPagamentoDESCONTO: TFMTBCDField;
    QRY_FormaPagamentoAUMENTO: TFMTBCDField;
    QRY_FormaPagamentoPRAZO: TStringField;
    QRY_Cfop: TFDQuery;
    QRY_CfopCFOP: TIntegerField;
    QRY_CfopDESCRICAO: TStringField;
    QRY_CfopDATAHORACADASTRO: TSQLTimeStampField;
    QRY_CfopDATAHORAALTERACAO: TSQLTimeStampField;
    QRY_CfopNOTA: TStringField;
    QRY_CfopATIVO: TStringField;
    QRY_FormaPagamentoNEUTRO: TStringField;
    QRY_FormaPagamentoPARCELAS: TStringField;
    QRY_CST: TFDQuery;
    QRY_CSTCST: TIntegerField;
    QRY_CSTDESCRICAO: TStringField;
    QRY_CSTDATAHORACADASTRO: TSQLTimeStampField;
    QRY_CSTDATAHORAALTERACAO: TSQLTimeStampField;
    QRY_CSTATIVO: TStringField;
  private


  public

    //procedures
    procedure GET_Pessoas; overload;
    procedure GET_Pessoas(IdPessoa: Integer); overload;
    procedure GET_Pessoas(ATipo: string; AIDTipo: Integer); overload;

    procedure GET_Vendas(AIdVenda: integer);
    procedure GET_CST(AIdCST:integer);


    procedure GET_Produtos(AIdProduto: integer); overload;
    procedure GET_ProdutosVenda(AIdProduto: integer);
    procedure GET_CFOP(AIdCFOP: integer);
    procedure GET_NCM2(AIdNCM: integer);
    procedure GET_Usuarios(AIdUsuarios: integer);
    procedure GET_Filiais(AIdFilial: integer);
    procedure GET_ProdutosItens(AIdProduto: integer);
    procedure GET_FormasPagamentos(AIdPagamento: integer);
    procedure GET_Tributos(AIdTributos: Integer);
    procedure GET_Movimentos(AIdMovimentos: Integer);
    procedure GET_NCM(AIdNCM: string);

    procedure GET_Grupos(AIdGrupo : Integer);
    procedure GET_SubGrupos(AIdSubGrupos : Integer);
    procedure GET_Fabricantes(AIdFabricante : Integer);
    procedure GET_Marcas(AIdMarca: Integer);

    procedure GET_OrigemMercadoria(AIdOrigem: Integer);
    procedure GET_Embalagens(AIdEmbalagem: Integer);


    procedure GET_Cidades(AIdCidade: integer);

    procedure GET_Contato(AIdPessoa: integer);
    procedure GET_Endereco(AIdPessoa: integer);


    procedure PUT_Vendas(ADataSetCabecalho, ADataSetItens: TDataSet);
    procedure PUT_Estoque(AIdProdutoDetalhe: integer; AQuantidade: Double; AEntradaSaida: string);





  end;

var
  ServiceCadastro: TServiceCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TServiceCadastro }

{ TServiceCadastro }


procedure TServiceCadastro.GET_Pessoas;
begin //Todos os Pessoas
  QRY_Pessoas.Close;
  QRY_Pessoas.SQL.Clear;
  QRY_Pessoas.SQL.Add('select');
  QRY_Pessoas.SQL.Add('  pe.*');
  QRY_Pessoas.SQL.Add('from pessoas pe');
  QRY_Pessoas.SQL.Add('order by pe.idpessoas ');
  QRY_Pessoas.Open();
end;

procedure TServiceCadastro.GET_Pessoas(IdPessoa: Integer);
begin //Pessoa por Id
  QRY_Pessoas.Close;
  QRY_Pessoas.SQL.Clear;
  if IdPessoa > 0 then
  begin
    QRY_Pessoas.SQL.Add('select');
    QRY_Pessoas.SQL.Add('  pe.*');
    QRY_Pessoas.SQL.Add('from pessoas pe');
    QRY_Pessoas.SQL.Add('where pe.idpessoas = :idPessoa');
    QRY_Pessoas.Params[0].AsInteger := IdPessoa;
    QRY_Pessoas.Open();
  end
  else begin
    QRY_Pessoas.SQL.Add('select');
    QRY_Pessoas.SQL.Add('  pe.*');
    QRY_Pessoas.SQL.Add('from pessoas pe');
    QRY_Pessoas.SQL.Add(' order by pe.idpessoas ');
    QRY_Pessoas.Open();
  end;
end;



procedure TServiceCadastro.GET_CFOP(AIdCFOP: integer);
begin
  QRY_Cfop.Close;
  QRY_Cfop.SQL.Clear;
  if AIdCFOP > 0 then
  begin
    QRY_Cfop.SQL.Add('select * from estcfop ');
    QRY_Cfop.SQL.Add(' where estcfop.cfop = :cfop ');
    QRY_Cfop.SQL.Add('order by  cfop');
    QRY_Cfop.Params[0].AsInteger := AIdCFOP;
  end
  else
  begin
    QRY_Cfop.SQL.Add('select * from estcfop ');
    QRY_Cfop.SQL.Add('order by  cfop');
  end;
  QRY_Cfop.Open();
end;

procedure TServiceCadastro.GET_Cidades(AIdCidade: Integer);
begin // cidade por id
  QRY_Cidades.Close;
  QRY_Cidades.SQL.Clear;
  if AIdCidade > 0 then
  begin
    QRY_Cidades.SQL.Add('select * from cidades where idcidade = :idcidade');
    QRY_Cidades.Params[0].AsInteger := AIdCidade;
    QRY_Cidades.Open();
  end
  else begin
    QRY_Cidades.SQL.Add('select * from cidades order by idcidade ');
    QRY_Cidades.Open();
  end;
end;

procedure TServiceCadastro.GET_Contato(AIdPessoa: Integer);
begin //Contatos de uma Pessoa
  QRY_Pessoas_Contato.Close;
  QRY_Pessoas_Contato.SQL.Clear;
  if AIdPessoa > 0 then
  begin
    QRY_Pessoas_Contato.SQL.Add('select * from contato where idpessoas = :idpessoas order by 1');
    QRY_Pessoas_Contato.Params[0].AsInteger := AIdPessoa;
    QRY_Pessoas_Contato.Open();
  end
  else begin
    QRY_Pessoas_Contato.SQL.Add('select * from contato order by idpessoas ');
    QRY_Pessoas_Contato.Open();
  end;
end;

procedure TServiceCadastro.GET_CST(AIdCST:Integer);
begin
  QRY_CST.Close;
  QRY_CST.SQL.Clear;
  if AIdCST > 0 then
  begin
    QRY_CST.SQL.Add('select * from estcst ');
    QRY_CST.SQL.Add(' where estcst.cst = :cst ');
    QRY_CST.SQL.Add('order by  cst');
    QRY_CST.Params[0].Asinteger := AIdCST;
  end
  else
  begin
    QRY_CST.SQL.Add('select * from estcst ');
    QRY_CST.SQL.Add('order by  cst');
  end;
  QRY_CST.Open();
end;

procedure TServiceCadastro.GET_Endereco(AIdPessoa: Integer);
begin //enderešos pelo id da pessoa
  QRY_Pessoas_Endereco.Close;
  QRY_Pessoas_Endereco.SQL.Clear;
  if AIdPessoa > 0 then
  begin
    QRY_Pessoas_Endereco.SQL.Add('select');
    QRY_Pessoas_Endereco.SQL.Add('  en.*');
    QRY_Pessoas_Endereco.SQL.Add('from endereco en');
    QRY_Pessoas_Endereco.SQL.Add('where en.idpessoa = :idpessoa');
    QRY_Pessoas_Endereco.SQL.Add('order by en.idpessoa ');
    QRY_Pessoas_Endereco.Params[0].AsInteger := AIdPessoa;
    QRY_Pessoas_Endereco.Open();
  end
  else begin
    QRY_Pessoas_Endereco.SQL.Add('select');
    QRY_Pessoas_Endereco.SQL.Add('  en.*');
    QRY_Pessoas_Endereco.SQL.Add('from endereco en');
    QRY_Pessoas_Endereco.SQL.Add('order by en.idpessoa ');
    QRY_Pessoas_Endereco.Open();
  end;
end;

procedure TServiceCadastro.GET_Fabricantes(AIdFabricante: Integer);
begin // Fabricante
  Qry_Fabricantes.Close;
  Qry_Fabricantes.SQL.Clear;
  if AIdFabricante > 0 then
  begin
    Qry_Fabricantes.SQL.Add('select * from estfabricante');
    Qry_Fabricantes.SQL.Add(' where estfabricante.idfabricante = :idfabricante');
    Qry_Fabricantes.SQL.Add('order by  Idfabricante');
    Qry_Fabricantes.Params[0].AsInteger := AIdFabricante;
  end
  else
  begin
    Qry_Fabricantes.SQL.Add('select * from estfabricante ');
    Qry_Fabricantes.SQL.Add('order by  Idfabricante');
  end;
  Qry_Fabricantes.Open();
end;

procedure TServiceCadastro.GET_Filiais(AIdFilial: integer);
begin
   QRY_Filial.Close;
  QRY_Filial.SQL.Clear;
  if AIdFilial > 0 then
  begin
    QRY_Filial.SQL.Add('select * from empresa ');
    QRY_Filial.SQL.Add(' where empresa.idempresa = :idempressa ');
    QRY_Filial.SQL.Add('order by  idempresa');
    QRY_Filial.Params[0].AsInteger := AIdFilial;
  end
  else
  begin
    QRY_Filial.SQL.Add('select * from empresa ');
    QRY_Filial.SQL.Add('order by  idempresa');
  end;
  QRY_Filial.Open();

end;

procedure TServiceCadastro.GET_FormasPagamentos(AIdPagamento: integer);
begin
 QRY_FormaPagamento.Close;
  QRY_FormaPagamento.SQL.Clear;
  if AIdPagamento > 0 then
  begin
    QRY_FormaPagamento.SQL.Add('select * from finanformaspgto ');
    QRY_FormaPagamento.SQL.Add(' where idpgto = :idpgto');
    QRY_FormaPagamento.SQL.Add('order by  idpgto');
    QRY_FormaPagamento.Params[0].AsInteger := AIdPagamento;
  end
  else
  begin
    QRY_FormaPagamento.SQL.Add('select * from finanformaspgto ');
    QRY_FormaPagamento.SQL.Add('order by  idpgto');
  end;
  QRY_FormaPagamento.Open();

end;

procedure TServiceCadastro.GET_Grupos(AIdGrupo: Integer);
begin // grupos todos
  Qry_grupos.Close;
  Qry_grupos.SQL.Clear;
  if AIdGrupo > 0 then
  begin
    Qry_grupos.SQL.Add('select * from estgrupo ');
    QRY_Grupos.SQL.Add(' where estgrupo.idgrupo = :idgrupo ');
    Qry_grupos.SQL.Add('order by  idgrupo');
    Qry_grupos.Params[0].AsInteger := AIdGrupo;
  end
  else
  begin
    Qry_grupos.SQL.Add('select * from estgrupo ');
    Qry_grupos.SQL.Add('order by  idgrupo');
  end;
  Qry_grupos.Open();
end;


procedure TServiceCadastro.GET_Embalagens(AIdEmbalagem: Integer);
begin // unidades - embalagens
  QRY_Embalagem.Close;
  QRY_Embalagem.SQL.Clear;
  if AIdEmbalagem > 0 then
  begin
    QRY_Embalagem.SQL.Add('select * from estunidades ');
    QRY_Embalagem.SQL.Add(' where idunidade = :idunidade ');
    QRY_Embalagem.SQL.Add('order by  idunidade');
    QRY_Embalagem.Params[0].AsInteger := AIdEmbalagem;
  end
  else
  begin
    QRY_Embalagem.SQL.Add('select * from estunidades ');
    QRY_Embalagem.SQL.Add('order by  idunidade');
  end;
  QRY_Embalagem.Open();
end;

procedure TServiceCadastro.GET_Movimentos(AIdMovimentos: Integer);
begin // lista dos Movimentos - todos
  QRY_Movimentos.Close;
  QRY_Movimentos.SQL.Clear;
  if AIdMovimentos > 0 then
  begin
    QRY_Movimentos.SQL.Add('select * from MOVIMENTOTRIBUTACAO ');
    QRY_Movimentos.SQL.Add(' where IDMOVTRIBUTACAO = :IDMOVTRIBUTACAO ');
    QRY_Movimentos.Params[0].AsInteger := AIdMovimentos;
  end
  else
  begin
    QRY_Movimentos.SQL.Add('select * from MOVIMENTOTRIBUTACAO ');
    QRY_Movimentos.SQL.Add('order by IDMOVTRIBUTACAO');
  end;
  QRY_Movimentos.Open();
end;

procedure TServiceCadastro.GET_Tributos(AIdTributos: Integer);
begin // lista dos tributos - todos
  QRY_Tributacao.Close;
  QRY_Tributacao.SQL.Clear;
  if AIdTributos > 0 then
  begin
    QRY_Tributacao.SQL.Add('select et.* from esttributos et ');
    QRY_Tributacao.SQL.Add(' where et.idtributo = :idtributo ');
    QRY_Tributacao.SQL.Add('order by et.idtributo');
    QRY_Tributacao.Params[0].AsInteger := AIdTributos;
  end
  else
  begin
    QRY_Tributacao.SQL.Add('select et.* from esttributos et ');
    QRY_Tributacao.SQL.Add('order by et.idtributo');
  end;
  QRY_Tributacao.Open();
end;

procedure TServiceCadastro.GET_Usuarios(AIdUsuarios: integer);
begin

  QRY_Usuarios.Close;
  QRY_Usuarios.SQL.Clear;
  if AIdUsuarios > 0 then
  begin
    QRY_Usuarios.SQL.Add('select');
    QRY_Usuarios.SQL.Add('  uc.*');
    QRY_Usuarios.SQL.Add('from UCTABUSERS uc');
    QRY_Usuarios.SQL.Add('where uc.uciduser = :AIdUsuarios');
    QRY_Usuarios.Params[0].AsInteger := AIdUsuarios;
    QRY_Usuarios.Open();
  end
  else begin
    QRY_Usuarios.SQL.Add('select');
    QRY_Usuarios.SQL.Add('  uc.*');
    QRY_Usuarios.SQL.Add('from UCTABUSERS uc');
    QRY_Usuarios.SQL.Add(' order by uc.uciduser ');
    QRY_Usuarios.Open();
  end;


end;

procedure TServiceCadastro.GET_NCM(AIdNCM: string);
begin // lista dos ncm - todos
  QRY_NCM.Close;
  QRY_NCM.SQL.Clear;
  if (AIdNCM <> '') and (Length(Trim(AIdNCM)) = 8) then
  begin
    QRY_NCM.SQL.Add('select * from estncm where ncm = :ncm ');
    QRY_NCM.Params[0].AsString := AIdNCM;
  end
  else
  begin
    QRY_NCM.SQL.Add('select * from estncm order by descricao ');
  end;
  QRY_NCM.Open();
end;

procedure TServiceCadastro.GET_NCM2(AIdNCM: integer);
begin
 
end;

procedure TServiceCadastro.GET_OrigemMercadoria(AIdOrigem: Integer);
begin // Origem da Mercadoria
  QRY_OrigemMercadoria.Close;
  QRY_OrigemMercadoria.SQL.Clear;
  if AIdOrigem > 0 then
  begin
    QRY_OrigemMercadoria.SQL.Add('select * from estorigem ');
    QRY_OrigemMercadoria.SQL.Add(' where idorigem = :idorigem ');
    QRY_OrigemMercadoria.SQL.Add('order by  idorigem');
    QRY_OrigemMercadoria.Params[0].AsInteger := AIdOrigem;
  end
  else
  begin
    QRY_OrigemMercadoria.SQL.Add('select * from estorigem ');
    QRY_OrigemMercadoria.SQL.Add('order by  idorigem');
  end;
  QRY_OrigemMercadoria.Open();
end;

procedure TServiceCadastro.GET_Marcas(AIdMarca: Integer);
begin // marcas todos
  QRY_Marcas.Close;
  QRY_Marcas.SQL.Clear;
  if AIdMarca > 0 then
  begin
    QRY_Marcas.SQL.Add('select * from estmarca ');
    QRY_Marcas.SQL.Add(' where estmarca.idmarca = :idmarca ');
    QRY_Marcas.SQL.Add('order by  idmarca');
    QRY_Marcas.Params[0].AsInteger := AIdMarca;
  end
  else
  begin
    QRY_Marcas.SQL.Add('select * from estmarca ');
    QRY_Marcas.SQL.Add('order by  idmarca');
  end;
  QRY_Marcas.Open();
end;

procedure TServiceCadastro.GET_Pessoas(ATipo: string; AIDTipo: Integer);
begin //Pessoa por Tipo
  QRY_Pessoas.Close;
  QRY_Pessoas.SQL.Clear;
  if AIDTipo > 0 then
  begin
    QRY_Pessoas.SQL.Add('select');
    QRY_Pessoas.SQL.Add('  pe.*');
    QRY_Pessoas.SQL.Add('from pessoas pe');
    QRY_Pessoas.SQL.Add('where pe.idtipopessoa = :idtipopessoa');
    QRY_Pessoas.SQL.Add('order by pe.idpessoas ');
    QRY_Pessoas.Params[0].AsInteger := AIDTipo;
    QRY_Pessoas.Open();
  end
  else begin
    QRY_Pessoas.SQL.Add('select');
    QRY_Pessoas.SQL.Add('  pe.*');
    QRY_Pessoas.SQL.Add('from pessoas pe');
    QRY_Pessoas.SQL.Add('order by pe.idpessoas ');
    QRY_Pessoas.Open();
  end;
end;

procedure TServiceCadastro.GET_Produtos(AIdProduto: Integer);
begin // Produto por Id
  QRY_Produtos.Close;
  QRY_Produtos.SQL.Clear;
  if AIdProduto > 0 then
  begin
    QRY_Produtos.SQL.Add('select');
    QRY_Produtos.SQL.Add(' ep.*,');
    QRY_Produtos.SQL.Add(' un.sigla,');
    QRY_Produtos.SQL.Add(' epi.vlrvendavista');
    QRY_Produtos.SQL.Add('from estprodutos ep');
    QRY_Produtos.SQL.Add('left join estunidades un');
    QRY_Produtos.SQL.Add('on (ep.idunidade = un.idunidade)');
    QRY_Produtos.SQL.Add('inner join estprodutositens epi');
    QRY_Produtos.SQL.Add('on (ep.idproduto = epi.idproduto)');
    QRY_Produtos.SQL.Add('where ep.idproduto = :idproduto');
    QRY_Produtos.Params[0].AsInteger := AIdProduto;
    QRY_Produtos.Open();
  end
  else begin
    QRY_Produtos.SQL.Add('select');
    QRY_Produtos.SQL.Add(' ep.*,');
    QRY_Produtos.SQL.Add(' un.sigla,');
    QRY_Produtos.SQL.Add(' epi.vlrvendavista');
    QRY_Produtos.SQL.Add('from estprodutos ep');
    QRY_Produtos.SQL.Add('left join estunidades un');
    QRY_Produtos.SQL.Add('on (ep.idunidade = un.idunidade)');
    QRY_Produtos.SQL.Add('inner join estprodutositens epi');
    QRY_Produtos.SQL.Add('on (ep.idproduto = epi.idproduto)');
    QRY_Produtos.SQL.Add('order by ep.idproduto');
    QRY_Produtos.Open();
  end;
end;

procedure TServiceCadastro.GET_ProdutosItens(AIdProduto: integer);
begin //Produto Item

  QRY_ProdutoItens.Close;
  QRY_ProdutoItens.SQL.Clear;
  QRY_ProdutoItens.SQL.Add('select');
  QRY_ProdutoItens.SQL.Add(' pi.*,');
  QRY_ProdutoItens.SQL.Add(' eg.descricao grupo,');
  QRY_ProdutoItens.SQL.Add(' em.descricao marca');
  QRY_ProdutoItens.SQL.Add('from estprodutositens pi');
  QRY_ProdutoItens.SQL.Add('inner join estprodutos ep');
  QRY_ProdutoItens.SQL.Add('on (ep.idproduto = pi.idproduto)');
  QRY_ProdutoItens.SQL.Add('left join estgrupo eg');
  QRY_ProdutoItens.SQL.Add('on (ep.idgrupo = eg.idgrupo)');
  QRY_ProdutoItens.SQL.Add('left join estmarca em');
  QRY_ProdutoItens.SQL.Add('on (ep.idmarca = em.idmarca)');
  QRY_ProdutoItens.SQL.Add('where pi.idproduto = :idproduto');
  QRY_ProdutoItens.Params[0].AsInteger := AIdProduto;
  QRY_ProdutoItens.Open();

end;

procedure TServiceCadastro.GET_ProdutosVenda(AIdProduto: integer);
begin // Produto por Id
//  QRY_Aux.Close;
//  QRY_Aux.SQL.Clear;
//  if AIdProduto > 0 then
//  begin
//    QRY_Aux.SQL.Add('SELECT  P.IDPRODUTO AS CODIGO,P.REFERENCIA AS REFERENCIA,P.CODBARRAS AS CODBARRA,P.DESCRICAO AS DESCRICAO,IT.VLRVENDAVISTA AS VALOR,IT.VLRVENDAPRAZO AS PRAZO,IT.IDFILIAL AS FILIAL,');
//    QRY_Aux.SQL.Add('P.REFERENCIA2 AS REFERENCIA2,P.REFERENCIA3 AS REFERENCIA3,M.DESCRICAO AS MARCA ,L.DESCRICAO  AS LOCALIZACAO');
//    QRY_Aux.SQL.Add('FROM ESTPRODUTOS P INNER JOIN ESTPRODUTOSITENS IT ON IT.IDPRODUTO = P.IDPRODUTO INNER JOIN ESTMARCA M ON M.IDMARCA = P.IDMARCA INNER JOIN ESTLOCALIZACAO L ON L.IDLOCALIZACAO = P.LOCALIZACAO');
//    QRY_Aux.Params[0].AsInteger := AIdProduto;
//    QRY_Aux.Open();
//  end
//  else begin
//    QRY_Aux.SQL.Add('SELECT  P.IDPRODUTO AS CODIGO,P.REFERENCIA AS REFERENCIA,P.CODBARRAS AS CODBARRA,P.DESCRICAO AS DESCRICAO,IT.VLRVENDAVISTA AS VALOR,IT.VLRVENDAPRAZO AS PRAZO,IT.IDFILIAL AS FILIAL,');
//    QRY_Aux.SQL.Add('P.REFERENCIA2 AS REFERENCIA2,P.REFERENCIA3 AS REFERENCIA3,M.DESCRICAO AS MARCA ,L.DESCRICAO  AS LOCALIZACAO');
//    QRY_Aux.SQL.Add('FROM ESTPRODUTOS P INNER JOIN ESTPRODUTOSITENS IT ON IT.IDPRODUTO = P.IDPRODUTO INNER JOIN ESTMARCA M ON M.IDMARCA = P.IDMARCA INNER JOIN ESTLOCALIZACAO L ON L.IDLOCALIZACAO = P.LOCALIZACAO');
//    QRY_Aux.Open();
//  end;

end;

procedure TServiceCadastro.GET_SubGrupos(AIdSubGrupos: Integer);
begin // Sub. grupos
  Qry_Subgrupos.Close;
  Qry_Subgrupos.SQL.Clear;
  if AIdSubGrupos > 0 then
  begin
    Qry_Subgrupos.SQL.Add('select * from estsubgrupo ');
    Qry_Subgrupos.SQL.Add(' where estsubgrupo.idsubgrupo = :idsubgrupo ');
    Qry_Subgrupos.SQL.Add('order by  idsubgrupo');
    Qry_Subgrupos.Params[0].AsInteger := AIdSubGrupos;
  end
  else
  begin
    Qry_Subgrupos.SQL.Add('select * from estsubgrupo ');
    Qry_Subgrupos.SQL.Add('order by  idsubgrupo');
  end;
  Qry_Subgrupos.Open();
end;

procedure TServiceCadastro.GET_Vendas(AIdVenda: integer);
begin  // Vendas por Id
  QRY_Vendas.Close;
  QRY_Vendas.SQL.Clear;
  if AIdVenda > 0 then
  begin
    QRY_Vendas.SQL.Add('select * from ESTVENDA where idvenda = :idvenda');
    QRY_Vendas.Params[0].AsInteger := AIdVenda;
    QRY_Vendas.Open();
  end
  else begin
    QRY_Vendas.SQL.Add('select * from ESTVENDA order by idvenda  ');
    QRY_Vendas.Open();
  end;

end;

procedure TServiceCadastro.PUT_Estoque(AIdProdutoDetalhe: integer; AQuantidade: Double; AEntradaSaida: string);
begin // Atualiza o Estoque

  if AEntradaSaida = 'ENTRADA' then
  begin
    QRY_Aux.Close;
    QRY_Aux.SQL.Clear;
    QRY_Aux.SQL.Add('update ESTPRODUTOSITENS set estoque = estoque + :estoque');
    QRY_Aux.SQL.Add('where idprodutoitem = :iddetalhe');
    QRY_Aux.Params[0].AsFloat   := AQuantidade;
    QRY_Aux.Params[1].AsInteger := AIdProdutoDetalhe;
    QRY_Aux.ExecSQL;
  end;

  if AEntradaSaida = 'SAIDA' then
  begin
    QRY_Aux.Close;
    QRY_Aux.SQL.Clear;
    QRY_Aux.SQL.Add('update ESTPRODUTOSITENS set estoque = estoque - :estoque');
    QRY_Aux.SQL.Add('where idprodutoitem = :iddetalhe');
    QRY_Aux.Params[0].AsFloat   := AQuantidade;
    QRY_Aux.Params[1].AsInteger := AIdProdutoDetalhe;
    QRY_Aux.ExecSQL;
  end;

end;

procedure TServiceCadastro.PUT_Vendas(ADataSetCabecalho,
  ADataSetItens: TDataSet);
begin

  try

    QRY_Vendas.Close;
    QRY_Vendas.Open();
    QRY_Vendas.Insert;
    QRY_VendasDTAVENDA.AsDateTime              := Date;
    QRY_VendasHRAVENDA.AsDateTime              := Now;
    QRY_VendasIDCLIENTE.AsInteger              := ADataSetCabecalho.FieldByName('IDCLIENTE').AsInteger;
    QRY_VendasIDVENDEDOR.AsInteger             := ADataSetCabecalho.FieldByName('IDVENDEDOR').AsInteger;
    QRY_VendasVLRBRUTO.AsFloat                 := ADataSetCabecalho.FieldByName('VLRBRUTO').AsFloat;
    QRY_VendasVLRDESCONTO.AsFloat              := ADataSetCabecalho.FieldByName('VLRDESCONTO').AsFloat;
    QRY_VendasVLRLIQUIDO.AsFloat               := ADataSetCabecalho.FieldByName('VLRLIQUIDO').AsFloat;
    QRY_VendasORIGEMVENDA.AsString             := ADataSetCabecalho.FieldByName('ORIGEMVENDA').AsString;
    QRY_VendasNUMNFE.AsInteger                 := ADataSetCabecalho.FieldByName('NUMNFE').AsInteger;
    QRY_VendasSTATUS.AsString                  := ADataSetCabecalho.FieldByName('STATUS').AsString;
    QRY_VendasOBSERVACAO.AsString              := ADataSetCabecalho.FieldByName('OBSERVACAO').AsString;
    QRY_VendasIDFILIAL.AsInteger               := ADataSetCabecalho.FieldByName('IDFILIAL').AsInteger;
    QRY_VendasIDSETOR.AsInteger                := ADataSetCabecalho.FieldByName('IDSETOR').AsInteger;
    QRY_VendasIDTIPODOCUMENTO.AsInteger        := ADataSetCabecalho.FieldByName('IDTIPODOCUMENTO').AsInteger;
    QRY_Vendas.Post;


    //itens
    ADataSetItens.DisableControls;
    ADataSetItens.First;
    while not ADataSetItens.Eof do
    begin

      QRY_VendaItens.Close;
      QRY_VendaItens.Open();
      QRY_VendaItens.Insert;
      QRY_VendaItensIDVENDA.AsInteger           := ADataSetItens.FieldByName('IDVENDA').AsInteger             ;
      QRY_VendaItensIDPRODUTO.AsInteger         := ADataSetItens.FieldByName('IDPRODUTO').AsInteger           ;
      QRY_VendaItensIDPRODUTODETALHE.AsInteger  := ADataSetItens.FieldByName('IDPRODUTODETALHE').AsInteger    ;
      QRY_VendaItensQTD.AsFloat                 := ADataSetItens.FieldByName('QTD').AsFloat                   ;
      QRY_VendaItensVLRUNITARIO.AsFloat         := ADataSetItens.FieldByName('VLRUNITARIO').AsFloat           ;
      QRY_VendaItensVLRDESCONTO.AsFloat         := ADataSetItens.FieldByName('VLRDESCONTO').AsFloat           ;
      QRY_VendaItensVLRSUBTOTAL.AsFloat         := ADataSetItens.FieldByName('VLRSUBTOTAL').AsFloat           ;
      QRY_VendaItensSERIEPRODUTO.AsString       := ADataSetItens.FieldByName('SERIEPRODUTO').AsString         ;
      QRY_VendaItensVLRCUSTO.AsFloat            := ADataSetItens.FieldByName('VLRCUSTO').AsFloat              ;
      QRY_VendaItensCODIGOBARRAS.AsFloat        := ADataSetItens.FieldByName('CODIGOBARRAS').AsFloat          ;
      QRY_VendaItensPESOITEM.AsFloat            := ADataSetItens.FieldByName('PESOITEM').AsFloat              ;
      QRY_VendaItens.Post;

      ADataSetItens.Next;
    end;
    ADataSetItens.EnableControls;

  except on E: Exception do
    raise Exception.Create('Erro ao Gravar a venda.');
  end;
end;

end.
