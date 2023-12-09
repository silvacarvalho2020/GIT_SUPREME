inherited ViewParametrosPDV: TViewParametrosPDV
  Align = alClient
  Caption = 'ViewParametrosPDV'
  TextHeight = 21
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Width = 169
      Height = 34
      Caption = 'Par'#226'metros do PDV'
      ExplicitWidth = 169
    end
  end
  inherited pnlRodape: TPanel
    inherited pnlBtnDeletar: TPanel
      Left = -5000
      Align = alNone
      ExplicitLeft = -5000
    end
    inherited pnlBtnEditar: TPanel
      Left = 634
      ExplicitLeft = 634
    end
    inherited pnlBtnImprimir: TPanel
      Left = -5000
      Align = alNone
      ExplicitLeft = -5000
    end
    inherited pnlBtnNovo: TPanel
      Left = 514
      ExplicitLeft = 514
    end
    inherited pnlBtnCancelar: TPanel
      Left = 759
      ExplicitLeft = 759
    end
    inherited pnlBtnSalvar: TPanel
      Left = 884
      ExplicitLeft = 884
    end
  end
  inherited pnlLinhaFundo: TPanel
    inherited CardPanel_conteudo: TCardPanel
      ActiveCard = card_cadastro
      inherited card_cadastro: TCard
        inherited pnlFiltroCadastro: TPanel
          Left = -5000
          Top = 3
          Align = alNone
          ExplicitLeft = -5000
          ExplicitTop = 3
          inherited btnVoltar: TSpeedButton
            Visible = False
            ExplicitLeft = 858
          end
          inherited lblTituloCadastro: TLabel
            Height = 42
          end
        end
        object PC_ParametrosPDV: TPageControl
          Left = 0
          Top = 0
          Width = 1020
          Height = 473
          ActivePage = tab_clientepadrao
          Align = alClient
          TabOrder = 1
          object tab_emissao: TTabSheet
            Caption = 'Emiss'#227'o Fiscal'
            object lblEmiteFinalVenda: TLabel
              Left = 11
              Top = 13
              Width = 166
              Height = 21
              Caption = 'Emite no Final da Venda'
            end
            object cbxEmiteFiscal: TDBComboBox
              Left = 11
              Top = 40
              Width = 214
              Height = 29
              Style = csDropDownList
              CharCase = ecUpperCase
              DataField = 'EMITEFISCALFINALVENDA'
              DataSource = DS_Dados
              Items.Strings = (
                'SIM'
                'NAO')
              TabOrder = 0
            end
          end
          object tab_fastreport: TTabSheet
            Caption = 'Caminho do FastReport'
            ImageIndex = 1
            object lbl: TLabel
              Left = 16
              Top = 29
              Width = 85
              Height = 21
              Caption = 'Report NF-e'
            end
            object edtFastFileNFe: TDBEdit
              Left = 16
              Top = 56
              Width = 937
              Height = 29
              DataField = 'FASTFILE'
              DataSource = DS_Dados
              ReadOnly = True
              TabOrder = 0
            end
            object btnPesquisaFastFile: TButton
              Left = 953
              Top = 56
              Width = 33
              Height = 29
              Caption = '+'
              TabOrder = 1
              OnClick = btnPesquisaFastFileClick
            end
            object edtFastFileNFCe: TDBEdit
              Left = 16
              Top = 104
              Width = 937
              Height = 29
              DataField = 'FASTFILENFCE'
              DataSource = DS_Dados
              ReadOnly = True
              TabOrder = 2
            end
            object btnPesquisaFastFileNFCe: TButton
              Left = 953
              Top = 104
              Width = 33
              Height = 29
              Caption = '+'
              TabOrder = 3
              OnClick = btnPesquisaFastFileNFCeClick
            end
          end
          object tab_certificado: TTabSheet
            Caption = 'Certificado Digital'
            ImageIndex = 2
            object lblCaminhoCertificado: TLabel
              Left = 7
              Top = 29
              Width = 63
              Height = 21
              Caption = 'Caminho'
            end
            object lblSenhaCertificado: TLabel
              Left = 7
              Top = 95
              Width = 43
              Height = 21
              Caption = 'Senha'
            end
            object edtCaminhoCertificado: TDBEdit
              Left = 7
              Top = 53
              Width = 963
              Height = 29
              DataField = 'CER_CAMINHO'
              DataSource = DS_Certificado
              TabOrder = 0
            end
            object edtSenhaCertificado: TDBEdit
              Left = 7
              Top = 122
              Width = 153
              Height = 29
              DataField = 'CER_SENHA'
              DataSource = DS_Certificado
              PasswordChar = '*'
              TabOrder = 1
            end
            object btnPesquisaCertificado: TButton
              Left = 976
              Top = 53
              Width = 33
              Height = 29
              Caption = '+'
              TabOrder = 2
              OnClick = btnPesquisaCertificadoClick
            end
          end
          object tab_balanca: TTabSheet
            Caption = 'Configura'#231#227'o da Balan'#231'a'
            ImageIndex = 3
            object Label1: TLabel
              Left = 16
              Top = 16
              Width = 115
              Height = 21
              Caption = 'NOMEBALANCA'
              FocusControl = DBEdit1
            end
            object Label2: TLabel
              Left = 16
              Top = 72
              Width = 96
              Height = 21
              Caption = 'PORTASERIAL'
              FocusControl = DBEdit2
            end
            object Label3: TLabel
              Left = 16
              Top = 128
              Width = 91
              Height = 21
              Caption = 'VELOCIDADE'
              FocusControl = DBEdit3
            end
            object Label4: TLabel
              Left = 16
              Top = 184
              Width = 76
              Height = 21
              Caption = 'NOMEPDV'
              FocusControl = DBEdit4
            end
            object Label5: TLabel
              Left = 16
              Top = 240
              Width = 67
              Height = 21
              Caption = 'MODULO'
              FocusControl = DBEdit5
            end
            object DBEdit1: TDBEdit
              Left = 16
              Top = 40
              Width = 500
              Height = 29
              CharCase = ecUpperCase
              DataField = 'NOMEBALANCA'
              DataSource = DS_ParametrosBalanca
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 16
              Top = 96
              Width = 500
              Height = 29
              CharCase = ecUpperCase
              DataField = 'PORTASERIAL'
              DataSource = DS_ParametrosBalanca
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 16
              Top = 152
              Width = 214
              Height = 29
              CharCase = ecUpperCase
              DataField = 'VELOCIDADE'
              DataSource = DS_ParametrosBalanca
              TabOrder = 2
            end
            object DBEdit4: TDBEdit
              Left = 16
              Top = 208
              Width = 500
              Height = 29
              CharCase = ecUpperCase
              DataField = 'NOMEPDV'
              DataSource = DS_ParametrosBalanca
              TabOrder = 3
            end
            object DBEdit5: TDBEdit
              Left = 16
              Top = 264
              Width = 500
              Height = 29
              CharCase = ecUpperCase
              DataField = 'MODULO'
              DataSource = DS_ParametrosBalanca
              TabOrder = 4
            end
          end
          object tab_clientepadrao: TTabSheet
            Caption = 'Cliente Pad'#227'o'
            ImageIndex = 4
            object lblCodigoClientePadrao: TLabel
              Left = 3
              Top = 37
              Width = 168
              Height = 21
              Caption = 'Cliente Padr'#227'o da Venda'
            end
            object edtClientePadrao: TDBEdit
              Left = 3
              Top = 64
              Width = 168
              Height = 29
              DataField = 'IDCLIENTEPADRAOVENDA'
              DataSource = DS_Dados
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  object OpenDialog: TOpenDialog
    Left = 496
    Top = 264
  end
  object DS_Certificado: TDataSource
    Left = 384
    Top = 192
  end
  object DS_ParametrosBalanca: TDataSource
    Left = 312
    Top = 288
  end
end
