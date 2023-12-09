unit service.cadastro;

interface

uses
  ACBrDFeUtil,
  ACBrUtil,
  frxClass,
  frxDBSet,
  pcnConversao,

  Data.DB,

  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Script,
  FireDAC.Comp.ScriptCommands,
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
  FireDAC.Stan.Util,
  FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait,

  System.Classes,
  System.SysUtils,

  Vcl.DBGrids,
  Vcl.Dialogs,

  controller.conversao.pdv,

  providers.conversao,
  providers.functions,

  service.conexao, frxExportBaseDialog, frxExportPDF;

type
  TServiceCadastro = class(TServiceConexao)
    QRY_Empresa: TFDQuery;
    QRY_AbrirCaixa: TFDQuery;
    QRY_Produto: TFDQuery;
    QRY_Venda: TFDQuery;
    QRY_VendaItem: TFDQuery;
    QRY_FormasPGTO: TFDQuery;
    QRY_receber1: TFDQuery;
    QRY_receber2: TFDQuery;
    QRY_receber1RC1_CODIGO: TIntegerField;
    QRY_receber1RC1_NUMDOCTO: TStringField;
    QRY_receber1RC1_CLIENTE: TIntegerField;
    QRY_receber1RC1_VALOR: TFMTBCDField;
    QRY_receber2RC2_CODIGO: TIntegerField;
    QRY_receber2RC2_NUMDOCTO: TStringField;
    QRY_receber2RC2_DATA: TDateField;
    QRY_receber2RC2_VALORPARCELA: TFMTBCDField;
    QRY_receber2RC2_PARCELA: TStringField;
    QRY_receber2RC2_VENCIMENTO: TDateField;
    QRY_receber2RC2_VALORHAVER: TFMTBCDField;
    QRY_receber2RC2_VALORSALDO: TFMTBCDField;
    frxReport: TfrxReport;
    frxDBDataset_venda: TfrxDBDataset;
    frxDBDataset_vendaItem: TfrxDBDataset;
    frxDBDataset_filial: TfrxDBDataset;
    QRY_AbrirCaixaIDABRIRCAIXA: TIntegerField;
    QRY_AbrirCaixaDTAABRE: TDateField;
    QRY_AbrirCaixaHRAABRE: TTimeField;
    QRY_AbrirCaixaVALORINICIAL: TBCDField;
    QRY_AbrirCaixaDTAFECHA: TDateField;
    QRY_AbrirCaixaHRAFECHA: TTimeField;
    QRY_AbrirCaixaVALORFINAL: TBCDField;
    QRY_AbrirCaixaUSUARIOCAIXA: TIntegerField;
    QRY_AbrirCaixaSTATUSCAIXA: TStringField;
    QRY_AbrirCaixaOBSERVACAO: TStringField;
    QRY_ProdutoIDPRODUTO: TIntegerField;
    QRY_ProdutoIDEMPRESA: TIntegerField;
    QRY_ProdutoDESCRICAO: TStringField;
    QRY_ProdutoIDSUBGRUPO: TIntegerField;
    QRY_ProdutoIDMARCA: TIntegerField;
    QRY_ProdutoIDFABRICANTE: TIntegerField;
    QRY_ProdutoIDFORNECEDOR: TIntegerField;
    QRY_ProdutoIDUNIDADE: TIntegerField;
    QRY_ProdutoREFERENCIA: TStringField;
    QRY_ProdutoCODBARRAS: TStringField;
    QRY_ProdutoPERMITEDESCONTO: TStringField;
    QRY_ProdutoDESCMAXIMO: TBCDField;
    QRY_ProdutoPAGARCOMISSAO: TStringField;
    QRY_ProdutoCOMISSAOAVISTA: TBCDField;
    QRY_ProdutoNCM: TStringField;
    QRY_ProdutoDATAHORACADASTRO: TSQLTimeStampField;
    QRY_ProdutoDATAHORAALTERACAO: TSQLTimeStampField;
    QRY_ProdutoATIVO: TStringField;
    QRY_ProdutoORIGEM: TIntegerField;
    QRY_ProdutoDESCCOMPRA: TBCDField;
    QRY_ProdutoLOCALIZACAO: TIntegerField;
    QRY_ProdutoLOCALIZACAOIMPRESSAO: TIntegerField;
    QRY_ProdutoINFADICIONAIS: TStringField;
    QRY_ProdutoAPLICACAO: TStringField;
    QRY_ProdutoPOSSUIDERIVADOS: TStringField;
    QRY_ProdutoCSTPISCOFINSENTRADA: TIntegerField;
    QRY_ProdutoCSTPISCOFINSSAIDA: TIntegerField;
    QRY_ProdutoCEST: TStringField;
    QRY_ProdutoIDUSUARIOCADASTRO: TIntegerField;
    QRY_ProdutoIDUSUARIOALTERACAO: TIntegerField;
    QRY_ProdutoIDSETOR: TIntegerField;
    QRY_ProdutoCODBARRASCXA: TStringField;
    QRY_ProdutoFOTO2: TStringField;
    QRY_ProdutoFOTO3: TStringField;
    QRY_ProdutoFOTO1: TStringField;
    QRY_ProdutoREFERENCIA2: TStringField;
    QRY_ProdutoREFERENCIA3: TStringField;
    QRY_ProdutoIDANP: TIntegerField;
    QRY_ProdutoCOMISSAOAPRAZO: TBCDField;
    QRY_ProdutoPESOUNI: TBCDField;
    QRY_ProdutoIDPRODUTOITEM: TIntegerField;
    QRY_ProdutoIDPRODUTO_1: TIntegerField;
    QRY_ProdutoVLRCUSTOINICIAL: TBCDField;
    QRY_ProdutoVLRCUSTOENTRADA: TBCDField;
    QRY_ProdutoVLRVENDAVISTA: TBCDField;
    QRY_ProdutoVLRVENDAPRAZO: TBCDField;
    QRY_ProdutoVLRATACADO: TBCDField;
    QRY_ProdutoESTOQUEMINIMO: TBCDField;
    QRY_ProdutoESTOQUEMAXIMO: TBCDField;
    QRY_ProdutoICMSCOMPRA: TBCDField;
    QRY_ProdutoREDUCAOBASECALCULOICMS: TBCDField;
    QRY_ProdutoMVACOMPRA: TBCDField;
    QRY_ProdutoICMSSTCOMPRA: TBCDField;
    QRY_ProdutoVLRCUSTOOPERACIONAL: TBCDField;
    QRY_ProdutoREDUCAOBASECALCULOICMSST: TBCDField;
    QRY_ProdutoVLRICMSST: TBCDField;
    QRY_ProdutoIPICOMPRA: TBCDField;
    QRY_ProdutoFRETECOMPRA: TBCDField;
    QRY_ProdutoVLRFRETECOMPRA: TBCDField;
    QRY_ProdutoVLROUTROSCUSTOS: TBCDField;
    QRY_ProdutoVLRPRECOCAIXA: TBCDField;
    QRY_ProdutoPESOCAIXA: TBCDField;
    QRY_ProdutoQTDCAIXA: TBCDField;
    QRY_ProdutoIDPISCOFINS: TIntegerField;
    QRY_ProdutoIDTRIBUTACAO: TIntegerField;
    QRY_ProdutoIDFILIAL: TIntegerField;
    QRY_Caixa: TFDQuery;
    QRY_CaixaIDCAIXACARDEX: TIntegerField;
    QRY_CaixaDOCUMENTO: TStringField;
    QRY_CaixaDTAMOVIMENTO: TDateField;
    QRY_CaixaHRAMOVIMENTO: TTimeField;
    QRY_CaixaTIPO: TStringField;
    QRY_CaixaVLRDOCUMENTO: TBCDField;
    QRY_CaixaIDFORMAPAGAMENTO: TIntegerField;
    QRY_CaixaNUMCAIXA: TIntegerField;
    QRY_CaixaOBSERVACAO: TStringField;
    QRY_FormasPGTOIDPGTO: TIntegerField;
    QRY_FormasPGTODESCRICAO: TStringField;
    QRY_FormasPGTOMOEDA: TStringField;
    QRY_FormasPGTOGERARECEBER: TStringField;
    QRY_VendaIDVENDA: TIntegerField;
    QRY_VendaDTAVENDA: TDateField;
    QRY_VendaHRAVENDA: TTimeField;
    QRY_VendaIDCLIENTE: TIntegerField;
    QRY_VendaIDVENDEDOR: TIntegerField;
    QRY_VendaVLRBRUTO: TBCDField;
    QRY_VendaVLRDESCONTO: TBCDField;
    QRY_VendaVLRLIQUIDO: TBCDField;
    QRY_VendaORIGEMVENDA: TStringField;
    QRY_VendaNUMNFE: TIntegerField;
    QRY_VendaSTATUS: TStringField;
    QRY_VendaOBSERVACAO: TStringField;
    QRY_VendaIDFILIAL: TIntegerField;
    QRY_VendaIDSETOR: TIntegerField;
    QRY_VendaIDTIPODOCUMENTO: TIntegerField;
    QRY_FormasPGTOIDCLIENTEPADRAO: TIntegerField;
    QRY_ConsultaPreco: TFDQuery;
    QRY_ConsultaPrecoIDPRODUTO: TIntegerField;
    QRY_ConsultaPrecoIDEMPRESA: TIntegerField;
    QRY_ConsultaPrecoDESCRICAO: TStringField;
    QRY_ConsultaPrecoIDSUBGRUPO: TIntegerField;
    QRY_ConsultaPrecoIDMARCA: TIntegerField;
    QRY_ConsultaPrecoIDFABRICANTE: TIntegerField;
    QRY_ConsultaPrecoIDFORNECEDOR: TIntegerField;
    QRY_ConsultaPrecoIDUNIDADE: TIntegerField;
    QRY_ConsultaPrecoREFERENCIA: TStringField;
    QRY_ConsultaPrecoCODBARRAS: TStringField;
    QRY_ConsultaPrecoPERMITEDESCONTO: TStringField;
    QRY_ConsultaPrecoDESCMAXIMO: TBCDField;
    QRY_ConsultaPrecoPAGARCOMISSAO: TStringField;
    QRY_ConsultaPrecoCOMISSAOAVISTA: TBCDField;
    QRY_ConsultaPrecoNCM: TStringField;
    QRY_ConsultaPrecoDATAHORACADASTRO: TSQLTimeStampField;
    QRY_ConsultaPrecoDATAHORAALTERACAO: TSQLTimeStampField;
    QRY_ConsultaPrecoATIVO: TStringField;
    QRY_ConsultaPrecoORIGEM: TIntegerField;
    QRY_ConsultaPrecoDESCCOMPRA: TBCDField;
    QRY_ConsultaPrecoLOCALIZACAO: TIntegerField;
    QRY_ConsultaPrecoLOCALIZACAOIMPRESSAO: TIntegerField;
    QRY_ConsultaPrecoINFADICIONAIS: TStringField;
    QRY_ConsultaPrecoAPLICACAO: TStringField;
    QRY_ConsultaPrecoPOSSUIDERIVADOS: TStringField;
    QRY_ConsultaPrecoCSTPISCOFINSENTRADA: TIntegerField;
    QRY_ConsultaPrecoCSTPISCOFINSSAIDA: TIntegerField;
    QRY_ConsultaPrecoCEST: TStringField;
    QRY_ConsultaPrecoIDUSUARIOCADASTRO: TIntegerField;
    QRY_ConsultaPrecoIDUSUARIOALTERACAO: TIntegerField;
    QRY_ConsultaPrecoIDSETOR: TIntegerField;
    QRY_ConsultaPrecoCODBARRASCXA: TStringField;
    QRY_ConsultaPrecoFOTO2: TStringField;
    QRY_ConsultaPrecoFOTO3: TStringField;
    QRY_ConsultaPrecoFOTO1: TStringField;
    QRY_ConsultaPrecoREFERENCIA2: TStringField;
    QRY_ConsultaPrecoREFERENCIA3: TStringField;
    QRY_ConsultaPrecoIDANP: TIntegerField;
    QRY_ConsultaPrecoCOMISSAOAPRAZO: TBCDField;
    QRY_ConsultaPrecoPESOUNI: TBCDField;
    QRY_ConsultaPrecoIDPRODUTOITEM: TIntegerField;
    QRY_ConsultaPrecoIDPRODUTO_1: TIntegerField;
    QRY_ConsultaPrecoVLRCUSTOINICIAL: TBCDField;
    QRY_ConsultaPrecoVLRCUSTOENTRADA: TBCDField;
    QRY_ConsultaPrecoVLRVENDAVISTA: TBCDField;
    QRY_ConsultaPrecoVLRVENDAPRAZO: TBCDField;
    QRY_ConsultaPrecoVLRATACADO: TBCDField;
    QRY_ConsultaPrecoESTOQUEMINIMO: TBCDField;
    QRY_ConsultaPrecoESTOQUEMAXIMO: TBCDField;
    QRY_ConsultaPrecoICMSCOMPRA: TBCDField;
    QRY_ConsultaPrecoREDUCAOBASECALCULOICMS: TBCDField;
    QRY_ConsultaPrecoMVACOMPRA: TBCDField;
    QRY_ConsultaPrecoICMSSTCOMPRA: TBCDField;
    QRY_ConsultaPrecoVLRCUSTOOPERACIONAL: TBCDField;
    QRY_ConsultaPrecoREDUCAOBASECALCULOICMSST: TBCDField;
    QRY_ConsultaPrecoVLRICMSST: TBCDField;
    QRY_ConsultaPrecoIPICOMPRA: TBCDField;
    QRY_ConsultaPrecoFRETECOMPRA: TBCDField;
    QRY_ConsultaPrecoVLRFRETECOMPRA: TBCDField;
    QRY_ConsultaPrecoVLROUTROSCUSTOS: TBCDField;
    QRY_ConsultaPrecoVLRPRECOCAIXA: TBCDField;
    QRY_ConsultaPrecoPESOCAIXA: TBCDField;
    QRY_ConsultaPrecoQTDCAIXA: TBCDField;
    QRY_ConsultaPrecoIDPISCOFINS: TIntegerField;
    QRY_ConsultaPrecoIDTRIBUTACAO: TIntegerField;
    QRY_ConsultaPrecoIDFILIAL: TIntegerField;
    QRY_ConsultarClientes: TFDQuery;
    QRY_ConsultarClientesIDPESSOAS: TIntegerField;
    QRY_ConsultarClientesRAZAOSOCIAL: TStringField;
    QRY_ConsultarClientesFANTASIA: TStringField;
    QRY_ConsultarClientesENDERECO: TStringField;
    QRY_ConsultarClientesNUMERO: TStringField;
    QRY_ConsultarClientesBAIRRO: TStringField;
    QRY_ConsultarClientesCEP: TStringField;
    QRY_ConsultarClientesCOMPLEMENTO: TStringField;
    QRY_ConsultarClientesIDCIDADE: TIntegerField;
    QRY_ConsultarClientesTIPOFJ: TStringField;
    QRY_ConsultarClientesIDTIPOPESSOA: TIntegerField;
    QRY_ConsultarClientesCNPJ: TStringField;
    QRY_ConsultarClientesIE: TStringField;
    QRY_ConsultarClientesCONTRIBUINTE: TIntegerField;
    QRY_ConsultarClientesINSMUNICIPAL: TStringField;
    QRY_ConsultarClientesINSSUFRAMA: TStringField;
    QRY_ConsultarClientesEMAIL: TStringField;
    QRY_ConsultarClientesIDCONTATO: TIntegerField;
    QRY_ConsultarClientesOBSERVACAO: TStringField;
    QRY_ConsultarClientesIDFOTOS: TIntegerField;
    QRY_ConsultarClientesATIVO: TStringField;
    QRY_ConsultarClientesIDREFERENCIAS: TIntegerField;
    QRY_ConsultarClientesSPC: TStringField;
    QRY_ConsultarClientesSERASA: TStringField;
    QRY_ConsultarClientesUSUARIOALTERACAO: TIntegerField;
    QRY_ConsultarClientesUSUARIOCADASTRO: TIntegerField;
    QRY_ConsultarClientesDATADECADASTRO: TDateField;
    QRY_ConsultarClientesULTIMAALTERACAO: TDateField;
    QRY_ConsultarClientesSPCDATARETIRADA: TDateField;
    QRY_ConsultarClientesSPCDATAREGISTRO: TDateField;
    QRY_ConsultarClientesDATANASCIMENTO: TDateField;
    QRY_ConsultarClientesNOMECIDADE: TStringField;
    QRY_ConsultarClientesUF: TStringField;
    QRY_ConsultarClientesIDGRUPOCLIENTES: TIntegerField;
    QRY_ConsultarClientesREFPESSOALNOME: TStringField;
    QRY_ConsultarClientesREFPESSOALTELEFONE: TStringField;
    QRY_ConsultarClientesREFPESSOALCIDADE: TStringField;
    QRY_ConsultarClientesREFFINANCEIRANOME: TStringField;
    QRY_ConsultarClientesREFFINANCEIRATELEFONE: TStringField;
    QRY_ConsultarClientesREFFINANCEIRACIDADE: TStringField;
    QRY_ConsultarClientesREFCOMERCIALNOME: TStringField;
    QRY_ConsultarClientesREFCOMERCIALTELEFONE: TStringField;
    QRY_ConsultarClientesREFCOMERCIALCIDADE: TStringField;
    QRY_ParametrosPDV: TFDQuery;
    QRY_ParametrosPDVIDPARAMETROSPDV: TIntegerField;
    QRY_ParametrosPDVEMITEFISCALFINALVENDA: TStringField;
    QRY_ListaCaixa: TFDQuery;
    QRY_ListaCaixaIDCAIXACARDEX: TIntegerField;
    QRY_ListaCaixaDTAMOVIMENTO: TDateField;
    QRY_ListaCaixaHRAMOVIMENTO: TTimeField;
    QRY_ListaCaixaTIPO: TStringField;
    QRY_ListaCaixaSALDO_ANTERIOR: TBCDField;
    QRY_ListaCaixaENTRADAS: TBCDField;
    QRY_ListaCaixaSAIDAS: TBCDField;
    QRY_ListaCaixaSALDO_ATUAL: TBCDField;
    QRY_ListaCaixaOBSERVACAO: TStringField;
    QRY_ListaCaixaFORMA_PAGAMENTO: TStringField;
    QRY_NumeroFiscal: TFDQuery;
    QRY_NumeroFiscalIDNUMEROFISCAL: TIntegerField;
    QRY_NumeroFiscalSERIE: TIntegerField;
    QRY_NumeroFiscalIDEMPRESA: TIntegerField;
    QRY_NumeroFiscalTIPONFENFCE: TStringField;
    QRY_NumeroFiscalNOMEPDV: TStringField;
    QRY_NumeroFiscalMODULO: TStringField;
    QRY_NumeroFiscalNUMEROINICIAL: TIntegerField;
    QRY_NumeroFiscalNUMEROATUAL: TIntegerField;
    QRY_NumeroFiscalSTATUS: TStringField;
    QRY_NFe: TFDQuery;
    QRY_NFeItens: TFDQuery;
    QRY_NFCe: TFDQuery;
    QRY_NFCeItens: TFDQuery;
    QRY_EmpresaIDEMPRESA: TIntegerField;
    QRY_EmpresaRAZAO: TStringField;
    QRY_EmpresaFANTASIA: TStringField;
    QRY_EmpresaCNPJ: TStringField;
    QRY_EmpresaIE: TStringField;
    QRY_EmpresaFONE: TStringField;
    QRY_EmpresaCEP: TStringField;
    QRY_EmpresaENDERECO: TStringField;
    QRY_EmpresaNUMERO: TStringField;
    QRY_EmpresaBAIRRO: TStringField;
    QRY_EmpresaCODIGOIBGE: TIntegerField;
    QRY_EmpresaCRT: TIntegerField;
    QRY_EmpresaCIDADE: TStringField;
    QRY_EmpresaESTADO: TStringField;
    QRY_EmpresaCOMPLEMENTO: TStringField;
    QRY_Aux: TFDQuery;
    QRY_CONFIG_WEBSERVICE: TFDQuery;
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
    QRY_NFCeItensIDNFCEITEM: TIntegerField;
    QRY_NFCeItensIDNFCE: TIntegerField;
    QRY_NFCeItensPROD_NITEM: TIntegerField;
    QRY_NFCeItensPROD_CPROD: TStringField;
    QRY_NFCeItensPROD_CEAN: TStringField;
    QRY_NFCeItensPROD_XPROD: TStringField;
    QRY_NFCeItensPROD_NCM: TStringField;
    QRY_NFCeItensPROD_EXTIPI: TStringField;
    QRY_NFCeItensPROD_CFOP: TStringField;
    QRY_NFCeItensPROD_UCOM: TStringField;
    QRY_NFCeItensPROD_QCOM: TBCDField;
    QRY_NFCeItensPROD_VUNCOM: TBCDField;
    QRY_NFCeItensPROD_VPROD: TBCDField;
    QRY_NFCeItensPROD_CEANTRIB: TStringField;
    QRY_NFCeItensPROD_UTRIB: TStringField;
    QRY_NFCeItensPROD_QTRIB: TBCDField;
    QRY_NFCeItensPROD_VUNTRIB: TBCDField;
    QRY_NFCeItensPROD_VOUTRO: TBCDField;
    QRY_NFCeItensPROD_VFRETE: TBCDField;
    QRY_NFCeItensPROD_VSEG: TBCDField;
    QRY_NFCeItensPROD_VDESC: TBCDField;
    QRY_NFCeItensPROD_CEST: TStringField;
    QRY_NFCeItensPROD_INFADPROD: TStringField;
    QRY_NFCeItensPROD_CBARRA: TStringField;
    QRY_NFCeItensPROD_CBARRATRIB: TStringField;
    QRY_NFCeItensICMS_CST: TStringField;
    QRY_NFCeItensICMS_CSOSN: TStringField;
    QRY_NFCeItensICMS_ORIG: TStringField;
    QRY_NFCeItensICMS_MODBC: TStringField;
    QRY_NFCeItensICMS_VBC: TBCDField;
    QRY_NFCeItensICMS_PICMS: TBCDField;
    QRY_NFCeItensICMS_VICMS: TBCDField;
    QRY_NFCeItensICMS_MODBCST: TStringField;
    QRY_NFCeItensICMS_PMVAST: TBCDField;
    QRY_NFCeItensICMS_PREDBCST: TBCDField;
    QRY_NFCeItensICMS_VBCST: TBCDField;
    QRY_NFCeItensICMS_PICMSST: TBCDField;
    QRY_NFCeItensICMS_VICMSST: TBCDField;
    QRY_NFCeItensICMS_PREDBC: TBCDField;
    QRY_NFCeItensICMS_PCREDSN: TBCDField;
    QRY_NFCeItensICMS_VCREDICMSSN: TBCDField;
    QRY_NFCeItensICMS_VBCFCPST: TBCDField;
    QRY_NFCeItensICMS_PFCPST: TBCDField;
    QRY_NFCeItensICMS_VFCPST: TBCDField;
    QRY_NFCeItensICMS_VBCSTRET: TBCDField;
    QRY_NFCeItensICMS_PST: TBCDField;
    QRY_NFCeItensICMS_VICMSSUBSTITUTO: TBCDField;
    QRY_NFCeItensICMS_VICMSSTRET: TBCDField;
    QRY_NFCeItensICMS_VBCFCPSTRET: TBCDField;
    QRY_NFCeItensICMS_PFCPSTRET: TBCDField;
    QRY_NFCeItensICMS_VFCPSTRET: TBCDField;
    QRY_NFCeItensICMS_PREDBCEFET: TBCDField;
    QRY_NFCeItensICMS_VBCEFET: TBCDField;
    QRY_NFCeItensICMS_PICMSEFET: TBCDField;
    QRY_NFCeItensICMS_VICMSEFET: TBCDField;
    QRY_NFCeItensICMS_VICMSSTDESON: TBCDField;
    QRY_NFCeItensICMS_MOTDESICMSST: TBCDField;
    QRY_NFCeItensICMS_PFCPDIF: TBCDField;
    QRY_NFCeItensICMS_VFCPDIF: TBCDField;
    QRY_NFCeItensICMS_VFCPEFET: TBCDField;
    QRY_NFCeItensICMSUFDEST_VBCUFDEST: TBCDField;
    QRY_NFCeItensICMSUFDEST_PFCPUFDEST: TBCDField;
    QRY_NFCeItensICMSUFDEST_PICMSUFDEST: TBCDField;
    QRY_NFCeItensICMSUFDEST_PICMSINTER: TBCDField;
    QRY_NFCeItensICMSUFDEST_PICMSINTERPART: TBCDField;
    QRY_NFCeItensICMSUFDEST_VFCPUFDEST: TBCDField;
    QRY_NFCeItensICMSUFDEST_VICMSUFDEST: TBCDField;
    QRY_NFCeItensICMSUFDEST_VICMSUFREMET: TBCDField;
    QRY_NFCeItensPIS_CST: TIntegerField;
    QRY_NFCeItensPIS_VBC: TBCDField;
    QRY_NFCeItensPIS_PPIS: TBCDField;
    QRY_NFCeItensPIS_VPIS: TBCDField;
    QRY_NFCeItensPIS_QBCPROD: TBCDField;
    QRY_NFCeItensPIS_VALIQPROD: TBCDField;
    QRY_NFCeItensPISST_VBC: TBCDField;
    QRY_NFCeItensPISST_PPIS: TBCDField;
    QRY_NFCeItensPISST_QBCPROD: TBCDField;
    QRY_NFCeItensPISST_VALIQPROD: TBCDField;
    QRY_NFCeItensPISST_VPIS: TBCDField;
    QRY_NFCeItensPISST_INDSOMAPISST: TStringField;
    QRY_NFCeItensCOFINS_CST: TIntegerField;
    QRY_NFCeItensCOFINS_VBC: TBCDField;
    QRY_NFCeItensCOFINS_PCOFINS: TBCDField;
    QRY_NFCeItensCOFINS_VCOFINS: TBCDField;
    QRY_NFCeItensCOFINS_QBCPROD: TBCDField;
    QRY_NFCeItensCOFINS_VALIQPROD: TBCDField;
    QRY_NFCeItensCOFINSST_VBC: TBCDField;
    QRY_NFCeItensCOFINSST_PCOFINS: TBCDField;
    QRY_NFCeItensCOFINSST_QBCPROD: TBCDField;
    QRY_NFCeItensCOFINSST_VALIQPROD: TBCDField;
    QRY_NFCeItensCOFINSST_VCOFINS: TBCDField;
    QRY_NFCeItensCOFINSST_INDSOMACOFINSST: TStringField;
    QRY_ParametrosPDVFASTFILE: TStringField;
    QRY_NFeIDNFE: TIntegerField;
    QRY_NFeIDE_NATOP: TStringField;
    QRY_NFeIDE_INDPAG: TStringField;
    QRY_NFeIDE_MODELO: TIntegerField;
    QRY_NFeIDE_SERIE: TIntegerField;
    QRY_NFeIDE_NNF: TIntegerField;
    QRY_NFeIDE_CNF: TIntegerField;
    QRY_NFeIDE_DEMI: TDateField;
    QRY_NFeIDE_DSAIENT: TDateField;
    QRY_NFeIDE_HSAIENT: TTimeField;
    QRY_NFeIDE_TPNF: TStringField;
    QRY_NFeIDE_TPEMIS: TStringField;
    QRY_NFeIDE_TPAMB: TStringField;
    QRY_NFeIDE_VERPROC: TStringField;
    QRY_NFeIDE_CUF: TIntegerField;
    QRY_NFeIDE_CMUNFG: TIntegerField;
    QRY_NFeIDE_FINNFE: TStringField;
    QRY_NFeIDE_TPIMP: TStringField;
    QRY_NFeIDE_INDINTERMED: TStringField;
    QRY_NFeIDE_DHCONT: TSQLTimeStampField;
    QRY_NFeIDE_XJUST: TStringField;
    QRY_NFeREFNF_CUF: TIntegerField;
    QRY_NFeREFNF_AAMM: TStringField;
    QRY_NFeREFNF_CNPJ: TStringField;
    QRY_NFeREFNF_MODELO: TIntegerField;
    QRY_NFeREFNF_SERIE: TIntegerField;
    QRY_NFeREFNF_NNF: TIntegerField;
    QRY_NFeREFNFP_CUF: TIntegerField;
    QRY_NFeREFNFP_AAMM: TStringField;
    QRY_NFeREFNFP_CNPJCPF: TStringField;
    QRY_NFeREFNFP_IE: TStringField;
    QRY_NFeREFNFP_MODELO: TStringField;
    QRY_NFeREFNFP_SERIE: TIntegerField;
    QRY_NFeREFNFP_NNF: TIntegerField;
    QRY_NFeREFECF_MODELO: TStringField;
    QRY_NFeREFECF_NECF: TStringField;
    QRY_NFeREFECF_NCOO: TStringField;
    QRY_NFeIDEMITENTE: TIntegerField;
    QRY_NFeEMIT_CNPJCPF: TStringField;
    QRY_NFeEMIT_IE: TStringField;
    QRY_NFeEMIT_XNOME: TStringField;
    QRY_NFeEMIT_XFANT: TStringField;
    QRY_NFeEMIT_ENDEREMIT_FONE: TStringField;
    QRY_NFeEMIT_ENDEREMIT_CEP: TIntegerField;
    QRY_NFeEMIT_ENDEREMIT_XLGR: TStringField;
    QRY_NFeEMIT_ENDEREMIT_NRO: TStringField;
    QRY_NFeEMIT_ENDEREMIT_XCPL: TStringField;
    QRY_NFeEMIT_ENDEREMIT_XBAIRRO: TStringField;
    QRY_NFeEMIT_ENDEREMIT_CMUN: TIntegerField;
    QRY_NFeEMIT_ENDEREMIT_XMUN: TStringField;
    QRY_NFeEMIT_ENDEREMIT_UF: TStringField;
    QRY_NFeEMIT_ENDEREMIT_CPAIS: TIntegerField;
    QRY_NFeEMIT_ENDEREMIT_XPAIS: TStringField;
    QRY_NFeEMIT_IEST: TStringField;
    QRY_NFeEMIT_IM: TStringField;
    QRY_NFeEMIT_CNAE: TStringField;
    QRY_NFeEMIT_CRT: TStringField;
    QRY_NFeAVULSA_CNPJ: TStringField;
    QRY_NFeAVULSA_XORGAO: TStringField;
    QRY_NFeAVULSA_MATR: TStringField;
    QRY_NFeAVULSA_XAGENTE: TStringField;
    QRY_NFeAVULSA_FONE: TStringField;
    QRY_NFeAVULSA_UF: TStringField;
    QRY_NFeAVULSA_NDAR: TStringField;
    QRY_NFeAVULSA_DEMI: TDateField;
    QRY_NFeAVULSA_VDAR: TBCDField;
    QRY_NFeAVULSA_REPEMI: TStringField;
    QRY_NFeAVULSA_DPAG: TDateField;
    QRY_NFeDEST_CNPJCPF: TStringField;
    QRY_NFeDEST_IE: TStringField;
    QRY_NFeDEST_ISUF: TStringField;
    QRY_NFeDEST_XNOME: TStringField;
    QRY_NFeDEST_ENDERDEST_FONE: TStringField;
    QRY_NFeDEST_ENDERDEST_CEP: TStringField;
    QRY_NFeDEST_ENDERDEST_XLGR: TStringField;
    QRY_NFeDEST_ENDERDEST_NRO: TStringField;
    QRY_NFeDEST_ENDERDEST_XCPL: TStringField;
    QRY_NFeDEST_ENDERDEST_XBAIRRO: TStringField;
    QRY_NFeDEST_ENDERDEST_CMUN: TIntegerField;
    QRY_NFeDEST_ENDERDEST_XMUN: TStringField;
    QRY_NFeDEST_ENDERDEST_UF: TStringField;
    QRY_NFeDEST_ENDERDEST_CPAIS: TIntegerField;
    QRY_NFeDEST_ENDERDEST_XPAIS: TStringField;
    QRY_NFeRETIRADA_CNPJCPF: TStringField;
    QRY_NFeRETIRADA_XLGR: TStringField;
    QRY_NFeRETIRADA_NRO: TStringField;
    QRY_NFeRETIRADA_XCPL: TStringField;
    QRY_NFeRETIRADA_XBAIRRO: TStringField;
    QRY_NFeRETIRADA_CMUN: TIntegerField;
    QRY_NFeRETIRADA_XMUN: TStringField;
    QRY_NFeRETIRADA_UF: TStringField;
    QRY_NFeENTREGA_CNPJCPF: TStringField;
    QRY_NFeENTREGA_XLGR: TStringField;
    QRY_NFeENTREGA_NRO: TStringField;
    QRY_NFeENTREGA_XCPL: TStringField;
    QRY_NFeENTREGA_XBAIRRO: TStringField;
    QRY_NFeENTREGA_CMUN: TIntegerField;
    QRY_NFeENTREGA_XMUN: TStringField;
    QRY_NFeENTREGA_UF: TStringField;
    QRY_NFeTOTAL_ICMSTOT_VBC: TBCDField;
    QRY_NFeTOTAL_ICMSTOT_VICMS: TBCDField;
    QRY_NFeTOTAL_ICMSTOT_VBCST: TBCDField;
    QRY_NFeTOTAL_ICMSTOT_VST: TBCDField;
    QRY_NFeTOTAL_ICMSTOT_VPROD: TBCDField;
    QRY_NFeTOTAL_ICMSTOT_VFRETE: TBCDField;
    QRY_NFeTOTAL_ICMSTOT_VSEG: TBCDField;
    QRY_NFeTOTAL_ICMSTOT_VDESC: TBCDField;
    QRY_NFeTOTAL_ICMSTOT_VII: TBCDField;
    QRY_NFeTOTAL_ICMSTOT_VIPI: TBCDField;
    QRY_NFeTOTAL_ICMSTOT_VPIS: TBCDField;
    QRY_NFeTOTAL_ICMSTOT_VCOFINS: TBCDField;
    QRY_NFeTOTAL_ICMSTOT_VOUTRO: TBCDField;
    QRY_NFeTOTAL_ICMSTOT_VNF: TBCDField;
    QRY_NFeTOTAL_ICMSTOT_VTOTTRIB: TBCDField;
    QRY_NFeTOTAL_ICMSTOT_VFCPUFDEST: TBCDField;
    QRY_NFeTOTAL_ICMSTOT_VICMSUFDEST: TBCDField;
    QRY_NFeTOTAL_ICMSTOT_VICMSUFREMET: TBCDField;
    QRY_NFeTOTAL_ICMSTOT_VFCPST: TBCDField;
    QRY_NFeTOTAL_ICMSTOT_VFCPSTRET: TBCDField;
    QRY_NFeTOTAL_RETTRIB_VRETPIS: TBCDField;
    QRY_NFeTOTAL_RETTRIB_VRETCOFINS: TBCDField;
    QRY_NFeTOTAL_RETTRIB_VRETCSLL: TBCDField;
    QRY_NFeTOTAL_RETTRIB_VBCIRRF: TBCDField;
    QRY_NFeTOTAL_RETTRIB_VIRRF: TBCDField;
    QRY_NFeTOTAL_RETTRIB_VBCRETPREV: TBCDField;
    QRY_NFeTOTAL_RETTRIB_VRETPREV: TBCDField;
    QRY_NFeTRANSP_MODFRETE: TStringField;
    QRY_NFeTRANSP_TRANSPORTA_CNPJCPF: TStringField;
    QRY_NFeTRANSP_TRANSPORTA_XNOME: TStringField;
    QRY_NFeTRANSP_TRANSPORTA_IE: TStringField;
    QRY_NFeTRANSP_TRANSPORTA_XENDER: TStringField;
    QRY_NFeTRANSP_TRANSPORTA_XMUN: TStringField;
    QRY_NFeTRANSP_TRANSPORTA_UF: TStringField;
    QRY_NFeTRANSP_RETTRANSP_VSERV: TBCDField;
    QRY_NFeTRANSP_RETTRANSP_VBCRET: TBCDField;
    QRY_NFeTRANSP_RETTRANSP_PICMSRET: TBCDField;
    QRY_NFeTRANSP_RETTRANSP_VICMSRET: TBCDField;
    QRY_NFeTRANSP_RETTRANSP_CFOP: TStringField;
    QRY_NFeTRANSP_RETTRANSP_CMUNFG: TIntegerField;
    QRY_NFeVOLUME_QVOL: TIntegerField;
    QRY_NFeVOLUME_ESP: TStringField;
    QRY_NFeVOLUME_MARCA: TStringField;
    QRY_NFeVOLUME_NVOL: TStringField;
    QRY_NFeVOLUME_PESOL: TBCDField;
    QRY_NFeVOLUME_PESOB: TBCDField;
    QRY_NFeINFADIC_INFCPL: TStringField;
    QRY_NFeINFADIC_INFADFISCO: TStringField;
    QRY_NFeOBSCOMPLEMENTAR_XCAMPO: TStringField;
    QRY_NFeOBSCOMPLEMENTAR_XTEXTO: TStringField;
    QRY_NFeOBSFISCO_XCAMPO: TStringField;
    QRY_NFeOBSFISCO_XTEXTO: TStringField;
    QRY_NFeEXPORTA_UFEMBARQ: TStringField;
    QRY_NFeEXPORTA_XLOCEMBARQ: TStringField;
    QRY_NFeCOMPRA_XNEMP: TStringField;
    QRY_NFeCOMPRA_XPED: TStringField;
    QRY_NFeCOMPRA_XCONT: TStringField;
    QRY_NFeINFOPGTO_INDPAG: TStringField;
    QRY_NFeINFOPGTO_TPAG: TStringField;
    QRY_NFeINFOPGTO_VPAG: TBCDField;
    QRY_NFeINFOPGTO_TPINTEGRA: TStringField;
    QRY_NFeINFOPGTO_CNPJ: TStringField;
    QRY_NFeINFOPGTO_TBAND: TStringField;
    QRY_NFeINFOPGTO_CAUT: TStringField;
    QRY_NFeINFINTERMED_CNPJ: TStringField;
    QRY_NFeINFINTERMED_IDCADINTTRAN: TStringField;
    QRY_NFeRETORNO_TPAMB: TStringField;
    QRY_NFeRETORNO_VERAPLIC: TStringField;
    QRY_NFeRETORNO_CSTAT: TIntegerField;
    QRY_NFeRETORNO_CUF: TIntegerField;
    QRY_NFeRETORNO_XMOTIVO: TStringField;
    QRY_NFeRETORNO_CMSG: TIntegerField;
    QRY_NFeRETORNO_XMSG: TStringField;
    QRY_NFeRETORNO_RECIBO: TStringField;
    QRY_NFeRETORNO_PROTOCOLO: TStringField;
    QRY_NFeRETORNO_CHNFE: TStringField;
    QRY_NFeRETORNO_DHRECBTO: TSQLTimeStampField;
    QRY_NFeRETORNO_DIGVAL: TStringField;
    QRY_NFeItensIDNFEITENS: TIntegerField;
    QRY_NFeItensIDNFE: TIntegerField;
    QRY_NFeItensPROD_NITEM: TIntegerField;
    QRY_NFeItensPROD_CPROD: TIntegerField;
    QRY_NFeItensPROD_CEAN: TStringField;
    QRY_NFeItensPROD_XPROD: TStringField;
    QRY_NFeItensPROD_NCM: TStringField;
    QRY_NFeItensPROD_EXTIPI: TStringField;
    QRY_NFeItensPROD_CFOP: TStringField;
    QRY_NFeItensPROD_UCOM: TStringField;
    QRY_NFeItensPROD_QCOM: TBCDField;
    QRY_NFeItensPROD_VUNCOM: TBCDField;
    QRY_NFeItensPROD_VPROD: TBCDField;
    QRY_NFeItensPROD_CEANTRIB: TStringField;
    QRY_NFeItensPROD_UTRIB: TStringField;
    QRY_NFeItensPROD_QTRIB: TBCDField;
    QRY_NFeItensPROD_VUNTRIB: TBCDField;
    QRY_NFeItensPROD_VOUTRO: TBCDField;
    QRY_NFeItensPROD_VFRETE: TBCDField;
    QRY_NFeItensPROD_VSEG: TBCDField;
    QRY_NFeItensPROD_VDESC: TBCDField;
    QRY_NFeItensPROD_CEST: TStringField;
    QRY_NFeItensPROD_INFADPROD: TStringField;
    QRY_NFeItensPROD_CBARRA: TStringField;
    QRY_NFeItensPROD_CBARRATRIB: TStringField;
    QRY_NFeItensPROD_DI_NDI: TStringField;
    QRY_NFeItensPROD_DI_DDI: TStringField;
    QRY_NFeItensPROD_DI_XLOCDESEMB: TStringField;
    QRY_NFeItensPROD_DI_UFDESEMB: TStringField;
    QRY_NFeItensPROD_DI_DDESEMB: TDateField;
    QRY_NFeItensPROD_DI_TPVIATRANSP: TStringField;
    QRY_NFeItensPROD_DI_VAFRMM: TBCDField;
    QRY_NFeItensPROD_DI_TPINTERMEDIO: TStringField;
    QRY_NFeItensPROD_DI_CNPJ: TStringField;
    QRY_NFeItensPROD_DI_UFTERCEIRO: TStringField;
    QRY_NFeItensPROD_DI_CEXPORTADOR: TStringField;
    QRY_NFeItensPROD_DI_ADICAO_NADICAO: TIntegerField;
    QRY_NFeItensPROD_DI_ADICAO_NSEQADI: TIntegerField;
    QRY_NFeItensPROD_DI_ADICAO_CFABRICANTE: TStringField;
    QRY_NFeItensPROD_DI_ADICAO_VDESCDI: TBCDField;
    QRY_NFeItensPROD_DI_ADICAO_NDRAW: TStringField;
    QRY_NFeItensPROD_RASTRO_NLOTE: TStringField;
    QRY_NFeItensPROD_RASTRO_QLOTE: TBCDField;
    QRY_NFeItensPROD_RASTRO_DFAB: TDateField;
    QRY_NFeItensPROD_RASTRO_DVAL: TDateField;
    QRY_NFeItensPROD_RASTRO_CAGREG: TStringField;
    QRY_NFeItensIMPOSTO_VTOTTRIB: TBCDField;
    QRY_NFeItensICMS_ORIG: TStringField;
    QRY_NFeItensICMS_CST: TStringField;
    QRY_NFeItensICMS_MODBC: TStringField;
    QRY_NFeItensICMS_VBC: TBCDField;
    QRY_NFeItensICMS_PICMS: TBCDField;
    QRY_NFeItensICMS_VICMS: TBCDField;
    QRY_NFeItensICMS_MODBCST: TStringField;
    QRY_NFeItensICMS_PMVAST: TBCDField;
    QRY_NFeItensICMS_PREDBCS: TBCDField;
    QRY_NFeItensICMS_VBCST: TBCDField;
    QRY_NFeItensICMS_PICMSST: TBCDField;
    QRY_NFeItensICMS_VICMSST: TBCDField;
    QRY_NFeItensICMS_PREDBC: TBCDField;
    QRY_NFeItensICMS_CSOSN: TStringField;
    QRY_NFeItensICMS_PCREDSN: TBCDField;
    QRY_NFeItensICMS_VCREDICMSSN: TBCDField;
    QRY_NFeItensICMS_PREDBCST: TBCDField;
    QRY_NFeItensICMS_VBCFCPST: TBCDField;
    QRY_NFeItensICMS_PFCPST: TBCDField;
    QRY_NFeItensICMS_VFCPST: TBCDField;
    QRY_NFeItensICMS_VBCSTRET: TBCDField;
    QRY_NFeItensICMS_PST: TBCDField;
    QRY_NFeItensICMS_VICMSSUBSTITUTO: TBCDField;
    QRY_NFeItensICMS_VICMSSTRET: TBCDField;
    QRY_NFeItensICMS_VBCFCPSTRET: TBCDField;
    QRY_NFeItensICMS_PFCPSTRET: TBCDField;
    QRY_NFeItensICMS_VFCPSTRET: TBCDField;
    QRY_NFeItensICMS_PREDBCEFET: TBCDField;
    QRY_NFeItensICMS_VBCEFET: TBCDField;
    QRY_NFeItensICMS_PICMSEFET: TBCDField;
    QRY_NFeItensICMS_VICMSEFET: TBCDField;
    QRY_NFeItensICMS_VICMSSTDESON: TBCDField;
    QRY_NFeItensICMS_MOTDESICMSST: TStringField;
    QRY_NFeItensICMS_PFCPDIF: TBCDField;
    QRY_NFeItensICMS_VFCPDIF: TBCDField;
    QRY_NFeItensICMS_VFCPEFET: TBCDField;
    QRY_NFeItensICMSUFDEST_VBCUFDEST: TBCDField;
    QRY_NFeItensICMSUFDEST_PFCPUFDEST: TBCDField;
    QRY_NFeItensICMSUFDEST_PICMSUFDEST: TBCDField;
    QRY_NFeItensICMSUFDEST_PICMSINTER: TBCDField;
    QRY_NFeItensICMSUFDEST_PICMSINTERPART: TBCDField;
    QRY_NFeItensICMSUFDEST_VFCPUFDEST: TBCDField;
    QRY_NFeItensICMSUFDEST_VICMSUFDEST: TBCDField;
    QRY_NFeItensICMSUFDEST_VICMSUFREMET: TBCDField;
    QRY_NFeItensIPI_CST: TStringField;
    QRY_NFeItensIPI_CLENQ: TStringField;
    QRY_NFeItensIPI_CNPJPROD: TStringField;
    QRY_NFeItensIPI_CSELO: TStringField;
    QRY_NFeItensIPI_QSELO: TBCDField;
    QRY_NFeItensIPI_CENQ: TStringField;
    QRY_NFeItensIPI_VBC: TBCDField;
    QRY_NFeItensIPI_QUNID: TBCDField;
    QRY_NFeItensIPI_VUNID: TBCDField;
    QRY_NFeItensIPI_PIPI: TBCDField;
    QRY_NFeItensIPI_VIPI: TBCDField;
    QRY_NFeItensII_VBC: TBCDField;
    QRY_NFeItensII_VDESPADU: TBCDField;
    QRY_NFeItensII_VII: TBCDField;
    QRY_NFeItensII_VIOF: TBCDField;
    QRY_NFeItensPIS_CST: TStringField;
    QRY_NFeItensPIS_VBC: TBCDField;
    QRY_NFeItensPIS_PPIS: TBCDField;
    QRY_NFeItensPIS_VPIS: TBCDField;
    QRY_NFeItensPIS_QBCPROD: TBCDField;
    QRY_NFeItensPIS_VALIQPROD: TBCDField;
    QRY_NFeItensPISST_VBC: TBCDField;
    QRY_NFeItensPISST_PPIS: TBCDField;
    QRY_NFeItensPISST_QBCPROD: TBCDField;
    QRY_NFeItensPISST_VALIQPROD: TBCDField;
    QRY_NFeItensPISST_VPIS: TBCDField;
    QRY_NFeItensPISST_INDSOMAPISST: TStringField;
    QRY_NFeItensCOFINS_CST: TStringField;
    QRY_NFeItensCOFINS_VBC: TBCDField;
    QRY_NFeItensCOFINS_PCOFINS: TBCDField;
    QRY_NFeItensCOFINS_VCOFINS: TBCDField;
    QRY_NFeItensCOFINS_QBCPROD: TBCDField;
    QRY_NFeItensCOFINS_VALIQPROD: TBCDField;
    QRY_NFeItensCOFINSST_VBC: TBCDField;
    QRY_NFeItensCOFINSST_PCOFINS: TBCDField;
    QRY_NFeItensCOFINSST_QBCPROD: TBCDField;
    QRY_NFeItensCOFINSST_VALIQPROD: TBCDField;
    QRY_NFeItensCOFINSST_VCOFINS: TBCDField;
    QRY_NFeItensCOFINSST_INDSOMACOFINSST: TStringField;
    QRY_EventoFiscal: TFDQuery;
    QRY_EventoFiscalIDEVENTO: TIntegerField;
    QRY_EventoFiscalNUMFISCAL: TIntegerField;
    QRY_EventoFiscalMODELOFISCAL: TIntegerField;
    QRY_EventoFiscalNUMEROEVENTO: TIntegerField;
    QRY_EventoFiscalNOMEEVENTO: TStringField;
    QRY_EventoFiscalDTAEVENTO: TDateField;
    QRY_EventoFiscalHRAEVENTO: TTimeField;
    QRY_EventoFiscalIDFILIAL: TIntegerField;
    QRY_EventoFiscalCHAVEDFE: TStringField;
    QRY_EventoFiscalIDSTATUS: TIntegerField;
    QRY_EventoFiscalMSGSTATUS: TStringField;
    QRY_ParametrosPDVBalanca: TFDQuery;
    QRY_ParametrosPDVBalancaIDPARAMETROS: TIntegerField;
    QRY_ParametrosPDVBalancaNOMEBALANCA: TStringField;
    QRY_ParametrosPDVBalancaPORTASERIAL: TStringField;
    QRY_ParametrosPDVBalancaVELOCIDADE: TIntegerField;
    QRY_ParametrosPDVBalancaNOMEPDV: TStringField;
    QRY_ParametrosPDVBalancaMODULO: TStringField;
    QRY_VendaItemIDVENDAITEM: TIntegerField;
    QRY_VendaItemIDVENDA: TIntegerField;
    QRY_VendaItemIDPRODUTO: TIntegerField;
    QRY_VendaItemIDPRODUTODETALHE: TIntegerField;
    QRY_VendaItemPROD_NITEM: TIntegerField;
    QRY_VendaItemPROD_CEAN: TStringField;
    QRY_VendaItemPROD_XPROD: TStringField;
    QRY_VendaItemPROD_NCM: TStringField;
    QRY_VendaItemPROD_EXTIPI: TStringField;
    QRY_VendaItemPROD_CFOP: TStringField;
    QRY_VendaItemPROD_UCOM: TStringField;
    QRY_VendaItemPROD_QCOM: TBCDField;
    QRY_VendaItemPROD_VUNCOM: TBCDField;
    QRY_VendaItemPROD_VPROD: TBCDField;
    QRY_VendaItemPROD_CEANTRIB: TStringField;
    QRY_VendaItemPROD_UTRIB: TStringField;
    QRY_VendaItemPROD_QTRIB: TBCDField;
    QRY_VendaItemPROD_VUNTRIB: TBCDField;
    QRY_VendaItemPROD_VOUTRO: TBCDField;
    QRY_VendaItemPROD_VFRETE: TBCDField;
    QRY_VendaItemPROD_VSEG: TBCDField;
    QRY_VendaItemPROD_VDESC: TBCDField;
    QRY_VendaItemPROD_CEST: TStringField;
    QRY_VendaItemPROD_INFADPROD: TStringField;
    QRY_VendaItemPROD_CBARRA: TStringField;
    QRY_VendaItemPROD_CBARRATRIB: TStringField;
    QRY_ParametrosPDVFASTFILENFCE: TStringField;
    QRY_NFCeIDNFCE: TIntegerField;
    QRY_NFCeIDE_NATOP: TStringField;
    QRY_NFCeIDE_INDPAG: TStringField;
    QRY_NFCeIDE_MODELO: TIntegerField;
    QRY_NFCeIDE_SERIE: TIntegerField;
    QRY_NFCeIDE_NNF: TIntegerField;
    QRY_NFCeIDE_CNF: TIntegerField;
    QRY_NFCeIDE_DEMI: TSQLTimeStampField;
    QRY_NFCeIDE_DSAIENT: TSQLTimeStampField;
    QRY_NFCeIDE_HSAIENT: TSQLTimeStampField;
    QRY_NFCeIDE_TPNF: TStringField;
    QRY_NFCeIDE_TPEMIS: TStringField;
    QRY_NFCeIDE_TPAMB: TStringField;
    QRY_NFCeIDE_CUF: TIntegerField;
    QRY_NFCeIDE_CMUNFG: TIntegerField;
    QRY_NFCeIDE_FINNFE: TStringField;
    QRY_NFCeIDE_TPIMP: TStringField;
    QRY_NFCeIDE_INDFINAL: TStringField;
    QRY_NFCeIDE_INDPRES: TStringField;
    QRY_NFCeIDE_INDINTERMED: TStringField;
    QRY_NFCeEMIT_CNPJCPF: TStringField;
    QRY_NFCeEMIT_IE: TStringField;
    QRY_NFCeEMIT_XNOME: TStringField;
    QRY_NFCeEMIT_XFANT: TStringField;
    QRY_NFCeEMIT_ENDEREMIT_FONE: TStringField;
    QRY_NFCeEMIT_ENDEREMIT_CEP: TStringField;
    QRY_NFCeEMIT_ENDEREMIT_XLGR: TStringField;
    QRY_NFCeEMIT_ENDEREMIT_NRO: TStringField;
    QRY_NFCeEMIT_ENDEREMIT_XCPL: TStringField;
    QRY_NFCeEMIT_ENDEREMIT_XBAIRRO: TStringField;
    QRY_NFCeEMIT_ENDEREMIT_CMUN: TIntegerField;
    QRY_NFCeEMIT_ENDEREMIT_XMUN: TStringField;
    QRY_NFCeEMIT_ENDEREMIT_UF: TStringField;
    QRY_NFCeEMIT_ENDEREMIT_CPAIS: TIntegerField;
    QRY_NFCeEMIT_ENDEREMIT_XPAIS: TStringField;
    QRY_NFCeEMIT_IEST: TStringField;
    QRY_NFCeEMIT_CRT: TStringField;
    QRY_NFCeDEST_CNPJCPF: TStringField;
    QRY_NFCeDEST_ISUF: TStringField;
    QRY_NFCeDEST_XNOME: TStringField;
    QRY_NFCeDEST_INDIEDEST: TStringField;
    QRY_NFCeDEST_ENDERDEST_FONE: TStringField;
    QRY_NFCeDEST_ENDERDEST_CEP: TStringField;
    QRY_NFCeDEST_ENDERDEST_XLGR: TStringField;
    QRY_NFCeDEST_ENDERDEST_NRO: TStringField;
    QRY_NFCeDEST_ENDERDEST_XCPL: TStringField;
    QRY_NFCeDEST_ENDERDEST_XBAIRRO: TStringField;
    QRY_NFCeDEST_ENDERDEST_CMUN: TIntegerField;
    QRY_NFCeDEST_ENDERDEST_XMUN: TStringField;
    QRY_NFCeDEST_ENDERDEST_UF: TStringField;
    QRY_NFCeDEST_ENDERDEST_CPAIS: TIntegerField;
    QRY_NFCeDEST_ENDERDEST_XPAIS: TStringField;
    QRY_NFCeRETIRADA_CNPJCPF: TStringField;
    QRY_NFCeRETIRADA_XLGR: TStringField;
    QRY_NFCeRETIRADA_NRO: TStringField;
    QRY_NFCeRETIRADA_XCPL: TStringField;
    QRY_NFCeRETIRADA_XBAIRRO: TStringField;
    QRY_NFCeRETIRADA_CMUN: TIntegerField;
    QRY_NFCeRETIRADA_XMUN: TStringField;
    QRY_NFCeRETIRADA_UF: TStringField;
    QRY_NFCeENTREGA_CNPJCPF: TStringField;
    QRY_NFCeENTREGA_XLGR: TStringField;
    QRY_NFCeENTREGA_NRO: TStringField;
    QRY_NFCeENTREGA_XCPL: TStringField;
    QRY_NFCeENTREGA_XBAIRRO: TStringField;
    QRY_NFCeENTREGA_CMUN: TIntegerField;
    QRY_NFCeENTREGA_XMUN: TStringField;
    QRY_NFCeENTREGA_UF: TStringField;
    QRY_NFCeTOTAL_ICMSTOT_VBC: TBCDField;
    QRY_NFCeTOTAL_ICMSTOT_VICMS: TBCDField;
    QRY_NFCeTOTAL_ICMSTOT_VBCST: TBCDField;
    QRY_NFCeTOTAL_ICMSTOT_VST: TBCDField;
    QRY_NFCeTOTAL_ICMSTOT_VPROD: TBCDField;
    QRY_NFCeTOTAL_ICMSTOT_VFRETE: TBCDField;
    QRY_NFCeTOTAL_ICMSTOT_VSEG: TBCDField;
    QRY_NFCeTOTAL_ICMSTOT_VDESC: TBCDField;
    QRY_NFCeTOTAL_ICMSTOT_VII: TBCDField;
    QRY_NFCeTOTAL_ICMSTOT_VIPI: TBCDField;
    QRY_NFCeTOTAL_ICMSTOT_VPIS: TBCDField;
    QRY_NFCeTOTAL_ICMSTOT_VCOFINS: TBCDField;
    QRY_NFCeTOTAL_ICMSTOT_VOUTRO: TBCDField;
    QRY_NFCeTOTAL_ICMSTOT_VNF: TBCDField;
    QRY_NFCeTOTAL_ICMSTOT_VFCPUFDEST: TBCDField;
    QRY_NFCeTOTAL_ICMSTOT_VICMSUFDEST: TBCDField;
    QRY_NFCeTOTAL_ICMSTOT_VICMSUFREMET: TBCDField;
    QRY_NFCeTOTAL_ISSQNTOT_VSERV: TBCDField;
    QRY_NFCeTOTAL_ISSQNTOT_VBC: TBCDField;
    QRY_NFCeTOTAL_ISSQNTOT_VISS: TBCDField;
    QRY_NFCeTOTAL_ISSQNTOT_VPIS: TBCDField;
    QRY_NFCeTOTAL_ISSQNTOT_VCOFINS: TBCDField;
    QRY_NFCeTOTAL_RETTRIB_VRETPIS: TBCDField;
    QRY_NFCeTOTAL_RETTRIB_VRETCOFINS: TBCDField;
    QRY_NFCeTOTAL_RETTRIB_VRETCSLL: TBCDField;
    QRY_NFCeTOTAL_RETTRIB_VBCIRRF: TBCDField;
    QRY_NFCeTOTAL_RETTRIB_VIRRF: TBCDField;
    QRY_NFCeTOTAL_RETTRIB_VBCRETPREV: TBCDField;
    QRY_NFCeTOTAL_RETTRIB_VRETPREV: TBCDField;
    QRY_NFCeTRANSP_MODFRETE: TStringField;
    QRY_NFCePAG_TPAG: TStringField;
    QRY_NFCePAG_VPAG: TBCDField;
    QRY_NFCePAG_XPAG: TStringField;
    QRY_NFCeINFADIC_INFCPL: TStringField;
    QRY_NFCeINFADIC_INFADFISCO: TStringField;
    QRY_NFCeINFADIC_OBSCONT_XCAMPO: TStringField;
    QRY_NFCeINFADIC_OBSCONT_XTEXTO: TStringField;
    QRY_NFCeINFADIC_OBSFISCO_XCAMPO: TStringField;
    QRY_NFCeINFADIC_OBSFISCO_XTEXTO: TStringField;
    QRY_NFCeINFINTERMED_CNPJ: TStringField;
    QRY_NFCeINFINTERMED_IDCADINTTRAN: TStringField;
    QRY_NFCeRETORNO_TPAMB: TStringField;
    QRY_NFCeRETORNO_VERAPLIC: TStringField;
    QRY_NFCeRETORNO_CHNFE: TStringField;
    QRY_NFCeRETORNO_DHRECBTO: TSQLTimeStampField;
    QRY_NFCeRETORNO_NPROT: TStringField;
    QRY_NFCeRETORNO_DIGVAL: TStringField;
    QRY_NFCeRETORNO_CSTAT: TIntegerField;
    QRY_NFCeRETORNO_XMOTIVO: TStringField;
    QRY_NFCeIDEMPRESA: TIntegerField;
    QRY_ConsultarClientesFORNECEDORTELEFONE: TStringField;
    QRY_ConsultarClientesFORNECEDORCONTATO: TStringField;
    QRY_ConsultarClientesFORNECEDORCELULAR: TStringField;
    QRY_ConsultarClientesFORNECEDOREMAIL: TStringField;
    QRY_ConsultarClientesIDCIDADE_1: TIntegerField;
    QRY_ConsultarClientesMUNICIPIO: TStringField;
    QRY_ConsultarClientesUF_1: TStringField;
    QRY_ConsultarClientesCODMUNICIPIOIBGE: TStringField;
    QRY_ConsultarClientesCODESTADO: TIntegerField;
    QRY_ConsultarClientesPESSOALTELEFONE: TStringField;
    QRY_ConsultarClientesPESSOALCELULAR: TStringField;
    QRY_FormasPGTOVenda: TFDQuery;
    QRY_CaixaIDVENDA: TIntegerField;
    QRY_FormasPGTOVendaIDPGTO: TIntegerField;
    QRY_FormasPGTOVendaDESCRICAO: TStringField;
    QRY_FormasPGTOVendaMOEDA: TStringField;
    QRY_FormasPGTOVendaGERARECEBER: TStringField;
    QRY_FormasPGTOVendaIDCLIENTEPADRAO: TIntegerField;
    QRY_ConsultaPrecoIDGRUPO: TIntegerField;
    QRY_ConsultaPrecoPRODUTOBALANCA: TStringField;
    QRY_ConsultaPrecoPERCICMSCOMPRA: TBCDField;
    QRY_ConsultaPrecoPERCICMSSTCOMPRA: TBCDField;
    QRY_ConsultaPrecoALIQPISCOMPRA: TBCDField;
    QRY_ConsultaPrecoVALORFRETECOMPRA: TBCDField;
    QRY_ConsultaPrecoPERCREDBASECALCULOICMSCOMPRA: TBCDField;
    QRY_ConsultaPrecoPERCREDBASECALCULOICMSSTCOMPRA: TBCDField;
    QRY_ConsultaPrecoALIQCOFINSCOMPRA: TBCDField;
    QRY_ConsultaPrecoALIQIPICOMPRA: TBCDField;
    QRY_ConsultaPrecoVALORICMSSTCOMPRA: TBCDField;
    QRY_ConsultaPrecoPERCFRETECOMPRA: TBCDField;
    QRY_ConsultaPrecoPERCOUTROSCOMPRA: TBCDField;
    QRY_ConsultaPrecoSIGLA: TStringField;
    QRY_ListaCaixaNUMCAIXA: TIntegerField;
    QRY_ListaCaixaSTATUSCAIXA: TStringField;
    QRY_AbrirCaixaNOMEUSUARIOCAIXA: TStringField;
    QRY_ProdutoIDGRUPO: TIntegerField;
    QRY_ProdutoPRODUTOBALANCA: TStringField;
    QRY_ProdutoIDORIGEMMERCADORIA: TIntegerField;
    QRY_ProdutoIDEMBALAGEM: TIntegerField;
    QRY_ProdutoDESCRICAONCM: TStringField;
    QRY_ProdutoVENDEFRACIONADO: TStringField;
    QRY_ProdutoPERCICMSCOMPRA: TBCDField;
    QRY_ProdutoPERCICMSSTCOMPRA: TBCDField;
    QRY_ProdutoALIQPISCOMPRA: TBCDField;
    QRY_ProdutoVALORFRETECOMPRA: TBCDField;
    QRY_ProdutoPERCREDBASECALCULOICMSCOMPRA: TBCDField;
    QRY_ProdutoPERCREDBASECALCULOICMSSTCOMPRA: TBCDField;
    QRY_ProdutoALIQCOFINSCOMPRA: TBCDField;
    QRY_ProdutoALIQIPICOMPRA: TBCDField;
    QRY_ProdutoVALORICMSSTCOMPRA: TBCDField;
    QRY_ProdutoPERCFRETECOMPRA: TBCDField;
    QRY_ProdutoPERCOUTROSCOMPRA: TBCDField;
    QRY_ProdutoVLRPERCMARGEMLUCRO: TBCDField;
    QRY_ProdutoVLRLUCRO: TBCDField;
    QRY_ProdutoESTOQUE: TBCDField;
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
    QRY_FormasPGTOTIPOPGTO: TStringField;
    QRY_ParametrosPDVIDCLIENTEPADRAOVENDA: TIntegerField;
    QRY_ConsultaPrecoIDORIGEMMERCADORIA: TIntegerField;
    QRY_ConsultaPrecoIDEMBALAGEM: TIntegerField;
    QRY_ConsultaPrecoDESCRICAONCM: TStringField;
    QRY_ConsultaPrecoVENDEFRACIONADO: TStringField;
    QRY_ConsultaPrecoVLRPERCMARGEMLUCRO: TBCDField;
    QRY_ConsultaPrecoVLRLUCRO: TBCDField;
    QRY_ConsultaPrecoESTOQUE: TBCDField;
    QRY_FormasPGTOVendaTIPOPGTO: TStringField;
    QRY_FormasPGTOVendaVLRDOCUMENTO: TBCDField;
    QRY_NFCeNUM_DOCS_EMITIDOS: TStringField;
    QRY_VendaMODELOFISCAL: TIntegerField;
    QRY_VendaNUMNFCE: TIntegerField;
    QRY_ProdutoPRECOLIVRE: TStringField;
    QRY_ConsultaPrecoPRECOLIVRE: TStringField;
    frxPDFExport: TfrxPDFExport;
    QRY_VendaNUM_CAIXA: TIntegerField;
    frxDBDataset_FormasPGTOVenda: TfrxDBDataset;
    frxDBDataset_ClientesVenda: TfrxDBDataset;
    QRY_ConsultarVendedorVenda: TFDQuery;
    QRY_ConsultarVendedorVendaIDPESSOAS: TIntegerField;
    QRY_ConsultarVendedorVendaRAZAOSOCIAL: TStringField;
    QRY_ConsultarVendedorVendaFANTASIA: TStringField;
    QRY_ConsultarVendedorVendaENDERECO: TStringField;
    QRY_ConsultarVendedorVendaNUMERO: TStringField;
    QRY_ConsultarVendedorVendaBAIRRO: TStringField;
    QRY_ConsultarVendedorVendaCEP: TStringField;
    QRY_ConsultarVendedorVendaCOMPLEMENTO: TStringField;
    QRY_ConsultarVendedorVendaIDCIDADE: TIntegerField;
    QRY_ConsultarVendedorVendaTIPOFJ: TStringField;
    QRY_ConsultarVendedorVendaIDTIPOPESSOA: TIntegerField;
    QRY_ConsultarVendedorVendaCNPJ: TStringField;
    QRY_ConsultarVendedorVendaIE: TStringField;
    QRY_ConsultarVendedorVendaCONTRIBUINTE: TIntegerField;
    QRY_ConsultarVendedorVendaINSMUNICIPAL: TStringField;
    QRY_ConsultarVendedorVendaINSSUFRAMA: TStringField;
    QRY_ConsultarVendedorVendaEMAIL: TStringField;
    QRY_ConsultarVendedorVendaIDCONTATO: TIntegerField;
    QRY_ConsultarVendedorVendaOBSERVACAO: TStringField;
    QRY_ConsultarVendedorVendaIDFOTOS: TIntegerField;
    QRY_ConsultarVendedorVendaATIVO: TStringField;
    QRY_ConsultarVendedorVendaIDREFERENCIAS: TIntegerField;
    QRY_ConsultarVendedorVendaSPC: TStringField;
    QRY_ConsultarVendedorVendaSERASA: TStringField;
    QRY_ConsultarVendedorVendaUSUARIOALTERACAO: TIntegerField;
    QRY_ConsultarVendedorVendaUSUARIOCADASTRO: TIntegerField;
    QRY_ConsultarVendedorVendaDATADECADASTRO: TDateField;
    QRY_ConsultarVendedorVendaULTIMAALTERACAO: TDateField;
    QRY_ConsultarVendedorVendaSPCDATARETIRADA: TDateField;
    QRY_ConsultarVendedorVendaSPCDATAREGISTRO: TDateField;
    QRY_ConsultarVendedorVendaDATANASCIMENTO: TDateField;
    QRY_ConsultarVendedorVendaNOMECIDADE: TStringField;
    QRY_ConsultarVendedorVendaUF: TStringField;
    QRY_ConsultarVendedorVendaIDGRUPOCLIENTES: TIntegerField;
    QRY_ConsultarVendedorVendaREFPESSOALNOME: TStringField;
    QRY_ConsultarVendedorVendaREFPESSOALTELEFONE: TStringField;
    QRY_ConsultarVendedorVendaREFPESSOALCIDADE: TStringField;
    QRY_ConsultarVendedorVendaREFFINANCEIRANOME: TStringField;
    QRY_ConsultarVendedorVendaREFFINANCEIRATELEFONE: TStringField;
    QRY_ConsultarVendedorVendaREFFINANCEIRACIDADE: TStringField;
    QRY_ConsultarVendedorVendaREFCOMERCIALNOME: TStringField;
    QRY_ConsultarVendedorVendaREFCOMERCIALTELEFONE: TStringField;
    QRY_ConsultarVendedorVendaREFCOMERCIALCIDADE: TStringField;
    QRY_ConsultarVendedorVendaFORNECEDORTELEFONE: TStringField;
    QRY_ConsultarVendedorVendaFORNECEDORCONTATO: TStringField;
    QRY_ConsultarVendedorVendaFORNECEDORCELULAR: TStringField;
    QRY_ConsultarVendedorVendaFORNECEDOREMAIL: TStringField;
    QRY_ConsultarVendedorVendaPESSOALTELEFONE: TStringField;
    QRY_ConsultarVendedorVendaPESSOALCELULAR: TStringField;
    QRY_ConsultarVendedorVendaIDCIDADE_1: TIntegerField;
    QRY_ConsultarVendedorVendaMUNICIPIO: TStringField;
    QRY_ConsultarVendedorVendaUF_1: TStringField;
    QRY_ConsultarVendedorVendaCODMUNICIPIOIBGE: TStringField;
    QRY_ConsultarVendedorVendaCODESTADO: TIntegerField;
    frxDBDataset_VendedorVenda: TfrxDBDataset;
    QRY_VendaVLRTROCO: TBCDField;
    QRY_VendaSTATUS_NF: TIntegerField;
    QRY_VendaMSG_NF: TStringField;
    QRY_VendaSTATUS_NFCE: TIntegerField;
    QRY_VendaMSG_NFCE: TStringField;
    QRY_NFeNUM_DOCS_EMITIDOS: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    FNumVenda: integer;
    FNumFiscal: integer;
    FSerieFiscal: integer;
    FAmbiente: string;


  public

    //Procedures
    procedure GET_Produtos(AValue: string; AFilial: integer);
    procedure GET_ItemVenda(ANumVenda: integer);
    procedure GET_Venda; overload;
    procedure GET_Venda(AIdVenda: integer); overload;
    procedure GET_FormasPGTOVenda(AIdVenda: integer);          //Feito na Venda

    procedure GET_PrecosProdutos(AValue: string);
    procedure GET_Clientes; overload;
    procedure GET_Clientes(AIdCliente: integer); overload;
    procedure GET_VendedorVenda(AIdVendedor: integer);


    procedure GET_ParametrosPDV;
    procedure GET_ParametrosPDVBalanca(ANomePDV: string);

    procedure GET_Empresa(AIdEmpresa: integer);

    //Fiscal
    procedure GET_ProducaoHomologacao;
    procedure GET_NumNFeNFCe(AIdEmpresa: integer; ANomePDV, AModulo, ATipoNFeNFCe, AStatus: string);
    procedure GET_NFCe(AIdNFCe: integer); overload;
    procedure GET_NFCe(ADataIni, ADataFin: TDateTime); overload;
    procedure GET_NFe(AIdNFe: integer); overload;
    procedure GET_NFe(ADataIni, ADataFin: TDateTime);  overload;

    //Formas de Pagamentos
    procedure GetFormasPagamentos; overload;
    procedure GetFormasPagamentos(AIdFormaPGTO: integer); overload;


    //Functions
    function GET_IdEventoCancelarDFe: integer;
    function GetProdutoBasic(AValuePesquisa: string; AValueAtivoInativo: integer; ADataSet: TFDQuery): TFDQuery;

    procedure PUT_NFCe(ADtaSetNFCe, ADtaSetNFCeItens: TDataSet);    // NFC-e
    procedure PUT_NFe(ADtaSetNFe, ADtaSetNFeItens: TDataSet);       // NF-e

    //Caixa
    procedure GET_CaixaCardex(ADtaIni, ADtaFin: TDateTime);
    procedure GET_CaixasAbertosFechados(ADataINI, ADataFIN: TDateTime; ASTatus: string); overload;
    procedure GET_CaixasAbertosFechados(ASTatus: string; AIdUsuario: integer); overload;

    procedure PUT_Caixa(ATipo, ADescricao: string; Valor: double; IDFormaPGTO, NumCaixa: integer);
    procedure PUT_Venda(DataSetCabecalho, DataSetItens: TDataSet);
    procedure PUT_receber(ADocto: string; ID_CLIENTE: integer; ValorDocto: double);
    procedure PUT_Estoque(AIdProdutoDetalhe: integer; AQuantidade: Double; AEntradaSaida: string);


    property NumVenda: integer read FNumVenda write FNumVenda;
    property NumFiscal: integer read FNumFiscal write FNumFiscal;
    property SerieFiscal: integer read FSerieFiscal write FSerieFiscal;
    property Ambiente: string read FAmbiente write FAmbiente;

  end;

