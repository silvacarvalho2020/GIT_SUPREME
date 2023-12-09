inherited ServiceCadastro: TServiceCadastro
  Height = 870
  Width = 1520
  inherited FDConn: TFDConnection
    Top = 40
  end
  object QRY_Empresa: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from  empresa where idempresa = :empresa')
    Left = 136
    Top = 40
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_EmpresaIDEMPRESA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_EmpresaRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 200
    end
    object QRY_EmpresaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 200
    end
    object QRY_EmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 50
    end
    object QRY_EmpresaIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 50
    end
    object QRY_EmpresaFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 50
    end
    object QRY_EmpresaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
    end
    object QRY_EmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 200
    end
    object QRY_EmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 50
    end
    object QRY_EmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 100
    end
    object QRY_EmpresaCODIGOIBGE: TIntegerField
      FieldName = 'CODIGOIBGE'
      Origin = 'CODIGOIBGE'
    end
    object QRY_EmpresaCRT: TIntegerField
      FieldName = 'CRT'
      Origin = 'CRT'
    end
    object QRY_EmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 100
    end
    object QRY_EmpresaESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 50
    end
    object QRY_EmpresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 100
    end
  end
  object QRY_AbrirCaixa: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from FINANABRIRCAIXA where idabrircaixa = :numcaixa')
    Left = 136
    Top = 112
    ParamData = <
      item
        Name = 'NUMCAIXA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_AbrirCaixaIDABRIRCAIXA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDABRIRCAIXA'
      Origin = 'IDABRIRCAIXA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_AbrirCaixaDTAABRE: TDateField
      FieldName = 'DTAABRE'
      Origin = 'DTAABRE'
    end
    object QRY_AbrirCaixaHRAABRE: TTimeField
      FieldName = 'HRAABRE'
      Origin = 'HRAABRE'
    end
    object QRY_AbrirCaixaVALORINICIAL: TBCDField
      FieldName = 'VALORINICIAL'
      Origin = 'VALORINICIAL'
      Precision = 18
    end
    object QRY_AbrirCaixaDTAFECHA: TDateField
      FieldName = 'DTAFECHA'
      Origin = 'DTAFECHA'
    end
    object QRY_AbrirCaixaHRAFECHA: TTimeField
      FieldName = 'HRAFECHA'
      Origin = 'HRAFECHA'
    end
    object QRY_AbrirCaixaVALORFINAL: TBCDField
      FieldName = 'VALORFINAL'
      Origin = 'VALORFINAL'
      Precision = 18
    end
    object QRY_AbrirCaixaUSUARIOCAIXA: TIntegerField
      FieldName = 'USUARIOCAIXA'
      Origin = 'USUARIOCAIXA'
    end
    object QRY_AbrirCaixaSTATUSCAIXA: TStringField
      FieldName = 'STATUSCAIXA'
      Origin = 'STATUSCAIXA'
      Size = 50
    end
    object QRY_AbrirCaixaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 200
    end
    object QRY_AbrirCaixaNOMEUSUARIOCAIXA: TStringField
      FieldName = 'NOMEUSUARIOCAIXA'
      Origin = 'NOMEUSUARIOCAIXA'
      Size = 100
    end
  end
  object QRY_Produto: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select'
      ' pr.*,'
      ' pi.*'
      'from estprodutos pr'
      'inner join estprodutositens pi'
      'on (pr.idproduto = pi.idproduto)'
      'where pr.codbarras = :codbarras'
      'and pi.idfilial = :idfilial')
    Left = 136
    Top = 176
    ParamData = <
      item
        Name = 'CODBARRAS'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = Null
      end
      item
        Name = 'IDFILIAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRY_ProdutoIDPRODUTO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDPRODUTO'
      Origin = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_ProdutoIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
    end
    object QRY_ProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
    end
    object QRY_ProdutoIDSUBGRUPO: TIntegerField
      FieldName = 'IDSUBGRUPO'
      Origin = 'IDSUBGRUPO'
    end
    object QRY_ProdutoIDMARCA: TIntegerField
      FieldName = 'IDMARCA'
      Origin = 'IDMARCA'
    end
    object QRY_ProdutoIDFABRICANTE: TIntegerField
      FieldName = 'IDFABRICANTE'
      Origin = 'IDFABRICANTE'
    end
    object QRY_ProdutoIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
      Origin = 'IDFORNECEDOR'
    end
    object QRY_ProdutoIDUNIDADE: TIntegerField
      FieldName = 'IDUNIDADE'
      Origin = 'IDUNIDADE'
    end
    object QRY_ProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 50
    end
    object QRY_ProdutoCODBARRAS: TStringField
      FieldName = 'CODBARRAS'
      Origin = 'CODBARRAS'
      Size = 50
    end
    object QRY_ProdutoPERMITEDESCONTO: TStringField
      FieldName = 'PERMITEDESCONTO'
      Origin = 'PERMITEDESCONTO'
      Size = 1
    end
    object QRY_ProdutoDESCMAXIMO: TBCDField
      FieldName = 'DESCMAXIMO'
      Origin = 'DESCMAXIMO'
      Precision = 18
    end
    object QRY_ProdutoPAGARCOMISSAO: TStringField
      FieldName = 'PAGARCOMISSAO'
      Origin = 'PAGARCOMISSAO'
      Size = 1
    end
    object QRY_ProdutoCOMISSAOAVISTA: TBCDField
      FieldName = 'COMISSAOAVISTA'
      Origin = 'COMISSAOAVISTA'
      Precision = 18
    end
    object QRY_ProdutoNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
    end
    object QRY_ProdutoDATAHORACADASTRO: TSQLTimeStampField
      FieldName = 'DATAHORACADASTRO'
      Origin = 'DATAHORACADASTRO'
    end
    object QRY_ProdutoDATAHORAALTERACAO: TSQLTimeStampField
      FieldName = 'DATAHORAALTERACAO'
      Origin = 'DATAHORAALTERACAO'
    end
    object QRY_ProdutoATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 50
    end
    object QRY_ProdutoORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
    end
    object QRY_ProdutoDESCCOMPRA: TBCDField
      FieldName = 'DESCCOMPRA'
      Origin = 'DESCCOMPRA'
      Precision = 18
    end
    object QRY_ProdutoLOCALIZACAO: TIntegerField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
    end
    object QRY_ProdutoLOCALIZACAOIMPRESSAO: TIntegerField
      FieldName = 'LOCALIZACAOIMPRESSAO'
      Origin = 'LOCALIZACAOIMPRESSAO'
    end
    object QRY_ProdutoINFADICIONAIS: TStringField
      FieldName = 'INFADICIONAIS'
      Origin = 'INFADICIONAIS'
      Size = 255
    end
    object QRY_ProdutoAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 255
    end
    object QRY_ProdutoPOSSUIDERIVADOS: TStringField
      FieldName = 'POSSUIDERIVADOS'
      Origin = 'POSSUIDERIVADOS'
      Size = 1
    end
    object QRY_ProdutoCSTPISCOFINSENTRADA: TIntegerField
      FieldName = 'CSTPISCOFINSENTRADA'
      Origin = 'CSTPISCOFINSENTRADA'
    end
    object QRY_ProdutoCSTPISCOFINSSAIDA: TIntegerField
      FieldName = 'CSTPISCOFINSSAIDA'
      Origin = 'CSTPISCOFINSSAIDA'
    end
    object QRY_ProdutoCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
    end
    object QRY_ProdutoIDUSUARIOCADASTRO: TIntegerField
      FieldName = 'IDUSUARIOCADASTRO'
      Origin = 'IDUSUARIOCADASTRO'
    end
    object QRY_ProdutoIDUSUARIOALTERACAO: TIntegerField
      FieldName = 'IDUSUARIOALTERACAO'
      Origin = 'IDUSUARIOALTERACAO'
    end
    object QRY_ProdutoIDSETOR: TIntegerField
      FieldName = 'IDSETOR'
      Origin = 'IDSETOR'
    end
    object QRY_ProdutoCODBARRASCXA: TStringField
      FieldName = 'CODBARRASCXA'
      Origin = 'CODBARRASCXA'
      Size = 15
    end
    object QRY_ProdutoFOTO2: TStringField
      FieldName = 'FOTO2'
      Origin = 'FOTO2'
      Size = 255
    end
    object QRY_ProdutoFOTO3: TStringField
      FieldName = 'FOTO3'
      Origin = 'FOTO3'
      Size = 255
    end
    object QRY_ProdutoFOTO1: TStringField
      FieldName = 'FOTO1'
      Origin = 'FOTO1'
      Size = 255
    end
    object QRY_ProdutoREFERENCIA2: TStringField
      FieldName = 'REFERENCIA2'
      Origin = 'REFERENCIA2'
    end
    object QRY_ProdutoREFERENCIA3: TStringField
      FieldName = 'REFERENCIA3'
      Origin = 'REFERENCIA3'
    end
    object QRY_ProdutoIDANP: TIntegerField
      FieldName = 'IDANP'
      Origin = 'IDANP'
    end
    object QRY_ProdutoCOMISSAOAPRAZO: TBCDField
      FieldName = 'COMISSAOAPRAZO'
      Origin = 'COMISSAOAPRAZO'
      Precision = 18
    end
    object QRY_ProdutoPESOUNI: TBCDField
      FieldName = 'PESOUNI'
      Origin = 'PESOUNI'
      Precision = 18
    end
    object QRY_ProdutoIDPRODUTOITEM: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDPRODUTOITEM'
      Origin = 'IDPRODUTOITEM'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRY_ProdutoIDPRODUTO_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDPRODUTO_1'
      Origin = 'IDPRODUTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRY_ProdutoVLRCUSTOINICIAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLRCUSTOINICIAL'
      Origin = 'VLRCUSTOINICIAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoVLRCUSTOENTRADA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLRCUSTOENTRADA'
      Origin = 'VLRCUSTOENTRADA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoVLRVENDAVISTA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLRVENDAVISTA'
      Origin = 'VLRVENDAVISTA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoVLRVENDAPRAZO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLRVENDAPRAZO'
      Origin = 'VLRVENDAPRAZO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoVLRATACADO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLRATACADO'
      Origin = 'VLRATACADO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoESTOQUEMINIMO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUEMINIMO'
      Origin = 'ESTOQUEMINIMO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoESTOQUEMAXIMO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUEMAXIMO'
      Origin = 'ESTOQUEMAXIMO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoICMSCOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSCOMPRA'
      Origin = 'ICMSCOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoREDUCAOBASECALCULOICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REDUCAOBASECALCULOICMS'
      Origin = 'REDUCAOBASECALCULOICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoMVACOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MVACOMPRA'
      Origin = 'MVACOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoICMSSTCOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSSTCOMPRA'
      Origin = 'ICMSSTCOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoVLRCUSTOOPERACIONAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLRCUSTOOPERACIONAL'
      Origin = 'VLRCUSTOOPERACIONAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoREDUCAOBASECALCULOICMSST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REDUCAOBASECALCULOICMSST'
      Origin = 'REDUCAOBASECALCULOICMSST'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoVLRICMSST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLRICMSST'
      Origin = 'VLRICMSST'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoIPICOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IPICOMPRA'
      Origin = 'IPICOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoFRETECOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'FRETECOMPRA'
      Origin = 'FRETECOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoVLRFRETECOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLRFRETECOMPRA'
      Origin = 'VLRFRETECOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoVLROUTROSCUSTOS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLROUTROSCUSTOS'
      Origin = 'VLROUTROSCUSTOS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoVLRPRECOCAIXA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLRPRECOCAIXA'
      Origin = 'VLRPRECOCAIXA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoPESOCAIXA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESOCAIXA'
      Origin = 'PESOCAIXA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoQTDCAIXA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QTDCAIXA'
      Origin = 'QTDCAIXA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoIDPISCOFINS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDPISCOFINS'
      Origin = 'IDPISCOFINS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRY_ProdutoIDTRIBUTACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDTRIBUTACAO'
      Origin = 'IDTRIBUTACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRY_ProdutoIDFILIAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDFILIAL'
      Origin = 'IDFILIAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRY_ProdutoIDGRUPO: TIntegerField
      FieldName = 'IDGRUPO'
      Origin = 'IDGRUPO'
    end
    object QRY_ProdutoPRODUTOBALANCA: TStringField
      FieldName = 'PRODUTOBALANCA'
      Origin = 'PRODUTOBALANCA'
      Size = 50
    end
    object QRY_ProdutoIDORIGEMMERCADORIA: TIntegerField
      FieldName = 'IDORIGEMMERCADORIA'
      Origin = 'IDORIGEMMERCADORIA'
    end
    object QRY_ProdutoIDEMBALAGEM: TIntegerField
      FieldName = 'IDEMBALAGEM'
      Origin = 'IDEMBALAGEM'
    end
    object QRY_ProdutoDESCRICAONCM: TStringField
      FieldName = 'DESCRICAONCM'
      Origin = 'DESCRICAONCM'
      Size = 200
    end
    object QRY_ProdutoVENDEFRACIONADO: TStringField
      FieldName = 'VENDEFRACIONADO'
      Origin = 'VENDEFRACIONADO'
      Size = 50
    end
    object QRY_ProdutoPERCICMSCOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERCICMSCOMPRA'
      Origin = 'PERCICMSCOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoPERCICMSSTCOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERCICMSSTCOMPRA'
      Origin = 'PERCICMSSTCOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoALIQPISCOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQPISCOMPRA'
      Origin = 'ALIQPISCOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoVALORFRETECOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORFRETECOMPRA'
      Origin = 'VALORFRETECOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoPERCREDBASECALCULOICMSCOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERCREDBASECALCULOICMSCOMPRA'
      Origin = 'PERCREDBASECALCULOICMSCOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoPERCREDBASECALCULOICMSSTCOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERCREDBASECALCULOICMSSTCOMPRA'
      Origin = 'PERCREDBASECALCULOICMSSTCOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoALIQCOFINSCOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQCOFINSCOMPRA'
      Origin = 'ALIQCOFINSCOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoALIQIPICOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQIPICOMPRA'
      Origin = 'ALIQIPICOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoVALORICMSSTCOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORICMSSTCOMPRA'
      Origin = 'VALORICMSSTCOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoPERCFRETECOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERCFRETECOMPRA'
      Origin = 'PERCFRETECOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoPERCOUTROSCOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERCOUTROSCOMPRA'
      Origin = 'PERCOUTROSCOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoVLRPERCMARGEMLUCRO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLRPERCMARGEMLUCRO'
      Origin = 'VLRPERCMARGEMLUCRO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoVLRLUCRO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLRLUCRO'
      Origin = 'VLRLUCRO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoESTOQUE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ProdutoPRECOLIVRE: TStringField
      FieldName = 'PRECOLIVRE'
      Origin = 'PRECOLIVRE'
    end
  end
  object QRY_Venda: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'SELECT'
      '  EV.*,'
      '  NF.retorno_cstat STATUS_NF,'
      '  NF.retorno_xmsg  MSG_NF,'
      '  NC.retorno_cstat STATUS_NFCE,'
      '  NC.retorno_xmotivo MSG_NFCE'
      'FROM ESTVENDA EV'
      'LEFT JOIN NFE NF'
      'ON (EV.numnfe = NF.ide_nnf)'
      'LEFT JOIN NFCE NC'
      'ON (EV.numnfce = NC.ide_nnf)'
      'ORDER BY EV.idvenda DESC')
    Left = 264
    Top = 48
    object QRY_VendaIDVENDA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDVENDA'
      Origin = 'IDVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_VendaDTAVENDA: TDateField
      FieldName = 'DTAVENDA'
      Origin = 'DTAVENDA'
    end
    object QRY_VendaHRAVENDA: TTimeField
      FieldName = 'HRAVENDA'
      Origin = 'HRAVENDA'
    end
    object QRY_VendaIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = 'IDCLIENTE'
    end
    object QRY_VendaIDVENDEDOR: TIntegerField
      FieldName = 'IDVENDEDOR'
      Origin = 'IDVENDEDOR'
    end
    object QRY_VendaVLRBRUTO: TBCDField
      FieldName = 'VLRBRUTO'
      Origin = 'VLRBRUTO'
      currency = True
      Precision = 18
    end
    object QRY_VendaVLRDESCONTO: TBCDField
      FieldName = 'VLRDESCONTO'
      Origin = 'VLRDESCONTO'
      currency = True
      Precision = 18
    end
    object QRY_VendaVLRLIQUIDO: TBCDField
      FieldName = 'VLRLIQUIDO'
      Origin = 'VLRLIQUIDO'
      currency = True
      Precision = 18
    end
    object QRY_VendaORIGEMVENDA: TStringField
      FieldName = 'ORIGEMVENDA'
      Origin = 'ORIGEMVENDA'
      Size = 50
    end
    object QRY_VendaNUMNFE: TIntegerField
      Alignment = taCenter
      FieldName = 'NUMNFE'
      Origin = 'NUMNFE'
    end
    object QRY_VendaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 50
    end
    object QRY_VendaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 200
    end
    object QRY_VendaIDFILIAL: TIntegerField
      FieldName = 'IDFILIAL'
      Origin = 'IDFILIAL'
    end
    object QRY_VendaIDSETOR: TIntegerField
      FieldName = 'IDSETOR'
      Origin = 'IDSETOR'
    end
    object QRY_VendaIDTIPODOCUMENTO: TIntegerField
      FieldName = 'IDTIPODOCUMENTO'
      Origin = 'IDTIPODOCUMENTO'
    end
    object QRY_VendaMODELOFISCAL: TIntegerField
      Alignment = taCenter
      FieldName = 'MODELOFISCAL'
      Origin = 'MODELOFISCAL'
    end
    object QRY_VendaNUMNFCE: TIntegerField
      Alignment = taCenter
      FieldName = 'NUMNFCE'
      Origin = 'NUMNFCE'
    end
    object QRY_VendaNUM_CAIXA: TIntegerField
      FieldName = 'NUM_CAIXA'
      Origin = 'NUM_CAIXA'
    end
    object QRY_VendaVLRTROCO: TBCDField
      FieldName = 'VLRTROCO'
      Origin = 'VLRTROCO'
      Precision = 18
    end
    object QRY_VendaSTATUS_NF: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'STATUS_NF'
      Origin = 'RETORNO_CSTAT'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRY_VendaMSG_NF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MSG_NF'
      Origin = 'RETORNO_XMSG'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object QRY_VendaSTATUS_NFCE: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'STATUS_NFCE'
      Origin = 'RETORNO_CSTAT'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRY_VendaMSG_NFCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MSG_NFCE'
      Origin = 'RETORNO_XMOTIVO'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
  end
  object QRY_VendaItem: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select vi.* from estvendaitem vi where vi.idvenda = :idvenda')
    Left = 264
    Top = 104
    ParamData = <
      item
        Name = 'IDVENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_VendaItemIDVENDAITEM: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDVENDAITEM'
      Origin = 'IDVENDAITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_VendaItemIDVENDA: TIntegerField
      FieldName = 'IDVENDA'
      Origin = 'IDVENDA'
    end
    object QRY_VendaItemIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = 'IDPRODUTO'
    end
    object QRY_VendaItemIDPRODUTODETALHE: TIntegerField
      FieldName = 'IDPRODUTODETALHE'
      Origin = 'IDPRODUTODETALHE'
    end
    object QRY_VendaItemPROD_NITEM: TIntegerField
      FieldName = 'PROD_NITEM'
      Origin = 'PROD_NITEM'
    end
    object QRY_VendaItemPROD_CEAN: TStringField
      FieldName = 'PROD_CEAN'
      Origin = 'PROD_CEAN'
      Size = 50
    end
    object QRY_VendaItemPROD_XPROD: TStringField
      FieldName = 'PROD_XPROD'
      Origin = 'PROD_XPROD'
      Size = 200
    end
    object QRY_VendaItemPROD_NCM: TStringField
      FieldName = 'PROD_NCM'
      Origin = 'PROD_NCM'
      Size = 50
    end
    object QRY_VendaItemPROD_EXTIPI: TStringField
      FieldName = 'PROD_EXTIPI'
      Origin = 'PROD_EXTIPI'
      Size = 100
    end
    object QRY_VendaItemPROD_CFOP: TStringField
      FieldName = 'PROD_CFOP'
      Origin = 'PROD_CFOP'
      Size = 10
    end
    object QRY_VendaItemPROD_UCOM: TStringField
      FieldName = 'PROD_UCOM'
      Origin = 'PROD_UCOM'
      Size = 10
    end
    object QRY_VendaItemPROD_QCOM: TBCDField
      FieldName = 'PROD_QCOM'
      Origin = 'PROD_QCOM'
      DisplayFormat = '###,###,0.00'
      Precision = 18
    end
    object QRY_VendaItemPROD_VUNCOM: TBCDField
      FieldName = 'PROD_VUNCOM'
      Origin = 'PROD_VUNCOM'
      DisplayFormat = '###,###,0.00'
      Precision = 18
    end
    object QRY_VendaItemPROD_VPROD: TBCDField
      FieldName = 'PROD_VPROD'
      Origin = 'PROD_VPROD'
      DisplayFormat = '###,###,0.00'
      Precision = 18
    end
    object QRY_VendaItemPROD_CEANTRIB: TStringField
      FieldName = 'PROD_CEANTRIB'
      Origin = 'PROD_CEANTRIB'
      Size = 50
    end
    object QRY_VendaItemPROD_UTRIB: TStringField
      FieldName = 'PROD_UTRIB'
      Origin = 'PROD_UTRIB'
      Size = 50
    end
    object QRY_VendaItemPROD_QTRIB: TBCDField
      FieldName = 'PROD_QTRIB'
      Origin = 'PROD_QTRIB'
      Precision = 18
    end
    object QRY_VendaItemPROD_VUNTRIB: TBCDField
      FieldName = 'PROD_VUNTRIB'
      Origin = 'PROD_VUNTRIB'
      Precision = 18
    end
    object QRY_VendaItemPROD_VOUTRO: TBCDField
      FieldName = 'PROD_VOUTRO'
      Origin = 'PROD_VOUTRO'
      Precision = 18
    end
    object QRY_VendaItemPROD_VFRETE: TBCDField
      FieldName = 'PROD_VFRETE'
      Origin = 'PROD_VFRETE'
      Precision = 18
    end
    object QRY_VendaItemPROD_VSEG: TBCDField
      FieldName = 'PROD_VSEG'
      Origin = 'PROD_VSEG'
      Precision = 18
    end
    object QRY_VendaItemPROD_VDESC: TBCDField
      FieldName = 'PROD_VDESC'
      Origin = 'PROD_VDESC'
      Precision = 18
    end
    object QRY_VendaItemPROD_CEST: TStringField
      FieldName = 'PROD_CEST'
      Origin = 'PROD_CEST'
      Size = 50
    end
    object QRY_VendaItemPROD_INFADPROD: TStringField
      FieldName = 'PROD_INFADPROD'
      Origin = 'PROD_INFADPROD'
      Size = 200
    end
    object QRY_VendaItemPROD_CBARRA: TStringField
      FieldName = 'PROD_CBARRA'
      Origin = 'PROD_CBARRA'
      Size = 50
    end
    object QRY_VendaItemPROD_CBARRATRIB: TStringField
      FieldName = 'PROD_CBARRATRIB'
      Origin = 'PROD_CBARRATRIB'
      Size = 50
    end
  end
  object QRY_FormasPGTO: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from FINANFORMASPGTO order by idpgto desc')
    Left = 264
    Top = 169
    object QRY_FormasPGTOIDPGTO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDPGTO'
      Origin = 'IDPGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_FormasPGTODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object QRY_FormasPGTOMOEDA: TStringField
      FieldName = 'MOEDA'
      Origin = 'MOEDA'
      Size = 50
    end
    object QRY_FormasPGTOGERARECEBER: TStringField
      FieldName = 'GERARECEBER'
      Origin = 'GERARECEBER'
      Size = 10
    end
    object QRY_FormasPGTOIDCLIENTEPADRAO: TIntegerField
      FieldName = 'IDCLIENTEPADRAO'
      Origin = 'IDCLIENTEPADRAO'
    end
    object QRY_FormasPGTOTIPOPGTO: TStringField
      FieldName = 'TIPOPGTO'
      Origin = 'TIPOPGTO'
      Size = 50
    end
  end
  object QRY_receber1: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from receber1 where rc1_codigo = :codigo')
    Left = 504
    Top = 40
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_receber1RC1_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'RC1_CODIGO'
      Origin = 'RC1_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_receber1RC1_NUMDOCTO: TStringField
      FieldName = 'RC1_NUMDOCTO'
      Origin = 'RC1_NUMDOCTO'
      Size = 50
    end
    object QRY_receber1RC1_CLIENTE: TIntegerField
      FieldName = 'RC1_CLIENTE'
      Origin = 'RC1_CLIENTE'
    end
    object QRY_receber1RC1_VALOR: TFMTBCDField
      FieldName = 'RC1_VALOR'
      Origin = 'RC1_VALOR'
      Precision = 18
      Size = 2
    end
  end
  object QRY_receber2: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from receber2 where rc2_codigo = :codigo')
    Left = 504
    Top = 104
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_receber2RC2_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'RC2_CODIGO'
      Origin = 'RC2_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_receber2RC2_NUMDOCTO: TStringField
      FieldName = 'RC2_NUMDOCTO'
      Origin = 'RC2_NUMDOCTO'
      Size = 50
    end
    object QRY_receber2RC2_DATA: TDateField
      FieldName = 'RC2_DATA'
      Origin = 'RC2_DATA'
    end
    object QRY_receber2RC2_VALORPARCELA: TFMTBCDField
      FieldName = 'RC2_VALORPARCELA'
      Origin = 'RC2_VALORPARCELA'
      Precision = 18
      Size = 2
    end
    object QRY_receber2RC2_PARCELA: TStringField
      FieldName = 'RC2_PARCELA'
      Origin = 'RC2_PARCELA'
    end
    object QRY_receber2RC2_VENCIMENTO: TDateField
      FieldName = 'RC2_VENCIMENTO'
      Origin = 'RC2_VENCIMENTO'
    end
    object QRY_receber2RC2_VALORHAVER: TFMTBCDField
      FieldName = 'RC2_VALORHAVER'
      Origin = 'RC2_VALORHAVER'
      Precision = 18
      Size = 2
    end
    object QRY_receber2RC2_VALORSALDO: TFMTBCDField
      FieldName = 'RC2_VALORSALDO'
      Origin = 'RC2_VALORSALDO'
      Precision = 18
      Size = 2
    end
  end
  object frxReport: TfrxReport
    Tag = 1
    Version = '2022.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44973.934910613400000000
    ReportOptions.LastChange = 45259.888736412040000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 1256
    Top = 24
    Datasets = <
      item
        DataSet = frxDBDataset_venda
        DataSetName = 'frxDBDataset_venda'
      end
      item
        DataSet = frxDBDataset_vendaItem
        DataSetName = 'frxDBDataset_vendaItem'
      end
      item
        DataSet = frxDBDataset_filial
        DataSetName = 'frxDBDataset_filial'
      end
      item
        DataSet = frxDBDataset_FormasPGTOVenda
        DataSetName = 'frxDBDataset_FormasPGTOVenda'
      end
      item
        DataSet = frxDBDataset_ClientesVenda
        DataSetName = 'frxDBDataset_ClientesVenda'
      end
      item
        DataSet = frxDBDataset_VendedorVenda
        DataSetName = 'frxDBDataset_VendedorVenda'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 72.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      TopMargin = 0.500000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Footer2: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 136.062909130000000000
        Top = 619.842920000000000000
        Width = 272.126160000000000000
        object Memo21: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 104.031540000000000000
          Width = 272.126160000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'OBRIGADO PELA PREFERENCIA')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 87.504020000000000000
          Width = 272.126160000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'www.supremesistemas.com.br')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 79.944960000000000000
          Width = 272.126160000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo65: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 119.889920000000000000
          Width = 272.126160000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VerSis: 1.0.0.0')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 60.370130000000000000
          Width = 272.126160000000000000
          Height = 13.228346460000000000
          DataField = 'RAZAOSOCIAL'
          DataSet = frxDBDataset_ClientesVenda
          DataSetName = 'frxDBDataset_ClientesVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset_ClientesVenda."RAZAOSOCIAL"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 185.716760000000000000
          Width = 83.149660000000000000
          Height = 11.338582680000000000
          DataField = 'VLRLIQUIDO'
          DataSet = frxDBDataset_venda
          DataSetName = 'frxDBDataset_venda'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset_venda."VLRLIQUIDO"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Width = 162.519790000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Recebido:')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 185.716760000000000000
          Top = 15.118120000000000000
          Width = 83.149660000000000000
          Height = 11.338582680000000000
          DataField = 'VLRTROCO'
          DataSet = frxDBDataset_venda
          DataSetName = 'frxDBDataset_venda'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset_venda."VLRTROCO"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 15.118120000000000000
          Width = 162.519790000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Troco:')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 47.692950000000000000
          Width = 272.126160000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 272.126160000000000000
        object ImgLogo: TfrxPictureView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Width = 136.063080000000000000
          Height = 49.133890000000000000
          Center = True
          DataField = 'LogoCarregado'
          DataSetName = 'Parametros'
          Frame.Typ = []
          Picture.Data = {
            0B54504E4747726170686963FEBE0000424DFEBE000000000000360000002800
            00006E0000006F0000000100200000000000C8BE000000000000000000000000
            000000000000F7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7
            F6FFF6F7F6FFF6F7F6FFF7F7F7FFF7F6F7FFF7F6F7FFF7F6F7FFF6F6F7FFF6F6
            F7FFF6F6F7FFF6F6F7FFF6F7F7FFF6F7F7FFF7F7F6FFF7F7F6FFF7F7F6FFF7F6
            F7FFF6F7F7FFF6F6F7FFF6F6F7FFF6F6F7FFF6F6F7FFF6F6F7FFF6F7F7FFF6F6
            F7FFF6F6F7FFF6F6F7FFF6F6F7FFF6F6F7FFF6F6F7FFF7F7F6FFF7F6F6FFF7F7
            F7FFF7F6F7FFF7F7F7FFF7F6F7FFF7F6F6FFF7F6F7FFF6F6F7FFF6F7F7FFF6F7
            F7FFF6F7F7FFF7F7F6FFF7F7F6FFF7F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F6FFF7F6F7FFF8F5F9FFF7F6
            F8FFF6F7F7FFF4F7F6FFF5F7F6FFF6F7F6FFF8F7F5FFF9F7F5FFF9F7F3FFFAF8
            F7FFFAF5F7FFF8F6F7FFF6F5F8FFF6F6FBFFF4F7F9FFF6FAFBFFFBFBFCFFFDFD
            FDFFFFFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FEFFFDFEFCFFFCFCFDFFFAFAFBFFF3F7FAFFF4F7F9FFF4F6F7FFF5F8F6FFF5F6
            F4FFF3F7F7FFF5F7F7FFF6F7F6FFF8F7F6FFF9F7F5FFF8F6F7FFF7F6F6FFF6F6
            F7FFF4F6F8FFF5F7F8FFF7F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F7F6FFF7F5F9FFF8F4FBFFF9F6F8FFFAF7F5FFF8F7
            F5FFF4F8F5FFF3F8F4FFF5F8F4FFF7F8F6FFF9F8F5FFF6F7F6FFF9FCFDFFFDFE
            FFFFFFFFFFFFFFFFFFFFFFFFF8FFF8EDE0FFE5D8C8FFE1CAB5FFD3B7A0FFCDAE
            93FFCAA98BFFC5A285FFC2A184FFC6A689FFC7AD91FFCCB297FFDBC5AEFFE2CF
            BEFFF3E5D6FFFFFFF7FFFFFFFFFFFFFFFEFFFFFFFBFFFBFEFBFFF0FAF9FFF3FA
            FAFFF0F6F7FFF4F6F9FFF7F6F8FFFBF7F4FFFAF7F5FFF5F7F6FFF3F7F7FFF3F6
            F8FFF7F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F6F7FFF4F9F3FFF0FBEFFFF3F8F3FFF9F6F6FFFFF4F8FFF9F4F9FFEFF6
            FBFFF3F9FDFFF9FEFFFFFBFFFFFFFCFDFBFFE7DCCEFFD0B599FFC09267FFB173
            3BFFAB5F2EFFAF5E30FFB15F2EFFB66532FFB86730FFC36A2EFFC56A2CFFC469
            2CFFC56A2DFFC4682BFFBE662AFFBF682FFFB7622DFFB46330FFB26130FFAA63
            27FFAE703DFFBB8F6AFFC8AC97FFE3CFC2FFFFF5E6FFFFFFFAFFFFFFFFFFF5F9
            FFFFECF5FFFFEDF7F8FFF1F7F7FFF7F8F5FFFCF8F2FFFDF7F2FFF6F6F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF9F8
            F7FFF9F6F6FFF0F5FCFFEAF4FFFFEFF8FEFFFBFFFFFFFFFFFFFFFDF0E3FFDABF
            A1FFBD8F65FFAA6735FFB2632CFFBC6630FFC66931FFD16D33FFCA6E35FFC76F
            37FFC67238FFC37235FFC17234FFBE6F39FFBD703CFFBD6F3CFFBD6F3BFFBD6F
            3DFFC77235FFC77133FFC77235FFC57135FFC47136FFC87032FFC46F33FFBC6B
            31FFB86A30FFB0642CFFA76030FFB2744CFFC9A385FFE9D8C5FFFFFFF2FFFBFF
            FFFFF5FBFEFFF4F7FAFFF2F4F8FFF5F6FAFFF7F7F6FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFF6F7F6FFF7F6F7FFF7F6F7FFF7F6
            F7FFF7F6F6FFF7F7F7FFF6F7F6FFF6F7F6FFF7F7F7FFF8F5F5FFFCF5FAFFF8F8
            FFFFFFFFFFFFFCF8E6FFD5B89BFFB67F5EFFA16136FFB4652DFFC36D2BFFC474
            2EFFBB7630FFBA7434FFB67336FFB27239FFB9713AFFBD7038FFBB7138FFBC71
            39FFBB7039FFC57331FFC7732FFFC7732FFFC7732FFFC7742FFFBE7137FFBB71
            39FFBB7138FFBC7138FFBC7039FFC06F3AFFC27038FFC47235FFC67331FFC773
            2FFFCA7133FFC36F34FFB66933FFA8622EFFAB6D3FFFC29E81FFF4E3CEFFFFFF
            FEFFFEFFFFFFF1F6FAFFF6F6F7FFF7F7F6FFF7F7F6FFF7F6F7FFF6F6F7FFF6F7
            F6FFF6F7F6FFF6F7F6FFF7F7F6FFF7F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F7F7FFF7F7F6FFFAF6F7FFF5F7F6FFF1F8F6FFF3F7F6FFF5F7F7FFF3F6
            F5FFF9F5F8FFF9F5FAFFF1F6F9FFF3FEFBFFFFFFFEFFF5E5D3FFBE9073FFAA61
            33FFBB652BFFC66E31FFC17034FFC17138FFC26E3AFFC26D3DFFC06D3CFFC46E
            39FFC86E36FFCC7134FFC77132FFC67332FFCA7034FFCA6D34FFCF6D37FFC06D
            37FFBD6E38FFBD6D37FFBC6C36FFBB6C36FFC47036FFC66E34FFC87032FFCB71
            32FFCD7231FFC77233FFC57338FFC07037FFBC703AFFB9703BFFBD6E3CFFC06F
            3BFFC36F38FFC06E35FFC17134FFC26B2DFFAD612BFFAE7A53FFD8C4ACFFFFFF
            F6FFFFFFFFFFF4F7FBFFF0F6FBFFF6F6F4FFFAF8F4FFF8F6F7FFF9F6F7FFF6F6
            F8FFF4F6F9FFF5F6F8FFF7F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFF8F7
            F6FFF9F5F8FFF3F8F6FFF2F8F6FFFAF5F7FFFCF4F7FFF6F6F8FFF2F4FAFFFAFA
            FDFFFFFFFFFFE9DBCDFFB18365FFA85F2FFFC56A30FFC26F37FFC56D3CFFCB6B
            3DFFBD6F3AFFB87237FFBC7336FFC07136FFC26F38FFC27037FFC36F36FFBD69
            31FFB9672EFFB3672FFFAA622EFFAB6B3BFFA76A3EFFAA7244FFAC7547FFB07A
            4BFFB27B4CFFAF794AFFA66C43FFAD6D43FFAE6B3CFFAB6531FFAC632DFFB367
            2FFFB7672EFFC26E34FFC66D32FFCC7134FFC17137FFC57037FFC56F39FFBD70
            3AFFB7713AFFBF7137FFC87035FFC26C32FFAB6230FFA16C3DFFD5BA9CFFFFFF
            F7FFF8FDFFFFF3FAFBFFF4F6F4FFFBF5F6FFFDF6F6FFFBF6F6FFF8F5F8FFF7F6
            F7FFF6F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF5F6F7FFF1F8F6FFFDF4
            F9FFFFF1FAFFFFF2FBFFFDF4FAFFFFF5F9FFFFFFFFFFE8E1C7FFB9825DFFBC5B
            33FFCB6538FFC56F36FFC17333FFBE7136FFB67238FFB47336FFC47038FFCB6D
            3AFFC56C39FFBF6A31FFB8642BFFAB6130FFB1754DFFC79672FFD3B49AFFE7D0
            BBFFF1E8D4FFF8F8E3FFFDFFEFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFEFFFFFF
            FFFFFFFFFFFFFFFFFDFFFFF7F1FFF4ECE3FFE8DACFFFDAC4A5FFCBA985FFB585
            5DFFAA6A3DFFA76130FFC26A29FFC76D2FFFC97035FFC56F37FFC17138FFC071
            36FFBE7334FFC07335FFC86D38FFCA6937FFB46528FFAE6D39FFDABB9DFFFFFF
            FDFFF5FCFFFFF4F7F7FFF5F6F7FFFAF8F4FFFFF7F0FFFEF8F2FFF6F6F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F7F7FFF6F7F7FFFBF6F6FFFCF4FAFFF8F4FBFFEBF9
            F6FFEEFFF8FFFFFDECFFBD8F74FFAF5E32FFC26C30FFC47230FFC47234FFB875
            32FFB87333FFC47137FFC57234FFC0722DFFC26A2FFFB05F2CFFA76B3BFFBE96
            71FFDDC9B0FFFDF4E2FFFFFFFAFFFBFFFFFFF7FFFFFFF8FEFCFFFAFAFAFFFBF7
            FBFFFCF5FAFFF6F6F9FFF4F7FAFFF4F5FAFFF3F6F9FFF4F5F9FFF0F7F8FFF1F8
            F8FFF4F9F9FFF6FAFBFFF8FCFBFFF7FDFFFFFDFFFFFFFFFFFFFFFFFDF0FFEFDE
            CFFFCFAB95FFAF7E5EFF9D5C2BFFBB6929FFCB6E2AFFD06C3BFFC26F34FFBD73
            32FFC17336FFC46F39FFC26E3BFFC56F30FFB3672BFFA77046FFE5CFBCFFFFFF
            FFFFF7F7FDFFEDF3FBFFF2F6F9FFF6F7F6FFF7F6F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F6FFF6F7F7FFF6F6
            F7FFF6F7F7FFF7F7F6FFFCF6F7FFF2F5FBFFF6FAFAFFFFFFF9FFDCC8AAFF9F62
            37FFB66733FFCA7036FFC57136FFBB7136FFBB7138FFBE7039FFC16E38FFBF6C
            33FFBD622EFFB35D36FFC79979FFEBDFC7FFFEFFF7FFFCFFFFFFF9FBFCFFF4FA
            FBFFF0F7FAFFEDF7FAFFEFF6F9FFF2F6F8FFF4F6F8FFF6F6F7FFF8F6F6FFFAF6
            F5FFF9F6F5FFF9F7F5FFF9F7F5FFFAF6F6FFF8F8F4FFF8F8F4FFF6F8F4FFF6F8
            F5FFF5F8F5FFF0F5FBFFF0F6FBFFF2F7F9FFF5F9F9FFF7FBFAFFFFFFFFFFFFFF
            FEFFFFFAE6FFD6BB9DFFAC7853FFA96031FFBB6933FFC67035FFC27236FFBB71
            38FFBE7039FFC37137FFC37135FFC06C31FFAD5F2AFFB98B6CFFFFF8EDFFFFFF
            FFFFEDF6F8FFF2F8F7FFF7F7F6FFF6F7F6FFF6F7F6FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F7F6FFF8F6F7FFF8F7F6FFF7F7F5FFF9F7F6FFFAF6
            F7FFF4F3F9FFF4FFFCFFFBFBE8FFBF8A68FFBF5B30FFC86D32FFC67039FFBD6F
            38FFBC7236FFBB7137FFC56E39FFD26937FFBE5F31FFAC7148FFD5BFA3FFFFFF
            F2FFFFFFFDFFFBFBFDFFFCF2FFFFF8F4FCFFF6F7F9FFFAF5F7FFFDF6F7FFFAF5
            F7FFFDF6F4FFF9F6F6FFF3F7F7FFF1FAF3FFEAF9F6FFEAF8F8FFF1F6F9FFF7F5
            F9FFF5F6F9FFF0F7F7FFF4F7F7FFF6F6F7FFF5F7F7FFF5F6F7FFF3F6F9FFFAF5
            F8FFFAF7F5FFF6F7F3FFF5F7F5FFF4F8F9FFF3F7F4FFF3F8F7FFF3F7F9FFFBFE
            FFFFFFFFFFFFF2E5C6FFBE9570FFA76231FFBE692EFFCB7232FFC77230FFC070
            39FFBB6F3BFFC37137FFCB7232FFBF6A2EFFA9653AFFE7CCB4FFFFFFFBFFF0FA
            F8FFF8F4FAFFF9F6F7FFF7F7F6FFF4F7F6FFF5F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F7F6FFFAF5F8FFF5F7F7FFF3F7F6FFF6F7F7FFF7F5F8FFFFFFFFFFEAD8
            C3FFA1683DFFBA6B34FFC47034FFBF7336FFBE703AFFC07039FFC67032FFC66E
            31FFB26131FFB07648FFE7CEAEFFFFFFF8FFFEFFFCFFF7F9F9FFF8F6F5FFF9F6
            F6FFF9F7F6FFF5F8F5FFF7F8F3FFFDF6F4FFFDF6F5FFF5F7F5FFFAF8F2FFF7F6
            F6FFF6F6F7FFFDF8F1FFF8F6F7FFF2F8F6FFF5F7F6FFFBF6F6FFFBF6F6FFF8F7
            F5FFF6F7F7FFF8F7F5FFF9F7F5FFF8F7F5FFF6F6F7FFF8F5FAFFF9F7F4FFFAF8
            F2FFFAF7F5FFF8F4F9FFFAF6F6FFFBF4F9FFFBF3FCFFF9F5F9FFF7F7F6FFF7FC
            FCFFFFFFFFFFF8F3E0FFC99F7CFFAA6131FFBE6A2FFFC57338FFC17137FFBF70
            39FFBB7039FFBE7236FFC66F34FFA95C2DFFBD9479FFFFFFF7FFFAFDFCFFF3F6
            FBFFF4F4FBFFFDF5F8FFFBF6F6FFF6F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F6FFF6F5
            FAFFF0F6FBFFEEF6FAFFF5F8F9FFFFFFFFFFD0B893FFAA5A32FFD46A39FFC171
            37FFB17438FFC56F38FFBC7530FFBA7432FFB56333FFBC6543FFE5C6ADFFFFFF
            FEFFE8FFFDFFF0F9F6FFFCF6F4FFF9F6F7FFF4F6FAFFF2F6F8FFF3F7F7FFF3F8
            F6FFF4F8F5FFF8F8F4FFF9F9F1FFF8FAF0FFF3F6F8FFF8F6F8FFF9F7F6FFF6F6
            F8FFFBF8F3FFFEF6F5FFF7F8F5FFF1F9F3FFF6F8F4FFFFF4F6FFFBF6F4FFF7F7
            F6FFF6F7F8FFF7F6F6FFF9F7F5FFF8F6F6FFF5F8F4FFF3F9F3FFF5F8F4FFF7F6
            F6FFF5F7F7FFF6F5FAFFF8F4FAFFFDF6F6FFFEF6F5FFEFF6F9FFF0F7FDFFF6F8
            FFFFFFFFFFFFFFF0EBFFC19572FFA25E2AFFC16E32FFC16F3BFFBE6E3EFFC472
            34FFC37331FFC77236FFC15F31FFB8744DFFF8F5DCFFFDFFFFFFEFF3FFFFFCF3
            FAFFFCF6F6FFF6F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F6FFF4F6FBFFEFF3F8FFF9F9
            F8FFFFFFF7FFB99176FFBA5F2AFFC27136FFBF7333FFC47234FFC66F39FFC26D
            38FFCC6A34FFAE5F32FFC6AF90FFF9FFF9FFF7FFF9FFFEF3FDFFFEEFFFFFFEF2
            FBFFFCF6F6FFF9F5F7FFF2F5FBFFF3F6FAFFF6F5F0FFFFFFFBFFFFFFFFFFF6FA
            FAFFF7FDFDFFF5FBFBFFF1F7FFFFFFFFFFFFFFFFFCFFECF3FEFFFAF8F9FFFCFA
            FEFFF1F6F8FFFCFFFFFFFEFFFFFFFFF9FFFFFEFCFEFFF4F9FFFFE8F3FDFFF3F9
            FFFFFAFBFBFFFDFEFFFFF1F7FAFFF0FAFDFFF3F9FBFFF9FAFBFFFFFFFBFFF8FE
            F8FFEFFAF8FFEFF8F6FFF5F8F4FFFCF9EFFFF8F6F6FFF4F5FAFFF5F6F9FFF5F8
            FCFFFBFFFFFFF6E7D7FFB3794CFFB66729FFC87033FFCA7035FFC27334FFBC74
            32FFBC7434FFBC6C2FFFAB6235FFF2DDCCFFFFFFFFFFEBF8F7FFF0F7F6FFF7F6
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F7FFF7F7
            F7FFF6F7F6FFF6F7F7FFF6F7F6FFF1F6F8FFFBFBFBFFFFFFF4FFB4815AFFBD66
            2EFFC66F38FFC17235FFBF7333FFC37136FFC86E36FFB7642FFFAB7453FFF3E4
            D5FFFFFFFFFFEFF9F9FFF0F6FAFFFBF6F5FFFDF6F3FFF8F5F8FFF8F7F5FFF9F8
            F3FFF4F6FAFFF7F6F4FFFFFFF4FFB99C83FF9E7C63FFFFF9E6FFD7D1C2FFDDDA
            D0FFFFFFF2FFA98359FFB89977FFFFFFFFFFE5D8C8FFD1CEBEFFFFFFF5FFAE9A
            82FF988771FFD6D0C3FFCCC2B0FFECE8DEFFFFFFFBFFD3CDC6FFE7E1CFFFBAA9
            94FFFFFFF7FFDCDACFFFD5D1C3FFEADDC9FF9E7153FFD0C2AFFFFFFEF7FFF4F8
            F6FFF4F8F6FFF6F8F3FFF6F6F7FFF6F6F8FFF4F8F4FFF2FAF3FFEEF6F9FFF9FC
            FFFFFFFFFBFFD2B18FFFA2652CFFBD6D30FFC46F39FFC56F39FFB97237FFBE73
            36FFC56E35FFA35E2EFFE1CAAFFFFFFFFFFFF4F7F8FFF7F6F7FFF7F6F7FFF6F7
            F7FFF6F7F7FFF7F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F7FFF6F7F6FFF6F6F6FFF9F7F8FFFAF5
            F6FFF8F7F6FFF4F8FBFFFFFEF1FFB47B57FFBB6631FFCE6F35FFC06E3DFFBE72
            36FFBE7533FFC16E37FFB05C30FFCFA989FFFFFFFAFFF1FCFEFFF7F3FBFFFFF2
            FBFFFBF4F9FFF4F9F3FFF1FAF1FFF2F8F6FFF2F7F7FFF0F9F5FFEDF9F5FFFBFD
            FBFFDEC5B6FFA48171FFE4CCABFFAE946AFFB7A783FFCEC2ACFFB28975FFDFCB
            A7FFA58958FFE5D2BFFFD4BC9FFFB79B7DFFFFFFFFFF80491DFFFAF3E1FFFEFF
            F6FF9C7958FFF3E3C1FFFFFCF6FFB4AB8AFFD2BFA4FF815037FFFFFFFFFFBE98
            78FFE5D2ADFF7A512AFFFFFFF0FF844F38FFFFFFECFFEDFAF8FFFFF0FEFFF3F7
            F8FFF3F6F9FFF5F6F8FFF4F7F6FFF6F8F3FFF9F8F2FFF2F6F8FFF4F7FAFFFFFF
            FFFFF1E8D7FFA2714DFFBF6531FFC97331FFC07235FFC66D3CFFC37037FFC172
            31FFAD5F2DFFDCBFA6FFFFFFFFFFF2F8F9FFEDF7F4FFFDF6F5FFF9F7F5FFF4F7
            F7FFF7F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F7F7FFF7F6F7FFF8F7F5FFF6F7F7FFF4F6F9FFF7F8F9FFFFFCF9FFFFFD
            F4FFA77453FFB96830FFC87134FFC07039FFBB7237FFCB7034FFC56A34FFA262
            3CFFEDD4BDFFFFFFFFFFF8F7F4FFF4F7F8FFF6F6F7FFFAF6F6FFF6F7F6FFF7F6
            F7FFF7F6F7FFF7F6F7FFF8F5F7FFFBF6F6FFF5F8F4FFF2F9FEFFE7D9CCFFF6E9
            DEFFE8D0B3FFAD9174FFC5AB89FFD2BEA9FFDBCFBBFFFFFFFFFFAA8862FFE8CF
            BEFFD0C0A5FFBFA385FFFFFFFFFF925624FFFFFFFFFFFFFFFFFFAA8064FFEDDA
            ACFF6C2F23FFC6BD8CFFDBC2AEFFB98A67FF967142FF833F1FFFFFF9E4FFD1BF
            B0FFFFFFFFFF885432FFFFFFE8FFE8FBF7FFF9F6F7FFF7F7F6FFF7F7F6FFF7F7
            F6FFF7F6F7FFF7F6F7FFF6F6F7FFF7F6F6FFF7F7F6FFF5F6F7FFFEFDFFFFFFFF
            F9FFB6926AFFB26228FFC67034FFBE7138FFBC7236FFBC7334FFCC6F3AFFA75A
            2FFFD9B9A1FFFFFFFDFFECFAF9FFF8F5F9FFF8F7F6FFF4F7F7FFF7F6F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFF7F7
            F7FFFDF6F4FFF5F6F9FFEEF6F9FFF9FCF9FFFFFFF4FFB07850FFB46A34FFC873
            31FFC57133FFBD7235FFBD762FFFC66835FFB86749FFF9EDE3FFF4FFFFFFF7F7
            F4FFF4FAF8FFF1F8F5FFF7F8F3FFFAF7F3FFF6F6F7FFF7F7F7FFF7F7F7FFF6F7
            F7FFF8F6F7FFFFF6F5FFFFF4F8FFF1F4FFFFFFFFFDFFE3D5B8FF6E401DFFFFFF
            F5FFBBA088FFCEB9A3FFFFFFFFFFC4928CFF8D6247FFFFFFFFFFCEB9A3FFBBA1
            84FFFFFFFFFF874B16FFA28C7BFFECEBDCFFAB876DFFCBA973FFB8845FFFBB9E
            64FFD5BFAEFFD2B191FFECDBA9FF9B684EFFF8FFFDFFFFFFFFFF925E39FFB8A8
            87FFFFFFFDFFFAF4F9FFEEFCEFFFF7F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFF8F5F5FFF6F9F7FFFFFFFFFFD6AC
            96FFAD5F2DFFBD722FFFC07233FFBC703DFFC26A3CFFCB6F39FFA95F2AFFDABF
            A2FFFFFFFFFFEEF4FFFFF5F5F9FFF7F7F6FFF6F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFF7F7F7FFFEF5F5FFF3F5
            F9FFF5F8F8FFFFFFF7FFA8805FFFBD692FFFC57232FFC57330FFC37235FFC470
            38FFBF6632FFA47852FFFFFEF0FFFAFDFFFFF8F4FDFFF3F6F9FFF2F7F6FFF3F9
            F3FFF8F7F4FFF9F7F6FFF6F7F7FFF7F7F7FFF7F7F7FFF7F6F7FFEFF8F7FFEDFA
            F4FFF5F6FAFFFBF5FFFFF9ECE0FF77502BFFFFFFEBFFFFFFFFFFB7A181FFCFC1
            A9FFD9C9ACFFA66C61FFFFFFFDFFF8FFFFFFDCB6A1FFC6A083FFFFFFFFFF9355
            21FFF8F2E2FFFFFFF5FFA98869FFBC7D48FFE6D5ACFFAC783EFFD5C0AAFFDFD8
            D4FFB2956AFFA57056FFFFFFFFFFA7704CFFD4C2ABFFFFFFFFFFF4F4FEFFFFEF
            FFFFF9F8F4FFF6F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F6F7FFEFF8F6FFEFF8F7FFFFF2FDFFFFFFFFFFDEC6AAFFAC5C
            2FFFC96D3AFFC66B3DFFBA703BFFBC7433FFC27332FFA65F2DFFE8CFBCFFFFFF
            FFFFF3F5F6FFF8F6F6FFF6F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7
            F6FFF6F7F7FFF6F6F7FFF6F6F7FFF7F7F6FFFCF4F9FFF5F6FBFFFFFFFFFFB68F
            6DFFBB662DFFC27137FFBF7235FFBE7236FFC37037FFBE6434FFB47E5FFFFFFF
            F7FFF5FCFCFFF4F5F6FFFEF5F5FFF9F5F9FFFAF7F3FFFAF8F3FFF8F5F8FFF6F4
            FAFFF7F7F6FFF7F7F7FFF7F7F7FFF6F7F7FFF8F6F7FFF8F8F4FFEAF8F8FFF4FB
            FDFFE4C6A8FFC39E7BFFFBF7EAFFC4BCBAFFCAAA79FFD8C3AFFFB48E6EFFECE0
            C9FFD8C6AFFFF4E1E1FFD9C5A6FFC8A988FFFFFFFFFF935726FFFFFFFFFFFFFF
            FFFFAC8E64FFB66837FFFFFFEFFF8C4A17FFD8C09FFFFFFFFFFF8F541FFFC78C
            70FFFFFFFFFF944825FFFFFFFFFFAFA08DFFFFF9EFFFF9F7F8FFFCF8F1FFF6F6
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6
            F7FFF8F7F5FFF8F8F2FFF4F7F6FFF6F6F6FFFFFFFFFFE2D5C1FF9D5D34FFC86B
            36FFC07432FFBF7137FFC47037FFCB7036FFA75F2FFFEFEBCFFFFEFDFDFFF9F5
            FAFFF6F7F6FFF7F6F7FFF6F7F7FFF6F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F6FFF6F6F8FFF7F7F6FFFAF7
            F4FFFAF7F3FFF9F8F4FFF5F6F9FFFFFFFFFFCEAB93FFB65F31FFC47032FFC46E
            39FFB47338FFC46F38FFBD6638FFB1855DFFFFFFFFFFFEF8F9FFF8F7F8FFF8F7
            F7FFF6F7F4FFF9F6F7FFF9F7F5FFF8F6F6FFF7F6F8FFF6F5F8FFF7F7F6FFF7F7
            F7FFF7F7F7FFF6F7F6FFFBF5F7FFFBF5F8FFF0F6F9FFFAFCF7FFF8EED7FF8354
            34FF8F6143FFDCC9B1FFB4A17FFFCDBCABFFD9C4AFFF986D40FF875128FFEBD9
            CEFF906B42FF8C5E34FFF9EED5FF73451DFFBA8D6BFFE4DBC3FFAC886AFF8767
            44FFFFFFFDFF733314FFD0BE9EFFFFFFFFFF703E0BFFD4BAA0FFFFFFFFFFA078
            55FFB98362FF8B5C44FFFFFFF8FFF0FAF3FFF0FBF0FFF7F6F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFF9F6F6FFF8F7
            F5FFF2F8F5FFFAF7F8FFF6F6F7FFF8FFFFFFECDCCCFFA46031FFC56F30FFC36F
            3AFFC46F3CFFC07232FFC16E34FFB0663EFFFEFBE8FFF8FBFAFFF6F6F6FFF4F7
            F5FFFDF7F5FFF7F6F8FFF4F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F7F7FFF8F6F6FFF8F7F6FFF7F6F6FFF7F7F7FFF4F6
            F7FFFCFFFFFFE4D3BBFFA36030FFC56F36FFC27039FFC36F39FFC87034FFBB6B
            33FFAB7A57FFFFFFF4FFF8FAFCFFF5F6F6FFF5F5F5FFF6F7F7FFF6F6F7FFF6F7
            F6FFF6F6F7FFF6F6F7FFF6F7F6FFF7F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7
            F7FFF9F7F6FFF9F6F7FFF3F7F7FFF7F8F4FFFFFFF6FFF8E9DDFFEBDFD1FFFFFF
            F8FFF7F5EFFFFAF6F3FFFFFFFFFFECDEC7FFFCF1DBFFFBF9FCFFFAEDDDFFFCF0
            DDFFFBFAF1FFFAF2E4FFFBECD6FFF4F4E9FFFFF4F0FFF5FAF1FFFFFCF4FFFFF0
            ECFFF9F9F0FFF4F7FBFFFFFBE6FFFCF9F4FFF2F6FFFFFFFEF0FFE0D3BDFFFDFB
            F5FFF5F6FDFFF3F4FCFFF8F6F8FFF6F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFF6F6F7FFF7F6F7FFF6F6
            F6FFF7F7F6FFF3F7F8FFFFFFFDFFEAD4BBFFA45F30FFBF7034FFC97036FFBA73
            35FFBC7335FFC56638FFAD7E5AFFFFFFFBFFF8F8F9FFF2F8F6FFFCF5F7FFF7F7
            F6FFF4F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F6F7FFF8F8F5FFF4F6F6FFF3F6FAFFF2F5FAFFF7F8FDFFFBFBEBFFAF63
            3CFFC6702EFFB97533FFC56A3BFFBE7135FFD56A32FFA56F3DFFFEFFF1FFFAF4
            FFFFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFF9F6F4FFF8F8
            F3FFF2F8F5FFF2F9F7FFF6F7F4FFFBF8FBFFF7F9FDFFF3F7FBFFF2F7F9FFF1F7
            F7FFEDF5FDFFFCFBF9FFFAF9F8FFE8F4FFFFF4F8F9FFF9F8F7FFEAF4FDFFF4F9
            FCFFFCFBF5FFE7F8FEFFF7F6FAFFEAF7F7FFF3F8FAFFFEF7FBFFEFF8F9FFECF4
            FDFFFDF7F3FFF5F7FCFFE8F1FDFFFAF7F7FFF5FEF9FFEBF6F8FFEDF7FCFFF5F5
            F9FFFBF6F6FFF6F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF3F6
            F6FFF0F7F8FFFFFFFFFFDBC2AAFFA86328FFCA7032FFBD7038FFB77435FFC56F
            36FFBC642FFFCFA58FFFFFFFFFFFF2F8F8FFFAF5F8FFF9F7F6FFF5F6F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F7FFF6F8
            F3FFF2F7F7FFEFF3F9FFF9F6F7FFFFFFFFFFB1865FFFBE6733FFCD7131FFBF73
            33FFC56E3CFFBC7235FFA96136FFFFF4DEFFEFFCFBFFF2F4FDFFF7F7F6FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7
            F7FFF7F7F7FFF7F6F7FFF7F6F7FFF6F6F7FFF8F7F6FFF9F7F4FFF4F9F3FFF3F7
            F5FFF3F6F8FFF3F7F8FFF5F7F5FFFAF6F4FFFCF7F2FFFAF8F2FFF6F7F5FFF6F8
            F5FFF6F8F5FFF5F7F6FFF5F8F5FFF8F8F3FFF7F5FAFFF6F8F4FFF4FCEDFFF2F6
            F9FFF9F7F5FFF8F8F4FFF9F8F4FFF9F7F4FFF8F8F4FFFCF7F5FFFCF7F4FFFBF7
            F5FFFBF6F6FFFCF7F5FFFFF7F2FFFEF8F3FFF9F8F2FFF3FAF1FFF2FBEFFFF7F6
            F7FFF7F7F7FFF7F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F7FFF6F7F6FFEFF7F9FFECF6
            FEFFFFFFFEFFCEAD88FFAD6430FFC06F3AFFBD7237FFC27235FFCD7033FFA75C
            2EFFF0DFC7FFFDFCFAFFF7F4FBFFF6F7F6FFF5F8F5FFF7F6F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F7FFF3F9F4FFEFF8F6FFF5F7
            F9FFFFFFF9FFD7C6B1FFBB6025FFB6723BFFC06C3DFFD16C3BFFC17134FFB063
            25FFDBD6BCFFF8FFFFFFFAF3FAFFF6F9EFFFF6F6F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFF6F7F6FFF7F6F7FFF7F6
            F7FFF7F6F7FFF7F7F6FFF6F5F9FFF6F5FAFFFAF8F4FFFAF8F3FFFAF5F8FFF6F6
            F7FFF7F7F7FFFDF6F7FFFCF4F9FFF2F6F9FFF9F7F5FFF3F6F8FFF3F7F8FFFDF8
            F1FFF5F7F7FFF6F7F6FFFEF4FAFFF9F7F5FFEEFCEFFFF7F5FAFFF5F6F8FFFCF5
            F7FFF9F6F7FFF1F7F7FFFAF6F7FFFCF7F4FFF3F4FCFFF8F6F7FFFDF7F3FFF5F6
            F9FFF3F6F7FFF6F6F6FFF8F6F6FFF8F7F7FFF5F6F8FFF7F7F6FFF6F6F7FFF7F6
            F7FFF6F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F7F7FFFAF6F4FFF9F8F4FFF0F7F8FFF8F7F7FFFFFF
            FEFFB68661FFBB6931FFC46D3BFFBE7039FFBC7336FFC66F2CFFA46F40FFFFFF
            F8FFF9F6FDFFF4F6F7FFF5F7F6FFF7F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F6F7FFF2FAF0FFFBF3FAFFF5F7FEFFFDFAE7FFB267
            3CFFC17230FFCA6E37FFBB703CFFB57238FFBF6528FFBFA485FFFFFFFDFFF1F5
            FAFFF9F6F8FFF9F7F2FFF6F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F7F6FFFDF4F6FFF4F8F7FFEAFAF3FFF6FFFCFFF3FF
            FFFFFEFCFFFFEEF7FAFFF0F5FBFFF7F5FCFFFAF9FBFFFFFFFFFFF5FFFFFFEBF8
            F9FFEDF7F8FFF8F6F9FFFEFCFAFFFBF8F9FFF5F5FAFFF0F7F8FFF9F6F6FFF0FB
            FAFFFFFBFFFFF0F8F9FFF9F8F9FFFCFBFFFFFAF6FDFFF6F9FAFFFBFEFCFFFBFE
            FEFFF2FEFFFFFCFAFAFFE0F9F9FFFFF8FDFFFAF6F7FFEFF9F8FFFDF7F3FFEFF7
            F8FFFAFCF7FFFAFDFAFFECF6FFFFF6F8FAFFFEFEFDFFECFFFAFFFFFCFBFFF6FD
            FDFFF7F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F7F7FFF7F6F6FFF8F7F6FFF6F6F6FFF8F8F8FFFAF9FCFFFFFCEBFFA267
            3FFFC56937FFBC7434FFB97236FFC87437FFB7682BFFCDA788FFFFFFFFFFF7F9
            F4FFF8F7F3FFF6F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F6F7FFF7F7F5FFEFF6FAFFFFFFFFFFC39B81FFB3662EFFC07039FFC472
            34FFC77232FFBB6D37FFB3774DFFFFFFF8FFF9F7F5FFF2F6FAFFF6F6F7FFFCF8
            F3FFF6F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F7F6FFF8F6F8FFE9F7F5FFFFFFFFFFDCBAB8FFA58280FFDFBBBEFFFFFF
            FFFFF3F9FAFFFFFCFFFFF4E1E4FFA78384FFC5999CFFFFFEFEFFF9F7F6FFFFFF
            FFFFD3C5C4FFF1E3E5FFFCF7FBFFF1F7F9FFFAF9F8FFF5ECEBFFD4C2C4FFF1F9
            F6FFFFF6F7FFCCBABDFFF2F2F3FFF0EAE8FFD6C2C0FFD9BDBFFFD7B8C1FFE1D2
            D6FFF4FFFFFFE1C8CDFFE9DFE2FFF3F9F8FFF3F9F4FFF3FAFDFFE8DCD7FFDDCF
            C9FFF6FAFFFFF3E7EAFFD7BFC0FFD5C2BBFFD3BCBCFFDCCFD0FFFAFBFBFFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7
            F7FFF6F6F7FFF7F7F7FFF6F6F6FFF6F6F7FFFCFFFCFFE9D7C0FFAE5E29FFC374
            30FFBF7137FFBE6E39FFC67231FFA5602FFFF4E8DFFFF9FAFDFFF5F6F6FFF7F6
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F6FFFBF3
            FCFFECFEFAFFF6E8D6FFB05B34FFBC7433FFC76A41FFB87532FFCD722DFFAE56
            30FFF3EADEFFFBFCFEFFF0F4F9FFF1F5FAFFF7F7F7FFFBF8F4FFF6F6F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF1F5
            F6FFF7FFFFFFCB9B9DFF6A1E1BFFB09087FF641A17FFBF9291FFFFFFFFFFF7E7
            E6FF5D0D10FFA78077FF7E433CFF884F4EFFFFFFFFFFFFFFFFFF471213FFD0B3
            B1FFFFFDFFFFF8F5F8FFFCFEFFFFD5B8B6FF5E1516FFFFFFFFFFDABAB6FF5413
            12FFFFFFFFFFD1B7B3FF4E100DFF915A58FF824C4FFFA98B91FFFFFFFFFF723E
            42FFB08D91FFFFFFFFFFF0F9F8FFFBFFFFFFB1817FFF834E46FFFFFFFFFFD7BA
            B7FF650F11FF895954FF844F50FFA38C8EFFFFFFFFFFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF8F7F6FFE8F5FAFFFFFFFFFFC69A70FFBC6B2DFFC36F36FFBB70
            3AFFC77233FFC46D2DFFB3815CFFFFFFFFFFF2F6F9FFF7F7F6FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F6F7FFF6F6F7FFF6F7F7FFF7F7F6FFF5F4FBFFFFFFFFFFB785
            61FFBF6832FFC27232FFC76D3CFFC07235FFB3692EFFD0A88FFFFFFFFFFFF3F6
            F9FFF4F6F8FFF4F6F7FFF8F7F6FFF9F6F5FFF6F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F6FFF7F7F8FFFFFFFFFF6A2E
            31FFD2B5B0FFFFFFFFFFCEA4A2FF88393AFFFFFFFFFFB99191FF984548FFFFFF
            FFFFFFF5EDFF4F1010FFF9EEEBFFFFFFFFFF712524FFD8B8B2FFFBFFFEFFFDF4
            F8FFFBFDFFFFDAC0BCFF812125FFFFFFFFFFAA6F6CFFA16260FFFFFFFFFFD8B7
            B6FF622422FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8B4D4BFFBD9495FFFFFF
            FFFFFFF7F9FFFFFFFFFFBE8986FF9A5852FFFFFFFFFFD8C0BCFF6C1C1DFFFFFF
            FFFFFFFFFFFFFFFFFFFFF6F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F6FFEFF5F9FFEFFAFCFFFFFFF0FFAB6943FFC26F37FFBF7233FFC17038FFCC70
            34FFAE6029FFE6D4BFFFFDFCFDFFF6F6F7FFF6F7F7FFF6F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F7FFF6F7
            F6FFF7F7F6FFF7F7F7FFF6F6F6FFF0FEFFFFF7DDCDFFA75F2FFFB57334FFC96F
            34FFC37234FFCB6C36FF9E6A40FFFEFFF2FFF9F7FEFFFAF7F4FFFBF7F3FFFAF7
            F4FFF8F6F5FFF5F7F8FFF7F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F6F6FFF9F8F9FFFFF9FAFF71383CFFF4E3E2FFF2FF
            FFFFD3ABB1FF8A3137FFFFFFFFFFA37579FFB06668FFF3FFFFFFFFFFFFFF5907
            0FFFE5DBD8FFFFFFFFFF752522FFDCC1B8FFFCFFFFFFFFF7FAFFFEFDFFFFCFC3
            BDFF851F26FFFFFFFFFF642021FFDAB2AFFFF4FFFFFFDAB5B9FF622122FFFFFF
            FFFFF1FBF8FFF0F6F7FFFDFFFFFF894B45FFC59E9DFFDDCED3FF5D0F0FFFE7DE
            DCFFBE908BFF945855FFFFFFFFFFDFBFBEFF651B20FFFEFFFFFFEFF8FBFFFCF3
            FCFFF6F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFFDF7F4FFECF6
            F5FFF4FFFFFFDFC0B2FFB26329FFC6772CFFBC6F3BFFC46C3DFFC56D2FFFAC7C
            4FFFFFFFFFFFF6F6F8FFF7F7F6FFF7F6F6FFF7F6F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F7FFF7F7F5FFF1F9F4FFF6F8F3FFFEF6
            F6FFF4F7F7FFFEFFFFFFBD8161FFC06C33FFB67239FFC96D3CFFBB6F3CFFB266
            28FFE3C6A7FFFCFFFFFFF4F3F9FFF8F7F6FFF7F7F6FFF7F7F6FFF6F6F7FFF6F7
            F7FFF7F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F6F7FFF7F7F4FFF5FAF4FFFFFFFFFFF5F9FAFFFFFFFFFF994A51FFA362
            65FFFFFFFFFFAA7470FFAB676BFFFFFFFFFFFFFFFFFF540D0AFFEAD4D9FFFFFF
            FFFF6F2B23FFA47270FFD0A2A6FFF9FCF0FFF3FFFFFFD6BEC2FF872A30FFEDD1
            CAFF681516FFFFF7F7FFFCFFFFFFD4BAB9FF692025FFFFFFFFFFFCFAFFFFFDF8
            FCFFFFFFFFFF874F4DFFC99F9BFFC6A3A1FF81363AFFC8AEAAFFBB9993FFA254
            56FFFFFFFFFFDCB9BEFF621D1AFFFFFFFFFFFDFCFFFFFDFBFAFFF6F6F6FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F7FFF0F8F5FFFBF7F5FFFCF5F9FFFFFF
            FFFFB57D4EFFC46B33FFBD6F3DFFC16E3AFFCA6F3AFFAD612AFFE3D7BAFFFCFD
            FBFFF9F5FAFFFFF6F3FFF1F7F6FFF4F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F6F6FFF4F7F7FFF3F7F8FFF3F6F8FFF4FBFCFFF2E5
            DAFFA85C31FFC97235FFBA7237FFC67036FFBF6C33FFB17547FFFFFFFAFFEEF5
            FCFFFAF8F2FFF6F6F7FFF6F6F7FFF6F6F7FFF6F7F7FFF7F7F6FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFFDF5
            F7FFEBFAF6FFEBFFF9FFFFFBF7FF854B4CFF721D1DFFF8E8E7FFFCFFFFFFAE73
            71FFA8686AFFFFFFFFFFFFFFFFFF520D09FFEBD4D9FFFFFFFFFF832A25FF9C6D
            6DFF8D575AFF612924FFFFFFFFFFDFC2C5FF7D171DFF703C38FF721C1FFFE5C0
            C2FFFEFFFFFFD4BBBAFF7C1A1FFFCAB0AEFFC099A0FFE5DEE2FFFFFFFFFF874D
            4BFFCCA29FFF9E706EFFC79A9CFFA57A77FFC09B96FFA15456FFFFFFFFFFDFBE
            BFFF7D1C17FFC7AFACFFB89DA4FFECDBD8FFF8FAFAFFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F6F7FFF2F8F6FFFCF6F3FFFAF6F7FFF6FBFDFFEDD8BEFFB55E
            2DFFC57037FFBF7235FFBD7136FFC06D38FFAD805FFFFFFFFFFFEFF8F8FFF6F9
            F3FFFAF6F7FFF7F7F7FFF6F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6
            F6FFF4F7F7FFFAF4F9FFF3F5FBFFEBF8F8FFFFFFFFFFC69678FFBF6B33FFC86F
            31FFC07038FFC37331FFB5652BFFE4CBB6FFF8FAFFFFEDF7FAFFFCFBECFFF6F6
            F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F6FFFCF4F8FFF1FBFBFFF6F2
            EAFF732422FF884D47FFFFF7EFFFF8FFFFFFFDFFFFFFAD7371FFA46869FFFFFF
            FFFFFFFFFFFF530D09FFEBD4D9FFFFFFFFFF7C2321FFDEC1BFFFFFFFFFFF711E
            1BFFDDC5C6FFDBC8C6FF812328FFFFFFFFFFC79898FF713334FFFFFFFFFFD7BA
            BBFF7F1D20FF9B786EFF976662FFD3CCCFFFFFFFFFFF8A4C4AFFD3A9A6FF7842
            40FFFFEDEDFF834D4CFFC69C99FF9E5556FFFFFFFFFFD8C0BCFF801E17FFA875
            71FF8B6266FFDCCCC7FFFAFCFCFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6
            F7FFF6F7F6FFFAF8F3FFF5F7F6FFEEF3FDFFFFFFFFFFBF805BFFC36A33FFC073
            32FFB87636FFC46D3AFFAF5D33FFF4E3D1FFEEFDFAFFEEFAF4FFFFF5F7FFF9F5
            F7FFF6F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F7FFEDF9F4FFFEF4
            F8FFF9F5FBFFEEFAF7FFFFF7F0FFB46438FFC17031FFC77137FFC56D3CFFBF72
            30FFA56E42FFFFFFFFFFF1F7FEFFF6F9F3FFF8F8F2FFF6F6F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F6FFF6F5F7FFFFFFFFFFAF6F70FF9A4445FFFFFF
            FFFFEDFFFAFFF4F5FAFFFFFFFFFFA57371FFA36866FFFFFFFFFFFFFFFFFF530D
            09FFEBD4D9FFFFFFFFFF6B2522FFD3B7B8FFFFFFFFFF82423CFFCCA4A3FFDACE
            C7FF752226FFFFFFFFFFF1DEDAFF631B1AFFFFFDFDFFD6BBBBFF6D1E22FFFFFF
            FFFFFFFFFFFFFFFAFEFFFFFFFFFF8A4C4CFFD09D9BFF723837FFFFFFFFFF8444
            44FFBF8F8DFF9D5758FFFFFFFFFFD8C1BFFF701F18FFFFFFFFFFFFFFFFFFFBFC
            F6FFF6F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F6FFFAF5F8FFF6F8
            F4FFF1FAF2FFF5F3FDFFFDFBFFFFE5D3B9FFAC5D32FFCA6F34FFB67532FFC06F
            39FFC86832FFC49B7FFFFFFFFFFFF1F9F5FFF9F5F7FFF7F7F6FFF6F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F7FFEBFCF1FFFEF5F5FFFAF4F8FFF8FF
            F9FFDBBCACFFB7602CFFBE7433FFC16E39FFC96B40FFB7682AFFD2BB9DFFFEFF
            FFFFF3F7F5FFFEF9EFFFF2F5FBFFF7F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F6FFF5F7F9FFFFFFFFFF723737FFC9A9A5FFEFFFFFFFF4E9F0FFFEEE
            F6FFFFFFFFFF9E7571FFA26866FFFFFFFFFFFFFFFFFF530D0AFFEBD4D9FFFFFF
            FFFF632624FFDEB3B8FFFFFFFFFF7A443DFFD5A2A2FFDFCCC6FF7D2027FFFFFF
            FFFFF2E0DEFF751517FFFEFDF9FFD4BDBBFF691E24FFFFFFFFFFFCF3FCFFF6F4
            F8FFFFFFFFFF905150FFAD7675FF946060FFFFFFFFFF8D5253FFB97876FF9B59
            5AFFFFFFFFFFE2B9C0FF6A1C1AFFFFFFFFFFF4F5FAFFF2F8F5FFF7F6F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F6FFFAF4FAFFF4F9F4FFF2FBEFFFFBF3
            F8FFF6F5F9FFFFFFFEFFAD6D4FFFD16834FFBE7333FFBA7238FFCD7130FFA265
            42FFFFFAF6FFFAF8F8FFEFF7F8FFF4F6F6FFF7F6F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF6F7F7FFF9F6F7FFFAF8F2FFEEF8FDFFFEFFFFFFBD8656FFC06F
            31FFBD6F3AFFC67133FFC77231FFA56132FFFDFBFDFFFAF8F9FFF6F6F6FFF4F7
            F6FFF1F8F7FFF7F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F6FFFCF5
            F8FFFFFFFFFF793B39FFD0A4A1FFF5FFFFFFBD969BFF7A3338FFFFFFFFFFA178
            6FFFAE6769FFFCFFFFFFFFFFFFFF58090DFFEAD8D4FFFFFFFFFF752125FFD5C4
            BBFFFFFFFFFF771F24FFD9C0BEFFDDC8C2FF772628FFFFFFFFFFEBC6C4FF6724
            24FFFBFFFFFFD9B8B8FF612123FFFFFFFFFFFFFFFFFFFEFEFCFFFEFFFFFF8F54
            54FFA94647FFB39185FFFFFFFFFFAE847DFFA94641FF9F5F5DFFFFFFFFFFE0BE
            BEFF681B23FFFFFFFFFFFFFEFDFFF6FFFAFFF7F6F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF6F7F6FFF7F6F7FFF6F7F6FFF6F6F7FFF7F7F6FFF6F7F6FFFCFA
            FFFFD0B89EFFB56B2AFFC46F39FFBC7138FFBA7336FFBF6130FFDECEB1FFFFFA
            FEFFF3F5F6FFF2F8F7FFF7F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7
            F7FFFAF6F7FFF7F8F5FFF2F9FBFFFCF3E9FFA2612EFFC07233FFBE6F3AFFC772
            35FFBA6A2FFFC49570FFFFFFFFFFF5F4F5FFF7F7F7FFF5F6F7FFF3F7F6FFF7F6
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F6FFF6F4F6FFF6FFFFFFB27A
            79FF863733FFE5CEC9FF742C2DFFBB8A90FFFFFFFFFF9D706AFFA75F63FFFFFF
            FFFFFFFFFFFF400103FFE6D7D3FFFFFFFFFF701E24FFB16F70FF9E6567FF5C1E
            21FFFFFFFFFFDCBCBCFF7C141CFFBB9D9CFF7A2A2FFFB17678FFFFFFFFFFD6B3
            B5FF611615FFBC9F9AFFAB8C8BFFCFBABCFFFFFFFFFF8A4E50FF6E1114FFD7BD
            B5FFFFFFFFFFCDAEAAFF6C1210FF98595AFFFFFFFFFFE1BBBAFF730D14FFBF9C
            9AFFB9898CFFCEB8B6FFFBFDFEFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F7F6FFF7F6F7FFF7F6F7FFF6F7F7FFF7F7F6FFF3F7FFFFFFF8E5FFA567
            32FFC56E39FFC56F38FFBB7036FFC36933FFB59271FFFFFFFFFFF6F8F8FFF3F7
            F6FFF7F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F7FFFBF7F4FFF1F6
            F9FFFDFFFDFFDBC1A5FFB1652FFFC27336FFC07038FFC87036FFAA6331FFE4D3
            BCFFFBFBFCFFF7F7F7FFF6F6F6FFF6F7F7FFF7F6F7FFF6F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F7F6FFF7F5F8FFF3F9F9FFFFFDF9FFA77973FF7248
            3FFFA9857EFFFFFEFFFFF7FFFFFFC7B3ACFFCCABABFFFFFCFFFFFFFFFFFF9A7B
            7BFFF0E4E1FFFFFFFFFFAB8F90FFB28283FFBA8B90FFFBEDEFFFFFFFFFFFEADB
            DBFFB08185FFA17E7FFFCDACAEFFFFFFFFFFF4FCFBFFEBD9D7FFAC8581FFA383
            7CFFA07E78FFC5B2B3FFFFFFFFFFBEA3A5FFA97E80FFF6EBE5FFF9FDFCFFF3E6
            E3FFA57F7FFFC6A7A7FFFDFFFFFFE4DDD5FFB58382FFA6807DFFA87A78FFC4B3
            AFFFFCFEFEFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F6F6FFF1F8FBFFFFFFFCFFB58C66FFC16934FFC86F
            36FFC17139FFC47235FFA16035FFFFFFF5FFF3F8F7FFF6F7F7FFF7F6F6FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F7FFFCF8F2FFECF5FEFFFFFFFDFFC092
            64FFC16C31FFBF7334FFC27038FFC76E34FFA66A3EFFFFFFFAFFF3F8F9FFF4F6
            F6FFF7F7F7FFF9F7F7FFFAF6F7FFF6F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F7F7FFFAF6F6FFF8F6F7FFF3F9F7FFFFFFFFFFFFFFFFFFFFFFFCFFF1F8
            F6FFEAF7FAFFFEFFF9FFFEFFFBFFFCF2F9FFECF7F7FFFFFFFFFFFCFBF9FFF2F7
            F9FFFFFFFFFFFDFFFFFFFFFEFFFFFFF8FAFFFBF5F9FFF2F8F7FFFFFFFFFFFFFF
            FFFFFCFFFFFFEFFAF9FFEFF6F7FFF9FBF9FFFFFFFEFFFFFFFFFFFFFFFFFFFEFD
            FDFFF1F8F7FFFFFFFFFFFFFFFFFFF8FAFBFFF2F8F7FFEFFBF9FFFFFFFFFFFFFC
            FEFFEEF8F6FFF4FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFF8FBF9FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F6F6FFF3F8F7FFF6FEFEFFDAC3AFFFBC642FFFC67138FFC16E3AFFC074
            2FFFBD622DFFE5D2C0FFF5FDFCFFF7F6F7FFF6F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF6F6F7FFFBF7F3FFEBF6FFFFFFFFFCFFA8642EFFC97033FFBF72
            35FFC37137FFC26A31FFC39170FFFEFFFFFFF1F8F8FFF4F6F6FFF7F7F7FFF9F7
            F7FFFBF5F7FFF6F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFF9F7
            F7FFF5F7F6FFE6F9F7FFF7F5FAFFFFF3F8FFF9F8F6FFF6F8F8FFF4F2F7FFF8F9
            F2FFF5F8F4FFFFF5FBFFE9F9F7FFF4F5F3FFF9F6F5FFEEF8FAFFFFF5F8FFECF9
            F6FFE7F9F8FFFEF4F9FFF3F4F9FFF8F5F6FFF3F6F6FFF7F7F8FFF3F6F9FFFCF4
            F9FFFFF7F9FFF3F7F4FFF4F9F4FFFAF5F9FFF1F4FDFFF9F7F8FFF4F6F6FFF2F6
            F6FFF6F5F7FFF8F4F8FFFDF5F6FFEEF7F7FFF3F4F8FFFCF5F7FFFAF5F6FFFDF4
            F7FFEDF7F7FFF4F7F8FFF5F6F8FFFAF7F9FFF6F7F6FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F7FFFAF8
            F5FFEFF7FEFFFCF2E8FFB3642FFFC06E35FFC2703BFFBE752FFFCC672FFFC0A1
            88FFFAFFFFFFF7F5F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7
            F6FFF7F5FAFFF3FCFCFFF3E5CDFFAF5D2BFFC66E3AFFC26E3DFFC17430FFB164
            31FFE3BFB0FFF8FFFAFFF5F6F7FFF7F7F7FFF7F7F7FFF6F7F7FFF6F7F7FFF6F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFF6F7F7FFF7F6F7FFF7F6
            F6FFF7F6F6FFF6F7F6FFF6F6F7FFF7F6F6FFF7F7F7FFF7F6F7FFF7F7F7FFF4F6
            F5FFF9F9F9FFF6F5F6FFFBF8FAFFFEF8FCFFF8F8F9FFF8FAFAFFF8F9FBFFF6F7
            FBFFF8F8FEFFF6F5F8FFF3F9F9FFEEF7F7FFF4F6F9FFFDF3FAFFF7F6F7FFF6F9
            F3FFF8FAF1FFF7F8F4FFF3F6F9FFF7F7F6FFF7F7F7FFF7F7F6FFF6F7F6FFF7F7
            F6FFF6F7F6FFF7F6F6FFF7F7F6FFF6F7F6FFF6F7F7FFF7F7F6FFF7F6F6FFF7F6
            F6FFF7F7F6FFF6F7F6FFF6F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F7FFFDF8F1FFF0F5FDFFFFFF
            FFFFB47F51FFC26E33FFC37235FFBA7238FFBE6B34FFBD7951FFFEFFFFFFF2F7
            F9FFF7F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F6FFF7F5F9FFF8FE
            FDFFD5BA9FFFBA6730FFC26D39FFC16F3BFFC37332FFA86232FFF8E9DCFFF9FB
            FAFFF5F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFF7F7F7FFF7F6F7FFF6F7F6FFF6F7
            F7FFF6F7F7FFF7F7F7FFF6F7F6FFF6F6F7FFF7F6F6FFF6F7F8FFF7F7F7FFFBF7
            F4FFF6EFE9FFEADED4FFE0D9D1FFDFD3CDFFE8DDD6FFF9ECE5FFFFFCF5FFFFFE
            FFFFF9FCFFFFF7FAFDFFF6F8F4FFFCF9F2FFF4F5F9FFF1F6F9FFF2F8F5FFF4F8
            F6FFF7F6F7FFF6F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFF6F7F7FFF7F7
            F7FFF7F7F7FFF6F7F7FFF6F7F7FFF6F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F6F7FFFAF8F3FFF0F6FAFFFFFFFFFFCDAA87FFBB6B
            30FFC57032FFBB7238FFC26F35FFAA6337FFFDFCF0FFF5F8F9FFF7F6F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F6FFF5F5F7FFFFFFFFFFC19B79FFC26A
            2EFFBF7039FFBC7039FFC67032FFA66C44FFFFFFF8FFF7F6F8FFF6F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F8FFFAF8F7FFF9F2ECFFF4ECE2FFF7EE
            E0FFF3E1CBFFDFC0A7FFD2B193FFC29675FFBC8D69FFC8A082FFDDC2ABFFF8EE
            DFFFFFFFFDFFECF6FAFFFCFAFEFFF6F7F9FFEFF5F6FFF2F8F7FFF9F6F5FFF6F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F6F7FFF5F7F6FFF1F7F7FFFEFDFCFFE6CEBBFFAE642CFFCC7235FFBD70
            39FFC37134FFAF622EFFE9DDC8FFFBFBFBFFF6F6F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F6FFF5F5F8FFFFFFFFFFAB7A51FFC96F2EFFBA7238FFBD73
            3AFFC46A2FFFBB8A67FFFFFFFFFFF7F5FBFFF8F7F6FFF6F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F6F7FFF9F8F7FFF1EEEAFFDED9D4FFD1C9C2FFCAC0B9FFC6B5A7FFC6B0
            9AFFC2A186FFBE9572FFBF9067FFC98D5CFFCA8F61FFBB8766FFC3A38DFFE5D5
            C4FFE3D0C4FFFFFCF6FFF7F9F9FFF1F6F8FFF7F7F5FFF7F6F7FFF6F7F6FFF6F7
            F7FFF7F6F7FFF7F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F6FFF1F7
            F8FFF5F8F5FFF9F9F9FFF6EEE7FFAB662FFFCA6E32FFBE6F39FFC57234FFB665
            2CFFD8C0A4FFFEFFFEFFF6F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF5F6F8FFFFFFF6FFA2673AFFCD712FFFBB7139FFBA7136FFC1652DFFCBAB
            8AFFFBFFFFFFF7F4FAFFF7F7F6FFF6F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F7FFF9F7
            F4FFF9F6F2FFFCF9F5FFFFFBFAFFFFFCFDFFFEFCFDFFFFFFFDFFFFFCF5FFFCF6
            E7FFE7D5C2FFD1AC91FFBD8766FFCB8E63FFD19463FFC8905CFFD9AF92FFC3A8
            95FFF3EFE7FFFBFDFCFFF1F6F7FFF5F7F7FFF7F6F7FFF7F7F7FFF6F7F6FFF4F7
            F6FFF6F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F6FFF3F6F9FFF4F9F3FFF6F7
            F7FFFFFFFFFFA96A39FFCB6E33FFBE6F3AFFC67133FFBC6B2EFFC4A284FFFFFF
            FFFFF6F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F6FFF3FBFCFFFBF1
            DCFFAD6433FFC86F35FFC36F3AFFBF7038FFBC6531FFD7CAACFFFFFBFDFFF1F7
            F6FFF5F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFF6F6F7FFF6F7F7FFF6F7
            F7FFF6F6F7FFF6F7F7FFF6F7F7FFF6F7F7FFF6F7F8FFF7F8FAFFF9FBFEFFFFFF
            FFFFFCF6EDFFD4BA9BFFBB8B61FFD09569FFCA8F66FFD59E76FFBF9776FFF6ED
            DDFFF4FBFDFFF0F7F8FFF6F6F7FFFAF6F7FFF4F7F6FFEFF9F5FFF6F6F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F7F6FFFEF5F7FFEFF9F5FFFAF6F7FFFFFFFFFFB684
            5AFFC36C33FFBD7139FFC97335FFBC6B31FFBB8A6BFFFFFFFFFFF6F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F7FFF7FCFDFFEDDEC9FFAB6332FFC870
            34FFC17038FFC27239FFB7602FFFE6DEC5FFFFF9FDFFF4F7F7FFF5F6F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFF6F7F7FFF6F7F7FFF6F7F7FFF6F7
            F7FFF6F7F7FFF6F7F7FFF6F7F7FFF6F6F7FFF7F6F7FFF2F7F5FFF2F9F9FFFFFF
            FFFFF9E7DAFFC89073FFCF9064FFD39565FFCD976BFFB48F73FFFFF9EFFFF3F9
            F8FFF4F7F6FFF9F7F7FFF8F6F7FFF6F6F7FFF7F7F6FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F7F7FFFCF5F7FFEFF9F5FFFBF5F7FFFEFFFCFFC69C76FFC06930FFBD71
            39FFC56F35FFC06F33FFAA7651FFFFFFFFFFF6F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF6F6F7FFFAFCFCFFE7D0BAFFAC622FFFC97133FFC07137FFC070
            36FFB66132FFF7F1DEFFFEF6FEFFF5F8F6FFF5F6F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F7F7FFFFF4F6FFF9F4FDFFEAF4FFFFF4FAFCFFFFFC
            F1FFC69979FFCB9165FFD69763FFC68E66FFD1AB92FFFDFFFBFFF6F7F5FFF6F7
            F6FFF8F5F8FFFAF4FAFFF6F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFFBF6
            F6FFEFF9F4FFFCF4F8FFFCFFFEFFD1AF8FFFBF692FFFBD7139FFC36F36FFC26F
            33FFAB6D41FFFFFFFCFFF6F7F8FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6
            F7FFFFFFFDFFD9C0A9FFAF6531FFCA7231FFBE7236FFC27135FFB46032FFFFFD
            EEFFFAF4FFFFF5F7F5FFF5F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F7F6FFFBF4FAFFFAF5F8FFF5F8F7FFEEF6F5FFF1FAFEFFF9F0EAFFB18D
            70FFCF9664FFD29565FFBE8865FFF7EEEAFFFDF8F4FFF4F7F6FFF2F6FAFFF5F4
            FBFFF7F7F6FFF7F7F6FFF7F7F6FFF7F7F6FFF7F7F6FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFFAF6F5FFEFF9F4FFFEF3
            F9FFFAFEFFFFDCBDA0FFBC672CFFBC703AFFC17039FFC27132FFAD6A36FFFCF8
            F2FFF7F8F9FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFFFFDFFFFD6B2
            9BFFBC6630FFC27233FFBE7335FFC56F37FFA65F39FFFFFFFDFFF6F4FCFFF8F8
            F4FFF7F6F7FFF6F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F6FFEEF7
            F9FFF2F9F5FFFBF8EFFFFCF8F4FFF5F3FCFFFFFEFFFFD5C0AEFFC69266FFD397
            65FFC58E62FFD4BDACFFFFFEFBFFF4F7F9FFF5F6F8FFF6F4FBFFF7F6F8FFF6F6
            F8FFF7F6F7FFF7F6F8FFF7F6F7FFF7F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F6FFF5F6F8FFF7F9F2FFFDF5F6FFF8FCFFFFE4C9
            ADFFBD652BFFC56F3AFFC76D3CFFC76E38FFB16333FFF5F0EAFFF7F9FAFFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F7FFF1FFFFFFD4B293FFBA672CFFB575
            35FFC27333FFD6712DFFA26438FFFFFFFCFFF3F7F8FFF5F5F9FFF7F7F6FFF6F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F6FFF7F6F7FFF6F6
            F7FFF6F6F7FFF7F7F6FFF9F8FBFFFAEDDFFFBF8A65FFD29667FFCB9265FFCAA7
            84FFFFFFFDFFF0F4FAFFFBF7F6FFFCF4F9FFF7F5F8FFF6F5F8FFF7F5F8FFF7F5
            F8FFF7F5F8FFF7F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F6FFEFF5FCFFFEF9EEFFF8F9F2FFF4F9FFFFE2CFB6FFB46827FFC473
            32FFC36F35FFBD7039FFAE652DFFF3EEE6FFF8F9FAFFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF6F6F7FFFFFFFFFFC4A083FFA75327FFAD5A30FFBA592CFFB55E
            20FF8E582DFFFFFFFAFFF4F6F8FFF2F5FAFFF6F7F6FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7
            F6FFEEF7FCFFFFFFF7FFB68563FFD1946BFFCD926BFFBE9373FFFFFFFEFFF3F7
            FBFFF7F7F6FFF4F6F9FFF7F6F7FFF7F6F7FFF6F6F7FFF7F6F7FFF7F6F7FFF7F7
            F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F6FFF2F6
            F9FFFBF8F1FFF7F8F5FFF5F9FFFFD9CFBFFF97531EFFAC5E28FFAA5C29FFA85E
            2DFF99501EFFEEE8E1FFF8F9FAFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F6FFEEF6FAFFFDFFF9FFFFFFFEFFFFFFFFFFFDFFFDFFFFFFFFFFFFFFFFFFF3F6
            FAFFF5F7F6FFFDF8F0FFF7F6F7FFF6F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F6FFECF6FBFFFFFF
            F5FFBA8A68FFD1946BFFCD926BFFBF9473FFFFFFFFFFF3F6FBFFF7F7F6FFF3F6
            F8FFF7F7F7FFF6F6F6FFF7F7F6FFF6F7F6FFF7F7F6FFF7F6F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F7FFF6F7F5FFF7F8F4FFF5F6
            F8FFF4F5F9FFFFFEF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FA
            F9FFF6F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F6FFFEF3F7FFFCFC
            F6FFFCFFFEFFFEFAFFFFFCFFFFFFF6FEFFFFF5FDFFFFEFF5FAFFF5F7F5FFFAF9
            F1FFF7F6F7FFF6F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6
            F7FFF7F6F7FFF6F7F6FFF6F7F6FFF6F7F6FFF8F9FCFFF5E9DCFFBD8963FFD296
            67FFCC9266FFC7A280FFFFFFFDFFF1F5FBFFFBF6F7FFFBF5F8FFF7F9F7FFF0F0
            EFFFF8FAF8FFF6F8F5FFF7F8F5FFF7F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F6F7FFF8F9F2FFF4F7F7FFF3F5FBFFF8F8F7FFF0FA
            F9FFFDFCFFFFFEFBFFFFFAFDFFFFFDFDFFFFFFFDFFFFF8F7F7FFF6F6F6FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F7FFF4F7F4FFF2FDF7FFF8FFFEFFFFFC
            FFFFFFFEFDFFFFFFFAFFFFFFFBFFF7F7F6FFF5F6F7FFF4F7F6FFF7F6F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F7FFF4F8F4FFF6F7F6FFF8F5
            F7FFF9F6F8FFF8F7F7FFFFFEFBFFD4BCA7FFC89066FFD49665FFC89063FFCFBB
            9AFFFFFBFFFFF5F6F8FFFAFBEEFFFDF3FBFFFDFBF5FFDAE1D2FFF9FBF2FFFAF5
            F7FFF4F6F8FFF7F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F6F7FFF7F8F4FFF5F6F7FFF4F6F9FFF7F6F6FFF3FAFBFFFBFFFEFFFCFF
            FCFFF8FFFCFFFAFFFAFFFEFFFAFFF6F7F6FFF6F6F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F6F6FFFBFAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFEFEFEFFF7F7F7FFF6F6F6FFF7F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F6F7FFF2F8F5FFF2F7F6FFF6F6FAFFF5F4F7FFF8F9
            F7FFFFF8EBFFB3886AFFD29465FFD59565FFC38B62FFE8DFCDFFFFF7F9FFF5F7
            F9FFF4F8F1FFFFFCFAFFECE5C9FFE7EDD5FFFBFAF6FFFDF3FCFFF2F7F6FFF7F6
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6
            F7FFF7F7F6FFF7F7F6FFF5F5F5FFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFEFD
            FEFFFEFEFFFFF6F5F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F6F6FFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFF7F7
            F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F6F6FFF2F7F7FFF1F7FAFFF2F5F8FFFCFBF8FFFFFFF9FFC19C80FFC890
            67FFDA9564FFD3956AFFC19172FFFFFFFFFFF2FCEBFFF1F6FBFFFBF4FFFFF3F2
            D2FFDCCD95FFFFFFF2FFFBF3FEFFFCF5F8FFF4FAF2FFF7F6F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF5F5F5FFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFEFEFEFFF6F6
            F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF8F8
            F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFF6F6F6FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F6FFF5F8
            FAFFF4F7F9FFFCFAF7FFFFFFF2FFC0A58BFFC08F66FFD49766FFD69464FFB787
            65FFECD9CBFFFAF9FFFFF2FCEFFFF7F7F5FFFEF9F3FFDBCF90FFE5DB9FFFFDF9
            F7FFF6F3FEFFFBF7F2FFF6F8F4FFF6F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFFDFD
            FDFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFCFCFFF6F6F6FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF8F8F8FFFFFFFFFFFFFF
            FFFFFFFFFFFFFEFEFEFFFFFFFFFFF9F9F9FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F6F7FFF7F6F7FFF6F6F7FFF6F7F7FFF6F7F6FFF6F6F7FFFCFCFDFFFEFC
            F3FFC29E84FFCD8B63FFCD9767FFD29763FFC78F61FFCEB09AFFFFFFFFFFFAF8
            F2FFFBF1FFFFFFFFF9FFE2D899FFDEC167FFF6EEC4FFF4F8FFFFEEF7F6FFFCFC
            EAFFFBF2FEFFF6F7F7FFF7F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFFDFDFDFFFFFFFFFFFFFF
            FFFFFFFFFFFFFEFEFEFFFCFCFCFFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
            FEFFFFFFFFFFFAFAFAFFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F7FFF0F8F6FFF1F8
            F4FFF8F9F4FFF9F5F4FFF7F4FCFFFDFFFEFFF7EBDAFFC78E73FFCC8D69FFC596
            6FFFD9936AFFC68E64FFC2A486FFFFFFF9FFFAF4FDFFEAFAF6FFFCF8FFFFF9E7
            ADFFDDB845FFE2CA8AFFF8F5F0FFF6F8FBFFF3F7F6FFF9F8F3FFF9F4FAFFF6F7
            F7FFF7F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF6F6F6FFF7F7F7FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFBFBFBFFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F6F6FFF6F6F6FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
            FCFFF6F6F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F7FFF9F7F5FFF9F6F7FFF5F6F7FFF7F8
            F7FFFFFFFEFFE6C8B6FFB48767FFC19366FFCD9669FFD2926EFFC38B61FFC5A6
            87FFFFFFF9FFF7F7F6FFFAF6F7FFFAFBFFFFF6EDC6FFE0B345FFEDC250FFEFE7
            B0FFFBFCFFFFF6F6F6FFF6F6F6FFF6F6F7FFF6F7F6FFF7F7F6FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6
            F6FFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFF6F6
            F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFF4F4
            F4FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFF5F5F5FFF5F5
            F5FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF6F6F7FFF9F7F5FFF5F7FAFFF5F7FFFFFFFEF8FFCBAD91FFC689
            63FFD29568FFCD9767FFCB9569FFC38661FFD2C0A5FFFFFFFEFFF4F4FFFFF8FA
            FDFFFEFFF5FFFCEBC9FFDDB93DFFECBD38FFE9C888FFFFFFEEFFF7F8F8FFF5F5
            F5FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFFAFAFAFFFFFF
            FFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFF8F8F8FFF6F6F6FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF5F5F5FFFCFCFCFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFF7F7F7FFF6F6F6FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F6FFF6F7F7FFF6F7F7FFF7F7F6FFF7F6
            F7FFEDF7F6FFF5FEFBFFF8F0E8FFC0927CFFD48A65FFC79664FFD19468FFDC8B
            6BFFBE876DFFECE5CBFFFFFFFEFFFBF7FBFFFFFDF9FFEAE0C6FFF0E1B4FFDEB4
            46FFECC431FFDCBE5AFFFFFDF4FFF7F4FFFFF6F7F7FFF7F7F7FFF6F6F6FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFFBFBFBFFFEFEFEFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF9F9F9FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFF9F9F9FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F6FFF6F7F6FFF6F7F7FFF6F6F7FFF7F7F6FFF6F7F7FFFFFCFFFFEFDA
            D3FFB98964FFCC9464FFC89468FFD39870FFBB8867FFCCAD9AFFFFFEF9FFF8FC
            FFFFFFFCFEFFF3F0D2FFD4C982FFEFD975FFE7B444FFECBF37FFE5B660FFFFFF
            E3FFE9FCF6FFF9F7F6FFF7F6F6FFF6F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F6F6FFF7F7F7FFFEFEFEFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
            FDFFF5F5F5FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F6F6FFF6F6F6FFF7F7F7FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFCFCFCFFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F6FFF6F4
            FCFFFFF6F3FFFCF7F1FFE9F3FCFFFEFFFFFFEBD3C1FFB9886AFFCA9266FFC690
            61FFD7AD86FFC3957EFFEEDED0FFF5FFFFFFF3FDF9FFFFFEF5FFE9D591FFDFBF
            65FFECCD52FFEEC134FFF7BC3BFFCDBF58FFFFFEDDFFF7F5FEFFECF6FAFFF7F6
            F8FFF7F7F6FFF6F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7
            F7FFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFF6F6F6FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F6F6FFFDFDFDFFFEFEFEFFFFFFFFFFFFFFFFFFFDFDFDFFFEFEFEFFF6F6
            F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F6FFF4F5FBFFFCF6F6FFF9F7
            F5FFFAFEFFFFE6D6C2FFBF895BFFC89060FFC9966CFFDEBD9CFFD6BAA4FFFFFC
            F6FFFFF9FFFFFFFFFFFFF5EDC2FFD3C157FFE6BE42FFF0C047FFEFC13DFFDFBB
            42FFDEBF6EFFFFFEEAFFFFF6FDFFF3F4FEFFF3F7F6FFF7F6F7FFF6F7F6FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFFAFAFAFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF5F5F5FFFBFB
            FBFFFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFF7F7F7FFF6F6F6FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F6F6FFF5F7F7FFF2F6F7FFFCFAFDFFF0DFD1FFC389
            5CFFC98F5DFFC89D77FFF3E1CDFFE8E0DCFFFAFCFFFFF0FCFFFFFFFFF0FFE9D1
            91FFE2B544FFECC235FFFAC735FFFBC23DFFE3B440FFE3D386FFFFFFF1FFF9F4
            FFFFF3F3FEFFF0FAF2FFF5FBEEFFFAF4FBFFF7F6F7FFF6F7F6FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F6F6FFF7F7F7FFF6F6F6FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
            FEFFFEFEFEFFF6F6F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF8F8F8FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFF6F6F6FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F6F7FFF5F8F6FFF4F8FAFFFAEFE6FFBF8F6BFFC48C62FFC4A38DFFFFFF
            F9FFF7F7FDFFF3FAFFFFF5FBFAFFFBFADAFFD1BE63FFE5C030FFFAC536FFF7BA
            4EFFECBB42FFD9AF52FFF6E6ACFFFFFFECFFF3F5FFFFF0FCEFFFF2FBF0FFF5FC
            ECFFF8FAEFFFFBF0FFFFF7F6F7FFF6F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7
            F7FFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFDFDFDFFFCFCFCFFF6F6
            F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF6F6F6FFF7F7F7FFF6F6F6FFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
            FFFFFEFEFEFFFEFEFEFFF5F5F5FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F7FFF6F8
            F7FFFFFEFEFFCBAB92FFCC8F5CFFC3A18AFFFFFFFFFFFBF7FDFFF3F5FAFFFFFF
            F0FFF9EDC7FFDFB846FFF0BE3EFFF8BF41FFF5C141FFEABF35FFDDBC5DFFFBF5
            D1FFF6FCFDFFF0F8FCFFFDF3FCFFF6F7F5FFF8F2FEFFFBF4F9FFFBF8F1FFFAF5
            F8FFF6F6F6FFF6F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFFBFBFBFFFFFF
            FFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFF9F9F9FFF6F6F6FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6
            F6FFF7F7F7FFF6F6F6FFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFF
            FFFFFAFAFAFFF6F6F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F7FFF2FFFAFFECD4C7FFDF97
            7EFFB7997BFFFFFEF6FFFBF8F3FFF1F2FFFFF3F9FFFFF8F4B8FFE5B245FFF0C4
            37FFF4BE4AFFFBBE40FFE7BD30FFDBCE7FFFFDFFF7FFFAF9FAFFF5F6F9FFF5F6
            F7FFF8F6F7FFF7F6F7FFF6F6F8FFF8F6F8FFF7F6F6FFF6F7F6FFF6F7F6FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFFEFEFEFFFDFDFDFFFFFFFFFFFFFF
            FFFFFEFEFEFFFEFEFEFFF6F6F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6
            F6FFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFF5F5
            F5FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF6F6F6FFF7F7F8FFF6F8EFFFDCBEAAFFC6967FFFF6F3DFFFFAF8
            F6FFF5F7FEFFF6F4FEFFFFF8D9FFCEB453FFF0C143FFFDBA4BFFEBBE44FFD4B7
            3CFFF0DF97FFFFFFFEFFF7F6FBFFF6F6F7FFF7F7F6FFF7F7F6FFF6F7F6FFF6F7
            F6FFF6F7F6FFF6F7F6FFF6F7F7FFF6F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F6F6FFF8F8F8FFFEFEFEFFFDFDFDFFFFFFFFFFFFFFFFFFFEFEFEFFFBFB
            FBFFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFF6F6F6FFFBFB
            FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFF5F5F5FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7
            F7FFF7F8F9FFFFF9EDFFC0A691FFE0D5C5FFF7FFF8FFF4F5F9FFEEF0FFFFFFFF
            F1FFE3BE6AFFEEBD3FFFEEC33FFFFFC03DFFD8BA40FFEDECB2FFFFFBFFFFF4F5
            FAFFF5F7F5FFF7F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF5F5F5FFFDFD
            FDFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFFF7F7F7FFF6F6F6FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF7F7F7FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFF5F5F5FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F7F7FFF6F7F7FFF7F7F7FFF5F5F5FFF9FAFBFFE6D9
            D0FFD1C1B2FFFFFEF9FFF4F7F8FFF3F6F8FFF9FAFDFFF3EAB4FFE4B73EFFFCC2
            3DFFEDC240FFE0BC36FFEFE6A0FFFDF9FFFFF4F0FFFFF1FDECFFF6F9F3FFF7F6
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF6F6F6FFF7F7F7FFF5F5F5FFF7F7F7FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFCFCFCFFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF5F5F5FFFCFCFCFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFF9F9F9FFF6F6F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7
            F7FFF6F7F7FFF7F7F7FFF6F6F6FFF8F8F8FFFAFBFCFFCFC6BFFFFCF5EFFFFBF5
            FBFFFFF2FBFFF6F6F7FFFFFFF3FFD3C170FFE9C13CFFF6C044FFEABE3EFFE0CA
            85FFFFFCFFFFF6F5FEFFFBFDE9FFFAF2FCFFF6F4F9FFF7F7F6FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6
            F6FFF7F7F7FFF5F5F5FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFAFAFAFFF6F6F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF6F6F6FFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFEFEFEFFF5F5F5FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFF8F7F7FFFAF6
            F7FFFAF6F6FFFBF6F7FFFAF6F6FFDBD9D9FFFBFCFCFFF7F8F7FFF7F6F6FFF6F7
            FAFFFFFCEAFFDEB43FFFF0BE4AFFF9C23AFFDEB93AFFF9F7F3FFF8F9FCFFF6F6
            F7FFF6F7F6FFF7F6F7FFF6F6F7FFF7F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF8F8F8FFF4F4F4FFF9F9
            F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFEFEFEFFF5F5F5FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6
            F6FFF6F6F6FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA
            FAFFF7F7F7FFF6F6F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFF7F7F7FFF8F7F7FFF8F6F6FFFBFA
            FAFFEEECECFFF5F4F4FFF6F7F7FFF5F5F5FFF6F7F7FFF7F9FDFFF1E8CCFFE5BB
            36FFF3BE46FFF3BC3DFFE5C95FFFFEFFFFFFF7F8F9FFF6F6F6FFF6F6F7FFF6F7
            F6FFF7F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFFEFEFEFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFEFEFEFFF8F8F8FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF5F5F5FFF9F9
            F9FFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFFFFF8F8F8FFF6F6
            F6FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F6FFF7F7F7FFF6F6F6FFF7F7
            F7FFF6F6F6FFF7F7F7FFF6F6F6FFF8F9FEFFEBE2BEFFEEC131FFF5BE41FFF1BB
            43FFE7D886FFFCFBFFFFF7F7F8FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F6F6FFF6F6F6FFFAFAFAFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFF
            FFFFFDFDFDFFF4F4F4FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF5F5F5FFFBFBFBFFFFFF
            FFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFCFCFCFFF7F7F7FFF6F6F6FFF6F6
            F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF5F7F7FFF4F6F7FFF4F6F7FFF4F6F6FFF4F7F7FFF5F7F7FFF7F7F7FFF6F6
            F6FFF7F7F7FFF8F9FEFFEBE2C2FFE8BD30FFF8C042FFEFBB41FFE5D989FFFCFD
            FFFFF6F6F7FFF6F6F6FFF6F7F7FFF6F7F6FFF6F7F6FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF7F7
            F7FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFF9F9F9FFF4F4
            F4FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFF6F6F6FFFFFFFFFFFEFEFEFFFEFE
            FEFFFFFFFFFFFEFEFEFFFFFFFFFFFBFBFBFFF6F6F6FFF7F7F7FFF6F6F6FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F7FFF3F7
            F7FFF3F7F7FFF3F7F7FFF3F7F7FFF6F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F8
            FCFFEEE9D0FFE5BC38FFF9C043FFEEBC41FFDFCE75FFFBFDFFFFF5F5F7FFF7F7
            F7FFF8F6F7FFF8F5F9FFF6F6F7FFF6F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFF6F6F6FFFDFDFDFFFEFEFEFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFF5F5F5FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F6F6FFF7F7F7FFF5F5F5FFFAFAFAFFFFFFFFFFFEFEFEFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFF9F9F9FFF5F5F5FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F7FFF7F6F7FFF7F6
            F7FFF7F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F9FFFFFEEEFFD3B7
            42FFF8BF3FFFE6C146FFDFB84DFFFFFFEAFFF5F7FCFFF6F4F9FFF9F9F1FFFCF4
            F8FFF7F6F8FFF6F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F6F6FFF6F6F6FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFDFDFDFFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6
            F6FFF6F6F6FFF6F6F6FFFCFCFCFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
            FFFFFEFEFEFFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F8FFFDFEFBFFE4CD7DFFF5BA39FFF9C5
            37FFE7BA3FFFE2D08FFFFFFFF5FFF1F4FFFFEDF9F5FFF7FFE7FFF7F7F4FFF6F6
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF6F6F6FFFAFA
            FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFF5F5
            F5FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7
            F7FFF6F6F6FFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFDFD
            FDFFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F6F7FFF4F8FDFFFAF2D3FFE2B547FFFCC436FFF1C13FFFDAB9
            3BFFEEE2A2FFFFFDFFFFF3F4FFFFF4F1FCFFF7F6F7FFF6F7F6FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F6F6FFF7F7F7FFF6F6F6FFF6F6F6FFF7F7F7FFFFFFFFFFFEFEFEFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFF6F6F6FFF7F7F7FFF6F6F6FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FFF9F9
            F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFF7F7
            F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6
            F7FFF4F8F1FFFBFDFFFFE3DB95FFE6B946FFF1C043FFF2C837FFE0B445FFECD7
            95FFFFFFE7FFFDF4FFFFF6F5FBFFF6F6F7FFF7F7F7FFF7F6F6FFF6F6F7FFF7F6
            F7FFF7F6F7FFF6F6F7FFF6F7F7FFF6F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFF6F6
            F6FFF4F4F4FFF7F7F7FFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
            FFFFFCFCFCFFF6F6F6FFF6F6F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF8F8F8FFF6F6F6FFFAFAFAFFFFFF
            FFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFF6F6F6FFF6F6
            F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F7FFFBFCEDFFEAF1
            FFFFFBFFEDFFE4CB80FFEDC652FFEDC13BFFF7C240FFEABD36FFDAC45CFFEFEB
            BFFFFFFFFCFFFBFDFEFFF3F7FBFFF4F7F9FFF9F9F5FFF3F8F3FFF5F9F5FFF6F8
            F6FFF7F6F6FFF9F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFF6F6F6FFF6F6F6FFF8F8F8FFFEFE
            FEFFFDFDFDFFFEFEFEFFFFFFFFFFFEFEFEFFFFFFFFFFFEFEFEFFF7F7F7FFF7F7
            F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF7F7F7FFFAFAFAFFFEFEFEFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFF5F5F5FFF6F6F6FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F7FFF8FAEFFFF6F6F7FFF8F3FFFFFFFF
            F6FFDDD79BFFE8D377FFE2BE51FFF0BC3DFFF2BF3CFFE3B93AFFDBC05BFFEADC
            98FFFAF6DBFFFEFEF4FFFFFFF7FFFDFEFCFFFBFAF9FFFDFAF9FFFEF9F9FFFDF6
            F6FFF5F5F5FFF9F9F9FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF6F6F6FFF5F5F5FFF8F8F8FFFFFFFFFFFDFDFDFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFF5F5F5FFF7F7F7FFF6F6F6FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFFDFDFDFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
            F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF6F6F7FFFAF8F2FFF7F8F4FFF4F5FAFFFAF3FDFFFFF9FFFFF2E9
            D3FFE7DEB6FFE3D091FFDFB851FFEFB936FFF9BB3CFFF6B83FFFEBBA4CFFD8BC
            62FFCCC77EFFD7C596FFDCD0A4FFDDD7AFFFDDDEBDFFE8EED0FFF6F6F6FFF7F7
            F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF5F5
            F5FFF8F8F8FFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFF8F8F8FFF6F6F6FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F6F6FFF7F7F7FFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFEFEFEFFFFFFFFFFFCFCFCFFF6F6F6FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6
            F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7
            F6FFF9F4FAFFF8F5F8FFF3FBF1FFF3F9F0FFF6F7F7FFFFF9F8FFFAF9F9FFF5FD
            F8FFFCFEE2FFF1E5ABFFDECA78FFDEB959FFE6B84EFFEDCC69FFE5DA86FFF8E7
            9BFFFFF9BDFFFAF8D5FFF8F3E8FFF7F5FAFFF8F8F8FFF7F7F7FFF7F7F7FFF6F6
            F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF6F6F6FFF7F7F7FFF6F6F6FFF5F5F5FFF8F8F8FFFFFFFFFFFEFE
            FEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFFFFFFFFFAFAFAFFF5F5F5FFF7F7
            F7FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6
            F6FFF6F6F6FFF7F7F7FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFEFEFEFFFEFEFEFFF7F7F7FFF4F4F4FFF5F5F5FFF7F7F7FFF6F6F6FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F6FFF7F6F7FFF8F6
            F7FFF8F7F5FFF7F9F2FFF6FCEEFFF5F9F4FFF2F7F8FFEFF6FAFFF0F6F9FFF7FD
            FFFFF6FFF5FFFDFFEAFFFDF7D9FFF1E6C3FFE8DEB8FFE5E0B8FFEBE4C7FFEDE8
            DAFFF6F4F5FFF6F5FCFFF7F7F7FFF6F6F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF7F7F7FFF6F6
            F6FFF6F6F6FFF4F4F4FFFAFAFAFFFEFEFEFFFEFEFEFFFDFDFDFFFFFFFFFFFFFF
            FFFFFEFEFEFFFFFFFFFFFAFAFAFFF5F5F5FFF6F6F6FFF7F7F7FFF6F6F6FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6
            F6FFF7F7F7FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFF
            FFFFFFFFFFFFFBFBFBFFF5F5F5FFF6F6F6FFF7F7F7FFF5F5F5FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F7FFF5FAF2FFF7F8F3FFF9F4FBFFF9F3
            FCFFF9F4F9FFF0F7F7FFF4F8F4FFFBF8F1FFFDF8F5FFFBF5F8FFF4F7FCFFF1F4
            FEFFF2F5FFFFF8FAFFFFFBFCFBFFFBF8FDFFF9F8FBFFF8FBF8FFF6FAF1FFF3F9
            EEFFF7F6F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF6F6F6FFF7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FFF8F8F8FFFEFE
            FEFFFFFFFFFFFEFEFEFFFEFEFEFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFAFA
            FAFFF5F5F5FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6
            F6FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFDFDFDFFF8F8F8FFF5F5F5FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F6F7FFF6F6F7FFF6F7F6FFF6F7F6FFF6F7F6FFF7F6
            F7FFF7F6F7FFF6F6F7FFF6F6F7FFF6F7F6FFF7F6F6FFF7F7F6FFF7F7F6FFF6F6
            F6FFF6F6F7FFF6F7F7FFF6F6F7FFF6F6F7FFF7F6F7FFF7F6F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6
            F6FFF7F7F7FFF8F8F8FFF6F6F6FFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFF5F5F5FFF7F7F7FFF6F6
            F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFFDFD
            FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFAFAFAFFF6F6F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFF5F5F5FFF8F8
            F8FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFF7F7F7FFF5F5F5FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFFBFBFBFFFFFF
            FFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFEFE
            FEFFF9F9F9FFF5F5F5FFF5F5F5FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF5F5
            F5FFF7F7F7FFF5F5F5FFF6F6F6FFF7F7F7FFFCFCFCFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFFFFFEFEFEFFF8F8F8FFF6F6
            F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF5F5F5FFF8F8F8FFFEFEFEFFFFFF
            FFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
            FDFFF7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF7F7F7FFF6F6
            F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF5F5F5FFF6F6F6FFF6F6
            F6FFF9F9F9FFFDFDFDFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFCFCFCFFF7F7F7FFF6F6F6FFF8F8F8FFF6F6F6FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF6F6F6FFFDFDFDFFFFFFFFFFFEFE
            FEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFDFD
            FDFFF9F9F9FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF6F6
            F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF6F6
            F6FFF6F6F6FFF6F6F6FFF5F5F5FFF7F7F7FFFCFCFCFFFFFFFFFFFFFFFFFFFFFF
            FFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFAFA
            FAFFF5F5F5FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F6F6FFF7F7F7FFF5F5F5FFF6F6F6FFF9F9F9FFFFFFFFFFFEFEFEFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
            FEFFFBFBFBFFF8F8F8FFF6F6F6FFF6F6F6FFF6F6F6FFF8F8F8FFF6F6F6FFF6F6
            F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF7F7
            F7FFF7F7F7FFF7F7F7FFF5F5F5FFF7F7F7FFF5F5F5FFF6F6F6FFF7F7F7FFF9F9
            F9FFFCFCFCFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFEFEFEFFFFFFFFFFFEFEFEFFFCFCFCFFF6F6F6FFF6F6F6FFF7F7F7FFF6F6
            F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFFDFDFDFFFFFFFFFFFFFFFFFFFEFE
            FEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFEFE
            FEFFFDFDFDFFFBFBFBFFF9F9F9FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
            F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
            F6FFF5F5F5FFF6F6F6FFFBFBFBFFFCFCFCFFFDFDFDFFFEFEFEFFFEFEFEFFFDFD
            FDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
            FCFFF9F9F9FFF6F6F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FFFCFCFCFFFFFFFFFFFFFFFFFFFDFD
            FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFCFCFFF9F9F9FFF8F8F8FFF8F8F8FFF5F5
            F5FFF5F5F5FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
            F6FFF6F6F6FFF8F8F8FFF8F8F8FFF8F8F8FFFBFBFBFFFDFDFDFFFDFDFDFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFBFBFBFFF8F8F8FFF6F6F6FFF6F6
            F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF6F6F6FFF5F5F5FFF9F9F9FFFCFCFCFFFEFEFEFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFE
            FEFFFDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFEFEFEFFFEFE
            FEFFFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFDFD
            FDFFFAFAFAFFF7F7F7FFF6F6F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6
            F6FFF8F8F8FFF5F5F5FFF6F6F6FFF8F8F8FFFDFDFDFFFEFEFEFFFFFFFFFFFFFF
            FFFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFE
            FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFF6F6F6FFF6F6F6FFF6F6
            F6FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7
            F7FFF6F6F6FFF6F6F6FFF6F6F6FFF8F8F8FFFAFAFAFFFDFDFDFFFFFFFFFFFFFF
            FFFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFC
            FCFFF9F9F9FFF6F6F6FFF6F6F6FFF7F7F7FFF6F6F6FFF7F7F7FFF6F6F6FFF6F6
            F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F6F6FFF6F6F6FFF5F5F5FFF6F6F6FFF8F8F8FFF9F9F9FFFCFCFCFFFEFE
            FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFCFCFCFFF8F8F8FFF6F6F6FFF7F7F7FFF7F7F7FFF8F8
            F8FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF9F9F9FFFBFB
            FBFFFDFDFDFFFDFDFDFFFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFFFF
            FFFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
            FEFFFEFEFEFFFFFFFFFFFFFFFFFFFDFDFDFFFBFBFBFFF9F9F9FFF9F9F9FFF5F5
            F5FFF5F5F5FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFF6F6F6FFF5F5F5FFF6F6
            F6FFF7F7F7FFF7F7F7FFF7F7F7FFFAFAFAFFF9F9F9FFFCFCFCFFFCFCFCFFFCFC
            FCFFFCFCFCFFFDFDFDFFFBFBFBFFFBFBFBFFFBFBFBFFF9F9F9FFF9F9F9FFF8F8
            F8FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF8F8F8FFF7F7F7FFF6F6F6FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF7F7F7FFF6F6F6FFF6F6F6FFF6F6
            F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
            F6FFF5F5F5FFF5F5F5FFF6F6F6FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF6F6F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FF}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 381.732530000000000000
        Width = 272.126160000000000000
        DataSet = frxDBDataset_vendaItem
        DataSetName = 'frxDBDataset_vendaItem'
        RowCount = 0
        object db_ViewNotaFiscalItensPRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 0.779530000000000000
          Width = 34.015770000000000000
          Height = 13.228346460000000000
          DataField = 'PROD_NITEM'
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset_vendaItem."PROD_NITEM"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 16.236240000000000000
          Width = 49.133890000000000000
          Height = 13.228346460000000000
          DataField = 'PROD_CBARRA'
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset_vendaItem."PROD_CBARRA"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 73.228510000000000000
          Top = 0.779530000000000000
          Width = 196.535560000000000000
          Height = 13.228346460000000000
          DataField = 'PROD_XPROD'
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset_vendaItem."PROD_XPROD"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 79.551330000000000000
          Top = 16.236240000000000000
          Width = 34.015770000000000000
          Height = 13.228346460000000000
          DataField = 'PROD_QCOM'
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset_vendaItem."PROD_QCOM"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 118.803340000000000000
          Top = 16.236240000000000000
          Width = 30.236240000000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset_vendaItem."PROD_UCOM"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 151.039580000000000000
          Top = 16.236240000000000000
          Width = 45.354360000000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset_vendaItem."PROD_VUNCOM"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 38.133890000000000000
          Top = 0.779530000000000000
          Width = 34.015770000000000000
          Height = 13.228346460000000000
          DataField = 'IDPRODUTO'
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset_vendaItem."IDPRODUTO"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 236.173470000000000000
          Top = 16.236240000000000000
          Width = 34.015770000000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset_vendaItem."PROD_VPROD"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 197.299320000000000000
          Top = 16.236240000000000000
          Width = 37.795300000000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset_vendaItem."PROD_VUNCOM"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 313.700990000000000000
        Width = 272.126160000000000000
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Top = 9.456710000000000000
          Width = 22.677180000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Item')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 38.133890000000000000
          Top = 9.456710000000000000
          Width = 34.015770000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 79.551330000000000000
          Top = 24.456710000000000000
          Width = 34.015770000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 118.803340000000000000
          Top = 24.456710000000000000
          Width = 30.236240000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Un')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 151.039580000000000000
          Top = 24.456710000000000000
          Width = 45.354360000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Pr.Norm')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 236.173470000000000000
          Top = 24.456710000000000000
          Width = 34.015770000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 41.252010000000000000
          Width = 272.126160000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line2: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 5.779530000000000000
          Width = 272.126160000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Top = 24.456710000000000000
          Width = 49.133890000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 73.228510000000000000
          Top = 9.456710000000000000
          Width = 45.354360000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Descricao')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 197.299320000000000000
          Top = 24.456710000000000000
          Width = 37.795300000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Unit'#225'rio')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 64.252010000000000000
        Top = 438.425480000000000000
        Width = 272.126160000000000000
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 188.157700000000000000
          Top = 7.338590000000000000
          Width = 83.149660000000000000
          Height = 11.338582680000000000
          DataField = 'VLRBRUTO'
          DataSet = frxDBDataset_venda
          DataSetName = 'frxDBDataset_venda'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset_venda."VLRBRUTO"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 25.118120000000000000
          Top = 7.338590000000000000
          Width = 162.519790000000000000
          Height = 11.338582677165350000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal:')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 188.157700000000000000
          Top = 26.456710000000000000
          Width = 83.149660000000000000
          Height = 11.338582680000000000
          DataField = 'VLRDESCONTO'
          DataSet = frxDBDataset_venda
          DataSetName = 'frxDBDataset_venda'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset_venda."VLRDESCONTO"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 25.118120000000000000
          Top = 26.456710000000000000
          Width = 162.519790000000000000
          Height = 11.338582677165350000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto:')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 188.157700000000000000
          Top = 47.913420000000000000
          Width = 83.149660000000000000
          Height = 11.338582680000000000
          DataField = 'VLRLIQUIDO'
          DataSet = frxDBDataset_venda
          DataSetName = 'frxDBDataset_venda'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset_venda."VLRLIQUIDO"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 25.118120000000000000
          Top = 47.913420000000000000
          Width = 162.519790000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total da Venda:')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 272.126160000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 574.488560000000000000
        Width = 272.126160000000000000
        DataSet = frxDBDataset_FormasPGTOVenda
        DataSetName = 'frxDBDataset_FormasPGTOVenda'
        RowCount = 0
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 63.590600000000000000
          Top = 2.811070000000000000
          Width = 139.842610000000000000
          Height = 11.338582680000000000
          DataField = 'DESCRICAO'
          DataSet = frxDBDataset_FormasPGTOVenda
          DataSetName = 'frxDBDataset_FormasPGTOVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset_FormasPGTOVenda."DESCRICAO"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 205.937230000000000000
          Top = 2.811070000000000000
          Width = 64.252010000000000000
          Height = 11.338582680000000000
          DataSet = frxDBDataset_FormasPGTOVenda
          DataSetName = 'frxDBDataset_FormasPGTOVenda'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset_FormasPGTOVenda."VLRDOCUMENTO"]')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 17.236240000000000000
          Width = 272.126160000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 158.740260000000000000
        Top = 94.488250000000000000
        Width = 272.126160000000000000
        object Memo4: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Top = 1.559060000000000000
          Width = 272.126160000000000000
          Height = 11.338582680000000000
          DataSet = frxDBDataset_filial
          DataSetName = 'frxDBDataset_filial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset_filial."FANTASIA"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo37: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Top = 13.118120000000000000
          Width = 272.126160000000000000
          Height = 11.338582680000000000
          DataSet = frxDBDataset_filial
          DataSetName = 'frxDBDataset_filial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset_filial."CIDADE"] - [frxDBDataset_filial."ESTADO"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Top = 25.236240000000000000
          Width = 272.126160000000000000
          Height = 11.338582680000000000
          DataSet = frxDBDataset_filial
          DataSetName = 'frxDBDataset_filial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'CNPJ. [frxDBDataset_filial."CNPJ"] - IE. [frxDBDataset_filial."I' +
              'E"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Top = 37.692950000000000000
          Width = 272.126160000000000000
          Height = 11.338582680000000000
          DataSet = frxDBDataset_filial
          DataSetName = 'frxDBDataset_filial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pedido')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo40: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Top = 49.913420000000000000
          Width = 272.126160000000000000
          Height = 11.338582680000000000
          DataSet = frxDBDataset_venda
          DataSetName = 'frxDBDataset_venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Data: [frxDBDataset_venda."DTAVENDA"] [frxDBDataset_venda."HRAVE' +
              'NDA"]        Caixa: [frxDBDataset_venda."NUM_CAIXA"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo41: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Top = 62.149660000000000000
          Width = 272.126160000000000000
          Height = 11.338582680000000000
          DataSet = frxDBDataset_venda
          DataSetName = 'frxDBDataset_venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Numero: [frxDBDataset_venda."IDVENDA"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Top = 73.488250000000000000
          Width = 272.126160000000000000
          Height = 11.338582680000000000
          DataSet = frxDBDataset_venda
          DataSetName = 'frxDBDataset_venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente: [frxDBDataset_ClientesVenda."RAZAOSOCIAL"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Top = 85.385900000000000000
          Width = 272.126160000000000000
          Height = 11.338582680000000000
          DataSet = frxDBDataset_venda
          DataSetName = 'frxDBDataset_venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'End: [frxDBDataset_ClientesVenda."ENDERECO"], [frxDBDataset_Clie' +
              'ntesVenda."BAIRRO"], [frxDBDataset_ClientesVenda."COMPLEMENTO"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Top = 120.874150000000000000
          Width = 272.126160000000000000
          Height = 11.338582680000000000
          DataSet = frxDBDataset_venda
          DataSetName = 'frxDBDataset_venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF/CNPJ: [frxDBDataset_ClientesVenda."CNPJ"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Top = 144.110390000000000000
          Width = 272.126160000000000000
          Height = 11.338582680000000000
          DataSet = frxDBDataset_venda
          DataSetName = 'frxDBDataset_venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor: [frxDBDataset_VendedorVenda."RAZAOSOCIAL"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Top = 97.283550000000000000
          Width = 272.126160000000000000
          Height = 11.338582680000000000
          DataSet = frxDBDataset_venda
          DataSetName = 'frxDBDataset_venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade: [frxDBDataset_ClientesVenda."NOMECIDADE"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Top = 108.740260000000000000
          Width = 272.126160000000000000
          Height = 11.338582680000000000
          DataSet = frxDBDataset_venda
          DataSetName = 'frxDBDataset_venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Fone: [frxDBDataset_ClientesVenda."PESSOALCELULAR"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Top = 132.212740000000000000
          Width = 272.126160000000000000
          Height = 11.338582680000000000
          DataSet = frxDBDataset_venda
          DataSetName = 'frxDBDataset_venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RG/IE: [frxDBDataset_VendedorVenda."IE"]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 525.354670000000000000
        Width = 272.126160000000000000
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Top = 8.118120000000000000
          Width = 56.692950000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Pagamentos')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 63.590600000000000000
          Top = 8.118120000000000000
          Width = 139.842610000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Condicao')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 205.937230000000000000
          Top = 8.118120000000000000
          Width = 64.252010000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 23.456710000000000000
          Width = 272.126160000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line5: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 5.370130000000000000
          Width = 272.126160000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
    end
  end
  object frxDBDataset_venda: TfrxDBDataset
    UserName = 'frxDBDataset_venda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IDVENDA=IDVENDA'
      'DTAVENDA=DTAVENDA'
      'HRAVENDA=HRAVENDA'
      'IDCLIENTE=IDCLIENTE'
      'IDVENDEDOR=IDVENDEDOR'
      'VLRBRUTO=VLRBRUTO'
      'VLRDESCONTO=VLRDESCONTO'
      'VLRLIQUIDO=VLRLIQUIDO'
      'ORIGEMVENDA=ORIGEMVENDA'
      'NUMNFE=NUMNFE'
      'STATUS=STATUS'
      'OBSERVACAO=OBSERVACAO'
      'IDFILIAL=IDFILIAL'
      'IDSETOR=IDSETOR'
      'IDTIPODOCUMENTO=IDTIPODOCUMENTO'
      'MODELOFISCAL=MODELOFISCAL'
      'NUMNFCE=NUMNFCE'
      'NUM_CAIXA=NUM_CAIXA'
      'VLRTROCO=VLRTROCO')
    DataSet = QRY_Venda
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1256
    Top = 96
  end
  object frxDBDataset_vendaItem: TfrxDBDataset
    UserName = 'frxDBDataset_vendaItem'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IDVENDAITEM=IDVENDAITEM'
      'IDVENDA=IDVENDA'
      'IDPRODUTO=IDPRODUTO'
      'IDPRODUTODETALHE=IDPRODUTODETALHE'
      'PROD_NITEM=PROD_NITEM'
      'PROD_CEAN=PROD_CEAN'
      'PROD_XPROD=PROD_XPROD'
      'PROD_NCM=PROD_NCM'
      'PROD_EXTIPI=PROD_EXTIPI'
      'PROD_CFOP=PROD_CFOP'
      'PROD_UCOM=PROD_UCOM'
      'PROD_QCOM=PROD_QCOM'
      'PROD_VUNCOM=PROD_VUNCOM'
      'PROD_VPROD=PROD_VPROD'
      'PROD_CEANTRIB=PROD_CEANTRIB'
      'PROD_UTRIB=PROD_UTRIB'
      'PROD_QTRIB=PROD_QTRIB'
      'PROD_VUNTRIB=PROD_VUNTRIB'
      'PROD_VOUTRO=PROD_VOUTRO'
      'PROD_VFRETE=PROD_VFRETE'
      'PROD_VSEG=PROD_VSEG'
      'PROD_VDESC=PROD_VDESC'
      'PROD_CEST=PROD_CEST'
      'PROD_INFADPROD=PROD_INFADPROD'
      'PROD_CBARRA=PROD_CBARRA'
      'PROD_CBARRATRIB=PROD_CBARRATRIB')
    DataSet = QRY_VendaItem
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1256
    Top = 160
  end
  object frxDBDataset_filial: TfrxDBDataset
    UserName = 'frxDBDataset_filial'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IDEMPRESA=IDEMPRESA'
      'RAZAO=RAZAO'
      'FANTASIA=FANTASIA'
      'CNPJ=CNPJ'
      'IE=IE'
      'FONE=FONE'
      'CEP=CEP'
      'ENDERECO=ENDERECO'
      'NUMERO=NUMERO'
      'BAIRRO=BAIRRO'
      'CODIGOIBGE=CODIGOIBGE'
      'CRT=CRT'
      'CIDADE=CIDADE'
      'ESTADO=ESTADO'
      'COMPLEMENTO=COMPLEMENTO')
    DataSet = QRY_Empresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1256
    Top = 216
  end
  object QRY_Caixa: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from financaixa where idcaixacardex = :idcaixa')
    Left = 136
    Top = 248
    ParamData = <
      item
        Name = 'IDCAIXA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_CaixaIDCAIXACARDEX: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDCAIXACARDEX'
      Origin = 'IDCAIXACARDEX'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_CaixaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 50
    end
    object QRY_CaixaDTAMOVIMENTO: TDateField
      FieldName = 'DTAMOVIMENTO'
      Origin = 'DTAMOVIMENTO'
    end
    object QRY_CaixaHRAMOVIMENTO: TTimeField
      FieldName = 'HRAMOVIMENTO'
      Origin = 'HRAMOVIMENTO'
    end
    object QRY_CaixaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object QRY_CaixaVLRDOCUMENTO: TBCDField
      FieldName = 'VLRDOCUMENTO'
      Origin = 'VLRDOCUMENTO'
      Precision = 18
    end
    object QRY_CaixaIDFORMAPAGAMENTO: TIntegerField
      FieldName = 'IDFORMAPAGAMENTO'
      Origin = 'IDFORMAPAGAMENTO'
    end
    object QRY_CaixaNUMCAIXA: TIntegerField
      FieldName = 'NUMCAIXA'
      Origin = 'NUMCAIXA'
    end
    object QRY_CaixaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 200
    end
    object QRY_CaixaIDVENDA: TIntegerField
      FieldName = 'IDVENDA'
      Origin = 'IDVENDA'
    end
  end
  object QRY_ConsultaPreco: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select'
      '  ep.*,'
      '  ei.*,'
      '  em.sigla'
      'from estprodutos ep'
      'inner join estprodutositens ei'
      'on (ep.idproduto = ei.idproduto)'
      'inner join estunidades em'
      'on (ep.idunidade = em.idunidade)'
      'order by ep.idproduto')
    Left = 272
    Top = 240
    object QRY_ConsultaPrecoIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_ConsultaPrecoIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
    end
    object QRY_ConsultaPrecoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
    end
    object QRY_ConsultaPrecoIDSUBGRUPO: TIntegerField
      FieldName = 'IDSUBGRUPO'
      Origin = 'IDSUBGRUPO'
    end
    object QRY_ConsultaPrecoIDMARCA: TIntegerField
      FieldName = 'IDMARCA'
      Origin = 'IDMARCA'
    end
    object QRY_ConsultaPrecoIDFABRICANTE: TIntegerField
      FieldName = 'IDFABRICANTE'
      Origin = 'IDFABRICANTE'
    end
    object QRY_ConsultaPrecoIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
      Origin = 'IDFORNECEDOR'
    end
    object QRY_ConsultaPrecoIDUNIDADE: TIntegerField
      FieldName = 'IDUNIDADE'
      Origin = 'IDUNIDADE'
    end
    object QRY_ConsultaPrecoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 50
    end
    object QRY_ConsultaPrecoCODBARRAS: TStringField
      FieldName = 'CODBARRAS'
      Origin = 'CODBARRAS'
      Size = 50
    end
    object QRY_ConsultaPrecoPERMITEDESCONTO: TStringField
      FieldName = 'PERMITEDESCONTO'
      Origin = 'PERMITEDESCONTO'
      Size = 1
    end
    object QRY_ConsultaPrecoDESCMAXIMO: TBCDField
      FieldName = 'DESCMAXIMO'
      Origin = 'DESCMAXIMO'
      Precision = 18
    end
    object QRY_ConsultaPrecoPAGARCOMISSAO: TStringField
      FieldName = 'PAGARCOMISSAO'
      Origin = 'PAGARCOMISSAO'
      Size = 1
    end
    object QRY_ConsultaPrecoCOMISSAOAVISTA: TBCDField
      FieldName = 'COMISSAOAVISTA'
      Origin = 'COMISSAOAVISTA'
      Precision = 18
    end
    object QRY_ConsultaPrecoNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
    end
    object QRY_ConsultaPrecoDATAHORACADASTRO: TSQLTimeStampField
      FieldName = 'DATAHORACADASTRO'
      Origin = 'DATAHORACADASTRO'
    end
    object QRY_ConsultaPrecoDATAHORAALTERACAO: TSQLTimeStampField
      FieldName = 'DATAHORAALTERACAO'
      Origin = 'DATAHORAALTERACAO'
    end
    object QRY_ConsultaPrecoATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 50
    end
    object QRY_ConsultaPrecoORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
    end
    object QRY_ConsultaPrecoDESCCOMPRA: TBCDField
      FieldName = 'DESCCOMPRA'
      Origin = 'DESCCOMPRA'
      Precision = 18
    end
    object QRY_ConsultaPrecoLOCALIZACAO: TIntegerField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
    end
    object QRY_ConsultaPrecoLOCALIZACAOIMPRESSAO: TIntegerField
      FieldName = 'LOCALIZACAOIMPRESSAO'
      Origin = 'LOCALIZACAOIMPRESSAO'
    end
    object QRY_ConsultaPrecoINFADICIONAIS: TStringField
      FieldName = 'INFADICIONAIS'
      Origin = 'INFADICIONAIS'
      Size = 255
    end
    object QRY_ConsultaPrecoAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 255
    end
    object QRY_ConsultaPrecoPOSSUIDERIVADOS: TStringField
      FieldName = 'POSSUIDERIVADOS'
      Origin = 'POSSUIDERIVADOS'
      Size = 1
    end
    object QRY_ConsultaPrecoCSTPISCOFINSENTRADA: TIntegerField
      FieldName = 'CSTPISCOFINSENTRADA'
      Origin = 'CSTPISCOFINSENTRADA'
    end
    object QRY_ConsultaPrecoCSTPISCOFINSSAIDA: TIntegerField
      FieldName = 'CSTPISCOFINSSAIDA'
      Origin = 'CSTPISCOFINSSAIDA'
    end
    object QRY_ConsultaPrecoCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
    end
    object QRY_ConsultaPrecoIDUSUARIOCADASTRO: TIntegerField
      FieldName = 'IDUSUARIOCADASTRO'
      Origin = 'IDUSUARIOCADASTRO'
    end
    object QRY_ConsultaPrecoIDUSUARIOALTERACAO: TIntegerField
      FieldName = 'IDUSUARIOALTERACAO'
      Origin = 'IDUSUARIOALTERACAO'
    end
    object QRY_ConsultaPrecoIDSETOR: TIntegerField
      FieldName = 'IDSETOR'
      Origin = 'IDSETOR'
    end
    object QRY_ConsultaPrecoCODBARRASCXA: TStringField
      FieldName = 'CODBARRASCXA'
      Origin = 'CODBARRASCXA'
      Size = 15
    end
    object QRY_ConsultaPrecoFOTO2: TStringField
      FieldName = 'FOTO2'
      Origin = 'FOTO2'
      Size = 255
    end
    object QRY_ConsultaPrecoFOTO3: TStringField
      FieldName = 'FOTO3'
      Origin = 'FOTO3'
      Size = 255
    end
    object QRY_ConsultaPrecoFOTO1: TStringField
      FieldName = 'FOTO1'
      Origin = 'FOTO1'
      Size = 255
    end
    object QRY_ConsultaPrecoREFERENCIA2: TStringField
      FieldName = 'REFERENCIA2'
      Origin = 'REFERENCIA2'
    end
    object QRY_ConsultaPrecoREFERENCIA3: TStringField
      FieldName = 'REFERENCIA3'
      Origin = 'REFERENCIA3'
    end
    object QRY_ConsultaPrecoIDANP: TIntegerField
      FieldName = 'IDANP'
      Origin = 'IDANP'
    end
    object QRY_ConsultaPrecoCOMISSAOAPRAZO: TBCDField
      FieldName = 'COMISSAOAPRAZO'
      Origin = 'COMISSAOAPRAZO'
      Precision = 18
    end
    object QRY_ConsultaPrecoPESOUNI: TBCDField
      FieldName = 'PESOUNI'
      Origin = 'PESOUNI'
      Precision = 18
    end
    object QRY_ConsultaPrecoIDPRODUTOITEM: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDPRODUTOITEM'
      Origin = 'IDPRODUTOITEM'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRY_ConsultaPrecoIDPRODUTO_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDPRODUTO_1'
      Origin = 'IDPRODUTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRY_ConsultaPrecoVLRCUSTOINICIAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLRCUSTOINICIAL'
      Origin = 'VLRCUSTOINICIAL'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object QRY_ConsultaPrecoVLRCUSTOENTRADA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLRCUSTOENTRADA'
      Origin = 'VLRCUSTOENTRADA'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object QRY_ConsultaPrecoVLRVENDAVISTA: TBCDField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'VLRVENDAVISTA'
      Origin = 'VLRVENDAVISTA'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object QRY_ConsultaPrecoVLRVENDAPRAZO: TBCDField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'VLRVENDAPRAZO'
      Origin = 'VLRVENDAPRAZO'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object QRY_ConsultaPrecoVLRATACADO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLRATACADO'
      Origin = 'VLRATACADO'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object QRY_ConsultaPrecoESTOQUEMINIMO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUEMINIMO'
      Origin = 'ESTOQUEMINIMO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoESTOQUEMAXIMO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUEMAXIMO'
      Origin = 'ESTOQUEMAXIMO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoICMSCOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSCOMPRA'
      Origin = 'ICMSCOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoREDUCAOBASECALCULOICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REDUCAOBASECALCULOICMS'
      Origin = 'REDUCAOBASECALCULOICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoMVACOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MVACOMPRA'
      Origin = 'MVACOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoICMSSTCOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSSTCOMPRA'
      Origin = 'ICMSSTCOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoVLRCUSTOOPERACIONAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLRCUSTOOPERACIONAL'
      Origin = 'VLRCUSTOOPERACIONAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoREDUCAOBASECALCULOICMSST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REDUCAOBASECALCULOICMSST'
      Origin = 'REDUCAOBASECALCULOICMSST'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoVLRICMSST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLRICMSST'
      Origin = 'VLRICMSST'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoIPICOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IPICOMPRA'
      Origin = 'IPICOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoFRETECOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'FRETECOMPRA'
      Origin = 'FRETECOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoVLRFRETECOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLRFRETECOMPRA'
      Origin = 'VLRFRETECOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoVLROUTROSCUSTOS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLROUTROSCUSTOS'
      Origin = 'VLROUTROSCUSTOS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoVLRPRECOCAIXA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLRPRECOCAIXA'
      Origin = 'VLRPRECOCAIXA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoPESOCAIXA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESOCAIXA'
      Origin = 'PESOCAIXA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoQTDCAIXA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QTDCAIXA'
      Origin = 'QTDCAIXA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoIDPISCOFINS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDPISCOFINS'
      Origin = 'IDPISCOFINS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRY_ConsultaPrecoIDTRIBUTACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDTRIBUTACAO'
      Origin = 'IDTRIBUTACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRY_ConsultaPrecoIDFILIAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDFILIAL'
      Origin = 'IDFILIAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRY_ConsultaPrecoIDGRUPO: TIntegerField
      FieldName = 'IDGRUPO'
      Origin = 'IDGRUPO'
    end
    object QRY_ConsultaPrecoPRODUTOBALANCA: TStringField
      FieldName = 'PRODUTOBALANCA'
      Origin = 'PRODUTOBALANCA'
      Size = 50
    end
    object QRY_ConsultaPrecoPERCICMSCOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERCICMSCOMPRA'
      Origin = 'PERCICMSCOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoPERCICMSSTCOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERCICMSSTCOMPRA'
      Origin = 'PERCICMSSTCOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoALIQPISCOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQPISCOMPRA'
      Origin = 'ALIQPISCOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoVALORFRETECOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORFRETECOMPRA'
      Origin = 'VALORFRETECOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoPERCREDBASECALCULOICMSCOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERCREDBASECALCULOICMSCOMPRA'
      Origin = 'PERCREDBASECALCULOICMSCOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoPERCREDBASECALCULOICMSSTCOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERCREDBASECALCULOICMSSTCOMPRA'
      Origin = 'PERCREDBASECALCULOICMSSTCOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoALIQCOFINSCOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQCOFINSCOMPRA'
      Origin = 'ALIQCOFINSCOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoALIQIPICOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQIPICOMPRA'
      Origin = 'ALIQIPICOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoVALORICMSSTCOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORICMSSTCOMPRA'
      Origin = 'VALORICMSSTCOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoPERCFRETECOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERCFRETECOMPRA'
      Origin = 'PERCFRETECOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoPERCOUTROSCOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERCOUTROSCOMPRA'
      Origin = 'PERCOUTROSCOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoSIGLA: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object QRY_ConsultaPrecoIDORIGEMMERCADORIA: TIntegerField
      FieldName = 'IDORIGEMMERCADORIA'
      Origin = 'IDORIGEMMERCADORIA'
    end
    object QRY_ConsultaPrecoIDEMBALAGEM: TIntegerField
      FieldName = 'IDEMBALAGEM'
      Origin = 'IDEMBALAGEM'
    end
    object QRY_ConsultaPrecoDESCRICAONCM: TStringField
      FieldName = 'DESCRICAONCM'
      Origin = 'DESCRICAONCM'
      Size = 200
    end
    object QRY_ConsultaPrecoVENDEFRACIONADO: TStringField
      FieldName = 'VENDEFRACIONADO'
      Origin = 'VENDEFRACIONADO'
      Size = 50
    end
    object QRY_ConsultaPrecoVLRPERCMARGEMLUCRO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLRPERCMARGEMLUCRO'
      Origin = 'VLRPERCMARGEMLUCRO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoVLRLUCRO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLRLUCRO'
      Origin = 'VLRLUCRO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoESTOQUE: TBCDField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QRY_ConsultaPrecoPRECOLIVRE: TStringField
      FieldName = 'PRECOLIVRE'
      Origin = 'PRECOLIVRE'
    end
  end
  object QRY_ConsultarClientes: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select'
      ' ps.*,'
      ' ci.*'
      'from pessoas ps'
      'inner join cidades ci'
      'on (ps.idcidade = ci.idcidade)'
      'where idtipopessoa = 1')
    Left = 264
    Top = 304
    object QRY_ConsultarClientesIDPESSOAS: TIntegerField
      FieldName = 'IDPESSOAS'
      Origin = 'IDPESSOAS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_ConsultarClientesRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 100
    end
    object QRY_ConsultarClientesFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 100
    end
    object QRY_ConsultarClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object QRY_ConsultarClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 50
    end
    object QRY_ConsultarClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 100
    end
    object QRY_ConsultarClientesCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 50
    end
    object QRY_ConsultarClientesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 200
    end
    object QRY_ConsultarClientesIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Origin = 'IDCIDADE'
    end
    object QRY_ConsultarClientesTIPOFJ: TStringField
      FieldName = 'TIPOFJ'
      Origin = 'TIPOFJ'
      Size = 50
    end
    object QRY_ConsultarClientesIDTIPOPESSOA: TIntegerField
      FieldName = 'IDTIPOPESSOA'
      Origin = 'IDTIPOPESSOA'
    end
    object QRY_ConsultarClientesCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 50
    end
    object QRY_ConsultarClientesIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 50
    end
    object QRY_ConsultarClientesCONTRIBUINTE: TIntegerField
      FieldName = 'CONTRIBUINTE'
      Origin = 'CONTRIBUINTE'
    end
    object QRY_ConsultarClientesINSMUNICIPAL: TStringField
      FieldName = 'INSMUNICIPAL'
      Origin = 'INSMUNICIPAL'
      Size = 50
    end
    object QRY_ConsultarClientesINSSUFRAMA: TStringField
      FieldName = 'INSSUFRAMA'
      Origin = 'INSSUFRAMA'
      Size = 50
    end
    object QRY_ConsultarClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object QRY_ConsultarClientesIDCONTATO: TIntegerField
      FieldName = 'IDCONTATO'
      Origin = 'IDCONTATO'
    end
    object QRY_ConsultarClientesOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 400
    end
    object QRY_ConsultarClientesIDFOTOS: TIntegerField
      FieldName = 'IDFOTOS'
      Origin = 'IDFOTOS'
    end
    object QRY_ConsultarClientesATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 50
    end
    object QRY_ConsultarClientesIDREFERENCIAS: TIntegerField
      FieldName = 'IDREFERENCIAS'
      Origin = 'IDREFERENCIAS'
    end
    object QRY_ConsultarClientesSPC: TStringField
      FieldName = 'SPC'
      Origin = 'SPC'
      Size = 50
    end
    object QRY_ConsultarClientesSERASA: TStringField
      FieldName = 'SERASA'
      Origin = 'SERASA'
      Size = 50
    end
    object QRY_ConsultarClientesUSUARIOALTERACAO: TIntegerField
      FieldName = 'USUARIOALTERACAO'
      Origin = 'USUARIOALTERACAO'
    end
    object QRY_ConsultarClientesUSUARIOCADASTRO: TIntegerField
      FieldName = 'USUARIOCADASTRO'
      Origin = 'USUARIOCADASTRO'
    end
    object QRY_ConsultarClientesDATADECADASTRO: TDateField
      FieldName = 'DATADECADASTRO'
      Origin = 'DATADECADASTRO'
    end
    object QRY_ConsultarClientesULTIMAALTERACAO: TDateField
      FieldName = 'ULTIMAALTERACAO'
      Origin = 'ULTIMAALTERACAO'
    end
    object QRY_ConsultarClientesSPCDATARETIRADA: TDateField
      FieldName = 'SPCDATARETIRADA'
      Origin = 'SPCDATARETIRADA'
    end
    object QRY_ConsultarClientesSPCDATAREGISTRO: TDateField
      FieldName = 'SPCDATAREGISTRO'
      Origin = 'SPCDATAREGISTRO'
    end
    object QRY_ConsultarClientesDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
      Origin = 'DATANASCIMENTO'
    end
    object QRY_ConsultarClientesNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      Origin = 'NOMECIDADE'
      Size = 200
    end
    object QRY_ConsultarClientesUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
    end
    object QRY_ConsultarClientesIDGRUPOCLIENTES: TIntegerField
      FieldName = 'IDGRUPOCLIENTES'
      Origin = 'IDGRUPOCLIENTES'
    end
    object QRY_ConsultarClientesREFPESSOALNOME: TStringField
      FieldName = 'REFPESSOALNOME'
      Origin = 'REFPESSOALNOME'
      Size = 100
    end
    object QRY_ConsultarClientesREFPESSOALTELEFONE: TStringField
      FieldName = 'REFPESSOALTELEFONE'
      Origin = 'REFPESSOALTELEFONE'
      Size = 100
    end
    object QRY_ConsultarClientesREFPESSOALCIDADE: TStringField
      FieldName = 'REFPESSOALCIDADE'
      Origin = 'REFPESSOALCIDADE'
      Size = 100
    end
    object QRY_ConsultarClientesREFFINANCEIRANOME: TStringField
      FieldName = 'REFFINANCEIRANOME'
      Origin = 'REFFINANCEIRANOME'
      Size = 100
    end
    object QRY_ConsultarClientesREFFINANCEIRATELEFONE: TStringField
      FieldName = 'REFFINANCEIRATELEFONE'
      Origin = 'REFFINANCEIRATELEFONE'
      Size = 100
    end
    object QRY_ConsultarClientesREFFINANCEIRACIDADE: TStringField
      FieldName = 'REFFINANCEIRACIDADE'
      Origin = 'REFFINANCEIRACIDADE'
      Size = 100
    end
    object QRY_ConsultarClientesREFCOMERCIALNOME: TStringField
      FieldName = 'REFCOMERCIALNOME'
      Origin = 'REFCOMERCIALNOME'
      Size = 100
    end
    object QRY_ConsultarClientesREFCOMERCIALTELEFONE: TStringField
      FieldName = 'REFCOMERCIALTELEFONE'
      Origin = 'REFCOMERCIALTELEFONE'
      Size = 100
    end
    object QRY_ConsultarClientesREFCOMERCIALCIDADE: TStringField
      FieldName = 'REFCOMERCIALCIDADE'
      Origin = 'REFCOMERCIALCIDADE'
      Size = 100
    end
    object QRY_ConsultarClientesFORNECEDORTELEFONE: TStringField
      FieldName = 'FORNECEDORTELEFONE'
      Origin = 'FORNECEDORTELEFONE'
      Size = 100
    end
    object QRY_ConsultarClientesFORNECEDORCONTATO: TStringField
      FieldName = 'FORNECEDORCONTATO'
      Origin = 'FORNECEDORCONTATO'
      Size = 100
    end
    object QRY_ConsultarClientesFORNECEDORCELULAR: TStringField
      FieldName = 'FORNECEDORCELULAR'
      Origin = 'FORNECEDORCELULAR'
      Size = 100
    end
    object QRY_ConsultarClientesFORNECEDOREMAIL: TStringField
      FieldName = 'FORNECEDOREMAIL'
      Origin = 'FORNECEDOREMAIL'
      Size = 100
    end
    object QRY_ConsultarClientesIDCIDADE_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDCIDADE_1'
      Origin = 'IDCIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRY_ConsultarClientesMUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object QRY_ConsultarClientesUF_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF_1'
      Origin = 'UF'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QRY_ConsultarClientesCODMUNICIPIOIBGE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODMUNICIPIOIBGE'
      Origin = 'CODMUNICIPIOIBGE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QRY_ConsultarClientesCODESTADO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODESTADO'
      Origin = 'CODESTADO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRY_ConsultarClientesPESSOALTELEFONE: TStringField
      FieldName = 'PESSOALTELEFONE'
      Origin = 'PESSOALTELEFONE'
      Size = 100
    end
    object QRY_ConsultarClientesPESSOALCELULAR: TStringField
      FieldName = 'PESSOALCELULAR'
      Origin = 'PESSOALCELULAR'
      Size = 100
    end
  end
  object QRY_ParametrosPDV: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from parametrospdv where idparametrospdv = 1')
    Left = 120
    Top = 384
    object QRY_ParametrosPDVIDPARAMETROSPDV: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDPARAMETROSPDV'
      Origin = 'IDPARAMETROSPDV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_ParametrosPDVEMITEFISCALFINALVENDA: TStringField
      FieldName = 'EMITEFISCALFINALVENDA'
      Origin = 'EMITEFISCALFINALVENDA'
      Size = 50
    end
    object QRY_ParametrosPDVFASTFILE: TStringField
      FieldName = 'FASTFILE'
      Origin = 'FASTFILE'
      Size = 200
    end
    object QRY_ParametrosPDVFASTFILENFCE: TStringField
      FieldName = 'FASTFILENFCE'
      Origin = 'FASTFILENFCE'
      Size = 200
    end
    object QRY_ParametrosPDVIDCLIENTEPADRAOVENDA: TIntegerField
      FieldName = 'IDCLIENTEPADRAOVENDA'
      Origin = 'IDCLIENTEPADRAOVENDA'
    end
  end
  object QRY_ListaCaixa: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select'
      '  a.idcaixacardex,'
      '  a.dtamovimento,'
      '  a.hramovimento,'
      '  a.tipo,'
      '  a.saldo_atual - a.entradas + a.saidas saldo_anterior,'
      '  a.entradas,'
      '  a.saidas,'
      '  a.saldo_atual,'
      '  a.observacao,'
      '  a.forma_pagamento,'
      '  a.numcaixa,'
      '  a.statuscaixa'
      'from (select'
      '        cc.idcaixacardex,'
      '        cc.dtamovimento,'
      '        cc.hramovimento,'
      '        iif(cc.tipo = '#39'E'#39', '#39'Entrada'#39','#39'Saida'#39') tipo,'
      
        '        case when cc.tipo = '#39'E'#39' then cc.vlrdocumento else 0 end ' +
        'entradas,'
      
        '        case when cc.tipo = '#39'S'#39' then cc.vlrdocumento else 0 end ' +
        'saidas,'
      '        sum(cc.vlrdocumento * decode(cc.tipo,'#39'E'#39',1,-1))'
      '          over(order by cc.idcaixacardex) saldo_atual,'
      '        cc.observacao,'
      '        fp.descricao forma_pagamento,'
      '        cc.numcaixa,'
      '        ac.statuscaixa'
      '      from financaixa cc'
      '      inner join finanformaspgto fp'
      '      on (cc.idformapagamento = fp.idpgto)'
      '      inner join finanabrircaixa ac'
      '      on (cc.numcaixa = ac.idabrircaixa)'
      '      --where cc.numcaixa = :numcaixa'
      '      order by cc.idcaixacardex) a')
    Left = 120
    Top = 320
    object QRY_ListaCaixaIDCAIXACARDEX: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDCAIXACARDEX'
      Origin = 'IDCAIXACARDEX'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
    object QRY_ListaCaixaDTAMOVIMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DTAMOVIMENTO'
      Origin = 'DTAMOVIMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRY_ListaCaixaHRAMOVIMENTO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'HRAMOVIMENTO'
      Origin = 'HRAMOVIMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRY_ListaCaixaTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 7
    end
    object QRY_ListaCaixaSALDO_ANTERIOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SALDO_ANTERIOR'
      Origin = 'SALDO_ANTERIOR'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object QRY_ListaCaixaENTRADAS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ENTRADAS'
      Origin = 'ENTRADAS'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object QRY_ListaCaixaSAIDAS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SAIDAS'
      Origin = 'SAIDAS'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object QRY_ListaCaixaSALDO_ATUAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SALDO_ATUAL'
      Origin = 'SALDO_ATUAL'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object QRY_ListaCaixaOBSERVACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object QRY_ListaCaixaFORMA_PAGAMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORMA_PAGAMENTO'
      Origin = 'FORMA_PAGAMENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QRY_ListaCaixaNUMCAIXA: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'NUMCAIXA'
      Origin = 'NUMCAIXA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRY_ListaCaixaSTATUSCAIXA: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'STATUSCAIXA'
      Origin = 'STATUSCAIXA'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object QRY_NumeroFiscal: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select nf.* from numerofiscal nf'
      'where idempresa = :idempresa '
      'and nf.nomepdv = :nomepdv'
      'and nf.modulo = :modulo'
      'and nf.tiponfenfce = :tiponfenfce'
      'and nf.status = :status')
    Left = 264
    Top = 376
    ParamData = <
      item
        Name = 'IDEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NOMEPDV'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'MODULO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'TIPONFENFCE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'STATUS'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
    object QRY_NumeroFiscalIDNUMEROFISCAL: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDNUMEROFISCAL'
      Origin = 'IDNUMEROFISCAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_NumeroFiscalSERIE: TIntegerField
      FieldName = 'SERIE'
      Origin = 'SERIE'
    end
    object QRY_NumeroFiscalIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
    end
    object QRY_NumeroFiscalTIPONFENFCE: TStringField
      FieldName = 'TIPONFENFCE'
      Origin = 'TIPONFENFCE'
      Size = 50
    end
    object QRY_NumeroFiscalNOMEPDV: TStringField
      FieldName = 'NOMEPDV'
      Origin = 'NOMEPDV'
      Size = 50
    end
    object QRY_NumeroFiscalMODULO: TStringField
      FieldName = 'MODULO'
      Origin = 'MODULO'
      Size = 50
    end
    object QRY_NumeroFiscalNUMEROINICIAL: TIntegerField
      FieldName = 'NUMEROINICIAL'
      Origin = 'NUMEROINICIAL'
    end
    object QRY_NumeroFiscalNUMEROATUAL: TIntegerField
      FieldName = 'NUMEROATUAL'
      Origin = 'NUMEROATUAL'
    end
    object QRY_NumeroFiscalSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 50
    end
  end
  object QRY_NFe: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from nfe where idnfe = :idnfe')
    Left = 400
    Top = 48
    ParamData = <
      item
        Name = 'IDNFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_NFeIDNFE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDNFE'
      Origin = 'IDNFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_NFeIDE_NATOP: TStringField
      FieldName = 'IDE_NATOP'
      Origin = 'IDE_NATOP'
      Size = 10
    end
    object QRY_NFeIDE_INDPAG: TStringField
      FieldName = 'IDE_INDPAG'
      Origin = 'IDE_INDPAG'
      Size = 1
    end
    object QRY_NFeIDE_MODELO: TIntegerField
      FieldName = 'IDE_MODELO'
      Origin = 'IDE_MODELO'
    end
    object QRY_NFeIDE_SERIE: TIntegerField
      FieldName = 'IDE_SERIE'
      Origin = 'IDE_SERIE'
    end
    object QRY_NFeIDE_NNF: TIntegerField
      FieldName = 'IDE_NNF'
      Origin = 'IDE_NNF'
    end
    object QRY_NFeIDE_CNF: TIntegerField
      FieldName = 'IDE_CNF'
      Origin = 'IDE_CNF'
    end
    object QRY_NFeIDE_DEMI: TDateField
      FieldName = 'IDE_DEMI'
      Origin = 'IDE_DEMI'
    end
    object QRY_NFeIDE_DSAIENT: TDateField
      FieldName = 'IDE_DSAIENT'
      Origin = 'IDE_DSAIENT'
    end
    object QRY_NFeIDE_HSAIENT: TTimeField
      FieldName = 'IDE_HSAIENT'
      Origin = 'IDE_HSAIENT'
    end
    object QRY_NFeIDE_TPNF: TStringField
      FieldName = 'IDE_TPNF'
      Origin = 'IDE_TPNF'
      Size = 1
    end
    object QRY_NFeIDE_TPEMIS: TStringField
      FieldName = 'IDE_TPEMIS'
      Origin = 'IDE_TPEMIS'
      Size = 1
    end
    object QRY_NFeIDE_TPAMB: TStringField
      FieldName = 'IDE_TPAMB'
      Origin = 'IDE_TPAMB'
      Size = 1
    end
    object QRY_NFeIDE_VERPROC: TStringField
      FieldName = 'IDE_VERPROC'
      Origin = 'IDE_VERPROC'
      Size = 50
    end
    object QRY_NFeIDE_CUF: TIntegerField
      FieldName = 'IDE_CUF'
      Origin = 'IDE_CUF'
    end
    object QRY_NFeIDE_CMUNFG: TIntegerField
      FieldName = 'IDE_CMUNFG'
      Origin = 'IDE_CMUNFG'
    end
    object QRY_NFeIDE_FINNFE: TStringField
      FieldName = 'IDE_FINNFE'
      Origin = 'IDE_FINNFE'
      Size = 1
    end
    object QRY_NFeIDE_TPIMP: TStringField
      FieldName = 'IDE_TPIMP'
      Origin = 'IDE_TPIMP'
      Size = 1
    end
    object QRY_NFeIDE_INDINTERMED: TStringField
      FieldName = 'IDE_INDINTERMED'
      Origin = 'IDE_INDINTERMED'
      Size = 1
    end
    object QRY_NFeIDE_DHCONT: TSQLTimeStampField
      FieldName = 'IDE_DHCONT'
      Origin = 'IDE_DHCONT'
    end
    object QRY_NFeIDE_XJUST: TStringField
      FieldName = 'IDE_XJUST'
      Origin = 'IDE_XJUST'
      Size = 200
    end
    object QRY_NFeREFNF_CUF: TIntegerField
      FieldName = 'REFNF_CUF'
      Origin = 'REFNF_CUF'
    end
    object QRY_NFeREFNF_AAMM: TStringField
      FieldName = 'REFNF_AAMM'
      Origin = 'REFNF_AAMM'
      Size = 100
    end
    object QRY_NFeREFNF_CNPJ: TStringField
      FieldName = 'REFNF_CNPJ'
      Origin = 'REFNF_CNPJ'
      Size = 50
    end
    object QRY_NFeREFNF_MODELO: TIntegerField
      FieldName = 'REFNF_MODELO'
      Origin = 'REFNF_MODELO'
    end
    object QRY_NFeREFNF_SERIE: TIntegerField
      FieldName = 'REFNF_SERIE'
      Origin = 'REFNF_SERIE'
    end
    object QRY_NFeREFNF_NNF: TIntegerField
      FieldName = 'REFNF_NNF'
      Origin = 'REFNF_NNF'
    end
    object QRY_NFeREFNFP_CUF: TIntegerField
      FieldName = 'REFNFP_CUF'
      Origin = 'REFNFP_CUF'
    end
    object QRY_NFeREFNFP_AAMM: TStringField
      FieldName = 'REFNFP_AAMM'
      Origin = 'REFNFP_AAMM'
      Size = 100
    end
    object QRY_NFeREFNFP_CNPJCPF: TStringField
      FieldName = 'REFNFP_CNPJCPF'
      Origin = 'REFNFP_CNPJCPF'
      Size = 50
    end
    object QRY_NFeREFNFP_IE: TStringField
      FieldName = 'REFNFP_IE'
      Origin = 'REFNFP_IE'
      Size = 50
    end
    object QRY_NFeREFNFP_MODELO: TStringField
      FieldName = 'REFNFP_MODELO'
      Origin = 'REFNFP_MODELO'
      Size = 100
    end
    object QRY_NFeREFNFP_SERIE: TIntegerField
      FieldName = 'REFNFP_SERIE'
      Origin = 'REFNFP_SERIE'
    end
    object QRY_NFeREFNFP_NNF: TIntegerField
      FieldName = 'REFNFP_NNF'
      Origin = 'REFNFP_NNF'
    end
    object QRY_NFeREFECF_MODELO: TStringField
      FieldName = 'REFECF_MODELO'
      Origin = 'REFECF_MODELO'
      Size = 1
    end
    object QRY_NFeREFECF_NECF: TStringField
      FieldName = 'REFECF_NECF'
      Origin = 'REFECF_NECF'
      Size = 50
    end
    object QRY_NFeREFECF_NCOO: TStringField
      FieldName = 'REFECF_NCOO'
      Origin = 'REFECF_NCOO'
      Size = 50
    end
    object QRY_NFeIDEMITENTE: TIntegerField
      FieldName = 'IDEMITENTE'
      Origin = 'IDEMITENTE'
    end
    object QRY_NFeEMIT_CNPJCPF: TStringField
      FieldName = 'EMIT_CNPJCPF'
      Origin = 'EMIT_CNPJCPF'
      Size = 50
    end
    object QRY_NFeEMIT_IE: TStringField
      FieldName = 'EMIT_IE'
      Origin = 'EMIT_IE'
      Size = 50
    end
    object QRY_NFeEMIT_XNOME: TStringField
      FieldName = 'EMIT_XNOME'
      Origin = 'EMIT_XNOME'
      Size = 100
    end
    object QRY_NFeEMIT_XFANT: TStringField
      FieldName = 'EMIT_XFANT'
      Origin = 'EMIT_XFANT'
      Size = 100
    end
    object QRY_NFeEMIT_ENDEREMIT_FONE: TStringField
      FieldName = 'EMIT_ENDEREMIT_FONE'
      Origin = 'EMIT_ENDEREMIT_FONE'
      Size = 50
    end
    object QRY_NFeEMIT_ENDEREMIT_CEP: TIntegerField
      FieldName = 'EMIT_ENDEREMIT_CEP'
      Origin = 'EMIT_ENDEREMIT_CEP'
    end
    object QRY_NFeEMIT_ENDEREMIT_XLGR: TStringField
      FieldName = 'EMIT_ENDEREMIT_XLGR'
      Origin = 'EMIT_ENDEREMIT_XLGR'
      Size = 100
    end
    object QRY_NFeEMIT_ENDEREMIT_NRO: TStringField
      FieldName = 'EMIT_ENDEREMIT_NRO'
      Origin = 'EMIT_ENDEREMIT_NRO'
      Size = 50
    end
    object QRY_NFeEMIT_ENDEREMIT_XCPL: TStringField
      FieldName = 'EMIT_ENDEREMIT_XCPL'
      Origin = 'EMIT_ENDEREMIT_XCPL'
      Size = 100
    end
    object QRY_NFeEMIT_ENDEREMIT_XBAIRRO: TStringField
      FieldName = 'EMIT_ENDEREMIT_XBAIRRO'
      Origin = 'EMIT_ENDEREMIT_XBAIRRO'
      Size = 100
    end
    object QRY_NFeEMIT_ENDEREMIT_CMUN: TIntegerField
      FieldName = 'EMIT_ENDEREMIT_CMUN'
      Origin = 'EMIT_ENDEREMIT_CMUN'
    end
    object QRY_NFeEMIT_ENDEREMIT_XMUN: TStringField
      FieldName = 'EMIT_ENDEREMIT_XMUN'
      Origin = 'EMIT_ENDEREMIT_XMUN'
      Size = 100
    end
    object QRY_NFeEMIT_ENDEREMIT_UF: TStringField
      FieldName = 'EMIT_ENDEREMIT_UF'
      Origin = 'EMIT_ENDEREMIT_UF'
      Size = 50
    end
    object QRY_NFeEMIT_ENDEREMIT_CPAIS: TIntegerField
      FieldName = 'EMIT_ENDEREMIT_CPAIS'
      Origin = 'EMIT_ENDEREMIT_CPAIS'
    end
    object QRY_NFeEMIT_ENDEREMIT_XPAIS: TStringField
      FieldName = 'EMIT_ENDEREMIT_XPAIS'
      Origin = 'EMIT_ENDEREMIT_XPAIS'
      Size = 100
    end
    object QRY_NFeEMIT_IEST: TStringField
      FieldName = 'EMIT_IEST'
      Origin = 'EMIT_IEST'
      Size = 50
    end
    object QRY_NFeEMIT_IM: TStringField
      FieldName = 'EMIT_IM'
      Origin = 'EMIT_IM'
      Size = 50
    end
    object QRY_NFeEMIT_CNAE: TStringField
      FieldName = 'EMIT_CNAE'
      Origin = 'EMIT_CNAE'
      Size = 50
    end
    object QRY_NFeEMIT_CRT: TStringField
      FieldName = 'EMIT_CRT'
      Origin = 'EMIT_CRT'
      Size = 1
    end
    object QRY_NFeAVULSA_CNPJ: TStringField
      FieldName = 'AVULSA_CNPJ'
      Origin = 'AVULSA_CNPJ'
      Size = 50
    end
    object QRY_NFeAVULSA_XORGAO: TStringField
      FieldName = 'AVULSA_XORGAO'
      Origin = 'AVULSA_XORGAO'
      Size = 100
    end
    object QRY_NFeAVULSA_MATR: TStringField
      FieldName = 'AVULSA_MATR'
      Origin = 'AVULSA_MATR'
      Size = 50
    end
    object QRY_NFeAVULSA_XAGENTE: TStringField
      FieldName = 'AVULSA_XAGENTE'
      Origin = 'AVULSA_XAGENTE'
      Size = 50
    end
    object QRY_NFeAVULSA_FONE: TStringField
      FieldName = 'AVULSA_FONE'
      Origin = 'AVULSA_FONE'
      Size = 50
    end
    object QRY_NFeAVULSA_UF: TStringField
      FieldName = 'AVULSA_UF'
      Origin = 'AVULSA_UF'
    end
    object QRY_NFeAVULSA_NDAR: TStringField
      FieldName = 'AVULSA_NDAR'
      Origin = 'AVULSA_NDAR'
      Size = 50
    end
    object QRY_NFeAVULSA_DEMI: TDateField
      FieldName = 'AVULSA_DEMI'
      Origin = 'AVULSA_DEMI'
    end
    object QRY_NFeAVULSA_VDAR: TBCDField
      FieldName = 'AVULSA_VDAR'
      Origin = 'AVULSA_VDAR'
      Precision = 18
    end
    object QRY_NFeAVULSA_REPEMI: TStringField
      FieldName = 'AVULSA_REPEMI'
      Origin = 'AVULSA_REPEMI'
      Size = 50
    end
    object QRY_NFeAVULSA_DPAG: TDateField
      FieldName = 'AVULSA_DPAG'
      Origin = 'AVULSA_DPAG'
    end
    object QRY_NFeDEST_CNPJCPF: TStringField
      FieldName = 'DEST_CNPJCPF'
      Origin = 'DEST_CNPJCPF'
      Size = 50
    end
    object QRY_NFeDEST_IE: TStringField
      FieldName = 'DEST_IE'
      Origin = 'DEST_IE'
      Size = 50
    end
    object QRY_NFeDEST_ISUF: TStringField
      FieldName = 'DEST_ISUF'
      Origin = 'DEST_ISUF'
      Size = 50
    end
    object QRY_NFeDEST_XNOME: TStringField
      FieldName = 'DEST_XNOME'
      Origin = 'DEST_XNOME'
      Size = 100
    end
    object QRY_NFeDEST_ENDERDEST_FONE: TStringField
      FieldName = 'DEST_ENDERDEST_FONE'
      Origin = 'DEST_ENDERDEST_FONE'
      Size = 50
    end
    object QRY_NFeDEST_ENDERDEST_CEP: TStringField
      FieldName = 'DEST_ENDERDEST_CEP'
      Origin = 'DEST_ENDERDEST_CEP'
      Size = 50
    end
    object QRY_NFeDEST_ENDERDEST_XLGR: TStringField
      FieldName = 'DEST_ENDERDEST_XLGR'
      Origin = 'DEST_ENDERDEST_XLGR'
      Size = 100
    end
    object QRY_NFeDEST_ENDERDEST_NRO: TStringField
      FieldName = 'DEST_ENDERDEST_NRO'
      Origin = 'DEST_ENDERDEST_NRO'
      Size = 50
    end
    object QRY_NFeDEST_ENDERDEST_XCPL: TStringField
      FieldName = 'DEST_ENDERDEST_XCPL'
      Origin = 'DEST_ENDERDEST_XCPL'
      Size = 100
    end
    object QRY_NFeDEST_ENDERDEST_XBAIRRO: TStringField
      FieldName = 'DEST_ENDERDEST_XBAIRRO'
      Origin = 'DEST_ENDERDEST_XBAIRRO'
      Size = 100
    end
    object QRY_NFeDEST_ENDERDEST_CMUN: TIntegerField
      FieldName = 'DEST_ENDERDEST_CMUN'
      Origin = 'DEST_ENDERDEST_CMUN'
    end
    object QRY_NFeDEST_ENDERDEST_XMUN: TStringField
      FieldName = 'DEST_ENDERDEST_XMUN'
      Origin = 'DEST_ENDERDEST_XMUN'
      Size = 100
    end
    object QRY_NFeDEST_ENDERDEST_UF: TStringField
      FieldName = 'DEST_ENDERDEST_UF'
      Origin = 'DEST_ENDERDEST_UF'
    end
    object QRY_NFeDEST_ENDERDEST_CPAIS: TIntegerField
      FieldName = 'DEST_ENDERDEST_CPAIS'
      Origin = 'DEST_ENDERDEST_CPAIS'
    end
    object QRY_NFeDEST_ENDERDEST_XPAIS: TStringField
      FieldName = 'DEST_ENDERDEST_XPAIS'
      Origin = 'DEST_ENDERDEST_XPAIS'
      Size = 100
    end
    object QRY_NFeRETIRADA_CNPJCPF: TStringField
      FieldName = 'RETIRADA_CNPJCPF'
      Origin = 'RETIRADA_CNPJCPF'
      Size = 50
    end
    object QRY_NFeRETIRADA_XLGR: TStringField
      FieldName = 'RETIRADA_XLGR'
      Origin = 'RETIRADA_XLGR'
      Size = 100
    end
    object QRY_NFeRETIRADA_NRO: TStringField
      FieldName = 'RETIRADA_NRO'
      Origin = 'RETIRADA_NRO'
      Size = 50
    end
    object QRY_NFeRETIRADA_XCPL: TStringField
      FieldName = 'RETIRADA_XCPL'
      Origin = 'RETIRADA_XCPL'
      Size = 100
    end
    object QRY_NFeRETIRADA_XBAIRRO: TStringField
      FieldName = 'RETIRADA_XBAIRRO'
      Origin = 'RETIRADA_XBAIRRO'
      Size = 100
    end
    object QRY_NFeRETIRADA_CMUN: TIntegerField
      FieldName = 'RETIRADA_CMUN'
      Origin = 'RETIRADA_CMUN'
    end
    object QRY_NFeRETIRADA_XMUN: TStringField
      FieldName = 'RETIRADA_XMUN'
      Origin = 'RETIRADA_XMUN'
      Size = 100
    end
    object QRY_NFeRETIRADA_UF: TStringField
      FieldName = 'RETIRADA_UF'
      Origin = 'RETIRADA_UF'
      Size = 50
    end
    object QRY_NFeENTREGA_CNPJCPF: TStringField
      FieldName = 'ENTREGA_CNPJCPF'
      Origin = 'ENTREGA_CNPJCPF'
      Size = 50
    end
    object QRY_NFeENTREGA_XLGR: TStringField
      FieldName = 'ENTREGA_XLGR'
      Origin = 'ENTREGA_XLGR'
      Size = 100
    end
    object QRY_NFeENTREGA_NRO: TStringField
      FieldName = 'ENTREGA_NRO'
      Origin = 'ENTREGA_NRO'
      Size = 50
    end
    object QRY_NFeENTREGA_XCPL: TStringField
      FieldName = 'ENTREGA_XCPL'
      Origin = 'ENTREGA_XCPL'
      Size = 100
    end
    object QRY_NFeENTREGA_XBAIRRO: TStringField
      FieldName = 'ENTREGA_XBAIRRO'
      Origin = 'ENTREGA_XBAIRRO'
      Size = 100
    end
    object QRY_NFeENTREGA_CMUN: TIntegerField
      FieldName = 'ENTREGA_CMUN'
      Origin = 'ENTREGA_CMUN'
    end
    object QRY_NFeENTREGA_XMUN: TStringField
      FieldName = 'ENTREGA_XMUN'
      Origin = 'ENTREGA_XMUN'
      Size = 100
    end
    object QRY_NFeENTREGA_UF: TStringField
      FieldName = 'ENTREGA_UF'
      Origin = 'ENTREGA_UF'
      Size = 50
    end
    object QRY_NFeTOTAL_ICMSTOT_VBC: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VBC'
      Origin = 'TOTAL_ICMSTOT_VBC'
      Precision = 18
    end
    object QRY_NFeTOTAL_ICMSTOT_VICMS: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VICMS'
      Origin = 'TOTAL_ICMSTOT_VICMS'
      Precision = 18
    end
    object QRY_NFeTOTAL_ICMSTOT_VBCST: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VBCST'
      Origin = 'TOTAL_ICMSTOT_VBCST'
      Precision = 18
    end
    object QRY_NFeTOTAL_ICMSTOT_VST: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VST'
      Origin = 'TOTAL_ICMSTOT_VST'
      Precision = 18
    end
    object QRY_NFeTOTAL_ICMSTOT_VPROD: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VPROD'
      Origin = 'TOTAL_ICMSTOT_VPROD'
      Precision = 18
    end
    object QRY_NFeTOTAL_ICMSTOT_VFRETE: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VFRETE'
      Origin = 'TOTAL_ICMSTOT_VFRETE'
      Precision = 18
    end
    object QRY_NFeTOTAL_ICMSTOT_VSEG: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VSEG'
      Origin = 'TOTAL_ICMSTOT_VSEG'
      Precision = 18
    end
    object QRY_NFeTOTAL_ICMSTOT_VDESC: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VDESC'
      Origin = 'TOTAL_ICMSTOT_VDESC'
      Precision = 18
    end
    object QRY_NFeTOTAL_ICMSTOT_VII: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VII'
      Origin = 'TOTAL_ICMSTOT_VII'
      Precision = 18
    end
    object QRY_NFeTOTAL_ICMSTOT_VIPI: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VIPI'
      Origin = 'TOTAL_ICMSTOT_VIPI'
      Precision = 18
    end
    object QRY_NFeTOTAL_ICMSTOT_VPIS: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VPIS'
      Origin = 'TOTAL_ICMSTOT_VPIS'
      Precision = 18
    end
    object QRY_NFeTOTAL_ICMSTOT_VCOFINS: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VCOFINS'
      Origin = 'TOTAL_ICMSTOT_VCOFINS'
      Precision = 18
    end
    object QRY_NFeTOTAL_ICMSTOT_VOUTRO: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VOUTRO'
      Origin = 'TOTAL_ICMSTOT_VOUTRO'
      Precision = 18
    end
    object QRY_NFeTOTAL_ICMSTOT_VNF: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VNF'
      Origin = 'TOTAL_ICMSTOT_VNF'
      Precision = 18
    end
    object QRY_NFeTOTAL_ICMSTOT_VTOTTRIB: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VTOTTRIB'
      Origin = 'TOTAL_ICMSTOT_VTOTTRIB'
      Precision = 18
    end
    object QRY_NFeTOTAL_ICMSTOT_VFCPUFDEST: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VFCPUFDEST'
      Origin = 'TOTAL_ICMSTOT_VFCPUFDEST'
      Precision = 18
    end
    object QRY_NFeTOTAL_ICMSTOT_VICMSUFDEST: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VICMSUFDEST'
      Origin = 'TOTAL_ICMSTOT_VICMSUFDEST'
      Precision = 18
    end
    object QRY_NFeTOTAL_ICMSTOT_VICMSUFREMET: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VICMSUFREMET'
      Origin = 'TOTAL_ICMSTOT_VICMSUFREMET'
      Precision = 18
    end
    object QRY_NFeTOTAL_ICMSTOT_VFCPST: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VFCPST'
      Origin = 'TOTAL_ICMSTOT_VFCPST'
      Precision = 18
    end
    object QRY_NFeTOTAL_ICMSTOT_VFCPSTRET: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VFCPSTRET'
      Origin = 'TOTAL_ICMSTOT_VFCPSTRET'
      Precision = 18
    end
    object QRY_NFeTOTAL_RETTRIB_VRETPIS: TBCDField
      FieldName = 'TOTAL_RETTRIB_VRETPIS'
      Origin = 'TOTAL_RETTRIB_VRETPIS'
      Precision = 18
    end
    object QRY_NFeTOTAL_RETTRIB_VRETCOFINS: TBCDField
      FieldName = 'TOTAL_RETTRIB_VRETCOFINS'
      Origin = 'TOTAL_RETTRIB_VRETCOFINS'
      Precision = 18
    end
    object QRY_NFeTOTAL_RETTRIB_VRETCSLL: TBCDField
      FieldName = 'TOTAL_RETTRIB_VRETCSLL'
      Origin = 'TOTAL_RETTRIB_VRETCSLL'
      Precision = 18
    end
    object QRY_NFeTOTAL_RETTRIB_VBCIRRF: TBCDField
      FieldName = 'TOTAL_RETTRIB_VBCIRRF'
      Origin = 'TOTAL_RETTRIB_VBCIRRF'
      Precision = 18
    end
    object QRY_NFeTOTAL_RETTRIB_VIRRF: TBCDField
      FieldName = 'TOTAL_RETTRIB_VIRRF'
      Origin = 'TOTAL_RETTRIB_VIRRF'
      Precision = 18
    end
    object QRY_NFeTOTAL_RETTRIB_VBCRETPREV: TBCDField
      FieldName = 'TOTAL_RETTRIB_VBCRETPREV'
      Origin = 'TOTAL_RETTRIB_VBCRETPREV'
      Precision = 18
    end
    object QRY_NFeTOTAL_RETTRIB_VRETPREV: TBCDField
      FieldName = 'TOTAL_RETTRIB_VRETPREV'
      Origin = 'TOTAL_RETTRIB_VRETPREV'
      Precision = 18
    end
    object QRY_NFeTRANSP_MODFRETE: TStringField
      FieldName = 'TRANSP_MODFRETE'
      Origin = 'TRANSP_MODFRETE'
      Size = 1
    end
    object QRY_NFeTRANSP_TRANSPORTA_CNPJCPF: TStringField
      FieldName = 'TRANSP_TRANSPORTA_CNPJCPF'
      Origin = 'TRANSP_TRANSPORTA_CNPJCPF'
      Size = 50
    end
    object QRY_NFeTRANSP_TRANSPORTA_XNOME: TStringField
      FieldName = 'TRANSP_TRANSPORTA_XNOME'
      Origin = 'TRANSP_TRANSPORTA_XNOME'
      Size = 100
    end
    object QRY_NFeTRANSP_TRANSPORTA_IE: TStringField
      FieldName = 'TRANSP_TRANSPORTA_IE'
      Origin = 'TRANSP_TRANSPORTA_IE'
      Size = 50
    end
    object QRY_NFeTRANSP_TRANSPORTA_XENDER: TStringField
      FieldName = 'TRANSP_TRANSPORTA_XENDER'
      Origin = 'TRANSP_TRANSPORTA_XENDER'
      Size = 100
    end
    object QRY_NFeTRANSP_TRANSPORTA_XMUN: TStringField
      FieldName = 'TRANSP_TRANSPORTA_XMUN'
      Origin = 'TRANSP_TRANSPORTA_XMUN'
      Size = 100
    end
    object QRY_NFeTRANSP_TRANSPORTA_UF: TStringField
      FieldName = 'TRANSP_TRANSPORTA_UF'
      Origin = 'TRANSP_TRANSPORTA_UF'
      Size = 50
    end
    object QRY_NFeTRANSP_RETTRANSP_VSERV: TBCDField
      FieldName = 'TRANSP_RETTRANSP_VSERV'
      Origin = 'TRANSP_RETTRANSP_VSERV'
      Precision = 18
    end
    object QRY_NFeTRANSP_RETTRANSP_VBCRET: TBCDField
      FieldName = 'TRANSP_RETTRANSP_VBCRET'
      Origin = 'TRANSP_RETTRANSP_VBCRET'
      Precision = 18
    end
    object QRY_NFeTRANSP_RETTRANSP_PICMSRET: TBCDField
      FieldName = 'TRANSP_RETTRANSP_PICMSRET'
      Origin = 'TRANSP_RETTRANSP_PICMSRET'
      Precision = 18
    end
    object QRY_NFeTRANSP_RETTRANSP_VICMSRET: TBCDField
      FieldName = 'TRANSP_RETTRANSP_VICMSRET'
      Origin = 'TRANSP_RETTRANSP_VICMSRET'
      Precision = 18
    end
    object QRY_NFeTRANSP_RETTRANSP_CFOP: TStringField
      FieldName = 'TRANSP_RETTRANSP_CFOP'
      Origin = 'TRANSP_RETTRANSP_CFOP'
      Size = 50
    end
    object QRY_NFeTRANSP_RETTRANSP_CMUNFG: TIntegerField
      FieldName = 'TRANSP_RETTRANSP_CMUNFG'
      Origin = 'TRANSP_RETTRANSP_CMUNFG'
    end
    object QRY_NFeVOLUME_QVOL: TIntegerField
      FieldName = 'VOLUME_QVOL'
      Origin = 'VOLUME_QVOL'
    end
    object QRY_NFeVOLUME_ESP: TStringField
      FieldName = 'VOLUME_ESP'
      Origin = 'VOLUME_ESP'
      Size = 50
    end
    object QRY_NFeVOLUME_MARCA: TStringField
      FieldName = 'VOLUME_MARCA'
      Origin = 'VOLUME_MARCA'
      Size = 100
    end
    object QRY_NFeVOLUME_NVOL: TStringField
      FieldName = 'VOLUME_NVOL'
      Origin = 'VOLUME_NVOL'
      Size = 50
    end
    object QRY_NFeVOLUME_PESOL: TBCDField
      FieldName = 'VOLUME_PESOL'
      Origin = 'VOLUME_PESOL'
      Precision = 18
    end
    object QRY_NFeVOLUME_PESOB: TBCDField
      FieldName = 'VOLUME_PESOB'
      Origin = 'VOLUME_PESOB'
      Precision = 18
    end
    object QRY_NFeINFADIC_INFCPL: TStringField
      FieldName = 'INFADIC_INFCPL'
      Origin = 'INFADIC_INFCPL'
      Size = 200
    end
    object QRY_NFeINFADIC_INFADFISCO: TStringField
      FieldName = 'INFADIC_INFADFISCO'
      Origin = 'INFADIC_INFADFISCO'
      Size = 200
    end
    object QRY_NFeOBSCOMPLEMENTAR_XCAMPO: TStringField
      FieldName = 'OBSCOMPLEMENTAR_XCAMPO'
      Origin = 'OBSCOMPLEMENTAR_XCAMPO'
      Size = 200
    end
    object QRY_NFeOBSCOMPLEMENTAR_XTEXTO: TStringField
      FieldName = 'OBSCOMPLEMENTAR_XTEXTO'
      Origin = 'OBSCOMPLEMENTAR_XTEXTO'
      Size = 200
    end
    object QRY_NFeOBSFISCO_XCAMPO: TStringField
      FieldName = 'OBSFISCO_XCAMPO'
      Origin = 'OBSFISCO_XCAMPO'
      Size = 200
    end
    object QRY_NFeOBSFISCO_XTEXTO: TStringField
      FieldName = 'OBSFISCO_XTEXTO'
      Origin = 'OBSFISCO_XTEXTO'
      Size = 200
    end
    object QRY_NFeEXPORTA_UFEMBARQ: TStringField
      FieldName = 'EXPORTA_UFEMBARQ'
      Origin = 'EXPORTA_UFEMBARQ'
      Size = 100
    end
    object QRY_NFeEXPORTA_XLOCEMBARQ: TStringField
      FieldName = 'EXPORTA_XLOCEMBARQ'
      Origin = 'EXPORTA_XLOCEMBARQ'
      Size = 100
    end
    object QRY_NFeCOMPRA_XNEMP: TStringField
      FieldName = 'COMPRA_XNEMP'
      Origin = 'COMPRA_XNEMP'
      Size = 100
    end
    object QRY_NFeCOMPRA_XPED: TStringField
      FieldName = 'COMPRA_XPED'
      Origin = 'COMPRA_XPED'
      Size = 100
    end
    object QRY_NFeCOMPRA_XCONT: TStringField
      FieldName = 'COMPRA_XCONT'
      Origin = 'COMPRA_XCONT'
      Size = 100
    end
    object QRY_NFeINFOPGTO_INDPAG: TStringField
      FieldName = 'INFOPGTO_INDPAG'
      Origin = 'INFOPGTO_INDPAG'
      Size = 1
    end
    object QRY_NFeINFOPGTO_TPAG: TStringField
      FieldName = 'INFOPGTO_TPAG'
      Origin = 'INFOPGTO_TPAG'
      Size = 1
    end
    object QRY_NFeINFOPGTO_VPAG: TBCDField
      FieldName = 'INFOPGTO_VPAG'
      Origin = 'INFOPGTO_VPAG'
      Precision = 18
    end
    object QRY_NFeINFOPGTO_TPINTEGRA: TStringField
      FieldName = 'INFOPGTO_TPINTEGRA'
      Origin = 'INFOPGTO_TPINTEGRA'
      Size = 1
    end
    object QRY_NFeINFOPGTO_CNPJ: TStringField
      FieldName = 'INFOPGTO_CNPJ'
      Origin = 'INFOPGTO_CNPJ'
      Size = 50
    end
    object QRY_NFeINFOPGTO_TBAND: TStringField
      FieldName = 'INFOPGTO_TBAND'
      Origin = 'INFOPGTO_TBAND'
      Size = 1
    end
    object QRY_NFeINFOPGTO_CAUT: TStringField
      FieldName = 'INFOPGTO_CAUT'
      Origin = 'INFOPGTO_CAUT'
      Size = 100
    end
    object QRY_NFeINFINTERMED_CNPJ: TStringField
      FieldName = 'INFINTERMED_CNPJ'
      Origin = 'INFINTERMED_CNPJ'
      Size = 50
    end
    object QRY_NFeINFINTERMED_IDCADINTTRAN: TStringField
      FieldName = 'INFINTERMED_IDCADINTTRAN'
      Origin = 'INFINTERMED_IDCADINTTRAN'
      Size = 50
    end
    object QRY_NFeRETORNO_TPAMB: TStringField
      FieldName = 'RETORNO_TPAMB'
      Origin = 'RETORNO_TPAMB'
      Size = 1
    end
    object QRY_NFeRETORNO_VERAPLIC: TStringField
      FieldName = 'RETORNO_VERAPLIC'
      Origin = 'RETORNO_VERAPLIC'
      Size = 50
    end
    object QRY_NFeRETORNO_CSTAT: TIntegerField
      FieldName = 'RETORNO_CSTAT'
      Origin = 'RETORNO_CSTAT'
    end
    object QRY_NFeRETORNO_CUF: TIntegerField
      FieldName = 'RETORNO_CUF'
      Origin = 'RETORNO_CUF'
    end
    object QRY_NFeRETORNO_XMOTIVO: TStringField
      FieldName = 'RETORNO_XMOTIVO'
      Origin = 'RETORNO_XMOTIVO'
      Size = 200
    end
    object QRY_NFeRETORNO_CMSG: TIntegerField
      FieldName = 'RETORNO_CMSG'
      Origin = 'RETORNO_CMSG'
    end
    object QRY_NFeRETORNO_XMSG: TStringField
      FieldName = 'RETORNO_XMSG'
      Origin = 'RETORNO_XMSG'
      Size = 200
    end
    object QRY_NFeRETORNO_RECIBO: TStringField
      FieldName = 'RETORNO_RECIBO'
      Origin = 'RETORNO_RECIBO'
      Size = 100
    end
    object QRY_NFeRETORNO_PROTOCOLO: TStringField
      FieldName = 'RETORNO_PROTOCOLO'
      Origin = 'RETORNO_PROTOCOLO'
      Size = 100
    end
    object QRY_NFeRETORNO_CHNFE: TStringField
      FieldName = 'RETORNO_CHNFE'
      Origin = 'RETORNO_CHNFE'
      Size = 100
    end
    object QRY_NFeRETORNO_DHRECBTO: TSQLTimeStampField
      FieldName = 'RETORNO_DHRECBTO'
      Origin = 'RETORNO_DHRECBTO'
    end
    object QRY_NFeRETORNO_DIGVAL: TStringField
      FieldName = 'RETORNO_DIGVAL'
      Origin = 'RETORNO_DIGVAL'
      Size = 100
    end
    object QRY_NFeNUM_DOCS_EMITIDOS: TStringField
      FieldName = 'NUM_DOCS_EMITIDOS'
      Origin = 'NUM_DOCS_EMITIDOS'
      Size = 200
    end
  end
  object QRY_NFeItens: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from nfeitens where idnfe = :idnfe')
    Left = 400
    Top = 104
    ParamData = <
      item
        Name = 'IDNFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_NFeItensIDNFEITENS: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDNFEITENS'
      Origin = 'IDNFEITENS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_NFeItensIDNFE: TIntegerField
      FieldName = 'IDNFE'
      Origin = 'IDNFE'
    end
    object QRY_NFeItensPROD_NITEM: TIntegerField
      FieldName = 'PROD_NITEM'
      Origin = 'PROD_NITEM'
    end
    object QRY_NFeItensPROD_CPROD: TIntegerField
      FieldName = 'PROD_CPROD'
      Origin = 'PROD_CPROD'
    end
    object QRY_NFeItensPROD_CEAN: TStringField
      FieldName = 'PROD_CEAN'
      Origin = 'PROD_CEAN'
      Size = 50
    end
    object QRY_NFeItensPROD_XPROD: TStringField
      FieldName = 'PROD_XPROD'
      Origin = 'PROD_XPROD'
      Size = 100
    end
    object QRY_NFeItensPROD_NCM: TStringField
      FieldName = 'PROD_NCM'
      Origin = 'PROD_NCM'
      Size = 50
    end
    object QRY_NFeItensPROD_EXTIPI: TStringField
      FieldName = 'PROD_EXTIPI'
      Origin = 'PROD_EXTIPI'
      Size = 50
    end
    object QRY_NFeItensPROD_CFOP: TStringField
      FieldName = 'PROD_CFOP'
      Origin = 'PROD_CFOP'
      Size = 50
    end
    object QRY_NFeItensPROD_UCOM: TStringField
      FieldName = 'PROD_UCOM'
      Origin = 'PROD_UCOM'
      Size = 50
    end
    object QRY_NFeItensPROD_QCOM: TBCDField
      FieldName = 'PROD_QCOM'
      Origin = 'PROD_QCOM'
      Precision = 18
    end
    object QRY_NFeItensPROD_VUNCOM: TBCDField
      FieldName = 'PROD_VUNCOM'
      Origin = 'PROD_VUNCOM'
      Precision = 18
    end
    object QRY_NFeItensPROD_VPROD: TBCDField
      FieldName = 'PROD_VPROD'
      Origin = 'PROD_VPROD'
      Precision = 18
    end
    object QRY_NFeItensPROD_CEANTRIB: TStringField
      FieldName = 'PROD_CEANTRIB'
      Origin = 'PROD_CEANTRIB'
      Size = 50
    end
    object QRY_NFeItensPROD_UTRIB: TStringField
      FieldName = 'PROD_UTRIB'
      Origin = 'PROD_UTRIB'
      Size = 50
    end
    object QRY_NFeItensPROD_QTRIB: TBCDField
      FieldName = 'PROD_QTRIB'
      Origin = 'PROD_QTRIB'
      Precision = 18
    end
    object QRY_NFeItensPROD_VUNTRIB: TBCDField
      FieldName = 'PROD_VUNTRIB'
      Origin = 'PROD_VUNTRIB'
      Precision = 18
    end
    object QRY_NFeItensPROD_VOUTRO: TBCDField
      FieldName = 'PROD_VOUTRO'
      Origin = 'PROD_VOUTRO'
      Precision = 18
    end
    object QRY_NFeItensPROD_VFRETE: TBCDField
      FieldName = 'PROD_VFRETE'
      Origin = 'PROD_VFRETE'
      Precision = 18
    end
    object QRY_NFeItensPROD_VSEG: TBCDField
      FieldName = 'PROD_VSEG'
      Origin = 'PROD_VSEG'
      Precision = 18
    end
    object QRY_NFeItensPROD_VDESC: TBCDField
      FieldName = 'PROD_VDESC'
      Origin = 'PROD_VDESC'
      Precision = 18
    end
    object QRY_NFeItensPROD_CEST: TStringField
      FieldName = 'PROD_CEST'
      Origin = 'PROD_CEST'
      Size = 50
    end
    object QRY_NFeItensPROD_INFADPROD: TStringField
      FieldName = 'PROD_INFADPROD'
      Origin = 'PROD_INFADPROD'
      Size = 200
    end
    object QRY_NFeItensPROD_CBARRA: TStringField
      FieldName = 'PROD_CBARRA'
      Origin = 'PROD_CBARRA'
      Size = 50
    end
    object QRY_NFeItensPROD_CBARRATRIB: TStringField
      FieldName = 'PROD_CBARRATRIB'
      Origin = 'PROD_CBARRATRIB'
      Size = 50
    end
    object QRY_NFeItensPROD_DI_NDI: TStringField
      FieldName = 'PROD_DI_NDI'
      Origin = 'PROD_DI_NDI'
      Size = 100
    end
    object QRY_NFeItensPROD_DI_DDI: TStringField
      FieldName = 'PROD_DI_DDI'
      Origin = 'PROD_DI_DDI'
      Size = 100
    end
    object QRY_NFeItensPROD_DI_XLOCDESEMB: TStringField
      FieldName = 'PROD_DI_XLOCDESEMB'
      Origin = 'PROD_DI_XLOCDESEMB'
      Size = 100
    end
    object QRY_NFeItensPROD_DI_UFDESEMB: TStringField
      FieldName = 'PROD_DI_UFDESEMB'
      Origin = 'PROD_DI_UFDESEMB'
      Size = 100
    end
    object QRY_NFeItensPROD_DI_DDESEMB: TDateField
      FieldName = 'PROD_DI_DDESEMB'
      Origin = 'PROD_DI_DDESEMB'
    end
    object QRY_NFeItensPROD_DI_TPVIATRANSP: TStringField
      FieldName = 'PROD_DI_TPVIATRANSP'
      Origin = 'PROD_DI_TPVIATRANSP'
      Size = 1
    end
    object QRY_NFeItensPROD_DI_VAFRMM: TBCDField
      FieldName = 'PROD_DI_VAFRMM'
      Origin = 'PROD_DI_VAFRMM'
      Precision = 18
    end
    object QRY_NFeItensPROD_DI_TPINTERMEDIO: TStringField
      FieldName = 'PROD_DI_TPINTERMEDIO'
      Origin = 'PROD_DI_TPINTERMEDIO'
      Size = 1
    end
    object QRY_NFeItensPROD_DI_CNPJ: TStringField
      FieldName = 'PROD_DI_CNPJ'
      Origin = 'PROD_DI_CNPJ'
      Size = 50
    end
    object QRY_NFeItensPROD_DI_UFTERCEIRO: TStringField
      FieldName = 'PROD_DI_UFTERCEIRO'
      Origin = 'PROD_DI_UFTERCEIRO'
      Size = 50
    end
    object QRY_NFeItensPROD_DI_CEXPORTADOR: TStringField
      FieldName = 'PROD_DI_CEXPORTADOR'
      Origin = 'PROD_DI_CEXPORTADOR'
      Size = 50
    end
    object QRY_NFeItensPROD_DI_ADICAO_NADICAO: TIntegerField
      FieldName = 'PROD_DI_ADICAO_NADICAO'
      Origin = 'PROD_DI_ADICAO_NADICAO'
    end
    object QRY_NFeItensPROD_DI_ADICAO_NSEQADI: TIntegerField
      FieldName = 'PROD_DI_ADICAO_NSEQADI'
      Origin = 'PROD_DI_ADICAO_NSEQADI'
    end
    object QRY_NFeItensPROD_DI_ADICAO_CFABRICANTE: TStringField
      FieldName = 'PROD_DI_ADICAO_CFABRICANTE'
      Origin = 'PROD_DI_ADICAO_CFABRICANTE'
      Size = 100
    end
    object QRY_NFeItensPROD_DI_ADICAO_VDESCDI: TBCDField
      FieldName = 'PROD_DI_ADICAO_VDESCDI'
      Origin = 'PROD_DI_ADICAO_VDESCDI'
      Precision = 18
    end
    object QRY_NFeItensPROD_DI_ADICAO_NDRAW: TStringField
      FieldName = 'PROD_DI_ADICAO_NDRAW'
      Origin = 'PROD_DI_ADICAO_NDRAW'
      Size = 100
    end
    object QRY_NFeItensPROD_RASTRO_NLOTE: TStringField
      FieldName = 'PROD_RASTRO_NLOTE'
      Origin = 'PROD_RASTRO_NLOTE'
      Size = 100
    end
    object QRY_NFeItensPROD_RASTRO_QLOTE: TBCDField
      FieldName = 'PROD_RASTRO_QLOTE'
      Origin = 'PROD_RASTRO_QLOTE'
      Precision = 18
    end
    object QRY_NFeItensPROD_RASTRO_DFAB: TDateField
      FieldName = 'PROD_RASTRO_DFAB'
      Origin = 'PROD_RASTRO_DFAB'
    end
    object QRY_NFeItensPROD_RASTRO_DVAL: TDateField
      FieldName = 'PROD_RASTRO_DVAL'
      Origin = 'PROD_RASTRO_DVAL'
    end
    object QRY_NFeItensPROD_RASTRO_CAGREG: TStringField
      FieldName = 'PROD_RASTRO_CAGREG'
      Origin = 'PROD_RASTRO_CAGREG'
      Size = 100
    end
    object QRY_NFeItensIMPOSTO_VTOTTRIB: TBCDField
      FieldName = 'IMPOSTO_VTOTTRIB'
      Origin = 'IMPOSTO_VTOTTRIB'
      Precision = 18
    end
    object QRY_NFeItensICMS_ORIG: TStringField
      FieldName = 'ICMS_ORIG'
      Origin = 'ICMS_ORIG'
      Size = 1
    end
    object QRY_NFeItensICMS_CST: TStringField
      FieldName = 'ICMS_CST'
      Origin = 'ICMS_CST'
      Size = 50
    end
    object QRY_NFeItensICMS_MODBC: TStringField
      FieldName = 'ICMS_MODBC'
      Origin = 'ICMS_MODBC'
      Size = 1
    end
    object QRY_NFeItensICMS_VBC: TBCDField
      FieldName = 'ICMS_VBC'
      Origin = 'ICMS_VBC'
      Precision = 18
    end
    object QRY_NFeItensICMS_PICMS: TBCDField
      FieldName = 'ICMS_PICMS'
      Origin = 'ICMS_PICMS'
      Precision = 18
    end
    object QRY_NFeItensICMS_VICMS: TBCDField
      FieldName = 'ICMS_VICMS'
      Origin = 'ICMS_VICMS'
      Precision = 18
    end
    object QRY_NFeItensICMS_MODBCST: TStringField
      FieldName = 'ICMS_MODBCST'
      Origin = 'ICMS_MODBCST'
      Size = 1
    end
    object QRY_NFeItensICMS_PMVAST: TBCDField
      FieldName = 'ICMS_PMVAST'
      Origin = 'ICMS_PMVAST'
      Precision = 18
    end
    object QRY_NFeItensICMS_PREDBCS: TBCDField
      FieldName = 'ICMS_PREDBCS'
      Origin = 'ICMS_PREDBCS'
      Precision = 18
    end
    object QRY_NFeItensICMS_VBCST: TBCDField
      FieldName = 'ICMS_VBCST'
      Origin = 'ICMS_VBCST'
      Precision = 18
    end
    object QRY_NFeItensICMS_PICMSST: TBCDField
      FieldName = 'ICMS_PICMSST'
      Origin = 'ICMS_PICMSST'
      Precision = 18
    end
    object QRY_NFeItensICMS_VICMSST: TBCDField
      FieldName = 'ICMS_VICMSST'
      Origin = 'ICMS_VICMSST'
      Precision = 18
    end
    object QRY_NFeItensICMS_PREDBC: TBCDField
      FieldName = 'ICMS_PREDBC'
      Origin = 'ICMS_PREDBC'
      Precision = 18
    end
    object QRY_NFeItensICMS_CSOSN: TStringField
      FieldName = 'ICMS_CSOSN'
      Origin = 'ICMS_CSOSN'
      Size = 10
    end
    object QRY_NFeItensICMS_PCREDSN: TBCDField
      FieldName = 'ICMS_PCREDSN'
      Origin = 'ICMS_PCREDSN'
      Precision = 18
    end
    object QRY_NFeItensICMS_VCREDICMSSN: TBCDField
      FieldName = 'ICMS_VCREDICMSSN'
      Origin = 'ICMS_VCREDICMSSN'
      Precision = 18
    end
    object QRY_NFeItensICMS_PREDBCST: TBCDField
      FieldName = 'ICMS_PREDBCST'
      Origin = 'ICMS_PREDBCST'
      Precision = 18
    end
    object QRY_NFeItensICMS_VBCFCPST: TBCDField
      FieldName = 'ICMS_VBCFCPST'
      Origin = 'ICMS_VBCFCPST'
      Precision = 18
    end
    object QRY_NFeItensICMS_PFCPST: TBCDField
      FieldName = 'ICMS_PFCPST'
      Origin = 'ICMS_PFCPST'
      Precision = 18
    end
    object QRY_NFeItensICMS_VFCPST: TBCDField
      FieldName = 'ICMS_VFCPST'
      Origin = 'ICMS_VFCPST'
      Precision = 18
    end
    object QRY_NFeItensICMS_VBCSTRET: TBCDField
      FieldName = 'ICMS_VBCSTRET'
      Origin = 'ICMS_VBCSTRET'
      Precision = 18
    end
    object QRY_NFeItensICMS_PST: TBCDField
      FieldName = 'ICMS_PST'
      Origin = 'ICMS_PST'
      Precision = 18
    end
    object QRY_NFeItensICMS_VICMSSUBSTITUTO: TBCDField
      FieldName = 'ICMS_VICMSSUBSTITUTO'
      Origin = 'ICMS_VICMSSUBSTITUTO'
      Precision = 18
    end
    object QRY_NFeItensICMS_VICMSSTRET: TBCDField
      FieldName = 'ICMS_VICMSSTRET'
      Origin = 'ICMS_VICMSSTRET'
      Precision = 18
    end
    object QRY_NFeItensICMS_VBCFCPSTRET: TBCDField
      FieldName = 'ICMS_VBCFCPSTRET'
      Origin = 'ICMS_VBCFCPSTRET'
      Precision = 18
    end
    object QRY_NFeItensICMS_PFCPSTRET: TBCDField
      FieldName = 'ICMS_PFCPSTRET'
      Origin = 'ICMS_PFCPSTRET'
      Precision = 18
    end
    object QRY_NFeItensICMS_VFCPSTRET: TBCDField
      FieldName = 'ICMS_VFCPSTRET'
      Origin = 'ICMS_VFCPSTRET'
      Precision = 18
    end
    object QRY_NFeItensICMS_PREDBCEFET: TBCDField
      FieldName = 'ICMS_PREDBCEFET'
      Origin = 'ICMS_PREDBCEFET'
      Precision = 18
    end
    object QRY_NFeItensICMS_VBCEFET: TBCDField
      FieldName = 'ICMS_VBCEFET'
      Origin = 'ICMS_VBCEFET'
      Precision = 18
    end
    object QRY_NFeItensICMS_PICMSEFET: TBCDField
      FieldName = 'ICMS_PICMSEFET'
      Origin = 'ICMS_PICMSEFET'
      Precision = 18
    end
    object QRY_NFeItensICMS_VICMSEFET: TBCDField
      FieldName = 'ICMS_VICMSEFET'
      Origin = 'ICMS_VICMSEFET'
      Precision = 18
    end
    object QRY_NFeItensICMS_VICMSSTDESON: TBCDField
      FieldName = 'ICMS_VICMSSTDESON'
      Origin = 'ICMS_VICMSSTDESON'
      Precision = 18
    end
    object QRY_NFeItensICMS_MOTDESICMSST: TStringField
      FieldName = 'ICMS_MOTDESICMSST'
      Origin = 'ICMS_MOTDESICMSST'
      Size = 1
    end
    object QRY_NFeItensICMS_PFCPDIF: TBCDField
      FieldName = 'ICMS_PFCPDIF'
      Origin = 'ICMS_PFCPDIF'
      Precision = 18
    end
    object QRY_NFeItensICMS_VFCPDIF: TBCDField
      FieldName = 'ICMS_VFCPDIF'
      Origin = 'ICMS_VFCPDIF'
      Precision = 18
    end
    object QRY_NFeItensICMS_VFCPEFET: TBCDField
      FieldName = 'ICMS_VFCPEFET'
      Origin = 'ICMS_VFCPEFET'
      Precision = 18
    end
    object QRY_NFeItensICMSUFDEST_VBCUFDEST: TBCDField
      FieldName = 'ICMSUFDEST_VBCUFDEST'
      Origin = 'ICMSUFDEST_VBCUFDEST'
      Precision = 18
    end
    object QRY_NFeItensICMSUFDEST_PFCPUFDEST: TBCDField
      FieldName = 'ICMSUFDEST_PFCPUFDEST'
      Origin = 'ICMSUFDEST_PFCPUFDEST'
      Precision = 18
    end
    object QRY_NFeItensICMSUFDEST_PICMSUFDEST: TBCDField
      FieldName = 'ICMSUFDEST_PICMSUFDEST'
      Origin = 'ICMSUFDEST_PICMSUFDEST'
      Precision = 18
    end
    object QRY_NFeItensICMSUFDEST_PICMSINTER: TBCDField
      FieldName = 'ICMSUFDEST_PICMSINTER'
      Origin = 'ICMSUFDEST_PICMSINTER'
      Precision = 18
    end
    object QRY_NFeItensICMSUFDEST_PICMSINTERPART: TBCDField
      FieldName = 'ICMSUFDEST_PICMSINTERPART'
      Origin = 'ICMSUFDEST_PICMSINTERPART'
      Precision = 18
    end
    object QRY_NFeItensICMSUFDEST_VFCPUFDEST: TBCDField
      FieldName = 'ICMSUFDEST_VFCPUFDEST'
      Origin = 'ICMSUFDEST_VFCPUFDEST'
      Precision = 18
    end
    object QRY_NFeItensICMSUFDEST_VICMSUFDEST: TBCDField
      FieldName = 'ICMSUFDEST_VICMSUFDEST'
      Origin = 'ICMSUFDEST_VICMSUFDEST'
      Precision = 18
    end
    object QRY_NFeItensICMSUFDEST_VICMSUFREMET: TBCDField
      FieldName = 'ICMSUFDEST_VICMSUFREMET'
      Origin = 'ICMSUFDEST_VICMSUFREMET'
      Precision = 18
    end
    object QRY_NFeItensIPI_CST: TStringField
      FieldName = 'IPI_CST'
      Origin = 'IPI_CST'
      Size = 10
    end
    object QRY_NFeItensIPI_CLENQ: TStringField
      FieldName = 'IPI_CLENQ'
      Origin = 'IPI_CLENQ'
      Size = 50
    end
    object QRY_NFeItensIPI_CNPJPROD: TStringField
      FieldName = 'IPI_CNPJPROD'
      Origin = 'IPI_CNPJPROD'
      Size = 50
    end
    object QRY_NFeItensIPI_CSELO: TStringField
      FieldName = 'IPI_CSELO'
      Origin = 'IPI_CSELO'
      Size = 50
    end
    object QRY_NFeItensIPI_QSELO: TBCDField
      FieldName = 'IPI_QSELO'
      Origin = 'IPI_QSELO'
      Precision = 18
    end
    object QRY_NFeItensIPI_CENQ: TStringField
      FieldName = 'IPI_CENQ'
      Origin = 'IPI_CENQ'
      Size = 50
    end
    object QRY_NFeItensIPI_VBC: TBCDField
      FieldName = 'IPI_VBC'
      Origin = 'IPI_VBC'
      Precision = 18
    end
    object QRY_NFeItensIPI_QUNID: TBCDField
      FieldName = 'IPI_QUNID'
      Origin = 'IPI_QUNID'
      Precision = 18
    end
    object QRY_NFeItensIPI_VUNID: TBCDField
      FieldName = 'IPI_VUNID'
      Origin = 'IPI_VUNID'
      Precision = 18
    end
    object QRY_NFeItensIPI_PIPI: TBCDField
      FieldName = 'IPI_PIPI'
      Origin = 'IPI_PIPI'
      Precision = 18
    end
    object QRY_NFeItensIPI_VIPI: TBCDField
      FieldName = 'IPI_VIPI'
      Origin = 'IPI_VIPI'
      Precision = 18
    end
    object QRY_NFeItensII_VBC: TBCDField
      FieldName = 'II_VBC'
      Origin = 'II_VBC'
      Precision = 18
    end
    object QRY_NFeItensII_VDESPADU: TBCDField
      FieldName = 'II_VDESPADU'
      Origin = 'II_VDESPADU'
      Precision = 18
    end
    object QRY_NFeItensII_VII: TBCDField
      FieldName = 'II_VII'
      Origin = 'II_VII'
      Precision = 18
    end
    object QRY_NFeItensII_VIOF: TBCDField
      FieldName = 'II_VIOF'
      Origin = 'II_VIOF'
      Precision = 18
    end
    object QRY_NFeItensPIS_CST: TStringField
      FieldName = 'PIS_CST'
      Origin = 'PIS_CST'
      Size = 10
    end
    object QRY_NFeItensPIS_VBC: TBCDField
      FieldName = 'PIS_VBC'
      Origin = 'PIS_VBC'
      Precision = 18
    end
    object QRY_NFeItensPIS_PPIS: TBCDField
      FieldName = 'PIS_PPIS'
      Origin = 'PIS_PPIS'
      Precision = 18
    end
    object QRY_NFeItensPIS_VPIS: TBCDField
      FieldName = 'PIS_VPIS'
      Origin = 'PIS_VPIS'
      Precision = 18
    end
    object QRY_NFeItensPIS_QBCPROD: TBCDField
      FieldName = 'PIS_QBCPROD'
      Origin = 'PIS_QBCPROD'
      Precision = 18
    end
    object QRY_NFeItensPIS_VALIQPROD: TBCDField
      FieldName = 'PIS_VALIQPROD'
      Origin = 'PIS_VALIQPROD'
      Precision = 18
    end
    object QRY_NFeItensPISST_VBC: TBCDField
      FieldName = 'PISST_VBC'
      Origin = 'PISST_VBC'
      Precision = 18
    end
    object QRY_NFeItensPISST_PPIS: TBCDField
      FieldName = 'PISST_PPIS'
      Origin = 'PISST_PPIS'
      Precision = 18
    end
    object QRY_NFeItensPISST_QBCPROD: TBCDField
      FieldName = 'PISST_QBCPROD'
      Origin = 'PISST_QBCPROD'
      Precision = 18
    end
    object QRY_NFeItensPISST_VALIQPROD: TBCDField
      FieldName = 'PISST_VALIQPROD'
      Origin = 'PISST_VALIQPROD'
      Precision = 18
    end
    object QRY_NFeItensPISST_VPIS: TBCDField
      FieldName = 'PISST_VPIS'
      Origin = 'PISST_VPIS'
      Precision = 18
    end
    object QRY_NFeItensPISST_INDSOMAPISST: TStringField
      FieldName = 'PISST_INDSOMAPISST'
      Origin = 'PISST_INDSOMAPISST'
      Size = 1
    end
    object QRY_NFeItensCOFINS_CST: TStringField
      FieldName = 'COFINS_CST'
      Origin = 'COFINS_CST'
      Size = 10
    end
    object QRY_NFeItensCOFINS_VBC: TBCDField
      FieldName = 'COFINS_VBC'
      Origin = 'COFINS_VBC'
      Precision = 18
    end
    object QRY_NFeItensCOFINS_PCOFINS: TBCDField
      FieldName = 'COFINS_PCOFINS'
      Origin = 'COFINS_PCOFINS'
      Precision = 18
    end
    object QRY_NFeItensCOFINS_VCOFINS: TBCDField
      FieldName = 'COFINS_VCOFINS'
      Origin = 'COFINS_VCOFINS'
      Precision = 18
    end
    object QRY_NFeItensCOFINS_QBCPROD: TBCDField
      FieldName = 'COFINS_QBCPROD'
      Origin = 'COFINS_QBCPROD'
      Precision = 18
    end
    object QRY_NFeItensCOFINS_VALIQPROD: TBCDField
      FieldName = 'COFINS_VALIQPROD'
      Origin = 'COFINS_VALIQPROD'
      Precision = 18
    end
    object QRY_NFeItensCOFINSST_VBC: TBCDField
      FieldName = 'COFINSST_VBC'
      Origin = 'COFINSST_VBC'
      Precision = 18
    end
    object QRY_NFeItensCOFINSST_PCOFINS: TBCDField
      FieldName = 'COFINSST_PCOFINS'
      Origin = 'COFINSST_PCOFINS'
      Precision = 18
    end
    object QRY_NFeItensCOFINSST_QBCPROD: TBCDField
      FieldName = 'COFINSST_QBCPROD'
      Origin = 'COFINSST_QBCPROD'
      Precision = 18
    end
    object QRY_NFeItensCOFINSST_VALIQPROD: TBCDField
      FieldName = 'COFINSST_VALIQPROD'
      Origin = 'COFINSST_VALIQPROD'
      Precision = 18
    end
    object QRY_NFeItensCOFINSST_VCOFINS: TBCDField
      FieldName = 'COFINSST_VCOFINS'
      Origin = 'COFINSST_VCOFINS'
      Precision = 18
    end
    object QRY_NFeItensCOFINSST_INDSOMACOFINSST: TStringField
      FieldName = 'COFINSST_INDSOMACOFINSST'
      Origin = 'COFINSST_INDSOMACOFINSST'
      Size = 1
    end
  end
  object QRY_NFCe: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from nfce where idnfce = :idnfce')
    Left = 400
    Top = 168
    ParamData = <
      item
        Name = 'IDNFCE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_NFCeIDNFCE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDNFCE'
      Origin = 'IDNFCE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_NFCeIDE_NATOP: TStringField
      FieldName = 'IDE_NATOP'
      Origin = 'IDE_NATOP'
      Size = 100
    end
    object QRY_NFCeIDE_INDPAG: TStringField
      FieldName = 'IDE_INDPAG'
      Origin = 'IDE_INDPAG'
      Size = 1
    end
    object QRY_NFCeIDE_MODELO: TIntegerField
      FieldName = 'IDE_MODELO'
      Origin = 'IDE_MODELO'
    end
    object QRY_NFCeIDE_SERIE: TIntegerField
      FieldName = 'IDE_SERIE'
      Origin = 'IDE_SERIE'
    end
    object QRY_NFCeIDE_NNF: TIntegerField
      FieldName = 'IDE_NNF'
      Origin = 'IDE_NNF'
    end
    object QRY_NFCeIDE_CNF: TIntegerField
      FieldName = 'IDE_CNF'
      Origin = 'IDE_CNF'
    end
    object QRY_NFCeIDE_DEMI: TSQLTimeStampField
      FieldName = 'IDE_DEMI'
      Origin = 'IDE_DEMI'
    end
    object QRY_NFCeIDE_DSAIENT: TSQLTimeStampField
      FieldName = 'IDE_DSAIENT'
      Origin = 'IDE_DSAIENT'
    end
    object QRY_NFCeIDE_HSAIENT: TSQLTimeStampField
      FieldName = 'IDE_HSAIENT'
      Origin = 'IDE_HSAIENT'
    end
    object QRY_NFCeIDE_TPNF: TStringField
      FieldName = 'IDE_TPNF'
      Origin = 'IDE_TPNF'
      Size = 1
    end
    object QRY_NFCeIDE_TPEMIS: TStringField
      FieldName = 'IDE_TPEMIS'
      Origin = 'IDE_TPEMIS'
      Size = 1
    end
    object QRY_NFCeIDE_TPAMB: TStringField
      FieldName = 'IDE_TPAMB'
      Origin = 'IDE_TPAMB'
      Size = 1
    end
    object QRY_NFCeIDE_CUF: TIntegerField
      FieldName = 'IDE_CUF'
      Origin = 'IDE_CUF'
    end
    object QRY_NFCeIDE_CMUNFG: TIntegerField
      FieldName = 'IDE_CMUNFG'
      Origin = 'IDE_CMUNFG'
    end
    object QRY_NFCeIDE_FINNFE: TStringField
      FieldName = 'IDE_FINNFE'
      Origin = 'IDE_FINNFE'
      Size = 1
    end
    object QRY_NFCeIDE_TPIMP: TStringField
      FieldName = 'IDE_TPIMP'
      Origin = 'IDE_TPIMP'
      Size = 1
    end
    object QRY_NFCeIDE_INDFINAL: TStringField
      FieldName = 'IDE_INDFINAL'
      Origin = 'IDE_INDFINAL'
      Size = 1
    end
    object QRY_NFCeIDE_INDPRES: TStringField
      FieldName = 'IDE_INDPRES'
      Origin = 'IDE_INDPRES'
      Size = 1
    end
    object QRY_NFCeIDE_INDINTERMED: TStringField
      FieldName = 'IDE_INDINTERMED'
      Origin = 'IDE_INDINTERMED'
      Size = 1
    end
    object QRY_NFCeEMIT_CNPJCPF: TStringField
      FieldName = 'EMIT_CNPJCPF'
      Origin = 'EMIT_CNPJCPF'
      Size = 50
    end
    object QRY_NFCeEMIT_IE: TStringField
      FieldName = 'EMIT_IE'
      Origin = 'EMIT_IE'
      Size = 50
    end
    object QRY_NFCeEMIT_XNOME: TStringField
      FieldName = 'EMIT_XNOME'
      Origin = 'EMIT_XNOME'
      Size = 100
    end
    object QRY_NFCeEMIT_XFANT: TStringField
      FieldName = 'EMIT_XFANT'
      Origin = 'EMIT_XFANT'
      Size = 100
    end
    object QRY_NFCeEMIT_ENDEREMIT_FONE: TStringField
      FieldName = 'EMIT_ENDEREMIT_FONE'
      Origin = 'EMIT_ENDEREMIT_FONE'
      Size = 50
    end
    object QRY_NFCeEMIT_ENDEREMIT_CEP: TStringField
      FieldName = 'EMIT_ENDEREMIT_CEP'
      Origin = 'EMIT_ENDEREMIT_CEP'
      Size = 50
    end
    object QRY_NFCeEMIT_ENDEREMIT_XLGR: TStringField
      FieldName = 'EMIT_ENDEREMIT_XLGR'
      Origin = 'EMIT_ENDEREMIT_XLGR'
      Size = 100
    end
    object QRY_NFCeEMIT_ENDEREMIT_NRO: TStringField
      FieldName = 'EMIT_ENDEREMIT_NRO'
      Origin = 'EMIT_ENDEREMIT_NRO'
      Size = 50
    end
    object QRY_NFCeEMIT_ENDEREMIT_XCPL: TStringField
      FieldName = 'EMIT_ENDEREMIT_XCPL'
      Origin = 'EMIT_ENDEREMIT_XCPL'
      Size = 200
    end
    object QRY_NFCeEMIT_ENDEREMIT_XBAIRRO: TStringField
      FieldName = 'EMIT_ENDEREMIT_XBAIRRO'
      Origin = 'EMIT_ENDEREMIT_XBAIRRO'
      Size = 100
    end
    object QRY_NFCeEMIT_ENDEREMIT_CMUN: TIntegerField
      FieldName = 'EMIT_ENDEREMIT_CMUN'
      Origin = 'EMIT_ENDEREMIT_CMUN'
    end
    object QRY_NFCeEMIT_ENDEREMIT_XMUN: TStringField
      FieldName = 'EMIT_ENDEREMIT_XMUN'
      Origin = 'EMIT_ENDEREMIT_XMUN'
      Size = 100
    end
    object QRY_NFCeEMIT_ENDEREMIT_UF: TStringField
      FieldName = 'EMIT_ENDEREMIT_UF'
      Origin = 'EMIT_ENDEREMIT_UF'
    end
    object QRY_NFCeEMIT_ENDEREMIT_CPAIS: TIntegerField
      FieldName = 'EMIT_ENDEREMIT_CPAIS'
      Origin = 'EMIT_ENDEREMIT_CPAIS'
    end
    object QRY_NFCeEMIT_ENDEREMIT_XPAIS: TStringField
      FieldName = 'EMIT_ENDEREMIT_XPAIS'
      Origin = 'EMIT_ENDEREMIT_XPAIS'
      Size = 50
    end
    object QRY_NFCeEMIT_IEST: TStringField
      FieldName = 'EMIT_IEST'
      Origin = 'EMIT_IEST'
      Size = 50
    end
    object QRY_NFCeEMIT_CRT: TStringField
      FieldName = 'EMIT_CRT'
      Origin = 'EMIT_CRT'
      Size = 1
    end
    object QRY_NFCeDEST_CNPJCPF: TStringField
      FieldName = 'DEST_CNPJCPF'
      Origin = 'DEST_CNPJCPF'
      Size = 50
    end
    object QRY_NFCeDEST_ISUF: TStringField
      FieldName = 'DEST_ISUF'
      Origin = 'DEST_ISUF'
      Size = 50
    end
    object QRY_NFCeDEST_XNOME: TStringField
      FieldName = 'DEST_XNOME'
      Origin = 'DEST_XNOME'
      Size = 100
    end
    object QRY_NFCeDEST_INDIEDEST: TStringField
      FieldName = 'DEST_INDIEDEST'
      Origin = 'DEST_INDIEDEST'
      Size = 1
    end
    object QRY_NFCeDEST_ENDERDEST_FONE: TStringField
      FieldName = 'DEST_ENDERDEST_FONE'
      Origin = 'DEST_ENDERDEST_FONE'
      Size = 50
    end
    object QRY_NFCeDEST_ENDERDEST_CEP: TStringField
      FieldName = 'DEST_ENDERDEST_CEP'
      Origin = 'DEST_ENDERDEST_CEP'
      Size = 50
    end
    object QRY_NFCeDEST_ENDERDEST_XLGR: TStringField
      FieldName = 'DEST_ENDERDEST_XLGR'
      Origin = 'DEST_ENDERDEST_XLGR'
      Size = 100
    end
    object QRY_NFCeDEST_ENDERDEST_NRO: TStringField
      FieldName = 'DEST_ENDERDEST_NRO'
      Origin = 'DEST_ENDERDEST_NRO'
      Size = 50
    end
    object QRY_NFCeDEST_ENDERDEST_XCPL: TStringField
      FieldName = 'DEST_ENDERDEST_XCPL'
      Origin = 'DEST_ENDERDEST_XCPL'
      Size = 200
    end
    object QRY_NFCeDEST_ENDERDEST_XBAIRRO: TStringField
      FieldName = 'DEST_ENDERDEST_XBAIRRO'
      Origin = 'DEST_ENDERDEST_XBAIRRO'
      Size = 100
    end
    object QRY_NFCeDEST_ENDERDEST_CMUN: TIntegerField
      FieldName = 'DEST_ENDERDEST_CMUN'
      Origin = 'DEST_ENDERDEST_CMUN'
    end
    object QRY_NFCeDEST_ENDERDEST_XMUN: TStringField
      FieldName = 'DEST_ENDERDEST_XMUN'
      Origin = 'DEST_ENDERDEST_XMUN'
      Size = 100
    end
    object QRY_NFCeDEST_ENDERDEST_UF: TStringField
      FieldName = 'DEST_ENDERDEST_UF'
      Origin = 'DEST_ENDERDEST_UF'
    end
    object QRY_NFCeDEST_ENDERDEST_CPAIS: TIntegerField
      FieldName = 'DEST_ENDERDEST_CPAIS'
      Origin = 'DEST_ENDERDEST_CPAIS'
    end
    object QRY_NFCeDEST_ENDERDEST_XPAIS: TStringField
      FieldName = 'DEST_ENDERDEST_XPAIS'
      Origin = 'DEST_ENDERDEST_XPAIS'
      Size = 50
    end
    object QRY_NFCeRETIRADA_CNPJCPF: TStringField
      FieldName = 'RETIRADA_CNPJCPF'
      Origin = 'RETIRADA_CNPJCPF'
      Size = 50
    end
    object QRY_NFCeRETIRADA_XLGR: TStringField
      FieldName = 'RETIRADA_XLGR'
      Origin = 'RETIRADA_XLGR'
      Size = 100
    end
    object QRY_NFCeRETIRADA_NRO: TStringField
      FieldName = 'RETIRADA_NRO'
      Origin = 'RETIRADA_NRO'
      Size = 50
    end
    object QRY_NFCeRETIRADA_XCPL: TStringField
      FieldName = 'RETIRADA_XCPL'
      Origin = 'RETIRADA_XCPL'
      Size = 200
    end
    object QRY_NFCeRETIRADA_XBAIRRO: TStringField
      FieldName = 'RETIRADA_XBAIRRO'
      Origin = 'RETIRADA_XBAIRRO'
      Size = 100
    end
    object QRY_NFCeRETIRADA_CMUN: TIntegerField
      FieldName = 'RETIRADA_CMUN'
      Origin = 'RETIRADA_CMUN'
    end
    object QRY_NFCeRETIRADA_XMUN: TStringField
      FieldName = 'RETIRADA_XMUN'
      Origin = 'RETIRADA_XMUN'
      Size = 100
    end
    object QRY_NFCeRETIRADA_UF: TStringField
      FieldName = 'RETIRADA_UF'
      Origin = 'RETIRADA_UF'
    end
    object QRY_NFCeENTREGA_CNPJCPF: TStringField
      FieldName = 'ENTREGA_CNPJCPF'
      Origin = 'ENTREGA_CNPJCPF'
      Size = 50
    end
    object QRY_NFCeENTREGA_XLGR: TStringField
      FieldName = 'ENTREGA_XLGR'
      Origin = 'ENTREGA_XLGR'
      Size = 100
    end
    object QRY_NFCeENTREGA_NRO: TStringField
      FieldName = 'ENTREGA_NRO'
      Origin = 'ENTREGA_NRO'
      Size = 50
    end
    object QRY_NFCeENTREGA_XCPL: TStringField
      FieldName = 'ENTREGA_XCPL'
      Origin = 'ENTREGA_XCPL'
      Size = 200
    end
    object QRY_NFCeENTREGA_XBAIRRO: TStringField
      FieldName = 'ENTREGA_XBAIRRO'
      Origin = 'ENTREGA_XBAIRRO'
      Size = 100
    end
    object QRY_NFCeENTREGA_CMUN: TIntegerField
      FieldName = 'ENTREGA_CMUN'
      Origin = 'ENTREGA_CMUN'
    end
    object QRY_NFCeENTREGA_XMUN: TStringField
      FieldName = 'ENTREGA_XMUN'
      Origin = 'ENTREGA_XMUN'
      Size = 100
    end
    object QRY_NFCeENTREGA_UF: TStringField
      FieldName = 'ENTREGA_UF'
      Origin = 'ENTREGA_UF'
    end
    object QRY_NFCeTOTAL_ICMSTOT_VBC: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VBC'
      Origin = 'TOTAL_ICMSTOT_VBC'
      Precision = 18
    end
    object QRY_NFCeTOTAL_ICMSTOT_VICMS: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VICMS'
      Origin = 'TOTAL_ICMSTOT_VICMS'
      Precision = 18
    end
    object QRY_NFCeTOTAL_ICMSTOT_VBCST: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VBCST'
      Origin = 'TOTAL_ICMSTOT_VBCST'
      Precision = 18
    end
    object QRY_NFCeTOTAL_ICMSTOT_VST: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VST'
      Origin = 'TOTAL_ICMSTOT_VST'
      Precision = 18
    end
    object QRY_NFCeTOTAL_ICMSTOT_VPROD: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VPROD'
      Origin = 'TOTAL_ICMSTOT_VPROD'
      Precision = 18
    end
    object QRY_NFCeTOTAL_ICMSTOT_VFRETE: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VFRETE'
      Origin = 'TOTAL_ICMSTOT_VFRETE'
      Precision = 18
    end
    object QRY_NFCeTOTAL_ICMSTOT_VSEG: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VSEG'
      Origin = 'TOTAL_ICMSTOT_VSEG'
      Precision = 18
    end
    object QRY_NFCeTOTAL_ICMSTOT_VDESC: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VDESC'
      Origin = 'TOTAL_ICMSTOT_VDESC'
      Precision = 18
    end
    object QRY_NFCeTOTAL_ICMSTOT_VII: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VII'
      Origin = 'TOTAL_ICMSTOT_VII'
      Precision = 18
    end
    object QRY_NFCeTOTAL_ICMSTOT_VIPI: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VIPI'
      Origin = 'TOTAL_ICMSTOT_VIPI'
      Precision = 18
    end
    object QRY_NFCeTOTAL_ICMSTOT_VPIS: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VPIS'
      Origin = 'TOTAL_ICMSTOT_VPIS'
      Precision = 18
    end
    object QRY_NFCeTOTAL_ICMSTOT_VCOFINS: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VCOFINS'
      Origin = 'TOTAL_ICMSTOT_VCOFINS'
      Precision = 18
    end
    object QRY_NFCeTOTAL_ICMSTOT_VOUTRO: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VOUTRO'
      Origin = 'TOTAL_ICMSTOT_VOUTRO'
      Precision = 18
    end
    object QRY_NFCeTOTAL_ICMSTOT_VNF: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VNF'
      Origin = 'TOTAL_ICMSTOT_VNF'
      Precision = 18
    end
    object QRY_NFCeTOTAL_ICMSTOT_VFCPUFDEST: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VFCPUFDEST'
      Origin = 'TOTAL_ICMSTOT_VFCPUFDEST'
      Precision = 18
    end
    object QRY_NFCeTOTAL_ICMSTOT_VICMSUFDEST: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VICMSUFDEST'
      Origin = 'TOTAL_ICMSTOT_VICMSUFDEST'
      Precision = 18
    end
    object QRY_NFCeTOTAL_ICMSTOT_VICMSUFREMET: TBCDField
      FieldName = 'TOTAL_ICMSTOT_VICMSUFREMET'
      Origin = 'TOTAL_ICMSTOT_VICMSUFREMET'
      Precision = 18
    end
    object QRY_NFCeTOTAL_ISSQNTOT_VSERV: TBCDField
      FieldName = 'TOTAL_ISSQNTOT_VSERV'
      Origin = 'TOTAL_ISSQNTOT_VSERV'
      Precision = 18
    end
    object QRY_NFCeTOTAL_ISSQNTOT_VBC: TBCDField
      FieldName = 'TOTAL_ISSQNTOT_VBC'
      Origin = 'TOTAL_ISSQNTOT_VBC'
      Precision = 18
    end
    object QRY_NFCeTOTAL_ISSQNTOT_VISS: TBCDField
      FieldName = 'TOTAL_ISSQNTOT_VISS'
      Origin = 'TOTAL_ISSQNTOT_VISS'
      Precision = 18
    end
    object QRY_NFCeTOTAL_ISSQNTOT_VPIS: TBCDField
      FieldName = 'TOTAL_ISSQNTOT_VPIS'
      Origin = 'TOTAL_ISSQNTOT_VPIS'
      Precision = 18
    end
    object QRY_NFCeTOTAL_ISSQNTOT_VCOFINS: TBCDField
      FieldName = 'TOTAL_ISSQNTOT_VCOFINS'
      Origin = 'TOTAL_ISSQNTOT_VCOFINS'
      Precision = 18
    end
    object QRY_NFCeTOTAL_RETTRIB_VRETPIS: TBCDField
      FieldName = 'TOTAL_RETTRIB_VRETPIS'
      Origin = 'TOTAL_RETTRIB_VRETPIS'
      Precision = 18
    end
    object QRY_NFCeTOTAL_RETTRIB_VRETCOFINS: TBCDField
      FieldName = 'TOTAL_RETTRIB_VRETCOFINS'
      Origin = 'TOTAL_RETTRIB_VRETCOFINS'
      Precision = 18
    end
    object QRY_NFCeTOTAL_RETTRIB_VRETCSLL: TBCDField
      FieldName = 'TOTAL_RETTRIB_VRETCSLL'
      Origin = 'TOTAL_RETTRIB_VRETCSLL'
      Precision = 18
    end
    object QRY_NFCeTOTAL_RETTRIB_VBCIRRF: TBCDField
      FieldName = 'TOTAL_RETTRIB_VBCIRRF'
      Origin = 'TOTAL_RETTRIB_VBCIRRF'
      Precision = 18
    end
    object QRY_NFCeTOTAL_RETTRIB_VIRRF: TBCDField
      FieldName = 'TOTAL_RETTRIB_VIRRF'
      Origin = 'TOTAL_RETTRIB_VIRRF'
      Precision = 18
    end
    object QRY_NFCeTOTAL_RETTRIB_VBCRETPREV: TBCDField
      FieldName = 'TOTAL_RETTRIB_VBCRETPREV'
      Origin = 'TOTAL_RETTRIB_VBCRETPREV'
      Precision = 18
    end
    object QRY_NFCeTOTAL_RETTRIB_VRETPREV: TBCDField
      FieldName = 'TOTAL_RETTRIB_VRETPREV'
      Origin = 'TOTAL_RETTRIB_VRETPREV'
      Precision = 18
    end
    object QRY_NFCeTRANSP_MODFRETE: TStringField
      FieldName = 'TRANSP_MODFRETE'
      Origin = 'TRANSP_MODFRETE'
      Size = 1
    end
    object QRY_NFCePAG_TPAG: TStringField
      FieldName = 'PAG_TPAG'
      Origin = 'PAG_TPAG'
      Size = 1
    end
    object QRY_NFCePAG_VPAG: TBCDField
      FieldName = 'PAG_VPAG'
      Origin = 'PAG_VPAG'
      Precision = 18
    end
    object QRY_NFCePAG_XPAG: TStringField
      FieldName = 'PAG_XPAG'
      Origin = 'PAG_XPAG'
      Size = 50
    end
    object QRY_NFCeINFADIC_INFCPL: TStringField
      FieldName = 'INFADIC_INFCPL'
      Origin = 'INFADIC_INFCPL'
      Size = 200
    end
    object QRY_NFCeINFADIC_INFADFISCO: TStringField
      FieldName = 'INFADIC_INFADFISCO'
      Origin = 'INFADIC_INFADFISCO'
      Size = 200
    end
    object QRY_NFCeINFADIC_OBSCONT_XCAMPO: TStringField
      FieldName = 'INFADIC_OBSCONT_XCAMPO'
      Origin = 'INFADIC_OBSCONT_XCAMPO'
      Size = 200
    end
    object QRY_NFCeINFADIC_OBSCONT_XTEXTO: TStringField
      FieldName = 'INFADIC_OBSCONT_XTEXTO'
      Origin = 'INFADIC_OBSCONT_XTEXTO'
      Size = 200
    end
    object QRY_NFCeINFADIC_OBSFISCO_XCAMPO: TStringField
      FieldName = 'INFADIC_OBSFISCO_XCAMPO'
      Origin = 'INFADIC_OBSFISCO_XCAMPO'
      Size = 200
    end
    object QRY_NFCeINFADIC_OBSFISCO_XTEXTO: TStringField
      FieldName = 'INFADIC_OBSFISCO_XTEXTO'
      Origin = 'INFADIC_OBSFISCO_XTEXTO'
      Size = 200
    end
    object QRY_NFCeINFINTERMED_CNPJ: TStringField
      FieldName = 'INFINTERMED_CNPJ'
      Origin = 'INFINTERMED_CNPJ'
      Size = 50
    end
    object QRY_NFCeINFINTERMED_IDCADINTTRAN: TStringField
      FieldName = 'INFINTERMED_IDCADINTTRAN'
      Origin = 'INFINTERMED_IDCADINTTRAN'
      Size = 100
    end
    object QRY_NFCeRETORNO_TPAMB: TStringField
      FieldName = 'RETORNO_TPAMB'
      Origin = 'RETORNO_TPAMB'
      Size = 1
    end
    object QRY_NFCeRETORNO_VERAPLIC: TStringField
      FieldName = 'RETORNO_VERAPLIC'
      Origin = 'RETORNO_VERAPLIC'
      Size = 50
    end
    object QRY_NFCeRETORNO_CHNFE: TStringField
      FieldName = 'RETORNO_CHNFE'
      Origin = 'RETORNO_CHNFE'
      Size = 100
    end
    object QRY_NFCeRETORNO_DHRECBTO: TSQLTimeStampField
      FieldName = 'RETORNO_DHRECBTO'
      Origin = 'RETORNO_DHRECBTO'
    end
    object QRY_NFCeRETORNO_NPROT: TStringField
      FieldName = 'RETORNO_NPROT'
      Origin = 'RETORNO_NPROT'
      Size = 100
    end
    object QRY_NFCeRETORNO_DIGVAL: TStringField
      FieldName = 'RETORNO_DIGVAL'
      Origin = 'RETORNO_DIGVAL'
      Size = 100
    end
    object QRY_NFCeRETORNO_CSTAT: TIntegerField
      FieldName = 'RETORNO_CSTAT'
      Origin = 'RETORNO_CSTAT'
    end
    object QRY_NFCeRETORNO_XMOTIVO: TStringField
      FieldName = 'RETORNO_XMOTIVO'
      Origin = 'RETORNO_XMOTIVO'
      Size = 200
    end
    object QRY_NFCeIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
    end
    object QRY_NFCeNUM_DOCS_EMITIDOS: TStringField
      FieldName = 'NUM_DOCS_EMITIDOS'
      Origin = 'NUM_DOCS_EMITIDOS'
      Size = 200
    end
  end
  object QRY_NFCeItens: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from nfceitens where idnfce = :idnfce')
    Left = 400
    Top = 224
    ParamData = <
      item
        Name = 'IDNFCE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_NFCeItensIDNFCEITEM: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDNFCEITEM'
      Origin = 'IDNFCEITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_NFCeItensIDNFCE: TIntegerField
      FieldName = 'IDNFCE'
      Origin = 'IDNFCE'
    end
    object QRY_NFCeItensPROD_NITEM: TIntegerField
      FieldName = 'PROD_NITEM'
      Origin = 'PROD_NITEM'
    end
    object QRY_NFCeItensPROD_CPROD: TStringField
      FieldName = 'PROD_CPROD'
      Origin = 'PROD_CPROD'
      Size = 50
    end
    object QRY_NFCeItensPROD_CEAN: TStringField
      FieldName = 'PROD_CEAN'
      Origin = 'PROD_CEAN'
      Size = 50
    end
    object QRY_NFCeItensPROD_XPROD: TStringField
      FieldName = 'PROD_XPROD'
      Origin = 'PROD_XPROD'
      Size = 100
    end
    object QRY_NFCeItensPROD_NCM: TStringField
      FieldName = 'PROD_NCM'
      Origin = 'PROD_NCM'
      Size = 50
    end
    object QRY_NFCeItensPROD_EXTIPI: TStringField
      FieldName = 'PROD_EXTIPI'
      Origin = 'PROD_EXTIPI'
      Size = 50
    end
    object QRY_NFCeItensPROD_CFOP: TStringField
      FieldName = 'PROD_CFOP'
      Origin = 'PROD_CFOP'
      Size = 50
    end
    object QRY_NFCeItensPROD_UCOM: TStringField
      FieldName = 'PROD_UCOM'
      Origin = 'PROD_UCOM'
      Size = 50
    end
    object QRY_NFCeItensPROD_QCOM: TBCDField
      FieldName = 'PROD_QCOM'
      Origin = 'PROD_QCOM'
      Precision = 18
    end
    object QRY_NFCeItensPROD_VUNCOM: TBCDField
      FieldName = 'PROD_VUNCOM'
      Origin = 'PROD_VUNCOM'
      Precision = 18
    end
    object QRY_NFCeItensPROD_VPROD: TBCDField
      FieldName = 'PROD_VPROD'
      Origin = 'PROD_VPROD'
      Precision = 18
    end
    object QRY_NFCeItensPROD_CEANTRIB: TStringField
      FieldName = 'PROD_CEANTRIB'
      Origin = 'PROD_CEANTRIB'
      Size = 50
    end
    object QRY_NFCeItensPROD_UTRIB: TStringField
      FieldName = 'PROD_UTRIB'
      Origin = 'PROD_UTRIB'
      Size = 10
    end
    object QRY_NFCeItensPROD_QTRIB: TBCDField
      FieldName = 'PROD_QTRIB'
      Origin = 'PROD_QTRIB'
      Precision = 18
    end
    object QRY_NFCeItensPROD_VUNTRIB: TBCDField
      FieldName = 'PROD_VUNTRIB'
      Origin = 'PROD_VUNTRIB'
      Precision = 18
    end
    object QRY_NFCeItensPROD_VOUTRO: TBCDField
      FieldName = 'PROD_VOUTRO'
      Origin = 'PROD_VOUTRO'
      Precision = 18
    end
    object QRY_NFCeItensPROD_VFRETE: TBCDField
      FieldName = 'PROD_VFRETE'
      Origin = 'PROD_VFRETE'
      Precision = 18
    end
    object QRY_NFCeItensPROD_VSEG: TBCDField
      FieldName = 'PROD_VSEG'
      Origin = 'PROD_VSEG'
      Precision = 18
    end
    object QRY_NFCeItensPROD_VDESC: TBCDField
      FieldName = 'PROD_VDESC'
      Origin = 'PROD_VDESC'
      Precision = 18
    end
    object QRY_NFCeItensPROD_CEST: TStringField
      FieldName = 'PROD_CEST'
      Origin = 'PROD_CEST'
      Size = 10
    end
    object QRY_NFCeItensPROD_INFADPROD: TStringField
      FieldName = 'PROD_INFADPROD'
      Origin = 'PROD_INFADPROD'
      Size = 10
    end
    object QRY_NFCeItensPROD_CBARRA: TStringField
      FieldName = 'PROD_CBARRA'
      Origin = 'PROD_CBARRA'
      Size = 10
    end
    object QRY_NFCeItensPROD_CBARRATRIB: TStringField
      FieldName = 'PROD_CBARRATRIB'
      Origin = 'PROD_CBARRATRIB'
      Size = 10
    end
    object QRY_NFCeItensICMS_CST: TStringField
      FieldName = 'ICMS_CST'
      Origin = 'ICMS_CST'
      Size = 10
    end
    object QRY_NFCeItensICMS_CSOSN: TStringField
      FieldName = 'ICMS_CSOSN'
      Origin = 'ICMS_CSOSN'
      Size = 10
    end
    object QRY_NFCeItensICMS_ORIG: TStringField
      FieldName = 'ICMS_ORIG'
      Origin = 'ICMS_ORIG'
      Size = 1
    end
    object QRY_NFCeItensICMS_MODBC: TStringField
      FieldName = 'ICMS_MODBC'
      Origin = 'ICMS_MODBC'
      Size = 1
    end
    object QRY_NFCeItensICMS_VBC: TBCDField
      FieldName = 'ICMS_VBC'
      Origin = 'ICMS_VBC'
      Precision = 18
    end
    object QRY_NFCeItensICMS_PICMS: TBCDField
      FieldName = 'ICMS_PICMS'
      Origin = 'ICMS_PICMS'
      Precision = 18
    end
    object QRY_NFCeItensICMS_VICMS: TBCDField
      FieldName = 'ICMS_VICMS'
      Origin = 'ICMS_VICMS'
      Precision = 18
    end
    object QRY_NFCeItensICMS_MODBCST: TStringField
      FieldName = 'ICMS_MODBCST'
      Origin = 'ICMS_MODBCST'
      Size = 1
    end
    object QRY_NFCeItensICMS_PMVAST: TBCDField
      FieldName = 'ICMS_PMVAST'
      Origin = 'ICMS_PMVAST'
      Precision = 18
    end
    object QRY_NFCeItensICMS_PREDBCST: TBCDField
      FieldName = 'ICMS_PREDBCST'
      Origin = 'ICMS_PREDBCST'
      Precision = 18
    end
    object QRY_NFCeItensICMS_VBCST: TBCDField
      FieldName = 'ICMS_VBCST'
      Origin = 'ICMS_VBCST'
      Precision = 18
    end
    object QRY_NFCeItensICMS_PICMSST: TBCDField
      FieldName = 'ICMS_PICMSST'
      Origin = 'ICMS_PICMSST'
      Precision = 18
    end
    object QRY_NFCeItensICMS_VICMSST: TBCDField
      FieldName = 'ICMS_VICMSST'
      Origin = 'ICMS_VICMSST'
      Precision = 18
    end
    object QRY_NFCeItensICMS_PREDBC: TBCDField
      FieldName = 'ICMS_PREDBC'
      Origin = 'ICMS_PREDBC'
      Precision = 18
    end
    object QRY_NFCeItensICMS_PCREDSN: TBCDField
      FieldName = 'ICMS_PCREDSN'
      Origin = 'ICMS_PCREDSN'
      Precision = 18
    end
    object QRY_NFCeItensICMS_VCREDICMSSN: TBCDField
      FieldName = 'ICMS_VCREDICMSSN'
      Origin = 'ICMS_VCREDICMSSN'
      Precision = 18
    end
    object QRY_NFCeItensICMS_VBCFCPST: TBCDField
      FieldName = 'ICMS_VBCFCPST'
      Origin = 'ICMS_VBCFCPST'
      Precision = 18
    end
    object QRY_NFCeItensICMS_PFCPST: TBCDField
      FieldName = 'ICMS_PFCPST'
      Origin = 'ICMS_PFCPST'
      Precision = 18
    end
    object QRY_NFCeItensICMS_VFCPST: TBCDField
      FieldName = 'ICMS_VFCPST'
      Origin = 'ICMS_VFCPST'
      Precision = 18
    end
    object QRY_NFCeItensICMS_VBCSTRET: TBCDField
      FieldName = 'ICMS_VBCSTRET'
      Origin = 'ICMS_VBCSTRET'
      Precision = 18
    end
    object QRY_NFCeItensICMS_PST: TBCDField
      FieldName = 'ICMS_PST'
      Origin = 'ICMS_PST'
      Precision = 18
    end
    object QRY_NFCeItensICMS_VICMSSUBSTITUTO: TBCDField
      FieldName = 'ICMS_VICMSSUBSTITUTO'
      Origin = 'ICMS_VICMSSUBSTITUTO'
      Precision = 18
    end
    object QRY_NFCeItensICMS_VICMSSTRET: TBCDField
      FieldName = 'ICMS_VICMSSTRET'
      Origin = 'ICMS_VICMSSTRET'
      Precision = 18
    end
    object QRY_NFCeItensICMS_VBCFCPSTRET: TBCDField
      FieldName = 'ICMS_VBCFCPSTRET'
      Origin = 'ICMS_VBCFCPSTRET'
      Precision = 18
    end
    object QRY_NFCeItensICMS_PFCPSTRET: TBCDField
      FieldName = 'ICMS_PFCPSTRET'
      Origin = 'ICMS_PFCPSTRET'
      Precision = 18
    end
    object QRY_NFCeItensICMS_VFCPSTRET: TBCDField
      FieldName = 'ICMS_VFCPSTRET'
      Origin = 'ICMS_VFCPSTRET'
      Precision = 18
    end
    object QRY_NFCeItensICMS_PREDBCEFET: TBCDField
      FieldName = 'ICMS_PREDBCEFET'
      Origin = 'ICMS_PREDBCEFET'
      Precision = 18
    end
    object QRY_NFCeItensICMS_VBCEFET: TBCDField
      FieldName = 'ICMS_VBCEFET'
      Origin = 'ICMS_VBCEFET'
      Precision = 18
    end
    object QRY_NFCeItensICMS_PICMSEFET: TBCDField
      FieldName = 'ICMS_PICMSEFET'
      Origin = 'ICMS_PICMSEFET'
      Precision = 18
    end
    object QRY_NFCeItensICMS_VICMSEFET: TBCDField
      FieldName = 'ICMS_VICMSEFET'
      Origin = 'ICMS_VICMSEFET'
      Precision = 18
    end
    object QRY_NFCeItensICMS_VICMSSTDESON: TBCDField
      FieldName = 'ICMS_VICMSSTDESON'
      Origin = 'ICMS_VICMSSTDESON'
      Precision = 18
    end
    object QRY_NFCeItensICMS_MOTDESICMSST: TBCDField
      FieldName = 'ICMS_MOTDESICMSST'
      Origin = 'ICMS_MOTDESICMSST'
      Precision = 18
    end
    object QRY_NFCeItensICMS_PFCPDIF: TBCDField
      FieldName = 'ICMS_PFCPDIF'
      Origin = 'ICMS_PFCPDIF'
      Precision = 18
    end
    object QRY_NFCeItensICMS_VFCPDIF: TBCDField
      FieldName = 'ICMS_VFCPDIF'
      Origin = 'ICMS_VFCPDIF'
      Precision = 18
    end
    object QRY_NFCeItensICMS_VFCPEFET: TBCDField
      FieldName = 'ICMS_VFCPEFET'
      Origin = 'ICMS_VFCPEFET'
      Precision = 18
    end
    object QRY_NFCeItensICMSUFDEST_VBCUFDEST: TBCDField
      FieldName = 'ICMSUFDEST_VBCUFDEST'
      Origin = 'ICMSUFDEST_VBCUFDEST'
      Precision = 18
    end
    object QRY_NFCeItensICMSUFDEST_PFCPUFDEST: TBCDField
      FieldName = 'ICMSUFDEST_PFCPUFDEST'
      Origin = 'ICMSUFDEST_PFCPUFDEST'
      Precision = 18
    end
    object QRY_NFCeItensICMSUFDEST_PICMSUFDEST: TBCDField
      FieldName = 'ICMSUFDEST_PICMSUFDEST'
      Origin = 'ICMSUFDEST_PICMSUFDEST'
      Precision = 18
    end
    object QRY_NFCeItensICMSUFDEST_PICMSINTER: TBCDField
      FieldName = 'ICMSUFDEST_PICMSINTER'
      Origin = 'ICMSUFDEST_PICMSINTER'
      Precision = 18
    end
    object QRY_NFCeItensICMSUFDEST_PICMSINTERPART: TBCDField
      FieldName = 'ICMSUFDEST_PICMSINTERPART'
      Origin = 'ICMSUFDEST_PICMSINTERPART'
      Precision = 18
    end
    object QRY_NFCeItensICMSUFDEST_VFCPUFDEST: TBCDField
      FieldName = 'ICMSUFDEST_VFCPUFDEST'
      Origin = 'ICMSUFDEST_VFCPUFDEST'
      Precision = 18
    end
    object QRY_NFCeItensICMSUFDEST_VICMSUFDEST: TBCDField
      FieldName = 'ICMSUFDEST_VICMSUFDEST'
      Origin = 'ICMSUFDEST_VICMSUFDEST'
      Precision = 18
    end
    object QRY_NFCeItensICMSUFDEST_VICMSUFREMET: TBCDField
      FieldName = 'ICMSUFDEST_VICMSUFREMET'
      Origin = 'ICMSUFDEST_VICMSUFREMET'
      Precision = 18
    end
    object QRY_NFCeItensPIS_CST: TIntegerField
      FieldName = 'PIS_CST'
      Origin = 'PIS_CST'
    end
    object QRY_NFCeItensPIS_VBC: TBCDField
      FieldName = 'PIS_VBC'
      Origin = 'PIS_VBC'
      Precision = 18
    end
    object QRY_NFCeItensPIS_PPIS: TBCDField
      FieldName = 'PIS_PPIS'
      Origin = 'PIS_PPIS'
      Precision = 18
    end
    object QRY_NFCeItensPIS_VPIS: TBCDField
      FieldName = 'PIS_VPIS'
      Origin = 'PIS_VPIS'
      Precision = 18
    end
    object QRY_NFCeItensPIS_QBCPROD: TBCDField
      FieldName = 'PIS_QBCPROD'
      Origin = 'PIS_QBCPROD'
      Precision = 18
    end
    object QRY_NFCeItensPIS_VALIQPROD: TBCDField
      FieldName = 'PIS_VALIQPROD'
      Origin = 'PIS_VALIQPROD'
      Precision = 18
    end
    object QRY_NFCeItensPISST_VBC: TBCDField
      FieldName = 'PISST_VBC'
      Origin = 'PISST_VBC'
      Precision = 18
    end
    object QRY_NFCeItensPISST_PPIS: TBCDField
      FieldName = 'PISST_PPIS'
      Origin = 'PISST_PPIS'
      Precision = 18
    end
    object QRY_NFCeItensPISST_QBCPROD: TBCDField
      FieldName = 'PISST_QBCPROD'
      Origin = 'PISST_QBCPROD'
      Precision = 18
    end
    object QRY_NFCeItensPISST_VALIQPROD: TBCDField
      FieldName = 'PISST_VALIQPROD'
      Origin = 'PISST_VALIQPROD'
      Precision = 18
    end
    object QRY_NFCeItensPISST_VPIS: TBCDField
      FieldName = 'PISST_VPIS'
      Origin = 'PISST_VPIS'
      Precision = 18
    end
    object QRY_NFCeItensPISST_INDSOMAPISST: TStringField
      FieldName = 'PISST_INDSOMAPISST'
      Origin = 'PISST_INDSOMAPISST'
      Size = 1
    end
    object QRY_NFCeItensCOFINS_CST: TIntegerField
      FieldName = 'COFINS_CST'
      Origin = 'COFINS_CST'
    end
    object QRY_NFCeItensCOFINS_VBC: TBCDField
      FieldName = 'COFINS_VBC'
      Origin = 'COFINS_VBC'
      Precision = 18
    end
    object QRY_NFCeItensCOFINS_PCOFINS: TBCDField
      FieldName = 'COFINS_PCOFINS'
      Origin = 'COFINS_PCOFINS'
      Precision = 18
    end
    object QRY_NFCeItensCOFINS_VCOFINS: TBCDField
      FieldName = 'COFINS_VCOFINS'
      Origin = 'COFINS_VCOFINS'
      Precision = 18
    end
    object QRY_NFCeItensCOFINS_QBCPROD: TBCDField
      FieldName = 'COFINS_QBCPROD'
      Origin = 'COFINS_QBCPROD'
      Precision = 18
    end
    object QRY_NFCeItensCOFINS_VALIQPROD: TBCDField
      FieldName = 'COFINS_VALIQPROD'
      Origin = 'COFINS_VALIQPROD'
      Precision = 18
    end
    object QRY_NFCeItensCOFINSST_VBC: TBCDField
      FieldName = 'COFINSST_VBC'
      Origin = 'COFINSST_VBC'
      Precision = 18
    end
    object QRY_NFCeItensCOFINSST_PCOFINS: TBCDField
      FieldName = 'COFINSST_PCOFINS'
      Origin = 'COFINSST_PCOFINS'
      Precision = 18
    end
    object QRY_NFCeItensCOFINSST_QBCPROD: TBCDField
      FieldName = 'COFINSST_QBCPROD'
      Origin = 'COFINSST_QBCPROD'
      Precision = 18
    end
    object QRY_NFCeItensCOFINSST_VALIQPROD: TBCDField
      FieldName = 'COFINSST_VALIQPROD'
      Origin = 'COFINSST_VALIQPROD'
      Precision = 18
    end
    object QRY_NFCeItensCOFINSST_VCOFINS: TBCDField
      FieldName = 'COFINSST_VCOFINS'
      Origin = 'COFINSST_VCOFINS'
      Precision = 18
    end
    object QRY_NFCeItensCOFINSST_INDSOMACOFINSST: TStringField
      FieldName = 'COFINSST_INDSOMACOFINSST'
      Origin = 'COFINSST_INDSOMACOFINSST'
      Size = 1
    end
  end
  object QRY_Aux: TFDQuery
    Connection = FDConn
    Left = 512
    Top = 168
  end
  object QRY_CONFIG_WEBSERVICE: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from CONFIG_WEBSERVICE where web_codigo = 1')
    Left = 696
    Top = 24
    object QRY_CONFIG_WEBSERVICEWEB_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'WEB_CODIGO'
      Origin = 'WEB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_CONFIG_WEBSERVICEWEB_UF: TStringField
      FieldName = 'WEB_UF'
      Origin = 'WEB_UF'
      Size = 50
    end
    object QRY_CONFIG_WEBSERVICEWEB_AMBIENTE: TIntegerField
      FieldName = 'WEB_AMBIENTE'
      Origin = 'WEB_AMBIENTE'
    end
    object QRY_CONFIG_WEBSERVICEWEB_VISUALIZAR: TBooleanField
      FieldName = 'WEB_VISUALIZAR'
      Origin = 'WEB_VISUALIZAR'
    end
    object QRY_CONFIG_WEBSERVICEWEB_SALVARSOAP: TBooleanField
      FieldName = 'WEB_SALVARSOAP'
      Origin = 'WEB_SALVARSOAP'
    end
    object QRY_CONFIG_WEBSERVICEWEB_AJUSTARAUT: TBooleanField
      FieldName = 'WEB_AJUSTARAUT'
      Origin = 'WEB_AJUSTARAUT'
    end
    object QRY_CONFIG_WEBSERVICEWEB_AGUARDAR: TStringField
      FieldName = 'WEB_AGUARDAR'
      Origin = 'WEB_AGUARDAR'
      Size = 50
    end
    object QRY_CONFIG_WEBSERVICEWEB_TENTATIVAS: TStringField
      FieldName = 'WEB_TENTATIVAS'
      Origin = 'WEB_TENTATIVAS'
      Size = 50
    end
    object QRY_CONFIG_WEBSERVICEWEB_INTERVALO: TStringField
      FieldName = 'WEB_INTERVALO'
      Origin = 'WEB_INTERVALO'
      Size = 50
    end
    object QRY_CONFIG_WEBSERVICEWEB_TIMEOUT: TIntegerField
      FieldName = 'WEB_TIMEOUT'
      Origin = 'WEB_TIMEOUT'
    end
    object QRY_CONFIG_WEBSERVICEWEB_SSLTYPE: TIntegerField
      FieldName = 'WEB_SSLTYPE'
      Origin = 'WEB_SSLTYPE'
    end
  end
  object QRY_EventoFiscal: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from FISCALEVENTOS where idevento = :idevento')
    Left = 408
    Top = 296
    ParamData = <
      item
        Name = 'IDEVENTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_EventoFiscalIDEVENTO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDEVENTO'
      Origin = 'IDEVENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_EventoFiscalNUMFISCAL: TIntegerField
      FieldName = 'NUMFISCAL'
      Origin = 'NUMFISCAL'
    end
    object QRY_EventoFiscalMODELOFISCAL: TIntegerField
      FieldName = 'MODELOFISCAL'
      Origin = 'MODELOFISCAL'
    end
    object QRY_EventoFiscalNUMEROEVENTO: TIntegerField
      FieldName = 'NUMEROEVENTO'
      Origin = 'NUMEROEVENTO'
    end
    object QRY_EventoFiscalNOMEEVENTO: TStringField
      FieldName = 'NOMEEVENTO'
      Origin = 'NOMEEVENTO'
      Size = 200
    end
    object QRY_EventoFiscalDTAEVENTO: TDateField
      FieldName = 'DTAEVENTO'
      Origin = 'DTAEVENTO'
    end
    object QRY_EventoFiscalHRAEVENTO: TTimeField
      FieldName = 'HRAEVENTO'
      Origin = 'HRAEVENTO'
    end
    object QRY_EventoFiscalIDFILIAL: TIntegerField
      FieldName = 'IDFILIAL'
      Origin = 'IDFILIAL'
    end
    object QRY_EventoFiscalCHAVEDFE: TStringField
      FieldName = 'CHAVEDFE'
      Origin = 'CHAVEDFE'
      Size = 200
    end
    object QRY_EventoFiscalIDSTATUS: TIntegerField
      FieldName = 'IDSTATUS'
      Origin = 'IDSTATUS'
    end
    object QRY_EventoFiscalMSGSTATUS: TStringField
      FieldName = 'MSGSTATUS'
      Origin = 'MSGSTATUS'
      Size = 200
    end
  end
  object QRY_ParametrosPDVBalanca: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from PARAMETROSPDV_BALANCA where nomepdv = :nomepdv')
    Left = 128
    Top = 440
    ParamData = <
      item
        Name = 'NOMEPDV'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = Null
      end>
    object QRY_ParametrosPDVBalancaIDPARAMETROS: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDPARAMETROS'
      Origin = 'IDPARAMETROS'
    end
    object QRY_ParametrosPDVBalancaNOMEBALANCA: TStringField
      FieldName = 'NOMEBALANCA'
      Origin = 'NOMEBALANCA'
      Size = 50
    end
    object QRY_ParametrosPDVBalancaPORTASERIAL: TStringField
      FieldName = 'PORTASERIAL'
      Origin = 'PORTASERIAL'
      Size = 50
    end
    object QRY_ParametrosPDVBalancaVELOCIDADE: TIntegerField
      FieldName = 'VELOCIDADE'
      Origin = 'VELOCIDADE'
    end
    object QRY_ParametrosPDVBalancaNOMEPDV: TStringField
      FieldName = 'NOMEPDV'
      Origin = 'NOMEPDV'
      Size = 50
    end
    object QRY_ParametrosPDVBalancaMODULO: TStringField
      FieldName = 'MODULO'
      Origin = 'MODULO'
      Size = 50
    end
  end
  object QRY_FormasPGTOVenda: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select fi.*, cx.vlrdocumento from finanformaspgto fi'
      'inner join financaixa cx'
      'on (fi.idpgto = cx.idformapagamento)'
      'where cx.idvenda   = :numvenda')
    Left = 400
    Top = 376
    ParamData = <
      item
        Name = 'NUMVENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_FormasPGTOVendaIDPGTO: TIntegerField
      FieldName = 'IDPGTO'
      Origin = 'IDPGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_FormasPGTOVendaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object QRY_FormasPGTOVendaMOEDA: TStringField
      FieldName = 'MOEDA'
      Origin = 'MOEDA'
      Size = 50
    end
    object QRY_FormasPGTOVendaGERARECEBER: TStringField
      FieldName = 'GERARECEBER'
      Origin = 'GERARECEBER'
      Size = 10
    end
    object QRY_FormasPGTOVendaIDCLIENTEPADRAO: TIntegerField
      FieldName = 'IDCLIENTEPADRAO'
      Origin = 'IDCLIENTEPADRAO'
    end
    object QRY_FormasPGTOVendaTIPOPGTO: TStringField
      FieldName = 'TIPOPGTO'
      Origin = 'TIPOPGTO'
      Size = 50
    end
    object QRY_FormasPGTOVendaVLRDOCUMENTO: TBCDField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      FieldName = 'VLRDOCUMENTO'
      Origin = 'VLRDOCUMENTO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,0.00'
      Precision = 18
    end
  end
  object QRY_MovimentoEstoque: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      
        'select * from movimentoestoque where idproduto = :idproduto and ' +
        'idprodutoitens = :idprodutoitens and idfilial = :idfilial')
    Left = 552
    Top = 328
    ParamData = <
      item
        Name = 'IDPRODUTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDPRODUTOITENS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'IDFILIAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRY_MovimentoEstoqueIDESTOQUE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDESTOQUE'
      Origin = 'IDESTOQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_MovimentoEstoqueIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = 'IDPRODUTO'
    end
    object QRY_MovimentoEstoqueIDFILIAL: TIntegerField
      FieldName = 'IDFILIAL'
      Origin = 'IDFILIAL'
    end
    object QRY_MovimentoEstoquePRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 200
    end
    object QRY_MovimentoEstoqueQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
    end
    object QRY_MovimentoEstoqueDTAMOVIMENTO: TDateField
      FieldName = 'DTAMOVIMENTO'
      Origin = 'DTAMOVIMENTO'
    end
    object QRY_MovimentoEstoqueHRAMOVIMENTO: TTimeField
      FieldName = 'HRAMOVIMENTO'
      Origin = 'HRAMOVIMENTO'
    end
    object QRY_MovimentoEstoqueIDMOVIMENTO: TIntegerField
      FieldName = 'IDMOVIMENTO'
      Origin = 'IDMOVIMENTO'
    end
    object QRY_MovimentoEstoqueIDPRODUTOITENS: TIntegerField
      FieldName = 'IDPRODUTOITENS'
      Origin = 'IDPRODUTOITENS'
    end
  end
  object QRY_Movimentos: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from MOVIMENTOTRIBUTACAO order by idmovtributacao')
    Left = 560
    Top = 392
    object QRY_MovimentosIDMOVTRIBUTACAO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDMOVTRIBUTACAO'
      Origin = 'IDMOVTRIBUTACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_MovimentosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
    end
    object QRY_MovimentosENTRADASAIDA: TStringField
      FieldName = 'ENTRADASAIDA'
      Origin = 'ENTRADASAIDA'
      Size = 50
    end
    object QRY_MovimentosMOVESTOQUE: TBooleanField
      FieldName = 'MOVESTOQUE'
      Origin = 'MOVESTOQUE'
    end
  end
  object frxPDFExport: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 1400
    Top = 32
  end
  object frxDBDataset_FormasPGTOVenda: TfrxDBDataset
    UserName = 'frxDBDataset_FormasPGTOVenda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IDPGTO=IDPGTO'
      'DESCRICAO=DESCRICAO'
      'MOEDA=MOEDA'
      'GERARECEBER=GERARECEBER'
      'IDCLIENTEPADRAO=IDCLIENTEPADRAO'
      'TIPOPGTO=TIPOPGTO'
      'VLRDOCUMENTO=VLRDOCUMENTO')
    DataSet = QRY_FormasPGTOVenda
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1256
    Top = 280
  end
  object frxDBDataset_ClientesVenda: TfrxDBDataset
    UserName = 'frxDBDataset_ClientesVenda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IDPESSOAS=IDPESSOAS'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'FANTASIA=FANTASIA'
      'ENDERECO=ENDERECO'
      'NUMERO=NUMERO'
      'BAIRRO=BAIRRO'
      'CEP=CEP'
      'COMPLEMENTO=COMPLEMENTO'
      'IDCIDADE=IDCIDADE'
      'TIPOFJ=TIPOFJ'
      'IDTIPOPESSOA=IDTIPOPESSOA'
      'CNPJ=CNPJ'
      'IE=IE'
      'CONTRIBUINTE=CONTRIBUINTE'
      'INSMUNICIPAL=INSMUNICIPAL'
      'INSSUFRAMA=INSSUFRAMA'
      'EMAIL=EMAIL'
      'IDCONTATO=IDCONTATO'
      'OBSERVACAO=OBSERVACAO'
      'IDFOTOS=IDFOTOS'
      'ATIVO=ATIVO'
      'IDREFERENCIAS=IDREFERENCIAS'
      'SPC=SPC'
      'SERASA=SERASA'
      'USUARIOALTERACAO=USUARIOALTERACAO'
      'USUARIOCADASTRO=USUARIOCADASTRO'
      'DATADECADASTRO=DATADECADASTRO'
      'ULTIMAALTERACAO=ULTIMAALTERACAO'
      'SPCDATARETIRADA=SPCDATARETIRADA'
      'SPCDATAREGISTRO=SPCDATAREGISTRO'
      'DATANASCIMENTO=DATANASCIMENTO'
      'NOMECIDADE=NOMECIDADE'
      'UF=UF'
      'IDGRUPOCLIENTES=IDGRUPOCLIENTES'
      'REFPESSOALNOME=REFPESSOALNOME'
      'REFPESSOALTELEFONE=REFPESSOALTELEFONE'
      'REFPESSOALCIDADE=REFPESSOALCIDADE'
      'REFFINANCEIRANOME=REFFINANCEIRANOME'
      'REFFINANCEIRATELEFONE=REFFINANCEIRATELEFONE'
      'REFFINANCEIRACIDADE=REFFINANCEIRACIDADE'
      'REFCOMERCIALNOME=REFCOMERCIALNOME'
      'REFCOMERCIALTELEFONE=REFCOMERCIALTELEFONE'
      'REFCOMERCIALCIDADE=REFCOMERCIALCIDADE'
      'FORNECEDORTELEFONE=FORNECEDORTELEFONE'
      'FORNECEDORCONTATO=FORNECEDORCONTATO'
      'FORNECEDORCELULAR=FORNECEDORCELULAR'
      'FORNECEDOREMAIL=FORNECEDOREMAIL'
      'IDCIDADE_1=IDCIDADE_1'
      'MUNICIPIO=MUNICIPIO'
      'UF_1=UF_1'
      'CODMUNICIPIOIBGE=CODMUNICIPIOIBGE'
      'CODESTADO=CODESTADO'
      'PESSOALTELEFONE=PESSOALTELEFONE'
      'PESSOALCELULAR=PESSOALCELULAR')
    DataSet = QRY_ConsultarClientes
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1256
    Top = 344
  end
  object QRY_ConsultarVendedorVenda: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select'
      ' ps.*,'
      ' ci.*'
      'from pessoas ps'
      'inner join cidades ci'
      'on (ps.idcidade = ci.idcidade)'
      'where idpessoas = :idvendedor')
    Left = 536
    Top = 240
    ParamData = <
      item
        Name = 'IDVENDEDOR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_ConsultarVendedorVendaIDPESSOAS: TIntegerField
      FieldName = 'IDPESSOAS'
      Origin = 'IDPESSOAS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_ConsultarVendedorVendaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 100
    end
    object QRY_ConsultarVendedorVendaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 100
    end
    object QRY_ConsultarVendedorVendaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object QRY_ConsultarVendedorVendaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 50
    end
    object QRY_ConsultarVendedorVendaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 100
    end
    object QRY_ConsultarVendedorVendaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 50
    end
    object QRY_ConsultarVendedorVendaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 200
    end
    object QRY_ConsultarVendedorVendaIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Origin = 'IDCIDADE'
    end
    object QRY_ConsultarVendedorVendaTIPOFJ: TStringField
      FieldName = 'TIPOFJ'
      Origin = 'TIPOFJ'
      Size = 50
    end
    object QRY_ConsultarVendedorVendaIDTIPOPESSOA: TIntegerField
      FieldName = 'IDTIPOPESSOA'
      Origin = 'IDTIPOPESSOA'
    end
    object QRY_ConsultarVendedorVendaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 50
    end
    object QRY_ConsultarVendedorVendaIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 50
    end
    object QRY_ConsultarVendedorVendaCONTRIBUINTE: TIntegerField
      FieldName = 'CONTRIBUINTE'
      Origin = 'CONTRIBUINTE'
    end
    object QRY_ConsultarVendedorVendaINSMUNICIPAL: TStringField
      FieldName = 'INSMUNICIPAL'
      Origin = 'INSMUNICIPAL'
      Size = 50
    end
    object QRY_ConsultarVendedorVendaINSSUFRAMA: TStringField
      FieldName = 'INSSUFRAMA'
      Origin = 'INSSUFRAMA'
      Size = 50
    end
    object QRY_ConsultarVendedorVendaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object QRY_ConsultarVendedorVendaIDCONTATO: TIntegerField
      FieldName = 'IDCONTATO'
      Origin = 'IDCONTATO'
    end
    object QRY_ConsultarVendedorVendaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 400
    end
    object QRY_ConsultarVendedorVendaIDFOTOS: TIntegerField
      FieldName = 'IDFOTOS'
      Origin = 'IDFOTOS'
    end
    object QRY_ConsultarVendedorVendaATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 50
    end
    object QRY_ConsultarVendedorVendaIDREFERENCIAS: TIntegerField
      FieldName = 'IDREFERENCIAS'
      Origin = 'IDREFERENCIAS'
    end
    object QRY_ConsultarVendedorVendaSPC: TStringField
      FieldName = 'SPC'
      Origin = 'SPC'
      Size = 50
    end
    object QRY_ConsultarVendedorVendaSERASA: TStringField
      FieldName = 'SERASA'
      Origin = 'SERASA'
      Size = 50
    end
    object QRY_ConsultarVendedorVendaUSUARIOALTERACAO: TIntegerField
      FieldName = 'USUARIOALTERACAO'
      Origin = 'USUARIOALTERACAO'
    end
    object QRY_ConsultarVendedorVendaUSUARIOCADASTRO: TIntegerField
      FieldName = 'USUARIOCADASTRO'
      Origin = 'USUARIOCADASTRO'
    end
    object QRY_ConsultarVendedorVendaDATADECADASTRO: TDateField
      FieldName = 'DATADECADASTRO'
      Origin = 'DATADECADASTRO'
    end
    object QRY_ConsultarVendedorVendaULTIMAALTERACAO: TDateField
      FieldName = 'ULTIMAALTERACAO'
      Origin = 'ULTIMAALTERACAO'
    end
    object QRY_ConsultarVendedorVendaSPCDATARETIRADA: TDateField
      FieldName = 'SPCDATARETIRADA'
      Origin = 'SPCDATARETIRADA'
    end
    object QRY_ConsultarVendedorVendaSPCDATAREGISTRO: TDateField
      FieldName = 'SPCDATAREGISTRO'
      Origin = 'SPCDATAREGISTRO'
    end
    object QRY_ConsultarVendedorVendaDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
      Origin = 'DATANASCIMENTO'
    end
    object QRY_ConsultarVendedorVendaNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      Origin = 'NOMECIDADE'
      Size = 200
    end
    object QRY_ConsultarVendedorVendaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
    end
    object QRY_ConsultarVendedorVendaIDGRUPOCLIENTES: TIntegerField
      FieldName = 'IDGRUPOCLIENTES'
      Origin = 'IDGRUPOCLIENTES'
    end
    object QRY_ConsultarVendedorVendaREFPESSOALNOME: TStringField
      FieldName = 'REFPESSOALNOME'
      Origin = 'REFPESSOALNOME'
      Size = 100
    end
    object QRY_ConsultarVendedorVendaREFPESSOALTELEFONE: TStringField
      FieldName = 'REFPESSOALTELEFONE'
      Origin = 'REFPESSOALTELEFONE'
      Size = 100
    end
    object QRY_ConsultarVendedorVendaREFPESSOALCIDADE: TStringField
      FieldName = 'REFPESSOALCIDADE'
      Origin = 'REFPESSOALCIDADE'
      Size = 100
    end
    object QRY_ConsultarVendedorVendaREFFINANCEIRANOME: TStringField
      FieldName = 'REFFINANCEIRANOME'
      Origin = 'REFFINANCEIRANOME'
      Size = 100
    end
    object QRY_ConsultarVendedorVendaREFFINANCEIRATELEFONE: TStringField
      FieldName = 'REFFINANCEIRATELEFONE'
      Origin = 'REFFINANCEIRATELEFONE'
      Size = 100
    end
    object QRY_ConsultarVendedorVendaREFFINANCEIRACIDADE: TStringField
      FieldName = 'REFFINANCEIRACIDADE'
      Origin = 'REFFINANCEIRACIDADE'
      Size = 100
    end
    object QRY_ConsultarVendedorVendaREFCOMERCIALNOME: TStringField
      FieldName = 'REFCOMERCIALNOME'
      Origin = 'REFCOMERCIALNOME'
      Size = 100
    end
    object QRY_ConsultarVendedorVendaREFCOMERCIALTELEFONE: TStringField
      FieldName = 'REFCOMERCIALTELEFONE'
      Origin = 'REFCOMERCIALTELEFONE'
      Size = 100
    end
    object QRY_ConsultarVendedorVendaREFCOMERCIALCIDADE: TStringField
      FieldName = 'REFCOMERCIALCIDADE'
      Origin = 'REFCOMERCIALCIDADE'
      Size = 100
    end
    object QRY_ConsultarVendedorVendaFORNECEDORTELEFONE: TStringField
      FieldName = 'FORNECEDORTELEFONE'
      Origin = 'FORNECEDORTELEFONE'
      Size = 100
    end
    object QRY_ConsultarVendedorVendaFORNECEDORCONTATO: TStringField
      FieldName = 'FORNECEDORCONTATO'
      Origin = 'FORNECEDORCONTATO'
      Size = 100
    end
    object QRY_ConsultarVendedorVendaFORNECEDORCELULAR: TStringField
      FieldName = 'FORNECEDORCELULAR'
      Origin = 'FORNECEDORCELULAR'
      Size = 100
    end
    object QRY_ConsultarVendedorVendaFORNECEDOREMAIL: TStringField
      FieldName = 'FORNECEDOREMAIL'
      Origin = 'FORNECEDOREMAIL'
      Size = 100
    end
    object QRY_ConsultarVendedorVendaPESSOALTELEFONE: TStringField
      FieldName = 'PESSOALTELEFONE'
      Origin = 'PESSOALTELEFONE'
      Size = 100
    end
    object QRY_ConsultarVendedorVendaPESSOALCELULAR: TStringField
      FieldName = 'PESSOALCELULAR'
      Origin = 'PESSOALCELULAR'
      Size = 100
    end
    object QRY_ConsultarVendedorVendaIDCIDADE_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDCIDADE_1'
      Origin = 'IDCIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRY_ConsultarVendedorVendaMUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object QRY_ConsultarVendedorVendaUF_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF_1'
      Origin = 'UF'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QRY_ConsultarVendedorVendaCODMUNICIPIOIBGE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODMUNICIPIOIBGE'
      Origin = 'CODMUNICIPIOIBGE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QRY_ConsultarVendedorVendaCODESTADO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODESTADO'
      Origin = 'CODESTADO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object frxDBDataset_VendedorVenda: TfrxDBDataset
    UserName = 'frxDBDataset_VendedorVenda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IDPESSOAS=IDPESSOAS'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'FANTASIA=FANTASIA'
      'ENDERECO=ENDERECO'
      'NUMERO=NUMERO'
      'BAIRRO=BAIRRO'
      'CEP=CEP'
      'COMPLEMENTO=COMPLEMENTO'
      'IDCIDADE=IDCIDADE'
      'TIPOFJ=TIPOFJ'
      'IDTIPOPESSOA=IDTIPOPESSOA'
      'CNPJ=CNPJ'
      'IE=IE'
      'CONTRIBUINTE=CONTRIBUINTE'
      'INSMUNICIPAL=INSMUNICIPAL'
      'INSSUFRAMA=INSSUFRAMA'
      'EMAIL=EMAIL'
      'IDCONTATO=IDCONTATO'
      'OBSERVACAO=OBSERVACAO'
      'IDFOTOS=IDFOTOS'
      'ATIVO=ATIVO'
      'IDREFERENCIAS=IDREFERENCIAS'
      'SPC=SPC'
      'SERASA=SERASA'
      'USUARIOALTERACAO=USUARIOALTERACAO'
      'USUARIOCADASTRO=USUARIOCADASTRO'
      'DATADECADASTRO=DATADECADASTRO'
      'ULTIMAALTERACAO=ULTIMAALTERACAO'
      'SPCDATARETIRADA=SPCDATARETIRADA'
      'SPCDATAREGISTRO=SPCDATAREGISTRO'
      'DATANASCIMENTO=DATANASCIMENTO'
      'NOMECIDADE=NOMECIDADE'
      'UF=UF'
      'IDGRUPOCLIENTES=IDGRUPOCLIENTES'
      'REFPESSOALNOME=REFPESSOALNOME'
      'REFPESSOALTELEFONE=REFPESSOALTELEFONE'
      'REFPESSOALCIDADE=REFPESSOALCIDADE'
      'REFFINANCEIRANOME=REFFINANCEIRANOME'
      'REFFINANCEIRATELEFONE=REFFINANCEIRATELEFONE'
      'REFFINANCEIRACIDADE=REFFINANCEIRACIDADE'
      'REFCOMERCIALNOME=REFCOMERCIALNOME'
      'REFCOMERCIALTELEFONE=REFCOMERCIALTELEFONE'
      'REFCOMERCIALCIDADE=REFCOMERCIALCIDADE'
      'FORNECEDORTELEFONE=FORNECEDORTELEFONE'
      'FORNECEDORCONTATO=FORNECEDORCONTATO'
      'FORNECEDORCELULAR=FORNECEDORCELULAR'
      'FORNECEDOREMAIL=FORNECEDOREMAIL'
      'PESSOALTELEFONE=PESSOALTELEFONE'
      'PESSOALCELULAR=PESSOALCELULAR'
      'IDCIDADE_1=IDCIDADE_1'
      'MUNICIPIO=MUNICIPIO'
      'UF_1=UF_1'
      'CODMUNICIPIOIBGE=CODMUNICIPIOIBGE'
      'CODESTADO=CODESTADO')
    DataSet = QRY_ConsultarVendedorVenda
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1256
    Top = 408
  end
end
