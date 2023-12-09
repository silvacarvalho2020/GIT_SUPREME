object ServiceConfigACBr: TServiceConfigACBr
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 546
  Width = 1034
  object FDConn: TFDConnection
    Params.Strings = (
      
        'Database=E:\[DBs_DELPHIGOV]\DB_SISTEMA(3.0)\Michael_Consultoria\' +
        'BANCODADOS_30.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=127.0.0.1'
      'Port=3030'
      'CharacterSet=win1252'
      'DriverID=FB')
    LoginPrompt = False
    Left = 112
    Top = 16
  end
  object QRY_CONFIG_CERTIFICADO: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from config_certificado order by cer_codigo')
    Left = 112
    Top = 96
    object QRY_CONFIG_CERTIFICADOCER_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CER_CODIGO'
      Origin = 'CER_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_CONFIG_CERTIFICADOCER_SSLLIB: TIntegerField
      FieldName = 'CER_SSLLIB'
      Origin = 'CER_SSLLIB'
    end
    object QRY_CONFIG_CERTIFICADOCER_CRYPTLIB: TIntegerField
      FieldName = 'CER_CRYPTLIB'
      Origin = 'CER_CRYPTLIB'
    end
    object QRY_CONFIG_CERTIFICADOCER_HTTPLIB: TIntegerField
      FieldName = 'CER_HTTPLIB'
      Origin = 'CER_HTTPLIB'
    end
    object QRY_CONFIG_CERTIFICADOCER_XMLSIGNLIB: TIntegerField
      FieldName = 'CER_XMLSIGNLIB'
      Origin = 'CER_XMLSIGNLIB'
    end
    object QRY_CONFIG_CERTIFICADOCER_URL: TStringField
      FieldName = 'CER_URL'
      Origin = 'CER_URL'
      Size = 200
    end
    object QRY_CONFIG_CERTIFICADOCER_CAMINHO: TStringField
      FieldName = 'CER_CAMINHO'
      Origin = 'CER_CAMINHO'
      Size = 200
    end
    object QRY_CONFIG_CERTIFICADOCER_SENHA: TStringField
      FieldName = 'CER_SENHA'
      Origin = 'CER_SENHA'
      Size = 50
    end
    object QRY_CONFIG_CERTIFICADOCER_NUMSERIE: TStringField
      FieldName = 'CER_NUMSERIE'
      Origin = 'CER_NUMSERIE'
      Size = 100
    end
  end
  object QRY_CONFIG_GERAL: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from config_geral order by ger_codigo')
    Left = 112
    Top = 160
    object QRY_CONFIG_GERALGER_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'GER_CODIGO'
      Origin = 'GER_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_CONFIG_GERALGER_ATUALIZARXML: TBooleanField
      FieldName = 'GER_ATUALIZARXML'
      Origin = 'GER_ATUALIZARXML'
    end
    object QRY_CONFIG_GERALGER_EXIBIRERROSCHEMA: TBooleanField
      FieldName = 'GER_EXIBIRERROSCHEMA'
      Origin = 'GER_EXIBIRERROSCHEMA'
    end
    object QRY_CONFIG_GERALGER_RETIRARACENTOS: TBooleanField
      FieldName = 'GER_RETIRARACENTOS'
      Origin = 'GER_RETIRARACENTOS'
    end
    object QRY_CONFIG_GERALGER_SALVAR: TBooleanField
      FieldName = 'GER_SALVAR'
      Origin = 'GER_SALVAR'
    end
    object QRY_CONFIG_GERALGER_FORMATOALERTA: TStringField
      FieldName = 'GER_FORMATOALERTA'
      Origin = 'GER_FORMATOALERTA'
      Size = 200
    end
    object QRY_CONFIG_GERALGER_PATHSALVAR: TStringField
      FieldName = 'GER_PATHSALVAR'
      Origin = 'GER_PATHSALVAR'
      Size = 200
    end
    object QRY_CONFIG_GERALGER_PATHSCHEMAS: TStringField
      FieldName = 'GER_PATHSCHEMAS'
      Origin = 'GER_PATHSCHEMAS'
      Size = 200
    end
    object QRY_CONFIG_GERALGER_IDTOKEN: TStringField
      FieldName = 'GER_IDTOKEN'
      Origin = 'GER_IDTOKEN'
      Size = 100
    end
    object QRY_CONFIG_GERALGER_TOKEN: TStringField
      FieldName = 'GER_TOKEN'
      Origin = 'GER_TOKEN'
      Size = 100
    end
    object QRY_CONFIG_GERALGER_ULTNSU: TIntegerField
      FieldName = 'GER_ULTNSU'
      Origin = 'GER_ULTNSU'
    end
    object QRY_CONFIG_GERALGER_FORMAEMISSAO: TIntegerField
      FieldName = 'GER_FORMAEMISSAO'
      Origin = 'GER_FORMAEMISSAO'
    end
    object QRY_CONFIG_GERALGER_MODELODF: TIntegerField
      FieldName = 'GER_MODELODF'
      Origin = 'GER_MODELODF'
    end
    object QRY_CONFIG_GERALGER_VERSAODF: TIntegerField
      FieldName = 'GER_VERSAODF'
      Origin = 'GER_VERSAODF'
    end
  end
  object QRY_CONFIG_WEBSERVICE: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from config_webservice order by web_codigo')
    Left = 112
    Top = 224
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
  object QRY_CONFIG_PROXY: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from config_proxy order by pro_codigo')
    Left = 104
    Top = 304
    object QRY_CONFIG_PROXYPRO_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PRO_CODIGO'
      Origin = 'PRO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_CONFIG_PROXYPRO_HOST: TStringField
      FieldName = 'PRO_HOST'
      Origin = 'PRO_HOST'
      Size = 200
    end
    object QRY_CONFIG_PROXYPRO_PORTA: TStringField
      FieldName = 'PRO_PORTA'
      Origin = 'PRO_PORTA'
      Size = 50
    end
    object QRY_CONFIG_PROXYPRO_USER: TStringField
      FieldName = 'PRO_USER'
      Origin = 'PRO_USER'
      Size = 100
    end
    object QRY_CONFIG_PROXYPRO_PASS: TStringField
      FieldName = 'PRO_PASS'
      Origin = 'PRO_PASS'
      Size = 50
    end
  end
  object QRY_CONFIG_ARQUIVOS: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from config_arquivos order by arq_codigo')
    Left = 104
    Top = 368
    object QRY_CONFIG_ARQUIVOSARQ_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ARQ_CODIGO'
      Origin = 'ARQ_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_CONFIG_ARQUIVOSARQ_SALVAR: TBooleanField
      FieldName = 'ARQ_SALVAR'
      Origin = 'ARQ_SALVAR'
    end
    object QRY_CONFIG_ARQUIVOSARQ_PASTAMENSAL: TBooleanField
      FieldName = 'ARQ_PASTAMENSAL'
      Origin = 'ARQ_PASTAMENSAL'
    end
    object QRY_CONFIG_ARQUIVOSARQ_ADDLITERAL: TBooleanField
      FieldName = 'ARQ_ADDLITERAL'
      Origin = 'ARQ_ADDLITERAL'
    end
    object QRY_CONFIG_ARQUIVOSARQ_EMISSAOPATHNFE: TBooleanField
      FieldName = 'ARQ_EMISSAOPATHNFE'
      Origin = 'ARQ_EMISSAOPATHNFE'
    end
    object QRY_CONFIG_ARQUIVOSARQ_SALVARPATHEVENTO: TBooleanField
      FieldName = 'ARQ_SALVARPATHEVENTO'
      Origin = 'ARQ_SALVARPATHEVENTO'
    end
    object QRY_CONFIG_ARQUIVOSARQ_SEPARARPORCNPJ: TBooleanField
      FieldName = 'ARQ_SEPARARPORCNPJ'
      Origin = 'ARQ_SEPARARPORCNPJ'
    end
    object QRY_CONFIG_ARQUIVOSARQ_SEPARARPORMODELO: TBooleanField
      FieldName = 'ARQ_SEPARARPORMODELO'
      Origin = 'ARQ_SEPARARPORMODELO'
    end
    object QRY_CONFIG_ARQUIVOSARQ_PATHNFE: TStringField
      FieldName = 'ARQ_PATHNFE'
      Origin = 'ARQ_PATHNFE'
      Size = 200
    end
    object QRY_CONFIG_ARQUIVOSARQ_PATHINU: TStringField
      FieldName = 'ARQ_PATHINU'
      Origin = 'ARQ_PATHINU'
      Size = 200
    end
    object QRY_CONFIG_ARQUIVOSARQ_PATHEVENTO: TStringField
      FieldName = 'ARQ_PATHEVENTO'
      Origin = 'ARQ_PATHEVENTO'
      Size = 200
    end
    object QRY_CONFIG_ARQUIVOSARQ_PATHPDF: TStringField
      FieldName = 'ARQ_PATHPDF'
      Origin = 'ARQ_PATHPDF'
      Size = 200
    end
    object QRY_CONFIG_ARQUIVOSARQ_PATHDOWNLOAD: TStringField
      FieldName = 'ARQ_PATHDOWNLOAD'
      Origin = 'ARQ_PATHDOWNLOAD'
      Size = 200
    end
    object QRY_CONFIG_ARQUIVOSARQ_LOGS: TStringField
      FieldName = 'ARQ_LOGS'
      Origin = 'ARQ_LOGS'
      Size = 200
    end
  end
  object QRY_CONFIG_DANFE: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from config_danfe order by dan_codigo')
    Left = 280
    Top = 96
    object QRY_CONFIG_DANFEDAN_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'DAN_CODIGO'
      Origin = 'DAN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_CONFIG_DANFEDAN_TIPO: TIntegerField
      FieldName = 'DAN_TIPO'
      Origin = 'DAN_TIPO'
    end
    object QRY_CONFIG_DANFEDAN_LOGOMARCA: TStringField
      FieldName = 'DAN_LOGOMARCA'
      Origin = 'DAN_LOGOMARCA'
      Size = 200
    end
    object QRY_CONFIG_DANFEDAN_TIPODANFCE: TIntegerField
      FieldName = 'DAN_TIPODANFCE'
      Origin = 'DAN_TIPODANFCE'
    end
  end
  object QRY_CONFIG_POSPRINTER: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from config_posprinter order by pos_codigo')
    Left = 288
    Top = 160
    object QRY_CONFIG_POSPRINTERPOS_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'POS_CODIGO'
      Origin = 'POS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_CONFIG_POSPRINTERPOS_MODELO: TIntegerField
      FieldName = 'POS_MODELO'
      Origin = 'POS_MODELO'
    end
    object QRY_CONFIG_POSPRINTERPOS_PORTA: TStringField
      FieldName = 'POS_PORTA'
      Origin = 'POS_PORTA'
      Size = 50
    end
    object QRY_CONFIG_POSPRINTERPOS_PAGINADECODIGO: TIntegerField
      FieldName = 'POS_PAGINADECODIGO'
      Origin = 'POS_PAGINADECODIGO'
    end
    object QRY_CONFIG_POSPRINTERPOS_COLUNAS: TIntegerField
      FieldName = 'POS_COLUNAS'
      Origin = 'POS_COLUNAS'
    end
    object QRY_CONFIG_POSPRINTERPOS_ESPACOLINHAS: TIntegerField
      FieldName = 'POS_ESPACOLINHAS'
      Origin = 'POS_ESPACOLINHAS'
    end
    object QRY_CONFIG_POSPRINTERPOS_LINHASENTRECUPONS: TIntegerField
      FieldName = 'POS_LINHASENTRECUPONS'
      Origin = 'POS_LINHASENTRECUPONS'
    end
    object QRY_CONFIG_POSPRINTERPOS_CORTARPAPEL: TBooleanField
      FieldName = 'POS_CORTARPAPEL'
      Origin = 'POS_CORTARPAPEL'
    end
    object QRY_CONFIG_POSPRINTERPOS_PARAMSSTRING: TStringField
      FieldName = 'POS_PARAMSSTRING'
      Origin = 'POS_PARAMSSTRING'
      Size = 200
    end
  end
  object QRY_Aux: TFDQuery
    Connection = FDConn
    Left = 568
    Top = 232
  end
end