var
  ServiceCadastro: TServiceCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses view.acbr.fiscal;

{$R *.dfm}

{ TServiceCadastro }

function TServiceCadastro.GetProdutoBasic(AValuePesquisa: string; AValueAtivoInativo: integer; ADataSet: TFDQuery): TFDQuery;
var
  i: Integer;
  LTextoPesquisa,
  LCaractereCoringa,
  LSQL: String;
begin // Pesquisa Produtos Rapida

  LSQL := '';

  case AValueAtivoInativo of
    0: begin
      LSQL := 'and ATIVO = ''A''';
    end;

    1: begin
      LSQL := 'and ATIVO = ''I''';
    end;

    2: begin
      LSQL := '';
    end;
  end;


  if Length(Trim(AValuePesquisa)) > 0 then
  begin

    ADataSet.Close;
    ADataSet.SQL.Clear;

    ADataSet.SQL.Add('select');
    ADataSet.SQL.Add(' pr.*,');
    ADataSet.SQL.Add(' pi.*');
    ADataSet.SQL.Add('from estprodutos pr');
    ADataSet.SQL.Add('inner join estprodutositens pi');
    ADataSet.SQL.Add('on (pr.idproduto = pi.idproduto)');

//    where pr.codbarras = :codbarras
//    and pi.idfilial = :idfilial

    if StrToIntDef(AValuePesquisa, 0) = 0 then
    begin

      //Tem letras -> edit: ANTENA% --> %ANTENA%

      LTextoPesquisa     := '';
        LCaractereCoringa  := '';

        for i := 1 to Length(Trim(AValuePesquisa)) do
          if Trim(AValuePesquisa)[i] = '%' then
            LCaractereCoringa := Trim(AValuePesquisa)[i]
          else
            LTextoPesquisa := LTextoPesquisa + Trim(AValuePesquisa)[i];

      //Like
      if LCaractereCoringa <> '' then
      begin
        ADataSet.SQL.Add('WHERE (pi.idfilial = :idfilial)');
        ADataSet.SQL.Add('AND (pr.codbarras LIKE :NOME ');
        ADataSet.SQL.Add('or pr.ncm LIKE :NOME ');
        ADataSet.SQL.Add('or pr.descricao LIKE :NOME) ');
        ADataSet.SQL.Add('ORDER BY pr.descricao  ');
        ADataSet.ParamByName('NOME').AsString       := AValuePesquisa;  //Usando Like
        ADataSet.ParamByName('idfilial').AsInteger  := 1; //Filial

        ADataSet.Open;

        //AR%J%A%

      end
      else begin

        //Starting
        ADataSet.SQL.Add('WHERE (pi.idfilial = :idfilial)');
        ADataSet.SQL.Add('AND (pr.codbarras STARTING :NOME ');
        ADataSet.SQL.Add('or pr.ncm STARTING :NOME ');
        ADataSet.SQL.Add('or pr.descricao STARTING :NOME) ');
        ADataSet.SQL.Add('ORDER BY pr.descricao  ');
        ADataSet.ParamByName('NOME').AsString    := AValuePesquisa;  //Starting
        ADataSet.ParamByName('idfilial').AsInteger := 1; //Filial
        ADataSet.Open;

      end;

    end
    else begin

      //Codigo
      ADataSet.SQL.Add('WHERE (pi.idfilial = :idfilial)');
      ADataSet.SQL.Add('AND ( pr.idproduto = :CODIGO ');
      ADataSet.SQL.Add('or pr.codbarras STARTING :CODIGO )');
      ADataSet.ParamByName('CODIGO').AsInteger    := StrToIntDef(AValuePesquisa, 0);
      ADataSet.ParamByName('idfilial').AsInteger    := 1; //Filial
      ADataSet.Open;

    end;

  end;

  Result := ADataSet;

