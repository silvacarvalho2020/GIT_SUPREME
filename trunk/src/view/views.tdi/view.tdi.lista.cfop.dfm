inherited ViewListasCfop: TViewListasCfop
  Caption = 'CFOP'
  ExplicitTop = -194
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
              FieldName = 'CFOP'
              Footers = <>
              Width = 73
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DESCRICAO'
              Footers = <>
              Width = 547
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ATIVO'
              Footers = <>
              Width = 79
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
        inherited lblTituloFiltroDatas: TLabel
          Visible = False
        end
        inherited edtDtaIni: TJvDateEdit
          Visible = False
        end
        inherited edtDtaFin: TJvDateEdit
          Visible = False
        end
      end
      inherited pnlNomeTela: TPanel
        inherited lblNomeTela: TLabel
          Width = 95
          Height = 28
          Caption = 'LISTA CFOP'
          ExplicitWidth = 95
        end
      end
    end
  end
  inherited pnlRodapeBotoes: TPanel
    ExplicitTop = 686
    ExplicitWidth = 1000
    inherited pnlBtnNovo: TPanel
      Left = 476
      Visible = False
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
      Visible = False
      ExplicitLeft = 717
    end
    inherited pnlBtnImprimir: TPanel
      Left = 851
      ExplicitLeft = 847
    end
  end
end
