inherited ViewFiscalListagem: TViewFiscalListagem
  Align = alClient
  Caption = 'ViewFiscalListagem'
  TextHeight = 21
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Width = 242
      Height = 34
      Caption = 'Lista de Documentos Fiscais'
      ExplicitWidth = 242
    end
  end
  inherited pnlLinhaFundo: TPanel
    inherited CardPanel_conteudo: TCardPanel
      inherited card_pesquisa: TCard
        inherited pnlFiltroPesquisa: TPanel
          inherited pnlPesquisar: TPanel
            inherited edtPesquisa: TSearchBox
              OnInvokeSearch = edtPesquisaInvokeSearch
            end
          end
          inherited pnlFiltro: TPanel
            object edtDtaIni: TsDateEdit
              Left = 5
              Top = 16
              Width = 124
              Height = 29
              MaxLength = 10
              TabOrder = 0
            end
            object edtDtaFin: TsDateEdit
              Left = 132
              Top = 16
              Width = 124
              Height = 29
              MaxLength = 10
              TabOrder = 1
            end
            object rdoNFe: TRadioButton
              Left = 280
              Top = 16
              Width = 113
              Height = 17
              Caption = 'Lista de NF-e'
              Checked = True
              TabOrder = 2
              TabStop = True
              OnClick = rdoNFeClick
            end
            object rdoNFCe: TRadioButton
              Left = 416
              Top = 16
              Width = 137
              Height = 17
              Caption = 'Lista de NFC-e'
              TabOrder = 3
              OnClick = rdoNFCeClick
            end
          end
        end
        inherited DBG_ListaDados: TDBGridEh
          AutoFitColWidths = False
          PopupMenu = PopupMenu
        end
      end
      inherited card_cadastro: TCard
        inherited pnlFiltroCadastro: TPanel
          inherited lblTituloCadastro: TLabel
            Height = 42
          end
        end
      end
    end
  end
  object PopupMenu: TPopupMenu
    Left = 496
    Top = 264
    object E1: TMenuItem
      Caption = 'Reimprimir'
      OnClick = E1Click
    end
    object C1: TMenuItem
      Caption = 'Cancelar'
      OnClick = C1Click
    end
  end
  object DS_NFCe: TDataSource
    Left = 600
    Top = 264
  end
end