end;

procedure TServiceCadastro.GetFormasPagamentos;
begin //Pega a Formas de Pagamentos
  QRY_FormasPGTO.Close;
  QRY_FormasPGTO.SQL.Clear;
  QRY_FormasPGTO.SQL.Add('select * from FINANFORMASPGTO order by idpgto desc');
  QRY_FormasPGTO.Open();
end;

procedure TServiceCadastro.GetFormasPagamentos(AIdFormaPGTO: integer);
begin //Pega a Formas de Pagamentos por id
  QRY_FormasPGTO.Close;
  QRY_FormasPGTO.SQL.Clear;
  QRY_FormasPGTO.SQL.Add('select * from FINANFORMASPGTO where idpgto = :idpgto');
  QRY_FormasPGTO.Params[0].AsInteger := AIdFormaPGTO;
  QRY_FormasPGTO.Open();
end;

procedure TServiceCadastro.GET_CaixaCardex(ADtaIni, ADtaFin: TDateTime);
begin // caixa cardex por datas
  QRY_ListaCaixa.Close;
  QRY_ListaCaixa.SQL.Clear;
  QRY_ListaCaixa.SQL.Add('');
  QRY_ListaCaixa.SQL.Add('select');
  QRY_ListaCaixa.SQL.Add('  a.idcaixacardex,');
  QRY_ListaCaixa.SQL.Add('  a.dtamovimento,');
  QRY_ListaCaixa.SQL.Add('  a.hramovimento,');
  QRY_ListaCaixa.SQL.Add('  a.tipo,');
  QRY_ListaCaixa.SQL.Add('  a.saldo_atual - a.entradas + a.saidas saldo_anterior,');
  QRY_ListaCaixa.SQL.Add('  a.entradas,');
  QRY_ListaCaixa.SQL.Add('  a.saidas,');
  QRY_ListaCaixa.SQL.Add('  a.saldo_atual,');
  QRY_ListaCaixa.SQL.Add('  a.observacao,');
  QRY_ListaCaixa.SQL.Add('  a.forma_pagamento, a.numcaixa, a.statuscaixa');
  QRY_ListaCaixa.SQL.Add('from (select');
  QRY_ListaCaixa.SQL.Add('        cc.idcaixacardex,');
  QRY_ListaCaixa.SQL.Add('        cc.dtamovimento,');
  QRY_ListaCaixa.SQL.Add('        cc.hramovimento,');
  QRY_ListaCaixa.SQL.Add('        iif(cc.tipo = ''E'', ''Entrada'',''Saida'') tipo,');
  QRY_ListaCaixa.SQL.Add('        case when cc.tipo = ''E'' then cc.vlrdocumento else 0 end entradas,');
  QRY_ListaCaixa.SQL.Add('        case when cc.tipo = ''S'' then cc.vlrdocumento else 0 end saidas,');
  QRY_ListaCaixa.SQL.Add('        sum(cc.vlrdocumento * decode(cc.tipo,''E'',1,-1))');
  QRY_ListaCaixa.SQL.Add('          over(order by cc.idcaixacardex) saldo_atual,');
  QRY_ListaCaixa.SQL.Add('        cc.observacao,');
  QRY_ListaCaixa.SQL.Add('        fp.descricao forma_pagamento, cc.numcaixa, ac.statuscaixa');
  QRY_ListaCaixa.SQL.Add('      from financaixa cc');
  QRY_ListaCaixa.SQL.Add('      inner join finanformaspgto fp');
  QRY_ListaCaixa.SQL.Add('      on (cc.idformapagamento = fp.idpgto)');
  QRY_ListaCaixa.SQL.Add('      inner join finanabrircaixa ac');
  QRY_ListaCaixa.SQL.Add('      on (cc.numcaixa = ac.idabrircaixa)');
  QRY_ListaCaixa.SQL.Add('      where cc.dtamovimento between :dtaini and :dtafin');
  QRY_ListaCaixa.SQL.Add('      order by forma_pagamento) a');   // cc.idcaixacardex ESSE DEVE SER O ORDER BY SENAO FICA FORA DE ORDEM
  QRY_ListaCaixa.Params[0].AsDate := ADtaIni;
  QRY_ListaCaixa.Params[1].AsDate := ADtaFin;
  QRY_ListaCaixa.Open();
