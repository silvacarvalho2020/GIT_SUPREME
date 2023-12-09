inherited ViewACBrFiscal: TViewACBrFiscal
  Caption = 'Configura'#231#227'o Geral do PDV'
  ClientHeight = 729
  ClientWidth = 1008
  Position = poScreenCenter
  ExplicitWidth = 1024
  ExplicitHeight = 768
  TextHeight = 21
  object PC_configuracoes: TPageControl
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 988
    Height = 664
    Cursor = crHandPoint
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    ActivePage = tab_emitente
    Align = alClient
    TabHeight = 40
    TabOrder = 0
    object tab_emitente: TTabSheet
      Caption = '[ EMITENTE ]'
      object gbxEmitente: TGroupBox
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 960
        Height = 594
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alClient
        Caption = '[ EMITENTE ]'
        TabOrder = 0
        object lblCNPJ: TLabel
          Left = 13
          Top = 36
          Width = 36
          Height = 21
          Caption = 'CNPJ'
        end
        object lblIe: TLabel
          Left = 200
          Top = 36
          Width = 53
          Height = 21
          Caption = 'Insc.Est.'
        end
        object lblRazaoSocial: TLabel
          Left = 13
          Top = 99
          Width = 87
          Height = 21
          Caption = 'Raz'#227'o Social'
        end
        object lblFantasia: TLabel
          Left = 493
          Top = 99
          Width = 56
          Height = 21
          Caption = 'Fantasia'
        end
        object lblLogradouro: TLabel
          Left = 13
          Top = 161
          Width = 82
          Height = 21
          Caption = 'Logradouro'
        end
        object lblNumero: TLabel
          Left = 588
          Top = 161
          Width = 58
          Height = 21
          Caption = 'N'#250'mero'
        end
        object lblComplemento: TLabel
          Left = 665
          Top = 161
          Width = 99
          Height = 21
          Caption = 'Complemento'
        end
        object lblBairro: TLabel
          Left = 12
          Top = 220
          Width = 42
          Height = 21
          Caption = 'Bairro'
        end
        object lblCodCidade: TLabel
          Left = 330
          Top = 220
          Width = 87
          Height = 21
          Caption = 'C'#243'd. Cidade '
        end
        object lblCidade: TLabel
          Left = 461
          Top = 220
          Width = 48
          Height = 21
          Caption = 'Cidade'
        end
        object lblUF: TLabel
          Left = 855
          Top = 220
          Width = 19
          Height = 21
          Caption = 'UF'
        end
        object lblCEP: TLabel
          Left = 460
          Top = 161
          Width = 27
          Height = 21
          Caption = 'CEP'
        end
        object lblFone: TLabel
          Left = 330
          Top = 161
          Width = 34
          Height = 21
          Caption = 'Fone'
        end
        object lblTipoEmpresa: TLabel
          Left = 383
          Top = 36
          Width = 118
          Height = 21
          Caption = 'Tipo de Empresa:'
        end
        object edtEmitCNPJ: TEdit
          Left = 13
          Top = 63
          Width = 182
          Height = 29
          TabOrder = 0
        end
        object edtEmitIE: TEdit
          Left = 201
          Top = 63
          Width = 176
          Height = 29
          TabOrder = 1
        end
        object edtEmitRazao: TEdit
          Left = 13
          Top = 126
          Width = 477
          Height = 29
          TabOrder = 3
        end
        object edtEmitFantasia: TEdit
          Left = 493
          Top = 126
          Width = 453
          Height = 29
          TabOrder = 4
        end
        object edtEmitFone: TEdit
          Left = 330
          Top = 188
          Width = 125
          Height = 29
          TabOrder = 6
        end
        object edtEmitCEP: TEdit
          Left = 461
          Top = 188
          Width = 123
          Height = 29
          TabOrder = 7
        end
        object edtEmitLogradouro: TEdit
          Left = 13
          Top = 188
          Width = 311
          Height = 29
          TabOrder = 5
        end
        object edtEmitNumero: TEdit
          Left = 590
          Top = 188
          Width = 71
          Height = 29
          TabOrder = 8
        end
        object edtEmitComp: TEdit
          Left = 664
          Top = 188
          Width = 282
          Height = 29
          TabOrder = 9
        end
        object edtEmitBairro: TEdit
          Left = 13
          Top = 247
          Width = 311
          Height = 29
          TabOrder = 10
        end
        object edtEmitCodCidade: TEdit
          Left = 330
          Top = 247
          Width = 125
          Height = 29
          TabOrder = 11
        end
        object edtEmitCidade: TEdit
          Left = 461
          Top = 247
          Width = 388
          Height = 29
          TabOrder = 12
        end
        object edtEmitUF: TEdit
          Left = 855
          Top = 247
          Width = 91
          Height = 29
          TabOrder = 13
        end
        object cbTipoEmpresa: TComboBox
          Left = 385
          Top = 63
          Width = 561
          Height = 29
          Cursor = crHandPoint
          Style = csDropDownList
          TabOrder = 2
          Items.Strings = (
            'Simples Nacional'
            'Simples Nacional, excesso sublimite de receita bruta'
            'Regime Normal')
        end
        object pnlEmitente: TPanel
          Left = 2
          Top = 23
          Width = 956
          Height = 569
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Emitente'
          Color = 14737632
          ParentBackground = False
          TabOrder = 14
        end
      end
    end
    object tab_certificado: TTabSheet
      Caption = '[ CERT. DIGITAL ]'
      object gbxCertificado: TGroupBox
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 960
        Height = 594
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alClient
        Caption = '[ CERTIFICADO ]'
        TabOrder = 0
        object lblCaminhoCertificado: TLabel
          Left = 7
          Top = 29
          Width = 63
          Height = 21
          Caption = 'Caminho'
        end
        object lblSenhaCertificado: TLabel
          Left = 8
          Top = 143
          Width = 43
          Height = 21
          Caption = 'Senha'
        end
        object lblNumSerieCertificado: TLabel
          Left = 678
          Top = 85
          Width = 118
          Height = 21
          Caption = 'N'#250'mero de S'#233'rie'
        end
        object sbtnGetCert: TSpeedButton
          Left = 903
          Top = 108
          Width = 23
          Height = 28
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
        end
        object sbtnNumSerie: TSpeedButton
          Left = 874
          Top = 108
          Width = 26
          Height = 27
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
        end
        object lblUrlPFX: TLabel
          Left = 8
          Top = 85
          Width = 94
          Height = 21
          Caption = 'URL para PFX'
        end
        object lXmlSign: TLabel
          Left = 654
          Top = 143
          Width = 83
          Height = 21
          Alignment = taRightJustify
          Caption = 'XMLSignLib'
          Color = clBtnFace
          ParentColor = False
        end
        object lHttpLib: TLabel
          Left = 491
          Top = 143
          Width = 51
          Height = 21
          Alignment = taRightJustify
          Caption = 'HttpLib'
          Color = clBtnFace
          ParentColor = False
        end
        object lCryptLib: TLabel
          Left = 329
          Top = 143
          Width = 59
          Height = 21
          Alignment = taRightJustify
          Caption = 'CryptLib'
          Color = clBtnFace
          ParentColor = False
        end
        object lSSLLib: TLabel
          Left = 167
          Top = 143
          Width = 47
          Height = 21
          Alignment = taRightJustify
          Caption = 'SSLLib'
          Color = clBtnFace
          ParentColor = False
        end
        object edtSenha: TEdit
          Left = 8
          Top = 170
          Width = 153
          Height = 29
          PasswordChar = '*'
          TabOrder = 3
        end
        object edtNumSerie: TEdit
          Left = 678
          Top = 108
          Width = 193
          Height = 29
          TabOrder = 2
        end
        object edtURLPFX: TEdit
          Left = 8
          Top = 108
          Width = 667
          Height = 29
          TabOrder = 1
        end
        object cbXmlSignLib: TComboBox
          Left = 654
          Top = 170
          Width = 160
          Height = 29
          Style = csDropDownList
          TabOrder = 7
        end
        object cbHttpLib: TComboBox
          Left = 491
          Top = 170
          Width = 160
          Height = 29
          Style = csDropDownList
          TabOrder = 6
        end
        object cbCryptLib: TComboBox
          Left = 329
          Top = 170
          Width = 160
          Height = 29
          Style = csDropDownList
          TabOrder = 5
        end
        object cbSSLLib: TComboBox
          Left = 167
          Top = 170
          Width = 160
          Height = 29
          Style = csDropDownList
          TabOrder = 4
        end
        object edtCaminho: TSearchBox
          Left = 7
          Top = 53
          Width = 890
          Height = 29
          TabOrder = 0
        end
        object pnlCertificado: TPanel
          Left = 2
          Top = 23
          Width = 956
          Height = 569
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Certificado'
          Color = 14737632
          ParentBackground = False
          TabOrder = 8
          ExplicitHeight = 573
        end
      end
    end
    object tab_geral: TTabSheet
      Caption = '[ GERAL ]'
      ImageIndex = 1
      object gbxGeral: TGroupBox
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 960
        Height = 594
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alClient
        Caption = '[ GERAL ]'
        TabOrder = 0
        object lblFormaEmissao: TLabel
          Left = 20
          Top = 316
          Width = 127
          Height = 21
          Caption = 'Forma de Emiss'#227'o'
        end
        object lblFormatoAlerta: TLabel
          Left = 20
          Top = 165
          Width = 104
          Height = 21
          Caption = 'Formato Alerta'
        end
        object lblModeloDocFiscal: TLabel
          Left = 20
          Top = 380
          Width = 180
          Height = 21
          Caption = 'Modelo Documento Fiscal'
        end
        object lblVersaoDocFiscal: TLabel
          Left = 20
          Top = 252
          Width = 174
          Height = 21
          Caption = 'Vers'#227'o Documento Fiscal'
        end
        object lblIdToken: TLabel
          Left = 303
          Top = 316
          Width = 260
          Height = 21
          Caption = 'IdToken/IdCSC (Somente para NFC-e)'
        end
        object lblTokenCSC: TLabel
          Left = 303
          Top = 252
          Width = 234
          Height = 21
          Caption = 'Token/CSC (Somente para NFC-e)'
        end
        object lblCaminhoSchemas: TLabel
          Left = 20
          Top = 106
          Width = 292
          Height = 21
          Caption = 'Diret'#243'rios com os arquivos XSD(Schemas)'
        end
        object lblLogs: TLabel
          Left = 20
          Top = 43
          Width = 202
          Height = 21
          Caption = 'Caminho para Salvar os Logs'
        end
        object ckSalvar: TCheckBox
          Left = 607
          Top = 287
          Width = 289
          Height = 15
          Caption = 'Salvar Arquivos de Envio e Resposta'
          TabOrder = 6
        end
        object cbFormaEmissao: TComboBox
          Left = 20
          Top = 343
          Width = 248
          Height = 29
          TabOrder = 9
        end
        object cbxAtualizarXML: TCheckBox
          Left = 607
          Top = 304
          Width = 145
          Height = 33
          Caption = 'Atualizar XML'
          TabOrder = 7
        end
        object cbxExibirErroSchema: TCheckBox
          Left = 607
          Top = 335
          Width = 201
          Height = 17
          Caption = 'Exibir Erro Schema'
          TabOrder = 8
        end
        object cbModeloDF: TComboBox
          Left = 20
          Top = 407
          Width = 248
          Height = 29
          TabOrder = 11
        end
        object cbxRetirarAcentos: TCheckBox
          Left = 607
          Top = 264
          Width = 273
          Height = 17
          Caption = 'Retirar Acentos dos XMLs enviados'
          TabOrder = 3
        end
        object cbVersaoDF: TComboBox
          Left = 20
          Top = 279
          Width = 248
          Height = 29
          TabOrder = 4
        end
        object edtIdToken: TEdit
          Left = 303
          Top = 343
          Width = 248
          Height = 29
          TabOrder = 10
        end
        object edtToken: TEdit
          Left = 303
          Top = 279
          Width = 248
          Height = 29
          TabOrder = 5
        end
        object edtFormatoAlerta: TEdit
          Left = 20
          Top = 192
          Width = 869
          Height = 29
          TabOrder = 2
          Text = 'edtFormatoAlerta'
        end
        object edtPathLogs: TSearchBox
          Left = 20
          Top = 70
          Width = 869
          Height = 29
          TabOrder = 0
        end
        object edtPathSchemas: TSearchBox
          Left = 20
          Top = 131
          Width = 869
          Height = 29
          TabOrder = 1
        end
      end
    end
    object tab_webservice: TTabSheet
      Caption = '[ WEB. SERVICE ]'
      ImageIndex = 2
      object gbxWebService: TGroupBox
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 366
        Height = 594
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'WebService'
        TabOrder = 1
        object lblUFEmitente: TLabel
          Left = 8
          Top = 21
          Width = 179
          Height = 21
          Caption = 'Selecione UF do Emitente:'
        end
        object lTimeOut: TLabel
          Left = 279
          Top = 151
          Width = 60
          Height = 21
          Caption = 'TimeOut'
          Color = clBtnFace
          ParentColor = False
        end
        object lSSLLib1: TLabel
          Left = 8
          Top = 280
          Width = 57
          Height = 21
          Alignment = taRightJustify
          Caption = 'SSLType'
          Color = clBtnFace
          ParentColor = False
        end
        object cbxVisualizar: TCheckBox
          Left = 8
          Top = 161
          Width = 169
          Height = 17
          Caption = 'Visualizar Mensagem'
          TabOrder = 2
        end
        object cbUF: TComboBox
          Left = 8
          Top = 48
          Width = 249
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 13
          ParentFont = False
          TabOrder = 0
          Text = 'PA'
          Items.Strings = (
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RJ'
            'RN'
            'RS'
            'RO'
            'RR'
            'SC'
            'SP'
            'SE'
            'TO')
        end
        object rgTipoAmb: TRadioGroup
          Left = 3
          Top = 93
          Width = 249
          Height = 52
          Caption = 'Selecione o Ambiente de Destino'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Produ'#231#227'o'
            'Homologa'#231#227'o')
          TabOrder = 1
        end
        object cbxSalvarSOAP: TCheckBox
          Left = 8
          Top = 184
          Width = 177
          Height = 17
          Caption = 'Salvar envelope SOAP'
          TabOrder = 4
        end
        object seTimeOut: TSpinEdit
          Left = 279
          Top = 178
          Width = 66
          Height = 31
          Increment = 10
          MaxValue = 999999
          MinValue = 1000
          TabOrder = 3
          Value = 5000
        end
        object cbSSLType: TComboBox
          Left = 8
          Top = 307
          Width = 160
          Height = 29
          Hint = 'Depende de configura'#231#227'o de  SSL.HttpLib'
          Style = csDropDownList
          TabOrder = 5
        end
      end
      object pnlDadosWerService: TPanel
        Left = 386
        Top = 0
        Width = 594
        Height = 614
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitHeight = 618
        object gbProxy: TGroupBox
          AlignWithMargins = True
          Left = 10
          Top = 164
          Width = 574
          Height = 440
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alClient
          Caption = 'Proxy'
          TabOrder = 1
          ExplicitHeight = 444
          object lblHost: TLabel
            Left = 19
            Top = 32
            Width = 32
            Height = 21
            Caption = 'Host'
          end
          object lblPorta: TLabel
            Left = 219
            Top = 32
            Width = 36
            Height = 21
            Caption = 'Porta'
          end
          object lblUsuario: TLabel
            Left = 19
            Top = 104
            Width = 54
            Height = 21
            Caption = 'Usu'#225'rio'
          end
          object lblSenha: TLabel
            Left = 149
            Top = 104
            Width = 43
            Height = 21
            Caption = 'Senha'
          end
          object edtProxyHost: TEdit
            Left = 19
            Top = 59
            Width = 193
            Height = 29
            TabOrder = 0
          end
          object edtProxyPorta: TEdit
            Left = 219
            Top = 59
            Width = 50
            Height = 29
            TabOrder = 1
          end
          object edtProxyUser: TEdit
            Left = 19
            Top = 129
            Width = 123
            Height = 29
            TabOrder = 2
          end
          object edtProxySenha: TEdit
            Left = 146
            Top = 129
            Width = 123
            Height = 29
            PasswordChar = '*'
            TabOrder = 3
          end
        end
        object gbxRetornoEnvio: TGroupBox
          AlignWithMargins = True
          Left = 10
          Top = 10
          Width = 574
          Height = 134
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alTop
          Caption = 'Retorno de Envio'
          TabOrder = 0
          object lblTentativas: TLabel
            Left = 104
            Top = 59
            Width = 68
            Height = 21
            Caption = 'Tentativas'
          end
          object lblIntervalo: TLabel
            Left = 187
            Top = 59
            Width = 61
            Height = 21
            Caption = 'Intervalo'
          end
          object lblAguardar: TLabel
            Left = 19
            Top = 59
            Width = 65
            Height = 21
            Hint = 
              'Aguardar quantos segundos para primeira consulta de retorno de e' +
              'nvio'
            Caption = 'Aguardar'
          end
          object cbxAjustarAut: TCheckBox
            Left = 19
            Top = 32
            Width = 342
            Height = 17
            Caption = 'Ajustar Automaticamente prop. "Aguardar"'
            TabOrder = 0
          end
          object edtTentativas: TEdit
            Left = 104
            Top = 86
            Width = 57
            Height = 29
            TabOrder = 2
          end
          object edtIntervalo: TEdit
            Left = 187
            Top = 86
            Width = 57
            Height = 29
            TabOrder = 3
          end
          object edtAguardar: TEdit
            Left = 19
            Top = 86
            Width = 57
            Height = 29
            Hint = 
              'Aguardar quantos segundos para primeira consulta de retorno de e' +
              'nvio'
            TabOrder = 1
          end
        end
      end
    end
    object tab_arquivos: TTabSheet
      Caption = '[ ARQUIVOS ]'
      ImageIndex = 4
      object gbxArquivos: TGroupBox
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 960
        Height = 594
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alClient
        Caption = '[ ARQUIVOS ]'
        TabOrder = 0
        ExplicitHeight = 598
        object Label35: TLabel
          Left = 22
          Top = 121
          Width = 134
          Height = 21
          Caption = 'Pasta Arquivos NFe'
        end
        object Label40: TLabel
          Left = 22
          Top = 226
          Width = 184
          Height = 21
          Caption = 'Pasta Arquivos Inutiliza'#231#227'o'
        end
        object Label47: TLabel
          Left = 22
          Top = 175
          Width = 153
          Height = 21
          Caption = 'Pasta Arquivos Evento'
        end
        object Label39: TLabel
          Left = 22
          Top = 280
          Width = 134
          Height = 21
          Caption = 'Pasta Arquivos PDF'
        end
        object Label53: TLabel
          Left = 22
          Top = 331
          Width = 261
          Height = 21
          Caption = 'Pasta Download de XMLs Distribui'#231#227'o'
        end
        object cbxSalvarArqs: TCheckBox
          Left = 716
          Top = 40
          Width = 210
          Height = 17
          Caption = 'Salvar Arquivos'
          TabOrder = 2
        end
        object cbxPastaMensal: TCheckBox
          Left = 335
          Top = 86
          Width = 255
          Height = 17
          Caption = 'Criar Pastas Mensalmente'
          TabOrder = 6
        end
        object cbxAdicionaLiteral: TCheckBox
          Left = 22
          Top = 40
          Width = 307
          Height = 17
          Caption = 'Adicionar Literal no nome das pastas'
          TabOrder = 0
        end
        object cbxEmissaoPathNFe: TCheckBox
          Left = 335
          Top = 63
          Width = 375
          Height = 17
          Caption = 'Salvar Documento pelo campo Data de Emiss'#227'o'
          TabOrder = 4
        end
        object cbxSalvaPathEvento: TCheckBox
          Left = 22
          Top = 86
          Width = 233
          Height = 17
          Caption = 'Salvar Arquivos de Eventos'
          TabOrder = 5
        end
        object cbxSepararPorCNPJ: TCheckBox
          Left = 22
          Top = 63
          Width = 311
          Height = 17
          Caption = 'Separar Arqs pelo CNPJ do Certificado'
          TabOrder = 3
        end
        object cbxSepararPorModelo: TCheckBox
          Left = 335
          Top = 40
          Width = 339
          Height = 17
          Caption = 'Separar Arqs pelo Modelo do Documento'
          TabOrder = 1
        end
        object edtPathNFe: TSearchBox
          Left = 22
          Top = 148
          Width = 790
          Height = 29
          TabOrder = 7
        end
        object edtPathEvento: TSearchBox
          Left = 22
          Top = 199
          Width = 790
          Height = 29
          TabOrder = 8
        end
        object edtPathInu: TSearchBox
          Left = 22
          Top = 253
          Width = 790
          Height = 29
          TabOrder = 9
        end
        object edtPathPDF: TSearchBox
          Left = 22
          Top = 304
          Width = 790
          Height = 29
          TabOrder = 10
        end
        object edtDownloadXML: TSearchBox
          Left = 22
          Top = 358
          Width = 790
          Height = 29
          TabOrder = 11
        end
      end
    end
    object tab_danfe: TTabSheet
      Caption = '[ DANFE / DOC. AUXILIAR ]'
      ImageIndex = 7
      object gbxDanfeDocAux: TGroupBox
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 960
        Height = 594
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alClient
        Caption = '[ DANFE / DOC. AUXILIAR ]'
        TabOrder = 0
        object Label7: TLabel
          Left = 16
          Top = 40
          Width = 82
          Height = 21
          Caption = 'Logo Marca'
        end
        object rgTipoDanfe: TRadioGroup
          Left = 496
          Top = 120
          Width = 257
          Height = 49
          Caption = 'DANFE'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Retrato'
            'Paisagem')
          TabOrder = 2
        end
        object gbEscPos: TGroupBox
          Left = 16
          Top = 120
          Width = 361
          Height = 329
          Caption = 'EscPos | POSPRINTER'
          TabOrder = 1
          object Label43: TLabel
            Left = 8
            Top = 24
            Width = 53
            Height = 21
            Caption = 'Modelo'
            Color = clBtnFace
            ParentColor = False
          end
          object Label44: TLabel
            Left = 8
            Top = 83
            Width = 36
            Height = 21
            Caption = 'Porta'
            Color = clBtnFace
            ParentColor = False
          end
          object Label45: TLabel
            Left = 8
            Top = 221
            Width = 78
            Height = 21
            Caption = 'Pag.Codigo'
            Color = clBtnFace
            ParentColor = False
          end
          object Label48: TLabel
            Left = 8
            Top = 158
            Width = 56
            Height = 21
            Caption = 'Colunas'
            Color = clBtnFace
            ParentColor = False
          end
          object Label49: TLabel
            Left = 80
            Top = 137
            Width = 55
            Height = 42
            Caption = 'Espa'#231'os'#13#10'Linhas'
            Color = clBtnFace
            ParentColor = False
          end
          object Label50: TLabel
            Left = 144
            Top = 137
            Width = 45
            Height = 42
            Caption = 'Linhas'#13#10'Pular'
            Color = clBtnFace
            ParentColor = False
          end
          object btSerial: TBitBtn
            Left = 210
            Top = 105
            Width = 30
            Height = 30
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232
              3232323E3E3E565656FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E3E3EFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF565656FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E3E3EFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF503200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              565656565656FFFFFFFFFFFF3232322626262626262626262626265032005032
              000000504873FFFFFFFFFFFFFFFFFFFF6E6E6EFFFFFFFFFFFFFFFFFFFFFFFF6E
              6E6E32323232323232323232323250320000005025AAFFFFFFFFFFFFFF565656
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5656563232323232326E6E6E5032005032
              008FFF6B8ED4FFFFFFFFFFFFFFFFFFFF3E3E3EFFFFFFFFFFFF50320050320056
              56564A4A4A5050003232325032005032008FFF6B8ED4FFFFFFFFFFFFFFFFFFFF
              FFFFFF5656563E3E3E2626265032006262625656565050003232325032005032
              008FFF6B8ED4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5050005050006E
              6E6E5656565050003250005032005032008FFF6B8ED4FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8686865656565656563250005032005032
              008FFF6B48B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232323E
              3E3EA4A0A08686866E6E6E565656503200C0C0C02557FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF5050004A4A4A3232323232323232323232325032
              00FFFFFF6B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            Layout = blGlyphTop
            ModalResult = 1
            TabOrder = 2
          end
          object cbxModeloPosPrinter: TComboBox
            Left = 8
            Top = 46
            Width = 233
            Height = 29
            Style = csDropDownList
            TabOrder = 0
          end
          object cbxPorta: TComboBox
            Left = 8
            Top = 105
            Width = 201
            Height = 29
            TabOrder = 1
          end
          object cbxPagCodigo: TComboBox
            Left = 8
            Top = 248
            Width = 101
            Height = 29
            Style = csDropDownList
            TabOrder = 7
          end
          object seColunas: TSpinEdit
            Left = 8
            Top = 180
            Width = 49
            Height = 31
            MaxValue = 9999
            MinValue = 0
            TabOrder = 3
            Value = 0
          end
          object seEspLinhas: TSpinEdit
            Left = 80
            Top = 180
            Width = 49
            Height = 31
            MaxValue = 9999
            MinValue = 0
            TabOrder = 4
            Value = 0
          end
          object seLinhasPular: TSpinEdit
            Left = 144
            Top = 180
            Width = 49
            Height = 31
            MaxValue = 9999
            MinValue = 0
            TabOrder = 5
            Value = 0
          end
          object cbCortarPapel: TCheckBox
            Left = 144
            Top = 244
            Width = 146
            Height = 19
            Hint = 
              'Conecta a Porta Serial a cada comando enviado'#13#10'Desconecta da Por' +
              'ta Serial ap'#243's o envio'
            Caption = 'Cortar Papel'
            Checked = True
            State = cbChecked
            TabOrder = 6
          end
        end
        object rgDANFCE: TRadioGroup
          Left = 496
          Top = 192
          Width = 257
          Height = 49
          Caption = 'DANFCE'
          Columns = 3
          ItemIndex = 0
          Items.Strings = (
            'Fortes'
            'EscPos'
            'A4')
          TabOrder = 3
        end
        object edtLogoMarca: TSearchBox
          Left = 16
          Top = 67
          Width = 905
          Height = 29
          TabOrder = 0
        end
      end
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 684
    Width = 1008
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    Color = 15329769
    ParentBackground = False
    TabOrder = 1
    object pnlBtnSalvar: TPanel
      AlignWithMargins = True
      Left = 880
      Top = 3
      Width = 125
      Height = 39
      Margins.Left = 0
      Align = alRight
      BevelOuter = bvNone
      Padding.Left = 2
      Padding.Top = 2
      Padding.Right = 2
      Padding.Bottom = 2
      TabOrder = 0
      object ShapeBtnSalvar: TShape
        Left = 2
        Top = 2
        Width = 121
        Height = 35
        Align = alClient
        Brush.Color = 4433682
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitLeft = 0
        ExplicitTop = 1
        ExplicitWidth = 185
        ExplicitHeight = 50
      end
      object btnSalvar: TSpeedButton
        Left = 2
        Top = 2
        Width = 121
        Height = 35
        Cursor = crHandPoint
        Align = alClient
        Caption = 'F6 | SALVAR'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFFFFF49FFFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFE2FFFFFF48000000000000000000000000000000000000
          000000000000FFFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFE2000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF9FFFFFF77FFFFFF1AFFFFFF1AFFFFFF77FFFFFFF9FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF7700000000000000000000000000000000FFFFFF78FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF1A00000000000000000000000000000000FFFFFF1BFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF1900000000000000000000000000000000FFFFFF18FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF7700000000000000000000000000000000FFFFFF77FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF9FFFFFF76FFFFFF1AFFFFFF1AFFFFFF77FFFFFFF9FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFF000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFF000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFF000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF88000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFF000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF8800000000000000000000000000000000000000000000
          000000000000FFFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF800000000000000000000000000000000000000000000000000000
          000000000000FFFFFF4AFFFFFFE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF80000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Margin = 5
        ParentFont = False
        OnClick = btnSalvarClick
        ExplicitTop = 0
      end
    end
  end
  object ACBrNFe: TACBrNFe
    MAIL = ACBrMail
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormaEmissao = teContingencia
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.AtualizarXMLCancelado = True
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 15000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.TimeOut = 20000
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = ACBrNFeDANFeRL
    Left = 58
    Top = 415
  end
  object ACBrNFeDANFeRL: TACBrNFeDANFeRL
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    Usuario = 'ACBr'
    MargemInferior = 0.700000000000000000
    MargemSuperior = 0.700000000000000000
    MargemEsquerda = 0.700000000000000000
    MargemDireita = 0.700000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 4
    CasasDecimais.vUnCom = 4
    CasasDecimais.MaskqCom = '###,###,###,##0.00'
    CasasDecimais.MaskvUnCom = '###,###,###,##0.00'
    ACBrNFe = ACBrNFe
    ExibeResumoCanhoto = False
    ExibeCampoFatura = False
    Left = 115
    Top = 415
  end
  object ACBrNFeDANFCeFortes: TACBrNFeDANFCeFortes
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = '###,###,###,##0.00'
    CasasDecimais.MaskvUnCom = '###,###,###,##0.00'
    TipoDANFE = tiSemGeracao
    ImprimeNomeFantasia = True
    FormularioContinuo = True
    FonteLinhaItem.Charset = DEFAULT_CHARSET
    FonteLinhaItem.Color = clWindowText
    FonteLinhaItem.Height = -9
    FonteLinhaItem.Name = 'Lucida Console'
    FonteLinhaItem.Style = []
    Left = 234
    Top = 415
  end
  object ACBrNFeDANFeESCPOS: TACBrNFeDANFeESCPOS
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 4
    CasasDecimais.vUnCom = 4
    CasasDecimais.MaskqCom = '###,###,###,##0.00'
    CasasDecimais.MaskvUnCom = '###,###,###,##0.00'
    TipoDANFE = tiSemGeracao
    FormularioContinuo = True
    PosPrinter = ACBrPosPrinter
    Left = 289
    Top = 415
  end
  object ACBrPosPrinter: TACBrPosPrinter
    Modelo = ppEscPosEpson
    Porta = 'COM9'
    EspacoEntreLinhas = 30
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 5
    Left = 177
    Top = 415
  end
  object ACBrMail: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 146
    Top = 415
  end
  object ACBrIntegrador: TACBrIntegrador
    PastaInput = 'C:\Integrador\Input\'
    PastaOutput = 'C:\Integrador\Output\'
    Left = 262
    Top = 414
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 315
    Top = 415
  end
  object ACBrNFeDANFCeFortesA4: TACBrNFeDANFCeFortesA4
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.099999999999999000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    FormularioContinuo = True
    Left = 208
    Top = 416
  end
  object DS_NFe_NFCe: TDataSource
    Left = 368
    Top = 416
  end
  object DS_Itens_NFe_NFCe: TDataSource
    Left = 344
    Top = 416
  end
  object ACBrNFeDANFEFR: TACBrNFeDANFEFR
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.100000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    FastFile = 
      'E:\Programa'#231#227'o\[ DELPHIGOV ]\git_Consultoria\05_michael\trunk\pd' +
      'v\Docs\Report\DANFeRetrato.fr3'
    EspessuraBorda = 1
    BorderIcon = [biSystemMenu, biMinimize, biMaximize]
    ThreadSafe = False
    Left = 88
    Top = 418
  end
  object ACBrValidador: TACBrValidador
    IgnorarChar = './-'
    Left = 392
    Top = 418
  end
  object ACBrNFeDANFCEFR: TACBrNFeDANFCEFR
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.100000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    FastFile = 
      'E:\Programa'#231#227'o\[ DELPHIGOV ]\git_Consultoria\05_michael\trunk\pd' +
      'v\Docs\Report\DANFeNFCe5_00.fr3'
    BorderIcon = [biSystemMenu, biMinimize, biMaximize]
    ThreadSafe = False
    Left = 536
    Top = 474
  end
  object frxReport: TfrxReport
    Tag = 1
    Version = '2022.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 256
    ReportOptions.CreateDate = 40401.475989294000000000
    ReportOptions.LastChange = 42878.431362407400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure ReportTitle1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  ReportTitle1.Visible := <Parametros."LogoCarregado"> <> '#39#39';'
      '  ImgLogo.Visible := <Parametros."LogoCarregado"> <> '#39#39';      '
      
        '  MensagemFiscal.Visible := <Identificacao."MensagemFiscal"> <> ' +
        #39#193'REA DE MENSAGEM FISCAL'#39';'
      'end;'
      ''
      'procedure ValorTributosOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  ValorTributos.Visible := <CalculoImposto."VTotTrib"> > 0;'
      'end;'
      ''
      'procedure DadosPagamentoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  ChildTroco.Visible := <CalculoImposto."vTroco"> > 0;'
      'end;'
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  ChildContingenciaCabecalho.Visible := <Identificacao."TpEmis">' +
        ' = 9;'
      
        '  ChildContingenciaIdentificacao.Visible := ChildContingenciaCab' +
        'ecalho.Visible;'
      '  Memo25.Visible := not(ChildContingenciaCabecalho.Visible);'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 824
    Top = 80
    Datasets = <
      item
        DataSetName = 'Identificacao'
      end
      item
        DataSetName = 'Emitente'
      end
      item
        DataSetName = 'Destinatario'
      end
      item
        DataSetName = 'DadosProdutos'
      end
      item
        DataSetName = 'Parametros'
      end
      item
        DataSetName = 'Duplicatas'
      end
      item
        DataSetName = 'CalculoImposto'
      end
      item
        DataSetName = 'Transportador'
      end
      item
        DataSetName = 'Veiculo'
      end
      item
        DataSetName = 'Volumes'
      end
      item
        DataSetName = 'Eventos'
      end
      item
        DataSetName = 'ISSQN'
      end
      item
        DataSetName = 'Fatura'
      end
      item
        DataSetName = 'LocalRetirada'
      end
      item
        DataSetName = 'LocalEntrega'
      end
      item
        DataSetName = 'InformacoesAdicionais'
      end
      item
        DataSetName = 'Pagamento'
      end
      item
        DataSetName = 'Inutilizacao'
      end>
    Variables = <
      item
        Name = ' User'
        Value = Null
      end
      item
        Name = 'LinhasImpressas'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 72.000000000000000000
      PaperHeight = 3276.000000000000000000
      PaperSize = 256
      TopMargin = 0.500000000000000000
      Frame.Typ = []
      LargeDesignHeight = True
      MirrorMode = []
      PrintIfEmpty = False
      OnBeforePrint = 'Page1OnBeforePrint'
      object ValorTributos: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 17.007874015748000000
        Top = 994.016390000000000000
        Width = 272.126160000000000000
        OnBeforePrint = 'ValorTributosOnBeforePrint'
        RowCount = 1
        object Memo17: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 1.889763779999950000
          Width = 272.126160000000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Tributos Incidentes (Lei Federal 12.741/2012): R$ [CalculoImpost' +
              'o."vTotTrib" #n%2,2f] [CalculoImposto."VTribFonte"]')
          ParentFont = False
        end
      end
      object MensagemFiscal: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 16.897632910000000000
        Top = 582.047620000000000000
        Width = 272.126160000000000000
        RowCount = 1
        Stretched = True
        object Memo6: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 1.220469999999980000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."MensagemFiscal"]')
          ParentFont = False
          WordBreak = True
        end
      end
      object QRCode: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 120.944881890000000000
        Top = 850.394250000000000000
        Width = 272.126160000000000000
        RowCount = 1
        object ImgQrCode: TfrxPictureView
          Align = baWidth
          AllowVectorExport = True
          Top = 1.889763779999950000
          Width = 272.126160000000000000
          Height = 117.165322600000000000
          Center = True
          Frame.Color = clFuchsia
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object DadosProdutos: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456702680000000000
        Top = 355.275820000000000000
        Width = 272.126160000000000000
        OnBeforePrint = 'DadosProdutosOnBeforePrint'
        DataSetName = 'DadosProdutos'
        RowCount = 0
        Stretched = True
        object Memo131: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Width = 75.590560940000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DadosProdutos."CProd"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo132: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 76.031500940000000000
          Width = 196.535599060000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DadosProdutos."DescricaoProduto"]')
          ParentFont = False
        end
        object memqCom: TfrxMemoView
          AllowVectorExport = True
          Top = 13.496065430000000000
          Width = 79.370093390000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."QCom"] [DadosProdutos."UCom"]')
          ParentFont = False
          WordWrap = False
        end
        object memvUnCom: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370078740000000000
          Top = 13.496065430000000000
          Width = 94.488188980000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VUnCom"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo140: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858267720000000000
          Top = 13.496065430000000000
          Width = 98.267892280000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VProd"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object DadosProdutosHeader: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 27.590560940000000000
        Top = 306.141930000000000000
        Width = 272.126160000000000000
        Condition = 'DadosProdutos."ChaveNFe"'
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692913390000000000
          Top = 14.472448270000000000
          Width = 22.677165350000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'UN')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370078740000000000
          Top = 14.472448270000000000
          Width = 94.488188980000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VL.UNIT')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Top = 1.354328270000000000
          Width = 68.031500940000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 68.472440940000000000
          Top = 1.354328270000000000
          Width = 204.094659060000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Top = 14.472448270000000000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'QTD')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858267720000000000
          Top = 14.472448270000000000
          Width = 98.267892280000000000
          Height = 11.338572910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'VL.TOTAL')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object DadosPagamentoHeader: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 79.283510940000000000
        Top = 404.409710000000000000
        Width = 272.126160000000000000
        Condition = 'DadosProdutos."ChaveNFe"'
        ReprintOnNewPage = True
        object memTitDadosPagamento: TfrxMemoView
          AllowVectorExport = True
          Top = 2.559059999999990000
          Width = 128.504020000000000000
          Height = 46.488210940000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            'Qtde. Total de itens'
            'Valor Produtos R$'
            'Descontos R$'
            'Acr'#233'scimos R$')
          ParentFont = False
          WordWrap = False
        end
        object memDadosPagamento: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 2.559060000000000000
          Width = 143.622140000000000000
          Height = 46.488210940000000000
          DataSetName = 'Parametros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Parametros."QtdeItens"]'
            '[CalculoImposto."VProd" #n%2,2f]'
            '[CalculoImposto."VDesc" #n%2,2f]'
            '[CalculoImposto."VOutro" #n%2,2f]')
          ParentFont = False
          WordWrap = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Valor a Pagar R$')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 64.472480000000000000
          Width = 128.504020000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FORMA DE PAGAMENTO ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 49.133890000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[<CalculoImposto."ValorApagar"> #n%2,2f]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 61.582715000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR PAGO R$')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object DadosPagamento: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 14.740159920000000000
        Top = 506.457020000000000000
        Width = 272.126160000000000000
        OnBeforePrint = 'DadosPagamentoOnBeforePrint'
        Child = frxReport.ChildTroco
        DataSetName = 'Pagamento'
        RowCount = 0
        Stretched = True
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Top = 0.110233779999987000
          Width = 128.504020000000000000
          Height = 12.472440940000000000
          DataSetName = 'Pagamento'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            '[Pagamento."tPag"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 0.110233779999987000
          Width = 143.622140000000000000
          Height = 12.472440940000000000
          DataSetName = 'Pagamento'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Pagamento."vPag"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 272.126160000000000000
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        PrintChildIfInvisible = True
        Stretched = True
      end
      object Observacoes: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 1035.591220000000000000
        Width = 272.126160000000000000
        Filter = '<InformacoesAdicionais."OBS"> <> '#39#39
        RowCount = 1
        Stretched = True
        object Memo21: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[InformacoesAdicionais."OBS"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 68.488250000000000000
        Top = 113.385900000000000000
        Width = 272.126160000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        Child = frxReport.ChildContingenciaCabecalho
        Stretched = True
        object Memo9: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Top = 52.488250000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Documento Auxiliar da Nota Fiscal de Consumidor Eletr'#244'nica')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 57.692950000000000000
          Width = 214.433210000000000000
          Height = 51.023631810000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          LineSpacing = 4.000000000000000000
          Memo.UTF8W = (
            'CNPJ: [Emitente."CNPJ"] [Emitente."XNome"]'
            '[Emitente."XLgr"], [Emitente."nro"] - [Emitente."xBairro"]'
            '[Emitente."XMun"], [Emitente."UF"]'
            '[IIF(<Emitente."Fone"><>'#39#39','#39'Fone: '#39'+<Emitente."Fone">,'#39#39')]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object ImgLogo: TfrxPictureView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 6.000000000000000000
          Width = 56.692950000000000000
          Height = 37.795300000000000000
          Center = True
          DataField = 'LogoCarregado'
          DataSetName = 'Parametros'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object Identificacao: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 143.622140000000000000
        Top = 623.622450000000000000
        Width = 272.126160000000000000
        Child = frxReport.ChildContingenciaIdentificacao
        RowCount = 1
        Stretched = True
        object Memo46: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 0.110189839999975000
          Width = 272.126160000000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Consulte pela chave de acesso em')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 15.881880000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."URL"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo4: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 77.370130000000000000
          Width = 272.126160000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            
              'NFC-e n'#186' [Identificacao."NNF"]   S'#233'rie [Identificacao."Serie" #n' +
              '#000]   [Identificacao."DEmi"] '
            '[Parametros."DescricaoViaEstabelec"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo23: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 31.913402909999900000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."Chave"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 106.401670000000000000
          Width = 272.126160000000000000
          Height = 35.905524020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Protocolo de Autoriza'#231#227'o'
            '[Parametros."Contingencia_Valor"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 55.692950000000000000
          Width = 272.126160000000000000
          Height = 17.007839840000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Destinatario."Consumidor"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Rodape: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 20.787401570000000000
        Top = 1077.166050000000000000
        Width = 272.126160000000000000
        PrintIfDetailEmpty = True
        RowCount = 1
        Stretched = True
        object Memo3: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 1.889763780000070000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Parametros."Sistema"] [Parametros."Site"]')
          ParentFont = False
        end
      end
      object ChildTroco: TfrxChild
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 544.252320000000000000
        Width = 272.126160000000000000
        ToNRows = 0
        ToNRowsMode = rmCount
        object CalculoImpostovTroco: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Width = 143.622140000000000000
          Height = 11.338590000000000000
          DataSetName = 'CalculoImposto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[<CalculoImposto."vTroco"> #n%2,2f]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Width = 128.504020000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Troco R$')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ChildContingenciaCabecalho: TfrxChild
        FillType = ftBrush
        Fill.BackColor = clScrollBar
        Fill.ForeColor = clGray
        Fill.Style = bsHorizontal
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 204.094620000000000000
        Visible = False
        Width = 272.126160000000000000
        ToNRows = 0
        ToNRowsMode = rmCount
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 58.582715000000000000
          Top = 5.559060000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWindow
          HAlign = haCenter
          Memo.UTF8W = (
            'EMITIDA EM CONTING'#202'NCIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 58.582715000000000000
          Top = 20.677180000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWindow
          HAlign = haCenter
          Memo.UTF8W = (
            'Pendente de autoriza'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ChildContingenciaIdentificacao: TfrxChild
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 789.921770000000000000
        Width = 272.126160000000000000
        ToNRows = 0
        ToNRowsMode = rmCount
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 58.582715000000000000
          Top = 2.897650000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'EMITIDA EM CONTING'#202'NCIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 58.582715000000000000
          Top = 18.015770000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Pendente de autoriza'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
