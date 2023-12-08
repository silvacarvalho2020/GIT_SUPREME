inherited ServiceCadastro: TServiceCadastro
  Height = 855
  Width = 1455
  inherited FDConn: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=C:\SUPREME\trunk\Dados\BANCODADOS_30.FDB'
      'Protocol=TCPIP'
      'CharacterSet=win1252'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    Left = 64
    Top = 40
  end
  inherited FBDriverLink: TFDPhysFBDriverLink
    Left = 944
    Top = 80
  end
  inherited WaitCursor: TFDGUIxWaitCursor
    Left = 944
    Top = 16
  end
  inherited QRY_Usuarios: TFDQuery
    Left = 56
    Top = 367
  end
  object QRY_Produtos: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select'
      ' ep.*,'
      ' un.sigla,'
      ' epi.vlrvendavista'
      'from estprodutos ep'
      'left join estunidades un'
      'on (ep.idunidade = un.idunidade)'
      'inner join estprodutositens epi'
      'on (ep.idproduto = epi.idproduto)'
      'where ep.idproduto = :idproduto'
      'order by ep.idproduto')
    Left = 185
    Top = 40
    ParamData = <
      item
        Name = 'IDPRODUTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_ProdutosIDPRODUTO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDPRODUTO'
      Origin = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_ProdutosIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
    end
    object QRY_ProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 200
    end
    object QRY_ProdutosIDSUBGRUPO: TIntegerField
      FieldName = 'IDSUBGRUPO'
      Origin = 'IDSUBGRUPO'
    end
    object QRY_ProdutosIDMARCA: TIntegerField
      FieldName = 'IDMARCA'
      Origin = 'IDMARCA'
      Required = True
    end
    object QRY_ProdutosIDFABRICANTE: TIntegerField
      FieldName = 'IDFABRICANTE'
      Origin = 'IDFABRICANTE'
    end
    object QRY_ProdutosIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
      Origin = 'IDFORNECEDOR'
    end
    object QRY_ProdutosIDUNIDADE: TIntegerField
      FieldName = 'IDUNIDADE'
      Origin = 'IDUNIDADE'
      Required = True
    end
    object QRY_ProdutosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 50
    end
    object QRY_ProdutosCODBARRAS: TStringField
      FieldName = 'CODBARRAS'
      Origin = 'CODBARRAS'
      Size = 50
    end
    object QRY_ProdutosPERMITEDESCONTO: TStringField
      FieldName = 'PERMITEDESCONTO'
      Origin = 'PERMITEDESCONTO'
      Size = 1
    end
    object QRY_ProdutosDESCMAXIMO: TBCDField
      FieldName = 'DESCMAXIMO'
      Origin = 'DESCMAXIMO'
      Precision = 18
    end
    object QRY_ProdutosPAGARCOMISSAO: TStringField
      FieldName = 'PAGARCOMISSAO'
      Origin = 'PAGARCOMISSAO'
      Size = 1
    end
    object QRY_ProdutosCOMISSAOAVISTA: TBCDField
      FieldName = 'COMISSAOAVISTA'
      Origin = 'COMISSAOAVISTA'
      Precision = 18
    end
    object QRY_ProdutosNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Required = True
    end
    object QRY_ProdutosDATAHORACADASTRO: TSQLTimeStampField
      FieldName = 'DATAHORACADASTRO'
      Origin = 'DATAHORACADASTRO'
    end
    object QRY_ProdutosDATAHORAALTERACAO: TSQLTimeStampField
      FieldName = 'DATAHORAALTERACAO'
      Origin = 'DATAHORAALTERACAO'
    end
    object QRY_ProdutosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 50
    end
    object QRY_ProdutosORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
    end
    object QRY_ProdutosDESCCOMPRA: TBCDField
      FieldName = 'DESCCOMPRA'
      Origin = 'DESCCOMPRA'
      Precision = 18
    end
    object QRY_ProdutosLOCALIZACAO: TIntegerField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
    end
    object QRY_ProdutosLOCALIZACAOIMPRESSAO: TIntegerField
      FieldName = 'LOCALIZACAOIMPRESSAO'
      Origin = 'LOCALIZACAOIMPRESSAO'
    end
    object QRY_ProdutosINFADICIONAIS: TStringField
      FieldName = 'INFADICIONAIS'
      Origin = 'INFADICIONAIS'
      Size = 255
    end
    object QRY_ProdutosAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 255
    end
    object QRY_ProdutosPOSSUIDERIVADOS: TStringField
      FieldName = 'POSSUIDERIVADOS'
      Origin = 'POSSUIDERIVADOS'
      Size = 1
    end
    object QRY_ProdutosCSTPISCOFINSENTRADA: TIntegerField
      FieldName = 'CSTPISCOFINSENTRADA'
      Origin = 'CSTPISCOFINSENTRADA'
    end
    object QRY_ProdutosCSTPISCOFINSSAIDA: TIntegerField
      FieldName = 'CSTPISCOFINSSAIDA'
      Origin = 'CSTPISCOFINSSAIDA'
    end
    object QRY_ProdutosCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
    end
    object QRY_ProdutosIDUSUARIOCADASTRO: TIntegerField
      FieldName = 'IDUSUARIOCADASTRO'
      Origin = 'IDUSUARIOCADASTRO'
    end
    object QRY_ProdutosIDUSUARIOALTERACAO: TIntegerField
      FieldName = 'IDUSUARIOALTERACAO'
      Origin = 'IDUSUARIOALTERACAO'
    end
    object QRY_ProdutosIDSETOR: TIntegerField
      FieldName = 'IDSETOR'
      Origin = 'IDSETOR'
    end
    object QRY_ProdutosCODBARRASCXA: TStringField
      FieldName = 'CODBARRASCXA'
      Origin = 'CODBARRASCXA'
      Size = 15
    end
    object QRY_ProdutosFOTO2: TStringField
      FieldName = 'FOTO2'
      Origin = 'FOTO2'
      Size = 255
    end
    object QRY_ProdutosFOTO3: TStringField
      FieldName = 'FOTO3'
      Origin = 'FOTO3'
      Size = 255
    end
    object QRY_ProdutosFOTO1: TStringField
      FieldName = 'FOTO1'
      Origin = 'FOTO1'
      Size = 255
    end
    object QRY_ProdutosREFERENCIA2: TStringField
      FieldName = 'REFERENCIA2'
      Origin = 'REFERENCIA2'
    end
    object QRY_ProdutosREFERENCIA3: TStringField
      FieldName = 'REFERENCIA3'
      Origin = 'REFERENCIA3'
    end
    object QRY_ProdutosIDANP: TIntegerField
      FieldName = 'IDANP'
      Origin = 'IDANP'
    end
    object QRY_ProdutosCOMISSAOAPRAZO: TBCDField
      FieldName = 'COMISSAOAPRAZO'
      Origin = 'COMISSAOAPRAZO'
      Precision = 18
    end
    object QRY_ProdutosPESOUNI: TBCDField
      FieldName = 'PESOUNI'
      Origin = 'PESOUNI'
      Precision = 18
    end
    object QRY_ProdutosIDGRUPO: TIntegerField
      FieldName = 'IDGRUPO'
      Origin = 'IDGRUPO'
      Required = True
    end
    object QRY_ProdutosPRODUTOBALANCA: TStringField
      FieldName = 'PRODUTOBALANCA'
      Origin = 'PRODUTOBALANCA'
      Size = 50
    end
    object QRY_ProdutosIDORIGEMMERCADORIA: TIntegerField
      FieldName = 'IDORIGEMMERCADORIA'
      Origin = 'IDORIGEMMERCADORIA'
    end
    object QRY_ProdutosIDEMBALAGEM: TIntegerField
      FieldName = 'IDEMBALAGEM'
      Origin = 'IDEMBALAGEM'
    end
    object QRY_ProdutosDESCRICAONCM: TStringField
      FieldName = 'DESCRICAONCM'
      Origin = 'DESCRICAONCM'
      Size = 200
    end
    object QRY_ProdutosSIGLA: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object QRY_ProdutosVLRVENDAVISTA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLRVENDAVISTA'
      Origin = 'VLRVENDAVISTA'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object QRY_ProdutosVENDEFRACIONADO: TStringField
      FieldName = 'VENDEFRACIONADO'
      Origin = 'VENDEFRACIONADO'
      Size = 50
    end
    object QRY_ProdutosPRECOLIVRE: TStringField
      FieldName = 'PRECOLIVRE'
      Origin = 'PRECOLIVRE'
    end
  end
  object QRY_ListaFaturamento: TFDQuery
    Connection = FDConn
    Left = 192
    Top = 184
  end
  object QRY_Pessoas: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select'
      '  pe.*'
      'from pessoas pe'
      'where pe.idpessoas = :idpessoas')
    Left = 56
    Top = 112
    ParamData = <
      item
        Name = 'IDPESSOAS'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_PessoasIDPESSOAS: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDPESSOAS'
      Origin = 'IDPESSOAS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_PessoasRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Required = True
      Size = 100
    end
    object QRY_PessoasFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Required = True
      Size = 100
    end
    object QRY_PessoasENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object QRY_PessoasNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
      Size = 50
    end
    object QRY_PessoasBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object QRY_PessoasCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 50
    end
    object QRY_PessoasCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 200
    end
    object QRY_PessoasIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Origin = 'IDCIDADE'
    end
    object QRY_PessoasTIPOFJ: TStringField
      FieldName = 'TIPOFJ'
      Origin = 'TIPOFJ'
      Size = 50
    end
    object QRY_PessoasIDTIPOPESSOA: TIntegerField
      FieldName = 'IDTIPOPESSOA'
      Origin = 'IDTIPOPESSOA'
      Required = True
    end
    object QRY_PessoasCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      Size = 50
    end
    object QRY_PessoasIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 50
    end
    object QRY_PessoasCONTRIBUINTE: TIntegerField
      FieldName = 'CONTRIBUINTE'
      Origin = 'CONTRIBUINTE'
    end
    object QRY_PessoasINSMUNICIPAL: TStringField
      FieldName = 'INSMUNICIPAL'
      Origin = 'INSMUNICIPAL'
      Size = 50
    end
    object QRY_PessoasINSSUFRAMA: TStringField
      FieldName = 'INSSUFRAMA'
      Origin = 'INSSUFRAMA'
      Size = 50
    end
    object QRY_PessoasEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object QRY_PessoasIDCONTATO: TIntegerField
      FieldName = 'IDCONTATO'
      Origin = 'IDCONTATO'
    end
    object QRY_PessoasOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 400
    end
    object QRY_PessoasIDFOTOS: TIntegerField
      FieldName = 'IDFOTOS'
      Origin = 'IDFOTOS'
    end
    object QRY_PessoasATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 50
    end
    object QRY_PessoasIDREFERENCIAS: TIntegerField
      FieldName = 'IDREFERENCIAS'
      Origin = 'IDREFERENCIAS'
    end
    object QRY_PessoasSPC: TStringField
      FieldName = 'SPC'
      Origin = 'SPC'
      Size = 50
    end
    object QRY_PessoasSERASA: TStringField
      FieldName = 'SERASA'
      Origin = 'SERASA'
      Size = 50
    end
    object QRY_PessoasUSUARIOALTERACAO: TIntegerField
      FieldName = 'USUARIOALTERACAO'
      Origin = 'USUARIOALTERACAO'
    end
    object QRY_PessoasUSUARIOCADASTRO: TIntegerField
      FieldName = 'USUARIOCADASTRO'
      Origin = 'USUARIOCADASTRO'
    end
    object QRY_PessoasDATADECADASTRO: TDateField
      FieldName = 'DATADECADASTRO'
      Origin = 'DATADECADASTRO'
    end
    object QRY_PessoasULTIMAALTERACAO: TDateField
      FieldName = 'ULTIMAALTERACAO'
      Origin = 'ULTIMAALTERACAO'
    end
    object QRY_PessoasSPCDATARETIRADA: TDateField
      FieldName = 'SPCDATARETIRADA'
      Origin = 'SPCDATARETIRADA'
    end
    object QRY_PessoasSPCDATAREGISTRO: TDateField
      FieldName = 'SPCDATAREGISTRO'
      Origin = 'SPCDATAREGISTRO'
    end
    object QRY_PessoasDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
      Origin = 'DATANASCIMENTO'
    end
    object QRY_PessoasNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      Origin = 'NOMECIDADE'
      Required = True
      Size = 200
    end
    object QRY_PessoasUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
    end
    object QRY_PessoasIDGRUPOCLIENTES: TIntegerField
      FieldName = 'IDGRUPOCLIENTES'
      Origin = 'IDGRUPOCLIENTES'
    end
    object QRY_PessoasREFPESSOALNOME: TStringField
      FieldName = 'REFPESSOALNOME'
      Origin = 'REFPESSOALNOME'
      Size = 100
    end
    object QRY_PessoasREFPESSOALTELEFONE: TStringField
      FieldName = 'REFPESSOALTELEFONE'
      Origin = 'REFPESSOALTELEFONE'
      Size = 100
    end
    object QRY_PessoasREFPESSOALCIDADE: TStringField
      FieldName = 'REFPESSOALCIDADE'
      Origin = 'REFPESSOALCIDADE'
      Size = 100
    end
    object QRY_PessoasREFFINANCEIRANOME: TStringField
      FieldName = 'REFFINANCEIRANOME'
      Origin = 'REFFINANCEIRANOME'
      Size = 100
    end
    object QRY_PessoasREFFINANCEIRATELEFONE: TStringField
      FieldName = 'REFFINANCEIRATELEFONE'
      Origin = 'REFFINANCEIRATELEFONE'
      Size = 100
    end
    object QRY_PessoasREFFINANCEIRACIDADE: TStringField
      FieldName = 'REFFINANCEIRACIDADE'
      Origin = 'REFFINANCEIRACIDADE'
      Size = 100
    end
    object QRY_PessoasREFCOMERCIALNOME: TStringField
      FieldName = 'REFCOMERCIALNOME'
      Origin = 'REFCOMERCIALNOME'
      Size = 100
    end
    object QRY_PessoasREFCOMERCIALTELEFONE: TStringField
      FieldName = 'REFCOMERCIALTELEFONE'
      Origin = 'REFCOMERCIALTELEFONE'
      Size = 100
    end
    object QRY_PessoasREFCOMERCIALCIDADE: TStringField
      FieldName = 'REFCOMERCIALCIDADE'
      Origin = 'REFCOMERCIALCIDADE'
      Size = 100
    end
    object QRY_PessoasFORNECEDORTELEFONE: TStringField
      FieldName = 'FORNECEDORTELEFONE'
      Origin = 'FORNECEDORTELEFONE'
      Size = 100
    end
    object QRY_PessoasFORNECEDORCONTATO: TStringField
      FieldName = 'FORNECEDORCONTATO'
      Origin = 'FORNECEDORCONTATO'
      Size = 100
    end
    object QRY_PessoasFORNECEDORCELULAR: TStringField
      FieldName = 'FORNECEDORCELULAR'
      Origin = 'FORNECEDORCELULAR'
      Size = 100
    end
    object QRY_PessoasFORNECEDOREMAIL: TStringField
      FieldName = 'FORNECEDOREMAIL'
      Origin = 'FORNECEDOREMAIL'
      Size = 100
    end
  end
  object QRY_Pessoas_Contato: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from contato where idpessoas = :idpessoas')
    Left = 56
    Top = 176
    ParamData = <
      item
        Name = 'IDPESSOAS'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_Pessoas_ContatoIDCONTATO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDCONTATO'
      Origin = 'IDCONTATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_Pessoas_ContatoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 50
    end
    object QRY_Pessoas_ContatoCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 50
    end
    object QRY_Pessoas_ContatoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object QRY_Pessoas_ContatoIDPESSOAS: TIntegerField
      FieldName = 'IDPESSOAS'
      Origin = 'IDPESSOAS'
    end
    object QRY_Pessoas_ContatoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 200
    end
  end
  object QRY_Cidades: TFDQuery
    Connection = FDConn
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from cidades order by idcidade')
    Left = 56
    Top = 232
    object QRY_CidadesIDCIDADE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDCIDADE'
      Origin = 'IDCIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_CidadesMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Size = 200
    end
    object QRY_CidadesUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object QRY_CidadesCODMUNICIPIOIBGE: TStringField
      FieldName = 'CODMUNICIPIOIBGE'
      Origin = 'CODMUNICIPIOIBGE'
      Size = 50
    end
    object QRY_CidadesCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
      Origin = 'CODESTADO'
    end
  end
  object QRY_Pessoas_Endereco: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from endereco where idpessoa = :idpessoa')
    Left = 56
    Top = 296
    ParamData = <
      item
        Name = 'IDPESSOA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_Pessoas_EnderecoIDENDERECO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDENDERECO'
      Origin = 'IDENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_Pessoas_EnderecoIDPESSOA: TIntegerField
      FieldName = 'IDPESSOA'
      Origin = 'IDPESSOA'
    end
    object QRY_Pessoas_EnderecoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 200
    end
    object QRY_Pessoas_EnderecoIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Origin = 'IDCIDADE'
    end
    object QRY_Pessoas_EnderecoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 100
    end
    object QRY_Pessoas_EnderecoNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 50
    end
    object QRY_Pessoas_EnderecoNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      Origin = 'NOMECIDADE'
      Size = 200
    end
    object QRY_Pessoas_EnderecoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
    end
    object QRY_Pessoas_EnderecoTIPOENDERECO: TStringField
      FieldName = 'TIPOENDERECO'
      Origin = 'TIPOENDERECO'
      Size = 100
    end
    object QRY_Pessoas_EnderecoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 50
    end
  end
  object QRY_Pessoas_Grupos: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from grupoclientes order by idgrupoclientes')
    Left = 192
    Top = 256
    object QRY_Pessoas_GruposIDGRUPOCLIENTES: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDGRUPOCLIENTES'
      Origin = 'IDGRUPOCLIENTES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_Pessoas_GruposTIPOGRUPO: TStringField
      FieldName = 'TIPOGRUPO'
      Origin = 'TIPOGRUPO'
      Size = 100
    end
  end
  object QRY_Grupos: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from estgrupo order by idgrupo')
    Left = 496
    Top = 224
    object QRY_GruposIDGRUPO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDGRUPO'
      Origin = 'IDGRUPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_GruposDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
  end
  object Qry_SubGrupos: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'Select * from EstsubGrupo order by IdSubGrupo'
      '')
    Left = 496
    Top = 160
    object Qry_SubGruposIDSUBGRUPO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDSUBGRUPO'
      Origin = 'IDSUBGRUPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_SubGruposDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
  end
  object Qry_Fabricantes: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from EstFabricante order by IdFabricante')
    Left = 496
    Top = 280
    object Qry_FabricantesIDFABRICANTE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDFABRICANTE'
      Origin = 'IDFABRICANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_FabricantesFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTE'
      Size = 100
    end
  end
  object QRY_ProdutoItens: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select'
      ' pi.*,'
      ' eg.descricao grupo,'
      ' em.descricao marca'
      'from estprodutositens pi'
      'inner join estprodutos ep'
      'on (ep.idproduto = pi.idproduto)'
      'left join estgrupo eg'
      'on (ep.idgrupo = eg.idgrupo)'
      'left join estmarca em'
      'on (ep.idmarca = em.idmarca)'
      'where pi.idproduto = :idproduto')
    Left = 184
    Top = 112
    ParamData = <
      item
        Name = 'IDPRODUTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_ProdutoItensIDPRODUTOITEM: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDPRODUTOITEM'
      Origin = 'IDPRODUTOITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_ProdutoItensIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = 'IDPRODUTO'
    end
    object QRY_ProdutoItensVLRCUSTOINICIAL: TBCDField
      FieldName = 'VLRCUSTOINICIAL'
      Origin = 'VLRCUSTOINICIAL'
      currency = True
      Precision = 18
    end
    object QRY_ProdutoItensVLRCUSTOENTRADA: TBCDField
      FieldName = 'VLRCUSTOENTRADA'
      Origin = 'VLRCUSTOENTRADA'
      currency = True
      Precision = 18
    end
    object QRY_ProdutoItensVLRVENDAVISTA: TBCDField
      FieldName = 'VLRVENDAVISTA'
      Origin = 'VLRVENDAVISTA'
      Required = True
      currency = True
      Precision = 18
    end
    object QRY_ProdutoItensVLRVENDAPRAZO: TBCDField
      FieldName = 'VLRVENDAPRAZO'
      Origin = 'VLRVENDAPRAZO'
      currency = True
      Precision = 18
    end
    object QRY_ProdutoItensVLRATACADO: TBCDField
      FieldName = 'VLRATACADO'
      Origin = 'VLRATACADO'
      currency = True
      Precision = 18
    end
    object QRY_ProdutoItensESTOQUEMINIMO: TBCDField
      FieldName = 'ESTOQUEMINIMO'
      Origin = 'ESTOQUEMINIMO'
      Precision = 18
    end
    object QRY_ProdutoItensESTOQUEMAXIMO: TBCDField
      FieldName = 'ESTOQUEMAXIMO'
      Origin = 'ESTOQUEMAXIMO'
      Precision = 18
    end
    object QRY_ProdutoItensICMSCOMPRA: TBCDField
      FieldName = 'ICMSCOMPRA'
      Origin = 'ICMSCOMPRA'
      Precision = 18
    end
    object QRY_ProdutoItensREDUCAOBASECALCULOICMS: TBCDField
      FieldName = 'REDUCAOBASECALCULOICMS'
      Origin = 'REDUCAOBASECALCULOICMS'
      Precision = 18
    end
    object QRY_ProdutoItensMVACOMPRA: TBCDField
      FieldName = 'MVACOMPRA'
      Origin = 'MVACOMPRA'
      Precision = 18
    end
    object QRY_ProdutoItensICMSSTCOMPRA: TBCDField
      FieldName = 'ICMSSTCOMPRA'
      Origin = 'ICMSSTCOMPRA'
      Precision = 18
    end
    object QRY_ProdutoItensVLRCUSTOOPERACIONAL: TBCDField
      FieldName = 'VLRCUSTOOPERACIONAL'
      Origin = 'VLRCUSTOOPERACIONAL'
      currency = True
      Precision = 18
    end
    object QRY_ProdutoItensREDUCAOBASECALCULOICMSST: TBCDField
      FieldName = 'REDUCAOBASECALCULOICMSST'
      Origin = 'REDUCAOBASECALCULOICMSST'
      Precision = 18
    end
    object QRY_ProdutoItensVLRICMSST: TBCDField
      FieldName = 'VLRICMSST'
      Origin = 'VLRICMSST'
      currency = True
      Precision = 18
    end
    object QRY_ProdutoItensIPICOMPRA: TBCDField
      FieldName = 'IPICOMPRA'
      Origin = 'IPICOMPRA'
      Precision = 18
    end
    object QRY_ProdutoItensFRETECOMPRA: TBCDField
      FieldName = 'FRETECOMPRA'
      Origin = 'FRETECOMPRA'
      Precision = 18
    end
    object QRY_ProdutoItensVLRFRETECOMPRA: TBCDField
      FieldName = 'VLRFRETECOMPRA'
      Origin = 'VLRFRETECOMPRA'
      currency = True
      Precision = 18
    end
    object QRY_ProdutoItensVLROUTROSCUSTOS: TBCDField
      FieldName = 'VLROUTROSCUSTOS'
      Origin = 'VLROUTROSCUSTOS'
      currency = True
      Precision = 18
    end
    object QRY_ProdutoItensVLRPRECOCAIXA: TBCDField
      FieldName = 'VLRPRECOCAIXA'
      Origin = 'VLRPRECOCAIXA'
      currency = True
      Precision = 18
    end
    object QRY_ProdutoItensPESOCAIXA: TBCDField
      FieldName = 'PESOCAIXA'
      Origin = 'PESOCAIXA'
      Precision = 18
    end
    object QRY_ProdutoItensQTDCAIXA: TBCDField
      FieldName = 'QTDCAIXA'
      Origin = 'QTDCAIXA'
      Precision = 18
    end
    object QRY_ProdutoItensPERCICMSCOMPRA: TBCDField
      FieldName = 'PERCICMSCOMPRA'
      Origin = 'PERCICMSCOMPRA'
      Precision = 18
    end
    object QRY_ProdutoItensPERCICMSSTCOMPRA: TBCDField
      FieldName = 'PERCICMSSTCOMPRA'
      Origin = 'PERCICMSSTCOMPRA'
      Precision = 18
    end
    object QRY_ProdutoItensALIQPISCOMPRA: TBCDField
      FieldName = 'ALIQPISCOMPRA'
      Origin = 'ALIQPISCOMPRA'
      Precision = 18
    end
    object QRY_ProdutoItensVALORFRETECOMPRA: TBCDField
      FieldName = 'VALORFRETECOMPRA'
      Origin = 'VALORFRETECOMPRA'
      currency = True
      Precision = 18
    end
    object QRY_ProdutoItensPERCREDBASECALCULOICMSCOMPRA: TBCDField
      FieldName = 'PERCREDBASECALCULOICMSCOMPRA'
      Origin = 'PERCREDBASECALCULOICMSCOMPRA'
      Precision = 18
    end
    object QRY_ProdutoItensPERCREDBASECALCULOICMSSTCOMPRA: TBCDField
      FieldName = 'PERCREDBASECALCULOICMSSTCOMPRA'
      Origin = 'PERCREDBASECALCULOICMSSTCOMPRA'
      Precision = 18
    end
    object QRY_ProdutoItensALIQCOFINSCOMPRA: TBCDField
      FieldName = 'ALIQCOFINSCOMPRA'
      Origin = 'ALIQCOFINSCOMPRA'
      Precision = 18
    end
    object QRY_ProdutoItensALIQIPICOMPRA: TBCDField
      FieldName = 'ALIQIPICOMPRA'
      Origin = 'ALIQIPICOMPRA'
      Precision = 18
    end
    object QRY_ProdutoItensVALORICMSSTCOMPRA: TBCDField
      FieldName = 'VALORICMSSTCOMPRA'
      Origin = 'VALORICMSSTCOMPRA'
      currency = True
      Precision = 18
    end
    object QRY_ProdutoItensPERCFRETECOMPRA: TBCDField
      FieldName = 'PERCFRETECOMPRA'
      Origin = 'PERCFRETECOMPRA'
      Precision = 18
    end
    object QRY_ProdutoItensPERCOUTROSCOMPRA: TBCDField
      FieldName = 'PERCOUTROSCOMPRA'
      Origin = 'PERCOUTROSCOMPRA'
      Precision = 18
    end
    object QRY_ProdutoItensIDPISCOFINS: TIntegerField
      FieldName = 'IDPISCOFINS'
      Origin = 'IDPISCOFINS'
    end
    object QRY_ProdutoItensIDTRIBUTACAO: TIntegerField
      FieldName = 'IDTRIBUTACAO'
      Origin = 'IDTRIBUTACAO'
    end
    object QRY_ProdutoItensIDFILIAL: TIntegerField
      FieldName = 'IDFILIAL'
      Origin = 'IDFILIAL'
    end
    object QRY_ProdutoItensVLRPERCMARGEMLUCRO: TBCDField
      FieldName = 'VLRPERCMARGEMLUCRO'
      Origin = 'VLRPERCMARGEMLUCRO'
      currency = True
      Precision = 18
    end
    object QRY_ProdutoItensVLRLUCRO: TBCDField
      FieldName = 'VLRLUCRO'
      Origin = 'VLRLUCRO'
      currency = True
      Precision = 18
    end
    object QRY_ProdutoItensGRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QRY_ProdutoItensMARCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MARCA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QRY_ProdutoItensESTOQUE: TBCDField
      Alignment = taCenter
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Precision = 18
    end
  end
  object QRY_Marcas: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from estmarca order by idmarca')
    Left = 496
    Top = 336
    object QRY_MarcasIDMARCA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDMARCA'
      Origin = 'IDMARCA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_MarcasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
  end
  object QRY_Vendas: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from estvenda order by idvenda ')
    Left = 248
    Top = 344
    object QRY_VendasIDVENDA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDVENDA'
      Origin = 'IDVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_VendasDTAVENDA: TDateField
      FieldName = 'DTAVENDA'
      Origin = 'DTAVENDA'
    end
    object QRY_VendasHRAVENDA: TTimeField
      FieldName = 'HRAVENDA'
      Origin = 'HRAVENDA'
    end
    object QRY_VendasIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = 'IDCLIENTE'
    end
    object QRY_VendasIDVENDEDOR: TIntegerField
      FieldName = 'IDVENDEDOR'
      Origin = 'IDVENDEDOR'
    end
    object QRY_VendasVLRBRUTO: TBCDField
      FieldName = 'VLRBRUTO'
      Origin = 'VLRBRUTO'
      Precision = 18
    end
    object QRY_VendasVLRDESCONTO: TBCDField
      FieldName = 'VLRDESCONTO'
      Origin = 'VLRDESCONTO'
      Precision = 18
    end
    object QRY_VendasVLRLIQUIDO: TBCDField
      FieldName = 'VLRLIQUIDO'
      Origin = 'VLRLIQUIDO'
      Precision = 18
    end
    object QRY_VendasORIGEMVENDA: TStringField
      FieldName = 'ORIGEMVENDA'
      Origin = 'ORIGEMVENDA'
      Size = 50
    end
    object QRY_VendasNUMNFE: TIntegerField
      FieldName = 'NUMNFE'
      Origin = 'NUMNFE'
    end
    object QRY_VendasSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 50
    end
    object QRY_VendasOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 200
    end
    object QRY_VendasIDFILIAL: TIntegerField
      FieldName = 'IDFILIAL'
      Origin = 'IDFILIAL'
    end
    object QRY_VendasIDSETOR: TIntegerField
      FieldName = 'IDSETOR'
      Origin = 'IDSETOR'
    end
    object QRY_VendasIDTIPODOCUMENTO: TIntegerField
      FieldName = 'IDTIPODOCUMENTO'
      Origin = 'IDTIPODOCUMENTO'
    end
  end
  object QRY_VendaItens: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select vi.* from estvendaitem vi where vi.idvenda = :idvenda')
    Left = 248
    Top = 400
    ParamData = <
      item
        Name = 'IDVENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_VendaItensIDVENDAITEM: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDVENDAITEM'
      Origin = 'IDVENDAITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_VendaItensIDVENDA: TIntegerField
      FieldName = 'IDVENDA'
      Origin = 'IDVENDA'
    end
    object QRY_VendaItensIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = 'IDPRODUTO'
    end
    object QRY_VendaItensIDPRODUTODETALHE: TIntegerField
      FieldName = 'IDPRODUTODETALHE'
      Origin = 'IDPRODUTODETALHE'
    end
    object QRY_VendaItensQTD: TBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
    end
    object QRY_VendaItensVLRUNITARIO: TBCDField
      FieldName = 'VLRUNITARIO'
      Origin = 'VLRUNITARIO'
      Precision = 18
    end
    object QRY_VendaItensVLRDESCONTO: TBCDField
      FieldName = 'VLRDESCONTO'
      Origin = 'VLRDESCONTO'
      Precision = 18
    end
    object QRY_VendaItensVLRSUBTOTAL: TBCDField
      FieldName = 'VLRSUBTOTAL'
      Origin = 'VLRSUBTOTAL'
      Precision = 18
    end
    object QRY_VendaItensSERIEPRODUTO: TStringField
      FieldName = 'SERIEPRODUTO'
      Origin = 'SERIEPRODUTO'
      Size = 50
    end
    object QRY_VendaItensVLRCUSTO: TBCDField
      FieldName = 'VLRCUSTO'
      Origin = 'VLRCUSTO'
      Precision = 18
    end
    object QRY_VendaItensCODIGOBARRAS: TStringField
      FieldName = 'CODIGOBARRAS'
      Origin = 'CODIGOBARRAS'
      Size = 10
    end
    object QRY_VendaItensPESOITEM: TBCDField
      FieldName = 'PESOITEM'
      Origin = 'PESOITEM'
      Precision = 18
    end
  end
  object QRY_Aux: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      '')
    Left = 672
    Top = 352
  end
  object QRY_OrigemMercadoria: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from estorigem order by idorigem')
    Left = 496
    Top = 408
    object QRY_OrigemMercadoriaIDORIGEM: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDORIGEM'
      Origin = 'IDORIGEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_OrigemMercadoriaCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
      Origin = 'CODORIGEM'
    end
    object QRY_OrigemMercadoriaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object QRY_OrigemMercadoriaATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object QRY_Embalagem: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from estunidades order by idunidade')
    Left = 496
    Top = 104
    object QRY_EmbalagemIDUNIDADE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDUNIDADE'
      Origin = 'IDUNIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_EmbalagemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
    object QRY_EmbalagemIDUSUARIOCADASTRO: TIntegerField
      FieldName = 'IDUSUARIOCADASTRO'
      Origin = 'IDUSUARIOCADASTRO'
    end
    object QRY_EmbalagemIDUSUARIOALTERACAO: TIntegerField
      FieldName = 'IDUSUARIOALTERACAO'
      Origin = 'IDUSUARIOALTERACAO'
    end
    object QRY_EmbalagemFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
    end
    object QRY_EmbalagemSIGLA: TStringField
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      Size = 3
    end
    object QRY_EmbalagemATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object QRY_EmbalagemDATAHORACADASTRO: TSQLTimeStampField
      FieldName = 'DATAHORACADASTRO'
      Origin = 'DATAHORACADASTRO'
    end
    object QRY_EmbalagemDATAHORAALTERACAO: TSQLTimeStampField
      FieldName = 'DATAHORAALTERACAO'
      Origin = 'DATAHORAALTERACAO'
    end
  end
  object QRY_Tributacao: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select et.* from esttributos et order by et.idtributo')
    Left = 496
    Top = 48
    object QRY_TributacaoIDTRIBUTO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDTRIBUTO'
      Origin = 'IDTRIBUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_TributacaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object QRY_TributacaoICMS: TIntegerField
      FieldName = 'ICMS'
      Origin = 'ICMS'
    end
    object QRY_TributacaoICMSST: TIntegerField
      FieldName = 'ICMSST'
      Origin = 'ICMSST'
    end
    object QRY_TributacaoDATAHORACADASTRO: TSQLTimeStampField
      FieldName = 'DATAHORACADASTRO'
      Origin = 'DATAHORACADASTRO'
    end
    object QRY_TributacaoDATAHORAALTERACAO: TSQLTimeStampField
      FieldName = 'DATAHORAALTERACAO'
      Origin = 'DATAHORAALTERACAO'
    end
    object QRY_TributacaoATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object QRY_NCM: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from estncm order by descricao')
    Left = 592
    Top = 48
    object QRY_NCMNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QRY_NCMDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object QRY_NCMALIQNACIONAL: TCurrencyField
      FieldName = 'ALIQNACIONAL'
      Origin = 'ALIQNACIONAL'
    end
    object QRY_NCMALIQIMPORTADO: TCurrencyField
      FieldName = 'ALIQIMPORTADO'
      Origin = 'ALIQIMPORTADO'
    end
    object QRY_NCMALIQESTADUAL: TCurrencyField
      FieldName = 'ALIQESTADUAL'
      Origin = 'ALIQESTADUAL'
    end
    object QRY_NCMALIQMUNICIPAL: TCurrencyField
      FieldName = 'ALIQMUNICIPAL'
      Origin = 'ALIQMUNICIPAL'
    end
    object QRY_NCMPISSAIDA: TIntegerField
      FieldName = 'PISSAIDA'
      Origin = 'PISSAIDA'
    end
    object QRY_NCMPISENTRADA: TIntegerField
      FieldName = 'PISENTRADA'
      Origin = 'PISENTRADA'
    end
    object QRY_NCMALIQPISENTRADA: TCurrencyField
      FieldName = 'ALIQPISENTRADA'
      Origin = 'ALIQPISENTRADA'
    end
    object QRY_NCMCOFINSSAIDA: TIntegerField
      FieldName = 'COFINSSAIDA'
      Origin = 'COFINSSAIDA'
    end
    object QRY_NCMCOFINSENTRADA: TIntegerField
      FieldName = 'COFINSENTRADA'
      Origin = 'COFINSENTRADA'
    end
    object QRY_NCMALIQCOFINSENTRADA: TIntegerField
      FieldName = 'ALIQCOFINSENTRADA'
      Origin = 'ALIQCOFINSENTRADA'
    end
    object QRY_NCMDATAINICIO: TDateField
      FieldName = 'DATAINICIO'
      Origin = 'DATAINICIO'
    end
    object QRY_NCMDATAFIM: TDateField
      FieldName = 'DATAFIM'
      Origin = 'DATAFIM'
    end
    object QRY_NCMULTIMAALTERACAO: TSQLTimeStampField
      FieldName = 'ULTIMAALTERACAO'
      Origin = 'ULTIMAALTERACAO'
    end
    object QRY_NCMCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 8
    end
    object QRY_NCMALIQPISSAIDA: TCurrencyField
      FieldName = 'ALIQPISSAIDA'
      Origin = 'ALIQPISSAIDA'
    end
    object QRY_NCMALIQCOFINSSAIDA: TCurrencyField
      FieldName = 'ALIQCOFINSSAIDA'
      Origin = 'ALIQCOFINSSAIDA'
    end
    object QRY_NCMCSTPISCOFINSENTRADA: TIntegerField
      FieldName = 'CSTPISCOFINSENTRADA'
      Origin = 'CSTPISCOFINSENTRADA'
    end
    object QRY_NCMCSTPISCOFINSSAIDA: TIntegerField
      FieldName = 'CSTPISCOFINSSAIDA'
      Origin = 'CSTPISCOFINSSAIDA'
    end
    object QRY_NCMVERSAO: TStringField
      FieldName = 'VERSAO'
      Origin = 'VERSAO'
      Size = 10
    end
    object QRY_NCMATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object QRY_NCMDATAHORACADASTRO: TSQLTimeStampField
      FieldName = 'DATAHORACADASTRO'
      Origin = 'DATAHORACADASTRO'
    end
  end
  object QRY_MovimentoEstoque: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      
        'select * from movimentoestoque where idproduto = :idproduto and ' +
        'idprodutoitens = :idprodutoitens and idfilial = :idfilial')
    Left = 832
    Top = 280
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
    Left = 840
    Top = 344
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
  object QRY_Filial: TFDQuery
    ChangeAlertName = 'QRY_Filial'
    Connection = FDConn
    SQL.Strings = (
      'select'
      '  em.*'
      'from empresa em'
      'where em.idempresa = :em.empresa')
    Left = 312
    Top = 136
    ParamData = <
      item
        Name = 'EM.EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_FilialIDEMPRESA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_FilialRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 200
    end
    object QRY_FilialFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 200
    end
    object QRY_FilialCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 50
    end
    object QRY_FilialIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 50
    end
    object QRY_FilialFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 50
    end
    object QRY_FilialCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      EditMask = '00000-000;1;_'
    end
    object QRY_FilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 200
    end
    object QRY_FilialNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 50
    end
    object QRY_FilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 100
    end
    object QRY_FilialCODIGOIBGE: TIntegerField
      FieldName = 'CODIGOIBGE'
      Origin = 'CODIGOIBGE'
    end
    object QRY_FilialCRT: TIntegerField
      FieldName = 'CRT'
      Origin = 'CRT'
    end
    object QRY_FilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 100
    end
    object QRY_FilialESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 50
    end
    object QRY_FilialCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 100
    end
    object QRY_FilialTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 5
    end
    object QRY_FilialIM: TStringField
      FieldName = 'IM'
      Origin = 'IM'
      FixedChar = True
      Size = 50
    end
    object QRY_FilialHOMOLOGACAO: TDateField
      FieldName = 'HOMOLOGACAO'
      Origin = 'HOMOLOGACAO'
    end
    object QRY_FilialTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      EditMask = '(00)0000-0000;1;_'
      Size = 50
    end
    object QRY_FilialFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      EditMask = '(00)0000-0000;1;_'
      Size = 50
    end
    object QRY_FilialCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      EditMask = '(00)00000-0000;1;_'
      Size = 50
    end
    object QRY_FilialEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 60
    end
    object QRY_FilialGERENTE: TIntegerField
      FieldName = 'GERENTE'
      Origin = 'GERENTE'
    end
    object QRY_FilialPISCOFINS: TIntegerField
      FieldName = 'PISCOFINS'
      Origin = 'PISCOFINS'
    end
    object QRY_FilialESCRITURACAO: TIntegerField
      FieldName = 'ESCRITURACAO'
      Origin = 'ESCRITURACAO'
    end
    object QRY_FilialCNAE: TStringField
      FieldName = 'CNAE'
      Origin = 'CNAE'
      Size = 50
    end
    object QRY_FilialATIVIDADE: TIntegerField
      FieldName = 'ATIVIDADE'
      Origin = 'ATIVIDADE'
    end
    object QRY_FilialPERFIL: TStringField
      FieldName = 'PERFIL'
      Origin = 'PERFIL'
      Size = 5
    end
    object QRY_FilialCONTRIBUICAO: TIntegerField
      FieldName = 'CONTRIBUICAO'
      Origin = 'CONTRIBUICAO'
    end
    object QRY_FilialCREDICMS: TFMTBCDField
      FieldName = 'CREDICMS'
      Origin = 'CREDICMS'
      Precision = 18
      Size = 2
    end
    object QRY_FilialLOGO1: TBlobField
      FieldName = 'LOGO1'
      Origin = 'LOGO1'
    end
    object QRY_FilialLOGO2: TBlobField
      FieldName = 'LOGO2'
      Origin = 'LOGO2'
    end
    object QRY_FilialCONTABILISTA: TIntegerField
      FieldName = 'CONTABILISTA'
      Origin = 'CONTABILISTA'
    end
    object QRY_FilialXML_FISCAIS: TStringField
      FieldName = 'XML_FISCAIS'
      Origin = 'XML_FISCAIS'
      Size = 1
    end
    object QRY_FilialREC_EMAIL: TStringField
      FieldName = 'REC_EMAIL'
      Origin = 'REC_EMAIL'
      Size = 1
    end
    object QRY_FilialEMAIL_CONTABILISTA: TStringField
      FieldName = 'EMAIL_CONTABILISTA'
      Origin = 'EMAIL_CONTABILISTA'
      Size = 200
    end
    object QRY_FilialATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 3
    end
  end
  object QRY_FormaPagamento: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select'
      '  fi.*'
      'from finanformaspgto fi'
      'where fi.idpgto = :fi.idpgto')
    Left = 328
    Top = 224
    ParamData = <
      item
        Name = 'FI.IDPGTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_FormaPagamentoIDPGTO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDPGTO'
      Origin = 'IDPGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QRY_FormaPagamentoIDCLIENTEPADRAO: TIntegerField
      FieldName = 'IDCLIENTEPADRAO'
      Origin = 'IDCLIENTEPADRAO'
    end
    object QRY_FormaPagamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object QRY_FormaPagamentoMOEDA: TStringField
      FieldName = 'MOEDA'
      Origin = 'MOEDA'
      Size = 50
    end
    object QRY_FormaPagamentoGERARECEBER: TStringField
      FieldName = 'GERARECEBER'
      Origin = 'GERARECEBER'
      Size = 10
    end
    object QRY_FormaPagamentoATACADO: TStringField
      FieldName = 'ATACADO'
      Origin = 'ATACADO'
      Size = 10
    end
    object QRY_FormaPagamentoPDV: TStringField
      FieldName = 'PDV'
      Origin = 'PDV'
      Size = 10
    end
    object QRY_FormaPagamentoDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object QRY_FormaPagamentoAUMENTO: TFMTBCDField
      FieldName = 'AUMENTO'
      Origin = 'AUMENTO'
      Precision = 18
      Size = 2
    end
    object QRY_FormaPagamentoPRAZO: TStringField
      FieldName = 'PRAZO'
      Origin = 'PRAZO'
      Size = 10
    end
    object QRY_FormaPagamentoNEUTRO: TStringField
      FieldName = 'NEUTRO'
      Origin = 'NEUTRO'
      Size = 10
    end
    object QRY_FormaPagamentoPARCELAS: TStringField
      FieldName = 'PARCELAS'
      Origin = 'PARCELAS'
      Size = 10
    end
  end
  object QRY_Cfop: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select'
      '  cf.*'
      'from ESTCFOP cf'
      'where cf.cfop = :cf.ESTCFOP')
    Left = 328
    Top = 312
    ParamData = <
      item
        Name = 'CF.ESTCFOP'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_CfopCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_CfopDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object QRY_CfopDATAHORACADASTRO: TSQLTimeStampField
      FieldName = 'DATAHORACADASTRO'
      Origin = 'DATAHORACADASTRO'
    end
    object QRY_CfopDATAHORAALTERACAO: TSQLTimeStampField
      FieldName = 'DATAHORAALTERACAO'
      Origin = 'DATAHORAALTERACAO'
    end
    object QRY_CfopNOTA: TStringField
      FieldName = 'NOTA'
      Origin = 'NOTA'
      Size = 255
    end
    object QRY_CfopATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object QRY_CST: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from estcst order by cst')
    Left = 616
    Top = 120
    object QRY_CSTCST: TIntegerField
      FieldName = 'CST'
      Origin = 'CST'
    end
    object QRY_CSTDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 255
    end
    object QRY_CSTDATAHORACADASTRO: TSQLTimeStampField
      FieldName = 'DATAHORACADASTRO'
      Origin = 'DATAHORACADASTRO'
    end
    object QRY_CSTDATAHORAALTERACAO: TSQLTimeStampField
      FieldName = 'DATAHORAALTERACAO'
      Origin = 'DATAHORAALTERACAO'
    end
    object QRY_CSTATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
end