end;

procedure TServiceCadastro.GET_CaixasAbertosFechados(ASTatus: string; AIdUsuario: integer);
begin // caixa ou aberto ou fechado

  QRY_AbrirCaixa.Close;
  QRY_AbrirCaixa.SQL.Clear;
  QRY_AbrirCaixa.SQL.Add('select * from finanabrircaixa where statuscaixa = :status and usuariocaixa = :usuario') ;
  QRY_AbrirCaixa.Params[0].AsString  := ASTatus;
  QRY_AbrirCaixa.Params[1].AsInteger := AIdUsuario;
  QRY_AbrirCaixa.Open();

end;

procedure TServiceCadastro.GET_CaixasAbertosFechados(ADataINI, ADataFIN: TDateTime; ASTatus: string);
begin //caixas do periodo
  QRY_AbrirCaixa.Close;
  QRY_AbrirCaixa.SQL.Clear;
  QRY_AbrirCaixa.SQL.Add('select * from finanabrircaixa where dtaabre');
  QRY_AbrirCaixa.SQL.Add(' between :dtaini and :dtafin and statuscaixa = :status') ;
  QRY_AbrirCaixa.Params[0].AsDate   := ADataINI;
  QRY_AbrirCaixa.Params[1].AsDate   := ADataFIN;
  QRY_AbrirCaixa.Params[2].AsString := ASTatus;
  QRY_AbrirCaixa.Open();
end;

procedure TServiceCadastro.GET_Clientes(AIdCliente: integer);
begin // Listando cliente por id

  QRY_ConsultarClientes.Close;
  QRY_ConsultarClientes.SQL.Clear;
  QRY_ConsultarClientes.SQL.Add('select');
  QRY_ConsultarClientes.SQL.Add(' ps.*,');
  QRY_ConsultarClientes.SQL.Add(' ci.*');
  QRY_ConsultarClientes.SQL.Add('from pessoas ps');
  QRY_ConsultarClientes.SQL.Add('inner join cidades ci');
  QRY_ConsultarClientes.SQL.Add('on (ps.idcidade = ci.idcidade)');
  QRY_ConsultarClientes.SQL.Add('where idpessoas = :idpessoas');
  QRY_ConsultarClientes.SQL.Add('and idtipopessoa = 1');
  QRY_ConsultarClientes.Params[0].AsInteger := AIdCliente;
  QRY_ConsultarClientes.Open();

end;

procedure TServiceCadastro.GET_VendedorVenda(AIdVendedor: integer);
begin // Feita para consultar o vendedor da venda

  QRY_ConsultarVendedorVenda.Close;
  QRY_ConsultarVendedorVenda.SQL.Clear;
  QRY_ConsultarVendedorVenda.SQL.Add('select');
  QRY_ConsultarVendedorVenda.SQL.Add(' ps.*,');
  QRY_ConsultarVendedorVenda.SQL.Add(' ci.*');
  QRY_ConsultarVendedorVenda.SQL.Add('from pessoas ps');
  QRY_ConsultarVendedorVenda.SQL.Add('inner join cidades ci');
  QRY_ConsultarVendedorVenda.SQL.Add('on (ps.idcidade = ci.idcidade)');
  QRY_ConsultarVendedorVenda.SQL.Add('where idpessoas = :idpessoas');
  QRY_ConsultarVendedorVenda.SQL.Add('and idtipopessoa = 1');
  QRY_ConsultarVendedorVenda.Params[0].AsInteger := AIdVendedor;
  QRY_ConsultarVendedorVenda.Open();

end;

procedure TServiceCadastro.GET_Clientes;
begin // listando os clientes

  QRY_ConsultarClientes.Close;
  QRY_ConsultarClientes.SQL.Clear;
  QRY_ConsultarClientes.SQL.Add('select');
  QRY_ConsultarClientes.SQL.Add(' ps.*,');
  QRY_ConsultarClientes.SQL.Add(' ci.*');
  QRY_ConsultarClientes.SQL.Add('from pessoas ps');
  QRY_ConsultarClientes.SQL.Add('inner join cidades ci');
  QRY_ConsultarClientes.SQL.Add('on (ps.idcidade = ci.idcidade)');
//  QRY_ConsultarClientes.SQL.Add('where idtipopessoa = 1');
  QRY_ConsultarClientes.Open();

end;

procedure TServiceCadastro.GET_Empresa(AIdEmpresa: integer);
begin // Lista a Empresa por id

  QRY_Empresa.Close;
  QRY_Empresa.Params[0].AsInteger := AIdEmpresa;
  QRY_Empresa.Open();

end;

procedure TServiceCadastro.GET_FormasPGTOVenda(AIdVenda: integer);
begin // pega forma pagamento por id da venda

  QRY_FormasPGTOVenda.Close;
  QRY_FormasPGTOVenda.SQL.Clear;
  QRY_FormasPGTOVenda.SQL.Add('select fi.*, cx.vlrdocumento from finanformaspgto fi');
  QRY_FormasPGTOVenda.SQL.Add('inner join financaixa cx');
  QRY_FormasPGTOVenda.SQL.Add('on (fi.idpgto = cx.idformapagamento)');
  QRY_FormasPGTOVenda.SQL.Add('where cx.idvenda   = :numvenda');
  QRY_FormasPGTOVenda.Params[0].AsInteger := AIdVenda;
  QRY_FormasPGTOVenda.Open();

