object DataModuleAntigo: TDataModuleAntigo
  Height = 621
  Width = 1007
  object FDConnection: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'Password=masterkey')
    LoginPrompt = False
    Left = 48
    Top = 40
  end
  object DriverFB: TFDPhysFBDriverLink
    Left = 48
    Top = 104
  end
  object FDCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 48
    Top = 184
  end
  object Cores: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from cores')
    Left = 168
    Top = 160
    object SISTEMA: TStringField
      FieldName = 'SISTEMA'
      Origin = 'BTNBOTOES'
      Required = True
    end
    object BTNCONFIRMAR: TStringField
      FieldName = 'BTNCONFIRMAR'
      Origin = 'BTNCONFIRMAR'
    end
    object BTNBOTOES: TStringField
      FieldName = 'BTNBOTOES'
      Origin = 'BTNBOTOES'
    end
  end
  object RESTClient: TRESTClient
    BaseURL = 'https://viacep.com.br/ws'
    Params = <>
    SynchronizedEvents = False
    Left = 832
    Top = 208
  end
  object RESTRequest: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient
    Params = <>
    Response = RESTResponse
    SynchronizedEvents = False
    Left = 832
    Top = 152
  end
  object RESTResponse: TRESTResponse
    Left = 832
    Top = 88
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = TabCep
    FieldDefs = <>
    Response = RESTResponse
    Left = 832
    Top = 32
  end
  object TabCep: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 168
    Top = 104
  end
  object RESTClientCNPJ: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://receitaws.com.br/v1/cnpj'
    Params = <>
    SynchronizedEvents = False
    Left = 832
    Top = 384
  end
  object RESTRequestCNPJ: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClientCNPJ
    Params = <>
    Response = RESTResponseCNPJ
    SynchronizedEvents = False
    Left = 832
    Top = 328
  end
  object RESTResponseCNPJ: TRESTResponse
    ContentType = 'text/html'
    Left = 832
    Top = 272
  end
  object TabCNPJ: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 168
    Top = 48
  end
  object DSAdapterCNPJ: TRESTResponseDataSetAdapter
    Dataset = TabCNPJ
    FieldDefs = <>
    Response = RESTResponseCNPJ
    Left = 832
    Top = 440
  end
  object TabCliente: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from clientes where idcliente = :idcliente')
    Left = 168
    Top = 224
    ParamData = <
      item
        Name = 'IDCLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TabClienteIDCLIENTE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDCLIENTE'
      Origin = 'IDCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TabClienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 75
    end
    object TabClienteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 75
    end
    object TabClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 40
    end
    object TabClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object TabClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 25
    end
    object TabClienteCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object TabClienteROTA: TIntegerField
      FieldName = 'ROTA'
      Origin = 'ROTA'
    end
    object TabClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 77
    end
    object TabClienteCIDADE: TIntegerField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
    end
    object TabClienteTIPOPESSOA: TStringField
      FieldName = 'TIPOPESSOA'
      Origin = 'TIPOPESSOA'
      Size = 10
    end
    object TabClienteCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 15
    end
    object TabClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 15
    end
    object TabClienteRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
      Size = 15
    end
    object TabClienteINSESTADUAL: TStringField
      FieldName = 'INSESTADUAL'
      Origin = 'INSESTADUAL'
      Size = 15
    end
    object TabClienteTIPOINSCRICAO: TIntegerField
      FieldName = 'TIPOINSCRICAO'
      Origin = 'TIPOINSCRICAO'
    end
    object TabClienteINSMUNICIPAL: TStringField
      FieldName = 'INSMUNICIPAL'
      Origin = 'INSMUNICIPAL'
      Size = 15
    end
    object TabClienteINSSUFRAMA: TStringField
      FieldName = 'INSSUFRAMA'
      Origin = 'INSSUFRAMA'
      Size = 15
    end
    object TabClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 45
    end
    object TabClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object TabClienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object TabClienteVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
    end
    object TabClienteOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      FixedChar = True
      Size = 400
    end
    object TabClienteFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'FOTO'
      Size = 10
    end
    object TabClienteATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object TabClienteREFREFERENCIA1: TStringField
      FieldName = 'REFREFERENCIA1'
      Origin = 'REFREFERENCIA1'
      Size = 40
    end
    object TabClienteREFREFERENCIA2: TStringField
      FieldName = 'REFREFERENCIA2'
      Origin = 'REFREFERENCIA2'
      Size = 40
    end
    object TabClienteREFTELEFONE1: TStringField
      FieldName = 'REFTELEFONE1'
      Origin = 'REFTELEFONE1'
      Size = 15
    end
    object TabClienteREFESTADOCIVIL: TStringField
      FieldName = 'REFESTADOCIVIL'
      Origin = 'REFESTADOCIVIL'
    end
    object TabClienteREFNATURALIDADE: TStringField
      FieldName = 'REFNATURALIDADE'
      Origin = 'REFNATURALIDADE'
      Size = 40
    end
    object TabClienteENTREGANOME: TStringField
      FieldName = 'ENTREGANOME'
      Origin = 'ENTREGANOME'
      Size = 40
    end
    object TabClienteENTREGAENDERECO: TStringField
      FieldName = 'ENTREGAENDERECO'
      Origin = 'ENTREGAENDERECO'
      Size = 40
    end
    object TabClienteENTREGANUMERO: TStringField
      FieldName = 'ENTREGANUMERO'
      Origin = 'ENTREGANUMERO'
      Size = 10
    end
    object TabClienteENTREGABAIRRO: TStringField
      FieldName = 'ENTREGABAIRRO'
      Origin = 'ENTREGABAIRRO'
      Size = 25
    end
    object TabClienteENTREGACEP: TStringField
      FieldName = 'ENTREGACEP'
      Origin = 'ENTREGACEP'
      Size = 10
    end
    object TabClienteENTREGACOMPLEMENTO: TStringField
      FieldName = 'ENTREGACOMPLEMENTO'
      Origin = 'ENTREGACOMPLEMENTO'
      Size = 77
    end
    object TabClienteENTREGACIDADE: TIntegerField
      FieldName = 'ENTREGACIDADE'
      Origin = 'ENTREGACIDADE'
    end
    object TabClienteENTREGATELEFONE: TStringField
      FieldName = 'ENTREGATELEFONE'
      Origin = 'ENTREGATELEFONE'
      Size = 15
    end
    object TabClienteCOBRANCANOME: TStringField
      FieldName = 'COBRANCANOME'
      Origin = 'COBRANCANOME'
      Size = 40
    end
    object TabClienteCOBRANCAENDERECO: TStringField
      FieldName = 'COBRANCAENDERECO'
      Origin = 'COBRANCAENDERECO'
      Size = 40
    end
    object TabClienteCOBRANCANUMERO: TStringField
      FieldName = 'COBRANCANUMERO'
      Origin = 'COBRANCANUMERO'
      Size = 10
    end
    object TabClienteCOBRANCABAIRRO: TStringField
      FieldName = 'COBRANCABAIRRO'
      Origin = 'COBRANCABAIRRO'
      Size = 25
    end
    object TabClienteCOBRANCACEP: TStringField
      FieldName = 'COBRANCACEP'
      Origin = 'COBRANCACEP'
      Size = 10
    end
    object TabClienteCOBRANCACOMPLEMENTO: TStringField
      FieldName = 'COBRANCACOMPLEMENTO'
      Origin = 'COBRANCACOMPLEMENTO'
      Size = 77
    end
    object TabClienteCOBRANCATELEFONE: TStringField
      FieldName = 'COBRANCATELEFONE'
      Origin = 'COBRANCATELEFONE'
      Size = 15
    end
    object TabClienteCOBRANCACIDADE: TIntegerField
      FieldName = 'COBRANCACIDADE'
      Origin = 'COBRANCACIDADE'
    end
    object TabClienteREFTELEFONE2: TStringField
      FieldName = 'REFTELEFONE2'
      Origin = 'REFTELEFONE2'
      Size = 15
    end
    object TabClienteSPCSITUACAO: TStringField
      FieldName = 'SPCSITUACAO'
      Origin = 'SPCSITUACAO'
    end
    object TabClienteGRUPOCLIENTES: TIntegerField
      FieldName = 'GRUPOCLIENTES'
      Origin = 'GRUPOCLIENTES'
    end
    object TabClienteUSUARIOALTERACAO: TIntegerField
      FieldName = 'USUARIOALTERACAO'
      Origin = 'USUARIOALTERACAO'
    end
    object TabClienteUSUARIOCADASTRO: TIntegerField
      FieldName = 'USUARIOCADASTRO'
      Origin = 'USUARIOCADASTRO'
    end
    object TabClienteDATADECADASTRO: TDateField
      FieldName = 'DATADECADASTRO'
      Origin = 'DATADECADASTRO'
    end
    object TabClienteULTIMAALTERACAO: TDateField
      FieldName = 'ULTIMAALTERACAO'
      Origin = 'ULTIMAALTERACAO'
    end
    object TabClienteSPCDATARETIRADA: TDateField
      FieldName = 'SPCDATARETIRADA'
      Origin = 'SPCDATARETIRADA'
    end
    object TabClienteSPCDATAREGISTRO: TDateField
      FieldName = 'SPCDATAREGISTRO'
      Origin = 'SPCDATAREGISTRO'
    end
    object TabClienteDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
      Origin = 'DATANASCIMENTO'
    end
  end
  object QRY_Usuarios: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from uctabusers uc where uc.uctyperec = :uctyperec')
    Left = 80
    Top = 320
    ParamData = <
      item
        Name = 'UCTYPEREC'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
        Value = Null
      end>
    object QRY_UsuariosUCIDUSER: TIntegerField
      FieldName = 'UCIDUSER'
      Origin = 'UCIDUSER'
    end
    object QRY_UsuariosUCUSERNAME: TStringField
      FieldName = 'UCUSERNAME'
      Origin = 'UCUSERNAME'
      Size = 30
    end
    object QRY_UsuariosUCLOGIN: TStringField
      FieldName = 'UCLOGIN'
      Origin = 'UCLOGIN'
      Size = 30
    end
    object QRY_UsuariosUCPASSWORD: TStringField
      FieldName = 'UCPASSWORD'
      Origin = 'UCPASSWORD'
      Size = 250
    end
    object QRY_UsuariosUCPASSEXPIRED: TStringField
      FieldName = 'UCPASSEXPIRED'
      Origin = 'UCPASSEXPIRED'
      FixedChar = True
      Size = 10
    end
    object QRY_UsuariosUCUSEREXPIRED: TIntegerField
      FieldName = 'UCUSEREXPIRED'
      Origin = 'UCUSEREXPIRED'
    end
    object QRY_UsuariosUCUSERDAYSSUN: TIntegerField
      FieldName = 'UCUSERDAYSSUN'
      Origin = 'UCUSERDAYSSUN'
    end
    object QRY_UsuariosUCEMAIL: TStringField
      FieldName = 'UCEMAIL'
      Origin = 'UCEMAIL'
      Size = 150
    end
    object QRY_UsuariosUCPRIVILEGED: TIntegerField
      FieldName = 'UCPRIVILEGED'
      Origin = 'UCPRIVILEGED'
    end
    object QRY_UsuariosUCTYPEREC: TStringField
      FieldName = 'UCTYPEREC'
      Origin = 'UCTYPEREC'
      FixedChar = True
      Size = 1
    end
    object QRY_UsuariosUCPROFILE: TIntegerField
      FieldName = 'UCPROFILE'
      Origin = 'UCPROFILE'
    end
    object QRY_UsuariosUCKEY: TStringField
      FieldName = 'UCKEY'
      Origin = 'UCKEY'
      Size = 250
    end
    object QRY_UsuariosUCINATIVE: TIntegerField
      FieldName = 'UCINATIVE'
      Origin = 'UCINATIVE'
    end
    object QRY_UsuariosUCIMAGE: TMemoField
      FieldName = 'UCIMAGE'
      Origin = 'UCIMAGE'
      BlobType = ftMemo
    end
  end
end
