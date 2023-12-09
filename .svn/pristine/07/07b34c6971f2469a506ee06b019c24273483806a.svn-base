inherited ViewFormasPagamentoTDI: TViewFormasPagamentoTDI
  Caption = 'Formas de Pagamentos'
  ExplicitLeft = -247
  ExplicitTop = -195
  ExplicitWidth = 1016
  ExplicitHeight = 766
  TextHeight = 15
  inherited CP_cadastro: TCardPanel
    ExplicitWidth = 990
    ExplicitHeight = 596
    inherited card_consulta: TCard
      Width = 994
      Height = 597
      ExplicitWidth = 990
      ExplicitHeight = 596
      inherited pnlDadosPesquisa: TPanel
        Width = 994
        Height = 597
        ExplicitWidth = 990
        ExplicitHeight = 596
        inherited GRIDDados: TDBGridEh
          Width = 984
          Height = 587
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'IDPGTO'
              Footers = <>
              Title.Caption = 'Codigo'
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DESCRICAO'
              Footers = <>
              Title.Caption = 'Descri'#231#227'o'
              Width = 387
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'MOEDA'
              Footers = <>
              Title.Caption = 'Moeda'
              Width = 234
            end>
        end
      end
    end
  end
  inherited pnlTopo: TPanel
    ExplicitWidth = 1000
    inherited pnlPesquisa: TPanel
      Width = 1002
      ExplicitWidth = 998
      inherited pnlImgPesquisa: TPanel
        Left = 970
        ExplicitLeft = 966
      end
      inherited edtPesquisa: TEdit
        Width = 970
        ExplicitWidth = 966
      end
    end
    inherited pnlFiltro: TPanel
      Width = 1004
      ExplicitWidth = 1000
      inherited pnlFiltroDatas: TPanel
        Left = 364
        inherited lblTituloFiltroDatas: TLabel
          Visible = False
          ExplicitLeft = 99
          ExplicitTop = 6
          ExplicitWidth = 244
        end
        inherited edtDtaIni: TJvDateEdit
          Visible = False
          ExplicitLeft = 99
          ExplicitTop = 27
          ExplicitHeight = 27
        end
        inherited edtDtaFin: TJvDateEdit
          Visible = False
          ExplicitLeft = 210
          ExplicitTop = 27
          ExplicitHeight = 27
        end
      end
      inherited pnlNomeTela: TPanel
        Width = 361
        ExplicitWidth = 361
        inherited lblNomeTela: TLabel
          Width = 274
          Height = 28
          Caption = 'LISTA FORMAS DE PAGAMENTOS'
          ExplicitWidth = 274
        end
      end
    end
  end
  inherited pnlRodapeBotoes: TPanel
    ExplicitTop = 686
    ExplicitWidth = 1000
    inherited pnlBtnNovo: TPanel
      Left = 476
      ExplicitLeft = 472
      inherited btnNovo: TSpeedButton
        OnClick = btnNovoClick
      end
    end
    inherited pnlBtnEditar: TPanel
      Left = 596
      ExplicitLeft = 592
      inherited btnEditar: TSpeedButton
        OnClick = btnEditarClick
      end
    end
    inherited pnlBtnDeletar: TPanel
      Left = 721
      ExplicitLeft = 717
      inherited btnDeletar: TSpeedButton
        OnClick = btnDeletarClick
      end
    end
    inherited pnlBtnImprimir: TPanel
      Left = 851
      ExplicitLeft = 847
    end
  end
  inherited DS_Dados: TDataSource
    DataSet = ServiceCadastro.QRY_FormaPagamento
  end
end