end;

procedure TServiceCadastro.GET_Venda;
begin //pegando a venda

  QRY_Venda.Close;
  QRY_Venda.SQL.Clear;
  QRY_Venda.SQL.Add('SELECT');
  QRY_Venda.SQL.Add('  EV.*,');
  QRY_Venda.SQL.Add('  NF.retorno_cstat STATUS_NF,');
  QRY_Venda.SQL.Add('  NF.retorno_xmsg  MSG_NF,');
  QRY_Venda.SQL.Add('  NC.retorno_cstat STATUS_NFCE,');
  QRY_Venda.SQL.Add('  NC.retorno_xmotivo MSG_NFCE');
  QRY_Venda.SQL.Add('FROM ESTVENDA EV');
  QRY_Venda.SQL.Add('LEFT JOIN NFE NF');
  QRY_Venda.SQL.Add('ON (EV.numnfe = NF.ide_nnf)');
  QRY_Venda.SQL.Add('LEFT JOIN NFCE NC');
  QRY_Venda.SQL.Add('ON (EV.numnfce = NC.ide_nnf)');
  QRY_Venda.SQL.Add('ORDER BY EV.idvenda DESC');
  QRY_Venda.Open();

end;

procedure TServiceCadastro.GET_Venda(AIdVenda: integer);
begin // Pegando apenas uma venda

  QRY_Venda.Close;
  QRY_Venda.SQL.Clear;
  QRY_Venda.SQL.Clear;
  QRY_Venda.SQL.Add('SELECT');
  QRY_Venda.SQL.Add('  EV.*,');
  QRY_Venda.SQL.Add('  NF.retorno_cstat STATUS_NF,');
  QRY_Venda.SQL.Add('  NF.retorno_xmsg  MSG_NF,');
  QRY_Venda.SQL.Add('  NC.retorno_cstat STATUS_NFCE,');
  QRY_Venda.SQL.Add('  NC.retorno_xmotivo MSG_NFCE');
  QRY_Venda.SQL.Add('FROM ESTVENDA EV');
  QRY_Venda.SQL.Add('LEFT JOIN NFE NF');
  QRY_Venda.SQL.Add('ON (EV.numnfe = NF.ide_nnf)');
  QRY_Venda.SQL.Add('LEFT JOIN NFCE NC');
  QRY_Venda.SQL.Add('ON (EV.numnfce = NC.ide_nnf)');
  QRY_Venda.SQL.Add('where EV.idvenda = :idvenda');
  QRY_Venda.Params[0].AsInteger := AIdVenda;
  QRY_Venda.Open();

  if QRY_Venda.RecordCount > 0 then
  begin
    QRY_VendaItem.Close;
    QRY_VendaItem.SQL.Clear;
    QRY_VendaItem.SQL.Add('select vi.* from estvendaitem vi where vi.idvenda = :idvenda');
    QRY_VendaItem.Params[0].AsInteger := AIdVenda;
    QRY_VendaItem.Open();
  end;

end;

function TServiceCadastro.GET_IdEventoCancelarDFe: integer;
begin // Retorna o Id do Evento para cancelamento de NF-e / NFC-e
  Result := 1;
  QRY_Aux.Close;
  QRY_Aux.SQL.Clear;
  QRY_Aux.SQL.Add('select max(NUMEROEVENTO) as idEvento from FISCALEVENTOS');
  QRY_Aux.Open();

  if QRY_Aux.RecordCount > 0 then
    Result := QRY_Aux.FieldByName('idEvento').AsInteger + 1;

end;

procedure TServiceCadastro.GET_ItemVenda(ANumVenda: integer);
begin //pegando os itens da venda

  QRY_vendaItem.Close;
  QRY_vendaItem.Params[0].AsInteger := ANumVenda;
  QRY_vendaItem.Open();

end;

procedure TServiceCadastro.GET_NFCe(AIdNFCe: integer);
begin // Pega a NFCe para Transmitir

  QRY_NFCe.Close;
  QRY_NFCe.SQL.Clear;
  QRY_NFCe.SQL.Add('select * from nfce where IDNFCE = :num_nfce');
  QRY_NFCe.Params[0].AsInteger := AIdNFCe;
  QRY_NFCe.Open();

  if QRY_NFCe.RecordCount > 0 then
  begin
    QRY_NFCeItens.Close;
    QRY_NFCeItens.SQL.Clear;
    QRY_NFCeItens.SQL.Add('select * from nfceitens where idnfce = :idnfce');
    QRY_NFCeItens.Params[0].AsInteger := AIdNFCe;
    QRY_NFCeItens.Open();
  end;

end;

procedure TServiceCadastro.GET_NFe(AIdNFe: integer);
begin  // Pega a NFe para Transmitir

  QRY_NFe.Close;
  QRY_NFe.SQL.Clear;
  QRY_NFe.SQL.Add('select * from nfe where IDNFE = :IDNFE');  // PESQUISA PELO ID DA NOTA
  QRY_NFe.Params[0].AsInteger := AIdNFe;
  QRY_NFe.Open();

  if QRY_NFe.RecordCount > 0 then
  begin
    QRY_NFeItens.Close;
    QRY_NFeItens.SQL.Clear;
    QRY_NFeItens.SQL.Add('select * from nfeitens where idnfe = :idnfce');
    QRY_NFeItens.Params[0].AsInteger := QRY_NFeIDNFE.AsInteger;
    QRY_NFeItens.Open();
  end;

end;

procedure TServiceCadastro.GET_NFCe(ADataIni, ADataFin: TDateTime);
begin // Lista de NFCe por periodo

  //FIZ ASSIM PARA RESOLVER O B.O DA DATA TIMESTEMP
  QRY_NFCe.Close;
  QRY_NFCe.SQL.Clear;
  QRY_NFCe.SQL.Add('select * from nfce where IDE_MODELO = :MODELO  order by idnfce desc ');
  QRY_NFCe.Params[0].AsInteger := 65;
  QRY_NFCe.Open();

//  QRY_NFCe.Close;
//  QRY_NFCe.SQL.Clear;
//  QRY_NFCe.SQL.Add('select * from nfce where IDE_DSAIENT  between :dtaini and :dtafin order by idnfce desc ');
//  QRY_NFCe.Params[0].AsDateTime := ADataIni;
//  QRY_NFCe.Params[1].AsDateTime := ADataFin;
//  QRY_NFCe.Open();

//  CAST(sua_coluna_timestamp AS DATE) AS sua_coluna_date

end;

procedure TServiceCadastro.GET_NFe(ADataIni, ADataFin: TDateTime);
begin // Lista de NFe por periodo

  QRY_NFe.Close;
  QRY_NFe.SQL.Clear;
  QRY_NFe.SQL.Add('select * from nfe where IDE_DSAIENT between :dtaini and :dtafin order by idnfe desc ');
  QRY_NFe.Params[0].AsDateTime := ADataIni;
  QRY_NFe.Params[1].AsDateTime := ADataFin;
  QRY_NFe.Open();

end;

procedure TServiceCadastro.GET_NumNFeNFCe(AIdEmpresa: integer; ANomePDV, AModulo, ATipoNFeNFCe, AStatus: string);
begin // Pega o numero do NFCe ou NFe

  QRY_NumeroFiscal.Close;
  QRY_NumeroFiscal.Params[0].AsInteger := AIdEmpresa;
  QRY_NumeroFiscal.Params[1].AsString  := ANomePDV;
  QRY_NumeroFiscal.Params[2].AsString  := AModulo;
  QRY_NumeroFiscal.Params[3].AsString  := ATipoNFeNFCe;
  QRY_NumeroFiscal.Params[4].AsString  := AStatus;
  QRY_NumeroFiscal.Open();

  if QRY_NumeroFiscal.RecordCount > 0 then
  begin

    FNumFiscal := QRY_NumeroFiscalNUMEROATUAL.AsInteger;
    if QRY_NumeroFiscalNUMEROATUAL.AsInteger > QRY_NumeroFiscalNUMEROINICIAL.AsInteger then
    begin
      FNumFiscal    := 0;
      FSerieFiscal  := 0;

      FSerieFiscal  := QRY_NumeroFiscalSERIE.AsInteger;
      FNumFiscal    := QRY_NumeroFiscalNUMEROATUAL.AsInteger;
      Inc(FNumFiscal);

    end
    else begin

      //valida��o:
      {
        se o numero atual for menor que o numero inicial, por motivo de erro mesmo de digita��o
        levantar uma exce��o
      }

      FSerieFiscal  := QRY_NumeroFiscalSERIE.AsInteger;
      FNumFiscal    := QRY_NumeroFiscalNUMEROATUAL.AsInteger;
      Inc(FNumFiscal);

    end;

  end;

//  select nf.* from numerofiscal nf
//  where idempresa = :idempresa
//  and nf.nomepdv = :nomepdv
//  and nf.modulo = :modulo
//  and nf.tiponfenfce = :tiponfenfce
//  and nf.status = :status

end;

procedure TServiceCadastro.GET_ParametrosPDV;
begin // parametros do pdv

  QRY_ParametrosPDV.Close;
  QRY_ParametrosPDV.Open();

end;

procedure TServiceCadastro.GET_ParametrosPDVBalanca(ANomePDV: string);
begin // parametros da balanca do pdv

  QRY_ParametrosPDVBalanca.Close;
  QRY_ParametrosPDVBalanca.SQL.Clear;
  QRY_ParametrosPDVBalanca.SQL.Add('select * from PARAMETROSPDV_BALANCA where nomepdv = :nomepdv');
  QRY_ParametrosPDVBalanca.Params[0].AsString := Trim(ANomePDV);
  QRY_ParametrosPDVBalanca.Open();

end;

procedure TServiceCadastro.GET_PrecosProdutos(AValue: string);
begin // pre�o dos produtos por codigo de barras ou descricao

  QRY_ConsultaPreco.Close;
  QRY_ConsultaPreco.SQL.Clear;
  QRY_ConsultaPreco.SQL.Add('select');
  QRY_ConsultaPreco.SQL.Add('ep.*,');
  QRY_ConsultaPreco.SQL.Add('ei.*,');
  QRY_ConsultaPreco.SQL.Add('em.sigla');
  QRY_ConsultaPreco.SQL.Add('from estprodutos ep');
  QRY_ConsultaPreco.SQL.Add('inner join estprodutositens ei');
  QRY_ConsultaPreco.SQL.Add('on (ep.idproduto = ei.idproduto)');
  QRY_ConsultaPreco.SQL.Add('inner join estunidades em');
  QRY_ConsultaPreco.SQL.Add('on (ep.idunidade = em.idunidade)');
  QRY_ConsultaPreco.SQL.Add(' where ( ep.codbarras like :campopesquisa ) ');
  QRY_ConsultaPreco.SQL.Add(' or ( ep.descricao like :campopesquisa ) ');
  QRY_ConsultaPreco.ParamByName('campopesquisa').AsString := '%' +  AValue + '%';
  QRY_ConsultaPreco.Open();

end;

procedure TServiceCadastro.GET_ProducaoHomologacao;
begin // Produ��o ou Homologa��o

  QRY_CONFIG_WEBSERVICE.Close;
  QRY_CONFIG_WEBSERVICE.Open();

  FAmbiente := 'HOMOLOGACAO';
  if QRY_CONFIG_WEBSERVICEWEB_AMBIENTE.AsInteger = 0 then
    FAmbiente := 'PRODUCAO';


//  EnumeradoToStr(t, ['1', '2'], [taProducao, taHomologacao]);

end;

procedure TServiceCadastro.GET_Produtos(AValue: string; AFilial: integer);
begin // produto pelo c�digo de barras

  QRY_Produto.Close;
  QRY_Produto.Params[0].AsString  := AValue;
  QRY_Produto.Params[1].AsInteger := AFilial;
  QRY_Produto.Open();

end;

procedure TServiceCadastro.PUT_Caixa(ATipo, ADescricao: string; Valor: double; IDFormaPGTO, NumCaixa: integer);
begin   // gravando o caixa

  QRY_Caixa.Close;
  QRY_Caixa.Open();
  QRY_Caixa.Insert;
  QRY_CaixaDOCUMENTO.AsString         := '';
  QRY_CaixaIDVENDA.AsInteger          := FNumVenda;
  QRY_CaixaDTAMOVIMENTO.AsDateTime    := Date;
  QRY_CaixaHRAMOVIMENTO.AsDateTime    := Time;
  QRY_CaixaTIPO.AsString              := ATipo;
  QRY_CaixaVLRDOCUMENTO.AsFloat       := Valor;
  QRY_CaixaIDFORMAPAGAMENTO.AsInteger := IDFormaPGTO;
  QRY_CaixaNUMCAIXA.AsInteger         := NumCaixa;
  QRY_CaixaOBSERVACAO.AsString        := ADescricao;
  QRY_Caixa.Post;

end;

procedure TServiceCadastro.PUT_receber(ADocto: string; ID_CLIENTE: integer; ValorDocto: double);
begin

//salvando o cabe�alho do receber1
  QRY_receber1.Close;
  QRY_receber1.Open();
  QRY_receber1.Insert;
  QRY_receber1RC1_NUMDOCTO.AsString := ADocto;
  QRY_receber1RC1_CLIENTE.AsInteger := ID_CLIENTE;
  QRY_receber1RC1_VALOR.AsFloat     := ValorDocto;
  QRY_receber1.Post;


  //salvando o receber2 ( parcelas )
  QRY_receber2.Close;
  QRY_receber2.Open();
  QRY_receber2.Insert;
  QRY_receber2RC2_NUMDOCTO.AsString     := ADocto;
  QRY_receber2RC2_DATA.AsDateTime       := Date;
  QRY_receber2RC2_VALORPARCELA.AsFloat  := ValorDocto;
  QRY_receber2RC2_PARCELA.AsString      := '1';
  QRY_receber2RC2_VENCIMENTO.AsDateTime := Date + 30;
  QRY_receber2RC2_VALORHAVER.AsFloat    := 0;
  QRY_receber2RC2_VALORSALDO.AsFloat    := ValorDocto;
  QRY_receber2.Post;


end;

procedure TServiceCadastro.PUT_NFe(ADtaSetNFe, ADtaSetNFeItens: TDataSet);
var
  BaseCaldulo, ValorProdutos, ValorNFe: double;
  ViewACBrFiscal: TViewACBrFiscal;
begin //Grvando NF-e

  BaseCaldulo   := 0;
  ValorProdutos := 0;
  ValorNFe      := 0;

  QRY_NFe.Close;
  QRY_NFe.Open();
  QRY_NFe.Insert;

  QRY_NFeNUM_DOCS_EMITIDOS.AsString := IntToStr(ADtaSetNFe.FieldByName('IDVENDA').AsInteger); //Salvo o id da venda.


  //N�mero da NF-e
  GET_NumNFeNFCe(1,NOME_PDV,'PDV',TipoDocFiscalToStr(tfNFe),'ATIVO');

  // identificador
  QRY_NFeIDE_NATOP.AsString       := 'VENDA PRODUCAO DO ESTAB.';
  QRY_NFeIDE_INDPAG.AsString      := ''; // ipVista;
  QRY_NFeIDE_MODELO.AsInteger     := 55;
  QRY_NFeIDE_SERIE.AsInteger      := FSerieFiscal;             // Pegar da tabela NUMEROFISCAL
  QRY_NFeIDE_NNF.AsInteger        := FNumFiscal;               // Pegar da tabela NUMEROFISCAL campo: NUMEROATUAL
  QRY_NFeIDE_CNF.AsInteger        := GerarCodigoDFe(QRY_NFeIDE_NNF.AsInteger);
  QRY_NFeIDE_DEMI.AsDateTime      := Date;
  QRY_NFeIDE_DSAIENT.AsDateTime   := Date;
  QRY_NFeIDE_HSAIENT.AsDateTime   := Now;
  QRY_NFeIDE_TPNF.AsString        := ''; // tnSaida;
  QRY_NFeIDE_TPEMIS.AsString      := ''; // TpcnTipoEmissao(cbFormaEmissao.ItemIndex);;
  QRY_NFeIDE_TPAMB.AsString       := ''; //  taHomologacao;  //Lembre-se de trocar esta vari�vel quando for para ambiente de produ��o
  QRY_NFeIDE_VERPROC.AsString     := '1.0.0.0'; //Vers�o do seu sistema
  QRY_NFeIDE_CUF.AsInteger        := UFtoCUF('PA');
  QRY_NFeIDE_CMUNFG.AsInteger     := 1505536;
  QRY_NFeIDE_FINNFE.AsString      := ''; // fnNormal;
  QRY_NFeIDE_TPIMP.AsString       := ''; // ACBrNFe1.DANFE.TipoDANFE;

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
  QRY_NFeIDE_INDINTERMED.AsString := ''; //iiSemOperacao;


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
  GET_Empresa(1);
  QRY_NFeEMIT_CNPJCPF.AsString  := QRY_EmpresaCNPJ.AsString;
  QRY_NFeEMIT_IE.AsString       := QRY_EmpresaIE.AsString;
  QRY_NFeEMIT_XNOME.AsString    := QRY_EmpresaRAZAO.AsString;
  QRY_NFeEMIT_XFANT.AsString    := QRY_EmpresaFANTASIA.AsString;

  // Endere�o do Emitente
  QRY_NFeEMIT_ENDEREMIT_FONE.AsString     := QRY_EmpresaFONE.AsString;
  QRY_NFeEMIT_ENDEREMIT_CEP.AsString      := OnlyNumber(QRY_EmpresaCEP.AsString);
  QRY_NFeEMIT_ENDEREMIT_XLGR.AsString     := QRY_EmpresaENDERECO.AsString;
  QRY_NFeEMIT_ENDEREMIT_NRO.AsString      := QRY_EmpresaNUMERO.AsString;
  QRY_NFeEMIT_ENDEREMIT_XCPL.AsString     := QRY_EmpresaCOMPLEMENTO.AsString;
  QRY_NFeEMIT_ENDEREMIT_XBAIRRO.AsString  := QRY_EmpresaBAIRRO.AsString;
  QRY_NFeEMIT_ENDEREMIT_CMUN.AsInteger    := QRY_EmpresaCODIGOIBGE.AsInteger;
  QRY_NFeEMIT_ENDEREMIT_XMUN.AsString     := QRY_EmpresaCIDADE.AsString;
  QRY_NFeEMIT_ENDEREMIT_UF.AsString       := QRY_EmpresaESTADO.AsString;
  QRY_NFeEMIT_ENDEREMIT_CPAIS.AsInteger   := 1058;
  QRY_NFeEMIT_ENDEREMIT_XPAIS.AsString    := 'BRASIL';

//  NotaF.NFe.Emit.IM                := '2648800'; // Preencher no caso de existir servi�os na nota
//  NotaF.NFe.Emit.CNAE              := '6201500'; // Verifique na cidade do emissor da NFe se � permitido
                                                 // a inclus�o de servi�os na NFe

    // esta sendo somando 1 uma vez que o ItemIndex inicia do zero e devemos
    // passar os valores 1, 2 ou 3
    // (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)
  QRY_NFeEMIT_CRT.AsString := IntToStr(QRY_EmpresaCRT.AsInteger); //NotaF.NFe.Emit.CRT  := StrToCRT(Ok, IntToStr(cbTipoEmpresa.ItemIndex + 1));


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


  //  Destinat�rio
  GET_Clientes(ADtaSetNFe.FieldByName('IDCLIENTE').AsInteger);
  QRY_NFeDEST_CNPJCPF.AsString  := QRY_ConsultarClientesCNPJ.AsString;
  QRY_NFeDEST_IE.AsString       :=  '';
  QRY_NFeDEST_ISUF.AsString     := '';
  QRY_NFeDEST_XNOME.AsString    := QRY_ConsultarClientesRAZAOSOCIAL.AsString;

  // Endere�o do Destinat�rio
  QRY_NFeDEST_ENDERDEST_FONE.AsString    := QRY_ConsultarClientesPESSOALCELULAR.AsString;;
  QRY_NFeDEST_ENDERDEST_CEP.AsString     := QRY_ConsultarClientesCEP.AsString;
  QRY_NFeDEST_ENDERDEST_XLGR.AsString    := QRY_ConsultarClientesENDERECO.AsString;
  QRY_NFeDEST_ENDERDEST_NRO.AsString     := QRY_ConsultarClientesNUMERO.AsString;
  QRY_NFeDEST_ENDERDEST_XCPL.AsString    := QRY_ConsultarClientesCOMPLEMENTO.AsString;
  QRY_NFeDEST_ENDERDEST_XBAIRRO.AsString := QRY_ConsultarClientesBAIRRO.AsString;
  QRY_NFeDEST_ENDERDEST_CMUN.AsInteger   := QRY_ConsultarClientesCODMUNICIPIOIBGE.AsString.ToInteger;
  QRY_NFeDEST_ENDERDEST_XMUN.AsString    := QRY_ConsultarClientesNOMECIDADE.AsString;
  QRY_NFeDEST_ENDERDEST_UF.AsString      := QRY_ConsultarClientesUF.AsString;
  QRY_NFeDEST_ENDERDEST_CPAIS.AsInteger  := 1058;
  QRY_NFeDEST_ENDERDEST_XPAIS.AsString   := 'BRASIL';

//Use os campos abaixo para informar o endere�o de retirada quando for diferente do Remetente/Destinat�rio

//  NotaF.NFe.Retirada.CNPJCPF := '';
//  NotaF.NFe.Retirada.xLgr    := '';
//  NotaF.NFe.Retirada.nro     := '';
//  NotaF.NFe.Retirada.xCpl    := '';
//  NotaF.NFe.Retirada.xBairro := '';
//  NotaF.NFe.Retirada.cMun    := 0;
//  NotaF.NFe.Retirada.xMun    := '';
//  NotaF.NFe.Retirada.UF      := '';

//Use os campos abaixo para informar o endere�o de entrega quando for diferente do Remetente/Destinat�rio

//  NotaF.NFe.Entrega.CNPJCPF := '';
//  NotaF.NFe.Entrega.xLgr    := '';
//  NotaF.NFe.Entrega.nro     := '';
//  NotaF.NFe.Entrega.xCpl    := '';
//  NotaF.NFe.Entrega.xBairro := '';
//  NotaF.NFe.Entrega.cMun    := 0;
//  NotaF.NFe.Entrega.xMun    := '';
//  NotaF.NFe.Entrega.UF      := '';

  QRY_NFe.Post;

  //============================== itens do NF-e ==============================================
  ADtaSetNFeItens.DisableControls;
  ADtaSetNFeItens.First;
  while not ADtaSetNFeItens.Eof do
  begin

    QRY_NFeItens.Close;
    QRY_NFeItens.Open();
    QRY_NFeItens.Insert;
    QRY_NFeItensIDNFE.AsInteger := QRY_NFeIDNFE.AsInteger;

    //Dados do Produto
    QRY_NFeItensPROD_NITEM.AsInteger    := ADtaSetNFeItens.FieldByName('Prod_nItem').AsInteger;            // J� manda tudo pro banco pronto.
    QRY_NFeItensPROD_CPROD.AsInteger    := ADtaSetNFeItens.FieldByName('IDPRODUTO').AsInteger;             // Prod_cProd mas deixei idproduto
    QRY_NFeItensPROD_CEAN.AsString      := ADtaSetNFeItens.FieldByName('Prod_cEAN').AsString;
    QRY_NFeItensPROD_XPROD.AsString     := ADtaSetNFeItens.FieldByName('Prod_xProd').AsString;
    QRY_NFeItensPROD_NCM.AsString       := ADtaSetNFeItens.FieldByName('Prod_NCM').AsString;
    QRY_NFeItensPROD_EXTIPI.AsString    := ADtaSetNFeItens.FieldByName('Prod_EXTIPI').AsString;
    QRY_NFeItensPROD_CFOP.AsString      := ADtaSetNFeItens.FieldByName('Prod_CFOP').AsString;
    QRY_NFeItensPROD_UCOM.AsString      := ADtaSetNFeItens.FieldByName('Prod_uCom').AsString;
    QRY_NFeItensPROD_QCOM.AsFloat       := ADtaSetNFeItens.FieldByName('Prod_qCom').AsFloat;
    QRY_NFeItensPROD_VUNCOM.AsFloat     := ADtaSetNFeItens.FieldByName('Prod_vUnCom').AsFloat;
    QRY_NFeItensPROD_VPROD.AsFloat      := ADtaSetNFeItens.FieldByName('Prod_vProd').AsFloat;  //Levar em considera��o o valor do desconto.                                                                                                     QRY_NFeItensPROD_QCOM.AsFloat * QRY_NFeItensPROD_VUNCOM.AsFloat; //dever� subtrair os descontos

    QRY_NFeItensPROD_CEANTRIB.AsString  :=  ADtaSetNFeItens.FieldByName('Prod_cEANTrib').AsString;
    QRY_NFeItensPROD_UTRIB.AsString     :=  ADtaSetNFeItens.FieldByName('Prod_uTrib').AsString;
    QRY_NFeItensPROD_QTRIB.AsFloat      :=  ADtaSetNFeItens.FieldByName('Prod_qTrib').AsFloat;
    QRY_NFeItensPROD_VUNTRIB.AsFloat    :=  ADtaSetNFeItens.FieldByName('Prod_vUnTrib').AsFloat;
    QRY_NFeItensPROD_VOUTRO.AsFloat     :=  ADtaSetNFeItens.FieldByName('Prod_vOutro').AsFloat;
    QRY_NFeItensPROD_VFRETE.AsFloat     :=  ADtaSetNFeItens.FieldByName('Prod_vFrete').AsFloat;
    QRY_NFeItensPROD_VSEG.AsFloat       :=  ADtaSetNFeItens.FieldByName('Prod_vSeg').AsFloat;
    QRY_NFeItensPROD_VDESC.AsFloat      :=  ADtaSetNFeItens.FieldByName('Prod_vDesc').AsFloat;
    //Produto.Prod.CEST := '1111111';       ADtaSetNFeItens.FieldByName('Prod_CEST').AsString;
    QRY_NFeItensPROD_INFADPROD.AsString :=  'Inf. Adicional do Produto';








    {
    abaixo os campos incluidos no layout a partir da NT 2020/005
  }
  // Opcional - Preencher com o C�digo de Barras pr�prio ou de terceiros que seja diferente do padr�o GTIN
  // por exemplo: c�digo de barras de cat�logo, partnumber, etc
    QRY_NFeItensPROD_CBARRA.AsString := ADtaSetNFeItens.FieldByName('Prod_cBarra').AsString;
  // Opcional - Preencher com o C�digo de Barras pr�prio ou de terceiros que seja diferente do padr�o GTIN
  //  correspondente �quele da menor unidade comercializ�vel identificado por C�digo de Barras
  // por exemplo: c�digo de barras de cat�logo, partnumber, etc
    QRY_NFeItensPROD_CBARRATRIB.AsString := ADtaSetNFeItens.FieldByName('Prod_cBarraTrib').AsString;





    // lei da transparencia nos impostos
    QRY_NFeItensIMPOSTO_VTOTTRIB.AsFloat := 0;

      // caso o CRT seja:
      // 1=Simples Nacional
      // Os valores aceitos para CSOSN s�o:
      // csosn101, csosn102, csosn103, csosn201, csosn202, csosn203,
      // csosn300, csosn400, csosn500,csosn900

      // 2=Simples Nacional, excesso sublimite de receita bruta;
      // ou 3=Regime Normal.
      // Os valores aceitos para CST s�o:
      // cst00, cst10, cst20, cst30, cst40, cst41, cst45, cst50, cst51,
      // cst60, cst70, cst80, cst81, cst90, cstPart10, cstPart90,
      // cstRep41, cstVazio, cstICMSOutraUF, cstICMSSN, cstRep60

      // (consulte o contador do seu cliente para saber qual deve ser utilizado)
      // Pode variar de um produto para outro.

      QRY_NFeItensICMS_ORIG.AsString := '0'; // oeNacional;

//      EnumeradoToStr(t, ['','1', '2', '3'], [crtRegimeNormal,crtSimplesNacional, crtSimplesExcessoReceita, crtRegimeNormal]);
      if (QRY_NFeEMIT_CRT.AsString.Trim = '2') or (QRY_NFeEMIT_CRT.AsString.Trim = '3') then
      begin
        QRY_NFeItensICMS_CST.AsString       := '00';
        QRY_NFeItensICMS_MODBC.AsString     := '2';  //dbiPrecoTabelado
        QRY_NFeItensICMS_VBC.AsFloat        := QRY_NFeItensPROD_VPROD.AsFloat;
        QRY_NFeItensICMS_PICMS.AsFloat      := (19 / 100);
        QRY_NFeItensICMS_VICMS.AsFloat      := QRY_NFeItensICMS_VBC.AsFloat * QRY_NFeItensICMS_PICMS.AsFloat; // 19.00
        QRY_NFeItensICMS_MODBCST.AsString   := '4'; //dbisMargemValorAgregado
        QRY_NFeItensICMS_PMVAST.AsFloat     := 0;
        QRY_NFeItensICMS_PREDBCST.AsFloat   := 0;
        QRY_NFeItensICMS_VBCST.AsFloat      := 0;
        QRY_NFeItensICMS_PICMSST.AsFloat    := 0;
        QRY_NFeItensICMS_VICMSST.AsFloat    := 0;
        QRY_NFeItensICMS_PREDBC.AsFloat     := 0;

      end
      else begin

        QRY_NFeItensICMS_CSOSN.AsString       := '102';
        QRY_NFeItensICMS_MODBC.AsString       := '3'; // dbiValorOperacao;
        QRY_NFeItensICMS_PCREDSN.AsFloat      := 0; //5
        QRY_NFeItensICMS_VCREDICMSSN.AsFloat  := QRY_NFeItensICMS_VBC.AsFloat * (QRY_NFeItensICMS_PCREDSN.AsFloat / 100);   // pCredSN / 100;;
        QRY_NFeItensICMS_VBC.AsFloat          := 0;
        QRY_NFeItensICMS_PICMS.AsFloat        := 0;
        QRY_NFeItensICMS_VICMS.AsFloat        := 0;
        QRY_NFeItensICMS_MODBCST.AsString     := '3'; // dbisListaNeutra;
        QRY_NFeItensICMS_PMVAST.AsFloat       := 0;
        QRY_NFeItensICMS_PREDBCST.AsFloat     := 0;
        QRY_NFeItensICMS_VBCST.AsFloat        := 0;
        QRY_NFeItensICMS_PICMSST.AsFloat      := 0;
        QRY_NFeItensICMS_VICMSST.AsFloat      := 0;

      end;


      QRY_NFeItensICMS_VBCFCPST.AsFloat        := QRY_NFeItensICMS_VBC.AsFloat;
      QRY_NFeItensICMS_PFCPST.AsFloat          := 2;
      QRY_NFeItensICMS_VFCPST.AsFloat          := 2;
      QRY_NFeItensICMS_VBCSTRET.AsFloat        := 0;
      QRY_NFeItensICMS_PST.AsFloat             := 0;
      QRY_NFeItensICMS_VICMSSUBSTITUTO.AsFloat := 0;
      QRY_NFeItensICMS_VICMSSTRET.AsFloat      := 0;
      QRY_NFeItensICMS_VBCFCPSTRET.AsFloat     := 0;
      QRY_NFeItensICMS_PFCPSTRET.AsFloat       := 0;
      QRY_NFeItensICMS_VFCPSTRET.AsFloat       := 0;
      QRY_NFeItensICMS_PREDBCEFET.AsFloat      := 0;
      QRY_NFeItensICMS_VBCEFET.AsFloat         := 0;
      QRY_NFeItensICMS_PICMSEFET.AsFloat       := 0;
      QRY_NFeItensICMS_VICMSEFET.AsFloat       := 0;

      {
        abaixo os campos incluidos no layout a partir da NT 2020/005
      }
      // Informar apenas nos motivos de desonera��o documentados abaixo
      QRY_NFeItensICMS_VICMSSTDESON.AsFloat := 0;
      {
        o campo abaixo s� aceita os valores:
        mdiProdutorAgropecuario, mdiOutros, mdiOrgaoFomento
        Campo ser� preenchido quando o campo anterior estiver preenchido.
      }
      QRY_NFeItensICMS_MOTDESICMSST.AsString := '8'; // mdiOutros;

      // Percentual do diferimento do ICMS relativo ao Fundo de Combate � Pobreza (FCP).
      // No caso de diferimento total, informar o percentual de diferimento "100"
      QRY_NFeItensICMS_PFCPDIF.AsFloat := 0;
      // Valor do ICMS relativo ao Fundo de Combate � Pobreza (FCP) diferido
      QRY_NFeItensICMS_VFCPDIF.AsFloat := 0;
      // Valor do ICMS relativo ao Fundo de Combate � Pobreza (FCP) realmente devido.
      QRY_NFeItensICMS_VFCPEFET.AsFloat := 0;



      // partilha do ICMS e fundo de probreza
      QRY_NFeItensICMSUFDEST_VBCUFDEST.AsFloat      := 0.00;
      QRY_NFeItensICMSUFDEST_PFCPUFDEST.AsFloat     := 0.00;
      QRY_NFeItensICMSUFDEST_PICMSUFDEST.AsFloat    := 0.00;
      QRY_NFeItensICMSUFDEST_PICMSINTER.AsFloat     := 0.00;
      QRY_NFeItensICMSUFDEST_PICMSINTERPART.AsFloat := 0.00;
      QRY_NFeItensICMSUFDEST_VFCPUFDEST.AsFloat     := 0.00;
      QRY_NFeItensICMSUFDEST_VICMSUFDEST.AsFloat    := 0.00;
      QRY_NFeItensICMSUFDEST_VICMSUFREMET.AsFloat   := 0.00;

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


    QRY_NFeItensII_VBC.AsFloat      := 0;
    QRY_NFeItensII_VDESPADU.AsFloat := 0;
    QRY_NFeItensII_VII.AsFloat      := 0;
    QRY_NFeItensII_VIOF.AsFloat     := 0;


    QRY_NFeItensPIS_CST.AsString  := '99'; // pis99;
    QRY_NFeItensPIS_VBC.AsFloat   := 0;
    QRY_NFeItensPIS_PPIS.AsFloat  := 0;
    QRY_NFeItensPIS_VPIS.AsFloat  := 0;

    QRY_NFeItensPIS_QBCPROD.AsFloat   := 0;
    QRY_NFeItensPIS_VALIQPROD.AsFloat := 0;
    QRY_NFeItensPIS_VPIS.AsFloat      := 0;

    QRY_NFeItensPISST_VBC.AsFloat       := 0;
    QRY_NFeItensPISST_PPIS.AsFloat      := 0;
    QRY_NFeItensPISST_QBCPROD.AsFloat   := 0;
    QRY_NFeItensPISST_VALIQPROD.AsFloat := 0;
    QRY_NFeItensPISST_VPIS.AsFloat      := 0;
    {
      abaixo o campo incluido no layout a partir da NT 2020/005
    }
    {
      valores aceitos pelo campo:
      ispNenhum, ispPISSTNaoCompoe, ispPISSTCompoe
    }
    // Indica se o valor do PISST comp�e o valor total da NF-e
    QRY_NFeItensPISST_INDSOMAPISST.AsString := ''; //  ispNenhum;


    QRY_NFeItensCOFINS_CST.AsString       := '99'; // cof99;
    QRY_NFeItensCOFINS_VBC.AsFloat        := 0;
    QRY_NFeItensCOFINS_PCOFINS.AsFloat    := 0;
    QRY_NFeItensCOFINS_VCOFINS.AsFloat    := 0;
    QRY_NFeItensCOFINS_QBCPROD.AsFloat    := 0;
    QRY_NFeItensCOFINS_VALIQPROD.AsFloat  := 0;

    QRY_NFeItensCOFINSST_VBC.AsFloat       := 0;
    QRY_NFeItensCOFINSST_PCOFINS.AsFloat   := 0;
    QRY_NFeItensCOFINSST_QBCPROD.AsFloat   := 0;
    QRY_NFeItensCOFINSST_VALIQPROD.AsFloat := 0;
    QRY_NFeItensCOFINSST_VCOFINS.AsFloat   := 0;
    {
      abaixo o campo incluido no layout a partir da NT 2020/005
    }
    {
      valores aceitos pelo campo:
      iscNenhum, iscCOFINSSTNaoCompoe, iscCOFINSSTCompoe
    }
    // Indica se o valor da COFINS ST comp�e o valor total da NF-e
    QRY_NFeItensCOFINSST_INDSOMACOFINSST.AsString := ''; //  iscNenhum;

    QRY_NFeItens.Post;

    // Atualiza as Vari�veis
    BaseCaldulo   := BaseCaldulo + QRY_NFeItensICMS_VBC.AsFloat;
    ValorProdutos := ValorProdutos + QRY_NFeItensPROD_VPROD.AsFloat;


    ADtaSetNFeItens.Next;
  end;
  ADtaSetNFeItens.EnableControls;

  ValorNFe := ValorProdutos; // Aqui dever� somar mais coisas que compoe o valor da NF-e



//  EnumeradoToStr(t, ['','1', '2', '3'], [crtRegimeNormal,crtSimplesNacional, crtSimplesExcessoReceita, crtRegimeNormal]);
  QRY_NFe.Edit;
  if (QRY_NFeEMIT_CRT.AsString.Trim = '2') or (QRY_NFeEMIT_CRT.AsString.Trim = '3') then
  begin
    QRY_NFeTOTAL_ICMSTOT_VBC.AsFloat   := BaseCaldulo;
    QRY_NFeTOTAL_ICMSTOT_VICMS.AsFloat := QRY_NFeItensICMS_VICMS.AsFloat;
  end
  else begin
    QRY_NFeTOTAL_ICMSTOT_VBC.AsFloat   := 0;
    QRY_NFeTOTAL_ICMSTOT_VICMS.AsFloat := 0;
  end;


  QRY_NFeTOTAL_ICMSTOT_VBCST.AsFloat   := 0;
  QRY_NFeTOTAL_ICMSTOT_VST.AsFloat     := 0;
  QRY_NFeTOTAL_ICMSTOT_VPROD.AsFloat   := ValorProdutos;
  QRY_NFeTOTAL_ICMSTOT_VFRETE.AsFloat  := 0;
  QRY_NFeTOTAL_ICMSTOT_VSEG.AsFloat    := 0;
  QRY_NFeTOTAL_ICMSTOT_VDESC.AsFloat   := 0;
  QRY_NFeTOTAL_ICMSTOT_VII.AsFloat     := 0;
  QRY_NFeTOTAL_ICMSTOT_VIPI.AsFloat    := 0;
  QRY_NFeTOTAL_ICMSTOT_VPIS.AsFloat    := 0;
  QRY_NFeTOTAL_ICMSTOT_VCOFINS.AsFloat := 0;
  QRY_NFeTOTAL_ICMSTOT_VOUTRO.AsFloat  := 0;
  QRY_NFeTOTAL_ICMSTOT_VNF.AsFloat     := ValorNFe;


  // lei da transparencia de impostos
  QRY_NFeTOTAL_ICMSTOT_VTOTTRIB.AsFloat := 0;

  // partilha do icms e fundo de probreza
  QRY_NFeTOTAL_ICMSTOT_VFCPUFDEST.AsFloat   := 0.00;
  QRY_NFeTOTAL_ICMSTOT_VICMSUFDEST.AsFloat  := 0.00;
  QRY_NFeTOTAL_ICMSTOT_VICMSUFREMET.AsFloat := 0.00;

  QRY_NFeTOTAL_ICMSTOT_VFCPST.AsFloat     := 0;
  QRY_NFeTOTAL_ICMSTOT_VFCPSTRET.AsFloat  := 0;

  QRY_NFeTOTAL_RETTRIB_VRETPIS.AsFloat    := 0;
  QRY_NFeTOTAL_RETTRIB_VRETCOFINS.AsFloat := 0;
  QRY_NFeTOTAL_RETTRIB_VRETCSLL.AsFloat   := 0;
  QRY_NFeTOTAL_RETTRIB_VBCIRRF.AsFloat    := 0;
  QRY_NFeTOTAL_RETTRIB_VIRRF.AsFloat      := 0;
  QRY_NFeTOTAL_RETTRIB_VBCRETPREV.AsFloat := 0;
  QRY_NFeTOTAL_RETTRIB_VRETPREV.AsFloat   := 0;


//  QRY_NFeTRANSP_MODFRETE.AsString := mfContaEmitente;
//  QRY_NFeTRANSP_TRANSPORTA_CNPJCPF.AsString  := '';
//  QRY_NFeTRANSP_TRANSPORTA_XNOME.AsString    := '';
//  QRY_NFeTRANSP_TRANSPORTA_IE.AsString       := '';
//  QRY_NFeTRANSP_TRANSPORTA_XENDER.AsString   := '';
//  QRY_NFeTRANSP_TRANSPORTA_XMUN.AsString     := '';
//  QRY_NFeTRANSP_TRANSPORTA_UF.AsString       := '';

//  QRY_NFeTRANSP_RETTRANSP_VSERV.AsFloat       := 0;
//  QRY_NFeTRANSP_RETTRANSP_VBCRET.AsFloat      := 0;
//  QRY_NFeTRANSP_RETTRANSP_PICMSRET.AsFloat    := 0;
//  QRY_NFeTRANSP_RETTRANSP_VICMSRET.AsFloat    := 0;
//  QRY_NFeTRANSP_RETTRANSP_CFOP.AsString       := '';
//  QRY_NFeTRANSP_RETTRANSP_CMUNFG.AsInteger    := 0;

//  QRY_NFeVOLUME_QVOL.AsInteger  := 1;
//  QRY_NFeVOLUME_ESP.AsString    := 'Especie';
//  QRY_NFeVOLUME_MARCA.AsString  := 'Marca';
//  QRY_NFeVOLUME_NVOL.AsString   := 'Numero';
//  QRY_NFeVOLUME_PESOL.AsFloat   := 100;
//  QRY_NFeVOLUME_PESOB.AsFloat   := 110;

  //Lacres do volume. Pode ser adicionado v�rios
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

    // O grupo infIntermed s� deve ser gerado nos casos de opera��o n�o presencial
    // pela internet em site de terceiros (Intermediadores).
//  NotaF.NFe.infIntermed.CNPJ := '';
//  NotaF.NFe.infIntermed.idCadIntTran := '';

  QRY_NFeINFADIC_INFCPL.AsString     :=  '';
  QRY_NFeINFADIC_INFADFISCO.AsString :=  '';


  QRY_NFeOBSCOMPLEMENTAR_XCAMPO.AsString := 'ObsCont';
  QRY_NFeOBSCOMPLEMENTAR_XTEXTO.AsString := 'Texto';

  QRY_NFeOBSFISCO_XCAMPO.AsString := 'ObsFisco';
  QRY_NFeOBSFISCO_XTEXTO.AsString := 'Texto';

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

// YA. Informa��es de pagamento

  QRY_NFeINFOPGTO_INDPAG.AsString := '0';  // ipVista;
  QRY_NFeINFOPGTO_TPAG.AsString   := '01'; // fpDinheiro;
  QRY_NFeINFOPGTO_VPAG.AsFloat    := QRY_NFeItensPROD_VPROD.AsFloat;

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
// Regra obrigat�ria: Se informado, N�o pode diferir de "(+) vPag (id:YA03) (-) vNF (id:W16)"
//  NotaF.NFe.pag.vTroco := 75;

  {
    abaixo o campo incluido no layout a partir da NT 2020/006
  }
  // CNPJ do Intermediador da Transa��o (agenciador, plataforma de delivery,
  // marketplace e similar) de servi�os e de neg�cios.


//  NotaF.NFe.infIntermed.CNPJ := '';




  // Nome do usu�rio ou identifica��o do perfil do vendedor no site do intermediador
  // (agenciador, plataforma de delivery, marketplace e similar) de servi�os e de
  // neg�cios.

//  NotaF.NFe.infIntermed.idCadIntTran := '';


  QRY_NFe.Post;


  //Atualiza a tabela NUMERO FISCAL
  QRY_Aux.Close;
  QRY_Aux.SQL.Clear;
  QRY_Aux.SQL.Add(' update numerofiscal nf set nf.NUMEROATUAL = :NumFiscal');
  QRY_Aux.SQL.Add('  where idempresa = :idempresa');
  QRY_Aux.SQL.Add('  and nf.nomepdv = :nomepdv');
  QRY_Aux.SQL.Add('  and nf.modulo = :modulo');
  QRY_Aux.SQL.Add('  and nf.tiponfenfce = :tiponfenfce');
  QRY_Aux.SQL.Add('  and nf.status = :status');
  QRY_Aux.Params[0].AsInteger := FNumFiscal; // N�mero Atual j� incrementado
  QRY_Aux.Params[1].AsInteger := 1;
  QRY_Aux.Params[2].AsString  := NOME_PDV;
  QRY_Aux.Params[3].AsString  := 'PDV';
  QRY_Aux.Params[4].AsString  := 'NFE';
  QRY_Aux.Params[5].AsString  := 'ATIVO';
  QRY_Aux.ExecSQL;


  //Emite o Documento Fiscal. ( Depois retirar desse Local )
  GET_NFe(QRY_NFeIDNFE.AsInteger);
  ViewACBrFiscal := TViewACBrFiscal.Create(Self, QRY_NFe, QRY_NFeItens, TipoDocFiscalToStr(tfNFe));


end;

procedure TServiceCadastro.PUT_NFCe(ADtaSetNFCe, ADtaSetNFCeItens: TDataSet);
var
  BaseCaldulo, ValorProdutos, ValorNFCe: double;
  ViewACBrFiscal: TViewACBrFiscal;
begin //Grvando NFC-e

  BaseCaldulo   := 0;
  ValorProdutos := 0;
  ValorNFCe     := 0;

  QRY_NFCe.Close;
  QRY_NFCe.Open();
  QRY_NFCe.Insert;

  QRY_NFCeNUM_DOCS_EMITIDOS.AsString := IntToStr(ADtaSetNFCe.FieldByName('IDVENDA').AsInteger); //Salvo o id da venda.

  // Identificador
  QRY_NFCeIDE_NATOP.AsString        := 'VENDA DE MERCADORIA';
  QRY_NFCeIDE_INDPAG.AsString       := '0';             // EnumeradoToStr(t, ['0', '1', '2', ''], [ipVista, ipPrazo, ipOutras, ipNenhum]);
  QRY_NFCeIDE_MODELO.AsInteger      := 65;

  //N�mero da NFC-e
  GET_NumNFeNFCe(1,NOME_PDV,'PDV',TipoDocFiscalToStr(tfNFCe),'ATIVO');

  QRY_NFCeIDE_SERIE.AsInteger       := FSerieFiscal;             // Pegar da tabela NUMEROFISCAL
  QRY_NFCeIDE_NNF.AsInteger         := FNumFiscal;               // Pegar da tabela NUMEROFISCAL campo: NUMEROATUAL
  QRY_NFCeIDE_CNF.AsInteger         := GerarCodigoDFe(QRY_NFCeIDE_NNF.AsInteger);
  QRY_NFCeIDE_DEMI.AsDateTime       := Now;
  QRY_NFCeIDE_DSAIENT.AsDateTime    := Now;
  QRY_NFCeIDE_HSAIENT.AsDateTime    := Now;
  QRY_NFCeIDE_TPNF.AsString         := '1';             // EnumeradoToStr(t, ['0', '1'], [tnEntrada, tnSaida]);
  QRY_NFCeIDE_TPEMIS.AsString       := '1';             // EnumeradoToStr(t, ['1', '2', '3', '4', '5', '6', '7', '8', '9'], [teNormal, teContingencia, teSCAN, teDPEC, teFSDA, teSVCAN, teSVCRS, teSVCSP, teOffLine]);
  QRY_NFCeIDE_TPAMB.AsString        := '2';             // EnumeradoToStr(t, ['1', '2'], [taProducao, taHomologacao]);
  QRY_NFCeIDE_CUF.AsInteger         := UFtoCUF('PA');   // Pegar da tabela CIDADES ( CODIDO DA UF )
  QRY_NFCeIDE_CMUNFG.AsInteger      := 1505536;         // Pegar da tabela CIDADES ( CODIDO DO IBGE DO MUNICIPIO )
  QRY_NFCeIDE_FINNFE.AsString       := '1';             // EnumeradoToStr(t, ['1', '2', '3', '4'], [fnNormal, fnComplementar, fnAjuste, fnDevolucao]);
  QRY_NFCeIDE_TPIMP.AsString        := '4';             // EnumeradoToStr(t, ['0', '1', '2', '3', '4', '5'], [tiSemGeracao, tiRetrato, tiPaisagem, tiSimplificado, tiNFCe, tiMsgEletronica]);
  QRY_NFCeIDE_INDFINAL.AsString     := '1';             // EnumeradoToStr(t, ['0', '1'], [cfNao, cfConsumidorFinal]);
  QRY_NFCeIDE_INDPRES.AsString      := '1';             // EnumeradoToStr(t, ['0', '1', '2', '3', '4', '5', '9'], [pcNao, pcPresencial, pcInternet, pcTeleatendimento, pcEntregaDomicilio, pcPresencialForaEstabelecimento, pcOutros]);
  QRY_NFCeIDE_INDINTERMED.AsString  := '';              // EnumeradoToStr(t, ['', '0', '1'], [iiSemOperacao, iiOperacaoSemIntermediador, iiOperacaoComIntermediador]);


  //Emitente
  GET_Empresa(1);
  QRY_NFCeEMIT_CNPJCPF.AsString           := QRY_EmpresaCNPJ.AsString;
  QRY_NFCeEMIT_IE.AsString                := QRY_EmpresaIE.AsString;
  QRY_NFCeEMIT_XNOME.AsString             := QRY_EmpresaRAZAO.AsString;
  QRY_NFCeEMIT_XFANT.AsString             := QRY_EmpresaFANTASIA.AsString;
  QRY_NFCeEMIT_ENDEREMIT_FONE.AsString    := QRY_EmpresaFONE.AsString;
  QRY_NFCeEMIT_ENDEREMIT_CEP.AsString     := QRY_EmpresaCEP.AsString;
  QRY_NFCeEMIT_ENDEREMIT_XLGR.AsString    := QRY_EmpresaENDERECO.AsString;
  QRY_NFCeEMIT_ENDEREMIT_NRO.AsString     := QRY_EmpresaNUMERO.AsString;
  QRY_NFCeEMIT_ENDEREMIT_XCPL.AsString    := QRY_EmpresaCOMPLEMENTO.AsString;
  QRY_NFCeEMIT_ENDEREMIT_XBAIRRO.AsString := QRY_EmpresaBAIRRO.AsString;
  QRY_NFCeEMIT_ENDEREMIT_CMUN.AsInteger   := QRY_EmpresaCODIGOIBGE.AsInteger;
  QRY_NFCeEMIT_ENDEREMIT_XMUN.AsString    := QRY_EmpresaCIDADE.AsString;
  QRY_NFCeEMIT_ENDEREMIT_UF.AsString      := QRY_EmpresaESTADO.AsString;
  QRY_NFCeEMIT_ENDEREMIT_CPAIS.AsInteger  := 1058;
  QRY_NFCeEMIT_ENDEREMIT_XPAIS.AsString   := 'BRASIL';
  QRY_NFCeEMIT_IEST.AsString              := '';
  QRY_NFCeEMIT_CRT.AsString               := IntToStr(QRY_EmpresaCRT.AsInteger);             // StrToEnumerado(ok, s, ['','1', '2', '3'],[crtRegimeNormal,crtSimplesNacional,crtSimplesExcessoReceita, crtRegimeNormal]);

  QRY_NFCeIDEMPRESA.AsInteger := 1; // Passar o Id original da empresa que estiver no momento.

  QRY_NFCe.Post;


  //============================== itens do NFC-e ==============================================
  ADtaSetNFCeItens.DisableControls;
  ADtaSetNFCeItens.First;
  while not ADtaSetNFCeItens.Eof do
  begin

    QRY_NFCeItens.Close;
    QRY_NFCeItens.Open();
    QRY_NFCeItens.Insert;
    QRY_NFCeItensIDNFCE.AsInteger         := QRY_NFCeIDNFCE.AsInteger;

    // Dados do Produto
    QRY_NFCeItensPROD_NITEM.AsInteger     := ADtaSetNFCeItens.FieldByName('Prod_nItem').AsInteger;            // J� manda tudo pro banco pronto.
    QRY_NFCeItensPROD_CPROD.AsString      := ADtaSetNFCeItens.FieldByName('IDPRODUTO').AsInteger.ToString;    // Prod_cProd mas deixei idproduto
    QRY_NFCeItensPROD_CEAN.AsString       := ADtaSetNFCeItens.FieldByName('Prod_cEAN').AsString;
    QRY_NFCeItensPROD_XPROD.AsString      := ADtaSetNFCeItens.FieldByName('Prod_xProd').AsString;
    QRY_NFCeItensPROD_NCM.AsString        := ADtaSetNFCeItens.FieldByName('Prod_NCM').AsString;
    QRY_NFCeItensPROD_EXTIPI.AsString     := ADtaSetNFCeItens.FieldByName('Prod_EXTIPI').AsString;
    QRY_NFCeItensPROD_CFOP.AsString       := ADtaSetNFCeItens.FieldByName('Prod_CFOP').AsString;
    QRY_NFCeItensPROD_UCOM.AsString       := ADtaSetNFCeItens.FieldByName('Prod_uCom').AsString;
    QRY_NFCeItensPROD_QCOM.AsFloat        := ADtaSetNFCeItens.FieldByName('Prod_qCom').AsFloat;
    QRY_NFCeItensPROD_VUNCOM.AsFloat      := ADtaSetNFCeItens.FieldByName('Prod_vUnCom').AsFloat;
    QRY_NFCeItensPROD_VPROD.AsFloat       := ADtaSetNFCeItens.FieldByName('Prod_vProd').AsFloat;  //Levar em considera��o o valor do desconto.

    QRY_NFCeItensPROD_CEANTRIB.AsString   := ADtaSetNFCeItens.FieldByName('Prod_cEANTrib').AsString;
    QRY_NFCeItensPROD_UTRIB.AsString      := ADtaSetNFCeItens.FieldByName('Prod_uTrib').AsString;
    QRY_NFCeItensPROD_QTRIB.AsFloat       := ADtaSetNFCeItens.FieldByName('Prod_qTrib').AsFloat;
    QRY_NFCeItensPROD_VUNTRIB.AsFloat     := ADtaSetNFCeItens.FieldByName('Prod_vUnTrib').AsFloat;
    QRY_NFCeItensPROD_VOUTRO.AsFloat      := ADtaSetNFCeItens.FieldByName('Prod_vOutro').AsFloat;
    QRY_NFCeItensPROD_VFRETE.AsFloat      := ADtaSetNFCeItens.FieldByName('Prod_vFrete').AsFloat;
    QRY_NFCeItensPROD_VSEG.AsFloat        := ADtaSetNFCeItens.FieldByName('Prod_vSeg').AsFloat;
    QRY_NFCeItensPROD_VDESC.AsFloat       := ADtaSetNFCeItens.FieldByName('Prod_vDesc').AsFloat;
    QRY_NFCeItensPROD_CEST.AsString       := ADtaSetNFCeItens.FieldByName('Prod_CEST').AsString;
    QRY_NFCeItensPROD_INFADPROD.AsString  := 'Inf. Adicional do Produto';
    QRY_NFCeItensPROD_CBARRA.AsString     := ADtaSetNFCeItens.FieldByName('Prod_cBarra').AsString;
    QRY_NFCeItensPROD_CBARRATRIB.AsString := ADtaSetNFCeItens.FieldByName('Prod_cBarraTrib').AsString;

    // Dados do Imposto ICMS
    QRY_NFCeItensICMS_CST.AsString            := '00'; // ADtaSetNFCeItens.FieldByName('ICMS_CST').AsString;
    if QRY_NFCeEMIT_CRT.AsString = '1' then
     QRY_NFCeItensICMS_CSOSN.AsString         := '102'; // ADtaSetNFCeItens.FieldByName('ICMS_CSOSN').AsString;

    QRY_NFCeItensICMS_ORIG.AsString           := '0'; // ADtaSetNFCeItens.FieldByName('ICMS_ORIG').AsString;
    QRY_NFCeItensICMS_MODBC.AsString          := '3'; // ADtaSetNFCeItens.FieldByName('ICMS_MODBC').AsString;           // EnumeradoToStr(t, ['0', '1', '2', '3', ''], [dbiMargemValorAgregado, dbiPauta, dbiPrecoTabelado, dbiValorOperacao, dbiNenhum]);

    // Base de Calculo do ICMS
    QRY_NFCeItensICMS_VBC.AsFloat             := QRY_NFCeItensPROD_VPROD.AsFloat;
    if QRY_NFCeEMIT_CRT.AsString = '1' then
     QRY_NFCeItensICMS_VBC.AsFloat            := 0;

    QRY_NFCeItensICMS_PICMS.AsFloat           := 0;
    QRY_NFCeItensICMS_VICMS.AsFloat           := 0;

    //J� manda o ICMS Calculado
    if QRY_NFCeEMIT_CRT.AsString <> '1' then
    begin
      QRY_NFCeItensICMS_PICMS.AsFloat  := (19 / 100); //Pegar o 19 de uma tabela de Estados
      QRY_NFCeItensICMS_VICMS.AsFloat  := QRY_NFCeItensICMS_VBC.AsFloat * QRY_NFCeItensICMS_PICMS.AsFloat;
    end;

    QRY_NFCeItensICMS_MODBCST.AsString        := '4';
    QRY_NFCeItensICMS_PMVAST.AsFloat          := 0; // ADtaSetNFCeItens.FieldByName('ICMS_pMVAST').AsFloat;
    QRY_NFCeItensICMS_PREDBCST.AsFloat        := 0; // ADtaSetNFCeItens.FieldByName('ICMS_pRedBCSTT').AsFloat;
    QRY_NFCeItensICMS_VBCST.AsFloat           := 0; // ADtaSetNFCeItens.FieldByName('ICMS_vBCST').AsFloat;
    QRY_NFCeItensICMS_PICMSST.AsFloat         := 0; // ADtaSetNFCeItens.FieldByName('ICMS_pICMSST').AsFloat;
    QRY_NFCeItensICMS_VICMSST.AsFloat         := 0; // ADtaSetNFCeItens.FieldByName('ICMS_vICMSST').AsFloat;
    QRY_NFCeItensICMS_PREDBC.AsFloat          := 0; // ADtaSetNFCeItens.FieldByName('ICMS_pRedBC').AsFloat;

//    QRY_NFCeItensICMS_PCREDSN.AsFloat         := ADtaSetNFCeItens.FieldByName('ICMS_pCredSN').AsFloat;
//    QRY_NFCeItensICMS_VCREDICMSSN.AsFloat     := ADtaSetNFCeItens.FieldByName('ICMS_vCredICMSSN').AsFloat;
//    QRY_NFCeItensICMS_VBCFCPST.AsFloat        := ADtaSetNFCeItens.FieldByName('ICMS_vBCFCPST').AsFloat;
//    QRY_NFCeItensICMS_PFCPST.AsFloat          := ADtaSetNFCeItens.FieldByName('ICMS_pFCPST').AsFloat;
//    QRY_NFCeItensICMS_VFCPST.AsFloat          := ADtaSetNFCeItens.FieldByName('ICMS_vFCPST').AsFloat;
    QRY_NFCeItensICMS_VBCSTRET.AsFloat        := 0; // ADtaSetNFCeItens.FieldByName('ICMS_vBCSTRet').AsFloat;
    QRY_NFCeItensICMS_PST.AsFloat             := 0; // ADtaSetNFCeItens.FieldByName('ICMS_pST').AsFloat;
    QRY_NFCeItensICMS_VICMSSUBSTITUTO.AsFloat := 0; // ADtaSetNFCeItens.FieldByName('ICMS_vICMSSubstituto').AsFloat;
    QRY_NFCeItensICMS_VICMSSTRET.AsFloat      := 0; // ADtaSetNFCeItens.FieldByName('ICMS_vICMSSTRet').AsFloat;

    QRY_NFCeItensICMS_VBCFCPSTRET.AsFloat     := 0; //  ADtaSetNFCeItens.FieldByName('ICMS_vBCFCPSTRet').AsFloat;
    QRY_NFCeItensICMS_PFCPSTRET.AsFloat       := 0; //  ADtaSetNFCeItens.FieldByName('ICMS_pFCPSTRett').AsFloat;
    QRY_NFCeItensICMS_VFCPSTRET.AsFloat       := 0; //  ADtaSetNFCeItens.FieldByName('ICMS_vFCPSTRet').AsFloat;
    QRY_NFCeItensICMS_PREDBCEFET.AsFloat      := 0; //  ADtaSetNFCeItens.FieldByName('ICMS_pRedBCEfet').AsFloat;
    QRY_NFCeItensICMS_VBCEFET.AsFloat         := 0; //  ADtaSetNFCeItens.FieldByName('ICMS_vBCEfet').AsFloat;
    QRY_NFCeItensICMS_PICMSEFET.AsFloat       := 0; //  ADtaSetNFCeItens.FieldByName('ICMS_pICMSEfet').AsFloat;
    QRY_NFCeItensICMS_VICMSEFET.AsFloat       := 0; //  ADtaSetNFCeItens.FieldByName('ICMS_vICMSEfet').AsFloat;

    QRY_NFCeItensICMS_VICMSSTDESON.AsFloat    := 0; //  ADtaSetNFCeItens.FieldByName('ICMS_vICMSSTDeson').AsFloat;
    QRY_NFCeItensICMS_MOTDESICMSST.AsFloat    := 9;
    QRY_NFCeItensICMS_PFCPDIF.AsFloat         := 0; //  ADtaSetNFCeItens.FieldByName('ICMS_pFCPDif').AsFloat;
    QRY_NFCeItensICMS_VFCPDIF.AsFloat         := 0; //  ADtaSetNFCeItens.FieldByName('ICMS_vFCPDif').AsFloat;
    QRY_NFCeItensICMS_VFCPEFET.AsFloat        := 0; //  ADtaSetNFCeItens.FieldByName('ICMS_vFCPEfet').AsFloat;


    // Dados do ICMSUFDest
    QRY_NFCeItensICMSUFDEST_VBCUFDEST.AsFloat       := 0; //  ADtaSetNFCeItens.FieldByName('ICMSUFDest_vBCUFDest').AsFloat;
    QRY_NFCeItensICMSUFDEST_PFCPUFDEST.AsFloat      := 0; //  ADtaSetNFCeItens.FieldByName('ICMSUFDest_pFCPUFDest').AsFloat;
    QRY_NFCeItensICMSUFDEST_PICMSUFDEST.AsFloat     := 0; //  ADtaSetNFCeItens.FieldByName('ICMSUFDest_pICMSUFDestt').AsFloat;
    QRY_NFCeItensICMSUFDEST_PICMSINTER.AsFloat      := 0; //  ADtaSetNFCeItens.FieldByName('ICMSUFDest_pICMSInter').AsFloat;
    QRY_NFCeItensICMSUFDEST_PICMSINTERPART.AsFloat  := 0; //  ADtaSetNFCeItens.FieldByName('ICMSUFDest_pICMSInterPart').AsFloat;
    QRY_NFCeItensICMSUFDEST_VFCPUFDEST.AsFloat      := 0; //  ADtaSetNFCeItens.FieldByName('ICMSUFDest_vFCPUFDest').AsFloat;
    QRY_NFCeItensICMSUFDEST_VICMSUFDEST.AsFloat     := 0; //  ADtaSetNFCeItens.FieldByName('ICMSUFDest_vICMSUFDest').AsFloat;
    QRY_NFCeItensICMSUFDEST_VICMSUFREMET.AsFloat    := 0; //  ADtaSetNFCeItens.FieldByName('ICMSUFDest_vICMSUFRemet').AsFloat;

    // Dados do PIS
    QRY_NFCeItensPIS_CST.AsInteger    := 99; // ADtaSetNFCeItens.FieldByName('PIS_CST').AsInteger; // 99
    QRY_NFCeItensPIS_VBC.AsFloat      := 0;  //  ADtaSetNFCeItens.FieldByName('PIS_vBC').AsFloat;
    QRY_NFCeItensPIS_PPIS.AsFloat     := 0;  //  ADtaSetNFCeItens.FieldByName('PIS_pPIS').AsFloat;
    QRY_NFCeItensPIS_VPIS.AsFloat     := 0;  //  ADtaSetNFCeItens.FieldByName('PIS_vPIS').AsFloat;

    QRY_NFCeItensPIS_QBCPROD.AsFloat   := 0; //  ADtaSetNFCeItens.FieldByName('PIS_qBCProd').AsFloat;
    QRY_NFCeItensPIS_VALIQPROD.AsFloat := 0; //  ADtaSetNFCeItens.FieldByName('PIS_vAliqProd').AsFloat;
    QRY_NFCeItensPIS_VPIS.AsFloat      := 0; //  ADtaSetNFCeItens.FieldByName('PIS_vPIS').AsFloat;


    // Dados do PISST
    QRY_NFCeItensPISST_VBC.AsFloat       := 0; //  ADtaSetNFCeItens.FieldByName('PISST_vBc').AsFloat;
    QRY_NFCeItensPISST_PPIS.AsFloat      := 0; //  ADtaSetNFCeItens.FieldByName('PISST_pPis').AsFloat;
    QRY_NFCeItensPISST_QBCPROD.AsFloat   := 0; //  ADtaSetNFCeItens.FieldByName('PISST_qBCProd').AsFloat;
    QRY_NFCeItensPISST_VALIQPROD.AsFloat := 0; //  ADtaSetNFCeItens.FieldByName('PISST_vAliqProd').AsFloat;
    QRY_NFCeItensPISST_VPIS.AsFloat      := 0; //  ADtaSetNFCeItens.FieldByName('PISST_vPIS').AsFloat;
    QRY_NFCeItensPISST_INDSOMAPISST.AsString := '';   // EnumeradoToStr(t, ['', '0', '1'], [ispNenhum, ispPISSTNaoCompoe, ispPISSTCompoe]);


    // Dados do COFINS
    QRY_NFCeItensCOFINS_CST.AsInteger   := 99; // ADtaSetNFCeItens.FieldByName('COFINS_CST').AsInteger; // 99
    QRY_NFCeItensCOFINS_VBC.AsFloat     := 0;  //  ADtaSetNFCeItens.FieldByName('COFINSS_vBC').AsFloat;
    QRY_NFCeItensCOFINS_PCOFINS.AsFloat := 0;  //  ADtaSetNFCeItens.FieldByName('COFINS_pCOFINS').AsFloat;
    QRY_NFCeItensCOFINS_VCOFINS.AsFloat := 0;  //  ADtaSetNFCeItens.FieldByName('COFINS_vCOFINS').AsFloat;

    QRY_NFCeItensCOFINS_QBCPROD.AsFloat   := 0; //  ADtaSetNFCeItens.FieldByName('COFINS_qBCProd').AsFloat;
    QRY_NFCeItensCOFINS_VALIQPROD.AsFloat := 0; //  ADtaSetNFCeItens.FieldByName('COFINS_vAliqProd').AsFloat;


    //Dados do COFINSST
    QRY_NFCeItensCOFINSST_VBC.AsFloat       := 0; //  ADtaSetNFCeItens.FieldByName('COFINSST_vBC').AsFloat;
    QRY_NFCeItensCOFINSST_PCOFINS.AsFloat   := 0; //  ADtaSetNFCeItens.FieldByName('COFINSST_pCOFINS').AsFloat;
    QRY_NFCeItensCOFINSST_QBCPROD.AsFloat   := 0; //  ADtaSetNFCeItens.FieldByName('COFINSST_qBCProd').AsFloat;
    QRY_NFCeItensCOFINSST_VALIQPROD.AsFloat := 0; //  ADtaSetNFCeItens.FieldByName('COFINSST_vAliqProd').AsFloat;
    QRY_NFCeItensCOFINSST_VCOFINS.AsFloat   := 0; //  ADtaSetNFCeItens.FieldByName('COFINSST_vCOFINS').AsFloat;

    QRY_NFCeItensCOFINSST_INDSOMACOFINSST.AsString := '';   // EnumeradoToStr(t, ['', '0', '1'], [ispNenhum, ispPISSTNaoCompoe, ispPISSTCompoe]);

    // Atualiza as Vari�veis
    BaseCaldulo   := BaseCaldulo + QRY_NFCeItensICMS_VBC.AsFloat;
    ValorProdutos := ValorProdutos + QRY_NFCeItensPROD_VPROD.AsFloat;

    QRY_NFCeItens.Post;

    ADtaSetNFCeItens.Next;
  end;
  ADtaSetNFCeItens.EnableControls;

  ValorNFCe := ValorProdutos; // Aqui dever� somar mais coisas que compoe o valor da NFC-e

  //Atualiza os Totais
  QRY_NFCe.Edit;
  QRY_NFCeTOTAL_ICMSTOT_VBC.AsFloat     := BaseCaldulo; // ADtaSetNFCe.FieldByName('Total_ICMSTot_vBC    ').AsFloat;
  QRY_NFCeTOTAL_ICMSTOT_VICMS.AsFloat   := 0; //   ADtaSetNFCe.FieldByName('Total_ICMSTot_vICMS  ').AsFloat;
  QRY_NFCeTOTAL_ICMSTOT_VBCST.AsFloat   := 0; //   ADtaSetNFCe.FieldByName('Total_ICMSTot_vBCST  ').AsFloat;
  QRY_NFCeTOTAL_ICMSTOT_VST.AsFloat     := 0; //   ADtaSetNFCe.FieldByName('Total_ICMSTot_vST    ').AsFloat;
  QRY_NFCeTOTAL_ICMSTOT_VPROD.AsFloat   := ValorProdutos; // ADtaSetNFCe.FieldByName('Total_ICMSTot_vProd  ').AsFloat;
  QRY_NFCeTOTAL_ICMSTOT_VFRETE.AsFloat  := 0; //   ADtaSetNFCe.FieldByName('Total_ICMSTot_vFrete ').AsFloat;
  QRY_NFCeTOTAL_ICMSTOT_VSEG.AsFloat    := 0; //   ADtaSetNFCe.FieldByName('Total_ICMSTot_vSeg   ').AsFloat;
  QRY_NFCeTOTAL_ICMSTOT_VSEG.AsFloat    := 0; //   ADtaSetNFCe.FieldByName('Total_ICMSTot_vDesc  ').AsFloat;
  QRY_NFCeTOTAL_ICMSTOT_VII.AsFloat     := 0; //   ADtaSetNFCe.FieldByName('Total_ICMSTot_vII    ').AsFloat;
  QRY_NFCeTOTAL_ICMSTOT_VIPI.AsFloat    := 0; //   ADtaSetNFCe.FieldByName('Total_ICMSTot_vIPI   ').AsFloat;
  QRY_NFCeTOTAL_ICMSTOT_VPIS.AsFloat    := 0; //   ADtaSetNFCe.FieldByName('Total_ICMSTot_vPIS   ').AsFloat;
  QRY_NFCeTOTAL_ICMSTOT_VCOFINS.AsFloat := 0; //   ADtaSetNFCe.FieldByName('Total_ICMSTot_vCOFINS').AsFloat;
  QRY_NFCeTOTAL_ICMSTOT_VOUTRO.AsFloat  := 0; //   ADtaSetNFCe.FieldByName('Total_ICMSTot_vOutro ').AsFloat;
  QRY_NFCeTOTAL_ICMSTOT_VNF.AsFloat     := ValorNFCe; // ADtaSetNFCe.FieldByName('Total_ICMSTot_vNF    ').AsFloat;

  // partilha do icms e fundo de probreza
  QRY_NFCeTOTAL_ICMSTOT_VFCPUFDEST.AsFloat   := 0; //   ADtaSetNFCe.FieldByName('Total_ICMSTot_vFCPUFDest  ').AsFloat;
  QRY_NFCeTOTAL_ICMSTOT_VICMSUFDEST.AsFloat  := 0; //   ADtaSetNFCe.FieldByName('Total_ICMSTot_vICMSUFDest ').AsFloat;
  QRY_NFCeTOTAL_ICMSTOT_VICMSUFREMET.AsFloat := 0; //   ADtaSetNFCe.FieldByName('Total_ICMSTot_vICMSUFRemet').AsFloat;

  QRY_NFCeTOTAL_ISSQNTOT_VSERV.AsFloat   := 0; //    ADtaSetNFCe.FieldByName('Total_ISSQNtot_vServ   ').AsFloat;
  QRY_NFCeTOTAL_ISSQNTOT_VBC.AsFloat     := 0; //    ADtaSetNFCe.FieldByName('Total_ISSQNTot_vBC     ').AsFloat;
  QRY_NFCeTOTAL_ISSQNTOT_VISS.AsFloat    := 0; //    ADtaSetNFCe.FieldByName('Total_ISSQNTot_vISS    ').AsFloat;
  QRY_NFCeTOTAL_ISSQNTOT_VPIS.AsFloat    := 0; //    ADtaSetNFCe.FieldByName('Total_ISSQNTot_vPIS    ').AsFloat;
  QRY_NFCeTOTAL_ISSQNTOT_VCOFINS.AsFloat := 0; //    ADtaSetNFCe.FieldByName('Total_ISSQNTot_vCOFINS ').AsFloat;

  QRY_NFCeTOTAL_RETTRIB_VRETPIS.AsFloat    := 0; //    ADtaSetNFCe.FieldByName('Total_retTrib_vRetPIS   ').AsFloat;
  QRY_NFCeTOTAL_RETTRIB_VRETCOFINS.AsFloat := 0; //    ADtaSetNFCe.FieldByName('Total_retTrib_vRetCOFINS').AsFloat;
  QRY_NFCeTOTAL_RETTRIB_VRETCSLL.AsFloat   := 0; //    ADtaSetNFCe.FieldByName('Total_retTrib_vRetCSLL  ').AsFloat;
  QRY_NFCeTOTAL_RETTRIB_VBCIRRF.AsFloat    := 0; //    ADtaSetNFCe.FieldByName('Total_retTrib_vBCIRRF   ').AsFloat;
  QRY_NFCeTOTAL_RETTRIB_VIRRF.AsFloat      := 0; //    ADtaSetNFCe.FieldByName('Total_retTrib_vIRRF     ').AsFloat;
  QRY_NFCeTOTAL_RETTRIB_VBCRETPREV.AsFloat := 0; //    ADtaSetNFCe.FieldByName('Total_retTrib_vBCRetPrev').AsFloat;
  QRY_NFCeTOTAL_RETTRIB_VRETPREV.AsFloat   := 0; //    ADtaSetNFCe.FieldByName('Total_retTrib_vRetPrev  ').AsFloat;
  QRY_NFCe.Post;

  //Atualiza a tabela NUMERO FISCAL
  QRY_Aux.Close;
  QRY_Aux.SQL.Clear;
  QRY_Aux.SQL.Add(' update numerofiscal nf set nf.NUMEROATUAL = :NumFiscal');
  QRY_Aux.SQL.Add('  where idempresa = :idempresa');
  QRY_Aux.SQL.Add('  and nf.nomepdv = :nomepdv');
  QRY_Aux.SQL.Add('  and nf.modulo = :modulo');
  QRY_Aux.SQL.Add('  and nf.tiponfenfce = :tiponfenfce');
  QRY_Aux.SQL.Add('  and nf.status = :status');
  QRY_Aux.Params[0].AsInteger := FNumFiscal; // N�mero Atual j� incrementado
  QRY_Aux.Params[1].AsInteger := 1;
  QRY_Aux.Params[2].AsString  := NOME_PDV;
  QRY_Aux.Params[3].AsString  := 'PDV';
  QRY_Aux.Params[4].AsString  := 'NFCE';
  QRY_Aux.Params[5].AsString  := 'ATIVO';
  QRY_Aux.ExecSQL;


  //Emite o Documento Fiscal. ( Depois retirar desse Local )
  GET_NFCe(QRY_NFCeIDNFCE.AsInteger);
  ViewACBrFiscal := TViewACBrFiscal.Create(Self, QRY_NFCe, QRY_NFCeItens, TipoDocFiscalToStr(tfNFCe));

end;

procedure TServiceCadastro.PUT_Venda(DataSetCabecalho, DataSetItens: TDataSet);
Var
  ValorBruto, ValorDesconto, ValorLiquido: double;
begin // inserindo a venda

  ValorBruto    := 0;
  ValorDesconto := 0;
  ValorLiquido  := 0;

  //salvando o cabe�alho da venda
  QRY_Venda.Close;
  QRY_Venda.Open();
  QRY_Venda.Insert;
  QRY_VendaNUM_CAIXA.AsInteger          := NUM_CAIXA;
  QRY_VendaDTAVENDA.AsDateTime          := Date;
  QRY_VendaHRAVENDA.AsDateTime          := Time;
  QRY_VendaVLRTROCO.AsFloat             := DataSetCabecalho.FieldByName('VLRTROCO').AsFloat           ;
  QRY_VendaIDCLIENTE.AsInteger          := DataSetCabecalho.FieldByName('IDCLIENTE').AsInteger        ;
  QRY_VendaIDVENDEDOR.AsInteger         := DataSetCabecalho.FieldByName('IDVENDEDOR').AsInteger       ;          ;
  QRY_VendaVLRDESCONTO.AsFloat          := DataSetCabecalho.FieldByName('VLRDESCONTO').AsFloat        ;
  QRY_VendaVLRLIQUIDO.AsFloat           := DataSetCabecalho.FieldByName('VLRLIQUIDO').AsFloat         ;
  QRY_VendaVLRBRUTO.AsFloat             := QRY_VendaVLRLIQUIDO.AsFloat + QRY_VendaVLRDESCONTO.AsFloat ; //  DataSetCabecalho.FieldByName('VLRBRUTO').AsFloat           ;
  QRY_VendaORIGEMVENDA.AsString         := DataSetCabecalho.FieldByName('ORIGEMVENDA').AsString       ;
//  QRY_VendaNUMNFE.AsInteger             := DataSetCabecalho.FieldByName('NUMNFE').AsInteger           ;
  QRY_VendaSTATUS.AsString              := DataSetCabecalho.FieldByName('STATUS').AsString            ;
  QRY_VendaOBSERVACAO.AsString          := DataSetCabecalho.FieldByName('OBSERVACAO').AsString        ;
  QRY_VendaIDFILIAL.AsInteger           := DataSetCabecalho.FieldByName('IDFILIAL').AsInteger         ;
  QRY_VendaIDSETOR.AsInteger            := DataSetCabecalho.FieldByName('IDSETOR').AsInteger          ;
  QRY_VendaIDTIPODOCUMENTO.AsInteger    := DataSetCabecalho.FieldByName('IDTIPODOCUMENTO').AsInteger  ;
  QRY_Venda.Post;

  DataSetItens.First;
  while not DataSetItens.Eof do
  begin

    QRY_vendaItem.Close;
    QRY_vendaItem.Open();
    QRY_vendaItem.Insert;

    QRY_VendaItemIDVENDA.AsInteger          := QRY_VendaIDVENDA.AsInteger;
    QRY_vendaItemPROD_NITEM.AsInteger       := DataSetItens.FieldByName('PROD_NITEM').AsInteger                ;
    QRY_VendaItemIDPRODUTO.AsInteger        := DataSetItens.FieldByName('IDPRODUTO').AsInteger                 ;
    QRY_VendaItemIDPRODUTODETALHE.AsInteger := DataSetItens.FieldByName('IDPRODUTODETALHE').AsInteger          ;
    QRY_vendaItemPROD_CEAN.AsString         := DataSetItens.FieldByName('PROD_CEAN').AsString                  ;
    QRY_vendaItemPROD_XPROD.AsString        := DataSetItens.FieldByName('PROD_XPROD').AsString                 ;
    QRY_vendaItemPROD_NCM.AsString          := DataSetItens.FieldByName('PROD_NCM').AsString                   ;
    QRY_vendaItemPROD_EXTIPI.AsString       := DataSetItens.FieldByName('PROD_EXTIPI').AsString                ;
    QRY_vendaItemPROD_CFOP.AsString         := DataSetItens.FieldByName('PROD_CFOP').AsString                  ;
    QRY_vendaItemPROD_UCOM.AsString         := DataSetItens.FieldByName('PROD_UCOM').AsString                  ;
    QRY_vendaItemPROD_QCOM.AsFloat          := DataSetItens.FieldByName('PROD_QCOM').AsFloat                   ;
    QRY_vendaItemPROD_VUNCOM.AsFloat        := DataSetItens.FieldByName('PROD_VUNCOM').AsFloat                 ;
    QRY_vendaItemPROD_VPROD.AsFloat         := DataSetItens.FieldByName('PROD_VPROD').AsFloat                  ;
    QRY_vendaItemPROD_CEANTRIB.AsString     := DataSetItens.FieldByName('PROD_CEANTRIB').AsString              ;
    QRY_vendaItemPROD_UTRIB.AsString        := DataSetItens.FieldByName('PROD_UTRIB').AsString                 ;
    QRY_vendaItemPROD_QTRIB.AsFloat         := DataSetItens.FieldByName('PROD_QTRIB').AsFloat                  ;
    QRY_vendaItemPROD_VUNTRIB.AsFloat       := DataSetItens.FieldByName('PROD_VUNTRIB').AsFloat                ;
    QRY_vendaItemPROD_VOUTRO.AsFloat        := DataSetItens.FieldByName('PROD_VOUTRO').AsFloat                 ;
    QRY_vendaItemPROD_VFRETE.AsFloat        := DataSetItens.FieldByName('PROD_VFRETE').AsFloat                 ;
    QRY_vendaItemPROD_VSEG.AsFloat          := DataSetItens.FieldByName('PROD_VSEG').AsFloat                   ;
    QRY_vendaItemPROD_VDESC.AsFloat         := DataSetItens.FieldByName('PROD_VDESC').AsFloat                  ;
    QRY_vendaItemPROD_CEST.AsString         := DataSetItens.FieldByName('PROD_CEST').AsString                  ;
    QRY_vendaItemPROD_INFADPROD.AsString    := DataSetItens.FieldByName('PROD_INFADPROD').AsString             ;
    QRY_vendaItemPROD_CBARRA.AsString       := DataSetItens.FieldByName('PROD_CBARRA').AsString                ;
    QRY_vendaItemPROD_CBARRATRIB.AsString   := DataSetItens.FieldByName('PROD_CBARRATRIB').AsString            ;

    QRY_vendaItem.Post;

    //=============ESTOQUE================

      QRY_MovimentoEstoque.Close;
      QRY_MovimentoEstoque.Open();
      QRY_MovimentoEstoque.Insert;
      QRY_MovimentoEstoqueIDPRODUTO.AsInteger      := QRY_VendaItemIDPRODUTO.AsInteger;
      QRY_MovimentoEstoqueIDPRODUTOITENS.AsInteger := QRY_VendaItemIDPRODUTODETALHE.AsInteger;
      QRY_MovimentoEstoquePRODUTO.AsString         := QRY_vendaItemPROD_XPROD.AsString;
      QRY_MovimentoEstoqueQUANTIDADE.AsFloat       := QRY_vendaItemPROD_QCOM.AsFloat;
      QRY_MovimentoEstoqueIDMOVIMENTO.AsInteger    := 1; //VENDA
      QRY_MovimentoEstoqueIDFILIAL.AsInteger       := 1; // Filial
      QRY_MovimentoEstoqueDTAMOVIMENTO.AsDateTime  := Date;
      QRY_MovimentoEstoqueHRAMOVIMENTO.AsDateTime  := Now;
      QRY_MovimentoEstoque.Post;

    //Atualiza o Estoque
    PUT_Estoque(
      QRY_VendaItemIDPRODUTODETALHE.AsInteger,
      QRY_vendaItemPROD_QCOM.AsFloat,
      'SAIDA'
    );

    //====================================

    ValorBruto    := ValorBruto     + QRY_vendaItemPROD_VPROD.AsFloat;
    ValorDesconto := ValorDesconto  + QRY_vendaItemPROD_VDESC.AsFloat;
    ValorLiquido  := ValorLiquido   + QRY_vendaItemPROD_VPROD.AsFloat;

    DataSetItens.Next;

  end;

  // Atualiza o cabe�alho da venda
  QRY_Venda.Edit;
  QRY_VendaVLRBRUTO.AsFloat             := ValorBruto           ;
  QRY_VendaVLRDESCONTO.AsFloat          := ValorDesconto        ;
  QRY_VendaVLRLIQUIDO.AsFloat           := ValorLiquido         ;
  QRY_Venda.Post;



  FNumVenda := 0;
  FNumVenda := QRY_VendaIDVENDA.AsInteger;

end;

procedure TServiceCadastro.DataModuleCreate(Sender: TObject);
begin  //create
  inherited;
  QRY_Empresa.Close;
  QRY_Empresa.Params[0].AsInteger := 1;
  QRY_Empresa.Open();
end;

procedure TServiceCadastro.PUT_Estoque(AIdProdutoDetalhe: integer; AQuantidade: Double; AEntradaSaida: string);
begin // Atualiza o Estoque

  if AEntradaSaida = 'ENTRADA' then
  begin
    QRY_Aux.Close;
    QRY_Aux.SQL.Clear;
    QRY_Aux.SQL.Add('update ESTPRODUTOSITENS set estoque = coalesce(estoque, 0) + :estoque');
    QRY_Aux.SQL.Add('where idprodutoitem = :iddetalhe');
    QRY_Aux.Params[0].AsFloat   := AQuantidade;
    QRY_Aux.Params[1].AsInteger := AIdProdutoDetalhe;
    QRY_Aux.ExecSQL;
  end;

  if AEntradaSaida = 'SAIDA' then
  begin
    QRY_Aux.Close;
    QRY_Aux.SQL.Clear;
    QRY_Aux.SQL.Add('update ESTPRODUTOSITENS set estoque = coalesce(estoque, 0) - :estoque');
    QRY_Aux.SQL.Add('where idprodutoitem = :iddetalhe');
    QRY_Aux.Params[0].AsFloat   := AQuantidade;
    QRY_Aux.Params[1].AsInteger := AIdProdutoDetalhe;
    QRY_Aux.ExecSQL;
  end;

end;

end.
